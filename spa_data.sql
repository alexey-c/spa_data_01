-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Хост: 127.0.0.1:3306
-- Время создания: Июн 09 2021 г., 12:52
-- Версия сервера: 10.3.22-MariaDB
-- Версия PHP: 7.1.33

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- База данных: `spa_data`
--

-- --------------------------------------------------------

--
-- Структура таблицы `spa_table`
--

CREATE TABLE `spa_table` (
  `date` timestamp NOT NULL DEFAULT current_timestamp(),
  `name` varchar(256) DEFAULT NULL,
  `quantity` int(16) DEFAULT NULL,
  `distance` float DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `spa_table`
--

INSERT INTO `spa_table` (`date`, `name`, `quantity`, `distance`) VALUES
('2021-06-07 22:31:52', 'Mcpfmjp', 649, 3219.3),
('2021-06-07 22:32:18', 'Nzrtxcdxjmy', 326, 7910.5),
('2021-06-08 05:47:58', 'Edlzxlk', 825, 5577.8),
('2021-06-08 05:50:37', 'Dkgfaztslss', 596, 2735.1),
('2021-06-08 05:55:54', 'Rtbwaxzgvpoj', 59, 8309.7),
('2021-06-08 05:58:59', 'Pnzjefylavg', 856, 1974.9),
('2021-06-08 05:59:12', 'Ogqdpo', 593, 2619.9),
('2021-06-08 05:59:13', 'Gpumcmwsy', 445, 9812.8),
('2021-06-08 05:59:14', 'Bsxwvbfaro', 416, 7469.9),
('2021-06-08 05:59:15', 'Eodyymezcebq', 576, 8746.3),
('2021-06-08 05:59:16', 'Cwcgajrkb', 114, 6258.5),
('2021-06-08 05:59:17', 'Cqvtyzryddlw', 593, 6503.1),
('2021-06-08 05:59:17', 'Bkviwzp', 321, 5637.9),
('2021-06-08 05:59:17', 'Ibnpdgw', 426, 6846.8),
('2021-06-08 05:59:17', 'Nllxjlti', 864, 9132.2),
('2021-06-08 05:59:17', 'Ykptlfmk', 568, 1750.5),
('2021-06-08 05:59:18', 'Pwtzhhqwgrh', 722, 6624.8),
('2021-06-08 05:59:18', 'Szbyzdffuc', 370, 2299.7),
('2021-06-08 05:59:18', 'Mzegfaxnq', 436, 9678.4),
('2021-06-08 05:59:18', 'Gapfypfx', 244, 3089.6),
('2021-06-08 05:59:18', 'Veigincjl', 640, 5036.5),
('2021-06-08 05:59:18', 'Lendoxdvz', 287, 2468.4),
('2021-06-08 05:59:19', 'Vtuqrcd', 222, 9215.6),
('2021-06-08 05:59:19', 'Sgftdelfqzm', 259, 522.1),
('2021-06-08 05:59:19', 'qjzmwmjpqc', 949, 2568.7),
('2021-06-08 05:59:19', 'Yqmptircyqe', 695, 6863.1),
('2021-06-08 05:59:19', 'Whjpmrxca', 414, 3400),
('2021-06-08 05:59:19', 'Anmmoke', 784, 4909.5),
('2021-06-08 05:59:20', 'Tcubkmpl', 955, 3585.7),
('2021-06-08 05:59:20', 'Ynlxuuomteup', 23, 4198.5),
('2021-06-08 05:59:20', 'Ibqcuwnotv', 620, 2525.1),
('2021-06-08 05:59:20', 'Txfzjdmskwgs', 681, 3473.1),
('2021-06-08 05:59:20', 'Chxyquwtxv', 421, 6048.8),
('2021-06-08 05:59:20', 'Tdhghoo', 175, 7299.3),
('2021-06-08 05:59:21', 'Bntwibopyfp', 354, 7020.4),
('2021-06-08 05:59:21', 'Gamcxp', 28, 1711.9),
('2021-06-08 05:59:21', 'Wxmblwvb', 233, 7973.1),
('2021-06-08 05:59:21', 'Raycqyiwao', 804, 541.3),
('2021-06-08 05:59:21', 'Vdrcmfv', 829, 8133.1),
('2021-06-08 05:59:21', 'Cwuskeuroma', 491, 4342.5),
('2021-06-08 05:59:22', 'Lloatwlxu', 781, 629.1),
('2021-06-08 05:59:22', 'Yycakyka', 758, 7895.6),
('2021-06-08 05:59:22', 'Fseykvvgo', 775, 2739.7),
('2021-06-08 05:59:22', 'Emoecdus', 886, 1570.3),
('2021-06-08 05:59:22', 'Gfrxtgouyj', 318, 3251.2),
('2021-06-08 05:59:22', 'Pilsuj', 91, 491.7),
('2021-06-08 05:59:23', 'Zfqwbhfb', 204, 7976.1),
('2021-06-08 06:01:20', 'Fadvkqqgxhq', 535, 5304.8),
('2021-06-08 06:08:07', 'Yhaunlgaln', 597, 2638.2),
('2021-06-08 06:12:28', 'Gafdnd', 95, 4857.1);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
