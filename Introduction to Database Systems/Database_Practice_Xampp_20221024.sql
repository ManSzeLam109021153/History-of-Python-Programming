-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- 主機： 127.0.0.1
-- 產生時間： 2022 年 10 月 30 日 03:07
-- 伺服器版本： 10.4.19-MariaDB
-- PHP 版本： 8.0.7

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- 資料庫: `cw1_05`
--

-- --------------------------------------------------------

--
-- 資料表結構 `學生`
--

CREATE TABLE `學生` (
  `STD` varchar(10) NOT NULL,
  `Name` varchar(3) NOT NULL,
  `Subject_Code` varchar(10) NOT NULL,
  `Teacher` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- 傾印資料表的資料 `學生`
--

INSERT INTO `學生` (`STD`, `Name`, `Subject_Code`, `Teacher`) VALUES
('123', 'Joh', '211', '311'),
('124', 'May', '212', '312'),
('125', 'Pet', '213', '313');

-- --------------------------------------------------------

--
-- 資料表結構 `科系`
--

CREATE TABLE `科系` (
  `Subject_code` varchar(10) NOT NULL,
  `Subject_Title` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- 傾印資料表的資料 `科系`
--

INSERT INTO `科系` (`Subject_code`, `Subject_Title`) VALUES
('400', 'Chinese'),
('401', 'English'),
('402', 'Computer');

-- --------------------------------------------------------

--
-- 資料表結構 `老師`
--

CREATE TABLE `老師` (
  `Number` varchar(10) NOT NULL,
  `Name` varchar(3) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- 傾印資料表的資料 `老師`
--

INSERT INTO `老師` (`Number`, `Name`) VALUES
('511', 'Lee'),
('512', 'Ho'),
('513', 'Day');

--
-- 已傾印資料表的索引
--

--
-- 資料表索引 `學生`
--
ALTER TABLE `學生`
  ADD PRIMARY KEY (`STD`);

--
-- 資料表索引 `科系`
--
ALTER TABLE `科系`
  ADD PRIMARY KEY (`Subject_code`);

--
-- 資料表索引 `老師`
--
ALTER TABLE `老師`
  ADD PRIMARY KEY (`Number`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
