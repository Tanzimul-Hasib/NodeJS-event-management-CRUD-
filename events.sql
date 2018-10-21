-- phpMyAdmin SQL Dump
-- version 4.7.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Oct 21, 2018 at 02:39 PM
-- Server version: 10.1.29-MariaDB
-- PHP Version: 7.2.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `events`
--

-- --------------------------------------------------------

--
-- Table structure for table `e_events`
--

CREATE TABLE `e_events` (
  `e_id` int(11) NOT NULL,
  `e_name` varchar(200) DEFAULT NULL,
  `e_location` text,
  `e_desc` text,
  `e_start_date` datetime DEFAULT NULL,
  `e_end_date` datetime DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `e_events`
--

INSERT INTO `e_events` (`e_id`, `e_name`, `e_location`, `e_desc`, `e_start_date`, `e_end_date`) VALUES
(3, 'Having Tea2', 'thjy,m', 'ghmgh', '2018-10-17 00:00:00', '2018-10-17 00:00:00'),
(1, 'my new event', 'current\r\n', 'new', '2018-10-21 00:00:00', '2018-10-21 00:00:00'),
(2, 'Having Tea', 'Dhanmondi 11/A', 'Montu miar dokaner cha, with a Marlboro Advance.', '2018-10-17 00:00:00', '2018-10-17 00:00:00'),
(85, 's', 's', 's', '2018-10-21 00:00:00', '2018-10-21 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `sess_sessions`
--

CREATE TABLE `sess_sessions` (
  `sess_id` int(11) NOT NULL,
  `sess_name` text,
  `sess_location` text,
  `sess_desc` text,
  `sess_start_time` varchar(100) DEFAULT NULL,
  `sess_end_time` varchar(100) DEFAULT NULL,
  `t_id` int(11) DEFAULT NULL,
  `sess_name_bold` int(11) NOT NULL,
  `sess_name_italic` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `s_settings`
--

CREATE TABLE `s_settings` (
  `s_id` int(19) NOT NULL,
  `e_id` int(19) DEFAULT NULL,
  `params` text
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `t_time_table`
--

CREATE TABLE `t_time_table` (
  `t_id` int(11) NOT NULL,
  `t_name` varchar(200) DEFAULT NULL,
  `t_desc` text,
  `t_start_date` datetime DEFAULT NULL,
  `t_end_date` datetime DEFAULT NULL,
  `e_id` int(11) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `u_users`
--

CREATE TABLE `u_users` (
  `u_id` int(19) NOT NULL,
  `u_name` varchar(100) NOT NULL,
  `u_email` varchar(100) DEFAULT NULL,
  `u_password` text,
  `u_date_added` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `u_date_modified` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `e_events`
--
ALTER TABLE `e_events`
  ADD PRIMARY KEY (`e_id`);

--
-- Indexes for table `sess_sessions`
--
ALTER TABLE `sess_sessions`
  ADD PRIMARY KEY (`sess_id`);

--
-- Indexes for table `s_settings`
--
ALTER TABLE `s_settings`
  ADD PRIMARY KEY (`s_id`);

--
-- Indexes for table `t_time_table`
--
ALTER TABLE `t_time_table`
  ADD PRIMARY KEY (`t_id`);

--
-- Indexes for table `u_users`
--
ALTER TABLE `u_users`
  ADD PRIMARY KEY (`u_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `e_events`
--
ALTER TABLE `e_events`
  MODIFY `e_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=86;

--
-- AUTO_INCREMENT for table `sess_sessions`
--
ALTER TABLE `sess_sessions`
  MODIFY `sess_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=115;

--
-- AUTO_INCREMENT for table `s_settings`
--
ALTER TABLE `s_settings`
  MODIFY `s_id` int(19) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `t_time_table`
--
ALTER TABLE `t_time_table`
  MODIFY `t_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=107;

--
-- AUTO_INCREMENT for table `u_users`
--
ALTER TABLE `u_users`
  MODIFY `u_id` int(19) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
