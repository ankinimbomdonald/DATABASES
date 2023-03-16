-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 16, 2023 at 12:16 PM
-- Server version: 10.4.27-MariaDB
-- PHP Version: 8.2.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `skye8`
--

-- --------------------------------------------------------

--
-- Table structure for table `logbook`
--

CREATE TABLE `logbook` (
  `id` int(120) NOT NULL,
  `users_id` int(120) NOT NULL,
  `title` varchar(10) NOT NULL,
  `description` varchar(10) NOT NULL,
  `date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `logbook`
--

INSERT INTO `logbook` (`id`, `users_id`, `title`, `description`, `date`) VALUES
(1, 1, 'php', 'basics of ', '2023-03-16'),
(2, 2, 'html', 'basics of ', '2023-03-16'),
(3, 3, 'css', 'basics of ', '2023-03-10'),
(4, 4, 'bootstrap', 'basics of ', '2023-03-16'),
(5, 5, 'js', 'basics of ', '2023-03-12'),
(6, 6, 'design spr', 'complete', '2023-03-07'),
(7, 7, 'github', 'work compl', '2023-03-08'),
(8, 8, 'js', 'toturials', '2023-03-13');

-- --------------------------------------------------------

--
-- Table structure for table `task`
--

CREATE TABLE `task` (
  `id` int(11) NOT NULL,
  `users_id` int(120) NOT NULL,
  `title` varchar(120) NOT NULL,
  `score` int(120) NOT NULL,
  `deathline` date NOT NULL,
  `date_created` date NOT NULL,
  `content` varchar(120) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `task`
--

INSERT INTO `task` (`id`, `users_id`, `title`, `score`, `deathline`, `date_created`, `content`) VALUES
(1, 1, 'html', 16, '2023-03-16', '2023-03-14', 'login system'),
(2, 1, 'php', 20, '2023-03-16', '2023-03-14', 'create an authentification system'),
(3, 2, 'php', 13, '2023-03-16', '2023-03-14', 'web calculator'),
(4, 2, 'html', 20, '2023-03-16', '2023-03-14', 'ims page'),
(5, 3, 'html', 15, '2023-03-16', '2023-03-14', 'CV CREATOR'),
(6, 3, 'php', 20, '2023-03-16', '2023-03-14', 'JAVA '),
(7, 4, 'php', 20, '2023-03-16', '2023-03-14', 'BASIC OF PHP'),
(8, 4, 'php', 14, '2023-03-17', '2023-03-14', ' user authenticator OOP'),
(9, 5, 'css', 20, '2023-03-16', '2023-03-14', 'ims page styling'),
(10, 5, 'html', 10, '2023-03-16', '2023-03-14', 'table'),
(11, 6, 'html', 20, '2023-03-16', '2023-03-14', 'BASICS OF JAVASCRIPT'),
(12, 6, 'php', 13, '2023-03-16', '2023-03-14', 'DATABASE BASICS'),
(13, 7, 'PHP', 11, '2023-03-16', '2023-03-14', 'MY SQL CONNECTION'),
(14, 7, 'php', 20, '2023-03-16', '2023-03-14', 'INTRODUCTION TO PHP'),
(15, 8, 'html', 18, '2023-03-16', '2023-03-14', 'images'),
(16, 8, 'html', 18, '2023-03-16', '2023-03-14', 'blocks and inline');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `name` varchar(120) NOT NULL,
  `email` varchar(120) NOT NULL,
  `phone_number` int(120) NOT NULL,
  `role` varchar(120) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `phone_number`, `role`) VALUES
(1, 'sandrine', 'sandrine@gmail.com', 680187829, 'intern'),
(2, 'densel', 'densel5@gmail.com', 68044444, 'intern'),
(3, 'donald', 'donald120@gmail.com', 680187669, 'intern'),
(4, 'divina', 'divina@gmail.com', 680187623, 'intern'),
(5, 'karl', 'karl@gmail.com', 680187644, 'intern'),
(6, 'goddy', 'goddy@gmail.com', 67787829, 'admin'),
(7, 'albright', 'albright@gmail.com', 680187609, 'intern'),
(8, 'lohn', 'john@gmail.com', 68010000, 'intern'),
(9, 'calif', 'calif120@gmail.com', 674918909, 'admin'),
(10, 'synteche', 'syntyche@gmail.com', 680187688, 'intern');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `logbook`
--
ALTER TABLE `logbook`
  ADD PRIMARY KEY (`id`),
  ADD KEY `users_id` (`users_id`);

--
-- Indexes for table `task`
--
ALTER TABLE `task`
  ADD PRIMARY KEY (`id`),
  ADD KEY `users_id` (`users_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `logbook`
--
ALTER TABLE `logbook`
  MODIFY `id` int(120) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `task`
--
ALTER TABLE `task`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `logbook`
--
ALTER TABLE `logbook`
  ADD CONSTRAINT `logbook_ibfk_1` FOREIGN KEY (`users_id`) REFERENCES `users` (`id`);

--
-- Constraints for table `task`
--
ALTER TABLE `task`
  ADD CONSTRAINT `task_ibfk_1` FOREIGN KEY (`users_id`) REFERENCES `users` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

SELECT * FROM `users` WHERE role = 'supervisor';

SELECT * FROM `users` WHERE role = 'intern';

SELECT * FROM `task` WHERE users_id = '3';

SELECT * FROM `task` 
LEFT JOIN users
ON task.id=users.id
WHERE users_id='3';

SELECT * FROM `logbook`
LEFT JOIN users
ON logbook.id=users.id;

SELECT SUM(score)
FROM task;

SELECT MAX(score)
FROM `task` 

SELECT * FROM `task` WHERE score = '20';


SELECT MIN(score)
FROM `task` 

SELECT * FROM `task` WHERE score = '10';