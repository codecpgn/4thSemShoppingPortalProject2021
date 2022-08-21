-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Sep 24, 2021 at 12:49 PM
-- Server version: 10.4.17-MariaDB
-- PHP Version: 8.0.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
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
(11, 'asim', 'asim@gmail.com', '$2y$10$AsbYqBZrF4EfT/NhaPwpoePQ6lRgFumlABjCxt8ZuQ05jf4UEaJ1G', '0'),
(12, 'abc', 'abc@123.com', '$2y$10$zp4ObDW53qgNIwVj7RP5Mud/sJcei35Bx6Pxx0mjbJ8khqrBSUJBe', '0'),
(13, 'admin', 'admin', '$2y$10$L0b.b.0kv8DoutFg9XfI.O1..vjp372U9.frSBcZ8HWXL1q1vGdv.', '0'),
(15, 'Surya chapai', 'surya@gmail.com', '$2y$10$cBPlVkNqCH2toEPlmLAxhua7usuz2TysFwr9FVuD6MEo6WXeSSSrS', '0');

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
(1, 'HP'),
(2, 'Samsung'),
(3, 'Apple'),
(4, 'Sony'),
(6, 'Dell'),
(8, 'OnePlus'),
(12, 'Lenavo'),
(13, 'Canon'),
(14, 'gopro');

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

--
-- Dumping data for table `cart`
--

INSERT INTO `cart` (`id`, `p_id`, `ip_add`, `user_id`, `qty`) VALUES
(8, 25, '::1', -1, 1),
(9, 26, '::1', -1, 1);

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
(12, 'Mobiles'),
(13, 'Laptops'),
(14, 'Cameras');

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
(1, 2, 24, 1, '0CN28589N9607081W', 'Completed'),
(2, 2, 36, 1, '0CN28589N9607081W', 'Completed'),
(3, 2, 38, 1, '0CN28589N9607081W', 'Completed'),
(4, 2, 26, 1, '84S907988D2443223', 'Completed'),
(5, 2, 24, 1, '2D83790148583871J', 'Completed'),
(6, 2, 25, 1, '2D83790148583871J', 'Completed'),
(7, 2, 39, 1, '2D83790148583871J', 'Completed'),
(8, 2, 37, 1, '2D83790148583871J', 'Completed');

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
  `product_qty` int(100) NOT NULL,
  `product_desc` text NOT NULL,
  `product_image` text NOT NULL,
  `product_keywords` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`product_id`, `product_cat`, `product_brand`, `product_title`, `product_price`, `product_qty`, `product_desc`, `product_image`, `product_keywords`) VALUES
(24, 12, 3, 'Apple iPhone 12 Pro Max     ||   128GB RAM  12MP TrueDepth front camera', 179990, 50, '~Storage Capacity-128GB\r\n~6.7-inch Super Retina XDR display\r\n12MP TrueDepth front camera', '1631599589_iphone-12-pro-max-family-hero-all.jpeg', 'iphone,apple'),
(25, 12, 2, 'Samsung Galaxy || 6 GB RAM 128 GB ROM ', 31999, 100, '6 GB RAM 128 GB ROM 90Hz AMOLED Display', '1632412273_samsung.jpg', 'samsung, galaxy'),
(26, 12, 8, 'OnePlus Nord 2 5G (8 GB RAM + 128 GB Storage)', 59999, 50, '(8 GB RAM + 128 GB Storage) with 90 Hz Fluid AMOLED Display & 65W Warp Charge (Blue Haze) (Includes 1 Year Screen Breakage Insurance)', '1632399110_oneplus.jpg', 'oneplus,mobile'),
(34, 13, 6, 'Dell Inspiron 15-3501-i3-1005G1-4GB-1TB-U-BLK-15.6', 65000, 50, '15-3501-i3-1005G1-4GB-1TB-U-BLK-15.6', '1632412728_dell.jpeg', 'dell, laptop'),
(35, 13, 1, 'HP Pavilion 15 , i5 10th Gen / 8GB / 1TB / 15.6\" FHD Display', 88000, 50, 'HP Pavilion 15 , i5 10th Gen / 8GB / 1TB / 15.6\" FHD Display / Front Firing Speakers by Realtek / Type - C Port Available', '1632413032_hp.png', 'hp, laptop'),
(36, 13, 12, 'Lenovo IdeaPad Gaming 3 10th Gen Intel Core i7 15.6-inch FHD(512GB SSD)', 147000, 50, 'Lenovo IdeaPad Gaming 3 10th Gen Intel Core i7 15.6-inch FHD IPS 120 Hz Gaming Laptop (512GB SSD/Windows 10/NVIDIA GTX 1650 4GB GDDR6/with M100 RGB Gaming Mouse/Onyx Black/2.2Kg)', '1632413336_lenavo.jpg', 'lenovo, laptop'),
(37, 14, 4, 'Sony Ilce-7M3K 24.2Mp Full Frame Mirrorless Interchangeable Lens Camera', 299000, 20, 'Sony Ilce-7M3K 24.2Mp Full Frame Mirrorless Interchangeable Lens Camera With 28-70Mm Kit Lens', '1632413777_sony camera.jpg', 'sony,camera'),
(38, 14, 13, 'Canon EOS 3000D 18.0 MP DSLR Camera With EF-S 18-55mm IS (16 Gb Card )', 58000, 50, 'Canon EOS 3000D 18.0 MP DSLR Camera With EF-S 18-55mm IS (16 Gb Card )- Black', '1632414092_canon.jpg', 'canon,dslr,camera'),
(39, 14, 13, 'Canon EOS Mark II 7 D', 285000, 20, '~Dual Pixel CMOS AF\r\n~Dual DIGIC 6 image processor & 20.2M APS-C CMOS sensor\r\n~65-point all cross-type AF & 10 fps Continuous Shooting', '1632414489_canan11111.png', 'canon,camera'),
(40, 14, 14, 'GoPro HERO9 Black — Waterproof Action Camera with Touch Screen 5K Ultra HD Video 20MP', 40000, 20, 'Waterproof Action Camera with Touch Screen 5K Ultra HD Video 20MP', '1632453143_gopro.jpg', 'gopro,camera');

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
(1, 'Surya', 'chapai', 'surya@gmail.com', '3e9e13901718b156cf2ff220fef0381e', '9867847015', 'Jaimini-1 Baglung', 'devchuli-17'),
(2, 'asim', 'sharma', 'asim@gmail.com', 'a85098f00aba83313dca667d9504cd0b', '9844753563', 'jaimini-4 baglung', 'bahratpur n'),
(3, 'Adsbgbsa', 'jkhhgg', 'dbfdgvv@hdfbbdfb.com', '87223f9c0d8690ed92acd8d0c6a93f72', '9999999999', 'jdfjfgjdjfjd', 'jfjgjfii'),
(4, 'Adsbgbsa', 'jkhhgg', 'dsjbfb@nfbfn.com', '6eea9b7ef19179a06954edd0f6c05ceb', '9999999999', 'jdfjfgjdjfjd', 'jfjgjfii'),
(5, 'Adsbgbsa', 'jkhhgg', 'fcfddffddf@gmail.com', 'a8b30241a57c9e7e04f07cad1f6a618a', '9999999999', 'jdfjfgjdjfjd', 'jfjgjfii');

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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `brands`
--
ALTER TABLE `brands`
  MODIFY `brand_id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `cart`
--
ALTER TABLE `cart`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `cat_id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `order_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `product_id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=41;

--
-- AUTO_INCREMENT for table `user_info`
--
ALTER TABLE `user_info`
  MODIFY `user_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

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
