-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Apr 18, 2018 at 10:55 AM
-- Server version: 10.1.8-MariaDB
-- PHP Version: 5.6.14

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `si_fs`
--

-- --------------------------------------------------------

--
-- Table structure for table `absensi`
--

CREATE TABLE `absensi` (
  `ID_EVENT` char(10) NOT NULL,
  `_ID_JEMAAT` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `cg`
--

CREATE TABLE `cg` (
  `ID_CG` int(11) NOT NULL,
  `NAMA_CG` varchar(0) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `cgm`
--

CREATE TABLE `cgm` (
  `_ID_JEMAAT` int(11) DEFAULT NULL,
  `ID_CG` int(11) DEFAULT NULL,
  `ID_MEMBER` int(11) NOT NULL,
  `ROLE` char(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `event`
--

CREATE TABLE `event` (
  `ID_EVENT` char(10) NOT NULL,
  `NAMA_EVENT` varchar(20) NOT NULL,
  `TGL_EVENT` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `ibadah`
--

CREATE TABLE `ibadah` (
  `ID_IBADAH` int(11) NOT NULL,
  `WT_ID_TEAM` int(11) DEFAULT NULL,
  `UT_ID_TEAM` int(11) DEFAULT NULL,
  `MUL_ID_TEAM` int(11) DEFAULT NULL,
  `TEMA_IBADAH` varchar(30) DEFAULT NULL,
  `PEMBICARA` varchar(20) DEFAULT NULL,
  `TGL_IBADAH` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `jemaat`
--

CREATE TABLE `jemaat` (
  `_ID_JEMAAT` int(11) NOT NULL,
  `NAMA_JEMAAT` varchar(20) DEFAULT NULL,
  `TGL_LAHIR_JEMAAT` varchar(15) DEFAULT NULL,
  `ALAMAT_JEMAAT` varchar(20) DEFAULT NULL,
  `NO_HP_JEMAAT` int(11) DEFAULT NULL,
  `EMAIL_JEMAAT` varbinary(30) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `kehadiran_cg`
--

CREATE TABLE `kehadiran_cg` (
  `ID_MEMBER` int(11) DEFAULT NULL,
  `TGL_KEHADIRAN` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `kehadiran_ibadah`
--

CREATE TABLE `kehadiran_ibadah` (
  `ID_KEHADIRAN` int(11) NOT NULL,
  `ID_IBADAH` int(11) DEFAULT NULL,
  `_ID_JEMAAT` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `list_mul`
--

CREATE TABLE `list_mul` (
  `ID_LIST_MUL` int(11) DEFAULT NULL,
  `MUL_ID_TEAM` int(11) NOT NULL,
  `_ID_JEMAAT` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `list_ut`
--

CREATE TABLE `list_ut` (
  `ID_LIST_UT` int(11) DEFAULT NULL,
  `UT_ID_TEAM` int(11) NOT NULL,
  `_ID_JEMAAT` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `list_wt`
--

CREATE TABLE `list_wt` (
  `ID_LIST_WT` int(11) DEFAULT NULL,
  `WT_ID_TEAM` int(11) NOT NULL,
  `_ID_JEMAAT` int(11) NOT NULL,
  `BAGIAN_PELAYANAN` varbinary(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `modul`
--

CREATE TABLE `modul` (
  `ID_MODUL` int(11) NOT NULL,
  `NAMA_MODUL` text
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `multimedia`
--

CREATE TABLE `multimedia` (
  `MUL_ID_TEAM` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `panitia`
--

CREATE TABLE `panitia` (
  `ID_EVENT` char(10) NOT NULL,
  `_ID_JEMAAT` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `role`
--

CREATE TABLE `role` (
  `ID_ROLE` int(11) NOT NULL,
  `NAMA_ROLE` text
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `role_jemaat`
--

CREATE TABLE `role_jemaat` (
  `ID_ROLE` int(11) NOT NULL,
  `_ID_JEMAAT` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `role_modul`
--

CREATE TABLE `role_modul` (
  `ID_ROLE` int(11) NOT NULL,
  `ID_MODUL` char(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `ut`
--

CREATE TABLE `ut` (
  `UT_ID_TEAM` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `wt`
--

CREATE TABLE `wt` (
  `WT_ID_TEAM` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `absensi`
--
ALTER TABLE `absensi`
  ADD PRIMARY KEY (`ID_EVENT`,`_ID_JEMAAT`);
  -- ADD KEY `FK_RELATIONSHIP_21` (`_ID_JEMAAT`);

--
-- Indexes for table `cg`
--
ALTER TABLE `cg`
  ADD PRIMARY KEY (`ID_CG`);

--
-- Indexes for table `cgm`
--
ALTER TABLE `cgm`
  ADD PRIMARY KEY (`ID_MEMBER`);
  -- ADD KEY `FK_MEMILIKI_2` (`ID_CG`),
  -- ADD KEY `FK_RELATIONSHIP_4` (`_ID_JEMAAT`);

--
-- Indexes for table `event`
--
ALTER TABLE `event`
  ADD PRIMARY KEY (`ID_EVENT`);

--
-- Indexes for table `ibadah`
--
ALTER TABLE `ibadah`
  ADD PRIMARY KEY (`ID_IBADAH`);
  -- ADD KEY `FK_DIJADWALKAN` (`UT_ID_TEAM`),
  -- ADD KEY `FK_DIJADWALKAN_DALAM` (`WT_ID_TEAM`),
  -- ADD KEY `FK_RELATIONSHIP_19` (`MUL_ID_TEAM`);

--
-- Indexes for table `jemaat`
--
ALTER TABLE `jemaat`
  ADD PRIMARY KEY (`_ID_JEMAAT`);

--
-- Indexes for table `kehadiran_cg`
--
ALTER TABLE `kehadiran_cg`
  ADD KEY `FK_MENGHADIRI` (`ID_MEMBER`);

--
-- Indexes for table `kehadiran_ibadah`
--
ALTER TABLE `kehadiran_ibadah`
  ADD PRIMARY KEY (`ID_KEHADIRAN`);
  -- ADD KEY `FK_DATANG` (`_ID_JEMAAT`),
  -- ADD KEY `FK_MENJALANKAN` (`ID_IBADAH`);

--
-- Indexes for table `list_mul`
--
ALTER TABLE `list_mul`
  ADD PRIMARY KEY (`MUL_ID_TEAM`,`_ID_JEMAAT`);
  -- ADD KEY `FK_RELATIONSHIP_17` (`_ID_JEMAAT`);

--
-- Indexes for table `list_ut`
--
ALTER TABLE `list_ut`
  ADD PRIMARY KEY (`UT_ID_TEAM`,`_ID_JEMAAT`);
  -- ADD KEY `FK_RELATIONSHIP_11` (`_ID_JEMAAT`);

--
-- Indexes for table `list_wt`
--
ALTER TABLE `list_wt`
  ADD PRIMARY KEY (`WT_ID_TEAM`,`_ID_JEMAAT`);
  -- ADD KEY `FK_RELATIONSHIP_14` (`_ID_JEMAAT`);

--
-- Indexes for table `modul`
--
ALTER TABLE `modul`
  ADD PRIMARY KEY (`ID_MODUL`);

--
-- Indexes for table `multimedia`
--
ALTER TABLE `multimedia`
  ADD PRIMARY KEY (`MUL_ID_TEAM`);

--
-- Indexes for table `panitia`
--
ALTER TABLE `panitia`
  ADD PRIMARY KEY (`ID_EVENT`,`_ID_JEMAAT`);
  -- ADD KEY `FK_RELATIONSHIP_23` (`_ID_JEMAAT`);

--
-- Indexes for table `role`
--
ALTER TABLE `role`
  ADD PRIMARY KEY (`ID_ROLE`);

--
-- Indexes for table `role_jemaat`
--
ALTER TABLE `role_jemaat`
  ADD PRIMARY KEY (`ID_ROLE`,`_ID_JEMAAT`);
  -- ADD KEY `FK_RELATIONSHIP_25` (`_ID_JEMAAT`);

--
-- Indexes for table `role_modul`
--
ALTER TABLE `role_modul`
  ADD PRIMARY KEY (`ID_ROLE`,`ID_MODUL`);

--
-- Indexes for table `ut`
--
ALTER TABLE `ut`
  ADD PRIMARY KEY (`UT_ID_TEAM`);

--
-- Indexes for table `wt`
--
ALTER TABLE `wt`
  ADD PRIMARY KEY (`WT_ID_TEAM`);

--
-- Constraints for dumped tables
--

-- --
-- -- Constraints for table `absensi`
-- --
-- ALTER TABLE `absensi`
--   ADD CONSTRAINT `FK_RELATIONSHIP_21` FOREIGN KEY (`_ID_JEMAAT`) REFERENCES `jemaat` (`_ID_JEMAAT`),
--   ADD CONSTRAINT `FK_RELATIONSHIP_22` FOREIGN KEY (`ID_EVENT`) REFERENCES `event` (`ID_EVENT`);

-- --
-- -- Constraints for table `cgm`
-- --
-- ALTER TABLE `cgm`
--   ADD CONSTRAINT `FK_MEMILIKI_2` FOREIGN KEY (`ID_CG`) REFERENCES `cg` (`ID_CG`),
--   ADD CONSTRAINT `FK_RELATIONSHIP_4` FOREIGN KEY (`_ID_JEMAAT`) REFERENCES `jemaat` (`_ID_JEMAAT`);

-- --
-- -- Constraints for table `ibadah`
-- --
-- ALTER TABLE `ibadah`
--   ADD CONSTRAINT `FK_DIJADWALKAN` FOREIGN KEY (`UT_ID_TEAM`) REFERENCES `ut` (`UT_ID_TEAM`),
--   ADD CONSTRAINT `FK_DIJADWALKAN_DALAM` FOREIGN KEY (`WT_ID_TEAM`) REFERENCES `wt` (`WT_ID_TEAM`),
--   ADD CONSTRAINT `FK_RELATIONSHIP_19` FOREIGN KEY (`MUL_ID_TEAM`) REFERENCES `multimedia` (`MUL_ID_TEAM`);

-- --
-- -- Constraints for table `kehadiran_cg`
-- --
-- ALTER TABLE `kehadiran_cg`
--   ADD CONSTRAINT `FK_MENGHADIRI` FOREIGN KEY (`ID_MEMBER`) REFERENCES `cgm` (`ID_MEMBER`);

-- --
-- -- Constraints for table `kehadiran_ibadah`
-- --
-- ALTER TABLE `kehadiran_ibadah`
--   ADD CONSTRAINT `FK_DATANG` FOREIGN KEY (`_ID_JEMAAT`) REFERENCES `jemaat` (`_ID_JEMAAT`),
--   ADD CONSTRAINT `FK_MENJALANKAN` FOREIGN KEY (`ID_IBADAH`) REFERENCES `ibadah` (`ID_IBADAH`);

-- --
-- -- Constraints for table `list_mul`
-- --
-- ALTER TABLE `list_mul`
--   ADD CONSTRAINT `FK_RELATIONSHIP_17` FOREIGN KEY (`_ID_JEMAAT`) REFERENCES `jemaat` (`_ID_JEMAAT`),
--   ADD CONSTRAINT `FK_RELATIONSHIP_18` FOREIGN KEY (`MUL_ID_TEAM`) REFERENCES `multimedia` (`MUL_ID_TEAM`);

-- --
-- -- Constraints for table `list_ut`
-- --
-- ALTER TABLE `list_ut`
--   ADD CONSTRAINT `FK_RELATIONSHIP_11` FOREIGN KEY (`_ID_JEMAAT`) REFERENCES `jemaat` (`_ID_JEMAAT`),
--   ADD CONSTRAINT `FK_RELATIONSHIP_12` FOREIGN KEY (`UT_ID_TEAM`) REFERENCES `ut` (`UT_ID_TEAM`);

-- --
-- -- Constraints for table `list_wt`
-- --
-- ALTER TABLE `list_wt`
--   ADD CONSTRAINT `FK_RELATIONSHIP_14` FOREIGN KEY (`_ID_JEMAAT`) REFERENCES `jemaat` (`_ID_JEMAAT`),
--   ADD CONSTRAINT `FK_RELATIONSHIP_15` FOREIGN KEY (`WT_ID_TEAM`) REFERENCES `wt` (`WT_ID_TEAM`);

-- --
-- -- Constraints for table `panitia`
-- --
-- ALTER TABLE `panitia`
--   ADD CONSTRAINT `FK_RELATIONSHIP_23` FOREIGN KEY (`_ID_JEMAAT`) REFERENCES `jemaat` (`_ID_JEMAAT`),
--   ADD CONSTRAINT `FK_RELATIONSHIP_24` FOREIGN KEY (`ID_EVENT`) REFERENCES `event` (`ID_EVENT`);

-- --
-- -- Constraints for table `role_jemaat`
-- --
-- ALTER TABLE `role_jemaat`
--   ADD CONSTRAINT `FK_RELATIONSHIP_25` FOREIGN KEY (`_ID_JEMAAT`) REFERENCES `jemaat` (`_ID_JEMAAT`),
--   ADD CONSTRAINT `FK_RELATIONSHIP_26` FOREIGN KEY (`ID_ROLE`) REFERENCES `role` (`ID_ROLE`);

-- /*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
-- /*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
-- /*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
