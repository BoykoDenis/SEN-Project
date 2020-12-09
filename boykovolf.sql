-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Dec 09, 2020 at 09:40 AM
-- Server version: 5.7.31
-- PHP Version: 7.3.21

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `boykovolf`
--

-- --------------------------------------------------------

--
-- Table structure for table `author's table`
--

DROP TABLE IF EXISTS `author's table`;
CREATE TABLE IF NOT EXISTS `author's table` (
  `AuthorshipID` int(11) NOT NULL AUTO_INCREMENT,
  `AuthorID` int(11) NOT NULL,
  `BookID` int(11) NOT NULL,
  `GenreID` int(11) NOT NULL,
  PRIMARY KEY (`AuthorshipID`),
  UNIQUE KEY `AuthorID` (`AuthorID`,`BookID`,`GenreID`),
  UNIQUE KEY `AuthorID_2` (`AuthorID`,`BookID`),
  KEY `BookID_form_books` (`BookID`),
  KEY `GenreID_from_genres` (`GenreID`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Dumping data for table `author's table`
--

INSERT INTO `author's table` (`AuthorshipID`, `AuthorID`, `BookID`, `GenreID`) VALUES
(1, 1, 1, 1),
(2, 2, 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `authors`
--

DROP TABLE IF EXISTS `authors`;
CREATE TABLE IF NOT EXISTS `authors` (
  `AuthorID` int(11) NOT NULL AUTO_INCREMENT,
  `AuthorName` varchar(60) COLLATE utf8_bin NOT NULL,
  `General_Information` text COLLATE utf8_bin NOT NULL,
  PRIMARY KEY (`AuthorID`),
  KEY `AuthorName` (`AuthorName`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Dumping data for table `authors`
--

INSERT INTO `authors` (`AuthorID`, `AuthorName`, `General_Information`) VALUES
(1, 'Arkadij Strugackij', 'Very popular Rusian Sci-Fi, Dystopia, Utopia, Author who used to write in collaboration with his brother.'),
(2, 'Boris Strugackij', 'Very popular Rusian Sci-Fi, Dystopia, Utopia, Author who used to write in collaboration with his brother.'),
(3, 'Isaac Asimov', 'Isaac Asimov (c.  January 2, 1920 – April 6, 1992) was an American writer and professor of biochemistry at Boston University. He was known for his works of science fiction and popular science. Asimov was a prolific writer who wrote or edited more than 500 books and an estimated 90,000 letters and postcards.'),
(4, 'Arthur C. Clarke', 'Sir Arthur Charles Clarke (16 December 1917 – 19 March 2008) was an English science-fiction writer, science writer, futurist, inventor, undersea explorer, and television series host. '),
(9, 'Robert Sheckley', 'Robert Sheckley (July 16, 1928 – December 9, 2005) was an American writer. First published in the science-fiction magazines of the 1950s, his numerous quick-witted stories and novels were famously unpredictable, absurdist, and broadly comical. ');

-- --------------------------------------------------------

--
-- Table structure for table `books`
--

DROP TABLE IF EXISTS `books`;
CREATE TABLE IF NOT EXISTS `books` (
  `BookID` int(11) NOT NULL AUTO_INCREMENT,
  `Bookname` varchar(100) COLLATE utf8_bin NOT NULL,
  `rating` int(1) NOT NULL,
  `RateSubmitted` int(11) NOT NULL,
  `available_amount` int(11) NOT NULL,
  `General_Information` text COLLATE utf8_bin NOT NULL,
  PRIMARY KEY (`BookID`),
  KEY `Bookname` (`Bookname`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Dumping data for table `books`
--

INSERT INTO `books` (`BookID`, `Bookname`, `rating`, `RateSubmitted`, `available_amount`, `General_Information`) VALUES
(1, 'Monday Begins on Saturday', 0, 0, 10, 'Monday Begins on Saturday (Russian: Понедельник начинается в субботу) is a 1965 science fantasy novel by Soviet writers Boris and Arkady Strugatsky, with illustrations by Yevgeniy Migunov. Set in a fictional town in northern Russia, where research in magic occurs, the novel is a satire of Soviet scientific research institutes. It offers an idealistic view of the scientific work ethic, as reflected in the title which suggests that the scientists\' weekends are nonexistent. Their idealism is contrasted by an inept administration and a dishonest, show-horse professor. '),
(2, 'The Final Circle of Paradise', 0, 0, 11, 'The Final Circle of Paradise (Russian: Хищные вещи века, romanized: Khishnye veshi veka, lit. \'Predatory Things of the Century\') is a science fiction novel by Arkady and Boris Strugatsky (also spelled Strugatski or Strugatskii) set in the first half of the 21st century. It was first published in the USSR in 1965 and the first English edition, translated by Leonid Renen, was published by DAW Books in 1976. The literal English translation of the original Russian title is \"Predatory Things of Our Times\". This is a line from Andrei Voznesensky\'s poem Beatnik\'s Monologue. Machine Riot (1961).'),
(3, 'Foundation', 0, 0, 3, 'blabla bla');

-- --------------------------------------------------------

--
-- Table structure for table `genres`
--

DROP TABLE IF EXISTS `genres`;
CREATE TABLE IF NOT EXISTS `genres` (
  `GenreID` int(11) NOT NULL AUTO_INCREMENT,
  `GenreName` varchar(30) COLLATE utf8_bin NOT NULL,
  PRIMARY KEY (`GenreID`),
  KEY `GenreName` (`GenreName`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Dumping data for table `genres`
--

INSERT INTO `genres` (`GenreID`, `GenreName`) VALUES
(3, 'Action and adventure'),
(2, 'Fantasy'),
(4, 'Horror'),
(5, 'Mystery'),
(1, 'Sci-fi'),
(6, 'Western');

-- --------------------------------------------------------

--
-- Table structure for table `reviews`
--

DROP TABLE IF EXISTS `reviews`;
CREATE TABLE IF NOT EXISTS `reviews` (
  `ReviewID` int(11) NOT NULL AUTO_INCREMENT,
  `ReviewText` text COLLATE utf8_bin NOT NULL,
  PRIMARY KEY (`ReviewID`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Dumping data for table `reviews`
--

INSERT INTO `reviews` (`ReviewID`, `ReviewText`) VALUES
(1, 'Toto bolo to najlepsie co som kedy cital'),
(2, 'Moc sa mi nepacilo'),
(3, 'Dominik je kokot');

-- --------------------------------------------------------

--
-- Table structure for table `userbooks`
--

DROP TABLE IF EXISTS `userbooks`;
CREATE TABLE IF NOT EXISTS `userbooks` (
  `LoanID` int(11) NOT NULL AUTO_INCREMENT,
  `UserID` int(11) NOT NULL,
  `BookID` int(11) NOT NULL,
  PRIMARY KEY (`LoanID`),
  UNIQUE KEY `UserID` (`UserID`,`BookID`),
  KEY `UB_booksID_from_books` (`BookID`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Dumping data for table `userbooks`
--

INSERT INTO `userbooks` (`LoanID`, `UserID`, `BookID`) VALUES
(1, 1, 1),
(2, 1, 2);

-- --------------------------------------------------------

--
-- Table structure for table `userreviewbook`
--

DROP TABLE IF EXISTS `userreviewbook`;
CREATE TABLE IF NOT EXISTS `userreviewbook` (
  `feedbackID` int(11) NOT NULL AUTO_INCREMENT,
  `UserID` int(11) NOT NULL,
  `ReviewID` int(11) NOT NULL,
  `BookID` int(11) NOT NULL,
  PRIMARY KEY (`feedbackID`),
  UNIQUE KEY `UserID` (`UserID`,`BookID`),
  UNIQUE KEY `ReviewID` (`ReviewID`),
  KEY `URB_booksID_from_books` (`BookID`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Dumping data for table `userreviewbook`
--

INSERT INTO `userreviewbook` (`feedbackID`, `UserID`, `ReviewID`, `BookID`) VALUES
(1, 3, 1, 3),
(2, 3, 3, 1),
(7, 1, 2, 3);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
CREATE TABLE IF NOT EXISTS `users` (
  `UserID` int(11) NOT NULL AUTO_INCREMENT,
  `Username` varchar(30) COLLATE utf8_bin NOT NULL,
  `User_email` text COLLATE utf8_bin NOT NULL,
  `password` varchar(40) COLLATE utf8_bin NOT NULL,
  `privileges` int(1) NOT NULL,
  `online_status` tinyint(1) NOT NULL,
  PRIMARY KEY (`UserID`),
  KEY `Username` (`Username`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`UserID`, `Username`, `User_email`, `password`, `privileges`, `online_status`) VALUES
(1, 'Doctor', 'denya.boyko@gmail.com', 'apple', 1, 1),
(2, 'SteamPunk123', 'arrayon@hotmail.com', 'filip', 0, 1),
(3, 'amthos', 'volf.t@gjh.sk', 'tomas', 1, 0);

--
-- Constraints for dumped tables
--

--
-- Constraints for table `author's table`
--
ALTER TABLE `author's table`
  ADD CONSTRAINT `AuthorID_from_authors` FOREIGN KEY (`AuthorID`) REFERENCES `authors` (`AuthorID`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `BookID_form_books` FOREIGN KEY (`BookID`) REFERENCES `books` (`BookID`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `GenreID_from_genres` FOREIGN KEY (`GenreID`) REFERENCES `genres` (`GenreID`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `userbooks`
--
ALTER TABLE `userbooks`
  ADD CONSTRAINT `UB_booksID_from_books` FOREIGN KEY (`BookID`) REFERENCES `books` (`BookID`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `UB_usersID_from_users` FOREIGN KEY (`UserID`) REFERENCES `users` (`UserID`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `userreviewbook`
--
ALTER TABLE `userreviewbook`
  ADD CONSTRAINT `URB_booksID_from_books` FOREIGN KEY (`BookID`) REFERENCES `books` (`BookID`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `URB_reviewsID_from_reviews` FOREIGN KEY (`ReviewID`) REFERENCES `reviews` (`ReviewID`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `URB_usersID_from_users` FOREIGN KEY (`UserID`) REFERENCES `users` (`UserID`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
