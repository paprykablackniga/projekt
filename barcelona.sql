-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 08, 2024 at 02:34 PM
-- Wersja serwera: 10.4.28-MariaDB
-- Wersja PHP: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `barcelona`
--

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `footballers`
--

CREATE TABLE `footballers` (
  `id` int(11) NOT NULL,
  `names` text NOT NULL,
  `surname` text NOT NULL,
  `img` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `footballers`
--

INSERT INTO `footballers` (`id`, `names`, `surname`, `img`) VALUES
(1, 'Lionel', 'Messi', 'https://www.fcbarcelona.com/photo-resources/2022/08/02/ae5252d1-b79b-4950-9e34-6e67fac09bb0/LeoMessi20092010_pic_fcb-arsenal62.jpg?width=640&height=400'),
(2, 'Xavi', 'Hernandez', 'https://www.fcbarcelona.com/photo-resources/2020/05/07/d61455df-a34a-42b0-9bc0-f2c80637c186/PIQUE_007-min.JPG?width=640&height=400'),
(4, 'Neymar', 'Da Silva', 'https://www.fcbarcelona.com/photo-resources/2024/03/08/3983f5e0-d7fc-4fdf-8908-d7f9d513ce5b/NEYMAR.JPG?width=640&height=400');

--
-- Indeksy dla zrzutów tabel
--

--
-- Indeksy dla tabeli `footballers`
--
ALTER TABLE `footballers`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `footballers`
--
ALTER TABLE `footballers`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
