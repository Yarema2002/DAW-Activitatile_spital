-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Хост: 127.0.0.1
-- Время создания: Янв 17 2024 г., 19:46
-- Версия сервера: 10.4.32-MariaDB
-- Версия PHP: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- База данных: `hms`
--

-- --------------------------------------------------------

--
-- Структура таблицы `admin`
--

CREATE TABLE `admin` (
  `id` int(11) NOT NULL,
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `updationDate` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Дамп данных таблицы `admin`
--

INSERT INTO `admin` (`id`, `username`, `password`, `updationDate`) VALUES
(2, 'admin', 'admin12345', '');

-- --------------------------------------------------------

--
-- Структура таблицы `appointment`
--

CREATE TABLE `appointment` (
  `id` int(11) NOT NULL,
  `doctorSpecialization` varchar(255) DEFAULT NULL,
  `doctorId` int(11) DEFAULT NULL,
  `userId` int(11) DEFAULT NULL,
  `consultancyFees` int(11) DEFAULT NULL,
  `appointmentDate` varchar(255) DEFAULT NULL,
  `appointmentTime` varchar(255) DEFAULT NULL,
  `postingDate` timestamp NULL DEFAULT current_timestamp(),
  `userStatus` int(11) DEFAULT NULL,
  `doctorStatus` int(11) DEFAULT NULL,
  `updationDate` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Дамп данных таблицы `appointment`
--

INSERT INTO `appointment` (`id`, `doctorSpecialization`, `doctorId`, `userId`, `consultancyFees`, `appointmentDate`, `appointmentTime`, `postingDate`, `userStatus`, `doctorStatus`, `updationDate`) VALUES
(1, 'ENT', 1, 1, 500, '2024-11-10', '12:45 PM', '2023-11-06 12:21:48', 1, 0, '2024-11-06 12:23:35'),
(2, 'ENT', 1, 2, 500, '2022-11-17', '7:00 PM', '2022-11-06 13:16:18', 1, 1, NULL),
(3, 'Dermatologie', 0, 1, 0, '2023-01-23', '8:15 PM', '2024-01-17 18:04:17', 1, 1, NULL),
(4, 'ENT', 1, 1, 500, '2024-01-16', '8:15 PM', '2024-01-17 18:04:31', 0, 1, '2024-01-17 18:04:46'),
(5, 'Neurolog', 2, 4, 800, '2024-01-16', '8:30 PM', '2024-01-17 18:27:57', 1, 1, NULL);

-- --------------------------------------------------------

--
-- Структура таблицы `doctors`
--

CREATE TABLE `doctors` (
  `id` int(11) NOT NULL,
  `specilization` varchar(255) DEFAULT NULL,
  `doctorName` varchar(255) DEFAULT NULL,
  `address` longtext DEFAULT NULL,
  `docFees` varchar(255) DEFAULT NULL,
  `contactno` bigint(11) DEFAULT NULL,
  `docEmail` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `creationDate` timestamp NULL DEFAULT current_timestamp(),
  `updationDate` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Дамп данных таблицы `doctors`
--

INSERT INTO `doctors` (`id`, `specilization`, `doctorName`, `address`, `docFees`, `contactno`, `docEmail`, `password`, `creationDate`, `updationDate`) VALUES
(1, 'ENT', 'Sava Vasile', 'A 123 XYZ fgdfgfdhgfdhfd', '1000', 142536250, 'savavasile@test.com', 'f925916e2754e5e03f75dd58a5733251', '2022-10-30 18:16:52', '2024-01-17 18:11:07'),
(2, 'Neurolog', 'Sava Olga', 'X 1212 ABCdgdfgfdgdfgfdgdfg ', '800', 1231231230, 'savaolga@test.com', 'f925916e2754e5e03f75dd58a5733251', '2023-11-04 01:06:41', NULL),
(3, 'Genicolog', 'Sava Slava', 'savaslava@test.com', '1300', 7554568569, 'savaslava@test.com', '12bce374e7be15142e8172f668da00d8', '2024-01-17 18:36:19', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Структура таблицы `doctorslog`
--

CREATE TABLE `doctorslog` (
  `id` int(11) NOT NULL,
  `uid` int(11) DEFAULT NULL,
  `username` varchar(255) DEFAULT NULL,
  `userip` binary(16) DEFAULT NULL,
  `loginTime` timestamp NULL DEFAULT current_timestamp(),
  `logout` varchar(255) DEFAULT NULL,
  `status` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Дамп данных таблицы `doctorslog`
--

INSERT INTO `doctorslog` (`id`, `uid`, `username`, `userip`, `loginTime`, `logout`, `status`) VALUES
(27, 1, 'savavlad@test.com', 0x3132372e302e302e3100000000000000, '2024-01-17 18:05:20', NULL, 1),
(28, NULL, 'anujk123@test.com', 0x3132372e302e302e3100000000000000, '2024-01-17 18:22:11', NULL, 0),
(29, 2, 'savaolga@test.com', 0x3132372e302e302e3100000000000000, '2024-01-17 18:22:56', '17-01-2024 11:53:05 PM', 1),
(30, 2, 'savaolga@test.com', 0x3132372e302e302e3100000000000000, '2024-01-17 18:31:21', NULL, 1),
(31, NULL, 'savaslava@test.com', 0x3132372e302e302e3100000000000000, '2024-01-17 18:36:56', NULL, 0),
(32, NULL, 'savaslava@test.com', 0x3132372e302e302e3100000000000000, '2024-01-17 18:37:21', NULL, 0),
(33, 3, 'savaslava@test.com', 0x3132372e302e302e3100000000000000, '2024-01-17 18:38:02', '18-01-2024 12:08:32 AM', 1),
(34, 3, 'savaslava@test.com', 0x3132372e302e302e3100000000000000, '2024-01-17 18:38:48', NULL, 1),
(35, NULL, 'savaslava@test.com', 0x3132372e302e302e3100000000000000, '2024-01-17 18:42:07', NULL, 0),
(36, NULL, 'savaslava@test.com', 0x3132372e302e302e3100000000000000, '2024-01-17 18:42:21', NULL, 0),
(37, NULL, 'savaolga@test.com', 0x3132372e302e302e3100000000000000, '2024-01-17 18:42:34', NULL, 0),
(38, 3, 'savaslava@test.com', 0x3132372e302e302e3100000000000000, '2024-01-17 18:43:09', NULL, 1);

-- --------------------------------------------------------

--
-- Структура таблицы `doctorspecilization`
--

CREATE TABLE `doctorspecilization` (
  `id` int(11) NOT NULL,
  `specilization` varchar(255) DEFAULT NULL,
  `creationDate` timestamp NULL DEFAULT current_timestamp(),
  `updationDate` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Дамп данных таблицы `doctorspecilization`
--

INSERT INTO `doctorspecilization` (`id`, `specilization`, `creationDate`, `updationDate`) VALUES
(1, 'Ortopedic', '2022-10-30 18:09:46', NULL),
(2, 'Medicina Internala', '2022-10-30 18:09:57', NULL),
(3, 'Ginecolog', '2022-10-30 18:10:18', NULL),
(4, 'Dermatolog', '2022-10-30 18:10:28', NULL),
(5, 'Pediatric', '2022-10-30 18:10:37', NULL),
(6, 'Radiologie', '2022-10-30 18:10:46', NULL),
(7, 'Chirurg General', '2022-10-30 18:10:56', NULL),
(11, 'ENT', '2022-10-30 18:11:30', NULL),
(12, 'Stomatolog', '2023-10-30 18:11:39', NULL),
(13, 'Dermatolog', '2022-10-30 18:12:02', NULL),
(15, 'Neurolog', '2022-10-30 18:12:30', NULL),
(16, 'Cardiolog', '2024-01-17 18:14:04', NULL);

-- --------------------------------------------------------

--
-- Структура таблицы `tblcontactus`
--

CREATE TABLE `tblcontactus` (
  `id` int(11) NOT NULL,
  `fullname` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `contactno` bigint(12) DEFAULT NULL,
  `message` mediumtext DEFAULT NULL,
  `PostingDate` timestamp NULL DEFAULT current_timestamp(),
  `AdminRemark` mediumtext DEFAULT NULL,
  `LastupdationDate` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp(),
  `IsRead` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Дамп данных таблицы `tblcontactus`
--

INSERT INTO `tblcontactus` (`id`, `fullname`, `email`, `contactno`, `message`, `PostingDate`, `AdminRemark`, `LastupdationDate`, `IsRead`) VALUES
(2, 'Sava Marin', 'savamarin@test.com', 1111122233, 'This is for testing', '2022-11-06 13:13:41', 'Contact the patient', '2024-01-17 18:15:09', 1),
(3, 'dspjdspgdfjgopdf', 'gfdgdfgd', 0, 'va iubesc', '2024-01-17 18:34:18', NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Структура таблицы `tblmedicalhistory`
--

CREATE TABLE `tblmedicalhistory` (
  `ID` int(10) NOT NULL,
  `PatientID` int(10) DEFAULT NULL,
  `BloodPressure` varchar(200) DEFAULT NULL,
  `BloodSugar` varchar(200) NOT NULL,
  `Weight` varchar(100) DEFAULT NULL,
  `Temperature` varchar(200) DEFAULT NULL,
  `MedicalPres` mediumtext DEFAULT NULL,
  `CreationDate` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Дамп данных таблицы `tblmedicalhistory`
--

INSERT INTO `tblmedicalhistory` (`ID`, `PatientID`, `BloodPressure`, `BloodSugar`, `Weight`, `Temperature`, `MedicalPres`, `CreationDate`) VALUES
(1, 1, '80/120', '120', '85', '98', 'Test', '2022-11-06 13:19:41');

-- --------------------------------------------------------

--
-- Структура таблицы `tblpage`
--

CREATE TABLE `tblpage` (
  `ID` int(10) NOT NULL,
  `PageType` varchar(200) DEFAULT NULL,
  `PageTitle` varchar(200) DEFAULT NULL,
  `PageDescription` mediumtext DEFAULT NULL,
  `Email` varchar(120) DEFAULT NULL,
  `MobileNumber` bigint(10) DEFAULT NULL,
  `UpdationDate` timestamp NULL DEFAULT current_timestamp(),
  `OpenningTime` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Дамп данных таблицы `tblpage`
--

INSERT INTO `tblpage` (`ID`, `PageType`, `PageTitle`, `PageDescription`, `Email`, `MobileNumber`, `UpdationDate`, `OpenningTime`) VALUES
(1, 'aboutus', 'About Us', '<ul style=\"padding: 0px; margin-right: 0px; margin-bottom: 1.313em; margin-left: 1.655em;\" times=\"\" new=\"\" roman\";=\"\" font-size:=\"\" 14px;=\"\" text-align:=\"\" center;=\"\" background-color:=\"\" rgb(255,=\"\" 246,=\"\" 246);\"=\"\"><li style=\"text-align: left;\"><font color=\"#000000\">Lorem ipsum dolor sit amet consectetur adipisicing elit. Quibusdam, ut omnis accusantium, ea consequatur reiciendis ullam inventore libero modi tenetur facilis qui. Deleniti nulla quae ipsa dolor possimus illum harum?Lorem ipsum dolor sit amet consectetur adipisicing elit. Quibusdam, ut omnis accusantium, ea consequatur reiciendis ullam inventore libero modi tenetur facilis qui. Deleniti nulla quae ipsa dolor possimus illum harum?Lorem ipsum dolor sit amet consectetur adipisicing elit. Quibusdam, ut omnis accusantium, ea consequatur reiciendis ullam inventore libero modi tenetur facilis qui. Deleniti nulla quae ipsa dolor possimus illum harum?Lorem ipsum dolor sit amet consectetur adipisicing elit. Quibusdam, ut omnis accusantium, ea consequatur reiciendis ullam inventore libero modi tenetur facilis qui. Deleniti nulla quae ipsa dolor possimus illum harum?Lorem ipsum dolor sit amet consectetur adipisicing elit. Quibusdam, ut omnis accusantium, ea consequatur reiciendis ullam inventore libero modi tenetur facilis qui. Deleniti nulla quae ipsa dolor possimus illum harum?Lorem ipsum dolor sit amet consectetur adipisicing elit. Quibusdam, ut omnis accusantium, ea consequatur reiciendis ullam inventore libero modi tenetur facilis qui. Deleniti nulla quae ipsa dolor possimus illum harum?&nbsp;</font></li></ul>', NULL, NULL, '2020-05-20 07:21:52', NULL),
(2, 'contactus', 'Detaliile de contact', 'Bucuresti,Sectorul 1,Calea.Victoriei', 'spital@test.com', 1122334455, '2020-05-20 07:24:07', 'De la 9-21\r\n24/24\r\nLucram si duminica inclusiv');

-- --------------------------------------------------------

--
-- Структура таблицы `tblpatient`
--

CREATE TABLE `tblpatient` (
  `ID` int(10) NOT NULL,
  `Docid` int(10) DEFAULT NULL,
  `PatientName` varchar(200) DEFAULT NULL,
  `PatientContno` bigint(10) DEFAULT NULL,
  `PatientEmail` varchar(200) DEFAULT NULL,
  `PatientGender` varchar(50) DEFAULT NULL,
  `PatientAdd` mediumtext DEFAULT NULL,
  `PatientAge` int(10) DEFAULT NULL,
  `PatientMedhis` mediumtext DEFAULT NULL,
  `CreationDate` timestamp NULL DEFAULT current_timestamp(),
  `UpdationDate` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Дамп данных таблицы `tblpatient`
--

INSERT INTO `tblpatient` (`ID`, `Docid`, `PatientName`, `PatientContno`, `PatientEmail`, `PatientGender`, `PatientAdd`, `PatientAge`, `PatientMedhis`, `CreationDate`, `UpdationDate`) VALUES
(1, 1, 'Sava Anton', 1231231230, 'savaanton@gmail.com', 'male', 'ukraine', 35, 'NA', '2025-11-06 13:18:31', NULL);

-- --------------------------------------------------------

--
-- Структура таблицы `userlog`
--

CREATE TABLE `userlog` (
  `id` int(11) NOT NULL,
  `uid` int(11) DEFAULT NULL,
  `username` varchar(255) DEFAULT NULL,
  `userip` binary(16) DEFAULT NULL,
  `loginTime` timestamp NULL DEFAULT current_timestamp(),
  `logout` varchar(255) DEFAULT NULL,
  `status` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Дамп данных таблицы `userlog`
--

INSERT INTO `userlog` (`id`, `uid`, `username`, `userip`, `loginTime`, `logout`, `status`) VALUES
(1, 1, 'savaanton@test.com', 0x3a3a3100000000000000000000000000, '2022-11-06 12:14:11', NULL, 1),
(6, NULL, 'sasa', 0x3132372e302e302e3100000000000000, '2024-01-17 18:20:30', NULL, 0),
(7, NULL, 'sasa', 0x3132372e302e302e3100000000000000, '2024-01-17 18:20:50', NULL, 0),
(8, NULL, 'johndoe12@test.com', 0x3132372e302e302e3100000000000000, '2024-01-17 18:21:13', NULL, 0),
(9, NULL, 'savasasa@test.com', 0x3132372e302e302e3100000000000000, '2024-01-17 18:21:43', NULL, 0),
(10, 4, 'savaalla@test.com', 0x3132372e302e302e3100000000000000, '2024-01-17 18:26:46', '17-01-2024 11:58:03 PM', 1),
(11, 4, 'savaalla@test.com', 0x3132372e302e302e3100000000000000, '2024-01-17 18:28:44', NULL, 1);

-- --------------------------------------------------------

--
-- Структура таблицы `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `fullName` varchar(255) DEFAULT NULL,
  `address` longtext DEFAULT NULL,
  `city` varchar(255) DEFAULT NULL,
  `gender` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `regDate` timestamp NULL DEFAULT current_timestamp(),
  `updationDate` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Дамп данных таблицы `users`
--

INSERT INTO `users` (`id`, `fullName`, `address`, `city`, `gender`, `email`, `password`, `regDate`, `updationDate`) VALUES
(1, 'Sava Anton', 'A 123 ABC Apartment GZB 201017', 'Odesaa', 'male', 'savaanton@test.com', 'f925916e2754e5e03f75dd58a5733251', '2022-11-06 12:13:56', NULL),
(3, 'Sava Alexandrin', 'russia', 'moskow', 'male', 'savasasa@test.com', '989bb8818764b018050a6e71c4d2442d', '2024-01-17 18:20:14', NULL),
(4, 'Sava Alla', 'sdjfpsdjfsd', 'moskow', 'female', 'savaalla@test.com', 'f925916e2754e5e03f75dd58a5733251', '2024-01-17 18:26:22', NULL);

--
-- Индексы сохранённых таблиц
--

--
-- Индексы таблицы `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `appointment`
--
ALTER TABLE `appointment`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `doctors`
--
ALTER TABLE `doctors`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `doctorslog`
--
ALTER TABLE `doctorslog`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `doctorspecilization`
--
ALTER TABLE `doctorspecilization`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `tblcontactus`
--
ALTER TABLE `tblcontactus`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `tblmedicalhistory`
--
ALTER TABLE `tblmedicalhistory`
  ADD PRIMARY KEY (`ID`);

--
-- Индексы таблицы `tblpage`
--
ALTER TABLE `tblpage`
  ADD PRIMARY KEY (`ID`);

--
-- Индексы таблицы `tblpatient`
--
ALTER TABLE `tblpatient`
  ADD PRIMARY KEY (`ID`);

--
-- Индексы таблицы `userlog`
--
ALTER TABLE `userlog`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD KEY `email` (`email`);

--
-- AUTO_INCREMENT для сохранённых таблиц
--

--
-- AUTO_INCREMENT для таблицы `admin`
--
ALTER TABLE `admin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT для таблицы `appointment`
--
ALTER TABLE `appointment`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT для таблицы `doctors`
--
ALTER TABLE `doctors`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT для таблицы `doctorslog`
--
ALTER TABLE `doctorslog`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=39;

--
-- AUTO_INCREMENT для таблицы `doctorspecilization`
--
ALTER TABLE `doctorspecilization`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT для таблицы `tblcontactus`
--
ALTER TABLE `tblcontactus`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT для таблицы `tblmedicalhistory`
--
ALTER TABLE `tblmedicalhistory`
  MODIFY `ID` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT для таблицы `tblpage`
--
ALTER TABLE `tblpage`
  MODIFY `ID` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT для таблицы `tblpatient`
--
ALTER TABLE `tblpatient`
  MODIFY `ID` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT для таблицы `userlog`
--
ALTER TABLE `userlog`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT для таблицы `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
