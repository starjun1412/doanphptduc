-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1
-- Thời gian đã tạo: Th6 09, 2020 lúc 07:05 AM
-- Phiên bản máy phục vụ: 10.1.38-MariaDB
-- Phiên bản PHP: 7.3.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
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
(3, 'Ã¡d', 'sadasd', 1);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `posts`
--

CREATE TABLE `posts` (
  `id` int(11) NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `title` varchar(255) NOT NULL,
  `slug` varchar(255) NOT NULL,
  `views` int(11) NOT NULL DEFAULT '0',
  `image` varchar(255) NOT NULL,
  `body` text NOT NULL,
  `published` tinyint(1) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Đang đổ dữ liệu cho bảng `posts`
--

INSERT INTO `posts` (`id`, `user_id`, `title`, `slug`, `views`, `image`, `body`, `published`, `created_at`, `updated_at`) VALUES
(1, 1, '5 Habits that can improve your life', '5-habits-that-can-improve-your-life', 0, 'banner.jpg', 'Read every day', 1, '2018-02-03 00:58:02', '2018-02-01 12:14:31'),
(2, 1, 'Second post on LifeBlog', 'second-post-on-lifeblog', 0, 'banner.jpg', 'This is the body of the second post on this site', 1, '2020-05-19 10:29:19', '2018-02-01 06:04:36'),
(3, 1, 'bÃº cu', 'b-cu', 0, 'bia.jpg', '&lt;p&gt;Often for a blog post, you will need to write some text in Bold, Italics, Underline, Headings, ordered and unordered lists as well as upload images. To do this you will need a ckeditor to provide you with a&amp;nbsp;textarea&amp;nbsp;rich in these features. This requires us to include the ckeditor plugin script which we already did in the&amp;nbsp;head_section.php&amp;nbsp;file.&lt;/p&gt;\r\n', 1, '2020-05-19 10:29:20', '2020-05-19 10:07:07'),
(4, 1, 'hello ', 'hello-', 0, 'bia.jpg', '&lt;p&gt;Often for a blog post, you will need to write some text in Bold, Italics, Underline, Headings, ordered and unordered lists as well as upload images. To do this you will need a ckeditor to provide you with a&amp;nbsp;textarea&amp;nbsp;rich in these features. This requires us to include the ckeditor plugin script which we already did in the&amp;nbsp;head_section.php&amp;nbsp;file.&lt;/p&gt;\r\n', 1, '2020-05-19 10:29:21', '2020-05-19 10:07:56'),
(5, 1, 'pro vietttttttttttttttttttttt', 'pro-vietttttttttttttttttttttt', 0, 'bia.jpg', '&lt;p&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;Trong pháº§n hai pháº§n cá»§a hÆ°á»›ng dáº«n, pháº§n thÆ°á»Ÿng, pháº§n thÆ°á»Ÿng v&amp;agrave; pháº§n thÆ°á»Ÿng. &lt;/font&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;Pháº§n cá»©ng, pháº§n cá»©ng, pháº§n cá»©ng, dá»¯ liá»‡u v&amp;agrave; dá»¯ liá»‡u cá»§a báº¡n &lt;/font&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;Pháº§n cá»©ng cá»§a ch&amp;uacute;ng t&amp;ocirc;i kh&amp;ocirc;ng c&amp;oacute; g&amp;igrave; kh&amp;aacute;c nhau &lt;/font&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;Ch&amp;uacute;ng t&amp;ocirc;i c&amp;oacute; má»™t pháº§n cá»§a ch&amp;uacute;ng&amp;nbsp;&lt;/font&gt;&lt;/font&gt;&lt;/p&gt;\r\n\r\n&lt;p&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;\\ r \\ n \\ r \\ n&lt;/font&gt;&lt;/font&gt;&lt;/p&gt;\r\n\r\n&lt;p&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;\\ r \\ n&lt;/font&gt;&lt;/font&gt;&lt;/p&gt;\r\n\r\n&lt;p&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;&lt;font style=&quot;vertical-align: inherit;&quot;&gt;\\ r \\ n&lt;/font&gt;&lt;/font&gt;&lt;/p&gt;\r\n', 1, '2020-05-19 10:29:21', '2020-05-19 10:12:09');

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
(0, 3, 1),
(1, 1, 1),
(2, 2, 2);

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
(1, 'Inspiration', 'inspiration'),
(2, 'Motivation', 'motivation'),
(3, 'Diary', 'diary');

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
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Đang đổ dữ liệu cho bảng `users`
--

INSERT INTO `users` (`id`, `username`, `email`, `role`, `password`, `created_at`, `updated_at`) VALUES
(1, 'Awa', 'info@codewithawa.com', 'Admin', '21232f297a57a5a743894a0e4a801fc3', '2018-01-08 05:52:58', '2018-01-08 05:52:58'),
(2, 'minhkhang', 'bucu@gmail.com', 'Admin', 'e10adc3949ba59abbe56e057f20f883e', '2020-05-20 01:30:53', '2020-05-20 01:30:53'),
(3, 'huyanhang', 'huyanhang@gmail.com', 'Admin', '9995082c9c6131999229a98221947253', '2020-05-30 13:33:51', '2020-05-30 13:33:51');

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
  MODIFY `IdComment` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT cho bảng `posts`
--
ALTER TABLE `posts`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

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
