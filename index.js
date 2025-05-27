const express = require("express");
const { PrismaClient } = require("@prisma/client");
const bcrypt = require("bcryptjs");
const jwt = require("jsonwebtoken");
const cors = require("cors");

const app = express();
const prisma = new PrismaClient();
const SECRET = "your_secret_key"; // Ganti dengan SECRET yang lebih aman!

app.use(express.json());
app.use(cors());

// ========== AUTHENTICATION ==========

// REGISTER
app.post("/register", async (req, res) => {
  try {
    const { username, alamat, wilayah,  tlp, ewallet, password, role } = req.body;
    if (!username || !alamat || !wilayah || !tlp || !ewallet || !password) {
      return res.status(400).json({ error: "All fields are required" });
    }

    const hashedPassword = await bcrypt.hash(password, 10);
    const user = await prisma.user.create({
      data: { username, alamat, wilayah,  tlp, password: hashedPassword, role, ewallet },
    });

    res.json(user);
  } catch (error) {
    res.status(500).json({ error: "Internal Server Error" });
  }
});

// LOGIN
app.post("/login", async (req, res) => {
  try {
    const { tlp, password } = req.body;
    const user = await prisma.user.findUnique({ where: { tlp } });

    if (!user || !(await bcrypt.compare(password, user.password))) {
      return res.status(401).json({ error: "Invalid credentials" });
    }

    const token = jwt.sign({ userId: user.id, role: user.role }, SECRET);

    res.json({ token, user });
  } catch (error) {
    res.status(500).json({ error: "Internal Server Error" });
  }
});

// ========== MIDDLEWARE ==========

const authMiddleware = (req, res, next) => {
  try {
    const token = req.headers.authorization?.split(" ")[1];
    if (!token) return res.status(401).json({ error: "Unauthorized" });

    req.user = jwt.verify(token, SECRET);
    next();
  } catch (error) {
    return res.status(401).json({ error: "Invalid token" });
  }
};

// Admin Middleware
const adminMiddleware = (req, res, next) => {
  if (req.user.role !== "admin") {
    return res.status(403).json({ error: "Forbidden: Admin only" });
  }
  next();
};

// ========== USER CRUD ==========

// Update User
app.put("/user/:id", authMiddleware, async (req, res) => {
  try {
    const { id } = req.params;
    const { username, alamat, wilayah, tlp, password, role, ewallet } = req.body;

    if (!username || !alamat || !wilayah || !tlp || !ewallet) {
      return res.status(400).json({ error: "Username, alamat, dan telepon wajib diisi" });
    }

    let updateData = { username, alamat, wilayah, tlp, role, ewallet };

    // Jika pengguna mengisi password baru, lakukan hashing
    if (password) {
      updateData.password = await bcrypt.hash(password, 10);
    }

    const user = await prisma.user.update({
      where: { id: Number(id) },
      data: updateData,
    });

    res.json(user);
  } catch (error) {
    console.error(error);
    res.status(500).json({ error: "Internal Server Error" });
  }
});

// Hapus User (Admin Only) - dengan hapus data terkait dulu
app.delete("/user/:id", authMiddleware, adminMiddleware, async (req, res) => {
  try {
    const { id } = req.params;
    const userId = Number(id);

    if (isNaN(userId)) {
      return res.status(400).json({ error: "Invalid user ID" });
    }

    // Cek apakah user ada
    const user = await prisma.user.findUnique({ where: { id: userId } });
    if (!user) {
      return res.status(404).json({ error: "User not found" });
    }

    // Hapus data transaksi terkait user dulu
    await prisma.coinTransaction.deleteMany({ where: { userId } });
    await prisma.coinExchange.deleteMany({ where: { userId } });
    await prisma.complaint.deleteMany({ where: { userId } });

    // Baru hapus user
    await prisma.user.delete({ where: { id: userId } });

    res.json({ message: "User deleted successfully" });
  } catch (error) {
    console.error("Delete User Error:", error);
    res.status(500).json({ error: "Internal Server Error" });
  }
});

// Ambil Semua User (Admin Only)
app.get("/users", authMiddleware, async (req, res) => {
  try {
    if (req.user.role !== "admin") {
      return res.status(403).json({ error: "Forbidden: Admin only" });
    }

    const users = await prisma.user.findMany();
    res.json(users);
  } catch (error) {
    console.error("Get user Error:", error);
    res.status(500).json({ error: "Internal Server Error" });
  }
});

