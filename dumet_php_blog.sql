-- phpMyAdmin SQL Dump
-- version 4.8.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Aug 03, 2018 at 10:07 AM
-- Server version: 10.1.32-MariaDB
-- PHP Version: 7.0.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `dumet_sec-9_blog`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `id` int(11) NOT NULL,
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id`, `username`, `password`) VALUES
(2, 'dumet', 'a5ebb0d6bae502fb5933838ea6986e47'),
(3, 'admin', '21232f297a57a5a743894a0e4a801fc3');

-- --------------------------------------------------------

--
-- Table structure for table `category`
--

CREATE TABLE `category` (
  `id` int(11) NOT NULL,
  `category_name` varchar(255) NOT NULL,
  `icon` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `category`
--

INSERT INTO `category` (`id`, `category_name`, `icon`) VALUES
(1, 'Musik', 'glyphicon glyphicon-headphones'),
(2, 'Kesehatan', 'glyphicon glyphicon-heart-empty'),
(3, 'Teknologi', 'glyphicon glyphicon-globe'),
(4, 'Travel', 'glyphicon glyphicon-plane'),
(5, 'Olahraga', 'glyphicon glyphicon-flash');

-- --------------------------------------------------------

--
-- Table structure for table `comment`
--

CREATE TABLE `comment` (
  `id` int(11) NOT NULL,
  `post_id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `reply` text NOT NULL,
  `status` int(1) DEFAULT '0',
  `date` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `comment`
--

INSERT INTO `comment` (`id`, `post_id`, `name`, `reply`, `status`, `date`) VALUES
(1, 17, 'Alissa', 'Many desktop publishing packages and web page editors now use.', 1, '2018-02-13 00:02:00'),
(2, 17, 'Chelsea', 'All the Lorem Ipsum generators on the Internet tend to repeat predefined.', 1, '2018-02-13 00:02:06'),
(3, 17, 'Nagita', 'It uses a dictionary of over 200 Latin words, combined with.', 1, '2018-02-13 00:02:10'),
(4, 17, 'Ariel', 'The generated Lorem Ipsum is therefore always free from repetition.', 1, '2018-02-13 01:08:18'),
(5, 17, 'Marsha', 'The standard chunk of Lorem Ipsum used since the 1500s is reproduced below.', 1, '2018-02-13 02:01:37'),
(6, 16, 'Alissa', 'Many desktop publishing packages and web page editors now use.', 1, '2018-02-13 00:02:05'),
(7, 4, 'Chelsea', 'All the Lorem Ipsum generators on the Internet tend to repeat predefined.', 1, '2018-02-13 00:03:06'),
(8, 3, 'Nagita', 'It uses a dictionary of over 200 Latin words, combined with.', 1, '2018-02-13 00:02:19'),
(9, 16, 'Ariel', 'The generated Lorem Ipsum is therefore always free from repetition.', 1, '2018-02-13 01:14:20'),
(10, 1, 'Marsha', 'The standard chunk of Lorem Ipsum used since the 1500s is reproduced below.', 1, '2018-02-13 02:01:37'),
(12, 10, 'Herlina', 'Bagus', 1, '2018-02-19 16:09:30');

-- --------------------------------------------------------

--
-- Table structure for table `post`
--

CREATE TABLE `post` (
  `id` int(11) NOT NULL,
  `category_id` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `description` text NOT NULL,
  `image` varchar(255) NOT NULL,
  `date` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `post`
--

INSERT INTO `post` (`id`, `category_id`, `title`, `description`, `image`, `date`) VALUES
(1, 1, 'Neque porro quisquam est qui', 'There is no one who loves pain itself, who seeks after it and wants to have it, simply because it is pain...', 'image_1.jpg', '2017-12-16 14:43:00'),
(2, 2, 'Donec eros massa', 'There is no one who loves pain itself, who seeks after it and wants to have it, simply because it is pain...', 'image_2.jpg', '2017-12-16 14:43:06'),
(3, 3, 'Aliquam id elementum neque', 'There is no one who loves pain itself, who seeks after it and wants to have it, simply because it is pain...', 'image_3.jpg', '2017-12-16 14:43:06'),
(4, 4, 'Etiam condimentum elementum nisi', 'There is no one who loves pain itself, who seeks after it and wants to have it, simply because it is pain...', 'image_4.jpg', '2017-12-16 14:43:06'),
(5, 5, 'Curabitur arcu purus', 'There is no one who loves pain itself, who seeks after it and wants to have it, simply because it is pain...', 'image_5.jpg', '2017-12-16 14:43:06'),
(6, 1, 'Fusce malesuada mauris maximus nunc', 'There is no one who loves pain itself, who seeks after it and wants to have it, simply because it is pain...', 'image_6.jpg', '2017-12-16 14:43:06'),
(7, 1, 'Mauris ut odio ut ex varius', 'There is no one who loves pain itself, who seeks after it and wants to have it, simply because it is pain...', 'image_2.jpg', '2017-12-16 14:43:06'),
(8, 1, 'Neque porro quisquam est qui', 'There is no one who loves pain itself, who seeks after it and wants to have it, simply because it is pain...', 'image_3.jpg', '2017-12-16 14:43:06'),
(9, 2, 'Morbi faucibus eu libero eu posuere', 'There is no one who loves pain itself, who seeks after it and wants to have it, simply because it is pain...', 'image_1.jpg', '2017-12-16 14:43:06'),
(10, 2, 'Neque porro quisquam est qui', 'There is no one who loves pain itself, who seeks after it and wants to have it, simply because it is pain...', 'image_3.jpg', '2017-12-16 14:43:06'),
(11, 3, 'Suspendisse tincidunt orci eu turpis', 'There is no one who loves pain itself, who seeks after it and wants to have it, simply because it is pain...', 'image_1.jpg', '2017-12-16 14:43:06'),
(12, 3, 'Neque porro quisquam est qui', 'There is no one who loves pain itself, who seeks after it and wants to have it, simply because it is pain...', 'image_2.jpg', '2017-12-16 14:43:06'),
(13, 4, 'Quisque condimentum in nisi ac pulvinar', 'There is no one who loves pain itself, who seeks after it and wants to have it, simply because it is pain...', 'image_6.jpg', '2017-12-16 14:43:06'),
(14, 4, 'Neque porro quisquam est qui', 'There is no one who loves pain itself, who seeks after it and wants to have it, simply because it is pain...', 'image_5.jpg', '2017-12-16 14:43:06'),
(15, 5, 'Pellentesque blandit consectetur', 'There is no one who loves pain itself, who seeks after it and wants to have it, simply because it is pain...', 'image_1.jpg', '2017-12-16 14:43:06'),
(16, 4, 'Phasellus efficitur ipsum eget', 'There is no one who loves pain itself, who seeks after it and wants to have it, simply because it is pain...', 'image_4.jpg', '2017-12-16 14:43:06'),
(17, 1, 'Neque porro quisquam est qui', 'There is no one who loves pain itself, who seeks after it and wants to have it, simply because it is pain...', 'image_1.jpg', '2017-12-16 14:43:06');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `comment`
--
ALTER TABLE `comment`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `post`
--
ALTER TABLE `post`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `category`
--
ALTER TABLE `category`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `comment`
--
ALTER TABLE `comment`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `post`
--
ALTER TABLE `post`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
