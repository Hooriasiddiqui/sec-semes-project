-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 29, 2024 at 02:12 PM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.0.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `shoppingcart`
--

-- --------------------------------------------------------

--
-- Table structure for table `contact`
--

CREATE TABLE `contact` (
  `id` int(255) NOT NULL,
  `name` varchar(200) NOT NULL,
  `email` varchar(50) NOT NULL,
  `subject` varchar(50) NOT NULL,
  `message` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `customer`
--

CREATE TABLE `customer` (
  `first name` int(11) NOT NULL,
  `last name` varchar(255) NOT NULL,
  `email` varchar(50) NOT NULL,
  `phone` int(11) NOT NULL,
  `address` varchar(255) NOT NULL,
  `city` varchar(50) NOT NULL,
  `product name` varchar(50) NOT NULL,
  `product qty` int(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `shopping-cart`
--

CREATE TABLE `shopping-cart` (
  `id` int(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `img` varchar(255) NOT NULL,
  `price` double NOT NULL,
  `discount` double NOT NULL,
  `description` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `shopping-cart`
--

INSERT INTO `shopping-cart` (`id`, `name`, `img`, `price`, `discount`, `description`) VALUES
(1, 'gift bag', 'bag2.jpg', 100, 90, 'Ramadan / Eid Gift Bag\r\nArt Card: 300 gsm premium quality stock which is brighter/whiter.\r\n        Size Small: Height: 7″ x Width:5.5″ x Depth: 3″\r\n        Size Large: Height: 9″ x Width:13″ x Depth: 4″.'),
(2, 'Ramadan / Eid Gift Bag', 'bag1.jpg', 200, 180, 'Ramadan / Eid Gift Bag\r\nArt Card: 300 gsm premium quality stock which is brighter/whiter.\r\nSize Small: Height: 7″ x Width:5.5″ x Depth: 3″   Size Large: Height: 9″ x Width:13″ x Depth: 4″.'),
(3, 'Barbie-Happy Birthday Doll', 'doll4.webp', 300, 240, 'Barbie doll is ready to deliver a message of Happy Birthday!She comes inside a package with space.Once delivered,kids can unbox her and make her a guest at the party!\r\n '),
(4, 'Wallet', 'wallet1.jfif', 200, 180, 'Wallets for men.   \r\n\r\nSpace for 18 cards,one zipper pocket for keeping valuables safe and more pockets for receipts and other essentials.Two full lengths open pockets.\r\nOne Zipper pocket.'),
(5, 'Moscow Wallet', 'wallet2.jfif', 300, 290, 'The Moscow wallet is a slim and compact design  for cards and coins. Made from our chic vertical grain leather,this design is well-suited for both traditionalists and modernists.\r\n '),
(6, 'Barbie-Fashion Doll', 'doll3.webp', 300, 240, 'Barbie Fashionistas celebrate diversity with unique fashion dolls, With a wide variety of skin tones, eye colour, hair colour and textures,'),
(7, 'Christmas Greeting Card', 'giftcard3.jpg', 200, 10, 'We have a huge collection of seasonal cards that will let your dear ones know that you remember them all the time. Send Christmas greeting.\r\n       ');

-- --------------------------------------------------------

--
-- Table structure for table `sopping-cart-index`
--

CREATE TABLE `sopping-cart-index` (
  `id` int(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `img` varchar(255) NOT NULL,
  `price` double NOT NULL,
  `discount` double NOT NULL,
  `description` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `sopping-cart-index`
--

INSERT INTO `sopping-cart-index` (`id`, `name`, `img`, `price`, `discount`, `description`) VALUES
(1, 'gift bag', 'bag2.jpg', 100, 5, 'Ramadan / Eid Gift Bag\r\nArt Card: 300 gsm premium quality stock which is brighter/whiter.\r\n        Size Small: Height: 7″ x Width:5.5″ x Depth: 3″\r\n        Size Large: Height: 9″ x Width:13″ x Depth: 4″.'),
(2, 'bag ', 'bag1.jpg', 200, 10, 'Ramadan / Eid Gift Bag\r\nArt Card: 300 gsm premium quality stock which is brighter/whiter.\r\n        Size Small: Height: 7″ x Width:5.5″ x Depth: 3″\r\n        Size Large: Height: 9″ x Width:13″ x Depth: 4″.'),
(3, 'Barbie-Happy Birthday Doll', 'doll4.webp', 100, 10, 'Barbie doll is ready to deliver a message of Happy Birthday!She comes inside a package with space. Once delivered,kids can unbox her and make her a guest at the party!'),
(4, 'Moscow Wallet', 'wallet2.jfif', 300, 20, 'The Moscow wallet is a slim and compact design  for cards and coins. Made from our chic vertical grain leather,this design is well-suited for both traditionalists and modernists.');

-- --------------------------------------------------------

--
-- Table structure for table `userlogin`
--

CREATE TABLE `userlogin` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `emial` varchar(255) NOT NULL,
  `password` varchar(100) NOT NULL,
  `confirm-pass` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `contact`
--
ALTER TABLE `contact`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `customer`
--
ALTER TABLE `customer`
  ADD PRIMARY KEY (`first name`);

--
-- Indexes for table `shopping-cart`
--
ALTER TABLE `shopping-cart`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sopping-cart-index`
--
ALTER TABLE `sopping-cart-index`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `userlogin`
--
ALTER TABLE `userlogin`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `contact`
--
ALTER TABLE `contact`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `customer`
--
ALTER TABLE `customer`
  MODIFY `first name` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `shopping-cart`
--
ALTER TABLE `shopping-cart`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `sopping-cart-index`
--
ALTER TABLE `sopping-cart-index`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `userlogin`
--
ALTER TABLE `userlogin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=34;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
