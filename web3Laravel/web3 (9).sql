-- phpMyAdmin SQL Dump
-- version 4.9.0.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Tempo de geração: 29-Nov-2019 às 18:25
-- Versão do servidor: 10.3.17-MariaDB-0+deb10u1
-- versão do PHP: 7.3.11-1~deb10u1

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
(1, '09:00', '11:30', 'seg', 148, 6, '2019-10-23 06:14:07', '2019-10-23 06:14:07'),
(3, '07:00', '07:30', 'sab', 148, 1, '2019-10-26 03:55:09', '2019-10-26 03:55:09'),
(5, '22:45', '23:59', 'sex', 1, 6, '2019-10-26 03:56:28', '2019-10-26 03:56:28');

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
(5, '2019_10_23_015532_create_horarios_table', 3),
(6, '2019_11_06_020737_create_social_google_accounts_table', 4);

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
  `foto` varchar(32) NOT NULL,
  `email` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `professor`
--

INSERT INTO `professor` (`id`, `nome`, `area_id`, `data_nascimento`, `salario`, `foto`, `email`) VALUES
(1, 'Márcio Osshiro', 1, '2019-11-29', '1000.00', '', 'marcio.osshiro@ifms.edu.br'),
(2, 'Jiyan Yari', 1, '2019-11-29', '1000.00', '', 'marcio.osshiro@ifms.edu.br'),
(3, 'Thales Duarte', 3, '2019-10-31', '0.00', 'iLUTrFoyHSWuoIucoI4m4yZ5m2o.jpg', 'marcio.osshiro@ifms.edu.br'),
(5, 'prof. Celeny', 4, '2019-10-01', '0.00', '0vs3QkuIVRlkexNoeS4qBixABtk.jpg', 'marcio.osshiro@ifms.edu.br'),
(6, 'Jonathan Silva', 17, '2019-10-12', '0.00', 'nhFV6MWg5V28J21YOhWWARRIMUU.jpg', 'marcio.osshiro@ifms.edu.br'),
(7, 'Jeferson', 1, '2019-11-29', '1000.00', '', 'marcio.osshiro@ifms.edu.br'),
(9, 'Cassima', 1, '2019-11-29', '1000.00', '', 'marcio.osshiro@ifms.edu.br');

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
-- Estrutura da tabela `social_google_accounts`
--

CREATE TABLE `social_google_accounts` (
  `user_id` int(11) NOT NULL,
  `provider_user_id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `provider` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Extraindo dados da tabela `social_google_accounts`
--

INSERT INTO `social_google_accounts` (`user_id`, `provider_user_id`, `provider`, `created_at`, `updated_at`) VALUES
(4, '106908859113494044273', 'google', '2019-11-06 06:13:00', '2019-11-06 06:13:00');

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
(1, 'Márcio Osshiro', 'marcio.osshiro@ifms.edu.br', NULL, '$2y$10$UXpnUeybBhOvdG28bW8ZDubZIVU0sfC32/1bg4w0VJ3OSe0tfx18K', 'Dfpnstrq4xF4LEy194y3uQdBD9naiXZ4iL9TLwxLOIXsOf0cy38Rjy1ceqQf', '2019-09-25 06:28:01', '2019-10-08 00:14:16'),
(3, 'admin', 'admin@gmail.com', NULL, '$2y$10$UQ9y8P4klZ/D4eF9VPD/ceyrufBQLHPDKhj6kd2lwD4VTDe42qX9C', NULL, '2019-10-02 05:49:05', '2019-10-02 05:49:05'),
(4, 'professor osshiro', 'professor.osshiro@gmail.com', NULL, '367147f1755502d9bc6189f8e2c3005d', NULL, '2019-11-06 06:13:00', '2019-11-06 06:13:00');

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
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT de tabela `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT de tabela `professor`
--
ALTER TABLE `professor`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=171;

--
-- AUTO_INCREMENT de tabela `sala`
--
ALTER TABLE `sala`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT de tabela `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
