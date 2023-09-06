-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 01, 2023 at 08:38 PM
-- Server version: 10.4.28-MariaDB
-- PHP Version: 8.0.28

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `quiz-app`
--
CREATE DATABASE IF NOT EXISTS `quiz-app` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `quiz-app`;

-- --------------------------------------------------------

--
-- Table structure for table `questions`
--

DROP TABLE IF EXISTS `questions`;
CREATE TABLE `questions` (
  `qid` int(11) NOT NULL,
  `qno` int(11) NOT NULL,
  `question` text NOT NULL,
  `ans1` text NOT NULL,
  `ans2` text NOT NULL,
  `ans3` text NOT NULL,
  `ans4` text NOT NULL,
  `correct_answer` varchar(1) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- RELATIONSHIPS FOR TABLE `questions`:
--

--
-- Dumping data for table `questions`
--

INSERT INTO `questions` (`qid`, `qno`, `question`, `ans1`, `ans2`, `ans3`, `ans4`, `correct_answer`) VALUES
(9, 5, 'What is a correct way to add a comment in PHP?', '&lt;!--&hellip;--&gt;', '/*&hellip;*/', '*\\..\\*', '&lt;comment&gt;&hellip;&lt;/comment&gt;', 'b'),
(8, 3, 'What is back-end development?', 'It is what users update on the website.', 'It is working on server-side software which focuses on everything you can\'t see on a website.', 'It is what users update on the website.', 'none of these', 'b'),
(7, 2, 'What does HTML stands for?', 'HyperText', 'Markup Language', 'HyperText Markup Language', 'none of these', 'c'),
(6, 1, 'What does PHP stand for?', 'Personal Hypertext Processor\r\n', 'Private Home Page', 'Personal Home Page', 'PHP: Hypertext Preprocessor', 'd'),
(5, 4, 'How do you get information from a form that is submitted using the &quot;get&quot; method?', '$_GET[];', 'Request.Form;', 'Request.QueryString;', 'none of these', 'a'),
(10, 6, 'When using the POST method, variables are displayed in the URL:', 'True', 'False', 'Can\'t say', 'none of these', 'b'),
(11, 7, ' What are the common Programming languages used in frontend Development?', 'HTML, CSS and JavaScript', 'PHP and Python', 'HTML, CSS, Python and PHP', 'Java', 'a'),
(12, 8, 'What is Front-end web development?', 'Everything you see on a web page is at the front end of a website, including images, buttons, links, animations, and other elements.', 'A person who design User Interfaces', 'It is Data storage, data organization, and client-side functionality are all their responsibilities.', 'none of the above', 'a'),
(13, 9, 'Which one is not a JavaScript framework?', 'Vue.js', 'React', 'Angular Js', 'Bootstrap ', 'd'),
(14, 10, 'Which programming language is used to make websites interactive?', 'PHP', 'JavaScript', 'Python', 'Java', 'b');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `email` varchar(225) NOT NULL,
  `played_on` varchar(225) NOT NULL,
  `score` int(11) NOT NULL DEFAULT 0
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- RELATIONSHIPS FOR TABLE `users`:
--

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `email`, `played_on`, `score`) VALUES
(84, 'test@gmai.com', '2023-06-01 19:00:47', 12),
(83, 'ken@gmail.com', '2023-06-01 17:24:13', 0),
(82, 'bseg@gmail.com', '2023-06-01 17:17:37', 5);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `questions`
--
ALTER TABLE `questions`
  ADD PRIMARY KEY (`qid`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `questions`
--
ALTER TABLE `questions`
  MODIFY `qid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=85;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
