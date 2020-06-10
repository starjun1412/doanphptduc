-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1
-- Thời gian đã tạo: Th6 10, 2020 lúc 05:37 AM
-- Phiên bản máy phục vụ: 10.4.11-MariaDB
-- Phiên bản PHP: 7.3.18

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `complete-blog-php`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `comments`
--

CREATE TABLE `comments` (
  `IdComment` int(11) NOT NULL,
  `Ten` varchar(255) COLLATE ucs2_vietnamese_ci NOT NULL,
  `NoiDung` varchar(255) COLLATE ucs2_vietnamese_ci NOT NULL,
  `IdBaiViet` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=ucs2 COLLATE=ucs2_vietnamese_ci;

--
-- Đang đổ dữ liệu cho bảng `comments`
--

INSERT INTO `comments` (`IdComment`, `Ten`, `NoiDung`, `IdBaiViet`) VALUES
(1, 'Ã¡das', 'Ã¡dasda', 1),
(2, 'Ã¡d', 'sadasd', 1),
(3, 'Ã¡d', 'sadasd', 1),
(4, 'tung nui', 'adadsdsadsa', 6),
(5, 'Huyanhang', 'Đẹp quá đi', 67);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `posts`
--

CREATE TABLE `posts` (
  `id` int(11) NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `title` varchar(255) NOT NULL,
  `slug` varchar(255) NOT NULL,
  `views` int(11) NOT NULL DEFAULT 0,
  `image` varchar(255) NOT NULL,
  `body` text NOT NULL,
  `published` tinyint(1) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Đang đổ dữ liệu cho bảng `posts`
--

INSERT INTO `posts` (`id`, `user_id`, `title`, `slug`, `views`, `image`, `body`, `published`, `created_at`, `updated_at`) VALUES
(15, 1, 'New Start Studio - Goku & Kid Gohan 1/6 Scale Resin Statue', 'new-start-studio---goku-kid-gohan-1-6-scale-resin-statue', 0, '3.jpg', '&lt;pre&gt;\r\nSize:\r\n\r\n- Ratio 1/6: 40cm high, 45cm wide, 19cm deep\r\n\r\n- 1/4 ratio; 60cm high, 67cm wide, 29cm deep\r\n\r\nLimited: 200 copies\r\n\r\nDelivery time: Third quarter of 2020&lt;/pre&gt;\r\n\r\n&lt;p&gt;&lt;img alt=&quot;&quot; src=&quot;https://otakustore.vn/image/catalog/2020/06/new-start-studio-goku-kid-gohan-1-6-scale-resin-statue.jpg&quot; style=&quot;height:429px; width:750px&quot; /&gt;&lt;/p&gt;\r\n\r\n&lt;p&gt;&lt;img alt=&quot;&quot; src=&quot;https://otakustore.vn/image/catalog/2020/06/new-start-studio-goku-kid-gohan-1-6-scale-resin-statue-1.jpg&quot; style=&quot;height:1123px; width:750px&quot; /&gt;&lt;/p&gt;\r\n\r\n&lt;p&gt;&amp;nbsp;&lt;/p&gt;\r\n', 1, '2020-06-09 14:39:09', '2020-06-09 14:39:09'),
(16, 1, 'Twilight Studio - Fairy Tail - Erza Scarlet 1/6 Scale Resin Statue', 'twilight-studio---fairy-tail---erza-scarlet-1-6-scale-resin-statue', 0, '7.jpg', '&lt;p&gt;Size: 39cm high, 33cm wide, 30cm deep&lt;/p&gt;\r\n\r\n&lt;p&gt;Limited: 168 copies&lt;/p&gt;\r\n\r\n&lt;p&gt;Estimated shipping time: Third quarter of 2020&lt;/p&gt;\r\n\r\n&lt;p&gt;&lt;img alt=&quot;&quot; src=&quot;https://otakustore.vn/image/catalog/2020/06/twilight-studio-fairy-tail-erza-scarlet-1-6-scale-resin-statue.jpg&quot; style=&quot;height:500px; width:750px&quot; /&gt;&lt;/p&gt;\r\n\r\n&lt;p&gt;&lt;img alt=&quot;&quot; src=&quot;https://otakustore.vn/image/catalog/2020/06/twilight-studio-fairy-tail-erza-scarlet-1-6-scale-resin-statue-2.jpg&quot; /&gt;&lt;/p&gt;\r\n\r\n&lt;p&gt;&lt;img alt=&quot;&quot; src=&quot;https://otakustore.vn/image/catalog/2020/06/twilight-studio-fairy-tail-erza-scarlet-1-6-scale-resin-statue-4.jpg&quot; style=&quot;height:499px; width:750px&quot; /&gt;&lt;/p&gt;\r\n', 1, '2020-06-09 14:54:31', '2020-06-09 14:54:31'),
(17, 1, 'Fairy Tail Final Season - Natsu Dragneel - Pop Up Parade', 'fairy-tail-final-season---natsu-dragneel---pop-up-parade', 0, '8.jpg', '&lt;p&gt;Manufacturer: Good Smile Company&lt;/p&gt;\r\n\r\n&lt;p&gt;Size: 17cm high&lt;/p&gt;\r\n\r\n&lt;p&gt;Material: PVC, ABS&lt;/p&gt;\r\n\r\n&lt;p&gt;Release time: September 2020&lt;/p&gt;\r\n\r\n&lt;p&gt;&lt;img alt=&quot;&quot; src=&quot;https://otakustore.vn/image/catalog/2020/05/fairy-tail-final-season-natsu-dragneel-pop-up-parade-good-smile-company.jpg&quot; style=&quot;height:872px; width:600px&quot; /&gt;&lt;/p&gt;\r\n\r\n&lt;p&gt;&lt;img alt=&quot;&quot; src=&quot;https://otakustore.vn/image/catalog/2020/05/fairy-tail-final-season-natsu-dragneel-pop-up-parade-good-smile-company-1.jpg&quot; /&gt;&lt;/p&gt;\r\n\r\n&lt;p&gt;&lt;img alt=&quot;&quot; src=&quot;https://otakustore.vn/image/catalog/2020/05/fairy-tail-final-season-natsu-dragneel-pop-up-parade-good-smile-company-2.jpg&quot; /&gt;&lt;/p&gt;\r\n', 1, '2020-06-09 14:55:57', '2020-06-09 14:55:57'),
(18, 1, 'Fire Dragon Natsu 1/6 Scale Resin Statue', 'fire-dragon-natsu-1-6-scale-resin-statue', 0, '9.jpg', '&lt;p&gt;Size: 60cm high&lt;/p&gt;\r\n\r\n&lt;p&gt;Limited: 100 copies&lt;/p&gt;\r\n\r\n&lt;p&gt;Expected delivery time: Quarter IV, 2020&lt;/p&gt;\r\n\r\n&lt;p&gt;&lt;img alt=&quot;&quot; src=&quot;https://otakustore.vn/image/catalog/2020/04/legendary-collectibles-fire-dragon-natsu-1-6-scale-resin-statue.jpg&quot; style=&quot;height:986px; width:1280px&quot; /&gt;&lt;/p&gt;\r\n', 1, '2020-06-09 14:57:04', '2020-06-09 14:57:04'),
(19, 1, 'SD Studio - Golden Great Ape / Oozaru Resin Statue', 'sd-studio---golden-great-ape-oozaru-resin-statue', 0, '10.jpg', '&lt;p&gt;Size: 80cm high, 56cm wide&lt;/p&gt;\r\n\r\n&lt;p&gt;Limited: 300 copies&lt;/p&gt;\r\n\r\n&lt;p&gt;Delivery time: September 2020&lt;/p&gt;\r\n\r\n&lt;p&gt;&lt;img alt=&quot;&quot; src=&quot;https://otakustore.vn/image/catalog/2020/05/sd-studio-golden-great-ape-oozaru-resin-statue.jpg&quot; style=&quot;height:894px; width:750px&quot; /&gt;&lt;/p&gt;\r\n\r\n&lt;p&gt;&lt;img alt=&quot;&quot; src=&quot;https://otakustore.vn/image/catalog/2020/05/sd-studio-golden-great-ape-oozaru-resin-statue-1.jpg&quot; /&gt;&lt;/p&gt;\r\n\r\n&lt;p&gt;&lt;img alt=&quot;&quot; src=&quot;https://otakustore.vn/image/catalog/2020/05/sd-studio-golden-great-ape-oozaru-resin-statue-2.jpg&quot; /&gt;&lt;/p&gt;\r\n', 1, '2020-06-09 14:58:21', '2020-06-09 14:58:21'),
(20, 1, 'ND-Studios - Goku Vs Ubu Buu 1/6 Scale Resin Statue', 'nd-studios---goku-vs-ubu-buu-1-6-scale-resin-statue', 0, '11.jpg', '&lt;p&gt;Size: 34cm high, 24cm wide, 38cm deep&lt;/p&gt;\r\n\r\n&lt;p&gt;Ratio: 1/6&lt;/p&gt;\r\n\r\n&lt;p&gt;Limited to 99 copies&lt;/p&gt;\r\n\r\n&lt;p&gt;Release time: August 2020&lt;/p&gt;\r\n\r\n&lt;p&gt;&lt;img alt=&quot;&quot; src=&quot;https://otakustore.vn/image/catalog/2020/05/nd-studios-goku-vs-ubu-buu-1-6-scale-resin-statue.jpg&quot; style=&quot;height:562px; width:750px&quot; /&gt;&lt;/p&gt;\r\n\r\n&lt;p&gt;&lt;img alt=&quot;&quot; src=&quot;https://otakustore.vn/image/catalog/2020/05/nd-studios-goku-vs-ubu-buu-1-6-scale-resin-statue-1.jpg&quot; style=&quot;height:499px; width:750px&quot; /&gt;&lt;/p&gt;\r\n\r\n&lt;p&gt;&lt;img alt=&quot;&quot; src=&quot;https://otakustore.vn/image/catalog/2020/05/nd-studios-goku-vs-ubu-buu-1-6-scale-resin-statue-3.jpg&quot; /&gt;&lt;/p&gt;\r\n', 1, '2020-06-09 14:59:47', '2020-06-09 14:59:47'),
(21, 1, 'PinJiang Studio - Son Goku SSJ3 1/6 Scale Resin Statue', 'pinjiang-studio---son-goku-ssj3-1-6-scale-resin-statue', 0, '12.jpg', '&lt;p&gt;Size:&lt;/p&gt;\r\n\r\n&lt;p&gt;- 1/6 ratio: 50cm high, 40cm wide, 37cm deep&lt;/p&gt;\r\n\r\n&lt;p&gt;- 1/4 ratio: 70cm high, 60cm wide, 56cm deep&lt;/p&gt;\r\n\r\n&lt;p&gt;Limited edition: 150 1/6 copies and 88 1/4 copies&lt;/p&gt;\r\n\r\n&lt;p&gt;Expected delivery time: Quarter IV, 2020&lt;/p&gt;\r\n\r\n&lt;p&gt;* There are LEDs in the base and the ball.&lt;/p&gt;\r\n\r\n&lt;p&gt;&lt;img alt=&quot;&quot; src=&quot;https://otakustore.vn/image/catalog/2020/05/pinjiang-studio-son-goku-ssj3-1-6-scale-resin-statue.jpg&quot; style=&quot;height:811px; width:750px&quot; /&gt;&lt;/p&gt;\r\n\r\n&lt;p&gt;&lt;img alt=&quot;&quot; src=&quot;https://otakustore.vn/image/catalog/2020/05/pinjiang-studio-son-goku-ssj3-1-6-scale-resin-statue-1.jpg&quot; /&gt;&lt;img alt=&quot;&quot; src=&quot;https://otakustore.vn/image/catalog/2020/05/pinjiang-studio-son-goku-ssj3-1-6-scale-resin-statue-3.jpg&quot; style=&quot;height:506px; width:750px&quot; /&gt;&lt;/p&gt;\r\n', 1, '2020-06-09 15:01:09', '2020-06-09 15:01:09'),
(22, 1, 'TOYS PARK Studio - Kid Goku Resin Statue', 'toys-park-studio---kid-goku-resin-statue', 0, '46.jpg', '&lt;p&gt;Size: 88CM high, 55CM wide, 35CM deep&lt;/p&gt;\r\n\r\n&lt;p&gt;Weight: 14.5kg&lt;/p&gt;\r\n\r\n&lt;p&gt;Material: Polystone&lt;/p&gt;\r\n\r\n&lt;p&gt;Limited: 300 copies&lt;/p&gt;\r\n\r\n&lt;p&gt;Issuing time: Quarter III, 2020&lt;/p&gt;\r\n\r\n&lt;p&gt;&lt;img alt=&quot;&quot; src=&quot;https://otakustore.vn/image/catalog/2020/05/toys-park-studio-kid-goku-resin-statue.jpg&quot; style=&quot;height:1125px; width:750px&quot; /&gt;&lt;/p&gt;\r\n\r\n&lt;p&gt;&lt;img alt=&quot;&quot; src=&quot;https://otakustore.vn/image/catalog/2020/05/toys-park-studio-kid-goku-resin-statue-1.jpg&quot; /&gt;&lt;/p&gt;\r\n\r\n&lt;p&gt;&lt;img alt=&quot;&quot; src=&quot;https://otakustore.vn/image/catalog/2020/05/toys-park-studio-kid-goku-resin-statue-2.jpg&quot; style=&quot;height:1125px; width:750px&quot; /&gt;&lt;/p&gt;\r\n', 1, '2020-06-09 15:02:26', '2020-06-09 15:02:26'),
(24, 1, 'Super Saiyan Son Gohan 1/6 Scale Resin Statue', 'super-saiyan-son-gohan-1-6-scale-resin-statue', 0, '13.jpg', '&lt;p&gt;usable size: height 35cm, width 28cm, depth 24cm&lt;/p&gt;\r\n\r\n&lt;p&gt;Limited: 199 copies&lt;/p&gt;\r\n\r\n&lt;p&gt;Release time: Expected fourth quarter of 2020&lt;/p&gt;\r\n\r\n&lt;p&gt;&lt;img alt=&quot;&quot; src=&quot;https://otakustore.vn/image/catalog/2020/05/light-weapons-studio-super-saiyan-son-gohan-1-6-scale-resin-statue.jpg&quot; style=&quot;height:1225px; width:800px&quot; /&gt;&lt;/p&gt;\r\n\r\n&lt;p&gt;&lt;img alt=&quot;&quot; src=&quot;https://otakustore.vn/image/catalog/2020/05/light-weapons-studio-super-saiyan-son-gohan-1-6-scale-resin-statue-1.jpg&quot; style=&quot;height:450px; width:800px&quot; /&gt;&lt;/p&gt;\r\n\r\n&lt;p&gt;&lt;img alt=&quot;&quot; src=&quot;https://otakustore.vn/image/catalog/2020/05/light-weapons-studio-super-saiyan-son-gohan-1-6-scale-resin-statue-3.jpg&quot; style=&quot;height:532px; width:800px&quot; /&gt;&lt;/p&gt;\r\n', 1, '2020-06-09 15:06:32', '2020-06-09 15:06:32'),
(25, 1, 'Bardock & Raditz 1/6 Scale Resin Statue', 'bardock-raditz-1-6-scale-resin-statue', 0, '14.jpg', '&lt;p&gt;Size: 36cm high, 30cm wide, 30cm deep&lt;/p&gt;\r\n\r\n&lt;p&gt;Ratio: 1/6&lt;/p&gt;\r\n\r\n&lt;p&gt;Limited: 150 copies&lt;/p&gt;\r\n\r\n&lt;p&gt;Expected delivery time: Third quarter of 2020&lt;/p&gt;\r\n\r\n&lt;p&gt;&lt;img alt=&quot;&quot; src=&quot;https://otakustore.vn/image/catalog/2020/05/djfungshing-studio-bardock-raditz-1-6-scale-resin-statue.jpg&quot; style=&quot;height:800px; width:800px&quot; /&gt;&lt;/p&gt;\r\n\r\n&lt;p&gt;&lt;img alt=&quot;&quot; src=&quot;https://otakustore.vn/image/catalog/2020/05/djfungshing-studio-bardock-raditz-1-6-scale-resin-statue-1.jpg&quot; /&gt;&lt;/p&gt;\r\n\r\n&lt;p&gt;&lt;img alt=&quot;&quot; src=&quot;https://otakustore.vn/image/catalog/2020/05/djfungshing-studio-bardock-raditz-1-6-scale-resin-statue-3.jpg&quot; style=&quot;height:1200px; width:800px&quot; /&gt;&lt;/p&gt;\r\n', 1, '2020-06-09 15:08:02', '2020-06-09 15:08:02'),
(26, 1, 'X-STUDIO - Black Goku SSJ Rose 1/3 Scale Resin Statue', 'x-studio---black-goku-ssj-rose-1-3-scale-resin-statue', 0, '15.jpg', '&lt;p&gt;Size: 85cm high, 45cm wide&lt;/p&gt;\r\n\r\n&lt;p&gt;Scale: 1/3&lt;/p&gt;\r\n\r\n&lt;p&gt;Limited: 99 copies&lt;/p&gt;\r\n\r\n&lt;p&gt;Expected delivery time: August 2020&lt;/p&gt;\r\n\r\n&lt;p&gt;&lt;img alt=&quot;&quot; src=&quot;https://otakustore.vn/image/catalog/2020/04/x-studio-black-goku-ssj-rose-1-3-scale-resin-statue.jpg&quot; style=&quot;height:893px; width:750px&quot; /&gt;&lt;/p&gt;\r\n\r\n&lt;p&gt;&lt;img alt=&quot;&quot; src=&quot;https://otakustore.vn/image/catalog/2020/04/x-studio-black-goku-ssj-rose-1-3-scale-resin-statue-1.jpg&quot; /&gt;&lt;/p&gt;\r\n\r\n&lt;p&gt;&lt;img alt=&quot;&quot; src=&quot;https://otakustore.vn/image/catalog/2020/04/x-studio-black-goku-ssj-rose-1-3-scale-resin-statue-2.jpg&quot; /&gt;&lt;/p&gt;\r\n', 1, '2020-06-09 15:09:36', '2020-06-09 15:09:36'),
(27, 1, 'Fat Gotenks SD Scale Resin Statue', 'fat-gotenks-sd-scale-resin-statue', 0, '16.jpg', '&lt;p&gt;Size: 18cm high, 10cm wide, 15cm deep&lt;/p&gt;\r\n\r\n&lt;p&gt;Limited: 388 copies&lt;/p&gt;\r\n\r\n&lt;p&gt;Issuing time: Quarter IV, 2020&lt;/p&gt;\r\n\r\n&lt;p&gt;&lt;img alt=&quot;&quot; src=&quot;https://otakustore.vn/image/catalog/2020/04/dim-model-studio-fat-gotenks-sd-scale-resin-statue.jpg&quot; style=&quot;height:891px; width:750px&quot; /&gt;&lt;/p&gt;\r\n\r\n&lt;p&gt;&lt;img alt=&quot;&quot; src=&quot;https://otakustore.vn/image/catalog/2020/04/dim-model-studio-fat-gotenks-sd-scale-resin-statue-1.jpg&quot; /&gt;&lt;/p&gt;\r\n\r\n&lt;p&gt;&lt;img alt=&quot;&quot; src=&quot;https://otakustore.vn/image/catalog/2020/04/dim-model-studio-fat-gotenks-sd-scale-resin-statue-2.jpg&quot; style=&quot;height:1068px; width:750px&quot; /&gt;&lt;/p&gt;\r\n', 1, '2020-06-09 15:10:58', '2020-06-09 15:10:58'),
(28, 1, 'Uchiha Sasuke Summon of Susanoo HQS by Tsume', 'uchiha-sasuke-summon-of-susanoo-hqs-by-tsume', 0, '17.jpg', '&lt;p&gt;&lt;strong&gt;Scale 1/8.&lt;/strong&gt;&lt;/p&gt;\r\n\r\n&lt;p&gt;&lt;strong&gt;Size: W: 33 cm / D: 47cm / H: 45 cm.&lt;/strong&gt;&amp;nbsp;&lt;/p&gt;\r\n\r\n&lt;p&gt;&lt;strong&gt;Total run&lt;/strong&gt;&lt;strong&gt;&amp;nbsp;2500 pieces.&lt;/strong&gt;&lt;/p&gt;\r\n\r\n&lt;p&gt;&lt;strong&gt;Approximative delivery date: End of 2020&lt;/strong&gt;&lt;/p&gt;\r\n\r\n&lt;p&gt;&amp;copy; 2002 MASASHI KISHIMOTO / 2007 SHIPPUDEN. All Rights Reserved.&lt;/p&gt;\r\n\r\n&lt;p&gt;&lt;img alt=&quot;&quot; src=&quot;https://otakustore.vn/image/catalog/2019/04/naruto-shippuden-uchiha-sasuke-summon-of-susanoo-hqs-by-tsume.jpg&quot; style=&quot;height:998px; width:750px&quot; /&gt;&lt;/p&gt;\r\n\r\n&lt;p&gt;&lt;img alt=&quot;&quot; src=&quot;https://otakustore.vn/image/catalog/2019/04/naruto-shippuden-uchiha-sasuke-summon-of-susanoo-hqs-by-tsume-1.jpg&quot; style=&quot;height:500px; width:750px&quot; /&gt;&lt;/p&gt;\r\n\r\n&lt;p&gt;&lt;img alt=&quot;&quot; src=&quot;https://otakustore.vn/image/catalog/2019/04/naruto-shippuden-uchiha-sasuke-summon-of-susanoo-hqs-by-tsume-2.jpg&quot; /&gt;&lt;/p&gt;\r\n', 1, '2020-06-09 15:12:08', '2020-06-09 15:12:08'),
(29, 1, 'Chikara Studio Senju Hashirama 1/6 Scale Resin Statue', 'chikara-studio-senju-hashirama-1-6-scale-resin-statue', 0, '18.jpg', '&lt;p&gt;Size: 45cm high&lt;/p&gt;\r\n\r\n&lt;p&gt;Limited: 228 copies&lt;/p&gt;\r\n\r\n&lt;p&gt;Expected delivery time: Quarter IV, 2020&lt;/p&gt;\r\n\r\n&lt;p&gt;&lt;img alt=&quot;&quot; src=&quot;https://otakustore.vn/image/catalog/2020/05/chikara-studio-senju-hashirama-1-6-scale-resin-statue.jpg&quot; style=&quot;height:800px; width:800px&quot; /&gt;&lt;/p&gt;\r\n\r\n&lt;p&gt;&lt;img alt=&quot;&quot; src=&quot;https://otakustore.vn/image/catalog/2020/05/chikara-studio-senju-hashirama-1-6-scale-resin-statue-1.jpg&quot; style=&quot;height:800px; width:800px&quot; /&gt;&lt;/p&gt;\r\n\r\n&lt;p&gt;&lt;img alt=&quot;&quot; src=&quot;https://otakustore.vn/image/catalog/2020/05/chikara-studio-senju-hashirama-1-6-scale-resin-statue-3.jpg&quot; style=&quot;height:800px; width:800px&quot; /&gt;&lt;/p&gt;\r\n', 1, '2020-06-09 15:13:37', '2020-06-09 15:13:37'),
(30, 1, 'Armor Susanoo Uchiha Itachi Resin Statue', 'armor-susanoo-uchiha-itachi-resin-statue', 0, '19.jpg', '&lt;p&gt;Size: 28cm high, 27cm wide, 24cm deep&lt;/p&gt;\r\n\r\n&lt;p&gt;Limited: 399 copies&lt;/p&gt;\r\n\r\n&lt;p&gt;Issuing time: Quarter III, 2020&lt;/p&gt;\r\n\r\n&lt;p&gt;&lt;img alt=&quot;&quot; src=&quot;https://otakustore.vn/image/catalog/2020/05/lx-studio-armor-susanoo-uchiha-itachi-resin-statue.jpg&quot; style=&quot;height:750px; width:750px&quot; /&gt;&lt;/p&gt;\r\n\r\n&lt;p&gt;&lt;img alt=&quot;&quot; src=&quot;https://otakustore.vn/image/catalog/2020/05/lx-studio-armor-susanoo-uchiha-itachi-resin-statue-1.jpg&quot; style=&quot;height:755px; width:750px&quot; /&gt;&lt;/p&gt;\r\n\r\n&lt;p&gt;&lt;img alt=&quot;&quot; src=&quot;https://otakustore.vn/image/catalog/2020/05/lx-studio-armor-susanoo-uchiha-itachi-resin-statue-2.jpg&quot; style=&quot;height:524px; width:750px&quot; /&gt;&lt;/p&gt;\r\n', 1, '2020-06-09 15:15:03', '2020-06-09 15:15:03'),
(31, 1, 'Hiruzen Sarutobi 1/7 Scale Resin Statue', 'hiruzen-sarutobi-1-7-scale-resin-statue', 0, '20.jpg', '&lt;p&gt;Manufacturer: Model Palace&lt;/p&gt;\r\n\r\n&lt;p&gt;Size: 42cm high, 29cm wide, 34cm deep&lt;/p&gt;\r\n\r\n&lt;p&gt;Limited: 300 copies&lt;/p&gt;\r\n\r\n&lt;p&gt;Estimated shipping time: Fourth Quarter of 2020&lt;/p&gt;\r\n\r\n&lt;p&gt;&lt;img alt=&quot;&quot; src=&quot;https://otakustore.vn/image/catalog/2020/04/model-palace-hiruzen-sarutobi-1-7-scale-resin-statue.jpg&quot; style=&quot;height:512px; width:750px&quot; /&gt;&lt;/p&gt;\r\n\r\n&lt;p&gt;&lt;img alt=&quot;&quot; src=&quot;https://otakustore.vn/image/catalog/2020/04/model-palace-hiruzen-sarutobi-1-7-scale-resin-statue-1.jpg&quot; style=&quot;height:1081px; width:750px&quot; /&gt;&lt;/p&gt;\r\n\r\n&lt;p&gt;&lt;img alt=&quot;&quot; src=&quot;https://otakustore.vn/image/catalog/2020/04/model-palace-hiruzen-sarutobi-1-7-scale-resin-statue-2.jpg&quot; /&gt;&lt;/p&gt;\r\n', 1, '2020-06-09 15:16:16', '2020-06-09 15:16:16'),
(32, 1, 'Senju Tsunade 1/4 Scale Resin Statue', 'senju-tsunade-1-4-scale-resin-statue', 0, '21.jpg', '&lt;p&gt;Size: 55cm high, 47cm wide, 42cm deep&lt;/p&gt;\r\n\r\n&lt;p&gt;Scale: 1/4&lt;/p&gt;\r\n\r\n&lt;p&gt;Limited: 138 copies&lt;/p&gt;\r\n\r\n&lt;p&gt;Shipping time: Fourth quarter of 2020&lt;/p&gt;\r\n\r\n&lt;p&gt;The 1/6 version is 35cm high, 30cm wide, 27cm deep. Limited to 318 copies. Price 6m5&lt;/p&gt;\r\n\r\n&lt;p&gt;&lt;img alt=&quot;&quot; src=&quot;https://otakustore.vn/image/catalog/2020/04/mhd-studio-senju-tsunade-1-4-scale-resin-statue.jpg&quot; style=&quot;height:474px; width:750px&quot; /&gt;&lt;/p&gt;\r\n\r\n&lt;p&gt;&lt;img alt=&quot;&quot; src=&quot;https://otakustore.vn/image/catalog/2020/04/mhd-studio-senju-tsunade-1-4-scale-resin-statue-1.jpg&quot; style=&quot;height:478px; width:750px&quot; /&gt;&lt;/p&gt;\r\n\r\n&lt;p&gt;&lt;img alt=&quot;&quot; src=&quot;https://otakustore.vn/image/catalog/2020/04/mhd-studio-senju-tsunade-1-4-scale-resin-statue-2.jpg&quot; /&gt;&lt;/p&gt;\r\n', 1, '2020-06-09 15:17:28', '2020-06-09 15:17:28'),
(33, 1, 'Rasengan Kyubi Resin Statue', 'rasengan-kyubi-resin-statue', 0, '22.jpg', '&lt;p&gt;K&amp;iacute;ch th??c: cao 30cm, r?ng 27cm, s&amp;acirc;u 22cm&lt;/p&gt;\r\n\r\n&lt;p&gt;Gi?i h?n: 399 b?n&lt;/p&gt;\r\n\r\n&lt;p&gt;Th?i gian v?n chuy?n d? ki?n: Th&amp;aacute;ng 7 n?m 2020&lt;/p&gt;\r\n\r\n&lt;p&gt;&lt;img alt=&quot;&quot; src=&quot;https://otakustore.vn/image/catalog/2020/02/lx-studio-rasengan-kyubi-resin-statue.jpg&quot; style=&quot;height:704px; width:750px&quot; /&gt;&lt;/p&gt;\r\n\r\n&lt;p&gt;&lt;img alt=&quot;&quot; src=&quot;https://otakustore.vn/image/catalog/2020/02/lx-studio-rasengan-kyubi-resin-statue-1.jpg&quot; style=&quot;height:704px; width:750px&quot; /&gt;&lt;/p&gt;\r\n\r\n&lt;p&gt;&lt;img alt=&quot;&quot; src=&quot;https://otakustore.vn/image/catalog/2020/02/lx-studio-rasengan-kyubi-resin-statue-2.jpg&quot; style=&quot;height:704px; width:750px&quot; /&gt;&lt;/p&gt;\r\n', 1, '2020-06-09 15:18:33', '2020-06-09 15:18:33'),
(34, 1, 'Yondaime Hokage: Namikaze Minato Resin Statue', 'yondaime-hokage-namikaze-minato-resin-statue', 0, '23.jpg', '&lt;p&gt;Size: 30cm high, 37cm wide, 39cm deep&lt;/p&gt;\r\n\r\n&lt;p&gt;Limited: 200 copies&lt;/p&gt;\r\n\r\n&lt;p&gt;Expected delivery time: May 2020&lt;/p&gt;\r\n\r\n&lt;p&gt;&lt;img alt=&quot;&quot; src=&quot;https://otakustore.vn/image/catalog/2020/01/sxg-studio-yondaime-hokage-namikaze-minato-resin-statue.jpg&quot; style=&quot;height:433px; width:750px&quot; /&gt;&lt;/p&gt;\r\n\r\n&lt;p&gt;&lt;img alt=&quot;&quot; src=&quot;https://otakustore.vn/image/catalog/2020/01/sxg-studio-yondaime-hokage-namikaze-minato-resin-statue-1.jpg&quot; style=&quot;height:499px; width:750px&quot; /&gt;&lt;/p&gt;\r\n\r\n&lt;p&gt;&lt;img alt=&quot;&quot; src=&quot;https://otakustore.vn/image/catalog/2020/01/sxg-studio-yondaime-hokage-namikaze-minato-resin-statue-3.jpg&quot; style=&quot;height:888px; width:750px&quot; /&gt;&lt;/p&gt;\r\n', 1, '2020-06-09 15:23:15', '2020-06-09 15:23:15'),
(35, 1, 'Hakke Rokujuuyonshou 1/7 Scale Resin Statue', 'hakke-rokujuuyonshou-1-7-scale-resin-statue', 0, '24.jpg', '&lt;p&gt;Size:&lt;/p&gt;\r\n\r\n&lt;p&gt;Ratio: 1/7&lt;/p&gt;\r\n\r\n&lt;p&gt;Limited: 288 copies&lt;/p&gt;\r\n\r\n&lt;p&gt;Release time: April 2020&lt;/p&gt;\r\n\r\n&lt;p&gt;Hakke Rokujuuyonshou is the most esoteric esoteric of the Hyuuga family kekkei genkai, which belongs to taijutsu (art). This is a special technique invented by the main family. When the opponent stands within the eight trigrams of interest by Hyuuga, they will catch all of Hyuuga&amp;#39;s consecutive attacks. This technique allows the user to use the Byakugan to see the chakra flow in the opponent&amp;#39;s body and use Jyuuken (demand) to hit 126 important tenketsu points directly. Start by hitting 2 points at the same time, then 4, 8, 16, 32 and finally 64 points at the same time. When reaching the level of 64 points, the chakra system in the opponent is seriously damaged, temporarily stopping the chakra circulation and preventing the opponent from using jutsu.&lt;/p&gt;\r\n\r\n&lt;p&gt;&lt;img alt=&quot;&quot; src=&quot;https://otakustore.vn/image/catalog/2019/12/singularity-workshop-hyuuga-neji-hakke-rokujuuyonshou-1-7-scale-resin-statue.jpg&quot; style=&quot;height:1250px; width:1080px&quot; /&gt;&lt;/p&gt;\r\n\r\n&lt;p&gt;&lt;img alt=&quot;&quot; src=&quot;https://otakustore.vn/image/catalog/2019/12/singularity-workshop-hyuuga-neji-hakke-rokujuuyonshou-1-7-scale-resin-statue-1.jpg&quot; style=&quot;height:1250px; width:1080px&quot; /&gt;&lt;/p&gt;\r\n', 1, '2020-06-09 15:25:41', '2020-06-09 15:25:41'),
(36, 1, 'Erza Scarlet 1/6 Scale Resin Statue', 'erza-scarlet-1-6-scale-resin-statue', 0, '25.jpg', '&lt;p&gt;Size: 46cm high, 27.5cm wide, 25cm deep&lt;/p&gt;\r\n\r\n&lt;p&gt;Limited: 288 copies&lt;/p&gt;\r\n\r\n&lt;p&gt;Estimated shipping time: Fourth Quarter of 2020&lt;/p&gt;\r\n\r\n&lt;p&gt;&lt;img alt=&quot;&quot; src=&quot;https://otakustore.vn/image/catalog/2020/05/tpa-studio-fairy-tail-erza-scarlet-1-6-scale-resin-statue.jpg&quot; style=&quot;height:1093px; width:750px&quot; /&gt;&lt;/p&gt;\r\n\r\n&lt;p&gt;&lt;img alt=&quot;&quot; src=&quot;https://otakustore.vn/image/catalog/2020/05/tpa-studio-fairy-tail-erza-scarlet-1-6-scale-resin-statue-1.jpg&quot; /&gt;&lt;/p&gt;\r\n\r\n&lt;p&gt;&lt;img alt=&quot;&quot; src=&quot;https://otakustore.vn/image/catalog/2020/05/tpa-studio-fairy-tail-erza-scarlet-1-6-scale-resin-statue-3.jpg&quot; /&gt;&lt;/p&gt;\r\n', 1, '2020-06-09 15:27:16', '2020-06-09 15:27:16'),
(37, 1, 'Fire Dragon Natsu 1/6 Scale Resin Statuef', 'fire-dragon-natsu-1-6-scale-resin-statuef', 0, '26.jpg', '&lt;p&gt;Size: 45cm high, 49cm across, 40cm deep&lt;/p&gt;\r\n\r\n&lt;p&gt;Ratio: 1/6&lt;/p&gt;\r\n\r\n&lt;p&gt;Limited: 333 copies&lt;/p&gt;\r\n\r\n&lt;p&gt;Expected shipping time: fourth quarter of 2019&lt;/p&gt;\r\n\r\n&lt;p&gt;&lt;img alt=&quot;&quot; src=&quot;https://otakustore.vn/image/catalog/2019/08/monkey-d-studio-fire-dragon-natsu-1-6-scale-resin-statue-3.jpg&quot; style=&quot;height:422px; width:750px&quot; /&gt;&lt;/p&gt;\r\n\r\n&lt;p&gt;&lt;img alt=&quot;&quot; src=&quot;https://otakustore.vn/image/catalog/2019/08/monkey-d-studio-fire-dragon-natsu-1-6-scale-resin-statue-2.jpg&quot; style=&quot;height:422px; width:750px&quot; /&gt;&lt;img alt=&quot;&quot; src=&quot;https://otakustore.vn/image/catalog/2019/08/monkey-d-studio-fire-dragon-natsu-1-6-scale-resin-statue.jpg&quot; style=&quot;height:422px; width:750px&quot; /&gt;&lt;/p&gt;\r\n', 1, '2020-06-09 15:29:47', '2020-06-09 15:29:47'),
(38, 1, 'Twilight Studio - Fire Dragon Natsu 1/6 Scale Resin Statue', 'twilight-studio---fire-dragon-natsu-1-6-scale-resin-statue', 0, '27.jpg', '&lt;p&gt;Size:&lt;/p&gt;\r\n\r\n&lt;p&gt;- 1/4 ratio: 80cm high, 83cm deep, 135cm wide. Limited to 88 copies. Price 16.000.000?&lt;/p&gt;\r\n\r\n&lt;p&gt;- 1/6 ratio: 60cm high, 62cm deep, 96cm wide. Limited to 268 copies. Price 13.000.000?&lt;/p&gt;\r\n\r\n&lt;p&gt;Estimated shipping time: second quarter of 2020&lt;/p&gt;\r\n\r\n&lt;p&gt;&lt;img alt=&quot;&quot; src=&quot;https://otakustore.vn/image/catalog/2019/10/twilight-studio-fire-dragon-natsu-1-6-scale-resin-statue.jpg&quot; style=&quot;height:353px; width:750px&quot; /&gt;&lt;/p&gt;\r\n\r\n&lt;p&gt;&lt;img alt=&quot;&quot; src=&quot;https://otakustore.vn/image/catalog/2019/10/twilight-studio-fire-dragon-natsu-1-6-scale-resin-statue-1.jpg&quot; style=&quot;height:501px; width:750px&quot; /&gt;&lt;/p&gt;\r\n\r\n&lt;p&gt;&lt;img alt=&quot;&quot; src=&quot;https://otakustore.vn/image/catalog/2019/10/twilight-studio-fire-dragon-natsu-1-6-scale-resin-statue-2.jpg&quot; /&gt;&lt;/p&gt;\r\n', 1, '2020-06-09 15:30:59', '2020-06-09 15:30:59'),
(39, 1, 'DT Studio - Natsu Dragneel 1/6 Scale Resin Statue', 'dt-studio---natsu-dragneel-1-6-scale-resin-statue', 0, '28.jpg', '&lt;p&gt;Size:&lt;/p&gt;\r\n\r\n&lt;p&gt;- 1/4 ratio: 80cm high, 83cm deep, 135cm wide. Limited to 88 copies. Price 16.000.000?&lt;/p&gt;\r\n\r\n&lt;p&gt;- 1/6 ratio: 60cm high, 62cm deep, 96cm wide. Limited to 268 copies. Price 13.000.000?&lt;/p&gt;\r\n\r\n&lt;p&gt;Estimated shipping time: second quarter of 2020...&lt;/p&gt;\r\n\r\n&lt;p&gt;&lt;img alt=&quot;&quot; src=&quot;https://otakustore.vn/image/catalog/2019/10/dt-studio-natsu-dragneel-1-6-scale-resin-statue.jpg&quot; style=&quot;height:1127px; width:750px&quot; /&gt;&lt;/p&gt;\r\n\r\n&lt;p&gt;&lt;img alt=&quot;&quot; src=&quot;https://otakustore.vn/image/catalog/2019/10/dt-studio-natsu-dragneel-1-6-scale-resin-statue-1.jpg&quot; /&gt;&lt;/p&gt;\r\n\r\n&lt;p&gt;&lt;img alt=&quot;&quot; src=&quot;https://otakustore.vn/image/catalog/2019/10/dt-studio-natsu-dragneel-1-6-scale-resin-statue-2.jpg&quot; style=&quot;height:1127px; width:750px&quot; /&gt;&lt;/p&gt;\r\n', 1, '2020-06-09 15:32:39', '2020-06-09 15:32:39'),
(40, 1, 'Green Lotus - Fairy Tail Erza Scarlet 1/6 Scale Resin Statue', 'green-lotus---fairy-tail-erza-scarlet-1-6-scale-resin-statue', 0, '29.jpg', '&lt;p&gt;Size: 43cm wide, 50cm high, 36cm deep&lt;/p&gt;\r\n\r\n&lt;p&gt;Limit:&lt;/p&gt;\r\n\r\n&lt;p&gt;Estimated shipping time: Third quarter of 2020&lt;/p&gt;\r\n\r\n&lt;p&gt;&lt;img alt=&quot;&quot; src=&quot;https://otakustore.vn/image/catalog/2020/02/green-lotus-fairy-tail-erza-scarlet-1-6-scale-resin-statue.jpg&quot; style=&quot;height:500px; width:750px&quot; /&gt;&lt;/p&gt;\r\n\r\n&lt;p&gt;&lt;img alt=&quot;&quot; src=&quot;https://otakustore.vn/image/catalog/2020/02/green-lotus-fairy-tail-erza-scarlet-1-6-scale-resin-statue-1.jpg&quot; style=&quot;height:499px; width:750px&quot; /&gt;&lt;/p&gt;\r\n\r\n&lt;p&gt;&lt;img alt=&quot;&quot; src=&quot;https://otakustore.vn/image/catalog/2020/02/green-lotus-fairy-tail-erza-scarlet-1-6-scale-resin-statue-4.jpg&quot; style=&quot;height:500px; width:750px&quot; /&gt;&lt;/p&gt;\r\n', 1, '2020-06-09 15:34:26', '2020-06-09 15:34:26'),
(41, 1, 'Dragon Ball WCF - Fat Majin Buu', 'dragon-ball-wcf---fat-majin-buu', 0, '30.jpg', '&lt;p&gt;Size: 14cm high&lt;/p&gt;\r\n\r\n&lt;p&gt;Limited: 300 copies&lt;/p&gt;\r\n\r\n&lt;p&gt;Delivery time: Third quarter of 2020&lt;/p&gt;\r\n\r\n&lt;p&gt;&lt;img alt=&quot;&quot; src=&quot;https://otakustore.vn/image/catalog/2020/05/a-studio-dragon-ball-wcf-fat-majin-buu.jpg&quot; style=&quot;height:499px; width:750px&quot; /&gt;&lt;/p&gt;\r\n\r\n&lt;p&gt;&lt;img alt=&quot;&quot; src=&quot;https://otakustore.vn/image/catalog/2020/05/a-studio-dragon-ball-wcf-fat-majin-buu-2.jpg&quot; style=&quot;height:499px; width:750px&quot; /&gt;&lt;/p&gt;\r\n\r\n&lt;p&gt;&lt;img alt=&quot;&quot; src=&quot;https://otakustore.vn/image/catalog/2020/05/a-studio-dragon-ball-wcf-fat-majin-buu-3.jpg&quot; style=&quot;height:499px; width:750px&quot; /&gt;&lt;/p&gt;\r\n', 1, '2020-06-09 15:35:38', '2020-06-09 15:35:38'),
(42, 1, 'F4 Studio - Veku (Goku And Vegeta Fusion Fail) Resin Statue', 'f4-studio---veku-goku-and-vegeta-fusion-fail-resin-statue', 0, '31.jpg', '&lt;p&gt;FROM FANS FOR FANS Studio&lt;/p&gt;\r\n\r\n&lt;p&gt;Size: 12 * 12 * 20cm&lt;/p&gt;\r\n\r\n&lt;p&gt;Limited: 150 copies&lt;/p&gt;\r\n\r\n&lt;p&gt;Delivery time: Third quarter of 2020&lt;/p&gt;\r\n\r\n&lt;p&gt;&lt;img alt=&quot;&quot; src=&quot;https://otakustore.vn/image/catalog/2020/06/f4-studio-veku-goku-and-vegeta-fusion-fail-resin-statue.jpg&quot; style=&quot;height:937px; width:750px&quot; /&gt;&lt;/p&gt;\r\n\r\n&lt;p&gt;&lt;img alt=&quot;&quot; src=&quot;https://otakustore.vn/image/catalog/2020/06/f4-studio-veku-goku-and-vegeta-fusion-fail-resin-statue-1.jpg&quot; style=&quot;height:535px; width:750px&quot; /&gt;&lt;/p&gt;\r\n\r\n&lt;p&gt;&lt;img alt=&quot;&quot; src=&quot;https://otakustore.vn/image/catalog/2020/06/f4-studio-veku-goku-and-vegeta-fusion-fail-resin-statue-3.jpg&quot; style=&quot;height:535px; width:750px&quot; /&gt;&lt;/p&gt;\r\n', 1, '2020-06-09 15:37:00', '2020-06-09 15:37:00'),
(43, 1, 'LeaGue Studio - Dragon Ball - North Kaio & Bubbles', 'league-studio---dragon-ball---north-kaio-bubbles', 0, '32.jpg', '&lt;p&gt;Size: 7cm high, 18cm wide&lt;/p&gt;\r\n\r\n&lt;p&gt;Limited: 288 copies&lt;/p&gt;\r\n\r\n&lt;p&gt;Issuing time: Quarter III, 2020&lt;/p&gt;\r\n\r\n&lt;p&gt;&lt;img alt=&quot;&quot; src=&quot;https://otakustore.vn/image/catalog/2020/05/league-studio-dragon-ball-north-kaio-bubbles.jpg&quot; style=&quot;height:500px; width:750px&quot; /&gt;&lt;/p&gt;\r\n\r\n&lt;p&gt;&lt;img alt=&quot;&quot; src=&quot;https://otakustore.vn/image/catalog/2020/05/league-studio-dragon-ball-north-kaio-bubbles-1.jpg&quot; style=&quot;height:500px; width:750px&quot; /&gt;&lt;/p&gt;\r\n\r\n&lt;p&gt;&lt;img alt=&quot;&quot; src=&quot;https://otakustore.vn/image/catalog/2020/05/league-studio-dragon-ball-north-kaio-bubbles-3.jpg&quot; /&gt;&lt;/p&gt;\r\n', 1, '2020-06-09 15:38:54', '2020-06-09 15:38:54'),
(44, 1, 'Uzumaki Naruto 1/4 Scale Resin Statue', 'uzumaki-naruto-1-4-scale-resin-statue', 0, '34.jpg', '&lt;p&gt;Size: 40cm high&lt;/p&gt;\r\n\r\n&lt;p&gt;Weight:&lt;/p&gt;\r\n\r\n&lt;p&gt;Limited: 188 copies&lt;/p&gt;\r\n\r\n&lt;p&gt;Expected release time: Quarter II / 2019&lt;/p&gt;\r\n\r\n&lt;p&gt;&lt;img alt=&quot;&quot; src=&quot;https://otakustore.vn/image/catalog/2019/01/best-hero-studio-uzumaki-naruto-1-4-scale-resin-statue.jpg&quot; style=&quot;height:1334px; width:889px&quot; /&gt;&lt;/p&gt;\r\n\r\n&lt;p&gt;&lt;img alt=&quot;&quot; src=&quot;https://otakustore.vn/image/catalog/2019/01/best-hero-studio-uzumaki-naruto-1-4-scale-resin-statue-1.jpg&quot; style=&quot;height:889px; width:1334px&quot; /&gt;&lt;/p&gt;\r\n\r\n&lt;p&gt;&lt;img alt=&quot;&quot; src=&quot;https://otakustore.vn/image/catalog/2019/01/best-hero-studio-uzumaki-naruto-1-4-scale-resin-statue-3.jpg&quot; style=&quot;height:889px; width:1334px&quot; /&gt;&lt;/p&gt;\r\n', 1, '2020-06-09 15:43:45', '2020-06-09 15:43:45'),
(45, 1, 'Tobirama Senju SD Scale Resin Statue', 'tobirama-senju-sd-scale-resin-statue', 0, '35.jpg', '&lt;p&gt;Size: 30cm high, 23cm wide, 29cm deep&lt;/p&gt;\r\n\r\n&lt;p&gt;Limited: 200 copies&lt;/p&gt;\r\n\r\n&lt;p&gt;Estimated shipping time: Third quarter of 2020&lt;/p&gt;\r\n\r\n&lt;p&gt;&lt;img alt=&quot;&quot; src=&quot;https://otakustore.vn/image/catalog/2020/04/longhu-studio-tobirama-senju-sd-scale-resin-statue.jpg&quot; style=&quot;height:1313px; width:750px&quot; /&gt;&lt;/p&gt;\r\n\r\n&lt;p&gt;&lt;img alt=&quot;&quot; src=&quot;https://otakustore.vn/image/catalog/2020/04/longhu-studio-tobirama-senju-sd-scale-resin-statue-1.jpg&quot; style=&quot;height:1124px; width:750px&quot; /&gt;&lt;/p&gt;\r\n\r\n&lt;p&gt;&lt;img alt=&quot;&quot; src=&quot;https://otakustore.vn/image/catalog/2020/04/longhu-studio-tobirama-senju-sd-scale-resin-statue-2.jpg&quot; /&gt;&lt;/p&gt;\r\n', 1, '2020-06-09 15:45:10', '2020-06-09 15:45:10'),
(49, 1, 'SSJ3 Goku vs Janemba 1/4 Scale Resin Statue', 'ssj3-goku-vs-janemba-1-4-scale-resin-statue', 0, '1.jpg', '&lt;p&gt;Size:&lt;/p&gt;\r\n\r\n&lt;p&gt;- Goku is 45cm high, 46cm wide, 53cm deep.&lt;/p&gt;\r\n\r\n&lt;p&gt;- Janemba is 54cm high, 66cm wide, 52cm deep&lt;/p&gt;\r\n\r\n&lt;p&gt;Limit:&lt;/p&gt;\r\n\r\n&lt;p&gt;Estimated delivery time: First quarter of 2020 (for reference only, depending on actual shipping time of manufacturer)&lt;/p&gt;\r\n\r\n&lt;p&gt;*** Goku or Janemba can be purchased separately at a price of VND 15,000,000&lt;/p&gt;\r\n\r\n&lt;p&gt;&lt;img alt=&quot;&quot; src=&quot;https://otakustore.vn/image/catalog/2020/06/avalons-studio-ssj3-goku-vs-janemba-1-6-scale-resin-statue.jpg&quot; style=&quot;height:422px; width:750px&quot; /&gt;&lt;/p&gt;\r\n\r\n&lt;p&gt;&lt;img alt=&quot;&quot; src=&quot;https://otakustore.vn/image/catalog/2020/06/avalons-studio-ssj3-goku-vs-janemba-1-6-scale-resin-statue-1.jpg&quot; style=&quot;height:422px; width:750px&quot; /&gt;&lt;/p&gt;\r\n\r\n&lt;p&gt;&lt;img alt=&quot;&quot; src=&quot;https://otakustore.vn/image/catalog/2020/06/avalons-studio-ssj3-goku-vs-janemba-1-6-scale-resin-statue-3.jpg&quot; style=&quot;height:422px; width:750px&quot; /&gt;&lt;/p&gt;\r\n', 1, '2020-06-10 00:55:56', '2020-06-10 00:55:56'),
(50, 1, 'Nagato Rinengan 1/7 Scale Resin Statue', 'nagato-rinengan-1-7-scale-resin-statue', 0, '2.jpg', '&lt;p&gt;Size: 37.5cm high, 33.8cm wide, 33cm deep&lt;/p&gt;\r\n\r\n&lt;p&gt;Limited: 300 copies&lt;/p&gt;\r\n\r\n&lt;p&gt;Estimated shipping time: Third quarter of 2020&lt;/p&gt;\r\n\r\n&lt;p&gt;&lt;img alt=&quot;&quot; src=&quot;https://otakustore.vn/image/catalog/2020/06/dueling-studio-nagato-rinengan-17-scale-resin-statue.jpg&quot; style=&quot;height:999px; width:750px&quot; /&gt;&lt;/p&gt;\r\n\r\n&lt;p&gt;&lt;img alt=&quot;&quot; src=&quot;https://otakustore.vn/image/catalog/2020/06/dueling-studio-nagato-rinengan-17-scale-resin-statue-1.jpg&quot; style=&quot;height:1125px; width:750px&quot; /&gt;&lt;/p&gt;\r\n\r\n&lt;p&gt;&lt;img alt=&quot;&quot; src=&quot;https://otakustore.vn/image/catalog/2020/06/dueling-studio-nagato-rinengan-17-scale-resin-statue-3.jpg&quot; style=&quot;height:1017px; width:750px&quot; /&gt;&lt;/p&gt;\r\n', 1, '2020-06-10 00:57:34', '2020-06-10 00:57:34'),
(51, 1, '	Shenwu Studio - Uchiha Shisui 1/7 Scale Resin Statue', '-shenwu-studio---uchiha-shisui-1-7-scale-resin-statue', 0, '3.jpg', '&lt;p&gt;Size: 38cm high, 26cm wide, 32cm deep&lt;/p&gt;\r\n\r\n&lt;p&gt;Ratio: 1/7&lt;/p&gt;\r\n\r\n&lt;p&gt;Limited: 299 copies&lt;/p&gt;\r\n\r\n&lt;p&gt;Expected release time: Quarter IV, 2020&lt;/p&gt;\r\n\r\n&lt;p&gt;&lt;img alt=&quot;&quot; src=&quot;https://otakustore.vn/image/catalog/2020/05/shenwu-studio-uchiha-shisui-1-7-scale-resin-statue.jpg&quot; style=&quot;height:1125px; width:750px&quot; /&gt;&lt;/p&gt;\r\n\r\n&lt;p&gt;&lt;img alt=&quot;&quot; src=&quot;https://otakustore.vn/image/catalog/2020/05/shenwu-studio-uchiha-shisui-1-7-scale-resin-statue-1.jpg&quot; /&gt;&lt;/p&gt;\r\n\r\n&lt;p&gt;&lt;img alt=&quot;&quot; src=&quot;https://otakustore.vn/image/catalog/2020/05/shenwu-studio-uchiha-shisui-1-7-scale-resin-statue-2.jpg&quot; /&gt;&lt;/p&gt;\r\n', 1, '2020-06-10 00:58:52', '2020-06-10 00:58:52'),
(52, 1, 'KRC Studio - Son Goku SSJ3 1/6 Scale Resin Statue', 'krc-studio---son-goku-ssj3-1-6-scale-resin-statue', 0, '4.jpg', '&lt;p&gt;Size:&lt;/p&gt;\r\n\r\n&lt;p&gt;1/6 scale: 32cm * 25cm * 28cm&lt;/p&gt;\r\n\r\n&lt;p&gt;1/4 ratio: 46cm * 36cm * 41cm&lt;/p&gt;\r\n\r\n&lt;p&gt;Limited: 110 copies&lt;/p&gt;\r\n\r\n&lt;p&gt;Expected delivery time: Quarter III, 2020&lt;/p&gt;\r\n\r\n&lt;p&gt;&lt;img alt=&quot;&quot; src=&quot;https://otakustore.vn/image/catalog/2020/06/krc-studio-son-goku-ssj3-1-6-scale-resin-statue.jpg&quot; style=&quot;height:500px; width:750px&quot; /&gt;&lt;/p&gt;\r\n\r\n&lt;p&gt;&lt;img alt=&quot;&quot; src=&quot;https://otakustore.vn/image/catalog/2020/06/krc-studio-son-goku-ssj3-1-6-scale-resin-statue-3.jpg&quot; /&gt;&lt;/p&gt;\r\n\r\n&lt;p&gt;&lt;img alt=&quot;&quot; src=&quot;https://otakustore.vn/image/catalog/2020/06/krc-studio-son-goku-ssj3-1-6-scale-resin-statue-4.jpg&quot; style=&quot;height:750px; width:750px&quot; /&gt;&lt;/p&gt;\r\n', 1, '2020-06-10 01:00:24', '2020-06-10 01:00:24'),
(53, 1, 'KD Collectibles - Broly The Legendary Super Saiyan 1/4 Scale Resin Statue', 'kd-collectibles---broly-the-legendary-super-saiyan-1-4-scale-resin-statue', 0, '5.jpg', '&lt;p&gt;Size: 90cm high, 50cm wide, 49cm deep&lt;/p&gt;\r\n\r\n&lt;p&gt;Scale: 1/4&lt;/p&gt;\r\n\r\n&lt;p&gt;Limit:&lt;/p&gt;\r\n\r\n&lt;p&gt;Issuing time: Quarter IV, 2020&lt;/p&gt;\r\n\r\n&lt;p&gt;*** Exchangeable head + exchangeable body + Bust + LED effect&lt;/p&gt;\r\n\r\n&lt;p&gt;&lt;img alt=&quot;&quot; src=&quot;https://otakustore.vn/image/catalog/2020/05/kd-collectibles-broly-the-legendary-super-saiyan-1-4-scale-resin-statue.jpg&quot; style=&quot;height:1200px; width:1200px&quot; /&gt;&lt;/p&gt;\r\n\r\n&lt;p&gt;&lt;img alt=&quot;&quot; src=&quot;https://otakustore.vn/image/catalog/2020/05/kd-collectibles-broly-the-legendary-super-saiyan-1-4-scale-resin-statue-3.jpg&quot; style=&quot;height:1200px; width:1200px&quot; /&gt;&lt;/p&gt;\r\n\r\n&lt;p&gt;&lt;img alt=&quot;&quot; src=&quot;https://otakustore.vn/image/catalog/2020/05/kd-collectibles-broly-the-legendary-super-saiyan-1-4-scale-resin-statue-4.jpg&quot; /&gt;&lt;/p&gt;\r\n', 1, '2020-06-10 01:02:35', '2020-06-10 01:02:35'),
(54, 1, 'League Studio - Dragon Ball WCF - Krillin & Gohan Saiyan Armor Ver', 'league-studio---dragon-ball-wcf---krillin-gohan-saiyan-armor-ver', 0, '6.jpg', '&lt;p&gt;Size: 7cm high&lt;/p&gt;\r\n\r\n&lt;p&gt;Limited: 200 copies&lt;/p&gt;\r\n\r\n&lt;p&gt;Delivery time: Third quarter of 2020&lt;/p&gt;\r\n\r\n&lt;p&gt;&lt;img alt=&quot;&quot; src=&quot;https://otakustore.vn/image/catalog/2020/05/league-studio-dragon-ball-wcf-krillin-gohan-saiyan-armor-ver.jpg&quot; style=&quot;height:500px; width:750px&quot; /&gt;&lt;/p&gt;\r\n\r\n&lt;p&gt;&lt;img alt=&quot;&quot; src=&quot;https://otakustore.vn/image/catalog/2020/05/league-studio-dragon-ball-wcf-krillin-gohan-saiyan-armor-ver-1.jpg&quot; /&gt;&lt;/p&gt;\r\n\r\n&lt;p&gt;&lt;img alt=&quot;&quot; src=&quot;https://otakustore.vn/image/catalog/2020/05/league-studio-dragon-ball-wcf-krillin-gohan-saiyan-armor-ver-2.jpg&quot; style=&quot;height:500px; width:750px&quot; /&gt;&lt;/p&gt;\r\n', 1, '2020-06-10 01:03:59', '2020-06-10 01:03:59'),
(55, 1, 'A+ Studio - Dragon Ball WCF - Fat Majin Buu', 'a-studio---dragon-ball-wcf---fat-majin-buu', 0, '7.jpg', '&lt;p&gt;Size: 14cm high&lt;/p&gt;\r\n\r\n&lt;p&gt;Limited: 300 copies&lt;/p&gt;\r\n\r\n&lt;p&gt;Delivery time: Third quarter of 2020&lt;/p&gt;\r\n\r\n&lt;p&gt;&lt;img alt=&quot;&quot; src=&quot;https://otakustore.vn/image/catalog/2020/05/a-studio-dragon-ball-wcf-fat-majin-buu.jpg&quot; style=&quot;height:499px; width:750px&quot; /&gt;&lt;/p&gt;\r\n\r\n&lt;p&gt;&lt;img alt=&quot;&quot; src=&quot;https://otakustore.vn/image/catalog/2020/05/a-studio-dragon-ball-wcf-fat-majin-buu-1.jpg&quot; style=&quot;height:499px; width:750px&quot; /&gt;&lt;/p&gt;\r\n\r\n&lt;p&gt;&lt;img alt=&quot;&quot; src=&quot;https://otakustore.vn/image/catalog/2020/05/a-studio-dragon-ball-wcf-fat-majin-buu-2.jpg&quot; style=&quot;height:499px; width:750px&quot; /&gt;&lt;/p&gt;\r\n', 1, '2020-06-10 01:05:04', '2020-06-10 01:05:04'),
(56, 1, 'Blitzway Studio - Bulma Capsule No.9 Bike 1/6 Scale Resin Statue', 'blitzway-studio---bulma-capsule-no-9-bike-1-6-scale-resin-statue', 0, '8.jpg', '&lt;p&gt;Manufacturer: Blitzway (Licensed)&lt;/p&gt;\r\n\r\n&lt;p&gt;Size: 33cm high, 37cm wide, 37cm deep&lt;/p&gt;\r\n\r\n&lt;p&gt;Limit:&lt;/p&gt;\r\n\r\n&lt;p&gt;Delivery time: Quarter IV, 2020&lt;/p&gt;\r\n\r\n&lt;p&gt;[Spec]&lt;/p&gt;\r\n\r\n&lt;p&gt;1. Figure &amp;amp; Vehicle: Polystone, PVC, ABS&lt;/p&gt;\r\n\r\n&lt;p&gt;2. Base: Polystone, PVC, ABS&lt;/p&gt;\r\n\r\n&lt;p&gt;3. Equipment: LED, Electrical components&lt;/p&gt;\r\n\r\n&lt;p&gt;4. Package: Color EPP + Color Box&lt;/p&gt;\r\n\r\n&lt;p&gt;&lt;img alt=&quot;&quot; src=&quot;https://otakustore.vn/image/catalog/2020/06/blitzway-studio-bulma-capsule-no-9-bike-1-6-scale-resin-statue.jpg&quot; /&gt;&lt;/p&gt;\r\n\r\n&lt;p&gt;&lt;img alt=&quot;&quot; src=&quot;https://otakustore.vn/image/catalog/2020/06/blitzway-studio-bulma-capsule-no-9-bike-1-6-scale-resin-statue-1.jpg&quot; /&gt;&lt;img alt=&quot;&quot; src=&quot;https://otakustore.vn/image/catalog/2020/06/blitzway-studio-bulma-capsule-no-9-bike-1-6-scale-resin-statue-3.jpg&quot; /&gt;&lt;/p&gt;\r\n', 1, '2020-06-10 01:08:05', '2020-06-10 01:08:05'),
(57, 1, 'Light Year Studio - Sanin Jiraiya 1/4 Scale Resin Statue', 'light-year-studio---sanin-jiraiya-1-4-scale-resin-statue', 0, '9.jpg', '&lt;p&gt;Size: 53cm high, 36.4cm wide, 37cm deep&lt;/p&gt;\r\n\r\n&lt;p&gt;Scale: 1/4&lt;/p&gt;\r\n\r\n&lt;p&gt;Limited: 500 copies&lt;/p&gt;\r\n\r\n&lt;p&gt;Expected delivery time: Quarter IV, 2020&lt;/p&gt;\r\n\r\n&lt;p&gt;&lt;img alt=&quot;&quot; src=&quot;https://otakustore.vn/image/catalog/2020/05/light-year-studio-sanin-jiraiya-1-4-scale-resin-statue.jpg&quot; style=&quot;height:1049px; width:700px&quot; /&gt;&lt;/p&gt;\r\n\r\n&lt;p&gt;&lt;img alt=&quot;&quot; src=&quot;https://otakustore.vn/image/catalog/2020/05/light-year-studio-sanin-jiraiya-1-4-scale-resin-statue-1.jpg&quot; /&gt;&lt;/p&gt;\r\n\r\n&lt;p&gt;&lt;img alt=&quot;&quot; src=&quot;https://otakustore.vn/image/catalog/2020/05/light-year-studio-sanin-jiraiya-1-4-scale-resin-statue-2.jpg&quot; /&gt;&lt;/p&gt;\r\n', 1, '2020-06-10 01:09:37', '2020-06-10 01:09:37'),
(58, 1, 'Hatake Kakashi 1/7 Scale Resin Statue', 'hatake-kakashi-1-7-scale-resin-statue', 0, '10.jpg', '&lt;p&gt;Size: 47cm high, 34cm wide, 32cm deep&lt;/p&gt;\r\n\r\n&lt;p&gt;Limited: 366 copies&lt;/p&gt;\r\n\r\n&lt;p&gt;Expected release time: Quarter III, 2020&lt;/p&gt;\r\n\r\n&lt;p&gt;&lt;img alt=&quot;&quot; src=&quot;https://otakustore.vn/image/catalog/2020/05/dt-studio-hatake-kakashi-1-7-scale-resin-statue.jpg&quot; style=&quot;height:1067px; width:800px&quot; /&gt;&lt;/p&gt;\r\n\r\n&lt;p&gt;&lt;img alt=&quot;&quot; src=&quot;https://otakustore.vn/image/catalog/2020/05/dt-studio-hatake-kakashi-1-7-scale-resin-statue-1.jpg&quot; /&gt;&lt;img alt=&quot;&quot; src=&quot;https://otakustore.vn/image/catalog/2020/05/dt-studio-hatake-kakashi-1-7-scale-resin-statue-2.jpg&quot; style=&quot;height:600px; width:800px&quot; /&gt;&lt;/p&gt;\r\n', 1, '2020-06-10 01:12:07', '2020-06-10 01:12:07'),
(59, 1, 'Destiny: Jiraiya, Minato, Naruto 1/7 Scale Resin Statue', 'destiny-jiraiya-minato-naruto-1-7-scale-resin-statue', 0, '11.jpg', '&lt;p&gt;Size: 40cm high, 35cm wide, 37cm deep&lt;/p&gt;\r\n\r\n&lt;p&gt;Ratio: 1/7&lt;/p&gt;\r\n\r\n&lt;p&gt;Limited: 488 copies&lt;/p&gt;\r\n\r\n&lt;p&gt;Release date: Third quarter of 2020&lt;/p&gt;\r\n\r\n&lt;p&gt;&lt;img alt=&quot;&quot; src=&quot;https://otakustore.vn/image/catalog/2020/05/cartoon-world-surge-studio-destiny-jiraiya-minato-naruto-1-7-scale-resin-statue.jpg&quot; style=&quot;height:299px; width:750px&quot; /&gt;&lt;/p&gt;\r\n\r\n&lt;p&gt;&lt;img alt=&quot;&quot; src=&quot;https://otakustore.vn/image/catalog/2020/05/cartoon-world-surge-studio-destiny-jiraiya-minato-naruto-1-7-scale-resin-statue-1.jpg&quot; /&gt;&lt;/p&gt;\r\n', 1, '2020-06-10 01:14:38', '2020-06-10 01:14:38'),
(60, 1, 'Fairy Tail - Erza Scarlet 1/6 Scale Resin Statue', 'fairy-tail---erza-scarlet-1-6-scale-resin-statue', 0, '12.jpg', '&lt;p&gt;Size: 39cm high, 33cm wide, 30cm deep&lt;/p&gt;\r\n\r\n&lt;p&gt;Limited: 168 copies&lt;/p&gt;\r\n\r\n&lt;p&gt;Estimated shipping time: Third quarter of 2020&lt;/p&gt;\r\n\r\n&lt;p&gt;&lt;img alt=&quot;&quot; src=&quot;https://otakustore.vn/image/catalog/2020/06/twilight-studio-fairy-tail-erza-scarlet-1-6-scale-resin-statue.jpg&quot; /&gt;&lt;/p&gt;\r\n\r\n&lt;p&gt;&lt;img alt=&quot;&quot; src=&quot;https://otakustore.vn/image/catalog/2020/06/twilight-studio-fairy-tail-erza-scarlet-1-6-scale-resin-statue-2.jpg&quot; /&gt;&lt;/p&gt;\r\n\r\n&lt;p&gt;&lt;img alt=&quot;&quot; src=&quot;https://otakustore.vn/image/catalog/2020/06/twilight-studio-fairy-tail-erza-scarlet-1-6-scale-resin-statue-3.jpg&quot; /&gt;&lt;/p&gt;\r\n', 1, '2020-06-10 01:18:20', '2020-06-10 01:18:20'),
(61, 1, 'Legendary  - Fire Dragon Natsu 1/6 Scale Resin Statue', 'legendary---fire-dragon-natsu-1-6-scale-resin-statue', 0, '13.jpg', '&lt;p&gt;Size: 60cm high&lt;/p&gt;\r\n\r\n&lt;p&gt;Limited: 100 copies&lt;/p&gt;\r\n\r\n&lt;p&gt;Expected delivery time: Quarter IV, 2020&lt;/p&gt;\r\n\r\n&lt;p&gt;&lt;img alt=&quot;&quot; src=&quot;https://otakustore.vn/image/catalog/2020/04/legendary-collectibles-fire-dragon-natsu-1-6-scale-resin-statue.jpg&quot; style=&quot;height:986px; width:1280px&quot; /&gt;&lt;/p&gt;\r\n', 1, '2020-06-10 01:20:50', '2020-06-10 01:20:50'),
(62, 1, 'TPA Studio -  Erza Scarlet 1/6 Scale Resin Statue', 'tpa-studio---erza-scarlet-1-6-scale-resin-statue', 0, '14.jpg', '&lt;p&gt;Size: 46cm high, 27.5cm wide, 25cm deep&lt;/p&gt;\r\n\r\n&lt;p&gt;Limited: 288 copies&lt;/p&gt;\r\n\r\n&lt;p&gt;Estimated shipping time: Fourth Quarter of 2020&lt;/p&gt;\r\n\r\n&lt;p&gt;&lt;img alt=&quot;&quot; src=&quot;https://otakustore.vn/image/catalog/2020/05/tpa-studio-fairy-tail-erza-scarlet-1-6-scale-resin-statue.jpg&quot; style=&quot;height:1093px; width:750px&quot; /&gt;&lt;/p&gt;\r\n\r\n&lt;p&gt;&lt;img alt=&quot;&quot; src=&quot;https://otakustore.vn/image/catalog/2020/05/tpa-studio-fairy-tail-erza-scarlet-1-6-scale-resin-statue-1.jpg&quot; /&gt;&lt;/p&gt;\r\n\r\n&lt;p&gt;&lt;img alt=&quot;&quot; src=&quot;https://otakustore.vn/image/catalog/2020/05/tpa-studio-fairy-tail-erza-scarlet-1-6-scale-resin-statue-2.jpg&quot; style=&quot;height:551px; width:750px&quot; /&gt;&lt;/p&gt;\r\n', 1, '2020-06-10 01:22:25', '2020-06-10 01:22:25'),
(63, 1, 'Green Lotus -  Erza Scarlet 1/6 Scale Resin Statue', 'green-lotus---erza-scarlet-1-6-scale-resin-statue', 0, '15.jpg', '&lt;p&gt;Size: 43cm wide, 50cm high, 36cm deep&lt;/p&gt;\r\n\r\n&lt;p&gt;Limit:&lt;/p&gt;\r\n\r\n&lt;p&gt;Estimated shipping time: Third quarter of 2020&lt;/p&gt;\r\n\r\n&lt;p&gt;&lt;img alt=&quot;&quot; src=&quot;https://otakustore.vn/image/catalog/2020/02/green-lotus-fairy-tail-erza-scarlet-1-6-scale-resin-statue.jpg&quot; style=&quot;height:500px; width:750px&quot; /&gt;&lt;/p&gt;\r\n\r\n&lt;p&gt;&lt;img alt=&quot;&quot; src=&quot;https://otakustore.vn/image/catalog/2020/02/green-lotus-fairy-tail-erza-scarlet-1-6-scale-resin-statue-1.jpg&quot; /&gt;&lt;/p&gt;\r\n\r\n&lt;p&gt;&lt;img alt=&quot;&quot; src=&quot;https://otakustore.vn/image/catalog/2020/02/green-lotus-fairy-tail-erza-scarlet-1-6-scale-resin-statue-4.jpg&quot; /&gt;&lt;/p&gt;\r\n', 1, '2020-06-10 01:23:49', '2020-06-10 01:23:49'),
(64, 1, 'Natsu Dragneel SD Scale Resin', 'natsu-dragneel-sd-scale-resin', 0, '16.jpg', '&lt;p&gt;Size: 32cm wide, 34cm high, 37cm deep&lt;/p&gt;\r\n\r\n&lt;p&gt;Limited: 288 copies&lt;/p&gt;\r\n\r\n&lt;p&gt;Expected delivery time: December 2019&lt;/p&gt;\r\n\r\n&lt;p&gt;&lt;img alt=&quot;&quot; src=&quot;https://otakustore.vn/image/catalog/2019/07/green-lotus-natsu-dragneel-sd-scale-resin-statue.jpg&quot; /&gt;&lt;/p&gt;\r\n\r\n&lt;p&gt;&lt;img alt=&quot;&quot; src=&quot;https://otakustore.vn/image/catalog/2019/07/green-lotus-natsu-dragneel-sd-scale-resin-statue-1.jpg&quot; /&gt;&lt;img alt=&quot;&quot; src=&quot;https://otakustore.vn/image/catalog/2019/07/green-lotus-natsu-dragneel-sd-scale-resin-statue-2.jpg&quot; style=&quot;height:500px; width:750px&quot; /&gt;&lt;/p&gt;\r\n', 1, '2020-06-10 01:25:26', '2020-06-10 01:25:26'),
(65, 1, 'Monkey D Studio Natsu 1/6 Scale Resin Statue', 'monkey-d-studio-natsu-1-6-scale-resin-statue', 0, '17.jpg', '&lt;p&gt;Size: 45cm high, 49cm across, 40cm deep&lt;/p&gt;\r\n\r\n&lt;p&gt;Ratio: 1/6&lt;/p&gt;\r\n\r\n&lt;p&gt;Limited: 333 copies&lt;/p&gt;\r\n\r\n&lt;p&gt;Expected shipping time: fourth quarter of 2019&lt;/p&gt;\r\n\r\n&lt;p&gt;&lt;img alt=&quot;&quot; src=&quot;https://otakustore.vn/image/catalog/2019/08/monkey-d-studio-fire-dragon-natsu-1-6-scale-resin-statue-6.jpg&quot; style=&quot;height:422px; width:750px&quot; /&gt;&lt;/p&gt;\r\n\r\n&lt;p&gt;&lt;img alt=&quot;&quot; src=&quot;https://otakustore.vn/image/catalog/2019/08/monkey-d-studio-fire-dragon-natsu-1-6-scale-resin-statue-3.jpg&quot; /&gt;&lt;/p&gt;\r\n\r\n&lt;p&gt;&lt;img alt=&quot;&quot; src=&quot;https://otakustore.vn/image/catalog/2019/08/monkey-d-studio-fire-dragon-natsu-1-6-scale-resin-statue-2.jpg&quot; /&gt;&lt;/p&gt;\r\n', 1, '2020-06-10 01:26:57', '2020-06-10 01:26:57'),
(66, 1, 'Twilight Studio - Fire Dragon Natsu 1/6 Scale Resin ', 'twilight-studio---fire-dragon-natsu-1-6-scale-resin-', 0, '18.jpg', '&lt;p&gt;Size:&lt;/p&gt;\r\n\r\n&lt;p&gt;- 1/4 ratio: 80cm high, 83cm deep, 135cm wide. Limited to 88 copies. Price 16.000.000?&lt;/p&gt;\r\n\r\n&lt;p&gt;- 1/6 ratio: 60cm high, 62cm deep, 96cm wide. Limited to 268 copies. Price 13.000.000?&lt;/p&gt;\r\n\r\n&lt;p&gt;Estimated shipping time: second quarter of 2020&lt;/p&gt;\r\n\r\n&lt;p&gt;&lt;img alt=&quot;&quot; src=&quot;https://otakustore.vn/image/catalog/2019/10/twilight-studio-fire-dragon-natsu-1-6-scale-resin-statue.jpg&quot; /&gt;&lt;/p&gt;\r\n\r\n&lt;p&gt;&lt;img alt=&quot;&quot; src=&quot;https://otakustore.vn/image/catalog/2019/10/twilight-studio-fire-dragon-natsu-1-6-scale-resin-statue-1.jpg&quot; /&gt;&lt;/p&gt;\r\n\r\n&lt;p&gt;&lt;img alt=&quot;&quot; src=&quot;https://otakustore.vn/image/catalog/2019/10/twilight-studio-fire-dragon-natsu-1-6-scale-resin-statue-2.jpg&quot; /&gt;&lt;/p&gt;\r\n', 1, '2020-06-10 01:28:22', '2020-06-10 01:28:22'),
(67, 1, 'Natsu Dragneel - Pop Up Parade (Good Smile Company)', 'natsu-dragneel---pop-up-parade-good-smile-company-', 0, '19.jpg', '&lt;p&gt;Manufacturer: Good Smile Company&lt;/p&gt;\r\n\r\n&lt;p&gt;Size: 17cm high&lt;/p&gt;\r\n\r\n&lt;p&gt;Material: PVC, ABS&lt;/p&gt;\r\n\r\n&lt;p&gt;Release time: September 2020&lt;/p&gt;\r\n\r\n&lt;p&gt;&lt;img alt=&quot;&quot; src=&quot;https://otakustore.vn/image/catalog/2020/05/fairy-tail-final-season-natsu-dragneel-pop-up-parade-good-smile-company.jpg&quot; style=&quot;height:872px; width:600px&quot; /&gt;&lt;/p&gt;\r\n\r\n&lt;p&gt;&lt;img alt=&quot;&quot; src=&quot;https://otakustore.vn/image/catalog/2020/05/fairy-tail-final-season-natsu-dragneel-pop-up-parade-good-smile-company-1.jpg&quot; /&gt;&lt;/p&gt;\r\n\r\n&lt;p&gt;&lt;img alt=&quot;&quot; src=&quot;https://otakustore.vn/image/catalog/2020/05/fairy-tail-final-season-natsu-dragneel-pop-up-parade-good-smile-company-2.jpg&quot; /&gt;&lt;/p&gt;\r\n', 1, '2020-06-10 01:29:49', '2020-06-10 01:29:49');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `post_topic`
--

CREATE TABLE `post_topic` (
  `id` int(11) NOT NULL,
  `post_id` int(11) NOT NULL,
  `topic_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `post_topic`
--

INSERT INTO `post_topic` (`id`, `post_id`, `topic_id`) VALUES
(6, 49, 2),
(7, 50, 1),
(8, 51, 1),
(9, 52, 2),
(10, 53, 2),
(11, 54, 2),
(12, 55, 2),
(13, 56, 2),
(14, 57, 1),
(15, 58, 1),
(16, 59, 1),
(17, 60, 3),
(18, 61, 3),
(19, 62, 3),
(20, 63, 3),
(21, 64, 3),
(22, 65, 3),
(23, 66, 3),
(24, 67, 3);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `topics`
--

CREATE TABLE `topics` (
  `id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `topics`
--

INSERT INTO `topics` (`id`, `name`, `slug`) VALUES
(1, 'Naruto', 'naruto'),
(2, 'Dragonball', 'dragonball'),
(3, 'Fairy Tail', 'fairy-tail');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `username` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `role` enum('Author','Admin') DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Đang đổ dữ liệu cho bảng `users`
--

INSERT INTO `users` (`id`, `username`, `email`, `role`, `password`, `created_at`, `updated_at`) VALUES
(1, 'ghostarm', 'lehominhquan94@gmail.com', 'Admin', '202cb962ac59075b964b07152d234b70', '2018-01-08 05:52:58', '2018-01-08 05:52:58'),
(2, 'minhkhang', 'bucu@gmail.com', 'Admin', 'e10adc3949ba59abbe56e057f20f883e', '2020-05-20 01:30:53', '2020-05-20 01:30:53'),
(3, 'huyanhang', 'huyanhang@gmail.com', 'Admin', '202cb962ac59075b964b07152d234b70', '2020-05-30 13:33:51', '2020-05-30 13:33:51');

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `comments`
--
ALTER TABLE `comments`
  ADD PRIMARY KEY (`IdComment`);

--
-- Chỉ mục cho bảng `posts`
--
ALTER TABLE `posts`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `slug` (`slug`),
  ADD KEY `user_id` (`user_id`);

--
-- Chỉ mục cho bảng `post_topic`
--
ALTER TABLE `post_topic`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `post_id` (`post_id`),
  ADD KEY `topic_id` (`topic_id`);

--
-- Chỉ mục cho bảng `topics`
--
ALTER TABLE `topics`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng `comments`
--
ALTER TABLE `comments`
  MODIFY `IdComment` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT cho bảng `posts`
--
ALTER TABLE `posts`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=68;

--
-- AUTO_INCREMENT cho bảng `post_topic`
--
ALTER TABLE `post_topic`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT cho bảng `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- Các ràng buộc cho các bảng đã đổ
--

--
-- Các ràng buộc cho bảng `posts`
--
ALTER TABLE `posts`
  ADD CONSTRAINT `posts_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Các ràng buộc cho bảng `post_topic`
--
ALTER TABLE `post_topic`
  ADD CONSTRAINT `post_topic_ibfk_1` FOREIGN KEY (`post_id`) REFERENCES `posts` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `post_topic_ibfk_2` FOREIGN KEY (`topic_id`) REFERENCES `topics` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
