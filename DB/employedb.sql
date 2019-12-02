-- phpMyAdmin SQL Dump
-- version 4.9.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 02, 2019 at 10:14 PM
-- Server version: 10.3.15-MariaDB
-- PHP Version: 7.3.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `employedb`
--

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` int(6) UNSIGNED NOT NULL,
  `name` varchar(30) NOT NULL,
  `longdescription` varchar(255) DEFAULT NULL,
  `description` varchar(255) NOT NULL,
  `price` int(50) DEFAULT NULL,
  `image` varchar(50) DEFAULT NULL,
  `reg_date` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `name`, `longdescription`, `description`, `price`, `image`, `reg_date`) VALUES
(11, 'Huawei Mate30', 'The breakthrough of visual boundaries, the exploration of photography and videography, the liberation of power and speed, and the innovation of interaction are now ready to be discovered. Embrace the future with new possibilities.', 'The breakthrough of visual boundaries, the exploration of photography.', 4499, NULL, '2019-12-02 20:53:29'),
(12, 'PS4 PRO', 'REASONS TO BUY\n+\n4K, HDR gaming\n\n+\nFaster UI\n\n+\nOptical digital port returns\n\n+\nExcellent gaming ecosystem\n\nREASONS TO AVOID\n-\nTriple-tier design\n\n-\nNo Ultra HD Blu-ray player', 'With 4K and HDR-ready TVs getting more affordable every week, pairing it with a powerful PS4', 2899, NULL, '2019-12-02 20:56:07'),
(13, 'Xbox One', 'Xbox One S is the pinnacle of what Microsoft set out to create with the original Xbox One. Despite releasing three years ago, the One S is everything a game console should be: sleek, powerful and well-stocked. It\'s not quite at Xbox One X\'s level in terms', 'Xbox One S is the pinnacle of what Microsoft set out to create with the original Xbox One', 399, NULL, '2019-12-02 21:07:35'),
(14, 'Go Pro Hero 7', 'The Hero 7 Black is no longer GoPro\'s flagship action camera', 'The Hero 7 Black is no longer GoPro\'s flagship action cameraVideo and stills quality is excellent, the HyperSmooth', 389, NULL, '2019-12-02 21:11:00');

-- --------------------------------------------------------

--
-- Table structure for table `review`
--

CREATE TABLE `review` (
  `id` int(11) NOT NULL,
  `review` int(11) DEFAULT NULL,
  `product_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `review`
--
ALTER TABLE `review`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` int(6) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `review`
--
ALTER TABLE `review`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
