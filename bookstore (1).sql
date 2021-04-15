-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Erstellungszeit: 15. Apr 2021 um 19:13
-- Server-Version: 10.4.18-MariaDB
-- PHP-Version: 8.0.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Datenbank: `bookstore`
--

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `author`
--

CREATE TABLE `author` (
  `authorID` int(10) NOT NULL,
  `firstName` varchar(55) NOT NULL,
  `lastName` varchar(55) NOT NULL,
  `nationality` varchar(55) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Daten für Tabelle `author`
--

INSERT INTO `author` (`authorID`, `firstName`, `lastName`, `nationality`) VALUES
(1, 'Malina', 'Gartrell', 'Tanzania'),
(2, 'Urbano', 'Dilston', 'Indonesia'),
(3, 'Orin', 'Colcomb', 'China'),
(4, 'Linnie', 'Whitmarsh', 'Sweden'),
(5, 'Donny', 'Splevings', 'Norway'),
(6, 'Ulrick', 'Durtnel', 'Armenia'),
(7, 'Norean', 'Cowpe', 'Czech Republic'),
(8, 'Brynn', 'Remon', 'Macedonia'),
(9, 'Barnabe', 'Pulver', 'Uganda'),
(10, 'Gardner', 'De Cristoforo', 'Indonesia'),
(11, 'Meredithe', 'Ettles', 'Russia'),
(12, 'Renaldo', 'Wordesworth', 'China'),
(13, 'Vanda', 'Huntly', 'Philippines'),
(14, 'Shandee', 'Robertazzi', 'Russia'),
(15, 'Ninnetta', 'Sinclaire', 'Indonesia'),
(16, 'Sammie', 'Heinschke', 'Philippines'),
(17, 'Ivan', 'Mangham', 'China'),
(18, 'Warden', 'Depke', 'Indonesia'),
(19, 'Ophelie', 'Eastbrook', 'Indonesia'),
(20, 'Devina', 'Whye', 'China');

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `bookgenre`
--

CREATE TABLE `bookgenre` (
  `genreID` int(10) NOT NULL,
  `genreName` varchar(55) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Daten für Tabelle `bookgenre`
--

INSERT INTO `bookgenre` (`genreID`, `genreName`) VALUES
(1, 'Drama'),
(2, 'Drama|War'),
(3, 'Comedy|Drama'),
(5, 'Action'),
(8, 'Animation|Comedy'),
(9, 'Documentary'),
(12, 'Horror|Thriller'),
(13, 'Thriller'),
(14, 'Comedy'),
(17, 'Sci-Fi|Thriller'),
(18, 'Documentary'),
(19, 'Action|Crime|Thriller'),
(20, 'Drama|Romance'),
(21, 'biography');

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `books`
--

CREATE TABLE `books` (
  `bookID` int(10) NOT NULL,
  `title` varchar(55) DEFAULT NULL,
  `ISBN` varchar(55) DEFAULT NULL,
  `description` text DEFAULT NULL,
  `price` decimal(20,2) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Daten für Tabelle `books`
--

INSERT INTO `books` (`bookID`, `title`, `ISBN`, `description`, `price`) VALUES
(1, 'EDtv', '589282041-6', 'Duis bibendum, felis sed interdum venenatis, turpis enim blandit mi, in porttitor pede justo eu massa. Donec dapibus. Duis at velit eu est congue elementum.', '22.00'),
(2, 'Red-Headed Woman', '278907259-0', 'Morbi porttitor lorem id ligula. Suspendisse ornare consequat lectus. In est risus, auctor sed, tristique in, tempus sit amet, sem.', '18.00'),
(3, 'Naked Ambition: An R Rated Look at an X Rated Industry ', '623789723-2', 'Integer tincidunt ante vel ipsum. Praesent blandit lacinia erat. Vestibulum sed magna at nunc commodo placerat.', '27.00'),
(4, 'Girl 27', '611150150-X', 'Morbi porttitor lorem id ligula. Suspendisse ornare consequat lectus. In est risus, auctor sed, tristique in, tempus sit amet, sem.', '21.00'),
(5, 'Last House on the Left, The', '360540739-0', 'Sed sagittis. Nam congue, risus semper porta volutpat, quam pede lobortis ligula, sit amet eleifend pede libero quis orci. Nullam molestie nibh in lectus.', '29.00'),
(6, 'High School', '279912330-9', 'Phasellus in felis. Donec semper sapien a libero. Nam dui.', '15.00'),
(7, 'The Killers', '997616790-3', 'Pellentesque at nulla. Suspendisse potenti. Cras in purus eu magna vulputate luctus.', '26.00'),
(8, 'Something from Nothing: The Art of Rap', '545442958-9', 'Cras non velit nec nisi vulputate nonummy. Maecenas tincidunt lacus at velit. Vivamus vel nulla eget eros elementum pellentesque.', '23.00'),
(9, 'She\'s Gotta Have It', '682311737-0', 'Fusce posuere felis sed lacus. Morbi sem mauris, laoreet ut, rhoncus aliquet, pulvinar sed, nisl. Nunc rhoncus dui vel sem.', '34.00'),
(10, 'Brannigan', '620881997-0', 'Quisque porta volutpat erat. Quisque erat eros, viverra eget, congue eget, semper rutrum, nulla. Nunc purus.', '6.00'),
(11, 'Wild About Harry', '353968381-X', 'Mauris enim leo, rhoncus sed, vestibulum sit amet, cursus id, turpis. Integer aliquet, massa id lobortis convallis, tortor risus dapibus augue, vel accumsan tellus nisi eu orci. Mauris lacinia sapien quis libero.', '22.00'),
(12, 'This Means War', '772989367-3', 'Aenean fermentum. Donec ut mauris eget massa tempor convallis. Nulla neque libero, convallis eget, eleifend luctus, ultricies eu, nibh.', '16.00'),
(13, 'Universal Soldier: Day of Reckoning', '196389315-8', 'Maecenas leo odio, condimentum id, luctus nec, molestie sed, justo. Pellentesque viverra pede ac diam. Cras pellentesque volutpat dui.', '19.00'),
(14, 'The Finzi Detective Agency', '699896136-7', 'Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Vivamus vestibulum sagittis sapien. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus.', '26.00'),
(15, 'Resurrected, The', '732459402-6', 'Proin eu mi. Nulla ac enim. In tempor, turpis nec euismod scelerisque, quam turpis adipiscing lorem, vitae mattis nibh ligula nec sem.', '17.00'),
(16, 'Mackintosh Man, The', '199030353-6', 'Vestibulum quam sapien, varius ut, blandit non, interdum in, ante. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Duis faucibus accumsan odio. Curabitur convallis.', '16.00'),
(17, 'The Grump', '073010770-1', 'Pellentesque at nulla. Suspendisse potenti. Cras in purus eu magna vulputate luctus.', '21.00'),
(18, 'Walking Dead, The', '721754523-4', 'Fusce consequat. Nulla nisl. Nunc nisl.', '17.00'),
(19, 'Popular Music (Populärmusik från Vittula)', '745447967-7', 'Integer tincidunt ante vel ipsum. Praesent blandit lacinia erat. Vestibulum sed magna at nunc commodo placerat.', '28.00'),
(20, 'Interiors', '069784175-8', 'Sed ante. Vivamus tortor. Duis mattis egestas metus.', '15.00');

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `book_enrollment`
--

CREATE TABLE `book_enrollment` (
  `boEnID` int(11) NOT NULL,
  `fk_bookID` int(11) DEFAULT NULL,
  `fk_authorID` int(11) DEFAULT NULL,
  `fk_genreID` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Daten für Tabelle `book_enrollment`
--

INSERT INTO `book_enrollment` (`boEnID`, `fk_bookID`, `fk_authorID`, `fk_genreID`) VALUES
(1, 16, 11, 21),
(2, 19, 7, 9),
(3, 6, 3, 14),
(4, 7, 2, 12),
(5, 14, 17, 19),
(6, 4, 10, 20),
(7, 17, 12, 8),
(8, 15, 6, 5),
(9, 13, 9, 17);

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `customer`
--

CREATE TABLE `customer` (
  `customerID` int(10) NOT NULL,
  `firstName` varchar(55) DEFAULT NULL,
  `lastName` varchar(55) DEFAULT NULL,
  `address` varchar(255) DEFAULT NULL,
  `phone` varchar(55) DEFAULT NULL,
  `email` varchar(55) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Daten für Tabelle `customer`
--

INSERT INTO `customer` (`customerID`, `firstName`, `lastName`, `address`, `phone`, `email`) VALUES
(1, 'Doll', 'Elsop', '5616 Algoma Lane', '(400) 9175885', 'delsop0@technorati.com'),
(2, 'Chip', 'Bomb', '54222 Doe Crossing Junction', '(443) 7468437', 'cbomb1@blogtalkradio.com'),
(3, 'Tonye', 'Kezor', '8442 Macpherson Avenue', '(189) 4597905', 'tkezor2@dailymotion.com'),
(4, 'Zita', 'Gresly', '6 Summit Lane', '(834) 8081033', 'zgresly3@sun.com'),
(5, 'Lilith', 'Cesaric', '6 Prairie Rose Terrace', '(742) 9728232', 'lcesaric4@canalblog.com'),
(6, 'Stefano', 'Rudinger', '1883 Lakewood Trail', '(908) 2898385', 'srudinger5@joomla.org'),
(7, 'Lina', 'Munks', '24 Scofield Crossing', '(763) 5425872', 'lmunks6@usa.gov'),
(8, 'Kerr', 'Lawford', '80 Butternut Alley', '(768) 4910008', 'klawford7@bandcamp.com'),
(9, 'Mark', 'Kondratenko', '9 Kropf Hill', '(581) 4490094', 'mkondratenko8@columbia.edu'),
(10, 'Konstantine', 'Triplett', '50 Southridge Pass', '(430) 3545641', 'ktriplett9@intel.com'),
(11, 'Adolphus', 'Medway', '61632 Harbort Junction', '(494) 6705624', 'amedwaya@ameblo.jp'),
(12, 'Ashby', 'Scrancher', '390 Southridge Plaza', '(754) 2431195', 'ascrancherb@latimes.com'),
(13, 'Jemima', 'Rapinett', '39222 Corscot Park', '(901) 2449669', 'jrapinettc@cam.ac.uk'),
(14, 'Viviyan', 'Airth', '049 Dovetail Terrace', '(768) 1052256', 'vairthd@technorati.com'),
(15, 'Trixy', 'Lambswood', '88619 Prentice Crossing', '(714) 7936776', 'tlambswoode@businessinsider.com'),
(16, 'Janette', 'Hamments', '316 Transport Plaza', '(953) 6419900', 'jhammentsf@wordpress.com'),
(17, 'Colas', 'Dorwood', '35837 Alpine Point', '(465) 7917060', 'cdorwoodg@princeton.edu'),
(18, 'Winny', 'Eveleigh', '2272 Towne Terrace', '(637) 1520795', 'weveleighh@ow.ly'),
(19, 'Iseabal', 'Hillborne', '4010 Prairieview Junction', '(960) 1093446', 'ihillbornei@mail.ru'),
(20, 'Orelee', 'Birtwisle', '81853 Banding Park', '(985) 5857608', 'obirtwislej@noaa.gov');

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `orders`
--

CREATE TABLE `orders` (
  `orderID` int(11) NOT NULL,
  `fk_customerID` int(11) DEFAULT NULL,
  `orderDate` date DEFAULT NULL,
  `fk_bookID` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Daten für Tabelle `orders`
--

INSERT INTO `orders` (`orderID`, `fk_customerID`, `orderDate`, `fk_bookID`) VALUES
(1, 7, '2020-12-16', 20),
(2, 20, '2020-07-19', 19),
(3, 13, '2020-10-06', 18),
(4, 5, '2020-12-28', 17),
(5, 15, '2020-08-26', 16),
(6, 7, '2021-03-16', 15),
(7, 11, '2020-07-11', 14),
(8, 12, '2021-01-09', 13),
(9, 16, '2020-05-21', 12),
(10, 1, '2020-09-06', 11),
(11, 2, '2020-07-27', 10),
(12, 3, '2020-11-22', 9),
(13, 4, '2021-01-13', 8),
(14, 14, '2020-07-11', 7),
(15, 17, '2020-07-21', 6),
(16, 10, '2020-06-06', 5),
(17, 8, '2021-02-17', 4),
(18, 18, '2020-04-15', 3),
(19, 19, '2020-08-13', 2),
(20, 6, '2021-01-09', 1);

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `publisher`
--

CREATE TABLE `publisher` (
  `publisherID` int(10) NOT NULL,
  `name` varchar(55) NOT NULL,
  `address` varchar(55) NOT NULL,
  `website` varchar(55) NOT NULL,
  `country` varchar(55) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Daten für Tabelle `publisher`
--

INSERT INTO `publisher` (`publisherID`, `name`, `address`, `website`, `country`) VALUES
(1, 'Macejkovic, Johnson and Conroy', '422 Westport Pass', 'prweb.com', 'China'),
(2, 'Stiedemann LLC', '98167 Clarendon Pass', 'goo.ne.jp', 'China'),
(3, 'Renner, Hackett and Stamm', '83 Sachtjen Junction', 'weebly.com', 'Colombia'),
(4, 'Bechtelar Inc', '24862 Morning Court', 'hatena.ne.jp', 'Sweden'),
(5, 'Parker, Schulist and Smitham', '14 David Road', 'sitemeter.com', 'Mauritius'),
(6, 'Schinner, Williamson and Kuvalis', '4 Bluejay Way', 'icq.com', 'Russia'),
(7, 'Mraz Inc', '465 Fisk Way', 'msn.com', 'China'),
(8, 'Weissnat-Weissnat', '6 Judy Street', 'canalblog.com', 'Azerbaijan'),
(9, 'Jacobi-Hyatt', '28 Londonderry Lane', 'upenn.edu', 'Brazil'),
(10, 'Hansen Inc', '8125 Iowa Lane', 'goo.ne.jp', 'Guatemala'),
(11, 'Schowalter-Feil', '26059 Fuller Plaza', 'yelp.com', 'Cameroon'),
(12, 'Homenick, Pfannerstill and Cummings', '5 Ridgeway Hill', 'google.com.br', 'United States'),
(13, 'Ritchie, Muller and Medhurst', '3 Shelley Parkway', 'unblog.fr', 'Philippines'),
(14, 'Thompson-Abshire', '988 Ridgeview Court', 'gnu.org', 'China'),
(15, 'Wilderman and Sons', '6692 Eagan Hill', 'slideshare.net', 'China'),
(16, 'Cartwright-Spinka', '2 Eagle Crest Terrace', 'opensource.org', 'Guatemala'),
(17, 'Krajcik Inc', '58022 Eliot Crossing', 'oakley.com', 'Russia'),
(18, 'Rosenbaum Inc', '230 Graedel Drive', 'histats.com', 'Venezuela'),
(19, 'Baumbach Group', '28 Erie Point', 'google.es', 'Chile'),
(20, 'Rosenbaum, Metz and Hane', '3 Sherman Hill', 'webmd.com', 'Belgium');

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `publisher_enrollment`
--

CREATE TABLE `publisher_enrollment` (
  `puEnID` int(11) NOT NULL,
  `fk_bookID` int(11) DEFAULT NULL,
  `fk_publisherID` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Daten für Tabelle `publisher_enrollment`
--

INSERT INTO `publisher_enrollment` (`puEnID`, `fk_bookID`, `fk_publisherID`) VALUES
(1, 3, 18),
(2, 6, 7),
(3, 9, 8),
(4, 1, 10),
(5, 12, 2),
(6, 15, 2),
(7, 17, 14),
(8, 4, 11),
(9, 20, 13),
(10, 10, 15),
(11, 16, 16),
(12, 5, 12),
(13, 2, 5),
(14, 14, 13),
(15, 8, 17),
(16, 7, 1),
(17, 19, 19),
(18, 18, 4),
(19, 13, 9),
(20, 11, 13);

--
-- Indizes der exportierten Tabellen
--

--
-- Indizes für die Tabelle `author`
--
ALTER TABLE `author`
  ADD PRIMARY KEY (`authorID`);

--
-- Indizes für die Tabelle `bookgenre`
--
ALTER TABLE `bookgenre`
  ADD PRIMARY KEY (`genreID`);

--
-- Indizes für die Tabelle `books`
--
ALTER TABLE `books`
  ADD PRIMARY KEY (`bookID`);

--
-- Indizes für die Tabelle `book_enrollment`
--
ALTER TABLE `book_enrollment`
  ADD PRIMARY KEY (`boEnID`),
  ADD UNIQUE KEY `fk_bookID` (`fk_bookID`) USING BTREE,
  ADD KEY `fk_genreID` (`fk_genreID`) USING BTREE,
  ADD KEY `fk_authorID` (`fk_authorID`) USING BTREE;

--
-- Indizes für die Tabelle `customer`
--
ALTER TABLE `customer`
  ADD PRIMARY KEY (`customerID`);

--
-- Indizes für die Tabelle `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`orderID`),
  ADD KEY `fk_customerID` (`fk_customerID`) USING BTREE,
  ADD KEY `fk_bookID` (`fk_bookID`) USING BTREE;

--
-- Indizes für die Tabelle `publisher`
--
ALTER TABLE `publisher`
  ADD PRIMARY KEY (`publisherID`);

--
-- Indizes für die Tabelle `publisher_enrollment`
--
ALTER TABLE `publisher_enrollment`
  ADD PRIMARY KEY (`puEnID`),
  ADD UNIQUE KEY `fk_bookID` (`fk_bookID`) USING BTREE,
  ADD KEY `fk_publisherID` (`fk_publisherID`) USING BTREE;

--
-- AUTO_INCREMENT für exportierte Tabellen
--

--
-- AUTO_INCREMENT für Tabelle `author`
--
ALTER TABLE `author`
  MODIFY `authorID` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT für Tabelle `bookgenre`
--
ALTER TABLE `bookgenre`
  MODIFY `genreID` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT für Tabelle `books`
--
ALTER TABLE `books`
  MODIFY `bookID` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT für Tabelle `book_enrollment`
--
ALTER TABLE `book_enrollment`
  MODIFY `boEnID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT für Tabelle `customer`
--
ALTER TABLE `customer`
  MODIFY `customerID` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT für Tabelle `orders`
--
ALTER TABLE `orders`
  MODIFY `orderID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT für Tabelle `publisher`
--
ALTER TABLE `publisher`
  MODIFY `publisherID` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT für Tabelle `publisher_enrollment`
--
ALTER TABLE `publisher_enrollment`
  MODIFY `puEnID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- Constraints der exportierten Tabellen
--

--
-- Constraints der Tabelle `book_enrollment`
--
ALTER TABLE `book_enrollment`
  ADD CONSTRAINT `book_enrollment_ibfk_1` FOREIGN KEY (`fk_bookID`) REFERENCES `books` (`bookID`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `book_enrollment_ibfk_2` FOREIGN KEY (`fk_authorID`) REFERENCES `author` (`authorID`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `book_enrollment_ibfk_3` FOREIGN KEY (`fk_genreID`) REFERENCES `bookgenre` (`genreID`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints der Tabelle `orders`
--
ALTER TABLE `orders`
  ADD CONSTRAINT `fk_bookID` FOREIGN KEY (`fk_bookID`) REFERENCES `books` (`bookID`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `fk_customerID` FOREIGN KEY (`fk_customerID`) REFERENCES `customer` (`customerID`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints der Tabelle `publisher_enrollment`
--
ALTER TABLE `publisher_enrollment`
  ADD CONSTRAINT `publisher_enrollment_ibfk_1` FOREIGN KEY (`fk_bookID`) REFERENCES `books` (`bookID`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `publisher_enrollment_ibfk_2` FOREIGN KEY (`fk_publisherID`) REFERENCES `publisher` (`publisherID`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
