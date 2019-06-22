-- phpMyAdmin SQL Dump
-- version 4.6.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 22, 2019 at 01:18 PM
-- Server version: 5.7.14
-- PHP Version: 7.0.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `ci_demo`
--

-- --------------------------------------------------------

--
-- Table structure for table `abilities`
--

CREATE TABLE `abilities` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(150) COLLATE utf8_unicode_ci NOT NULL,
  `title` varchar(191) COLLATE utf8_unicode_ci DEFAULT NULL,
  `entity_id` int(10) UNSIGNED DEFAULT NULL,
  `entity_type` varchar(150) COLLATE utf8_unicode_ci DEFAULT NULL,
  `only_owned` tinyint(1) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `abilities`
--

INSERT INTO `abilities` (`id`, `name`, `title`, `entity_id`, `entity_type`, `only_owned`, `created_at`, `updated_at`) VALUES
(1, 'users_manage', NULL, NULL, NULL, 0, '2019-06-21 01:35:10', '2019-06-21 01:35:10'),
(2, 'customers', NULL, NULL, NULL, 0, '2019-06-21 01:36:42', '2019-06-21 01:36:42'),
(3, 'products', NULL, NULL, NULL, 0, '2019-06-21 01:36:50', '2019-06-21 01:36:50'),
(4, 'orders', NULL, NULL, NULL, 0, '2019-06-21 01:36:57', '2019-06-21 01:36:57'),
(5, 'users', NULL, NULL, NULL, 0, '2019-06-21 01:38:04', '2019-06-21 01:38:04');

-- --------------------------------------------------------

--
-- Table structure for table `assigned_roles`
--

