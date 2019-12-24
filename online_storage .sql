-- phpMyAdmin SQL Dump
-- version 4.8.4
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Dec 25, 2019 at 12:36 AM
-- Server version: 10.1.37-MariaDB
-- PHP Version: 7.3.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `online_storage`
--

-- --------------------------------------------------------

--
-- Table structure for table `file`
--

CREATE TABLE `file` (
  `id` int(11) NOT NULL,
  `name` varchar(200) NOT NULL,
  `size` int(20) NOT NULL,
  `folder` varchar(50) NOT NULL,
  `destination` text NOT NULL,
  `uploader_id` int(11) NOT NULL,
  `uploaded` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `status` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `file`
--

INSERT INTO `file` (`id`, `name`, `size`, `folder`, `destination`, `uploader_id`, `uploaded`, `status`) VALUES
(1, '48740021hk.png', 66, 'images', 'images/48740021hk.png', 0, '2019-12-24 22:55:14', 0),
(2, '96859734hk.png', 66, 'images', 'images/96859734hk.png', 1, '2019-12-24 22:24:09', 1),
(3, '62197409V2Tjt6ND_400x400.jpg', 22, 'images', 'images/62197409V2Tjt6ND_400x400.jpg', 0, '2019-12-24 22:55:18', 0),
(4, '45604125naijahacks_hackathon_2019_adebayo_mayowa.jpeg', 198, 'images', 'images/45604125naijahacks_hackathon_2019_adebayo_mayowa.jpeg', 1, '2019-12-24 22:22:47', 1),
(5, '37285321hk.png', 66, 'images', 'images/37285321hk.png', 1, '2019-12-24 22:23:13', 1),
(6, '63745356adebayo mayowa micheal.docx', 22, 'docs', '../docs/63745356adebayo mayowa micheal.docx', 1, '2019-12-24 22:36:12', 1),
(7, '76411875akindipe odunola emmanuel.docx', 22, 'docs', '../docs/76411875akindipe odunola emmanuel.docx', 1, '2019-12-24 22:36:24', 1),
(8, '55432791a16dcfc2db094a538fe8d7d445ea28a7.jpg', 24, 'images', '../images/55432791a16dcfc2db094a538fe8d7d445ea28a7.jpg', 1, '2019-12-24 22:37:00', 1),
(9, '15383009hk.png', 66, 'images', '../images/15383009hk.png', 1, '2019-12-24 22:37:11', 1),
(10, '32250969ChartJS Tutorials #10 - Using Logarithmic Scales.mp4', 15808, 'videos', '../videos/32250969ChartJS Tutorials #10 - Using Logarithmic Scales.mp4', 1, '2019-12-24 22:37:52', 1),
(11, '32597535MEGA 99 - ona ara.mp3', 5139, 'musics', '../musics/32597535MEGA 99 - ona ara.mp3', 1, '2019-12-24 22:38:40', 1);

-- --------------------------------------------------------

--
-- Table structure for table `folder`
--

CREATE TABLE `folder` (
  `id` int(11) NOT NULL,
  `name` varchar(30) NOT NULL,
  `created` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `folder`
--

INSERT INTO `folder` (`id`, `name`, `created`) VALUES
(1, 'images', '2019-12-24 21:41:04'),
(2, 'docs', '2019-12-24 21:41:17'),
(3, 'apks', '2019-12-24 21:41:12'),
(4, 'videos', '2019-12-24 21:41:22'),
(5, 'music', '2019-12-24 21:41:27');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `id` int(11) NOT NULL,
  `fullname` varchar(30) NOT NULL,
  `email` varchar(50) NOT NULL,
  `password` varchar(30) NOT NULL,
  `date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id`, `fullname`, `email`, `password`, `date`) VALUES
(1, 'laksjlakjl', '', 'asljhalhsjkakj', '2019-12-23 21:59:45'),
(2, 'laksjlakjl', 'mayowatope119@gmail.com', 'etisalat', '2019-12-23 22:14:50');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `file`
--
ALTER TABLE `file`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `folder`
--
ALTER TABLE `folder`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `file`
--
ALTER TABLE `file`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `folder`
--
ALTER TABLE `folder`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
