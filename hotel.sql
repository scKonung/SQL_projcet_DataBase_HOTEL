-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Czas generowania: 18 Sty 2022, 21:01
-- Wersja serwera: 10.4.22-MariaDB
-- Wersja PHP: 8.1.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Baza danych: `hotel`
--

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `cena`
--

CREATE TABLE `cena` (
  `id_ilosc` int(11) DEFAULT NULL,
  `id_cena_za_1` int(11) DEFAULT NULL,
  `Cena` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Zrzut danych tabeli `cena`
--

INSERT INTO `cena` (`id_ilosc`, `id_cena_za_1`, `Cena`) VALUES
(1, 1, 350),
(2, 2, 2800),
(3, 3, 12400),
(4, 4, 100),
(5, 3, 3200);

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `cena za 1 noc`
--

CREATE TABLE `cena za 1 noc` (
  `id_cena_za_1` int(11) NOT NULL,
  `id_pokoju` int(11) DEFAULT NULL,
  `Cena_za_1_noc` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Zrzut danych tabeli `cena za 1 noc`
--

INSERT INTO `cena za 1 noc` (`id_cena_za_1`, `id_pokoju`, `Cena_za_1_noc`) VALUES
(1, 1, 175),
(2, 2, 700),
(3, 3, 400),
(4, 4, 100);

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `ilosc_nocy`
--

CREATE TABLE `ilosc_nocy` (
  `id_ilosc` int(11) NOT NULL,
  `id_rezerwacji` int(11) DEFAULT NULL,
  `Ilosc_nocy` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Zrzut danych tabeli `ilosc_nocy`
--

INSERT INTO `ilosc_nocy` (`id_ilosc`, `id_rezerwacji`, `Ilosc_nocy`) VALUES
(1, 3, 2),
(2, 4, 4),
(3, 5, 31),
(4, 6, 1),
(5, 7, 8);

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `klienci`
--

CREATE TABLE `klienci` (
  `id_klienta` int(11) NOT NULL,
  `imie_klienta` varchar(15) DEFAULT NULL,
  `nazwisko_klienta` varchar(50) DEFAULT NULL,
  `e-mail` varchar(50) DEFAULT NULL,
  `dowod_osobisty` varchar(15) DEFAULT NULL,
  `telefon` varchar(15) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Zrzut danych tabeli `klienci`
--

INSERT INTO `klienci` (`id_klienta`, `imie_klienta`, `nazwisko_klienta`, `e-mail`, `dowod_osobisty`, `telefon`) VALUES
(2, 'Joanna', 'Kowalska', 'jkowal@kow.com', 'WSS 453264', '+48 (98) 789-69'),
(3, 'John', 'Klark', 'jklark@kow.com', 'MMM 123456', '+48 (44) 633-22'),
(4, 'Emilia', 'Jonson', 'e.jon@kow.com', 'MZM 322344', '+48 (32) 435-34'),
(5, 'Aomine', 'Dajke', 'a.dajke@kow.com', 'EQW 234454', '+48 (45) 634-56'),
(6, 'Julia', 'Nowiak', 'J.nowak@kow.com', 'QWE 124434', '+48 (12) 355-43');

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `pokoji`
--

CREATE TABLE `pokoji` (
  `id_pokoju` int(11) NOT NULL,
  `numer_pokoju` int(11) DEFAULT NULL,
  `liczba_osob` int(11) DEFAULT NULL,
  `poziom_wygodnosti` varchar(10) DEFAULT NULL,
  `pietro_pokoju` int(11) DEFAULT NULL,
  `widok` varchar(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Zrzut danych tabeli `pokoji`
--

INSERT INTO `pokoji` (`id_pokoju`, `numer_pokoju`, `liczba_osob`, `poziom_wygodnosti`, `pietro_pokoju`, `widok`) VALUES
(1, 123, 3, 'Standart', 7, 'Na parking'),
(2, 321, 5, 'Ultimate', 1, 'Na morze'),
(3, 777, 1, 'Premium', 10, 'Na las'),
(4, 222, 1, 'Standart', 1, 'Na parking');

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `pracownicy`
--

CREATE TABLE `pracownicy` (
  `id_pracownika` int(11) NOT NULL,
  `imię_pracownika` varchar(15) DEFAULT NULL,
  `nazwisko_pracownika` varchar(50) DEFAULT NULL,
  `e-mail` varchar(50) DEFAULT NULL,
  `telefon` varchar(15) DEFAULT NULL,
  `Zdięcie` varchar(1000) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Zrzut danych tabeli `pracownicy`
--

INSERT INTO `pracownicy` (`id_pracownika`, `imię_pracownika`, `nazwisko_pracownika`, `e-mail`, `telefon`, `Zdięcie`) VALUES
(2, 'Dart', 'Vader', 'john.wader@starwars.com', '+48 (12) 345-34', 'https://www.google.ru/url?sa=i&url=https%3A%2F%2Ftwitter.com%2Fdartwader19&psig=AOvVaw38eDnBd1KwRdjg6p0ii7ZL&ust=1642620155466000&source=images&cd=vfe&ved=0CAgQjRxqFwoTCMish4mDvPUCFQAAAAAdAAAAABAD'),
(3, 'Zbigniew', 'Wojciechowski', 'zb.wijceq@kow.com', '+48 (12) 355-65', 'https://www.google.ru/url?sa=i&url=https%3A%2F%2Fklikwakacje.pl%2Fciekawostki-fakty-informacje-zaby%2F&psig=AOvVaw3YJh6pLY3BGxlbJupOYILQ&ust=1642619814087000&source=images&cd=vfe&ved=0CAgQjRxqFwoTCOC29uWBvPUCFQAAAAAdAAAAABAD'),
(4, 'Gomer', 'Simpson', 'bart.sims@gmailc.om', '+48 (77) 777-77', 'https://www.google.ru/url?sa=i&url=https%3A%2F%2Fru-ru.facebook.com%2Fpages%2FHomer-Simpson-Polski%2F757966647609381&psig=AOvVaw3xRbwlVHk810zzH48PsEiX&ust=1642619743267000&source=images&cd=vfe&ved=0CAgQjRxqFwoTCKj17MOBvPUCFQAAAAAdAAAAABAD');

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `rezerwacja`
--

CREATE TABLE `rezerwacja` (
  `id_rezerwacji` int(11) NOT NULL,
  `id_klienta` int(11) DEFAULT NULL,
  `id_pracownika` int(11) DEFAULT NULL,
  `id_pokoju` int(11) DEFAULT NULL,
  `data_zameldowania` datetime DEFAULT NULL,
  `data_wymeldowania` datetime DEFAULT NULL,
  `czy_parking` tinyint(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Zrzut danych tabeli `rezerwacja`
--

INSERT INTO `rezerwacja` (`id_rezerwacji`, `id_klienta`, `id_pracownika`, `id_pokoju`, `data_zameldowania`, `data_wymeldowania`, `czy_parking`) VALUES
(3, 2, 2, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1),
(4, 3, 3, 2, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1),
(5, 4, 3, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1),
(6, 5, 4, 4, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0),
(7, 6, 2, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0);

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `rezerwacja-statusy`
--

CREATE TABLE `rezerwacja-statusy` (
  `id_rezerwacji` int(11) DEFAULT NULL,
  `id_statusu` int(11) DEFAULT NULL,
  `Opis` varchar(150) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Zrzut danych tabeli `rezerwacja-statusy`
--

INSERT INTO `rezerwacja-statusy` (`id_rezerwacji`, `id_statusu`, `Opis`) VALUES
(3, 2, 'TEn pokój jest wolny'),
(4, 2, 'TEn pokój jest wolny'),
(5, 2, 'TEn pokój jest wolny'),
(6, 2, 'TEn pokój jest wolny'),
(7, 2, 'TEn pokój jest wolny');

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `statusy`
--

CREATE TABLE `statusy` (
  `id_statusu` int(11) NOT NULL,
  `typ_statusu` varchar(40) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Zrzut danych tabeli `statusy`
--

INSERT INTO `statusy` (`id_statusu`, `typ_statusu`) VALUES
(1, 'Zarezerwowany'),
(2, 'Wolny'),
(3, 'Zajęty'),
(4, 'W trakcie sprzątania'),
(5, 'W remoncie');

--
-- Indeksy dla zrzutów tabel
--

--
-- Indeksy dla tabeli `cena`
--
ALTER TABLE `cena`
  ADD KEY `id_cena_za_1` (`id_cena_za_1`),
  ADD KEY `id_ilosc` (`id_ilosc`);

--
-- Indeksy dla tabeli `cena za 1 noc`
--
ALTER TABLE `cena za 1 noc`
  ADD PRIMARY KEY (`id_cena_za_1`),
  ADD KEY `id_pokoju` (`id_pokoju`);

--
-- Indeksy dla tabeli `ilosc_nocy`
--
ALTER TABLE `ilosc_nocy`
  ADD PRIMARY KEY (`id_ilosc`),
  ADD KEY `id_rezerwacji` (`id_rezerwacji`);

--
-- Indeksy dla tabeli `klienci`
--
ALTER TABLE `klienci`
  ADD PRIMARY KEY (`id_klienta`);

--
-- Indeksy dla tabeli `pokoji`
--
ALTER TABLE `pokoji`
  ADD PRIMARY KEY (`id_pokoju`);

--
-- Indeksy dla tabeli `pracownicy`
--
ALTER TABLE `pracownicy`
  ADD PRIMARY KEY (`id_pracownika`);

--
-- Indeksy dla tabeli `rezerwacja`
--
ALTER TABLE `rezerwacja`
  ADD PRIMARY KEY (`id_rezerwacji`),
  ADD KEY `id_klienta` (`id_klienta`),
  ADD KEY `id_pokoju` (`id_pokoju`),
  ADD KEY `id_pracownika` (`id_pracownika`);

--
-- Indeksy dla tabeli `rezerwacja-statusy`
--
ALTER TABLE `rezerwacja-statusy`
  ADD KEY `id_rezerwacji` (`id_rezerwacji`),
  ADD KEY `id_statusu` (`id_statusu`);

--
-- Indeksy dla tabeli `statusy`
--
ALTER TABLE `statusy`
  ADD PRIMARY KEY (`id_statusu`);

--
-- Ograniczenia dla zrzutów tabel
--

--
-- Ograniczenia dla tabeli `cena`
--
ALTER TABLE `cena`
  ADD CONSTRAINT `cena_ibfk_1` FOREIGN KEY (`id_cena_za_1`) REFERENCES `cena za 1 noc` (`id_cena_za_1`),
  ADD CONSTRAINT `cena_ibfk_2` FOREIGN KEY (`id_ilosc`) REFERENCES `ilosc_nocy` (`id_ilosc`);

--
-- Ograniczenia dla tabeli `cena za 1 noc`
--
ALTER TABLE `cena za 1 noc`
  ADD CONSTRAINT `cena za 1 noc_ibfk_1` FOREIGN KEY (`id_pokoju`) REFERENCES `pokoji` (`id_pokoju`);

--
-- Ograniczenia dla tabeli `ilosc_nocy`
--
ALTER TABLE `ilosc_nocy`
  ADD CONSTRAINT `ilosc_nocy_ibfk_1` FOREIGN KEY (`id_rezerwacji`) REFERENCES `rezerwacja` (`id_rezerwacji`);

--
-- Ograniczenia dla tabeli `rezerwacja`
--
ALTER TABLE `rezerwacja`
  ADD CONSTRAINT `rezerwacja_ibfk_1` FOREIGN KEY (`id_klienta`) REFERENCES `klienci` (`id_klienta`),
  ADD CONSTRAINT `rezerwacja_ibfk_2` FOREIGN KEY (`id_pokoju`) REFERENCES `pokoji` (`id_pokoju`),
  ADD CONSTRAINT `rezerwacja_ibfk_3` FOREIGN KEY (`id_pracownika`) REFERENCES `pracownicy` (`id_pracownika`);

--
-- Ograniczenia dla tabeli `rezerwacja-statusy`
--
ALTER TABLE `rezerwacja-statusy`
  ADD CONSTRAINT `rezerwacja-statusy_ibfk_1` FOREIGN KEY (`id_rezerwacji`) REFERENCES `rezerwacja` (`id_rezerwacji`),
  ADD CONSTRAINT `rezerwacja-statusy_ibfk_2` FOREIGN KEY (`id_statusu`) REFERENCES `statusy` (`id_statusu`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
