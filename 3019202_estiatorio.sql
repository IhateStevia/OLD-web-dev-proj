-- phpMyAdmin SQL Dump
-- version 4.6.4
-- https://www.phpmyadmin.net/
--
-- Φιλοξενητής: fdb26.biz.nf
-- Χρόνος δημιουργίας: 09 Ιουν 2019 στις 21:08:00
-- Έκδοση διακομιστή: 5.7.20-log
-- Έκδοση PHP: 5.5.38

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Βάση δεδομένων: `3019202_estiatorio`
--

-- --------------------------------------------------------

--
-- Δομή πίνακα για τον πίνακα `beneficiary_free_food`
--

CREATE TABLE `beneficiary_free_food` (
  `ACADEMIC_ID` bigint(12) UNSIGNED NOT NULL,
  `DATE_EXPIRED_FREE_FOOD` date DEFAULT NULL,
  `COMMENTS` char(50) COLLATE utf8mb4_bin DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

--
-- Άδειασμα δεδομένων του πίνακα `beneficiary_free_food`
--

INSERT INTO `beneficiary_free_food` (`ACADEMIC_ID`, `DATE_EXPIRED_FREE_FOOD`, `COMMENTS`) VALUES
(1, '2018-10-01', ''),
(2, '2017-10-02', ''),
(3, '2017-10-03', ''),
(4, '2017-10-04', ''),
(5, '2018-10-05', ''),
(6, '2017-10-06', ''),
(7, '2017-10-07', ''),
(8, '2017-10-08', ''),
(9, '2018-10-09', ''),
(10, '2017-10-10', ''),
(11, '2017-10-11', ''),
(12, '2017-10-12', ''),
(13, '2018-10-13', ''),
(14, '2017-10-14', ''),
(15, '2017-10-15', ''),
(16, '2017-10-16', ''),
(17, '2018-10-17', ''),
(18, '2017-10-18', ''),
(19, '2017-10-19', ''),
(20, '2017-10-20', ''),
(21, '2018-10-21', ''),
(22, '2017-10-22', ''),
(23, '2017-10-23', ''),
(24, '2017-10-24', ''),
(25, '2018-10-25', ''),
(26, '2017-10-26', ''),
(27, '2017-10-27', ''),
(28, '2017-10-28', ''),
(29, '2018-10-29', ''),
(30, '2017-10-30', ''),
(31, '2017-10-01', ''),
(32, '2017-10-02', ''),
(33, '2018-10-03', ''),
(34, '2017-10-04', ''),
(35, '2017-10-05', ''),
(36, '2017-10-06', ''),
(37, '2018-10-07', ''),
(38, '2017-10-08', ''),
(39, '2017-10-09', ''),
(40, '2017-10-10', ''),
(601, '2018-10-01', ''),
(602, '2017-10-02', ''),
(603, '2017-10-03', ''),
(604, '2017-10-04', ''),
(605, '2018-10-05', ''),
(606, '2017-10-06', ''),
(607, '2017-10-07', ''),
(608, '2017-10-08', ''),
(609, '2018-10-09', ''),
(610, '2017-10-10', ''),
(611, '2017-10-11', ''),
(612, '2017-10-12', ''),
(613, '2018-10-13', ''),
(614, '2017-10-14', ''),
(615, '2017-10-15', ''),
(616, '2017-10-16', ''),
(617, '2018-10-17', ''),
(618, '2017-10-18', ''),
(619, '2017-10-19', ''),
(620, '2017-10-20', ''),
(621, '2018-10-21', ''),
(622, '2017-10-22', ''),
(623, '2017-10-23', ''),
(624, '2017-10-24', ''),
(625, '2018-10-25', ''),
(626, '2017-10-26', ''),
(627, '2017-10-27', ''),
(628, '2017-10-28', ''),
(629, '2018-10-29', ''),
(630, '2017-10-30', ''),
(631, '2017-10-01', ''),
(632, '2017-10-02', ''),
(633, '2018-10-03', ''),
(634, '2017-10-04', ''),
(635, '2017-10-05', ''),
(636, '2017-10-06', ''),
(637, '2018-10-07', ''),
(638, '2017-10-08', ''),
(639, '2017-10-09', ''),
(640, '2017-10-10', '');

-- --------------------------------------------------------

--
-- Δομή πίνακα για τον πίνακα `buy_coupon`
--

CREATE TABLE `buy_coupon` (
  `DATETIME` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `ACADEMIC_ID` bigint(12) UNSIGNED NOT NULL,
  `BREAKFAST` tinyint(3) UNSIGNED NOT NULL DEFAULT '0',
  `LUNCH` tinyint(3) UNSIGNED NOT NULL DEFAULT '0',
  `DINNER` tinyint(3) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

--
-- Άδειασμα δεδομένων του πίνακα `buy_coupon`
--

INSERT INTO `buy_coupon` (`DATETIME`, `ACADEMIC_ID`, `BREAKFAST`, `LUNCH`, `DINNER`) VALUES
('2019-05-26 09:16:13', 22, 3, 3, 3),
('2019-05-26 09:16:13', 23, 4, 4, 4),
('2019-05-26 09:16:13', 24, 5, 5, 5),
('2019-05-26 09:16:13', 25, 6, 6, 6),
('2019-05-26 09:16:13', 26, 7, 7, 7),
('2019-05-26 09:16:13', 27, 8, 8, 8),
('2019-05-26 09:16:13', 28, 9, 9, 9),
('2019-05-26 09:16:13', 29, 10, 10, 10),
('2019-05-26 09:16:13', 30, 11, 11, 11),
('2019-05-26 09:16:13', 31, 12, 12, 12),
('2019-05-26 09:16:13', 32, 13, 13, 13),
('2019-05-26 09:16:13', 33, 14, 14, 14),
('2019-05-26 09:16:13', 34, 15, 15, 15),
('2019-05-26 09:16:13', 35, 16, 16, 16),
('2019-05-26 09:16:13', 36, 17, 17, 17),
('2019-05-26 09:16:13', 37, 18, 18, 18),
('2019-05-26 09:16:13', 38, 19, 19, 19),
('2019-05-26 09:16:13', 39, 20, 20, 20),
('2019-05-26 09:16:13', 40, 1, 1, 1),
('2019-05-26 09:16:13', 41, 2, 2, 2),
('2019-05-26 09:16:13', 42, 3, 3, 3),
('2019-05-26 09:16:13', 43, 4, 4, 4),
('2019-05-26 09:16:13', 44, 5, 5, 5),
('2019-05-26 09:16:13', 45, 6, 6, 6),
('2019-05-26 09:16:13', 46, 7, 7, 7),
('2019-05-26 09:16:13', 47, 8, 8, 8),
('2019-05-26 09:16:13', 48, 9, 9, 9),
('2019-05-26 09:16:13', 49, 10, 10, 10),
('2019-05-26 09:16:13', 50, 11, 11, 11),
('2019-05-26 09:16:13', 51, 12, 12, 12),
('2019-05-26 09:16:13', 52, 13, 13, 13),
('2019-05-26 09:16:13', 53, 14, 14, 14),
('2019-05-26 09:16:13', 54, 15, 15, 15),
('2019-05-26 09:16:13', 55, 16, 16, 16),
('2019-05-26 09:16:13', 56, 17, 17, 17),
('2019-05-26 09:16:13', 57, 18, 18, 18),
('2019-05-26 09:16:13', 58, 19, 19, 19),
('2019-05-26 09:16:13', 59, 20, 20, 20),
('2019-05-26 09:16:13', 148, 9, 9, 9),
('2019-05-26 09:16:13', 620, 1, 1, 1),
('2019-05-26 09:16:13', 621, 2, 2, 2),
('2019-05-26 09:16:13', 622, 3, 3, 3),
('2019-05-26 09:16:13', 623, 4, 4, 4),
('2019-05-26 09:16:13', 624, 5, 5, 5),
('2019-05-26 09:16:13', 625, 6, 6, 6),
('2019-05-26 09:16:13', 626, 7, 7, 7),
('2019-05-26 09:16:13', 627, 8, 8, 8),
('2019-05-26 09:16:13', 628, 9, 9, 9),
('2019-05-26 09:16:13', 629, 10, 10, 10),
('2019-05-26 09:16:13', 630, 11, 11, 11),
('2019-05-26 09:16:13', 631, 12, 12, 12),
('2019-05-26 09:16:13', 632, 13, 13, 13),
('2019-05-26 09:16:13', 633, 14, 14, 14),
('2019-05-26 09:16:13', 634, 15, 15, 15),
('2019-05-26 09:16:13', 635, 16, 16, 16),
('2019-05-26 09:16:13', 636, 17, 17, 17),
('2019-05-26 09:16:13', 637, 18, 18, 18),
('2019-05-26 09:16:13', 638, 19, 19, 19),
('2019-05-26 09:16:13', 639, 20, 20, 20),
('2019-05-26 09:16:13', 640, 1, 1, 1),
('2019-05-26 09:16:13', 641, 2, 2, 2),
('2019-05-26 09:16:13', 642, 3, 3, 3),
('2019-05-26 09:16:13', 643, 4, 4, 4),
('2019-05-26 09:16:13', 644, 5, 5, 5),
('2019-05-26 09:16:13', 645, 6, 6, 6),
('2019-05-26 09:16:13', 646, 7, 7, 7),
('2019-05-26 09:16:13', 647, 8, 8, 8),
('2019-05-26 09:16:13', 648, 9, 9, 9),
('2019-05-26 09:16:13', 649, 10, 10, 10),
('2019-05-26 09:16:13', 650, 11, 11, 11),
('2019-05-26 09:16:13', 651, 12, 12, 12),
('2019-05-26 09:16:13', 652, 13, 13, 13),
('2019-05-26 09:16:13', 653, 14, 14, 14),
('2019-05-26 09:16:13', 654, 15, 15, 15),
('2019-05-26 09:16:13', 655, 16, 16, 16),
('2019-05-26 09:16:13', 656, 17, 17, 17),
('2019-05-26 09:16:13', 657, 18, 18, 18),
('2019-05-26 09:16:13', 658, 19, 19, 19),
('2019-05-26 09:16:13', 659, 20, 20, 20),
('2019-05-26 09:22:14', 20, 1, 1, 1),
('2019-05-26 09:22:14', 21, 2, 2, 2),
('2019-05-26 09:22:14', 22, 3, 3, 3),
('2019-05-26 09:22:14', 23, 4, 4, 4),
('2019-05-26 09:22:14', 24, 5, 5, 5),
('2019-05-26 09:22:14', 25, 6, 6, 6),
('2019-05-26 09:22:14', 26, 7, 7, 7),
('2019-05-26 09:22:14', 27, 8, 8, 8),
('2019-05-26 09:22:14', 28, 9, 9, 9),
('2019-05-26 09:22:14', 29, 10, 10, 10),
('2019-05-26 09:22:14', 30, 11, 11, 11),
('2019-05-26 09:22:14', 31, 12, 12, 12),
('2019-05-26 09:22:14', 32, 13, 13, 13),
('2019-05-26 09:22:14', 33, 14, 14, 14),
('2019-05-26 09:22:14', 34, 15, 15, 15),
('2019-05-26 09:22:14', 35, 16, 16, 16),
('2019-05-26 09:22:14', 36, 17, 17, 17),
('2019-05-26 09:22:14', 37, 18, 18, 18),
('2019-05-26 09:22:14', 38, 19, 19, 19),
('2019-05-26 09:22:14', 39, 20, 20, 20),
('2019-05-26 09:22:14', 40, 1, 1, 1),
('2019-05-26 09:22:14', 41, 2, 2, 2),
('2019-05-26 09:22:14', 42, 3, 3, 3),
('2019-05-26 09:22:14', 43, 4, 4, 4),
('2019-05-26 09:22:14', 44, 5, 5, 5),
('2019-05-26 09:22:14', 45, 6, 6, 6),
('2019-05-26 09:22:14', 46, 7, 7, 7),
('2019-05-26 09:22:14', 47, 8, 8, 8),
('2019-05-26 09:22:14', 48, 9, 9, 9),
('2019-05-26 09:22:14', 49, 10, 10, 10),
('2019-05-26 09:22:14', 50, 11, 11, 11),
('2019-05-26 09:22:14', 51, 12, 12, 12),
('2019-05-26 09:22:14', 52, 13, 13, 13),
('2019-05-26 09:22:14', 53, 14, 14, 14),
('2019-05-26 09:22:14', 54, 15, 15, 15),
('2019-05-26 09:22:14', 55, 16, 16, 16),
('2019-05-26 09:22:14', 56, 17, 17, 17),
('2019-05-26 09:22:14', 57, 18, 18, 18),
('2019-05-26 09:22:14', 58, 19, 19, 19),
('2019-05-26 09:22:14', 59, 20, 20, 20),
('2019-05-26 09:22:14', 148, 9, 9, 9),
('2019-05-26 09:22:14', 620, 1, 1, 1),
('2019-05-26 09:22:14', 621, 2, 2, 2),
('2019-05-26 09:22:14', 622, 3, 3, 3),
('2019-05-26 09:22:14', 623, 4, 4, 4),
('2019-05-26 09:22:14', 624, 5, 5, 5),
('2019-05-26 09:22:14', 625, 6, 6, 6),
('2019-05-26 09:22:14', 626, 7, 7, 7),
('2019-05-26 09:22:14', 627, 8, 8, 8),
('2019-05-26 09:22:14', 628, 9, 9, 9),
('2019-05-26 09:22:14', 629, 10, 10, 10),
('2019-05-26 09:22:14', 630, 11, 11, 11),
('2019-05-26 09:22:14', 631, 12, 12, 12),
('2019-05-26 09:22:14', 632, 13, 13, 13),
('2019-05-26 09:22:14', 633, 14, 14, 14),
('2019-05-26 09:22:14', 634, 15, 15, 15),
('2019-05-26 09:22:14', 635, 16, 16, 16),
('2019-05-26 09:22:14', 636, 17, 17, 17),
('2019-05-26 09:22:14', 637, 18, 18, 18),
('2019-05-26 09:22:14', 638, 19, 19, 19),
('2019-05-26 09:22:14', 639, 20, 20, 20),
('2019-05-26 09:22:14', 640, 1, 1, 1),
('2019-05-26 09:22:14', 641, 2, 2, 2),
('2019-05-26 09:22:14', 642, 3, 3, 3),
('2019-05-26 09:22:14', 643, 4, 4, 4),
('2019-05-26 09:22:14', 644, 5, 5, 5),
('2019-05-26 09:22:14', 645, 6, 6, 6),
('2019-05-26 09:22:14', 646, 7, 7, 7),
('2019-05-26 09:22:14', 647, 8, 8, 8),
('2019-05-26 09:22:14', 648, 9, 9, 9),
('2019-05-26 09:22:14', 649, 10, 10, 10),
('2019-05-26 09:22:14', 650, 11, 11, 11),
('2019-05-26 09:22:14', 651, 12, 12, 12),
('2019-05-26 09:22:14', 652, 13, 13, 13),
('2019-05-26 09:22:14', 653, 14, 14, 14),
('2019-05-26 09:22:14', 654, 15, 15, 15),
('2019-05-26 09:22:14', 655, 16, 16, 16),
('2019-05-26 09:22:14', 656, 17, 17, 17),
('2019-05-26 09:22:14', 657, 18, 18, 18),
('2019-05-26 09:22:14', 658, 19, 19, 19),
('2019-05-26 09:22:14', 659, 20, 20, 20),
('2019-05-26 09:23:07', 20, 1, 1, 1),
('2019-05-26 09:23:07', 21, 2, 2, 2),
('2019-05-26 09:23:07', 22, 3, 3, 3),
('2019-05-26 09:23:07', 23, 4, 4, 4),
('2019-05-26 09:23:07', 24, 5, 5, 5),
('2019-05-26 09:23:07', 25, 6, 6, 6),
('2019-05-26 09:23:07', 26, 7, 7, 7),
('2019-05-26 09:23:07', 27, 8, 8, 8),
('2019-05-26 09:23:07', 28, 9, 9, 9),
('2019-05-26 09:23:07', 29, 10, 10, 10),
('2019-05-26 09:23:07', 30, 11, 11, 11),
('2019-05-26 09:23:07', 31, 12, 12, 12),
('2019-05-26 09:23:07', 32, 13, 13, 13),
('2019-05-26 09:23:07', 33, 14, 14, 14),
('2019-05-26 09:23:07', 34, 15, 15, 15),
('2019-05-26 09:23:07', 35, 16, 16, 16),
('2019-05-26 09:23:07', 36, 17, 17, 17),
('2019-05-26 09:23:07', 37, 18, 18, 18),
('2019-05-26 09:23:07', 38, 19, 19, 19),
('2019-05-26 09:23:07', 39, 20, 20, 20),
('2019-05-26 09:23:07', 40, 1, 1, 1),
('2019-05-26 09:23:07', 41, 2, 2, 2),
('2019-05-26 09:23:07', 42, 3, 3, 3),
('2019-05-26 09:23:07', 43, 4, 4, 4),
('2019-05-26 09:23:07', 44, 5, 5, 5),
('2019-05-26 09:23:07', 45, 6, 6, 6),
('2019-05-26 09:23:07', 46, 7, 7, 7),
('2019-05-26 09:23:07', 47, 8, 8, 8),
('2019-05-26 09:23:07', 48, 9, 9, 9),
('2019-05-26 09:23:07', 49, 10, 10, 10),
('2019-05-26 09:23:07', 50, 11, 11, 11),
('2019-05-26 09:23:07', 51, 12, 12, 12),
('2019-05-26 09:23:07', 52, 13, 13, 13),
('2019-05-26 09:23:07', 53, 14, 14, 14),
('2019-05-26 09:23:07', 54, 15, 15, 15),
('2019-05-26 09:23:07', 55, 16, 16, 16),
('2019-05-26 09:23:07', 56, 17, 17, 17),
('2019-05-26 09:23:07', 57, 18, 18, 18),
('2019-05-26 09:23:07', 58, 19, 19, 19),
('2019-05-26 09:23:07', 59, 20, 20, 20),
('2019-05-26 09:23:07', 148, 9, 9, 9),
('2019-05-26 09:23:07', 620, 1, 1, 1),
('2019-05-26 09:23:07', 621, 2, 2, 2),
('2019-05-26 09:23:07', 622, 3, 3, 3),
('2019-05-26 09:23:07', 623, 4, 4, 4),
('2019-05-26 09:23:07', 624, 5, 5, 5),
('2019-05-26 09:23:07', 625, 6, 6, 6),
('2019-05-26 09:23:07', 626, 7, 7, 7),
('2019-05-26 09:23:07', 627, 8, 8, 8),
('2019-05-26 09:23:07', 628, 9, 9, 9),
('2019-05-26 09:23:07', 629, 10, 10, 10),
('2019-05-26 09:23:07', 630, 11, 11, 11),
('2019-05-26 09:23:07', 631, 12, 12, 12),
('2019-05-26 09:23:07', 632, 13, 13, 13),
('2019-05-26 09:23:07', 633, 14, 14, 14),
('2019-05-26 09:23:07', 634, 15, 15, 15),
('2019-05-26 09:23:07', 635, 16, 16, 16),
('2019-05-26 09:23:07', 636, 17, 17, 17),
('2019-05-26 09:23:07', 637, 18, 18, 18),
('2019-05-26 09:23:07', 638, 19, 19, 19),
('2019-05-26 09:23:07', 639, 20, 20, 20),
('2019-05-26 09:23:07', 640, 1, 1, 1),
('2019-05-26 09:23:07', 641, 2, 2, 2),
('2019-05-26 09:23:07', 642, 3, 3, 3),
('2019-05-26 09:23:07', 643, 4, 4, 4),
('2019-05-26 09:23:07', 644, 5, 5, 5),
('2019-05-26 09:23:07', 645, 6, 6, 6),
('2019-05-26 09:23:07', 646, 7, 7, 7),
('2019-05-26 09:23:07', 647, 8, 8, 8),
('2019-05-26 09:23:07', 648, 9, 9, 9),
('2019-05-26 09:23:07', 649, 10, 10, 10),
('2019-05-26 09:23:07', 650, 11, 11, 11),
('2019-05-26 09:23:07', 651, 12, 12, 12),
('2019-05-26 09:23:07', 652, 13, 13, 13),
('2019-05-26 09:23:07', 653, 14, 14, 14),
('2019-05-26 09:23:07', 654, 15, 15, 15),
('2019-05-26 09:23:07', 655, 16, 16, 16),
('2019-05-26 09:23:07', 656, 17, 17, 17),
('2019-05-26 09:23:07', 657, 18, 18, 18),
('2019-05-26 09:23:07', 658, 19, 19, 19),
('2019-05-26 09:23:07', 659, 20, 20, 20),
('2019-05-26 09:23:14', 20, 1, 1, 1),
('2019-05-26 09:23:14', 21, 2, 2, 2),
('2019-05-26 09:23:14', 22, 3, 3, 3),
('2019-05-26 09:23:14', 23, 4, 4, 4),
('2019-05-26 09:23:14', 24, 5, 5, 5),
('2019-05-26 09:23:14', 25, 6, 6, 6),
('2019-05-26 09:23:14', 26, 7, 7, 7),
('2019-05-26 09:23:14', 27, 8, 8, 8),
('2019-05-26 09:23:14', 28, 9, 9, 9),
('2019-05-26 09:23:14', 29, 10, 10, 10),
('2019-05-26 09:23:14', 30, 11, 11, 11),
('2019-05-26 09:23:14', 31, 12, 12, 12),
('2019-05-26 09:23:14', 32, 13, 13, 13),
('2019-05-26 09:23:14', 33, 14, 14, 14),
('2019-05-26 09:23:14', 34, 15, 15, 15),
('2019-05-26 09:23:14', 35, 16, 16, 16),
('2019-05-26 09:23:14', 36, 17, 17, 17),
('2019-05-26 09:23:14', 37, 18, 18, 18),
('2019-05-26 09:23:14', 38, 19, 19, 19),
('2019-05-26 09:23:14', 39, 20, 20, 20),
('2019-05-26 09:23:14', 40, 1, 1, 1),
('2019-05-26 09:23:14', 41, 2, 2, 2),
('2019-05-26 09:23:14', 42, 3, 3, 3),
('2019-05-26 09:23:14', 43, 4, 4, 4),
('2019-05-26 09:23:14', 44, 5, 5, 5),
('2019-05-26 09:23:14', 45, 6, 6, 6),
('2019-05-26 09:23:14', 46, 7, 7, 7),
('2019-05-26 09:23:14', 47, 8, 8, 8),
('2019-05-26 09:23:14', 48, 9, 9, 9),
('2019-05-26 09:23:14', 49, 10, 10, 10),
('2019-05-26 09:23:14', 50, 11, 11, 11),
('2019-05-26 09:23:14', 51, 12, 12, 12),
('2019-05-26 09:23:14', 52, 13, 13, 13),
('2019-05-26 09:23:14', 53, 14, 14, 14),
('2019-05-26 09:23:14', 54, 15, 15, 15),
('2019-05-26 09:23:14', 55, 16, 16, 16),
('2019-05-26 09:23:14', 56, 17, 17, 17),
('2019-05-26 09:23:14', 57, 18, 18, 18),
('2019-05-26 09:23:14', 58, 19, 19, 19),
('2019-05-26 09:23:14', 59, 20, 20, 20),
('2019-05-26 09:23:14', 148, 9, 9, 9),
('2019-05-26 09:23:14', 620, 1, 1, 1),
('2019-05-26 09:23:14', 621, 2, 2, 2),
('2019-05-26 09:23:14', 622, 3, 3, 3),
('2019-05-26 09:23:14', 623, 4, 4, 4),
('2019-05-26 09:23:14', 624, 5, 5, 5),
('2019-05-26 09:23:14', 625, 6, 6, 6),
('2019-05-26 09:23:14', 626, 7, 7, 7),
('2019-05-26 09:23:14', 627, 8, 8, 8),
('2019-05-26 09:23:14', 628, 9, 9, 9),
('2019-05-26 09:23:14', 629, 10, 10, 10),
('2019-05-26 09:23:14', 630, 11, 11, 11),
('2019-05-26 09:23:14', 631, 12, 12, 12),
('2019-05-26 09:23:14', 632, 13, 13, 13),
('2019-05-26 09:23:14', 633, 14, 14, 14),
('2019-05-26 09:23:14', 634, 15, 15, 15),
('2019-05-26 09:23:14', 635, 16, 16, 16),
('2019-05-26 09:23:14', 636, 17, 17, 17),
('2019-05-26 09:23:14', 637, 18, 18, 18),
('2019-05-26 09:23:14', 638, 19, 19, 19),
('2019-05-26 09:23:14', 639, 20, 20, 20),
('2019-05-26 09:23:14', 640, 1, 1, 1),
('2019-05-26 09:23:14', 641, 2, 2, 2),
('2019-05-26 09:23:14', 642, 3, 3, 3),
('2019-05-26 09:23:14', 643, 4, 4, 4),
('2019-05-26 09:23:14', 644, 5, 5, 5),
('2019-05-26 09:23:14', 645, 6, 6, 6),
('2019-05-26 09:23:14', 646, 7, 7, 7),
('2019-05-26 09:23:14', 647, 8, 8, 8),
('2019-05-26 09:23:14', 648, 9, 9, 9),
('2019-05-26 09:23:14', 649, 10, 10, 10),
('2019-05-26 09:23:14', 650, 11, 11, 11),
('2019-05-26 09:23:14', 651, 12, 12, 12),
('2019-05-26 09:23:14', 652, 13, 13, 13),
('2019-05-26 09:23:14', 653, 14, 14, 14),
('2019-05-26 09:23:14', 654, 15, 15, 15),
('2019-05-26 09:23:14', 655, 16, 16, 16),
('2019-05-26 09:23:14', 656, 17, 17, 17),
('2019-05-26 09:23:14', 657, 18, 18, 18),
('2019-05-26 09:23:14', 658, 19, 19, 19),
('2019-05-26 09:23:14', 659, 20, 20, 20),
('2019-06-06 08:00:45', 20, 9, 9, 9),
('2019-06-08 06:48:50', 20, 30, 3, 0),
('2019-06-08 06:50:12', 20, 30, 3, 0),
('2019-06-08 06:51:26', 20, 30, 3, 0),
('2019-06-08 07:04:27', 20, 0, 0, 0),
('2019-06-08 07:38:49', 20, 10, 10, 0),
('2019-06-08 07:40:14', 20, 2, 0, 0),
('2019-06-08 07:42:03', 20, 5, 0, 0),
('2019-06-08 07:42:51', 25, 10, 0, 5),
('2019-06-08 07:43:22', 20, 5, 5, 5),
('2019-06-08 07:43:32', 25, 0, 0, 5),
('2019-06-08 07:43:42', 20, 0, 0, 10),
('2019-06-08 07:43:50', 20, 0, 0, 10),
('2019-06-08 07:43:58', 20, 0, 0, 10),
('2019-06-08 07:44:03', 25, 0, 0, 5),
('2019-06-08 19:27:10', 20, 2, 0, 0),
('2019-06-09 05:34:10', 20, 0, 0, 0),
('2019-06-09 15:31:19', 13, 0, 10, 0),
('2019-06-09 15:34:50', 20, 0, 8, 0),
('2019-06-09 15:36:44', 20, 0, 5, 0),
('2019-06-09 15:38:36', 20, 0, 100, 0),
('2019-06-09 15:44:05', 20, 10, 0, 0),
('2019-06-09 15:44:16', 20, 10, 0, 0),
('2019-06-09 15:44:25', 20, 10, 0, 0);

-- --------------------------------------------------------

--
-- Δομή πίνακα για τον πίνακα `check_logged_users`
--

CREATE TABLE `check_logged_users` (
  `ID` int(7) NOT NULL,
  `token` varchar(128) CHARACTER SET latin1 NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

--
-- Άδειασμα δεδομένων του πίνακα `check_logged_users`
--

INSERT INTO `check_logged_users` (`ID`, `token`) VALUES
(1, 'HJ0Zw9O6nuE32WX1P5wF2w5P6RBy7nzvExsKIFK4RUJUoRGMVOTWzPJ2fcQjH0P0wGXthRax2c9Wlj820RkNV6i5C4rHLu9JTj8bKEjhvpcyRNa0TBTCaFGNlbT1JVpL');

-- --------------------------------------------------------

--
-- Δομή πίνακα για τον πίνακα `check_users`
--

CREATE TABLE `check_users` (
  `ID` int(7) NOT NULL,
  `username` varchar(20) CHARACTER SET utf8 COLLATE utf8_unicode_520_ci NOT NULL,
  `password` varchar(255) CHARACTER SET latin1 NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

--
-- Άδειασμα δεδομένων του πίνακα `check_users`
--

INSERT INTO `check_users` (`ID`, `username`, `password`) VALUES
(1, 'elenktis', '$2y$10$3h/7JJhnHCt37CI54nJ2JumL04LF0YPV9USqfBiRfbBIdglBQdrna');

-- --------------------------------------------------------

--
-- Δομή πίνακα για τον πίνακα `free_food`
--

CREATE TABLE `free_food` (
  `DATE` date NOT NULL,
  `ACADEMIC_ID` bigint(12) UNSIGNED NOT NULL,
  `BREAKFAST` bit(1) NOT NULL DEFAULT b'0',
  `LUNCH` bit(1) NOT NULL DEFAULT b'0',
  `DINNER` bit(1) NOT NULL DEFAULT b'0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

-- --------------------------------------------------------

--
-- Δομή πίνακα για τον πίνακα `owner_coupon`
--

CREATE TABLE `owner_coupon` (
  `ACADEMIC_ID` bigint(12) UNSIGNED NOT NULL,
  `BREAKFAST` tinyint(3) UNSIGNED NOT NULL DEFAULT '0',
  `LUNCH` tinyint(3) UNSIGNED NOT NULL DEFAULT '0',
  `DINNER` tinyint(3) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

--
-- Άδειασμα δεδομένων του πίνακα `owner_coupon`
--

INSERT INTO `owner_coupon` (`ACADEMIC_ID`, `BREAKFAST`, `LUNCH`, `DINNER`) VALUES
(13, 0, 10, 0),
(20, 85, 158, 65),
(21, 19, 14, 21),
(22, 16, 14, 22),
(23, 23, 16, 23),
(24, 15, 20, 24),
(25, 20, 0, 40),
(26, 26, 14, 26),
(27, 27, 21, 27),
(28, 28, 24, 28),
(29, 29, 22, 29),
(30, 30, 0, 30),
(31, 30, 0, 31),
(32, 22, 2, 31),
(33, 31, 1, 33),
(34, 33, 4, 34),
(35, 35, 2, 35),
(36, 34, 4, 36),
(37, 37, 7, 37),
(38, 38, 5, 38),
(39, 38, 1, 39),
(40, 39, 8, 40),
(41, 39, 8, 41),
(42, 42, 0, 42),
(43, 43, 0, 43),
(44, 44, 1, 44),
(45, 36, 13, 45),
(46, 35, 9, 46),
(47, 37, 13, 47),
(48, 43, 17, 48),
(49, 41, 9, 49),
(50, 48, 20, 50),
(51, 51, 21, 51),
(52, 51, 21, 52),
(53, 52, 23, 53),
(54, 52, 22, 54),
(55, 46, 0, 55),
(56, 50, 25, 56),
(57, 57, 27, 57),
(58, 56, 28, 58),
(59, 58, 22, 59),
(148, 31, 16, 45),
(620, 20, 20, 20),
(621, 21, 21, 21),
(622, 22, 22, 22),
(623, 23, 23, 23),
(624, 24, 24, 24),
(625, 25, 25, 25),
(626, 26, 26, 26),
(627, 27, 27, 27),
(628, 28, 28, 28),
(629, 29, 29, 29),
(630, 30, 0, 30),
(631, 31, 1, 31),
(632, 32, 2, 32),
(633, 33, 3, 33),
(634, 34, 4, 34),
(635, 35, 5, 35),
(636, 36, 6, 36),
(637, 37, 7, 37),
(638, 38, 8, 38),
(639, 39, 9, 39),
(640, 40, 10, 40),
(641, 41, 11, 41),
(642, 42, 12, 42),
(643, 43, 13, 43),
(644, 44, 14, 44),
(645, 45, 15, 45),
(646, 46, 16, 46),
(647, 47, 17, 47),
(648, 48, 18, 48),
(649, 49, 19, 49),
(650, 50, 20, 50),
(651, 51, 21, 51),
(652, 52, 22, 52),
(653, 53, 23, 53),
(654, 54, 24, 54),
(655, 55, 25, 55),
(656, 56, 26, 56),
(657, 57, 27, 57),
(658, 58, 28, 58),
(659, 59, 29, 59),
(703, 2, 0, 2),
(704, 0, 0, 0);

-- --------------------------------------------------------

--
-- Δομή πίνακα για τον πίνακα `sell_logged_users`
--

CREATE TABLE `sell_logged_users` (
  `ID` int(7) NOT NULL,
  `token` varchar(128) CHARACTER SET latin1 NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

--
-- Άδειασμα δεδομένων του πίνακα `sell_logged_users`
--

INSERT INTO `sell_logged_users` (`ID`, `token`) VALUES
(1, 'QMFiWNPeOweFKDaaOHw6ee0Tgy7WEeqEKToLZfL28y1WP2vtJ2lP81Cgq0nP4kYJgTksmZuSQPBZvadGLEvDBMVe7KdkkdAkbpGZjOnPrkYJGMbyUMBYyfarRfLoKlQP'),
(1, 'rPbrfTqacqLir1hF7CZ8L0AZJWSEdGQLn5csRjL7k27f0OyD0Rr2rplhJ6reGdXjnuaKnyv3D6i1JzXdLTkdvZ6U9JpwbAHg5qOqCcp8aPtCsyxfLhL50tKKWtuIFgrs');

-- --------------------------------------------------------

--
-- Δομή πίνακα για τον πίνακα `sell_users`
--

CREATE TABLE `sell_users` (
  `ID` int(7) NOT NULL,
  `username` varchar(20) CHARACTER SET utf8 COLLATE utf8_unicode_520_ci NOT NULL,
  `password` varchar(255) CHARACTER SET latin1 NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

--
-- Άδειασμα δεδομένων του πίνακα `sell_users`
--

INSERT INTO `sell_users` (`ID`, `username`, `password`) VALUES
(1, 'politis', '$2y$10$3h/7JJhnHCt37CI54nJ2JumL04LF0YPV9USqfBiRfbBIdglBQdrna');

-- --------------------------------------------------------

--
-- Δομή πίνακα για τον πίνακα `send_coupon`
--

CREATE TABLE `send_coupon` (
  `DATE` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `SENDER_ID` bigint(12) UNSIGNED NOT NULL,
  `RECEIVER_ID` bigint(12) UNSIGNED NOT NULL,
  `BREAKFAST` tinyint(3) UNSIGNED NOT NULL DEFAULT '0',
  `LUNCH` tinyint(3) UNSIGNED NOT NULL DEFAULT '0',
  `DINNER` tinyint(3) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

--
-- Άδειασμα δεδομένων του πίνακα `send_coupon`
--

INSERT INTO `send_coupon` (`DATE`, `SENDER_ID`, `RECEIVER_ID`, `BREAKFAST`, `LUNCH`, `DINNER`) VALUES
('2018-05-01 00:00:00', 30, 649, 11, 11, 11),
('2018-05-01 00:00:00', 630, 49, 11, 11, 11),
('2018-05-02 00:00:00', 31, 648, 12, 12, 12),
('2018-05-02 00:00:00', 631, 48, 12, 12, 12),
('2018-05-03 00:00:00', 32, 647, 13, 13, 13),
('2018-05-03 00:00:00', 632, 47, 13, 13, 13),
('2018-05-04 00:00:00', 33, 646, 14, 14, 14),
('2018-05-04 00:00:00', 633, 46, 14, 14, 14),
('2018-05-05 00:00:00', 34, 645, 15, 15, 15),
('2018-05-05 00:00:00', 634, 45, 15, 15, 15),
('2018-05-06 00:00:00', 35, 644, 16, 16, 16),
('2018-05-06 00:00:00', 635, 44, 16, 16, 16),
('2018-05-07 00:00:00', 36, 643, 17, 17, 17),
('2018-05-07 00:00:00', 636, 43, 17, 17, 17),
('2018-05-08 00:00:00', 37, 642, 18, 18, 18),
('2018-05-08 00:00:00', 637, 42, 18, 18, 18),
('2018-05-09 00:00:00', 38, 641, 19, 19, 19),
('2018-05-09 00:00:00', 638, 41, 19, 19, 19),
('2018-05-10 00:00:00', 39, 640, 20, 20, 20),
('2018-05-10 00:00:00', 639, 40, 20, 20, 20),
('2018-05-11 00:00:00', 40, 639, 1, 1, 1),
('2018-05-11 00:00:00', 640, 39, 1, 1, 1),
('2018-05-12 00:00:00', 41, 638, 2, 2, 2),
('2018-05-12 00:00:00', 641, 38, 2, 2, 2),
('2018-05-13 00:00:00', 42, 637, 3, 3, 3),
('2018-05-13 00:00:00', 642, 37, 3, 3, 3),
('2018-05-14 00:00:00', 43, 636, 4, 4, 4),
('2018-05-14 00:00:00', 643, 36, 4, 4, 4),
('2018-05-15 00:00:00', 44, 635, 5, 5, 5),
('2018-05-15 00:00:00', 644, 35, 5, 5, 5),
('2018-05-16 00:00:00', 45, 634, 6, 6, 6),
('2018-05-16 00:00:00', 645, 34, 6, 6, 6),
('2018-05-17 00:00:00', 46, 633, 7, 7, 7),
('2018-05-17 00:00:00', 646, 33, 7, 7, 7),
('2018-05-18 00:00:00', 47, 632, 8, 8, 8),
('2018-05-18 00:00:00', 647, 32, 8, 8, 8),
('2018-05-19 00:00:00', 48, 631, 9, 9, 9),
('2018-05-19 00:00:00', 648, 31, 9, 9, 9),
('2018-05-20 00:00:00', 49, 630, 10, 10, 10),
('2018-05-20 00:00:00', 649, 30, 10, 10, 10),
('2018-05-21 00:00:00', 20, 659, 1, 1, 1),
('2018-05-21 00:00:00', 50, 629, 11, 11, 11),
('2018-05-21 00:00:00', 620, 59, 1, 1, 1),
('2018-05-21 00:00:00', 650, 29, 11, 11, 11),
('2018-05-22 00:00:00', 21, 658, 2, 2, 2),
('2018-05-22 00:00:00', 51, 628, 12, 12, 12),
('2018-05-22 00:00:00', 621, 58, 2, 2, 2),
('2018-05-22 00:00:00', 651, 28, 12, 12, 12),
('2018-05-23 00:00:00', 22, 657, 3, 3, 3),
('2018-05-23 00:00:00', 52, 627, 13, 13, 13),
('2018-05-23 00:00:00', 622, 57, 3, 3, 3),
('2018-05-23 00:00:00', 652, 27, 13, 13, 13),
('2018-05-24 00:00:00', 23, 656, 4, 4, 4),
('2018-05-24 00:00:00', 53, 626, 14, 14, 14),
('2018-05-24 00:00:00', 623, 56, 4, 4, 4),
('2018-05-24 00:00:00', 653, 26, 14, 14, 14),
('2018-05-25 00:00:00', 24, 655, 5, 5, 5),
('2018-05-25 00:00:00', 54, 625, 15, 15, 15),
('2018-05-25 00:00:00', 624, 55, 5, 5, 5),
('2018-05-25 00:00:00', 654, 25, 15, 15, 15),
('2018-05-26 00:00:00', 25, 654, 6, 6, 6),
('2018-05-26 00:00:00', 55, 624, 16, 16, 16),
('2018-05-26 00:00:00', 625, 54, 6, 6, 6),
('2018-05-26 00:00:00', 655, 24, 16, 16, 16),
('2018-05-27 00:00:00', 26, 653, 7, 7, 7),
('2018-05-27 00:00:00', 56, 623, 17, 17, 17),
('2018-05-27 00:00:00', 626, 53, 7, 7, 7),
('2018-05-27 00:00:00', 656, 23, 17, 17, 17),
('2018-05-28 00:00:00', 27, 652, 8, 8, 8),
('2018-05-28 00:00:00', 57, 622, 18, 18, 18),
('2018-05-28 00:00:00', 627, 52, 8, 8, 8),
('2018-05-28 00:00:00', 657, 22, 18, 18, 18),
('2018-05-29 00:00:00', 28, 651, 9, 9, 9),
('2018-05-29 00:00:00', 58, 621, 19, 19, 19),
('2018-05-29 00:00:00', 628, 51, 9, 9, 9),
('2018-05-29 00:00:00', 658, 21, 19, 19, 19),
('2018-05-30 00:00:00', 29, 650, 10, 10, 10),
('2018-05-30 00:00:00', 59, 620, 20, 20, 20),
('2018-05-30 00:00:00', 629, 50, 10, 10, 10),
('2018-05-30 00:00:00', 659, 20, 20, 20, 20),
('2019-06-09 00:00:00', 148, 703, 1, 0, 0),
('2019-06-09 00:00:00', 703, 148, 1, 0, 0),
('2019-06-09 14:44:34', 703, 148, 1, 0, 0),
('2019-06-09 14:44:37', 703, 148, 0, 1, 0),
('2019-06-09 14:44:46', 703, 148, 0, 1, 0),
('2019-06-09 16:52:21', 148, 148, 1, 0, 0),
('2019-06-09 16:52:25', 148, 148, 1, 0, 0),
('2019-06-09 17:43:59', 148, 148, 1, 0, 0),
('2019-06-09 17:44:01', 148, 148, 1, 0, 0),
('2019-06-09 17:44:02', 148, 148, 1, 0, 0),
('2019-06-09 17:44:03', 148, 148, 1, 0, 0);

-- --------------------------------------------------------

--
-- Δομή πίνακα για τον πίνακα `test_daily_prog`
--

CREATE TABLE `test_daily_prog` (
  `day` int(1) NOT NULL,
  `breakfast` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `lunch` varchar(255) CHARACTER SET greek NOT NULL,
  `dinner` varchar(255) CHARACTER SET greek NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Άδειασμα δεδομένων του πίνακα `test_daily_prog`
--

INSERT INTO `test_daily_prog` (`day`, `breakfast`, `lunch`, `dinner`) VALUES
(4, 'nothing', 'nothing', 'nothing'),
(5, 'nothing', 'nothing', 'nothing'),
(6, 'nothing', 'nothing', 'nothing'),
(3, 'nothing', 'nothing', 'nothing'),
(2, 'nothing', 'nothing', 'nothing'),
(1, 'nothing', 'nothing', 'nothing'),
(7, 'nothing', 'nothing', 'nothing');

-- --------------------------------------------------------

--
-- Δομή πίνακα για τον πίνακα `test_logged_users`
--

CREATE TABLE `test_logged_users` (
  `id` bigint(12) UNSIGNED NOT NULL,
  `token` varchar(128) CHARACTER SET latin1 NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

-- --------------------------------------------------------

--
-- Δομή πίνακα για τον πίνακα `test_users`
--

CREATE TABLE `test_users` (
  `ID` bigint(12) UNSIGNED NOT NULL,
  `username` varchar(20) CHARACTER SET utf8 COLLATE utf8_unicode_520_ci NOT NULL,
  `password` varchar(255) CHARACTER SET latin1 NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

--
-- Άδειασμα δεδομένων του πίνακα `test_users`
--

INSERT INTO `test_users` (`ID`, `username`, `password`) VALUES
(1, 'fititis1', '$2y$10$FtxgKfMSkX8UdoWLoONpnOjQK/Pp2pczv2MRTr1toEY2dxjl5u0Em'),
(2, 'fititis2', '$2y$10$aDhmLVrvNVYBJh9r9.xUNuURxZGBAkFihICru.XoLiRNGGqzpBLM6'),
(3, 'fititis3', '$2y$10$FtxgKfMSkX8UdoWLoONpnOjQK/Pp2pczv2MRTr1toEY2dxjl5u0Em'),
(4, 'fititis4', '$2y$10$FtxgKfMSkX8UdoWLoONpnOjQK/Pp2pczv2MRTr1toEY2dxjl5u0Em'),
(5, 'fititis5', '$2y$10$FtxgKfMSkX8UdoWLoONpnOjQK/Pp2pczv2MRTr1toEY2dxjl5u0Em'),
(6, 'fititis6', '$2y$10$FtxgKfMSkX8UdoWLoONpnOjQK/Pp2pczv2MRTr1toEY2dxjl5u0Em'),
(7, 'fititis7', '$2y$10$FtxgKfMSkX8UdoWLoONpnOjQK/Pp2pczv2MRTr1toEY2dxjl5u0Em'),
(8, 'fititis8', '$2y$10$FtxgKfMSkX8UdoWLoONpnOjQK/Pp2pczv2MRTr1toEY2dxjl5u0Em'),
(9, 'fititis9', '$2y$10$FtxgKfMSkX8UdoWLoONpnOjQK/Pp2pczv2MRTr1toEY2dxjl5u0Em'),
(10, 'fititis10', '$2y$10$FtxgKfMSkX8UdoWLoONpnOjQK/Pp2pczv2MRTr1toEY2dxjl5u0Em'),
(11, 'fititis11', '$2y$10$FtxgKfMSkX8UdoWLoONpnOjQK/Pp2pczv2MRTr1toEY2dxjl5u0Em'),
(12, 'fititis12', '$2y$10$FtxgKfMSkX8UdoWLoONpnOjQK/Pp2pczv2MRTr1toEY2dxjl5u0Em'),
(13, 'fititis13', '$2y$10$FtxgKfMSkX8UdoWLoONpnOjQK/Pp2pczv2MRTr1toEY2dxjl5u0Em'),
(14, 'fititis14', '$2y$10$FtxgKfMSkX8UdoWLoONpnOjQK/Pp2pczv2MRTr1toEY2dxjl5u0Em'),
(15, 'fititis15', '$2y$10$FtxgKfMSkX8UdoWLoONpnOjQK/Pp2pczv2MRTr1toEY2dxjl5u0Em'),
(16, 'fititis16', '$2y$10$FtxgKfMSkX8UdoWLoONpnOjQK/Pp2pczv2MRTr1toEY2dxjl5u0Em'),
(17, 'fititis17', '$2y$10$FtxgKfMSkX8UdoWLoONpnOjQK/Pp2pczv2MRTr1toEY2dxjl5u0Em'),
(18, 'fititis18', '$2y$10$FtxgKfMSkX8UdoWLoONpnOjQK/Pp2pczv2MRTr1toEY2dxjl5u0Em'),
(19, 'fititis19', '$2y$10$FtxgKfMSkX8UdoWLoONpnOjQK/Pp2pczv2MRTr1toEY2dxjl5u0Em'),
(20, 'fititis20', '$2y$10$FtxgKfMSkX8UdoWLoONpnOjQK/Pp2pczv2MRTr1toEY2dxjl5u0Em'),
(21, 'fititis21', '$2y$10$FtxgKfMSkX8UdoWLoONpnOjQK/Pp2pczv2MRTr1toEY2dxjl5u0Em'),
(22, 'fititis22', '$2y$10$FtxgKfMSkX8UdoWLoONpnOjQK/Pp2pczv2MRTr1toEY2dxjl5u0Em'),
(23, 'fititis23', '$2y$10$FtxgKfMSkX8UdoWLoONpnOjQK/Pp2pczv2MRTr1toEY2dxjl5u0Em'),
(24, 'fititis24', '$2y$10$FtxgKfMSkX8UdoWLoONpnOjQK/Pp2pczv2MRTr1toEY2dxjl5u0Em'),
(25, 'fititis25', '$2y$10$FtxgKfMSkX8UdoWLoONpnOjQK/Pp2pczv2MRTr1toEY2dxjl5u0Em'),
(26, 'fititis26', '$2y$10$FtxgKfMSkX8UdoWLoONpnOjQK/Pp2pczv2MRTr1toEY2dxjl5u0Em'),
(27, 'fititis27', '$2y$10$FtxgKfMSkX8UdoWLoONpnOjQK/Pp2pczv2MRTr1toEY2dxjl5u0Em'),
(28, 'fititis28', '$2y$10$FtxgKfMSkX8UdoWLoONpnOjQK/Pp2pczv2MRTr1toEY2dxjl5u0Em'),
(29, 'fititis29', '$2y$10$FtxgKfMSkX8UdoWLoONpnOjQK/Pp2pczv2MRTr1toEY2dxjl5u0Em'),
(30, 'fititis30', '$2y$10$FtxgKfMSkX8UdoWLoONpnOjQK/Pp2pczv2MRTr1toEY2dxjl5u0Em'),
(31, 'fititis31', '$2y$10$FtxgKfMSkX8UdoWLoONpnOjQK/Pp2pczv2MRTr1toEY2dxjl5u0Em'),
(32, 'fititis32', '$2y$10$FtxgKfMSkX8UdoWLoONpnOjQK/Pp2pczv2MRTr1toEY2dxjl5u0Em'),
(33, 'fititis33', '$2y$10$FtxgKfMSkX8UdoWLoONpnOjQK/Pp2pczv2MRTr1toEY2dxjl5u0Em'),
(34, 'fititis34', '$2y$10$FtxgKfMSkX8UdoWLoONpnOjQK/Pp2pczv2MRTr1toEY2dxjl5u0Em'),
(35, 'fititis35', '$2y$10$FtxgKfMSkX8UdoWLoONpnOjQK/Pp2pczv2MRTr1toEY2dxjl5u0Em'),
(36, 'fititis36', '$2y$10$FtxgKfMSkX8UdoWLoONpnOjQK/Pp2pczv2MRTr1toEY2dxjl5u0Em'),
(37, 'fititis37', '$2y$10$FtxgKfMSkX8UdoWLoONpnOjQK/Pp2pczv2MRTr1toEY2dxjl5u0Em'),
(38, 'fititis38', '$2y$10$FtxgKfMSkX8UdoWLoONpnOjQK/Pp2pczv2MRTr1toEY2dxjl5u0Em'),
(39, 'fititis39', '$2y$10$FtxgKfMSkX8UdoWLoONpnOjQK/Pp2pczv2MRTr1toEY2dxjl5u0Em'),
(40, 'fititis40', '$2y$10$FtxgKfMSkX8UdoWLoONpnOjQK/Pp2pczv2MRTr1toEY2dxjl5u0Em'),
(41, 'fititis41', '$2y$10$FtxgKfMSkX8UdoWLoONpnOjQK/Pp2pczv2MRTr1toEY2dxjl5u0Em'),
(42, 'fititis42', '$2y$10$FtxgKfMSkX8UdoWLoONpnOjQK/Pp2pczv2MRTr1toEY2dxjl5u0Em'),
(43, 'fititis43', '$2y$10$FtxgKfMSkX8UdoWLoONpnOjQK/Pp2pczv2MRTr1toEY2dxjl5u0Em'),
(44, 'fititis44', '$2y$10$FtxgKfMSkX8UdoWLoONpnOjQK/Pp2pczv2MRTr1toEY2dxjl5u0Em'),
(45, 'fititis45', '$2y$10$FtxgKfMSkX8UdoWLoONpnOjQK/Pp2pczv2MRTr1toEY2dxjl5u0Em'),
(46, 'fititis46', '$2y$10$FtxgKfMSkX8UdoWLoONpnOjQK/Pp2pczv2MRTr1toEY2dxjl5u0Em'),
(47, 'fititis47', '$2y$10$FtxgKfMSkX8UdoWLoONpnOjQK/Pp2pczv2MRTr1toEY2dxjl5u0Em'),
(48, 'fititis48', '$2y$10$FtxgKfMSkX8UdoWLoONpnOjQK/Pp2pczv2MRTr1toEY2dxjl5u0Em'),
(49, 'fititis49', '$2y$10$FtxgKfMSkX8UdoWLoONpnOjQK/Pp2pczv2MRTr1toEY2dxjl5u0Em'),
(50, 'fititis50', '$2y$10$FtxgKfMSkX8UdoWLoONpnOjQK/Pp2pczv2MRTr1toEY2dxjl5u0Em'),
(51, 'fititis51', '$2y$10$FtxgKfMSkX8UdoWLoONpnOjQK/Pp2pczv2MRTr1toEY2dxjl5u0Em'),
(52, 'fititis52', '$2y$10$FtxgKfMSkX8UdoWLoONpnOjQK/Pp2pczv2MRTr1toEY2dxjl5u0Em'),
(53, 'fititis53', '$2y$10$FtxgKfMSkX8UdoWLoONpnOjQK/Pp2pczv2MRTr1toEY2dxjl5u0Em'),
(54, 'fititis54', '$2y$10$FtxgKfMSkX8UdoWLoONpnOjQK/Pp2pczv2MRTr1toEY2dxjl5u0Em'),
(55, 'fititis55', '$2y$10$FtxgKfMSkX8UdoWLoONpnOjQK/Pp2pczv2MRTr1toEY2dxjl5u0Em'),
(56, 'fititis56', '$2y$10$FtxgKfMSkX8UdoWLoONpnOjQK/Pp2pczv2MRTr1toEY2dxjl5u0Em'),
(57, 'fititis57', '$2y$10$FtxgKfMSkX8UdoWLoONpnOjQK/Pp2pczv2MRTr1toEY2dxjl5u0Em'),
(58, 'fititis58', '$2y$10$FtxgKfMSkX8UdoWLoONpnOjQK/Pp2pczv2MRTr1toEY2dxjl5u0Em'),
(59, 'fititis59', '$2y$10$FtxgKfMSkX8UdoWLoONpnOjQK/Pp2pczv2MRTr1toEY2dxjl5u0Em'),
(60, 'fititis60', '$2y$10$FtxgKfMSkX8UdoWLoONpnOjQK/Pp2pczv2MRTr1toEY2dxjl5u0Em'),
(61, 'fititis61', '$2y$10$FtxgKfMSkX8UdoWLoONpnOjQK/Pp2pczv2MRTr1toEY2dxjl5u0Em'),
(62, 'fititis62', '$2y$10$FtxgKfMSkX8UdoWLoONpnOjQK/Pp2pczv2MRTr1toEY2dxjl5u0Em'),
(63, 'fititis63', '$2y$10$FtxgKfMSkX8UdoWLoONpnOjQK/Pp2pczv2MRTr1toEY2dxjl5u0Em'),
(64, 'fititis64', '$2y$10$FtxgKfMSkX8UdoWLoONpnOjQK/Pp2pczv2MRTr1toEY2dxjl5u0Em'),
(65, 'fititis65', '$2y$10$FtxgKfMSkX8UdoWLoONpnOjQK/Pp2pczv2MRTr1toEY2dxjl5u0Em'),
(66, 'fititis66', '$2y$10$FtxgKfMSkX8UdoWLoONpnOjQK/Pp2pczv2MRTr1toEY2dxjl5u0Em'),
(67, 'fititis67', '$2y$10$FtxgKfMSkX8UdoWLoONpnOjQK/Pp2pczv2MRTr1toEY2dxjl5u0Em'),
(68, 'fititis68', '$2y$10$FtxgKfMSkX8UdoWLoONpnOjQK/Pp2pczv2MRTr1toEY2dxjl5u0Em'),
(69, 'fititis69', '$2y$10$FtxgKfMSkX8UdoWLoONpnOjQK/Pp2pczv2MRTr1toEY2dxjl5u0Em'),
(70, 'fititis70', '$2y$10$FtxgKfMSkX8UdoWLoONpnOjQK/Pp2pczv2MRTr1toEY2dxjl5u0Em'),
(71, 'fititis71', '$2y$10$FtxgKfMSkX8UdoWLoONpnOjQK/Pp2pczv2MRTr1toEY2dxjl5u0Em'),
(72, 'fititis72', '$2y$10$FtxgKfMSkX8UdoWLoONpnOjQK/Pp2pczv2MRTr1toEY2dxjl5u0Em'),
(73, 'fititis73', '$2y$10$FtxgKfMSkX8UdoWLoONpnOjQK/Pp2pczv2MRTr1toEY2dxjl5u0Em'),
(74, 'fititis74', '$2y$10$FtxgKfMSkX8UdoWLoONpnOjQK/Pp2pczv2MRTr1toEY2dxjl5u0Em'),
(75, 'fititis75', '$2y$10$FtxgKfMSkX8UdoWLoONpnOjQK/Pp2pczv2MRTr1toEY2dxjl5u0Em'),
(76, 'fititis76', '$2y$10$FtxgKfMSkX8UdoWLoONpnOjQK/Pp2pczv2MRTr1toEY2dxjl5u0Em'),
(77, 'fititis77', '$2y$10$FtxgKfMSkX8UdoWLoONpnOjQK/Pp2pczv2MRTr1toEY2dxjl5u0Em'),
(78, 'fititis78', '$2y$10$FtxgKfMSkX8UdoWLoONpnOjQK/Pp2pczv2MRTr1toEY2dxjl5u0Em'),
(79, 'fititis79', '$2y$10$FtxgKfMSkX8UdoWLoONpnOjQK/Pp2pczv2MRTr1toEY2dxjl5u0Em'),
(80, 'fititis80', '$2y$10$FtxgKfMSkX8UdoWLoONpnOjQK/Pp2pczv2MRTr1toEY2dxjl5u0Em'),
(81, 'fititis81', '$2y$10$FtxgKfMSkX8UdoWLoONpnOjQK/Pp2pczv2MRTr1toEY2dxjl5u0Em'),
(82, 'fititis82', '$2y$10$FtxgKfMSkX8UdoWLoONpnOjQK/Pp2pczv2MRTr1toEY2dxjl5u0Em'),
(83, 'fititis83', '$2y$10$FtxgKfMSkX8UdoWLoONpnOjQK/Pp2pczv2MRTr1toEY2dxjl5u0Em'),
(84, 'fititis84', '$2y$10$FtxgKfMSkX8UdoWLoONpnOjQK/Pp2pczv2MRTr1toEY2dxjl5u0Em'),
(85, 'fititis85', '$2y$10$FtxgKfMSkX8UdoWLoONpnOjQK/Pp2pczv2MRTr1toEY2dxjl5u0Em'),
(86, 'fititis86', '$2y$10$FtxgKfMSkX8UdoWLoONpnOjQK/Pp2pczv2MRTr1toEY2dxjl5u0Em'),
(87, 'fititis87', '$2y$10$FtxgKfMSkX8UdoWLoONpnOjQK/Pp2pczv2MRTr1toEY2dxjl5u0Em'),
(88, 'fititis88', '$2y$10$FtxgKfMSkX8UdoWLoONpnOjQK/Pp2pczv2MRTr1toEY2dxjl5u0Em'),
(89, 'fititis89', '$2y$10$FtxgKfMSkX8UdoWLoONpnOjQK/Pp2pczv2MRTr1toEY2dxjl5u0Em'),
(90, 'fititis90', '$2y$10$FtxgKfMSkX8UdoWLoONpnOjQK/Pp2pczv2MRTr1toEY2dxjl5u0Em'),
(91, 'fititis91', '$2y$10$FtxgKfMSkX8UdoWLoONpnOjQK/Pp2pczv2MRTr1toEY2dxjl5u0Em'),
(92, 'fititis92', '$2y$10$FtxgKfMSkX8UdoWLoONpnOjQK/Pp2pczv2MRTr1toEY2dxjl5u0Em'),
(93, 'fititis93', '$2y$10$FtxgKfMSkX8UdoWLoONpnOjQK/Pp2pczv2MRTr1toEY2dxjl5u0Em'),
(94, 'fititis94', '$2y$10$FtxgKfMSkX8UdoWLoONpnOjQK/Pp2pczv2MRTr1toEY2dxjl5u0Em'),
(95, 'fititis95', '$2y$10$FtxgKfMSkX8UdoWLoONpnOjQK/Pp2pczv2MRTr1toEY2dxjl5u0Em'),
(96, 'fititis96', '$2y$10$FtxgKfMSkX8UdoWLoONpnOjQK/Pp2pczv2MRTr1toEY2dxjl5u0Em'),
(97, 'fititis97', '$2y$10$FtxgKfMSkX8UdoWLoONpnOjQK/Pp2pczv2MRTr1toEY2dxjl5u0Em'),
(98, 'fititis98', '$2y$10$FtxgKfMSkX8UdoWLoONpnOjQK/Pp2pczv2MRTr1toEY2dxjl5u0Em'),
(99, 'fititis99', '$2y$10$FtxgKfMSkX8UdoWLoONpnOjQK/Pp2pczv2MRTr1toEY2dxjl5u0Em'),
(148, 'chris', '$2y$10$0feGOxtCvGBpvOGjy9V5neluyANo1g44EyCoVbCTEftOdrAADXmbG'),
(156, 'lel', '$2y$10$aOxy91wVKQ04W7ILjwnMB.Qw3Yp8VZzM3cLPIPrWDXdAXn2zJ7tiK'),
(601, 'fititis601', '$2y$10$FtxgKfMSkX8UdoWLoONpnOjQK/Pp2pczv2MRTr1toEY2dxjl5u0Em'),
(602, 'fititis602', '$2y$10$FtxgKfMSkX8UdoWLoONpnOjQK/Pp2pczv2MRTr1toEY2dxjl5u0Em'),
(603, 'fititis603', '$2y$10$FtxgKfMSkX8UdoWLoONpnOjQK/Pp2pczv2MRTr1toEY2dxjl5u0Em'),
(604, 'fititis604', '$2y$10$FtxgKfMSkX8UdoWLoONpnOjQK/Pp2pczv2MRTr1toEY2dxjl5u0Em'),
(605, 'fititis605', '$2y$10$FtxgKfMSkX8UdoWLoONpnOjQK/Pp2pczv2MRTr1toEY2dxjl5u0Em'),
(606, 'fititis606', '$2y$10$FtxgKfMSkX8UdoWLoONpnOjQK/Pp2pczv2MRTr1toEY2dxjl5u0Em'),
(607, 'fititis607', '$2y$10$FtxgKfMSkX8UdoWLoONpnOjQK/Pp2pczv2MRTr1toEY2dxjl5u0Em'),
(608, 'fititis608', '$2y$10$FtxgKfMSkX8UdoWLoONpnOjQK/Pp2pczv2MRTr1toEY2dxjl5u0Em'),
(609, 'fititis609', '$2y$10$FtxgKfMSkX8UdoWLoONpnOjQK/Pp2pczv2MRTr1toEY2dxjl5u0Em'),
(610, 'fititis610', '$2y$10$FtxgKfMSkX8UdoWLoONpnOjQK/Pp2pczv2MRTr1toEY2dxjl5u0Em'),
(611, 'fititis611', '$2y$10$FtxgKfMSkX8UdoWLoONpnOjQK/Pp2pczv2MRTr1toEY2dxjl5u0Em'),
(612, 'fititis612', '$2y$10$FtxgKfMSkX8UdoWLoONpnOjQK/Pp2pczv2MRTr1toEY2dxjl5u0Em'),
(613, 'fititis613', '$2y$10$FtxgKfMSkX8UdoWLoONpnOjQK/Pp2pczv2MRTr1toEY2dxjl5u0Em'),
(614, 'fititis614', '$2y$10$FtxgKfMSkX8UdoWLoONpnOjQK/Pp2pczv2MRTr1toEY2dxjl5u0Em'),
(615, 'fititis615', '$2y$10$FtxgKfMSkX8UdoWLoONpnOjQK/Pp2pczv2MRTr1toEY2dxjl5u0Em'),
(616, 'fititis616', '$2y$10$FtxgKfMSkX8UdoWLoONpnOjQK/Pp2pczv2MRTr1toEY2dxjl5u0Em'),
(617, 'fititis617', '$2y$10$FtxgKfMSkX8UdoWLoONpnOjQK/Pp2pczv2MRTr1toEY2dxjl5u0Em'),
(618, 'fititis618', '$2y$10$FtxgKfMSkX8UdoWLoONpnOjQK/Pp2pczv2MRTr1toEY2dxjl5u0Em'),
(619, 'fititis619', '$2y$10$FtxgKfMSkX8UdoWLoONpnOjQK/Pp2pczv2MRTr1toEY2dxjl5u0Em'),
(620, 'fititis620', '$2y$10$FtxgKfMSkX8UdoWLoONpnOjQK/Pp2pczv2MRTr1toEY2dxjl5u0Em'),
(621, 'fititis621', '$2y$10$FtxgKfMSkX8UdoWLoONpnOjQK/Pp2pczv2MRTr1toEY2dxjl5u0Em'),
(622, 'fititis622', '$2y$10$FtxgKfMSkX8UdoWLoONpnOjQK/Pp2pczv2MRTr1toEY2dxjl5u0Em'),
(623, 'fititis623', '$2y$10$FtxgKfMSkX8UdoWLoONpnOjQK/Pp2pczv2MRTr1toEY2dxjl5u0Em'),
(624, 'fititis624', '$2y$10$FtxgKfMSkX8UdoWLoONpnOjQK/Pp2pczv2MRTr1toEY2dxjl5u0Em'),
(625, 'fititis625', '$2y$10$FtxgKfMSkX8UdoWLoONpnOjQK/Pp2pczv2MRTr1toEY2dxjl5u0Em'),
(626, 'fititis626', '$2y$10$FtxgKfMSkX8UdoWLoONpnOjQK/Pp2pczv2MRTr1toEY2dxjl5u0Em'),
(627, 'fititis627', '$2y$10$FtxgKfMSkX8UdoWLoONpnOjQK/Pp2pczv2MRTr1toEY2dxjl5u0Em'),
(628, 'fititis628', '$2y$10$FtxgKfMSkX8UdoWLoONpnOjQK/Pp2pczv2MRTr1toEY2dxjl5u0Em'),
(629, 'fititis629', '$2y$10$FtxgKfMSkX8UdoWLoONpnOjQK/Pp2pczv2MRTr1toEY2dxjl5u0Em'),
(630, 'fititis630', '$2y$10$FtxgKfMSkX8UdoWLoONpnOjQK/Pp2pczv2MRTr1toEY2dxjl5u0Em'),
(631, 'fititis631', '$2y$10$FtxgKfMSkX8UdoWLoONpnOjQK/Pp2pczv2MRTr1toEY2dxjl5u0Em'),
(632, 'fititis632', '$2y$10$FtxgKfMSkX8UdoWLoONpnOjQK/Pp2pczv2MRTr1toEY2dxjl5u0Em'),
(633, 'fititis633', '$2y$10$FtxgKfMSkX8UdoWLoONpnOjQK/Pp2pczv2MRTr1toEY2dxjl5u0Em'),
(634, 'fititis634', '$2y$10$FtxgKfMSkX8UdoWLoONpnOjQK/Pp2pczv2MRTr1toEY2dxjl5u0Em'),
(635, 'fititis635', '$2y$10$FtxgKfMSkX8UdoWLoONpnOjQK/Pp2pczv2MRTr1toEY2dxjl5u0Em'),
(636, 'fititis636', '$2y$10$FtxgKfMSkX8UdoWLoONpnOjQK/Pp2pczv2MRTr1toEY2dxjl5u0Em'),
(637, 'fititis637', '$2y$10$FtxgKfMSkX8UdoWLoONpnOjQK/Pp2pczv2MRTr1toEY2dxjl5u0Em'),
(638, 'fititis638', '$2y$10$FtxgKfMSkX8UdoWLoONpnOjQK/Pp2pczv2MRTr1toEY2dxjl5u0Em'),
(639, 'fititis639', '$2y$10$FtxgKfMSkX8UdoWLoONpnOjQK/Pp2pczv2MRTr1toEY2dxjl5u0Em'),
(640, 'fititis640', '$2y$10$FtxgKfMSkX8UdoWLoONpnOjQK/Pp2pczv2MRTr1toEY2dxjl5u0Em'),
(641, 'fititis641', '$2y$10$FtxgKfMSkX8UdoWLoONpnOjQK/Pp2pczv2MRTr1toEY2dxjl5u0Em'),
(642, 'fititis642', '$2y$10$FtxgKfMSkX8UdoWLoONpnOjQK/Pp2pczv2MRTr1toEY2dxjl5u0Em'),
(643, 'fititis643', '$2y$10$FtxgKfMSkX8UdoWLoONpnOjQK/Pp2pczv2MRTr1toEY2dxjl5u0Em'),
(644, 'fititis644', '$2y$10$FtxgKfMSkX8UdoWLoONpnOjQK/Pp2pczv2MRTr1toEY2dxjl5u0Em'),
(645, 'fititis645', '$2y$10$FtxgKfMSkX8UdoWLoONpnOjQK/Pp2pczv2MRTr1toEY2dxjl5u0Em'),
(646, 'fititis646', '$2y$10$FtxgKfMSkX8UdoWLoONpnOjQK/Pp2pczv2MRTr1toEY2dxjl5u0Em'),
(647, 'fititis647', '$2y$10$FtxgKfMSkX8UdoWLoONpnOjQK/Pp2pczv2MRTr1toEY2dxjl5u0Em'),
(648, 'fititis648', '$2y$10$FtxgKfMSkX8UdoWLoONpnOjQK/Pp2pczv2MRTr1toEY2dxjl5u0Em'),
(649, 'fititis649', '$2y$10$FtxgKfMSkX8UdoWLoONpnOjQK/Pp2pczv2MRTr1toEY2dxjl5u0Em'),
(650, 'fititis650', '$2y$10$FtxgKfMSkX8UdoWLoONpnOjQK/Pp2pczv2MRTr1toEY2dxjl5u0Em'),
(651, 'fititis651', '$2y$10$FtxgKfMSkX8UdoWLoONpnOjQK/Pp2pczv2MRTr1toEY2dxjl5u0Em'),
(652, 'fititis652', '$2y$10$FtxgKfMSkX8UdoWLoONpnOjQK/Pp2pczv2MRTr1toEY2dxjl5u0Em'),
(653, 'fititis653', '$2y$10$FtxgKfMSkX8UdoWLoONpnOjQK/Pp2pczv2MRTr1toEY2dxjl5u0Em'),
(654, 'fititis654', '$2y$10$FtxgKfMSkX8UdoWLoONpnOjQK/Pp2pczv2MRTr1toEY2dxjl5u0Em'),
(655, 'fititis655', '$2y$10$FtxgKfMSkX8UdoWLoONpnOjQK/Pp2pczv2MRTr1toEY2dxjl5u0Em'),
(656, 'fititis656', '$2y$10$FtxgKfMSkX8UdoWLoONpnOjQK/Pp2pczv2MRTr1toEY2dxjl5u0Em'),
(657, 'fititis657', '$2y$10$FtxgKfMSkX8UdoWLoONpnOjQK/Pp2pczv2MRTr1toEY2dxjl5u0Em'),
(658, 'fititis658', '$2y$10$FtxgKfMSkX8UdoWLoONpnOjQK/Pp2pczv2MRTr1toEY2dxjl5u0Em'),
(659, 'fititis659', '$2y$10$FtxgKfMSkX8UdoWLoONpnOjQK/Pp2pczv2MRTr1toEY2dxjl5u0Em'),
(660, 'fititis660', '$2y$10$FtxgKfMSkX8UdoWLoONpnOjQK/Pp2pczv2MRTr1toEY2dxjl5u0Em'),
(661, 'fititis661', '$2y$10$FtxgKfMSkX8UdoWLoONpnOjQK/Pp2pczv2MRTr1toEY2dxjl5u0Em'),
(662, 'fititis662', '$2y$10$FtxgKfMSkX8UdoWLoONpnOjQK/Pp2pczv2MRTr1toEY2dxjl5u0Em'),
(663, 'fititis663', '$2y$10$FtxgKfMSkX8UdoWLoONpnOjQK/Pp2pczv2MRTr1toEY2dxjl5u0Em'),
(664, 'fititis664', '$2y$10$FtxgKfMSkX8UdoWLoONpnOjQK/Pp2pczv2MRTr1toEY2dxjl5u0Em'),
(665, 'fititis665', '$2y$10$FtxgKfMSkX8UdoWLoONpnOjQK/Pp2pczv2MRTr1toEY2dxjl5u0Em'),
(666, 'fititis666', '$2y$10$FtxgKfMSkX8UdoWLoONpnOjQK/Pp2pczv2MRTr1toEY2dxjl5u0Em'),
(667, 'fititis667', '$2y$10$FtxgKfMSkX8UdoWLoONpnOjQK/Pp2pczv2MRTr1toEY2dxjl5u0Em'),
(668, 'fititis668', '$2y$10$FtxgKfMSkX8UdoWLoONpnOjQK/Pp2pczv2MRTr1toEY2dxjl5u0Em'),
(669, 'fititis669', '$2y$10$FtxgKfMSkX8UdoWLoONpnOjQK/Pp2pczv2MRTr1toEY2dxjl5u0Em'),
(670, 'fititis670', '$2y$10$FtxgKfMSkX8UdoWLoONpnOjQK/Pp2pczv2MRTr1toEY2dxjl5u0Em'),
(671, 'fititis671', '$2y$10$FtxgKfMSkX8UdoWLoONpnOjQK/Pp2pczv2MRTr1toEY2dxjl5u0Em'),
(672, 'fititis672', '$2y$10$FtxgKfMSkX8UdoWLoONpnOjQK/Pp2pczv2MRTr1toEY2dxjl5u0Em'),
(673, 'fititis673', '$2y$10$FtxgKfMSkX8UdoWLoONpnOjQK/Pp2pczv2MRTr1toEY2dxjl5u0Em'),
(674, 'fititis674', '$2y$10$FtxgKfMSkX8UdoWLoONpnOjQK/Pp2pczv2MRTr1toEY2dxjl5u0Em'),
(675, 'fititis675', '$2y$10$FtxgKfMSkX8UdoWLoONpnOjQK/Pp2pczv2MRTr1toEY2dxjl5u0Em'),
(676, 'fititis676', '$2y$10$FtxgKfMSkX8UdoWLoONpnOjQK/Pp2pczv2MRTr1toEY2dxjl5u0Em'),
(677, 'fititis677', '$2y$10$FtxgKfMSkX8UdoWLoONpnOjQK/Pp2pczv2MRTr1toEY2dxjl5u0Em'),
(678, 'fititis678', '$2y$10$FtxgKfMSkX8UdoWLoONpnOjQK/Pp2pczv2MRTr1toEY2dxjl5u0Em'),
(679, 'fititis679', '$2y$10$FtxgKfMSkX8UdoWLoONpnOjQK/Pp2pczv2MRTr1toEY2dxjl5u0Em'),
(680, 'fititis680', '$2y$10$FtxgKfMSkX8UdoWLoONpnOjQK/Pp2pczv2MRTr1toEY2dxjl5u0Em'),
(681, 'fititis681', '$2y$10$FtxgKfMSkX8UdoWLoONpnOjQK/Pp2pczv2MRTr1toEY2dxjl5u0Em'),
(682, 'fititis682', '$2y$10$FtxgKfMSkX8UdoWLoONpnOjQK/Pp2pczv2MRTr1toEY2dxjl5u0Em'),
(683, 'fititis683', '$2y$10$FtxgKfMSkX8UdoWLoONpnOjQK/Pp2pczv2MRTr1toEY2dxjl5u0Em'),
(684, 'fititis684', '$2y$10$FtxgKfMSkX8UdoWLoONpnOjQK/Pp2pczv2MRTr1toEY2dxjl5u0Em'),
(685, 'fititis685', '$2y$10$FtxgKfMSkX8UdoWLoONpnOjQK/Pp2pczv2MRTr1toEY2dxjl5u0Em'),
(686, 'fititis686', '$2y$10$FtxgKfMSkX8UdoWLoONpnOjQK/Pp2pczv2MRTr1toEY2dxjl5u0Em'),
(687, 'fititis687', '$2y$10$FtxgKfMSkX8UdoWLoONpnOjQK/Pp2pczv2MRTr1toEY2dxjl5u0Em'),
(688, 'fititis688', '$2y$10$FtxgKfMSkX8UdoWLoONpnOjQK/Pp2pczv2MRTr1toEY2dxjl5u0Em'),
(689, 'fititis689', '$2y$10$FtxgKfMSkX8UdoWLoONpnOjQK/Pp2pczv2MRTr1toEY2dxjl5u0Em'),
(690, 'fititis690', '$2y$10$FtxgKfMSkX8UdoWLoONpnOjQK/Pp2pczv2MRTr1toEY2dxjl5u0Em'),
(691, 'fititis691', '$2y$10$FtxgKfMSkX8UdoWLoONpnOjQK/Pp2pczv2MRTr1toEY2dxjl5u0Em'),
(692, 'fititis692', '$2y$10$FtxgKfMSkX8UdoWLoONpnOjQK/Pp2pczv2MRTr1toEY2dxjl5u0Em'),
(693, 'fititis693', '$2y$10$FtxgKfMSkX8UdoWLoONpnOjQK/Pp2pczv2MRTr1toEY2dxjl5u0Em'),
(694, 'fititis694', '$2y$10$FtxgKfMSkX8UdoWLoONpnOjQK/Pp2pczv2MRTr1toEY2dxjl5u0Em'),
(695, 'fititis695', '$2y$10$FtxgKfMSkX8UdoWLoONpnOjQK/Pp2pczv2MRTr1toEY2dxjl5u0Em'),
(696, 'fititis696', '$2y$10$FtxgKfMSkX8UdoWLoONpnOjQK/Pp2pczv2MRTr1toEY2dxjl5u0Em'),
(697, 'fititis697', '$2y$10$FtxgKfMSkX8UdoWLoONpnOjQK/Pp2pczv2MRTr1toEY2dxjl5u0Em'),
(698, 'fititis698', '$2y$10$FtxgKfMSkX8UdoWLoONpnOjQK/Pp2pczv2MRTr1toEY2dxjl5u0Em'),
(699, 'fititis699', '$2y$10$FtxgKfMSkX8UdoWLoONpnOjQK/Pp2pczv2MRTr1toEY2dxjl5u0Em'),
(701, 'test', '$2y$10$GZvATP72NpX3w1MdZiZPLuBX8LABH8mn2mCmQrx.oD7BUswaDaHXS'),
(703, 'maritina', '$2y$10$oDF3/AlcVAT4O37Xacuys.IWJa6rZYezfFJ67khkkUgpVW84vwA7W'),
(704, 'no', '$2y$10$twiVgY/fgAfOxHWYBNr2DOP8NQS0kwCoBRGUHdiv9KUTxzU1GWD1O');

-- --------------------------------------------------------

--
-- Δομή πίνακα για τον πίνακα `test_users_info`
--

CREATE TABLE `test_users_info` (
  `ID` bigint(12) UNSIGNED NOT NULL,
  `name` varchar(20) CHARACTER SET utf8 COLLATE utf8_unicode_520_ci NOT NULL,
  `lname` varchar(20) CHARACTER SET utf8 COLLATE utf8_unicode_520_ci NOT NULL,
  `fname` varchar(20) CHARACTER SET utf8 COLLATE utf8_unicode_520_ci NOT NULL,
  `am` int(15) NOT NULL,
  `cn` int(15) NOT NULL,
  `dep` varchar(50) CHARACTER SET utf8 COLLATE utf8_unicode_520_ci NOT NULL,
  `stdC` varchar(15) CHARACTER SET utf8 COLLATE utf8_unicode_520_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

--
-- Άδειασμα δεδομένων του πίνακα `test_users_info`
--

INSERT INTO `test_users_info` (`ID`, `name`, `lname`, `fname`, `am`, `cn`, `dep`, `stdC`) VALUES
(1, 'Χρήστης 1', 'Μουρατίδης', 'Γεώργιος', 1, 201, 'ΗΜΤΥ', 'ΠΡΟΠΤΥΧΙΑΚΟΣ'),
(2, 'Χρήστης 2', 'Μουρατίδης', 'Γεώργιος', 2, 12, 'ΗΜΤΥ', 'ΠΡΟΠΤΥΧΙΑΚΟΣ'),
(3, 'Χρήστης 3', 'Μουρατίδης', 'Γεώργιος', 3, 23, 'ΗΜΤΥ', 'ΠΡΟΠΤΥΧΙΑΚΟΣ'),
(4, 'Χρήστης 4', 'Μουρατίδης', 'Γεώργιος', 4, 34, 'ΗΜΤΥ', 'ΠΡΟΠΤΥΧΙΑΚΟΣ'),
(5, 'Χρήστης 5', 'Μουρατίδης', 'Γεώργιος', 5, 45, 'ΗΜΤΥ', 'ΠΡΟΠΤΥΧΙΑΚΟΣ'),
(6, 'Χρήστης 6', 'Μουρατίδης', 'Γεώργιος', 6, 56, 'ΗΜΤΥ', 'ΠΡΟΠΤΥΧΙΑΚΟΣ'),
(7, 'Χρήστης 7', 'Μουρατίδης', 'Γεώργιος', 7, 166, 'ΗΜΤΥ', 'ΠΡΟΠΤΥΧΙΑΚΟΣ'),
(8, 'Χρήστης 8', 'Μουρατίδης', 'Γεώργιος', 8, 178, 'ΗΜΤΥ', 'ΠΡΟΠΤΥΧΙΑΚΟΣ'),
(9, 'Χρήστης 9', 'Μουρατίδης', 'Γεώργιος', 9, 189, 'ΗΜΤΥ', 'ΠΡΟΠΤΥΧΙΑΚΟΣ'),
(10, 'Χρήστης 10', 'Μουρατίδης', 'Γεώργιος', 10, 1, 'ΗΜΤΥ', 'ΠΡΟΠΤΥΧΙΑΚΟΣ'),
(11, 'Χρήστης 11', 'Μουρατίδης', 'Γεώργιος', 11, 3, 'ΗΜΤΥ', 'ΠΡΟΠΤΥΧΙΑΚΟΣ'),
(12, 'Χρήστης 12', 'Μουρατίδης', 'Γεώργιος', 12, 4, 'ΗΜΤΥ', 'ΠΡΟΠΤΥΧΙΑΚΟΣ'),
(13, 'Χρήστης 13', 'Μουρατίδης', 'Γεώργιος', 13, 5, 'ΗΜΤΥ', 'ΠΡΟΠΤΥΧΙΑΚΟΣ'),
(14, 'Χρήστης 14', 'Μουρατίδης', 'Γεώργιος', 14, 6, 'ΗΜΤΥ', 'ΠΡΟΠΤΥΧΙΑΚΟΣ'),
(15, 'Χρήστης 15', 'Μουρατίδης', 'Γεώργιος', 15, 7, 'ΗΜΤΥ', 'ΠΡΟΠΤΥΧΙΑΚΟΣ'),
(16, 'Χρήστης 16', 'Μουρατίδης', 'Γεώργιος', 16, 8, 'ΗΜΤΥ', 'ΠΡΟΠΤΥΧΙΑΚΟΣ'),
(17, 'Χρήστης 17', 'Μουρατίδης', 'Γεώργιος', 17, 9, 'ΗΜΤΥ', 'ΠΡΟΠΤΥΧΙΑΚΟΣ'),
(18, 'Χρήστης 18', 'Μουρατίδης', 'Γεώργιος', 18, 10, 'ΗΜΤΥ', 'ΠΡΟΠΤΥΧΙΑΚΟΣ'),
(19, 'Χρήστης 19', 'Μουρατίδης', 'Γεώργιος', 19, 11, 'ΗΜΤΥ', 'ΠΡΟΠΤΥΧΙΑΚΟΣ'),
(20, 'Χρήστης 20', 'Μουρατίδης', 'Γεώργιος', 20, 13, 'ΗΜΤΥ', 'ΠΡΟΠΤΥΧΙΑΚΟΣ'),
(21, 'Χρήστης 21', 'Μουρατίδης', 'Γεώργιος', 21, 14, 'ΗΜΤΥ', 'ΠΡΟΠΤΥΧΙΑΚΟΣ'),
(22, 'Χρήστης 22', 'Μουρατίδης', 'Γεώργιος', 22, 15, 'ΗΜΤΥ', 'ΠΡΟΠΤΥΧΙΑΚΟΣ'),
(23, 'Χρήστης 23', 'Μουρατίδης', 'Γεώργιος', 23, 16, 'ΗΜΤΥ', 'ΠΡΟΠΤΥΧΙΑΚΟΣ'),
(24, 'Χρήστης 24', 'Μουρατίδης', 'Γεώργιος', 24, 17, 'ΗΜΤΥ', 'ΠΡΟΠΤΥΧΙΑΚΟΣ'),
(25, 'Χρήστης 25', 'Μουρατίδης', 'Γεώργιος', 25, 18, 'ΗΜΤΥ', 'ΠΡΟΠΤΥΧΙΑΚΟΣ'),
(26, 'Χρήστης 26', 'Μουρατίδης', 'Γεώργιος', 26, 19, 'ΗΜΤΥ', 'ΠΡΟΠΤΥΧΙΑΚΟΣ'),
(27, 'Χρήστης 27', 'Μουρατίδης', 'Γεώργιος', 27, 20, 'ΗΜΤΥ', 'ΠΡΟΠΤΥΧΙΑΚΟΣ'),
(28, 'Χρήστης 28', 'Μουρατίδης', 'Γεώργιος', 28, 21, 'ΗΜΤΥ', 'ΠΡΟΠΤΥΧΙΑΚΟΣ'),
(29, 'Χρήστης 29', 'Μουρατίδης', 'Γεώργιος', 29, 22, 'ΗΜΤΥ', 'ΠΡΟΠΤΥΧΙΑΚΟΣ'),
(30, 'Χρήστης 30', 'Μουρατίδης', 'Γεώργιος', 30, 24, 'ΗΜΤΥ', 'ΠΡΟΠΤΥΧΙΑΚΟΣ'),
(31, 'Χρήστης 31', 'Μουρατίδης', 'Γεώργιος', 31, 25, 'ΗΜΤΥ', 'ΠΡΟΠΤΥΧΙΑΚΟΣ'),
(32, 'Χρήστης 32', 'Μουρατίδης', 'Γεώργιος', 32, 26, 'ΗΜΤΥ', 'ΠΡΟΠΤΥΧΙΑΚΟΣ'),
(33, 'Χρήστης 33', 'Μουρατίδης', 'Γεώργιος', 33, 27, 'ΗΜΤΥ', 'ΠΡΟΠΤΥΧΙΑΚΟΣ'),
(34, 'Χρήστης 34', 'Μουρατίδης', 'Γεώργιος', 34, 28, 'ΗΜΤΥ', 'ΠΡΟΠΤΥΧΙΑΚΟΣ'),
(35, 'Χρήστης 35', 'Μουρατίδης', 'Γεώργιος', 35, 29, 'ΗΜΤΥ', 'ΠΡΟΠΤΥΧΙΑΚΟΣ'),
(36, 'Χρήστης 36', 'Μουρατίδης', 'Γεώργιος', 36, 30, 'ΗΜΤΥ', 'ΠΡΟΠΤΥΧΙΑΚΟΣ'),
(37, 'Χρήστης 37', 'Μουρατίδης', 'Γεώργιος', 37, 31, 'ΗΜΤΥ', 'ΠΡΟΠΤΥΧΙΑΚΟΣ'),
(38, 'Χρήστης 38', 'Μουρατίδης', 'Γεώργιος', 38, 32, 'ΗΜΤΥ', 'ΠΡΟΠΤΥΧΙΑΚΟΣ'),
(39, 'Χρήστης 39', 'Μουρατίδης', 'Γεώργιος', 39, 33, 'ΗΜΤΥ', 'ΠΡΟΠΤΥΧΙΑΚΟΣ'),
(40, 'Χρήστης 40', 'Μουρατίδης', 'Γεώργιος', 40, 35, 'ΗΜΤΥ', 'ΠΡΟΠΤΥΧΙΑΚΟΣ'),
(41, 'Χρήστης 41', 'Μουρατίδης', 'Γεώργιος', 41, 36, 'ΗΜΤΥ', 'ΠΡΟΠΤΥΧΙΑΚΟΣ'),
(42, 'Χρήστης 42', 'Μουρατίδης', 'Γεώργιος', 42, 37, 'ΗΜΤΥ', 'ΠΡΟΠΤΥΧΙΑΚΟΣ'),
(43, 'Χρήστης 43', 'Μουρατίδης', 'Γεώργιος', 43, 38, 'ΗΜΤΥ', 'ΠΡΟΠΤΥΧΙΑΚΟΣ'),
(44, 'Χρήστης 44', 'Μουρατίδης', 'Γεώργιος', 44, 39, 'ΗΜΤΥ', 'ΠΡΟΠΤΥΧΙΑΚΟΣ'),
(45, 'Χρήστης 45', 'Μουρατίδης', 'Γεώργιος', 45, 40, 'ΗΜΤΥ', 'ΠΡΟΠΤΥΧΙΑΚΟΣ'),
(46, 'Χρήστης 46', 'Μουρατίδης', 'Γεώργιος', 46, 41, 'ΗΜΤΥ', 'ΠΡΟΠΤΥΧΙΑΚΟΣ'),
(47, 'Χρήστης 47', 'Μουρατίδης', 'Γεώργιος', 47, 42, 'ΗΜΤΥ', 'ΠΡΟΠΤΥΧΙΑΚΟΣ'),
(48, 'Χρήστης 48', 'Μουρατίδης', 'Γεώργιος', 48, 43, 'ΗΜΤΥ', 'ΠΡΟΠΤΥΧΙΑΚΟΣ'),
(49, 'Χρήστης 49', 'Μουρατίδης', 'Γεώργιος', 49, 44, 'ΗΜΤΥ', 'ΠΡΟΠΤΥΧΙΑΚΟΣ'),
(50, 'Χρήστης 50', 'Μουρατίδης', 'Γεώργιος', 50, 46, 'ΗΜΤΥ', 'ΠΡΟΠΤΥΧΙΑΚΟΣ'),
(51, 'Χρήστης 51', 'Μουρατίδης', 'Γεώργιος', 51, 47, 'ΗΜΤΥ', 'ΠΡΟΠΤΥΧΙΑΚΟΣ'),
(52, 'Χρήστης 52', 'Μουρατίδης', 'Γεώργιος', 52, 48, 'ΗΜΤΥ', 'ΠΡΟΠΤΥΧΙΑΚΟΣ'),
(53, 'Χρήστης 53', 'Μουρατίδης', 'Γεώργιος', 53, 49, 'ΗΜΤΥ', 'ΠΡΟΠΤΥΧΙΑΚΟΣ'),
(54, 'Χρήστης 54', 'Μουρατίδης', 'Γεώργιος', 54, 50, 'ΗΜΤΥ', 'ΠΡΟΠΤΥΧΙΑΚΟΣ'),
(55, 'Χρήστης 55', 'Μουρατίδης', 'Γεώργιος', 55, 51, 'ΗΜΤΥ', 'ΠΡΟΠΤΥΧΙΑΚΟΣ'),
(56, 'Χρήστης 56', 'Μουρατίδης', 'Γεώργιος', 56, 52, 'ΗΜΤΥ', 'ΠΡΟΠΤΥΧΙΑΚΟΣ'),
(57, 'Χρήστης 57', 'Μουρατίδης', 'Γεώργιος', 57, 53, 'ΗΜΤΥ', 'ΠΡΟΠΤΥΧΙΑΚΟΣ'),
(58, 'Χρήστης 58', 'Μουρατίδης', 'Γεώργιος', 58, 54, 'ΗΜΤΥ', 'ΠΡΟΠΤΥΧΙΑΚΟΣ'),
(59, 'Χρήστης 59', 'Μουρατίδης', 'Γεώργιος', 59, 55, 'ΗΜΤΥ', 'ΠΡΟΠΤΥΧΙΑΚΟΣ'),
(60, 'Χρήστης 60', 'Μουρατίδης', 'Γεώργιος', 60, 57, 'ΗΜΤΥ', 'ΠΡΟΠΤΥΧΙΑΚΟΣ'),
(61, 'Χρήστης 61', 'Μουρατίδης', 'Γεώργιος', 61, 67, 'ΗΜΤΥ', 'ΠΡΟΠΤΥΧΙΑΚΟΣ'),
(62, 'Χρήστης 62', 'Μουρατίδης', 'Γεώργιος', 62, 78, 'ΗΜΤΥ', 'ΠΡΟΠΤΥΧΙΑΚΟΣ'),
(63, 'Χρήστης 63', 'Μουρατίδης', 'Γεώργιος', 63, 89, 'ΗΜΤΥ', 'ΠΡΟΠΤΥΧΙΑΚΟΣ'),
(64, 'Χρήστης 64', 'Μουρατίδης', 'Γεώργιος', 64, 100, 'ΗΜΤΥ', 'ΠΡΟΠΤΥΧΙΑΚΟΣ'),
(65, 'Χρήστης 65', 'Μουρατίδης', 'Γεώργιος', 65, 111, 'ΗΜΤΥ', 'ΠΡΟΠΤΥΧΙΑΚΟΣ'),
(66, 'Χρήστης 66', 'Μουρατίδης', 'Γεώργιος', 66, 122, 'ΗΜΤΥ', 'ΠΡΟΠΤΥΧΙΑΚΟΣ'),
(67, 'Χρήστης 67', 'Μουρατίδης', 'Γεώργιος', 67, 133, 'ΗΜΤΥ', 'ΠΡΟΠΤΥΧΙΑΚΟΣ'),
(68, 'Χρήστης 68', 'Μουρατίδης', 'Γεώργιος', 68, 144, 'ΗΜΤΥ', 'ΠΡΟΠΤΥΧΙΑΚΟΣ'),
(69, 'Χρήστης 69', 'Μουρατίδης', 'Γεώργιος', 69, 155, 'ΗΜΤΥ', 'ΠΡΟΠΤΥΧΙΑΚΟΣ'),
(70, 'Χρήστης 70', 'Μουρατίδης', 'Γεώργιος', 70, 167, 'ΗΜΤΥ', 'ΠΡΟΠΤΥΧΙΑΚΟΣ'),
(71, 'Χρήστης 71', 'Μουρατίδης', 'Γεώργιος', 71, 169, 'ΗΜΤΥ', 'ΠΡΟΠΤΥΧΙΑΚΟΣ'),
(72, 'Χρήστης 72', 'Μουρατίδης', 'Γεώργιος', 72, 170, 'ΗΜΤΥ', 'ΠΡΟΠΤΥΧΙΑΚΟΣ'),
(73, 'Χρήστης 73', 'Μουρατίδης', 'Γεώργιος', 73, 171, 'ΗΜΤΥ', 'ΠΡΟΠΤΥΧΙΑΚΟΣ'),
(74, 'Χρήστης 74', 'Μουρατίδης', 'Γεώργιος', 74, 172, 'ΗΜΤΥ', 'ΠΡΟΠΤΥΧΙΑΚΟΣ'),
(75, 'Χρήστης 75', 'Μουρατίδης', 'Γεώργιος', 75, 173, 'ΗΜΤΥ', 'ΠΡΟΠΤΥΧΙΑΚΟΣ'),
(76, 'Χρήστης 76', 'Μουρατίδης', 'Γεώργιος', 76, 174, 'ΗΜΤΥ', 'ΠΡΟΠΤΥΧΙΑΚΟΣ'),
(77, 'Χρήστης 77', 'Μουρατίδης', 'Γεώργιος', 77, 175, 'ΗΜΤΥ', 'ΠΡΟΠΤΥΧΙΑΚΟΣ'),
(78, 'Χρήστης 78', 'Μουρατίδης', 'Γεώργιος', 78, 176, 'ΗΜΤΥ', 'ΠΡΟΠΤΥΧΙΑΚΟΣ'),
(79, 'Χρήστης 79', 'Μουρατίδης', 'Γεώργιος', 79, 177, 'ΗΜΤΥ', 'ΠΡΟΠΤΥΧΙΑΚΟΣ'),
(80, 'Χρήστης 80', 'Μουρατίδης', 'Γεώργιος', 80, 179, 'ΗΜΤΥ', 'ΠΡΟΠΤΥΧΙΑΚΟΣ'),
(81, 'Χρήστης 81', 'Μουρατίδης', 'Γεώργιος', 81, 180, 'ΗΜΤΥ', 'ΠΡΟΠΤΥΧΙΑΚΟΣ'),
(82, 'Χρήστης 82', 'Μουρατίδης', 'Γεώργιος', 82, 181, 'ΗΜΤΥ', 'ΠΡΟΠΤΥΧΙΑΚΟΣ'),
(83, 'Χρήστης 83', 'Μουρατίδης', 'Γεώργιος', 83, 182, 'ΗΜΤΥ', 'ΠΡΟΠΤΥΧΙΑΚΟΣ'),
(84, 'Χρήστης 84', 'Μουρατίδης', 'Γεώργιος', 84, 183, 'ΗΜΤΥ', 'ΠΡΟΠΤΥΧΙΑΚΟΣ'),
(85, 'Χρήστης 85', 'Μουρατίδης', 'Γεώργιος', 85, 184, 'ΗΜΤΥ', 'ΠΡΟΠΤΥΧΙΑΚΟΣ'),
(86, 'Χρήστης 86', 'Μουρατίδης', 'Γεώργιος', 86, 185, 'ΗΜΤΥ', 'ΠΡΟΠΤΥΧΙΑΚΟΣ'),
(87, 'Χρήστης 87', 'Μουρατίδης', 'Γεώργιος', 87, 186, 'ΗΜΤΥ', 'ΠΡΟΠΤΥΧΙΑΚΟΣ'),
(88, 'Χρήστης 88', 'Μουρατίδης', 'Γεώργιος', 88, 187, 'ΗΜΤΥ', 'ΠΡΟΠΤΥΧΙΑΚΟΣ'),
(89, 'Χρήστης 89', 'Μουρατίδης', 'Γεώργιος', 89, 188, 'ΗΜΤΥ', 'ΠΡΟΠΤΥΧΙΑΚΟΣ'),
(90, 'Χρήστης 90', 'Μουρατίδης', 'Γεώργιος', 90, 190, 'ΗΜΤΥ', 'ΠΡΟΠΤΥΧΙΑΚΟΣ'),
(91, 'Χρήστης 91', 'Μουρατίδης', 'Γεώργιος', 91, 191, 'ΗΜΤΥ', 'ΠΡΟΠΤΥΧΙΑΚΟΣ'),
(92, 'Χρήστης 92', 'Μουρατίδης', 'Γεώργιος', 92, 192, 'ΗΜΤΥ', 'ΠΡΟΠΤΥΧΙΑΚΟΣ'),
(93, 'Χρήστης 93', 'Μουρατίδης', 'Γεώργιος', 93, 193, 'ΗΜΤΥ', 'ΠΡΟΠΤΥΧΙΑΚΟΣ'),
(94, 'Χρήστης 94', 'Μουρατίδης', 'Γεώργιος', 94, 194, 'ΗΜΤΥ', 'ΠΡΟΠΤΥΧΙΑΚΟΣ'),
(95, 'Χρήστης 95', 'Μουρατίδης', 'Γεώργιος', 95, 195, 'ΗΜΤΥ', 'ΠΡΟΠΤΥΧΙΑΚΟΣ'),
(96, 'Χρήστης 96', 'Μουρατίδης', 'Γεώργιος', 96, 196, 'ΗΜΤΥ', 'ΠΡΟΠΤΥΧΙΑΚΟΣ'),
(97, 'Χρήστης 97', 'Μουρατίδης', 'Γεώργιος', 97, 197, 'ΗΜΤΥ', 'ΠΡΟΠΤΥΧΙΑΚΟΣ'),
(98, 'Χρήστης 98', 'Μουρατίδης', 'Γεώργιος', 98, 198, 'ΗΜΤΥ', 'ΠΡΟΠΤΥΧΙΑΚΟΣ'),
(99, 'Χρήστης 99', 'Μουρατίδης', 'Γεώργιος', 99, 199, 'ΗΜΤΥ', 'ΠΡΟΠΤΥΧΙΑΚΟΣ'),
(148, 'Î§ÏÎ®ÏƒÏ„Î¿Ï‚', 'Î“ÎµÏ‰ÏÎ³Î¬ÎºÎ·Ï‚', 'Î£Ï„Î±Î¼Î¬Ï„Î¹Î¿Ï‚', 228017, 2147483647, 'Î—ÎœÎ¤Î¥', 'Î ÏÎ¿Ï„Ï…Ï‡Î¹Î'),
(156, 'Î§ÏÎ®ÏƒÏ„Î¿Ï‚', 'Î“ÎµÏ‰ÏÎ³Î¬ÎºÎ·Ï‚', 'Î£Ï„Î±Î¼Î¬Ï„Î¹Î¿Ï‚', 1234, 1234, 'Î—ÎœÎ¤Î¥', 'Î ÏÎ¿Ï„Ï…Ï‡Î¹Î'),
(601, 'Χρήστης 601', 'Μουρατίδης', 'Γεώργιος', 601, 58, 'ΗΜΤΥ', 'ΠΡΟΠΤΥΧΙΑΚΟΣ'),
(602, 'Χρήστης 602', 'Μουρατίδης', 'Γεώργιος', 602, 59, 'ΗΜΤΥ', 'ΠΡΟΠΤΥΧΙΑΚΟΣ'),
(603, 'Χρήστης 603', 'Μουρατίδης', 'Γεώργιος', 603, 60, 'ΗΜΤΥ', 'ΠΡΟΠΤΥΧΙΑΚΟΣ'),
(604, 'Χρήστης 604', 'Μουρατίδης', 'Γεώργιος', 604, 61, 'ΗΜΤΥ', 'ΠΡΟΠΤΥΧΙΑΚΟΣ'),
(605, 'Χρήστης 605', 'Μουρατίδης', 'Γεώργιος', 605, 62, 'ΗΜΤΥ', 'ΠΡΟΠΤΥΧΙΑΚΟΣ'),
(606, 'Χρήστης 606', 'Μουρατίδης', 'Γεώργιος', 606, 63, 'ΗΜΤΥ', 'ΠΡΟΠΤΥΧΙΑΚΟΣ'),
(607, 'Χρήστης 607', 'Μουρατίδης', 'Γεώργιος', 607, 64, 'ΗΜΤΥ', 'ΠΡΟΠΤΥΧΙΑΚΟΣ'),
(608, 'Χρήστης 608', 'Μουρατίδης', 'Γεώργιος', 608, 65, 'ΗΜΤΥ', 'ΠΡΟΠΤΥΧΙΑΚΟΣ'),
(609, 'Χρήστης 609', 'Μουρατίδης', 'Γεώργιος', 609, 66, 'ΗΜΤΥ', 'ΠΡΟΠΤΥΧΙΑΚΟΣ'),
(610, 'Χρήστης 610', 'Μουρατίδης', 'Γεώργιος', 610, 68, 'ΗΜΤΥ', 'ΠΡΟΠΤΥΧΙΑΚΟΣ'),
(611, 'Χρήστης 611', 'Μουρατίδης', 'Γεώργιος', 611, 69, 'ΗΜΤΥ', 'ΠΡΟΠΤΥΧΙΑΚΟΣ'),
(612, 'Χρήστης 612', 'Μουρατίδης', 'Γεώργιος', 612, 70, 'ΗΜΤΥ', 'ΠΡΟΠΤΥΧΙΑΚΟΣ'),
(613, 'Χρήστης 613', 'Μουρατίδης', 'Γεώργιος', 613, 71, 'ΗΜΤΥ', 'ΠΡΟΠΤΥΧΙΑΚΟΣ'),
(614, 'Χρήστης 614', 'Μουρατίδης', 'Γεώργιος', 614, 72, 'ΗΜΤΥ', 'ΠΡΟΠΤΥΧΙΑΚΟΣ'),
(615, 'Χρήστης 615', 'Μουρατίδης', 'Γεώργιος', 615, 73, 'ΗΜΤΥ', 'ΠΡΟΠΤΥΧΙΑΚΟΣ'),
(616, 'Χρήστης 616', 'Μουρατίδης', 'Γεώργιος', 616, 74, 'ΗΜΤΥ', 'ΠΡΟΠΤΥΧΙΑΚΟΣ'),
(617, 'Χρήστης 617', 'Μουρατίδης', 'Γεώργιος', 617, 75, 'ΗΜΤΥ', 'ΠΡΟΠΤΥΧΙΑΚΟΣ'),
(618, 'Χρήστης 618', 'Μουρατίδης', 'Γεώργιος', 618, 76, 'ΗΜΤΥ', 'ΠΡΟΠΤΥΧΙΑΚΟΣ'),
(619, 'Χρήστης 619', 'Μουρατίδης', 'Γεώργιος', 619, 77, 'ΗΜΤΥ', 'ΠΡΟΠΤΥΧΙΑΚΟΣ'),
(620, 'Χρήστης 620', 'Μουρατίδης', 'Γεώργιος', 620, 79, 'ΗΜΤΥ', 'ΠΡΟΠΤΥΧΙΑΚΟΣ'),
(621, 'Χρήστης 621', 'Μουρατίδης', 'Γεώργιος', 621, 80, 'ΗΜΤΥ', 'ΠΡΟΠΤΥΧΙΑΚΟΣ'),
(622, 'Χρήστης 622', 'Μουρατίδης', 'Γεώργιος', 622, 81, 'ΗΜΤΥ', 'ΠΡΟΠΤΥΧΙΑΚΟΣ'),
(623, 'Χρήστης 623', 'Μουρατίδης', 'Γεώργιος', 623, 82, 'ΗΜΤΥ', 'ΠΡΟΠΤΥΧΙΑΚΟΣ'),
(624, 'Χρήστης 624', 'Μουρατίδης', 'Γεώργιος', 624, 83, 'ΗΜΤΥ', 'ΠΡΟΠΤΥΧΙΑΚΟΣ'),
(625, 'Χρήστης 625', 'Μουρατίδης', 'Γεώργιος', 625, 84, 'ΗΜΤΥ', 'ΠΡΟΠΤΥΧΙΑΚΟΣ'),
(626, 'Χρήστης 626', 'Μουρατίδης', 'Γεώργιος', 626, 85, 'ΗΜΤΥ', 'ΠΡΟΠΤΥΧΙΑΚΟΣ'),
(627, 'Χρήστης 627', 'Μουρατίδης', 'Γεώργιος', 627, 86, 'ΗΜΤΥ', 'ΠΡΟΠΤΥΧΙΑΚΟΣ'),
(628, 'Χρήστης 628', 'Μουρατίδης', 'Γεώργιος', 628, 87, 'ΗΜΤΥ', 'ΠΡΟΠΤΥΧΙΑΚΟΣ'),
(629, 'Χρήστης 629', 'Μουρατίδης', 'Γεώργιος', 629, 88, 'ΗΜΤΥ', 'ΠΡΟΠΤΥΧΙΑΚΟΣ'),
(630, 'Χρήστης 630', 'Μουρατίδης', 'Γεώργιος', 630, 90, 'ΗΜΤΥ', 'ΠΡΟΠΤΥΧΙΑΚΟΣ'),
(631, 'Χρήστης 631', 'Μουρατίδης', 'Γεώργιος', 631, 91, 'ΗΜΤΥ', 'ΠΡΟΠΤΥΧΙΑΚΟΣ'),
(632, 'Χρήστης 632', 'Μουρατίδης', 'Γεώργιος', 632, 92, 'ΗΜΤΥ', 'ΠΡΟΠΤΥΧΙΑΚΟΣ'),
(633, 'Χρήστης 633', 'Μουρατίδης', 'Γεώργιος', 633, 93, 'ΗΜΤΥ', 'ΠΡΟΠΤΥΧΙΑΚΟΣ'),
(634, 'Χρήστης 634', 'Μουρατίδης', 'Γεώργιος', 634, 94, 'ΗΜΤΥ', 'ΠΡΟΠΤΥΧΙΑΚΟΣ'),
(635, 'Χρήστης 635', 'Μουρατίδης', 'Γεώργιος', 635, 95, 'ΗΜΤΥ', 'ΠΡΟΠΤΥΧΙΑΚΟΣ'),
(636, 'Χρήστης 636', 'Μουρατίδης', 'Γεώργιος', 636, 96, 'ΗΜΤΥ', 'ΠΡΟΠΤΥΧΙΑΚΟΣ'),
(637, 'Χρήστης 637', 'Μουρατίδης', 'Γεώργιος', 637, 97, 'ΗΜΤΥ', 'ΠΡΟΠΤΥΧΙΑΚΟΣ'),
(638, 'Χρήστης 638', 'Μουρατίδης', 'Γεώργιος', 638, 98, 'ΗΜΤΥ', 'ΠΡΟΠΤΥΧΙΑΚΟΣ'),
(639, 'Χρήστης 639', 'Μουρατίδης', 'Γεώργιος', 639, 99, 'ΗΜΤΥ', 'ΠΡΟΠΤΥΧΙΑΚΟΣ'),
(640, 'Χρήστης 640', 'Μουρατίδης', 'Γεώργιος', 640, 101, 'ΗΜΤΥ', 'ΠΡΟΠΤΥΧΙΑΚΟΣ'),
(641, 'Χρήστης 641', 'Μουρατίδης', 'Γεώργιος', 641, 102, 'ΗΜΤΥ', 'ΠΡΟΠΤΥΧΙΑΚΟΣ'),
(642, 'Χρήστης 642', 'Μουρατίδης', 'Γεώργιος', 642, 103, 'ΗΜΤΥ', 'ΠΡΟΠΤΥΧΙΑΚΟΣ'),
(643, 'Χρήστης 643', 'Μουρατίδης', 'Γεώργιος', 643, 104, 'ΗΜΤΥ', 'ΠΡΟΠΤΥΧΙΑΚΟΣ'),
(644, 'Χρήστης 644', 'Μουρατίδης', 'Γεώργιος', 644, 105, 'ΗΜΤΥ', 'ΠΡΟΠΤΥΧΙΑΚΟΣ'),
(645, 'Χρήστης 645', 'Μουρατίδης', 'Γεώργιος', 645, 106, 'ΗΜΤΥ', 'ΠΡΟΠΤΥΧΙΑΚΟΣ'),
(646, 'Χρήστης 646', 'Μουρατίδης', 'Γεώργιος', 646, 107, 'ΗΜΤΥ', 'ΠΡΟΠΤΥΧΙΑΚΟΣ'),
(647, 'Χρήστης 647', 'Μουρατίδης', 'Γεώργιος', 647, 108, 'ΗΜΤΥ', 'ΠΡΟΠΤΥΧΙΑΚΟΣ'),
(648, 'Χρήστης 648', 'Μουρατίδης', 'Γεώργιος', 648, 109, 'ΗΜΤΥ', 'ΠΡΟΠΤΥΧΙΑΚΟΣ'),
(649, 'Χρήστης 649', 'Μουρατίδης', 'Γεώργιος', 649, 110, 'ΗΜΤΥ', 'ΠΡΟΠΤΥΧΙΑΚΟΣ'),
(650, 'Χρήστης 650', 'Μουρατίδης', 'Γεώργιος', 650, 112, 'ΗΜΤΥ', 'ΠΡΟΠΤΥΧΙΑΚΟΣ'),
(651, 'Χρήστης 651', 'Μουρατίδης', 'Γεώργιος', 651, 113, 'ΗΜΤΥ', 'ΠΡΟΠΤΥΧΙΑΚΟΣ'),
(652, 'Χρήστης 652', 'Μουρατίδης', 'Γεώργιος', 652, 114, 'ΗΜΤΥ', 'ΠΡΟΠΤΥΧΙΑΚΟΣ'),
(653, 'Χρήστης 653', 'Μουρατίδης', 'Γεώργιος', 653, 115, 'ΗΜΤΥ', 'ΠΡΟΠΤΥΧΙΑΚΟΣ'),
(654, 'Χρήστης 654', 'Μουρατίδης', 'Γεώργιος', 654, 116, 'ΗΜΤΥ', 'ΠΡΟΠΤΥΧΙΑΚΟΣ'),
(655, 'Χρήστης 655', 'Μουρατίδης', 'Γεώργιος', 655, 117, 'ΗΜΤΥ', 'ΠΡΟΠΤΥΧΙΑΚΟΣ'),
(656, 'Χρήστης 656', 'Μουρατίδης', 'Γεώργιος', 656, 118, 'ΗΜΤΥ', 'ΠΡΟΠΤΥΧΙΑΚΟΣ'),
(657, 'Χρήστης 657', 'Μουρατίδης', 'Γεώργιος', 657, 119, 'ΗΜΤΥ', 'ΠΡΟΠΤΥΧΙΑΚΟΣ'),
(658, 'Χρήστης 658', 'Μουρατίδης', 'Γεώργιος', 658, 120, 'ΗΜΤΥ', 'ΠΡΟΠΤΥΧΙΑΚΟΣ'),
(659, 'Χρήστης 659', 'Μουρατίδης', 'Γεώργιος', 659, 121, 'ΗΜΤΥ', 'ΠΡΟΠΤΥΧΙΑΚΟΣ'),
(660, 'Χρήστης 660', 'Μουρατίδης', 'Γεώργιος', 660, 123, 'ΗΜΤΥ', 'ΠΡΟΠΤΥΧΙΑΚΟΣ'),
(661, 'Χρήστης 661', 'Μουρατίδης', 'Γεώργιος', 661, 124, 'ΗΜΤΥ', 'ΠΡΟΠΤΥΧΙΑΚΟΣ'),
(662, 'Χρήστης 662', 'Μουρατίδης', 'Γεώργιος', 662, 125, 'ΗΜΤΥ', 'ΠΡΟΠΤΥΧΙΑΚΟΣ'),
(663, 'Χρήστης 663', 'Μουρατίδης', 'Γεώργιος', 663, 126, 'ΗΜΤΥ', 'ΠΡΟΠΤΥΧΙΑΚΟΣ'),
(664, 'Χρήστης 664', 'Μουρατίδης', 'Γεώργιος', 664, 127, 'ΗΜΤΥ', 'ΠΡΟΠΤΥΧΙΑΚΟΣ'),
(665, 'Χρήστης 665', 'Μουρατίδης', 'Γεώργιος', 665, 128, 'ΗΜΤΥ', 'ΠΡΟΠΤΥΧΙΑΚΟΣ'),
(666, 'Χρήστης 666', 'Μουρατίδης', 'Γεώργιος', 666, 129, 'ΗΜΤΥ', 'ΠΡΟΠΤΥΧΙΑΚΟΣ'),
(667, 'Χρήστης 667', 'Μουρατίδης', 'Γεώργιος', 667, 130, 'ΗΜΤΥ', 'ΠΡΟΠΤΥΧΙΑΚΟΣ'),
(668, 'Χρήστης 668', 'Μουρατίδης', 'Γεώργιος', 668, 131, 'ΗΜΤΥ', 'ΠΡΟΠΤΥΧΙΑΚΟΣ'),
(669, 'Χρήστης 669', 'Μουρατίδης', 'Γεώργιος', 669, 132, 'ΗΜΤΥ', 'ΠΡΟΠΤΥΧΙΑΚΟΣ'),
(670, 'Χρήστης 670', 'Μουρατίδης', 'Γεώργιος', 670, 134, 'ΗΜΤΥ', 'ΠΡΟΠΤΥΧΙΑΚΟΣ'),
(671, 'Χρήστης 671', 'Μουρατίδης', 'Γεώργιος', 671, 135, 'ΗΜΤΥ', 'ΠΡΟΠΤΥΧΙΑΚΟΣ'),
(672, 'Χρήστης 672', 'Μουρατίδης', 'Γεώργιος', 672, 136, 'ΗΜΤΥ', 'ΠΡΟΠΤΥΧΙΑΚΟΣ'),
(673, 'Χρήστης 673', 'Μουρατίδης', 'Γεώργιος', 673, 137, 'ΗΜΤΥ', 'ΠΡΟΠΤΥΧΙΑΚΟΣ'),
(674, 'Χρήστης 674', 'Μουρατίδης', 'Γεώργιος', 674, 138, 'ΗΜΤΥ', 'ΠΡΟΠΤΥΧΙΑΚΟΣ'),
(675, 'Χρήστης 675', 'Μουρατίδης', 'Γεώργιος', 675, 139, 'ΗΜΤΥ', 'ΠΡΟΠΤΥΧΙΑΚΟΣ'),
(676, 'Χρήστης 676', 'Μουρατίδης', 'Γεώργιος', 676, 140, 'ΗΜΤΥ', 'ΠΡΟΠΤΥΧΙΑΚΟΣ'),
(677, 'Χρήστης 677', 'Μουρατίδης', 'Γεώργιος', 677, 141, 'ΗΜΤΥ', 'ΠΡΟΠΤΥΧΙΑΚΟΣ'),
(678, 'Χρήστης 678', 'Μουρατίδης', 'Γεώργιος', 678, 142, 'ΗΜΤΥ', 'ΠΡΟΠΤΥΧΙΑΚΟΣ'),
(679, 'Χρήστης 679', 'Μουρατίδης', 'Γεώργιος', 679, 143, 'ΗΜΤΥ', 'ΠΡΟΠΤΥΧΙΑΚΟΣ'),
(680, 'Χρήστης 680', 'Μουρατίδης', 'Γεώργιος', 680, 145, 'ΗΜΤΥ', 'ΠΡΟΠΤΥΧΙΑΚΟΣ'),
(681, 'Χρήστης 681', 'Μουρατίδης', 'Γεώργιος', 681, 146, 'ΗΜΤΥ', 'ΠΡΟΠΤΥΧΙΑΚΟΣ'),
(682, 'Χρήστης 682', 'Μουρατίδης', 'Γεώργιος', 682, 147, 'ΗΜΤΥ', 'ΠΡΟΠΤΥΧΙΑΚΟΣ'),
(683, 'Χρήστης 683', 'Μουρατίδης', 'Γεώργιος', 683, 148, 'ΗΜΤΥ', 'ΠΡΟΠΤΥΧΙΑΚΟΣ'),
(684, 'Χρήστης 684', 'Μουρατίδης', 'Γεώργιος', 684, 149, 'ΗΜΤΥ', 'ΠΡΟΠΤΥΧΙΑΚΟΣ'),
(685, 'Χρήστης 685', 'Μουρατίδης', 'Γεώργιος', 685, 150, 'ΗΜΤΥ', 'ΠΡΟΠΤΥΧΙΑΚΟΣ'),
(686, 'Χρήστης 686', 'Μουρατίδης', 'Γεώργιος', 686, 151, 'ΗΜΤΥ', 'ΠΡΟΠΤΥΧΙΑΚΟΣ'),
(687, 'Χρήστης 687', 'Μουρατίδης', 'Γεώργιος', 687, 152, 'ΗΜΤΥ', 'ΠΡΟΠΤΥΧΙΑΚΟΣ'),
(688, 'Χρήστης 688', 'Μουρατίδης', 'Γεώργιος', 688, 153, 'ΗΜΤΥ', 'ΠΡΟΠΤΥΧΙΑΚΟΣ'),
(689, 'Χρήστης 689', 'Μουρατίδης', 'Γεώργιος', 689, 154, 'ΗΜΤΥ', 'ΠΡΟΠΤΥΧΙΑΚΟΣ'),
(690, 'Χρήστης 690', 'Μουρατίδης', 'Γεώργιος', 690, 156, 'ΗΜΤΥ', 'ΠΡΟΠΤΥΧΙΑΚΟΣ'),
(691, 'Χρήστης 691', 'Μουρατίδης', 'Γεώργιος', 691, 157, 'ΗΜΤΥ', 'ΠΡΟΠΤΥΧΙΑΚΟΣ'),
(692, 'Χρήστης 692', 'Μουρατίδης', 'Γεώργιος', 692, 158, 'ΗΜΤΥ', 'ΠΡΟΠΤΥΧΙΑΚΟΣ'),
(693, 'Χρήστης 693', 'Μουρατίδης', 'Γεώργιος', 693, 159, 'ΗΜΤΥ', 'ΠΡΟΠΤΥΧΙΑΚΟΣ'),
(694, 'Χρήστης 694', 'Μουρατίδης', 'Γεώργιος', 694, 160, 'ΗΜΤΥ', 'ΠΡΟΠΤΥΧΙΑΚΟΣ'),
(695, 'Χρήστης 695', 'Μουρατίδης', 'Γεώργιος', 695, 161, 'ΗΜΤΥ', 'ΠΡΟΠΤΥΧΙΑΚΟΣ'),
(696, 'Χρήστης 696', 'Μουρατίδης', 'Γεώργιος', 696, 162, 'ΗΜΤΥ', 'ΠΡΟΠΤΥΧΙΑΚΟΣ'),
(697, 'Χρήστης 697', 'Μουρατίδης', 'Γεώργιος', 697, 163, 'ΗΜΤΥ', 'ΠΡΟΠΤΥΧΙΑΚΟΣ'),
(698, 'Χρήστης 698', 'Μουρατίδης', 'Γεώργιος', 698, 164, 'ΗΜΤΥ', 'ΠΡΟΠΤΥΧΙΑΚΟΣ'),
(699, 'Χρήστης 699', 'Μουρατίδης', 'Γεώργιος', 699, 165, 'ΗΜΤΥ', 'ΠΡΟΠΤΥΧΙΑΚΟΣ'),
(701, 'chris', 'georgakis', 'stamatios', 222, 222, 'Î—ÎœÎ¤Î¥', 'Î ÏÎ¿Ï„Ï…Ï‡Î¹Î'),
(703, 'ÎœÎ±ÏÎ¹Ï„Î¹Î½Î±', 'ÎŸÏÎ´Î¯Ï„Î·', 'Î‘Î¸Î±Î½Î¬ÏƒÎ¹Î¿Ï‚', 123444, 123444, 'Î—ÎœÎ¤Î¥', 'Î ÏÎ¿Ï„Ï…Ï‡Î¹Î'),
(704, 'chris', 'aaaa', 'aaa000a', 0, 0, 'Î—ÎœÎ¤Î¥', 'Î ÏÎ¿Ï„Ï…Ï‡Î¹Î');

-- --------------------------------------------------------

--
-- Δομή πίνακα για τον πίνακα `use_coupon`
--

CREATE TABLE `use_coupon` (
  `DATE` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `ACADEMIC_ID` bigint(12) UNSIGNED NOT NULL,
  `BREAKFAST` tinyint(3) UNSIGNED NOT NULL DEFAULT '0',
  `LUNCH` tinyint(3) UNSIGNED NOT NULL DEFAULT '0',
  `DINNER` tinyint(3) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

--
-- Άδειασμα δεδομένων του πίνακα `use_coupon`
--

INSERT INTO `use_coupon` (`DATE`, `ACADEMIC_ID`, `BREAKFAST`, `LUNCH`, `DINNER`) VALUES
('2018-05-15 00:00:00', 30, 0, 2, 0),
('2018-05-15 00:00:00', 45, 0, 1, 1),
('2018-05-15 00:00:00', 630, 0, 2, 0),
('2018-05-15 00:00:00', 645, 0, 1, 1),
('2018-05-16 00:00:00', 31, 1, 3, 1),
('2018-05-16 00:00:00', 46, 1, 2, 0),
('2018-05-16 00:00:00', 631, 1, 3, 1),
('2018-05-16 00:00:00', 646, 1, 2, 0),
('2018-05-17 00:00:00', 32, 2, 0, 0),
('2018-05-17 00:00:00', 47, 2, 3, 1),
('2018-05-17 00:00:00', 632, 2, 0, 0),
('2018-05-17 00:00:00', 647, 2, 3, 1),
('2018-05-18 00:00:00', 33, 0, 1, 1),
('2018-05-18 00:00:00', 48, 0, 0, 0),
('2018-05-18 00:00:00', 148, 0, 0, 0),
('2018-05-18 00:00:00', 633, 0, 1, 1),
('2018-05-18 00:00:00', 648, 0, 0, 0),
('2018-05-19 00:00:00', 34, 1, 2, 0),
('2018-05-19 00:00:00', 49, 1, 1, 1),
('2018-05-19 00:00:00', 634, 1, 2, 0),
('2018-05-19 00:00:00', 649, 1, 1, 1),
('2018-05-20 00:00:00', 20, 2, 0, 0),
('2018-05-20 00:00:00', 35, 2, 3, 1),
('2018-05-20 00:00:00', 50, 2, 2, 0),
('2018-05-20 00:00:00', 620, 2, 0, 0),
('2018-05-20 00:00:00', 635, 2, 3, 1),
('2018-05-20 00:00:00', 650, 2, 2, 0),
('2018-05-21 00:00:00', 21, 0, 1, 1),
('2018-05-21 00:00:00', 36, 0, 0, 0),
('2018-05-21 00:00:00', 51, 0, 3, 1),
('2018-05-21 00:00:00', 621, 0, 1, 1),
('2018-05-21 00:00:00', 636, 0, 0, 0),
('2018-05-21 00:00:00', 651, 0, 3, 1),
('2018-05-22 00:00:00', 22, 1, 2, 0),
('2018-05-22 00:00:00', 37, 1, 1, 1),
('2018-05-22 00:00:00', 52, 1, 0, 0),
('2018-05-22 00:00:00', 622, 1, 2, 0),
('2018-05-22 00:00:00', 637, 1, 1, 1),
('2018-05-22 00:00:00', 652, 1, 0, 0),
('2018-05-23 00:00:00', 23, 2, 3, 1),
('2018-05-23 00:00:00', 38, 2, 2, 0),
('2018-05-23 00:00:00', 53, 2, 1, 1),
('2018-05-23 00:00:00', 623, 2, 3, 1),
('2018-05-23 00:00:00', 638, 2, 2, 0),
('2018-05-23 00:00:00', 653, 2, 1, 1),
('2018-05-24 00:00:00', 24, 0, 0, 0),
('2018-05-24 00:00:00', 39, 0, 3, 1),
('2018-05-24 00:00:00', 54, 0, 2, 0),
('2018-05-24 00:00:00', 624, 0, 0, 0),
('2018-05-24 00:00:00', 639, 0, 3, 1),
('2018-05-24 00:00:00', 654, 0, 2, 0),
('2018-05-25 00:00:00', 25, 1, 1, 1),
('2018-05-25 00:00:00', 40, 1, 0, 0),
('2018-05-25 00:00:00', 55, 1, 3, 1),
('2018-05-25 00:00:00', 625, 1, 1, 1),
('2018-05-25 00:00:00', 640, 1, 0, 0),
('2018-05-25 00:00:00', 655, 1, 3, 1),
('2018-05-26 00:00:00', 26, 2, 2, 0),
('2018-05-26 00:00:00', 41, 2, 1, 1),
('2018-05-26 00:00:00', 56, 2, 0, 0),
('2018-05-26 00:00:00', 626, 2, 2, 0),
('2018-05-26 00:00:00', 641, 2, 1, 1),
('2018-05-26 00:00:00', 656, 2, 0, 0),
('2018-05-27 00:00:00', 27, 0, 3, 1),
('2018-05-27 00:00:00', 42, 0, 2, 0),
('2018-05-27 00:00:00', 57, 0, 1, 1),
('2018-05-27 00:00:00', 627, 0, 3, 1),
('2018-05-27 00:00:00', 642, 0, 2, 0),
('2018-05-27 00:00:00', 657, 0, 1, 1),
('2018-05-28 00:00:00', 28, 1, 0, 0),
('2018-05-28 00:00:00', 43, 1, 3, 1),
('2018-05-28 00:00:00', 58, 1, 2, 0),
('2018-05-28 00:00:00', 628, 1, 0, 0),
('2018-05-28 00:00:00', 643, 1, 3, 1),
('2018-05-28 00:00:00', 658, 1, 2, 0),
('2018-05-29 00:00:00', 29, 2, 1, 1),
('2018-05-29 00:00:00', 44, 2, 0, 0),
('2018-05-29 00:00:00', 59, 2, 3, 1),
('2018-05-29 00:00:00', 629, 2, 1, 1),
('2018-05-29 00:00:00', 644, 2, 0, 0),
('2018-05-29 00:00:00', 659, 2, 3, 1),
('2018-06-15 00:00:00', 30, 0, 2, 0),
('2018-06-15 00:00:00', 45, 0, 1, 1),
('2018-06-15 00:00:00', 630, 0, 2, 0),
('2018-06-15 00:00:00', 645, 0, 1, 1),
('2018-06-16 00:00:00', 31, 1, 3, 1),
('2018-06-16 00:00:00', 46, 1, 2, 0),
('2018-06-16 00:00:00', 631, 1, 3, 1),
('2018-06-16 00:00:00', 646, 1, 2, 0),
('2018-06-17 00:00:00', 32, 2, 0, 0),
('2018-06-17 00:00:00', 47, 2, 3, 1),
('2018-06-17 00:00:00', 632, 2, 0, 0),
('2018-06-17 00:00:00', 647, 2, 3, 1),
('2018-06-18 00:00:00', 33, 0, 1, 1),
('2018-06-18 00:00:00', 48, 0, 0, 0),
('2018-06-18 00:00:00', 148, 0, 0, 0),
('2018-06-18 00:00:00', 633, 0, 1, 1),
('2018-06-18 00:00:00', 648, 0, 0, 0),
('2018-06-19 00:00:00', 34, 1, 2, 0),
('2018-06-19 00:00:00', 49, 1, 1, 1),
('2018-06-19 00:00:00', 634, 1, 2, 0),
('2018-06-19 00:00:00', 649, 1, 1, 1),
('2018-06-20 00:00:00', 20, 2, 0, 0),
('2018-06-20 00:00:00', 35, 2, 3, 1),
('2018-06-20 00:00:00', 50, 2, 2, 0),
('2018-06-20 00:00:00', 620, 2, 0, 0),
('2018-06-20 00:00:00', 635, 2, 3, 1),
('2018-06-20 00:00:00', 650, 2, 2, 0),
('2018-06-21 00:00:00', 21, 0, 1, 1),
('2018-06-21 00:00:00', 36, 0, 0, 0),
('2018-06-21 00:00:00', 51, 0, 3, 1),
('2018-06-21 00:00:00', 621, 0, 1, 1),
('2018-06-21 00:00:00', 636, 0, 0, 0),
('2018-06-21 00:00:00', 651, 0, 3, 1),
('2018-06-22 00:00:00', 22, 1, 2, 0),
('2018-06-22 00:00:00', 37, 1, 1, 1),
('2018-06-22 00:00:00', 52, 1, 0, 0),
('2018-06-22 00:00:00', 622, 1, 2, 0),
('2018-06-22 00:00:00', 637, 1, 1, 1),
('2018-06-22 00:00:00', 652, 1, 0, 0),
('2018-06-23 00:00:00', 23, 2, 3, 1),
('2018-06-23 00:00:00', 38, 2, 2, 0),
('2018-06-23 00:00:00', 53, 2, 1, 1),
('2018-06-23 00:00:00', 623, 2, 3, 1),
('2018-06-23 00:00:00', 638, 2, 2, 0),
('2018-06-23 00:00:00', 653, 2, 1, 1),
('2018-06-24 00:00:00', 24, 0, 0, 0),
('2018-06-24 00:00:00', 39, 0, 3, 1),
('2018-06-24 00:00:00', 54, 0, 2, 0),
('2018-06-24 00:00:00', 624, 0, 0, 0),
('2018-06-24 00:00:00', 639, 0, 3, 1),
('2018-06-24 00:00:00', 654, 0, 2, 0),
('2018-06-25 00:00:00', 25, 1, 1, 1),
('2018-06-25 00:00:00', 40, 1, 0, 0),
('2018-06-25 00:00:00', 55, 1, 3, 1),
('2018-06-25 00:00:00', 625, 1, 1, 1),
('2018-06-25 00:00:00', 640, 1, 0, 0),
('2018-06-25 00:00:00', 655, 1, 3, 1),
('2018-06-26 00:00:00', 26, 2, 2, 0),
('2018-06-26 00:00:00', 41, 2, 1, 1),
('2018-06-26 00:00:00', 56, 2, 0, 0),
('2018-06-26 00:00:00', 626, 2, 2, 0),
('2018-06-26 00:00:00', 641, 2, 1, 1),
('2018-06-26 00:00:00', 656, 2, 0, 0),
('2018-06-27 00:00:00', 27, 0, 3, 1),
('2018-06-27 00:00:00', 42, 0, 2, 0),
('2018-06-27 00:00:00', 57, 0, 1, 1),
('2018-06-27 00:00:00', 627, 0, 3, 1),
('2018-06-27 00:00:00', 642, 0, 2, 0),
('2018-06-27 00:00:00', 657, 0, 1, 1),
('2018-06-28 00:00:00', 28, 1, 0, 0),
('2018-06-28 00:00:00', 43, 1, 3, 1),
('2018-06-28 00:00:00', 58, 1, 2, 0),
('2018-06-28 00:00:00', 628, 1, 0, 0),
('2018-06-28 00:00:00', 643, 1, 3, 1),
('2018-06-28 00:00:00', 658, 1, 2, 0),
('2018-06-29 00:00:00', 29, 2, 1, 1),
('2018-06-29 00:00:00', 44, 2, 0, 0),
('2018-06-29 00:00:00', 59, 2, 3, 1),
('2018-06-29 00:00:00', 629, 2, 1, 1),
('2018-06-29 00:00:00', 644, 2, 0, 0),
('2018-06-29 00:00:00', 659, 2, 3, 1),
('2019-05-15 00:00:00', 30, 0, 2, 0),
('2019-05-15 00:00:00', 45, 0, 1, 1),
('2019-05-15 00:00:00', 630, 0, 2, 0),
('2019-05-15 00:00:00', 645, 0, 1, 1),
('2019-05-16 00:00:00', 31, 1, 3, 1),
('2019-05-16 00:00:00', 46, 1, 2, 0),
('2019-05-16 00:00:00', 631, 1, 3, 1),
('2019-05-16 00:00:00', 646, 1, 2, 0),
('2019-05-17 00:00:00', 32, 2, 0, 0),
('2019-05-17 00:00:00', 47, 2, 3, 1),
('2019-05-17 00:00:00', 632, 2, 0, 0),
('2019-05-17 00:00:00', 647, 2, 3, 1),
('2019-05-18 00:00:00', 33, 0, 1, 1),
('2019-05-18 00:00:00', 48, 0, 0, 0),
('2019-05-18 00:00:00', 148, 0, 0, 0),
('2019-05-18 00:00:00', 633, 0, 1, 1),
('2019-05-18 00:00:00', 648, 0, 0, 0),
('2019-05-19 00:00:00', 34, 1, 2, 0),
('2019-05-19 00:00:00', 49, 1, 1, 1),
('2019-05-19 00:00:00', 634, 1, 2, 0),
('2019-05-19 00:00:00', 649, 1, 1, 1),
('2019-05-20 00:00:00', 20, 2, 0, 0),
('2019-05-20 00:00:00', 35, 2, 3, 1),
('2019-05-20 00:00:00', 50, 2, 2, 0),
('2019-05-20 00:00:00', 620, 2, 0, 0),
('2019-05-20 00:00:00', 635, 2, 3, 1),
('2019-05-20 00:00:00', 650, 2, 2, 0),
('2019-05-21 00:00:00', 21, 0, 1, 1),
('2019-05-21 00:00:00', 36, 0, 0, 0),
('2019-05-21 00:00:00', 51, 0, 3, 1),
('2019-05-21 00:00:00', 621, 0, 1, 1),
('2019-05-21 00:00:00', 636, 0, 0, 0),
('2019-05-21 00:00:00', 651, 0, 3, 1),
('2019-05-22 00:00:00', 22, 1, 2, 0),
('2019-05-22 00:00:00', 37, 1, 1, 1),
('2019-05-22 00:00:00', 52, 1, 0, 0),
('2019-05-22 00:00:00', 622, 1, 2, 0),
('2019-05-22 00:00:00', 637, 1, 1, 1),
('2019-05-22 00:00:00', 652, 1, 0, 0),
('2019-05-23 00:00:00', 23, 2, 3, 1),
('2019-05-23 00:00:00', 38, 2, 2, 0),
('2019-05-23 00:00:00', 53, 2, 1, 1),
('2019-05-23 00:00:00', 623, 2, 3, 1),
('2019-05-23 00:00:00', 638, 2, 2, 0),
('2019-05-23 00:00:00', 653, 2, 1, 1),
('2019-05-24 00:00:00', 24, 0, 0, 0),
('2019-05-24 00:00:00', 39, 0, 3, 1),
('2019-05-24 00:00:00', 54, 0, 2, 0),
('2019-05-24 00:00:00', 624, 0, 0, 0),
('2019-05-24 00:00:00', 639, 0, 3, 1),
('2019-05-24 00:00:00', 654, 0, 2, 0),
('2019-05-25 00:00:00', 25, 1, 1, 1),
('2019-05-25 00:00:00', 40, 1, 0, 0),
('2019-05-25 00:00:00', 55, 1, 3, 1),
('2019-05-25 00:00:00', 625, 1, 1, 1),
('2019-05-25 00:00:00', 640, 1, 0, 0),
('2019-05-25 00:00:00', 655, 1, 3, 1),
('2019-05-26 00:00:00', 26, 2, 2, 0),
('2019-05-26 00:00:00', 41, 2, 1, 1),
('2019-05-26 00:00:00', 56, 2, 0, 0),
('2019-05-26 00:00:00', 626, 2, 2, 0),
('2019-05-26 00:00:00', 641, 2, 1, 1),
('2019-05-26 00:00:00', 656, 2, 0, 0),
('2019-05-27 00:00:00', 27, 0, 3, 1),
('2019-05-27 00:00:00', 42, 0, 2, 0),
('2019-05-27 00:00:00', 57, 0, 1, 1),
('2019-05-27 00:00:00', 627, 0, 3, 1),
('2019-05-27 00:00:00', 642, 0, 2, 0),
('2019-05-27 00:00:00', 657, 0, 1, 1),
('2019-05-28 00:00:00', 28, 1, 0, 0),
('2019-05-28 00:00:00', 43, 1, 3, 1),
('2019-05-28 00:00:00', 58, 1, 2, 0),
('2019-05-28 00:00:00', 628, 1, 0, 0),
('2019-05-28 00:00:00', 643, 1, 3, 1),
('2019-05-28 00:00:00', 658, 1, 2, 0),
('2019-05-29 00:00:00', 29, 2, 1, 1),
('2019-05-29 00:00:00', 44, 2, 0, 0),
('2019-05-29 00:00:00', 59, 2, 3, 1),
('2019-05-29 00:00:00', 629, 2, 1, 1),
('2019-05-29 00:00:00', 659, 0, 5, 1),
('2019-06-02 00:00:00', 20, 2, 6, 0),
('2019-06-02 00:00:00', 21, 0, 5, 0),
('2019-06-02 00:00:00', 22, 0, 5, 0),
('2019-06-02 00:00:00', 25, 0, 3, 0),
('2019-06-02 00:00:00', 29, 0, 5, 0),
('2019-06-02 00:00:00', 31, 0, 3, 0),
('2019-06-02 00:00:00', 35, 0, 2, 0),
('2019-06-02 00:00:00', 38, 0, 2, 0),
('2019-06-02 00:00:00', 39, 0, 2, 0),
('2019-06-02 00:00:00', 41, 0, 1, 0),
('2019-06-02 00:00:00', 42, 0, 1, 0),
('2019-06-02 00:00:00', 43, 0, 1, 0),
('2019-06-02 00:00:00', 44, 0, 1, 0),
('2019-06-02 00:00:00', 45, 0, 1, 0),
('2019-06-02 00:00:00', 46, 0, 1, 0),
('2019-06-02 00:00:00', 47, 0, 1, 0),
('2019-06-02 00:00:00', 48, 0, 1, 0),
('2019-06-02 00:00:00', 49, 0, 1, 0),
('2019-06-02 00:00:00', 52, 0, 1, 0),
('2019-06-02 00:00:00', 54, 0, 1, 0),
('2019-06-02 00:00:00', 55, 0, 1, 0),
('2019-06-02 00:00:00', 59, 0, 1, 0),
('2019-06-02 00:00:00', 148, 0, 1, 0),
('2019-06-03 00:00:00', 20, 0, 1, 0),
('2019-06-03 00:00:00', 25, 0, 1, 0),
('2019-06-03 00:00:00', 44, 0, 1, 0),
('2019-06-03 00:00:00', 55, 0, 1, 0),
('2019-06-04 00:00:00', 20, 0, 1, 0),
('2019-06-04 00:00:00', 21, 0, 2, 0),
('2019-06-04 00:00:00', 22, 0, 4, 0),
('2019-06-04 00:00:00', 23, 0, 6, 0),
('2019-06-04 00:00:00', 24, 0, 2, 0),
('2019-06-04 00:00:00', 25, 0, 8, 0),
('2019-06-04 00:00:00', 26, 0, 9, 0),
('2019-06-04 00:00:00', 27, 0, 4, 0),
('2019-06-04 00:00:00', 28, 0, 2, 0),
('2019-06-04 00:00:00', 29, 0, 1, 0),
('2019-06-04 00:00:00', 41, 0, 1, 0),
('2019-06-04 00:00:00', 46, 0, 1, 0),
('2019-06-04 00:00:00', 47, 0, 1, 0),
('2019-06-04 00:00:00', 49, 0, 1, 0),
('2019-06-04 00:00:00', 55, 0, 3, 0),
('2019-06-04 00:00:00', 56, 0, 1, 0),
('2019-06-06 00:00:00', 20, 0, 1, 0),
('2019-06-06 00:00:00', 23, 0, 1, 0),
('2019-06-06 00:00:00', 24, 0, 2, 0),
('2019-06-06 00:00:00', 26, 0, 3, 0),
('2019-06-06 00:00:00', 27, 0, 2, 0),
('2019-06-06 00:00:00', 28, 0, 2, 0),
('2019-06-06 00:00:00', 29, 0, 1, 0),
('2019-06-06 00:00:00', 35, 0, 2, 0),
('2019-06-06 00:00:00', 36, 0, 2, 0),
('2019-06-06 00:00:00', 38, 0, 2, 0),
('2019-06-06 00:00:00', 39, 0, 2, 0),
('2019-06-06 00:00:00', 40, 0, 2, 0),
('2019-06-08 00:00:00', 20, 22, 2, 0),
('2019-06-08 00:00:00', 21, 2, 1, 0),
('2019-06-08 00:00:00', 22, 6, 0, 0),
('2019-06-08 00:00:00', 25, 1, 0, 0),
('2019-06-08 00:00:00', 29, 0, 1, 0),
('2019-06-08 00:00:00', 31, 1, 0, 0),
('2019-06-08 00:00:00', 32, 10, 0, 1),
('2019-06-08 00:00:00', 33, 2, 2, 0),
('2019-06-08 00:00:00', 34, 1, 0, 0),
('2019-06-08 00:00:00', 36, 2, 0, 0),
('2019-06-08 00:00:00', 39, 1, 1, 0),
('2019-06-08 00:00:00', 40, 1, 0, 0),
('2019-06-08 00:00:00', 41, 2, 0, 0),
('2019-06-08 00:00:00', 44, 0, 1, 0),
('2019-06-08 00:00:00', 45, 9, 1, 0),
('2019-06-08 00:00:00', 46, 11, 1, 0),
('2019-06-08 00:00:00', 47, 10, 0, 0),
('2019-06-08 00:00:00', 48, 5, 0, 0),
('2019-06-08 00:00:00', 49, 8, 0, 0),
('2019-06-08 00:00:00', 50, 2, 0, 0),
('2019-06-08 00:00:00', 52, 1, 0, 0),
('2019-06-08 00:00:00', 53, 1, 0, 0),
('2019-06-08 00:00:00', 54, 2, 0, 0),
('2019-06-08 00:00:00', 55, 9, 0, 0),
('2019-06-08 00:00:00', 56, 6, 0, 0),
('2019-06-08 00:00:00', 58, 2, 0, 0),
('2019-06-08 00:00:00', 59, 1, 0, 0),
('2019-06-09 00:00:00', 20, 0, 1, 0),
('2019-06-09 15:29:50', 59, 0, 2, 0),
('2019-06-09 15:29:52', 49, 0, 2, 0),
('2019-06-09 15:30:06', 59, 0, 2, 0),
('2019-06-09 15:30:08', 49, 0, 2, 0);

--
-- Ευρετήρια για άχρηστους πίνακες
--

--
-- Ευρετήρια για πίνακα `beneficiary_free_food`
--
ALTER TABLE `beneficiary_free_food`
  ADD PRIMARY KEY (`ACADEMIC_ID`);

--
-- Ευρετήρια για πίνακα `buy_coupon`
--
ALTER TABLE `buy_coupon`
  ADD PRIMARY KEY (`DATETIME`,`ACADEMIC_ID`),
  ADD KEY `BUY_COUPON_ACADEMIC_ID_CHANGE` (`ACADEMIC_ID`);

--
-- Ευρετήρια για πίνακα `check_logged_users`
--
ALTER TABLE `check_logged_users`
  ADD PRIMARY KEY (`token`),
  ADD UNIQUE KEY `token` (`token`),
  ADD KEY `ID` (`ID`);

--
-- Ευρετήρια για πίνακα `check_users`
--
ALTER TABLE `check_users`
  ADD PRIMARY KEY (`ID`),
  ADD UNIQUE KEY `ID` (`ID`),
  ADD UNIQUE KEY `username` (`username`);

--
-- Ευρετήρια για πίνακα `free_food`
--
ALTER TABLE `free_food`
  ADD PRIMARY KEY (`DATE`,`ACADEMIC_ID`),
  ADD KEY `FREE_FOOD_ACADEMIC_ID_CHANGE` (`ACADEMIC_ID`);

--
-- Ευρετήρια για πίνακα `owner_coupon`
--
ALTER TABLE `owner_coupon`
  ADD PRIMARY KEY (`ACADEMIC_ID`);

--
-- Ευρετήρια για πίνακα `sell_logged_users`
--
ALTER TABLE `sell_logged_users`
  ADD PRIMARY KEY (`token`),
  ADD UNIQUE KEY `token` (`token`),
  ADD KEY `ID` (`ID`);

--
-- Ευρετήρια για πίνακα `sell_users`
--
ALTER TABLE `sell_users`
  ADD PRIMARY KEY (`ID`),
  ADD UNIQUE KEY `ID` (`ID`),
  ADD UNIQUE KEY `username` (`username`);

--
-- Ευρετήρια για πίνακα `send_coupon`
--
ALTER TABLE `send_coupon`
  ADD PRIMARY KEY (`DATE`,`SENDER_ID`,`RECEIVER_ID`),
  ADD KEY `SEND_COUPON_SENDER_ID_CHANGE` (`SENDER_ID`),
  ADD KEY `SEND_COUPON_RECEIVER_ID_CHANGE` (`RECEIVER_ID`);

--
-- Ευρετήρια για πίνακα `test_daily_prog`
--
ALTER TABLE `test_daily_prog`
  ADD PRIMARY KEY (`day`);

--
-- Ευρετήρια για πίνακα `test_logged_users`
--
ALTER TABLE `test_logged_users`
  ADD PRIMARY KEY (`token`),
  ADD UNIQUE KEY `token` (`token`),
  ADD KEY `id` (`id`);

--
-- Ευρετήρια για πίνακα `test_users`
--
ALTER TABLE `test_users`
  ADD PRIMARY KEY (`ID`),
  ADD UNIQUE KEY `ID` (`ID`),
  ADD UNIQUE KEY `username` (`username`);

--
-- Ευρετήρια για πίνακα `test_users_info`
--
ALTER TABLE `test_users_info`
  ADD PRIMARY KEY (`ID`),
  ADD UNIQUE KEY `am` (`am`),
  ADD UNIQUE KEY `cn` (`cn`);

--
-- Ευρετήρια για πίνακα `use_coupon`
--
ALTER TABLE `use_coupon`
  ADD PRIMARY KEY (`DATE`,`ACADEMIC_ID`),
  ADD KEY `USE_COUPON_ACADEMIC_ID_CHANGE` (`ACADEMIC_ID`);

--
-- AUTO_INCREMENT για άχρηστους πίνακες
--

--
-- AUTO_INCREMENT για πίνακα `check_users`
--
ALTER TABLE `check_users`
  MODIFY `ID` int(7) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT για πίνακα `sell_users`
--
ALTER TABLE `sell_users`
  MODIFY `ID` int(7) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=45;
--
-- AUTO_INCREMENT για πίνακα `test_users`
--
ALTER TABLE `test_users`
  MODIFY `ID` bigint(12) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=706;
--
-- Περιορισμοί για άχρηστους πίνακες
--

--
-- Περιορισμοί για πίνακα `beneficiary_free_food`
--
ALTER TABLE `beneficiary_free_food`
  ADD CONSTRAINT `beneficiary_free_food_ibfk_1` FOREIGN KEY (`ACADEMIC_ID`) REFERENCES `test_users_info` (`ID`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Περιορισμοί για πίνακα `buy_coupon`
--
ALTER TABLE `buy_coupon`
  ADD CONSTRAINT `BUY_COUPON_ACADEMIC_ID_CHANGE` FOREIGN KEY (`ACADEMIC_ID`) REFERENCES `owner_coupon` (`ACADEMIC_ID`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Περιορισμοί για πίνακα `check_logged_users`
--
ALTER TABLE `check_logged_users`
  ADD CONSTRAINT `check_logged_users_ibfk_1` FOREIGN KEY (`ID`) REFERENCES `check_users` (`ID`);

--
-- Περιορισμοί για πίνακα `free_food`
--
ALTER TABLE `free_food`
  ADD CONSTRAINT `free_food_ibfk_1` FOREIGN KEY (`ACADEMIC_ID`) REFERENCES `beneficiary_free_food` (`ACADEMIC_ID`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Περιορισμοί για πίνακα `owner_coupon`
--
ALTER TABLE `owner_coupon`
  ADD CONSTRAINT `owner_coupon_ibfk_1` FOREIGN KEY (`ACADEMIC_ID`) REFERENCES `test_users_info` (`ID`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Περιορισμοί για πίνακα `sell_logged_users`
--
ALTER TABLE `sell_logged_users`
  ADD CONSTRAINT `sell_logged_users_ibfk_1` FOREIGN KEY (`ID`) REFERENCES `sell_users` (`ID`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Περιορισμοί για πίνακα `send_coupon`
--
ALTER TABLE `send_coupon`
  ADD CONSTRAINT `SEND_COUPON_RECEIVER_ID_CHANGE` FOREIGN KEY (`RECEIVER_ID`) REFERENCES `owner_coupon` (`ACADEMIC_ID`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `SEND_COUPON_SENDER_ID_CHANGE` FOREIGN KEY (`SENDER_ID`) REFERENCES `owner_coupon` (`ACADEMIC_ID`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Περιορισμοί για πίνακα `test_logged_users`
--
ALTER TABLE `test_logged_users`
  ADD CONSTRAINT `test_logged_users_ibfk_1` FOREIGN KEY (`id`) REFERENCES `test_users` (`ID`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Περιορισμοί για πίνακα `test_users_info`
--
ALTER TABLE `test_users_info`
  ADD CONSTRAINT `test_users_info_ibfk_1` FOREIGN KEY (`ID`) REFERENCES `test_users` (`ID`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Περιορισμοί για πίνακα `use_coupon`
--
ALTER TABLE `use_coupon`
  ADD CONSTRAINT `USE_COUPON_ACADEMIC_ID_CHANGE` FOREIGN KEY (`ACADEMIC_ID`) REFERENCES `owner_coupon` (`ACADEMIC_ID`) ON DELETE CASCADE ON UPDATE CASCADE;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
