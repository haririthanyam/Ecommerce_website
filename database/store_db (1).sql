-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 06, 2021 at 05:42 PM
-- Server version: 10.4.17-MariaDB
-- PHP Version: 8.0.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `store_db`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `id` int(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  `email` varchar(100) NOT NULL,
  `password` varchar(255) NOT NULL,
  `is_active` enum('0','1') NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id`, `name`, `email`, `password`, `is_active`) VALUES
(1, 'Murugesan', 'rithanyamurugesan68@gmail.com', '$2y$10$WwXXuWGkDhMUDFwhzqcN7OR3ltoL/n3mafGNlKSIcd7XsKA19b3Yq', '0');

-- --------------------------------------------------------

--
-- Table structure for table `brands`
--

CREATE TABLE `brands` (
  `brand_id` int(100) NOT NULL,
  `brand_title` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `brands`
--

INSERT INTO `brands` (`brand_id`, `brand_title`) VALUES
(1, 'Fastrack'),
(2, 'Titan '),
(3, 'Macho'),
(4, 'All');

-- --------------------------------------------------------

--
-- Table structure for table `cart`
--

CREATE TABLE `cart` (
  `id` int(10) NOT NULL,
  `p_id` int(10) NOT NULL,
  `ip_add` varchar(250) NOT NULL,
  `user_id` int(10) DEFAULT NULL,
  `qty` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `cat_id` int(100) NOT NULL,
  `cat_title` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`cat_id`, `cat_title`) VALUES
(2, 'Womens'),
(3, 'Mens '),
(4, 'Teenage Wears'),
(5, 'Kids'),
(6, 'Watches'),
(12, 'Cotton Printed bags');

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `order_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `qty` int(11) NOT NULL,
  `trx_id` varchar(255) NOT NULL,
  `p_status` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`order_id`, `user_id`, `product_id`, `qty`, `trx_id`, `p_status`) VALUES
(1, 1, 29, 2, '47T27066E5662120C', 'Completed'),
(2, 1, 50, 1, '47T27066E5662120C', 'Completed'),
(3, 1, 36, 1, '4BP6929124273594R', 'Completed'),
(4, 1, 53, 1, '4BP6929124273594R', 'Completed');

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `product_id` int(100) NOT NULL,
  `product_cat` int(11) NOT NULL,
  `product_brand` int(100) NOT NULL,
  `product_title` varchar(255) NOT NULL,
  `product_price` int(100) NOT NULL,
  `product_qty` int(11) NOT NULL,
  `product_desc` text NOT NULL,
  `product_image` text NOT NULL,
  `product_keywords` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`product_id`, `product_cat`, `product_brand`, `product_title`, `product_price`, `product_qty`, `product_desc`, `product_image`, `product_keywords`) VALUES