// Changepassword
app.post("/changepassword", authMiddleware, async (req, res) => {
  try {
    const { userId } = req.user; // asumsi userId dari middleware auth yang sudah decode JWT
    const { oldPassword, newPassword } = req.body;

    const user = await prisma.user.findUnique({ where: { id: userId } });

    if (!user) {
      return res.status(404).json({ error: "User not found" });
    }

    // cek password lama
    const validOldPassword = await bcrypt.compare(oldPassword, user.password);
    if (!validOldPassword) {
      return res.status(401).json({ error: "Old password is incorrect" });
    }

    // hash password baru
    const hashedNewPassword = await bcrypt.hash(newPassword, 10);

    // update password
    await prisma.user.update({
      where: { id: userId },
      data: { password: hashedNewPassword },
    });

    res.json({ message: "Password changed successfully" });
  } catch (error) {
    console.error("Error in /changepassword:", error);
    res.status(500).json({ error: "Internal Server Error" });
  }
});

// ========== COIN EXCHANGE CRUD ==========

// Tambah Coin Exchange
app.post("/coinexchange/:id", authMiddleware, async (req, res) => {
  try {
    const { id } = req.params;
    const { amount } = req.body;
    const amountNum = Number(amount);
    const date = new Date();
    if (!amountNum || amountNum <= 0) return res.status(400).json({ error: "Invalid amount" });

    const exchange = await prisma.coinExchange.create({
      data: { userId: Number(id),amount: amountNum, date },
    });

    res.json(exchange);
  } catch (error) {
    res.status(500).json({ error: "Internal Server Error" });
  }
});

// Update Coin Exchange
app.put("/coinexchange/:id", authMiddleware, async (req, res) => {
  try {
    const { id } = req.params;
    const { amount } = req.body;
    const exchange = await prisma.coinExchange.update({
      where: { id: Number(id) },
      data: { amount: Number(amount) },
    });

    res.json(exchange);
  } catch (error) {
    res.status(500).json({ error: "Internal Server Error" });
  }
});

// Hapus Coin Exchange (Admin Only)
app.delete("/coinexchange/:id", authMiddleware, adminMiddleware, async (req, res) => {
  try {
    const { id } = req.params;
    await prisma.coinExchange.delete({ where: { id: Number(id) } });

    res.json({ message: "Coin exchange deleted successfully" });
  } catch (error) {
    res.status(500).json({ error: "Internal Server Error" });
  }
});

// Ambil Coin Exchange milik user
app.get("/coinexchange", authMiddleware, async (req, res) => {
  try {
    const exchanges = await prisma.coinExchange.findMany({
      where: { userId: req.user.userId },
    });

    res.json(exchanges);
  } catch (error) {
    console.error("Get Coin Exchange Error:", error);
    res.status(500).json({ error: "Internal Server Error" });
  }
});

// Ambil Semua Coin Exchange (Admin Only)
app.get("/coinexchange/all", authMiddleware, async (req, res) => {
  try {
    if (req.user.role !== "admin") {
      return res.status(403).json({ error: "Forbidden: Admin only" });
    }

    const exchanges = await prisma.coinExchange.findMany({
      include: {
        user: true,
      },
    });
    res.json(exchanges);
  } catch (error) {
    console.error("Get Coin Exchange All Error:", error);
    res.status(500).json({ error: "Internal Server Error" });
  }
});

// ========== COIN TRANSACTION CRUD ==========

// Ambil Coin Transaction milik user
app.get("/cointransaction", authMiddleware, async (req, res) => {
  try {
    const transactions = await prisma.coinTransaction.findMany({
      where: { userId: req.user.userId },
    });

    res.json(transactions);
  } catch (error) {
    console.error("Get Coin Transaction Error:", error);
    res.status(500).json({ error: "Internal Server Error" });
  }
});

// Ambil Semua Coin Transaction (Admin Only)
app.get("/cointransaction/all", authMiddleware, async (req, res) => {
  try {
    if (req.user.role !== "admin") {
      return res.status(403).json({ error: "Forbidden: Admin only" });
    }

    const transactions = await prisma.coinTransaction.findMany();
    res.json(transactions);
  } catch (error) {
    console.error("Get Coin Transaction All Error:", error);
    res.status(500).json({ error: "Internal Server Error" });
  }
});

