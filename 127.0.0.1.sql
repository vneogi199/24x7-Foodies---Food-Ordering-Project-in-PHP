CREATE DATABASE `foodies` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `foodies`;

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE IF NOT EXISTS `orders` (
  `email` varchar(30) NOT NULL,
  `qty1` int(10) NOT NULL,
  `qty2` int(10) NOT NULL,
  `qty3` int(10) NOT NULL,
  `qty4` int(10) NOT NULL,
  `qty5` int(10) NOT NULL,
  `qty6` int(10) NOT NULL,
  `qty7` int(10) NOT NULL,
  `qty8` int(10) NOT NULL,
  `qty9` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`email`, `qty1`, `qty2`, `qty3`, `qty4`, `qty5`, `qty6`, `qty7`, `qty8`, `qty9`) VALUES
('vn@gmail.com', 1, 1, 0, 0, 1, 0, 0, 0, 0),
('vn199@gmail.com', 0, 0, 7, 0, 0, 0, 0, 0, 0),
('vn199@gmail.com', 0, 0, 1, 1, 1, 1, 0, 0, 1);

-- --------------------------------------------------------

--
-- Table structure for table `php_users_login`
--

CREATE TABLE IF NOT EXISTS `php_users_login` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `email` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `last_login` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=36 ;

--
-- Dumping data for table `php_users_login`
--

INSERT INTO `php_users_login` (`id`, `email`, `password`, `last_login`) VALUES
(32, 'sar@gmaill.com', 'sa', NULL),
(33, 'arc@gmail.com', 'ar', NULL),
(35, 'vn@gmail.com', 'vn9', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE IF NOT EXISTS `user` (
  `fname` varchar(30) NOT NULL,
  `lname` varchar(30) NOT NULL,
  `location` varchar(30) NOT NULL,
  `mob` varchar(10) NOT NULL,
  `addr` varchar(200) NOT NULL,
  `email` varchar(30) NOT NULL,
  `pw` varchar(30) NOT NULL,
  `cpw` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`fname`, `lname`, `location`, `mob`, `addr`, `email`, `pw`, `cpw`) VALUES
('Sa', 'Nar', 'Kandivali East', '9120852312', 'D/202, Thakur Village', 'sar@gmaill.com', 'sar', 'sar'),
('Ar', 'Mas', 'Kandivali West', '9012654732', 'C/308, Raheja Apartments', 'arc@gmail.com', 'ar', 'arr'),
('Vt', 'Ne', 'Borivali East', '9512456745', 'A/401, Rose Villa', 'vn9@gmail.com', 'vi', 'vin');