(1, 2, 4, 'Women T-shirt', 200, 100, 'Solid Women Round Neck Red T-shirt', '1619078348_women1.jpeg', 'T-shirt, Red T-shirts'),
(25, 2, 4, 'Black and White T-shirt', 250, 100, 'Black and White Women T-shirts', '1619078924_women2.jpeg', 'Black and white T-shirts'),
(26, 2, 4, 'Pink T-shirt', 150, 150, 'Women Pink T-shirt', '1619079412_women3.jpeg', 'Pink T-shirt'),
(27, 2, 4, 'Glam Girl T-shirt', 250, 50, 'Glam Girl Design Printed T-shirt', '1619079767_women4.jpg', 'Glam Girl T-shirts,T-shirts'),
(28, 2, 4, 'Plain T-shirt', 150, 200, 'Plain Printed T-shirt', '1619080100_women5.jpeg', 'Plain T-shirt,T-shirts'),
(29, 2, 4, 'Turtle Neck T-shirt', 350, 100, 'Women Turtle Neck Pink T-shirt', '1619080241_women6.jpeg', 'T-shirts, Turtle Neck T-shirts, Pink T-shirts'),
(30, 3, 4, 'Men Regular Collar Casual Shirt', 550, 50, 'Men Regular Fit Striped Spread Collar Casual Shirt', '1619084703_men1.jpeg', 'Regular shirts, Collar shirts,shirts'),
(31, 3, 4, 'Regular Casual shirt', 350, 100, 'Men Regular Casual shirt', '1619085139_men2.jpeg', 'shirts, regular shirts, casual shirts'),
(32, 3, 4, 'Full Sleeve Black and White Jackets', 550, 10, 'Full Sleeve color Black Jacket', '1619085245_men3.jpeg', 'jackets, black and white, full sleeve'),
(33, 3, 4, 'Men Blue Track Pants', 278, 20, 'Men Blue Track Pants', '1619088509_men4.jpeg', 'Men Blue Track Pants,Pants,blue'),
(34, 3, 4, 'Cotton Blend Pants', 359, 100, 'Men Cotton Blend Pants', '1619088587_men5.jpeg', 'Cotton Blend Pants,pants,cotton'),
(35, 3, 4, 'Round Neck T-shirt', 289, 300, 'Men Round Neck T-shirt', '1619088658_men6.jpeg', 'Round Neck T-shirt, t-shirts, shirt,roundneck'),
(36, 5, 4, 'Baby girls Midi', 500, 250, 'Baby Girls Midi', '1619091507_kid1.jpeg', 'Baby girls Midi, girls, midi'),
(37, 5, 4, 'Party T-shirt Pant', 300, 250, 'Party T-shirt Pant', '1619091607_kid2.jpeg', 'Party T-shirt Pant,pants,boys'),
(38, 5, 4, 'Kids Nightwear Boys and Girls', 296, 300, 'Kids Nightwear Boys and Girls', '1619091683_kid3.jpeg', 'Kids Nightwear Boys and Girls,boys,girls,nightwear'),
(39, 5, 4, 'Boys and Girls Cotton Jersey', 267, 400, 'Boys and Girls Cotton Jersey', '1619091763_kid4.jpeg', 'Boys and Girls Cotton Jersey,jersey,boys,girls'),
(40, 5, 4, 'Girls Printed Pure Cotton T-shirt', 180, 150, 'Girls Printed Pure Cotton T-shirt', '1619091877_kid5.jpeg', 'Girls Printed Pure Cotton,cotton,girls,t-shirts'),
(41, 5, 4, 'Casual T-shirt Shorts', 150, 200, 'Casual T-shirt Shorts', '1619091951_kid6.jpeg', 'Casual T-shirt Shorts, shorts, t-shirts'),
(42, 3, 3, 'Vest For Boys', 200, 300, 'Vest For Boys', '1619092042_macho1.jpeg', 'Vest For Boys, vest,boys'),
(43, 3, 3, 'Men Pyjama', 300, 200, 'Men Pyjama', '1619092097_macho2.jpeg', 'Men Pyjama, mens, boys, pyjamas'),
(44, 3, 3, 'Solid Men Boxer', 600, 200, 'Solid Men Boxer', '1619092176_macho3.jpeg', 'Solid Men Boxer, boxers, mens ,boys'),
(45, 3, 3, 'Men Top & Shirts Set', 500, 300, 'Men Striped Grey Top & Shirts Set', '1619092325_macho4.jpeg', 'Men Striped Grey Top & Shirts Set, shirts set'),
(46, 6, 1, 'Minimalists Analog Watch', 1000, 90, 'Minimalists Analog Watch', '1619092524_fast1.jpeg', 'Minimalists Analog Watch'),
(47, 6, 1, 'Basics Analog Watch Women', 1186, 90, 'Basics Analog Watch Women', '1619094215_fast2.jpeg', 'Basics Analog Watch Women, watch, women'),
(48, 6, 1, 'Men Bold Fonts Analog Watch ', 80, 100, 'Bold Fonts Analog Watch for Men', '1619094357_fast3.jpeg', '1450'),
(49, 6, 2, 'Analog Watch For Women', 2795, 150, 'Analog Watch For Women', '1619094476_titan1.jpeg', 'Analog Watch For Women, women watch '),
(50, 6, 2, 'Analog Watch For Men', 5150, 100, 'Analog Watch For Men', '1619094547_titan2.jpeg', 'Analog Watch For Men, men watches'),
(51, 6, 2, '1805NM0L Analog Watch', 5850, 100, '1805NM0L Analog Watch', '1619094642_titan3.jpeg', '1805NM0L Analog Watch, watches'),
(52, 4, 4, 'Boys Shorts Casual Printed Cotton', 350, 300, 'Boys Shorts Casual Printed Cotton', '1619094825_teen1.jpeg', 'Boys Shorts Casual Printed Cotton, shorts'),
(53, 4, 4, 'Women A-Line Pink Dress', 399, 200, 'Women A-Line Pink Dress', '1619094912_teen2.jpeg', 'Women A-Line Pink Dress, women dress, pink'),
(54, 4, 4, 'Slim Men White Jeans', 955, 100, 'Slim Men White Jeans', '1619095013_teen3.jpeg', 'Slim Men White Jeans, jeans, mens'),
(55, 4, 4, 'Solid Men Black Track Pants', 300, 100, 'Solid Men Black Track Pants', '1619095154_teen5.jpeg', 'Solid Men Black Track Pants, pants,mens'),
(57, 4, 4, 'Black Jeans Skinny Women', 1000, 100, 'Black Jeans Skinny Women', '1619095320_teen4.jpeg', 'Black Jeans Skinny Women,jeans, womens'),
(58, 4, 4, 'Jogger Fit Women Yellow Jeans', 400, 100, 'Jogger Fit Women Yellow Jeans', '1619095405_teen6.jpeg', 'Jogger Fit Women Yellow Jeans, jeans, womens'),
(59, 12, 4, 'Printed Design Bag', 120, 100, 'Printed Design Bag', '1619095847_bag1.jpg', 'Printed Design Bag, bag ,cotton'),
(60, 12, 4, 'Cotton Bag', 85, 150, 'Cotton Bag', '1619095925_bag2.jpg', 'Cotton Bag, bag ,cotton'),
(61, 12, 4, 'Designed Cotton Bag', 105, 100, 'Designed Cotton Bag', '1619095989_bag3.jpg', 'Designed Cotton Bag, bag,cotton');

