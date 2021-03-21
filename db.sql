-- phpMyAdmin SQL Dump
-- version 4.5.5.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Sep 30, 2016 at 11:56 PM
-- Server version: 5.7.11
-- PHP Version: 5.6.19

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db`
--

-- --------------------------------------------------------

--
-- Table structure for table `cart`
--

CREATE TABLE `cart` (
  `c_id` int(11) NOT NULL,
  `c_u_id` int(11) NOT NULL,
  `c_p_id` int(11) NOT NULL,
  `c_name` varchar(500) NOT NULL,
  `c_image` varchar(500) NOT NULL,
  `c_price` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `feedbacktbl`
--

CREATE TABLE `feedbacktbl` (
  `f_id` int(11) NOT NULL,
  `fullname` varchar(30) NOT NULL,
  `feedback` varchar(1000) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `feedbacktbl`
--

INSERT INTO `feedbacktbl` (`f_id`, `fullname`, `feedback`) VALUES
(1, 'Donald Maity', 'Best E-comm website ever... Easy GUI.. Fast working..'),
(2, 'Donald ', 'Best E-comm website');

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `ord_id` int(11) NOT NULL,
  `p_id` int(11) NOT NULL,
  `fullname` varchar(30) NOT NULL,
  `address` varchar(1000) NOT NULL,
  `pincode` int(6) NOT NULL,
  `city` varchar(15) NOT NULL,
  `state` varchar(30) NOT NULL,
  `mobile` varchar(13) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`ord_id`, `p_id`, `fullname`, `address`, `pincode`, `city`, `state`, `mobile`) VALUES
(1, 26, 'Donald Maity', 'A/503, Kalyan Nagari, Sanglewadi, Kalyan W', 421301, 'Kalyan', 'Maharashtra', '+919833929503');

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `p_id` int(11) NOT NULL,
  `p_name` varchar(100) NOT NULL,
  `p_image` varchar(500) NOT NULL,
  `p_price` int(11) NOT NULL,
  `p_type` varchar(50) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`p_id`, `p_name`, `p_image`, `p_price`, `p_type`) VALUES
(1, 'Reebok RUNNER Shoes (Blue)', 'images/1.png', 6939, 'Shoes'),
(2, 'Nike LITE Running Shoes (Red)', 'images/2.png', 5939, 'Shoes'),
(3, 'Woodland Men Boots (Camel)', 'images/3.png', 3695, 'Shoes'),
(4, 'Sparx Running Shoes (Grey)', 'images/4.png', 999, 'Shoes'),
(5, 'Puma Jago Men Running Shoes', 'images/5.png', 3123, 'Shoes'),
(10, 'Puma Printed Men Round Neck Black T-Shirt', 'images/10.png', 1325, 'Tshirt'),
(11, 'Lee Printed Men Round Neck Black T-Shirt', 'images/11.png', 979, 'Tshirt'),
(12, 'Adidas Originals Men Round Neck Black T-Shirt', 'images/12.png', 1659, 'Tshirt'),
(13, 'Nike Printed Men Polo Neck Blue T-Shirt', 'images/13.png', 2078, 'Tshirt'),
(6, 'Puma Wnomen Running Shoes', 'images/6.png', 6269, 'Shoes'),
(7, 'Bata Women Red Wedges', 'images/7.png', 629, 'Shoes'),
(8, 'Skechers Women Flip Flops', 'images/8.png', 1899, 'Shoes'),
(9, 'Paduki Ethnic Women Flats', 'images/9.png', 346, 'Shoes'),
(14, 'Levis Men Round Neck Grey T-Shirt', 'images/14.png', 656, 'Tshirt'),
(15, 'BLACK AND DENIM V-neck Blue T-Shirt', 'images/15.png', 549, 'Tshirt'),
(16, 'DENIM Harringbone Round Neck T-Shirt', 'images/16.png', 790, 'Tshirt'),
(17, 'Lee Printed Women Round Neck White T-Shirt', 'images/17.png', 477, 'Tshirt'),
(18, 'Puma Women Round Neck Blue T-Shirt\r\n', 'images/18.png', 989, 'Tshirt'),
(19, 'Elle Printed Women Round Neck Blue T-Shirt', 'images/19.png', 899, 'Tshirt'),
(20, 'Levis Women Round Neck Maroon T-Shirt', 'images/20.png', 649, 'Tshirt'),
(21, 'Clo Clu Solid Women Denim Jacket', 'images/21.png', 550, 'Tshirt'),
(22, 'Fastrack NG3089SL01 Black Analog Watch - For Men', 'images/22.png', 2395, 'Watches'),
(23, 'Titan NH90024BM01 Karishma Analog Watch - For Men', 'images/23.png', 2995, 'Watches'),
(24, 'Sonata 77037PP07J Sonata Digital Watch - For Men', 'images/24.png', 799, 'Watches'),
(25, 'Diesel DZ1609 Double Down Analog Watch - For Men', 'images/25.png', 9495, 'Watches'),
(26, 'Fastrack NG6078SL05C Analog Watch - For Women', 'images/26.png', 1890, 'Watches'),
(27, 'Fossil ES3060 Georgia Analog Watch - For Women', 'images/27.png', 1999, 'Watches'),
(28, 'Titan NH9710SM01 Raga Analog Watch - For Women', 'images/28.png', 1999, 'Watches'),
(29, 'Abrexo Abx-40007 Analog Watch - For Women', 'images/29.png', 539, 'Watches');
(40, 'Redmi Note6 pro-smartphone', 'images/40.jpg', 20000, 'Electronics');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `username` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL,
  `mobile` varchar(20) NOT NULL,
  `email` varchar(100) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `username`, `password`, `mobile`, `email`) VALUES
(2, 'donaldmaity', 'don@123', '+919833929503', 'donaldmaity@gmail.com'),
(25, 'akki', 'akki123', '+917777777777', 'akki@d.com');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `cart`
--
ALTER TABLE `cart`
  ADD PRIMARY KEY (`c_id`);

--
-- Indexes for table `feedbacktbl`
--
ALTER TABLE `feedbacktbl`
  ADD PRIMARY KEY (`f_id`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`ord_id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`p_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `cart`
--
ALTER TABLE `cart`
  MODIFY `c_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `feedbacktbl`
--
ALTER TABLE `feedbacktbl`
  MODIFY `f_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;
--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `ord_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;
--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `p_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;
--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
