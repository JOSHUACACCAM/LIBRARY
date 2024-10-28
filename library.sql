-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Oct 11, 2024 at 02:41 PM
-- Server version: 10.4.25-MariaDB
-- PHP Version: 7.4.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `library`
--

-- --------------------------------------------------------

--
-- Table structure for table `authors`
--

CREATE TABLE `authors` (
  `authorid` int(9) NOT NULL,
  `authorname` char(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `authors`
--

INSERT INTO `authors` (`authorid`, `authorname`) VALUES
(1, 'James Brown'),
(2, 'John Davis'),
(3, 'Jessica Smith'),
(4, 'David Miller'),
(5, 'Laura Miller'),
(6, 'Sarah Williams'),
(7, 'Laura Smith'),
(8, 'Rachel Jones'),
(9, 'Laura Miller'),
(10, 'Emily Jones'),
(11, 'Matthew Smith'),
(12, 'Michael Taylor'),
(13, 'David Brown'),
(14, 'Sarah Garcia'),
(15, 'John Martinez'),
(16, 'James Garcia'),
(17, 'Rachel Williams'),
(18, 'Laura Johnson'),
(19, 'Emily Davis'),
(20, 'Matthew Garcia'),
(21, 'David Smith'),
(22, 'Jessica Martinez'),
(23, 'Michael Jones'),
(24, 'John Williams'),
(25, 'James Taylor'),
(26, 'Rachel Davis'),
(27, 'Sarah Brown'),
(28, 'Laura Garcia'),
(29, 'David Martinez'),
(30, 'Jessica Williams'),
(31, 'John Smith'),
(32, 'Emily Brown'),
(33, 'James Davis'),
(34, 'Rachel Garcia'),
(35, 'Laura Martinez'),
(36, 'Matthew Johnson'),
(37, 'Michael Davis'),
(38, 'Jessica Taylor'),
(39, 'David Williams'),
(40, 'John Garcia'),
(41, 'Sarah Smith'),
(42, 'Emily Johnson'),
(43, 'Rachel Brown'),
(44, 'Laura Williams'),
(45, 'David Taylor'),
(46, 'Matthew Davis'),
(47, 'John Brown'),
(48, 'Jessica Johnson'),
(49, 'Sarah Martinez'),
(50, 'James Garcia'),
(51, 'Emily Davis'),
(52, 'Rachel Smith'),
(53, 'Laura Taylor'),
(54, 'John Davis'),
(55, 'David Garcia'),
(56, 'James Brown'),
(57, 'Michael Williams'),
(58, 'Sarah Davis'),
(59, 'Laura Martinez'),
(60, 'Matthew Johnson'),
(61, 'Emily Smith'),
(62, 'Rachel Taylor'),
(63, 'David Brown'),
(64, 'James Garcia'),
(65, 'John Martinez'),
(66, 'Sarah Williams'),
(67, 'Jessica Davis'),
(68, 'Laura Garcia'),
(69, 'Michael Smith'),
(70, 'Emily Brown'),
(71, 'Rachel Garcia'),
(72, 'John Taylor'),
(73, 'James Davis'),
(74, 'Laura Williams'),
(75, 'Matthew Martinez'),
(76, 'Sarah Brown'),
(77, 'Michael Davis'),
(78, 'Jessica Garcia'),
(79, 'Emily Johnson'),
(80, 'Rachel Brown'),
(81, 'James Williams'),
(82, 'David Smith'),
(83, 'John Davis'),
(84, 'Sarah Taylor'),
(85, 'Laura Garcia'),
(86, 'Matthew Johnson'),
(87, 'Emily Williams'),
(88, 'Michael Smith'),
(89, 'David Martinez'),
(90, 'Jessica Garcia'),
(91, 'Sarah Brown'),
(92, 'John Johnson'),
(93, 'Rachel Davis'),
(94, 'James Williams'),
(95, 'Laura Garcia'),
(96, 'David Brown'),
(97, 'Sarah Johnson'),
(98, 'Emily Taylor'),
(99, 'Michael Davis'),
(100, 'Rachel Williams');

-- --------------------------------------------------------

--
-- Table structure for table `books`
--

CREATE TABLE `books` (
  `bookid` int(9) NOT NULL,
  `title` char(255) NOT NULL,
  `genre` char(255) NOT NULL,
  `authorid` int(9) NOT NULL,
  `bookCode` varchar(5) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `books`
--

INSERT INTO `books` (`bookid`, `title`, `genre`, `authorid`, `bookCode`) VALUES
(1, 'Lost and Found', 'Science Fiction', 17, '206AZ'),
(2, 'Forgotten Memories', 'Fantasy', 51, '745NG'),
(3, 'Shadows of the Past', 'Fiction', 90, '944UU'),
(4, 'Whispers in the Dark', 'Romance', 77, '498NF'),
(5, 'The Last Kingdom', 'Fiction', 33, '837YO'),
(6, 'Beyond the Stars', 'Horror', 25, '831MG'),
(7, 'Beyond the Stars', 'Science Fiction', 69, '447WX'),
(8, 'The Silent Ocean', 'Fiction', 57, '861IJ'),
(9, 'The Silent Ocean', 'Fiction', 11, '231RZ'),
(10, 'Whispers in the Dark', 'Biography', 84, '802VS'),
(11, 'A Journey Through Time', 'Biography', 85, '730TW'),
(12, 'The Secret Life', 'Non-Fiction', 36, '283VG'),
(13, 'Mystery of the Night', 'Biography', 30, '279TE'),
(14, 'The Secret Life', 'Biography', 52, '104MB'),
(15, 'Beyond the Stars', 'Romance', 34, '558FC'),
(16, 'The Last Kingdom', 'Mystery', 69, '594QE'),
(17, 'Mystery of the Night', 'Horror', 27, '486WZ'),
(18, 'The Silent Ocean', 'Fiction', 20, '815QT'),
(19, 'Forgotten Memories', 'Fiction', 90, '273SM'),
(20, 'Shadows of the Past', 'Romance', 66, '194UE'),
(21, 'Whispers in the Dark', 'Science Fiction', 41, '362WY'),
(22, 'Dreams of the Future', 'Fiction', 56, '591VR'),
(23, 'The Secret Life', 'Biography', 32, '752OZ'),
(24, 'Lost and Found', 'Horror', 93, '860IW'),
(25, 'A Journey Through Time', 'Fantasy', 24, '219CV'),
(26, 'Mystery of the Night', 'Romance', 71, '485AX'),
(27, 'Forgotten Memories', 'Non-Fiction', 17, '604EL'),
(28, 'The Silent Ocean', 'Fiction', 73, '972GJ'),
(29, 'Beyond the Stars', 'Fantasy', 47, '520HW'),
(30, 'Whispers in the Dark', 'Science Fiction', 12, '193NP'),
(31, 'Lost and Found', 'Romance', 58, '326QR'),
(32, 'Forgotten Memories', 'Non-Fiction', 35, '410MV'),
(33, 'Shadows of the Past', 'Fiction', 22, '841TE'),
(34, 'Dreams of the Future', 'Mystery', 62, '737XB'),
(35, 'A Journey Through Time', 'Fantasy', 45, '946YH'),
(36, 'The Silent Ocean', 'Fiction', 74, '563KF'),
(37, 'Whispers in the Dark', 'Non-Fiction', 10, '621JD'),
(38, 'Beyond the Stars', 'Fiction', 51, '484CU'),
(39, 'Mystery of the Night', 'Fantasy', 67, '782DY'),
(40, 'The Last Kingdom', 'Biography', 11, '990QU'),
(41, 'Forgotten Memories', 'Romance', 29, '605PL'),
(42, 'Lost and Found', 'Science Fiction', 95, '429SV'),
(43, 'Dreams of the Future', 'Non-Fiction', 31, '348RC'),
(44, 'Shadows of the Past', 'Fiction', 40, '179FD'),
(45, 'The Secret Life', 'Fantasy', 70, '993OY'),
(46, 'A Journey Through Time', 'Science Fiction', 64, '113PU'),
(47, 'The Last Kingdom', 'Non-Fiction', 28, '602TM'),
(48, 'Whispers in the Dark', 'Romance', 36, '450LK'),
(49, 'Beyond the Stars', 'Horror', 21, '514NY'),
(50, 'Shadows of the Past', 'Science Fiction', 80, '896TG'),
(51, 'The Silent Ocean', 'Fiction', 14, '542HR'),
(52, 'Dreams of the Future', 'Mystery', 68, '453XI'),
(53, 'The Last Kingdom', 'Non-Fiction', 55, '931QW'),
(54, 'A Journey Through Time', 'Romance', 26, '682ML'),
(55, 'Forgotten Memories', 'Fantasy', 83, '490GF'),
(56, 'The Secret Life', 'Fiction', 49, '179HY'),
(57, 'Whispers in the Dark', 'Science Fiction', 88, '860PK'),
(58, 'Lost and Found', 'Non-Fiction', 99, '210ER'),
(59, 'The Last Kingdom', 'Romance', 43, '753WB'),
(60, 'The Silent Ocean', 'Mystery', 89, '905RT'),
(61, 'Forgotten Memories', 'Biography', 37, '304VW'),
(62, 'Dreams of the Future', 'Non-Fiction', 63, '842DN'),
(63, 'A Journey Through Time', 'Horror', 39, '575QA'),
(64, 'Beyond the Stars', 'Science Fiction', 50, '492GB'),
(65, 'Shadows of the Past', 'Fantasy', 92, '873YO'),
(66, 'The Secret Life', 'Fiction', 34, '721AF'),
(67, 'Dreams of the Future', 'Non-Fiction', 46, '238NL'),
(68, 'Lost and Found', 'Horror', 53, '667WK'),
(69, 'Mystery of the Night', 'Fantasy', 79, '173RU'),
(70, 'Whispers in the Dark', 'Fiction', 20, '946ME'),
(71, 'Shadows of the Past', 'Romance', 96, '522SX'),
(72, 'The Silent Ocean', 'Mystery', 57, '411BL'),
(73, 'Beyond the Stars', 'Science Fiction', 13, '149GV'),
(74, 'Whispers in the Dark', 'Non-Fiction', 75, '682AD'),
(75, 'The Last Kingdom', 'Fiction', 97, '407WP'),
(76, 'A Journey Through Time', 'Fantasy', 66, '943PC'),
(77, 'Forgotten Memories', 'Romance', 82, '261KS'),
(78, 'Lost and Found', 'Horror', 48, '537TJ'),
(79, 'Shadows of the Past', 'Science Fiction', 86, '194BQ'),
(80, 'Beyond the Stars', 'Fiction', 33, '920XV'),
(81, 'The Last Kingdom', 'Fantasy', 19, '670HW'),
(82, 'Whispers in the Dark', 'Non-Fiction', 98, '103ZA'),
(83, 'Forgotten Memories', 'Romance', 76, '429JE'),
(84, 'Shadows of the Past', 'Biography', 15, '716QN'),
(85, 'Dreams of the Future', 'Mystery', 59, '241XC'),
(86, 'The Silent Ocean', 'Science Fiction', 71, '964VN'),
(87, 'Beyond the Stars', 'Fantasy', 81, '291ZE'),
(88, 'Lost and Found', 'Horror', 44, '572WU'),
(89, 'Forgotten Memories', 'Romance', 61, '645DL'),
(90, 'The Secret Life', 'Non-Fiction', 16, '827UV'),
(91, 'Shadows of the Past', 'Fantasy', 87, '238KO'),
(92, 'Mystery of the Night', 'Romance', 18, '614FJ'),
(93, 'The Last Kingdom', 'Biography', 99, '347LH'),
(94, 'A Journey Through Time', 'Horror', 60, '912BG'),
(95, 'The Silent Ocean', 'Science Fiction', 24, '657IM'),
(96, 'Dreams of the Future', 'Mystery', 54, '479CW'),
(97, 'Forgotten Memories', 'Fiction', 38, '801SD'),
(98, 'Whispers in the Dark', 'Biography', 25, '210KA'),
(99, 'Shadows of the Past', 'Science Fiction', 72, '158TE'),
(100, 'Lost and Found', 'Romance', 42, '397OU');

-- --------------------------------------------------------

--
-- Table structure for table `books_collection`
--

CREATE TABLE `books_collection` (
  `collectionid` int(9) NOT NULL,
  `bookid` int(9) NOT NULL,
  `authorid` int(9) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `books_collection`
--

INSERT INTO `books_collection` (`collectionid`, `bookid`, `authorid`) VALUES
(1, 1, 17),
(2, 2, 51),
(3, 3, 90),
(4, 4, 77),
(5, 5, 33),
(6, 6, 25),
(7, 7, 69),
(8, 8, 57),
(9, 9, 11),
(10, 10, 84),
(11, 11, 85),
(12, 12, 36),
(13, 13, 30),
(14, 14, 52),
(15, 15, 34),
(16, 16, 69),
(17, 17, 27),
(18, 18, 20),
(19, 19, 90),
(20, 20, 66),
(21, 21, 41),
(22, 22, 56),
(23, 23, 32),
(24, 24, 93),
(25, 25, 24),
(26, 26, 71),
(27, 27, 17),
(28, 28, 73),
(29, 29, 47),
(30, 30, 12),
(31, 31, 58),
(32, 32, 35),
(33, 33, 22),
(34, 34, 62),
(35, 35, 45),
(36, 36, 74),
(37, 37, 10),
(38, 38, 51),
(39, 39, 67),
(40, 40, 11),
(41, 41, 29),
(42, 42, 95),
(43, 43, 31),
(44, 44, 40),
(45, 45, 70),
(46, 46, 64),
(47, 47, 28),
(48, 48, 36),
(49, 49, 21),
(50, 50, 80),
(51, 51, 14),
(52, 52, 68),
(53, 53, 55),
(54, 54, 26),
(55, 55, 83),
(56, 56, 49),
(57, 57, 88),
(58, 58, 99),
(59, 59, 43),
(60, 60, 89),
(61, 61, 37),
(62, 62, 63),
(63, 63, 39),
(64, 64, 50),
(65, 65, 92),
(66, 66, 34),
(67, 67, 46),
(68, 68, 53),
(69, 69, 79),
(70, 70, 20),
(71, 71, 96),
(72, 72, 57),
(73, 73, 13),
(74, 74, 75),
(75, 75, 97),
(76, 76, 66),
(77, 77, 82),
(78, 78, 48),
(79, 79, 86),
(80, 80, 33),
(81, 81, 19),
(82, 82, 98),
(83, 83, 76),
(84, 84, 15),
(85, 85, 59),
(86, 86, 71),
(87, 87, 81),
(88, 88, 44),
(89, 89, 61),
(90, 90, 16),
(91, 91, 87),
(92, 92, 18),
(93, 93, 99),
(94, 94, 60),
(95, 95, 24),
(96, 96, 54),
(97, 97, 38),
(98, 98, 25),
(99, 99, 72),
(100, 100, 42);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `userid` int(9) NOT NULL,
  `email` varchar(500) NOT NULL,
  `username` char(255) NOT NULL,
  `password` text NOT NULL,
  `access_level` varchar(10) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `token` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `authors`
--
ALTER TABLE `authors`
  ADD PRIMARY KEY (`authorid`);

--
-- Indexes for table `books`
--
ALTER TABLE `books`
  ADD PRIMARY KEY (`bookid`),
  ADD KEY `authorid` (`authorid`);

--
-- Indexes for table `books_collection`
--
ALTER TABLE `books_collection`
  ADD PRIMARY KEY (`collectionid`),
  ADD KEY `bookid` (`bookid`),
  ADD KEY `authorid` (`authorid`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`userid`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `authors`
--
ALTER TABLE `authors`
  MODIFY `authorid` int(9) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=101;

--
-- AUTO_INCREMENT for table `books`
--
ALTER TABLE `books`
  MODIFY `bookid` int(9) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=101;

--
-- AUTO_INCREMENT for table `books_collection`
--
ALTER TABLE `books_collection`
  MODIFY `collectionid` int(9) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=101;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `userid` int(9) NOT NULL AUTO_INCREMENT;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `books`
--
ALTER TABLE `books`
  ADD CONSTRAINT `books_ibfk_1` FOREIGN KEY (`authorid`) REFERENCES `authors` (`authorid`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `books_collection`
--
ALTER TABLE `books_collection`
  ADD CONSTRAINT `books_collection_ibfk_1` FOREIGN KEY (`bookid`) REFERENCES `books` (`bookid`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `books_collection_ibfk_2` FOREIGN KEY (`authorid`) REFERENCES `authors` (`authorid`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
