-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Jul 14, 2022 at 05:00 AM
-- Server version: 10.4.24-MariaDB
-- PHP Version: 7.4.29

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `hostelmsphp`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `id` int(11) NOT NULL,
  `username` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(300) NOT NULL,
  `reg_date` timestamp NOT NULL DEFAULT current_timestamp(),
  `updation_date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id`, `username`, `email`, `password`, `reg_date`, `updation_date`) VALUES
(1, 'admin', 'admin@mail.com', 'D00F5D5217896FB7FD601412CB890830', '2020-09-08 20:31:45', '2021-03-07'),
(2, 'admin', 'admin@mail.com', '123456', '2020-09-08 20:31:45', '2021-03-07');

-- --------------------------------------------------------

--
-- Table structure for table `adminlog`
--

CREATE TABLE `adminlog` (
  `id` int(11) NOT NULL,
  `adminid` int(11) NOT NULL,
  `ip` varbinary(16) NOT NULL,
  `logintime` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `attendance`
--

CREATE TABLE `attendance` (
  `sname` varchar(25) NOT NULL,
  `regno` varchar(25) NOT NULL,
  `roomno` int(10) NOT NULL,
  `att` int(10) NOT NULL,
  `cdate` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `attendance`
--

INSERT INTO `attendance` (`sname`, `regno`, `roomno`, `att`, `cdate`) VALUES
('Nayeem', '123', 100, 1, '2022-07-10 20:22:47'),
('fbdhfb', '12345', 200, 1, '2022-07-10 20:23:31'),
('NMNM', '123', 100, 1, '2022-07-10 21:12:21'),
('KKK', '123', 100, 1, '2022-07-10 21:12:39'),
('Nayeem', '123', 100, 1, '2022-07-13 03:35:47'),
('jdfn', '12345', 100, 1, '2022-07-13 04:52:41'),
('vnvmbn', '12345', 100, 1, '2022-07-13 04:53:09');

-- --------------------------------------------------------

--
-- Table structure for table `courses`
--

CREATE TABLE `courses` (
  `id` int(11) NOT NULL,
  `course_code` varchar(255) NOT NULL,
  `course_sn` varchar(255) NOT NULL,
  `course_fn` varchar(255) NOT NULL,
  `posting_date` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `courses`
--

INSERT INTO `courses` (`id`, `course_code`, `course_sn`, `course_fn`, `posting_date`) VALUES
(1, 'BTH123', 'B.Tech', 'Bachelor  Of Technology', '2020-09-23 00:45:13'),
(2, 'BCOM18', 'B.Com', 'Bachelor Of Commerce ', '2020-09-23 00:45:13'),
(3, 'BSC296', 'BSC', 'Bachelor  of Science', '2020-09-23 00:45:13'),
(4, 'BCOA55', 'BCA', 'Bachelor Of Computer Application', '2020-09-23 00:45:13'),
(5, 'MCA001', 'MCA', 'Master of Computer Application', '2020-09-23 00:47:13'),
(6, 'MBA777', 'MBA', 'Master In Business Administration', '2020-09-23 00:54:13'),
(7, 'BE069', 'BE', 'Bachelor of Engineering', '2020-09-23 00:59:13'),
(8, 'BIT353', 'BIT', 'Bachelors In Information Technology', '2021-03-07 06:59:05'),
(9, 'MIT005', 'MIT', 'Master of Information Technology', '2022-04-03 13:03:19');

-- --------------------------------------------------------

--
-- Table structure for table `feedback`
--

CREATE TABLE `feedback` (
  `id` int(10) NOT NULL,
  `email` varchar(25) NOT NULL,
  `rate` varchar(25) NOT NULL,
  `feedback` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `feedback`
--

INSERT INTO `feedback` (`id`, `email`, `rate`, `feedback`) VALUES
(1, '', 'dsd', 'Good'),
(2, 'nayeem@gmail.com', 'dsdsdsdsdsd', 'Excellent'),
(3, 'xyz@gmail.com', 'Excellen', 'Good'),
(4, 'xyz@gmail.com', 'sdsd', 'Good'),
(5, 'xyz@gmail.com', 'sddsd ', 'Good'),
(6, 'xyz@gmail.com', 'kjdd\r\nsdsd\r\nsdsd', 'Good'),
(7, 'xyz@gmail.com', 'dsaaaaaaaaaaaaaaaaaaaa', 'Good'),
(8, 'gdfgdg@gmail.com', 'goood', 'dff\r\n                                                   df\r\n                                                   df\r\n                                                   df\r\n                                                   d'),
(9, 'gdfgdg@gmail.com', 'goood', 'dff\r\n                                                   df\r\n                                                   df\r\n                                                   df\r\n                                                   d\r\n                                                   fdfdfdfdfdf\r\n                                                   dfdfdf\r\n                                                   d\r\n                                                   fdf\r\n                                                   df\r\n                                                   df\r\n                                                   df'),
(10, 'xyz@gmail.com', 'sdsdsdsdsdsd', 'Good'),
(11, 'xyz@gmail.com', 'sjdhs djkasdj asd', 'Good'),
(12, 'gdfgdg@gmail.com', 'goood', 'dff\r\n                                                   df\r\n                                                   df\r\n                                                   df\r\n                                                   d\r\n                                                   fdfdfdfdfdf\r\n                                                   dfdfdf\r\n                                                   d\r\n                                                   fdf\r\n                                                   df\r\n                                                   df\r\n                                                   df'),
(13, 'xyz@gmail.com', 'Excellent', 'sds\r\n\r\nfs\r\nf\r\nsfsfkhjdsf sjdhfjsd fjkdshf skd'),
(14, 'xyz@gmail.com', 'Excellent', 'jnn'),
(15, 'xyz@gmail.com', 'Good', '\r\n\r\n'),
(16, 'xyz@gmail.com', 'Good', 'sdsd'),
(17, 'xyz@gmail.com', 'Good', 'hhh'),
(18, 'xyz@gmail.com', 'Good', ''),
(19, 'xyz@gmail.com', 'Good', ''),
(20, 'xyz@gmail.com', 'Good', 'ssssssssss');

-- --------------------------------------------------------

--
-- Table structure for table `registration`
--

CREATE TABLE `registration` (
  `id` int(11) NOT NULL,
  `roomno` int(11) NOT NULL,
  `seater` int(11) NOT NULL,
  `feespm` int(11) NOT NULL,
  `foodstatus` int(11) NOT NULL,
  `stayfrom` date NOT NULL,
  `duration` int(11) NOT NULL,
  `course` varchar(500) NOT NULL,
  `regno` varchar(255) NOT NULL,
  `firstName` varchar(500) NOT NULL,
  `middleName` varchar(500) NOT NULL,
  `lastName` varchar(500) NOT NULL,
  `gender` varchar(250) NOT NULL,
  `contactno` bigint(11) NOT NULL,
  `emailid` varchar(500) NOT NULL,
  `egycontactno` bigint(11) NOT NULL,
  `guardianName` varchar(500) NOT NULL,
  `guardianRelation` varchar(500) NOT NULL,
  `guardianContactno` bigint(11) NOT NULL,
  `corresAddress` varchar(500) NOT NULL,
  `corresCIty` varchar(500) NOT NULL,
  `corresState` varchar(500) NOT NULL,
  `corresPincode` int(11) NOT NULL,
  `pmntAddress` varchar(500) NOT NULL,
  `pmntCity` varchar(500) NOT NULL,
  `pmnatetState` varchar(500) NOT NULL,
  `pmntPincode` int(11) NOT NULL,
  `postingDate` timestamp NOT NULL DEFAULT current_timestamp(),
  `updationDate` varchar(500) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `registration`
--

INSERT INTO `registration` (`id`, `roomno`, `seater`, `feespm`, `foodstatus`, `stayfrom`, `duration`, `course`, `regno`, `firstName`, `middleName`, `lastName`, `gender`, `contactno`, `emailid`, `egycontactno`, `guardianName`, `guardianRelation`, `guardianContactno`, `corresAddress`, `corresCIty`, `corresState`, `corresPincode`, `pmntAddress`, `pmntCity`, `pmnatetState`, `pmntPincode`, `postingDate`, `updationDate`) VALUES
(15, 200, 2, 910, 1, '2021-03-07', 12, 'Bachelors In Information Technology', '11101', 'Mary', 'A.', 'Martin', 'female', 7455558855, 'marym@mail.com', 7412589650, 'James Martin', 'Father', 7896666600, '20 Patterson Street', 'Houston', '', 70067, '20 Patterson Street', 'Houston', '', 70067, '2022-04-02 17:06:43', ''),
(16, 112, 3, 1300, 1, '2022-04-04', 12, 'Master of Computer Application', 'CA003', 'Richard', 'J.', 'Summers', 'Male', 1325658800, 'richards@mail.com', 4785555500, 'Maren Summers', 'Father', 4125478555, '48 Wilkinson Street', 'Nashville', '', 32701, '48 Wilkinson Street', 'Nashville', '', 32701, '2022-04-03 13:16:45', ''),
(17, 132, 5, 1990, 0, '2022-04-04', 6, 'Master In Business Administration', 'CA006', 'Jennifer', 'J.', 'Frye', 'Female', 7895555544, 'jennifer@mail.com', 2224445585, 'Beverly Frye', 'Mother', 1478569888, '18 Hanifan Lane', 'Stone Mountain', '', 38803, '18 Hanifan Lane', 'Stone Mountain', '', 38803, '2022-04-03 14:37:56', ''),
(18, 269, 2, 910, 1, '2022-05-03', 12, 'Bachelor of Engineering', 'CA002', 'Bruce', 'E.', 'Murphy', 'Male', 1346565650, 'bruce@mail.com', 7850001450, 'Ellen Murphy', 'Mother', 7850001010, '25 Yorkie Lane', 'Savannah', '', 34001, '25 Yorkie Lane', 'Savannah', '', 34001, '2022-04-03 14:47:31', ''),
(19, 100, 5, 1990, 0, '2022-04-17', 8, 'Bachelor Of Commerce ', 'CA009', 'Nancy', 'W.', 'Vasquez', 'Female', 3547777770, 'nancy@mail.com', 4445554470, 'Jude Vasquez', 'Father', 4785698555, '109 Prudence Street', 'Dearborn', '', 44550, '109 Prudence Street', 'Dearborn', '', 44550, '2022-04-03 15:02:15', ''),
(20, 310, 1, 750, 0, '2022-04-10', 12, 'Master of Information Technology', 'CA014', 'Liam', 'K.', 'Moore', 'Male', 7854441014, 'liamoore@mail.com', 7412585500, 'Christine L. Moore', 'Mother', 7458888888, '77 Test Address', 'Democity', '', 70001, '77 Test Address', 'Democity', '', 70001, '2022-04-03 15:53:07', '');

-- --------------------------------------------------------

--
-- Table structure for table `rooms`
--

CREATE TABLE `rooms` (
  `id` int(11) NOT NULL,
  `room_no` int(11) NOT NULL,
  `posting_date` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `rooms`
--

INSERT INTO `rooms` (`id`, `room_no`, `posting_date`) VALUES
(1, 100, '2020-09-20 04:24:06'),
(2, 201, '2020-09-20 04:24:06'),
(3, 200, '2020-09-20 04:33:06'),
(4, 112, '2020-09-20 04:33:30'),
(5, 132, '2020-09-20 04:28:52'),
(7, 269, '2022-04-03 14:39:22'),
(8, 310, '2022-04-03 14:41:36'),
(9, 330, '2022-04-03 14:41:53'),
(11, 1001, '2022-07-08 10:35:25'),
(12, 1500, '2022-07-08 10:37:18');

-- --------------------------------------------------------

--
-- Table structure for table `states`
--

CREATE TABLE `states` (
  `id` int(11) NOT NULL,
  `State` varchar(150) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `states`
--

INSERT INTO `states` (`id`, `State`) VALUES
(1, 'Alabama'),
(2, 'Alaska'),
(3, 'Arizona'),
(4, 'Arkansas'),
(5, 'California'),
(6, 'Colorado'),
(7, 'Connecticut'),
(8, 'Delaware'),
(9, 'Florida'),
(10, 'Georgia'),
(11, 'Hawaii'),
(12, 'Idaho'),
(13, 'Illinois'),
(14, 'Iowa'),
(15, 'Kansas'),
(16, 'Kentucky'),
(17, 'Louisiana'),
(18, 'Maine'),
(19, 'Marryland'),
(20, 'Massachusetts'),
(21, 'Michigan'),
(22, 'Minnesota'),
(23, 'Mississippi'),
(24, 'Missouri'),
(25, 'Nevada'),
(26, 'New Jersey'),
(27, 'New York'),
(28, 'North Carolina'),
(29, 'North Dakota'),
(30, 'Ohio'),
(31, 'Oklahoma'),
(32, 'South Carolina'),
(33, 'South Dakota'),
(34, 'Texas'),
(35, 'Virginia'),
(36, 'Washington');

-- --------------------------------------------------------

--
-- Table structure for table `tblMessamt`
--

CREATE TABLE `tblMessamt` (
  `amount` bigint(100) NOT NULL,
  `month` date NOT NULL,
  `sdate` date NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tblMessamt`
--

INSERT INTO `tblMessamt` (`amount`, `month`, `sdate`) VALUES
(15000, '0000-00-00', '2022-07-13'),
(15000, '0000-00-00', '2022-07-13'),
(15000, '2022-07-13', '2022-07-13'),
(10000, '2022-07-13', '2022-07-13'),
(10000, '2022-07-13', '2022-07-13'),
(15000, '2022-07-07', '2022-07-13');

-- --------------------------------------------------------

--
-- Table structure for table `tblStudent`
--

CREATE TABLE `tblStudent` (
  `regno` varchar(25) NOT NULL,
  `fname` varchar(30) NOT NULL,
  `lname` varchar(30) NOT NULL,
  `room` int(11) DEFAULT NULL,
  `year` int(11) NOT NULL,
  `contact` bigint(20) NOT NULL,
  `econtact` bigint(20) NOT NULL,
  `address` varchar(250) NOT NULL,
  `city` varchar(250) NOT NULL,
  `pincode` int(11) NOT NULL,
  `gname` varchar(250) NOT NULL,
  `grelation` varchar(20) NOT NULL,
  `gcontact` bigint(20) NOT NULL,
  `email` varchar(25) NOT NULL,
  `password` varchar(25) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tblStudent`
--

INSERT INTO `tblStudent` (`regno`, `fname`, `lname`, `room`, `year`, `contact`, `econtact`, `address`, `city`, `pincode`, `gname`, `grelation`, `gcontact`, `email`, `password`) VALUES
('123', 'Nayeem', 'Vathar', 100, 1, 7829234797, 7829234797, 'jhjhjh', 'jhkj', 587103, 'fdhfjdfh', 'jhjh', 7898797987, 'nayeem@gmail.com', 'password'),
('12345', 'Sudha', 'Kulkarni', 100, 2, 9449907979, 5555, 'jhjhjh', 'jjhhhh', 587498, 'fcvbn', 'nbnb', 545456, 'xyz@gmail.com', 'password'),
('123698', 'Javed', 'V', 100, 1, 9449907979, 9449907979, 'bnbn', 'nbnb', 552121, 'bnbn', 'nbnb', 554545456, 'qwerty@gmail.com', 'password');

-- --------------------------------------------------------

--
-- Table structure for table `test`
--

CREATE TABLE `test` (
  `jjkj` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `userlog`
--

CREATE TABLE `userlog` (
  `id` int(11) NOT NULL,
  `userId` int(11) NOT NULL,
  `userEmail` varchar(255) NOT NULL,
  `userIp` varbinary(16) NOT NULL,
  `city` varchar(255) NOT NULL,
  `country` varchar(255) NOT NULL,
  `loginTime` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `userlog`
--

INSERT INTO `userlog` (`id`, `userId`, `userEmail`, `userIp`, `city`, `country`, `loginTime`) VALUES
(9, 10, 'terry@mail.com', 0x3a3a31, '', '', '2021-03-05 04:12:00'),
(10, 10, 'terry@mail.com', 0x3a3a31, '', '', '2021-03-05 04:14:44'),
(11, 21, 'ross@mail.com', 0x3a3a31, '', '', '2021-03-05 04:19:52'),
(12, 21, 'ross@mail.com', 0x3a3a31, '', '', '2021-03-05 08:53:33'),
(13, 21, 'ross@mail.com', 0x3a3a31, '', '', '2021-03-05 17:35:34'),
(14, 21, 'ross@mail.com', 0x3a3a31, '', '', '2021-03-06 02:43:01'),
(15, 21, 'ross@mail.com', 0x3a3a31, '', '', '2021-03-06 15:18:49'),
(16, 21, 'ross@mail.com', 0x3a3a31, '', '', '2021-03-07 09:35:23'),
(17, 21, 'ross@mail.com', 0x3a3a31, '', '', '2021-03-07 09:59:55'),
(18, 22, 'colin@gmail.com', 0x3a3a31, '', '', '2021-06-16 14:51:24'),
(19, 22, 'colin@gmail.com', 0x3a3a31, '', '', '2021-12-12 15:31:50'),
(20, 22, 'colin@gmail.com', 0x3a3a31, '', '', '2022-04-02 16:01:31'),
(21, 21, 'ross@mail.com', 0x3a3a31, '', '', '2022-04-02 16:52:47'),
(22, 20, 'richards@mail.com', 0x3a3a31, '', '', '2022-04-03 13:15:00'),
(23, 24, 'jennifer@mail.com', 0x3a3a31, '', '', '2022-04-03 14:32:09'),
(24, 24, 'jennifer@mail.com', 0x3a3a31, '', '', '2022-04-03 14:34:17'),
(25, 19, 'bruce@mail.com', 0x3a3a31, '', '', '2022-04-03 14:44:31'),
(26, 27, 'nancy@mail.com', 0x3a3a31, '', '', '2022-04-03 15:00:46'),
(27, 32, 'liamoore@mail.com', 0x3a3a31, '', '', '2022-04-03 15:48:35'),
(28, 32, 'liamoore@mail.com', 0x3a3a31, '', '', '2022-04-03 15:51:34');

-- --------------------------------------------------------

--
-- Table structure for table `userregistration`
--

CREATE TABLE `userregistration` (
  `id` int(11) NOT NULL,
  `regNo` varchar(255) NOT NULL,
  `firstName` varchar(255) NOT NULL,
  `middleName` varchar(255) NOT NULL,
  `lastName` varchar(255) NOT NULL,
  `gender` varchar(255) NOT NULL,
  `contactNo` bigint(20) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `regDate` timestamp NOT NULL DEFAULT current_timestamp(),
  `updationDate` varchar(45) NOT NULL,
  `passUdateDate` varchar(45) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `userregistration`
--

INSERT INTO `userregistration` (`id`, `regNo`, `firstName`, `middleName`, `lastName`, `gender`, `contactNo`, `email`, `password`, `regDate`, `updationDate`, `passUdateDate`) VALUES
(20, 'CA003', 'Richard', 'J.', 'Summers', 'Male', 1325658800, 'richards@mail.com', 'e10adc3949ba59abbe56e057f20f883e', '2020-11-05 04:54:33', '', ''),
(21, 'CA004', 'Ross', 'S.', 'Daniels', 'Male', 6958545850, 'ross@mail.com', 'e10adc3949ba59abbe56e057f20f883e', '2021-03-05 04:19:44', '06-03-2021 10:15:29', '06-03-2021 10:35:38'),
(22, 'CA005', 'Colin', 'B', 'Greenwood', 'Male', 7541112050, 'colin@gmail.com', 'e10adc3949ba59abbe56e057f20f883e', '2021-03-06 16:29:57', '', ''),
(24, 'CA006', 'Jennifer', 'J.', 'Frye', 'Female', 7895555544, 'jennifer@mail.com', 'e10adc3949ba59abbe56e057f20f883e', '2022-04-03 14:31:50', '', '03-04-2022 08:21:07'),
(25, 'CA007', 'Bonnie', 'J.', 'Lamar', 'Female', 4580001014, 'bonnie@mail.com', 'e10adc3949ba59abbe56e057f20f883e', '2022-04-03 14:51:00', '', ''),
(26, 'CA008', 'Adam', 'A.', 'Rios', 'Male', 4785690010, 'adam@mail.com', 'e10adc3949ba59abbe56e057f20f883e', '2022-04-03 14:52:28', '', ''),
(27, 'CA009', 'Nancy', 'W.', 'Vasquez', 'Female', 3547777770, 'nancy@mail.com', 'e10adc3949ba59abbe56e057f20f883e', '2022-04-03 14:53:19', '', ''),
(28, 'CA010', 'Jerry', 'A.', 'Burdine', 'Male', 8520001450, 'jerry@mail.com', 'e10adc3949ba59abbe56e057f20f883e', '2022-04-03 14:53:58', '', ''),
(29, 'CA011', 'James', 'K.', 'Fischer', 'Male', 4785470014, 'jamesf@mail.com', 'e10adc3949ba59abbe56e057f20f883e', '2022-04-03 14:54:44', '', ''),
(30, 'CA012', 'Darlene', 'D.', 'Kenyon', 'Female', 3547896580, 'darlene@mail.com', 'e10adc3949ba59abbe56e057f20f883e', '2022-04-03 14:57:04', '', ''),
(31, 'CA013', 'Joseph', 'H.', 'Peterson', 'Male', 4587450010, 'joseph@mail.com', 'e10adc3949ba59abbe56e057f20f883e', '2022-04-03 14:57:51', '', ''),
(32, 'CA014', 'Liam', 'K.', 'Moore', 'Male', 7854441014, 'liamoore@mail.com', '5f4dcc3b5aa765d61d8327deb882cf99', '2022-04-03 15:00:04', '', ''),
(35, 'CA014', 'Liam', 'K.', 'Moore', 'Male', 7854441014, 'liamoore@mail.com', '123456', '2022-04-03 15:00:04', '', ''),
(36, 'CA002', 'Bruce', 'E.', 'Murphy', 'Male', 1346565650, 'bruce@mail.com', 'Password@123', '2020-11-05 04:46:33', '', '');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `attendance`
--
ALTER TABLE `attendance`
  ADD KEY `regno` (`regno`);

--
-- Indexes for table `courses`
--
ALTER TABLE `courses`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `feedback`
--
ALTER TABLE `feedback`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `registration`
--
ALTER TABLE `registration`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `rooms`
--
ALTER TABLE `rooms`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `states`
--
ALTER TABLE `states`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblStudent`
--
ALTER TABLE `tblStudent`
  ADD PRIMARY KEY (`regno`);

--
-- Indexes for table `userlog`
--
ALTER TABLE `userlog`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `userregistration`
--
ALTER TABLE `userregistration`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `courses`
--
ALTER TABLE `courses`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `feedback`
--
ALTER TABLE `feedback`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `registration`
--
ALTER TABLE `registration`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `rooms`
--
ALTER TABLE `rooms`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `states`
--
ALTER TABLE `states`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=37;

--
-- AUTO_INCREMENT for table `userlog`
--
ALTER TABLE `userlog`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;

--
-- AUTO_INCREMENT for table `userregistration`
--
ALTER TABLE `userregistration`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=37;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `attendance`
--
ALTER TABLE `attendance`
  ADD CONSTRAINT `attendance_ibfk_1` FOREIGN KEY (`regno`) REFERENCES `tblStudent` (`regno`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
