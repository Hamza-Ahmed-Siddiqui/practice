-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Feb 20, 2023 at 06:49 AM
-- Server version: 10.4.25-MariaDB
-- PHP Version: 8.1.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `arts`
--

-- --------------------------------------------------------

--
-- Table structure for table `adminlogin`
--

CREATE TABLE `adminlogin` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `img` varchar(500) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `adminlogin`
--

INSERT INTO `adminlogin` (`id`, `name`, `email`, `password`, `img`) VALUES
(1, 'Areeba', 'areeba12@gmail.com', '123', ''),
(2, 'Muskan', 'muskan12@gmail.com', '123', '');

-- --------------------------------------------------------

--
-- Table structure for table `billing`
--

CREATE TABLE `billing` (
  `id` int(11) NOT NULL,
  `order_id` int(11) NOT NULL,
  `first_name` varchar(255) NOT NULL,
  `last_name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `mobile_no` int(11) NOT NULL,
  `address_line1` varchar(255) NOT NULL,
  `address_line2` varchar(255) NOT NULL,
  `country` varchar(255) NOT NULL,
  `city` varchar(255) NOT NULL,
  `state` varchar(255) NOT NULL,
  `zip_code` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `billing`
--

INSERT INTO `billing` (`id`, `order_id`, `first_name`, `last_name`, `email`, `mobile_no`, `address_line1`, `address_line2`, `country`, `city`, `state`, `zip_code`) VALUES
(5, 0, 'test', 'khan', 'hello@gmail.com', 315, 'House no 216,S/E, street _3 AkhtarColony Karachi ', 'america', 'Afghanistan', 'Karachi', 'Karachi', 356890),
(12, 0, 'Areeba', 'Kausar', 'areeba12@gmail.com', 12345, 'DHA Phase 2 Eext', '', 'United States', 'New York', 'New York', 123),
(13, 0, 'aptech', 'computer', 'ali@gmail.com', 338581103, 'aptech dhA karachi', 'aptech dhA karachi', 'Afghanistan', 'karachi', 'karachi', 12345);

-- --------------------------------------------------------

--
-- Table structure for table `cart`
--

CREATE TABLE `cart` (
  `id` int(255) NOT NULL,
  `product_id` int(11) NOT NULL,
  `Products` varchar(255) NOT NULL,
  `Price` varchar(255) NOT NULL,
  `Quantity` varchar(255) NOT NULL,
  `Total` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `cart`
--

INSERT INTO `cart` (`id`, `product_id`, `Products`, `Price`, `Quantity`, `Total`) VALUES
(39, 28, 'greeting card', '5000', '1', '5000'),
(40, 27, 'Watch', '2000', '1', '2000'),
(41, 24, 'Camera', '1000', '1', '1000'),
(42, 39, 'dress', '7000', '1', '7000'),
(43, 31, 'Bag', '5689', '1', '5689');

-- --------------------------------------------------------

--
-- Table structure for table `contact`
--

CREATE TABLE `contact` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `subject` varchar(255) NOT NULL,
  `message` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `contact`
--

INSERT INTO `contact` (`id`, `name`, `email`, `subject`, `message`) VALUES
(3, 'kiran malik', 'karan@gmail.com', 'file', 'hello world');

-- --------------------------------------------------------

--
-- Table structure for table `coustomers`
--

CREATE TABLE `coustomers` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `address` varchar(255) NOT NULL,
  `phone` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `coustomers`
--

INSERT INTO `coustomers` (`id`, `name`, `email`, `address`, `phone`) VALUES
(4, 'areeba', 'areeba@gmail.com', 'h/213/E.3/karachi', '34354654645'),
(21, 'fiza', 'karan@gmail.com', 'House no 216,S/E, street _3 AkhtarColony Karachi, america', '03152733890'),
(23, 'kiran malik', 'karan@gmail.com', 'House no 216,S/E, street _3 AkhtarColony Karachi, america', '03152733890'),
(24, '', '', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `feedback`
--

CREATE TABLE `feedback` (
  `id` int(11) NOT NULL,
  `date` varchar(255) NOT NULL,
  `time` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `feedback` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `feedback`
--

INSERT INTO `feedback` (`id`, `date`, `time`, `name`, `email`, `feedback`) VALUES
(5, '2023-02-02', '07:27:25am', 'John Smith', 'john@abc.com', 'Lorem ipsum dolor'),
(6, '2023-02-02', '01:29:56pm', 'aptech computer', 'ali@gmail.com', ''),
(7, '2023-02-02', '01:30:04pm', 'aptech computer', 'ali@gmail.com', ''),
(8, '2023-02-02', '01:37:28pm', 'aptech computer', 'ali@gmail.com', '');

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `order_id` int(11) NOT NULL,
  `order_date` varchar(255) NOT NULL,
  `order_status` varchar(255) NOT NULL,
  `payment_type` varchar(255) NOT NULL,
  `total_amount` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `order_details`
--

CREATE TABLE `order_details` (
  `order_detail_id` int(11) NOT NULL,
  `order_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `quantity` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` int(11) NOT NULL,
  `code` varchar(255) NOT NULL,
  `product_no` varchar(255) NOT NULL,
  `product_name` varchar(255) NOT NULL,
  `description` varchar(255) NOT NULL,
  `price` varchar(255) NOT NULL,
  `product_image` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `code`, `product_no`, `product_name`, `description`, `price`, `product_image`) VALUES
(24, '1', '1', 'Camera', 'Sony Camera', '1000', 'index.html'),
(27, '2', '2', 'Watch', 'mens watch', '2000', 'mwatch.png'),
(28, '18', '000006', 'greeting card', 'test', '5000', 'geeting2.png'),
(29, '890', '000005', 'watch', 'test', '899', 'mwatch7.png'),
(30, '6565', '88880', 'Bag', 'test', '4977', 'bag2.webp'),
(31, '5446', '67667', 'Bag', 'test', '5689', 'bag4.png'),
(32, '55555', '0000006', 'Bag', 'leather bag', '9000', 'bag5.png'),
(33, '10000', '600067', 'camra', '70 pixel', '40000', 'cam2.png'),
(34, '400056', '0000002', 'Camera', '60 pixel', '100000', 'cam3.jpg'),
(35, '00006', '567888', 'Camera', '40pixel', '50000', 'cam5.png'),
(36, '44444', '00000008', 'cards', 'birthday card', '899', 'geeting1.png'),
(37, '78890', '000009', 'cards', 'ainversary card', '838', 'greeting.png'),
(38, '777770', '3457676', 'dress', 'womem dresses', '8000', 'wcloth2.png'),
(39, '87879', '6767676', 'dress', 'women dress', '7000', 'wcloth1.webp'),
(40, '787876', '000005', 'dress', 'women dress', '7995', 'wcloth5.png'),
(41, '9999', '6565454', 'dress', 'women dress', '7000', 'wcloh8.png'),
(42, '44444', '878787', 'dress', 'women dress', '6000', 'wcloth3.png');

-- --------------------------------------------------------

--
-- Table structure for table `signup`
--

CREATE TABLE `signup` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `signup`
--

INSERT INTO `signup` (`id`, `name`, `email`, `password`) VALUES
(5, 'karan@gmail.com', 'karan@gmail.com', 123),
(6, 'karan@gmail.com', 'karan@gmail.com', 123),
(7, 'ayesha', 'ayesha@gmail.com', 789),
(8, 'muskan', 'muskan1@gmail.com', 123),
(9, 'muskan12@gmail.com', '', 123),
(10, 'muskan12', 'noman@gmail.com', 123),
(11, 'muskan', 'muskan12@gmail.com', 123),
(12, 'hum', 'muskan12@gmail.com', 123);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `user_name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `role` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `user_name`, `email`, `password`, `role`) VALUES
(6, 'Sana', '', 'karan@gmail.com', '5676555557', 'malk'),
(8, 'kiran malik', '', 'karan@gmail.com', '878687', 'malk');

