-- phpMyAdmin SQL Dump
-- version 4.9.0.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Tempo de geração: 25-Out-2019 às 19:33
-- Versão do servidor: 10.3.17-MariaDB-0+deb10u1
-- versão do PHP: 7.3.9-1~deb10u1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Banco de dados: `web3`
--

-- --------------------------------------------------------

--
-- Estrutura da tabela `aluno`
--

CREATE TABLE `aluno` (
  `id` int(11) NOT NULL,
  `nome` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `celular` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `aluno`
--

INSERT INTO `aluno` (`id`, `nome`, `email`, `celular`) VALUES
(1, 'fulano', 'fulano@gmail.com', '1234'),
(2, 'ciclano', 'ciclano@hotmail.com', '2222');

-- --------------------------------------------------------

--
-- Estrutura da tabela `area`
--

CREATE TABLE `area` (
  `id` int(11) NOT NULL,
  `descricao` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `area`
--

INSERT INTO `area` (`id`, `descricao`) VALUES
(1, 'Desenvolvimento'),
(2, 'Redes'),
(3, 'Banco de Dados'),
(4, 'Engenharia de Software'),
(5, 'Dispositivos Móveis'),
(6, 'Programação Java'),
(7, 'Matematica'),
(16, 'Algoritmo'),
(17, 'e-commerce'),
(19, 'nova area');

-- --------------------------------------------------------

--
-- Estrutura da tabela `horario`
--

CREATE TABLE `horario` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `inicio` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `fim` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `dia` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `professor_id` int(10) UNSIGNED NOT NULL,
  `sala_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Extraindo dados da tabela `horario`
--

INSERT INTO `horario` (`id`, `inicio`, `fim`, `dia`, `professor_id`, `sala_id`, `created_at`, `updated_at`) VALUES
(1, '09:00', '11:30', 'seg', 148, 6, '2019-10-23 06:14:07', '2019-10-23 06:14:07');

-- --------------------------------------------------------

--
-- Estrutura da tabela `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Extraindo dados da tabela `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(4, '2019_10_23_014656_create_salas_table', 2),
(5, '2019_10_23_015532_create_horarios_table', 3);

-- --------------------------------------------------------

--
-- Estrutura da tabela `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estrutura da tabela `professor`
--

CREATE TABLE `professor` (
  `id` int(11) NOT NULL,
  `nome` varchar(100) NOT NULL,
  `area_id` int(11) NOT NULL,
  `data_nascimento` date NOT NULL,
  `salario` decimal(8,2) NOT NULL,
  `foto` varchar(32) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `professor`
--

INSERT INTO `professor` (`id`, `nome`, `area_id`, `data_nascimento`, `salario`, `foto`) VALUES
(1, 'Márcio Osshiro', 1, '2010-01-15', '1000.00', 'Sy5GHcrRBf8OKINTpJQBw91QQy1.jpg'),
(2, 'Jiyan Yari', 7, '2010-10-10', '1000.00', '21kJJDIEXPiNvx2p3azAR59jzQ0.jpg'),
(3, 'Thales Duarte', 3, '2019-10-31', '0.00', 'iLUTrFoyHSWuoIucoI4m4yZ5m2o.jpg'),
(5, 'prof. Celeny', 4, '2019-10-01', '0.00', '0vs3QkuIVRlkexNoeS4qBixABtk.jpg'),
(6, 'Jonathan Silva', 17, '2019-10-12', '0.00', 'nhFV6MWg5V28J21YOhWWARRIMUU.jpg'),
(7, 'Jeferson', 6, '0000-00-00', '0.00', ''),
(9, 'Cassima', 1, '0000-00-00', '0.00', ''),
(38, '9VCrSmOu0Q', 1, '2010-10-01', '2000.00', ''),
(39, 'Mrs. Hattie Connelly', 1, '2013-06-08', '16638.35', ''),
(40, 'Dillan Skiles II', 1, '1970-07-31', '11101.56', ''),
(41, 'Mathias Hackett', 1, '1970-08-11', '9663.99', ''),
(42, 'Odessa Renner', 1, '1999-06-22', '12904.57', ''),
(43, 'Ada Rolfson', 1, '1995-11-18', '8786.82', ''),
(44, 'Prof. Nelson Franecki Jr.', 1, '1978-05-19', '15448.33', ''),
(45, 'Hipolito Hettinger', 1, '1985-03-27', '9600.56', ''),
(46, 'Sally Schuster', 1, '1976-01-06', '14718.01', ''),
(47, 'Prof. Sienna Schroeder', 1, '1973-01-05', '2039.73', ''),
(48, 'Terrill Ruecker', 1, '2008-02-01', '18170.80', ''),
(49, 'Dr. Angelita Abernathy I', 1, '1989-12-20', '7915.33', ''),
(50, 'Mr. Moshe Roob Sr.', 1, '2014-01-24', '14715.62', ''),
(51, 'Mr. Chaz Runolfsson', 6, '1999-04-28', '11531.73', ''),
(52, 'Damon Langworth', 17, '1982-01-03', '11745.35', ''),
(53, 'Terrence Keeling V', 16, '1983-12-13', '13937.38', ''),
(54, 'Mrs. Kattie Koss', 7, '1995-12-05', '17724.82', ''),
(55, 'Miss Jeanne Gutmann', 5, '2011-07-21', '16810.64', ''),
(56, 'Miss Alena Beatty', 2, '1973-11-30', '13570.69', ''),
(57, 'Kenton Lakin', 17, '1997-06-10', '18492.68', ''),
(58, 'Prof. Genoveva Graham Sr.', 5, '1983-08-11', '9237.20', ''),
(59, 'Daisha Sawayn', 16, '2017-01-18', '687.50', ''),
(60, 'Omari West', 4, '1989-01-07', '3353.01', ''),
(61, 'Brisa Glover', 2, '1993-04-15', '5166.46', ''),
(62, 'Vinnie Grimes', 1, '1979-06-22', '19901.90', ''),
(63, 'Bria Kshlerin', 4, '2010-08-02', '18369.23', ''),
(64, 'Delores Jacobson DVM', 17, '1977-12-28', '11875.70', ''),
(65, 'Arno Cremin DDS', 17, '1975-05-24', '13778.15', ''),
(66, 'Arlene Legros', 1, '2010-10-12', '17853.55', ''),
(67, 'Mrs. Desiree Shanahan III', 7, '1983-02-22', '1284.20', ''),
(68, 'Donna Herman Sr.', 6, '1998-06-02', '15734.98', ''),
(69, 'Dr. Karli Pfeffer Sr.', 3, '2004-07-25', '19572.68', ''),
(70, 'Prof. Marvin Baumbach', 1, '1998-06-02', '12813.72', ''),
(71, 'Juliana Eichmann', 3, '2008-09-06', '11812.28', ''),
(72, 'Terence Hegmann', 7, '1979-06-27', '2096.84', ''),
(73, 'Chauncey Ritchie', 2, '2008-07-19', '10329.82', ''),
(74, 'Dena Spinka', 17, '1983-10-06', '12607.33', ''),
(75, 'Ines Kuhn Sr.', 5, '1979-10-12', '4324.35', ''),
(76, 'Deanna Deckow', 16, '1985-11-12', '11850.13', ''),
(77, 'Eldred Pouros', 2, '1987-04-25', '14510.78', ''),
(78, 'Mr. Newell DuBuque Jr.', 19, '1975-01-13', '307.36', ''),
(79, 'Marta Stracke', 7, '2000-02-28', '11056.59', ''),
(80, 'Diamond Blick', 7, '2015-11-20', '16162.18', ''),
(81, 'Einar Yundt', 3, '2005-10-21', '3924.17', ''),
(82, 'Carmine Becker', 1, '2012-05-26', '1095.18', ''),
(83, 'Dr. Monique Kreiger II', 17, '2002-06-29', '16956.39', ''),
(84, 'Miss Abbey Johnson DVM', 4, '2003-04-19', '15941.29', ''),
(85, 'Prof. Royal Emmerich', 7, '1991-05-28', '11957.04', ''),
(86, 'Bobby Larkin', 2, '1982-01-23', '18169.61', ''),
(87, 'Ms. Meghan Cremin MD', 2, '1990-12-23', '5714.82', ''),
(88, 'Joanie Veum', 1, '1972-09-10', '3466.48', ''),
(89, 'Tiana Corwin', 16, '2000-08-11', '10099.45', ''),
(90, 'Jaydon O\'Reilly', 3, '2008-04-15', '15112.09', ''),
(91, 'Alene Rogahn', 17, '1995-08-27', '9143.79', ''),
(92, 'Dr. Thomas Cremin DDS', 16, '1981-07-02', '2492.82', ''),
(93, 'Aliya Upton', 6, '1988-06-25', '16833.65', ''),
(94, 'Dr. Daniella Wisoky', 7, '1976-03-19', '13315.31', ''),
(95, 'Mr. Terrence Dibbert', 7, '1999-12-23', '18592.92', ''),
(96, 'Tyshawn Welch', 5, '1978-05-07', '16157.28', ''),
(97, 'Elisha Reynolds II', 1, '1982-06-10', '19469.29', ''),
(98, 'Blanca Kiehn', 3, '1976-03-31', '16059.18', ''),
(99, 'Rita Beier', 3, '1985-10-18', '19647.06', ''),
(100, 'Dorris Hermiston PhD', 7, '2013-02-01', '15939.51', ''),
(101, 'Omer Hamill', 1, '1975-11-14', '13826.60', ''),
(102, 'Khalid McDermott', 4, '2015-07-06', '16454.35', ''),
(103, 'Cordell Paucek', 1, '1982-04-19', '13592.79', ''),
(104, 'Gavin Parker', 19, '1996-08-18', '16171.31', ''),
(105, 'Mrs. Ashtyn Kemmer', 5, '2012-03-11', '6012.92', ''),
(106, 'Henri Lowe', 4, '1975-06-28', '7971.52', ''),
(107, 'Genesis Osinski PhD', 3, '1986-03-16', '9856.56', ''),
(108, 'Jade Upton', 17, '1998-07-24', '13034.25', ''),
(109, 'Prof. Cleta Dietrich IV', 1, '1997-02-19', '1958.16', ''),
(110, 'Maxwell Kuhn', 1, '2017-01-14', '11437.12', ''),
(111, 'Mikel Olson', 1, '1985-11-25', '8939.56', ''),
(112, 'Mr. Hassan Treutel V', 4, '1996-03-04', '7753.10', ''),
(113, 'Lemuel Hand', 19, '1979-01-05', '10934.88', ''),
(114, 'Jeromy Reichel', 7, '1986-03-01', '6150.94', ''),
(115, 'Miss Madonna Ankunding', 3, '2007-05-25', '8833.11', ''),
(116, 'Magnus Bogisich', 5, '2016-08-14', '18887.21', ''),
(117, 'Dr. Dane Towne', 16, '2000-01-24', '13925.82', ''),
(118, 'Dr. Marquis Bergstrom', 16, '1993-06-22', '15917.84', ''),
(119, 'Samson Lemke', 7, '1992-11-07', '5407.01', ''),
(120, 'Hector Crona', 4, '2014-07-02', '2512.89', ''),
(121, 'Francesco Hayes', 17, '1993-10-24', '13722.16', ''),
(122, 'Prof. Skyla Labadie', 7, '2016-02-10', '14442.70', ''),
(123, 'Summer Hodkiewicz V', 19, '2003-09-05', '8576.70', ''),
(124, 'Keon Zboncak I', 7, '1999-09-22', '10199.42', ''),
(125, 'Nichole Haag', 19, '2006-12-03', '19725.67', ''),
(126, 'Dr. Madalyn Nader III', 4, '1978-08-28', '14892.42', ''),
(127, 'Ayana Fay', 6, '2018-04-23', '5794.78', ''),
(128, 'Mrs. Leanne O\'Kon', 6, '1973-06-09', '14940.46', ''),
(129, 'Dr. Maude Kovacek', 7, '1990-06-28', '3119.31', ''),
(130, 'Felicia Corwin', 1, '2015-06-15', '6214.21', ''),
(131, 'Jonatan Bode', 7, '2012-02-18', '14205.11', ''),
(132, 'Leann Hermiston', 17, '2004-06-30', '13133.38', ''),
(133, 'Dr. Thea Kuhlman PhD', 3, '1995-12-11', '8785.49', ''),
(134, 'Laurel Eichmann PhD', 16, '1993-01-09', '3984.15', ''),
(135, 'Katelin Mertz MD', 3, '2016-02-07', '1660.63', ''),
(136, 'Clemmie Williamson IV', 2, '1990-07-23', '13500.85', ''),
(137, 'Celine Nader MD', 7, '2017-09-23', '15590.89', ''),
(138, 'Ole Satterfield', 4, '2002-06-14', '717.96', ''),
(139, 'Hobart Hermann DVM', 16, '1984-01-25', '10858.93', ''),
(140, 'Roman Hintz', 3, '1980-03-17', '7339.93', ''),
(141, 'Destiney VonRueden PhD', 16, '2014-07-04', '7259.17', ''),
(142, 'Bruce Hyatt', 16, '2004-02-20', '13759.29', ''),
(143, 'Mrs. Eulalia Labadie', 16, '2008-01-20', '19789.71', ''),
(144, 'Stephan Johnston', 5, '1971-12-16', '276.41', ''),
(145, 'Bertrand Stehr', 1, '2018-10-13', '6689.87', ''),
(146, 'Hailey Cormier', 4, '1991-11-07', '2721.01', ''),
(147, 'Dino Harris', 2, '2007-03-11', '3670.81', ''),
(148, 'Marge Nader', 3, '1992-03-04', '14793.30', ''),
(149, 'dfdfdj kjkdfkdjkf', 1, '2019-10-18', '111111.00', 'a4gx6EIrtaCEksaKmnsR5HmvR8a.jpg');

-- --------------------------------------------------------

--
-- Estrutura da tabela `sala`
--

CREATE TABLE `sala` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `descricao` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Extraindo dados da tabela `sala`
--

INSERT INTO `sala` (`id`, `descricao`, `created_at`, `updated_at`) VALUES
(1, 'LAB D201', '2019-10-23 06:11:34', '2019-10-23 06:11:34'),
(2, 'LAB D202', '2019-10-23 06:11:34', '2019-10-23 06:11:34'),
(3, 'LAB D203', '2019-10-23 06:11:34', '2019-10-23 06:11:34'),
(4, 'LAB D204', '2019-10-23 06:11:34', '2019-10-23 06:11:34'),
(5, 'LAB D205', '2019-10-23 06:11:34', '2019-10-23 06:11:34'),
(6, 'LAB D206', '2019-10-23 06:11:34', '2019-10-23 06:11:34');

-- --------------------------------------------------------

--
-- Estrutura da tabela `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Extraindo dados da tabela `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Márcio Osshiro', 'marcio.osshiro@ifms.edu.br', NULL, '$2y$10$UXpnUeybBhOvdG28bW8ZDubZIVU0sfC32/1bg4w0VJ3OSe0tfx18K', 'koS39mX6PzBqhC939PuPjko2JgPeXxpmbUjDwaqH5g3Az87AwYdN8H0MZJFL', '2019-09-25 06:28:01', '2019-10-08 00:14:16'),
(3, 'admin', 'admin@gmail.com', NULL, '$2y$10$UQ9y8P4klZ/D4eF9VPD/ceyrufBQLHPDKhj6kd2lwD4VTDe42qX9C', NULL, '2019-10-02 05:49:05', '2019-10-02 05:49:05');

--
-- Índices para tabelas despejadas
--

--
-- Índices para tabela `aluno`
--
ALTER TABLE `aluno`
  ADD PRIMARY KEY (`id`);

--
-- Índices para tabela `area`
--
ALTER TABLE `area`
  ADD PRIMARY KEY (`id`);

--
-- Índices para tabela `horario`
--
ALTER TABLE `horario`
  ADD PRIMARY KEY (`id`);

--
-- Índices para tabela `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Índices para tabela `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Índices para tabela `professor`
--
ALTER TABLE `professor`
  ADD PRIMARY KEY (`id`);

--
-- Índices para tabela `sala`
--
ALTER TABLE `sala`
  ADD PRIMARY KEY (`id`);

--
-- Índices para tabela `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT de tabelas despejadas
--

--
-- AUTO_INCREMENT de tabela `aluno`
--
ALTER TABLE `aluno`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de tabela `area`
--
ALTER TABLE `area`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT de tabela `horario`
--
ALTER TABLE `horario`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de tabela `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT de tabela `professor`
--
ALTER TABLE `professor`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=150;

--
-- AUTO_INCREMENT de tabela `sala`
--
ALTER TABLE `sala`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT de tabela `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
