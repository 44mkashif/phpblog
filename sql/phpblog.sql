-- phpMyAdmin SQL Dump
-- version 4.8.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 03, 2019 at 09:39 PM
-- Server version: 10.1.37-MariaDB
-- PHP Version: 7.3.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `phpblog`
--

-- --------------------------------------------------------

--
-- Table structure for table `comments`
--

CREATE TABLE `comments` (
  `id` int(11) NOT NULL,
  `username` varchar(100) NOT NULL,
  `comment` text NOT NULL,
  `postId` int(11) NOT NULL,
  `userId` int(11) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `comments`
--

INSERT INTO `comments` (`id`, `username`, `comment`, `postId`, `userId`, `created_at`) VALUES
(6, 'guest', 'asd s', 20, 4, '2019-05-31 20:35:36'),
(7, 'guest', 'etyert', 20, 4, '2019-05-31 20:35:41'),
(8, 'guest', 'Lorem ipsum dolor, sit amet consectetur adipisicing elit. Libero, assumenda recusandae sint tempora neque asperiores totam repellendus labore sit alias cupiditate harum mollitia odio animi voluptates sapiente saepe eius illo!', 20, 4, '2019-05-31 21:20:07'),
(9, 'guest', 'Lorem ipsum dolor, sit amet consectetur adipisicing elit. Libero, assumenda recusandae sint tempora neque asperiores totam repellendus labore sit alias cupiditate harum mollitia odio animi voluptates sapiente saepe eius illo!', 20, 4, '2019-05-31 21:20:25'),
(10, 'guest', 'Lorem ipsum dolor, sit amet consectetur adipisicing elit. Libero, assumenda recusandae sint tempora neque asperiores totam repellendus labore sit alias cupiditate harum mollitia odio animi voluptates sapiente saepe eius illo!', 20, 4, '2019-05-31 21:20:34'),
(11, 'guest', 'Lorem ipsum dolor, sit amet consectetur adipisicing elit. Libero, assumenda recusandae sint tempora neque asperiores totam repellendus labore sit alias cupiditate harum mollitia odio animi voluptates sapiente saepe eius illo!', 20, 4, '2019-05-31 21:21:08'),
(12, 'guest', 'Lorem ipsum dolor, sit amet consectetur adipisicing elit. Libero, assumenda recusandae sint tempora neque asperiores totam repellendus labore sit alias cupiditate harum mollitia odio animi voluptates sapiente saepe eius illo!', 20, 4, '2019-05-31 21:21:22'),
(13, 'guest', 'Lorem ipsum dolor, sit amet consectetur adipisicing elit. Libero, assumenda recusandae sint tempora neque asperiores totam repellendus labore sit alias cupiditate harum mollitia odio animi voluptates sapiente saepe eius illo!', 20, 4, '2019-05-31 21:21:24'),
(14, 'guest', 'Lorem ipsum dolor, sit amet consectetur adipisicing elit. Libero, assumenda recusandae sint tempora neque asperiores totam repellendus labore sit alias cupiditate harum mollitia odio animi voluptates sapiente saepe eius illo!', 20, 4, '2019-05-31 21:22:25'),
(15, 'guest', 'Lorem ipsum dolor, sit amet consectetur adipisicing elit. Libero, assumenda recusandae sint tempora neque asperiores totam repellendus labore sit alias cupiditate harum mollitia odio animi voluptates sapiente saepe eius illo!', 20, 4, '2019-05-31 21:22:55'),
(16, 'guest', 'Lorem ipsum dolor, sit amet consectetur adipisicing elit. Libero, assumenda recusandae sint tempora neque asperiores totam repellendus labore sit alias cupiditate harum mollitia odio animi voluptates sapiente saepe eius illo!', 20, 4, '2019-05-31 21:23:12'),
(17, 'guest', 'Lorem ipsum dolor, sit amet consectetur adipisicing elit. Libero, assumenda recusandae sint tempora neque asperiores totam repellendus labore sit alias cupiditate harum mollitia odio animi voluptates sapiente saepe eius illo!', 20, 4, '2019-05-31 21:23:20'),
(18, 'guest', 'Lorem ipsum dolor, sit amet consectetur adipisicing elit. Libero, assumenda recusandae sint tempora neque asperiores totam repellendus labore sit alias cupiditate harum mollitia odio animi voluptates sapiente saepe eius illo!', 20, 4, '2019-05-31 21:23:32'),
(19, 'guest', 'asd', 20, 4, '2019-05-31 21:37:37'),
(20, 'guest', 'asd', 20, 4, '2019-05-31 21:38:25'),
(21, 'guest', 'asd', 20, 4, '2019-05-31 21:40:18'),
(22, 'guest', 'sdf sdf', 19, 4, '2019-05-31 21:44:46'),
(23, 'guest', 'asdfg sdf df sadf ae rq rqwer qwer q rqw qw q eqwe qwe qwe qwe qw asdfg sdf df sadf ae rq rqwer qwer q rqw qw q eqwe qwe qwe qwe qwasdfg sdf df sadf ae rq rqwer qwer q rqw qw q eqwe qwe qwe qwe qw', 20, 4, '2019-05-31 21:45:53'),
(24, 'guest', 'asd', 19, 4, '2019-05-31 21:49:37'),
(25, 'guest', 'asd s', 19, 4, '2019-05-31 21:50:56'),
(26, 'guest', 'sdagf ag sdfo sdo nsdoh nsohn sohn solkh nsloh nlsdkhn odkhn sdklh nkihj nbadkjb nadk nbadi[kjnb aidjg nbadkjb dikgb kdfbgj kidbng dng odjgn dfn dlokn dokf d', 19, 4, '2019-05-31 21:52:03'),
(27, 'Kashif', 'sdfs df sf g we erg sdfs df sf g we erg sdfs df sf g we erg sdfs df sf g we erg sdfs df sf g we erg sdfs df sf g we erg sdfs df sf g we erg sdfs df sf g we erg sdfs df sf g we erg sdfs df sf g we erg sdfs df sf g we erg sdfs df sf g we erg sdfs df sf g we erg sdfs df sf g we erg sdfs df sf g we erg sdfs df sf g we erg sdfs df sf g we erg sdfs df sf g we erg sdfs df sf g we erg sdfs df sf g we erg sdfs df sf g we erg sdfs df sf g we erg sdfs df sf g we erg sdfs df sf g we erg sdfs df sf g we erg sdfs df sf g we erg sdfs df sf g we erg', 20, 1, '2019-05-31 22:28:18'),
(28, 'Kashif', 'Nice post', 6, 1, '2019-06-01 10:04:59'),
(29, 'Kashif', 'as dferwer', 8, 1, '2019-06-01 10:05:50'),
(30, 'Kashif', 'wrhwtrqrqwe', 9, 1, '2019-06-01 10:06:03'),
(31, 'Kashif', 'ertqer', 19, 1, '2019-06-01 10:06:19'),
(32, 'Kashif', 'mery  d', 11, 1, '2019-06-01 10:08:23'),
(33, 'Kashif', 'rey4 th h', 11, 1, '2019-06-01 10:08:29'),
(34, 'Kashif', 'lor as q rnof ldfn owe woen gpkjvb dsabg skdajfgb ajksdhgbadkgb askdfjgb asdkjgb kdsfajg nskajgn ksng ksjg bksjgb ksbgksab ksagb asgb askjgb askb skahb kslor as q rnof ldfn owe woen gpkjvb dsabg skdajfgb ajksdhgbadkgb askdfjgb asdkjgb kdsfajg nskajgn ksng ksjg bksjgb ksbgksab ksagb asgb askjgb askb skahb kslor as q rnof ldfn owe woen gpkjvb dsabg skdajfgb ajksdhgbadkgb askdfjgb asdkjgb kdsfajg nskajgn ksng ksjg bksjgb ksbgksab ksagb asgb askjgb askb skahb kslor as q rnof ldfn owe woen gpkjvb dsabg skdajfgb ajksdhgbadkgb askdfjgb asdkjgb kdsfajg nskajgn ksng ksjg bksjgb ksbgksab ksagb asgb askjgb askb skahb ks', 11, 1, '2019-06-01 10:18:28'),
(35, 'Kashif', 'we erg eg erg', 20, 1, '2019-06-01 10:18:57'),
(36, 'u2017287', 'ASWF', 21, 2, '2019-06-01 10:20:14'),
(37, 'u2017287', 'SDFWEF', 8, 2, '2019-06-01 10:20:40'),
(38, 'u2017287', 'QWEQ QW', 20, 2, '2019-06-01 10:20:59'),
(39, 'u2017287', 'SDF WQR', 6, 2, '2019-06-01 10:21:27'),
(40, 'u2017287', 'werwer qw', 6, 2, '2019-06-01 10:24:38'),
(41, 'u2017287', 'qweqwe', 6, 2, '2019-06-01 10:24:43'),
(42, 'u2017287', 'asdasd ad', 8, 2, '2019-06-01 12:59:43'),
(43, 'u2017287', 'asdasd sd', 8, 2, '2019-06-01 13:07:14'),
(44, 'Kashif', 'w343rtert erg dh fsgjh df fn fsgh ahasd  fgfgfdfg dfg dsfg aert efg adfgh dfg', 11, 1, '2019-06-03 18:58:03'),
(45, 'Kashif', 'dsghwth fgn fgn sfg sdb d', 9, 1, '2019-06-03 18:58:18'),
(46, 'Muhammad Kashif', 'dfhkd nfg aeorgn dlfgbn aefkljgh adlkf ndh adfh', 6, 28, '2019-06-03 19:22:51'),
(47, 'Kashif', 'afgaretert er tret', 24, 1, '2019-06-03 19:24:15');

-- --------------------------------------------------------

--
-- Table structure for table `posts`
--

CREATE TABLE `posts` (
  `id` int(11) NOT NULL,
  `userId` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `body` text NOT NULL,
  `author` varchar(255) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `posts`
--

INSERT INTO `posts` (`id`, `userId`, `title`, `body`, `author`, `created_at`) VALUES
(6, 1, 'My First Blog Post', 'Lorem Ipsum dolo', 'Guest', '2019-05-31 13:57:21'),
(9, 3, 'Post', 'Content\r\n', 'ahsen', '2019-05-31 14:08:11'),
(10, 1, 'My 2nd Blog Post', 'Abcasd af asg as gasfg sdh sd hsd hsd hsd sd ', 'Kashif', '2019-05-31 16:25:52'),
(11, 1, 'My 3rd Blog Post', 'Lorem Ipsum sd', 'Kashif', '2019-05-31 16:26:36'),
(19, 4, 'asd', 'asd', 'asd', '2019-05-31 16:42:37'),
(20, 4, 'NEW', 'NEW', 'NEW', '2019-05-31 17:05:49'),
(21, 5, 'NEWNEW', 'afagdfh d ', 'asdf', '2019-05-31 17:07:04'),
(23, 27, 'My 1st Blog Post', 'Lorem Ipsum', '123', '2019-06-03 14:56:51'),
(24, 28, 'My 1st Blog Post Edited', 'Lorem Ipsum Content...', 'Muhammad Kashif', '2019-06-03 19:23:21');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `email` varchar(100) NOT NULL,
  `username` varchar(100) NOT NULL,
  `password` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `email`, `username`, `password`) VALUES
(1, 'kashi@gmail.com', 'Kashif', '$2y$10$Xcc3zgHAnb95sy/6v53fa..W1xsVVNWHdNgMLLZaMuIsP9Hi7D6su'),
(2, 'u2017287@giki.edu.pk', 'u2017287', '$2y$10$9iCk72iAy6Um29qHFcXq3.TtlWrNh/ATDaFSZP0lXqfeeZKY/1Cni'),
(3, 'ahsen@gmail.com', 'ahsen', '$2y$10$/XF3VGUhcmQ8fHBlmascl.IgYHhTS0NPJO3ceLlLVzf8JFBrncFf2'),
(4, 'guest@gmail.com', 'guest', '$2y$10$8sPbl3gGX59zLlXd.w7e3.q9iwKxW2W8wvJ9IlHhnmlsxokK41AxS'),
(5, 'asd@asd.com', 'asd', '$2y$10$vRhwFUeq2KlJmttpxTaatelw1rFh74kat.6NVbRLdvB.DYSCzUcVu'),
(24, 'abc@gmail.com', 'abc', '$2y$10$geNgQM7cII14FjNqlcBZa.GmH0EnAKdPn14szlZaFD3Gp0K9ViHYy'),
(25, 'abc@abc.com', 'abc', '$2y$10$kKJ35RxU2w6x2DxcK4aDi.Aw3jbQwftuqBihDG8cu8EL0OWgTM3Je'),
(26, 'qwerty@abc.com', 'qwerty', '$2y$10$8l3x.sXc1geEf8jatzgl0eiIGkZNcvxJxkaeG6u8RAHbJPxBidbjO'),
(27, '123@13.com', '123', '$2y$10$u/oaVsbFe/ZncGEps/j.1ey4xDTxWMOIUUAe9nkyTA8KzKLUQX3ay'),
(28, '44mkashif@gmail.com', 'Muhammad Kashif', '$2y$10$pFx/wWJX77BZIwunUxmL8uu7qVcnm1bfyctZp2CvkpCoIyibUT1Qq');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `comments`
--
ALTER TABLE `comments`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `posts`
--
ALTER TABLE `posts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `comments`
--
ALTER TABLE `comments`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=48;

--
-- AUTO_INCREMENT for table `posts`
--
ALTER TABLE `posts`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