CREATE TABLE `assigned_roles` (
  `role_id` int(10) UNSIGNED NOT NULL,
  `entity_id` int(10) UNSIGNED NOT NULL,
  `entity_type` varchar(191) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `assigned_roles`
--

INSERT INTO `assigned_roles` (`role_id`, `entity_id`, `entity_type`) VALUES
(1, 1, 'App\\User'),
(3, 2, 'App\\User'),
(2, 3, 'App\\User'),
(1, 4, 'App\\User');

-- --------------------------------------------------------

--
-- Table structure for table `customers`
--

CREATE TABLE `customers` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `customers`
--

INSERT INTO `customers` (`id`, `name`, `email`, `created_at`, `updated_at`) VALUES
(1, 'Jakayla Cole', 'filiberto.marks@example.net', '2019-06-21 05:46:30', '2019-06-21 05:46:30'),
(2, 'Buford Keebler', 'ciara.koepp@example.org', '2019-06-21 05:46:30', '2019-06-21 05:46:30'),
(3, 'Ian Cartwright V', 'mollie.jacobi@example.org', '2019-06-21 05:46:30', '2019-06-21 05:46:30'),
(4, 'Evert Kuvalis', 'mitchell.clifford@example.com', '2019-06-21 05:46:30', '2019-06-21 05:46:30'),
(5, 'Bennie Nader', 'joseph.bradtke@example.net', '2019-06-21 05:46:30', '2019-06-21 05:46:30'),
(6, 'Elinore Thiel', 'annamae.mitchell@example.org', '2019-06-21 05:46:30', '2019-06-21 05:46:30'),
(7, 'Norberto Schmitt', 'waldo.labadie@example.net', '2019-06-21 05:46:30', '2019-06-21 05:46:30'),
(8, 'Ilene Wolf', 'lucy.bergnaum@example.org', '2019-06-21 05:46:30', '2019-06-21 05:46:30'),
(9, 'Lilla Nikolaus DDS', 'xerdman@example.org', '2019-06-21 05:46:30', '2019-06-21 05:46:30'),
(10, 'Alexandra Will', 'jrobel@example.org', '2019-06-21 05:46:30', '2019-06-21 05:46:30'),
(11, 'Brock Hickle', 'damon92@example.com', '2019-06-21 05:46:30', '2019-06-21 05:46:30'),
(12, 'Isabella O\'Keefe', 'eusebio.dietrich@example.com', '2019-06-21 05:46:30', '2019-06-21 05:46:30'),
(13, 'Percy Frami', 'maurice11@example.org', '2019-06-21 05:46:30', '2019-06-21 05:46:30'),
(14, 'Mr. Riley Dickinson', 'reinger.doyle@example.org', '2019-06-21 05:46:30', '2019-06-21 05:46:30'),
(15, 'Harrison Raynor', 'laron98@example.com', '2019-06-21 05:46:30', '2019-06-21 05:46:30'),
(16, 'Dr. Maeve Gerhold', 'orn.jennyfer@example.net', '2019-06-21 05:46:30', '2019-06-21 05:46:30'),
(17, 'Murray Adams II', 'ohara.rey@example.com', '2019-06-21 05:46:30', '2019-06-21 05:46:30'),
(18, 'Ms. Heath Nolan I', 'bo.halvorson@example.org', '2019-06-21 05:46:30', '2019-06-21 05:46:30'),
(19, 'Sheridan Feest', 'bradford60@example.org', '2019-06-21 05:46:30', '2019-06-21 05:46:30'),
(20, 'Prof. Ethan Harris PhD', 'trantow.summer@example.com', '2019-06-21 05:46:30', '2019-06-21 05:46:30'),
(21, 'Zion Botsford IV', 'robin.dubuque@example.net', '2019-06-21 05:46:30', '2019-06-21 05:46:30'),
(22, 'Ocie Hoeger', 'abigale.auer@example.net', '2019-06-21 05:46:30', '2019-06-21 05:46:30'),
(23, 'Jared Powlowski', 'jodie.goyette@example.org', '2019-06-21 05:46:30', '2019-06-21 05:46:30'),
(24, 'Chelsea McKenzie', 'vsatterfield@example.com', '2019-06-21 05:46:30', '2019-06-21 05:46:30'),
(25, 'Brisa Skiles', 'gladyce76@example.net', '2019-06-21 05:46:30', '2019-06-21 05:46:30'),
(26, 'Mariam Upton Jr.', 'leora.rau@example.net', '2019-06-21 05:46:30', '2019-06-21 05:46:30'),
(27, 'Samara Orn', 'jacynthe.funk@example.net', '2019-06-21 05:46:30', '2019-06-21 05:46:30'),
(28, 'Prof. Amanda Ebert', 'jaylan20@example.net', '2019-06-21 05:46:30', '2019-06-21 05:46:30'),
(29, 'Geovanni Swaniawski', 'sarai42@example.com', '2019-06-21 05:46:30', '2019-06-21 05:46:30'),
(30, 'Florine Medhurst', 'clinton19@example.net', '2019-06-21 05:46:30', '2019-06-21 05:46:30'),
(31, 'Golda Predovic', 'mandy17@example.org', '2019-06-21 05:46:30', '2019-06-21 05:46:30'),
(32, 'Chad Jenkins', 'emie.boyer@example.net', '2019-06-21 05:46:30', '2019-06-21 05:46:30'),
(33, 'Carolyn Eichmann MD', 'zander.volkman@example.com', '2019-06-21 05:46:30', '2019-06-21 05:46:30'),
(34, 'Hayden O\'Connell', 'alden.kub@example.com', '2019-06-21 05:46:30', '2019-06-21 05:46:30'),
(35, 'Paige Swift', 'gfisher@example.net', '2019-06-21 05:46:30', '2019-06-21 05:46:30'),
(36, 'Ms. Meta Wolf', 'lavada.breitenberg@example.net', '2019-06-21 05:46:30', '2019-06-21 05:46:30'),
(37, 'Dr. Arnoldo Jones Sr.', 'sfranecki@example.com', '2019-06-21 05:46:30', '2019-06-21 05:46:30'),
(38, 'Prof. Bonnie Wilkinson', 'flavio.keeling@example.com', '2019-06-21 05:46:30', '2019-06-21 05:46:30'),
(39, 'Rodrick Gutkowski', 'sreinger@example.org', '2019-06-21 05:46:30', '2019-06-21 05:46:30'),
(40, 'Garnet Leannon', 'hassie.hagenes@example.com', '2019-06-21 05:46:30', '2019-06-21 05:46:30'),
(41, 'Mrs. Alexane Dickinson', 'tdenesik@example.com', '2019-06-21 05:46:30', '2019-06-21 05:46:30'),
(42, 'Korbin Lowe I', 'wiegand.vesta@example.org', '2019-06-21 05:46:30', '2019-06-21 05:46:30'),
(43, 'Ivah Orn', 'kertzmann.tomasa@example.org', '2019-06-21 05:46:30', '2019-06-21 05:46:30'),
(44, 'Cornell Heller', 'lempi.parker@example.com', '2019-06-21 05:46:30', '2019-06-21 05:46:30'),
(45, 'Leonardo Herman', 'kunde.terence@example.com', '2019-06-21 05:46:30', '2019-06-21 05:46:30'),
(46, 'Mertie Ebert', 'zkozey@example.net', '2019-06-21 05:46:30', '2019-06-21 05:46:30'),
(47, 'Anika Feest', 'ctremblay@example.com', '2019-06-21 05:46:30', '2019-06-21 05:46:30'),
(48, 'Fausto Gulgowski', 'dhickle@example.org', '2019-06-21 05:46:30', '2019-06-21 05:46:30'),
(49, 'Leann Hammes', 'kmante@example.com', '2019-06-21 05:46:30', '2019-06-21 05:46:30'),
(50, 'Bridget Goldner', 'ritchie.allene@example.net', '2019-06-21 05:46:30', '2019-06-21 05:46:30'),
(51, 'Genoveva Treutel', 'miller.davis@example.net', '2019-06-21 05:46:30', '2019-06-21 05:46:30'),
(52, 'Marina Schiller', 'marks.luciano@example.org', '2019-06-21 05:46:30', '2019-06-21 05:46:30'),
(53, 'Prof. Madaline Simonis', 'khalil69@example.com', '2019-06-21 05:46:30', '2019-06-21 05:46:30'),
(54, 'Ellsworth Rempel', 'kuhic.unique@example.org', '2019-06-21 05:46:30', '2019-06-21 05:46:30'),
(55, 'Charlene Stoltenberg', 'ayana.osinski@example.net', '2019-06-21 05:46:30', '2019-06-21 05:46:30'),
(56, 'Rosalind Will', 'bergstrom.jacinthe@example.net', '2019-06-21 05:46:30', '2019-06-21 05:46:30'),
(57, 'Arnaldo Ortiz', 'ondricka.imogene@example.org', '2019-06-21 05:46:30', '2019-06-21 05:46:30'),
(58, 'Dallas Macejkovic', 'brad27@example.net', '2019-06-21 05:46:30', '2019-06-21 05:46:30'),
(59, 'Darrel Adams', 'emard.levi@example.com', '2019-06-21 05:46:30', '2019-06-21 05:46:30'),
(60, 'Dr. Della Crooks II', 'jordyn.oberbrunner@example.org', '2019-06-21 05:46:30', '2019-06-21 05:46:30'),
(61, 'Diamond Adams', 'federico12@example.com', '2019-06-21 05:46:30', '2019-06-21 05:46:30'),
(62, 'Ms. Evelyn Boehm', 'hartmann.verda@example.com', '2019-06-21 05:46:30', '2019-06-21 05:46:30'),
(63, 'Dr. Fannie Carter', 'beier.nova@example.net', '2019-06-21 05:46:30', '2019-06-21 05:46:30'),
(64, 'Aurelio Lockman DVM', 'rcorkery@example.net', '2019-06-21 05:46:30', '2019-06-21 05:46:30'),
(65, 'Lavinia Armstrong', 'hagenes.bulah@example.com', '2019-06-21 05:46:30', '2019-06-21 05:46:30'),
(66, 'Chadd Abshire', 'elliot.donnelly@example.net', '2019-06-21 05:46:30', '2019-06-21 05:46:30'),
(67, 'Janessa Simonis', 'christy.sauer@example.org', '2019-06-21 05:46:30', '2019-06-21 05:46:30'),
(68, 'Domingo Frami DVM', 'aaliyah99@example.com', '2019-06-21 05:46:30', '2019-06-21 05:46:30'),
(69, 'Queen Feil I', 'vwyman@example.com', '2019-06-21 05:46:30', '2019-06-21 05:46:30'),
(70, 'Gillian Feeney', 'raynor.halle@example.org', '2019-06-21 05:46:30', '2019-06-21 05:46:30'),
(71, 'Keely Dickinson Sr.', 'gerlach.hillary@example.net', '2019-06-21 05:46:30', '2019-06-21 05:46:30'),
(72, 'Mr. Oscar Rolfson', 'amiya85@example.net', '2019-06-21 05:46:30', '2019-06-21 05:46:30'),
(73, 'Ms. Tressa Nienow IV', 'wgleason@example.net', '2019-06-21 05:46:30', '2019-06-21 05:46:30'),
(74, 'Lou Strosin', 'vkassulke@example.net', '2019-06-21 05:46:30', '2019-06-21 05:46:30'),
(75, 'Ben Ritchie', 'feil.madilyn@example.net', '2019-06-21 05:46:30', '2019-06-21 05:46:30'),
(76, 'Mr. Demario Homenick', 'mafalda.boyer@example.com', '2019-06-21 05:46:30', '2019-06-21 05:46:30'),
(77, 'Dr. Allen Thiel', 'uhilll@example.com', '2019-06-21 05:46:30', '2019-06-21 05:46:30'),
(78, 'Camron Pouros', 'pbartoletti@example.org', '2019-06-21 05:46:30', '2019-06-21 05:46:30'),
(79, 'Johnathon Schuppe', 'stiedemann.andreane@example.com', '2019-06-21 05:46:30', '2019-06-21 05:46:30'),
(80, 'Prof. Alena Muller', 'lurline77@example.net', '2019-06-21 05:46:30', '2019-06-21 05:46:30'),
(81, 'Mr. Nick Konopelski', 'skiles.roy@example.net', '2019-06-21 05:46:30', '2019-06-21 05:46:30'),
(82, 'Izabella Lynch', 'wyman.kiehn@example.org', '2019-06-21 05:46:30', '2019-06-21 05:46:30'),
(83, 'Leola Brown', 'obalistreri@example.org', '2019-06-21 05:46:30', '2019-06-21 05:46:30'),
(84, 'Jakob Heaney I', 'zblanda@example.net', '2019-06-21 05:46:30', '2019-06-21 05:46:30'),
(85, 'Cleora Welch', 'nils68@example.com', '2019-06-21 05:46:30', '2019-06-21 05:46:30'),
(86, 'Mr. Reginald Berge DVM', 'forrest47@example.net', '2019-06-21 05:46:30', '2019-06-21 05:46:30'),
(87, 'Garfield Yundt', 'nschultz@example.com', '2019-06-21 05:46:30', '2019-06-21 05:46:30'),
(88, 'Mr. Jillian Beahan', 'qkunde@example.org', '2019-06-21 05:46:30', '2019-06-21 05:46:30'),
(89, 'Sammie McClure', 'yrenner@example.com', '2019-06-21 05:46:30', '2019-06-21 05:46:30'),
(90, 'Al Mann', 'patience.robel@example.org', '2019-06-21 05:46:30', '2019-06-21 05:46:30'),
(91, 'Bessie McCullough', 'hickle.luz@example.org', '2019-06-21 05:46:30', '2019-06-21 05:46:30'),
(92, 'Marcellus Doyle I', 'elisa46@example.org', '2019-06-21 05:46:30', '2019-06-21 05:46:30'),
(93, 'Mr. Darrell Gusikowski', 'leuschke.vernie@example.com', '2019-06-21 05:46:30', '2019-06-21 05:46:30'),
(94, 'Brannon Gerlach', 'gheller@example.org', '2019-06-21 05:46:30', '2019-06-21 05:46:30'),
(95, 'Prof. Newton Cartwright', 'glover.terence@example.com', '2019-06-21 05:46:30', '2019-06-21 05:46:30'),
(96, 'Juston Block III', 'ettie47@example.net', '2019-06-21 05:46:30', '2019-06-21 05:46:30'),
(97, 'Prof. Lonnie Medhurst MD', 'jena.feil@example.com', '2019-06-21 05:46:30', '2019-06-21 05:46:30'),
(98, 'Stefan Brakus I', 'schaden.annabelle@example.org', '2019-06-21 05:46:30', '2019-06-21 05:46:30'),
(99, 'Eric Lindgren II', 'carol.armstrong@example.com', '2019-06-21 05:46:30', '2019-06-21 05:46:30'),
(100, 'Dillan Spinka', 'yrice@example.com', '2019-06-21 05:46:30', '2019-06-21 05:46:30'),
(101, 'Bernhard Kutch', 'juvenal.buckridge@example.com', '2019-06-21 05:46:30', '2019-06-21 05:46:30'),
(102, 'Mrs. Lizeth Smith', 'dandre.west@example.net', '2019-06-21 05:46:30', '2019-06-21 05:46:30'),
(103, 'Sonya Satterfield DDS', 'hyatt.greyson@example.com', '2019-06-21 05:46:30', '2019-06-21 05:46:30'),
(104, 'Guido Purdy', 'omacejkovic@example.org', '2019-06-21 05:46:30', '2019-06-21 05:46:30'),
(105, 'Prof. Mitchell O\'Connell', 'savanah94@example.net', '2019-06-21 05:46:30', '2019-06-21 05:46:30'),
(106, 'Neha Bailey', 'mayer.rodrick@example.net', '2019-06-21 05:46:30', '2019-06-21 05:46:30'),
(107, 'Jaycee Klocko', 'parker.willard@example.com', '2019-06-21 05:46:30', '2019-06-21 05:46:30'),
(108, 'Dr. Candace Jacobi DDS', 'estel.gibson@example.com', '2019-06-21 05:46:30', '2019-06-21 05:46:30'),
(109, 'Tina Nienow', 'alice39@example.com', '2019-06-21 05:46:30', '2019-06-21 05:46:30'),
(110, 'Prof. Mossie Murazik IV', 'botsford.keagan@example.org', '2019-06-21 05:46:30', '2019-06-21 05:46:30'),
(111, 'Elsa Dare Sr.', 'ekeeling@example.net', '2019-06-21 05:46:30', '2019-06-21 05:46:30'),
(112, 'Prof. Maegan Hahn MD', 'barney28@example.net', '2019-06-21 05:46:30', '2019-06-21 05:46:30'),
(113, 'Madie Larson', 'gabriella54@example.org', '2019-06-21 05:46:30', '2019-06-21 05:46:30'),
(114, 'Dr. Nicholaus Dicki Jr.', 'norene72@example.net', '2019-06-21 05:46:30', '2019-06-21 05:46:30'),
(115, 'Ara Klein', 'kdavis@example.org', '2019-06-21 05:46:30', '2019-06-21 05:46:30'),
(116, 'Jessy Schmeler', 'ila03@example.org', '2019-06-21 05:46:30', '2019-06-21 05:46:30'),
(117, 'Kellie Smith', 'mberge@example.net', '2019-06-21 05:46:30', '2019-06-21 05:46:30'),
(118, 'Prof. Taurean Zulauf', 'filiberto69@example.org', '2019-06-21 05:46:30', '2019-06-21 05:46:30'),
(119, 'Abigail Swift', 'wilkinson.justine@example.org', '2019-06-21 05:46:30', '2019-06-21 05:46:30'),
(120, 'Elsie Cremin', 'tess.fahey@example.org', '2019-06-21 05:46:30', '2019-06-21 05:46:30'),
(121, 'Harry Sauer', 'klein.queenie@example.org', '2019-06-21 05:46:30', '2019-06-21 05:46:30'),
(122, 'Nola Lehner Sr.', 'dewayne.little@example.com', '2019-06-21 05:46:30', '2019-06-21 05:46:30'),
(123, 'Prof. Tyrell Blanda', 'derrick.wehner@example.com', '2019-06-21 05:46:30', '2019-06-21 05:46:30'),
(124, 'Norma Denesik', 'chelsea.stokes@example.com', '2019-06-21 05:46:30', '2019-06-21 05:46:30'),
(125, 'Patricia Hansen', 'lemke.effie@example.com', '2019-06-21 05:46:30', '2019-06-21 05:46:30'),
(126, 'Prof. Julia Mertz', 'wyatt78@example.com', '2019-06-21 05:46:30', '2019-06-21 05:46:30'),
(127, 'Johan Gusikowski', 'herzog.julio@example.org', '2019-06-21 05:46:30', '2019-06-21 05:46:30'),
(128, 'Miguel Herzog', 'utoy@example.com', '2019-06-21 05:46:30', '2019-06-21 05:46:30'),
(129, 'Savannah Grant', 'virgie82@example.com', '2019-06-21 05:46:30', '2019-06-21 05:46:30'),
(130, 'Remington Heller IV', 'bechtelar.micaela@example.com', '2019-06-21 05:46:30', '2019-06-21 05:46:30'),
(131, 'Yadira Block II', 'hkovacek@example.net', '2019-06-21 05:46:30', '2019-06-21 05:46:30'),
(132, 'Ms. Cathryn Bode IV', 'dock81@example.org', '2019-06-21 05:46:30', '2019-06-21 05:46:30'),
(133, 'Camylle O\'Kon III', 'piper56@example.net', '2019-06-21 05:46:30', '2019-06-21 05:46:30'),
(134, 'Gennaro Upton', 'kiarra84@example.com', '2019-06-21 05:46:30', '2019-06-21 05:46:30'),
(135, 'Samson Bergnaum MD', 'stefan.williamson@example.com', '2019-06-21 05:46:30', '2019-06-21 05:46:30'),
(136, 'Mr. Tyree Steuber Jr.', 'gabe.keebler@example.org', '2019-06-21 05:46:30', '2019-06-21 05:46:30'),
(137, 'Ms. Magnolia Heidenreich DVM', 'xlesch@example.net', '2019-06-21 05:46:30', '2019-06-21 05:46:30'),
(138, 'Winnifred Kerluke', 'benny.bergnaum@example.org', '2019-06-21 05:46:30', '2019-06-21 05:46:30'),
(139, 'Afton Mohr DDS', 'scotty24@example.com', '2019-06-21 05:46:30', '2019-06-21 05:46:30'),
(140, 'Don Veum', 'rudy.hand@example.com', '2019-06-21 05:46:30', '2019-06-21 05:46:30'),
(141, 'Miss Willie Shanahan', 'ryan.claire@example.org', '2019-06-21 05:46:30', '2019-06-21 05:46:30'),
(142, 'Ms. Alaina Reinger', 'riley32@example.net', '2019-06-21 05:46:30', '2019-06-21 05:46:30'),
(143, 'Fausto Bernier', 'gloria75@example.net', '2019-06-21 05:46:30', '2019-06-21 05:46:30'),
(144, 'Marcel Parker', 'iwaters@example.com', '2019-06-21 05:46:30', '2019-06-21 05:46:30'),
(145, 'Sherman Welch', 'anya.pagac@example.com', '2019-06-21 05:46:30', '2019-06-21 05:46:30'),
(146, 'Oscar Kessler', 'judson.cummings@example.org', '2019-06-21 05:46:30', '2019-06-21 05:46:30'),
(147, 'Mrs. Rosemarie Hudson IV', 'laura27@example.net', '2019-06-21 05:46:30', '2019-06-21 05:46:30'),
(148, 'Dr. Davin Ruecker MD', 'wgleichner@example.org', '2019-06-21 05:46:30', '2019-06-21 05:46:30'),
(149, 'Alexandra Marvin', 'ischultz@example.org', '2019-06-21 05:46:30', '2019-06-21 05:46:30'),
(150, 'Mrs. Gertrude Auer', 'jamarcus.bergnaum@example.org', '2019-06-21 05:46:30', '2019-06-21 05:46:30'),
(151, 'Dr. Orin Crooks DVM', 'nia.gorczany@example.net', '2019-06-21 05:46:30', '2019-06-21 05:46:30'),
(152, 'Fleta Keebler', 'dleffler@example.net', '2019-06-21 05:46:30', '2019-06-21 05:46:30'),
(153, 'Miss Estefania Kuhlman', 'spinka.annabelle@example.net', '2019-06-21 05:46:30', '2019-06-21 05:46:30'),
(154, 'Dr. Marcelino Brekke II', 'allie49@example.net', '2019-06-21 05:46:30', '2019-06-21 05:46:30'),
(155, 'Candelario Haley', 'myrtie.hilpert@example.com', '2019-06-21 05:46:30', '2019-06-21 05:46:30'),
(156, 'Ms. Christine Williamson', 'vauer@example.com', '2019-06-21 05:46:30', '2019-06-21 05:46:30'),
(157, 'Josiane Borer', 'eva.cassin@example.net', '2019-06-21 05:46:30', '2019-06-21 05:46:30'),
(158, 'Agnes Ortiz', 'sigurd.bauch@example.org', '2019-06-21 05:46:30', '2019-06-21 05:46:30'),
(159, 'Amir Hoppe', 'kole.green@example.com', '2019-06-21 05:46:30', '2019-06-21 05:46:30'),
(160, 'Reese Renner', 'gladyce99@example.com', '2019-06-21 05:46:30', '2019-06-21 05:46:30'),
(161, 'Amparo Mayer V', 'benny.schumm@example.com', '2019-06-21 05:46:30', '2019-06-21 05:46:30'),
(162, 'Hardy Mosciski Jr.', 'baby31@example.org', '2019-06-21 05:46:30', '2019-06-21 05:46:30'),
(163, 'Ms. Ollie Huel', 'fay.annalise@example.com', '2019-06-21 05:46:30', '2019-06-21 05:46:30'),
(164, 'Amber Rau', 'qstark@example.org', '2019-06-21 05:46:30', '2019-06-21 05:46:30'),
(165, 'Prof. Ferne Bauch', 'chelsie91@example.net', '2019-06-21 05:46:30', '2019-06-21 05:46:30'),
(166, 'Mr. Cielo Conn', 'hillary.collins@example.org', '2019-06-21 05:46:30', '2019-06-21 05:46:30'),
(167, 'Mr. Torrance Barrows V', 'lillian.bradtke@example.net', '2019-06-21 05:46:30', '2019-06-21 05:46:30'),
(168, 'Katlyn Sauer', 'cjast@example.org', '2019-06-21 05:46:30', '2019-06-21 05:46:30'),
(169, 'Neoma Dooley IV', 'maurice.armstrong@example.net', '2019-06-21 05:46:30', '2019-06-21 05:46:30'),
(170, 'Prof. Norberto Lindgren', 'fisher.dewitt@example.org', '2019-06-21 05:46:30', '2019-06-21 05:46:30'),
(171, 'Dr. Efrain Reichel MD', 'milan58@example.org', '2019-06-21 05:46:30', '2019-06-21 05:46:30'),
(172, 'Marianna Wilkinson', 'cyrus07@example.com', '2019-06-21 05:46:30', '2019-06-21 05:46:30'),
(173, 'Kraig Roberts', 'tpfeffer@example.org', '2019-06-21 05:46:30', '2019-06-21 05:46:30'),
(174, 'Ms. Astrid Wehner', 'nicklaus48@example.org', '2019-06-21 05:46:30', '2019-06-21 05:46:30'),
(175, 'Germaine Koepp', 'jevon.lynch@example.org', '2019-06-21 05:46:30', '2019-06-21 05:46:30'),
(176, 'Gayle Abshire', 'sshields@example.net', '2019-06-21 05:46:30', '2019-06-21 05:46:30'),
(177, 'Gia Cassin', 'bergstrom.gerry@example.net', '2019-06-21 05:46:30', '2019-06-21 05:46:30'),
(178, 'Gail Runolfsson', 'harley54@example.com', '2019-06-21 05:46:30', '2019-06-21 05:46:30'),
(179, 'Prof. Petra Osinski', 'nbatz@example.org', '2019-06-21 05:46:30', '2019-06-21 05:46:30'),
(180, 'Ms. Danielle Boehm', 'raquel.bednar@example.org', '2019-06-21 05:46:30', '2019-06-21 05:46:30'),
(181, 'Jaden Stroman Sr.', 'amertz@example.net', '2019-06-21 05:46:30', '2019-06-21 05:46:30'),
(182, 'Ayana Rolfson', 'jasmin10@example.com', '2019-06-21 05:46:30', '2019-06-21 05:46:30'),
(183, 'Kelly Bergnaum', 'walton02@example.org', '2019-06-21 05:46:30', '2019-06-21 05:46:30'),
(184, 'Mrs. Kyra Murray III', 'whansen@example.net', '2019-06-21 05:46:30', '2019-06-21 05:46:30'),
(185, 'Mr. Sherman Powlowski Jr.', 'malachi.schmitt@example.org', '2019-06-21 05:46:30', '2019-06-21 05:46:30'),
(186, 'Hal White', 'crunte@example.org', '2019-06-21 05:46:30', '2019-06-21 05:46:30'),
(187, 'Adrain Renner', 'molly.hessel@example.org', '2019-06-21 05:46:30', '2019-06-21 05:46:30'),
(188, 'Violet Volkman II', 'gleason.ervin@example.com', '2019-06-21 05:46:30', '2019-06-21 05:46:30'),
(189, 'Mrs. Yasmin Kreiger PhD', 'cruz39@example.org', '2019-06-21 05:46:30', '2019-06-21 05:46:30'),
(190, 'Dr. Wilfred Erdman MD', 'gaetano.mante@example.net', '2019-06-21 05:46:30', '2019-06-21 05:46:30'),
(191, 'Birdie Labadie', 'trace27@example.net', '2019-06-21 05:46:30', '2019-06-21 05:46:30'),
(192, 'Reva Bartell', 'gdeckow@example.net', '2019-06-21 05:46:30', '2019-06-21 05:46:30'),
(193, 'Arnold Goldner IV', 'mjenkins@example.net', '2019-06-21 05:46:30', '2019-06-21 05:46:30'),
(194, 'Eula Rice', 'lwisoky@example.com', '2019-06-21 05:46:30', '2019-06-21 05:46:30'),
(195, 'Abdullah Smitham', 'schuppe.mariane@example.net', '2019-06-21 05:46:30', '2019-06-21 05:46:30'),
(196, 'Mr. Raleigh Kutch', 'darian03@example.net', '2019-06-21 05:46:30', '2019-06-21 05:46:30'),
(197, 'Benjamin Hessel', 'vmcdermott@example.com', '2019-06-21 05:46:30', '2019-06-21 05:46:30'),
(198, 'Sterling Boyer', 'bednar.arianna@example.com', '2019-06-21 05:46:30', '2019-06-21 05:46:30'),
(199, 'Mrs. Simone Romaguera V', 'floy17@example.com', '2019-06-21 05:46:30', '2019-06-21 05:46:30'),
(200, 'Dr. Weston Walker', 'stephen87@example.org', '2019-06-21 05:46:30', '2019-06-21 05:46:30');

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(191) COLLATE utf8_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2017_07_13_082418_create_bouncer_tables', 1),
(4, '2019_06_21_073202_create_products_table', 2),
(5, '2019_06_21_095358_create_customers_table', 3),
(6, '2019_06_21_095409_create_orders_table', 3),
(7, '2019_06_21_110807_create_customers_table', 4),
(8, '2019_06_21_110838_create_products_table', 4),
(9, '2019_06_21_110904_create_orders_table', 4);

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `id` int(10) UNSIGNED NOT NULL,
  `invoice_number` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `customer_id` int(11) NOT NULL,
  `total_amount` decimal(10,2) NOT NULL,
  `status` char(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`id`, `invoice_number`, `customer_id`, `total_amount`, `status`, `created_at`, `updated_at`) VALUES
(2, 'INV_02', 1, '123.00', 'processed', '2019-06-22 05:39:42', '2019-06-22 10:00:48'),
(3, 'INV_03', 2, '1005.00', 'processed', '2019-06-22 05:39:42', '2019-06-22 06:00:37'),
(4, 'INV_04', 5, '120.00', 'processed', '2019-06-22 05:40:29', '2019-06-22 07:00:26'),
(5, 'INV_05', 3, '120.00', 'processed', '2019-06-22 05:40:29', '2019-06-22 06:00:37'),
(6, 'INV_06', 2, '120.00', 'processed', '2019-06-22 05:41:35', '2019-06-22 06:00:37'),
(7, 'INV_07', 6, '120.00', 'processed', '2019-06-22 05:41:35', '2019-06-22 07:00:32'),
(8, 'INV_08', 2, '120.00', 'processed', '2019-06-22 05:41:35', '2019-06-22 06:00:37'),
(9, 'INV_09', 1, '120.00', 'processed', '2019-06-22 05:41:35', '2019-06-22 07:00:41'),
(10, 'INV_10', 7, '120.00', 'processed', '2019-06-22 05:41:35', '2019-06-22 07:00:36'),
(11, 'INV_11', 8, '120.00', 'processed', '2019-06-22 05:41:35', '2019-06-22 07:00:46'),
(12, 'INV_12', 2, '120.00', 'processed', '2019-06-22 05:41:35', '2019-06-22 06:00:37'),
(13, 'INV_13', 9, '120.00', 'processed', '2019-06-22 05:41:35', '2019-06-22 07:00:52'),
(14, 'INV_14', 2, '120.00', 'processed', '2019-06-22 05:41:35', '2019-06-22 06:00:37'),
(15, 'INV_15', 2, '120.00', 'processed', '2019-06-22 05:41:35', '2019-06-22 06:00:37'),
(16, 'INV_16', 2, '120.00', 'processed', '2019-06-22 05:41:35', '2019-06-22 06:00:37'),
(17, 'INV_17', 2, '120.00', 'processed', '2019-06-22 05:41:35', '2019-06-22 06:00:37'),
(18, 'INV_18', 2, '120.00', 'processed', '2019-06-22 05:41:35', '2019-06-22 06:00:37'),
(19, 'INV_19', 2, '120.00', 'processed', '2019-06-22 05:41:35', '2019-06-22 06:00:37'),
(20, 'INV_20', 2, '120.00', 'processed', '2019-06-22 05:41:35', '2019-06-22 06:00:37'),
(21, 'INV_21', 2, '120.00', 'processed', '2019-06-22 05:41:35', '2019-06-22 06:00:37'),
(22, 'INV_22', 2, '120.00', 'processed', '2019-06-22 05:41:35', '2019-06-22 06:00:37'),
(23, 'INV_23', 2, '120.00', 'processed', '2019-06-22 05:41:35', '2019-06-22 06:00:37'),
(24, 'INV_24', 2, '120.00', 'processed', '2019-06-22 05:41:35', '2019-06-22 06:00:37'),
(25, 'INV_25', 2, '120.00', 'processed', '2019-06-22 05:41:35', '2019-06-22 06:00:37'),
(26, 'INV_26', 2, '120.00', 'new', '2019-06-22 05:41:35', '2019-06-22 05:58:37'),
(27, 'INV_27', 3, '120.00', 'new', '2019-06-22 05:41:35', '2019-06-22 05:58:37'),
(28, 'INV_28', 2, '120.00', 'new', '2019-06-22 05:41:49', '2019-06-22 05:58:37'),
(29, 'INV_29', 2, '120.00', 'new', '2019-06-22 05:41:49', '2019-06-22 05:58:37'),
(30, 'INV_30', 2, '120.00', 'new', '2019-06-22 05:41:49', '2019-06-22 05:58:37'),
(31, 'INV_31', 2, '120.00', 'new', '2019-06-22 05:41:49', '2019-06-22 05:58:37'),
(32, 'INV_32', 2, '120.00', 'new', '2019-06-22 05:41:49', '2019-06-22 05:58:37'),
(33, 'INV_33', 2, '120.00', 'new', '2019-06-22 05:41:49', '2019-06-22 05:58:37'),
(34, 'INV_34', 2, '120.00', 'new', '2019-06-22 05:41:49', '2019-06-22 05:58:37'),
(35, 'INV_35', 2, '120.00', 'new', '2019-06-22 05:41:49', '2019-06-22 05:58:37'),
(36, 'INV_36', 2, '120.00', 'new', '2019-06-22 05:41:49', '2019-06-22 05:58:37'),
(37, 'INV_37', 2, '120.00', 'new', '2019-06-22 05:41:49', '2019-06-22 05:58:37'),
(38, 'INV_38', 2, '120.00', 'new', '2019-06-22 05:41:49', '2019-06-22 05:58:37'),
(39, 'INV_39', 2, '120.00', 'new', '2019-06-22 05:41:49', '2019-06-22 05:58:37'),
(40, 'INV_40', 2, '120.00', 'new', '2019-06-22 05:41:49', '2019-06-22 05:58:37'),
(41, 'INV_41', 2, '120.00', 'new', '2019-06-22 05:41:49', '2019-06-22 05:58:37'),
(42, 'INV_42', 2, '120.00', 'new', '2019-06-22 05:41:49', '2019-06-22 05:58:37'),
(43, 'INV_43', 2, '120.00', 'new', '2019-06-22 05:41:49', '2019-06-22 05:58:37'),
(44, 'INV_44', 2, '120.00', 'new', '2019-06-22 05:41:49', '2019-06-22 05:58:37'),
(45, 'INV_45', 2, '120.00', 'new', '2019-06-22 05:41:49', '2019-06-22 05:58:37'),
(46, 'INV_46', 2, '120.00', 'new', '2019-06-22 05:41:49', '2019-06-22 05:58:37'),
(47, 'INV_47', 2, '120.00', 'new', '2019-06-22 05:41:49', '2019-06-22 05:58:37'),
(48, 'INV_48', 2, '120.00', 'new', '2019-06-22 05:41:49', '2019-06-22 05:58:37'),
(49, 'INV_49', 3, '120.00', 'new', '2019-06-22 05:41:49', '2019-06-22 05:58:37'),
(50, 'INV_50', 2, '120.00', 'new', '2019-06-22 05:42:12', '2019-06-22 05:58:37'),
(51, 'INV_51', 3, '120.00', 'new', '2019-06-22 05:42:12', '2019-06-22 05:58:37');

-- --------------------------------------------------------

--
-- Table structure for table `order_items`
--

CREATE TABLE `order_items` (
  `id` int(11) NOT NULL,
  `order_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `quantity` int(11) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `update_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `order_items`
--

INSERT INTO `order_items` (`id`, `order_id`, `product_id`, `quantity`, `created_at`, `update_at`) VALUES
(1, 2, 4, 3, '2019-06-22 05:50:03', '2019-06-22 08:24:33'),
(2, 2, 5, 5, '2019-06-22 05:50:03', '2019-06-22 08:24:36'),
(3, 2, 6, 5, '2019-06-22 05:51:43', '2019-06-22 08:24:40'),
(4, 2, 7, 3, '2019-06-22 05:51:43', '2019-06-22 08:24:45'),
(5, 1, 2, 5, '2019-06-22 05:51:43', '2019-06-22 05:51:43'),
(6, 1, 2, 3, '2019-06-22 05:51:43', '2019-06-22 05:51:43'),
(7, 1, 2, 5, '2019-06-22 05:51:43', '2019-06-22 05:51:43'),
(8, 1, 2, 3, '2019-06-22 05:51:43', '2019-06-22 05:51:43'),
(9, 1, 2, 5, '2019-06-22 05:51:43', '2019-06-22 05:51:43'),
(10, 1, 2, 3, '2019-06-22 05:51:43', '2019-06-22 05:51:43'),
(11, 1, 2, 5, '2019-06-22 05:51:43', '2019-06-22 05:51:43'),
(12, 1, 2, 3, '2019-06-22 05:51:43', '2019-06-22 05:51:43'),
(13, 1, 2, 5, '2019-06-22 05:51:43', '2019-06-22 05:51:43'),
(14, 1, 2, 3, '2019-06-22 05:51:43', '2019-06-22 05:51:43'),
(15, 1, 2, 5, '2019-06-22 05:51:43', '2019-06-22 05:51:43'),
(16, 1, 2, 3, '2019-06-22 05:51:43', '2019-06-22 05:51:43'),
(17, 1, 2, 5, '2019-06-22 05:51:43', '2019-06-22 05:51:43'),
(18, 1, 2, 3, '2019-06-22 05:51:43', '2019-06-22 05:51:43'),
(19, 1, 2, 5, '2019-06-22 05:51:43', '2019-06-22 05:51:43'),
(20, 1, 2, 3, '2019-06-22 05:51:43', '2019-06-22 05:51:43'),
(21, 1, 2, 5, '2019-06-22 05:51:43', '2019-06-22 05:51:43'),
(22, 1, 2, 3, '2019-06-22 05:51:43', '2019-06-22 05:51:43'),
(23, 1, 2, 5, '2019-06-22 05:51:43', '2019-06-22 05:51:43'),
(24, 1, 2, 3, '2019-06-22 05:51:43', '2019-06-22 05:51:43'),
(25, 1, 2, 5, '2019-06-22 05:51:43', '2019-06-22 05:51:43'),
(26, 1, 2, 3, '2019-06-22 05:51:43', '2019-06-22 05:51:43'),
(27, 1, 2, 5, '2019-06-22 05:51:43', '2019-06-22 05:51:43'),
(28, 1, 2, 3, '2019-06-22 05:51:43', '2019-06-22 05:51:43'),
(29, 1, 2, 5, '2019-06-22 05:51:43', '2019-06-22 05:51:43'),
(30, 1, 2, 3, '2019-06-22 05:51:43', '2019-06-22 05:51:43'),
(31, 1, 2, 5, '2019-06-22 05:51:43', '2019-06-22 05:51:43'),
(32, 1, 2, 3, '2019-06-22 05:51:43', '2019-06-22 05:51:43'),
(33, 1, 2, 5, '2019-06-22 05:51:43', '2019-06-22 05:51:43'),
(34, 1, 2, 3, '2019-06-22 05:51:43', '2019-06-22 05:51:43'),
(35, 1, 2, 5, '2019-06-22 05:51:43', '2019-06-22 05:51:43'),
(36, 1, 2, 3, '2019-06-22 05:51:43', '2019-06-22 05:51:43'),
(37, 1, 2, 5, '2019-06-22 05:51:43', '2019-06-22 05:51:43'),
(38, 1, 2, 3, '2019-06-22 05:51:43', '2019-06-22 05:51:43'),
(39, 1, 2, 5, '2019-06-22 05:51:43', '2019-06-22 05:51:43'),
(40, 1, 2, 3, '2019-06-22 05:51:43', '2019-06-22 05:51:43'),
(41, 1, 2, 5, '2019-06-22 05:51:43', '2019-06-22 05:51:43'),
(42, 1, 2, 3, '2019-06-22 05:51:43', '2019-06-22 05:51:43'),
(43, 1, 2, 5, '2019-06-22 05:51:43', '2019-06-22 05:51:43'),
(44, 1, 2, 3, '2019-06-22 05:51:43', '2019-06-22 05:51:43'),
(45, 1, 2, 5, '2019-06-22 05:51:43', '2019-06-22 05:51:43'),
(46, 1, 2, 3, '2019-06-22 05:51:43', '2019-06-22 05:51:43'),
(47, 1, 2, 5, '2019-06-22 05:51:43', '2019-06-22 05:51:43'),
(48, 1, 2, 3, '2019-06-22 05:51:43', '2019-06-22 05:51:43'),
(49, 1, 2, 5, '2019-06-22 05:51:43', '2019-06-22 05:51:43'),
(50, 1, 2, 3, '2019-06-22 05:51:43', '2019-06-22 05:51:43'),
(51, 1, 2, 5, '2019-06-22 05:51:43', '2019-06-22 05:51:43'),
(52, 1, 2, 3, '2019-06-22 05:51:43', '2019-06-22 05:51:43'),
(53, 1, 2, 5, '2019-06-22 05:51:43', '2019-06-22 05:51:43'),
(54, 1, 2, 3, '2019-06-22 05:51:43', '2019-06-22 05:51:43'),
(55, 1, 2, 5, '2019-06-22 05:51:43', '2019-06-22 05:51:43'),
(56, 1, 2, 3, '2019-06-22 05:51:43', '2019-06-22 05:51:43'),
(57, 1, 2, 5, '2019-06-22 05:51:43', '2019-06-22 05:51:43'),
(58, 1, 2, 3, '2019-06-22 05:51:43', '2019-06-22 05:51:43'),
(59, 1, 2, 3, '2019-06-22 05:51:43', '2019-06-22 05:51:43'),
(60, 1, 2, 5, '2019-06-22 05:51:43', '2019-06-22 05:51:43'),
(61, 1, 2, 3, '2019-06-22 05:51:43', '2019-06-22 05:51:43'),
(62, 1, 2, 5, '2019-06-22 05:51:43', '2019-06-22 05:51:43'),
(63, 1, 2, 3, '2019-06-22 05:51:43', '2019-06-22 05:51:43'),
(64, 1, 2, 5, '2019-06-22 05:51:43', '2019-06-22 05:51:43'),
(65, 1, 2, 3, '2019-06-22 05:51:43', '2019-06-22 05:51:43'),
(66, 1, 2, 5, '2019-06-22 05:51:43', '2019-06-22 05:51:43'),
(67, 1, 2, 3, '2019-06-22 05:51:43', '2019-06-22 05:51:43'),
(68, 1, 2, 5, '2019-06-22 05:51:43', '2019-06-22 05:51:43'),
(69, 1, 2, 3, '2019-06-22 05:51:43', '2019-06-22 05:51:43'),
(70, 1, 2, 5, '2019-06-22 05:51:43', '2019-06-22 05:51:43'),
(71, 1, 2, 3, '2019-06-22 05:51:43', '2019-06-22 05:51:43'),
(72, 1, 2, 5, '2019-06-22 05:51:43', '2019-06-22 05:51:43'),
(73, 1, 2, 3, '2019-06-22 05:51:43', '2019-06-22 05:51:43'),
(74, 1, 2, 5, '2019-06-22 05:51:43', '2019-06-22 05:51:43'),
(75, 1, 2, 3, '2019-06-22 05:51:43', '2019-06-22 05:51:43'),
(76, 1, 2, 5, '2019-06-22 05:51:43', '2019-06-22 05:51:43'),
(77, 1, 2, 3, '2019-06-22 05:51:43', '2019-06-22 05:51:43'),
(78, 1, 2, 5, '2019-06-22 05:51:43', '2019-06-22 05:51:43'),
(79, 1, 2, 3, '2019-06-22 05:51:43', '2019-06-22 05:51:43'),
(80, 1, 2, 5, '2019-06-22 05:51:43', '2019-06-22 05:51:43'),
(81, 1, 2, 3, '2019-06-22 05:51:43', '2019-06-22 05:51:43'),
(82, 1, 2, 5, '2019-06-22 05:51:43', '2019-06-22 05:51:43'),
(83, 1, 2, 3, '2019-06-22 05:51:43', '2019-06-22 05:51:43'),
(84, 1, 2, 5, '2019-06-22 05:51:43', '2019-06-22 05:51:43'),
(85, 1, 2, 3, '2019-06-22 05:51:43', '2019-06-22 05:51:43'),
(86, 1, 2, 5, '2019-06-22 05:51:43', '2019-06-22 05:51:43'),
(87, 1, 2, 3, '2019-06-22 05:51:43', '2019-06-22 05:51:43'),
(88, 1, 2, 5, '2019-06-22 05:51:43', '2019-06-22 05:51:43'),
(89, 1, 2, 3, '2019-06-22 05:51:43', '2019-06-22 05:51:43'),
(90, 1, 2, 5, '2019-06-22 05:51:43', '2019-06-22 05:51:43'),
(91, 1, 2, 3, '2019-06-22 05:51:43', '2019-06-22 05:51:43'),
(92, 1, 2, 5, '2019-06-22 05:51:43', '2019-06-22 05:51:43'),
(93, 1, 2, 3, '2019-06-22 05:51:43', '2019-06-22 05:51:43'),
(94, 1, 2, 5, '2019-06-22 05:51:43', '2019-06-22 05:51:43'),
(95, 1, 2, 3, '2019-06-22 05:51:43', '2019-06-22 05:51:43'),
(96, 1, 2, 5, '2019-06-22 05:51:43', '2019-06-22 05:51:43'),
(97, 1, 2, 3, '2019-06-22 05:51:43', '2019-06-22 05:51:43'),
(98, 1, 2, 5, '2019-06-22 05:51:43', '2019-06-22 05:51:43'),
(99, 1, 2, 3, '2019-06-22 05:51:43', '2019-06-22 05:51:43'),
(100, 1, 2, 5, '2019-06-22 05:51:43', '2019-06-22 05:51:43'),
(101, 1, 2, 3, '2019-06-22 05:51:43', '2019-06-22 05:51:43'),
(102, 1, 2, 5, '2019-06-22 05:51:43', '2019-06-22 05:51:43'),
(103, 1, 2, 3, '2019-06-22 05:51:43', '2019-06-22 05:51:43'),
(104, 1, 2, 5, '2019-06-22 05:51:43', '2019-06-22 05:51:43'),
(105, 1, 2, 3, '2019-06-22 05:51:43', '2019-06-22 05:51:43'),
(106, 1, 2, 5, '2019-06-22 05:51:43', '2019-06-22 05:51:43'),
(107, 1, 2, 3, '2019-06-22 05:51:43', '2019-06-22 05:51:43'),
(108, 1, 2, 5, '2019-06-22 05:51:43', '2019-06-22 05:51:43'),
(109, 1, 2, 3, '2019-06-22 05:51:43', '2019-06-22 05:51:43'),
(110, 1, 2, 5, '2019-06-22 05:51:43', '2019-06-22 05:51:43'),
(111, 1, 2, 3, '2019-06-22 05:51:43', '2019-06-22 05:51:43'),
(112, 1, 2, 5, '2019-06-22 05:51:43', '2019-06-22 05:51:43'),
(113, 1, 2, 3, '2019-06-22 05:51:43', '2019-06-22 05:51:43'),
(114, 1, 2, 5, '2019-06-22 05:51:43', '2019-06-22 05:51:43'),
(115, 1, 2, 3, '2019-06-22 05:51:43', '2019-06-22 05:51:43'),
(116, 1, 2, 5, '2019-06-22 05:51:43', '2019-06-22 05:51:43'),
(117, 1, 2, 3, '2019-06-22 05:51:43', '2019-06-22 05:51:43'),
(118, 1, 2, 5, '2019-06-22 05:51:43', '2019-06-22 05:51:43'),
(119, 1, 2, 3, '2019-06-22 05:51:43', '2019-06-22 05:51:43'),
(120, 1, 2, 5, '2019-06-22 05:51:43', '2019-06-22 05:51:43'),
(121, 1, 2, 3, '2019-06-22 05:51:43', '2019-06-22 05:51:43'),
(122, 1, 2, 5, '2019-06-22 05:51:43', '2019-06-22 05:51:43'),
(123, 1, 2, 3, '2019-06-22 05:51:43', '2019-06-22 05:51:43'),
(124, 1, 2, 5, '2019-06-22 05:51:43', '2019-06-22 05:51:43'),
(125, 1, 2, 3, '2019-06-22 05:51:43', '2019-06-22 05:51:43'),
(126, 1, 2, 5, '2019-06-22 05:51:43', '2019-06-22 05:51:43');

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(191) COLLATE utf8_unicode_ci NOT NULL,
  `token` varchar(191) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `permissions`
--

CREATE TABLE `permissions` (
  `ability_id` int(10) UNSIGNED NOT NULL,
  `entity_id` int(10) UNSIGNED NOT NULL,
  `entity_type` varchar(191) COLLATE utf8_unicode_ci NOT NULL,
  `forbidden` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `permissions`
--

INSERT INTO `permissions` (`ability_id`, `entity_id`, `entity_type`, `forbidden`) VALUES
(1, 1, 'roles', 0),
(2, 1, 'roles', 0),
(3, 1, 'roles', 0),
(4, 1, 'roles', 0),
(5, 2, 'roles', 0),
(4, 3, 'roles', 0),
(3, 3, 'roles', 0);

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `price` decimal(10,2) NOT NULL,
  `in_stock` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `name`, `price`, `in_stock`, `created_at`, `updated_at`) VALUES
(1, 'adipisci', '51.00', 'In stock', '2019-06-21 05:46:35', '2019-06-21 05:46:35'),
(2, 'dolores', '57.00', 'In stock', '2019-06-21 05:46:35', '2019-06-21 05:46:35'),
(3, 'natus', '47.00', 'Out Of Stock', '2019-06-21 05:46:35', '2019-06-21 05:46:35'),
(4, 'quisquam', '32.00', 'Out Of Stock', '2019-06-21 05:46:35', '2019-06-21 05:46:35'),
(5, 'enim', '18.00', 'In stock', '2019-06-21 05:46:35', '2019-06-21 05:46:35'),
(6, 'dignissimos', '45.00', 'In stock', '2019-06-21 05:46:35', '2019-06-21 05:46:35'),
(7, 'sunt', '28.00', 'Out Of Stock', '2019-06-21 05:46:35', '2019-06-21 05:46:35'),
(8, 'neque', '80.00', 'In stock', '2019-06-21 05:46:35', '2019-06-21 05:46:35'),
(9, 'nemo', '70.00', 'Out Of Stock', '2019-06-21 05:46:35', '2019-06-21 05:46:35'),
(10, 'eos', '99.00', 'In stock', '2019-06-21 05:46:35', '2019-06-21 05:46:35'),
(11, 'perspiciatis', '6.00', 'In stock', '2019-06-21 05:46:35', '2019-06-21 05:46:35'),
(12, 'perferendis', '20.00', 'Out Of Stock', '2019-06-21 05:46:35', '2019-06-21 05:46:35'),
(13, 'architecto', '9.00', 'Out Of Stock', '2019-06-21 05:46:35', '2019-06-21 05:46:35'),
(14, 'ipsa', '34.00', 'Out Of Stock', '2019-06-21 05:46:35', '2019-06-21 05:46:35'),
(15, 'quasi', '91.00', 'In stock', '2019-06-21 05:46:35', '2019-06-21 05:46:35'),
(16, 'quia', '11.00', 'In stock', '2019-06-21 05:46:35', '2019-06-21 05:46:35'),
(17, 'et', '31.00', 'In stock', '2019-06-21 05:46:35', '2019-06-21 05:46:35'),
(18, 'iste', '68.00', 'Out Of Stock', '2019-06-21 05:46:35', '2019-06-21 05:46:35'),
(19, 'eaque', '86.00', 'In stock', '2019-06-21 05:46:35', '2019-06-21 05:46:35'),
(20, 'ut', '58.00', 'Out Of Stock', '2019-06-21 05:46:35', '2019-06-21 05:46:35'),
(21, 'consequatur', '6.00', 'In stock', '2019-06-21 05:46:35', '2019-06-21 05:46:35'),
(22, 'vero', '76.00', 'In stock', '2019-06-21 05:46:35', '2019-06-21 05:46:35'),
(23, 'praesentium', '37.00', 'In stock', '2019-06-21 05:46:35', '2019-06-21 05:46:35'),
(24, 'autem', '98.00', 'Out Of Stock', '2019-06-21 05:46:35', '2019-06-21 05:46:35'),
(25, 'qui', '51.00', 'In stock', '2019-06-21 05:46:35', '2019-06-21 05:46:35'),
(26, 'eaque', '57.00', 'Out Of Stock', '2019-06-21 05:46:35', '2019-06-21 05:46:35'),
(27, 'aliquid', '25.00', 'Out Of Stock', '2019-06-21 05:46:35', '2019-06-21 05:46:35'),
(28, 'autem', '84.00', 'In stock', '2019-06-21 05:46:35', '2019-06-21 05:46:35'),
(29, 'ea', '19.00', 'In stock', '2019-06-21 05:46:35', '2019-06-21 05:46:35'),
(30, 'facilis', '22.00', 'Out Of Stock', '2019-06-21 05:46:35', '2019-06-21 05:46:35'),
(31, 'praesentium', '65.00', 'In stock', '2019-06-21 05:46:35', '2019-06-21 05:46:35'),
(32, 'in', '17.00', 'Out Of Stock', '2019-06-21 05:46:35', '2019-06-21 05:46:35'),
(33, 'iste', '26.00', 'Out Of Stock', '2019-06-21 05:46:35', '2019-06-21 05:46:35'),
(34, 'corporis', '34.00', 'In stock', '2019-06-21 05:46:35', '2019-06-21 05:46:35'),
(35, 'earum', '26.00', 'Out Of Stock', '2019-06-21 05:46:35', '2019-06-21 05:46:35'),
(36, 'provident', '97.00', 'In stock', '2019-06-21 05:46:35', '2019-06-21 05:46:35'),
(37, 'vel', '60.00', 'In stock', '2019-06-21 05:46:35', '2019-06-21 05:46:35'),
(38, 'laborum', '90.00', 'In stock', '2019-06-21 05:46:35', '2019-06-21 05:46:35'),
(39, 'omnis', '5.00', 'In stock', '2019-06-21 05:46:35', '2019-06-21 05:46:35'),
(40, 'blanditiis', '0.00', 'Out Of Stock', '2019-06-21 05:46:35', '2019-06-21 05:46:35'),
(41, 'optio', '66.00', 'Out Of Stock', '2019-06-21 05:46:35', '2019-06-21 05:46:35'),
(42, 'in', '98.00', 'In stock', '2019-06-21 05:46:35', '2019-06-21 05:46:35'),
(43, 'minima', '64.00', 'Out Of Stock', '2019-06-21 05:46:35', '2019-06-21 05:46:35'),
(44, 'et', '35.00', 'In stock', '2019-06-21 05:46:35', '2019-06-21 05:46:35'),
(45, 'minima', '52.00', 'Out Of Stock', '2019-06-21 05:46:35', '2019-06-21 05:46:35'),
(46, 'debitis', '82.00', 'Out Of Stock', '2019-06-21 05:46:35', '2019-06-21 05:46:35'),
(47, 'autem', '58.00', 'Out Of Stock', '2019-06-21 05:46:35', '2019-06-21 05:46:35'),
(48, 'quasi', '9.00', 'Out Of Stock', '2019-06-21 05:46:35', '2019-06-21 05:46:35'),
(49, 'perferendis', '41.00', 'Out Of Stock', '2019-06-21 05:46:35', '2019-06-21 05:46:35'),
(50, 'ea', '5.00', 'Out Of Stock', '2019-06-21 05:46:35', '2019-06-21 05:46:35'),
(51, 'nostrum', '63.00', 'Out Of Stock', '2019-06-21 05:46:35', '2019-06-21 05:46:35'),
(52, 'molestiae', '10.00', 'In stock', '2019-06-21 05:46:35', '2019-06-21 05:46:35'),
(53, 'doloremque', '35.00', 'Out Of Stock', '2019-06-21 05:46:35', '2019-06-21 05:46:35'),
(54, 'est', '76.00', 'In stock', '2019-06-21 05:46:35', '2019-06-21 05:46:35'),
(55, 'perspiciatis', '39.00', 'In stock', '2019-06-21 05:46:35', '2019-06-21 05:46:35'),
(56, 'sunt', '47.00', 'In stock', '2019-06-21 05:46:35', '2019-06-21 05:46:35'),
(57, 'voluptas', '28.00', 'In stock', '2019-06-21 05:46:35', '2019-06-21 05:46:35'),
(58, 'incidunt', '0.00', 'In stock', '2019-06-21 05:46:35', '2019-06-21 05:46:35'),
(59, 'error', '97.00', 'In stock', '2019-06-21 05:46:35', '2019-06-21 05:46:35'),
(60, 'consequuntur', '59.00', 'In stock', '2019-06-21 05:46:35', '2019-06-21 05:46:35'),
(61, 'ea', '15.00', 'In stock', '2019-06-21 05:46:35', '2019-06-21 05:46:35'),
(62, 'voluptates', '78.00', 'Out Of Stock', '2019-06-21 05:46:35', '2019-06-21 05:46:35'),
(63, 'nesciunt', '81.00', 'Out Of Stock', '2019-06-21 05:46:35', '2019-06-21 05:46:35'),
(64, 'quae', '95.00', 'Out Of Stock', '2019-06-21 05:46:35', '2019-06-21 05:46:35'),
(65, 'soluta', '67.00', 'Out Of Stock', '2019-06-21 05:46:35', '2019-06-21 05:46:35'),
(66, 'molestiae', '24.00', 'In stock', '2019-06-21 05:46:35', '2019-06-21 05:46:35'),
(67, 'ea', '99.00', 'Out Of Stock', '2019-06-21 05:46:35', '2019-06-21 05:46:35'),
(68, 'animi', '83.00', 'Out Of Stock', '2019-06-21 05:46:35', '2019-06-21 05:46:35'),
(69, 'recusandae', '2.00', 'Out Of Stock', '2019-06-21 05:46:35', '2019-06-21 05:46:35'),
(70, 'libero', '9.00', 'Out Of Stock', '2019-06-21 05:46:35', '2019-06-21 05:46:35'),
(71, 'neque', '68.00', 'Out Of Stock', '2019-06-21 05:46:35', '2019-06-21 05:46:35'),
(72, 'neque', '63.00', 'In stock', '2019-06-21 05:46:35', '2019-06-21 05:46:35'),
(73, 'voluptates', '68.00', 'Out Of Stock', '2019-06-21 05:46:35', '2019-06-21 05:46:35'),
(74, 'placeat', '66.00', 'Out Of Stock', '2019-06-21 05:46:35', '2019-06-21 05:46:35'),
(75, 'quia', '98.00', 'Out Of Stock', '2019-06-21 05:46:35', '2019-06-21 05:46:35'),
(76, 'ipsam', '19.00', 'In stock', '2019-06-21 05:46:35', '2019-06-21 05:46:35'),
(77, 'voluptatibus', '45.00', 'Out Of Stock', '2019-06-21 05:46:35', '2019-06-21 05:46:35'),
(78, 'porro', '65.00', 'Out Of Stock', '2019-06-21 05:46:35', '2019-06-21 05:46:35'),
(79, 'eos', '93.00', 'In stock', '2019-06-21 05:46:35', '2019-06-21 05:46:35'),
(80, 'corporis', '0.00', 'In stock', '2019-06-21 05:46:35', '2019-06-21 05:46:35'),
(81, 'earum', '85.00', 'In stock', '2019-06-21 05:46:35', '2019-06-21 05:46:35'),
(82, 'ut', '1.00', 'In stock', '2019-06-21 05:46:35', '2019-06-21 05:46:35'),
(83, 'aspernatur', '54.00', 'Out Of Stock', '2019-06-21 05:46:35', '2019-06-21 05:46:35'),
(84, 'nobis', '18.00', 'In stock', '2019-06-21 05:46:35', '2019-06-21 05:46:35'),
(85, 'et', '22.00', 'Out Of Stock', '2019-06-21 05:46:35', '2019-06-21 05:46:35'),
(86, 'quia', '17.00', 'Out Of Stock', '2019-06-21 05:46:35', '2019-06-21 05:46:35'),
(87, 'molestiae', '33.00', 'Out Of Stock', '2019-06-21 05:46:35', '2019-06-21 05:46:35'),
(88, 'soluta', '34.00', 'Out Of Stock', '2019-06-21 05:46:35', '2019-06-21 05:46:35'),
(89, 'culpa', '10.00', 'Out Of Stock', '2019-06-21 05:46:35', '2019-06-21 05:46:35'),
(90, 'iure', '12.00', 'Out Of Stock', '2019-06-21 05:46:35', '2019-06-21 05:46:35'),
(91, 'molestiae', '5.00', 'In stock', '2019-06-21 05:46:35', '2019-06-21 05:46:35'),
(92, 'minima', '52.00', 'Out Of Stock', '2019-06-21 05:46:35', '2019-06-21 05:46:35'),
(93, 'minima', '9.00', 'In stock', '2019-06-21 05:46:35', '2019-06-21 05:46:35'),
(94, 'sit', '44.00', 'Out Of Stock', '2019-06-21 05:46:35', '2019-06-21 05:46:35'),
(95, 'inventore', '57.00', 'Out Of Stock', '2019-06-21 05:46:35', '2019-06-21 05:46:35'),
(96, 'molestias', '20.00', 'In stock', '2019-06-21 05:46:35', '2019-06-21 05:46:35'),
(97, 'eum', '74.00', 'In stock', '2019-06-21 05:46:35', '2019-06-21 05:46:35'),
(98, 'sequi', '96.00', 'In stock', '2019-06-21 05:46:35', '2019-06-21 05:46:35'),
(99, 'eveniet', '22.00', 'Out Of Stock', '2019-06-21 05:46:35', '2019-06-21 05:46:35'),
(100, 'dolores', '96.00', 'In stock', '2019-06-21 05:46:35', '2019-06-21 05:46:35');

-- --------------------------------------------------------

--
-- Table structure for table `roles`
--

CREATE TABLE `roles` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8_unicode_ci NOT NULL,
  `title` varchar(191) COLLATE utf8_unicode_ci DEFAULT NULL,
  `level` int(10) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `roles`
--

INSERT INTO `roles` (`id`, `name`, `title`, `level`, `created_at`, `updated_at`) VALUES
(1, 'administrator', NULL, NULL, '2019-06-21 01:35:10', '2019-06-21 01:35:10'),
(2, 'user-manager', NULL, NULL, '2019-06-21 01:38:17', '2019-06-21 01:38:17'),
(3, 'shop-manager', NULL, NULL, '2019-06-21 01:38:43', '2019-06-21 01:38:43');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8_unicode_ci NOT NULL,
  `password` varchar(191) COLLATE utf8_unicode_ci NOT NULL,
  `remember_token` varchar(191) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Admin', 'admin@admin.com', '$2y$10$3DhlyPmv2TRx53kX9uJJY.53DU7hEpSFythK.F0wiAZr/CSE6Neye', 'BNUdjhFBRwhvs1eRLexdURAxW6CBi2x1ljx7hXi1iasyNMFmJFqoox9Wjd8a', '2019-06-21 01:35:10', '2019-06-21 01:35:10'),
(2, 'shop-manager', 'shop@chapter247.com', '$2y$10$wCjev6H3M3oB/98HIpgDLe3ABQWNicDVSrLCZ/Bl.hzr9SpFKpya6', 'P0sSL8h4UCzvVC2Jzeb0nomjiXH2LqMr9YRmeYXTl9Z8LtVcOYHgHKQObMGf', '2019-06-21 01:40:52', '2019-06-21 01:40:52'),
(3, 'user-manager', 'user@gmail.com', '$2y$10$Ko1R7TfYrms5FMDAxq2Pue48JOJUMBrbKdRqBRnAYE6sCW89aL36W', 'jOoZJnqUKZkl5QWoyI9Www4fVGPNfKiMWhvwcdaNu8GCc8jNp6R5fCpzxAMM', '2019-06-21 01:42:18', '2019-06-21 01:42:18');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `abilities`
--
ALTER TABLE `abilities`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `abilities_unique_index` (`name`,`entity_id`,`entity_type`,`only_owned`);

--
-- Indexes for table `assigned_roles`
--
ALTER TABLE `assigned_roles`
  ADD KEY `assigned_roles_entity_id_entity_type_index` (`entity_id`,`entity_type`),
  ADD KEY `assigned_roles_role_id_index` (`role_id`);

--
-- Indexes for table `customers`
--
ALTER TABLE `customers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `order_items`
--
ALTER TABLE `order_items`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `permissions`
--
ALTER TABLE `permissions`
  ADD KEY `permissions_entity_id_entity_type_index` (`entity_id`,`entity_type`),
  ADD KEY `permissions_ability_id_index` (`ability_id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `roles_name_unique` (`name`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `abilities`
--
ALTER TABLE `abilities`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `customers`
--
ALTER TABLE `customers`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=201;
--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;
--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=52;
--
-- AUTO_INCREMENT for table `order_items`
--
ALTER TABLE `order_items`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=127;
--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=101;
--
-- AUTO_INCREMENT for table `roles`
--
ALTER TABLE `roles`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
