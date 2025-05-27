-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 24 Bulan Mei 2025 pada 06.29
-- Versi server: 10.4.32-MariaDB
-- Versi PHP: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `gr-coins`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `coinexchange`
--

CREATE TABLE `coinexchange` (
  `id` int(11) NOT NULL,
  `userId` int(11) NOT NULL,
  `amount` double NOT NULL,
  `date` datetime(3) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `cointransaction`
--

CREATE TABLE `cointransaction` (
  `id` int(11) NOT NULL,
  `userId` int(11) NOT NULL,
  `amount` double NOT NULL,
  `status` varchar(191) NOT NULL,
  `date` datetime(3) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `complaint`
--

CREATE TABLE `complaint` (
  `id` int(11) NOT NULL,
  `userId` int(11) NOT NULL,
  `complaint` varchar(191) NOT NULL,
  `status` varchar(191) NOT NULL,
  `date` datetime(3) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `user`
--

CREATE TABLE `user` (
  `id` int(11) NOT NULL,
  `username` varchar(191) NOT NULL,
  `alamat` varchar(191) NOT NULL,
  `wilayah` varchar(191) NOT NULL,
  `tlp` varchar(191) NOT NULL,
  `ewallet` varchar(191) NOT NULL,
  `password` varchar(191) NOT NULL,
  `role` varchar(191) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `user`
--

INSERT INTO `user` (`id`, `username`, `alamat`, `wilayah`, `tlp`, `ewallet`, `password`, `role`) VALUES
(1969, 'Admin', 'Blitar', 'Blitar', '12345', '12345', '$2b$10$5gwi6WFCHG7RtjmvpbMqlevdkceOpVXc7S8yoPzDs4Dht7OALG7Ta', 'admin'),
(1970, 'Utama Hassanah', 'Jalan Jawa No. 35', 'sananwetan', '085649791389', '085649791389', '$2b$10$6gUqayIJdVX8vJ315YGD8espLxSaN4S3bx551Bw5CHnyG/tgfnoem', 'user'),
(1971, 'Cahya Wahyudin', 'Jalan Jawa No. 40', 'sananwetan', '081357902520', '081357902520', '$2b$10$mMxRhf2YD/kE.0ambfs3guC6Z/mruy7xkhZQ7H2WpXAtswplXkAyO', 'user'),
(1972, 'Bakda Salahudin', 'Jalan Timor No.  43', 'sananwetan', '085369596979', '085369596979', '$2b$10$02rWNukvNREe3ljyLBgOPeANBTNOU7l.JJD13XkiH5ehVQpLjNtBa', 'user'),
(1973, 'Raden Irawan', 'Jalan Timor No. 30', 'sananwetan', '081528988891', '081528988891', '$2b$10$xpdT9LgeupF5pGc2TfGPYuvaLHUrR3pJwISoSpwl9.sF70bjLhpg2', 'user'),
(1974, 'Eka Tarihoran', 'Jalan Timor No. 50', 'sananwetan', '081552592834', '081552592834', '$2b$10$NLfHipXt3QKmG46mAu.4cu6BBZw.taG6opkSZNdAcv/V8Cf7C.dXK', 'user'),
(1975, 'Widya Nasyidah', 'Jalan Jawa No.  46', 'sananwetan', '085736705997', '085736705997', '$2b$10$i5WMBk.wz3dHgB511Q2frux1VQMTOfXg3MhxSDvMdptaeISZOUUXK', 'user'),
(1976, 'Nardi Waskita', 'Jalan Jawa No. 48', 'sananwetan', '089514822861', '089514822861', '$2b$10$Vgiks9ZhhIe27FooH1H4O.cuFpFt35SaDhmD13QI0/0VM4Q/3PFMy', 'user'),
(1977, 'Balijan Salahudin', 'Jalan Jawa No.  20', 'sananwetan', '082338710686', '082338710686', '$2b$10$NIUrUeup9K2Kq0LBZKbCOOuJ4VVnH6d4OZ8USGujk9ngdo8uP8u22', 'user'),
(1978, 'Tina Hassanah', 'Jalan Sumatra No. 138', 'karangtengah', '085737327484', '085737327484', '$2b$10$Ni4LfcnLlxJBfVPM7msvOOxLdcxOC0tIm3.fJMjqrR4Pd2sXpjJP6', 'user'),
(1979, 'Juli Prasetyo', 'Jalan Timor No.15', 'sananwetan', '083851224210', '083851224210', '$2b$10$oDgZOoYNxvHXAAi0oA6MrutjBKbVZsxoM.i9F5ASBiF8g2OMqXiqG', 'user'),
(1980, 'Padma Nasyidah', 'Jalan Timor No. 44', 'sananwetan', '087865116387', '087865116387', '$2b$10$pev7O8xEFYcuiYzIQriM/uC8UDB1hL8XchF7aEMh/GUHL0EIW4JXS', 'user'),
(1981, 'Joko Yulianti', 'Jalan Timor Gg. III', 'sananwetan', '087787809540', '087787809540', '$2b$10$PZYJVbNIGVJ0M1Z2iL0wDe1rlIUYtESY/h.iVOb2kRtXLWVFNdUGC', 'user'),
(1982, 'Ihsan Yulianti', 'Jalan Timor No. 49A', 'sananwetan', '085790682648', '085790682648', '$2b$10$NJNRGpptGgs2KG.TesNxS.w8pGnxV37Sa2BvN3SFNxTCRTB6sFSuq', 'user'),
(1983, 'Jagaraga Anggraini', 'Jalan Timor Gg. II No. 1B', 'sananwetan', '085731546480', '085731546480', '$2b$10$8APk8rbGbQI4TFwmUXamqeBEIYv/rQemNYYNOGV5DjNRh57VdGd9e', 'user'),
(1984, 'Latika Yolanda', 'Jalan Timor No. 61', 'sananwetan', '081217473569', '081217473569', '$2b$10$NKa.vjqmjYLfMLqNZSvtAO2h4EZRjhnCR7oUJdRz9qGk/y6msOY.O', 'user'),
(1985, 'Martaka Wibisono', 'Jalan Sumatera No. 179', 'karangtengah', '082231644277', '082231644277', '$2b$10$ytHcYh1nOhsfbtBeybXG3ewIrLxE8HnCI9RIdf2VwH9DDgYwk/S2W', 'user'),
(1986, 'Niyaga Wacana', 'Jalan Sumatera No. 116', 'karangtengah', '082139236412', '082139236412', '$2b$10$zyetSVHYnmlTGNWLJSQYmegsoeA0xGOVYlXf4zar7pvbJ7OCf.v8O', 'user'),
(1987, 'Kamidin Tampubolon', 'Jalan Sumatera No. 169', 'karangtengah', '085855684068', '085855684068', '$2b$10$KtZz8JtYEDd9FLik5u2boug2ll7TS9cXrfJWypB4eOaFOncHQj00y', 'user'),
(1988, 'Gara Budiyanto', 'Jalan Beliton No. 69', 'karangtengah', '088217977859', '088217977859', '$2b$10$QhMb/5gHaqQuDSFFfRhaaOX93pFIF4VIiLMVzzzGnHQgyyIq1E9lu', 'user'),
(1989, 'Citra Usada', 'Jalan Beliton No. 50', 'karangtengah', '081259322688', '081259322688', '$2b$10$F6jppGaIMdGj.3fdOz6cgOUG1RFy.PRamllr3G7ahEXYiN/xMFNZC', 'user'),
(1990, 'Panca Prabowo', 'Jalan Beliton No. 42', 'karangtengah', '085791224139', '085791224139', '$2b$10$YSNe6vZGK75YFF67tco9wO.RhGvqkhELsBEVXfS99gTnIrSiHr9FO', 'user'),
(1991, 'Ikhsan Lazuardi', 'Jalan Beliton No. 15', 'karangtengah', '085735009807', '085735009807', '$2b$10$VdCTQ2O22UCzpwuSzW4jsu7RZKEhqIag14sdeSqM41F/Kmu7Zols2', 'user'),
(1992, 'Cawisadi Najmudin', 'Jalan Bali No. 297', 'karangtengah', '085729771639', '085729771639', '$2b$10$Ru8YKwFLc/ZJ.ziUuLY1cOkAvYzfnah3.UlNtzjxSkfMNZqvURmdW', 'user'),
(1993, 'Paiman Nainggolan', 'Jalan Bali No. 54', 'karangtengah', '085736862006', '085736862006', '$2b$10$HTSPpzIwGs4cu3HncFkLDuUCVXenZMYn7Eoq.t/aZYdpTNaJeL0qO', 'user'),
(1994, 'Jumari Mayasari', 'Jalan Bali No. 309', 'karangtengah', '081252043292', '081252043292', '$2b$10$yWnWiC4cOghDPjrSaihAeussR3ikJFes1EHypw8KbMTvwp6nu0oAe', 'user'),
(1995, 'Tantri Santoso', 'Jalan Bali No. 256', 'karangtengah', '082298110851', '082298110851', '$2b$10$fvrIP2B/Pq2gUQiTdhvWj.Ak3XS1xZLJtBEWbCI.br.5s0hhz7RM.', 'user'),
(1996, 'Embuh Lazuardi', 'Jalan Bali No. 264', 'karangtengah', '082132162238', '082132162238', '$2b$10$GP7.a7EnCEZvUtEpcGp8QuJOXDc7CIyiC8krL4T1wVHdtk42ifSsu', 'user'),
(1997, 'Simon Nuraini', 'Jalan Bali No. 303', 'karangtengah', '085331018481', '085331018481', '$2b$10$eui1v77QlSmC0SMo89Yz.elUS/ufbuWe4LPd9CVe1HT6kNJPRk2zq', 'user'),
(1998, 'Sri Hartatik', 'Jalan Bunaken No. 21', 'karangtengah', '081263062547', '081263062547', '$2b$10$a7iDCLMC26QVf55mUlBtZ.pd4S.2OadueMCNDN1Mxy2.57kxqioAS', 'user'),
(1999, 'Fadhal Felix', 'Jalan Bunaken No. 9', 'karangtengah', '085246566990', '085246566990', '$2b$10$FaxwwOWQ5EZqvi87QdikkuDieZ..OpJMLl.n.uyI3Fx5xbz8wacDa', 'user'),
(2000, 'Muhammad Ilham', 'Jalan Bunaken No. 5', 'karangtengah', '082140350401', '082140350401', '$2b$10$cfNBhoHxLzjpJNmR.6Bx2OMTRMCzjpqvySKJftXq/n4JAkA5XSbpG', 'user'),
(2001, 'Ferasari', 'Jalan Selayar No. 24', 'karangtengah', '081333396154', '081333396154', '$2b$10$Gh./N3.1VoFzpGi066wXc.zOOavwoiW8UXXLC5G06AZ65IkIrMuYq', 'user'),
(2002, 'Retno', 'Jalan Selayar No 5', 'karangtengah', '085693756902', '085693756902', '$2b$10$c6MmHfjzzKK91QsO8UZpr.vC.Yqw3vqU0XCsB59JUKkZWPyBSBQ7u', 'user'),
(2003, 'Suhermin', 'Jalan Selayar No. 7', 'karangtengah', '089686920638', '089686920638', '$2b$10$6sTsY59HaARzElJvXtWdvuLPiS23b1ZRiN5t82hjK5Kb0aOA9.QPe', 'user'),
(2004, 'Agustina Dwi', 'Jalan Bali No. 210', 'karangtengah', '085230404797', '085230404797', '$2b$10$YiQNzXPpdp4B7YVUjoYoTuazibucQkTR.5G2Qb4KFrNaNFNROfS02', 'user'),
(2005, 'Dzaky Almair', 'Jalan Aru No. 5', 'karangtengah', '081559668885', '081559668885', '$2b$10$DLZ/9C6cfVaot71OnubefeXlGRmNDMnBisahScpyRyZStSA0KAa3e', 'user'),
(2006, 'Ismi Anifatul', 'Jalan Aru No. 1', 'karangtengah', '081238741620', '081238741620', '$2b$10$Craw/9HTd4jYVfiZCPRLKuMgh1wC8Bl9.JQMpmbkUZrHlqnSKPjdm', 'user'),
(2007, 'Zulfa Mudzakiroh', 'Jalan Aru No. 11', 'karangtengah', '085604525909', '085604525909', '$2b$10$YpPA34ZPpkEF/8.u42a2J.5dSRYG4Wg9oN4yvYf414b0YWdLOHNAi', 'user'),
(2008, 'Dewi Agustina', 'Jalan Bunaken No. 66 Rt. 03 Rw.04', 'karangtengah', '089512066699', '089512066699', '$2b$10$3oHKmGbAEvJs1ozCnSpyOu7zoPVxCyb8A5K/.UjS5Eg4QJCMsAnxi', 'user'),
(2009, 'Agustina Dwi', 'Jalan Bunaken No. 60', 'karangtengah', '085855476296', '085855476296', '$2b$10$VJ3xmI9G7A.v0hA8IO1S2.XzUidhldD4CCtoDTIhRV78CYZ/vhyJS', 'user'),
(2010, 'Novita Dian', 'Jalan Aru No. 16', 'karangtengah', '085748856001', '085748856001', '$2b$10$T.ni0ZvE5lugFXz2tURUQOIpLN7FZDzYn6DfoQJUcSAr8O9iaMPS6', 'user'),
(2011, 'Ime Sari Devi', 'Jalan Aru No. 45', 'karangtengah', '085748927995', '085748927995', '$2b$10$MC3JE9uHl.WEDQIqSRqCIesd3Bc8dlfOohvkcI4ZYC9NQYkdnDhgK', 'user'),
(2012, 'Heru Winarti', 'Jalan Beliton No. 61', 'karangtengah', '085606038047', '085606038047', '$2b$10$LiF4twXaD1YxypZZcHt4U.xFBATs/MuG1IKuizxl1SUNXMLyJtFES', 'user'),
(2013, 'Alvino Pradana', 'Jalan Bali No. 186', 'karangtengah', '081450319639', '081450319639', '$2b$10$fmJEQcXUDMaL8a5qj6/dHuL.14KtNOvfkyGCShtvK9i.iFf4Lmwj2', 'user'),
(2014, 'Calvin Paska', 'Jalan Kalimantan No. 30', 'sananwetan', '081357909234', '081357909234', '$2b$10$zONHllF5DDIs1BwiojxOde5QYGWDbMsxs9Yt1xXeXC5DUSV4K49H2', 'user'),
(2015, 'Alfiah', 'Jalan Kalimantan Ruko Niaga Jaya II Kav. 2', 'sananwetan', '081999955695', '081999955695', '$2b$10$1r5wdw70EJVYq1usA3ixqe7R5USUIuC4qqm1mckyWA/0Jt6pp0K8m', 'user'),
(2016, 'Andri Nugroho', 'Jalan Kalimantan No. 34', 'sananwetan', '081217787133', '081217787133', '$2b$10$oU37TKsrWz15.vJvzNK7iOtlrP1pcdgFdjWYSGqXaYeN38tiMqpt.', 'user'),
(2017, 'Indra Kurniawan', 'Jalan Bawean No. 03', 'sananwetan', '082141470899', '082141470899', '$2b$10$CR5QPd1wXZ.SC1ZtaeeGWOp5X3h8qKRQkX56ZctkRGtoU.pLxKwhy', 'user'),
(2018, 'Tjio Slok Oen', 'Perum GKR Blok P No.09 Jl. Kalimantan', 'sananwetan', '085336211865', '085336211865', '$2b$10$1.zZP3YCLICfjbjAue8GfuFp76C6MzBhDd1F9KveR3aQCw2iOQ.Dy', 'user'),
(2019, 'Muhammad Jupri', 'Perumahan GKR Blok P. 2', 'sananwetan', '085733334469', '085733334469', '$2b$10$VkkSt6andElE/HsyqRhXkezkD.RiWtDToBwQ/p9L0506BQ7SlQusu', 'user'),
(2020, 'Retno', 'Perum GKR Jl. Kalimantan Blok N.18 Rt. 001 Rw.017', 'sananwetan', '081331963011', '081331963011', '$2b$10$QaJjzQbGicCL6xBgVkCqnOneKLiVQHCRSzQuHHE.3LVeISnc2onCy', 'user'),
(2021, 'Lily Meliawati', 'Perum GKR Jl Kalimantan Blok N.19 Rt.001 Rw.017', 'sananwetan', '085646545846', '085646545846', '$2b$10$0BAyODJ1qBxGnyyUyF171ullpoOsnAB2J73qd5G5NLhlZSBoTMxgu', 'user'),
(2022, 'Sayidina Ali', 'Perumahan GKR Blok N. 8', 'sananwetan', '081249313188', '081249313188', '$2b$10$FoRXhFZGeX/H5dgcbZi8VOHWkQH0FwGlwNSqh9eoV5YMBWb91S76.', 'user'),
(2023, 'Emy Fuatul', 'Perum GKR Blok K. 3', 'sananwetan', '081234959350', '081234959350', '$2b$10$.vibLx2ul9Z/65ij/UsQxuNME8ZxjiGZuSg3e8wSZD15I1hQ5kone', 'user'),
(2024, 'Suko', 'Jalan Natuna No. 119 Rt. 01 Rw.03', 'sananwetan', '085846026865', '085846026865', '$2b$10$veE0Xw0wJp5wkZIOsqe/nOBSS.wkQycq4mpTQxKNUnbGqDFJbeevC', 'user'),
(2025, 'Lanny', 'Perum GKR Blok J. 7', 'sananwetan', '089515946305', '089515946305', '$2b$10$0tDKWuanjYq.zj.c.Pi8KOAOxDaMIf1stRrAxwyiPp5J3OmAZ4cA2', 'user'),
(2026, 'Alvina', 'Perum GKR Blok N.11 Jl. Kalimantan', 'sananwetan', '089638384000', '089638384000', '$2b$10$icMk/Z9xo9d1XpoDNnu4H.URSNm9G1LWQD9KeKJkzCqN.cHNzC/UW', 'user'),
(2027, 'Eko Hardianto', 'Gang Kenanga No. 4, RT 01 RW 02', 'sananwetan', '085646052028', '085646052028', '$2b$10$jM6rF0NKPTE5CDd3n0Rg0.wY.hbwCUK0EaIBdTORgF6aKJ1WYBZa2', 'user'),
(2028, 'Nur Halimah', 'Jalan Veteran No. 20, RT 04 RW 05', 'sananwetan', '081246848645', '081246848645', '$2b$10$Mtk61e1KgZ9FpOnnKoOTyu7qKh0p//84YBna7BgV90rbIN5drFuDO', 'user'),
(2029, 'Sri Rahadi', 'Perum GKR Blok J No. 13 Jl. Kalimantan', 'sananwetan', '081232444810', '081232444810', '$2b$10$EcOm..plmuNH6oKjOx8ymOyonShKYePTMwZDigaDJhvO2OoO1/Qk.', 'user'),
(2030, 'Leung Way May', 'Perum GKR Blok H. 18', 'sananwetan', '085833222890', '085833222890', '$2b$10$xdm9GpOu6Q1nlFNrhFhrd.WqBFzpmbcVEfh9ewJ.RRXWcPUhZ5DHO', 'user'),
(2031, 'Alfina Rahmawati', 'Perum GKR Jl. Natuna No.3 Blok G Rt. 03 Rw.16', 'sananwetan', '085235196533', '085235196533', '$2b$10$/ty.kLh6viNlNuV8eY8tbO/oJ5aDltZ5oYYzTycJervP3IQMehE3W', 'user'),
(2032, 'Ari Wahyudi', 'Perum GKR Blok G. 8', 'sananwetan', '085791202274', '085791202274', '$2b$10$M.jhWG207kQQ.5zHRcBrtOowaZPz2NsYZB6TfGbTPXjBV5fhIOL02', 'user'),
(2033, 'Veronika Lusiana', 'Jalan Veteran No. 64 ', 'kepanjenkidul', '085895923560', '085895923560', '$2b$10$AXiF5bD0BM8m5uRBiH5GP.z4fbMUZ7eu3qmjv5KIIxwaN/uz1SfSW', 'user'),
(2034, 'Sri Utami', 'Jalan Veteran No. 70', 'kepanjenkidul', '082132161010', '082132161010', '$2b$10$zeAPOBmsrkLoZnNxThm0reySn3T8rSiPVRVNMpj/ew5tLb8qW5td2', 'user'),
(2035, 'Hanny Sania', 'Jalan Veteran No. 85', 'kepanjenkidul', '081336807148', '081336807148', '$2b$10$reXAFWirzQAI5vH.BIu8WeKczU2QjClaUIKOgUBc205ZyRWcs6P8K', 'user'),
(2036, 'Sumbangsih', 'Jalan Veteran No. 68', 'kepanjenkidul', '089679070150', '089679070150', '$2b$10$TedOXOPWw4t4sCwdIB9pfe4XGAN82E1DJPynCqzIgMpmlSp38E9Ii', 'user'),
(2037, 'Novi Indah', 'Jalan Veteran No. 66', 'kepanjenkidul', '085784596212', '085784596212', '$2b$10$1.8PPZAmJOVTwkP/xm2okOTLz3O/5PBowtQVOJBGcpqSmkgdToose', 'user'),
(2038, 'Muhammad Yudi', 'Jalan Veteran No. 40', 'kepanjenkidul', '082132549916', '082132549916', '$2b$10$iOTYsuDpV407wU5mH9Q31eHhoJGoMe3F3YexJQSsWCXtMnnUtGnnG', 'user'),
(2039, 'Devi Intan', 'Jalan Srigading No. 5', 'kepanjenkidul', '081556592457', '081556592457', '$2b$10$A1FURozhoMmI.Nf4obenXOyWpFSAdaKVQaUzKzMIR/a9KWcadeCyO', 'user'),
(2040, 'Angga', 'Ruko PJKA No. D7 Jl. Mastrip', 'kepanjenkidul', '085649736640', '085649736640', '$2b$10$DFDnY1e.gYGGIoR6dQ8hOunCEeVUI8HWB6zxXJErBh7Wl1IwOZ11y', 'user'),
(2041, 'Maryam', 'Jalan Srigading No.30', 'kepanjenkidul', '085735723569', '085735723569', '$2b$10$w3tCBd2aIY7m3EYQRuD8aeNxylvcG3KE135YZzWuFox./rkv4AD4y', 'user'),
(2042, 'Icha Safira', 'Jalan Srigading No. 56', 'kepanjenkidul', '085668832901', '085668832901', '$2b$10$6lH3kq6sGpECvH/iMQvRt.UiSGecGb6j3U1GnRZdqP8Mp007wuATG', 'user'),
(2043, 'Dhiessy', 'Jalan Kacapiring No. 5', 'kepanjenkidul', '081357861134', '081357861134', '$2b$10$DAGWz7mPEQxe0g0OVopRLeuRh1n2Rp7JNsJ4760A9DxW2tGg9a2l.', 'user'),
(2044, 'Karisma', 'Jalan Kacapiring No. 3', 'kepanjenkidul', '085645565197', '085645565197', '$2b$10$ZpMafbSsCSD9EZtgHesI1eV497IT1rpyYTxQlY8U4QPt3tEVzVht2', 'user'),
(2045, 'Abayakta', 'Jalan Kacapiring No. 2', 'kepanjenkidul', '089513871954', '089513871954', '$2b$10$9oenGa.LYGx25NYU.kjSEeSApwwPkMTRaFE63GJ.LzFQzAGKDRVfK', 'user'),
(2046, 'Siti Nikmatul', 'Jalan Kacapiring No. 1A', 'kepanjenkidul', '085755002887', '085755002887', '$2b$10$SBcC.txx0zxFgHbxuaQ8YuRPBVq6xzeiguFmgxf25z5TwdnY/boFW', 'user'),
(2047, 'Ladya Dian', 'Ruko Niaga Jl. Kacapiring Kavling 03', 'kepanjenkidul', '081252805843', '081252805843', '$2b$10$wSwH1jJJGqxFkizqyeqQguizfgeg/Nevtia3WRyq.gPaSXkYlCFji', 'user'),
(2048, 'Darmawan', 'Jalan Sedap Malam No. 2A', 'kepanjenkidul', '085183385311', '085183385311', '$2b$10$KPcyg3HX4u4h1LfXW8e4JekLWBb8kVVY5QqxPFs6ULg/sNvmE1ax2', 'user'),
(2049, 'Weny', 'Jalan Sedap Malam No. 13', 'kepanjenkidul', '081775708938', '081775708938', '$2b$10$TDYGcgg0nImvcS6aZPEPXupzUzhVRYwIbVp2OFGaxLVrGEePk2L9a', 'user'),
(2050, 'Samsudiarto', 'Jalan Sedap Malam No. 4', 'kepanjenkidul', '081357081644', '081357081644', '$2b$10$3bcgxRmIhl.7IhJFhLFBDuhgN1BE4T06zoDEKSMB8oQnQJLXE9kLC', 'user'),
(2051, 'Suripmiati', 'Jalan Wijayakusuma Rt.02 Rw.12', 'kepanjenkidul', '081357252024', '081357252024', '$2b$10$X7fi3gyOTW/Ij5UlDx1DneAdgdcZKiv1bFQx5TsLMks4RvN58DRDS', 'user'),
(2052, 'Narendra', 'Jalan Melati No. 44A', 'kepanjenkidul', '082312804194', '082312804194', '$2b$10$gLAcCjWZfAstSutXhAdH9.cIAwE6cBwPjuWKaZTSCjE2orrWcnpc2', 'user'),
(2053, 'Supartilah', 'Jalan Melati No. 37', 'kepanjenkidul', '081554528763', '081554528763', '$2b$10$Sk7jN1VabyH.YUs6xB9IXe0Zsb7AhK7Pir0UcnG1zOB5EEviId/Ba', 'user'),
(2054, 'Sukamti', 'Perum Griya Melati Indah II Blok A No. 10', 'kepanjenkidul', '085859233135', '085859233135', '$2b$10$YMQvrdUD6rJtbfAG6PZozulx5usYpzDHlIrDD7SDV6fXeAHaNdcLS', 'user'),
(2055, 'Heny Puji', 'Jalan Wijayakusuma No. 8', 'kepanjenkidul', '085733426813', '085733426813', '$2b$10$Qg28lQ6nltis2QCcD1j0KONDzLllcKqUaHELR8LtaMb3okLF5ID4.', 'user'),
(2056, 'Isbandiyah', 'Jalan Wijayakusuma No. 6', 'kepanjenkidul', '085815279404', '085815279404', '$2b$10$PNWYO/8DJYd7bh.XIJpYC.2kBkRBJXX1xU0IrJWW7uzzGJEAwylCq', 'user'),
(2057, 'Sumaji', 'Perumahan Central Park Melati Jl. Melati Kav. 06', 'kepanjenkidul', '085804716840', '085804716840', '$2b$10$aKyE2Ks2.dZVWsHQHX.FGuH6ijkEUlA2efXNg5rFvHqSNoWyauT1e', 'user'),
(2058, 'Annas Zaini', 'Griya Melati Indah II Blok E. 20 Jl. Wijayakusuma', 'kepanjenkidul', '085865941271', '085865941271', '$2b$10$XX9PuOoXl/cOIIbjnJMIcuhUAMGC9gfS0pblsFM6qHbz2yEs343zm', 'user'),
(2059, 'Hermansyah', 'Griya Melati Indah Blok E No. 3 ', 'kepanjenkidul', '085736705906', '085736705906', '$2b$10$dBXiV3DBrJqtmfr0ppTMnuwpwMpRoNBGkdKY7nKAJsT8X28Ekbvs2', 'user'),
(2060, 'Dita Sonya', 'Perum Griya Melati Indah II Blok E No. 27', 'kepanjenkidul', '085649660944', '085649660944', '$2b$10$Z3eRtZtV5Spo5CGelogiPOxgCp1yzFGIw4YMCX4.BT4p3jOTFGwhq', 'user'),
(2061, 'Dika Aziz', 'Griya Melati Indah II Blok C No. 11', 'kepanjenkidul', '085755396197', '085755396197', '$2b$10$6XkRlwtvgbJ.uHrW9j4sZOrnorKC9RHNePnweCqKZpQgfsVM0GlC6', 'user'),
(2062, 'Budianto', 'Perum Melati II Blok B No.9', 'kepanjenkidul', '085746965876', '085746965876', '$2b$10$oN6U0/ysLcHLuwBrYGHzH.rs5A3ElHzpX3pbMx7hYVQRJTLPJrkFy', 'user'),
(2063, 'Nur Laila', 'Griya Melati Indah II Blok J. 2', 'kepanjenkidul', '085755157058', '085755157058', '$2b$10$DN/QzMipPZY3k3nXo8mBmeu6pIuiHbtf4HkuYpYaWgfxkvJ8jtbk6', 'user'),
(2064, 'Bawett', 'Jalan Veteran No. 38', 'plosokerep', '081935340632', '081935340632', '$2b$10$YAKb3XE0fN01r8OIQWFdKO63T8YaHT1/7RgAitutxb7Z6UHWXFLpy', 'user'),
(2065, 'Indika Prawesti', 'Jalan Veteran No. 141', 'plosokerep', '082338797477', '082338797477', '$2b$10$9wAV1CGccdaOOR7QfUI5iu8BPfmON2iVtwDi1eDMK5RAxtvREqume', 'user'),
(2066, 'Ahmad Ardi', 'Jalan Veteran No. 159', 'plosokerep', '081805298148', '081805298148', '$2b$10$qptGlid9VbTnUYcvSdWTMeNHPcHVl44hPKxjTuqW2pbJ0wevR0J9S', 'user'),
(2067, 'Cindy Ananta', 'Jalan Veteran No. 167', 'plosokerep', '085784157577', '085784157577', '$2b$10$AccmVF/JWmqQPILbPRRrk.bfCoFhV9MjJvZwCTrbEuvM9ZcdZpkt6', 'user'),
(2068, 'Rajendra', 'Jalan Veteran No. 189', 'plosokerep', '083848631642', '083848631642', '$2b$10$lBhzKeMU/AjU.nDyG84OuutBOm0Og74EBkuHm0y8wQvhwBg6soWWW', 'user'),
(2069, 'Lie Kwi Hua', 'Jalan Veteran No. 104', 'plosokerep', '085853491781', '085853491781', '$2b$10$GAjcqkBeTDJB9RiSY0LWyO/E4/wtv8e9zjt8wTOgW/OYYHbKHzZvi', 'user'),
(2070, 'Thomas Tim', 'Jalan Ploso No. 12', 'plosokerep', '082257734034', '082257734034', '$2b$10$qaAVU3UiyvM.95qASzKewepl4B8nXZFYA8.XUazcNoq2F7G1iZSMa', 'user'),
(2071, 'Chairunisa', 'Jalan Ploso No. 21', 'plosokerep', '085706851693', '085706851693', '$2b$10$Y2m7mPJi53MmQxiOmR8zWOeJS9eHVEC4WvfL29IaavGQwcjw1YvRO', 'user'),
(2072, 'Suwito Suwarno', 'Jalan Ploso No. 16', 'plosokerep', '081331413933', '081331413933', '$2b$10$5ox4JLKQemrVHrzvggAzku4ehgxw4fNaURmsxmwDQQ0VtqTXDbKry', 'user'),
(2073, 'Gadis Dwinanda', 'Jalan Veteran No. 140', 'plosokerep', '081913087148', '081913087148', '$2b$10$1aA8d6IrUwnHJ88vimoUzOkQk7Ha8MwJgVorEOijXkAuuhmOJn2pC', 'user'),
(2074, 'Suwito ', 'Jalan Kemuning No. 10', 'plosokerep', '085711240816', '085711240816', '$2b$10$WQYiBBgD1dUq4Wpzxbm1Dug04/.Rf5e.GN9lg3cgjWdJiTGBnIosy', 'user'),
(2075, 'Mufidatul', 'Jalan Kemuning No. 14', 'plosokerep', '081554518950', '081554518950', '$2b$10$A7CUs3hMKTmUZd.MiJiDCu0pDAXZ.GoedHljIDnKnhmTQ4lncICn.', 'user'),
(2076, 'Goei Boen', 'Jalan Kemuning No. 28', 'plosokerep', '089523784224', '089523784224', '$2b$10$llc9UvbPiIx24f6Pd1eztuNVh3K6PHii7avTl0SGbAHIJsVbNvnZG', 'user'),
(2077, 'Purwati Saada', 'Jalan Kemuning No. 41', 'plosokerep', '085600040015', '085600040015', '$2b$10$0h7P8oqdKgGaVgOF6vrL2.wOcdfqC/hOWVQcFl8xXVTMS9FKKBtFK', 'user'),
(2078, 'Darlinah', 'Jalan Kemuning Rt. 1 Rw. 3', 'plosokerep', '085736400722', '085736400722', '$2b$10$yy5dLS53imbkDb3GB4jF/ujGwO/Mca0pPOcoC2cVXEUyChMBk0Gb.', 'user'),
(2079, 'Ismi Dewi', 'Jalan Kemuning No. 44', 'plosokerep', '081234084455', '081234084455', '$2b$10$S3hKejtgNnV.k4qQ86nyv.wGV6kathEWy961iT9kWYZoy5VmHLpbi', 'user'),
(2080, 'Sumaji', 'Jalan Kemuning No. 55', 'plosokerep', '082226009794', '082226009794', '$2b$10$pvX78.2zGQ.1f0myDPrrP.O5I/JIiXaMVi2XaJ5MDRysHuRQ4AoQi', 'user'),
(2081, 'Hari Murti', 'Jalan Kemuning No. 41', 'plosokerep', '082327211064', '082327211064', '$2b$10$ZHr1VhH8jiBIX3mAsBrBmO0FI5RTQSPUBJNREfr5Li5sn9StnY2Du', 'user'),
(2082, 'Bambang', 'Jalan Kamboja No. 35', 'plosokerep', '082244953047', '082244953047', '$2b$10$0ruQ3nc9RMYtXVAPpbb.xOE0a7ZElPByFD5NcygsQq3waDkBSDR3W', 'user'),
(2083, 'Siti Kunainah', 'Jalan Kamboja No. 5', 'plosokerep', '082213011240', '082213011240', '$2b$10$aTDDfJ90JGEDmPc4RLh9g.NL1qPWo/V4b.gF7dgEtbrQVX/b1oT12', 'user'),
(2084, 'Ismiarsih', 'Jalan Kenari No. 18 A', 'plosokerep', '083830625540', '083830625540', '$2b$10$8dlXvy.JfaDGLYIjAYNDLu40vKJDcXZWfjlAfBjEwJFCdXQmTVi4W', 'user'),
(2085, 'Dafies Aira', 'Jalan Kenari No. 39', 'plosokerep', '089681052361', '089681052361', '$2b$10$6nllj0j7.kUUGkQyzE3vo.4x5xjKMeWnPYqTO3T02MeJtiJQPFpp6', 'user'),
(2086, 'Endang Sri', 'Jalan Kenari No. 47', 'plosokerep', '089530966363', '089530966363', '$2b$10$CqqmItgg7n2Ecq2MTp9soewHqmWmbuQAMX4eqBYT8DOlG0aUBqxNq', 'user'),
(2087, 'Kirani Dwi', 'Jalan Kenari No. 51', 'plosokerep', '081238914961', '081238914961', '$2b$10$LQ8/RBHJ/5qhudFMAXSrXedefIFOi3wVztUZouv9T9boKp1CPPL9i', 'user'),
(2088, 'Maulana', 'Jalan Kenari No. 9', 'plosokerep', '089529197080', '089529197080', '$2b$10$ZROLDs5GyymkPpAGMYbsUeuzPZtvHRRQWgeWwDGDux2w0oNohSDr6', 'user'),
(2089, 'Dia Ika', 'Jalan Kenari No. 37', 'plosokerep', '082245880187', '082245880187', '$2b$10$Ne6Y.y6CiFbrQvEP.3uD4.4we9bi6Cg.WyoEvw2v.NX9yprKanqh6', 'user'),
(2090, 'Robo Septiani', 'Perumahan Puri Kenari Asri No. 7 Blok C', 'plosokerep', '085708750968', '085708750968', '$2b$10$IiiaJ8O0cljLmtDudnN0buaen7OmSvnH2bb0s6Vo0qdMyaOVyflQ.', 'user'),
(2091, 'Bambang Basuki', 'Perumahan Puri Kenari Asri No. 10 Blok C', 'plosokerep', '081234091805', '081234091805', '$2b$10$offE3kndW4k2KAiLGQQODOTwSUMd4pTHC43JPguc7oxQjm39WBJ8a', 'user'),
(2092, 'Henky Sudjaja', 'Perum Puri Kenari Asri Blok E 4', 'plosokerep', '089697730571', '089697730571', '$2b$10$jA7t/gTXn3FPa6P0fFgk.O91TvrcKVqwxJDEPLGwU337gj8pt5T5a', 'user'),
(2093, 'Lilis Safira', 'Perum Puri Kenari Asri Blok C 8', 'plosokerep', '081336793702', '081336793702', '$2b$10$p.XQwKf9iC2cYZyv.3EFZeHbGxytaflCVZVsNBHQ5qgpIuUjz80yK', 'user'),
(2094, 'Wahyu Hernanik', 'Perum Puri Kenari Asri Blok D No. 6', 'plosokerep', '085784801550', '085784801550', '$2b$10$fUJ/kr6s9WAtirF6k5QsJO0eDvHl0QqCG9mpztrVPKXLJbmdH.oz2', 'user'),
(2095, 'Gunawan', 'Perum Puri Kenari Asri Blok P No. 8', 'plosokerep', '085755389323', '085755389323', '$2b$10$91G22IC9YqyTPIdkhlnlJOCn8e5udo0tHdQx8i3GyJLlQyC7xVYYq', 'user'),
(2096, 'Situ Rubiah', 'Perum Puri Kenari Asri Jl. Kabaena Blok B. 6', 'plosokerep', '085607216373', '085607216373', '$2b$10$vTV/9Vl3vWEqZghm7tVXMemdD9L83lkYaT9meHuXTIeTuIyIcBUAy', 'user'),
(2097, 'Atina Halimah', 'Perum Puri Kenari Asri Blok M-1 Rt. 03 Rw. 10', 'plosokerep', '081381228489', '081381228489', '$2b$10$9Z97PWEYP.d4UW/Wx3quhOTeZAEZuk/XWWkBT6K69cxbXmQM6GN1W', 'user'),
(2098, 'Wiken Larasati', 'Perumahan Puri Kenari Asri Blok M19', 'plosokerep', '085856339115', '085856339115', '$2b$10$DM9/EhM/QnOrY9LnD2BgB.wS3y/oTDQ4tXb3htzAz3ivVnLke8i9K', 'user'),
(2099, 'Ganjar', 'Perumahan Puri Kenari Asri No. 15 Blok J', 'plosokerep', '085230602607', '085230602607', '$2b$10$ogh7wqrKYa94jir44hnQsOMqaQ2Lw/6L05XV5vw.yXDaIKftCro.6', 'user'),
(2100, 'Darius Denata', 'Perum Puri Kenari Asri Blok F6', 'plosokerep', '085646700819', '085646700819', '$2b$10$4TwqVB6QUlUG.pbuHnRAr.5q95VC0NoURQx/ekxypKfbbQquMuUje', 'user'),
(2101, 'Niki Priarsa', 'Jalan Kenari No. 51B', 'plosokerep', '085815050821', '085815050821', '$2b$10$EXGTwBgD/F3FGCS9m.72A.IAn6DzplLQ1JDPJbpkwnczRarHnCI.e', 'user'),
(2102, 'Ajeng Ayu', 'Jalan Kenari No. 55 Rt. 003 Rw. 003', 'plosokerep', '085815033754', '085815033754', '$2b$10$R1Bw4zpsxMsOL2STSll5QeOydsAvTMdDJjE7MlFJwOUQIWwFOIj6a', 'user'),
(2103, 'Dania Salma', 'Jalan Kenari No. 67', 'plosokerep', '082330673010', '082330673010', '$2b$10$VwLRIYKwq0khE3.oUBRR3uis9gouSQ2U55ZZSlRVti73gra6OTPza', 'user'),
(2104, 'Aji Indra', 'Jalan Kenari No. 42', 'plosokerep', '085860396752', '085860396752', '$2b$10$CF4ESYn7.YmUIclfyQOsKu/HM22SZ2RLWHwMfPXSaC2WR2zeNJTwK', 'user'),
(2105, 'Aminah', 'Jalan Kenari No. 48 Rt. 01 Rw. 04', 'plosokerep', '082273282000', '082273282000', '$2b$10$qZ1zutkHD8dDVOWoOKsNDOmYRzJDw7ye2Of9zlAhe1KjVJGk5wSfO', 'user'),
(2106, 'Rumiati', 'Jalan Kenari No. 56', 'plosokerep', '085736671431', '085736671431', '$2b$10$3PvfcKfweunh6DNj2VTHjuWMonBYbFP1HY4T/XVPKzX97BchO55wK', 'user'),
(2107, 'Sulastri', 'Jalan Kenari No. 87', 'plosokerep', '085707159447', '085707159447', '$2b$10$y5AIO0Ak3r8r1wQyc08Uze3bMbVZSOIj.iPXNp1z4b.rQAD4WX10C', 'user'),
(2108, 'Utami', 'Jalan Kenari No. 107', 'plosokerep', '081555328040', '081555328040', '$2b$10$8E1RuEAGpAIy8j1sT3KlauUPGlsfxZCYY.5RFEtvef0JnwCY5mr.y', 'user'),
(2109, 'Sukarlin', 'Jalan Kenari No. 72', 'plosokerep', '081290194578', '081290194578', '$2b$10$x0Iht.SNSWE6Vz2r2hfWfOTvJRXxz1E26.mXVdviWdSOlZGbKTGP6', 'user'),
(2110, 'Yateno', 'Jalan Kenari No. 76', 'plosokerep', '081334769168', '081334769168', '$2b$10$RpBd3F0UTVw1tYmefbBoxee4FTiU7y5L7zGRql4ERes1evo0PRssG', 'user'),
(2111, 'Lilik Ekawati', 'Jalan Kenari No. 92', 'plosokerep', '083153759743', '083153759743', '$2b$10$LckoHqgoLkE4uOcOm7kqAOEQQ9143DBJCiTCLpMbLYA/4Z1ly8Nue', 'user'),
(2112, 'Dasilah', 'Jalan Sumba No 53', 'karangtengah', '085654499854', '085654499854', '$2b$10$TgUahm3QckPqzY7ss00NMu36ABqj8Fe9aQ48x/DDs4glOA80gNTB2', 'user'),
(2113, 'Yuni Astuti', 'Jalan Sumba No 16', 'karangtengah', '083831985743', '083831985743', '$2b$10$jpVJu14az1OCLbzrQN/ZGe8JQwolm.XaZJqQO15hmQ300tePwQtku', 'user'),
(2114, 'Eka Dwi', 'Jalan Sumba No 31', 'karangtengah', '082225308329', '082225308329', '$2b$10$oXeMiK366topkpXh7o6al.W0kWA8FPz75rdOP1/lpxsrNwjVd0Ldm', 'user'),
(2115, 'Kolipah', 'Jalan Sumba No 69', 'karangtengah', '081938401537', '081938401537', '$2b$10$01KNfSZj3ETn6PFPWNB7hekcOZWa8SVd2pU652cizjBpIfDikO7hK', 'user'),
(2116, 'Sugeng', 'Jalan Sumba No 70', 'karangtengah', '085730505655', '085730505655', '$2b$10$pCleguhVTFRQwIbEq5PGt.oHcWg/onqBfxLACTzkz8NTKe7uQ8x12', 'user'),
(2117, 'Anto Yuwono', 'Jalan Sumba No 64 Rt .1 Rw. 07', 'karangtengah', '085939253575', '085939253575', '$2b$10$PxJzAyUqwnt35GNj9vTkweALDMU5AaUUbL0uc1WAsnIWBnxtyD41y', 'user'),
(2118, 'Dodit Herlambang', 'Jalan Sumba No 85', 'karangtengah', '081249895653', '081249895653', '$2b$10$AcZGWrmzyu2JP.Wn8BOLXuA7.eqwa5lCQyuXkuENDycz4eaHuLUT6', 'user'),
(2119, 'Jojo Ardianto', 'Jalan Sumba No 104', 'karangtengah', '085748600001', '085748600001', '$2b$10$ZUjEdI5H.3SSLavRUIiJ/OMUhdSRARcflQJr6kzVhbXoY29D02pxK', 'user'),
(2120, 'Ayu Dewi', 'Jalan Sumba No 107', 'karangtengah', '085840826795', '085840826795', '$2b$10$SIwZvoAAckZ9GH27N9PQzeYf8oycFhxPna72ZNeG.d5qm6dRORxk6', 'user'),
(2121, 'Dewi Sartika', 'Jalan Sumba No 181', 'karangtengah', '088985259050', '088985259050', '$2b$10$FlWjKaTpZWxnLUcPA2I2wu1TMzF6NdtGELQm4vbcCoyxyzqRuCgRK', 'user'),
(2122, 'Intan Ayu', 'Jalan Sumba No 128', 'karangtengah', '089687017599', '089687017599', '$2b$10$vfKSO6cdPR1aGIQkP8c4s.sj9arVdZuLFVwgEF5WG6XN6pQrtL7oi', 'user'),
(2123, 'Linggar Dwi', 'Jalan Veteran No. 44', 'kepanjenkidul', '085748100656', '085748100656', '$2b$10$sHD2P7wHcoS/3N8HbjQTaeSrmu.5suLwUrjFS.ZOddQ8f3qXi7OEq', 'user'),
(2124, 'Nyoman Datu', 'Jalan Tentara Genie Pelajar (TGP) No.2', 'kepanjenkidul', '085852932453', '085852932453', '$2b$10$IFJrkToldYPnn1RMcg0ab.8qs2ln7.lFq7fRTxyn1BTMiIFvnGUp2', 'user'),
(2125, 'Chiko Kurniawan', 'Jalan Tentara Genie Pelajar (TGP) No.10', 'kepanjenkidul', '085198417755', '085198417755', '$2b$10$VUMAStL2KrJNIrhJMWapQu5LReQ5qrhrtxkGGBhfX4t606HIQawgG', 'user'),
(2126, 'Septa Munawaroh', 'Jalan Tentara Genie Pelajar (TGP) No.14', 'kepanjenkidul', '081246836643', '081246836643', '$2b$10$IIax7hNXy9oV/0ETXgZ4i.JXQLskbS1rGY6vT/ZH0KT3.J1oRld/6', 'user'),
(2127, 'Endang Hadikusumo', 'Jalan Tentara Genie Pelajar (TGP) No.18', 'kepanjenkidul', '085747749993', '085747749993', '$2b$10$c.hJ4548VrhGfA6DyA0OreWEKYib2jWCqh9NpI0jmaFa25AZhnWYO', 'user'),
(2128, 'Indra Bagus', 'Jalan Tentara Genie Pelajar (TGP) No.24', 'kepanjenkidul', '083861009327', '083861009327', '$2b$10$niDcR16wwq7lPhxrSh7LTu4heJRWYcCiso0kG3RnKHTORzpwk3bji', 'user'),
(2129, 'Niken Herawati', 'Jalan Tentara Genie Pelajar (TGP) No.26', 'kepanjenkidul', '085245665758', '085245665758', '$2b$10$4581KOMC02MsqbtMtxdyy..QgkTH60T5XKQxMAfgOApNEZkNnECyG', 'user'),
(2130, 'Lulu Kartika', 'Jalan Tentara Genie Pelajar (TGP) No.33', 'kepanjenkidul', '085784248537', '085784248537', '$2b$10$yCEwlhUlCzdHjTqeMtMXvO4IBDiQ1Ug/CcJRKriFhsW3wMb75bG26', 'user'),
(2131, 'Dwiharjo Hadikusumo', 'Jalan Tentara Genie Pelajar (TGP) No.27', 'kepanjenkidul', '081252411153', '081252411153', '$2b$10$kShsLnr8pcJtQd3I22dEPumEbuJWfIT.8HA6MrYWXZAGpei9zLk/q', 'user'),
(2132, 'Ndaru Kurniawan', 'Jalan Tentara Genie Pelajar (TGP) No.25', 'kepanjenkidul', '085607745596', '085607745596', '$2b$10$StJQKZMJiE2IcjYgNbWKyeGIt5jr2SPp0XM9fBMwco6LfoACJz8nO', 'user'),
(2133, 'Septian Arya', 'Jalan Tentara Genie Pelajar (TGP) No.35', 'kepanjenkidul', '085856209712', '085856209712', '$2b$10$jofMxFeimLwv9aqvpqV0YubxN4CCW1H3aZmiNDl6uxHodYqBOE16.', 'user'),
(2134, 'Yanuar Arga', 'Jalan Irian No. 51', 'kepanjenkidul', '085850499365', '085850499365', '$2b$10$rt.eLd6HyaVav9aKvLNaMuieCv.4R9Ctj14BYiciYotbc6ZF/N8Ea', 'user'),
(2135, 'Wahyu Eky', 'Jalan Irian No. 50', 'kepanjenkidul', '081359771667', '081359771667', '$2b$10$KkBRd2Vr3aky2SVYLoBUBuOzKHm5zxtPuOOqTja8rnYTXd86LafJq', 'user'),
(2136, 'Aji Bagus', 'Jalan Irian No. 32', 'kepanjenkidul', '081553753815', '081553753815', '$2b$10$W/DuQGF/OiAM6sEVjdQWWOx5rBbOMYY3T8uGUKfKSqX.17zpQAFSC', 'user'),
(2137, 'Rafyananta Wijaya', 'Jalan Irian No. 30', 'kepanjenkidul', '081259077779', '081259077779', '$2b$10$8iz/wrP94StBjAMAfIRK1e4ewstIRTwiObHQWuMqMmsrFnY8rx3Ry', 'user'),
(2138, 'Indah Sri Utami', 'Jalan Irian No. 20', 'kepanjenkidul', '081265647752', '081265647752', '$2b$10$G/bodbQFhaglyBA2w/3rOO6uF1CJz0CMO.2TH7IvtrYtsEFcz/tGW', 'user'),
(2139, 'Rama Husaidi', 'Jalan Irian No. 16', 'kepanjenkidul', '085607666014', '085607666014', '$2b$10$9JJTVUhI4uLaUgFnAqKbru9nwT4CJaGa1qVvF0H8PPO6j8.TNcME.', 'user'),
(2140, 'Ismatul Karromah', 'Jalan Irian No. 10', 'kepanjenkidul', '087880131881', '087880131881', '$2b$10$.KR8agp6qpQu7A6ht8r85uvzOuCzZl/bQIMOr0hAYQQhihKLCVs62', 'user'),
(2141, 'Didit Herlambang', 'Jalan Veteran No. 17', 'kepanjenkidul', '081515538927', '081515538927', '$2b$10$5DUYpDqjLVdDjU6bVVJ0U.cy2cnpoiIXAtDbpUb4hBmI2j92paBPG', 'user'),
(2142, 'Suyono', 'Jalan Veteran No. 9', 'kepanjenkidul', '085707622944', '085707622944', '$2b$10$O3rXMMJ6Axoev3UHyTFApOc5cfkVNagWB18TS9bIRG6.MvpWoKJO.', 'user'),
(2143, 'Suwandi', 'Jalan Veteran No. 5', 'kepanjenkidul', '085645659375', '085645659375', '$2b$10$bVzeLj8XGvAcu.LfqOrveeTNQBvQNjuDwcRzLbzhkoYoLQbe4TseS', 'user'),
(2144, 'Bagus Chamdani', 'Jalan Veteran No. 5A Rt. 3 Rw.5', 'kepanjenkidul', '085859464164', '085859464164', '$2b$10$fi.hmMnBkO9.fC9ezBT/y.KDeVYZxqV6E7YPpqB7Vnlt2twHd8Xji', 'user'),
(2145, 'Wahyu Hernanik', 'Jalan Veteran No. 16', 'kepanjenkidul', '085852835590', '085852835590', '$2b$10$87ZFds7lhjfLGFnDL4HlY.QwVZtf06d8PNisfLjVgnKTH9rAC9dfu', 'user'),
(2146, 'Yeni Puji Lestari', 'Jalan Veteran No. 22', 'kepanjenkidul', '085210734512', '085210734512', '$2b$10$Kur.FQt8awCYztlLy0.nOOPlFT6HX9j4GPo6kG5kj3S2N9jbnof6i', 'user'),
(2147, 'Daris Ismaya', 'Jalan Bawean No. 34', 'karangsari', '085804716271', '085804716271', '$2b$10$Nkenk21ZTkE80ix.TphZ1u0ITwRKM1MABGRbkUUVNlVORjwKv.o1K', 'user'),
(2148, 'Agus', 'Perumahan Melati Tahap 1, No: 5', 'karangsari', '085707498500', '085707498500', '$2b$10$xHYQsdYeeJdblAmizrgb4..zwrPBHRpVveTFPg0WWbAx/IU9EZQI.', 'user'),
(2149, 'Niken Fadilah', 'Perumahan Melati Tahap 1, No: 9', 'karangsari', '089525276625', '089525276625', '$2b$10$wOq1zqacfgxvLvtgAFhrcuHDiC5xUEqCP6poIwY8iNTQsv73duPVS', 'user'),
(2150, 'Elika Yunia', 'Perumahan Melati Tahap 1, No: 10', 'karangsari', '085858391218', '085858391218', '$2b$10$mXgxMErnDiiiUSbz.XJBveran7kYPRtkD4O9MHMb0lkR/RXmDcAS2', 'user'),
(2151, 'Citra Nanda', 'Perumahan Melati Tahap 1, No: 1', 'karangsari', '085797115079', '085797115079', '$2b$10$yycd8mOUDiXRNiuiAho2WOIatXY3/dRcmSKJ5mkjsAPvLiKR3Y2vW', 'user'),
(2152, 'Febria Sujarwati', 'Perumahan Melati Tahap 1, No: 80', 'karangsari', '081252422477', '081252422477', '$2b$10$Wg0RpWeOJO0ejkaAWiP7lOneGpbHQALwGsJmO16lL2wadBlx4VRLa', 'user'),
(2153, 'Salsabila Haqi', 'Perumahan Melati Tahap 1, No: 30', 'karangsari', '082301675338', '082301675338', '$2b$10$.lds9ooV6vhxxDt7Xdazse80iF8WEoDVrcAJ9Ts.EuCAxXslKDLHi', 'user'),
(2154, 'Santi Sutyorini', 'Perumahan Melati Tahap 1, No: 11', 'karangsari', '081212451921', '081212451921', '$2b$10$SUCw8DVh/PietPHPrgUs6uCN0kPJsS3wezdh5Or0A757mOy5ZgpUy', 'user'),
(2155, 'Rista Alia', 'Perumahan Melati Tahap 1, No: 2', 'karangsari', '081334060815', '081334060815', '$2b$10$dVNO4zY1/vUsRMZ/00iCdOtzHNYf88f05ra9RFBvEJVpM569UVGiu', 'user'),
(2156, 'Mufidatul', 'Perumahan Melati Tahap 1, No: 16', 'karangsari', '085209065864', '085209065864', '$2b$10$k6NsxXes0AlBB3tKegBA9e.kQQyjXNmH8y88FLf50hgn9vfCj/u9S', 'user'),
(2157, 'Muhammad IQbal', 'Perumahan Melati Tahap 1, No: 22', 'karangsari', '082120232653', '082120232653', '$2b$10$B0NClo6jjTwF3Ubrzhfa8OSkvOXlDVdCra8cv1vCfXhi4ZkAUNeba', 'user'),
(2158, 'Yanuar ADhi', 'Perumahan Melati Tahap 1, No: 8', 'karangsari', '082271410536', '082271410536', '$2b$10$a6/4HMfSo3ycZQ42aZHTp.ZMxmwuvP5rU.4gXuo/5gyt3gZ7V5G8S', 'user'),
(2159, 'Arif Kurnia', 'Perumahan Melati Tahap 1, No: 21', 'karangsari', '081376610442', '081376610442', '$2b$10$Fna1QgmS9JYYupDspMbxWuJR6s24m5cZMFbU8jwegzrRNSkU/m9IG', 'user'),
(2160, 'Hamid', 'Perumahan Melati Tahap 1, No: 1', 'karangsari', '082149490416', '082149490416', '$2b$10$C7Tx1lYDvZclJomN8hBFC.DY0OqJNtoGMkjh.4DjGp9ZgaVGQt.Vy', 'user'),
(2161, 'Silvi Ekawati', 'Perumahan Melati Tahap 1, No: 18', 'karangsari', '088199465477', '088199465477', '$2b$10$MRZS8ZBrBtGA6LbMrtJI/u5zEh8gO./q57RhVx5SrdhaojESxwEBW', 'user'),
(2162, 'Dian Arni', 'Perumahan Melati Tahap 1, No: 13', 'karangsari', '081368074693', '081368074693', '$2b$10$nIXkgKt4om4/bbYmpkA0bOLIaG9hdSDpoPzr8w8jbWaJ2DRY0eRli', 'user'),
(2163, 'Azizah Intan', 'Jalan Rambutan No. 12', 'karangsari', '082228142180', '082228142180', '$2b$10$bwZVRsp8jQgaJsKYqZ1E6uT62qGXZ2RBiKjJ9AAZDEBCAJaFrarAy', 'user'),
(2164, 'Nisa Daniswara', 'Jalan Rambutan No. 11 Rt. 002 Rw. 004', 'karangsari', '088148946758', '088148946758', '$2b$10$IHDs9RK4tdx3Hxm6xsnYgeCpjVd0vRwCV084jy1dP3eBI/m7r.Ife', 'user'),
(2165, 'Ica Agustina', 'Jalan Rambutan No. 15', 'karangsari', '081342295603', '081342295603', '$2b$10$c8/uOz8avpxMUS7NehuhguYe6ZRlBZvwUA5Yt4lMVi1T9Rh3.r2N6', 'user'),
(2166, 'Susilo', 'Griya Melati Indah I Jl. Anyelir No.17 Blok H', 'kepanjenkidul', '082133306175', '082133306175', '$2b$10$Y.eR4lX9xK7UjjmuNBN4j.ZURz8Lwe1q6Txk4g0pi6kyMNYg9bzz.', 'user'),
(2167, 'Airudin', 'Griya Melati Indah I Jl. Anyelir Blok E6', 'kepanjenkidul', '088182769254', '088182769254', '$2b$10$QbBKR8KHYmmlFhzk4.o19uv35b5REbUdaA68jOU0DZMpwlLd8ViNa', 'user'),
(2168, 'Nurwati', 'Griya Melati Indah I Jl. Anyelir Blok F No. 1 Rt. 01 Rw. 10', 'kepanjenkidul', '088147488784', '088147488784', '$2b$10$sBEW.Qs7/cg3fLT1IvEWUO4C42I/up/4f9HRyj3qcG7ZosIuW.Z1G', 'user'),
(2169, 'Yusuf Hermanto', 'Griya Melati Indah I Jl. Anyelir Blok F No. 58', 'kepanjenkidul', '081206102914', '081206102914', '$2b$10$giukXnGQCvvlrHIcOdfAnuufvEgwKfBlyZcVJCB79t/HxRDsI5/tK', 'user'),
(2170, 'Sriatun', 'Perum Central Park melati B1 Jl. Anyelir Rt. 4 Rw.10', 'kepanjenkidul', '085357128083', '085357128083', '$2b$10$IPlAYDZC3TUYHP4ohsXZmuHQO9lzZzDV0spRuNLF/w/0I7vFTULHa', 'user'),
(2171, 'Darmi', 'Perum Central Park melati No. C12', 'kepanjenkidul', '081374868514', '081374868514', '$2b$10$kzpHcvmW3DA5qIjc7Z83LOu3IVsXF7A1mjC/8m2lcFAC/m/3JlpLG', 'user'),
(2172, 'Eli Hartuti', 'Griya Melati Indah II Blok F No.17', 'kepanjenkidul', '088124461610', '088124461610', '$2b$10$/kQuxS/tKgGcWaPUZ52LTON1lODiWr49GRI.L2CgdcZUbXe1pq6fK', 'user'),
(2173, 'Rokani', 'Griya Melati Indah II No. D23', 'kepanjenkidul', '088169927021', '088169927021', '$2b$10$mwRxVvbEqwVYsWIdszmRDOU.AUanM4eq7zI8vOfgY9UOh2Tzq6kDK', 'user'),
(2174, 'Sona Prasetyo', 'Griya Melati Indah II Blok B No.11', 'kepanjenkidul', '088100717618', '088100717618', '$2b$10$eFa.yPNRd2.xohkUOUJcWun90E4kdtbAowAV3COJCWHZLV4Nq52.W', 'user'),
(2175, 'Arifiyan Herlambang', 'Jalan Melati No. 92', 'kepanjenkidul', '087758528981', '087758528981', '$2b$10$N4fIM0k/qeGiBaLOB.lEPesygymXy.Gfdwm/Wn4O0sVCwJLKCjBk.', 'user'),
(2176, 'Sidik', 'Jalan Melati No. 84', 'kepanjenkidul', '085324095794', '085324095794', '$2b$10$gAgGS6NXQ4fYa4OGTU72E.bAIGJregBMhaAJmpXeKKgyO2SYxtk.W', 'user'),
(2177, 'Ratna Indriani', 'Jalan Melati No. 94', 'kepanjenkidul', '081256151317', '081256151317', '$2b$10$VwpqGmMUekldZxRBfqDgnO4wLKPyzakDoXpcysAgWoyo90RmPylaW', 'user'),
(2178, 'Tukiah', 'Jalan Melati No. 96', 'kepanjenkidul', '081221045365', '081221045365', '$2b$10$ZsVgYYRMfQ84YUXPubVDvudG7CQAkyzpRXnHltq9dHuYHGY4VDp4.', 'user'),
(2179, 'Ponidi', 'Jalan Melati No. 64', 'kepanjenkidul', '087771151821', '087771151821', '$2b$10$duqJ1Q.FL/41c/1T/JtvGuuW5KFdzqv1rOX5tCcpqTankkM/MtT3u', 'user'),
(2180, 'Sulmiasih', 'Jalan Melati No. 100', 'kepanjenkidul', '085327259343', '085327259343', '$2b$10$NsaDD2PQ8T4wGccSua38vO0hzRzK1lq/x6bR3Imp9e0UqqpTq7l1i', 'user'),
(2181, 'Sunari', 'Jalan Melati No. 106', 'kepanjenkidul', '081228550678', '081228550678', '$2b$10$u7HQt1b/M8PNMPWXCcI7S.YW/S2TfXtS2NUpDCT2VOusDEWkqJzsu', 'user'),
(2182, 'Imam Nurhadi', 'Jalan Melati No. 89', 'kepanjenkidul', '082185044327', '082185044327', '$2b$10$ajUO7zZ/YLQR6OQYS06DdupKyC1yczfA2ZnaNQF52cKirFdYvR/TO', 'user'),
(2183, 'Ismiatun', 'Jalan Melati No. 101', 'kepanjenkidul', '081261334190', '081261334190', '$2b$10$cyjllT3sLjKTILDu3NSUYOGkyQbZcaI2MjrKk93fn07gOsIvX3RQG', 'user'),
(2184, 'Qori Kusmawati', 'Jalan Melati No. 95', 'kepanjenkidul', '082134674384', '082134674384', '$2b$10$NlSGd7uXyPXPKJOtp5auTe6lzX7zDCEnTD1w97Q0.av/UDro4RDEC', 'user'),
(2185, 'Laksana Waskita', 'Jalan Melati No. 99', 'kepanjenkidul', '082218210251', '082218210251', '$2b$10$7MzjgRBUB8S9nYxBosZKROGMrxE5c0zccjprg1MfJy3CVqcqMDTiW', 'user'),
(2186, 'Lukita Dongoran', 'Jalan Melati No. 103', 'kepanjenkidul', '088189474479', '088189474479', '$2b$10$8RGL0VT9EWx6m0QAtQrOMeqqHRr2cZhgsJbx43uA9XkfJ2mzoeha.', 'user'),
(2187, 'Rini Usada', 'Jalan Melati No. 87', 'kepanjenkidul', '081280720246', '081280720246', '$2b$10$uk8CdSjdObEQTCpt0CQysuahUsVba0dTK5/fwLV0VocCd7vvREXre', 'user'),
(2188, 'Ajeng Mandasari', 'Jalan Melati No. 115', 'kepanjenkidul', '081293507741', '081293507741', '$2b$10$RJUz80tvX3gqbFUHakZ5Pe5yMjAeMcCc6KPY2cCmXB5hIX6wGIAhe', 'user'),
(2189, 'Tiara Purwanti', 'Jalan Melati No. 53', 'kepanjenkidul', '085231455913', '085231455913', '$2b$10$oQBYnqLnFekrsvh3qjKpYulskW6fpo0ARvsRtWMOlf750BakpIH3G', 'user'),
(2190, 'Banara Siregar', 'Jalan Melati No. 44A', 'kepanjenkidul', '087726018146', '087726018146', '$2b$10$sm6qa4dUPRClBAk7r.P0/OMugqE0jcNtbdG8LltRD5fmVEmc2krJ6', 'user'),
(2191, 'Purwa Utami', 'Jalan Melati No. 39', 'kepanjenkidul', '081281660569', '081281660569', '$2b$10$dOX6ixNqnrIRQLySmJK9h.bJokaVoFcxh831fyN4CV9lItjLcrY6m', 'user'),
(2192, 'Bahuwirya Fujiati', 'Jalan Melati No. 40', 'kepanjenkidul', '088161717039', '088161717039', '$2b$10$buOsZoIsfQLHvrRHfkOjMeVIN6u/.RRzvoX9.OntZRwlUg91b8tZm', 'user'),
(2193, 'Chandra Yuliarti', 'Jalan Melati No. 35', 'kepanjenkidul', '088146966031', '088146966031', '$2b$10$wtpcZAiYkiljj82Gi13jAu7dzpaPt385eNmwKKH4lpv75.7iE3gwy', 'user'),
(2194, 'Nyoman Padmasari', 'Jalan Melati No. 30', 'kepanjenkidul', '085218539828', '085218539828', '$2b$10$lEzsutgbdXGfhinCaspqZ.1gvebiKoTjj8drxF.fMlPx64UMBR.7C', 'user'),
(2195, 'Lega Prasasta', 'Jalan Melati No. 25', 'kepanjenkidul', '087773643436', '087773643436', '$2b$10$wW6CPQQxFmTy.629sIIMpumQKDi.eGEtIBTvZZz0jIwORQyk5iwOC', 'user'),
(2196, 'Clara Kurniawan', 'Jalan Melati No. 21', 'kepanjenkidul', '085354633019', '085354633019', '$2b$10$WIWB6Livsw3Se06FVeKU5.YkrK4t1m8114CbW7uTpNd5vLWtTbWfa', 'user'),
(2197, 'Tedi Pertiwi', 'Jalan Melati No. 16', 'kepanjenkidul', '087706077412', '087706077412', '$2b$10$WazUaki07s16e6ZRrLRmfO1N8MQqJflQGIJw6DKODtmh3uhaNmsai', 'user'),
(2198, 'Kenari Wahyuni', 'Jalan Melati No. 15', 'kepanjenkidul', '087717539548', '087717539548', '$2b$10$9ps.oBckfbbvUuq1lcGEKupXg9vhYyRrl5bwQEEyr8mNIk1eMZaly', 'user'),
(2199, 'Kala Hariyah', 'Jalan Melati No. 8', 'kepanjenkidul', '088125180856', '088125180856', '$2b$10$da4q.JbQlW3kfPThNyiQ5.Jrrck0NyJ7.KfPt4Iuns8DkMk38gFS.', 'user'),
(2200, 'Kenzie Palastri', 'Jalan Melati No. 9', 'kepanjenkidul', '082155519213', '082155519213', '$2b$10$gLKqQ.PuIr8QHSkzkYPOr.roUQGwEBjceNSgERjnrLpG16rsuC1ba', 'user'),
(2201, 'Upik Simbolon', 'Jalan Melati No. 6', 'kepanjenkidul', '087738701516', '087738701516', '$2b$10$7dwS/iF47ocrBg.z9CqWE.Sgfs.s0D5p00hsC97T9dDh.whMvoXAW', 'user'),
(2202, 'Kenari Nurdiyanti', 'Jalan Melati No. 5', 'kepanjenkidul', '081318021348', '081318021348', '$2b$10$2KmBv/Xc4E.okEWxMfJ68.Q/.5hD4ePDKy69XNrOezjCUIv4Yn3xO', 'user'),
(2203, 'Nardi Hutapea', 'Jalan Jawa No. 4', 'sananwetan', '082168292956', '082168292956', '$2b$10$sj/pQBsUiRvcr1GYyfVhkOwrrfpOm1vXxMUkTDQwSnnXdn2x2fmCe', 'user'),
(2204, 'Marsudi Wacana', 'Jalan Jawa No. 7', 'sananwetan', '085369028917', '085369028917', '$2b$10$jJ6smEh6JXICeIq6k8TfAOWdE0jPqvs90JHSjvUoIQmPGIZwYOdG.', 'user'),
(2205, 'Caturangga Pratama', 'Jalan Jawa No. 17', 'sananwetan', '088106943530', '088106943530', '$2b$10$yBxMLptLlGNXHBCzabM28uqWuAA63YznBG.qaUN9LmdbWFRhTOwMG', 'user'),
(2206, 'Hendra Novitasari', 'Jalan Sumatera No. 76', 'sananwetan', '081246972201', '081246972201', '$2b$10$HDgCzh89uqrERPbdZGMtj.mn5F8Yr3qVdIGTVxs1lFiYKtpqp4xUS', 'user'),
(2207, 'Bahuwirya Putra', 'Jalan Sumatera No. 75', 'sananwetan', '081388354187', '081388354187', '$2b$10$P8VX3TJXCJD27YbYPydpuuksnJQudr5eZhyXKYaCeYVi.VX3N3nC6', 'user'),
(2208, 'Asirwada Melani', 'Jalan Sumatera No. 77', 'sananwetan', '085322630012', '085322630012', '$2b$10$wWYwovut.SgE8L15D6Qz0upCApcKRomPUw96RcvDYRs.SRnnqgOSa', 'user'),
(2209, 'Kamila Marbun', 'Jalan Sumatera No. 78', 'sananwetan', '081346601036', '081346601036', '$2b$10$CtiMYpLpBqlQ86IBLHmU9uGtm9aE89bq9CaGT7yQdkXTm9JM.xnHq', 'user'),
(2210, 'Kayun Kusumo', 'Jalan Sumatera No. 89', 'sananwetan', '088100791898', '088100791898', '$2b$10$eU1lWYK/tQRJpkAg5zzH9OU2aEN.PQGiCmcTSYBQxsPhJGJQ.4H4m', 'user'),
(2211, 'Gara Siregar', 'Jalan Sumatera No. 91', 'sananwetan', '081206352039', '081206352039', '$2b$10$XKu5mLi1akq8KO7YUBplme1hac14SdqDpoboeecemX8GAJPt0yjs.', 'user'),
(2212, 'Shakila Sihombing', 'Jalan Sumatera No. 27', 'sananwetan', '081271025804', '081271025804', '$2b$10$ESfp7vyC49fnf/fx1/OiwODgEvvy1ASpDDHqqKCd16qVV9s4o7I06', 'user'),
(2213, 'Sidiq Wastuti', 'Jalan Sumatera No. 95', 'sananwetan', '087701522925', '087701522925', '$2b$10$L2DSQAI.wKtIifh65PuxvuO/HiTC4RqL9a.nilyUliVcw0yqPMvJ2', 'user'),
(2214, 'Danang Mahendra', 'Jalan Sumatera No. 82', 'sananwetan', '081291047719', '081291047719', '$2b$10$I1C.YizbOcSV7g.oAlEX0.a924T09VDFGrrT2iCmCc1VVCvMpzNU.', 'user'),
(2215, 'Limar Yulianti', 'Jalan Sumatera No. 99 Rt. 02 ', 'sananwetan', '088134465021', '088134465021', '$2b$10$7638OHtKLKkafOLBMnolB.6cMOnvLMUBJFx.6mnvjtL7zcW.0BY4S', 'user'),
(2216, 'Eka Kuswoyo', 'Jalan Sumatera No. 117', 'sananwetan', '082144368431', '082144368431', '$2b$10$.F7yFMmegCBNSJ/3SpHz6OU6e7hYv1TfvGFSACw9lfABbf7Jaf286', 'user'),
(2217, 'Digdaya Pradipta', 'Jalan Sumatera No. 119', 'sananwetan', '087783636837', '087783636837', '$2b$10$pOgsK4ZOakelsXnFkwgKpOhTNZltylA.if3/aRXaJVoyfaCTRHLZK', 'user'),
(2218, 'Asmadi Wulandari', 'Jalan Sumatera No. 125 Rt. 02', 'sananwetan', '082119061907', '082119061907', '$2b$10$BtR5WZNZaZklOPjzeM5ZR.kpwBvAPOeXxKFKzZbpoor9gTKXuUMHy', 'user'),
(2219, 'Hasna Mangunsong', 'Jalan Sumatera No. 133', 'sananwetan', '082145340116', '082145340116', '$2b$10$JDdS0DBLlmlkF8Ng6FXE/uZgVNOuBvKHCa3UVGpzuoCobGmJgIKQe', 'user'),
(2220, 'Jumadi Wasita', 'Jalan Mastrip No. 4', 'kepanjenkidul', '082150509376', '082150509376', '$2b$10$OBNFNduqy6ItcykRcgECYe3MG.94FNOuW3KZzZC6r/J9uMtRrKlIq', 'user'),
(2221, 'Galak Maryadi', 'Jalan Mastrip No. 108', 'kepanjenkidul', '085384318684', '085384318684', '$2b$10$MEkJefpMfrtD2OJzGGBZvOCGLHToTD7YrpJCRc9njMd2T6CeKVNpG', 'user'),
(2222, 'Halima Haryanto', 'Jalan Mastrip No. 5', 'kepanjenkidul', '085317084306', '085317084306', '$2b$10$m1t.9cF/jfdSqR7SdRUn5uHUqboXUJgz1BRtkX5x6SH1HBZbH/.u.', 'user'),
(2223, 'Yahya Uwais', 'Jalan Mastrip No. 14B', 'kepanjenkidul', '088185914218', '088185914218', '$2b$10$qVZ.LVGE.10fYnX2915s4efRA/fzoobj0zW3I0qgSMtBq3NHm1yJC', 'user'),
(2224, 'Farah Kuswoyo', 'Jalan Mastrip No. 12', 'kepanjenkidul', '081325728212', '081325728212', '$2b$10$lcYpUDLIKt8yGRtohS4FcO9kAqOqqHTPXP/Itciz/AJV6HcAURJTC', 'user'),
(2225, 'Zulfa Sirait', 'Jalan Mastrip No. 13', 'kepanjenkidul', '081237894371', '081237894371', '$2b$10$edXhgMvaAPC5O6/rufVEuO3j7AzVmaRXtKVZ0p/n.ZreJeaLAOyee', 'user'),
(2226, 'Vinsen Santoso', 'Jalan Mastrip No. 15', 'kepanjenkidul', '087707259681', '087707259681', '$2b$10$AlbLAy8Rrh2LL6FLjbOnqel6OXmdnjUs.v.knSAzTMJEqAUxZx/WO', 'user'),
(2227, 'Maria Permata', 'Jalan Mastrip No. 17', 'kepanjenkidul', '081368565136', '081368565136', '$2b$10$2/2c3c.LMerePnSrJrtc8uYyCKQOWlfiZ3957W/nd2LcpcYaHSBR6', 'user'),
(2228, 'Ismail Pradipta', 'Jalan Mastrip No. 22', 'kepanjenkidul', '081397880707', '081397880707', '$2b$10$9.SE0NuqHW1wrn2CqWXdEe/bCtkyax0Aj.Q9DUX4nd9Zl3TZ0E682', 'user'),
(2229, 'Omar Kuswandari', 'Jalan Mastrip No. 27', 'kepanjenkidul', '081296146655', '081296146655', '$2b$10$MFCEDKAFMBB61yG4GiTlzOs2Hsb.tSVodkbhPqn0pmOwqbu9GWWhy', 'user'),
(2230, 'Mulyanto Novitasari', 'Jalan Mastrip No. 40', 'kepanjenkidul', '087736680854', '087736680854', '$2b$10$jqY9keA3dAmFOhqVfmDNMOStm69E18Az7zSk0QsFAnxFeUV5fjvye', 'user'),
(2231, 'Mutia Sinaga', 'Jalan Mastrip No. 35', 'kepanjenkidul', '088114669320', '088114669320', '$2b$10$aZfVdWsO/yY8Za6Jn7ypJ.WDL6NT6bbLc3XlGK9f3U7tMx7Rzhis6', 'user'),
(2232, 'Putri Maryadi', 'Jalan Mastrip No. 41', 'kepanjenkidul', '082206987435', '082206987435', '$2b$10$0dpK1HyVYdo0fHHAohcgK.JyM.V/xxKiiDHhd3JYYEoKIk.dw0E.i', 'user'),
(2233, 'Betania Utama', 'Jalan Mastrip No. 45', 'kepanjenkidul', '088164772525', '088164772525', '$2b$10$3zzOBapqJc9xkOFoJ5f0FODxEKnGPyIeFVtGrSilLX.TQWgtiSW1G', 'user'),
(2234, 'Banara Hassanah', 'Jalan Mastrip No. 50', 'kepanjenkidul', '082281418064', '082281418064', '$2b$10$gjnBdqEu/zahzaWFhOjzPuL48YbdociUUE/VMqWTXOmJw3fQXw3HK', 'user'),
(2235, 'Ghaliyati Pratiwi', 'Jalan Mastrip No. 49', 'kepanjenkidul', '082296279490', '082296279490', '$2b$10$VSVeOXG1rBjTEN4tfo.WSenQ1UZ5a8eNx1MKO7XyzTviuETbffPQ2', 'user'),
(2236, 'Xanana Maryati', 'Jalan Mastrip No. 51', 'kepanjenkidul', '081235351588', '081235351588', '$2b$10$CQ.b8vNnogGsJ2loTUjhsOmOf3TdLJWDGGORgWbZJGkdl7trZwMiK', 'user'),
(2237, 'Ina Halim', 'Jalan Mastrip No. 66', 'kepanjenkidul', '081312990038', '081312990038', '$2b$10$sMcX/hkSFegVmnl84gie3uIqGiWvTgQIhY7hTPhv0qrQOjSneROvy', 'user'),
(2238, 'Dadi Haryanto', 'Jalan Mastrip No. 59', 'kepanjenkidul', '082221576987', '082221576987', '$2b$10$AHveCNwXxMko8k7SuJ/T3OZCROihh7amnNMFc.6imwXigfeYj0IAm', 'user'),
(2239, 'Genta Zulaika', 'Jalan Mastrip No. 81', 'kepanjenkidul', '082178283383', '082178283383', '$2b$10$fdyogudZJ/FFpfJJ7v5aIO1RR96nwtiaEuN58LEz.GYke2L81KsXW', 'user'),
(2240, 'Fathonah Yolanda', 'Jalan Timor Gg. II No. 35', 'sananwetan', '082250139080', '082250139080', '$2b$10$FLOTeOvwi9MG0SEGeMdD4.YQeQ9aqcxqERHi7ThPGn9s21gFmfqHG', 'user'),
(2241, 'Makara Lailasari', 'Jalan Timor Gg. II No. 43', 'sananwetan', '082168058289', '082168058289', '$2b$10$HNvb0L.yQAPY5giMxskAZOaFoDsGfAuc0EpKdK70wQE56PjYODSca', 'user'),
(2242, 'Daliono Anggraini', 'Jalan Timor Gg. II No. 05', 'sananwetan', '082189428567', '082189428567', '$2b$10$JAThLBbniWBErw1tJdqjd.g5gi46Xbsi7pgqDynBJLtVzU/F8egjC', 'user'),
(2243, 'Kawaca Rahmawati', 'Jalan Bawean No. 9', 'sananwetan', '085382740952', '085382740952', '$2b$10$t8YtUnd2WbOX8xuM1SKRpuMImqAUmMaNGu.W4QOE82Ow8JnUqPfVa', 'user'),
(2244, 'Dirja Utami', 'Jalan Bawean No. 11', 'sananwetan', '085388632982', '085388632982', '$2b$10$jwxSNiK4oFjIIc2/F68n.eVopR2cPzf821vzwAtHfK9Q3Bk/Lw7eC', 'user'),
(2245, 'Malika Maryadi', 'Jalan Beliton No. 36', 'sananwetan', '085254654854', '085254654854', '$2b$10$bx/mjx9WO5z1.dubZgSl/uP4bGVpQT2pOtzvP8yv4c4n4XgrM71ue', 'user'),
(2246, 'Bakiadi Siregar', 'Perumahan Bale Agung Jl. Beliton No. 2 ', 'sananwetan', '082162388564', '082162388564', '$2b$10$x5kN1v0euS9KzdncJ0Cb3eFzyJfVe.zjCsq/TnoM52Nmqh68CZ4jC', 'user'),
(2247, 'Luluh Pradana', 'Perumahan Bale Agung Jl. Beliton No. 7 ', 'sananwetan', '085387470760', '085387470760', '$2b$10$oY3elY2FlWspZOFx.VnlbOtmootGmf1UftaG8Vahhsho2mBH11Iva', 'user'),
(2248, 'Ajiono Siregar', 'Perumahan Bale Agung Jl. Beliton No. 5', 'sananwetan', '081348829925', '081348829925', '$2b$10$70rgAhb.HUZjPrW../1SNOExtovhn7u7GIhGCH.dNnke/tCN7xgGa', 'user'),
(2249, 'Emin Prastuti', 'Perumahan Bale Agung Jl. Beliton No. 3', 'sananwetan', '082247893579', '082247893579', '$2b$10$S4aiCh7Y.NAEqlAbvlG2nutVBQ/A9UkX.J5RpriXFeOdM53DQNRh2', 'user'),
(2250, 'Warsa Putra', 'Perumahan Bale Agung Jl. Beliton No. 9', 'sananwetan', '081232124426', '081232124426', '$2b$10$5uFZ/lxrxSXA2WZvp/DMhug4QD9DCUI28P1aX4Ru6agiARsy6GOgy', 'user'),
(2251, 'Jumari Sinaga', 'Perumahan Bale Agung Jl. Beliton No. 10', 'sananwetan', '085259091606', '085259091606', '$2b$10$LcdjsCSofVm31ukcDchw8../GGHqTaaJOF3Qot1iAPhAjV68H/c9m', 'user'),
(2252, 'Rahmi Kurniawan', 'Perumahan Bale Agung Jl. Beliton No. 12', 'sananwetan', '088166096242', '088166096242', '$2b$10$X/qJyNAD22/d/vD6axVMX.6oN9raDBIYm8RDCS/chATfYEUo3sl7u', 'user'),
(2253, 'Kani Jailani', 'Jalan Beliton No. 61', 'sananwetan', '087735822135', '087735822135', '$2b$10$2Wtb1CQlnBW1BOccQYhU9.untxHvqTAaWIsucrRy/EzkqmshVRkH.', 'user'),
(2254, 'Mahfud Wijayanti', 'Jalan Beliton No. 42', 'sananwetan', '085281153172', '085281153172', '$2b$10$OM6W/BnCBBGCcBa2/ZLK.OiyB9yw/jaURCf1OWDwYoTcCcIVxibV2', 'user'),
(2255, 'Utama Laksita', 'Jalan Beliton No. 49', 'sananwetan', '087718948962', '087718948962', '$2b$10$RvJhdYHetXsT/QWd6Ut9gur48AQD.DN2vxcBjG3VHLrXBu02zHjQa', 'user'),
(2256, 'Jarwadi Padmasari', 'Jalan Beliton No. 30 Rt.03 Rw.02', 'sananwetan', '082236111271', '082236111271', '$2b$10$BSfIuJklGtcmW05NwLgab.3DY4KT99Pk5dnMez3.weYME3hOTl462', 'user'),
(2257, 'Rafi Siregar', 'Jalan Beliton No. 18', 'sananwetan', '081244215757', '081244215757', '$2b$10$BECvPipXwC30tca5P6WFfOCDGceJL2SIOWYQyG3WScv82Xt0WsvmC', 'user'),
(2258, 'Cinthia Wahyuni', 'Jalan Beliton No. 16', 'sananwetan', '081387361940', '081387361940', '$2b$10$l0pAtqHPqVZeCFfD3ER6Y.dn75D7/e1LITa6mvrt/BRGsSTt/ckHC', 'user'),
(2259, 'Naradi Situmorang', 'Jalan Beliton No. 17', 'sananwetan', '088116255461', '088116255461', '$2b$10$NJ6fZb7yH1MewPzYeZA0TOl3m.z/XljzyUszDV3bPTkfaHsb1N7s6', 'user'),
(2260, 'Vicky Maryati', 'Jalan Beliton No. 15', 'sananwetan', '082299097372', '082299097372', '$2b$10$QE2L6OwOvdexs6.kSEpRuucKgkJx7eZ/38OtbV9CofhTFrN64doKi', 'user'),
(2261, 'Lidya Namaga', 'Jalan Lawu No.3', 'kauman', '082206062647', '082206062647', '$2b$10$H8Rio9WGrGRpnnA/ovCDmuPQGX5HPHzYqmvGVJX0uYlHGkTnw6JoS', 'user'),
(2262, 'Vicky Pradana', 'Jalan Lawu No.9', 'kauman', '087783993652', '087783993652', '$2b$10$xegmO3FHVOAf0cWmeG5Dcu2lAuSmUgLoTt94klG73d0enNUNu.EkG', 'user');
INSERT INTO `user` (`id`, `username`, `alamat`, `wilayah`, `tlp`, `ewallet`, `password`, `role`) VALUES
(2263, 'Rahayu Yulianti', 'Jalan Lawu No.5', 'kauman', '085263853496', '085263853496', '$2b$10$50BkyR9swVPeIgDgU1y0wuABJ9TBmSX7H8AVCFauU2NxdWgYwIVwW', 'user'),
(2264, 'Ajiman Zulkarnain', 'Jalan Lawu No.17', 'kauman', '082155677109', '082155677109', '$2b$10$2SltLjG3MmhckFlIyBNMr.wgzO5D/iKksAY9i2bQLp6OSroWpc7PG', 'user'),
(2265, 'Darijan Hartati', 'Jalan Lawu No.10', 'kauman', '085287374815', '085287374815', '$2b$10$arNlE9zb.M.ldf0GOJCrIulPrKg7wozLfdAvHhkUewOe2TpVwbvRO', 'user'),
(2266, 'Karsana Ardianto', 'Jalan Lawu No.12', 'kauman', '088187024849', '088187024849', '$2b$10$E9YO3mcIjb3DBWd1l4eH3.acrx8ykBlb650vyqmoFFsRorsL3q8PK', 'user'),
(2267, 'Vanya Latupono', 'Jalan Lawu No.5', 'kauman', '081335676649', '081335676649', '$2b$10$YhpxSqbLlGHwePihJsGqOuk54OyUbp.GsCISLUjXujXoqsk6x5zoi', 'user'),
(2268, 'Dasa Nababan', 'Jalan Lawu No.29', 'kauman', '085220331641', '085220331641', '$2b$10$YS5R/U/UUDddANSVC1ZqdeUlqHOhqsOeurLkqUB2WcMJR9AbWc40a', 'user'),
(2269, 'Danang Wahyudin', 'Jalan Lawu No.31', 'kauman', '081368726626', '081368726626', '$2b$10$HKJVeU3SCMGqyAojAVxG3eYxKgoc8RRMMhne5R7QlqfNYn2N4f1TG', 'user'),
(2270, 'Kiandra Mustofa', 'Jalan Lawu No.35', 'kauman', '087772531059', '087772531059', '$2b$10$nWc0dFqeMLdMsOxfQZhkzOCblWsNg.OfyHI6F5p4l2UeBT2XHKrqW', 'user'),
(2271, 'Bahuwarna Firmansyah', 'Jalan Lawu No.24', 'kauman', '085296724589', '085296724589', '$2b$10$8xHpv1KCrbbsmrHI7m7wN.EGSxF02wdosgm83djc/UOe2.6jyQdgy', 'user'),
(2272, 'Ratna Narpati', 'Jalan Lawu No.35 E', 'kauman', '081218422485', '081218422485', '$2b$10$dgIz3/Lzv8axBdq7aMJXiOprROtA9GqgOm0hHUccS3X9JudGnQRZi', 'user'),
(2273, 'Maimunah Marpaung', 'Jalan Lawu No.35 C', 'kauman', '087724329608', '087724329608', '$2b$10$sBVvzUBfFFqiPLVXZBNkB.6N3TohHTgx3btUv7aIx6nyYqKYrGJRO', 'user'),
(2274, 'Fitria Nababan', 'Jalan Lawu No.35 B', 'kauman', '082154531588', '082154531588', '$2b$10$Oz93AE6.ZhXyJCPRsJo3KuaiIP4lBw2T4SA4o7eK.C3hsiPZ5mGDK', 'user'),
(2275, 'Almira Pradana', 'Jalan Lawu No.34', 'kauman', '087774948883', '087774948883', '$2b$10$u.ltbCZlWl1C7qPYDf0ksOmWXG6JY8lGQOvwlwijab6VxoJReJ1lu', 'user'),
(2276, 'Maryanto Habibi', 'Jalan Lawu No.39', 'kauman', '085318793665', '085318793665', '$2b$10$238joNvUcjLukBrPAB.UgeUVQHDB2ncnB.H63Oj4yCKGJT8bYy8sO', 'user'),
(2277, 'Kayla Suryatmi', 'Jalan Lawu No.48', 'kauman', '082107521175', '082107521175', '$2b$10$VWXj8TNudv/4hdTTzW73teMtjpiga5UqYvSSn2KFfkSMbS5yXvP/u', 'user'),
(2278, 'Hamzah Yulianti', 'Jalan Lawu No.45', 'kauman', '085374678829', '085374678829', '$2b$10$MEyZLmVuOuyU1NxNHWbHJOXLpiQr0WoSidtBAMFwuZ/rieVmaZe.q', 'user'),
(2279, 'Ghaliyati Simanjuntak', 'Jalan Tidar No. 4', 'kauman', '082279424213', '082279424213', '$2b$10$.qWg0cIvNq9fVLKODCrubO2kVEpEWkxbPjurCO7ZhNUZrGqFxSFX.', 'user'),
(2280, 'Betania Hassanah', 'Jalan Tidar No. 12', 'kauman', '081310364042', '081310364042', '$2b$10$Ld.zHE28.ut5CBSrhvILcOr9yqxXhCFfadWZskIGi9d2NTa.Tb0MO', 'user'),
(2281, 'Cawisono Hutagalung', 'Jalan Tidar No. 9', 'kauman', '085238718229', '085238718229', '$2b$10$eVwdnNBlLafUSAWL6TnfmegbA4YhL8Tbk3weGmCe1aj4RfEAtTxwm', 'user'),
(2282, 'Anom Suryono', 'Jalan Tidar No. 20', 'kauman', '085378268783', '085378268783', '$2b$10$1B/51AlP1gQnaU3mqdljQO6VFcmJLnDGHk5hErXzz5sp5RCEf48dG', 'user'),
(2283, 'Carla Maryati', 'Jalan Tidar No. 21', 'kauman', '087735535035', '087735535035', '$2b$10$usSuhPHllLxqTiv7unqJ6eHns7DqgKUs9XaScvqg4O19hUsPlWWTu', 'user'),
(2284, 'Lulut Yolanda', 'Jalan Tidar No. 117', 'kauman', '088169170449', '088169170449', '$2b$10$XtMbK4awHctPOum6mFxXBe45T0a08IiRlLxe.DfVQAglBBppjfmqC', 'user'),
(2285, 'Irwan Hastuti', 'Jalan Tidar No. 25', 'kauman', '082241682693', '082241682693', '$2b$10$T4EUK88BWMeHp3IJzmZLe.5zI/CFOeoLuEqnVORY6lE8XS13JvQqu', 'user'),
(2286, 'Arsipatra Ardianto', 'Jalan Tidar No. 56 Rt. 04 Rw. 04', 'kauman', '088103066080', '088103066080', '$2b$10$dkdWkvcG1W7zYoSRGLnDTOzWGjCpbdIbyYaj5q6ep0b6f3rhyUWt.', 'user'),
(2287, 'Karna Maulana', 'Jalan Tidar No. 14', 'kauman', '085245782684', '085245782684', '$2b$10$FLM.5Up9/grI3kaGV3fCLODQhkC9UaJE/zr.9ghhgXM7FMyC97Go6', 'user'),
(2288, 'Kamidin Susanti', 'Jalan Semeru No. 81', 'kauman', '088116675696', '088116675696', '$2b$10$qt1PtWZrTbMFAbUza6c8WevB7RuWbo/9O.DAQKuTk1.slMKKN9.iC', 'user'),
(2289, 'Maras Utami', 'Jalan Semeru No. 95', 'kauman', '085265742797', '085265742797', '$2b$10$9o2r5TpTGeUmDKuLZhTF9es5xhVqyJfXj5C3ZGN/YdeorUZDwXs6u', 'user'),
(2290, 'Jumari Natsir', 'Jalan Semeru No. 98', 'kauman', '088175363484', '088175363484', '$2b$10$V7iflzXHLVwTEcddaH/jx.QW.MyY.a2bzgkB2UzmADRWuFrwc/xOS', 'user'),
(2291, 'Prima Suryatmi', 'Jalan Semeru No. 100', 'kauman', '081385182029', '081385182029', '$2b$10$xVkhNgX1eK.X4G1TH3M.W.5/AETKiUPyvqsfVhDQwXe9Z7dywpEXi', 'user'),
(2292, 'Qori Lestari', 'Jalan Semeru No. 101', 'kauman', '082111264885', '082111264885', '$2b$10$dd711Zo/bzc12/RVyMzTQ.3zfLgFl2kiVl0fsvKTuV1LCVyQheyJ.', 'user'),
(2293, 'Jati Narpati', 'Jalan Semeru No. 103', 'kauman', '088138527987', '088138527987', '$2b$10$cOrAeBwhL7Axi20ZA7wtuODPpZIz14Wt37ZX4J1GO68.OjnEzkhjC', 'user'),
(2294, 'Bakijan Pratiwi', 'Jalan Semeru No. 110', 'kauman', '088115651342', '088115651342', '$2b$10$SftPrOj.ZpSD/EiFQJAue.Mm4ANFrD.c4i7hwYSS.ntVP8ZczwTea', 'user'),
(2295, 'Ajimin Ramadan', 'Jalan Semeru No. 107', 'kauman', '082214050245', '082214050245', '$2b$10$p6OCnCe534y4xdTFBC/j2O/Mhtc9VJfDAMbVt3z7igVTc8LzTS.fm', 'user'),
(2296, 'Luthfi Riyanti', 'Jalan Semeru No. 113', 'kauman', '082281539684', '082281539684', '$2b$10$nr9.d.rTJzUe/Ls68/P86e.6dbM/GN6T7Yna9YP/9DgNPE0li2mfO', 'user'),
(2297, 'Qori Suryono', 'Jalan Semeru No. 122', 'kauman', '085361208276', '085361208276', '$2b$10$faoeBTSoKEky4KfES1OwD.0ymIMGXS8WMQZKrMLnAKAbOtCg.C0Ye', 'user'),
(2298, 'Kardi Susanti', 'Jalan Semeru No. 86', 'kauman', '087792302866', '087792302866', '$2b$10$cv4/p0F3G8VuSoszC02PkOp5rvB4/VH.OWWkpFhJk2oS6q7ZVSOOi', 'user'),
(2299, 'Saadat Saptono', 'Jalan Semeru No. 128', 'kauman', '081362625902', '081362625902', '$2b$10$TFmuEzLbRV5c5Q7.kyJN6uZH0sopelabZJuUcHxgOr2fPJJ.BkYBO', 'user'),
(2300, 'Cahyo Oktaviani', 'Jalan Semeru No. 132', 'kauman', '082212723038', '082212723038', '$2b$10$N11GVEdv32E9jkWKKxLDwuPvCVjvnILVIb27xloJvqrFvb0kVHKEm', 'user'),
(2301, 'Jono Maryati', 'Jalan Semeru No. 129', 'kauman', '085277508984', '085277508984', '$2b$10$GBeAqe03iCQmZJj37nigP.75a50i5FPzS1o7gJWRGfdL1GKyFEPLW', 'user'),
(2302, 'Joko Prasetya', 'Jalan Semeru No. 131', 'kauman', '082128321775', '082128321775', '$2b$10$LhZvsXxTSWwJDFquqIYpOulfhzd0bK.67qtzzGo6oXzcsZlVLF2Gi', 'user'),
(2303, 'Hani Budiman', 'Jalan Semeru No. 135', 'kauman', '081386866229', '081386866229', '$2b$10$9yPNuzotED5UcApcl/Yxu.dJAL0jiuG8C2VQ012LJyRQfeNdFOOPK', 'user'),
(2304, 'Bagas Ardianto', 'Jalan Musi No. 1', 'kauman', '082102379246', '082102379246', '$2b$10$CbC5hTMbW8RbIwF7kOjpzeEgdQHampdcGO9ZcTvzOHm9FkpDltysK', 'user'),
(2305, 'Heryanto Rahimah', 'Jalan Musi No. 3', 'kauman', '082194268278', '082194268278', '$2b$10$Dfq.g2LKUiEOokCt63jjBuAF8BpoCJGsjn9ZWlAFFqNIlwlNp3K.q', 'user'),
(2306, 'Dadap Narpati', 'Jalan Musi No. 7', 'kauman', '081216777250', '081216777250', '$2b$10$9L2Y4XD2/kftms01SIFOoeAyYgkxgMu7kERba7s1sqcHvQW28sgEO', 'user'),
(2307, 'Nasrullah Suryatmi', 'Jalan Musi No. 9', 'kauman', '082204723100', '082204723100', '$2b$10$zjLAp7UYR6qISw9EiBSjfe2YYZpYM7hOH5zVyQEKdwwb6UAJqvsDi', 'user'),
(2308, 'Agnes Maryadi', 'Jalan Musi No. 8', 'kauman', '088173047460', '088173047460', '$2b$10$hqFrUdNnQs/vc.dK.AdIoO9MHcB9n.cl4ZLqRieF6g/dheUKrT8yq', 'user'),
(2309, 'Erik Winarsih', 'Jalan Musi No. 21', 'kauman', '085362683700', '085362683700', '$2b$10$8fq81UqmRB6L1EjMmBoYEexByoS0QKISaWM31cRtQJ/OlHPLiv82y', 'user'),
(2310, 'Sari Santoso', 'Jalan Musi No. 2, Rt. 02, Rw.07', 'kauman', '082141594157', '082141594157', '$2b$10$chRIl34WL77DlEIMYsQT4ekU8ozNEm6QTLrZYWWDDyDwFd.noQsYq', 'user'),
(2311, 'Darmana Mandasari', 'Jalan Kalilahar No.2, Rt.2, Rw.7', 'kauman', '082139301292', '082139301292', '$2b$10$0wPqJyWxcZVuqvsI3kOez.5oAyy9wX4kpKKeQqPX0TyTkau4wbSAu', 'user'),
(2312, 'Putu Mandasari', 'Jalan Kalilahar No.5', 'kauman', '085326623430', '085326623430', '$2b$10$vSrtzzQB.GKzPjpgR1njBe67k/RALSgYfdmt/Ot7xkIbZbejX6U/S', 'user'),
(2313, 'Maryadi Sirait', 'Jalan Kalilahar No.7', 'kauman', '085242703110', '085242703110', '$2b$10$IGZCKX7wj8nwIjAOyRTraes1Dpcp4dO.fB4DRhzuExYqOT3Lbrx1W', 'user'),
(2314, 'Luhung Lestari', 'Jalan Sungai Hulu Timur No.1', 'kauman', '088172688333', '088172688333', '$2b$10$ZBS116jud30m/gzORq9rrOuSbGLvflyI1E9SuJOE5F87fkxFuGJJS', 'user'),
(2315, 'Elisa Budiyanto', 'Jalan Sungai Hulu Timur No.7', 'kauman', '085311468404', '085311468404', '$2b$10$Nh5pG7jGVUzoA5FIjDYkG.EjkZAxBk8PWmGAMi51/lQ4jompSRA5q', 'user'),
(2316, 'Raditya Kuswandari', 'Jalan Sungai Hulu Timur No.30', 'kauman', '081335965854', '081335965854', '$2b$10$cUJNcItW6Wq5LHvRmnBineTjb9Jhr5WSLrGebRVJlvEyjkKnMBErO', 'user'),
(2317, 'Keisha Yolanda', 'Jalan Sungai Hulu Timur No.11', 'kauman', '085745219063', '085745219063', '$2b$10$RIUCWprpzmL9FOWFoa1vxOJKuJbkcGclbED.TCTx07dKpAwU7ZVfO', 'user'),
(2318, 'Raihan Hakim', 'Jalan Sungai Hulu Timur No.15', 'kauman', '085762454604', '085762454604', '$2b$10$Nz2qFhFYb4FNBG7o5yy1juzmPyNhRbTcSVbuXLjHuJEYKCSrj1HxC', 'user'),
(2319, 'Lanang Pertiwi', 'Jalan Sungai Hulu Timur No. 9', 'kauman', '085708321281', '085708321281', '$2b$10$KzywCtLL/vvKQinqRVXz5.texGCD0/jgveLDOEY0D0DnTEAMBx/66', 'user'),
(2320, 'Ajimat Suartini', 'Jalan Sungai Hulu Timur No. 5', 'kauman', '085850638940', '085850638940', '$2b$10$LC3OeYDe4oBKbLcavEz88eJQECxMtQk8.VzhO7wnrIpxTND0wJmhC', 'user'),
(2321, 'Heru Siregar', 'Jalan Barito No. 57', 'kauman', '085156120829', '085156120829', '$2b$10$P4/NJgZxbDCHC/C8bbtf6e2fqVqyGI4KWDr0I2i7xal7X4gXpKOgO', 'user'),
(2322, 'Jayeng Suryono', 'Jalan Barito No. 55', 'kauman', '085646333355', '085646333355', '$2b$10$xmLavR2FcxQz7XoxKnxSAeTnij0MdzGPeatW.FACzroK0od9ozTE6', 'user'),
(2323, 'Panca Wasita', 'Jalan Barito No. 44', 'kauman', '087759040531', '087759040531', '$2b$10$4lupfOahS89xDpYy7uQ7p.94bvE3SOGNE7Yb9BXxLB005YnGhdYhW', 'user'),
(2324, 'Budi Kurniawan', 'Jalan Barito No. 51', 'kauman', '082139722984', '082139722984', '$2b$10$4ZRtgL3KxBpqYZqrKZzQrO2C5odpuHMWgyH7tKUKxvUvzSSq1H13G', 'user'),
(2325, 'Vivi Usamah', 'Jalan Barito No. 42', 'kauman', '082257584639', '082257584639', '$2b$10$2U8s4xNNly5x3Lo79kPN2OpV6I3FittOa5zxxCGMqCZBdFHqWl2kK', 'user'),
(2326, 'Amalia Nainggolan', 'Jalan Barito No. 38', 'kauman', '081235494442', '081235494442', '$2b$10$dRLRre9RZWAZmOYl6oWkVu3Zldzx26puFs6Nuz7j08ypWPs9LMSIi', 'user'),
(2327, 'Ikhsan Kuswandari', 'Jalan Barito No. 34', 'kauman', '081358802837', '081358802837', '$2b$10$ytiNhFIkeJIH3Y7uMF0gNu.xHAfZHibkTBzQ2ICbptBQ6VgpL0YF.', 'user');

-- --------------------------------------------------------

--
-- Struktur dari tabel `_prisma_migrations`
--

CREATE TABLE `_prisma_migrations` (
  `id` varchar(36) NOT NULL,
  `checksum` varchar(64) NOT NULL,
  `finished_at` datetime(3) DEFAULT NULL,
  `migration_name` varchar(255) NOT NULL,
  `logs` text DEFAULT NULL,
  `rolled_back_at` datetime(3) DEFAULT NULL,
  `started_at` datetime(3) NOT NULL DEFAULT current_timestamp(3),
  `applied_steps_count` int(10) UNSIGNED NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `_prisma_migrations`
--

INSERT INTO `_prisma_migrations` (`id`, `checksum`, `finished_at`, `migration_name`, `logs`, `rolled_back_at`, `started_at`, `applied_steps_count`) VALUES
('344637dd-afcc-4b31-b4be-2ea0c0317730', '68a6f581cf4b31390c0e06bb768af9167f1f866b03ad654eb34c8f687f208172', '2025-05-21 11:42:56.538', '20250521114256_init', NULL, NULL, '2025-05-21 11:42:56.288', 1);

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `coinexchange`
--
ALTER TABLE `coinexchange`
  ADD PRIMARY KEY (`id`),
  ADD KEY `CoinExchange_userId_fkey` (`userId`);

--
-- Indeks untuk tabel `cointransaction`
--
ALTER TABLE `cointransaction`
  ADD PRIMARY KEY (`id`),
  ADD KEY `CoinTransaction_userId_fkey` (`userId`);

--
-- Indeks untuk tabel `complaint`
--
ALTER TABLE `complaint`
  ADD PRIMARY KEY (`id`),
  ADD KEY `Complaint_userId_fkey` (`userId`);

--
-- Indeks untuk tabel `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `User_tlp_key` (`tlp`),
  ADD UNIQUE KEY `User_ewallet_key` (`ewallet`);

--
-- Indeks untuk tabel `_prisma_migrations`
--
ALTER TABLE `_prisma_migrations`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `coinexchange`
--
ALTER TABLE `coinexchange`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT untuk tabel `cointransaction`
--
ALTER TABLE `cointransaction`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `complaint`
--
ALTER TABLE `complaint`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `user`
--
ALTER TABLE `user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2328;

--
-- Ketidakleluasaan untuk tabel pelimpahan (Dumped Tables)
--

--
-- Ketidakleluasaan untuk tabel `coinexchange`
--
ALTER TABLE `coinexchange`
  ADD CONSTRAINT `CoinExchange_userId_fkey` FOREIGN KEY (`userId`) REFERENCES `user` (`id`) ON UPDATE CASCADE;

--
-- Ketidakleluasaan untuk tabel `cointransaction`
--
ALTER TABLE `cointransaction`
  ADD CONSTRAINT `CoinTransaction_userId_fkey` FOREIGN KEY (`userId`) REFERENCES `user` (`id`) ON UPDATE CASCADE;

--
-- Ketidakleluasaan untuk tabel `complaint`
--
ALTER TABLE `complaint`
  ADD CONSTRAINT `Complaint_userId_fkey` FOREIGN KEY (`userId`) REFERENCES `user` (`id`) ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