-- --------------------------------------------------------

--
-- Table structure for table `user_info`
--

CREATE TABLE `user_info` (
  `user_id` int(10) NOT NULL,
  `first_name` varchar(100) NOT NULL,
  `last_name` varchar(100) NOT NULL,
  `email` varchar(300) NOT NULL,
  `password` varchar(300) NOT NULL,
  `mobile` varchar(10) NOT NULL,
  `address1` varchar(300) NOT NULL,
  `address2` varchar(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user_info`
--

INSERT INTO `user_info` (`user_id`, `first_name`, `last_name`, `email`, `password`, `mobile`, `address1`, `address2`) VALUES
(1, 'Dharshini', 'TV', 'dharshinitv18.it@kongu.edu', 'a824502555217a3a92106fd806e4f93a', '6374561599', 'Avinashi', 'Tiruppur');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `email` (`email`);

--
-- Indexes for table `brands`
--
ALTER TABLE `brands`
  ADD PRIMARY KEY (`brand_id`);

--
-- Indexes for table `cart`
--
ALTER TABLE `cart`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`cat_id`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`order_id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`product_id`),
  ADD KEY `fk_product_cat` (`product_cat`),
  ADD KEY `fk_product_brand` (`product_brand`);

--
-- Indexes for table `user_info`
--
ALTER TABLE `user_info`
  ADD PRIMARY KEY (`user_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `brands`
--
ALTER TABLE `brands`
  MODIFY `brand_id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `cart`
--
ALTER TABLE `cart`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `cat_id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `order_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `product_id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=62;

--
-- AUTO_INCREMENT for table `user_info`
--
ALTER TABLE `user_info`
  MODIFY `user_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `products`
--
ALTER TABLE `products`
  ADD CONSTRAINT `fk_product_brand` FOREIGN KEY (`product_brand`) REFERENCES `brands` (`brand_id`),
  ADD CONSTRAINT `fk_product_cat` FOREIGN KEY (`product_cat`) REFERENCES `categories` (`cat_id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
