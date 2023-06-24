-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Waktu pembuatan: 24 Jun 2023 pada 09.25
-- Versi server: 5.7.33
-- Versi PHP: 7.4.19

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `sidata`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `tb_ayah`
--

CREATE TABLE `tb_ayah` (
  `id_ayah` int(11) NOT NULL,
  `id_siswa` varchar(15) NOT NULL,
  `nama` varchar(30) NOT NULL,
  `ttl` date NOT NULL,
  `agama` varchar(15) NOT NULL,
  `pend_terakhir` varchar(6) NOT NULL,
  `pekerjaan` varchar(25) NOT NULL,
  `penghasilan` int(12) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `tb_ayah`
--

INSERT INTO `tb_ayah` (`id_ayah`, `id_siswa`, `nama`, `ttl`, `agama`, `pend_terakhir`, `pekerjaan`, `penghasilan`) VALUES
(27, '1234', 'q', '2023-06-10', 'Protestan', 'q', 'q', 2),
(28, '123', '123', '2023-06-16', 'Islam', '123', '123', 123),
(29, '222', '1', '2023-06-17', 'Protestan', '11', '11', 1111),
(30, '11', '11', '2023-06-10', 'Islam', '111', '111', 111);

-- --------------------------------------------------------

--
-- Struktur dari tabel `tb_datakelas`
--

CREATE TABLE `tb_datakelas` (
  `id` int(6) NOT NULL,
  `id_kelas` int(6) NOT NULL,
  `id_siswa` varchar(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `tb_datakelas`
--

INSERT INTO `tb_datakelas` (`id`, `id_kelas`, `id_siswa`) VALUES
(28, 7, '1234'),
(29, 7, '123'),
(30, 9, '11'),
(31, 9, '222');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tb_ibu`
--

CREATE TABLE `tb_ibu` (
  `id_ibu` int(11) NOT NULL,
  `id_siswa` varchar(15) NOT NULL,
  `nama` varchar(30) NOT NULL,
  `ttl` date NOT NULL,
  `agama` varchar(15) NOT NULL,
  `pend_terakhir` varchar(6) NOT NULL,
  `pekerjaan` varchar(25) NOT NULL,
  `penghasilan` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `tb_ibu`
--

INSERT INTO `tb_ibu` (`id_ibu`, `id_siswa`, `nama`, `ttl`, `agama`, `pend_terakhir`, `pekerjaan`, `penghasilan`) VALUES
(25, '1234', '1', '2023-06-10', 'Islam', 'q', 'q', 1),
(26, '123', '123', '2023-06-24', 'Katolik', '132', '13', 13),
(27, '222', '11', '2023-06-24', 'Islam', '11111', '111111111', 1111111111),
(28, '11', '111', '2023-06-03', 'Islam', '111', '', 0);

-- --------------------------------------------------------

--
-- Struktur dari tabel `tb_kelas`
--

CREATE TABLE `tb_kelas` (
  `id_kelas` int(6) NOT NULL,
  `id_walikelas` int(11) NOT NULL,
  `nama_kelas` varchar(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `tb_kelas`
--

INSERT INTO `tb_kelas` (`id_kelas`, `id_walikelas`, `nama_kelas`) VALUES
(7, 3, 'aa'),
(9, 4, 'a2');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tb_siswa`
--

CREATE TABLE `tb_siswa` (
  `id_siswa` varchar(15) NOT NULL,
  `nama` varchar(30) NOT NULL,
  `nem` float NOT NULL,
  `jk` varchar(15) NOT NULL,
  `ttl` date NOT NULL,
  `agama` varchar(15) NOT NULL,
  `bb` int(3) NOT NULL,
  `tb` int(3) NOT NULL,
  `alamat` text NOT NULL,
  `tinggal` varchar(30) NOT NULL,
  `jarak` int(2) NOT NULL,
  `telepon` varchar(14) NOT NULL,
  `email` varchar(30) NOT NULL,
  `pkh` varchar(100) DEFAULT NULL,
  `kks` varchar(100) DEFAULT NULL,
  `kip` varchar(100) DEFAULT NULL,
  `password` varchar(50) NOT NULL,
  `stkelas` varchar(12) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `tb_siswa`
--

INSERT INTO `tb_siswa` (`id_siswa`, `nama`, `nem`, `jk`, `ttl`, `agama`, `bb`, `tb`, `alamat`, `tinggal`, `jarak`, `telepon`, `email`, `pkh`, `kks`, `kip`, `password`, `stkelas`) VALUES
('11', 'brucel duta samudera', 1, 'Perempuan', '2023-06-10', 'Islam', 111, 111, '  gunung para  ', '1', 11, '', '', '111222', '111122', '111112', '123', 'Y'),
('123', 'brucel duta samudera', 123, 'Perempuan', '2023-06-22', 'Islam', 123, 123, 'gunung para', '13', 13, '088261025473', 'bruceldutasamudra@gmail.com', NULL, NULL, NULL, '', 'Y'),
('1234', 'fajar Rivaldi Chan', 1234, 'Perempuan', '2023-06-24', 'Islam', 111, 111, 'Medan Labuhan', 'q', 1, '0895611024559', 'bruceldutasamudra@gmail.com', NULL, NULL, NULL, '', 'Y'),
('222', 'brucel duta samudera', 123, 'Perempuan', '2023-06-17', 'Protestan', 111, 111, '    gunung para    ', '1', 11, '', '', NULL, NULL, NULL, '12345', 'Y');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tb_wali`
--

CREATE TABLE `tb_wali` (
  `id_wali` int(11) NOT NULL,
  `id_siswa` varchar(15) NOT NULL,
  `nama` varchar(30) NOT NULL,
  `ttl` date NOT NULL,
  `agama` varchar(15) NOT NULL,
  `pend_terakhir` varchar(6) NOT NULL,
  `pekerjaan` varchar(25) NOT NULL,
  `penghasilan` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Struktur dari tabel `tb_walikelas`
--

CREATE TABLE `tb_walikelas` (
  `id_walikelas` int(11) NOT NULL,
  `nama` varchar(50) NOT NULL,
  `nip` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `tb_walikelas`
--

INSERT INTO `tb_walikelas` (`id_walikelas`, `nama`, `nip`, `password`) VALUES
(3, 'Fajar Rivaldi Chan', '112345678911122', 'admin'),
(4, 'Sukma', '112345678911121', 'admin');

-- --------------------------------------------------------

--
-- Struktur dari tabel `user`
--

CREATE TABLE `user` (
  `id_user` int(5) NOT NULL,
  `username` varchar(20) NOT NULL,
  `password` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `user`
--

INSERT INTO `user` (`id_user`, `username`, `password`) VALUES
(1, 'admin', 'admin'),
(2, 'adminaa', '12345678');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `tb_ayah`
--
ALTER TABLE `tb_ayah`
  ADD PRIMARY KEY (`id_ayah`) USING BTREE,
  ADD KEY `id_siswa` (`id_siswa`);

--
-- Indeks untuk tabel `tb_datakelas`
--
ALTER TABLE `tb_datakelas`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_kelas` (`id_kelas`),
  ADD KEY `id_siswa` (`id_siswa`);

--
-- Indeks untuk tabel `tb_ibu`
--
ALTER TABLE `tb_ibu`
  ADD PRIMARY KEY (`id_ibu`) USING BTREE,
  ADD KEY `id_siswa` (`id_siswa`);

--
-- Indeks untuk tabel `tb_kelas`
--
ALTER TABLE `tb_kelas`
  ADD PRIMARY KEY (`id_kelas`);

--
-- Indeks untuk tabel `tb_siswa`
--
ALTER TABLE `tb_siswa`
  ADD PRIMARY KEY (`id_siswa`);

--
-- Indeks untuk tabel `tb_wali`
--
ALTER TABLE `tb_wali`
  ADD PRIMARY KEY (`id_wali`) USING BTREE,
  ADD KEY `id_siswa` (`id_siswa`);

--
-- Indeks untuk tabel `tb_walikelas`
--
ALTER TABLE `tb_walikelas`
  ADD PRIMARY KEY (`id_walikelas`);

--
-- Indeks untuk tabel `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id_user`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `tb_ayah`
--
ALTER TABLE `tb_ayah`
  MODIFY `id_ayah` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT untuk tabel `tb_datakelas`
--
ALTER TABLE `tb_datakelas`
  MODIFY `id` int(6) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=32;

--
-- AUTO_INCREMENT untuk tabel `tb_ibu`
--
ALTER TABLE `tb_ibu`
  MODIFY `id_ibu` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;

--
-- AUTO_INCREMENT untuk tabel `tb_kelas`
--
ALTER TABLE `tb_kelas`
  MODIFY `id_kelas` int(6) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT untuk tabel `tb_wali`
--
ALTER TABLE `tb_wali`
  MODIFY `id_wali` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `tb_walikelas`
--
ALTER TABLE `tb_walikelas`
  MODIFY `id_walikelas` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT untuk tabel `user`
--
ALTER TABLE `user`
  MODIFY `id_user` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- Ketidakleluasaan untuk tabel pelimpahan (Dumped Tables)
--

--
-- Ketidakleluasaan untuk tabel `tb_ayah`
--
ALTER TABLE `tb_ayah`
  ADD CONSTRAINT `tb_ayah_ibfk_1` FOREIGN KEY (`id_siswa`) REFERENCES `tb_siswa` (`id_siswa`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Ketidakleluasaan untuk tabel `tb_datakelas`
--
ALTER TABLE `tb_datakelas`
  ADD CONSTRAINT `tb_datakelas_ibfk_1` FOREIGN KEY (`id_kelas`) REFERENCES `tb_kelas` (`id_kelas`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `tb_datakelas_ibfk_2` FOREIGN KEY (`id_siswa`) REFERENCES `tb_siswa` (`id_siswa`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Ketidakleluasaan untuk tabel `tb_ibu`
--
ALTER TABLE `tb_ibu`
  ADD CONSTRAINT `tb_ibu_ibfk_1` FOREIGN KEY (`id_siswa`) REFERENCES `tb_siswa` (`id_siswa`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Ketidakleluasaan untuk tabel `tb_wali`
--
ALTER TABLE `tb_wali`
  ADD CONSTRAINT `tb_wali_ibfk_1` FOREIGN KEY (`id_siswa`) REFERENCES `tb_siswa` (`id_siswa`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