// Tambah Coin Transaction
app.post("/cointransaction", authMiddleware, async (req, res) => {
  try {
    const { amount } = req.body;
    const userId = req.user?.userId; // Pastikan userId tersedia
    const date = new Date();
    const status = "proses"; // Bisa diganti "pending" jika butuh verifikasi

    // Validasi jumlah koin
    if (!userId) return res.status(401).json({ error: "Unauthorized" });
    if (!amount || isNaN(amount) || amount <= 0)
      return res.status(400).json({ error: "Invalid amount" });
    if (amount < 10000)
      return res.status(400).json({ error: "Minimal tukar koin adalah 10.000" });

    // Simpan transaksi ke database
    const transaction = await prisma.coinTransaction.create({
      data: { userId, amount: parseInt(amount, 10), date, status },
    });

    res.status(201).json(transaction);
  } catch (error) {
    console.error("Error creating coin transaction:", error);
    res.status(500).json({ error: "Internal Server Error" });
  }
});

// Update Coin Transaction
app.put("/cointransaction/:id", authMiddleware, async (req, res) => {
  try {
    const { id } = req.params;
    const { status } = req.body;

    const transaction = await prisma.coinTransaction.update({
      where: { id: Number(id) },
      data: { status },
    });

    res.json(transaction);
  } catch (error) {
    res.status(500).json({ error: "Internal Server Error" });
  }
});

// Hapus Coin Transaction (Admin Only)
app.delete("/cointransaction/:id", authMiddleware, adminMiddleware, async (req, res) => {
  try {
    const { id } = req.params;
    await prisma.coinTransaction.delete({ where: { id: Number(id) } });

    res.json({ message: "Coin transaction deleted successfully" });
  } catch (error) {
    res.status(500).json({ error: "Internal Server Error" });
  }
});

// ========== Complaint CRUD ==========

// Tambah Complaint
app.post("/complaint/:id", async (req, res) => {
  try {
    const { id } = req.params; // userId
    const { complaint } = req.body;
    const date = new Date();
    const status = "pending"; // default status

    if (!complaint || complaint.trim() === "")
      return res.status(400).json({ error: "Complaint is required" });

    const newComplaint = await prisma.complaint.create({
      data: { userId: Number(id), complaint, status, date },
    });

    res.json(newComplaint);
  } catch (error) {
    console.error("Create Complaint Error:", error);
    res.status(500).json({ error: "Internal Server Error" });
  }
});

// Update Complaint
app.put("/complaint/:id", authMiddleware, async (req, res) => {
  try {
    const { id } = req.params; // complaint id
    const { status } = req.body;

    const updatedComplaint = await prisma.complaint.update({
      where: { id: Number(id) },
      data: { status },
    });

    res.json(updatedComplaint);
  } catch (error) {
    console.error("Update Complaint Error:", error);
    res.status(500).json({ error: "Internal Server Error" });
  }
});

// Hapus Complaint (Admin Only)
app.delete("/complaint/:id", authMiddleware, adminMiddleware, async (req, res) => {
  try {
    const { id } = req.params;
    await prisma.complaint.delete({ where: { id: Number(id) } });

    res.json({ message: "Complaint deleted successfully" });
  } catch (error) {
    console.error("Delete Complaint Error:", error);
    res.status(500).json({ error: "Internal Server Error" });
  }
});

// Ambil Complaint milik user
app.get("/complaint", authMiddleware, async (req, res) => {
  try {
    const complaints = await prisma.complaint.findMany({
      where: { userId: req.user.userId },
    });

    res.json(complaints);
  } catch (error) {
    console.error("Get Complaint Error:", error);
    res.status(500).json({ error: "Internal Server Error" });
  }
});

// Ambil Semua Complaint (Admin Only)
app.get("/complaint/all", authMiddleware, async (req, res) => {
  try {
    if (req.user.role !== "admin") {
      return res.status(403).json({ error: "Forbidden: Admin only" });
    }

    const complaints = await prisma.complaint.findMany();
    res.json(complaints);
  } catch (error) {
    console.error("Get All Complaint Error:", error);
    res.status(500).json({ error: "Internal Server Error" });
  }
});

// ========== SERVER START ==========
app.listen(1550, () => console.log("Server running on port 1550"));
