-- phpMyAdmin SQL Dump
-- version 4.8.3
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Oct 28, 2021 at 01:48 AM
-- Server version: 10.1.36-MariaDB
-- PHP Version: 5.6.38

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `vpss`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `id` int(11) NOT NULL,
  `name` varchar(20) NOT NULL,
  `username` varchar(20) NOT NULL,
  `password` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `bcategory`
--

CREATE TABLE `bcategory` (
  `catid` int(11) NOT NULL,
  `name` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `bcategory`
--

INSERT INTO `bcategory` (`catid`, `name`) VALUES
(1, 'Wardha'),
(2, 'Nagpur');

-- --------------------------------------------------------

--
-- Table structure for table `beo`
--

CREATE TABLE `beo` (
  `id` int(11) NOT NULL,
  `name` varchar(20) NOT NULL,
  `gender` varchar(10) NOT NULL,
  `block` varchar(20) NOT NULL,
  `username` varchar(20) NOT NULL,
  `password` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `beo`
--

INSERT INTO `beo` (`id`, `name`, `gender`, `block`, `username`, `password`) VALUES
(1, 'Drimesh', 'Male', 'Block', 'Drimesh', '123456');

-- --------------------------------------------------------

--
-- Table structure for table `bproduct`
--

CREATE TABLE `bproduct` (
  `proid` int(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  `pass` varchar(20) NOT NULL,
  `description` varchar(100) NOT NULL,
  `image` varchar(1000) NOT NULL,
  `catid` int(11) NOT NULL,
  `status` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `bproduct`
--

INSERT INTO `bproduct` (`proid`, `name`, `pass`, `description`, `image`, `catid`, `status`) VALUES
(1, 'Drimesh', 'Password', 'Wardha', 'anuj.jpg', 1, 0),
(2, 'Drimesh2', 'Password', 'Nagpur', 'anuj.jpg', 2, 0);

-- --------------------------------------------------------

--
-- Table structure for table `category`
--

CREATE TABLE `category` (
  `catid` int(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  `zone` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `category`
--

INSERT INTO `category` (`catid`, `name`, `zone`) VALUES
(1, 'Pavnar', 'Wardha'),
(2, 'Seloo', 'Wardha');

-- --------------------------------------------------------

--
-- Table structure for table `enum`
--

CREATE TABLE `enum` (
  `id` int(11) NOT NULL,
  `name` varchar(30) NOT NULL,
  `gender` varchar(10) NOT NULL,
  `username` varchar(20) NOT NULL,
  `password` varchar(20) NOT NULL,
  `posting` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `enum`
--

INSERT INTO `enum` (`id`, `name`, `gender`, `username`, `password`, `posting`) VALUES
(1, 'Drim_Pavnar', '', 'Drim_Pavnar', 'Pass@123', 'Pavnar'),
(2, 'Drim_Seloo', '', 'Drim_Seloo', 'Pass@123', 'Seloo');

-- --------------------------------------------------------

--
-- Table structure for table `enumdata`
--

CREATE TABLE `enumdata` (
  `srno` int(100) NOT NULL,
  `name` varchar(200) NOT NULL,
  `age` varchar(200) NOT NULL,
  `sex` varchar(200) NOT NULL,
  `category` varchar(1000) NOT NULL,
  `caste` varchar(20) NOT NULL,
  `work` varchar(20) NOT NULL,
  `child` varchar(20) NOT NULL,
  `status` varchar(255) NOT NULL,
  `edu` varchar(255) NOT NULL,
  `enum_region` varchar(10) NOT NULL,
  `enum_name` varchar(100) NOT NULL,
  `city` varchar(100) NOT NULL,
  `level` varchar(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `enumdata`
--

INSERT INTO `enumdata` (`srno`, `name`, `age`, `sex`, `category`, `caste`, `work`, `child`, `status`, `edu`, `enum_region`, `enum_name`, `city`, `level`) VALUES
(2, 'Drimesh Ishwar ', '20', 'Male', 'SC', 'Patil', 'Corporate Man', '0', 'Married', '10th', '', '', 'Pavnar', '3'),
(3, 'Kiran Pendam', '0', 'male', 'SC', 'Patil', 'Farmer', '0', '', 'Post-Graduated', '', '', 'Pavnar', '3'),
(4, 'Kiran Pendam', '0', 'male', 'SC', 'Patil', 'Farmer', '0', 'Unmarried', 'Post-Graduated', '', '', 'Pavnar', '3'),
(5, 'Kiran Pendam', '0', 'male', 'SC', 'Patil', 'Farmer', '0', 'Unmarried', 'Post-Graduated', '', '', 'Pavnar', '3'),
(6, 'Kiran Pendam', '0', 'male', 'SC', 'Patil', 'Farmer', '0', 'Unmarried', 'Post-Graduated', '', '', 'Pavnar', '3'),
(7, 'Drimesh Ishwar ', '20', 'Male', 'SC', 'Patil', 'Corporate Man', '0', 'Married', '10th', '', '', 'Pavnar', '3'),
(8, 'Drimesh Ishwar ', '20', 'Male', 'SC', 'Patil', 'Corporate Man', '0', 'Married', '10th', '', '', 'Pavnar', '3'),
(9, 'Kiran Pendam', '0', 'male', 'SC', 'Patil', 'Farmer', '0', 'Unmarried', 'Post-Graduated', '', '', 'Pavnar', '1'),
(10, 'Kiran Pendam', '0', 'male', 'SC', 'Patil', 'Farmer', '0', 'Unmarried', 'Post-Graduated', '', '', 'Pavnar', '1'),
(11, 'Drimesh Ishwar ', '20', 'Male', 'SC', 'Patil', 'Corporate Man', '0', 'Married', '10th', '', '', 'Pavnar', '1'),
(12, 'Kiran Pendam', '0', 'male', 'SC', 'Barda', 'Farmer', '4', 'Married', 'Post-Graduated', '', '', 'Pavnar', '1');

-- --------------------------------------------------------

--
-- Table structure for table `enumdata3`
--

CREATE TABLE `enumdata3` (
  `srno` int(100) NOT NULL,
  `name` varchar(200) NOT NULL,
  `age` varchar(200) NOT NULL,
  `sex` varchar(200) NOT NULL,
  `category` varchar(1000) NOT NULL,
  `caste` varchar(20) NOT NULL,
  `work` varchar(20) NOT NULL,
  `child` varchar(20) NOT NULL,
  `status` varchar(255) NOT NULL,
  `edu` varchar(255) NOT NULL,
  `enum_region` varchar(10) NOT NULL,
  `enum_name` varchar(100) NOT NULL,
  `city` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `faculty`
--

CREATE TABLE `faculty` (
  `id` int(11) NOT NULL,
  `name` varchar(30) NOT NULL,
  `gender` varchar(10) NOT NULL,
  `username` varchar(20) NOT NULL,
  `password` varchar(20) NOT NULL,
  `posting` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `faculty`
--

INSERT INTO `faculty` (`id`, `name`, `gender`, `username`, `password`, `posting`) VALUES
(1, 'Drimesh', '', 'Drimesh', 'Pass@123', 'Wardha'),
(2, 'Drimesh2', '', 'Drimesh2', 'Pass@123', 'Nagpur');

-- --------------------------------------------------------

--
-- Table structure for table `fac_details`
--

CREATE TABLE `fac_details` (
  `ID` int(10) NOT NULL,
  `Bank_ac` varchar(25) NOT NULL,
  `bank_ifsc` varchar(25) NOT NULL,
  `Phone` varchar(25) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `family`
--

CREATE TABLE `family` (
  `id` int(5) NOT NULL,
  `firstname` varchar(20) NOT NULL,
  `lastname` varchar(20) NOT NULL,
  `username` varchar(20) NOT NULL,
  `password` varchar(255) NOT NULL,
  `sex` varchar(10) NOT NULL,
  `dob` date NOT NULL,
  `age` int(11) NOT NULL,
  `category` varchar(20) NOT NULL,
  `caste` varchar(20) NOT NULL,
  `numoffamily` int(11) NOT NULL,
  `village` varchar(20) NOT NULL,
  `work` varchar(255) NOT NULL,
  `child` varchar(255) NOT NULL,
  `married` varchar(255) NOT NULL,
  `edu` varchar(255) NOT NULL,
  `status` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `family`
--

INSERT INTO `family` (`id`, `firstname`, `lastname`, `username`, `password`, `sex`, `dob`, `age`, `category`, `caste`, `numoffamily`, `village`, `work`, `child`, `married`, `edu`, `status`) VALUES
(2, 'Rushi', 'Pendam', 'Rushi', '$2y$10$4m5vB1pJGu.9X5RNK84S1ukEp1rOEUfdZHWJ4ydNqH3mxpoRcNeqO', 'male', '1955-01-01', 66, 'SC', 'Brahmin', 4, 'Seloo', 'Farmer', '4', 'Married', '12th', 0),
(3, 'Kiran', 'Pendam', 'fuck', '$2y$10$/fZI6cPG0supIJz8rzWhoOHV1qW1X1YPab2GC101PR0Q77bz6wHBW', 'male', '2021-09-27', 0, 'SC', 'Barda', 1, 'Pavnar', 'Farmer', '4', 'Married', 'Post-Graduated', 1);

-- --------------------------------------------------------

--
-- Table structure for table `members`
--

CREATE TABLE `members` (
  `id` int(11) NOT NULL,
  `Name` varchar(15) NOT NULL,
  `Sex` varchar(10) NOT NULL,
  `Dob` date NOT NULL,
  `age` int(11) NOT NULL,
  `category` varchar(200) NOT NULL,
  `caste` varchar(255) NOT NULL,
  `work` varchar(200) NOT NULL,
  `village` varchar(200) NOT NULL,
  `status` varchar(200) NOT NULL,
  `edu` varchar(200) NOT NULL,
  `idhead` int(11) NOT NULL,
  `display` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `members`
--

INSERT INTO `members` (`id`, `Name`, `Sex`, `Dob`, `age`, `category`, `caste`, `work`, `village`, `status`, `edu`, `idhead`, `display`) VALUES
(1, 'Ishwar Rushi Pe', 'Male', '0000-00-00', 46, 'SC', 'Brahmin', 'Goverment Servent', 'Seloo', 'Married', 'Graduated', 2, 0),
(2, 'Bhupesh Rushi P', 'Male', '0000-00-00', 40, 'SC', 'Brahmin', 'Busniess Man', 'Seloo', 'Married', 'Graduated', 2, 0),
(4, 'Tikshala', 'Female', '0000-00-00', 20, 'SC', 'Brahmin', 'Corporate Man', 'Seloo', 'Divorced', 'PHD', 2, 0),
(5, 'Drimesh Ishwar ', 'Male', '0000-00-00', 20, 'SC', 'Patil', 'Corporate Man', 'Pavnar', 'Married', '10th', 3, 1);

-- --------------------------------------------------------

--
-- Table structure for table `product`
--

CREATE TABLE `product` (
  `proid` int(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  `pass` varchar(20) NOT NULL,
  `description` varchar(100) NOT NULL,
  `image` varchar(1000) NOT NULL,
  `catid` int(11) NOT NULL,
  `status` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `product`
--

INSERT INTO `product` (`proid`, `name`, `pass`, `description`, `image`, `catid`, `status`) VALUES
(2, 'Drim_Seloo', 'Password', 'Seloo', 'anuj.jpg', 2, 0);

-- --------------------------------------------------------

--
-- Table structure for table `supervisior_details`
--

CREATE TABLE `supervisior_details` (
  `name` varchar(100) NOT NULL,
  `bank_name` varchar(100) NOT NULL,
  `account_no` bigint(100) NOT NULL,
  `ifsc` varchar(100) NOT NULL,
  `branch` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `bcategory`
--
ALTER TABLE `bcategory`
  ADD PRIMARY KEY (`catid`);

--
-- Indexes for table `beo`
--
ALTER TABLE `beo`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `bproduct`
--
ALTER TABLE `bproduct`
  ADD PRIMARY KEY (`proid`);

--
-- Indexes for table `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`catid`);

--
-- Indexes for table `enum`
--
ALTER TABLE `enum`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `enumdata`
--
ALTER TABLE `enumdata`
  ADD PRIMARY KEY (`srno`);

--
-- Indexes for table `enumdata3`
--
ALTER TABLE `enumdata3`
  ADD PRIMARY KEY (`srno`);

--
-- Indexes for table `faculty`
--
ALTER TABLE `faculty`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `family`
--
ALTER TABLE `family`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id` (`id`);

--
-- Indexes for table `members`
--
ALTER TABLE `members`
  ADD PRIMARY KEY (`id`),
  ADD KEY `Foreign Key` (`idhead`);

--
-- Indexes for table `product`
--
ALTER TABLE `product`
  ADD PRIMARY KEY (`proid`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `bcategory`
--
ALTER TABLE `bcategory`
  MODIFY `catid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `beo`
--
ALTER TABLE `beo`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `bproduct`
--
ALTER TABLE `bproduct`
  MODIFY `proid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `category`
--
ALTER TABLE `category`
  MODIFY `catid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `enum`
--
ALTER TABLE `enum`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `enumdata`
--
ALTER TABLE `enumdata`
  MODIFY `srno` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `enumdata3`
--
ALTER TABLE `enumdata3`
  MODIFY `srno` int(100) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `faculty`
--
ALTER TABLE `faculty`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `family`
--
ALTER TABLE `family`
  MODIFY `id` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `members`
--
ALTER TABLE `members`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `product`
--
ALTER TABLE `product`
  MODIFY `proid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `members`
--
ALTER TABLE `members`
  ADD CONSTRAINT `Foreign Key` FOREIGN KEY (`idhead`) REFERENCES `family` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