-- --------------------------------------------------------

--
-- Table structure for table `user_cart`
--

CREATE TABLE `user_cart` (
  `id` int(11) NOT NULL,
  `item_id` int(11) NOT NULL,
  `quantity` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `adminlogin`
--
ALTER TABLE `adminlogin`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `billing`
--
ALTER TABLE `billing`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cart`
--
ALTER TABLE `cart`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `contact`
--
ALTER TABLE `contact`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `coustomers`
--
ALTER TABLE `coustomers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `feedback`
--
ALTER TABLE `feedback`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`order_id`);

--
-- Indexes for table `order_details`
--
ALTER TABLE `order_details`
  ADD PRIMARY KEY (`order_detail_id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `signup`
--
ALTER TABLE `signup`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user_cart`
--
ALTER TABLE `user_cart`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `adminlogin`
--
ALTER TABLE `adminlogin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `billing`
--
ALTER TABLE `billing`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `cart`
--
ALTER TABLE `cart`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=44;

--
-- AUTO_INCREMENT for table `contact`
--
ALTER TABLE `contact`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `coustomers`
--
ALTER TABLE `coustomers`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT for table `feedback`
--
ALTER TABLE `feedback`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `order_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `order_details`
--
ALTER TABLE `order_details`
  MODIFY `order_detail_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=44;

--
-- AUTO_INCREMENT for table `signup`
--
ALTER TABLE `signup`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `user_cart`
--
ALTER TABLE `user_cart`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
