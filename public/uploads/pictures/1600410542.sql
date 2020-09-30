-- phpMyAdmin SQL Dump
-- version 4.8.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Sep 07, 2020 at 06:48 AM
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
-- Database: `payroll_system`
--

DELIMITER $$
--
-- Functions
--
CREATE DEFINER=`root`@`localhost` FUNCTION `hristable` () RETURNS CHAR(50) CHARSET latin1 return 'hris_csi'$$

DELIMITER ;

-- --------------------------------------------------------

--
-- Table structure for table `addition_tables`
--

CREATE TABLE `addition_tables` (
  `id` int(10) UNSIGNED NOT NULL,
  `company_id` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `company_ind` int(11) NOT NULL,
  `addition_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'OPEN',
  `option` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `taxable` int(11) NOT NULL,
  `value` decimal(8,2) NOT NULL,
  `start_date` date NOT NULL,
  `end_date` date DEFAULT NULL,
  `schedule` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'Every Payroll',
  `validity` int(11) NOT NULL DEFAULT '0',
  `validity_count` int(11) NOT NULL DEFAULT '0',
  `transaction_value` decimal(8,2) NOT NULL DEFAULT '0.00',
  `remaining_balance` decimal(8,2) NOT NULL,
  `addition_type` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'REGULAR',
  `created_by` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `lu_by` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `deleted` int(11) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `date_and_time_records`
--

CREATE TABLE `date_and_time_records` (
  `id` int(10) UNSIGNED NOT NULL,
  `register_number` varchar(15) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `company_id` varchar(15) COLLATE utf8mb4_unicode_ci NOT NULL,
  `employee_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `company_ind` bigint(20) NOT NULL,
  `group_ind` bigint(20) NOT NULL,
  `sched_template_id` bigint(20) NOT NULL DEFAULT '1',
  `sched_date` date NOT NULL,
  `date_time_in` datetime DEFAULT NULL,
  `date_time_out` datetime DEFAULT NULL,
  `reg_total_hrs` decimal(8,2) NOT NULL DEFAULT '0.00',
  `lunch_out` datetime DEFAULT NULL,
  `lunch_in` datetime DEFAULT NULL,
  `schedule_shift_in` datetime DEFAULT NULL,
  `schedule_shift_out` datetime DEFAULT NULL,
  `lunch_durations_hrs` decimal(8,2) NOT NULL DEFAULT '0.00',
  `over_break_min` decimal(8,2) NOT NULL DEFAULT '0.00',
  `late_min` decimal(8,2) NOT NULL DEFAULT '0.00',
  `undertime_min` decimal(8,2) NOT NULL DEFAULT '0.00',
  `ot_time_in` datetime DEFAULT NULL,
  `ot_time_out` datetime DEFAULT NULL,
  `ot_total_hrs` decimal(8,2) NOT NULL DEFAULT '0.00',
  `night_diff_in` datetime DEFAULT NULL,
  `night_diff_out` datetime DEFAULT NULL,
  `night_diff_total_hrs` decimal(8,2) NOT NULL DEFAULT '0.00',
  `night_diff_total_ot_hrs` decimal(8,2) NOT NULL DEFAULT '0.00',
  `day_types` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `work_on_holiday` int(2) NOT NULL DEFAULT '0',
  `before_holiday` int(2) NOT NULL DEFAULT '1',
  `after_holiday` int(2) NOT NULL DEFAULT '1',
  `leaved` int(11) NOT NULL DEFAULT '0',
  `leave_types` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `leave_wpay` int(11) NOT NULL DEFAULT '0',
  `half_day` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'WD',
  `remarks` varchar(1000) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `insystem` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'MANUAL',
  `payroll_status` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'INPROCESS',
  `created_by` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `lu_by` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `deleted` int(11) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `device_id_in` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `device_id_out` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `date_and_time_records`
--

INSERT INTO `date_and_time_records` (`id`, `register_number`, `company_id`, `employee_name`, `company_ind`, `group_ind`, `sched_template_id`, `sched_date`, `date_time_in`, `date_time_out`, `reg_total_hrs`, `lunch_out`, `lunch_in`, `schedule_shift_in`, `schedule_shift_out`, `lunch_durations_hrs`, `over_break_min`, `late_min`, `undertime_min`, `ot_time_in`, `ot_time_out`, `ot_total_hrs`, `night_diff_in`, `night_diff_out`, `night_diff_total_hrs`, `night_diff_total_ot_hrs`, `day_types`, `work_on_holiday`, `before_holiday`, `after_holiday`, `leaved`, `leave_types`, `leave_wpay`, `half_day`, `remarks`, `insystem`, `payroll_status`, `created_by`, `lu_by`, `deleted`, `created_at`, `updated_at`, `device_id_in`, `device_id_out`) VALUES
(1, '202000007', '2017-083', 'Advincula, Kris Nino Marco Sawal', 1, 15, 4, '2020-01-27', '2020-01-27 11:25:55', NULL, '0.00', '2020-01-27 12:00:00', '2020-01-27 13:00:00', '2020-01-27 11:25:55', '2020-01-27 21:25:55', '1.00', '0.00', '0.00', '0.00', NULL, NULL, '0.00', NULL, NULL, '0.00', '0.00', 'reg', 0, 1, 1, 0, NULL, 0, 'WD', 'No Time Out', 'MANUAL', 'RELEASED', 'Admin', 'Payroll Admin', 0, '2020-01-27 00:59:44', '2020-03-04 02:41:08', NULL, NULL),
(2, NULL, '2000-017', 'Araquel, Joe marie Basada', 1, 14, 10, '2020-01-27', NULL, NULL, '0.00', '2020-01-27 12:00:00', '2020-01-27 13:00:00', '2020-01-27 08:30:00', '2020-01-27 18:30:00', '1.00', '0.00', '0.00', '0.00', NULL, NULL, '0.00', NULL, NULL, '0.00', '0.00', 'reg', 0, 1, 1, 0, NULL, 0, 'WD', 'Absent', 'MANUAL', 'INPROCESS', 'Admin', NULL, 0, '2020-01-27 00:59:44', '2020-01-30 05:15:20', NULL, NULL),
(3, '202000007', '2018-004', 'Argales, Rome Aubrey Cruz', 1, 15, 13, '2020-01-27', NULL, NULL, '0.00', NULL, NULL, NULL, NULL, '0.00', '0.00', '0.00', '0.00', NULL, NULL, '0.00', NULL, NULL, '0.00', '0.00', 'rd_reg', 0, 1, 1, 0, NULL, 0, 'WD', 'Restday', 'MANUAL', 'RELEASED', 'Admin', 'Payroll Admin', 0, '2020-01-27 00:59:44', '2020-03-04 02:41:08', NULL, NULL),
(4, '202000007', '2018-040', 'BIÃ‘AS, Kenneth Joshua Lope', 1, 15, 4, '2020-01-27', '2020-01-27 11:18:29', '2020-01-27 17:44:47', '6.44', '2020-01-27 12:00:00', '2020-01-27 13:00:00', '2020-01-27 11:18:29', '2020-01-27 21:18:29', '1.00', '0.00', '0.00', '213.60', NULL, NULL, '0.00', NULL, NULL, '0.00', '0.00', 'reg', 0, 1, 1, 0, NULL, 0, 'WD', 'Present', 'MANUAL', 'RELEASED', 'Admin', 'Payroll Admin', 0, '2020-01-27 00:59:44', '2020-03-04 02:41:08', NULL, NULL),
(5, NULL, '2010-191', 'CASTOR, GINA ALMADEN', 1, 16, 10, '2020-01-27', NULL, NULL, '0.00', '2020-01-27 12:00:00', '2020-01-27 13:00:00', '2020-01-27 08:30:00', '2020-01-27 18:30:00', '1.00', '0.00', '0.00', '0.00', NULL, NULL, '0.00', NULL, NULL, '0.00', '0.00', 'reg', 0, 1, 1, 0, NULL, 0, 'WD', 'Absent', 'MANUAL', 'INPROCESS', 'Admin', NULL, 0, '2020-01-27 00:59:44', '2020-01-30 05:15:27', NULL, NULL),
(6, NULL, '2015-051', 'Dayandante, Jasmin Pasco', 1, 16, 10, '2020-01-27', NULL, NULL, '0.00', '2020-01-27 12:00:00', '2020-01-27 13:00:00', '2020-01-27 08:30:00', '2020-01-27 18:30:00', '1.00', '0.00', '0.00', '0.00', NULL, NULL, '0.00', NULL, NULL, '0.00', '0.00', 'reg', 0, 1, 1, 0, NULL, 0, 'WD', 'Absent', 'MANUAL', 'INPROCESS', 'Admin', NULL, 0, '2020-01-27 00:59:44', '2020-01-30 05:15:29', NULL, NULL),
(7, '202000007', '2017-082', 'Flores, Juan Karlo Quisol', 1, 15, 4, '2020-01-27', '2020-01-27 11:15:11', '2020-01-27 13:28:58', '2.23', '2020-01-27 12:00:00', '2020-01-27 13:00:00', '2020-01-27 11:15:11', '2020-01-27 21:15:11', '1.00', '0.00', '0.00', '466.20', NULL, NULL, '0.00', NULL, NULL, '0.00', '0.00', 'reg', 0, 1, 1, 0, NULL, 0, 'WD', 'Present', 'MANUAL', 'RELEASED', 'Admin', 'Payroll Admin', 0, '2020-01-27 00:59:45', '2020-03-04 02:41:08', NULL, NULL),
(8, '202000007', '2015-056', 'Inguito, Kimberly  Mae Gonzales', 1, 15, 12, '2020-01-27', NULL, NULL, '0.00', NULL, NULL, NULL, NULL, '0.00', '0.00', '0.00', '0.00', NULL, NULL, '0.00', NULL, NULL, '0.00', '0.00', 'rd_reg', 0, 1, 1, 0, NULL, 0, 'WD', 'Restday', 'MANUAL', 'RELEASED', 'Admin', 'Payroll Admin', 0, '2020-01-27 00:59:45', '2020-03-04 02:41:08', NULL, NULL),
(9, '202000007', '2011-209', 'Kempis, Mark Arthur Avelino', 1, 15, 10, '2020-01-27', NULL, NULL, '0.00', '2020-01-27 12:00:00', '2020-01-27 13:00:00', '2020-01-27 08:30:00', '2020-01-27 18:30:00', '1.00', '0.00', '0.00', '0.00', NULL, NULL, '0.00', NULL, NULL, '0.00', '0.00', 'reg', 0, 1, 1, 0, NULL, 0, 'WD', 'Absent', 'MANUAL', 'RELEASED', 'Admin', 'Payroll Admin', 0, '2020-01-27 00:59:45', '2020-03-04 02:41:08', NULL, NULL),
(10, NULL, '2011-227', 'Navarro, Mary Chris Ann Cruz', 1, 16, 10, '2020-01-27', NULL, NULL, '0.00', '2020-01-27 12:00:00', '2020-01-27 13:00:00', '2020-01-27 08:30:00', '2020-01-27 18:30:00', '1.00', '0.00', '0.00', '0.00', NULL, NULL, '0.00', NULL, NULL, '0.00', '0.00', 'reg', 0, 1, 1, 0, NULL, 0, 'WD', 'Absent', 'MANUAL', 'INPROCESS', 'Admin', NULL, 0, '2020-01-27 00:59:45', '2020-01-30 05:15:38', NULL, NULL),
(11, NULL, '2016-037', 'PeÃ±a, Rea Kristine Nedia', 1, 14, 10, '2020-01-27', NULL, NULL, '0.00', '2020-01-27 12:00:00', '2020-01-27 13:00:00', '2020-01-27 08:30:00', '2020-01-27 18:30:00', '1.00', '0.00', '0.00', '0.00', NULL, NULL, '0.00', NULL, NULL, '0.00', '0.00', 'reg', 0, 1, 1, 0, NULL, 0, 'WD', 'Absent', 'MANUAL', 'INPROCESS', 'Admin', NULL, 0, '2020-01-27 00:59:45', '2020-01-30 05:15:40', NULL, NULL),
(12, NULL, '2018-039', 'Silvestre, Mark Brenn Morla', 1, 13, 4, '2020-01-27', NULL, NULL, '0.00', '2020-01-27 12:00:00', '2020-01-27 13:00:00', NULL, NULL, '1.00', '0.00', '0.00', '0.00', NULL, NULL, '0.00', NULL, NULL, '0.00', '0.00', 'reg', 0, 1, 1, 0, NULL, 0, 'WD', 'Absent', 'MANUAL', 'INPROCESS', 'Admin', NULL, 0, '2020-01-27 00:59:45', '2020-01-30 05:15:42', NULL, NULL),
(13, '202000007', '2015-040', 'Uson, Rachelle Hyacinth Cruz', 1, 14, 10, '2020-01-27', NULL, NULL, '0.00', '2020-01-27 12:00:00', '2020-01-27 13:00:00', '2020-01-27 08:30:00', '2020-01-27 18:30:00', '1.00', '0.00', '0.00', '0.00', NULL, NULL, '0.00', NULL, NULL, '0.00', '0.00', 'reg', 0, 1, 1, 0, NULL, 0, 'WD', 'Absent', 'MANUAL', 'RELEASED', 'Admin', 'Payroll Admin', 0, '2020-01-27 00:59:45', '2020-03-04 02:41:08', NULL, NULL),
(14, NULL, '2018-085', 'ValeÃ±a Jr, Daniel  Vallar', 1, 13, 13, '2020-01-27', '2020-01-27 11:30:49', '2020-01-27 16:02:29', '4.53', NULL, NULL, NULL, NULL, '0.00', '0.00', '0.00', '0.00', NULL, NULL, '0.00', NULL, NULL, '0.00', '0.00', 'rd_reg', 0, 1, 1, 0, NULL, 0, 'WD', 'Restday', 'MANUAL', 'INPROCESS', 'Admin', NULL, 0, '2020-01-27 00:59:45', '2020-01-30 05:15:46', NULL, NULL),
(15, '202000007', '2013-341', 'Velasco, Teejay Viloria', 1, 15, 11, '2020-01-27', '2020-01-27 12:47:14', '2020-01-27 14:38:30', '1.85', '2020-01-27 12:00:00', '2020-01-27 13:00:00', '2020-01-27 12:47:14', '2020-01-27 22:47:14', '1.00', '0.00', '0.00', '489.00', NULL, NULL, '0.00', NULL, NULL, '0.00', '0.00', 'reg', 0, 1, 1, 0, NULL, 0, 'WD', 'Present', 'MANUAL', 'RELEASED', 'Admin', 'Payroll Admin', 0, '2020-01-27 00:59:45', '2020-03-04 02:41:08', NULL, NULL),
(16, NULL, '2006-054', 'Villagracia, Jacelyn Bayanay', 1, 16, 10, '2020-01-27', NULL, NULL, '0.00', '2020-01-27 12:00:00', '2020-01-27 13:00:00', '2020-01-27 08:30:00', '2020-01-27 18:30:00', '1.00', '0.00', '0.00', '0.00', NULL, NULL, '0.00', NULL, NULL, '0.00', '0.00', 'reg', 0, 1, 1, 0, NULL, 0, 'WD', 'Absent', 'MANUAL', 'INPROCESS', 'Admin', NULL, 0, '2020-01-27 00:59:45', '2020-01-30 05:15:51', NULL, NULL),
(17, NULL, '2006-052', 'Villegas, Maria Teresa Lanozo', 1, 14, 10, '2020-01-27', NULL, NULL, '0.00', '2020-01-27 12:00:00', '2020-01-27 13:00:00', '2020-01-27 08:30:00', '2020-01-27 18:30:00', '1.00', '0.00', '0.00', '0.00', NULL, NULL, '0.00', NULL, NULL, '0.00', '0.00', 'reg', 0, 1, 1, 0, NULL, 0, 'WD', 'Absent', 'MANUAL', 'INPROCESS', 'Admin', NULL, 0, '2020-01-27 00:59:45', '2020-01-30 05:15:53', NULL, NULL),
(18, NULL, '2017-083', 'Advincula, Kris Nino Marco Sawal', 1, 15, 4, '2019-12-01', NULL, NULL, '0.00', NULL, NULL, NULL, NULL, '0.00', '0.00', '0.00', '0.00', NULL, NULL, '0.00', NULL, NULL, '0.00', '0.00', 'rd_reg', 0, 1, 1, 0, NULL, 0, 'WD', 'Restday', 'MANUAL', 'INPROCESS', 'Admin', NULL, 0, '2020-01-30 02:30:16', '2020-01-30 02:30:16', NULL, NULL),
(19, NULL, '2017-083', 'Advincula, Kris Nino Marco Sawal', 1, 15, 4, '2019-12-02', NULL, NULL, '0.00', '2019-12-02 12:00:00', '2019-12-02 13:00:00', NULL, NULL, '1.00', '0.00', '0.00', '0.00', NULL, NULL, '0.00', NULL, NULL, '0.00', '0.00', 'reg', 0, 1, 1, 0, NULL, 0, 'WD', 'Absent', 'MANUAL', 'INPROCESS', 'Admin', NULL, 0, '2020-01-30 02:30:16', '2020-01-30 02:30:16', NULL, NULL),
(20, NULL, '2017-083', 'Advincula, Kris Nino Marco Sawal', 1, 15, 4, '2019-12-03', NULL, NULL, '0.00', '2019-12-03 12:00:00', '2019-12-03 13:00:00', NULL, NULL, '1.00', '0.00', '0.00', '0.00', NULL, NULL, '0.00', NULL, NULL, '0.00', '0.00', 'reg', 0, 1, 1, 0, NULL, 0, 'WD', 'Absent', 'MANUAL', 'INPROCESS', 'Admin', NULL, 0, '2020-01-30 02:30:16', '2020-01-30 02:30:16', NULL, NULL),
(21, NULL, '2017-083', 'Advincula, Kris Nino Marco Sawal', 1, 15, 4, '2019-12-04', NULL, NULL, '0.00', '2019-12-04 12:00:00', '2019-12-04 13:00:00', NULL, NULL, '1.00', '0.00', '0.00', '0.00', NULL, NULL, '0.00', NULL, NULL, '0.00', '0.00', 'reg', 0, 1, 1, 0, NULL, 0, 'WD', 'Absent', 'MANUAL', 'INPROCESS', 'Admin', NULL, 0, '2020-01-30 02:30:16', '2020-01-30 02:30:16', NULL, NULL),
(22, NULL, '2017-083', 'Advincula, Kris Nino Marco Sawal', 1, 15, 4, '2019-12-05', NULL, NULL, '0.00', '2019-12-05 12:00:00', '2019-12-05 13:00:00', NULL, NULL, '1.00', '0.00', '0.00', '0.00', NULL, NULL, '0.00', NULL, NULL, '0.00', '0.00', 'reg', 0, 1, 1, 0, NULL, 0, 'WD', 'Absent', 'MANUAL', 'INPROCESS', 'Admin', NULL, 0, '2020-01-30 02:30:16', '2020-01-30 02:30:16', NULL, NULL),
(23, NULL, '2017-083', 'Advincula, Kris Nino Marco Sawal', 1, 15, 4, '2019-12-06', NULL, NULL, '0.00', '2019-12-06 12:00:00', '2019-12-06 13:00:00', NULL, NULL, '1.00', '0.00', '0.00', '0.00', NULL, NULL, '0.00', NULL, NULL, '0.00', '0.00', 'reg', 0, 1, 1, 0, NULL, 0, 'WD', 'Absent', 'MANUAL', 'INPROCESS', 'Admin', NULL, 0, '2020-01-30 02:30:17', '2020-01-30 02:30:17', NULL, NULL),
(24, NULL, '2017-083', 'Advincula, Kris Nino Marco Sawal', 1, 15, 4, '2019-12-07', NULL, NULL, '0.00', NULL, NULL, NULL, NULL, '0.00', '0.00', '0.00', '0.00', NULL, NULL, '0.00', NULL, NULL, '0.00', '0.00', 'rd_reg', 0, 1, 1, 0, NULL, 0, 'WD', 'Restday', 'MANUAL', 'INPROCESS', 'Admin', NULL, 0, '2020-01-30 02:30:17', '2020-01-30 02:30:17', NULL, NULL),
(25, NULL, '2017-083', 'Advincula, Kris Nino Marco Sawal', 1, 15, 4, '2019-12-08', NULL, NULL, '0.00', NULL, NULL, NULL, NULL, '0.00', '0.00', '0.00', '0.00', NULL, NULL, '0.00', NULL, NULL, '0.00', '0.00', 'spcl_nw', 0, 1, 1, 0, NULL, 0, 'WD', 'Feast of the Immaculate Conceptions Of Mary', 'MANUAL', 'INPROCESS', 'Admin', NULL, 0, '2020-01-30 02:30:17', '2020-01-30 02:30:17', NULL, NULL),
(26, NULL, '2017-083', 'Advincula, Kris Nino Marco Sawal', 1, 15, 4, '2019-12-09', '2019-12-09 14:22:35', '2019-12-09 15:05:03', '0.71', '2019-12-09 12:00:00', '2019-12-09 13:00:00', '2019-12-09 14:22:35', '2019-12-10 00:22:35', '1.00', '0.00', '0.00', '557.40', NULL, NULL, '0.00', NULL, NULL, '0.00', '0.00', 'reg', 0, 1, 1, 0, NULL, 0, 'WD', 'Present', 'MANUAL', 'INPROCESS', 'Admin', NULL, 0, '2020-01-30 02:30:17', '2020-01-30 02:30:17', NULL, NULL),
(27, NULL, '2017-083', 'Advincula, Kris Nino Marco Sawal', 1, 15, 4, '2019-12-10', '2019-12-10 11:07:29', '2019-12-10 09:03:42', '2.06', '2019-12-10 12:00:00', '2019-12-10 13:00:00', '2019-12-10 11:07:29', '2019-12-10 21:07:29', '1.00', '0.00', '0.00', '723.60', NULL, NULL, '0.00', NULL, NULL, '0.00', '0.00', 'reg', 0, 1, 1, 0, NULL, 0, 'WD', 'Present', 'MANUAL', 'INPROCESS', 'Admin', NULL, 0, '2020-01-30 02:30:17', '2020-01-30 02:30:17', NULL, NULL),
(28, NULL, '2017-083', 'Advincula, Kris Nino Marco Sawal', 1, 15, 4, '2019-12-11', '2019-12-11 13:46:00', NULL, '0.00', '2019-12-11 12:00:00', '2019-12-11 13:00:00', '2019-12-11 13:46:00', '2019-12-11 23:46:00', '1.00', '0.00', '0.00', '0.00', NULL, NULL, '0.00', NULL, NULL, '0.00', '0.00', 'reg', 0, 1, 1, 0, NULL, 0, 'WD', 'No Time Out', 'MANUAL', 'INPROCESS', 'Admin', NULL, 0, '2020-01-30 02:30:17', '2020-01-30 02:30:17', NULL, NULL),
(29, NULL, '2017-083', 'Advincula, Kris Nino Marco Sawal', 1, 15, 4, '2019-12-12', '2019-12-12 13:08:31', NULL, '0.00', '2019-12-12 12:00:00', '2019-12-12 13:00:00', '2019-12-12 13:08:31', '2019-12-12 23:08:31', '1.00', '0.00', '0.00', '0.00', NULL, NULL, '0.00', NULL, NULL, '0.00', '0.00', 'reg', 0, 1, 1, 0, NULL, 0, 'WD', 'No Time Out', 'MANUAL', 'INPROCESS', 'Admin', NULL, 0, '2020-01-30 02:30:17', '2020-01-30 02:30:17', NULL, NULL),
(30, NULL, '2017-083', 'Advincula, Kris Nino Marco Sawal', 1, 15, 4, '2019-12-13', '2019-12-13 09:16:45', NULL, '0.00', '2019-12-13 12:00:00', '2019-12-13 13:00:00', '2019-12-13 09:16:45', '2019-12-13 19:16:45', '1.00', '0.00', '0.00', '0.00', NULL, NULL, '0.00', NULL, NULL, '0.00', '0.00', 'reg', 0, 1, 1, 0, NULL, 0, 'WD', 'No Time Out', 'MANUAL', 'INPROCESS', 'Admin', NULL, 0, '2020-01-30 02:30:17', '2020-01-30 02:30:17', NULL, NULL),
(31, NULL, '2017-083', 'Advincula, Kris Nino Marco Sawal', 1, 15, 4, '2019-12-14', NULL, NULL, '0.00', NULL, NULL, NULL, NULL, '0.00', '0.00', '0.00', '0.00', NULL, NULL, '0.00', NULL, NULL, '0.00', '0.00', 'rd_reg', 0, 1, 1, 0, NULL, 0, 'WD', 'Restday', 'MANUAL', 'INPROCESS', 'Admin', NULL, 0, '2020-01-30 02:30:17', '2020-01-30 02:30:17', NULL, NULL),
(32, NULL, '2017-083', 'Advincula, Kris Nino Marco Sawal', 1, 15, 4, '2019-12-15', NULL, NULL, '0.00', NULL, NULL, NULL, NULL, '0.00', '0.00', '0.00', '0.00', NULL, NULL, '0.00', NULL, NULL, '0.00', '0.00', 'rd_reg', 0, 1, 1, 0, NULL, 0, 'WD', 'Restday', 'MANUAL', 'INPROCESS', 'Admin', NULL, 0, '2020-01-30 02:30:17', '2020-01-30 02:30:17', NULL, NULL),
(33, NULL, '2017-083', 'Advincula, Kris Nino Marco Sawal', 1, 15, 4, '2019-12-16', '2019-12-16 09:46:12', NULL, '0.00', '2019-12-16 12:00:00', '2019-12-16 13:00:00', '2019-12-16 09:46:12', '2019-12-16 19:46:12', '1.00', '0.00', '0.00', '0.00', NULL, NULL, '0.00', NULL, NULL, '0.00', '0.00', 'reg', 0, 1, 1, 0, NULL, 0, 'WD', 'No Time Out', 'MANUAL', 'INPROCESS', 'Admin', NULL, 0, '2020-01-30 02:30:17', '2020-01-30 02:30:17', NULL, NULL),
(34, NULL, '2017-083', 'Advincula, Kris Nino Marco Sawal', 1, 15, 4, '2019-12-17', '2019-12-17 11:49:11', '2019-12-17 23:32:53', '11.73', '2019-12-17 12:00:00', '2019-12-17 13:00:00', '2019-12-17 11:49:11', '2019-12-17 21:49:11', '1.00', '0.00', '0.00', '0.00', NULL, NULL, '0.00', NULL, NULL, '0.00', '0.00', 'reg', 0, 1, 1, 0, NULL, 0, 'WD', 'Present', 'MANUAL', 'INPROCESS', 'Admin', NULL, 0, '2020-01-30 02:30:17', '2020-01-30 02:30:17', NULL, NULL),
(35, NULL, '2017-083', 'Advincula, Kris Nino Marco Sawal', 1, 15, 4, '2019-12-18', NULL, '2019-12-18 17:30:12', '0.00', '2019-12-18 12:00:00', '2019-12-18 13:00:00', NULL, NULL, '1.00', '0.00', '0.00', '0.00', NULL, NULL, '0.00', NULL, NULL, '0.00', '0.00', 'reg', 0, 1, 1, 0, NULL, 0, 'WD', 'No Time In', 'MANUAL', 'INPROCESS', 'Admin', NULL, 0, '2020-01-30 02:30:17', '2020-01-30 02:30:17', NULL, NULL),
(36, NULL, '2017-083', 'Advincula, Kris Nino Marco Sawal', 1, 15, 4, '2019-12-19', '2019-12-19 09:15:05', '2019-12-19 17:02:06', '7.78', '2019-12-19 12:00:00', '2019-12-19 13:00:00', '2019-12-19 09:15:05', '2019-12-19 19:15:05', '1.00', '0.00', '0.00', '133.20', NULL, NULL, '0.00', NULL, NULL, '0.00', '0.00', 'reg', 0, 1, 1, 0, NULL, 0, 'WD', 'Present', 'MANUAL', 'INPROCESS', 'Admin', NULL, 0, '2020-01-30 02:30:17', '2020-01-30 02:30:17', NULL, NULL),
(37, NULL, '2017-083', 'Advincula, Kris Nino Marco Sawal', 1, 15, 4, '2019-12-20', NULL, NULL, '0.00', '2019-12-20 12:00:00', '2019-12-20 13:00:00', NULL, NULL, '1.00', '0.00', '0.00', '0.00', NULL, NULL, '0.00', NULL, NULL, '0.00', '0.00', 'reg', 0, 1, 1, 0, NULL, 0, 'WD', 'Absent', 'MANUAL', 'INPROCESS', 'Admin', NULL, 0, '2020-01-30 02:30:17', '2020-01-30 02:30:17', NULL, NULL),
(38, NULL, '2017-083', 'Advincula, Kris Nino Marco Sawal', 1, 15, 4, '2019-12-21', NULL, NULL, '0.00', NULL, NULL, NULL, NULL, '0.00', '0.00', '0.00', '0.00', NULL, NULL, '0.00', NULL, NULL, '0.00', '0.00', 'rd_reg', 0, 1, 1, 0, NULL, 0, 'WD', 'Restday', 'MANUAL', 'INPROCESS', 'Admin', NULL, 0, '2020-01-30 02:30:18', '2020-01-30 02:30:18', NULL, NULL),
(39, NULL, '2017-083', 'Advincula, Kris Nino Marco Sawal', 1, 15, 4, '2019-12-22', NULL, NULL, '0.00', NULL, NULL, NULL, NULL, '0.00', '0.00', '0.00', '0.00', NULL, NULL, '0.00', NULL, NULL, '0.00', '0.00', 'rd_reg', 0, 1, 1, 0, NULL, 0, 'WD', 'Restday', 'MANUAL', 'INPROCESS', 'Admin', NULL, 0, '2020-01-30 02:30:18', '2020-01-30 02:30:18', NULL, NULL),
(40, NULL, '2017-083', 'Advincula, Kris Nino Marco Sawal', 1, 15, 4, '2019-12-23', NULL, '2019-12-23 16:15:01', '0.00', '2019-12-23 12:00:00', '2019-12-23 13:00:00', NULL, NULL, '1.00', '0.00', '0.00', '0.00', NULL, NULL, '0.00', NULL, NULL, '0.00', '0.00', 'reg', 0, 1, 1, 0, NULL, 0, 'WD', 'No Time In', 'MANUAL', 'INPROCESS', 'Admin', NULL, 0, '2020-01-30 02:30:18', '2020-01-30 02:30:18', NULL, NULL),
(41, NULL, '2017-083', 'Advincula, Kris Nino Marco Sawal', 1, 15, 4, '2019-12-24', NULL, NULL, '0.00', '2019-12-24 12:00:00', '2019-12-24 13:00:00', NULL, NULL, '1.00', '0.00', '0.00', '0.00', NULL, NULL, '0.00', NULL, NULL, '0.00', '0.00', 'spcl_nw', 0, 1, 1, 0, NULL, 0, 'WD', 'Additional Special Day', 'MANUAL', 'INPROCESS', 'Admin', NULL, 0, '2020-01-30 02:30:18', '2020-01-30 02:30:18', NULL, NULL),
(42, NULL, '2017-083', 'Advincula, Kris Nino Marco Sawal', 1, 15, 4, '2019-12-25', NULL, NULL, '0.00', '2019-12-25 12:00:00', '2019-12-25 13:00:00', NULL, NULL, '1.00', '0.00', '0.00', '0.00', NULL, NULL, '0.00', NULL, NULL, '0.00', '0.00', 'legal', 0, 1, 1, 0, NULL, 0, 'WD', 'Christmas Day', 'MANUAL', 'INPROCESS', 'Admin', NULL, 0, '2020-01-30 02:30:18', '2020-01-30 02:30:18', NULL, NULL),
(43, NULL, '2017-083', 'Advincula, Kris Nino Marco Sawal', 1, 15, 4, '2019-12-26', NULL, NULL, '0.00', '2019-12-26 12:00:00', '2019-12-26 13:00:00', NULL, NULL, '1.00', '0.00', '0.00', '0.00', NULL, NULL, '0.00', NULL, NULL, '0.00', '0.00', 'reg', 0, 1, 1, 0, NULL, 0, 'WD', 'Absent', 'MANUAL', 'INPROCESS', 'Admin', NULL, 0, '2020-01-30 02:30:18', '2020-01-30 02:30:18', NULL, NULL),
(44, NULL, '2017-083', 'Advincula, Kris Nino Marco Sawal', 1, 15, 4, '2019-12-27', NULL, NULL, '0.00', '2019-12-27 12:00:00', '2019-12-27 13:00:00', NULL, NULL, '1.00', '0.00', '0.00', '0.00', NULL, NULL, '0.00', NULL, NULL, '0.00', '0.00', 'reg', 0, 1, 1, 0, NULL, 0, 'WD', 'Absent', 'MANUAL', 'INPROCESS', 'Admin', NULL, 0, '2020-01-30 02:30:18', '2020-01-30 02:30:18', NULL, NULL),
(45, NULL, '2017-083', 'Advincula, Kris Nino Marco Sawal', 1, 15, 4, '2019-12-28', NULL, NULL, '0.00', NULL, NULL, NULL, NULL, '0.00', '0.00', '0.00', '0.00', NULL, NULL, '0.00', NULL, NULL, '0.00', '0.00', 'rd_reg', 0, 1, 1, 0, NULL, 0, 'WD', 'Restday', 'MANUAL', 'INPROCESS', 'Admin', NULL, 0, '2020-01-30 02:30:18', '2020-01-30 02:30:18', NULL, NULL),
(46, NULL, '2017-083', 'Advincula, Kris Nino Marco Sawal', 1, 15, 4, '2019-12-29', NULL, NULL, '0.00', NULL, NULL, NULL, NULL, '0.00', '0.00', '0.00', '0.00', NULL, NULL, '0.00', NULL, NULL, '0.00', '0.00', 'rd_reg', 0, 1, 1, 0, NULL, 0, 'WD', 'Restday', 'MANUAL', 'INPROCESS', 'Admin', NULL, 0, '2020-01-30 02:30:18', '2020-01-30 02:30:18', NULL, NULL),
(47, NULL, '2017-083', 'Advincula, Kris Nino Marco Sawal', 1, 15, 4, '2019-12-30', NULL, NULL, '0.00', '2019-12-30 12:00:00', '2019-12-30 13:00:00', NULL, NULL, '1.00', '0.00', '0.00', '0.00', NULL, NULL, '0.00', NULL, NULL, '0.00', '0.00', 'legal', 0, 1, 1, 0, NULL, 0, 'WD', 'Rizal Day', 'MANUAL', 'INPROCESS', 'Admin', NULL, 0, '2020-01-30 02:30:18', '2020-01-30 02:30:18', NULL, NULL),
(48, NULL, '2017-083', 'Advincula, Kris Nino Marco Sawal', 1, 15, 4, '2019-12-31', NULL, NULL, '0.00', '2019-12-31 12:00:00', '2019-12-31 13:00:00', NULL, NULL, '1.00', '0.00', '0.00', '0.00', NULL, NULL, '0.00', NULL, NULL, '0.00', '0.00', 'spcl_nw', 0, 1, 1, 0, NULL, 0, 'WD', 'Last day of the Year', 'MANUAL', 'INPROCESS', 'Admin', NULL, 0, '2020-01-30 02:30:18', '2020-01-30 02:30:18', NULL, NULL),
(49, NULL, '2000-017', 'Araquel, Joe marie Basada', 1, 14, 10, '2019-12-01', NULL, '2019-12-02 00:11:16', '0.00', '2019-12-02 12:00:00', '2019-12-02 13:00:00', '2019-12-01 08:30:00', '2019-12-01 18:30:00', '1.00', '0.00', '0.00', '0.00', NULL, NULL, '0.00', NULL, NULL, '0.00', '0.00', 'rd_reg', 0, 1, 1, 0, NULL, 0, 'WD', 'Restday', 'MANUAL', 'INPROCESS', 'Admin', NULL, 0, '2020-01-30 02:30:18', '2020-01-30 02:30:18', NULL, NULL),
(50, NULL, '2000-017', 'Araquel, Joe marie Basada', 1, 14, 10, '2019-12-02', '2019-12-02 08:11:16', '2019-12-02 19:19:29', '11.14', '2019-12-02 12:00:00', '2019-12-02 13:00:00', '2019-12-02 08:30:00', '2019-12-02 18:30:00', '1.00', '0.00', '0.00', '0.00', NULL, NULL, '0.00', NULL, NULL, '0.00', '0.00', 'reg', 0, 1, 1, 0, NULL, 0, 'WD', 'Present', 'MANUAL', 'INPROCESS', 'Admin', NULL, 0, '2020-01-30 02:30:18', '2020-01-30 02:30:18', NULL, NULL),
(51, NULL, '2000-017', 'Araquel, Joe marie Basada', 1, 14, 10, '2019-12-03', NULL, NULL, '0.00', '2019-12-03 12:00:00', '2019-12-03 13:00:00', '2019-12-03 08:30:00', '2019-12-03 18:30:00', '1.00', '0.00', '0.00', '0.00', NULL, NULL, '0.00', NULL, NULL, '0.00', '0.00', 'reg', 0, 1, 1, 0, NULL, 0, 'WD', 'Absent', 'MANUAL', 'INPROCESS', 'Admin', NULL, 0, '2020-01-30 02:30:18', '2020-01-30 02:30:18', NULL, NULL),
(52, NULL, '2000-017', 'Araquel, Joe marie Basada', 1, 14, 10, '2019-12-04', '2019-12-04 07:14:37', '2019-12-04 18:59:12', '11.74', '2019-12-04 12:00:00', '2019-12-04 13:00:00', '2019-12-04 08:30:00', '2019-12-04 18:30:00', '1.00', '0.00', '0.00', '0.00', NULL, NULL, '0.00', NULL, NULL, '0.00', '0.00', 'reg', 0, 1, 1, 0, NULL, 0, 'WD', 'Present', 'MANUAL', 'INPROCESS', 'Admin', NULL, 0, '2020-01-30 02:30:19', '2020-01-30 02:30:19', NULL, NULL),
(53, NULL, '2000-017', 'Araquel, Joe marie Basada', 1, 14, 10, '2019-12-05', '2019-12-05 07:34:12', '2019-12-05 19:18:58', '11.75', '2019-12-05 12:00:00', '2019-12-05 13:00:00', '2019-12-05 08:30:00', '2019-12-05 18:30:00', '1.00', '0.00', '0.00', '0.00', NULL, NULL, '0.00', NULL, NULL, '0.00', '0.00', 'reg', 0, 1, 1, 0, NULL, 0, 'WD', 'Present', 'MANUAL', 'INPROCESS', 'Admin', NULL, 0, '2020-01-30 02:30:19', '2020-01-30 02:30:19', NULL, NULL),
(54, NULL, '2000-017', 'Araquel, Joe marie Basada', 1, 14, 10, '2019-12-06', '2019-12-06 08:11:51', '2019-12-06 19:39:38', '11.46', '2019-12-06 12:00:00', '2019-12-06 13:00:00', '2019-12-06 08:30:00', '2019-12-06 18:30:00', '1.00', '0.00', '0.00', '0.00', NULL, NULL, '0.00', NULL, NULL, '0.00', '0.00', 'reg', 0, 1, 1, 0, NULL, 0, 'WD', 'Present', 'MANUAL', 'INPROCESS', 'Admin', NULL, 0, '2020-01-30 02:30:19', '2020-01-30 02:30:19', NULL, NULL),
(55, NULL, '2000-017', 'Araquel, Joe marie Basada', 1, 14, 10, '2019-12-07', NULL, NULL, '0.00', NULL, NULL, NULL, NULL, '0.00', '0.00', '0.00', '0.00', NULL, NULL, '0.00', NULL, NULL, '0.00', '0.00', 'rd_reg', 0, 1, 1, 0, NULL, 0, 'WD', 'Restday', 'MANUAL', 'INPROCESS', 'Admin', NULL, 0, '2020-01-30 02:30:19', '2020-01-30 02:30:19', NULL, NULL),
(56, NULL, '2000-017', 'Araquel, Joe marie Basada', 1, 14, 10, '2019-12-08', NULL, NULL, '0.00', NULL, NULL, NULL, NULL, '0.00', '0.00', '0.00', '0.00', NULL, NULL, '0.00', NULL, NULL, '0.00', '0.00', 'spcl_nw', 0, 1, 1, 0, NULL, 0, 'WD', 'Feast of the Immaculate Conceptions Of Mary', 'MANUAL', 'INPROCESS', 'Admin', NULL, 0, '2020-01-30 02:30:19', '2020-01-30 02:30:19', NULL, NULL),
(57, NULL, '2000-017', 'Araquel, Joe marie Basada', 1, 14, 10, '2019-12-09', NULL, NULL, '0.00', '2019-12-09 12:00:00', '2019-12-09 13:00:00', '2019-12-09 08:30:00', '2019-12-09 18:30:00', '1.00', '0.00', '0.00', '0.00', NULL, NULL, '0.00', NULL, NULL, '0.00', '0.00', 'reg', 0, 1, 1, 0, NULL, 0, 'WD', 'Absent', 'MANUAL', 'INPROCESS', 'Admin', NULL, 0, '2020-01-30 02:30:19', '2020-01-30 02:30:19', NULL, NULL),
(58, NULL, '2000-017', 'Araquel, Joe marie Basada', 1, 14, 10, '2019-12-10', '2019-12-10 07:20:15', '2019-12-10 18:56:23', '11.60', '2019-12-10 12:00:00', '2019-12-10 13:00:00', '2019-12-10 08:30:00', '2019-12-10 18:30:00', '1.00', '0.00', '0.00', '0.00', NULL, NULL, '0.00', NULL, NULL, '0.00', '0.00', 'reg', 0, 1, 1, 0, NULL, 0, 'WD', 'Present', 'MANUAL', 'INPROCESS', 'Admin', NULL, 0, '2020-01-30 02:30:19', '2020-01-30 02:30:19', NULL, NULL),
(59, NULL, '2000-017', 'Araquel, Joe marie Basada', 1, 14, 10, '2019-12-11', '2019-12-11 07:55:09', '2019-12-11 18:52:17', '10.95', '2019-12-11 12:00:00', '2019-12-11 13:00:00', '2019-12-11 08:30:00', '2019-12-11 18:30:00', '1.00', '0.00', '0.00', '0.00', NULL, NULL, '0.00', NULL, NULL, '0.00', '0.00', 'reg', 0, 1, 1, 0, NULL, 0, 'WD', 'Present', 'MANUAL', 'INPROCESS', 'Admin', NULL, 0, '2020-01-30 02:30:19', '2020-01-30 02:30:19', NULL, NULL),
(60, NULL, '2000-017', 'Araquel, Joe marie Basada', 1, 14, 10, '2019-12-12', '2019-12-12 07:42:09', '2019-12-12 19:11:51', '11.50', '2019-12-12 12:00:00', '2019-12-12 13:00:00', '2019-12-12 08:30:00', '2019-12-12 18:30:00', '1.00', '0.00', '0.00', '0.00', NULL, NULL, '0.00', NULL, NULL, '0.00', '0.00', 'reg', 0, 1, 1, 0, NULL, 0, 'WD', 'Present', 'MANUAL', 'INPROCESS', 'Admin', NULL, 0, '2020-01-30 02:30:19', '2020-01-30 02:30:19', NULL, NULL),
(61, NULL, '2000-017', 'Araquel, Joe marie Basada', 1, 14, 10, '2019-12-13', '2019-12-13 07:24:51', '2019-12-13 19:20:01', '11.92', '2019-12-13 12:00:00', '2019-12-13 13:00:00', '2019-12-13 08:30:00', '2019-12-13 18:30:00', '1.00', '0.00', '0.00', '0.00', NULL, NULL, '0.00', NULL, NULL, '0.00', '0.00', 'reg', 0, 1, 1, 0, NULL, 0, 'WD', 'Present', 'MANUAL', 'INPROCESS', 'Admin', NULL, 0, '2020-01-30 02:30:19', '2020-01-30 02:30:19', NULL, NULL),
(62, NULL, '2000-017', 'Araquel, Joe marie Basada', 1, 14, 10, '2019-12-14', NULL, NULL, '0.00', NULL, NULL, NULL, NULL, '0.00', '0.00', '0.00', '0.00', NULL, NULL, '0.00', NULL, NULL, '0.00', '0.00', 'rd_reg', 0, 1, 1, 0, NULL, 0, 'WD', 'Restday', 'MANUAL', 'INPROCESS', 'Admin', NULL, 0, '2020-01-30 02:30:19', '2020-01-30 02:30:19', NULL, NULL),
(63, NULL, '2000-017', 'Araquel, Joe marie Basada', 1, 14, 10, '2019-12-15', NULL, NULL, '0.00', NULL, NULL, NULL, NULL, '0.00', '0.00', '0.00', '0.00', NULL, NULL, '0.00', NULL, NULL, '0.00', '0.00', 'rd_reg', 0, 1, 1, 0, NULL, 0, 'WD', 'Restday', 'MANUAL', 'INPROCESS', 'Admin', NULL, 0, '2020-01-30 02:30:19', '2020-01-30 02:30:19', NULL, NULL),
(64, NULL, '2000-017', 'Araquel, Joe marie Basada', 1, 14, 10, '2019-12-16', '2019-12-16 09:14:06', '2019-12-16 19:07:08', '9.88', '2019-12-16 12:00:00', '2019-12-16 13:00:00', '2019-12-16 08:30:00', '2019-12-16 18:30:00', '1.00', '0.00', '44.40', '0.00', NULL, NULL, '0.00', NULL, NULL, '0.00', '0.00', 'reg', 0, 1, 1, 0, NULL, 0, 'WD', 'Present', 'MANUAL', 'INPROCESS', 'Admin', NULL, 0, '2020-01-30 02:30:19', '2020-01-30 02:30:19', NULL, NULL),
(65, NULL, '2000-017', 'Araquel, Joe marie Basada', 1, 14, 10, '2019-12-17', '2019-12-17 07:45:40', '2019-12-17 19:14:41', '11.48', '2019-12-17 12:00:00', '2019-12-17 13:00:00', '2019-12-17 08:30:00', '2019-12-17 18:30:00', '1.00', '0.00', '0.00', '0.00', NULL, NULL, '0.00', NULL, NULL, '0.00', '0.00', 'reg', 0, 1, 1, 0, NULL, 0, 'WD', 'Present', 'MANUAL', 'INPROCESS', 'Admin', NULL, 0, '2020-01-30 02:30:19', '2020-01-30 02:30:19', NULL, NULL),
(66, NULL, '2000-017', 'Araquel, Joe marie Basada', 1, 14, 10, '2019-12-18', '2019-12-18 07:37:19', '2019-12-18 20:02:29', '12.42', '2019-12-18 12:00:00', '2019-12-18 13:00:00', '2019-12-18 08:30:00', '2019-12-18 18:30:00', '1.00', '0.00', '0.00', '0.00', NULL, NULL, '0.00', NULL, NULL, '0.00', '0.00', 'reg', 0, 1, 1, 0, NULL, 0, 'WD', 'Present', 'MANUAL', 'INPROCESS', 'Admin', NULL, 0, '2020-01-30 02:30:20', '2020-01-30 02:30:20', NULL, NULL),
(67, NULL, '2000-017', 'Araquel, Joe marie Basada', 1, 14, 10, '2019-12-19', '2019-12-19 07:15:31', '2019-12-19 19:22:07', '12.11', '2019-12-19 12:00:00', '2019-12-19 13:00:00', '2019-12-19 08:30:00', '2019-12-19 18:30:00', '1.00', '0.00', '0.00', '0.00', NULL, NULL, '0.00', NULL, NULL, '0.00', '0.00', 'reg', 0, 1, 1, 0, NULL, 0, 'WD', 'Present', 'MANUAL', 'INPROCESS', 'Admin', NULL, 0, '2020-01-30 02:30:20', '2020-01-30 02:30:20', NULL, NULL),
(68, NULL, '2000-017', 'Araquel, Joe marie Basada', 1, 14, 10, '2019-12-20', '2019-12-20 07:58:56', '2019-12-20 18:32:51', '10.57', '2019-12-20 12:00:00', '2019-12-20 13:00:00', '2019-12-20 08:30:00', '2019-12-20 18:30:00', '1.00', '0.00', '0.00', '0.00', NULL, NULL, '0.00', NULL, NULL, '0.00', '0.00', 'reg', 0, 1, 1, 0, NULL, 0, 'WD', 'Present', 'MANUAL', 'INPROCESS', 'Admin', NULL, 0, '2020-01-30 02:30:20', '2020-01-30 02:30:20', NULL, NULL),
(69, NULL, '2000-017', 'Araquel, Joe marie Basada', 1, 14, 10, '2019-12-21', NULL, NULL, '0.00', NULL, NULL, NULL, NULL, '0.00', '0.00', '0.00', '0.00', NULL, NULL, '0.00', NULL, NULL, '0.00', '0.00', 'rd_reg', 0, 1, 1, 0, NULL, 0, 'WD', 'Restday', 'MANUAL', 'INPROCESS', 'Admin', NULL, 0, '2020-01-30 02:30:20', '2020-01-30 02:30:20', NULL, NULL),
(70, NULL, '2000-017', 'Araquel, Joe marie Basada', 1, 14, 10, '2019-12-22', NULL, NULL, '0.00', NULL, NULL, NULL, NULL, '0.00', '0.00', '0.00', '0.00', NULL, NULL, '0.00', NULL, NULL, '0.00', '0.00', 'rd_reg', 0, 1, 1, 0, NULL, 0, 'WD', 'Restday', 'MANUAL', 'INPROCESS', 'Admin', NULL, 0, '2020-01-30 02:30:20', '2020-01-30 02:30:20', NULL, NULL),
(71, NULL, '2000-017', 'Araquel, Joe marie Basada', 1, 14, 10, '2019-12-23', '2019-12-23 07:45:51', '2019-12-23 19:01:34', '11.26', '2019-12-23 12:00:00', '2019-12-23 13:00:00', '2019-12-23 08:30:00', '2019-12-23 18:30:00', '1.00', '0.00', '0.00', '0.00', NULL, NULL, '0.00', NULL, NULL, '0.00', '0.00', 'reg', 0, 1, 1, 0, NULL, 0, 'WD', 'Present', 'MANUAL', 'INPROCESS', 'Admin', NULL, 0, '2020-01-30 02:30:20', '2020-01-30 02:30:20', NULL, NULL),
(72, NULL, '2000-017', 'Araquel, Joe marie Basada', 1, 14, 10, '2019-12-24', NULL, NULL, '0.00', '2019-12-24 12:00:00', '2019-12-24 13:00:00', '2019-12-24 08:30:00', '2019-12-24 18:30:00', '1.00', '0.00', '0.00', '0.00', NULL, NULL, '0.00', NULL, NULL, '0.00', '0.00', 'spcl_nw', 0, 1, 1, 0, NULL, 0, 'WD', 'Additional Special Day', 'MANUAL', 'INPROCESS', 'Admin', NULL, 0, '2020-01-30 02:30:20', '2020-01-30 02:30:20', NULL, NULL),
(73, NULL, '2000-017', 'Araquel, Joe marie Basada', 1, 14, 10, '2019-12-25', NULL, NULL, '0.00', '2019-12-25 12:00:00', '2019-12-25 13:00:00', '2019-12-25 08:30:00', '2019-12-25 18:30:00', '1.00', '0.00', '0.00', '0.00', NULL, NULL, '0.00', NULL, NULL, '0.00', '0.00', 'legal', 0, 1, 1, 0, NULL, 0, 'WD', 'Christmas Day', 'MANUAL', 'INPROCESS', 'Admin', NULL, 0, '2020-01-30 02:30:20', '2020-01-30 02:30:20', NULL, NULL),
(74, NULL, '2000-017', 'Araquel, Joe marie Basada', 1, 14, 10, '2019-12-26', '2019-12-26 07:54:29', '2019-12-26 18:48:21', '10.90', '2019-12-26 12:00:00', '2019-12-26 13:00:00', '2019-12-26 08:30:00', '2019-12-26 18:30:00', '1.00', '0.00', '0.00', '0.00', NULL, NULL, '0.00', NULL, NULL, '0.00', '0.00', 'reg', 0, 1, 1, 0, NULL, 0, 'WD', 'Present', 'MANUAL', 'INPROCESS', 'Admin', NULL, 0, '2020-01-30 02:30:20', '2020-01-30 02:30:20', NULL, NULL),
(75, NULL, '2000-017', 'Araquel, Joe marie Basada', 1, 14, 10, '2019-12-27', NULL, NULL, '0.00', '2019-12-27 12:00:00', '2019-12-27 13:00:00', '2019-12-27 08:30:00', '2019-12-27 18:30:00', '1.00', '0.00', '0.00', '0.00', NULL, NULL, '0.00', NULL, NULL, '0.00', '0.00', 'reg', 0, 1, 1, 0, NULL, 0, 'WD', 'Absent', 'MANUAL', 'INPROCESS', 'Admin', NULL, 0, '2020-01-30 02:30:20', '2020-01-30 02:30:20', NULL, NULL),
(76, NULL, '2000-017', 'Araquel, Joe marie Basada', 1, 14, 10, '2019-12-28', NULL, NULL, '0.00', NULL, NULL, NULL, NULL, '0.00', '0.00', '0.00', '0.00', NULL, NULL, '0.00', NULL, NULL, '0.00', '0.00', 'rd_reg', 0, 1, 1, 0, NULL, 0, 'WD', 'Restday', 'MANUAL', 'INPROCESS', 'Admin', NULL, 0, '2020-01-30 02:30:20', '2020-01-30 02:30:20', NULL, NULL),
(77, NULL, '2000-017', 'Araquel, Joe marie Basada', 1, 14, 10, '2019-12-29', NULL, NULL, '0.00', NULL, NULL, NULL, NULL, '0.00', '0.00', '0.00', '0.00', NULL, NULL, '0.00', NULL, NULL, '0.00', '0.00', 'rd_reg', 0, 1, 1, 0, NULL, 0, 'WD', 'Restday', 'MANUAL', 'INPROCESS', 'Admin', NULL, 0, '2020-01-30 02:30:21', '2020-01-30 02:30:21', NULL, NULL),
(78, NULL, '2000-017', 'Araquel, Joe marie Basada', 1, 14, 10, '2019-12-30', NULL, NULL, '0.00', '2019-12-30 12:00:00', '2019-12-30 13:00:00', '2019-12-30 08:30:00', '2019-12-30 18:30:00', '1.00', '0.00', '0.00', '0.00', NULL, NULL, '0.00', NULL, NULL, '0.00', '0.00', 'legal', 0, 1, 1, 0, NULL, 0, 'WD', 'Rizal Day', 'MANUAL', 'INPROCESS', 'Admin', NULL, 0, '2020-01-30 02:30:21', '2020-01-30 02:30:21', NULL, NULL),
(79, NULL, '2000-017', 'Araquel, Joe marie Basada', 1, 14, 10, '2019-12-31', NULL, NULL, '0.00', '2019-12-31 12:00:00', '2019-12-31 13:00:00', '2019-12-31 08:30:00', '2019-12-31 18:30:00', '1.00', '0.00', '0.00', '0.00', NULL, NULL, '0.00', NULL, NULL, '0.00', '0.00', 'spcl_nw', 0, 1, 1, 0, NULL, 0, 'WD', 'Last day of the Year', 'MANUAL', 'INPROCESS', 'Admin', NULL, 0, '2020-01-30 02:30:21', '2020-01-30 02:30:21', NULL, NULL),
(80, NULL, '2018-004', 'Argales, Rome Aubrey Cruz', 1, 15, 13, '2019-12-01', NULL, NULL, '0.00', NULL, NULL, NULL, NULL, '0.00', '0.00', '0.00', '0.00', NULL, NULL, '0.00', NULL, NULL, '0.00', '0.00', 'rd_reg', 0, 1, 1, 0, NULL, 0, 'WD', 'Restday', 'MANUAL', 'INPROCESS', 'Admin', NULL, 0, '2020-01-30 02:30:21', '2020-01-30 02:30:21', NULL, NULL),
(81, NULL, '2018-004', 'Argales, Rome Aubrey Cruz', 1, 15, 13, '2019-12-02', NULL, NULL, '0.00', NULL, NULL, NULL, NULL, '0.00', '0.00', '0.00', '0.00', NULL, NULL, '0.00', NULL, NULL, '0.00', '0.00', 'rd_reg', 0, 1, 1, 0, NULL, 0, 'WD', 'Restday', 'MANUAL', 'INPROCESS', 'Admin', NULL, 0, '2020-01-30 02:30:21', '2020-01-30 02:30:21', NULL, NULL),
(82, NULL, '2018-004', 'Argales, Rome Aubrey Cruz', 1, 15, 13, '2019-12-03', NULL, NULL, '0.00', '2019-12-03 12:00:00', '2019-12-03 13:00:00', NULL, NULL, '1.00', '0.00', '0.00', '0.00', NULL, NULL, '0.00', NULL, NULL, '0.00', '0.00', 'reg', 0, 1, 1, 0, NULL, 0, 'WD', 'Absent', 'MANUAL', 'INPROCESS', 'Admin', NULL, 0, '2020-01-30 02:30:21', '2020-01-30 02:30:21', NULL, NULL),
(83, NULL, '2018-004', 'Argales, Rome Aubrey Cruz', 1, 15, 13, '2019-12-04', NULL, NULL, '0.00', '2019-12-04 12:00:00', '2019-12-04 13:00:00', NULL, NULL, '1.00', '0.00', '0.00', '0.00', NULL, NULL, '0.00', NULL, NULL, '0.00', '0.00', 'reg', 0, 1, 1, 0, NULL, 0, 'WD', 'Absent', 'MANUAL', 'INPROCESS', 'Admin', NULL, 0, '2020-01-30 02:30:21', '2020-01-30 02:30:21', NULL, NULL),
(84, NULL, '2018-004', 'Argales, Rome Aubrey Cruz', 1, 15, 13, '2019-12-05', NULL, NULL, '0.00', '2019-12-05 12:00:00', '2019-12-05 13:00:00', NULL, NULL, '1.00', '0.00', '0.00', '0.00', NULL, NULL, '0.00', NULL, NULL, '0.00', '0.00', 'reg', 0, 1, 1, 0, NULL, 0, 'WD', 'Absent', 'MANUAL', 'INPROCESS', 'Admin', NULL, 0, '2020-01-30 02:30:21', '2020-01-30 02:30:21', NULL, NULL),
(85, NULL, '2018-004', 'Argales, Rome Aubrey Cruz', 1, 15, 13, '2019-12-06', NULL, NULL, '0.00', '2019-12-06 12:00:00', '2019-12-06 13:00:00', NULL, NULL, '1.00', '0.00', '0.00', '0.00', NULL, NULL, '0.00', NULL, NULL, '0.00', '0.00', 'reg', 0, 1, 1, 0, NULL, 0, 'WD', 'Absent', 'MANUAL', 'INPROCESS', 'Admin', NULL, 0, '2020-01-30 02:30:21', '2020-01-30 02:30:21', NULL, NULL),
(86, NULL, '2018-004', 'Argales, Rome Aubrey Cruz', 1, 15, 13, '2019-12-07', NULL, NULL, '0.00', '2019-12-07 12:00:00', '2019-12-07 13:00:00', NULL, NULL, '1.00', '0.00', '0.00', '0.00', NULL, NULL, '0.00', NULL, NULL, '0.00', '0.00', 'reg', 0, 1, 1, 0, NULL, 0, 'WD', 'Absent', 'MANUAL', 'INPROCESS', 'Admin', NULL, 0, '2020-01-30 02:30:21', '2020-01-30 02:30:21', NULL, NULL),
(87, NULL, '2018-004', 'Argales, Rome Aubrey Cruz', 1, 15, 13, '2019-12-08', NULL, NULL, '0.00', NULL, NULL, NULL, NULL, '0.00', '0.00', '0.00', '0.00', NULL, NULL, '0.00', NULL, NULL, '0.00', '0.00', 'spcl_nw', 0, 1, 1, 0, NULL, 0, 'WD', 'Feast of the Immaculate Conceptions Of Mary', 'MANUAL', 'INPROCESS', 'Admin', NULL, 0, '2020-01-30 02:30:22', '2020-01-30 02:30:22', NULL, NULL),
(88, NULL, '2018-004', 'Argales, Rome Aubrey Cruz', 1, 15, 13, '2019-12-09', NULL, NULL, '0.00', NULL, NULL, NULL, NULL, '0.00', '0.00', '0.00', '0.00', NULL, NULL, '0.00', NULL, NULL, '0.00', '0.00', 'rd_reg', 0, 1, 1, 0, NULL, 0, 'WD', 'Restday', 'MANUAL', 'INPROCESS', 'Admin', NULL, 0, '2020-01-30 02:30:22', '2020-01-30 02:30:22', NULL, NULL),
(89, NULL, '2018-004', 'Argales, Rome Aubrey Cruz', 1, 15, 13, '2019-12-10', NULL, NULL, '0.00', '2019-12-10 12:00:00', '2019-12-10 13:00:00', NULL, NULL, '1.00', '0.00', '0.00', '0.00', NULL, NULL, '0.00', NULL, NULL, '0.00', '0.00', 'reg', 0, 1, 1, 0, NULL, 0, 'WD', 'Absent', 'MANUAL', 'INPROCESS', 'Admin', NULL, 0, '2020-01-30 02:30:22', '2020-01-30 02:30:22', NULL, NULL),
(90, NULL, '2018-004', 'Argales, Rome Aubrey Cruz', 1, 15, 13, '2019-12-11', NULL, NULL, '0.00', '2019-12-11 12:00:00', '2019-12-11 13:00:00', NULL, NULL, '1.00', '0.00', '0.00', '0.00', NULL, NULL, '0.00', NULL, NULL, '0.00', '0.00', 'reg', 0, 1, 1, 0, NULL, 0, 'WD', 'Absent', 'MANUAL', 'INPROCESS', 'Admin', NULL, 0, '2020-01-30 02:30:22', '2020-01-30 02:30:22', NULL, NULL),
(91, NULL, '2018-004', 'Argales, Rome Aubrey Cruz', 1, 15, 13, '2019-12-12', NULL, NULL, '0.00', '2019-12-12 12:00:00', '2019-12-12 13:00:00', NULL, NULL, '1.00', '0.00', '0.00', '0.00', NULL, NULL, '0.00', NULL, NULL, '0.00', '0.00', 'reg', 0, 1, 1, 0, NULL, 0, 'WD', 'Absent', 'MANUAL', 'INPROCESS', 'Admin', NULL, 0, '2020-01-30 02:30:22', '2020-01-30 02:30:22', NULL, NULL),
(92, NULL, '2018-004', 'Argales, Rome Aubrey Cruz', 1, 15, 13, '2019-12-13', NULL, NULL, '0.00', '2019-12-13 12:00:00', '2019-12-13 13:00:00', NULL, NULL, '1.00', '0.00', '0.00', '0.00', NULL, NULL, '0.00', NULL, NULL, '0.00', '0.00', 'reg', 0, 1, 1, 0, NULL, 0, 'WD', 'Absent', 'MANUAL', 'INPROCESS', 'Admin', NULL, 0, '2020-01-30 02:30:22', '2020-01-30 02:30:22', NULL, NULL),
(93, NULL, '2018-004', 'Argales, Rome Aubrey Cruz', 1, 15, 13, '2019-12-14', NULL, NULL, '0.00', '2019-12-14 12:00:00', '2019-12-14 13:00:00', NULL, NULL, '1.00', '0.00', '0.00', '0.00', NULL, NULL, '0.00', NULL, NULL, '0.00', '0.00', 'reg', 0, 1, 1, 0, NULL, 0, 'WD', 'Absent', 'MANUAL', 'INPROCESS', 'Admin', NULL, 0, '2020-01-30 02:30:22', '2020-01-30 02:30:22', NULL, NULL),
(94, NULL, '2018-004', 'Argales, Rome Aubrey Cruz', 1, 15, 13, '2019-12-15', NULL, NULL, '0.00', NULL, NULL, NULL, NULL, '0.00', '0.00', '0.00', '0.00', NULL, NULL, '0.00', NULL, NULL, '0.00', '0.00', 'rd_reg', 0, 1, 1, 0, NULL, 0, 'WD', 'Restday', 'MANUAL', 'INPROCESS', 'Admin', NULL, 0, '2020-01-30 02:30:22', '2020-01-30 02:30:22', NULL, NULL),
(95, NULL, '2018-004', 'Argales, Rome Aubrey Cruz', 1, 15, 13, '2019-12-16', NULL, NULL, '0.00', NULL, NULL, NULL, NULL, '0.00', '0.00', '0.00', '0.00', NULL, NULL, '0.00', NULL, NULL, '0.00', '0.00', 'rd_reg', 0, 1, 1, 0, NULL, 0, 'WD', 'Restday', 'MANUAL', 'INPROCESS', 'Admin', NULL, 0, '2020-01-30 02:30:22', '2020-01-30 02:30:22', NULL, NULL),
(96, NULL, '2018-004', 'Argales, Rome Aubrey Cruz', 1, 15, 13, '2019-12-17', NULL, NULL, '0.00', '2019-12-17 12:00:00', '2019-12-17 13:00:00', NULL, NULL, '1.00', '0.00', '0.00', '0.00', NULL, NULL, '0.00', NULL, NULL, '0.00', '0.00', 'reg', 0, 1, 1, 0, NULL, 0, 'WD', 'Absent', 'MANUAL', 'INPROCESS', 'Admin', NULL, 0, '2020-01-30 02:30:22', '2020-01-30 02:30:22', NULL, NULL),
(97, NULL, '2018-004', 'Argales, Rome Aubrey Cruz', 1, 15, 13, '2019-12-18', NULL, NULL, '0.00', '2019-12-18 12:00:00', '2019-12-18 13:00:00', NULL, NULL, '1.00', '0.00', '0.00', '0.00', NULL, NULL, '0.00', NULL, NULL, '0.00', '0.00', 'reg', 0, 1, 1, 0, NULL, 0, 'WD', 'Absent', 'MANUAL', 'INPROCESS', 'Admin', NULL, 0, '2020-01-30 02:30:22', '2020-01-30 02:30:22', NULL, NULL),
(98, NULL, '2018-004', 'Argales, Rome Aubrey Cruz', 1, 15, 13, '2019-12-19', NULL, NULL, '0.00', '2019-12-19 12:00:00', '2019-12-19 13:00:00', NULL, NULL, '1.00', '0.00', '0.00', '0.00', NULL, NULL, '0.00', NULL, NULL, '0.00', '0.00', 'reg', 0, 1, 1, 0, NULL, 0, 'WD', 'Absent', 'MANUAL', 'INPROCESS', 'Admin', NULL, 0, '2020-01-30 02:30:22', '2020-01-30 02:30:22', NULL, NULL),
(99, NULL, '2018-004', 'Argales, Rome Aubrey Cruz', 1, 15, 13, '2019-12-20', NULL, NULL, '0.00', '2019-12-20 12:00:00', '2019-12-20 13:00:00', NULL, NULL, '1.00', '0.00', '0.00', '0.00', NULL, NULL, '0.00', NULL, NULL, '0.00', '0.00', 'reg', 0, 1, 1, 0, NULL, 0, 'WD', 'Absent', 'MANUAL', 'INPROCESS', 'Admin', NULL, 0, '2020-01-30 02:30:22', '2020-01-30 02:30:22', NULL, NULL),
(100, NULL, '2018-004', 'Argales, Rome Aubrey Cruz', 1, 15, 13, '2019-12-21', NULL, NULL, '0.00', '2019-12-21 12:00:00', '2019-12-21 13:00:00', NULL, NULL, '1.00', '0.00', '0.00', '0.00', NULL, NULL, '0.00', NULL, NULL, '0.00', '0.00', 'reg', 0, 1, 1, 0, NULL, 0, 'WD', 'Absent', 'MANUAL', 'INPROCESS', 'Admin', NULL, 0, '2020-01-30 02:30:22', '2020-01-30 02:30:22', NULL, NULL),
(101, NULL, '2018-004', 'Argales, Rome Aubrey Cruz', 1, 15, 13, '2019-12-22', NULL, NULL, '0.00', NULL, NULL, NULL, NULL, '0.00', '0.00', '0.00', '0.00', NULL, NULL, '0.00', NULL, NULL, '0.00', '0.00', 'rd_reg', 0, 1, 1, 0, NULL, 0, 'WD', 'Restday', 'MANUAL', 'INPROCESS', 'Admin', NULL, 0, '2020-01-30 02:30:23', '2020-01-30 02:30:23', NULL, NULL),
(102, NULL, '2018-004', 'Argales, Rome Aubrey Cruz', 1, 15, 13, '2019-12-23', NULL, NULL, '0.00', NULL, NULL, NULL, NULL, '0.00', '0.00', '0.00', '0.00', NULL, NULL, '0.00', NULL, NULL, '0.00', '0.00', 'rd_reg', 0, 1, 1, 0, NULL, 0, 'WD', 'Restday', 'MANUAL', 'INPROCESS', 'Admin', NULL, 0, '2020-01-30 02:30:23', '2020-01-30 02:30:23', NULL, NULL),
(103, NULL, '2018-004', 'Argales, Rome Aubrey Cruz', 1, 15, 13, '2019-12-24', NULL, NULL, '0.00', '2019-12-24 12:00:00', '2019-12-24 13:00:00', NULL, NULL, '1.00', '0.00', '0.00', '0.00', NULL, NULL, '0.00', NULL, NULL, '0.00', '0.00', 'spcl_nw', 0, 1, 1, 0, NULL, 0, 'WD', 'Additional Special Day', 'MANUAL', 'INPROCESS', 'Admin', NULL, 0, '2020-01-30 02:30:23', '2020-01-30 02:30:23', NULL, NULL),
(104, NULL, '2018-004', 'Argales, Rome Aubrey Cruz', 1, 15, 13, '2019-12-25', NULL, NULL, '0.00', '2019-12-25 12:00:00', '2019-12-25 13:00:00', NULL, NULL, '1.00', '0.00', '0.00', '0.00', NULL, NULL, '0.00', NULL, NULL, '0.00', '0.00', 'legal', 0, 1, 1, 0, NULL, 0, 'WD', 'Christmas Day', 'MANUAL', 'INPROCESS', 'Admin', NULL, 0, '2020-01-30 02:30:23', '2020-01-30 02:30:23', NULL, NULL),
(105, NULL, '2018-004', 'Argales, Rome Aubrey Cruz', 1, 15, 13, '2019-12-26', NULL, NULL, '0.00', '2019-12-26 12:00:00', '2019-12-26 13:00:00', NULL, NULL, '1.00', '0.00', '0.00', '0.00', NULL, NULL, '0.00', NULL, NULL, '0.00', '0.00', 'reg', 0, 1, 1, 0, NULL, 0, 'WD', 'Absent', 'MANUAL', 'INPROCESS', 'Admin', NULL, 0, '2020-01-30 02:30:23', '2020-01-30 02:30:23', NULL, NULL),
(106, NULL, '2018-004', 'Argales, Rome Aubrey Cruz', 1, 15, 13, '2019-12-27', '2019-12-27 13:51:30', '2019-12-27 15:27:45', '1.60', '2019-12-27 12:00:00', '2019-12-27 13:00:00', '2019-12-27 13:51:30', '2019-12-27 23:51:30', '1.00', '0.00', '0.00', '504.00', NULL, NULL, '0.00', NULL, NULL, '0.00', '0.00', 'reg', 0, 1, 1, 0, NULL, 0, 'WD', 'Present', 'MANUAL', 'INPROCESS', 'Admin', NULL, 0, '2020-01-30 02:30:23', '2020-01-30 02:30:23', NULL, NULL),
(107, NULL, '2018-004', 'Argales, Rome Aubrey Cruz', 1, 15, 13, '2019-12-28', NULL, NULL, '0.00', '2019-12-28 12:00:00', '2019-12-28 13:00:00', NULL, NULL, '1.00', '0.00', '0.00', '0.00', NULL, NULL, '0.00', NULL, NULL, '0.00', '0.00', 'reg', 0, 1, 1, 0, NULL, 0, 'WD', 'Absent', 'MANUAL', 'INPROCESS', 'Admin', NULL, 0, '2020-01-30 02:30:23', '2020-01-30 02:30:23', NULL, NULL),
(108, NULL, '2018-004', 'Argales, Rome Aubrey Cruz', 1, 15, 13, '2019-12-29', NULL, NULL, '0.00', NULL, NULL, NULL, NULL, '0.00', '0.00', '0.00', '0.00', NULL, NULL, '0.00', NULL, NULL, '0.00', '0.00', 'rd_reg', 0, 1, 1, 0, NULL, 0, 'WD', 'Restday', 'MANUAL', 'INPROCESS', 'Admin', NULL, 0, '2020-01-30 02:30:23', '2020-01-30 02:30:23', NULL, NULL),
(109, NULL, '2018-004', 'Argales, Rome Aubrey Cruz', 1, 15, 13, '2019-12-30', NULL, NULL, '0.00', NULL, NULL, NULL, NULL, '0.00', '0.00', '0.00', '0.00', NULL, NULL, '0.00', NULL, NULL, '0.00', '0.00', 'legal', 0, 1, 1, 0, NULL, 0, 'WD', 'Rizal Day', 'MANUAL', 'INPROCESS', 'Admin', NULL, 0, '2020-01-30 02:30:23', '2020-01-30 02:30:23', NULL, NULL),
(110, NULL, '2018-004', 'Argales, Rome Aubrey Cruz', 1, 15, 13, '2019-12-31', NULL, NULL, '0.00', '2019-12-31 12:00:00', '2019-12-31 13:00:00', NULL, NULL, '1.00', '0.00', '0.00', '0.00', NULL, NULL, '0.00', NULL, NULL, '0.00', '0.00', 'spcl_nw', 0, 1, 1, 0, NULL, 0, 'WD', 'Last day of the Year', 'MANUAL', 'INPROCESS', 'Admin', NULL, 0, '2020-01-30 02:30:23', '2020-01-30 02:30:23', NULL, NULL),
(111, NULL, '2018-040', 'BIÃ‘AS, Kenneth Joshua Lope', 1, 15, 4, '2019-12-01', NULL, NULL, '0.00', NULL, NULL, NULL, NULL, '0.00', '0.00', '0.00', '0.00', NULL, NULL, '0.00', NULL, NULL, '0.00', '0.00', 'rd_reg', 0, 1, 1, 0, NULL, 0, 'WD', 'Restday', 'MANUAL', 'INPROCESS', 'Admin', NULL, 0, '2020-01-30 02:30:23', '2020-01-30 02:30:23', NULL, NULL),
(112, NULL, '2018-040', 'BIÃ‘AS, Kenneth Joshua Lope', 1, 15, 4, '2019-12-02', NULL, NULL, '0.00', '2019-12-02 12:00:00', '2019-12-02 13:00:00', NULL, NULL, '1.00', '0.00', '0.00', '0.00', NULL, NULL, '0.00', NULL, NULL, '0.00', '0.00', 'reg', 0, 1, 1, 0, NULL, 0, 'WD', 'Absent', 'MANUAL', 'INPROCESS', 'Admin', NULL, 0, '2020-01-30 02:30:23', '2020-01-30 02:30:23', NULL, NULL),
(113, NULL, '2018-040', 'BIÃ‘AS, Kenneth Joshua Lope', 1, 15, 4, '2019-12-03', NULL, NULL, '0.00', '2019-12-03 12:00:00', '2019-12-03 13:00:00', NULL, NULL, '1.00', '0.00', '0.00', '0.00', NULL, NULL, '0.00', NULL, NULL, '0.00', '0.00', 'reg', 0, 1, 1, 0, NULL, 0, 'WD', 'Absent', 'MANUAL', 'INPROCESS', 'Admin', NULL, 0, '2020-01-30 02:30:23', '2020-01-30 02:30:23', NULL, NULL),
(114, NULL, '2018-040', 'BIÃ‘AS, Kenneth Joshua Lope', 1, 15, 4, '2019-12-04', NULL, NULL, '0.00', '2019-12-04 12:00:00', '2019-12-04 13:00:00', NULL, NULL, '1.00', '0.00', '0.00', '0.00', NULL, NULL, '0.00', NULL, NULL, '0.00', '0.00', 'reg', 0, 1, 1, 0, NULL, 0, 'WD', 'Absent', 'MANUAL', 'INPROCESS', 'Admin', NULL, 0, '2020-01-30 02:30:23', '2020-01-30 02:30:23', NULL, NULL),
(115, NULL, '2018-040', 'BIÃ‘AS, Kenneth Joshua Lope', 1, 15, 4, '2019-12-05', NULL, NULL, '0.00', '2019-12-05 12:00:00', '2019-12-05 13:00:00', NULL, NULL, '1.00', '0.00', '0.00', '0.00', NULL, NULL, '0.00', NULL, NULL, '0.00', '0.00', 'reg', 0, 1, 1, 0, NULL, 0, 'WD', 'Absent', 'MANUAL', 'INPROCESS', 'Admin', NULL, 0, '2020-01-30 02:30:23', '2020-01-30 02:30:23', NULL, NULL),
(116, NULL, '2018-040', 'BIÃ‘AS, Kenneth Joshua Lope', 1, 15, 4, '2019-12-06', NULL, NULL, '0.00', '2019-12-06 12:00:00', '2019-12-06 13:00:00', NULL, NULL, '1.00', '0.00', '0.00', '0.00', NULL, NULL, '0.00', NULL, NULL, '0.00', '0.00', 'reg', 0, 1, 1, 0, NULL, 0, 'WD', 'Absent', 'MANUAL', 'INPROCESS', 'Admin', NULL, 0, '2020-01-30 02:30:23', '2020-01-30 02:30:23', NULL, NULL),
(117, NULL, '2018-040', 'BIÃ‘AS, Kenneth Joshua Lope', 1, 15, 4, '2019-12-07', NULL, NULL, '0.00', NULL, NULL, NULL, NULL, '0.00', '0.00', '0.00', '0.00', NULL, NULL, '0.00', NULL, NULL, '0.00', '0.00', 'rd_reg', 0, 1, 1, 0, NULL, 0, 'WD', 'Restday', 'MANUAL', 'INPROCESS', 'Admin', NULL, 0, '2020-01-30 02:30:23', '2020-01-30 02:30:23', NULL, NULL),
(118, NULL, '2018-040', 'BIÃ‘AS, Kenneth Joshua Lope', 1, 15, 4, '2019-12-08', NULL, NULL, '0.00', NULL, NULL, NULL, NULL, '0.00', '0.00', '0.00', '0.00', NULL, NULL, '0.00', NULL, NULL, '0.00', '0.00', 'spcl_nw', 0, 1, 1, 0, NULL, 0, 'WD', 'Feast of the Immaculate Conceptions Of Mary', 'MANUAL', 'INPROCESS', 'Admin', NULL, 0, '2020-01-30 02:30:23', '2020-01-30 02:30:23', NULL, NULL),
(119, NULL, '2018-040', 'BIÃ‘AS, Kenneth Joshua Lope', 1, 15, 4, '2019-12-09', NULL, NULL, '0.00', '2019-12-09 12:00:00', '2019-12-09 13:00:00', NULL, NULL, '1.00', '0.00', '0.00', '0.00', NULL, NULL, '0.00', NULL, NULL, '0.00', '0.00', 'reg', 0, 1, 1, 0, NULL, 0, 'WD', 'Absent', 'MANUAL', 'INPROCESS', 'Admin', NULL, 0, '2020-01-30 02:30:24', '2020-01-30 02:30:24', NULL, NULL),
(120, NULL, '2018-040', 'BIÃ‘AS, Kenneth Joshua Lope', 1, 15, 4, '2019-12-10', NULL, NULL, '0.00', '2019-12-10 12:00:00', '2019-12-10 13:00:00', NULL, NULL, '1.00', '0.00', '0.00', '0.00', NULL, NULL, '0.00', NULL, NULL, '0.00', '0.00', 'reg', 0, 1, 1, 0, NULL, 0, 'WD', 'Absent', 'MANUAL', 'INPROCESS', 'Admin', NULL, 0, '2020-01-30 02:30:24', '2020-01-30 02:30:24', NULL, NULL),
(121, NULL, '2018-040', 'BIÃ‘AS, Kenneth Joshua Lope', 1, 15, 4, '2019-12-11', NULL, NULL, '0.00', '2019-12-11 12:00:00', '2019-12-11 13:00:00', NULL, NULL, '1.00', '0.00', '0.00', '0.00', NULL, NULL, '0.00', NULL, NULL, '0.00', '0.00', 'reg', 0, 1, 1, 0, NULL, 0, 'WD', 'Absent', 'MANUAL', 'INPROCESS', 'Admin', NULL, 0, '2020-01-30 02:30:24', '2020-01-30 02:30:24', NULL, NULL),
(122, NULL, '2018-040', 'BIÃ‘AS, Kenneth Joshua Lope', 1, 15, 4, '2019-12-12', NULL, NULL, '0.00', '2019-12-12 12:00:00', '2019-12-12 13:00:00', NULL, NULL, '1.00', '0.00', '0.00', '0.00', NULL, NULL, '0.00', NULL, NULL, '0.00', '0.00', 'reg', 0, 1, 1, 0, NULL, 0, 'WD', 'Absent', 'MANUAL', 'INPROCESS', 'Admin', NULL, 0, '2020-01-30 02:30:24', '2020-01-30 02:30:24', NULL, NULL),
(123, NULL, '2018-040', 'BIÃ‘AS, Kenneth Joshua Lope', 1, 15, 4, '2019-12-13', NULL, NULL, '0.00', '2019-12-13 12:00:00', '2019-12-13 13:00:00', NULL, NULL, '1.00', '0.00', '0.00', '0.00', NULL, NULL, '0.00', NULL, NULL, '0.00', '0.00', 'reg', 0, 1, 1, 0, NULL, 0, 'WD', 'Absent', 'MANUAL', 'INPROCESS', 'Admin', NULL, 0, '2020-01-30 02:30:24', '2020-01-30 02:30:24', NULL, NULL),
(124, NULL, '2018-040', 'BIÃ‘AS, Kenneth Joshua Lope', 1, 15, 4, '2019-12-14', NULL, NULL, '0.00', NULL, NULL, NULL, NULL, '0.00', '0.00', '0.00', '0.00', NULL, NULL, '0.00', NULL, NULL, '0.00', '0.00', 'rd_reg', 0, 1, 1, 0, NULL, 0, 'WD', 'Restday', 'MANUAL', 'INPROCESS', 'Admin', NULL, 0, '2020-01-30 02:30:24', '2020-01-30 02:30:24', NULL, NULL);
INSERT INTO `date_and_time_records` (`id`, `register_number`, `company_id`, `employee_name`, `company_ind`, `group_ind`, `sched_template_id`, `sched_date`, `date_time_in`, `date_time_out`, `reg_total_hrs`, `lunch_out`, `lunch_in`, `schedule_shift_in`, `schedule_shift_out`, `lunch_durations_hrs`, `over_break_min`, `late_min`, `undertime_min`, `ot_time_in`, `ot_time_out`, `ot_total_hrs`, `night_diff_in`, `night_diff_out`, `night_diff_total_hrs`, `night_diff_total_ot_hrs`, `day_types`, `work_on_holiday`, `before_holiday`, `after_holiday`, `leaved`, `leave_types`, `leave_wpay`, `half_day`, `remarks`, `insystem`, `payroll_status`, `created_by`, `lu_by`, `deleted`, `created_at`, `updated_at`, `device_id_in`, `device_id_out`) VALUES
(125, NULL, '2018-040', 'BIÃ‘AS, Kenneth Joshua Lope', 1, 15, 4, '2019-12-15', NULL, NULL, '0.00', NULL, NULL, NULL, NULL, '0.00', '0.00', '0.00', '0.00', NULL, NULL, '0.00', NULL, NULL, '0.00', '0.00', 'rd_reg', 0, 1, 1, 0, NULL, 0, 'WD', 'Restday', 'MANUAL', 'INPROCESS', 'Admin', NULL, 0, '2020-01-30 02:30:24', '2020-01-30 02:30:24', NULL, NULL),
(126, NULL, '2018-040', 'BIÃ‘AS, Kenneth Joshua Lope', 1, 15, 4, '2019-12-16', NULL, NULL, '0.00', '2019-12-16 12:00:00', '2019-12-16 13:00:00', NULL, NULL, '1.00', '0.00', '0.00', '0.00', NULL, NULL, '0.00', NULL, NULL, '0.00', '0.00', 'reg', 0, 1, 1, 0, NULL, 0, 'WD', 'Absent', 'MANUAL', 'INPROCESS', 'Admin', NULL, 0, '2020-01-30 02:30:24', '2020-01-30 02:30:24', NULL, NULL),
(127, NULL, '2018-040', 'BIÃ‘AS, Kenneth Joshua Lope', 1, 15, 4, '2019-12-17', NULL, NULL, '0.00', '2019-12-17 12:00:00', '2019-12-17 13:00:00', NULL, NULL, '1.00', '0.00', '0.00', '0.00', NULL, NULL, '0.00', NULL, NULL, '0.00', '0.00', 'reg', 0, 1, 1, 0, NULL, 0, 'WD', 'Absent', 'MANUAL', 'INPROCESS', 'Admin', NULL, 0, '2020-01-30 02:30:24', '2020-01-30 02:30:24', NULL, NULL),
(128, NULL, '2018-040', 'BIÃ‘AS, Kenneth Joshua Lope', 1, 15, 4, '2019-12-18', '2019-12-18 13:55:04', '2019-12-18 15:23:49', '1.48', '2019-12-18 12:00:00', '2019-12-18 13:00:00', '2019-12-18 13:55:04', '2019-12-18 23:55:04', '1.00', '0.00', '0.00', '511.20', NULL, NULL, '0.00', NULL, NULL, '0.00', '0.00', 'reg', 0, 1, 1, 0, NULL, 0, 'WD', 'Present', 'MANUAL', 'INPROCESS', 'Admin', NULL, 0, '2020-01-30 02:30:24', '2020-01-30 02:30:24', NULL, NULL),
(129, NULL, '2018-040', 'BIÃ‘AS, Kenneth Joshua Lope', 1, 15, 4, '2019-12-19', NULL, NULL, '0.00', '2019-12-19 12:00:00', '2019-12-19 13:00:00', NULL, NULL, '1.00', '0.00', '0.00', '0.00', NULL, NULL, '0.00', NULL, NULL, '0.00', '0.00', 'reg', 0, 1, 1, 0, NULL, 0, 'WD', 'Absent', 'MANUAL', 'INPROCESS', 'Admin', NULL, 0, '2020-01-30 02:30:24', '2020-01-30 02:30:24', NULL, NULL),
(130, NULL, '2018-040', 'BIÃ‘AS, Kenneth Joshua Lope', 1, 15, 4, '2019-12-20', NULL, NULL, '0.00', '2019-12-20 12:00:00', '2019-12-20 13:00:00', NULL, NULL, '1.00', '0.00', '0.00', '0.00', NULL, NULL, '0.00', NULL, NULL, '0.00', '0.00', 'reg', 0, 1, 1, 0, NULL, 0, 'WD', 'Absent', 'MANUAL', 'INPROCESS', 'Admin', NULL, 0, '2020-01-30 02:30:24', '2020-01-30 02:30:24', NULL, NULL),
(131, NULL, '2018-040', 'BIÃ‘AS, Kenneth Joshua Lope', 1, 15, 4, '2019-12-21', NULL, NULL, '0.00', NULL, NULL, NULL, NULL, '0.00', '0.00', '0.00', '0.00', NULL, NULL, '0.00', NULL, NULL, '0.00', '0.00', 'rd_reg', 0, 1, 1, 0, NULL, 0, 'WD', 'Restday', 'MANUAL', 'INPROCESS', 'Admin', NULL, 0, '2020-01-30 02:30:24', '2020-01-30 02:30:24', NULL, NULL),
(132, NULL, '2018-040', 'BIÃ‘AS, Kenneth Joshua Lope', 1, 15, 4, '2019-12-22', NULL, NULL, '0.00', NULL, NULL, NULL, NULL, '0.00', '0.00', '0.00', '0.00', NULL, NULL, '0.00', NULL, NULL, '0.00', '0.00', 'rd_reg', 0, 1, 1, 0, NULL, 0, 'WD', 'Restday', 'MANUAL', 'INPROCESS', 'Admin', NULL, 0, '2020-01-30 02:30:24', '2020-01-30 02:30:24', NULL, NULL),
(133, NULL, '2018-040', 'BIÃ‘AS, Kenneth Joshua Lope', 1, 15, 4, '2019-12-23', NULL, NULL, '0.00', '2019-12-23 12:00:00', '2019-12-23 13:00:00', NULL, NULL, '1.00', '0.00', '0.00', '0.00', NULL, NULL, '0.00', NULL, NULL, '0.00', '0.00', 'reg', 0, 1, 1, 0, NULL, 0, 'WD', 'Absent', 'MANUAL', 'INPROCESS', 'Admin', NULL, 0, '2020-01-30 02:30:24', '2020-01-30 02:30:24', NULL, NULL),
(134, NULL, '2018-040', 'BIÃ‘AS, Kenneth Joshua Lope', 1, 15, 4, '2019-12-24', NULL, NULL, '0.00', '2019-12-24 12:00:00', '2019-12-24 13:00:00', NULL, NULL, '1.00', '0.00', '0.00', '0.00', NULL, NULL, '0.00', NULL, NULL, '0.00', '0.00', 'spcl_nw', 0, 1, 1, 0, NULL, 0, 'WD', 'Additional Special Day', 'MANUAL', 'INPROCESS', 'Admin', NULL, 0, '2020-01-30 02:30:24', '2020-01-30 02:30:24', NULL, NULL),
(135, NULL, '2018-040', 'BIÃ‘AS, Kenneth Joshua Lope', 1, 15, 4, '2019-12-25', NULL, NULL, '0.00', '2019-12-25 12:00:00', '2019-12-25 13:00:00', NULL, NULL, '1.00', '0.00', '0.00', '0.00', NULL, NULL, '0.00', NULL, NULL, '0.00', '0.00', 'legal', 0, 1, 1, 0, NULL, 0, 'WD', 'Christmas Day', 'MANUAL', 'INPROCESS', 'Admin', NULL, 0, '2020-01-30 02:30:24', '2020-01-30 02:30:24', NULL, NULL),
(136, NULL, '2018-040', 'BIÃ‘AS, Kenneth Joshua Lope', 1, 15, 4, '2019-12-26', NULL, NULL, '0.00', '2019-12-26 12:00:00', '2019-12-26 13:00:00', NULL, NULL, '1.00', '0.00', '0.00', '0.00', NULL, NULL, '0.00', NULL, NULL, '0.00', '0.00', 'reg', 0, 1, 1, 0, NULL, 0, 'WD', 'Absent', 'MANUAL', 'INPROCESS', 'Admin', NULL, 0, '2020-01-30 02:30:24', '2020-01-30 02:30:24', NULL, NULL),
(137, NULL, '2018-040', 'BIÃ‘AS, Kenneth Joshua Lope', 1, 15, 4, '2019-12-27', '2019-12-27 09:12:05', '2019-12-27 15:46:36', '6.58', '2019-12-27 12:00:00', '2019-12-27 13:00:00', '2019-12-27 09:12:05', '2019-12-27 19:12:05', '1.00', '0.00', '0.00', '205.20', NULL, NULL, '0.00', NULL, NULL, '0.00', '0.00', 'reg', 0, 1, 1, 0, NULL, 0, 'WD', 'Present', 'MANUAL', 'INPROCESS', 'Admin', NULL, 0, '2020-01-30 02:30:24', '2020-01-30 02:30:24', NULL, NULL),
(138, NULL, '2018-040', 'BIÃ‘AS, Kenneth Joshua Lope', 1, 15, 4, '2019-12-28', NULL, '2019-12-28 01:33:31', '0.00', NULL, NULL, NULL, NULL, '0.00', '0.00', '0.00', '0.00', NULL, NULL, '0.00', NULL, NULL, '0.00', '0.00', 'rd_reg', 0, 1, 1, 0, NULL, 0, 'WD', 'Restday', 'MANUAL', 'INPROCESS', 'Admin', NULL, 0, '2020-01-30 02:30:25', '2020-01-30 02:30:25', NULL, NULL),
(139, NULL, '2018-040', 'BIÃ‘AS, Kenneth Joshua Lope', 1, 15, 4, '2019-12-29', NULL, NULL, '0.00', NULL, NULL, NULL, NULL, '0.00', '0.00', '0.00', '0.00', NULL, NULL, '0.00', NULL, NULL, '0.00', '0.00', 'rd_reg', 0, 1, 1, 0, NULL, 0, 'WD', 'Restday', 'MANUAL', 'INPROCESS', 'Admin', NULL, 0, '2020-01-30 02:30:25', '2020-01-30 02:30:25', NULL, NULL),
(140, NULL, '2018-040', 'BIÃ‘AS, Kenneth Joshua Lope', 1, 15, 4, '2019-12-30', NULL, NULL, '0.00', '2019-12-30 12:00:00', '2019-12-30 13:00:00', NULL, NULL, '1.00', '0.00', '0.00', '0.00', NULL, NULL, '0.00', NULL, NULL, '0.00', '0.00', 'legal', 0, 1, 1, 0, NULL, 0, 'WD', 'Rizal Day', 'MANUAL', 'INPROCESS', 'Admin', NULL, 0, '2020-01-30 02:30:25', '2020-01-30 02:30:25', NULL, NULL),
(141, NULL, '2018-040', 'BIÃ‘AS, Kenneth Joshua Lope', 1, 15, 4, '2019-12-31', NULL, NULL, '0.00', '2019-12-31 12:00:00', '2019-12-31 13:00:00', NULL, NULL, '1.00', '0.00', '0.00', '0.00', NULL, NULL, '0.00', NULL, NULL, '0.00', '0.00', 'spcl_nw', 0, 1, 1, 0, NULL, 0, 'WD', 'Last day of the Year', 'MANUAL', 'INPROCESS', 'Admin', NULL, 0, '2020-01-30 02:30:25', '2020-01-30 02:30:25', NULL, NULL),
(142, NULL, '2010-191', 'CASTOR, GINA ALMADEN', 1, 16, 10, '2019-12-01', NULL, '2019-12-02 00:16:55', '0.00', '2019-12-02 12:00:00', '2019-12-02 13:00:00', '2019-12-01 08:30:00', '2019-12-01 18:30:00', '1.00', '0.00', '0.00', '0.00', NULL, NULL, '0.00', NULL, NULL, '0.00', '0.00', 'rd_reg', 0, 1, 1, 0, NULL, 0, 'WD', 'Restday', 'MANUAL', 'INPROCESS', 'Admin', NULL, 0, '2020-01-30 02:30:25', '2020-01-30 02:30:25', NULL, NULL),
(143, NULL, '2010-191', 'CASTOR, GINA ALMADEN', 1, 16, 10, '2019-12-02', '2019-12-02 08:30:00', '2019-12-03 13:00:00', '28.50', '2019-12-02 12:00:00', '2019-12-02 13:00:00', '2019-12-02 08:30:00', '2019-12-02 18:30:00', '1.00', '0.00', '0.00', '0.00', NULL, NULL, '0.00', NULL, NULL, '0.00', '0.00', 'reg', 0, 1, 1, 0, NULL, 0, 'WD', 'Present', 'MANUAL', 'INPROCESS', 'Admin', NULL, 0, '2020-01-30 02:30:25', '2020-01-30 02:30:25', NULL, NULL),
(144, NULL, '2010-191', 'CASTOR, GINA ALMADEN', 1, 16, 10, '2019-12-03', NULL, NULL, '0.00', NULL, NULL, NULL, NULL, '0.00', '0.00', '0.00', '0.00', NULL, NULL, '0.00', NULL, NULL, '0.00', '0.00', 'reg', 0, 1, 1, 1, '20', 0, 'WD', 'Official Bus.', 'MANUAL', 'INPROCESS', 'Admin', NULL, 0, '2020-01-30 02:30:25', '2020-01-30 02:30:25', NULL, NULL),
(145, NULL, '2010-191', 'CASTOR, GINA ALMADEN', 1, 16, 10, '2019-12-04', '2019-12-04 08:17:00', '2019-12-04 19:57:00', '11.67', '2019-12-04 12:00:00', '2019-12-04 13:00:00', '2019-12-04 08:30:00', '2019-12-04 18:30:00', '1.00', '0.00', '0.00', '0.00', NULL, NULL, '0.00', NULL, NULL, '0.00', '0.00', 'reg', 0, 1, 1, 0, NULL, 0, 'WD', 'Present', 'MANUAL', 'INPROCESS', 'Admin', NULL, 0, '2020-01-30 02:30:25', '2020-01-30 02:30:25', NULL, NULL),
(146, NULL, '2010-191', 'CASTOR, GINA ALMADEN', 1, 16, 10, '2019-12-05', '2019-12-05 08:24:00', '2019-12-05 20:09:00', '11.75', '2019-12-05 12:00:00', '2019-12-05 13:00:00', '2019-12-05 08:30:00', '2019-12-05 18:30:00', '1.00', '0.00', '0.00', '0.00', NULL, NULL, '0.00', NULL, NULL, '0.00', '0.00', 'reg', 0, 1, 1, 0, NULL, 0, 'WD', 'Present', 'MANUAL', 'INPROCESS', 'Admin', NULL, 0, '2020-01-30 02:30:25', '2020-01-30 02:30:25', NULL, NULL),
(147, NULL, '2010-191', 'CASTOR, GINA ALMADEN', 1, 16, 10, '2019-12-06', '2019-12-06 08:20:36', '2019-12-06 19:59:36', '11.65', '2019-12-06 12:00:00', '2019-12-06 13:00:00', '2019-12-06 08:30:00', '2019-12-06 18:30:00', '1.00', '0.00', '0.00', '0.00', NULL, NULL, '0.00', NULL, NULL, '0.00', '0.00', 'reg', 0, 1, 1, 0, NULL, 0, 'WD', 'Present', 'MANUAL', 'INPROCESS', 'Admin', NULL, 0, '2020-01-30 02:30:25', '2020-01-30 02:30:25', NULL, NULL),
(148, NULL, '2010-191', 'CASTOR, GINA ALMADEN', 1, 16, 10, '2019-12-07', NULL, NULL, '0.00', NULL, NULL, NULL, NULL, '0.00', '0.00', '0.00', '0.00', NULL, NULL, '0.00', NULL, NULL, '0.00', '0.00', 'rd_reg', 0, 1, 1, 0, NULL, 0, 'WD', 'Restday', 'MANUAL', 'INPROCESS', 'Admin', NULL, 0, '2020-01-30 02:30:25', '2020-01-30 02:30:25', NULL, NULL),
(149, NULL, '2010-191', 'CASTOR, GINA ALMADEN', 1, 16, 10, '2019-12-08', NULL, NULL, '0.00', NULL, NULL, NULL, NULL, '0.00', '0.00', '0.00', '0.00', NULL, NULL, '0.00', NULL, NULL, '0.00', '0.00', 'spcl_nw', 0, 1, 1, 0, NULL, 0, 'WD', 'Feast of the Immaculate Conceptions Of Mary', 'MANUAL', 'INPROCESS', 'Admin', NULL, 0, '2020-01-30 02:30:25', '2020-01-30 02:30:25', NULL, NULL),
(150, NULL, '2010-191', 'CASTOR, GINA ALMADEN', 1, 16, 10, '2019-12-09', NULL, '2019-12-09 20:00:40', '0.00', '2019-12-09 12:00:00', '2019-12-09 13:00:00', '2019-12-09 08:30:00', '2019-12-09 18:30:00', '1.00', '0.00', '0.00', '0.00', NULL, NULL, '0.00', NULL, NULL, '0.00', '0.00', 'reg', 0, 1, 1, 0, NULL, 0, 'WD', 'No Time In', 'MANUAL', 'INPROCESS', 'Admin', NULL, 0, '2020-01-30 02:30:25', '2020-01-30 02:30:25', NULL, NULL),
(151, NULL, '2010-191', 'CASTOR, GINA ALMADEN', 1, 16, 10, '2019-12-10', '2019-12-10 08:56:45', '2019-12-10 19:01:00', '10.07', '2019-12-10 12:00:00', '2019-12-10 13:00:00', '2019-12-10 08:30:00', '2019-12-10 18:30:00', '1.00', '0.00', '27.00', '0.00', NULL, NULL, '0.00', NULL, NULL, '0.00', '0.00', 'reg', 0, 1, 1, 0, NULL, 0, 'WD', 'Present', 'MANUAL', 'INPROCESS', 'Admin', NULL, 0, '2020-01-30 02:30:25', '2020-01-30 02:30:25', NULL, NULL),
(152, NULL, '2010-191', 'CASTOR, GINA ALMADEN', 1, 16, 10, '2019-12-11', '2019-12-11 08:26:53', '2019-12-11 19:10:14', '10.72', '2019-12-11 12:00:00', '2019-12-11 13:00:00', '2019-12-11 08:30:00', '2019-12-11 18:30:00', '1.00', '0.00', '0.00', '0.00', NULL, NULL, '0.00', NULL, NULL, '0.00', '0.00', 'reg', 0, 1, 1, 0, NULL, 0, 'WD', 'Present', 'MANUAL', 'INPROCESS', 'Admin', NULL, 0, '2020-01-30 02:30:25', '2020-01-30 02:30:25', NULL, NULL),
(153, NULL, '2010-191', 'CASTOR, GINA ALMADEN', 1, 16, 10, '2019-12-12', '2019-12-12 08:35:55', '2019-12-12 19:18:57', '10.72', '2019-12-12 12:00:00', '2019-12-12 13:00:00', '2019-12-12 08:30:00', '2019-12-12 18:30:00', '1.00', '0.00', '6.00', '0.00', NULL, NULL, '0.00', NULL, NULL, '0.00', '0.00', 'reg', 0, 1, 1, 0, NULL, 0, 'WD', 'Present', 'MANUAL', 'INPROCESS', 'Admin', NULL, 0, '2020-01-30 02:30:25', '2020-01-30 02:30:25', NULL, NULL),
(154, NULL, '2010-191', 'CASTOR, GINA ALMADEN', 1, 16, 10, '2019-12-13', NULL, '2019-12-13 19:26:05', '0.00', '2019-12-13 12:00:00', '2019-12-13 13:00:00', '2019-12-13 08:30:00', '2019-12-13 18:30:00', '1.00', '0.00', '0.00', '0.00', NULL, NULL, '0.00', NULL, NULL, '0.00', '0.00', 'reg', 0, 1, 1, 0, NULL, 0, 'WD', 'No Time In', 'MANUAL', 'INPROCESS', 'Admin', NULL, 0, '2020-01-30 02:30:25', '2020-01-30 02:30:25', NULL, NULL),
(155, NULL, '2010-191', 'CASTOR, GINA ALMADEN', 1, 16, 10, '2019-12-14', NULL, NULL, '0.00', NULL, NULL, NULL, NULL, '0.00', '0.00', '0.00', '0.00', NULL, NULL, '0.00', NULL, NULL, '0.00', '0.00', 'rd_reg', 0, 1, 1, 0, NULL, 0, 'WD', 'Restday', 'MANUAL', 'INPROCESS', 'Admin', NULL, 0, '2020-01-30 02:30:26', '2020-01-30 02:30:26', NULL, NULL),
(156, NULL, '2010-191', 'CASTOR, GINA ALMADEN', 1, 16, 10, '2019-12-15', NULL, NULL, '0.00', NULL, NULL, NULL, NULL, '0.00', '0.00', '0.00', '0.00', NULL, NULL, '0.00', NULL, NULL, '0.00', '0.00', 'rd_reg', 0, 1, 1, 0, NULL, 0, 'WD', 'Restday', 'MANUAL', 'INPROCESS', 'Admin', NULL, 0, '2020-01-30 02:30:26', '2020-01-30 02:30:26', NULL, NULL),
(157, NULL, '2010-191', 'CASTOR, GINA ALMADEN', 1, 16, 10, '2019-12-16', '2019-12-16 08:35:49', '2019-12-16 18:51:23', '10.26', '2019-12-16 12:00:00', '2019-12-16 13:00:00', '2019-12-16 08:30:00', '2019-12-16 18:30:00', '1.00', '0.00', '6.00', '0.00', NULL, NULL, '0.00', NULL, NULL, '0.00', '0.00', 'reg', 0, 1, 1, 0, NULL, 0, 'WD', 'Present', 'MANUAL', 'INPROCESS', 'Admin', NULL, 0, '2020-01-30 02:30:26', '2020-01-30 02:30:26', NULL, NULL),
(158, NULL, '2010-191', 'CASTOR, GINA ALMADEN', 1, 16, 10, '2019-12-17', '2019-12-17 08:24:03', '2019-12-17 19:46:57', '11.38', '2019-12-17 12:00:00', '2019-12-17 13:00:00', '2019-12-17 08:30:00', '2019-12-17 18:30:00', '1.00', '0.00', '0.00', '0.00', NULL, NULL, '0.00', NULL, NULL, '0.00', '0.00', 'reg', 0, 1, 1, 0, NULL, 0, 'WD', 'Present', 'MANUAL', 'INPROCESS', 'Admin', NULL, 0, '2020-01-30 02:30:26', '2020-01-30 02:30:26', NULL, NULL),
(159, NULL, '2010-191', 'CASTOR, GINA ALMADEN', 1, 16, 10, '2019-12-18', '2019-12-18 08:39:13', '2019-12-18 19:42:12', '11.05', '2019-12-18 12:00:00', '2019-12-18 13:00:00', '2019-12-18 08:30:00', '2019-12-18 18:30:00', '1.00', '0.00', '9.00', '0.00', NULL, NULL, '0.00', NULL, NULL, '0.00', '0.00', 'reg', 0, 1, 1, 0, NULL, 0, 'WD', 'Present', 'MANUAL', 'INPROCESS', 'Admin', NULL, 0, '2020-01-30 02:30:26', '2020-01-30 02:30:26', NULL, NULL),
(160, NULL, '2010-191', 'CASTOR, GINA ALMADEN', 1, 16, 10, '2019-12-19', '2019-12-19 08:30:25', '2019-12-19 19:26:24', '10.93', '2019-12-19 12:00:00', '2019-12-19 13:00:00', '2019-12-19 08:30:00', '2019-12-19 18:30:00', '1.00', '0.00', '0.60', '0.00', NULL, NULL, '0.00', NULL, NULL, '0.00', '0.00', 'reg', 0, 1, 1, 0, NULL, 0, 'WD', 'Present', 'MANUAL', 'INPROCESS', 'Admin', NULL, 0, '2020-01-30 02:30:26', '2020-01-30 02:30:26', NULL, NULL),
(161, NULL, '2010-191', 'CASTOR, GINA ALMADEN', 1, 16, 10, '2019-12-20', '2019-12-20 08:22:47', NULL, '0.00', '2019-12-20 12:00:00', '2019-12-20 13:00:00', '2019-12-20 08:30:00', '2019-12-20 18:30:00', '1.00', '0.00', '0.00', '0.00', NULL, NULL, '0.00', NULL, NULL, '0.00', '0.00', 'reg', 0, 1, 1, 0, NULL, 0, 'WD', 'No Time Out', 'MANUAL', 'INPROCESS', 'Admin', NULL, 0, '2020-01-30 02:30:26', '2020-01-30 02:30:26', NULL, NULL),
(162, NULL, '2010-191', 'CASTOR, GINA ALMADEN', 1, 16, 10, '2019-12-21', NULL, NULL, '0.00', NULL, NULL, NULL, NULL, '0.00', '0.00', '0.00', '0.00', NULL, NULL, '0.00', NULL, NULL, '0.00', '0.00', 'rd_reg', 0, 1, 1, 0, NULL, 0, 'WD', 'Restday', 'MANUAL', 'INPROCESS', 'Admin', NULL, 0, '2020-01-30 02:30:26', '2020-01-30 02:30:26', NULL, NULL),
(163, NULL, '2010-191', 'CASTOR, GINA ALMADEN', 1, 16, 10, '2019-12-22', NULL, NULL, '0.00', NULL, NULL, NULL, NULL, '0.00', '0.00', '0.00', '0.00', NULL, NULL, '0.00', NULL, NULL, '0.00', '0.00', 'rd_reg', 0, 1, 1, 0, NULL, 0, 'WD', 'Restday', 'MANUAL', 'INPROCESS', 'Admin', NULL, 0, '2020-01-30 02:30:26', '2020-01-30 02:30:26', NULL, NULL),
(164, NULL, '2010-191', 'CASTOR, GINA ALMADEN', 1, 16, 10, '2019-12-23', '2019-12-23 08:12:40', '2019-12-23 18:45:16', '10.54', '2019-12-23 12:00:00', '2019-12-23 13:00:00', '2019-12-23 08:30:00', '2019-12-23 18:30:00', '1.00', '0.00', '0.00', '0.00', NULL, NULL, '0.00', NULL, NULL, '0.00', '0.00', 'reg', 0, 1, 1, 0, NULL, 0, 'WD', 'Present', 'MANUAL', 'INPROCESS', 'Admin', NULL, 0, '2020-01-30 02:30:26', '2020-01-30 02:30:26', NULL, NULL),
(165, NULL, '2010-191', 'CASTOR, GINA ALMADEN', 1, 16, 10, '2019-12-24', NULL, NULL, '0.00', '2019-12-24 12:00:00', '2019-12-24 13:00:00', '2019-12-24 08:30:00', '2019-12-24 18:30:00', '1.00', '0.00', '0.00', '0.00', NULL, NULL, '0.00', NULL, NULL, '0.00', '0.00', 'spcl_nw', 0, 1, 1, 0, NULL, 0, 'WD', 'Additional Special Day', 'MANUAL', 'INPROCESS', 'Admin', NULL, 0, '2020-01-30 02:30:26', '2020-01-30 02:30:26', NULL, NULL),
(166, NULL, '2010-191', 'CASTOR, GINA ALMADEN', 1, 16, 10, '2019-12-25', NULL, NULL, '0.00', '2019-12-25 12:00:00', '2019-12-25 13:00:00', '2019-12-25 08:30:00', '2019-12-25 18:30:00', '1.00', '0.00', '0.00', '0.00', NULL, NULL, '0.00', NULL, NULL, '0.00', '0.00', 'legal', 0, 1, 1, 0, NULL, 0, 'WD', 'Christmas Day', 'MANUAL', 'INPROCESS', 'Admin', NULL, 0, '2020-01-30 02:30:26', '2020-01-30 02:30:26', NULL, NULL),
(167, NULL, '2010-191', 'CASTOR, GINA ALMADEN', 1, 16, 10, '2019-12-26', '2019-12-26 08:02:17', NULL, '0.00', '2019-12-26 12:00:00', '2019-12-26 13:00:00', '2019-12-26 08:30:00', '2019-12-26 18:30:00', '1.00', '0.00', '0.00', '0.00', NULL, NULL, '0.00', NULL, NULL, '0.00', '0.00', 'reg', 0, 1, 1, 0, NULL, 0, 'WD', 'No Time Out', 'MANUAL', 'INPROCESS', 'Admin', NULL, 0, '2020-01-30 02:30:26', '2020-01-30 02:30:26', NULL, NULL),
(168, NULL, '2010-191', 'CASTOR, GINA ALMADEN', 1, 16, 10, '2019-12-27', '2019-12-27 08:23:45', '2019-12-27 18:57:13', '10.56', '2019-12-27 12:00:00', '2019-12-27 13:00:00', '2019-12-27 08:30:00', '2019-12-27 18:30:00', '1.00', '0.00', '0.00', '0.00', NULL, NULL, '0.00', NULL, NULL, '0.00', '0.00', 'reg', 0, 1, 1, 0, NULL, 0, 'WD', 'Present', 'MANUAL', 'INPROCESS', 'Admin', NULL, 0, '2020-01-30 02:30:27', '2020-01-30 02:30:27', NULL, NULL),
(169, NULL, '2010-191', 'CASTOR, GINA ALMADEN', 1, 16, 10, '2019-12-28', NULL, NULL, '0.00', NULL, NULL, NULL, NULL, '0.00', '0.00', '0.00', '0.00', NULL, NULL, '0.00', NULL, NULL, '0.00', '0.00', 'rd_reg', 0, 1, 1, 0, NULL, 0, 'WD', 'Restday', 'MANUAL', 'INPROCESS', 'Admin', NULL, 0, '2020-01-30 02:30:27', '2020-01-30 02:30:27', NULL, NULL),
(170, NULL, '2010-191', 'CASTOR, GINA ALMADEN', 1, 16, 10, '2019-12-29', NULL, NULL, '0.00', NULL, NULL, NULL, NULL, '0.00', '0.00', '0.00', '0.00', NULL, NULL, '0.00', NULL, NULL, '0.00', '0.00', 'rd_reg', 0, 1, 1, 0, NULL, 0, 'WD', 'Restday', 'MANUAL', 'INPROCESS', 'Admin', NULL, 0, '2020-01-30 02:30:27', '2020-01-30 02:30:27', NULL, NULL),
(171, NULL, '2010-191', 'CASTOR, GINA ALMADEN', 1, 16, 10, '2019-12-30', NULL, NULL, '0.00', '2019-12-30 12:00:00', '2019-12-30 13:00:00', '2019-12-30 08:30:00', '2019-12-30 18:30:00', '1.00', '0.00', '0.00', '0.00', NULL, NULL, '0.00', NULL, NULL, '0.00', '0.00', 'legal', 0, 1, 1, 0, NULL, 0, 'WD', 'Rizal Day', 'MANUAL', 'INPROCESS', 'Admin', NULL, 0, '2020-01-30 02:30:27', '2020-01-30 02:30:27', NULL, NULL),
(172, NULL, '2010-191', 'CASTOR, GINA ALMADEN', 1, 16, 10, '2019-12-31', NULL, NULL, '0.00', '2019-12-31 12:00:00', '2019-12-31 13:00:00', '2019-12-31 08:30:00', '2019-12-31 18:30:00', '1.00', '0.00', '0.00', '0.00', NULL, NULL, '0.00', NULL, NULL, '0.00', '0.00', 'spcl_nw', 0, 1, 1, 0, NULL, 0, 'WD', 'Last day of the Year', 'MANUAL', 'INPROCESS', 'Admin', NULL, 0, '2020-01-30 02:30:27', '2020-01-30 02:30:27', NULL, NULL),
(173, NULL, '2015-051', 'Dayandante, Jasmin Pasco', 1, 16, 10, '2019-12-01', NULL, NULL, '0.00', NULL, NULL, NULL, NULL, '0.00', '0.00', '0.00', '0.00', NULL, NULL, '0.00', NULL, NULL, '0.00', '0.00', 'rd_reg', 0, 1, 1, 0, NULL, 0, 'WD', 'Restday', 'MANUAL', 'INPROCESS', 'Admin', NULL, 0, '2020-01-30 02:30:27', '2020-01-30 02:30:27', NULL, NULL),
(174, NULL, '2015-051', 'Dayandante, Jasmin Pasco', 1, 16, 10, '2019-12-02', '2019-12-02 13:36:00', '2019-12-03 01:00:00', '11.40', '2019-12-02 12:00:00', '2019-12-02 13:00:00', '2019-12-02 08:30:00', '2019-12-02 18:30:00', '1.00', '0.00', '306.00', '0.00', NULL, NULL, '0.00', NULL, NULL, '0.00', '0.00', 'reg', 0, 1, 1, 0, NULL, 0, 'WD', 'Late', 'MANUAL', 'INPROCESS', 'Admin', NULL, 0, '2020-01-30 02:30:27', '2020-01-30 02:30:27', NULL, NULL),
(175, NULL, '2015-051', 'Dayandante, Jasmin Pasco', 1, 16, 10, '2019-12-03', NULL, NULL, '0.00', NULL, NULL, NULL, NULL, '0.00', '0.00', '0.00', '0.00', NULL, NULL, '0.00', NULL, NULL, '0.00', '0.00', 'reg', 0, 1, 1, 1, '20', 0, 'WD', 'Official Bus.', 'MANUAL', 'INPROCESS', 'Admin', NULL, 0, '2020-01-30 02:30:27', '2020-01-30 02:30:27', NULL, NULL),
(176, NULL, '2015-051', 'Dayandante, Jasmin Pasco', 1, 16, 10, '2019-12-04', '2019-12-04 06:30:00', '2019-12-04 18:30:00', '12.00', '2019-12-04 12:00:00', '2019-12-04 13:00:00', '2019-12-04 08:30:00', '2019-12-04 18:30:00', '1.00', '0.00', '0.00', '0.00', NULL, NULL, '0.00', NULL, NULL, '0.00', '0.00', 'reg', 0, 1, 1, 0, NULL, 0, 'WD', 'Present', 'MANUAL', 'INPROCESS', 'Admin', NULL, 0, '2020-01-30 02:30:27', '2020-01-30 02:30:27', NULL, NULL),
(177, NULL, '2015-051', 'Dayandante, Jasmin Pasco', 1, 16, 10, '2019-12-05', '2019-12-05 08:30:00', '2019-12-05 21:30:00', '13.00', '2019-12-05 12:00:00', '2019-12-05 13:00:00', '2019-12-05 08:30:00', '2019-12-05 18:30:00', '1.00', '0.00', '0.00', '0.00', NULL, NULL, '0.00', NULL, NULL, '0.00', '0.00', 'reg', 0, 1, 1, 0, NULL, 0, 'WD', 'Present', 'MANUAL', 'INPROCESS', 'Admin', NULL, 0, '2020-01-30 02:30:27', '2020-01-30 02:30:27', NULL, NULL),
(178, NULL, '2015-051', 'Dayandante, Jasmin Pasco', 1, 16, 10, '2019-12-06', '2019-12-06 07:00:00', '2019-12-06 22:00:00', '15.00', '2019-12-06 12:00:00', '2019-12-06 13:00:00', '2019-12-06 08:30:00', '2019-12-06 18:30:00', '1.00', '0.00', '0.00', '0.00', NULL, NULL, '0.00', NULL, NULL, '0.00', '0.00', 'reg', 0, 1, 1, 0, NULL, 0, 'WD', 'Present', 'MANUAL', 'INPROCESS', 'Admin', NULL, 0, '2020-01-30 02:30:27', '2020-01-30 02:30:27', NULL, NULL),
(179, NULL, '2015-051', 'Dayandante, Jasmin Pasco', 1, 16, 10, '2019-12-07', NULL, NULL, '0.00', NULL, NULL, NULL, NULL, '0.00', '0.00', '0.00', '0.00', NULL, NULL, '0.00', NULL, NULL, '0.00', '0.00', 'rd_reg', 0, 1, 1, 0, NULL, 0, 'WD', 'Restday', 'MANUAL', 'INPROCESS', 'Admin', NULL, 0, '2020-01-30 02:30:27', '2020-01-30 02:30:27', NULL, NULL),
(180, NULL, '2015-051', 'Dayandante, Jasmin Pasco', 1, 16, 10, '2019-12-08', NULL, NULL, '0.00', NULL, NULL, NULL, NULL, '0.00', '0.00', '0.00', '0.00', NULL, NULL, '0.00', NULL, NULL, '0.00', '0.00', 'spcl_nw', 0, 1, 1, 0, NULL, 0, 'WD', 'Feast of the Immaculate Conceptions Of Mary', 'MANUAL', 'INPROCESS', 'Admin', NULL, 0, '2020-01-30 02:30:27', '2020-01-30 02:30:27', NULL, NULL),
(181, NULL, '2015-051', 'Dayandante, Jasmin Pasco', 1, 16, 10, '2019-12-09', '2019-12-09 13:11:53', '2019-12-09 20:00:47', '6.82', '2019-12-09 12:00:00', '2019-12-09 13:00:00', '2019-12-09 08:30:00', '2019-12-09 18:30:00', '1.00', '0.00', '282.00', '0.00', NULL, NULL, '0.00', NULL, NULL, '0.00', '0.00', 'reg', 0, 1, 1, 0, NULL, 0, 'WD', 'Present', 'MANUAL', 'INPROCESS', 'Admin', NULL, 0, '2020-01-30 02:30:27', '2020-01-30 02:30:27', NULL, NULL),
(182, NULL, '2015-051', 'Dayandante, Jasmin Pasco', 1, 16, 10, '2019-12-10', '2019-12-10 08:30:00', '2019-12-10 18:30:00', '10.00', '2019-12-10 12:00:00', '2019-12-10 13:00:00', '2019-12-10 08:30:00', '2019-12-10 18:30:00', '1.00', '0.00', '0.00', '0.00', NULL, NULL, '0.00', NULL, NULL, '0.00', '0.00', 'reg', 0, 1, 1, 0, NULL, 0, 'WD', 'Present', 'MANUAL', 'INPROCESS', 'Admin', NULL, 0, '2020-01-30 02:30:27', '2020-01-30 02:30:27', NULL, NULL),
(183, NULL, '2015-051', 'Dayandante, Jasmin Pasco', 1, 16, 10, '2019-12-11', '2019-12-11 08:30:00', '2019-12-11 18:30:00', '10.00', '2019-12-11 12:00:00', '2019-12-11 13:00:00', '2019-12-11 08:30:00', '2019-12-11 18:30:00', '1.00', '0.00', '0.00', '0.00', NULL, NULL, '0.00', NULL, NULL, '0.00', '0.00', 'reg', 0, 1, 1, 0, NULL, 0, 'WD', 'Present', 'MANUAL', 'INPROCESS', 'Admin', NULL, 0, '2020-01-30 02:30:27', '2020-01-30 02:30:27', NULL, NULL),
(184, NULL, '2015-051', 'Dayandante, Jasmin Pasco', 1, 16, 10, '2019-12-12', '2019-12-12 08:30:00', '2019-12-12 18:30:00', '10.00', '2019-12-12 12:00:00', '2019-12-12 13:00:00', '2019-12-12 08:30:00', '2019-12-12 18:30:00', '1.00', '0.00', '0.00', '0.00', NULL, NULL, '0.00', NULL, NULL, '0.00', '0.00', 'reg', 0, 1, 1, 0, NULL, 0, 'WD', 'Present', 'MANUAL', 'INPROCESS', 'Admin', NULL, 0, '2020-01-30 02:30:28', '2020-01-30 02:30:28', NULL, NULL),
(185, NULL, '2015-051', 'Dayandante, Jasmin Pasco', 1, 16, 10, '2019-12-13', '2019-12-13 08:30:00', '2019-12-14 11:30:00', '27.00', '2019-12-13 12:00:00', '2019-12-13 13:00:00', '2019-12-13 08:30:00', '2019-12-13 18:30:00', '1.00', '0.00', '0.00', '0.00', NULL, NULL, '0.00', NULL, NULL, '0.00', '0.00', 'reg', 0, 1, 1, 0, NULL, 0, 'WD', 'Present', 'MANUAL', 'INPROCESS', 'Admin', NULL, 0, '2020-01-30 02:30:28', '2020-01-30 02:30:28', NULL, NULL),
(186, NULL, '2015-051', 'Dayandante, Jasmin Pasco', 1, 16, 10, '2019-12-14', NULL, NULL, '0.00', NULL, NULL, NULL, NULL, '0.00', '0.00', '0.00', '0.00', NULL, NULL, '0.00', NULL, NULL, '0.00', '0.00', 'rd_reg', 0, 1, 1, 0, NULL, 0, 'WD', 'Restday', 'MANUAL', 'INPROCESS', 'Admin', NULL, 0, '2020-01-30 02:30:28', '2020-01-30 02:30:28', NULL, NULL),
(187, NULL, '2015-051', 'Dayandante, Jasmin Pasco', 1, 16, 10, '2019-12-15', NULL, NULL, '0.00', NULL, NULL, NULL, NULL, '0.00', '0.00', '0.00', '0.00', NULL, NULL, '0.00', NULL, NULL, '0.00', '0.00', 'rd_reg', 0, 1, 1, 0, NULL, 0, 'WD', 'Restday', 'MANUAL', 'INPROCESS', 'Admin', NULL, 0, '2020-01-30 02:30:28', '2020-01-30 02:30:28', NULL, NULL),
(188, NULL, '2015-051', 'Dayandante, Jasmin Pasco', 1, 16, 10, '2019-12-16', '2019-12-16 08:45:01', '2019-12-16 18:51:15', '10.10', '2019-12-16 12:00:00', '2019-12-16 13:00:00', '2019-12-16 08:30:00', '2019-12-16 18:30:00', '1.00', '0.00', '15.00', '0.00', NULL, NULL, '0.00', NULL, NULL, '0.00', '0.00', 'reg', 0, 1, 1, 0, NULL, 0, 'WD', 'Present', 'MANUAL', 'INPROCESS', 'Admin', NULL, 0, '2020-01-30 02:30:28', '2020-01-30 02:30:28', NULL, NULL),
(189, NULL, '2015-051', 'Dayandante, Jasmin Pasco', 1, 16, 10, '2019-12-17', '2019-12-17 08:30:00', '2019-12-17 18:30:00', '10.00', '2019-12-17 12:00:00', '2019-12-17 13:00:00', '2019-12-17 08:30:00', '2019-12-17 18:30:00', '1.00', '0.00', '0.00', '0.00', NULL, NULL, '0.00', NULL, NULL, '0.00', '0.00', 'reg', 0, 1, 1, 0, NULL, 0, 'WD', 'Present', 'MANUAL', 'INPROCESS', 'Admin', NULL, 0, '2020-01-30 02:30:28', '2020-01-30 02:30:28', NULL, NULL),
(190, NULL, '2015-051', 'Dayandante, Jasmin Pasco', 1, 16, 10, '2019-12-18', '2019-12-18 08:27:05', '2019-12-18 19:42:40', '11.26', '2019-12-18 12:00:00', '2019-12-18 13:00:00', '2019-12-18 08:30:00', '2019-12-18 18:30:00', '1.00', '0.00', '0.00', '0.00', NULL, NULL, '0.00', NULL, NULL, '0.00', '0.00', 'reg', 0, 1, 1, 0, NULL, 0, 'WD', 'Present', 'MANUAL', 'INPROCESS', 'Admin', NULL, 0, '2020-01-30 02:30:28', '2020-01-30 02:30:28', NULL, NULL),
(191, NULL, '2015-051', 'Dayandante, Jasmin Pasco', 1, 16, 10, '2019-12-19', '2019-12-19 08:35:30', '2019-12-19 13:56:54', '5.36', '2019-12-19 12:00:00', '2019-12-19 13:00:00', '2019-12-19 08:30:00', '2019-12-19 18:30:00', '1.00', '0.00', '5.40', '273.00', NULL, NULL, '0.00', NULL, NULL, '0.00', '0.00', 'reg', 0, 1, 1, 0, NULL, 0, 'WD', 'Present', 'MANUAL', 'INPROCESS', 'Admin', NULL, 0, '2020-01-30 02:30:28', '2020-01-30 02:30:28', NULL, NULL),
(192, NULL, '2015-051', 'Dayandante, Jasmin Pasco', 1, 16, 10, '2019-12-20', '2019-12-20 08:43:23', NULL, '0.00', '2019-12-20 12:00:00', '2019-12-20 13:00:00', '2019-12-20 08:30:00', '2019-12-20 18:30:00', '1.00', '0.00', '0.00', '0.00', NULL, NULL, '0.00', NULL, NULL, '0.00', '0.00', 'reg', 0, 1, 1, 0, NULL, 0, 'WD', 'No Time Out', 'MANUAL', 'INPROCESS', 'Admin', NULL, 0, '2020-01-30 02:30:29', '2020-01-30 02:30:29', NULL, NULL),
(193, NULL, '2015-051', 'Dayandante, Jasmin Pasco', 1, 16, 10, '2019-12-21', NULL, NULL, '0.00', NULL, NULL, NULL, NULL, '0.00', '0.00', '0.00', '0.00', NULL, NULL, '0.00', NULL, NULL, '0.00', '0.00', 'rd_reg', 0, 1, 1, 0, NULL, 0, 'WD', 'Restday', 'MANUAL', 'INPROCESS', 'Admin', NULL, 0, '2020-01-30 02:30:29', '2020-01-30 02:30:29', NULL, NULL),
(194, NULL, '2015-051', 'Dayandante, Jasmin Pasco', 1, 16, 10, '2019-12-22', NULL, NULL, '0.00', NULL, NULL, NULL, NULL, '0.00', '0.00', '0.00', '0.00', NULL, NULL, '0.00', NULL, NULL, '0.00', '0.00', 'rd_reg', 0, 1, 1, 0, NULL, 0, 'WD', 'Restday', 'MANUAL', 'INPROCESS', 'Admin', NULL, 0, '2020-01-30 02:30:29', '2020-01-30 02:30:29', NULL, NULL),
(195, NULL, '2015-051', 'Dayandante, Jasmin Pasco', 1, 16, 10, '2019-12-23', '2019-12-23 08:33:03', '2019-12-23 18:45:22', '10.21', NULL, NULL, '2019-12-23 08:30:00', '2019-12-23 18:30:00', '0.00', '0.00', '3.00', '0.00', NULL, NULL, '0.00', NULL, NULL, '0.00', '0.00', 'reg', 0, 1, 1, 1, '4', 1, 'WD', 'Vacation Leave', 'MANUAL', 'INPROCESS', 'Admin', NULL, 0, '2020-01-30 02:30:29', '2020-01-30 02:30:29', NULL, NULL),
(196, NULL, '2015-051', 'Dayandante, Jasmin Pasco', 1, 16, 10, '2019-12-24', NULL, NULL, '0.00', '2019-12-24 12:00:00', '2019-12-24 13:00:00', '2019-12-24 08:30:00', '2019-12-24 18:30:00', '1.00', '0.00', '0.00', '0.00', NULL, NULL, '0.00', NULL, NULL, '0.00', '0.00', 'spcl_nw', 0, 1, 1, 0, NULL, 0, 'WD', 'Additional Special Day', 'MANUAL', 'INPROCESS', 'Admin', NULL, 0, '2020-01-30 02:30:29', '2020-01-30 02:30:29', NULL, NULL),
(197, NULL, '2015-051', 'Dayandante, Jasmin Pasco', 1, 16, 10, '2019-12-25', NULL, NULL, '0.00', '2019-12-25 12:00:00', '2019-12-25 13:00:00', '2019-12-25 08:30:00', '2019-12-25 18:30:00', '1.00', '0.00', '0.00', '0.00', NULL, NULL, '0.00', NULL, NULL, '0.00', '0.00', 'legal', 0, 1, 1, 0, NULL, 0, 'WD', 'Christmas Day', 'MANUAL', 'INPROCESS', 'Admin', NULL, 0, '2020-01-30 02:30:29', '2020-01-30 02:30:29', NULL, NULL),
(198, NULL, '2015-051', 'Dayandante, Jasmin Pasco', 1, 16, 10, '2019-12-26', '2019-12-26 08:32:24', NULL, '0.00', '2019-12-26 12:00:00', '2019-12-26 13:00:00', '2019-12-26 08:30:00', '2019-12-26 18:30:00', '1.00', '0.00', '0.00', '0.00', NULL, NULL, '0.00', NULL, NULL, '0.00', '0.00', 'reg', 0, 1, 1, 0, NULL, 0, 'WD', 'No Time Out', 'MANUAL', 'INPROCESS', 'Admin', NULL, 0, '2020-01-30 02:30:29', '2020-01-30 02:30:29', NULL, NULL),
(199, NULL, '2015-051', 'Dayandante, Jasmin Pasco', 1, 16, 10, '2019-12-27', '2019-12-27 08:30:25', '2019-12-27 18:57:22', '10.45', '2019-12-27 12:00:00', '2019-12-27 13:00:00', '2019-12-27 08:30:00', '2019-12-27 18:30:00', '1.00', '0.00', '0.60', '0.00', NULL, NULL, '0.00', NULL, NULL, '0.00', '0.00', 'reg', 0, 1, 1, 0, NULL, 0, 'WD', 'Present', 'MANUAL', 'INPROCESS', 'Admin', NULL, 0, '2020-01-30 02:30:29', '2020-01-30 02:30:29', NULL, NULL),
(200, NULL, '2015-051', 'Dayandante, Jasmin Pasco', 1, 16, 10, '2019-12-28', NULL, NULL, '0.00', NULL, NULL, NULL, NULL, '0.00', '0.00', '0.00', '0.00', NULL, NULL, '0.00', NULL, NULL, '0.00', '0.00', 'rd_reg', 0, 1, 1, 0, NULL, 0, 'WD', 'Restday', 'MANUAL', 'INPROCESS', 'Admin', NULL, 0, '2020-01-30 02:30:29', '2020-01-30 02:30:29', NULL, NULL),
(201, NULL, '2015-051', 'Dayandante, Jasmin Pasco', 1, 16, 10, '2019-12-29', NULL, NULL, '0.00', NULL, NULL, NULL, NULL, '0.00', '0.00', '0.00', '0.00', NULL, NULL, '0.00', NULL, NULL, '0.00', '0.00', 'rd_reg', 0, 1, 1, 0, NULL, 0, 'WD', 'Restday', 'MANUAL', 'INPROCESS', 'Admin', NULL, 0, '2020-01-30 02:30:29', '2020-01-30 02:30:29', NULL, NULL),
(202, NULL, '2015-051', 'Dayandante, Jasmin Pasco', 1, 16, 10, '2019-12-30', NULL, NULL, '0.00', '2019-12-30 12:00:00', '2019-12-30 13:00:00', '2019-12-30 08:30:00', '2019-12-30 18:30:00', '1.00', '0.00', '0.00', '0.00', NULL, NULL, '0.00', NULL, NULL, '0.00', '0.00', 'legal', 0, 1, 1, 0, NULL, 0, 'WD', 'Rizal Day', 'MANUAL', 'INPROCESS', 'Admin', NULL, 0, '2020-01-30 02:30:29', '2020-01-30 02:30:29', NULL, NULL),
(203, NULL, '2015-051', 'Dayandante, Jasmin Pasco', 1, 16, 10, '2019-12-31', NULL, NULL, '0.00', '2019-12-31 12:00:00', '2019-12-31 13:00:00', '2019-12-31 08:30:00', '2019-12-31 18:30:00', '1.00', '0.00', '0.00', '0.00', NULL, NULL, '0.00', NULL, NULL, '0.00', '0.00', 'spcl_nw', 0, 1, 1, 0, NULL, 0, 'WD', 'Last day of the Year', 'MANUAL', 'INPROCESS', 'Admin', NULL, 0, '2020-01-30 02:30:30', '2020-01-30 02:30:30', NULL, NULL),
(204, NULL, '2017-082', 'Flores, Juan Karlo Quisol', 1, 15, 4, '2019-12-01', NULL, NULL, '0.00', NULL, NULL, NULL, NULL, '0.00', '0.00', '0.00', '0.00', NULL, NULL, '0.00', NULL, NULL, '0.00', '0.00', 'rd_reg', 0, 1, 1, 0, NULL, 0, 'WD', 'Restday', 'MANUAL', 'INPROCESS', 'Admin', NULL, 0, '2020-01-30 02:30:30', '2020-01-30 02:30:30', NULL, NULL),
(205, NULL, '2017-082', 'Flores, Juan Karlo Quisol', 1, 15, 4, '2019-12-02', NULL, NULL, '0.00', '2019-12-02 12:00:00', '2019-12-02 13:00:00', NULL, NULL, '1.00', '0.00', '0.00', '0.00', NULL, NULL, '0.00', NULL, NULL, '0.00', '0.00', 'reg', 0, 1, 1, 0, NULL, 0, 'WD', 'Absent', 'MANUAL', 'INPROCESS', 'Admin', NULL, 0, '2020-01-30 02:30:30', '2020-01-30 02:30:30', NULL, NULL),
(206, NULL, '2017-082', 'Flores, Juan Karlo Quisol', 1, 15, 4, '2019-12-03', NULL, NULL, '0.00', '2019-12-03 12:00:00', '2019-12-03 13:00:00', NULL, NULL, '1.00', '0.00', '0.00', '0.00', NULL, NULL, '0.00', NULL, NULL, '0.00', '0.00', 'reg', 0, 1, 1, 0, NULL, 0, 'WD', 'Absent', 'MANUAL', 'INPROCESS', 'Admin', NULL, 0, '2020-01-30 02:30:30', '2020-01-30 02:30:30', NULL, NULL),
(207, NULL, '2017-082', 'Flores, Juan Karlo Quisol', 1, 15, 4, '2019-12-04', NULL, NULL, '0.00', '2019-12-04 12:00:00', '2019-12-04 13:00:00', NULL, NULL, '1.00', '0.00', '0.00', '0.00', NULL, NULL, '0.00', NULL, NULL, '0.00', '0.00', 'reg', 0, 1, 1, 0, NULL, 0, 'WD', 'Absent', 'MANUAL', 'INPROCESS', 'Admin', NULL, 0, '2020-01-30 02:30:30', '2020-01-30 02:30:30', NULL, NULL),
(208, NULL, '2017-082', 'Flores, Juan Karlo Quisol', 1, 15, 4, '2019-12-05', NULL, NULL, '0.00', '2019-12-05 12:00:00', '2019-12-05 13:00:00', NULL, NULL, '1.00', '0.00', '0.00', '0.00', NULL, NULL, '0.00', NULL, NULL, '0.00', '0.00', 'reg', 0, 1, 1, 0, NULL, 0, 'WD', 'Absent', 'MANUAL', 'INPROCESS', 'Admin', NULL, 0, '2020-01-30 02:30:30', '2020-01-30 02:30:30', NULL, NULL),
(209, NULL, '2017-082', 'Flores, Juan Karlo Quisol', 1, 15, 4, '2019-12-06', NULL, NULL, '0.00', '2019-12-06 12:00:00', '2019-12-06 13:00:00', NULL, NULL, '1.00', '0.00', '0.00', '0.00', NULL, NULL, '0.00', NULL, NULL, '0.00', '0.00', 'reg', 0, 1, 1, 0, NULL, 0, 'WD', 'Absent', 'MANUAL', 'INPROCESS', 'Admin', NULL, 0, '2020-01-30 02:30:30', '2020-01-30 02:30:30', NULL, NULL),
(210, NULL, '2017-082', 'Flores, Juan Karlo Quisol', 1, 15, 4, '2019-12-07', NULL, NULL, '0.00', NULL, NULL, NULL, NULL, '0.00', '0.00', '0.00', '0.00', NULL, NULL, '0.00', NULL, NULL, '0.00', '0.00', 'rd_reg', 0, 1, 1, 0, NULL, 0, 'WD', 'Restday', 'MANUAL', 'INPROCESS', 'Admin', NULL, 0, '2020-01-30 02:30:30', '2020-01-30 02:30:30', NULL, NULL),
(211, NULL, '2017-082', 'Flores, Juan Karlo Quisol', 1, 15, 4, '2019-12-08', NULL, NULL, '0.00', NULL, NULL, NULL, NULL, '0.00', '0.00', '0.00', '0.00', NULL, NULL, '0.00', NULL, NULL, '0.00', '0.00', 'spcl_nw', 0, 1, 1, 0, NULL, 0, 'WD', 'Feast of the Immaculate Conceptions Of Mary', 'MANUAL', 'INPROCESS', 'Admin', NULL, 0, '2020-01-30 02:30:31', '2020-01-30 02:30:31', NULL, NULL),
(212, NULL, '2017-082', 'Flores, Juan Karlo Quisol', 1, 15, 4, '2019-12-09', NULL, NULL, '0.00', '2019-12-09 12:00:00', '2019-12-09 13:00:00', NULL, NULL, '1.00', '0.00', '0.00', '0.00', NULL, NULL, '0.00', NULL, NULL, '0.00', '0.00', 'reg', 0, 1, 1, 0, NULL, 0, 'WD', 'Absent', 'MANUAL', 'INPROCESS', 'Admin', NULL, 0, '2020-01-30 02:30:31', '2020-01-30 02:30:31', NULL, NULL),
(213, NULL, '2017-082', 'Flores, Juan Karlo Quisol', 1, 15, 4, '2019-12-10', '2019-12-10 09:22:42', '2019-12-10 11:22:21', '1.99', '2019-12-10 12:00:00', '2019-12-10 13:00:00', '2019-12-10 09:22:42', '2019-12-10 19:22:42', '1.00', '0.00', '0.00', '480.60', NULL, NULL, '0.00', NULL, NULL, '0.00', '0.00', 'reg', 0, 1, 1, 0, NULL, 0, 'WD', 'Present', 'MANUAL', 'INPROCESS', 'Admin', NULL, 0, '2020-01-30 02:30:31', '2020-01-30 02:30:31', NULL, NULL),
(214, NULL, '2017-082', 'Flores, Juan Karlo Quisol', 1, 15, 4, '2019-12-11', NULL, NULL, '0.00', '2019-12-11 12:00:00', '2019-12-11 13:00:00', NULL, NULL, '1.00', '0.00', '0.00', '0.00', NULL, NULL, '0.00', NULL, NULL, '0.00', '0.00', 'reg', 0, 1, 1, 0, NULL, 0, 'WD', 'Absent', 'MANUAL', 'INPROCESS', 'Admin', NULL, 0, '2020-01-30 02:30:31', '2020-01-30 02:30:31', NULL, NULL),
(215, NULL, '2017-082', 'Flores, Juan Karlo Quisol', 1, 15, 4, '2019-12-12', NULL, NULL, '0.00', '2019-12-12 12:00:00', '2019-12-12 13:00:00', NULL, NULL, '1.00', '0.00', '0.00', '0.00', NULL, NULL, '0.00', NULL, NULL, '0.00', '0.00', 'reg', 0, 1, 1, 0, NULL, 0, 'WD', 'Absent', 'MANUAL', 'INPROCESS', 'Admin', NULL, 0, '2020-01-30 02:30:31', '2020-01-30 02:30:31', NULL, NULL),
(216, NULL, '2017-082', 'Flores, Juan Karlo Quisol', 1, 15, 4, '2019-12-13', NULL, NULL, '0.00', '2019-12-13 12:00:00', '2019-12-13 13:00:00', NULL, NULL, '1.00', '0.00', '0.00', '0.00', NULL, NULL, '0.00', NULL, NULL, '0.00', '0.00', 'reg', 0, 1, 1, 0, NULL, 0, 'WD', 'Absent', 'MANUAL', 'INPROCESS', 'Admin', NULL, 0, '2020-01-30 02:30:31', '2020-01-30 02:30:31', NULL, NULL),
(217, NULL, '2017-082', 'Flores, Juan Karlo Quisol', 1, 15, 4, '2019-12-14', NULL, NULL, '0.00', NULL, NULL, NULL, NULL, '0.00', '0.00', '0.00', '0.00', NULL, NULL, '0.00', NULL, NULL, '0.00', '0.00', 'rd_reg', 0, 1, 1, 0, NULL, 0, 'WD', 'Restday', 'MANUAL', 'INPROCESS', 'Admin', NULL, 0, '2020-01-30 02:30:31', '2020-01-30 02:30:31', NULL, NULL),
(218, NULL, '2017-082', 'Flores, Juan Karlo Quisol', 1, 15, 4, '2019-12-15', NULL, NULL, '0.00', NULL, NULL, NULL, NULL, '0.00', '0.00', '0.00', '0.00', NULL, NULL, '0.00', NULL, NULL, '0.00', '0.00', 'rd_reg', 0, 1, 1, 0, NULL, 0, 'WD', 'Restday', 'MANUAL', 'INPROCESS', 'Admin', NULL, 0, '2020-01-30 02:30:31', '2020-01-30 02:30:31', NULL, NULL),
(219, NULL, '2017-082', 'Flores, Juan Karlo Quisol', 1, 15, 4, '2019-12-16', NULL, NULL, '0.00', '2019-12-16 12:00:00', '2019-12-16 13:00:00', NULL, NULL, '1.00', '0.00', '0.00', '0.00', NULL, NULL, '0.00', NULL, NULL, '0.00', '0.00', 'reg', 0, 1, 1, 0, NULL, 0, 'WD', 'Absent', 'MANUAL', 'INPROCESS', 'Admin', NULL, 0, '2020-01-30 02:30:31', '2020-01-30 02:30:31', NULL, NULL),
(220, NULL, '2017-082', 'Flores, Juan Karlo Quisol', 1, 15, 4, '2019-12-17', '2019-12-17 08:30:00', '2019-12-17 18:30:00', '10.00', '2019-12-17 12:00:00', '2019-12-17 13:00:00', '2019-12-17 09:24:17', '2019-12-17 19:24:17', '1.00', '0.00', '0.00', '54.00', NULL, NULL, '0.00', NULL, NULL, '0.00', '0.00', 'reg', 0, 1, 1, 0, NULL, 0, 'WD', 'Present', 'MANUAL', 'INPROCESS', 'Admin', NULL, 0, '2020-01-30 02:30:31', '2020-01-30 02:30:31', NULL, NULL),
(221, NULL, '2017-082', 'Flores, Juan Karlo Quisol', 1, 15, 4, '2019-12-18', '2019-12-18 14:38:19', '2019-12-18 17:03:16', '2.42', '2019-12-18 12:00:00', '2019-12-18 13:00:00', '2019-12-18 14:38:19', '2019-12-19 00:38:19', '1.00', '0.00', '0.00', '454.80', NULL, NULL, '0.00', NULL, NULL, '0.00', '0.00', 'reg', 0, 1, 1, 0, NULL, 0, 'WD', 'Present', 'MANUAL', 'INPROCESS', 'Admin', NULL, 0, '2020-01-30 02:30:31', '2020-01-30 02:30:31', NULL, NULL),
(222, NULL, '2017-082', 'Flores, Juan Karlo Quisol', 1, 15, 4, '2019-12-19', '2019-12-19 09:30:51', '2019-12-19 16:37:33', '7.11', '2019-12-19 12:00:00', '2019-12-19 13:00:00', '2019-12-19 09:30:51', '2019-12-19 19:30:51', '1.00', '0.00', '0.00', '173.40', NULL, NULL, '0.00', NULL, NULL, '0.00', '0.00', 'reg', 0, 1, 1, 0, NULL, 0, 'WD', 'Present', 'MANUAL', 'INPROCESS', 'Admin', NULL, 0, '2020-01-30 02:30:31', '2020-01-30 02:30:31', NULL, NULL),
(223, NULL, '2017-082', 'Flores, Juan Karlo Quisol', 1, 15, 4, '2019-12-20', NULL, NULL, '0.00', '2019-12-20 12:00:00', '2019-12-20 13:00:00', NULL, NULL, '1.00', '0.00', '0.00', '0.00', NULL, NULL, '0.00', NULL, NULL, '0.00', '0.00', 'reg', 0, 1, 1, 0, NULL, 0, 'WD', 'Absent', 'MANUAL', 'INPROCESS', 'Admin', NULL, 0, '2020-01-30 02:30:31', '2020-01-30 02:30:31', NULL, NULL),
(224, NULL, '2017-082', 'Flores, Juan Karlo Quisol', 1, 15, 4, '2019-12-21', NULL, NULL, '0.00', NULL, NULL, NULL, NULL, '0.00', '0.00', '0.00', '0.00', NULL, NULL, '0.00', NULL, NULL, '0.00', '0.00', 'rd_reg', 0, 1, 1, 0, NULL, 0, 'WD', 'Restday', 'MANUAL', 'INPROCESS', 'Admin', NULL, 0, '2020-01-30 02:30:31', '2020-01-30 02:30:31', NULL, NULL),
(225, NULL, '2017-082', 'Flores, Juan Karlo Quisol', 1, 15, 4, '2019-12-22', NULL, NULL, '0.00', NULL, NULL, NULL, NULL, '0.00', '0.00', '0.00', '0.00', NULL, NULL, '0.00', NULL, NULL, '0.00', '0.00', 'rd_reg', 0, 1, 1, 0, NULL, 0, 'WD', 'Restday', 'MANUAL', 'INPROCESS', 'Admin', NULL, 0, '2020-01-30 02:30:32', '2020-01-30 02:30:32', NULL, NULL),
(226, NULL, '2017-082', 'Flores, Juan Karlo Quisol', 1, 15, 4, '2019-12-23', '2019-12-23 10:18:45', NULL, '0.00', '2019-12-23 12:00:00', '2019-12-23 13:00:00', '2019-12-23 10:18:45', '2019-12-23 20:18:45', '1.00', '0.00', '0.00', '0.00', NULL, NULL, '0.00', NULL, NULL, '0.00', '0.00', 'reg', 0, 1, 1, 0, NULL, 0, 'WD', 'No Time Out', 'MANUAL', 'INPROCESS', 'Admin', NULL, 0, '2020-01-30 02:30:32', '2020-01-30 02:30:32', NULL, NULL),
(227, NULL, '2017-082', 'Flores, Juan Karlo Quisol', 1, 15, 4, '2019-12-24', NULL, NULL, '0.00', '2019-12-24 12:00:00', '2019-12-24 13:00:00', NULL, NULL, '1.00', '0.00', '0.00', '0.00', NULL, NULL, '0.00', NULL, NULL, '0.00', '0.00', 'spcl_nw', 0, 1, 1, 0, NULL, 0, 'WD', 'Additional Special Day', 'MANUAL', 'INPROCESS', 'Admin', NULL, 0, '2020-01-30 02:30:32', '2020-01-30 02:30:32', NULL, NULL),
(228, NULL, '2017-082', 'Flores, Juan Karlo Quisol', 1, 15, 4, '2019-12-25', NULL, NULL, '0.00', '2019-12-25 12:00:00', '2019-12-25 13:00:00', NULL, NULL, '1.00', '0.00', '0.00', '0.00', NULL, NULL, '0.00', NULL, NULL, '0.00', '0.00', 'legal', 0, 1, 1, 0, NULL, 0, 'WD', 'Christmas Day', 'MANUAL', 'INPROCESS', 'Admin', NULL, 0, '2020-01-30 02:30:32', '2020-01-30 02:30:32', NULL, NULL),
(229, NULL, '2017-082', 'Flores, Juan Karlo Quisol', 1, 15, 4, '2019-12-26', '2019-12-26 09:21:41', '2019-12-26 17:07:39', '7.77', '2019-12-26 12:00:00', '2019-12-26 13:00:00', '2019-12-26 09:21:41', '2019-12-26 19:21:41', '1.00', '0.00', '0.00', '133.80', NULL, NULL, '0.00', NULL, NULL, '0.00', '0.00', 'reg', 0, 1, 1, 0, NULL, 0, 'WD', 'Present', 'MANUAL', 'INPROCESS', 'Admin', NULL, 0, '2020-01-30 02:30:32', '2020-01-30 02:30:32', NULL, NULL),
(230, NULL, '2017-082', 'Flores, Juan Karlo Quisol', 1, 15, 4, '2019-12-27', NULL, NULL, '0.00', '2019-12-27 12:00:00', '2019-12-27 13:00:00', NULL, NULL, '1.00', '0.00', '0.00', '0.00', NULL, NULL, '0.00', NULL, NULL, '0.00', '0.00', 'reg', 0, 1, 1, 0, NULL, 0, 'WD', 'Absent', 'MANUAL', 'INPROCESS', 'Admin', NULL, 0, '2020-01-30 02:30:32', '2020-01-30 02:30:32', NULL, NULL),
(231, NULL, '2017-082', 'Flores, Juan Karlo Quisol', 1, 15, 4, '2019-12-28', NULL, NULL, '0.00', NULL, NULL, NULL, NULL, '0.00', '0.00', '0.00', '0.00', NULL, NULL, '0.00', NULL, NULL, '0.00', '0.00', 'rd_reg', 0, 1, 1, 0, NULL, 0, 'WD', 'Restday', 'MANUAL', 'INPROCESS', 'Admin', NULL, 0, '2020-01-30 02:30:32', '2020-01-30 02:30:32', NULL, NULL),
(232, NULL, '2017-082', 'Flores, Juan Karlo Quisol', 1, 15, 4, '2019-12-29', NULL, NULL, '0.00', NULL, NULL, NULL, NULL, '0.00', '0.00', '0.00', '0.00', NULL, NULL, '0.00', NULL, NULL, '0.00', '0.00', 'rd_reg', 0, 1, 1, 0, NULL, 0, 'WD', 'Restday', 'MANUAL', 'INPROCESS', 'Admin', NULL, 0, '2020-01-30 02:30:32', '2020-01-30 02:30:32', NULL, NULL),
(233, NULL, '2017-082', 'Flores, Juan Karlo Quisol', 1, 15, 4, '2019-12-30', NULL, NULL, '0.00', '2019-12-30 12:00:00', '2019-12-30 13:00:00', NULL, NULL, '1.00', '0.00', '0.00', '0.00', NULL, NULL, '0.00', NULL, NULL, '0.00', '0.00', 'legal', 0, 1, 1, 0, NULL, 0, 'WD', 'Rizal Day', 'MANUAL', 'INPROCESS', 'Admin', NULL, 0, '2020-01-30 02:30:32', '2020-01-30 02:30:32', NULL, NULL),
(234, NULL, '2017-082', 'Flores, Juan Karlo Quisol', 1, 15, 4, '2019-12-31', NULL, NULL, '0.00', '2019-12-31 12:00:00', '2019-12-31 13:00:00', NULL, NULL, '1.00', '0.00', '0.00', '0.00', NULL, NULL, '0.00', NULL, NULL, '0.00', '0.00', 'spcl_nw', 0, 1, 1, 0, NULL, 0, 'WD', 'Last day of the Year', 'MANUAL', 'INPROCESS', 'Admin', NULL, 0, '2020-01-30 02:30:32', '2020-01-30 02:30:32', NULL, NULL),
(235, NULL, '2015-056', 'Inguito, Kimberly  Mae Gonzales', 1, 15, 12, '2019-12-01', '2019-12-01 22:43:50', NULL, '0.00', NULL, NULL, NULL, NULL, '0.00', '0.00', '0.00', '0.00', NULL, NULL, '0.00', NULL, NULL, '0.00', '0.00', 'rd_reg', 0, 1, 1, 0, NULL, 0, 'WD', 'Restday', 'MANUAL', 'INPROCESS', 'Admin', NULL, 0, '2020-01-30 02:30:32', '2020-01-30 02:30:32', NULL, NULL),
(236, NULL, '2015-056', 'Inguito, Kimberly  Mae Gonzales', 1, 15, 12, '2019-12-02', '2019-12-02 06:43:50', NULL, '0.00', NULL, NULL, NULL, NULL, '0.00', '0.00', '0.00', '0.00', NULL, NULL, '0.00', NULL, NULL, '0.00', '0.00', 'rd_reg', 0, 1, 1, 0, NULL, 0, 'WD', 'Restday', 'MANUAL', 'INPROCESS', 'Admin', NULL, 0, '2020-01-30 02:30:32', '2020-01-30 02:30:32', NULL, NULL),
(237, NULL, '2015-056', 'Inguito, Kimberly  Mae Gonzales', 1, 15, 12, '2019-12-03', NULL, NULL, '0.00', '2019-12-03 12:00:00', '2019-12-03 13:00:00', '2019-12-03 08:30:00', '2019-12-03 18:30:00', '1.00', '0.00', '0.00', '0.00', NULL, NULL, '0.00', NULL, NULL, '0.00', '0.00', 'reg', 0, 1, 1, 0, NULL, 0, 'WD', 'Absent', 'MANUAL', 'INPROCESS', 'Admin', NULL, 0, '2020-01-30 02:30:32', '2020-01-30 02:30:32', NULL, NULL),
(238, NULL, '2015-056', 'Inguito, Kimberly  Mae Gonzales', 1, 15, 12, '2019-12-04', '2019-12-04 07:03:11', NULL, '0.00', '2019-12-04 12:00:00', '2019-12-04 13:00:00', '2019-12-04 08:30:00', '2019-12-04 18:30:00', '1.00', '0.00', '0.00', '0.00', NULL, NULL, '0.00', NULL, NULL, '0.00', '0.00', 'reg', 0, 1, 1, 0, NULL, 0, 'WD', 'No Time Out', 'MANUAL', 'INPROCESS', 'Admin', NULL, 0, '2020-01-30 02:30:32', '2020-01-30 02:30:32', NULL, NULL),
(239, NULL, '2015-056', 'Inguito, Kimberly  Mae Gonzales', 1, 15, 12, '2019-12-05', '2019-12-05 06:35:34', NULL, '0.00', '2019-12-05 12:00:00', '2019-12-05 13:00:00', '2019-12-05 08:30:00', '2019-12-05 18:30:00', '1.00', '0.00', '0.00', '0.00', NULL, NULL, '0.00', NULL, NULL, '0.00', '0.00', 'reg', 0, 1, 1, 0, NULL, 0, 'WD', 'No Time Out', 'MANUAL', 'INPROCESS', 'Admin', NULL, 0, '2020-01-30 02:30:33', '2020-01-30 02:30:33', NULL, NULL),
(240, NULL, '2015-056', 'Inguito, Kimberly  Mae Gonzales', 1, 15, 12, '2019-12-06', '2019-12-06 07:22:30', NULL, '0.00', '2019-12-06 12:00:00', '2019-12-06 13:00:00', '2019-12-06 08:30:00', '2019-12-06 18:30:00', '1.00', '0.00', '0.00', '0.00', NULL, NULL, '0.00', NULL, NULL, '0.00', '0.00', 'reg', 0, 1, 1, 0, NULL, 0, 'WD', 'No Time Out', 'MANUAL', 'INPROCESS', 'Admin', NULL, 0, '2020-01-30 02:30:33', '2020-01-30 02:30:33', NULL, NULL),
(241, NULL, '2015-056', 'Inguito, Kimberly  Mae Gonzales', 1, 15, 12, '2019-12-07', NULL, NULL, '0.00', '2019-12-07 12:00:00', '2019-12-07 13:00:00', '2019-12-07 08:30:00', '2019-12-07 18:30:00', '1.00', '0.00', '0.00', '0.00', NULL, NULL, '0.00', NULL, NULL, '0.00', '0.00', 'reg', 0, 1, 1, 0, NULL, 0, 'WD', 'Absent', 'MANUAL', 'INPROCESS', 'Admin', NULL, 0, '2020-01-30 02:30:33', '2020-01-30 02:30:33', NULL, NULL),
(242, NULL, '2015-056', 'Inguito, Kimberly  Mae Gonzales', 1, 15, 12, '2019-12-08', NULL, NULL, '0.00', NULL, NULL, NULL, NULL, '0.00', '0.00', '0.00', '0.00', NULL, NULL, '0.00', NULL, NULL, '0.00', '0.00', 'spcl_nw', 0, 1, 1, 0, NULL, 0, 'WD', 'Feast of the Immaculate Conceptions Of Mary', 'MANUAL', 'INPROCESS', 'Admin', NULL, 0, '2020-01-30 02:30:33', '2020-01-30 02:30:33', NULL, NULL),
(243, NULL, '2015-056', 'Inguito, Kimberly  Mae Gonzales', 1, 15, 12, '2019-12-09', '2019-12-09 07:54:28', NULL, '0.00', NULL, NULL, NULL, NULL, '0.00', '0.00', '0.00', '0.00', NULL, NULL, '0.00', NULL, NULL, '0.00', '0.00', 'rd_reg', 0, 1, 1, 0, NULL, 0, 'WD', 'Restday', 'MANUAL', 'INPROCESS', 'Admin', NULL, 0, '2020-01-30 02:30:33', '2020-01-30 02:30:33', NULL, NULL),
(244, NULL, '2015-056', 'Inguito, Kimberly  Mae Gonzales', 1, 15, 12, '2019-12-10', '2019-12-10 07:59:49', NULL, '0.00', '2019-12-10 12:00:00', '2019-12-10 13:00:00', '2019-12-10 08:30:00', '2019-12-10 18:30:00', '1.00', '0.00', '0.00', '0.00', NULL, NULL, '0.00', NULL, NULL, '0.00', '0.00', 'reg', 0, 1, 1, 0, NULL, 0, 'WD', 'No Time Out', 'MANUAL', 'INPROCESS', 'Admin', NULL, 0, '2020-01-30 02:30:33', '2020-01-30 02:30:33', NULL, NULL),
(245, NULL, '2015-056', 'Inguito, Kimberly  Mae Gonzales', 1, 15, 12, '2019-12-11', '2019-12-11 07:50:06', NULL, '0.00', '2019-12-11 12:00:00', '2019-12-11 13:00:00', '2019-12-11 08:30:00', '2019-12-11 18:30:00', '1.00', '0.00', '0.00', '0.00', NULL, NULL, '0.00', NULL, NULL, '0.00', '0.00', 'reg', 0, 1, 1, 0, NULL, 0, 'WD', 'No Time Out', 'MANUAL', 'INPROCESS', 'Admin', NULL, 0, '2020-01-30 02:30:33', '2020-01-30 02:30:33', NULL, NULL),
(246, NULL, '2015-056', 'Inguito, Kimberly  Mae Gonzales', 1, 15, 12, '2019-12-12', '2019-12-12 07:48:45', NULL, '0.00', '2019-12-12 12:00:00', '2019-12-12 13:00:00', '2019-12-12 08:30:00', '2019-12-12 18:30:00', '1.00', '0.00', '0.00', '0.00', NULL, NULL, '0.00', NULL, NULL, '0.00', '0.00', 'reg', 0, 1, 1, 0, NULL, 0, 'WD', 'No Time Out', 'MANUAL', 'INPROCESS', 'Admin', NULL, 0, '2020-01-30 02:30:33', '2020-01-30 02:30:33', NULL, NULL);
INSERT INTO `date_and_time_records` (`id`, `register_number`, `company_id`, `employee_name`, `company_ind`, `group_ind`, `sched_template_id`, `sched_date`, `date_time_in`, `date_time_out`, `reg_total_hrs`, `lunch_out`, `lunch_in`, `schedule_shift_in`, `schedule_shift_out`, `lunch_durations_hrs`, `over_break_min`, `late_min`, `undertime_min`, `ot_time_in`, `ot_time_out`, `ot_total_hrs`, `night_diff_in`, `night_diff_out`, `night_diff_total_hrs`, `night_diff_total_ot_hrs`, `day_types`, `work_on_holiday`, `before_holiday`, `after_holiday`, `leaved`, `leave_types`, `leave_wpay`, `half_day`, `remarks`, `insystem`, `payroll_status`, `created_by`, `lu_by`, `deleted`, `created_at`, `updated_at`, `device_id_in`, `device_id_out`) VALUES
(247, NULL, '2015-056', 'Inguito, Kimberly  Mae Gonzales', 1, 15, 12, '2019-12-13', '2019-12-13 07:17:18', NULL, '0.00', '2019-12-13 12:00:00', '2019-12-13 13:00:00', '2019-12-13 08:30:00', '2019-12-13 18:30:00', '1.00', '0.00', '0.00', '0.00', NULL, NULL, '0.00', NULL, NULL, '0.00', '0.00', 'reg', 0, 1, 1, 0, NULL, 0, 'WD', 'No Time Out', 'MANUAL', 'INPROCESS', 'Admin', NULL, 0, '2020-01-30 02:30:33', '2020-01-30 02:30:33', NULL, NULL),
(248, NULL, '2015-056', 'Inguito, Kimberly  Mae Gonzales', 1, 15, 12, '2019-12-14', NULL, NULL, '0.00', '2019-12-14 12:00:00', '2019-12-14 13:00:00', '2019-12-14 08:30:00', '2019-12-14 18:30:00', '1.00', '0.00', '0.00', '0.00', NULL, NULL, '0.00', NULL, NULL, '0.00', '0.00', 'reg', 0, 1, 1, 0, NULL, 0, 'WD', 'Absent', 'MANUAL', 'INPROCESS', 'Admin', NULL, 0, '2020-01-30 02:30:33', '2020-01-30 02:30:33', NULL, NULL),
(249, NULL, '2015-056', 'Inguito, Kimberly  Mae Gonzales', 1, 15, 12, '2019-12-15', NULL, NULL, '0.00', NULL, NULL, NULL, NULL, '0.00', '0.00', '0.00', '0.00', NULL, NULL, '0.00', NULL, NULL, '0.00', '0.00', 'rd_reg', 0, 1, 1, 0, NULL, 0, 'WD', 'Restday', 'MANUAL', 'INPROCESS', 'Admin', NULL, 0, '2020-01-30 02:30:33', '2020-01-30 02:30:33', NULL, NULL),
(250, NULL, '2015-056', 'Inguito, Kimberly  Mae Gonzales', 1, 15, 12, '2019-12-16', '2019-12-16 06:30:47', NULL, '0.00', NULL, NULL, NULL, NULL, '0.00', '0.00', '0.00', '0.00', NULL, NULL, '0.00', NULL, NULL, '0.00', '0.00', 'rd_reg', 0, 1, 1, 0, NULL, 0, 'WD', 'Restday', 'MANUAL', 'INPROCESS', 'Admin', NULL, 0, '2020-01-30 02:30:33', '2020-01-30 02:30:33', NULL, NULL),
(251, NULL, '2015-056', 'Inguito, Kimberly  Mae Gonzales', 1, 15, 12, '2019-12-17', '2019-12-17 06:32:58', NULL, '0.00', '2019-12-17 12:00:00', '2019-12-17 13:00:00', '2019-12-17 08:30:00', '2019-12-17 18:30:00', '1.00', '0.00', '0.00', '0.00', NULL, NULL, '0.00', NULL, NULL, '0.00', '0.00', 'reg', 0, 1, 1, 0, NULL, 0, 'WD', 'No Time Out', 'MANUAL', 'INPROCESS', 'Admin', NULL, 0, '2020-01-30 02:30:33', '2020-01-30 02:30:33', NULL, NULL),
(252, NULL, '2015-056', 'Inguito, Kimberly  Mae Gonzales', 1, 15, 12, '2019-12-18', '2019-12-18 06:32:18', NULL, '0.00', '2019-12-18 12:00:00', '2019-12-18 13:00:00', '2019-12-18 08:30:00', '2019-12-18 18:30:00', '1.00', '0.00', '0.00', '0.00', NULL, NULL, '0.00', NULL, NULL, '0.00', '0.00', 'reg', 0, 1, 1, 0, NULL, 0, 'WD', 'No Time Out', 'MANUAL', 'INPROCESS', 'Admin', NULL, 0, '2020-01-30 02:30:33', '2020-01-30 02:30:33', NULL, NULL),
(253, NULL, '2015-056', 'Inguito, Kimberly  Mae Gonzales', 1, 15, 12, '2019-12-19', '2019-12-19 07:42:24', NULL, '0.00', '2019-12-19 12:00:00', '2019-12-19 13:00:00', '2019-12-19 08:30:00', '2019-12-19 18:30:00', '1.00', '0.00', '0.00', '0.00', NULL, NULL, '0.00', NULL, NULL, '0.00', '0.00', 'reg', 0, 1, 1, 0, NULL, 0, 'WD', 'No Time Out', 'MANUAL', 'INPROCESS', 'Admin', NULL, 0, '2020-01-30 02:30:33', '2020-01-30 02:30:33', NULL, NULL),
(254, NULL, '2015-056', 'Inguito, Kimberly  Mae Gonzales', 1, 15, 12, '2019-12-20', '2019-12-20 06:50:48', NULL, '0.00', '2019-12-20 12:00:00', '2019-12-20 13:00:00', '2019-12-20 08:30:00', '2019-12-20 18:30:00', '1.00', '0.00', '0.00', '0.00', NULL, NULL, '0.00', NULL, NULL, '0.00', '0.00', 'reg', 0, 1, 1, 0, NULL, 0, 'WD', 'No Time Out', 'MANUAL', 'INPROCESS', 'Admin', NULL, 0, '2020-01-30 02:30:34', '2020-01-30 02:30:34', NULL, NULL),
(255, NULL, '2015-056', 'Inguito, Kimberly  Mae Gonzales', 1, 15, 12, '2019-12-21', NULL, NULL, '0.00', '2019-12-21 12:00:00', '2019-12-21 13:00:00', '2019-12-21 08:30:00', '2019-12-21 18:30:00', '1.00', '0.00', '0.00', '0.00', NULL, NULL, '0.00', NULL, NULL, '0.00', '0.00', 'reg', 0, 1, 1, 0, NULL, 0, 'WD', 'Absent', 'MANUAL', 'INPROCESS', 'Admin', NULL, 0, '2020-01-30 02:30:34', '2020-01-30 02:30:34', NULL, NULL),
(256, NULL, '2015-056', 'Inguito, Kimberly  Mae Gonzales', 1, 15, 12, '2019-12-22', NULL, NULL, '0.00', NULL, NULL, NULL, NULL, '0.00', '0.00', '0.00', '0.00', NULL, NULL, '0.00', NULL, NULL, '0.00', '0.00', 'rd_reg', 0, 1, 1, 0, NULL, 0, 'WD', 'Restday', 'MANUAL', 'INPROCESS', 'Admin', NULL, 0, '2020-01-30 02:30:34', '2020-01-30 02:30:34', NULL, NULL),
(257, NULL, '2015-056', 'Inguito, Kimberly  Mae Gonzales', 1, 15, 12, '2019-12-23', '2019-12-23 06:03:15', NULL, '0.00', NULL, NULL, NULL, NULL, '0.00', '0.00', '0.00', '0.00', NULL, NULL, '0.00', NULL, NULL, '0.00', '0.00', 'rd_reg', 0, 1, 1, 0, NULL, 0, 'WD', 'Restday', 'MANUAL', 'INPROCESS', 'Admin', NULL, 0, '2020-01-30 02:30:34', '2020-01-30 02:30:34', NULL, NULL),
(258, NULL, '2015-056', 'Inguito, Kimberly  Mae Gonzales', 1, 15, 12, '2019-12-24', NULL, NULL, '0.00', '2019-12-24 12:00:00', '2019-12-24 13:00:00', '2019-12-24 08:30:00', '2019-12-24 18:30:00', '1.00', '0.00', '0.00', '0.00', NULL, NULL, '0.00', NULL, NULL, '0.00', '0.00', 'spcl_nw', 0, 1, 1, 0, NULL, 0, 'WD', 'Additional Special Day', 'MANUAL', 'INPROCESS', 'Admin', NULL, 0, '2020-01-30 02:30:34', '2020-01-30 02:30:34', NULL, NULL),
(259, NULL, '2015-056', 'Inguito, Kimberly  Mae Gonzales', 1, 15, 12, '2019-12-25', NULL, NULL, '0.00', '2019-12-25 12:00:00', '2019-12-25 13:00:00', '2019-12-25 08:30:00', '2019-12-25 18:30:00', '1.00', '0.00', '0.00', '0.00', NULL, NULL, '0.00', NULL, NULL, '0.00', '0.00', 'legal', 0, 1, 1, 0, NULL, 0, 'WD', 'Christmas Day', 'MANUAL', 'INPROCESS', 'Admin', NULL, 0, '2020-01-30 02:30:34', '2020-01-30 02:30:34', NULL, NULL),
(260, NULL, '2015-056', 'Inguito, Kimberly  Mae Gonzales', 1, 15, 12, '2019-12-26', '2019-12-26 06:54:59', NULL, '0.00', '2019-12-26 12:00:00', '2019-12-26 13:00:00', '2019-12-26 08:30:00', '2019-12-26 18:30:00', '1.00', '0.00', '0.00', '0.00', NULL, NULL, '0.00', NULL, NULL, '0.00', '0.00', 'reg', 0, 1, 1, 0, NULL, 0, 'WD', 'No Time Out', 'MANUAL', 'INPROCESS', 'Admin', NULL, 0, '2020-01-30 02:30:34', '2020-01-30 02:30:34', NULL, NULL),
(261, NULL, '2015-056', 'Inguito, Kimberly  Mae Gonzales', 1, 15, 12, '2019-12-27', '2019-12-27 06:38:37', NULL, '0.00', '2019-12-27 12:00:00', '2019-12-27 13:00:00', '2019-12-27 08:30:00', '2019-12-27 18:30:00', '1.00', '0.00', '0.00', '0.00', NULL, NULL, '0.00', NULL, NULL, '0.00', '0.00', 'reg', 0, 1, 1, 0, NULL, 0, 'WD', 'No Time Out', 'MANUAL', 'INPROCESS', 'Admin', NULL, 0, '2020-01-30 02:30:34', '2020-01-30 02:30:34', NULL, NULL),
(262, NULL, '2015-056', 'Inguito, Kimberly  Mae Gonzales', 1, 15, 12, '2019-12-28', NULL, NULL, '0.00', '2019-12-28 12:00:00', '2019-12-28 13:00:00', '2019-12-28 08:30:00', '2019-12-28 18:30:00', '1.00', '0.00', '0.00', '0.00', NULL, NULL, '0.00', NULL, NULL, '0.00', '0.00', 'reg', 0, 1, 1, 0, NULL, 0, 'WD', 'Absent', 'MANUAL', 'INPROCESS', 'Admin', NULL, 0, '2020-01-30 02:30:34', '2020-01-30 02:30:34', NULL, NULL),
(263, NULL, '2015-056', 'Inguito, Kimberly  Mae Gonzales', 1, 15, 12, '2019-12-29', NULL, NULL, '0.00', NULL, NULL, NULL, NULL, '0.00', '0.00', '0.00', '0.00', NULL, NULL, '0.00', NULL, NULL, '0.00', '0.00', 'rd_reg', 0, 1, 1, 0, NULL, 0, 'WD', 'Restday', 'MANUAL', 'INPROCESS', 'Admin', NULL, 0, '2020-01-30 02:30:34', '2020-01-30 02:30:34', NULL, NULL),
(264, NULL, '2015-056', 'Inguito, Kimberly  Mae Gonzales', 1, 15, 12, '2019-12-30', NULL, NULL, '0.00', NULL, NULL, NULL, NULL, '0.00', '0.00', '0.00', '0.00', NULL, NULL, '0.00', NULL, NULL, '0.00', '0.00', 'legal', 0, 1, 1, 0, NULL, 0, 'WD', 'Rizal Day', 'MANUAL', 'INPROCESS', 'Admin', NULL, 0, '2020-01-30 02:30:34', '2020-01-30 02:30:34', NULL, NULL),
(265, NULL, '2015-056', 'Inguito, Kimberly  Mae Gonzales', 1, 15, 12, '2019-12-31', NULL, NULL, '0.00', '2019-12-31 12:00:00', '2019-12-31 13:00:00', '2019-12-31 08:30:00', '2019-12-31 18:30:00', '1.00', '0.00', '0.00', '0.00', NULL, NULL, '0.00', NULL, NULL, '0.00', '0.00', 'spcl_nw', 0, 1, 1, 0, NULL, 0, 'WD', 'Last day of the Year', 'MANUAL', 'INPROCESS', 'Admin', NULL, 0, '2020-01-30 02:30:34', '2020-01-30 02:30:34', NULL, NULL),
(266, NULL, '2011-209', 'Kempis, Mark Arthur Avelino', 1, 15, 10, '2019-12-01', NULL, '2019-12-02 00:17:10', '0.00', '2019-12-02 12:00:00', '2019-12-02 13:00:00', '2019-12-01 08:30:00', '2019-12-01 18:30:00', '1.00', '0.00', '0.00', '0.00', NULL, NULL, '0.00', NULL, NULL, '0.00', '0.00', 'rd_reg', 0, 1, 1, 0, NULL, 0, 'WD', 'Restday', 'MANUAL', 'INPROCESS', 'Admin', NULL, 0, '2020-01-30 02:30:34', '2020-01-30 02:30:34', NULL, NULL),
(267, NULL, '2011-209', 'Kempis, Mark Arthur Avelino', 1, 15, 10, '2019-12-02', '2019-12-02 08:17:10', '2019-12-02 18:36:46', '10.33', '2019-12-02 12:00:00', '2019-12-02 13:00:00', '2019-12-02 08:30:00', '2019-12-02 18:30:00', '1.00', '0.00', '0.00', '0.00', NULL, NULL, '0.00', NULL, NULL, '0.00', '0.00', 'reg', 0, 1, 1, 0, NULL, 0, 'WD', 'Present', 'MANUAL', 'INPROCESS', 'Admin', NULL, 0, '2020-01-30 02:30:34', '2020-01-30 02:30:34', NULL, NULL),
(268, NULL, '2011-209', 'Kempis, Mark Arthur Avelino', 1, 15, 10, '2019-12-03', NULL, NULL, '0.00', '2019-12-03 12:00:00', '2019-12-03 13:00:00', '2019-12-03 08:30:00', '2019-12-03 18:30:00', '1.00', '0.00', '0.00', '0.00', NULL, NULL, '0.00', NULL, NULL, '0.00', '0.00', 'reg', 0, 1, 1, 0, NULL, 0, 'WD', 'Absent', 'MANUAL', 'INPROCESS', 'Admin', NULL, 0, '2020-01-30 02:30:34', '2020-01-30 02:30:34', NULL, NULL),
(269, NULL, '2011-209', 'Kempis, Mark Arthur Avelino', 1, 15, 10, '2019-12-04', '2019-12-04 08:21:56', '2019-12-04 18:48:20', '10.44', '2019-12-04 12:00:00', '2019-12-04 13:00:00', '2019-12-04 08:30:00', '2019-12-04 18:30:00', '1.00', '0.00', '0.00', '0.00', NULL, NULL, '0.00', NULL, NULL, '0.00', '0.00', 'reg', 0, 1, 1, 0, NULL, 0, 'WD', 'Present', 'MANUAL', 'INPROCESS', 'Admin', NULL, 0, '2020-01-30 02:30:34', '2020-01-30 02:30:34', NULL, NULL),
(270, NULL, '2011-209', 'Kempis, Mark Arthur Avelino', 1, 15, 10, '2019-12-05', '2019-12-05 08:10:45', '2019-12-05 18:36:58', '10.44', '2019-12-05 12:00:00', '2019-12-05 13:00:00', '2019-12-05 08:30:00', '2019-12-05 18:30:00', '1.00', '0.00', '0.00', '0.00', NULL, NULL, '0.00', NULL, NULL, '0.00', '0.00', 'reg', 0, 1, 1, 0, NULL, 0, 'WD', 'Present', 'MANUAL', 'INPROCESS', 'Admin', NULL, 0, '2020-01-30 02:30:34', '2020-01-30 02:30:34', NULL, NULL),
(271, NULL, '2011-209', 'Kempis, Mark Arthur Avelino', 1, 15, 10, '2019-12-06', '2019-12-06 08:15:37', '2019-12-06 18:44:44', '10.49', '2019-12-06 12:00:00', '2019-12-06 13:00:00', '2019-12-06 08:30:00', '2019-12-06 18:30:00', '1.00', '0.00', '0.00', '0.00', NULL, NULL, '0.00', NULL, NULL, '0.00', '0.00', 'reg', 0, 1, 1, 0, NULL, 0, 'WD', 'Present', 'MANUAL', 'INPROCESS', 'Admin', NULL, 0, '2020-01-30 02:30:35', '2020-01-30 02:30:35', NULL, NULL),
(272, NULL, '2011-209', 'Kempis, Mark Arthur Avelino', 1, 15, 10, '2019-12-07', NULL, NULL, '0.00', NULL, NULL, NULL, NULL, '0.00', '0.00', '0.00', '0.00', NULL, NULL, '0.00', NULL, NULL, '0.00', '0.00', 'rd_reg', 0, 1, 1, 0, NULL, 0, 'WD', 'Restday', 'MANUAL', 'INPROCESS', 'Admin', NULL, 0, '2020-01-30 02:30:35', '2020-01-30 02:30:35', NULL, NULL),
(273, NULL, '2011-209', 'Kempis, Mark Arthur Avelino', 1, 15, 10, '2019-12-08', NULL, NULL, '0.00', NULL, NULL, NULL, NULL, '0.00', '0.00', '0.00', '0.00', NULL, NULL, '0.00', NULL, NULL, '0.00', '0.00', 'spcl_nw', 0, 1, 1, 0, NULL, 0, 'WD', 'Feast of the Immaculate Conceptions Of Mary', 'MANUAL', 'INPROCESS', 'Admin', NULL, 0, '2020-01-30 02:30:35', '2020-01-30 02:30:35', NULL, NULL),
(274, NULL, '2011-209', 'Kempis, Mark Arthur Avelino', 1, 15, 10, '2019-12-09', '2019-12-09 08:16:53', '2019-12-09 18:42:58', '10.43', '2019-12-09 12:00:00', '2019-12-09 13:00:00', '2019-12-09 08:30:00', '2019-12-09 18:30:00', '1.00', '0.00', '0.00', '0.00', NULL, NULL, '0.00', NULL, NULL, '0.00', '0.00', 'reg', 0, 1, 1, 0, NULL, 0, 'WD', 'Present', 'MANUAL', 'INPROCESS', 'Admin', NULL, 0, '2020-01-30 02:30:35', '2020-01-30 02:30:35', NULL, NULL),
(275, NULL, '2011-209', 'Kempis, Mark Arthur Avelino', 1, 15, 10, '2019-12-10', '2019-12-10 08:09:11', '2019-12-10 17:37:14', '9.47', '2019-12-10 12:00:00', '2019-12-10 13:00:00', '2019-12-10 08:30:00', '2019-12-10 18:30:00', '1.00', '0.00', '0.00', '52.80', NULL, NULL, '0.00', NULL, NULL, '0.00', '0.00', 'reg', 0, 1, 1, 0, NULL, 0, 'WD', 'Present', 'MANUAL', 'INPROCESS', 'Admin', NULL, 0, '2020-01-30 02:30:35', '2020-01-30 02:30:35', NULL, NULL),
(276, NULL, '2011-209', 'Kempis, Mark Arthur Avelino', 1, 15, 10, '2019-12-11', '2019-12-11 09:01:01', NULL, '0.00', '2019-12-11 12:00:00', '2019-12-11 13:00:00', '2019-12-11 08:30:00', '2019-12-11 18:30:00', '1.00', '0.00', '0.00', '0.00', NULL, NULL, '0.00', NULL, NULL, '0.00', '0.00', 'reg', 0, 1, 1, 0, NULL, 0, 'WD', 'No Time Out', 'MANUAL', 'INPROCESS', 'Admin', NULL, 0, '2020-01-30 02:30:35', '2020-01-30 02:30:35', NULL, NULL),
(277, NULL, '2011-209', 'Kempis, Mark Arthur Avelino', 1, 15, 10, '2019-12-12', '2019-12-12 08:58:44', NULL, '0.00', '2019-12-12 12:00:00', '2019-12-12 13:00:00', '2019-12-12 08:30:00', '2019-12-12 18:30:00', '1.00', '0.00', '0.00', '0.00', NULL, NULL, '0.00', NULL, NULL, '0.00', '0.00', 'reg', 0, 1, 1, 0, NULL, 0, 'WD', 'No Time Out', 'MANUAL', 'INPROCESS', 'Admin', NULL, 0, '2020-01-30 02:30:35', '2020-01-30 02:30:35', NULL, NULL),
(278, NULL, '2011-209', 'Kempis, Mark Arthur Avelino', 1, 15, 10, '2019-12-13', NULL, NULL, '0.00', '2019-12-13 12:00:00', '2019-12-13 13:00:00', '2019-12-13 08:30:00', '2019-12-13 18:30:00', '1.00', '0.00', '0.00', '0.00', NULL, NULL, '0.00', NULL, NULL, '0.00', '0.00', 'reg', 0, 1, 1, 0, NULL, 0, 'WD', 'Absent', 'MANUAL', 'INPROCESS', 'Admin', NULL, 0, '2020-01-30 02:30:35', '2020-01-30 02:30:35', NULL, NULL),
(279, NULL, '2011-209', 'Kempis, Mark Arthur Avelino', 1, 15, 10, '2019-12-14', NULL, NULL, '0.00', NULL, NULL, NULL, NULL, '0.00', '0.00', '0.00', '0.00', NULL, NULL, '0.00', NULL, NULL, '0.00', '0.00', 'rd_reg', 0, 1, 1, 0, NULL, 0, 'WD', 'Restday', 'MANUAL', 'INPROCESS', 'Admin', NULL, 0, '2020-01-30 02:30:35', '2020-01-30 02:30:35', NULL, NULL),
(280, NULL, '2011-209', 'Kempis, Mark Arthur Avelino', 1, 15, 10, '2019-12-15', NULL, NULL, '0.00', NULL, NULL, NULL, NULL, '0.00', '0.00', '0.00', '0.00', NULL, NULL, '0.00', NULL, NULL, '0.00', '0.00', 'rd_reg', 0, 1, 1, 0, NULL, 0, 'WD', 'Restday', 'MANUAL', 'INPROCESS', 'Admin', NULL, 0, '2020-01-30 02:30:35', '2020-01-30 02:30:35', NULL, NULL),
(281, NULL, '2011-209', 'Kempis, Mark Arthur Avelino', 1, 15, 10, '2019-12-16', '2019-12-16 08:36:35', '2019-12-16 19:07:27', '10.51', '2019-12-16 12:00:00', '2019-12-16 13:00:00', '2019-12-16 08:30:00', '2019-12-16 18:30:00', '1.00', '0.00', '6.60', '0.00', NULL, NULL, '0.00', NULL, NULL, '0.00', '0.00', 'reg', 0, 1, 1, 0, NULL, 0, 'WD', 'Present', 'MANUAL', 'INPROCESS', 'Admin', NULL, 0, '2020-01-30 02:30:35', '2020-01-30 02:30:35', NULL, NULL),
(282, NULL, '2011-209', 'Kempis, Mark Arthur Avelino', 1, 15, 10, '2019-12-17', NULL, NULL, '0.00', '2019-12-17 12:00:00', '2019-12-17 13:00:00', '2019-12-17 08:30:00', '2019-12-17 18:30:00', '1.00', '0.00', '0.00', '0.00', NULL, NULL, '0.00', NULL, NULL, '0.00', '0.00', 'reg', 0, 1, 1, 0, NULL, 0, 'WD', 'Absent', 'MANUAL', 'INPROCESS', 'Admin', NULL, 0, '2020-01-30 02:30:35', '2020-01-30 02:30:35', NULL, NULL),
(283, NULL, '2011-209', 'Kempis, Mark Arthur Avelino', 1, 15, 10, '2019-12-18', '2019-12-18 08:47:26', '2019-12-18 18:38:15', '9.85', '2019-12-18 12:00:00', '2019-12-18 13:00:00', '2019-12-18 08:30:00', '2019-12-18 18:30:00', '1.00', '0.00', '17.40', '0.00', NULL, NULL, '0.00', NULL, NULL, '0.00', '0.00', 'reg', 0, 1, 1, 0, NULL, 0, 'WD', 'Present', 'MANUAL', 'INPROCESS', 'Admin', NULL, 0, '2020-01-30 02:30:35', '2020-01-30 02:30:35', NULL, NULL),
(284, NULL, '2011-209', 'Kempis, Mark Arthur Avelino', 1, 15, 10, '2019-12-19', '2019-12-19 08:47:31', '2019-12-19 18:48:44', '10.02', '2019-12-19 12:00:00', '2019-12-19 13:00:00', '2019-12-19 08:30:00', '2019-12-19 18:30:00', '1.00', '0.00', '17.40', '0.00', NULL, NULL, '0.00', NULL, NULL, '0.00', '0.00', 'reg', 0, 1, 1, 0, NULL, 0, 'WD', 'Present', 'MANUAL', 'INPROCESS', 'Admin', NULL, 0, '2020-01-30 02:30:35', '2020-01-30 02:30:35', NULL, NULL),
(285, NULL, '2011-209', 'Kempis, Mark Arthur Avelino', 1, 15, 10, '2019-12-20', '2019-12-20 08:43:19', '2019-12-20 18:34:08', '9.85', '2019-12-20 12:00:00', '2019-12-20 13:00:00', '2019-12-20 08:30:00', '2019-12-20 18:30:00', '1.00', '0.00', '13.20', '0.00', NULL, NULL, '0.00', NULL, NULL, '0.00', '0.00', 'reg', 0, 1, 1, 0, NULL, 0, 'WD', 'Present', 'MANUAL', 'INPROCESS', 'Admin', NULL, 0, '2020-01-30 02:30:35', '2020-01-30 02:30:35', NULL, NULL),
(286, NULL, '2011-209', 'Kempis, Mark Arthur Avelino', 1, 15, 10, '2019-12-21', NULL, NULL, '0.00', NULL, NULL, NULL, NULL, '0.00', '0.00', '0.00', '0.00', NULL, NULL, '0.00', NULL, NULL, '0.00', '0.00', 'rd_reg', 0, 1, 1, 0, NULL, 0, 'WD', 'Restday', 'MANUAL', 'INPROCESS', 'Admin', NULL, 0, '2020-01-30 02:30:35', '2020-01-30 02:30:35', NULL, NULL),
(287, NULL, '2011-209', 'Kempis, Mark Arthur Avelino', 1, 15, 10, '2019-12-22', NULL, NULL, '0.00', NULL, NULL, NULL, NULL, '0.00', '0.00', '0.00', '0.00', NULL, NULL, '0.00', NULL, NULL, '0.00', '0.00', 'rd_reg', 0, 1, 1, 0, NULL, 0, 'WD', 'Restday', 'MANUAL', 'INPROCESS', 'Admin', NULL, 0, '2020-01-30 02:30:35', '2020-01-30 02:30:35', NULL, NULL),
(288, NULL, '2011-209', 'Kempis, Mark Arthur Avelino', 1, 15, 10, '2019-12-23', '2019-12-23 08:01:06', '2019-12-23 18:36:15', '10.59', '2019-12-23 12:00:00', '2019-12-23 13:00:00', '2019-12-23 08:30:00', '2019-12-23 18:30:00', '1.00', '0.00', '0.00', '0.00', NULL, NULL, '0.00', NULL, NULL, '0.00', '0.00', 'reg', 0, 1, 1, 0, NULL, 0, 'WD', 'Present', 'MANUAL', 'INPROCESS', 'Admin', NULL, 0, '2020-01-30 02:30:35', '2020-01-30 02:30:35', NULL, NULL),
(289, NULL, '2011-209', 'Kempis, Mark Arthur Avelino', 1, 15, 10, '2019-12-24', NULL, NULL, '0.00', '2019-12-24 12:00:00', '2019-12-24 13:00:00', '2019-12-24 08:30:00', '2019-12-24 18:30:00', '1.00', '0.00', '0.00', '0.00', NULL, NULL, '0.00', NULL, NULL, '0.00', '0.00', 'spcl_nw', 0, 1, 1, 0, NULL, 0, 'WD', 'Additional Special Day', 'MANUAL', 'INPROCESS', 'Admin', NULL, 0, '2020-01-30 02:30:35', '2020-01-30 02:30:35', NULL, NULL),
(290, NULL, '2011-209', 'Kempis, Mark Arthur Avelino', 1, 15, 10, '2019-12-25', NULL, NULL, '0.00', '2019-12-25 12:00:00', '2019-12-25 13:00:00', '2019-12-25 08:30:00', '2019-12-25 18:30:00', '1.00', '0.00', '0.00', '0.00', NULL, NULL, '0.00', NULL, NULL, '0.00', '0.00', 'legal', 0, 1, 1, 0, NULL, 0, 'WD', 'Christmas Day', 'MANUAL', 'INPROCESS', 'Admin', NULL, 0, '2020-01-30 02:30:35', '2020-01-30 02:30:35', NULL, NULL),
(291, NULL, '2011-209', 'Kempis, Mark Arthur Avelino', 1, 15, 10, '2019-12-26', NULL, NULL, '0.00', '2019-12-26 12:00:00', '2019-12-26 13:00:00', '2019-12-26 08:30:00', '2019-12-26 18:30:00', '1.00', '0.00', '0.00', '0.00', NULL, NULL, '0.00', NULL, NULL, '0.00', '0.00', 'reg', 0, 1, 1, 0, NULL, 0, 'WD', 'Absent', 'MANUAL', 'INPROCESS', 'Admin', NULL, 0, '2020-01-30 02:30:36', '2020-01-30 02:30:36', NULL, NULL),
(292, NULL, '2011-209', 'Kempis, Mark Arthur Avelino', 1, 15, 10, '2019-12-27', NULL, NULL, '0.00', '2019-12-27 12:00:00', '2019-12-27 13:00:00', '2019-12-27 08:30:00', '2019-12-27 18:30:00', '1.00', '0.00', '0.00', '0.00', NULL, NULL, '0.00', NULL, NULL, '0.00', '0.00', 'reg', 0, 1, 1, 0, NULL, 0, 'WD', 'Absent', 'MANUAL', 'INPROCESS', 'Admin', NULL, 0, '2020-01-30 02:30:36', '2020-01-30 02:30:36', NULL, NULL),
(293, NULL, '2011-209', 'Kempis, Mark Arthur Avelino', 1, 15, 10, '2019-12-28', NULL, NULL, '0.00', NULL, NULL, NULL, NULL, '0.00', '0.00', '0.00', '0.00', NULL, NULL, '0.00', NULL, NULL, '0.00', '0.00', 'rd_reg', 0, 1, 1, 0, NULL, 0, 'WD', 'Restday', 'MANUAL', 'INPROCESS', 'Admin', NULL, 0, '2020-01-30 02:30:36', '2020-01-30 02:30:36', NULL, NULL),
(294, NULL, '2011-209', 'Kempis, Mark Arthur Avelino', 1, 15, 10, '2019-12-29', NULL, NULL, '0.00', NULL, NULL, NULL, NULL, '0.00', '0.00', '0.00', '0.00', NULL, NULL, '0.00', NULL, NULL, '0.00', '0.00', 'rd_reg', 0, 1, 1, 0, NULL, 0, 'WD', 'Restday', 'MANUAL', 'INPROCESS', 'Admin', NULL, 0, '2020-01-30 02:30:36', '2020-01-30 02:30:36', NULL, NULL),
(295, NULL, '2011-209', 'Kempis, Mark Arthur Avelino', 1, 15, 10, '2019-12-30', NULL, NULL, '0.00', '2019-12-30 12:00:00', '2019-12-30 13:00:00', '2019-12-30 08:30:00', '2019-12-30 18:30:00', '1.00', '0.00', '0.00', '0.00', NULL, NULL, '0.00', NULL, NULL, '0.00', '0.00', 'legal', 0, 1, 1, 0, NULL, 0, 'WD', 'Rizal Day', 'MANUAL', 'INPROCESS', 'Admin', NULL, 0, '2020-01-30 02:30:36', '2020-01-30 02:30:36', NULL, NULL),
(296, NULL, '2011-209', 'Kempis, Mark Arthur Avelino', 1, 15, 10, '2019-12-31', NULL, NULL, '0.00', '2019-12-31 12:00:00', '2019-12-31 13:00:00', '2019-12-31 08:30:00', '2019-12-31 18:30:00', '1.00', '0.00', '0.00', '0.00', NULL, NULL, '0.00', NULL, NULL, '0.00', '0.00', 'spcl_nw', 0, 1, 1, 0, NULL, 0, 'WD', 'Last day of the Year', 'MANUAL', 'INPROCESS', 'Admin', NULL, 0, '2020-01-30 02:30:36', '2020-01-30 02:30:36', NULL, NULL),
(297, NULL, '2011-227', 'Navarro, Mary Chris Ann Cruz', 1, 16, 10, '2019-12-01', NULL, '2019-12-02 00:46:26', '0.00', '2019-12-02 12:00:00', '2019-12-02 13:00:00', '2019-12-01 08:30:00', '2019-12-01 18:30:00', '1.00', '0.00', '0.00', '0.00', NULL, NULL, '0.00', NULL, NULL, '0.00', '0.00', 'rd_reg', 0, 1, 1, 0, NULL, 0, 'WD', 'Restday', 'MANUAL', 'INPROCESS', 'Admin', NULL, 0, '2020-01-30 02:30:36', '2020-01-30 02:30:36', NULL, NULL),
(298, NULL, '2011-227', 'Navarro, Mary Chris Ann Cruz', 1, 16, 10, '2019-12-02', '2019-12-02 08:46:26', '2019-12-02 19:45:37', '10.99', '2019-12-02 12:00:00', '2019-12-02 13:00:00', '2019-12-02 08:30:00', '2019-12-02 18:30:00', '1.00', '0.00', '16.20', '0.00', NULL, NULL, '0.00', NULL, NULL, '0.00', '0.00', 'reg', 0, 1, 1, 0, NULL, 0, 'WD', 'Present', 'MANUAL', 'INPROCESS', 'Admin', NULL, 0, '2020-01-30 02:30:36', '2020-01-30 02:30:36', NULL, NULL),
(299, NULL, '2011-227', 'Navarro, Mary Chris Ann Cruz', 1, 16, 10, '2019-12-03', NULL, NULL, '0.00', '2019-12-03 12:00:00', '2019-12-03 13:00:00', '2019-12-03 08:30:00', '2019-12-03 18:30:00', '1.00', '0.00', '0.00', '0.00', NULL, NULL, '0.00', NULL, NULL, '0.00', '0.00', 'reg', 0, 1, 1, 0, NULL, 0, 'WD', 'Absent', 'MANUAL', 'INPROCESS', 'Admin', NULL, 0, '2020-01-30 02:30:36', '2020-01-30 02:30:36', NULL, NULL),
(300, NULL, '2011-227', 'Navarro, Mary Chris Ann Cruz', 1, 16, 10, '2019-12-04', '2019-12-04 08:39:49', '2019-12-04 20:49:11', '12.16', '2019-12-04 12:00:00', '2019-12-04 13:00:00', '2019-12-04 08:30:00', '2019-12-04 18:30:00', '1.00', '0.00', '9.60', '0.00', NULL, NULL, '0.00', NULL, NULL, '0.00', '0.00', 'reg', 0, 1, 1, 0, NULL, 0, 'WD', 'Present', 'MANUAL', 'INPROCESS', 'Admin', NULL, 0, '2020-01-30 02:30:36', '2020-01-30 02:30:36', NULL, NULL),
(301, NULL, '2011-227', 'Navarro, Mary Chris Ann Cruz', 1, 16, 10, '2019-12-05', '2019-12-05 08:42:59', '2019-12-05 20:24:30', '11.69', '2019-12-05 12:00:00', '2019-12-05 13:00:00', '2019-12-05 08:30:00', '2019-12-05 18:30:00', '1.00', '0.00', '13.20', '0.00', NULL, NULL, '0.00', NULL, NULL, '0.00', '0.00', 'reg', 0, 1, 1, 0, NULL, 0, 'WD', 'Present', 'MANUAL', 'INPROCESS', 'Admin', NULL, 0, '2020-01-30 02:30:36', '2020-01-30 02:30:36', NULL, NULL),
(302, NULL, '2011-227', 'Navarro, Mary Chris Ann Cruz', 1, 16, 10, '2019-12-06', NULL, '2019-12-06 19:59:20', '0.00', '2019-12-06 12:00:00', '2019-12-06 13:00:00', '2019-12-06 08:30:00', '2019-12-06 18:30:00', '1.00', '0.00', '0.00', '0.00', NULL, NULL, '0.00', NULL, NULL, '0.00', '0.00', 'reg', 0, 1, 1, 0, NULL, 0, 'WD', 'No Time In', 'MANUAL', 'INPROCESS', 'Admin', NULL, 0, '2020-01-30 02:30:36', '2020-01-30 02:30:36', NULL, NULL),
(303, NULL, '2011-227', 'Navarro, Mary Chris Ann Cruz', 1, 16, 10, '2019-12-07', NULL, NULL, '0.00', NULL, NULL, NULL, NULL, '0.00', '0.00', '0.00', '0.00', NULL, NULL, '0.00', NULL, NULL, '0.00', '0.00', 'rd_reg', 0, 1, 1, 0, NULL, 0, 'WD', 'Restday', 'MANUAL', 'INPROCESS', 'Admin', NULL, 0, '2020-01-30 02:30:36', '2020-01-30 02:30:36', NULL, NULL),
(304, NULL, '2011-227', 'Navarro, Mary Chris Ann Cruz', 1, 16, 10, '2019-12-08', NULL, NULL, '0.00', NULL, NULL, NULL, NULL, '0.00', '0.00', '0.00', '0.00', NULL, NULL, '0.00', NULL, NULL, '0.00', '0.00', 'spcl_nw', 0, 1, 1, 0, NULL, 0, 'WD', 'Feast of the Immaculate Conceptions Of Mary', 'MANUAL', 'INPROCESS', 'Admin', NULL, 0, '2020-01-30 02:30:36', '2020-01-30 02:30:36', NULL, NULL),
(305, NULL, '2011-227', 'Navarro, Mary Chris Ann Cruz', 1, 16, 10, '2019-12-09', '2019-12-09 08:16:37', '2019-12-09 19:18:01', '11.02', '2019-12-09 12:00:00', '2019-12-09 13:00:00', '2019-12-09 08:30:00', '2019-12-09 18:30:00', '1.00', '0.00', '0.00', '0.00', NULL, NULL, '0.00', NULL, NULL, '0.00', '0.00', 'reg', 0, 1, 1, 0, NULL, 0, 'WD', 'Present', 'MANUAL', 'INPROCESS', 'Admin', NULL, 0, '2020-01-30 02:30:36', '2020-01-30 02:30:36', NULL, NULL),
(306, NULL, '2011-227', 'Navarro, Mary Chris Ann Cruz', 1, 16, 10, '2019-12-10', '2019-12-10 07:22:57', '2019-12-10 18:56:43', '11.56', '2019-12-10 12:00:00', '2019-12-10 13:00:00', '2019-12-10 08:30:00', '2019-12-10 18:30:00', '1.00', '0.00', '0.00', '0.00', NULL, NULL, '0.00', NULL, NULL, '0.00', '0.00', 'reg', 0, 1, 1, 0, NULL, 0, 'WD', 'Present', 'MANUAL', 'INPROCESS', 'Admin', NULL, 0, '2020-01-30 02:30:36', '2020-01-30 02:30:36', NULL, NULL),
(307, NULL, '2011-227', 'Navarro, Mary Chris Ann Cruz', 1, 16, 10, '2019-12-11', '2019-12-11 08:23:34', '2019-12-11 14:58:45', '6.59', '2019-12-11 12:00:00', '2019-12-11 13:00:00', '2019-12-11 08:30:00', '2019-12-11 18:30:00', '1.00', '0.00', '0.00', '211.20', NULL, NULL, '0.00', NULL, NULL, '0.00', '0.00', 'reg', 0, 1, 1, 0, NULL, 0, 'WD', 'Present', 'MANUAL', 'INPROCESS', 'Admin', NULL, 0, '2020-01-30 02:30:36', '2020-01-30 02:30:36', NULL, NULL),
(308, NULL, '2011-227', 'Navarro, Mary Chris Ann Cruz', 1, 16, 10, '2019-12-12', NULL, NULL, '0.00', '2019-12-12 12:00:00', '2019-12-12 13:00:00', '2019-12-12 08:30:00', '2019-12-12 18:30:00', '1.00', '0.00', '0.00', '0.00', NULL, NULL, '0.00', NULL, NULL, '0.00', '0.00', 'reg', 0, 1, 1, 0, NULL, 0, 'WD', 'Absent', 'MANUAL', 'INPROCESS', 'Admin', NULL, 0, '2020-01-30 02:30:36', '2020-01-30 02:30:36', NULL, NULL),
(309, NULL, '2011-227', 'Navarro, Mary Chris Ann Cruz', 1, 16, 10, '2019-12-13', NULL, NULL, '0.00', '2019-12-13 12:00:00', '2019-12-13 13:00:00', '2019-12-13 08:30:00', '2019-12-13 18:30:00', '1.00', '0.00', '0.00', '0.00', NULL, NULL, '0.00', NULL, NULL, '0.00', '0.00', 'reg', 0, 1, 1, 0, NULL, 0, 'WD', 'Absent', 'MANUAL', 'INPROCESS', 'Admin', NULL, 0, '2020-01-30 02:30:37', '2020-01-30 02:30:37', NULL, NULL),
(310, NULL, '2011-227', 'Navarro, Mary Chris Ann Cruz', 1, 16, 10, '2019-12-14', NULL, NULL, '0.00', NULL, NULL, NULL, NULL, '0.00', '0.00', '0.00', '0.00', NULL, NULL, '0.00', NULL, NULL, '0.00', '0.00', 'rd_reg', 0, 1, 1, 0, NULL, 0, 'WD', 'Restday', 'MANUAL', 'INPROCESS', 'Admin', NULL, 0, '2020-01-30 02:30:37', '2020-01-30 02:30:37', NULL, NULL),
(311, NULL, '2011-227', 'Navarro, Mary Chris Ann Cruz', 1, 16, 10, '2019-12-15', NULL, NULL, '0.00', NULL, NULL, NULL, NULL, '0.00', '0.00', '0.00', '0.00', NULL, NULL, '0.00', NULL, NULL, '0.00', '0.00', 'rd_reg', 0, 1, 1, 0, NULL, 0, 'WD', 'Restday', 'MANUAL', 'INPROCESS', 'Admin', NULL, 0, '2020-01-30 02:30:37', '2020-01-30 02:30:37', NULL, NULL),
(312, NULL, '2011-227', 'Navarro, Mary Chris Ann Cruz', 1, 16, 10, '2019-12-16', '2019-12-16 21:01:24', '2019-12-16 21:01:32', '0.00', '2019-12-16 12:00:00', '2019-12-16 13:00:00', '2019-12-16 08:30:00', '2019-12-16 18:30:00', '1.00', '0.00', '751.20', '0.00', NULL, NULL, '0.00', NULL, NULL, '0.00', '0.00', 'reg', 0, 1, 1, 0, NULL, 0, 'WD', 'Present', 'MANUAL', 'INPROCESS', 'Admin', NULL, 0, '2020-01-30 02:30:37', '2020-01-30 02:30:37', NULL, NULL),
(313, NULL, '2011-227', 'Navarro, Mary Chris Ann Cruz', 1, 16, 10, '2019-12-17', NULL, '2019-12-17 18:49:20', '0.00', '2019-12-17 12:00:00', '2019-12-17 13:00:00', '2019-12-17 08:30:00', '2019-12-17 18:30:00', '1.00', '0.00', '0.00', '0.00', NULL, NULL, '0.00', NULL, NULL, '0.00', '0.00', 'reg', 0, 1, 1, 0, NULL, 0, 'WD', 'No Time In', 'MANUAL', 'INPROCESS', 'Admin', NULL, 0, '2020-01-30 02:30:37', '2020-01-30 02:30:37', NULL, NULL),
(314, NULL, '2011-227', 'Navarro, Mary Chris Ann Cruz', 1, 16, 10, '2019-12-18', '2019-12-18 11:47:38', '2019-12-18 23:22:19', '11.58', '2019-12-18 12:00:00', '2019-12-18 13:00:00', '2019-12-18 08:30:00', '2019-12-18 18:30:00', '1.00', '0.00', '197.40', '0.00', NULL, NULL, '0.00', NULL, NULL, '0.00', '0.00', 'reg', 0, 1, 1, 0, NULL, 0, 'WD', 'Present', 'MANUAL', 'INPROCESS', 'Admin', NULL, 0, '2020-01-30 02:30:37', '2020-01-30 02:30:37', NULL, NULL),
(315, NULL, '2011-227', 'Navarro, Mary Chris Ann Cruz', 1, 16, 10, '2019-12-19', '2019-12-19 08:37:54', '2019-12-19 19:15:31', '10.63', '2019-12-19 12:00:00', '2019-12-19 13:00:00', '2019-12-19 08:30:00', '2019-12-19 18:30:00', '1.00', '0.00', '7.80', '0.00', NULL, NULL, '0.00', NULL, NULL, '0.00', '0.00', 'reg', 0, 1, 1, 0, NULL, 0, 'WD', 'Present', 'MANUAL', 'INPROCESS', 'Admin', NULL, 0, '2020-01-30 02:30:37', '2020-01-30 02:30:37', NULL, NULL),
(316, NULL, '2011-227', 'Navarro, Mary Chris Ann Cruz', 1, 16, 10, '2019-12-20', '2019-12-20 08:18:07', '2019-12-20 19:19:47', '11.03', '2019-12-20 12:00:00', '2019-12-20 13:00:00', '2019-12-20 08:30:00', '2019-12-20 18:30:00', '1.00', '0.00', '0.00', '0.00', NULL, NULL, '0.00', NULL, NULL, '0.00', '0.00', 'reg', 0, 1, 1, 0, NULL, 0, 'WD', 'Present', 'MANUAL', 'INPROCESS', 'Admin', NULL, 0, '2020-01-30 02:30:37', '2020-01-30 02:30:37', NULL, NULL),
(317, NULL, '2011-227', 'Navarro, Mary Chris Ann Cruz', 1, 16, 10, '2019-12-21', NULL, NULL, '0.00', NULL, NULL, NULL, NULL, '0.00', '0.00', '0.00', '0.00', NULL, NULL, '0.00', NULL, NULL, '0.00', '0.00', 'rd_reg', 0, 1, 1, 0, NULL, 0, 'WD', 'Restday', 'MANUAL', 'INPROCESS', 'Admin', NULL, 0, '2020-01-30 02:30:37', '2020-01-30 02:30:37', NULL, NULL),
(318, NULL, '2011-227', 'Navarro, Mary Chris Ann Cruz', 1, 16, 10, '2019-12-22', NULL, NULL, '0.00', NULL, NULL, NULL, NULL, '0.00', '0.00', '0.00', '0.00', NULL, NULL, '0.00', NULL, NULL, '0.00', '0.00', 'rd_reg', 0, 1, 1, 0, NULL, 0, 'WD', 'Restday', 'MANUAL', 'INPROCESS', 'Admin', NULL, 0, '2020-01-30 02:30:37', '2020-01-30 02:30:37', NULL, NULL),
(319, NULL, '2011-227', 'Navarro, Mary Chris Ann Cruz', 1, 16, 10, '2019-12-23', NULL, NULL, '0.00', '2019-12-23 12:00:00', '2019-12-23 13:00:00', '2019-12-23 08:30:00', '2019-12-23 18:30:00', '1.00', '0.00', '0.00', '0.00', NULL, NULL, '0.00', NULL, NULL, '0.00', '0.00', 'reg', 0, 1, 1, 0, NULL, 0, 'WD', 'Absent', 'MANUAL', 'INPROCESS', 'Admin', NULL, 0, '2020-01-30 02:30:37', '2020-01-30 02:30:37', NULL, NULL),
(320, NULL, '2011-227', 'Navarro, Mary Chris Ann Cruz', 1, 16, 10, '2019-12-24', NULL, NULL, '0.00', '2019-12-24 12:00:00', '2019-12-24 13:00:00', '2019-12-24 08:30:00', '2019-12-24 18:30:00', '1.00', '0.00', '0.00', '0.00', NULL, NULL, '0.00', NULL, NULL, '0.00', '0.00', 'spcl_nw', 0, 1, 1, 0, NULL, 0, 'WD', 'Additional Special Day', 'MANUAL', 'INPROCESS', 'Admin', NULL, 0, '2020-01-30 02:30:37', '2020-01-30 02:30:37', NULL, NULL),
(321, NULL, '2011-227', 'Navarro, Mary Chris Ann Cruz', 1, 16, 10, '2019-12-25', NULL, NULL, '0.00', '2019-12-25 12:00:00', '2019-12-25 13:00:00', '2019-12-25 08:30:00', '2019-12-25 18:30:00', '1.00', '0.00', '0.00', '0.00', NULL, NULL, '0.00', NULL, NULL, '0.00', '0.00', 'legal', 0, 1, 1, 0, NULL, 0, 'WD', 'Christmas Day', 'MANUAL', 'INPROCESS', 'Admin', NULL, 0, '2020-01-30 02:30:37', '2020-01-30 02:30:37', NULL, NULL),
(322, NULL, '2011-227', 'Navarro, Mary Chris Ann Cruz', 1, 16, 10, '2019-12-26', NULL, NULL, '0.00', '2019-12-26 12:00:00', '2019-12-26 13:00:00', '2019-12-26 08:30:00', '2019-12-26 18:30:00', '1.00', '0.00', '0.00', '0.00', NULL, NULL, '0.00', NULL, NULL, '0.00', '0.00', 'reg', 0, 1, 1, 0, NULL, 0, 'WD', 'Absent', 'MANUAL', 'INPROCESS', 'Admin', NULL, 0, '2020-01-30 02:30:37', '2020-01-30 02:30:37', NULL, NULL),
(323, NULL, '2011-227', 'Navarro, Mary Chris Ann Cruz', 1, 16, 10, '2019-12-27', NULL, NULL, '0.00', '2019-12-27 12:00:00', '2019-12-27 13:00:00', '2019-12-27 08:30:00', '2019-12-27 18:30:00', '1.00', '0.00', '0.00', '0.00', NULL, NULL, '0.00', NULL, NULL, '0.00', '0.00', 'reg', 0, 1, 1, 0, NULL, 0, 'WD', 'Absent', 'MANUAL', 'INPROCESS', 'Admin', NULL, 0, '2020-01-30 02:30:37', '2020-01-30 02:30:37', NULL, NULL),
(324, NULL, '2011-227', 'Navarro, Mary Chris Ann Cruz', 1, 16, 10, '2019-12-28', NULL, NULL, '0.00', NULL, NULL, NULL, NULL, '0.00', '0.00', '0.00', '0.00', NULL, NULL, '0.00', NULL, NULL, '0.00', '0.00', 'rd_reg', 0, 1, 1, 0, NULL, 0, 'WD', 'Restday', 'MANUAL', 'INPROCESS', 'Admin', NULL, 0, '2020-01-30 02:30:37', '2020-01-30 02:30:37', NULL, NULL),
(325, NULL, '2011-227', 'Navarro, Mary Chris Ann Cruz', 1, 16, 10, '2019-12-29', NULL, NULL, '0.00', NULL, NULL, NULL, NULL, '0.00', '0.00', '0.00', '0.00', NULL, NULL, '0.00', NULL, NULL, '0.00', '0.00', 'rd_reg', 0, 1, 1, 0, NULL, 0, 'WD', 'Restday', 'MANUAL', 'INPROCESS', 'Admin', NULL, 0, '2020-01-30 02:30:38', '2020-01-30 02:30:38', NULL, NULL),
(326, NULL, '2011-227', 'Navarro, Mary Chris Ann Cruz', 1, 16, 10, '2019-12-30', NULL, NULL, '0.00', '2019-12-30 12:00:00', '2019-12-30 13:00:00', '2019-12-30 08:30:00', '2019-12-30 18:30:00', '1.00', '0.00', '0.00', '0.00', NULL, NULL, '0.00', NULL, NULL, '0.00', '0.00', 'legal', 0, 1, 1, 0, NULL, 0, 'WD', 'Rizal Day', 'MANUAL', 'INPROCESS', 'Admin', NULL, 0, '2020-01-30 02:30:38', '2020-01-30 02:30:38', NULL, NULL),
(327, NULL, '2011-227', 'Navarro, Mary Chris Ann Cruz', 1, 16, 10, '2019-12-31', NULL, NULL, '0.00', '2019-12-31 12:00:00', '2019-12-31 13:00:00', '2019-12-31 08:30:00', '2019-12-31 18:30:00', '1.00', '0.00', '0.00', '0.00', NULL, NULL, '0.00', NULL, NULL, '0.00', '0.00', 'spcl_nw', 0, 1, 1, 0, NULL, 0, 'WD', 'Last day of the Year', 'MANUAL', 'INPROCESS', 'Admin', NULL, 0, '2020-01-30 02:30:38', '2020-01-30 02:30:38', NULL, NULL),
(328, NULL, '2016-037', 'PeÃ±a, Rea Kristine Nedia', 1, 14, 10, '2019-12-01', NULL, NULL, '0.00', NULL, NULL, NULL, NULL, '0.00', '0.00', '0.00', '0.00', NULL, NULL, '0.00', NULL, NULL, '0.00', '0.00', 'rd_reg', 0, 1, 1, 0, NULL, 0, 'WD', 'Restday', 'MANUAL', 'INPROCESS', 'Admin', NULL, 0, '2020-01-30 02:30:38', '2020-01-30 02:30:38', NULL, NULL),
(329, NULL, '2016-037', 'PeÃ±a, Rea Kristine Nedia', 1, 14, 10, '2019-12-02', NULL, NULL, '0.00', '2019-12-02 12:00:00', '2019-12-02 13:00:00', '2019-12-02 08:30:00', '2019-12-02 18:30:00', '1.00', '0.00', '0.00', '0.00', NULL, NULL, '0.00', NULL, NULL, '0.00', '0.00', 'reg', 0, 1, 1, 0, NULL, 0, 'WD', 'Absent', 'MANUAL', 'INPROCESS', 'Admin', NULL, 0, '2020-01-30 02:30:38', '2020-01-30 02:30:38', NULL, NULL),
(330, NULL, '2016-037', 'PeÃ±a, Rea Kristine Nedia', 1, 14, 10, '2019-12-03', NULL, NULL, '0.00', '2019-12-03 12:00:00', '2019-12-03 13:00:00', '2019-12-03 08:30:00', '2019-12-03 18:30:00', '1.00', '0.00', '0.00', '0.00', NULL, NULL, '0.00', NULL, NULL, '0.00', '0.00', 'reg', 0, 1, 1, 0, NULL, 0, 'WD', 'Absent', 'MANUAL', 'INPROCESS', 'Admin', NULL, 0, '2020-01-30 02:30:38', '2020-01-30 02:30:38', NULL, NULL),
(331, NULL, '2016-037', 'PeÃ±a, Rea Kristine Nedia', 1, 14, 10, '2019-12-04', NULL, NULL, '0.00', '2019-12-04 12:00:00', '2019-12-04 13:00:00', '2019-12-04 08:30:00', '2019-12-04 18:30:00', '1.00', '0.00', '0.00', '0.00', NULL, NULL, '0.00', NULL, NULL, '0.00', '0.00', 'reg', 0, 1, 1, 0, NULL, 0, 'WD', 'Absent', 'MANUAL', 'INPROCESS', 'Admin', NULL, 0, '2020-01-30 02:30:38', '2020-01-30 02:30:38', NULL, NULL),
(332, NULL, '2016-037', 'PeÃ±a, Rea Kristine Nedia', 1, 14, 10, '2019-12-05', NULL, NULL, '0.00', '2019-12-05 12:00:00', '2019-12-05 13:00:00', '2019-12-05 08:30:00', '2019-12-05 18:30:00', '1.00', '0.00', '0.00', '0.00', NULL, NULL, '0.00', NULL, NULL, '0.00', '0.00', 'reg', 0, 1, 1, 0, NULL, 0, 'WD', 'Absent', 'MANUAL', 'INPROCESS', 'Admin', NULL, 0, '2020-01-30 02:30:38', '2020-01-30 02:30:38', NULL, NULL),
(333, NULL, '2016-037', 'PeÃ±a, Rea Kristine Nedia', 1, 14, 10, '2019-12-06', NULL, NULL, '0.00', '2019-12-06 12:00:00', '2019-12-06 13:00:00', '2019-12-06 08:30:00', '2019-12-06 18:30:00', '1.00', '0.00', '0.00', '0.00', NULL, NULL, '0.00', NULL, NULL, '0.00', '0.00', 'reg', 0, 1, 1, 0, NULL, 0, 'WD', 'Absent', 'MANUAL', 'INPROCESS', 'Admin', NULL, 0, '2020-01-30 02:30:38', '2020-01-30 02:30:38', NULL, NULL),
(334, NULL, '2016-037', 'PeÃ±a, Rea Kristine Nedia', 1, 14, 10, '2019-12-07', NULL, NULL, '0.00', NULL, NULL, NULL, NULL, '0.00', '0.00', '0.00', '0.00', NULL, NULL, '0.00', NULL, NULL, '0.00', '0.00', 'rd_reg', 0, 1, 1, 0, NULL, 0, 'WD', 'Restday', 'MANUAL', 'INPROCESS', 'Admin', NULL, 0, '2020-01-30 02:30:38', '2020-01-30 02:30:38', NULL, NULL),
(335, NULL, '2016-037', 'PeÃ±a, Rea Kristine Nedia', 1, 14, 10, '2019-12-08', NULL, NULL, '0.00', NULL, NULL, NULL, NULL, '0.00', '0.00', '0.00', '0.00', NULL, NULL, '0.00', NULL, NULL, '0.00', '0.00', 'spcl_nw', 0, 1, 1, 0, NULL, 0, 'WD', 'Feast of the Immaculate Conceptions Of Mary', 'MANUAL', 'INPROCESS', 'Admin', NULL, 0, '2020-01-30 02:30:39', '2020-01-30 02:30:39', NULL, NULL),
(336, NULL, '2016-037', 'PeÃ±a, Rea Kristine Nedia', 1, 14, 10, '2019-12-09', '2019-12-09 08:28:27', '2019-12-09 18:57:13', '10.48', '2019-12-09 12:00:00', '2019-12-09 13:00:00', '2019-12-09 08:30:00', '2019-12-09 18:30:00', '1.00', '0.00', '0.00', '0.00', NULL, NULL, '0.00', NULL, NULL, '0.00', '0.00', 'reg', 0, 1, 1, 0, NULL, 0, 'WD', 'Present', 'MANUAL', 'INPROCESS', 'Admin', NULL, 0, '2020-01-30 02:30:39', '2020-01-30 02:30:39', NULL, NULL),
(337, NULL, '2016-037', 'PeÃ±a, Rea Kristine Nedia', 1, 14, 10, '2019-12-10', NULL, '2019-12-10 18:42:14', '0.00', '2019-12-10 12:00:00', '2019-12-10 13:00:00', '2019-12-10 08:30:00', '2019-12-10 18:30:00', '1.00', '0.00', '0.00', '0.00', NULL, NULL, '0.00', NULL, NULL, '0.00', '0.00', 'reg', 0, 1, 1, 0, NULL, 0, 'WD', 'No Time In', 'MANUAL', 'INPROCESS', 'Admin', NULL, 0, '2020-01-30 02:30:39', '2020-01-30 02:30:39', NULL, NULL),
(338, NULL, '2016-037', 'PeÃ±a, Rea Kristine Nedia', 1, 14, 10, '2019-12-11', '2019-12-11 08:07:19', NULL, '0.00', '2019-12-11 12:00:00', '2019-12-11 13:00:00', '2019-12-11 08:30:00', '2019-12-11 18:30:00', '1.00', '0.00', '0.00', '0.00', NULL, NULL, '0.00', NULL, NULL, '0.00', '0.00', 'reg', 0, 1, 1, 0, NULL, 0, 'WD', 'No Time Out', 'MANUAL', 'INPROCESS', 'Admin', NULL, 0, '2020-01-30 02:30:39', '2020-01-30 02:30:39', NULL, NULL),
(339, NULL, '2016-037', 'PeÃ±a, Rea Kristine Nedia', 1, 14, 10, '2019-12-12', '2019-12-12 13:45:02', '2019-12-12 19:07:05', '5.37', '2019-12-12 12:00:00', '2019-12-12 13:00:00', '2019-12-12 08:30:00', '2019-12-12 18:30:00', '1.00', '0.00', '315.00', '0.00', NULL, NULL, '0.00', NULL, NULL, '0.00', '0.00', 'reg', 0, 1, 1, 0, NULL, 0, 'WD', 'Present', 'MANUAL', 'INPROCESS', 'Admin', NULL, 0, '2020-01-30 02:30:39', '2020-01-30 02:30:39', NULL, NULL),
(340, NULL, '2016-037', 'PeÃ±a, Rea Kristine Nedia', 1, 14, 10, '2019-12-13', '2019-12-13 08:23:29', '2019-12-13 18:43:25', '10.33', '2019-12-13 12:00:00', '2019-12-13 13:00:00', '2019-12-13 08:30:00', '2019-12-13 18:30:00', '1.00', '0.00', '0.00', '0.00', NULL, NULL, '0.00', NULL, NULL, '0.00', '0.00', 'reg', 0, 1, 1, 0, NULL, 0, 'WD', 'Present', 'MANUAL', 'INPROCESS', 'Admin', NULL, 0, '2020-01-30 02:30:39', '2020-01-30 02:30:39', NULL, NULL),
(341, NULL, '2016-037', 'PeÃ±a, Rea Kristine Nedia', 1, 14, 10, '2019-12-14', NULL, NULL, '0.00', NULL, NULL, NULL, NULL, '0.00', '0.00', '0.00', '0.00', NULL, NULL, '0.00', NULL, NULL, '0.00', '0.00', 'rd_reg', 0, 1, 1, 0, NULL, 0, 'WD', 'Restday', 'MANUAL', 'INPROCESS', 'Admin', NULL, 0, '2020-01-30 02:30:39', '2020-01-30 02:30:39', NULL, NULL),
(342, NULL, '2016-037', 'PeÃ±a, Rea Kristine Nedia', 1, 14, 10, '2019-12-15', NULL, NULL, '0.00', NULL, NULL, NULL, NULL, '0.00', '0.00', '0.00', '0.00', NULL, NULL, '0.00', NULL, NULL, '0.00', '0.00', 'rd_reg', 0, 1, 1, 0, NULL, 0, 'WD', 'Restday', 'MANUAL', 'INPROCESS', 'Admin', NULL, 0, '2020-01-30 02:30:39', '2020-01-30 02:30:39', NULL, NULL),
(343, NULL, '2016-037', 'PeÃ±a, Rea Kristine Nedia', 1, 14, 10, '2019-12-16', '2019-12-16 08:10:24', '2019-12-16 18:04:02', '9.89', '2019-12-16 12:00:00', '2019-12-16 13:00:00', '2019-12-16 08:30:00', '2019-12-16 18:30:00', '1.00', '0.00', '0.00', '25.80', NULL, NULL, '0.00', NULL, NULL, '0.00', '0.00', 'reg', 0, 1, 1, 0, NULL, 0, 'WD', 'Present', 'MANUAL', 'INPROCESS', 'Admin', NULL, 0, '2020-01-30 02:30:39', '2020-01-30 02:30:39', NULL, NULL),
(344, NULL, '2016-037', 'PeÃ±a, Rea Kristine Nedia', 1, 14, 10, '2019-12-17', '2019-12-17 08:01:47', '2019-12-17 18:43:30', '10.70', '2019-12-17 12:00:00', '2019-12-17 13:00:00', '2019-12-17 08:30:00', '2019-12-17 18:30:00', '1.00', '0.00', '0.00', '0.00', NULL, NULL, '0.00', NULL, NULL, '0.00', '0.00', 'reg', 0, 1, 1, 0, NULL, 0, 'WD', 'Present', 'MANUAL', 'INPROCESS', 'Admin', NULL, 0, '2020-01-30 02:30:39', '2020-01-30 02:30:39', NULL, NULL),
(345, NULL, '2016-037', 'PeÃ±a, Rea Kristine Nedia', 1, 14, 10, '2019-12-18', '2019-12-18 08:00:47', '2019-12-18 18:33:52', '10.55', '2019-12-18 12:00:00', '2019-12-18 13:00:00', '2019-12-18 08:30:00', '2019-12-18 18:30:00', '1.00', '0.00', '0.00', '0.00', NULL, NULL, '0.00', NULL, NULL, '0.00', '0.00', 'reg', 0, 1, 1, 0, NULL, 0, 'WD', 'Present', 'MANUAL', 'INPROCESS', 'Admin', NULL, 0, '2020-01-30 02:30:39', '2020-01-30 02:30:39', NULL, NULL),
(346, NULL, '2016-037', 'PeÃ±a, Rea Kristine Nedia', 1, 14, 10, '2019-12-19', '2019-12-19 07:38:01', '2019-12-19 18:30:58', '10.88', '2019-12-19 12:00:00', '2019-12-19 13:00:00', '2019-12-19 08:30:00', '2019-12-19 18:30:00', '1.00', '0.00', '0.00', '0.00', NULL, NULL, '0.00', NULL, NULL, '0.00', '0.00', 'reg', 0, 1, 1, 0, NULL, 0, 'WD', 'Present', 'MANUAL', 'INPROCESS', 'Admin', NULL, 0, '2020-01-30 02:30:39', '2020-01-30 02:30:39', NULL, NULL),
(347, NULL, '2016-037', 'PeÃ±a, Rea Kristine Nedia', 1, 14, 10, '2019-12-20', '2019-12-20 07:34:12', '2019-12-20 18:29:15', '10.92', '2019-12-20 12:00:00', '2019-12-20 13:00:00', '2019-12-20 08:30:00', '2019-12-20 18:30:00', '1.00', '0.00', '0.00', '0.60', NULL, NULL, '0.00', NULL, NULL, '0.00', '0.00', 'reg', 0, 1, 1, 0, NULL, 0, 'WD', 'Present', 'MANUAL', 'INPROCESS', 'Admin', NULL, 0, '2020-01-30 02:30:40', '2020-01-30 02:30:40', NULL, NULL),
(348, NULL, '2016-037', 'PeÃ±a, Rea Kristine Nedia', 1, 14, 10, '2019-12-21', NULL, NULL, '0.00', NULL, NULL, NULL, NULL, '0.00', '0.00', '0.00', '0.00', NULL, NULL, '0.00', NULL, NULL, '0.00', '0.00', 'rd_reg', 0, 1, 1, 0, NULL, 0, 'WD', 'Restday', 'MANUAL', 'INPROCESS', 'Admin', NULL, 0, '2020-01-30 02:30:40', '2020-01-30 02:30:40', NULL, NULL),
(349, NULL, '2016-037', 'PeÃ±a, Rea Kristine Nedia', 1, 14, 10, '2019-12-22', NULL, NULL, '0.00', NULL, NULL, NULL, NULL, '0.00', '0.00', '0.00', '0.00', NULL, NULL, '0.00', NULL, NULL, '0.00', '0.00', 'rd_reg', 0, 1, 1, 0, NULL, 0, 'WD', 'Restday', 'MANUAL', 'INPROCESS', 'Admin', NULL, 0, '2020-01-30 02:30:40', '2020-01-30 02:30:40', NULL, NULL),
(350, NULL, '2016-037', 'PeÃ±a, Rea Kristine Nedia', 1, 14, 10, '2019-12-23', '2019-12-23 08:30:47', '2019-12-23 18:28:50', '9.97', '2019-12-23 12:00:00', '2019-12-23 13:00:00', '2019-12-23 08:30:00', '2019-12-23 18:30:00', '1.00', '0.00', '0.60', '1.20', NULL, NULL, '0.00', NULL, NULL, '0.00', '0.00', 'reg', 0, 1, 1, 0, NULL, 0, 'WD', 'Present', 'MANUAL', 'INPROCESS', 'Admin', NULL, 0, '2020-01-30 02:30:40', '2020-01-30 02:30:40', NULL, NULL),
(351, NULL, '2016-037', 'PeÃ±a, Rea Kristine Nedia', 1, 14, 10, '2019-12-24', NULL, NULL, '0.00', '2019-12-24 12:00:00', '2019-12-24 13:00:00', '2019-12-24 08:30:00', '2019-12-24 18:30:00', '1.00', '0.00', '0.00', '0.00', NULL, NULL, '0.00', NULL, NULL, '0.00', '0.00', 'spcl_nw', 0, 1, 1, 0, NULL, 0, 'WD', 'Additional Special Day', 'MANUAL', 'INPROCESS', 'Admin', NULL, 0, '2020-01-30 02:30:40', '2020-01-30 02:30:40', NULL, NULL),
(352, NULL, '2016-037', 'PeÃ±a, Rea Kristine Nedia', 1, 14, 10, '2019-12-25', NULL, NULL, '0.00', '2019-12-25 12:00:00', '2019-12-25 13:00:00', '2019-12-25 08:30:00', '2019-12-25 18:30:00', '1.00', '0.00', '0.00', '0.00', NULL, NULL, '0.00', NULL, NULL, '0.00', '0.00', 'legal', 0, 1, 1, 0, NULL, 0, 'WD', 'Christmas Day', 'MANUAL', 'INPROCESS', 'Admin', NULL, 0, '2020-01-30 02:30:40', '2020-01-30 02:30:40', NULL, NULL),
(353, NULL, '2016-037', 'PeÃ±a, Rea Kristine Nedia', 1, 14, 10, '2019-12-26', NULL, NULL, '0.00', '2019-12-26 12:00:00', '2019-12-26 13:00:00', '2019-12-26 08:30:00', '2019-12-26 18:30:00', '1.00', '0.00', '0.00', '0.00', NULL, NULL, '0.00', NULL, NULL, '0.00', '0.00', 'reg', 0, 1, 1, 0, NULL, 0, 'WD', 'Absent', 'MANUAL', 'INPROCESS', 'Admin', NULL, 0, '2020-01-30 02:30:40', '2020-01-30 02:30:40', NULL, NULL),
(354, NULL, '2016-037', 'PeÃ±a, Rea Kristine Nedia', 1, 14, 10, '2019-12-27', '2019-12-27 08:27:59', NULL, '0.00', '2019-12-27 12:00:00', '2019-12-27 13:00:00', '2019-12-27 08:30:00', '2019-12-27 18:30:00', '1.00', '0.00', '0.00', '0.00', NULL, NULL, '0.00', NULL, NULL, '0.00', '0.00', 'reg', 0, 1, 1, 0, NULL, 0, 'WD', 'No Time Out', 'MANUAL', 'INPROCESS', 'Admin', NULL, 0, '2020-01-30 02:30:40', '2020-01-30 02:30:40', NULL, NULL),
(355, NULL, '2016-037', 'PeÃ±a, Rea Kristine Nedia', 1, 14, 10, '2019-12-28', NULL, NULL, '0.00', NULL, NULL, NULL, NULL, '0.00', '0.00', '0.00', '0.00', NULL, NULL, '0.00', NULL, NULL, '0.00', '0.00', 'rd_reg', 0, 1, 1, 0, NULL, 0, 'WD', 'Restday', 'MANUAL', 'INPROCESS', 'Admin', NULL, 0, '2020-01-30 02:30:40', '2020-01-30 02:30:40', NULL, NULL),
(356, NULL, '2016-037', 'PeÃ±a, Rea Kristine Nedia', 1, 14, 10, '2019-12-29', NULL, NULL, '0.00', NULL, NULL, NULL, NULL, '0.00', '0.00', '0.00', '0.00', NULL, NULL, '0.00', NULL, NULL, '0.00', '0.00', 'rd_reg', 0, 1, 1, 0, NULL, 0, 'WD', 'Restday', 'MANUAL', 'INPROCESS', 'Admin', NULL, 0, '2020-01-30 02:30:40', '2020-01-30 02:30:40', NULL, NULL),
(357, NULL, '2016-037', 'PeÃ±a, Rea Kristine Nedia', 1, 14, 10, '2019-12-30', NULL, NULL, '0.00', '2019-12-30 12:00:00', '2019-12-30 13:00:00', '2019-12-30 08:30:00', '2019-12-30 18:30:00', '1.00', '0.00', '0.00', '0.00', NULL, NULL, '0.00', NULL, NULL, '0.00', '0.00', 'legal', 0, 1, 1, 0, NULL, 0, 'WD', 'Rizal Day', 'MANUAL', 'INPROCESS', 'Admin', NULL, 0, '2020-01-30 02:30:40', '2020-01-30 02:30:40', NULL, NULL),
(358, NULL, '2016-037', 'PeÃ±a, Rea Kristine Nedia', 1, 14, 10, '2019-12-31', NULL, NULL, '0.00', '2019-12-31 12:00:00', '2019-12-31 13:00:00', '2019-12-31 08:30:00', '2019-12-31 18:30:00', '1.00', '0.00', '0.00', '0.00', NULL, NULL, '0.00', NULL, NULL, '0.00', '0.00', 'spcl_nw', 0, 1, 1, 0, NULL, 0, 'WD', 'Last day of the Year', 'MANUAL', 'INPROCESS', 'Admin', NULL, 0, '2020-01-30 02:30:41', '2020-01-30 02:30:41', NULL, NULL),
(359, NULL, '2019-12', 'RND, CSI ', 1, 1, 1, '2019-12-17', '2019-12-17 06:50:14', NULL, '0.00', '2019-12-17 12:00:00', '2019-12-17 13:00:00', '2019-12-17 09:00:00', '2019-12-17 18:00:00', '1.00', '0.00', '0.00', '0.00', NULL, NULL, '0.00', NULL, NULL, '0.00', '0.00', NULL, 0, 1, 1, 0, NULL, 0, 'WD', NULL, 'MANUAL', 'INPROCESS', 'Admin', NULL, 0, '2020-01-30 02:30:41', '2020-01-30 02:30:41', NULL, NULL),
(360, NULL, '2019-12', 'RND, CSI ', 1, 1, 1, '2019-12-19', NULL, '2019-12-19 16:54:16', '0.00', '2019-12-19 12:00:00', '2019-12-19 13:00:00', '2019-12-19 10:00:00', '2019-12-19 19:00:00', '1.00', '0.00', '0.00', '0.00', NULL, NULL, '0.00', NULL, NULL, '0.00', '0.00', NULL, 0, 1, 1, 0, NULL, 0, 'WD', NULL, 'MANUAL', 'INPROCESS', 'Admin', NULL, 0, '2020-01-30 02:30:41', '2020-01-30 02:30:41', NULL, NULL),
(361, NULL, '2019-12', 'RND, CSI ', 1, 1, 1, '2019-12-20', '2019-12-20 14:18:58', '2019-12-20 14:21:02', '0.03', '2019-12-20 12:00:00', '2019-12-20 13:00:00', '2019-12-20 11:00:00', '2019-12-20 20:00:00', '1.00', '0.00', '199.20', '339.00', NULL, NULL, '0.00', NULL, NULL, '0.00', '0.00', NULL, 0, 1, 1, 0, NULL, 0, 'WD', NULL, 'MANUAL', 'INPROCESS', 'Admin', NULL, 0, '2020-01-30 02:30:41', '2020-01-30 02:30:41', NULL, NULL),
(362, NULL, '2019-12', 'RND, CSI ', 1, 1, 1, '2019-12-27', '2019-12-27 08:08:29', NULL, '0.00', '2019-12-27 12:00:00', '2019-12-27 13:00:00', '2019-12-27 11:00:00', '2019-12-27 20:00:00', '1.00', '0.00', '0.00', '0.00', NULL, NULL, '0.00', NULL, NULL, '0.00', '0.00', NULL, 0, 1, 1, 0, NULL, 0, 'WD', NULL, 'MANUAL', 'INPROCESS', 'Admin', NULL, 0, '2020-01-30 02:30:41', '2020-01-30 02:30:41', NULL, NULL),
(363, NULL, '2018-039', 'Silvestre, Mark Brenn Morla', 1, 13, 4, '2019-12-01', NULL, '2019-12-02 00:31:39', '0.00', '2019-12-02 12:00:00', '2019-12-02 13:00:00', NULL, NULL, '1.00', '0.00', '0.00', '0.00', NULL, NULL, '0.00', NULL, NULL, '0.00', '0.00', 'rd_reg', 0, 1, 1, 0, NULL, 0, 'WD', 'Restday', 'MANUAL', 'INPROCESS', 'Admin', NULL, 0, '2020-01-30 02:30:41', '2020-01-30 02:30:41', NULL, NULL),
(364, NULL, '2018-039', 'Silvestre, Mark Brenn Morla', 1, 13, 4, '2019-12-02', '2019-12-02 08:31:39', '2019-12-02 18:39:58', '10.14', '2019-12-02 12:00:00', '2019-12-02 13:00:00', '2019-12-02 08:31:39', '2019-12-02 18:31:39', '1.00', '0.00', '0.00', '0.00', NULL, NULL, '0.00', NULL, NULL, '0.00', '0.00', 'reg', 0, 1, 1, 0, NULL, 0, 'WD', 'Present', 'MANUAL', 'INPROCESS', 'Admin', NULL, 0, '2020-01-30 02:30:41', '2020-01-30 02:30:41', NULL, NULL),
(365, NULL, '2018-039', 'Silvestre, Mark Brenn Morla', 1, 13, 4, '2019-12-03', NULL, NULL, '0.00', '2019-12-03 12:00:00', '2019-12-03 13:00:00', NULL, NULL, '1.00', '0.00', '0.00', '0.00', NULL, NULL, '0.00', NULL, NULL, '0.00', '0.00', 'reg', 0, 1, 1, 0, NULL, 0, 'WD', 'Absent', 'MANUAL', 'INPROCESS', 'Admin', NULL, 0, '2020-01-30 02:30:41', '2020-01-30 02:30:41', NULL, NULL);
INSERT INTO `date_and_time_records` (`id`, `register_number`, `company_id`, `employee_name`, `company_ind`, `group_ind`, `sched_template_id`, `sched_date`, `date_time_in`, `date_time_out`, `reg_total_hrs`, `lunch_out`, `lunch_in`, `schedule_shift_in`, `schedule_shift_out`, `lunch_durations_hrs`, `over_break_min`, `late_min`, `undertime_min`, `ot_time_in`, `ot_time_out`, `ot_total_hrs`, `night_diff_in`, `night_diff_out`, `night_diff_total_hrs`, `night_diff_total_ot_hrs`, `day_types`, `work_on_holiday`, `before_holiday`, `after_holiday`, `leaved`, `leave_types`, `leave_wpay`, `half_day`, `remarks`, `insystem`, `payroll_status`, `created_by`, `lu_by`, `deleted`, `created_at`, `updated_at`, `device_id_in`, `device_id_out`) VALUES
(366, NULL, '2018-039', 'Silvestre, Mark Brenn Morla', 1, 13, 4, '2019-12-04', '2019-12-04 08:39:55', '2019-12-04 18:40:40', '10.01', '2019-12-04 12:00:00', '2019-12-04 13:00:00', '2019-12-04 08:39:55', '2019-12-04 18:39:55', '1.00', '0.00', '0.00', '0.00', NULL, NULL, '0.00', NULL, NULL, '0.00', '0.00', 'reg', 0, 1, 1, 0, NULL, 0, 'WD', 'Present', 'MANUAL', 'INPROCESS', 'Admin', NULL, 0, '2020-01-30 02:30:41', '2020-01-30 02:30:41', NULL, NULL),
(367, NULL, '2018-039', 'Silvestre, Mark Brenn Morla', 1, 13, 4, '2019-12-05', '2019-12-05 08:27:11', NULL, '0.00', '2019-12-05 12:00:00', '2019-12-05 13:00:00', '2019-12-05 08:27:11', '2019-12-05 18:27:11', '1.00', '0.00', '0.00', '0.00', NULL, NULL, '0.00', NULL, NULL, '0.00', '0.00', 'reg', 0, 1, 1, 0, NULL, 0, 'WD', 'No Time Out', 'MANUAL', 'INPROCESS', 'Admin', NULL, 0, '2020-01-30 02:30:41', '2020-01-30 02:30:41', NULL, NULL),
(368, NULL, '2018-039', 'Silvestre, Mark Brenn Morla', 1, 13, 4, '2019-12-06', '2019-12-06 08:27:23', '2019-12-06 19:14:29', '10.79', '2019-12-06 12:00:00', '2019-12-06 13:00:00', '2019-12-06 08:27:23', '2019-12-06 18:27:23', '1.00', '0.00', '0.00', '0.00', NULL, NULL, '0.00', NULL, NULL, '0.00', '0.00', 'reg', 0, 1, 1, 0, NULL, 0, 'WD', 'Present', 'MANUAL', 'INPROCESS', 'Admin', NULL, 0, '2020-01-30 02:30:41', '2020-01-30 02:30:41', NULL, NULL),
(369, NULL, '2018-039', 'Silvestre, Mark Brenn Morla', 1, 13, 4, '2019-12-07', NULL, NULL, '0.00', NULL, NULL, NULL, NULL, '0.00', '0.00', '0.00', '0.00', NULL, NULL, '0.00', NULL, NULL, '0.00', '0.00', 'rd_reg', 0, 1, 1, 0, NULL, 0, 'WD', 'Restday', 'MANUAL', 'INPROCESS', 'Admin', NULL, 0, '2020-01-30 02:30:42', '2020-01-30 02:30:42', NULL, NULL),
(370, NULL, '2018-039', 'Silvestre, Mark Brenn Morla', 1, 13, 4, '2019-12-08', NULL, NULL, '0.00', NULL, NULL, NULL, NULL, '0.00', '0.00', '0.00', '0.00', NULL, NULL, '0.00', NULL, NULL, '0.00', '0.00', 'spcl_nw', 0, 1, 1, 0, NULL, 0, 'WD', 'Feast of the Immaculate Conceptions Of Mary', 'MANUAL', 'INPROCESS', 'Admin', NULL, 0, '2020-01-30 02:30:42', '2020-01-30 02:30:42', NULL, NULL),
(371, NULL, '2018-039', 'Silvestre, Mark Brenn Morla', 1, 13, 4, '2019-12-09', '2019-12-09 09:13:47', '2019-12-09 18:43:30', '9.50', '2019-12-09 12:00:00', '2019-12-09 13:00:00', '2019-12-09 09:13:47', '2019-12-09 19:13:47', '1.00', '0.00', '0.00', '30.00', NULL, NULL, '0.00', NULL, NULL, '0.00', '0.00', 'reg', 0, 1, 1, 0, NULL, 0, 'WD', 'Present', 'MANUAL', 'INPROCESS', 'Admin', NULL, 0, '2020-01-30 02:30:42', '2020-01-30 02:30:42', NULL, NULL),
(372, NULL, '2018-039', 'Silvestre, Mark Brenn Morla', 1, 13, 4, '2019-12-10', '2019-12-10 07:17:33', '2019-12-10 18:47:30', '11.50', '2019-12-10 12:00:00', '2019-12-10 13:00:00', '2019-12-10 07:17:33', '2019-12-10 17:17:33', '1.00', '0.00', '0.00', '0.00', NULL, NULL, '0.00', NULL, NULL, '0.00', '0.00', 'reg', 0, 1, 1, 0, NULL, 0, 'WD', 'Present', 'MANUAL', 'INPROCESS', 'Admin', NULL, 0, '2020-01-30 02:30:42', '2020-01-30 02:30:42', NULL, NULL),
(373, NULL, '2018-039', 'Silvestre, Mark Brenn Morla', 1, 13, 4, '2019-12-11', '2019-12-11 08:19:49', '2019-12-11 18:37:58', '10.30', '2019-12-11 12:00:00', '2019-12-11 13:00:00', '2019-12-11 08:19:49', '2019-12-11 18:19:49', '1.00', '0.00', '0.00', '0.00', NULL, NULL, '0.00', NULL, NULL, '0.00', '0.00', 'reg', 0, 1, 1, 0, NULL, 0, 'WD', 'Present', 'MANUAL', 'INPROCESS', 'Admin', NULL, 0, '2020-01-30 02:30:42', '2020-01-30 02:30:42', NULL, NULL),
(374, NULL, '2018-039', 'Silvestre, Mark Brenn Morla', 1, 13, 4, '2019-12-12', '2019-12-12 08:07:55', '2019-12-12 18:47:02', '10.65', '2019-12-12 12:00:00', '2019-12-12 13:00:00', '2019-12-12 08:07:55', '2019-12-12 18:07:55', '1.00', '0.00', '0.00', '0.00', NULL, NULL, '0.00', NULL, NULL, '0.00', '0.00', 'reg', 0, 1, 1, 0, NULL, 0, 'WD', 'Present', 'MANUAL', 'INPROCESS', 'Admin', NULL, 0, '2020-01-30 02:30:42', '2020-01-30 02:30:42', NULL, NULL),
(375, NULL, '2018-039', 'Silvestre, Mark Brenn Morla', 1, 13, 4, '2019-12-13', '2019-12-13 08:31:29', '2019-12-13 19:11:13', '10.66', '2019-12-13 12:00:00', '2019-12-13 13:00:00', '2019-12-13 08:31:29', '2019-12-13 18:31:29', '1.00', '0.00', '0.00', '0.00', NULL, NULL, '0.00', NULL, NULL, '0.00', '0.00', 'reg', 0, 1, 1, 0, NULL, 0, 'WD', 'Present', 'MANUAL', 'INPROCESS', 'Admin', NULL, 0, '2020-01-30 02:30:43', '2020-01-30 02:30:43', NULL, NULL),
(376, NULL, '2018-039', 'Silvestre, Mark Brenn Morla', 1, 13, 4, '2019-12-14', NULL, NULL, '0.00', NULL, NULL, NULL, NULL, '0.00', '0.00', '0.00', '0.00', NULL, NULL, '0.00', NULL, NULL, '0.00', '0.00', 'rd_reg', 0, 1, 1, 0, NULL, 0, 'WD', 'Restday', 'MANUAL', 'INPROCESS', 'Admin', NULL, 0, '2020-01-30 02:30:43', '2020-01-30 02:30:43', NULL, NULL),
(377, NULL, '2018-039', 'Silvestre, Mark Brenn Morla', 1, 13, 4, '2019-12-15', NULL, NULL, '0.00', NULL, NULL, NULL, NULL, '0.00', '0.00', '0.00', '0.00', NULL, NULL, '0.00', NULL, NULL, '0.00', '0.00', 'rd_reg', 0, 1, 1, 0, NULL, 0, 'WD', 'Restday', 'MANUAL', 'INPROCESS', 'Admin', NULL, 0, '2020-01-30 02:30:43', '2020-01-30 02:30:43', NULL, NULL),
(378, NULL, '2018-039', 'Silvestre, Mark Brenn Morla', 1, 13, 4, '2019-12-16', '2019-12-16 08:27:45', '2019-12-16 19:05:19', '10.63', '2019-12-16 12:00:00', '2019-12-16 13:00:00', '2019-12-16 08:27:45', '2019-12-16 18:27:45', '1.00', '0.00', '0.00', '0.00', NULL, NULL, '0.00', NULL, NULL, '0.00', '0.00', 'reg', 0, 1, 1, 0, NULL, 0, 'WD', 'Present', 'MANUAL', 'INPROCESS', 'Admin', NULL, 0, '2020-01-30 02:30:43', '2020-01-30 02:30:43', NULL, NULL),
(379, NULL, '2018-039', 'Silvestre, Mark Brenn Morla', 1, 13, 4, '2019-12-17', '2019-12-17 08:39:04', '2019-12-17 18:40:42', '10.03', '2019-12-17 12:00:00', '2019-12-17 13:00:00', '2019-12-17 08:39:04', '2019-12-17 18:39:04', '1.00', '0.00', '0.00', '0.00', NULL, NULL, '0.00', NULL, NULL, '0.00', '0.00', 'reg', 0, 1, 1, 0, NULL, 0, 'WD', 'Present', 'MANUAL', 'INPROCESS', 'Admin', NULL, 0, '2020-01-30 02:30:43', '2020-01-30 02:30:43', NULL, NULL),
(380, NULL, '2018-039', 'Silvestre, Mark Brenn Morla', 1, 13, 4, '2019-12-18', '2019-12-18 08:30:58', '2019-12-18 22:02:41', '13.53', '2019-12-18 12:00:00', '2019-12-18 13:00:00', '2019-12-18 08:30:58', '2019-12-18 18:30:58', '1.00', '0.00', '0.00', '0.00', NULL, NULL, '0.00', NULL, NULL, '0.00', '0.00', 'reg', 0, 1, 1, 0, NULL, 0, 'WD', 'Present', 'MANUAL', 'INPROCESS', 'Admin', NULL, 0, '2020-01-30 02:30:43', '2020-01-30 02:30:43', NULL, NULL),
(381, NULL, '2018-039', 'Silvestre, Mark Brenn Morla', 1, 13, 4, '2019-12-19', '2019-12-19 08:20:07', NULL, '0.00', '2019-12-19 12:00:00', '2019-12-19 13:00:00', '2019-12-19 08:20:07', '2019-12-19 18:20:07', '1.00', '0.00', '0.00', '0.00', NULL, NULL, '0.00', NULL, NULL, '0.00', '0.00', 'reg', 0, 1, 1, 0, NULL, 0, 'WD', 'No Time Out', 'MANUAL', 'INPROCESS', 'Admin', NULL, 0, '2020-01-30 02:30:43', '2020-01-30 02:30:43', NULL, NULL),
(382, NULL, '2018-039', 'Silvestre, Mark Brenn Morla', 1, 13, 4, '2019-12-20', '2019-12-20 08:10:56', NULL, '0.00', '2019-12-20 12:00:00', '2019-12-20 13:00:00', '2019-12-20 08:10:56', '2019-12-20 18:10:56', '1.00', '0.00', '0.00', '0.00', NULL, NULL, '0.00', NULL, NULL, '0.00', '0.00', 'reg', 0, 1, 1, 0, NULL, 0, 'WD', 'No Time Out', 'MANUAL', 'INPROCESS', 'Admin', NULL, 0, '2020-01-30 02:30:43', '2020-01-30 02:30:43', NULL, NULL),
(383, NULL, '2018-039', 'Silvestre, Mark Brenn Morla', 1, 13, 4, '2019-12-21', NULL, NULL, '0.00', NULL, NULL, NULL, NULL, '0.00', '0.00', '0.00', '0.00', NULL, NULL, '0.00', NULL, NULL, '0.00', '0.00', 'rd_reg', 0, 1, 1, 0, NULL, 0, 'WD', 'Restday', 'MANUAL', 'INPROCESS', 'Admin', NULL, 0, '2020-01-30 02:30:43', '2020-01-30 02:30:43', NULL, NULL),
(384, NULL, '2018-039', 'Silvestre, Mark Brenn Morla', 1, 13, 4, '2019-12-22', NULL, NULL, '0.00', NULL, NULL, NULL, NULL, '0.00', '0.00', '0.00', '0.00', NULL, NULL, '0.00', NULL, NULL, '0.00', '0.00', 'rd_reg', 0, 1, 1, 0, NULL, 0, 'WD', 'Restday', 'MANUAL', 'INPROCESS', 'Admin', NULL, 0, '2020-01-30 02:30:43', '2020-01-30 02:30:43', NULL, NULL),
(385, NULL, '2018-039', 'Silvestre, Mark Brenn Morla', 1, 13, 4, '2019-12-23', '2019-12-23 08:56:03', '2019-12-23 18:42:03', '9.77', '2019-12-23 12:00:00', '2019-12-23 13:00:00', '2019-12-23 08:56:03', '2019-12-23 18:56:03', '1.00', '0.00', '0.00', '13.80', NULL, NULL, '0.00', NULL, NULL, '0.00', '0.00', 'reg', 0, 1, 1, 0, NULL, 0, 'WD', 'Present', 'MANUAL', 'INPROCESS', 'Admin', NULL, 0, '2020-01-30 02:30:43', '2020-01-30 02:30:43', NULL, NULL),
(386, NULL, '2018-039', 'Silvestre, Mark Brenn Morla', 1, 13, 4, '2019-12-24', NULL, NULL, '0.00', '2019-12-24 12:00:00', '2019-12-24 13:00:00', NULL, NULL, '1.00', '0.00', '0.00', '0.00', NULL, NULL, '0.00', NULL, NULL, '0.00', '0.00', 'spcl_nw', 0, 1, 1, 0, NULL, 0, 'WD', 'Additional Special Day', 'MANUAL', 'INPROCESS', 'Admin', NULL, 0, '2020-01-30 02:30:43', '2020-01-30 02:30:43', NULL, NULL),
(387, NULL, '2018-039', 'Silvestre, Mark Brenn Morla', 1, 13, 4, '2019-12-25', NULL, NULL, '0.00', '2019-12-25 12:00:00', '2019-12-25 13:00:00', NULL, NULL, '1.00', '0.00', '0.00', '0.00', NULL, NULL, '0.00', NULL, NULL, '0.00', '0.00', 'legal', 0, 1, 1, 0, NULL, 0, 'WD', 'Christmas Day', 'MANUAL', 'INPROCESS', 'Admin', NULL, 0, '2020-01-30 02:30:43', '2020-01-30 02:30:43', NULL, NULL),
(388, NULL, '2018-039', 'Silvestre, Mark Brenn Morla', 1, 13, 4, '2019-12-26', '2019-12-26 08:54:16', '2019-12-26 18:41:31', '9.79', '2019-12-26 12:00:00', '2019-12-26 13:00:00', '2019-12-26 08:54:16', '2019-12-26 18:54:16', '1.00', '0.00', '0.00', '12.60', NULL, NULL, '0.00', NULL, NULL, '0.00', '0.00', 'reg', 0, 1, 1, 0, NULL, 0, 'WD', 'Present', 'MANUAL', 'INPROCESS', 'Admin', NULL, 0, '2020-01-30 02:30:44', '2020-01-30 02:30:44', NULL, NULL),
(389, NULL, '2018-039', 'Silvestre, Mark Brenn Morla', 1, 13, 4, '2019-12-27', '2019-12-27 11:45:51', '2019-12-27 18:37:27', '6.86', '2019-12-27 12:00:00', '2019-12-27 13:00:00', '2019-12-27 11:45:51', '2019-12-27 21:45:51', '1.00', '0.00', '0.00', '188.40', NULL, NULL, '0.00', NULL, NULL, '0.00', '0.00', 'reg', 0, 1, 1, 0, NULL, 0, 'WD', 'Present', 'MANUAL', 'INPROCESS', 'Admin', NULL, 0, '2020-01-30 02:30:44', '2020-01-30 02:30:44', NULL, NULL),
(390, NULL, '2018-039', 'Silvestre, Mark Brenn Morla', 1, 13, 4, '2019-12-28', NULL, NULL, '0.00', NULL, NULL, NULL, NULL, '0.00', '0.00', '0.00', '0.00', NULL, NULL, '0.00', NULL, NULL, '0.00', '0.00', 'rd_reg', 0, 1, 1, 0, NULL, 0, 'WD', 'Restday', 'MANUAL', 'INPROCESS', 'Admin', NULL, 0, '2020-01-30 02:30:44', '2020-01-30 02:30:44', NULL, NULL),
(391, NULL, '2018-039', 'Silvestre, Mark Brenn Morla', 1, 13, 4, '2019-12-29', NULL, NULL, '0.00', NULL, NULL, NULL, NULL, '0.00', '0.00', '0.00', '0.00', NULL, NULL, '0.00', NULL, NULL, '0.00', '0.00', 'rd_reg', 0, 1, 1, 0, NULL, 0, 'WD', 'Restday', 'MANUAL', 'INPROCESS', 'Admin', NULL, 0, '2020-01-30 02:30:44', '2020-01-30 02:30:44', NULL, NULL),
(392, NULL, '2018-039', 'Silvestre, Mark Brenn Morla', 1, 13, 4, '2019-12-30', NULL, NULL, '0.00', '2019-12-30 12:00:00', '2019-12-30 13:00:00', NULL, NULL, '1.00', '0.00', '0.00', '0.00', NULL, NULL, '0.00', NULL, NULL, '0.00', '0.00', 'legal', 0, 1, 1, 0, NULL, 0, 'WD', 'Rizal Day', 'MANUAL', 'INPROCESS', 'Admin', NULL, 0, '2020-01-30 02:30:44', '2020-01-30 02:30:44', NULL, NULL),
(393, NULL, '2018-039', 'Silvestre, Mark Brenn Morla', 1, 13, 4, '2019-12-31', NULL, NULL, '0.00', '2019-12-31 12:00:00', '2019-12-31 13:00:00', NULL, NULL, '1.00', '0.00', '0.00', '0.00', NULL, NULL, '0.00', NULL, NULL, '0.00', '0.00', 'spcl_nw', 0, 1, 1, 0, NULL, 0, 'WD', 'Last day of the Year', 'MANUAL', 'INPROCESS', 'Admin', NULL, 0, '2020-01-30 02:30:44', '2020-01-30 02:30:44', NULL, NULL),
(394, NULL, '2015-040', 'Uson, Rachelle Hyacinth Cruz', 1, 14, 10, '2019-12-01', '2019-12-01 23:19:13', NULL, '0.00', NULL, NULL, NULL, NULL, '0.00', '0.00', '0.00', '0.00', NULL, NULL, '0.00', NULL, NULL, '0.00', '0.00', 'rd_reg', 0, 1, 1, 0, NULL, 0, 'WD', 'Restday', 'MANUAL', 'INPROCESS', 'Admin', NULL, 0, '2020-01-30 02:30:44', '2020-01-30 02:30:44', NULL, NULL),
(395, NULL, '2015-040', 'Uson, Rachelle Hyacinth Cruz', 1, 14, 10, '2019-12-02', '2019-12-02 07:19:13', '2019-12-02 18:32:53', '11.23', '2019-12-02 12:00:00', '2019-12-02 13:00:00', '2019-12-02 08:30:00', '2019-12-02 18:30:00', '1.00', '0.00', '0.00', '0.00', NULL, NULL, '0.00', NULL, NULL, '0.00', '0.00', 'reg', 0, 1, 1, 0, NULL, 0, 'WD', 'Present', 'MANUAL', 'INPROCESS', 'Admin', NULL, 0, '2020-01-30 02:30:44', '2020-01-30 02:30:44', NULL, NULL),
(396, NULL, '2015-040', 'Uson, Rachelle Hyacinth Cruz', 1, 14, 10, '2019-12-03', NULL, NULL, '0.00', '2019-12-03 12:00:00', '2019-12-03 13:00:00', '2019-12-03 08:30:00', '2019-12-03 18:30:00', '1.00', '0.00', '0.00', '0.00', NULL, NULL, '0.00', NULL, NULL, '0.00', '0.00', 'reg', 0, 1, 1, 0, NULL, 0, 'WD', 'Absent', 'MANUAL', 'INPROCESS', 'Admin', NULL, 0, '2020-01-30 02:30:44', '2020-01-30 02:30:44', NULL, NULL),
(397, NULL, '2015-040', 'Uson, Rachelle Hyacinth Cruz', 1, 14, 10, '2019-12-04', '2019-12-04 06:59:05', '2019-12-04 18:37:36', '11.64', '2019-12-04 12:00:00', '2019-12-04 13:00:00', '2019-12-04 08:30:00', '2019-12-04 18:30:00', '1.00', '0.00', '0.00', '0.00', NULL, NULL, '1.00', NULL, NULL, '0.00', '0.00', 'reg', 0, 1, 1, 0, NULL, 0, 'WD', 'Present', 'MANUAL', 'INPROCESS', 'Admin', NULL, 0, '2020-01-30 02:30:44', '2020-01-30 02:30:44', NULL, NULL),
(398, NULL, '2015-040', 'Uson, Rachelle Hyacinth Cruz', 1, 14, 10, '2019-12-05', '2019-12-05 08:57:16', '2019-12-05 18:38:53', '9.69', '2019-12-05 12:00:00', '2019-12-05 13:00:00', '2019-12-05 08:30:00', '2019-12-05 18:30:00', '1.00', '0.00', '27.00', '0.00', NULL, NULL, '0.00', NULL, NULL, '0.00', '0.00', 'reg', 0, 1, 1, 0, NULL, 0, 'WD', 'Present', 'MANUAL', 'INPROCESS', 'Admin', NULL, 0, '2020-01-30 02:30:44', '2020-01-30 02:30:44', NULL, NULL),
(399, NULL, '2015-040', 'Uson, Rachelle Hyacinth Cruz', 1, 14, 10, '2019-12-06', '2019-12-06 07:53:41', '2019-12-06 19:59:27', '12.10', '2019-12-06 12:00:00', '2019-12-06 13:00:00', '2019-12-06 08:30:00', '2019-12-06 18:30:00', '1.00', '0.00', '0.00', '0.00', NULL, NULL, '0.00', NULL, NULL, '0.00', '0.00', 'reg', 0, 1, 1, 0, NULL, 0, 'WD', 'Present', 'MANUAL', 'INPROCESS', 'Admin', NULL, 0, '2020-01-30 02:30:44', '2020-01-30 02:30:44', NULL, NULL),
(400, NULL, '2015-040', 'Uson, Rachelle Hyacinth Cruz', 1, 14, 10, '2019-12-07', NULL, NULL, '0.00', NULL, NULL, NULL, NULL, '0.00', '0.00', '0.00', '0.00', NULL, NULL, '0.00', NULL, NULL, '0.00', '0.00', 'rd_reg', 0, 1, 1, 0, NULL, 0, 'WD', 'Restday', 'MANUAL', 'INPROCESS', 'Admin', NULL, 0, '2020-01-30 02:30:44', '2020-01-30 02:30:44', NULL, NULL),
(401, NULL, '2015-040', 'Uson, Rachelle Hyacinth Cruz', 1, 14, 10, '2019-12-08', NULL, NULL, '0.00', NULL, NULL, NULL, NULL, '0.00', '0.00', '0.00', '0.00', NULL, NULL, '0.00', NULL, NULL, '0.00', '0.00', 'spcl_nw', 0, 1, 1, 0, NULL, 0, 'WD', 'Feast of the Immaculate Conceptions Of Mary', 'MANUAL', 'INPROCESS', 'Admin', NULL, 0, '2020-01-30 02:30:44', '2020-01-30 02:30:44', NULL, NULL),
(402, NULL, '2015-040', 'Uson, Rachelle Hyacinth Cruz', 1, 14, 10, '2019-12-09', '2019-12-09 07:09:24', '2019-12-09 19:30:07', '12.35', '2019-12-09 12:00:00', '2019-12-09 13:00:00', '2019-12-09 08:30:00', '2019-12-09 18:30:00', '1.00', '0.00', '0.00', '0.00', NULL, NULL, '0.00', NULL, NULL, '0.00', '0.00', 'reg', 0, 1, 1, 0, NULL, 0, 'WD', 'Present', 'MANUAL', 'INPROCESS', 'Admin', NULL, 0, '2020-01-30 02:30:45', '2020-01-30 02:30:45', NULL, NULL),
(403, NULL, '2015-040', 'Uson, Rachelle Hyacinth Cruz', 1, 14, 10, '2019-12-10', '2019-12-10 07:40:57', '2019-12-10 18:42:20', '11.02', '2019-12-10 12:00:00', '2019-12-10 13:00:00', '2019-12-10 08:30:00', '2019-12-10 18:30:00', '1.00', '0.00', '0.00', '0.00', NULL, NULL, '0.00', NULL, NULL, '0.00', '0.00', 'reg', 0, 1, 1, 0, NULL, 0, 'WD', 'Present', 'MANUAL', 'INPROCESS', 'Admin', NULL, 0, '2020-01-30 02:30:45', '2020-01-30 02:30:45', NULL, NULL),
(404, NULL, '2015-040', 'Uson, Rachelle Hyacinth Cruz', 1, 14, 10, '2019-12-11', '2019-12-11 07:40:19', NULL, '0.00', '2019-12-11 12:00:00', '2019-12-11 13:00:00', '2019-12-11 08:30:00', '2019-12-11 18:30:00', '1.00', '0.00', '0.00', '0.00', NULL, NULL, '0.00', NULL, NULL, '0.00', '0.00', 'reg', 0, 1, 1, 0, NULL, 0, 'WD', 'No Time Out', 'MANUAL', 'INPROCESS', 'Admin', NULL, 0, '2020-01-30 02:30:45', '2020-01-30 02:30:45', NULL, NULL),
(405, NULL, '2015-040', 'Uson, Rachelle Hyacinth Cruz', 1, 14, 10, '2019-12-12', '2019-12-12 07:14:00', '2019-12-12 19:07:01', '11.88', '2019-12-12 12:00:00', '2019-12-12 13:00:00', '2019-12-12 08:30:00', '2019-12-12 18:30:00', '1.00', '0.00', '0.00', '0.00', NULL, NULL, '0.00', NULL, NULL, '0.00', '0.00', 'reg', 0, 1, 1, 0, NULL, 0, 'WD', 'Present', 'MANUAL', 'INPROCESS', 'Admin', NULL, 0, '2020-01-30 02:30:45', '2020-01-30 02:30:45', NULL, NULL),
(406, NULL, '2015-040', 'Uson, Rachelle Hyacinth Cruz', 1, 14, 10, '2019-12-13', '2019-12-13 07:47:47', '2019-12-13 18:43:31', '10.93', '2019-12-13 12:00:00', '2019-12-13 13:00:00', '2019-12-13 08:30:00', '2019-12-13 18:30:00', '1.00', '0.00', '0.00', '0.00', NULL, NULL, '0.00', NULL, NULL, '0.00', '0.00', 'reg', 0, 1, 1, 0, NULL, 0, 'WD', 'Present', 'MANUAL', 'INPROCESS', 'Admin', NULL, 0, '2020-01-30 02:30:45', '2020-01-30 02:30:45', NULL, NULL),
(407, NULL, '2015-040', 'Uson, Rachelle Hyacinth Cruz', 1, 14, 10, '2019-12-14', NULL, NULL, '0.00', NULL, NULL, NULL, NULL, '0.00', '0.00', '0.00', '0.00', NULL, NULL, '0.00', NULL, NULL, '0.00', '0.00', 'rd_reg', 0, 1, 1, 0, NULL, 0, 'WD', 'Restday', 'MANUAL', 'INPROCESS', 'Admin', NULL, 0, '2020-01-30 02:30:45', '2020-01-30 02:30:45', NULL, NULL),
(408, NULL, '2015-040', 'Uson, Rachelle Hyacinth Cruz', 1, 14, 10, '2019-12-15', NULL, NULL, '0.00', NULL, NULL, NULL, NULL, '0.00', '0.00', '0.00', '0.00', NULL, NULL, '0.00', NULL, NULL, '0.00', '0.00', 'rd_reg', 0, 1, 1, 0, NULL, 0, 'WD', 'Restday', 'MANUAL', 'INPROCESS', 'Admin', NULL, 0, '2020-01-30 02:30:45', '2020-01-30 02:30:45', NULL, NULL),
(409, NULL, '2015-040', 'Uson, Rachelle Hyacinth Cruz', 1, 14, 10, '2019-12-16', '2019-12-16 08:37:11', NULL, '0.00', '2019-12-16 12:00:00', '2019-12-16 13:00:00', '2019-12-16 08:30:00', '2019-12-16 18:30:00', '1.00', '0.00', '0.00', '0.00', NULL, NULL, '0.00', NULL, NULL, '0.00', '0.00', 'reg', 0, 1, 1, 0, NULL, 0, 'WD', 'No Time Out', 'MANUAL', 'INPROCESS', 'Admin', NULL, 0, '2020-01-30 02:30:45', '2020-01-30 02:30:45', NULL, NULL),
(410, NULL, '2015-040', 'Uson, Rachelle Hyacinth Cruz', 1, 14, 10, '2019-12-17', '2019-12-17 07:28:43', '2019-12-17 19:22:18', '11.89', '2019-12-17 12:00:00', '2019-12-17 13:00:00', '2019-12-17 08:30:00', '2019-12-17 18:30:00', '1.00', '0.00', '0.00', '0.00', NULL, NULL, '0.00', NULL, NULL, '0.00', '0.00', 'reg', 0, 1, 1, 0, NULL, 0, 'WD', 'Present', 'MANUAL', 'INPROCESS', 'Admin', NULL, 0, '2020-01-30 02:30:45', '2020-01-30 02:30:45', NULL, NULL),
(411, NULL, '2015-040', 'Uson, Rachelle Hyacinth Cruz', 1, 14, 10, '2019-12-18', NULL, NULL, '0.00', '2019-12-18 12:00:00', '2019-12-18 13:00:00', '2019-12-18 08:30:00', '2019-12-18 18:30:00', '1.00', '0.00', '0.00', '0.00', NULL, NULL, '0.00', NULL, NULL, '0.00', '0.00', 'reg', 0, 1, 1, 0, NULL, 0, 'WD', 'Absent', 'MANUAL', 'INPROCESS', 'Admin', NULL, 0, '2020-01-30 02:30:45', '2020-01-30 02:30:45', NULL, NULL),
(412, NULL, '2015-040', 'Uson, Rachelle Hyacinth Cruz', 1, 14, 10, '2019-12-19', '2019-12-19 07:59:47', '2019-12-19 19:26:07', '11.44', '2019-12-19 12:00:00', '2019-12-19 13:00:00', '2019-12-19 08:30:00', '2019-12-19 18:30:00', '1.00', '0.00', '0.00', '0.00', NULL, NULL, '0.00', NULL, NULL, '0.00', '0.00', 'reg', 0, 1, 1, 0, NULL, 0, 'WD', 'Present', 'MANUAL', 'INPROCESS', 'Admin', NULL, 0, '2020-01-30 02:30:46', '2020-01-30 02:30:46', NULL, NULL),
(413, NULL, '2015-040', 'Uson, Rachelle Hyacinth Cruz', 1, 14, 10, '2019-12-20', '2019-12-20 07:40:39', NULL, '0.00', '2019-12-20 12:00:00', '2019-12-20 13:00:00', '2019-12-20 08:30:00', '2019-12-20 18:30:00', '1.00', '0.00', '0.00', '0.00', NULL, NULL, '0.00', NULL, NULL, '0.00', '0.00', 'reg', 0, 1, 1, 0, NULL, 0, 'WD', 'No Time Out', 'MANUAL', 'INPROCESS', 'Admin', NULL, 0, '2020-01-30 02:30:46', '2020-01-30 02:30:46', NULL, NULL),
(414, NULL, '2015-040', 'Uson, Rachelle Hyacinth Cruz', 1, 14, 10, '2019-12-21', NULL, NULL, '0.00', NULL, NULL, NULL, NULL, '0.00', '0.00', '0.00', '0.00', NULL, NULL, '0.00', NULL, NULL, '0.00', '0.00', 'rd_reg', 0, 1, 1, 0, NULL, 0, 'WD', 'Restday', 'MANUAL', 'INPROCESS', 'Admin', NULL, 0, '2020-01-30 02:30:46', '2020-01-30 02:30:46', NULL, NULL),
(415, NULL, '2015-040', 'Uson, Rachelle Hyacinth Cruz', 1, 14, 10, '2019-12-22', NULL, NULL, '0.00', NULL, NULL, NULL, NULL, '0.00', '0.00', '0.00', '0.00', NULL, NULL, '0.00', NULL, NULL, '0.00', '0.00', 'rd_reg', 0, 1, 1, 0, NULL, 0, 'WD', 'Restday', 'MANUAL', 'INPROCESS', 'Admin', NULL, 0, '2020-01-30 02:30:46', '2020-01-30 02:30:46', NULL, NULL),
(416, NULL, '2015-040', 'Uson, Rachelle Hyacinth Cruz', 1, 14, 10, '2019-12-23', NULL, NULL, '0.00', '2019-12-23 12:00:00', '2019-12-23 13:00:00', '2019-12-23 08:30:00', '2019-12-23 18:30:00', '1.00', '0.00', '0.00', '0.00', NULL, NULL, '0.00', NULL, NULL, '0.00', '0.00', 'reg', 0, 1, 1, 0, NULL, 0, 'WD', 'Absent', 'MANUAL', 'INPROCESS', 'Admin', NULL, 0, '2020-01-30 02:30:46', '2020-01-30 02:30:46', NULL, NULL),
(417, NULL, '2015-040', 'Uson, Rachelle Hyacinth Cruz', 1, 14, 10, '2019-12-24', NULL, NULL, '0.00', '2019-12-24 12:00:00', '2019-12-24 13:00:00', '2019-12-24 08:30:00', '2019-12-24 18:30:00', '1.00', '0.00', '0.00', '0.00', NULL, NULL, '0.00', NULL, NULL, '0.00', '0.00', 'spcl_nw', 0, 1, 1, 0, NULL, 0, 'WD', 'Additional Special Day', 'MANUAL', 'INPROCESS', 'Admin', NULL, 0, '2020-01-30 02:30:46', '2020-01-30 02:30:46', NULL, NULL),
(418, NULL, '2015-040', 'Uson, Rachelle Hyacinth Cruz', 1, 14, 10, '2019-12-25', NULL, NULL, '0.00', '2019-12-25 12:00:00', '2019-12-25 13:00:00', '2019-12-25 08:30:00', '2019-12-25 18:30:00', '1.00', '0.00', '0.00', '0.00', NULL, NULL, '0.00', NULL, NULL, '0.00', '0.00', 'legal', 0, 1, 1, 0, NULL, 0, 'WD', 'Christmas Day', 'MANUAL', 'INPROCESS', 'Admin', NULL, 0, '2020-01-30 02:30:46', '2020-01-30 02:30:46', NULL, NULL),
(419, NULL, '2015-040', 'Uson, Rachelle Hyacinth Cruz', 1, 14, 10, '2019-12-26', '2019-12-26 07:52:00', '2019-12-26 19:31:10', '11.65', '2019-12-26 12:00:00', '2019-12-26 13:00:00', '2019-12-26 08:30:00', '2019-12-26 18:30:00', '1.00', '0.00', '0.00', '0.00', NULL, NULL, '0.00', NULL, NULL, '0.00', '0.00', 'reg', 0, 1, 1, 0, NULL, 0, 'WD', 'Present', 'MANUAL', 'INPROCESS', 'Admin', NULL, 0, '2020-01-30 02:30:46', '2020-01-30 02:30:46', NULL, NULL),
(420, NULL, '2015-040', 'Uson, Rachelle Hyacinth Cruz', 1, 14, 10, '2019-12-27', '2019-12-27 07:57:45', NULL, '0.00', '2019-12-27 12:00:00', '2019-12-27 13:00:00', '2019-12-27 08:30:00', '2019-12-27 18:30:00', '1.00', '0.00', '0.00', '0.00', NULL, NULL, '0.00', NULL, NULL, '0.00', '0.00', 'reg', 0, 1, 1, 0, NULL, 0, 'WD', 'No Time Out', 'MANUAL', 'INPROCESS', 'Admin', NULL, 0, '2020-01-30 02:30:46', '2020-01-30 02:30:46', NULL, NULL),
(421, NULL, '2015-040', 'Uson, Rachelle Hyacinth Cruz', 1, 14, 10, '2019-12-28', NULL, NULL, '0.00', NULL, NULL, NULL, NULL, '0.00', '0.00', '0.00', '0.00', NULL, NULL, '0.00', NULL, NULL, '0.00', '0.00', 'rd_reg', 0, 1, 1, 0, NULL, 0, 'WD', 'Restday', 'MANUAL', 'INPROCESS', 'Admin', NULL, 0, '2020-01-30 02:30:46', '2020-01-30 02:30:46', NULL, NULL),
(422, NULL, '2015-040', 'Uson, Rachelle Hyacinth Cruz', 1, 14, 10, '2019-12-29', NULL, NULL, '0.00', NULL, NULL, NULL, NULL, '0.00', '0.00', '0.00', '0.00', NULL, NULL, '0.00', NULL, NULL, '0.00', '0.00', 'rd_reg', 0, 1, 1, 0, NULL, 0, 'WD', 'Restday', 'MANUAL', 'INPROCESS', 'Admin', NULL, 0, '2020-01-30 02:30:46', '2020-01-30 02:30:46', NULL, NULL),
(423, NULL, '2015-040', 'Uson, Rachelle Hyacinth Cruz', 1, 14, 10, '2019-12-30', NULL, NULL, '0.00', '2019-12-30 12:00:00', '2019-12-30 13:00:00', '2019-12-30 08:30:00', '2019-12-30 18:30:00', '1.00', '0.00', '0.00', '0.00', NULL, NULL, '0.00', NULL, NULL, '0.00', '0.00', 'legal', 0, 1, 1, 0, NULL, 0, 'WD', 'Rizal Day', 'MANUAL', 'INPROCESS', 'Admin', NULL, 0, '2020-01-30 02:30:46', '2020-01-30 02:30:46', NULL, NULL),
(424, NULL, '2015-040', 'Uson, Rachelle Hyacinth Cruz', 1, 14, 10, '2019-12-31', NULL, NULL, '0.00', '2019-12-31 12:00:00', '2019-12-31 13:00:00', '2019-12-31 08:30:00', '2019-12-31 18:30:00', '1.00', '0.00', '0.00', '0.00', NULL, NULL, '0.00', NULL, NULL, '0.00', '0.00', 'spcl_nw', 0, 1, 1, 0, NULL, 0, 'WD', 'Last day of the Year', 'MANUAL', 'INPROCESS', 'Admin', NULL, 0, '2020-01-30 02:30:46', '2020-01-30 02:30:46', NULL, NULL),
(425, NULL, '2018-085', 'ValeÃ±a Jr, Daniel  Vallar', 1, 13, 13, '2019-12-01', NULL, NULL, '0.00', NULL, NULL, NULL, NULL, '0.00', '0.00', '0.00', '0.00', NULL, NULL, '0.00', NULL, NULL, '0.00', '0.00', 'rd_reg', 0, 1, 1, 0, NULL, 0, 'WD', 'Restday', 'MANUAL', 'INPROCESS', 'Admin', NULL, 0, '2020-01-30 02:30:47', '2020-01-30 02:30:47', NULL, NULL),
(426, NULL, '2018-085', 'ValeÃ±a Jr, Daniel  Vallar', 1, 13, 13, '2019-12-02', NULL, NULL, '0.00', NULL, NULL, NULL, NULL, '0.00', '0.00', '0.00', '0.00', NULL, NULL, '0.00', NULL, NULL, '0.00', '0.00', 'rd_reg', 0, 1, 1, 0, NULL, 0, 'WD', 'Restday', 'MANUAL', 'INPROCESS', 'Admin', NULL, 0, '2020-01-30 02:30:47', '2020-01-30 02:30:47', NULL, NULL),
(427, NULL, '2018-085', 'ValeÃ±a Jr, Daniel  Vallar', 1, 13, 13, '2019-12-03', NULL, NULL, '0.00', '2019-12-03 12:00:00', '2019-12-03 13:00:00', NULL, NULL, '1.00', '0.00', '0.00', '0.00', NULL, NULL, '0.00', NULL, NULL, '0.00', '0.00', 'reg', 0, 1, 1, 0, NULL, 0, 'WD', 'Absent', 'MANUAL', 'INPROCESS', 'Admin', NULL, 0, '2020-01-30 02:30:47', '2020-01-30 02:30:47', NULL, NULL),
(428, NULL, '2018-085', 'ValeÃ±a Jr, Daniel  Vallar', 1, 13, 13, '2019-12-04', NULL, NULL, '0.00', '2019-12-04 12:00:00', '2019-12-04 13:00:00', NULL, NULL, '1.00', '0.00', '0.00', '0.00', NULL, NULL, '0.00', NULL, NULL, '0.00', '0.00', 'reg', 0, 1, 1, 0, NULL, 0, 'WD', 'Absent', 'MANUAL', 'INPROCESS', 'Admin', NULL, 0, '2020-01-30 02:30:47', '2020-01-30 02:30:47', NULL, NULL),
(429, NULL, '2018-085', 'ValeÃ±a Jr, Daniel  Vallar', 1, 13, 13, '2019-12-05', NULL, NULL, '0.00', '2019-12-05 12:00:00', '2019-12-05 13:00:00', NULL, NULL, '1.00', '0.00', '0.00', '0.00', NULL, NULL, '0.00', NULL, NULL, '0.00', '0.00', 'reg', 0, 1, 1, 0, NULL, 0, 'WD', 'Absent', 'MANUAL', 'INPROCESS', 'Admin', NULL, 0, '2020-01-30 02:30:47', '2020-01-30 02:30:47', NULL, NULL),
(430, NULL, '2018-085', 'ValeÃ±a Jr, Daniel  Vallar', 1, 13, 13, '2019-12-06', NULL, NULL, '0.00', '2019-12-06 12:00:00', '2019-12-06 13:00:00', NULL, NULL, '1.00', '0.00', '0.00', '0.00', NULL, NULL, '0.00', NULL, NULL, '0.00', '0.00', 'reg', 0, 1, 1, 0, NULL, 0, 'WD', 'Absent', 'MANUAL', 'INPROCESS', 'Admin', NULL, 0, '2020-01-30 02:30:47', '2020-01-30 02:30:47', NULL, NULL),
(431, NULL, '2018-085', 'ValeÃ±a Jr, Daniel  Vallar', 1, 13, 13, '2019-12-07', NULL, NULL, '0.00', '2019-12-07 12:00:00', '2019-12-07 13:00:00', NULL, NULL, '1.00', '0.00', '0.00', '0.00', NULL, NULL, '0.00', NULL, NULL, '0.00', '0.00', 'reg', 0, 1, 1, 0, NULL, 0, 'WD', 'Absent', 'MANUAL', 'INPROCESS', 'Admin', NULL, 0, '2020-01-30 02:30:47', '2020-01-30 02:30:47', NULL, NULL),
(432, NULL, '2018-085', 'ValeÃ±a Jr, Daniel  Vallar', 1, 13, 13, '2019-12-08', NULL, NULL, '0.00', NULL, NULL, NULL, NULL, '0.00', '0.00', '0.00', '0.00', NULL, NULL, '0.00', NULL, NULL, '0.00', '0.00', 'spcl_nw', 0, 1, 1, 0, NULL, 0, 'WD', 'Feast of the Immaculate Conceptions Of Mary', 'MANUAL', 'INPROCESS', 'Admin', NULL, 0, '2020-01-30 02:30:47', '2020-01-30 02:30:47', NULL, NULL),
(433, NULL, '2018-085', 'ValeÃ±a Jr, Daniel  Vallar', 1, 13, 13, '2019-12-09', NULL, NULL, '0.00', NULL, NULL, NULL, NULL, '0.00', '0.00', '0.00', '0.00', NULL, NULL, '0.00', NULL, NULL, '0.00', '0.00', 'rd_reg', 0, 1, 1, 0, NULL, 0, 'WD', 'Restday', 'MANUAL', 'INPROCESS', 'Admin', NULL, 0, '2020-01-30 02:30:47', '2020-01-30 02:30:47', NULL, NULL),
(434, NULL, '2018-085', 'ValeÃ±a Jr, Daniel  Vallar', 1, 13, 13, '2019-12-10', '2019-12-10 11:32:21', '2019-12-10 11:32:27', '0.00', '2019-12-10 12:00:00', '2019-12-10 13:00:00', '2019-12-10 11:32:21', '2019-12-10 21:32:21', '1.00', '0.00', '0.00', '600.00', NULL, NULL, '0.00', NULL, NULL, '0.00', '0.00', 'reg', 0, 1, 1, 0, NULL, 0, 'WD', 'Present', 'MANUAL', 'INPROCESS', 'Admin', NULL, 0, '2020-01-30 02:30:47', '2020-01-30 02:30:47', NULL, NULL),
(435, NULL, '2018-085', 'ValeÃ±a Jr, Daniel  Vallar', 1, 13, 13, '2019-12-11', '2019-12-11 13:05:02', '2019-12-11 17:56:16', '4.85', '2019-12-11 12:00:00', '2019-12-11 13:00:00', '2019-12-11 13:05:02', '2019-12-11 23:05:02', '1.00', '0.00', '0.00', '309.00', NULL, NULL, '0.00', NULL, NULL, '0.00', '0.00', 'reg', 0, 1, 1, 0, NULL, 0, 'WD', 'Present', 'MANUAL', 'INPROCESS', 'Admin', NULL, 0, '2020-01-30 02:30:47', '2020-01-30 02:30:47', NULL, NULL),
(436, NULL, '2018-085', 'ValeÃ±a Jr, Daniel  Vallar', 1, 13, 13, '2019-12-12', '2019-12-12 08:59:48', '2019-12-12 18:14:55', '9.25', '2019-12-12 12:00:00', '2019-12-12 13:00:00', '2019-12-12 08:59:48', '2019-12-12 18:59:48', '1.00', '0.00', '0.00', '45.00', NULL, NULL, '0.00', NULL, NULL, '0.00', '0.00', 'reg', 0, 1, 1, 0, NULL, 0, 'WD', 'Present', 'MANUAL', 'INPROCESS', 'Admin', NULL, 0, '2020-01-30 02:30:47', '2020-01-30 02:30:47', NULL, NULL),
(437, NULL, '2018-085', 'ValeÃ±a Jr, Daniel  Vallar', 1, 13, 13, '2019-12-13', '2019-12-13 12:04:23', '2019-12-13 15:47:02', '3.71', '2019-12-13 12:00:00', '2019-12-13 13:00:00', '2019-12-13 12:04:23', '2019-12-13 22:04:23', '1.00', '0.00', '0.00', '377.40', NULL, NULL, '0.00', NULL, NULL, '0.00', '0.00', 'reg', 0, 1, 1, 0, NULL, 0, 'WD', 'Present', 'MANUAL', 'INPROCESS', 'Admin', NULL, 0, '2020-01-30 02:30:47', '2020-01-30 02:30:47', NULL, NULL),
(438, NULL, '2018-085', 'ValeÃ±a Jr, Daniel  Vallar', 1, 13, 13, '2019-12-14', NULL, NULL, '0.00', '2019-12-14 12:00:00', '2019-12-14 13:00:00', NULL, NULL, '1.00', '0.00', '0.00', '0.00', NULL, NULL, '0.00', NULL, NULL, '0.00', '0.00', 'reg', 0, 1, 1, 0, NULL, 0, 'WD', 'Absent', 'MANUAL', 'INPROCESS', 'Admin', NULL, 0, '2020-01-30 02:30:48', '2020-01-30 02:30:48', NULL, NULL),
(439, NULL, '2018-085', 'ValeÃ±a Jr, Daniel  Vallar', 1, 13, 13, '2019-12-15', NULL, NULL, '0.00', NULL, NULL, NULL, NULL, '0.00', '0.00', '0.00', '0.00', NULL, NULL, '0.00', NULL, NULL, '0.00', '0.00', 'rd_reg', 0, 1, 1, 0, NULL, 0, 'WD', 'Restday', 'MANUAL', 'INPROCESS', 'Admin', NULL, 0, '2020-01-30 02:30:48', '2020-01-30 02:30:48', NULL, NULL),
(440, NULL, '2018-085', 'ValeÃ±a Jr, Daniel  Vallar', 1, 13, 13, '2019-12-16', NULL, NULL, '0.00', NULL, NULL, NULL, NULL, '0.00', '0.00', '0.00', '0.00', NULL, NULL, '0.00', NULL, NULL, '0.00', '0.00', 'rd_reg', 0, 1, 1, 0, NULL, 0, 'WD', 'Restday', 'MANUAL', 'INPROCESS', 'Admin', NULL, 0, '2020-01-30 02:30:48', '2020-01-30 02:30:48', NULL, NULL),
(441, NULL, '2018-085', 'ValeÃ±a Jr, Daniel  Vallar', 1, 13, 13, '2019-12-17', '2019-12-17 08:55:41', '2019-12-17 17:59:58', '9.07', '2019-12-17 12:00:00', '2019-12-17 13:00:00', '2019-12-17 08:55:41', '2019-12-17 18:55:41', '1.00', '0.00', '0.00', '55.80', NULL, NULL, '0.00', NULL, NULL, '0.00', '0.00', 'reg', 0, 1, 1, 0, NULL, 0, 'WD', 'Present', 'MANUAL', 'INPROCESS', 'Admin', NULL, 0, '2020-01-30 02:30:48', '2020-01-30 02:30:48', NULL, NULL),
(442, NULL, '2018-085', 'ValeÃ±a Jr, Daniel  Vallar', 1, 13, 13, '2019-12-18', '2019-12-18 12:53:09', '2019-12-18 17:56:24', '5.05', '2019-12-18 12:00:00', '2019-12-18 13:00:00', '2019-12-18 12:53:09', '2019-12-18 22:53:09', '1.00', '0.00', '0.00', '297.00', NULL, NULL, '0.00', NULL, NULL, '0.00', '0.00', 'reg', 0, 1, 1, 0, NULL, 0, 'WD', 'Present', 'MANUAL', 'INPROCESS', 'Admin', NULL, 0, '2020-01-30 02:30:48', '2020-01-30 02:30:48', NULL, NULL),
(443, NULL, '2018-085', 'ValeÃ±a Jr, Daniel  Vallar', 1, 13, 13, '2019-12-19', '2019-12-19 11:52:48', '2019-12-19 17:54:02', '6.02', '2019-12-19 12:00:00', '2019-12-19 13:00:00', '2019-12-19 11:52:48', '2019-12-19 21:52:48', '1.00', '0.00', '0.00', '238.80', NULL, NULL, '0.00', NULL, NULL, '0.00', '0.00', 'reg', 0, 1, 1, 0, NULL, 0, 'WD', 'Present', 'MANUAL', 'INPROCESS', 'Admin', NULL, 0, '2020-01-30 02:30:48', '2020-01-30 02:30:48', NULL, NULL),
(444, NULL, '2018-085', 'ValeÃ±a Jr, Daniel  Vallar', 1, 13, 13, '2019-12-20', '2019-12-20 16:52:56', '2019-12-20 20:55:44', '4.05', '2019-12-20 12:00:00', '2019-12-20 13:00:00', '2019-12-20 16:52:56', '2019-12-21 02:52:56', '1.00', '0.00', '0.00', '357.00', NULL, NULL, '0.00', NULL, NULL, '0.00', '0.00', 'reg', 0, 1, 1, 0, NULL, 0, 'WD', 'Present', 'MANUAL', 'INPROCESS', 'Admin', NULL, 0, '2020-01-30 02:30:48', '2020-01-30 02:30:48', NULL, NULL),
(445, NULL, '2018-085', 'ValeÃ±a Jr, Daniel  Vallar', 1, 13, 13, '2019-12-21', '2019-12-21 10:19:13', '2019-12-21 10:58:20', '0.65', '2019-12-21 12:00:00', '2019-12-21 13:00:00', '2019-12-21 10:19:13', '2019-12-21 20:19:13', '1.00', '0.00', '0.00', '561.00', NULL, NULL, '0.00', NULL, NULL, '0.00', '0.00', 'reg', 0, 1, 1, 0, NULL, 0, 'WD', 'Present', 'MANUAL', 'INPROCESS', 'Admin', NULL, 0, '2020-01-30 02:30:48', '2020-01-30 02:30:48', NULL, NULL),
(446, NULL, '2018-085', 'ValeÃ±a Jr, Daniel  Vallar', 1, 13, 13, '2019-12-22', NULL, NULL, '0.00', NULL, NULL, NULL, NULL, '0.00', '0.00', '0.00', '0.00', NULL, NULL, '0.00', NULL, NULL, '0.00', '0.00', 'rd_reg', 0, 1, 1, 0, NULL, 0, 'WD', 'Restday', 'MANUAL', 'INPROCESS', 'Admin', NULL, 0, '2020-01-30 02:30:48', '2020-01-30 02:30:48', NULL, NULL),
(447, NULL, '2018-085', 'ValeÃ±a Jr, Daniel  Vallar', 1, 13, 13, '2019-12-23', NULL, NULL, '0.00', NULL, NULL, NULL, NULL, '0.00', '0.00', '0.00', '0.00', NULL, NULL, '0.00', NULL, NULL, '0.00', '0.00', 'rd_reg', 0, 1, 1, 0, NULL, 0, 'WD', 'Restday', 'MANUAL', 'INPROCESS', 'Admin', NULL, 0, '2020-01-30 02:30:48', '2020-01-30 02:30:48', NULL, NULL),
(448, NULL, '2018-085', 'ValeÃ±a Jr, Daniel  Vallar', 1, 13, 13, '2019-12-24', NULL, NULL, '0.00', '2019-12-24 12:00:00', '2019-12-24 13:00:00', NULL, NULL, '1.00', '0.00', '0.00', '0.00', NULL, NULL, '0.00', NULL, NULL, '0.00', '0.00', 'spcl_nw', 0, 1, 1, 0, NULL, 0, 'WD', 'Additional Special Day', 'MANUAL', 'INPROCESS', 'Admin', NULL, 0, '2020-01-30 02:30:48', '2020-01-30 02:30:48', NULL, NULL),
(449, NULL, '2018-085', 'ValeÃ±a Jr, Daniel  Vallar', 1, 13, 13, '2019-12-25', NULL, NULL, '0.00', '2019-12-25 12:00:00', '2019-12-25 13:00:00', NULL, NULL, '1.00', '0.00', '0.00', '0.00', NULL, NULL, '0.00', NULL, NULL, '0.00', '0.00', 'legal', 0, 1, 1, 0, NULL, 0, 'WD', 'Christmas Day', 'MANUAL', 'INPROCESS', 'Admin', NULL, 0, '2020-01-30 02:30:48', '2020-01-30 02:30:48', NULL, NULL),
(450, NULL, '2018-085', 'ValeÃ±a Jr, Daniel  Vallar', 1, 13, 13, '2019-12-26', '2019-12-26 14:51:02', '2019-12-26 18:31:16', '3.67', '2019-12-26 12:00:00', '2019-12-26 13:00:00', '2019-12-26 14:51:02', '2019-12-27 00:51:02', '1.00', '0.00', '0.00', '379.80', NULL, NULL, '0.00', NULL, NULL, '0.00', '0.00', 'reg', 0, 1, 1, 0, NULL, 0, 'WD', 'Present', 'MANUAL', 'INPROCESS', 'Admin', NULL, 0, '2020-01-30 02:30:48', '2020-01-30 02:30:48', NULL, NULL),
(451, NULL, '2018-085', 'ValeÃ±a Jr, Daniel  Vallar', 1, 13, 13, '2019-12-27', '2019-12-27 11:59:21', '2019-12-27 17:10:43', '5.19', '2019-12-27 12:00:00', '2019-12-27 13:00:00', '2019-12-27 11:59:21', '2019-12-27 21:59:21', '1.00', '0.00', '0.00', '288.60', NULL, NULL, '0.00', NULL, NULL, '0.00', '0.00', 'reg', 0, 1, 1, 0, NULL, 0, 'WD', 'Present', 'MANUAL', 'INPROCESS', 'Admin', NULL, 0, '2020-01-30 02:30:48', '2020-01-30 02:30:48', NULL, NULL),
(452, NULL, '2018-085', 'ValeÃ±a Jr, Daniel  Vallar', 1, 13, 13, '2019-12-28', '2019-12-28 11:36:20', '2019-12-28 21:11:19', '9.58', '2019-12-28 12:00:00', '2019-12-28 13:00:00', '2019-12-28 11:36:20', '2019-12-28 21:36:20', '1.00', '0.00', '0.00', '25.20', NULL, NULL, '0.00', NULL, NULL, '0.00', '0.00', 'reg', 0, 1, 1, 0, NULL, 0, 'WD', 'Present', 'MANUAL', 'INPROCESS', 'Admin', NULL, 0, '2020-01-30 02:30:49', '2020-01-30 02:30:49', NULL, NULL),
(453, NULL, '2018-085', 'ValeÃ±a Jr, Daniel  Vallar', 1, 13, 13, '2019-12-29', NULL, NULL, '0.00', NULL, NULL, NULL, NULL, '0.00', '0.00', '0.00', '0.00', NULL, NULL, '0.00', NULL, NULL, '0.00', '0.00', 'rd_reg', 0, 1, 1, 0, NULL, 0, 'WD', 'Restday', 'MANUAL', 'INPROCESS', 'Admin', NULL, 0, '2020-01-30 02:30:49', '2020-01-30 02:30:49', NULL, NULL),
(454, NULL, '2018-085', 'ValeÃ±a Jr, Daniel  Vallar', 1, 13, 13, '2019-12-30', NULL, NULL, '0.00', NULL, NULL, NULL, NULL, '0.00', '0.00', '0.00', '0.00', NULL, NULL, '0.00', NULL, NULL, '0.00', '0.00', 'legal', 0, 1, 1, 0, NULL, 0, 'WD', 'Rizal Day', 'MANUAL', 'INPROCESS', 'Admin', NULL, 0, '2020-01-30 02:30:49', '2020-01-30 02:30:49', NULL, NULL),
(455, NULL, '2018-085', 'ValeÃ±a Jr, Daniel  Vallar', 1, 13, 13, '2019-12-31', NULL, NULL, '0.00', '2019-12-31 12:00:00', '2019-12-31 13:00:00', NULL, NULL, '1.00', '0.00', '0.00', '0.00', NULL, NULL, '0.00', NULL, NULL, '0.00', '0.00', 'spcl_nw', 0, 1, 1, 0, NULL, 0, 'WD', 'Last day of the Year', 'MANUAL', 'INPROCESS', 'Admin', NULL, 0, '2020-01-30 02:30:49', '2020-01-30 02:30:49', NULL, NULL),
(456, NULL, '2013-341', 'Velasco, Teejay Viloria', 1, 15, 13, '2019-12-01', NULL, NULL, '0.00', NULL, NULL, NULL, NULL, '0.00', '0.00', '0.00', '0.00', NULL, NULL, '0.00', NULL, NULL, '0.00', '0.00', 'rd_reg', 0, 1, 1, 0, NULL, 0, 'WD', 'Restday', 'MANUAL', 'INPROCESS', 'Admin', NULL, 0, '2020-01-30 02:30:49', '2020-01-30 02:30:49', NULL, NULL),
(457, NULL, '2013-341', 'Velasco, Teejay Viloria', 1, 15, 13, '2019-12-02', NULL, NULL, '0.00', NULL, NULL, NULL, NULL, '0.00', '0.00', '0.00', '0.00', NULL, NULL, '0.00', NULL, NULL, '0.00', '0.00', 'rd_reg', 0, 1, 1, 0, NULL, 0, 'WD', 'Restday', 'MANUAL', 'INPROCESS', 'Admin', NULL, 0, '2020-01-30 02:30:50', '2020-01-30 02:30:50', NULL, NULL),
(458, NULL, '2013-341', 'Velasco, Teejay Viloria', 1, 15, 13, '2019-12-03', NULL, NULL, '0.00', '2019-12-03 12:00:00', '2019-12-03 13:00:00', NULL, NULL, '1.00', '0.00', '0.00', '0.00', NULL, NULL, '0.00', NULL, NULL, '0.00', '0.00', 'reg', 0, 1, 1, 0, NULL, 0, 'WD', 'Absent', 'MANUAL', 'INPROCESS', 'Admin', NULL, 0, '2020-01-30 02:30:50', '2020-01-30 02:30:50', NULL, NULL),
(459, NULL, '2013-341', 'Velasco, Teejay Viloria', 1, 15, 13, '2019-12-04', NULL, NULL, '0.00', '2019-12-04 12:00:00', '2019-12-04 13:00:00', NULL, NULL, '1.00', '0.00', '0.00', '0.00', NULL, NULL, '0.00', NULL, NULL, '0.00', '0.00', 'reg', 0, 1, 1, 0, NULL, 0, 'WD', 'Absent', 'MANUAL', 'INPROCESS', 'Admin', NULL, 0, '2020-01-30 02:30:50', '2020-01-30 02:30:50', NULL, NULL),
(460, NULL, '2013-341', 'Velasco, Teejay Viloria', 1, 15, 13, '2019-12-05', NULL, NULL, '0.00', '2019-12-05 12:00:00', '2019-12-05 13:00:00', NULL, NULL, '1.00', '0.00', '0.00', '0.00', NULL, NULL, '0.00', NULL, NULL, '0.00', '0.00', 'reg', 0, 1, 1, 0, NULL, 0, 'WD', 'Absent', 'MANUAL', 'INPROCESS', 'Admin', NULL, 0, '2020-01-30 02:30:50', '2020-01-30 02:30:50', NULL, NULL),
(461, NULL, '2013-341', 'Velasco, Teejay Viloria', 1, 15, 13, '2019-12-06', NULL, NULL, '0.00', '2019-12-06 12:00:00', '2019-12-06 13:00:00', NULL, NULL, '1.00', '0.00', '0.00', '0.00', NULL, NULL, '0.00', NULL, NULL, '0.00', '0.00', 'reg', 0, 1, 1, 0, NULL, 0, 'WD', 'Absent', 'MANUAL', 'INPROCESS', 'Admin', NULL, 0, '2020-01-30 02:30:50', '2020-01-30 02:30:50', NULL, NULL),
(462, NULL, '2013-341', 'Velasco, Teejay Viloria', 1, 15, 13, '2019-12-07', NULL, NULL, '0.00', '2019-12-07 12:00:00', '2019-12-07 13:00:00', NULL, NULL, '1.00', '0.00', '0.00', '0.00', NULL, NULL, '0.00', NULL, NULL, '0.00', '0.00', 'reg', 0, 1, 1, 0, NULL, 0, 'WD', 'Absent', 'MANUAL', 'INPROCESS', 'Admin', NULL, 0, '2020-01-30 02:30:50', '2020-01-30 02:30:50', NULL, NULL),
(463, NULL, '2013-341', 'Velasco, Teejay Viloria', 1, 15, 13, '2019-12-08', NULL, NULL, '0.00', NULL, NULL, NULL, NULL, '0.00', '0.00', '0.00', '0.00', NULL, NULL, '0.00', NULL, NULL, '0.00', '0.00', 'spcl_nw', 0, 1, 1, 0, NULL, 0, 'WD', 'Feast of the Immaculate Conceptions Of Mary', 'MANUAL', 'INPROCESS', 'Admin', NULL, 0, '2020-01-30 02:30:50', '2020-01-30 02:30:50', NULL, NULL),
(464, NULL, '2013-341', 'Velasco, Teejay Viloria', 1, 15, 13, '2019-12-09', NULL, NULL, '0.00', NULL, NULL, NULL, NULL, '0.00', '0.00', '0.00', '0.00', NULL, NULL, '0.00', NULL, NULL, '0.00', '0.00', 'rd_reg', 0, 1, 1, 0, NULL, 0, 'WD', 'Restday', 'MANUAL', 'INPROCESS', 'Admin', NULL, 0, '2020-01-30 02:30:50', '2020-01-30 02:30:50', NULL, NULL),
(465, NULL, '2013-341', 'Velasco, Teejay Viloria', 1, 15, 13, '2019-12-10', '2019-12-10 12:01:16', NULL, '0.00', '2019-12-10 12:00:00', '2019-12-10 13:00:00', '2019-12-10 12:01:16', '2019-12-10 22:01:16', '1.00', '0.00', '0.00', '0.00', NULL, NULL, '0.00', NULL, NULL, '0.00', '0.00', 'reg', 0, 1, 1, 0, NULL, 0, 'WD', 'No Time Out', 'MANUAL', 'INPROCESS', 'Admin', NULL, 0, '2020-01-30 02:30:50', '2020-01-30 02:30:50', NULL, NULL),
(466, NULL, '2013-341', 'Velasco, Teejay Viloria', 1, 15, 13, '2019-12-11', '2019-12-11 11:26:45', '2019-12-11 14:27:59', '3.02', '2019-12-11 12:00:00', '2019-12-11 13:00:00', '2019-12-11 11:26:45', '2019-12-11 21:26:45', '1.00', '0.00', '0.00', '418.80', NULL, NULL, '0.00', NULL, NULL, '0.00', '0.00', 'reg', 0, 1, 1, 0, NULL, 0, 'WD', 'Present', 'MANUAL', 'INPROCESS', 'Admin', NULL, 0, '2020-01-30 02:30:50', '2020-01-30 02:30:50', NULL, NULL),
(467, NULL, '2013-341', 'Velasco, Teejay Viloria', 1, 15, 13, '2019-12-12', '2019-12-12 09:56:20', '2019-12-12 15:10:42', '5.24', '2019-12-12 12:00:00', '2019-12-12 13:00:00', '2019-12-12 09:56:20', '2019-12-12 19:56:20', '1.00', '0.00', '0.00', '285.60', NULL, NULL, '0.00', NULL, NULL, '0.00', '0.00', 'reg', 0, 1, 1, 0, NULL, 0, 'WD', 'Present', 'MANUAL', 'INPROCESS', 'Admin', NULL, 0, '2020-01-30 02:30:51', '2020-01-30 02:30:51', NULL, NULL),
(468, NULL, '2013-341', 'Velasco, Teejay Viloria', 1, 15, 13, '2019-12-13', '2019-12-13 13:11:44', '2019-12-13 15:44:10', '2.54', '2019-12-13 12:00:00', '2019-12-13 13:00:00', '2019-12-13 13:11:44', '2019-12-13 23:11:44', '1.00', '0.00', '0.00', '447.60', NULL, NULL, '0.00', NULL, NULL, '0.00', '0.00', 'reg', 0, 1, 1, 0, NULL, 0, 'WD', 'Present', 'MANUAL', 'INPROCESS', 'Admin', NULL, 0, '2020-01-30 02:30:51', '2020-01-30 02:30:51', NULL, NULL),
(469, NULL, '2013-341', 'Velasco, Teejay Viloria', 1, 15, 13, '2019-12-14', '2019-12-14 17:09:25', NULL, '0.00', '2019-12-14 12:00:00', '2019-12-14 13:00:00', '2019-12-14 17:09:25', '2019-12-15 03:09:25', '1.00', '0.00', '0.00', '0.00', NULL, NULL, '0.00', NULL, NULL, '0.00', '0.00', 'reg', 0, 1, 1, 0, NULL, 0, 'WD', 'No Time Out', 'MANUAL', 'INPROCESS', 'Admin', NULL, 0, '2020-01-30 02:30:51', '2020-01-30 02:30:51', NULL, NULL),
(470, NULL, '2013-341', 'Velasco, Teejay Viloria', 1, 15, 13, '2019-12-15', NULL, NULL, '0.00', NULL, NULL, NULL, NULL, '0.00', '0.00', '0.00', '0.00', NULL, NULL, '0.00', NULL, NULL, '0.00', '0.00', 'rd_reg', 0, 1, 1, 0, NULL, 0, 'WD', 'Restday', 'MANUAL', 'INPROCESS', 'Admin', NULL, 0, '2020-01-30 02:30:51', '2020-01-30 02:30:51', NULL, NULL),
(471, NULL, '2013-341', 'Velasco, Teejay Viloria', 1, 15, 13, '2019-12-16', NULL, NULL, '0.00', NULL, NULL, NULL, NULL, '0.00', '0.00', '0.00', '0.00', NULL, NULL, '0.00', NULL, NULL, '0.00', '0.00', 'rd_reg', 0, 1, 1, 0, NULL, 0, 'WD', 'Restday', 'MANUAL', 'INPROCESS', 'Admin', NULL, 0, '2020-01-30 02:30:51', '2020-01-30 02:30:51', NULL, NULL),
(472, NULL, '2013-341', 'Velasco, Teejay Viloria', 1, 15, 13, '2019-12-17', '2019-12-17 07:56:42', NULL, '0.00', '2019-12-17 12:00:00', '2019-12-17 13:00:00', '2019-12-17 07:56:42', '2019-12-17 17:56:42', '1.00', '0.00', '0.00', '0.00', NULL, NULL, '0.00', NULL, NULL, '0.00', '0.00', 'reg', 0, 1, 1, 0, NULL, 0, 'WD', 'No Time Out', 'MANUAL', 'INPROCESS', 'Admin', NULL, 0, '2020-01-30 02:30:51', '2020-01-30 02:30:51', NULL, NULL),
(473, NULL, '2013-341', 'Velasco, Teejay Viloria', 1, 15, 13, '2019-12-18', '2019-12-18 20:45:39', '2019-12-19 03:25:35', '6.67', '2019-12-18 12:00:00', '2019-12-18 13:00:00', '2019-12-18 20:45:39', '2019-12-19 06:45:39', '1.00', '0.00', '0.00', '199.80', NULL, NULL, '0.00', '2019-12-18 22:00:00', '2019-12-19 03:25:35', '5.43', '0.00', 'reg', 0, 1, 1, 0, NULL, 0, 'WD', 'Present', 'MANUAL', 'INPROCESS', 'Admin', NULL, 0, '2020-01-30 02:30:51', '2020-01-30 02:30:51', NULL, NULL),
(474, NULL, '2013-341', 'Velasco, Teejay Viloria', 1, 15, 13, '2019-12-19', '2019-12-19 13:53:30', '2019-12-19 23:21:28', '9.47', '2019-12-19 12:00:00', '2019-12-19 13:00:00', '2019-12-19 13:53:30', '2019-12-19 23:53:30', '1.00', '0.00', '0.00', '31.80', NULL, NULL, '0.00', '2019-12-19 22:00:00', '2019-12-19 23:21:28', '1.36', '0.00', 'reg', 0, 1, 1, 0, NULL, 0, 'WD', 'Present', 'MANUAL', 'INPROCESS', 'Admin', NULL, 0, '2020-01-30 02:30:51', '2020-01-30 02:30:51', NULL, NULL),
(475, NULL, '2013-341', 'Velasco, Teejay Viloria', 1, 15, 13, '2019-12-20', NULL, NULL, '0.00', '2019-12-20 12:00:00', '2019-12-20 13:00:00', NULL, NULL, '1.00', '0.00', '0.00', '0.00', NULL, NULL, '0.00', NULL, NULL, '0.00', '0.00', 'reg', 0, 1, 1, 0, NULL, 0, 'WD', 'Absent', 'MANUAL', 'INPROCESS', 'Admin', NULL, 0, '2020-01-30 02:30:52', '2020-01-30 02:30:52', NULL, NULL),
(476, NULL, '2013-341', 'Velasco, Teejay Viloria', 1, 15, 13, '2019-12-21', NULL, NULL, '0.00', '2019-12-21 12:00:00', '2019-12-21 13:00:00', NULL, NULL, '1.00', '0.00', '0.00', '0.00', NULL, NULL, '0.00', NULL, NULL, '0.00', '0.00', 'reg', 0, 1, 1, 0, NULL, 0, 'WD', 'Absent', 'MANUAL', 'INPROCESS', 'Admin', NULL, 0, '2020-01-30 02:30:52', '2020-01-30 02:30:52', NULL, NULL),
(477, NULL, '2013-341', 'Velasco, Teejay Viloria', 1, 15, 13, '2019-12-22', NULL, NULL, '0.00', NULL, NULL, NULL, NULL, '0.00', '0.00', '0.00', '0.00', NULL, NULL, '0.00', NULL, NULL, '0.00', '0.00', 'rd_reg', 0, 1, 1, 0, NULL, 0, 'WD', 'Restday', 'MANUAL', 'INPROCESS', 'Admin', NULL, 0, '2020-01-30 02:30:52', '2020-01-30 02:30:52', NULL, NULL),
(478, NULL, '2013-341', 'Velasco, Teejay Viloria', 1, 15, 13, '2019-12-23', NULL, NULL, '0.00', NULL, NULL, NULL, NULL, '0.00', '0.00', '0.00', '0.00', NULL, NULL, '0.00', NULL, NULL, '0.00', '0.00', 'rd_reg', 0, 1, 1, 0, NULL, 0, 'WD', 'Restday', 'MANUAL', 'INPROCESS', 'Admin', NULL, 0, '2020-01-30 02:30:52', '2020-01-30 02:30:52', NULL, NULL),
(479, NULL, '2013-341', 'Velasco, Teejay Viloria', 1, 15, 13, '2019-12-24', NULL, NULL, '0.00', '2019-12-24 12:00:00', '2019-12-24 13:00:00', NULL, NULL, '1.00', '0.00', '0.00', '0.00', NULL, NULL, '0.00', NULL, NULL, '0.00', '0.00', 'spcl_nw', 0, 1, 1, 0, NULL, 0, 'WD', 'Additional Special Day', 'MANUAL', 'INPROCESS', 'Admin', NULL, 0, '2020-01-30 02:30:52', '2020-01-30 02:30:52', NULL, NULL),
(480, NULL, '2013-341', 'Velasco, Teejay Viloria', 1, 15, 13, '2019-12-25', NULL, NULL, '0.00', '2019-12-25 12:00:00', '2019-12-25 13:00:00', NULL, NULL, '1.00', '0.00', '0.00', '0.00', NULL, NULL, '0.00', NULL, NULL, '0.00', '0.00', 'legal', 0, 1, 1, 0, NULL, 0, 'WD', 'Christmas Day', 'MANUAL', 'INPROCESS', 'Admin', NULL, 0, '2020-01-30 02:30:52', '2020-01-30 02:30:52', NULL, NULL),
(481, NULL, '2013-341', 'Velasco, Teejay Viloria', 1, 15, 13, '2019-12-26', '2019-12-26 07:53:12', '2019-12-27 01:02:30', '17.16', '2019-12-26 12:00:00', '2019-12-26 13:00:00', '2019-12-26 07:53:12', '2019-12-26 17:53:12', '1.00', '0.00', '0.00', '0.00', NULL, NULL, '0.00', NULL, NULL, '0.00', '0.00', 'reg', 0, 1, 1, 0, NULL, 0, 'WD', 'Present', 'MANUAL', 'INPROCESS', 'Admin', NULL, 0, '2020-01-30 02:30:52', '2020-01-30 02:30:52', NULL, NULL),
(482, NULL, '2013-341', 'Velasco, Teejay Viloria', 1, 15, 13, '2019-12-27', '2019-12-27 20:56:38', '2019-12-27 22:55:39', '1.98', '2019-12-27 12:00:00', '2019-12-27 13:00:00', '2019-12-27 20:56:38', '2019-12-28 06:56:38', '1.00', '0.00', '0.00', '481.20', NULL, NULL, '0.00', '2019-12-27 22:00:00', '2019-12-27 22:55:39', '0.93', '0.00', 'reg', 0, 1, 1, 0, NULL, 0, 'WD', 'Present', 'MANUAL', 'INPROCESS', 'Admin', NULL, 0, '2020-01-30 02:30:52', '2020-01-30 02:30:52', NULL, NULL),
(483, NULL, '2013-341', 'Velasco, Teejay Viloria', 1, 15, 13, '2019-12-28', NULL, '2019-12-28 13:44:26', '0.00', '2019-12-28 12:00:00', '2019-12-28 13:00:00', NULL, NULL, '1.00', '0.00', '0.00', '0.00', NULL, NULL, '0.00', NULL, NULL, '0.00', '0.00', 'reg', 0, 1, 1, 0, NULL, 0, 'WD', 'No Time In', 'MANUAL', 'INPROCESS', 'Admin', NULL, 0, '2020-01-30 02:30:52', '2020-01-30 02:30:52', NULL, NULL),
(484, NULL, '2013-341', 'Velasco, Teejay Viloria', 1, 15, 13, '2019-12-29', NULL, NULL, '0.00', NULL, NULL, NULL, NULL, '0.00', '0.00', '0.00', '0.00', NULL, NULL, '0.00', NULL, NULL, '0.00', '0.00', 'rd_reg', 0, 1, 1, 0, NULL, 0, 'WD', 'Restday', 'MANUAL', 'INPROCESS', 'Admin', NULL, 0, '2020-01-30 02:30:52', '2020-01-30 02:30:52', NULL, NULL),
(485, NULL, '2013-341', 'Velasco, Teejay Viloria', 1, 15, 13, '2019-12-30', '2019-12-30 21:50:53', '2019-12-30 21:50:59', '0.00', '2019-12-30 12:00:00', '2019-12-30 13:00:00', NULL, NULL, '1.00', '0.00', '0.00', '0.00', NULL, NULL, '0.00', NULL, NULL, '0.00', '0.00', 'legal', 0, 1, 1, 0, NULL, 0, 'WD', 'Rizal Day', 'MANUAL', 'INPROCESS', 'Admin', NULL, 0, '2020-01-30 02:30:53', '2020-01-30 02:30:53', NULL, NULL),
(486, NULL, '2013-341', 'Velasco, Teejay Viloria', 1, 15, 13, '2019-12-31', NULL, NULL, '0.00', '2019-12-31 12:00:00', '2019-12-31 13:00:00', NULL, NULL, '1.00', '0.00', '0.00', '0.00', NULL, NULL, '0.00', NULL, NULL, '0.00', '0.00', 'spcl_nw', 0, 1, 1, 0, NULL, 0, 'WD', 'Last day of the Year', 'MANUAL', 'INPROCESS', 'Admin', NULL, 0, '2020-01-30 02:30:53', '2020-01-30 02:30:53', NULL, NULL);
INSERT INTO `date_and_time_records` (`id`, `register_number`, `company_id`, `employee_name`, `company_ind`, `group_ind`, `sched_template_id`, `sched_date`, `date_time_in`, `date_time_out`, `reg_total_hrs`, `lunch_out`, `lunch_in`, `schedule_shift_in`, `schedule_shift_out`, `lunch_durations_hrs`, `over_break_min`, `late_min`, `undertime_min`, `ot_time_in`, `ot_time_out`, `ot_total_hrs`, `night_diff_in`, `night_diff_out`, `night_diff_total_hrs`, `night_diff_total_ot_hrs`, `day_types`, `work_on_holiday`, `before_holiday`, `after_holiday`, `leaved`, `leave_types`, `leave_wpay`, `half_day`, `remarks`, `insystem`, `payroll_status`, `created_by`, `lu_by`, `deleted`, `created_at`, `updated_at`, `device_id_in`, `device_id_out`) VALUES
(487, NULL, '2006-054', 'Villagracia, Jacelyn Bayanay', 1, 16, 10, '2019-12-01', '2019-12-01 23:51:48', NULL, '0.00', NULL, NULL, NULL, NULL, '0.00', '0.00', '0.00', '0.00', NULL, NULL, '0.00', NULL, NULL, '0.00', '0.00', 'rd_reg', 0, 1, 1, 0, NULL, 0, 'WD', 'Restday', 'MANUAL', 'INPROCESS', 'Admin', NULL, 0, '2020-01-30 02:30:53', '2020-01-30 02:30:53', NULL, NULL),
(488, NULL, '2006-054', 'Villagracia, Jacelyn Bayanay', 1, 16, 10, '2019-12-02', '2019-12-02 07:51:48', '2019-12-02 18:37:14', '10.76', '2019-12-02 12:00:00', '2019-12-02 13:00:00', '2019-12-02 08:30:00', '2019-12-02 18:30:00', '1.00', '0.00', '0.00', '0.00', NULL, NULL, '0.00', NULL, NULL, '0.00', '0.00', 'reg', 0, 1, 1, 0, NULL, 0, 'WD', 'Present', 'MANUAL', 'INPROCESS', 'Admin', NULL, 0, '2020-01-30 02:30:53', '2020-01-30 02:30:53', NULL, NULL),
(489, NULL, '2006-054', 'Villagracia, Jacelyn Bayanay', 1, 16, 10, '2019-12-03', NULL, NULL, '0.00', '2019-12-03 12:00:00', '2019-12-03 13:00:00', '2019-12-03 08:30:00', '2019-12-03 18:30:00', '1.00', '0.00', '0.00', '0.00', NULL, NULL, '0.00', NULL, NULL, '0.00', '0.00', 'reg', 0, 1, 1, 0, NULL, 0, 'WD', 'Absent', 'MANUAL', 'INPROCESS', 'Admin', NULL, 0, '2020-01-30 02:30:53', '2020-01-30 02:30:53', NULL, NULL),
(490, NULL, '2006-054', 'Villagracia, Jacelyn Bayanay', 1, 16, 10, '2019-12-04', '2019-12-04 08:03:05', '2019-12-04 13:37:30', '5.57', '2019-12-04 12:00:00', '2019-12-04 13:00:00', '2019-12-04 08:30:00', '2019-12-04 18:30:00', '1.00', '0.00', '0.00', '292.80', NULL, NULL, '0.00', NULL, NULL, '0.00', '0.00', 'reg', 0, 1, 1, 0, NULL, 0, 'WD', 'Present', 'MANUAL', 'INPROCESS', 'Admin', NULL, 0, '2020-01-30 02:30:53', '2020-01-30 02:30:53', NULL, NULL),
(491, NULL, '2006-054', 'Villagracia, Jacelyn Bayanay', 1, 16, 10, '2019-12-05', '2019-12-05 08:28:01', '2019-12-05 12:23:13', '3.92', '2019-12-05 12:00:00', '2019-12-05 13:00:00', '2019-12-05 08:30:00', '2019-12-05 18:30:00', '1.00', '0.00', '0.00', '366.60', NULL, NULL, '0.00', NULL, NULL, '0.00', '0.00', 'reg', 0, 1, 1, 0, NULL, 0, 'WD', 'Present', 'MANUAL', 'INPROCESS', 'Admin', NULL, 0, '2020-01-30 02:30:53', '2020-01-30 02:30:53', NULL, NULL),
(492, NULL, '2006-054', 'Villagracia, Jacelyn Bayanay', 1, 16, 10, '2019-12-06', '2019-12-06 08:19:04', '2019-12-06 19:21:04', '11.03', '2019-12-06 12:00:00', '2019-12-06 13:00:00', '2019-12-06 08:30:00', '2019-12-06 18:30:00', '1.00', '0.00', '0.00', '0.00', NULL, NULL, '0.00', NULL, NULL, '0.00', '0.00', 'reg', 0, 1, 1, 0, NULL, 0, 'WD', 'Present', 'MANUAL', 'INPROCESS', 'Admin', NULL, 0, '2020-01-30 02:30:54', '2020-01-30 02:30:54', NULL, NULL),
(493, NULL, '2006-054', 'Villagracia, Jacelyn Bayanay', 1, 16, 10, '2019-12-07', NULL, NULL, '0.00', NULL, NULL, NULL, NULL, '0.00', '0.00', '0.00', '0.00', NULL, NULL, '0.00', NULL, NULL, '0.00', '0.00', 'rd_reg', 0, 1, 1, 0, NULL, 0, 'WD', 'Restday', 'MANUAL', 'INPROCESS', 'Admin', NULL, 0, '2020-01-30 02:30:54', '2020-01-30 02:30:54', NULL, NULL),
(494, NULL, '2006-054', 'Villagracia, Jacelyn Bayanay', 1, 16, 10, '2019-12-08', NULL, NULL, '0.00', NULL, NULL, NULL, NULL, '0.00', '0.00', '0.00', '0.00', NULL, NULL, '0.00', NULL, NULL, '0.00', '0.00', 'spcl_nw', 0, 1, 1, 0, NULL, 0, 'WD', 'Feast of the Immaculate Conceptions Of Mary', 'MANUAL', 'INPROCESS', 'Admin', NULL, 0, '2020-01-30 02:30:54', '2020-01-30 02:30:54', NULL, NULL),
(495, NULL, '2006-054', 'Villagracia, Jacelyn Bayanay', 1, 16, 10, '2019-12-09', '2019-12-09 08:14:37', '2019-12-09 19:02:00', '10.79', '2019-12-09 12:00:00', '2019-12-09 13:00:00', '2019-12-09 08:30:00', '2019-12-09 18:30:00', '1.00', '0.00', '0.00', '0.00', NULL, NULL, '0.00', NULL, NULL, '0.00', '0.00', 'reg', 0, 1, 1, 0, NULL, 0, 'WD', 'Present', 'MANUAL', 'INPROCESS', 'Admin', NULL, 0, '2020-01-30 02:30:54', '2020-01-30 02:30:54', NULL, NULL),
(496, NULL, '2006-054', 'Villagracia, Jacelyn Bayanay', 1, 16, 10, '2019-12-10', '2019-12-10 07:16:17', '2019-12-10 13:56:30', '6.67', '2019-12-10 12:00:00', '2019-12-10 13:00:00', '2019-12-10 08:30:00', '2019-12-10 18:30:00', '1.00', '0.00', '0.00', '273.60', NULL, NULL, '0.00', NULL, NULL, '0.00', '0.00', 'reg', 0, 1, 1, 0, NULL, 0, 'WD', 'Present', 'MANUAL', 'INPROCESS', 'Admin', NULL, 0, '2020-01-30 02:30:54', '2020-01-30 02:30:54', NULL, NULL),
(497, NULL, '2006-054', 'Villagracia, Jacelyn Bayanay', 1, 16, 10, '2019-12-11', '2019-12-11 07:39:46', NULL, '0.00', '2019-12-11 12:00:00', '2019-12-11 13:00:00', '2019-12-11 08:30:00', '2019-12-11 18:30:00', '1.00', '0.00', '0.00', '0.00', NULL, NULL, '0.00', NULL, NULL, '0.00', '0.00', 'reg', 0, 1, 1, 0, NULL, 0, 'WD', 'No Time Out', 'MANUAL', 'INPROCESS', 'Admin', NULL, 0, '2020-01-30 02:30:54', '2020-01-30 02:30:54', NULL, NULL),
(498, NULL, '2006-054', 'Villagracia, Jacelyn Bayanay', 1, 16, 10, '2019-12-12', '2019-12-12 07:50:43', '2019-12-12 18:44:32', '10.90', '2019-12-12 12:00:00', '2019-12-12 13:00:00', '2019-12-12 08:30:00', '2019-12-12 18:30:00', '1.00', '0.00', '0.00', '0.00', NULL, NULL, '0.00', NULL, NULL, '0.00', '0.00', 'reg', 0, 1, 1, 0, NULL, 0, 'WD', 'Present', 'MANUAL', 'INPROCESS', 'Admin', NULL, 0, '2020-01-30 02:30:54', '2020-01-30 02:30:54', NULL, NULL),
(499, NULL, '2006-054', 'Villagracia, Jacelyn Bayanay', 1, 16, 10, '2019-12-13', '2019-12-13 07:51:59', '2019-12-13 14:48:08', '6.94', '2019-12-13 12:00:00', '2019-12-13 13:00:00', '2019-12-13 08:30:00', '2019-12-13 18:30:00', '1.00', '0.00', '0.00', '222.00', NULL, NULL, '0.00', NULL, NULL, '0.00', '0.00', 'reg', 0, 1, 1, 0, NULL, 0, 'WD', 'Present', 'MANUAL', 'INPROCESS', 'Admin', NULL, 0, '2020-01-30 02:30:54', '2020-01-30 02:30:54', NULL, NULL),
(500, NULL, '2006-054', 'Villagracia, Jacelyn Bayanay', 1, 16, 10, '2019-12-14', NULL, NULL, '0.00', NULL, NULL, NULL, NULL, '0.00', '0.00', '0.00', '0.00', NULL, NULL, '0.00', NULL, NULL, '0.00', '0.00', 'rd_reg', 0, 1, 1, 0, NULL, 0, 'WD', 'Restday', 'MANUAL', 'INPROCESS', 'Admin', NULL, 0, '2020-01-30 02:30:54', '2020-01-30 02:30:54', NULL, NULL),
(501, NULL, '2006-054', 'Villagracia, Jacelyn Bayanay', 1, 16, 10, '2019-12-15', NULL, NULL, '0.00', NULL, NULL, NULL, NULL, '0.00', '0.00', '0.00', '0.00', NULL, NULL, '0.00', NULL, NULL, '0.00', '0.00', 'rd_reg', 0, 1, 1, 0, NULL, 0, 'WD', 'Restday', 'MANUAL', 'INPROCESS', 'Admin', NULL, 0, '2020-01-30 02:30:54', '2020-01-30 02:30:54', NULL, NULL),
(502, NULL, '2006-054', 'Villagracia, Jacelyn Bayanay', 1, 16, 10, '2019-12-16', '2019-12-16 08:08:40', '2019-12-16 18:58:36', '10.83', '2019-12-16 12:00:00', '2019-12-16 13:00:00', '2019-12-16 08:30:00', '2019-12-16 18:30:00', '1.00', '0.00', '0.00', '0.00', NULL, NULL, '0.00', NULL, NULL, '0.00', '0.00', 'reg', 0, 1, 1, 0, NULL, 0, 'WD', 'Present', 'MANUAL', 'INPROCESS', 'Admin', NULL, 0, '2020-01-30 02:30:55', '2020-01-30 02:30:55', NULL, NULL),
(503, NULL, '2006-054', 'Villagracia, Jacelyn Bayanay', 1, 16, 10, '2019-12-17', '2019-12-17 08:28:44', '2019-12-17 18:54:57', '10.44', '2019-12-17 12:00:00', '2019-12-17 13:00:00', '2019-12-17 08:30:00', '2019-12-17 18:30:00', '1.00', '0.00', '0.00', '0.00', NULL, NULL, '0.00', NULL, NULL, '0.00', '0.00', 'reg', 0, 1, 1, 0, NULL, 0, 'WD', 'Present', 'MANUAL', 'INPROCESS', 'Admin', NULL, 0, '2020-01-30 02:30:55', '2020-01-30 02:30:55', NULL, NULL),
(504, NULL, '2006-054', 'Villagracia, Jacelyn Bayanay', 1, 16, 10, '2019-12-18', '2019-12-18 08:36:30', '2019-12-18 18:39:47', '10.05', '2019-12-18 12:00:00', '2019-12-18 13:00:00', '2019-12-18 08:30:00', '2019-12-18 18:30:00', '1.00', '0.00', '6.60', '0.00', NULL, NULL, '0.00', NULL, NULL, '0.00', '0.00', 'reg', 0, 1, 1, 0, NULL, 0, 'WD', 'Present', 'MANUAL', 'INPROCESS', 'Admin', NULL, 0, '2020-01-30 02:30:55', '2020-01-30 02:30:55', NULL, NULL),
(505, NULL, '2006-054', 'Villagracia, Jacelyn Bayanay', 1, 16, 10, '2019-12-19', '2019-12-19 08:25:50', '2019-12-19 15:03:29', '6.63', '2019-12-19 12:00:00', '2019-12-19 13:00:00', '2019-12-19 08:30:00', '2019-12-19 18:30:00', '1.00', '0.00', '0.00', '206.40', NULL, NULL, '0.00', NULL, NULL, '0.00', '0.00', 'reg', 0, 1, 1, 0, NULL, 0, 'WD', 'Present', 'MANUAL', 'INPROCESS', 'Admin', NULL, 0, '2020-01-30 02:30:55', '2020-01-30 02:30:55', NULL, NULL),
(506, NULL, '2006-054', 'Villagracia, Jacelyn Bayanay', 1, 16, 10, '2019-12-20', '2019-12-20 08:10:49', '2019-12-20 17:39:41', '9.48', '2019-12-20 12:00:00', '2019-12-20 13:00:00', '2019-12-20 08:30:00', '2019-12-20 18:30:00', '1.00', '0.00', '0.00', '50.40', NULL, NULL, '0.00', NULL, NULL, '0.00', '0.00', 'reg', 0, 1, 1, 0, NULL, 0, 'WD', 'Present', 'MANUAL', 'INPROCESS', 'Admin', NULL, 0, '2020-01-30 02:30:55', '2020-01-30 02:30:55', NULL, NULL),
(507, NULL, '2006-054', 'Villagracia, Jacelyn Bayanay', 1, 16, 10, '2019-12-21', NULL, NULL, '0.00', NULL, NULL, NULL, NULL, '0.00', '0.00', '0.00', '0.00', NULL, NULL, '0.00', NULL, NULL, '0.00', '0.00', 'rd_reg', 0, 1, 1, 0, NULL, 0, 'WD', 'Restday', 'MANUAL', 'INPROCESS', 'Admin', NULL, 0, '2020-01-30 02:30:55', '2020-01-30 02:30:55', NULL, NULL),
(508, NULL, '2006-054', 'Villagracia, Jacelyn Bayanay', 1, 16, 10, '2019-12-22', NULL, NULL, '0.00', NULL, NULL, NULL, NULL, '0.00', '0.00', '0.00', '0.00', NULL, NULL, '0.00', NULL, NULL, '0.00', '0.00', 'rd_reg', 0, 1, 1, 0, NULL, 0, 'WD', 'Restday', 'MANUAL', 'INPROCESS', 'Admin', NULL, 0, '2020-01-30 02:30:55', '2020-01-30 02:30:55', NULL, NULL),
(509, NULL, '2006-054', 'Villagracia, Jacelyn Bayanay', 1, 16, 10, '2019-12-23', '2019-12-23 08:17:22', '2019-12-23 18:29:36', '10.20', '2019-12-23 12:00:00', '2019-12-23 13:00:00', '2019-12-23 08:30:00', '2019-12-23 18:30:00', '1.00', '0.00', '0.00', '0.60', NULL, NULL, '0.00', NULL, NULL, '0.00', '0.00', 'reg', 0, 1, 1, 0, NULL, 0, 'WD', 'Present', 'MANUAL', 'INPROCESS', 'Admin', NULL, 0, '2020-01-30 02:30:55', '2020-01-30 02:30:55', NULL, NULL),
(510, NULL, '2006-054', 'Villagracia, Jacelyn Bayanay', 1, 16, 10, '2019-12-24', NULL, NULL, '0.00', '2019-12-24 12:00:00', '2019-12-24 13:00:00', '2019-12-24 08:30:00', '2019-12-24 18:30:00', '1.00', '0.00', '0.00', '0.00', NULL, NULL, '0.00', NULL, NULL, '0.00', '0.00', 'spcl_nw', 0, 1, 1, 0, NULL, 0, 'WD', 'Additional Special Day', 'MANUAL', 'INPROCESS', 'Admin', NULL, 0, '2020-01-30 02:30:55', '2020-01-30 02:30:55', NULL, NULL),
(511, NULL, '2006-054', 'Villagracia, Jacelyn Bayanay', 1, 16, 10, '2019-12-25', NULL, NULL, '0.00', '2019-12-25 12:00:00', '2019-12-25 13:00:00', '2019-12-25 08:30:00', '2019-12-25 18:30:00', '1.00', '0.00', '0.00', '0.00', NULL, NULL, '0.00', NULL, NULL, '0.00', '0.00', 'legal', 0, 1, 1, 0, NULL, 0, 'WD', 'Christmas Day', 'MANUAL', 'INPROCESS', 'Admin', NULL, 0, '2020-01-30 02:30:55', '2020-01-30 02:30:55', NULL, NULL),
(512, NULL, '2006-054', 'Villagracia, Jacelyn Bayanay', 1, 16, 10, '2019-12-26', NULL, NULL, '0.00', '2019-12-26 12:00:00', '2019-12-26 13:00:00', '2019-12-26 08:30:00', '2019-12-26 18:30:00', '1.00', '0.00', '0.00', '0.00', NULL, NULL, '0.00', NULL, NULL, '0.00', '0.00', 'reg', 0, 1, 1, 0, NULL, 0, 'WD', 'Absent', 'MANUAL', 'INPROCESS', 'Admin', NULL, 0, '2020-01-30 02:30:55', '2020-01-30 02:30:55', NULL, NULL),
(513, NULL, '2006-054', 'Villagracia, Jacelyn Bayanay', 1, 16, 10, '2019-12-27', NULL, NULL, '0.00', '2019-12-27 12:00:00', '2019-12-27 13:00:00', '2019-12-27 08:30:00', '2019-12-27 18:30:00', '1.00', '0.00', '0.00', '0.00', NULL, NULL, '0.00', NULL, NULL, '0.00', '0.00', 'reg', 0, 1, 1, 0, NULL, 0, 'WD', 'Absent', 'MANUAL', 'INPROCESS', 'Admin', NULL, 0, '2020-01-30 02:30:55', '2020-01-30 02:30:55', NULL, NULL),
(514, NULL, '2006-054', 'Villagracia, Jacelyn Bayanay', 1, 16, 10, '2019-12-28', NULL, NULL, '0.00', NULL, NULL, NULL, NULL, '0.00', '0.00', '0.00', '0.00', NULL, NULL, '0.00', NULL, NULL, '0.00', '0.00', 'rd_reg', 0, 1, 1, 0, NULL, 0, 'WD', 'Restday', 'MANUAL', 'INPROCESS', 'Admin', NULL, 0, '2020-01-30 02:30:55', '2020-01-30 02:30:55', NULL, NULL),
(515, NULL, '2006-054', 'Villagracia, Jacelyn Bayanay', 1, 16, 10, '2019-12-29', NULL, NULL, '0.00', NULL, NULL, NULL, NULL, '0.00', '0.00', '0.00', '0.00', NULL, NULL, '0.00', NULL, NULL, '0.00', '0.00', 'rd_reg', 0, 1, 1, 0, NULL, 0, 'WD', 'Restday', 'MANUAL', 'INPROCESS', 'Admin', NULL, 0, '2020-01-30 02:30:56', '2020-01-30 02:30:56', NULL, NULL),
(516, NULL, '2006-054', 'Villagracia, Jacelyn Bayanay', 1, 16, 10, '2019-12-30', NULL, NULL, '0.00', '2019-12-30 12:00:00', '2019-12-30 13:00:00', '2019-12-30 08:30:00', '2019-12-30 18:30:00', '1.00', '0.00', '0.00', '0.00', NULL, NULL, '0.00', NULL, NULL, '0.00', '0.00', 'legal', 0, 1, 1, 0, NULL, 0, 'WD', 'Rizal Day', 'MANUAL', 'INPROCESS', 'Admin', NULL, 0, '2020-01-30 02:30:56', '2020-01-30 02:30:56', NULL, NULL),
(517, NULL, '2006-054', 'Villagracia, Jacelyn Bayanay', 1, 16, 10, '2019-12-31', NULL, NULL, '0.00', '2019-12-31 12:00:00', '2019-12-31 13:00:00', '2019-12-31 08:30:00', '2019-12-31 18:30:00', '1.00', '0.00', '0.00', '0.00', NULL, NULL, '0.00', NULL, NULL, '0.00', '0.00', 'spcl_nw', 0, 1, 1, 0, NULL, 0, 'WD', 'Last day of the Year', 'MANUAL', 'INPROCESS', 'Admin', NULL, 0, '2020-01-30 02:30:56', '2020-01-30 02:30:56', NULL, NULL),
(518, NULL, '2006-052', 'Villegas, Maria Teresa Lanozo', 1, 14, 10, '2019-12-01', '2019-12-01 23:08:41', NULL, '0.00', NULL, NULL, NULL, NULL, '0.00', '0.00', '0.00', '0.00', NULL, NULL, '0.00', NULL, NULL, '0.00', '0.00', 'rd_reg', 0, 1, 1, 0, NULL, 0, 'WD', 'Restday', 'MANUAL', 'INPROCESS', 'Admin', NULL, 0, '2020-01-30 02:30:56', '2020-01-30 02:30:56', NULL, NULL),
(519, NULL, '2006-052', 'Villegas, Maria Teresa Lanozo', 1, 14, 10, '2019-12-02', '2019-12-02 05:53:15', NULL, '0.00', '2019-12-02 12:00:00', '2019-12-02 13:00:00', '2019-12-02 08:30:00', '2019-12-02 18:30:00', '1.00', '0.00', '0.00', '0.00', NULL, NULL, '0.00', NULL, NULL, '0.00', '0.00', 'reg', 0, 1, 1, 0, NULL, 0, 'WD', 'No Time Out', 'MANUAL', 'INPROCESS', 'Admin', NULL, 0, '2020-01-30 02:30:56', '2020-01-30 02:30:56', NULL, NULL),
(520, NULL, '2006-052', 'Villegas, Maria Teresa Lanozo', 1, 14, 10, '2019-12-03', NULL, NULL, '0.00', '2019-12-03 12:00:00', '2019-12-03 13:00:00', '2019-12-03 08:30:00', '2019-12-03 18:30:00', '1.00', '0.00', '0.00', '0.00', NULL, NULL, '0.00', NULL, NULL, '0.00', '0.00', 'reg', 0, 1, 1, 0, NULL, 0, 'WD', 'Absent', 'MANUAL', 'INPROCESS', 'Admin', NULL, 0, '2020-01-30 02:30:56', '2020-01-30 02:30:56', NULL, NULL),
(521, NULL, '2006-052', 'Villegas, Maria Teresa Lanozo', 1, 14, 10, '2019-12-04', '2019-12-04 06:58:28', '2019-12-04 19:07:12', '12.15', '2019-12-04 12:00:00', '2019-12-04 13:00:00', '2019-12-04 08:30:00', '2019-12-04 18:30:00', '1.00', '0.00', '0.00', '0.00', NULL, NULL, '0.00', NULL, NULL, '0.00', '0.00', 'reg', 0, 1, 1, 0, NULL, 0, 'WD', 'Present', 'MANUAL', 'INPROCESS', 'Admin', NULL, 0, '2020-01-30 02:30:56', '2020-01-30 02:30:56', NULL, NULL),
(522, NULL, '2006-052', 'Villegas, Maria Teresa Lanozo', 1, 14, 10, '2019-12-05', NULL, NULL, '0.00', '2019-12-05 12:00:00', '2019-12-05 13:00:00', '2019-12-05 08:30:00', '2019-12-05 18:30:00', '1.00', '0.00', '0.00', '0.00', NULL, NULL, '0.00', NULL, NULL, '0.00', '0.00', 'reg', 0, 1, 1, 0, NULL, 0, 'WD', 'Absent', 'MANUAL', 'INPROCESS', 'Admin', NULL, 0, '2020-01-30 02:30:56', '2020-01-30 02:30:56', NULL, NULL),
(523, NULL, '2006-052', 'Villegas, Maria Teresa Lanozo', 1, 14, 10, '2019-12-06', '2019-12-06 07:34:04', '2019-12-06 19:21:09', '11.78', '2019-12-06 12:00:00', '2019-12-06 13:00:00', '2019-12-06 08:30:00', '2019-12-06 18:30:00', '1.00', '0.00', '0.00', '0.00', NULL, NULL, '0.00', NULL, NULL, '0.00', '0.00', 'reg', 0, 1, 1, 0, NULL, 0, 'WD', 'Present', 'MANUAL', 'INPROCESS', 'Admin', NULL, 0, '2020-01-30 02:30:56', '2020-01-30 02:30:56', NULL, NULL),
(524, NULL, '2006-052', 'Villegas, Maria Teresa Lanozo', 1, 14, 10, '2019-12-07', NULL, NULL, '0.00', NULL, NULL, NULL, NULL, '0.00', '0.00', '0.00', '0.00', NULL, NULL, '0.00', NULL, NULL, '0.00', '0.00', 'rd_reg', 0, 1, 1, 0, NULL, 0, 'WD', 'Restday', 'MANUAL', 'INPROCESS', 'Admin', NULL, 0, '2020-01-30 02:30:56', '2020-01-30 02:30:56', NULL, NULL),
(525, NULL, '2006-052', 'Villegas, Maria Teresa Lanozo', 1, 14, 10, '2019-12-08', NULL, NULL, '0.00', NULL, NULL, NULL, NULL, '0.00', '0.00', '0.00', '0.00', NULL, NULL, '0.00', NULL, NULL, '0.00', '0.00', 'spcl_nw', 0, 1, 1, 0, NULL, 0, 'WD', 'Feast of the Immaculate Conceptions Of Mary', 'MANUAL', 'INPROCESS', 'Admin', NULL, 0, '2020-01-30 02:30:56', '2020-01-30 02:30:56', NULL, NULL),
(526, NULL, '2006-052', 'Villegas, Maria Teresa Lanozo', 1, 14, 10, '2019-12-09', '2019-12-09 07:06:02', '2019-12-09 19:02:06', '11.93', '2019-12-09 12:00:00', '2019-12-09 13:00:00', '2019-12-09 08:30:00', '2019-12-09 18:30:00', '1.00', '0.00', '0.00', '0.00', NULL, NULL, '0.00', NULL, NULL, '0.00', '0.00', 'reg', 0, 1, 1, 0, NULL, 0, 'WD', 'Present', 'MANUAL', 'INPROCESS', 'Admin', NULL, 0, '2020-01-30 02:30:56', '2020-01-30 02:30:56', NULL, NULL),
(527, NULL, '2006-052', 'Villegas, Maria Teresa Lanozo', 1, 14, 10, '2019-12-10', '2019-12-10 07:01:45', '2019-12-10 15:02:54', '8.02', '2019-12-10 12:00:00', '2019-12-10 13:00:00', '2019-12-10 08:30:00', '2019-12-10 18:30:00', '1.00', '0.00', '0.00', '207.00', NULL, NULL, '0.00', NULL, NULL, '0.00', '0.00', 'reg', 0, 1, 1, 0, NULL, 0, 'WD', 'Present', 'MANUAL', 'INPROCESS', 'Admin', NULL, 0, '2020-01-30 02:30:56', '2020-01-30 02:30:56', NULL, NULL),
(528, NULL, '2006-052', 'Villegas, Maria Teresa Lanozo', 1, 14, 10, '2019-12-11', '2019-12-11 07:07:28', '2019-12-11 18:51:53', '11.74', '2019-12-11 12:00:00', '2019-12-11 13:00:00', '2019-12-11 08:30:00', '2019-12-11 18:30:00', '1.00', '0.00', '0.00', '0.00', NULL, NULL, '0.00', NULL, NULL, '0.00', '0.00', 'reg', 0, 1, 1, 0, NULL, 0, 'WD', 'Present', 'MANUAL', 'INPROCESS', 'Admin', NULL, 0, '2020-01-30 02:30:57', '2020-01-30 02:30:57', NULL, NULL),
(529, NULL, '2006-052', 'Villegas, Maria Teresa Lanozo', 1, 14, 10, '2019-12-12', '2019-12-12 07:22:08', '2019-12-12 18:44:41', '11.38', '2019-12-12 12:00:00', '2019-12-12 13:00:00', '2019-12-12 08:30:00', '2019-12-12 18:30:00', '1.00', '0.00', '0.00', '0.00', NULL, NULL, '0.00', NULL, NULL, '0.00', '0.00', 'reg', 0, 1, 1, 0, NULL, 0, 'WD', 'Present', 'MANUAL', 'INPROCESS', 'Admin', NULL, 0, '2020-01-30 02:30:57', '2020-01-30 02:30:57', NULL, NULL),
(530, NULL, '2006-052', 'Villegas, Maria Teresa Lanozo', 1, 14, 10, '2019-12-13', '2019-12-13 07:11:22', '2019-12-13 19:26:10', '12.25', '2019-12-13 12:00:00', '2019-12-13 13:00:00', '2019-12-13 08:30:00', '2019-12-13 18:30:00', '1.00', '0.00', '0.00', '0.00', NULL, NULL, '0.00', NULL, NULL, '0.00', '0.00', 'reg', 0, 1, 1, 0, NULL, 0, 'WD', 'Present', 'MANUAL', 'INPROCESS', 'Admin', NULL, 0, '2020-01-30 02:30:57', '2020-01-30 02:30:57', NULL, NULL),
(531, NULL, '2006-052', 'Villegas, Maria Teresa Lanozo', 1, 14, 10, '2019-12-14', NULL, NULL, '0.00', NULL, NULL, NULL, NULL, '0.00', '0.00', '0.00', '0.00', NULL, NULL, '0.00', NULL, NULL, '0.00', '0.00', 'rd_reg', 0, 1, 1, 0, NULL, 0, 'WD', 'Restday', 'MANUAL', 'INPROCESS', 'Admin', NULL, 0, '2020-01-30 02:30:57', '2020-01-30 02:30:57', NULL, NULL),
(532, NULL, '2006-052', 'Villegas, Maria Teresa Lanozo', 1, 14, 10, '2019-12-15', NULL, NULL, '0.00', NULL, NULL, NULL, NULL, '0.00', '0.00', '0.00', '0.00', NULL, NULL, '0.00', NULL, NULL, '0.00', '0.00', 'rd_reg', 0, 1, 1, 0, NULL, 0, 'WD', 'Restday', 'MANUAL', 'INPROCESS', 'Admin', NULL, 0, '2020-01-30 02:30:57', '2020-01-30 02:30:57', NULL, NULL),
(533, NULL, '2006-052', 'Villegas, Maria Teresa Lanozo', 1, 14, 10, '2019-12-16', '2019-12-16 07:15:36', '2019-12-16 18:47:50', '11.54', '2019-12-16 12:00:00', '2019-12-16 13:00:00', '2019-12-16 08:30:00', '2019-12-16 18:30:00', '1.00', '0.00', '0.00', '0.00', NULL, NULL, '0.00', NULL, NULL, '0.00', '0.00', 'reg', 0, 1, 1, 0, NULL, 0, 'WD', 'Present', 'MANUAL', 'INPROCESS', 'Admin', NULL, 0, '2020-01-30 02:30:57', '2020-01-30 02:30:57', NULL, NULL),
(534, NULL, '2006-052', 'Villegas, Maria Teresa Lanozo', 1, 14, 10, '2019-12-17', '2019-12-17 07:17:23', '2019-12-17 17:04:21', '9.78', '2019-12-17 12:00:00', '2019-12-17 13:00:00', '2019-12-17 08:30:00', '2019-12-17 18:30:00', '1.00', '0.00', '0.00', '85.80', NULL, NULL, '0.00', NULL, NULL, '0.00', '0.00', 'reg', 0, 1, 1, 0, NULL, 0, 'WD', 'Present', 'MANUAL', 'INPROCESS', 'Admin', NULL, 0, '2020-01-30 02:30:57', '2020-01-30 02:30:57', NULL, NULL),
(535, NULL, '2006-052', 'Villegas, Maria Teresa Lanozo', 1, 14, 10, '2019-12-18', NULL, NULL, '0.00', '2019-12-18 12:00:00', '2019-12-18 13:00:00', '2019-12-18 08:30:00', '2019-12-18 18:30:00', '1.00', '0.00', '0.00', '0.00', NULL, NULL, '0.00', NULL, NULL, '0.00', '0.00', 'reg', 0, 1, 1, 0, NULL, 0, 'WD', 'Absent', 'MANUAL', 'INPROCESS', 'Admin', NULL, 0, '2020-01-30 02:30:57', '2020-01-30 02:30:57', NULL, NULL),
(536, NULL, '2006-052', 'Villegas, Maria Teresa Lanozo', 1, 14, 10, '2019-12-19', '2019-12-19 07:09:40', '2019-12-19 19:00:33', '11.85', '2019-12-19 12:00:00', '2019-12-19 13:00:00', '2019-12-19 08:30:00', '2019-12-19 18:30:00', '1.00', '0.00', '0.00', '0.00', NULL, NULL, '0.00', NULL, NULL, '0.00', '0.00', 'reg', 0, 1, 1, 0, NULL, 0, 'WD', 'Present', 'MANUAL', 'INPROCESS', 'Admin', NULL, 0, '2020-01-30 02:30:58', '2020-01-30 02:30:58', NULL, NULL),
(537, NULL, '2006-052', 'Villegas, Maria Teresa Lanozo', 1, 14, 10, '2019-12-20', '2019-12-20 07:22:34', '2019-12-20 17:39:46', '10.29', '2019-12-20 12:00:00', '2019-12-20 13:00:00', '2019-12-20 08:30:00', '2019-12-20 18:30:00', '1.00', '0.00', '0.00', '50.40', NULL, NULL, '0.00', NULL, NULL, '0.00', '0.00', 'reg', 0, 1, 1, 0, NULL, 0, 'WD', 'Present', 'MANUAL', 'INPROCESS', 'Admin', NULL, 0, '2020-01-30 02:30:58', '2020-01-30 02:30:58', NULL, NULL),
(538, NULL, '2006-052', 'Villegas, Maria Teresa Lanozo', 1, 14, 10, '2019-12-21', NULL, NULL, '0.00', NULL, NULL, NULL, NULL, '0.00', '0.00', '0.00', '0.00', NULL, NULL, '0.00', NULL, NULL, '0.00', '0.00', 'rd_reg', 0, 1, 1, 0, NULL, 0, 'WD', 'Restday', 'MANUAL', 'INPROCESS', 'Admin', NULL, 0, '2020-01-30 02:30:58', '2020-01-30 02:30:58', NULL, NULL),
(539, NULL, '2006-052', 'Villegas, Maria Teresa Lanozo', 1, 14, 10, '2019-12-22', NULL, NULL, '0.00', NULL, NULL, NULL, NULL, '0.00', '0.00', '0.00', '0.00', NULL, NULL, '0.00', NULL, NULL, '0.00', '0.00', 'rd_reg', 0, 1, 1, 0, NULL, 0, 'WD', 'Restday', 'MANUAL', 'INPROCESS', 'Admin', NULL, 0, '2020-01-30 02:30:58', '2020-01-30 02:30:58', NULL, NULL),
(540, NULL, '2006-052', 'Villegas, Maria Teresa Lanozo', 1, 14, 10, '2019-12-23', '2019-12-23 07:05:01', '2019-12-23 18:45:00', '11.67', '2019-12-23 12:00:00', '2019-12-23 13:00:00', '2019-12-23 08:30:00', '2019-12-23 18:30:00', '1.00', '0.00', '0.00', '0.00', NULL, NULL, '0.00', NULL, NULL, '0.00', '0.00', 'reg', 0, 1, 1, 0, NULL, 0, 'WD', 'Present', 'MANUAL', 'INPROCESS', 'Admin', NULL, 0, '2020-01-30 02:30:58', '2020-01-30 02:30:58', NULL, NULL),
(541, NULL, '2006-052', 'Villegas, Maria Teresa Lanozo', 1, 14, 10, '2019-12-24', NULL, NULL, '0.00', '2019-12-24 12:00:00', '2019-12-24 13:00:00', '2019-12-24 08:30:00', '2019-12-24 18:30:00', '1.00', '0.00', '0.00', '0.00', NULL, NULL, '0.00', NULL, NULL, '0.00', '0.00', 'spcl_nw', 0, 1, 1, 0, NULL, 0, 'WD', 'Additional Special Day', 'MANUAL', 'INPROCESS', 'Admin', NULL, 0, '2020-01-30 02:30:58', '2020-01-30 02:30:58', NULL, NULL),
(542, NULL, '2006-052', 'Villegas, Maria Teresa Lanozo', 1, 14, 10, '2019-12-25', NULL, NULL, '0.00', '2019-12-25 12:00:00', '2019-12-25 13:00:00', '2019-12-25 08:30:00', '2019-12-25 18:30:00', '1.00', '0.00', '0.00', '0.00', NULL, NULL, '0.00', NULL, NULL, '0.00', '0.00', 'legal', 0, 1, 1, 0, NULL, 0, 'WD', 'Christmas Day', 'MANUAL', 'INPROCESS', 'Admin', NULL, 0, '2020-01-30 02:30:58', '2020-01-30 02:30:58', NULL, NULL),
(543, NULL, '2006-052', 'Villegas, Maria Teresa Lanozo', 1, 14, 10, '2019-12-26', NULL, NULL, '0.00', '2019-12-26 12:00:00', '2019-12-26 13:00:00', '2019-12-26 08:30:00', '2019-12-26 18:30:00', '1.00', '0.00', '0.00', '0.00', NULL, NULL, '0.00', NULL, NULL, '0.00', '0.00', 'reg', 0, 1, 1, 0, NULL, 0, 'WD', 'Absent', 'MANUAL', 'INPROCESS', 'Admin', NULL, 0, '2020-01-30 02:30:58', '2020-01-30 02:30:58', NULL, NULL),
(544, NULL, '2006-052', 'Villegas, Maria Teresa Lanozo', 1, 14, 10, '2019-12-27', NULL, NULL, '0.00', '2019-12-27 12:00:00', '2019-12-27 13:00:00', '2019-12-27 08:30:00', '2019-12-27 18:30:00', '1.00', '0.00', '0.00', '0.00', NULL, NULL, '0.00', NULL, NULL, '0.00', '0.00', 'reg', 0, 1, 1, 0, NULL, 0, 'WD', 'Absent', 'MANUAL', 'INPROCESS', 'Admin', NULL, 0, '2020-01-30 02:30:58', '2020-01-30 02:30:58', NULL, NULL),
(545, NULL, '2006-052', 'Villegas, Maria Teresa Lanozo', 1, 14, 10, '2019-12-28', NULL, NULL, '0.00', NULL, NULL, NULL, NULL, '0.00', '0.00', '0.00', '0.00', NULL, NULL, '0.00', NULL, NULL, '0.00', '0.00', 'rd_reg', 0, 1, 1, 0, NULL, 0, 'WD', 'Restday', 'MANUAL', 'INPROCESS', 'Admin', NULL, 0, '2020-01-30 02:30:58', '2020-01-30 02:30:58', NULL, NULL),
(546, NULL, '2006-052', 'Villegas, Maria Teresa Lanozo', 1, 14, 10, '2019-12-29', NULL, NULL, '0.00', NULL, NULL, NULL, NULL, '0.00', '0.00', '0.00', '0.00', NULL, NULL, '0.00', NULL, NULL, '0.00', '0.00', 'rd_reg', 0, 1, 1, 0, NULL, 0, 'WD', 'Restday', 'MANUAL', 'INPROCESS', 'Admin', NULL, 0, '2020-01-30 02:30:58', '2020-01-30 02:30:58', NULL, NULL),
(547, NULL, '2006-052', 'Villegas, Maria Teresa Lanozo', 1, 14, 10, '2019-12-30', NULL, NULL, '0.00', '2019-12-30 12:00:00', '2019-12-30 13:00:00', '2019-12-30 08:30:00', '2019-12-30 18:30:00', '1.00', '0.00', '0.00', '0.00', NULL, NULL, '0.00', NULL, NULL, '0.00', '0.00', 'legal', 0, 1, 1, 0, NULL, 0, 'WD', 'Rizal Day', 'MANUAL', 'INPROCESS', 'Admin', NULL, 0, '2020-01-30 02:30:58', '2020-01-30 02:30:58', NULL, NULL),
(548, NULL, '2006-052', 'Villegas, Maria Teresa Lanozo', 1, 14, 10, '2019-12-31', NULL, NULL, '0.00', '2019-12-31 12:00:00', '2019-12-31 13:00:00', '2019-12-31 08:30:00', '2019-12-31 18:30:00', '1.00', '0.00', '0.00', '0.00', NULL, NULL, '0.00', NULL, NULL, '0.00', '0.00', 'spcl_nw', 0, 1, 1, 0, NULL, 0, 'WD', 'Last day of the Year', 'MANUAL', 'INPROCESS', 'Admin', NULL, 0, '2020-01-30 02:30:58', '2020-01-30 02:30:58', NULL, NULL),
(549, NULL, '2017-083', 'Advincula, Kris Nino Marco Sawal', 1, 15, 4, '2020-01-01', NULL, NULL, '0.00', '2020-01-01 12:00:00', '2020-01-01 13:00:00', NULL, NULL, '1.00', '0.00', '0.00', '0.00', NULL, NULL, '0.00', NULL, NULL, '0.00', '0.00', 'reg', 0, 1, 1, 0, NULL, 0, 'WD', 'Absent', 'MANUAL', 'INPROCESS', 'Admin', NULL, 0, '2020-01-30 05:15:16', '2020-01-30 05:15:16', NULL, NULL),
(550, NULL, '2017-083', 'Advincula, Kris Nino Marco Sawal', 1, 15, 4, '2020-01-02', '2020-01-02 10:39:26', '2020-01-02 17:04:26', '6.42', '2020-01-02 12:00:00', '2020-01-02 13:00:00', '2020-01-02 10:39:26', '2020-01-02 20:39:26', '1.00', '0.00', '0.00', '214.80', NULL, NULL, '0.00', NULL, NULL, '0.00', '0.00', 'reg', 0, 1, 1, 0, NULL, 0, 'WD', 'Present', 'MANUAL', 'INPROCESS', 'Admin', NULL, 0, '2020-01-30 05:15:16', '2020-01-30 05:15:16', NULL, NULL),
(551, NULL, '2017-083', 'Advincula, Kris Nino Marco Sawal', 1, 15, 4, '2020-01-03', '2020-01-03 09:21:01', '2020-01-03 17:17:53', '7.95', '2020-01-03 12:00:00', '2020-01-03 13:00:00', '2020-01-03 09:21:01', '2020-01-03 19:21:01', '1.00', '0.00', '0.00', '123.00', NULL, NULL, '0.00', NULL, NULL, '0.00', '0.00', 'reg', 0, 1, 1, 0, NULL, 0, 'WD', 'Present', 'MANUAL', 'INPROCESS', 'Admin', NULL, 0, '2020-01-30 05:15:16', '2020-01-30 05:15:16', NULL, NULL),
(552, NULL, '2017-083', 'Advincula, Kris Nino Marco Sawal', 1, 15, 4, '2020-01-04', NULL, NULL, '0.00', NULL, NULL, NULL, NULL, '0.00', '0.00', '0.00', '0.00', NULL, NULL, '0.00', NULL, NULL, '0.00', '0.00', 'rd_reg', 0, 1, 1, 0, NULL, 0, 'WD', 'Restday', 'MANUAL', 'INPROCESS', 'Admin', NULL, 0, '2020-01-30 05:15:16', '2020-01-30 05:15:16', NULL, NULL),
(553, NULL, '2017-083', 'Advincula, Kris Nino Marco Sawal', 1, 15, 4, '2020-01-05', NULL, NULL, '0.00', NULL, NULL, NULL, NULL, '0.00', '0.00', '0.00', '0.00', NULL, NULL, '0.00', NULL, NULL, '0.00', '0.00', 'rd_reg', 0, 1, 1, 0, NULL, 0, 'WD', 'Restday', 'MANUAL', 'INPROCESS', 'Admin', NULL, 0, '2020-01-30 05:15:16', '2020-01-30 05:15:16', NULL, NULL),
(554, NULL, '2017-083', 'Advincula, Kris Nino Marco Sawal', 1, 15, 4, '2020-01-06', '2020-01-06 17:59:15', '2020-01-06 14:52:55', '3.11', '2020-01-06 12:00:00', '2020-01-06 13:00:00', '2020-01-06 17:59:15', '2020-01-07 03:59:15', '1.00', '0.00', '0.00', '786.60', NULL, NULL, '0.00', NULL, NULL, '0.00', '0.00', 'reg', 0, 1, 1, 0, NULL, 0, 'WD', 'Present', 'MANUAL', 'INPROCESS', 'Admin', NULL, 0, '2020-01-30 05:15:16', '2020-01-30 05:15:16', NULL, NULL),
(555, NULL, '2017-083', 'Advincula, Kris Nino Marco Sawal', 1, 15, 4, '2020-01-07', NULL, NULL, '0.00', '2020-01-07 12:00:00', '2020-01-07 13:00:00', NULL, NULL, '1.00', '0.00', '0.00', '0.00', NULL, NULL, '0.00', NULL, NULL, '0.00', '0.00', 'reg', 0, 1, 1, 0, NULL, 0, 'WD', 'Absent', 'MANUAL', 'INPROCESS', 'Admin', NULL, 0, '2020-01-30 05:15:16', '2020-01-30 05:15:16', NULL, NULL),
(556, NULL, '2017-083', 'Advincula, Kris Nino Marco Sawal', 1, 15, 4, '2020-01-08', NULL, NULL, '0.00', '2020-01-08 12:00:00', '2020-01-08 13:00:00', NULL, NULL, '1.00', '0.00', '0.00', '0.00', NULL, NULL, '0.00', NULL, NULL, '0.00', '0.00', 'reg', 0, 1, 1, 0, NULL, 0, 'WD', 'Absent', 'MANUAL', 'INPROCESS', 'Admin', NULL, 0, '2020-01-30 05:15:16', '2020-01-30 05:15:16', NULL, NULL),
(557, NULL, '2017-083', 'Advincula, Kris Nino Marco Sawal', 1, 15, 4, '2020-01-09', NULL, NULL, '0.00', '2020-01-09 12:00:00', '2020-01-09 13:00:00', NULL, NULL, '1.00', '0.00', '0.00', '0.00', NULL, NULL, '0.00', NULL, NULL, '0.00', '0.00', 'reg', 0, 1, 1, 0, NULL, 0, 'WD', 'Absent', 'MANUAL', 'INPROCESS', 'Admin', NULL, 0, '2020-01-30 05:15:16', '2020-01-30 05:15:16', NULL, NULL),
(558, NULL, '2017-083', 'Advincula, Kris Nino Marco Sawal', 1, 15, 4, '2020-01-10', NULL, NULL, '0.00', '2020-01-10 12:00:00', '2020-01-10 13:00:00', NULL, NULL, '1.00', '0.00', '0.00', '0.00', NULL, NULL, '0.00', NULL, NULL, '0.00', '0.00', 'reg', 0, 1, 1, 0, NULL, 0, 'WD', 'Absent', 'MANUAL', 'INPROCESS', 'Admin', NULL, 0, '2020-01-30 05:15:17', '2020-01-30 05:15:17', NULL, NULL),
(559, NULL, '2017-083', 'Advincula, Kris Nino Marco Sawal', 1, 15, 4, '2020-01-11', NULL, NULL, '0.00', NULL, NULL, NULL, NULL, '0.00', '0.00', '0.00', '0.00', NULL, NULL, '0.00', NULL, NULL, '0.00', '0.00', 'rd_reg', 0, 1, 1, 0, NULL, 0, 'WD', 'Restday', 'MANUAL', 'INPROCESS', 'Admin', NULL, 0, '2020-01-30 05:15:17', '2020-01-30 05:15:17', NULL, NULL),
(560, NULL, '2017-083', 'Advincula, Kris Nino Marco Sawal', 1, 15, 4, '2020-01-12', NULL, NULL, '0.00', NULL, NULL, NULL, NULL, '0.00', '0.00', '0.00', '0.00', NULL, NULL, '0.00', NULL, NULL, '0.00', '0.00', 'rd_reg', 0, 1, 1, 0, NULL, 0, 'WD', 'Restday', 'MANUAL', 'INPROCESS', 'Admin', NULL, 0, '2020-01-30 05:15:17', '2020-01-30 05:15:17', NULL, NULL),
(561, NULL, '2017-083', 'Advincula, Kris Nino Marco Sawal', 1, 15, 4, '2020-01-13', '2020-01-13 10:42:06', NULL, '0.00', '2020-01-13 12:00:00', '2020-01-13 13:00:00', '2020-01-13 10:42:06', '2020-01-13 20:42:06', '1.00', '0.00', '0.00', '0.00', NULL, NULL, '0.00', NULL, NULL, '0.00', '0.00', 'reg', 0, 1, 1, 0, NULL, 0, 'WD', 'No Time Out', 'MANUAL', 'INPROCESS', 'Admin', NULL, 0, '2020-01-30 05:15:17', '2020-01-30 05:15:17', NULL, NULL),
(562, NULL, '2017-083', 'Advincula, Kris Nino Marco Sawal', 1, 15, 4, '2020-01-14', '2020-01-14 11:20:17', '2020-01-14 17:02:57', '5.71', '2020-01-14 12:00:00', '2020-01-14 13:00:00', '2020-01-14 11:20:17', '2020-01-14 21:20:17', '1.00', '0.00', '0.00', '257.40', NULL, NULL, '0.00', NULL, NULL, '0.00', '0.00', 'reg', 0, 1, 1, 0, NULL, 0, 'WD', 'Present', 'MANUAL', 'INPROCESS', 'Admin', NULL, 0, '2020-01-30 05:15:17', '2020-01-30 05:15:17', NULL, NULL),
(563, NULL, '2017-083', 'Advincula, Kris Nino Marco Sawal', 1, 15, 4, '2020-01-15', '2020-01-15 13:49:20', '2020-01-15 15:03:59', '1.24', '2020-01-15 12:00:00', '2020-01-15 13:00:00', '2020-01-15 13:49:20', '2020-01-15 23:49:20', '1.00', '0.00', '0.00', '525.60', NULL, NULL, '0.00', NULL, NULL, '0.00', '0.00', 'reg', 0, 1, 1, 0, NULL, 0, 'WD', 'Present', 'MANUAL', 'INPROCESS', 'Admin', NULL, 0, '2020-01-30 05:15:17', '2020-01-30 05:15:17', NULL, NULL),
(564, NULL, '2017-083', 'Advincula, Kris Nino Marco Sawal', 1, 15, 4, '2020-01-16', '2020-01-16 14:08:12', '2020-01-16 17:03:32', '2.92', '2020-01-16 12:00:00', '2020-01-16 13:00:00', '2020-01-16 14:08:12', '2020-01-17 00:08:12', '1.00', '0.00', '0.00', '424.80', NULL, NULL, '0.00', NULL, NULL, '0.00', '0.00', 'reg', 0, 1, 1, 0, NULL, 0, 'WD', 'Present', 'MANUAL', 'INPROCESS', 'Admin', NULL, 0, '2020-01-30 05:15:17', '2020-01-30 05:15:17', NULL, NULL),
(565, NULL, '2017-083', 'Advincula, Kris Nino Marco Sawal', 1, 15, 4, '2020-01-17', '2020-01-17 14:34:18', '2020-01-17 23:34:05', '9.00', '2020-01-17 12:00:00', '2020-01-17 13:00:00', '2020-01-17 14:34:18', '2020-01-18 00:34:18', '1.00', '0.00', '0.00', '60.00', NULL, NULL, '0.00', '2020-01-17 22:00:00', '2020-01-17 23:34:05', '1.57', '0.00', 'reg', 0, 1, 1, 0, NULL, 0, 'WD', 'Present', 'MANUAL', 'INPROCESS', 'Admin', NULL, 0, '2020-01-30 05:15:17', '2020-01-30 05:15:17', NULL, NULL),
(566, NULL, '2017-083', 'Advincula, Kris Nino Marco Sawal', 1, 15, 4, '2020-01-18', NULL, NULL, '0.00', NULL, NULL, NULL, NULL, '0.00', '0.00', '0.00', '0.00', NULL, NULL, '0.00', NULL, NULL, '0.00', '0.00', 'rd_reg', 0, 1, 1, 0, NULL, 0, 'WD', 'Restday', 'MANUAL', 'INPROCESS', 'Admin', NULL, 0, '2020-01-30 05:15:17', '2020-01-30 05:15:17', NULL, NULL),
(567, NULL, '2017-083', 'Advincula, Kris Nino Marco Sawal', 1, 15, 4, '2020-01-19', '2020-01-19 09:09:42', NULL, '0.00', NULL, NULL, NULL, NULL, '0.00', '0.00', '0.00', '0.00', NULL, NULL, '0.00', NULL, NULL, '0.00', '0.00', 'rd_reg', 0, 1, 1, 0, NULL, 0, 'WD', 'Restday', 'MANUAL', 'INPROCESS', 'Admin', NULL, 0, '2020-01-30 05:15:17', '2020-01-30 05:15:17', NULL, NULL),
(568, NULL, '2017-083', 'Advincula, Kris Nino Marco Sawal', 1, 15, 4, '2020-01-20', '2020-01-20 11:04:48', '2020-01-20 17:16:46', '6.20', '2020-01-20 12:00:00', '2020-01-20 13:00:00', '2020-01-20 11:04:48', '2020-01-20 21:04:48', '1.00', '0.00', '0.00', '228.00', NULL, NULL, '0.00', NULL, NULL, '0.00', '0.00', 'reg', 0, 1, 1, 0, NULL, 0, 'WD', 'Present', 'MANUAL', 'INPROCESS', 'Admin', NULL, 0, '2020-01-30 05:15:17', '2020-01-30 05:15:17', NULL, NULL),
(569, '202000007', '2017-083', 'Advincula, Kris Nino Marco Sawal', 1, 15, 4, '2020-01-21', '2020-01-21 12:20:47', '2020-01-21 15:35:44', '3.25', '2020-01-21 12:00:00', '2020-01-21 13:00:00', '2020-01-21 12:20:47', '2020-01-21 22:20:47', '1.00', '0.00', '0.00', '405.00', NULL, NULL, '0.00', NULL, NULL, '0.00', '0.00', 'reg', 0, 1, 1, 0, NULL, 0, 'WD', 'Present', 'MANUAL', 'RELEASED', 'Admin', 'Payroll Admin', 0, '2020-01-30 05:15:17', '2020-03-04 02:41:08', NULL, NULL),
(570, '202000007', '2017-083', 'Advincula, Kris Nino Marco Sawal', 1, 15, 4, '2020-01-22', '2020-01-22 13:53:58', NULL, '0.00', '2020-01-22 12:00:00', '2020-01-22 13:00:00', '2020-01-22 13:53:58', '2020-01-22 23:53:58', '1.00', '0.00', '0.00', '0.00', NULL, NULL, '0.00', NULL, NULL, '0.00', '0.00', 'reg', 0, 1, 1, 0, NULL, 0, 'WD', 'No Time Out', 'MANUAL', 'RELEASED', 'Admin', 'Payroll Admin', 0, '2020-01-30 05:15:17', '2020-03-04 02:41:08', NULL, NULL),
(571, '202000007', '2017-083', 'Advincula, Kris Nino Marco Sawal', 1, 15, 4, '2020-01-23', NULL, NULL, '0.00', '2020-01-23 12:00:00', '2020-01-23 13:00:00', NULL, NULL, '1.00', '0.00', '0.00', '0.00', NULL, NULL, '0.00', NULL, NULL, '0.00', '0.00', 'reg', 0, 1, 1, 0, NULL, 0, 'WD', 'Absent', 'MANUAL', 'RELEASED', 'Admin', 'Payroll Admin', 0, '2020-01-30 05:15:17', '2020-03-04 02:41:08', NULL, NULL),
(572, '202000007', '2017-083', 'Advincula, Kris Nino Marco Sawal', 1, 15, 4, '2020-01-24', '2020-01-24 09:22:10', NULL, '0.00', '2020-01-24 12:00:00', '2020-01-24 13:00:00', '2020-01-24 09:22:10', '2020-01-24 19:22:10', '1.00', '0.00', '0.00', '0.00', NULL, NULL, '0.00', NULL, NULL, '0.00', '0.00', 'reg', 0, 1, 1, 0, NULL, 0, 'WD', 'No Time Out', 'MANUAL', 'RELEASED', 'Admin', 'Payroll Admin', 0, '2020-01-30 05:15:17', '2020-03-04 02:41:08', NULL, NULL),
(573, '202000007', '2017-083', 'Advincula, Kris Nino Marco Sawal', 1, 15, 4, '2020-01-25', NULL, NULL, '0.00', NULL, NULL, NULL, NULL, '0.00', '0.00', '0.00', '0.00', NULL, NULL, '0.00', NULL, NULL, '0.00', '0.00', 'rd_reg', 0, 1, 1, 0, NULL, 0, 'WD', 'Restday', 'MANUAL', 'RELEASED', 'Admin', 'Payroll Admin', 0, '2020-01-30 05:15:18', '2020-03-04 02:41:08', NULL, NULL),
(574, '202000007', '2017-083', 'Advincula, Kris Nino Marco Sawal', 1, 15, 4, '2020-01-26', NULL, NULL, '0.00', NULL, NULL, NULL, NULL, '0.00', '0.00', '0.00', '0.00', NULL, NULL, '0.00', NULL, NULL, '0.00', '0.00', 'rd_reg', 0, 1, 1, 0, NULL, 0, 'WD', 'Restday', 'MANUAL', 'RELEASED', 'Admin', 'Payroll Admin', 0, '2020-01-30 05:15:18', '2020-03-04 02:41:08', NULL, NULL),
(575, '202000007', '2017-083', 'Advincula, Kris Nino Marco Sawal', 1, 15, 4, '2020-01-28', '2020-01-28 09:29:07', NULL, '0.00', '2020-01-28 12:00:00', '2020-01-28 13:00:00', '2020-01-28 09:29:07', '2020-01-28 19:29:07', '1.00', '0.00', '0.00', '0.00', NULL, NULL, '0.00', NULL, NULL, '0.00', '0.00', 'reg', 0, 1, 1, 0, NULL, 0, 'WD', 'No Time Out', 'MANUAL', 'RELEASED', 'Admin', 'Payroll Admin', 0, '2020-01-30 05:15:18', '2020-03-04 02:41:08', NULL, NULL),
(576, '202000007', '2017-083', 'Advincula, Kris Nino Marco Sawal', 1, 15, 4, '2020-01-29', '2020-01-29 13:01:32', NULL, '0.00', '2020-01-29 12:00:00', '2020-01-29 13:00:00', '2020-01-29 13:01:32', '2020-01-29 23:01:32', '1.00', '0.00', '0.00', '0.00', NULL, NULL, '0.00', NULL, NULL, '0.00', '0.00', 'reg', 0, 1, 1, 0, NULL, 0, 'WD', 'No Time Out', 'MANUAL', 'RELEASED', 'Admin', 'Payroll Admin', 0, '2020-01-30 05:15:18', '2020-03-04 02:41:08', NULL, NULL),
(577, '202000007', '2017-083', 'Advincula, Kris Nino Marco Sawal', 1, 15, 4, '2020-01-30', '2020-01-30 11:57:33', NULL, '0.00', '2020-01-30 12:00:00', '2020-01-30 13:00:00', '2020-01-30 11:57:33', '2020-01-30 21:57:33', '1.00', '0.00', '0.00', '0.00', NULL, NULL, '0.00', NULL, NULL, '0.00', '0.00', 'reg', 0, 1, 1, 0, NULL, 0, 'WD', 'No Time Out', 'MANUAL', 'RELEASED', 'Admin', 'Payroll Admin', 0, '2020-01-30 05:15:18', '2020-03-04 02:41:08', NULL, NULL),
(578, NULL, '2000-017', 'Araquel, Joe marie Basada', 1, 14, 10, '2020-01-01', NULL, NULL, '0.00', '2020-01-01 12:00:00', '2020-01-01 13:00:00', '2020-01-01 08:30:00', '2020-01-01 18:30:00', '1.00', '0.00', '0.00', '0.00', NULL, NULL, '0.00', NULL, NULL, '0.00', '0.00', 'reg', 0, 1, 1, 0, NULL, 0, 'WD', 'Absent', 'MANUAL', 'INPROCESS', 'Admin', NULL, 0, '2020-01-30 05:15:18', '2020-01-30 05:15:18', NULL, NULL),
(579, NULL, '2000-017', 'Araquel, Joe marie Basada', 1, 14, 10, '2020-01-02', NULL, NULL, '0.00', '2020-01-02 12:00:00', '2020-01-02 13:00:00', '2020-01-02 08:30:00', '2020-01-02 18:30:00', '1.00', '0.00', '0.00', '0.00', NULL, NULL, '0.00', NULL, NULL, '0.00', '0.00', 'reg', 0, 1, 1, 0, NULL, 0, 'WD', 'Absent', 'MANUAL', 'INPROCESS', 'Admin', NULL, 0, '2020-01-30 05:15:18', '2020-01-30 05:15:18', NULL, NULL),
(580, NULL, '2000-017', 'Araquel, Joe marie Basada', 1, 14, 10, '2020-01-03', NULL, NULL, '0.00', '2020-01-03 12:00:00', '2020-01-03 13:00:00', '2020-01-03 08:30:00', '2020-01-03 18:30:00', '1.00', '0.00', '0.00', '0.00', NULL, NULL, '0.00', NULL, NULL, '0.00', '0.00', 'reg', 0, 1, 1, 0, NULL, 0, 'WD', 'Absent', 'MANUAL', 'INPROCESS', 'Admin', NULL, 0, '2020-01-30 05:15:18', '2020-01-30 05:15:18', NULL, NULL),
(581, NULL, '2000-017', 'Araquel, Joe marie Basada', 1, 14, 10, '2020-01-04', NULL, NULL, '0.00', NULL, NULL, NULL, NULL, '0.00', '0.00', '0.00', '0.00', NULL, NULL, '0.00', NULL, NULL, '0.00', '0.00', 'rd_reg', 0, 1, 1, 0, NULL, 0, 'WD', 'Restday', 'MANUAL', 'INPROCESS', 'Admin', NULL, 0, '2020-01-30 05:15:18', '2020-01-30 05:15:18', NULL, NULL),
(582, NULL, '2000-017', 'Araquel, Joe marie Basada', 1, 14, 10, '2020-01-05', NULL, NULL, '0.00', NULL, NULL, NULL, NULL, '0.00', '0.00', '0.00', '0.00', NULL, NULL, '0.00', NULL, NULL, '0.00', '0.00', 'rd_reg', 0, 1, 1, 0, NULL, 0, 'WD', 'Restday', 'MANUAL', 'INPROCESS', 'Admin', NULL, 0, '2020-01-30 05:15:19', '2020-01-30 05:15:19', NULL, NULL),
(583, NULL, '2000-017', 'Araquel, Joe marie Basada', 1, 14, 10, '2020-01-06', NULL, NULL, '0.00', '2020-01-06 12:00:00', '2020-01-06 13:00:00', '2020-01-06 08:30:00', '2020-01-06 18:30:00', '1.00', '0.00', '0.00', '0.00', NULL, NULL, '0.00', NULL, NULL, '0.00', '0.00', 'reg', 0, 1, 1, 0, NULL, 0, 'WD', 'Absent', 'MANUAL', 'INPROCESS', 'Admin', NULL, 0, '2020-01-30 05:15:19', '2020-01-30 05:15:19', NULL, NULL),
(584, NULL, '2000-017', 'Araquel, Joe marie Basada', 1, 14, 10, '2020-01-07', NULL, NULL, '0.00', '2020-01-07 12:00:00', '2020-01-07 13:00:00', '2020-01-07 08:30:00', '2020-01-07 18:30:00', '1.00', '0.00', '0.00', '0.00', NULL, NULL, '0.00', NULL, NULL, '0.00', '0.00', 'reg', 0, 1, 1, 0, NULL, 0, 'WD', 'Absent', 'MANUAL', 'INPROCESS', 'Admin', NULL, 0, '2020-01-30 05:15:19', '2020-01-30 05:15:19', NULL, NULL),
(585, NULL, '2000-017', 'Araquel, Joe marie Basada', 1, 14, 10, '2020-01-08', NULL, NULL, '0.00', '2020-01-08 12:00:00', '2020-01-08 13:00:00', '2020-01-08 08:30:00', '2020-01-08 18:30:00', '1.00', '0.00', '0.00', '0.00', NULL, NULL, '0.00', NULL, NULL, '0.00', '0.00', 'reg', 0, 1, 1, 0, NULL, 0, 'WD', 'Absent', 'MANUAL', 'INPROCESS', 'Admin', NULL, 0, '2020-01-30 05:15:19', '2020-01-30 05:15:19', NULL, NULL),
(586, NULL, '2000-017', 'Araquel, Joe marie Basada', 1, 14, 10, '2020-01-09', NULL, NULL, '0.00', '2020-01-09 12:00:00', '2020-01-09 13:00:00', '2020-01-09 08:30:00', '2020-01-09 18:30:00', '1.00', '0.00', '0.00', '0.00', NULL, NULL, '0.00', NULL, NULL, '0.00', '0.00', 'reg', 0, 1, 1, 0, NULL, 0, 'WD', 'Absent', 'MANUAL', 'INPROCESS', 'Admin', NULL, 0, '2020-01-30 05:15:19', '2020-01-30 05:15:19', NULL, NULL),
(587, NULL, '2000-017', 'Araquel, Joe marie Basada', 1, 14, 10, '2020-01-10', NULL, NULL, '0.00', '2020-01-10 12:00:00', '2020-01-10 13:00:00', '2020-01-10 08:30:00', '2020-01-10 18:30:00', '1.00', '0.00', '0.00', '0.00', NULL, NULL, '0.00', NULL, NULL, '0.00', '0.00', 'reg', 0, 1, 1, 0, NULL, 0, 'WD', 'Absent', 'MANUAL', 'INPROCESS', 'Admin', NULL, 0, '2020-01-30 05:15:19', '2020-01-30 05:15:19', NULL, NULL),
(588, NULL, '2000-017', 'Araquel, Joe marie Basada', 1, 14, 10, '2020-01-11', NULL, NULL, '0.00', NULL, NULL, NULL, NULL, '0.00', '0.00', '0.00', '0.00', NULL, NULL, '0.00', NULL, NULL, '0.00', '0.00', 'rd_reg', 0, 1, 1, 0, NULL, 0, 'WD', 'Restday', 'MANUAL', 'INPROCESS', 'Admin', NULL, 0, '2020-01-30 05:15:19', '2020-01-30 05:15:19', NULL, NULL),
(589, NULL, '2000-017', 'Araquel, Joe marie Basada', 1, 14, 10, '2020-01-12', NULL, NULL, '0.00', NULL, NULL, NULL, NULL, '0.00', '0.00', '0.00', '0.00', NULL, NULL, '0.00', NULL, NULL, '0.00', '0.00', 'rd_reg', 0, 1, 1, 0, NULL, 0, 'WD', 'Restday', 'MANUAL', 'INPROCESS', 'Admin', NULL, 0, '2020-01-30 05:15:19', '2020-01-30 05:15:19', NULL, NULL),
(590, NULL, '2000-017', 'Araquel, Joe marie Basada', 1, 14, 10, '2020-01-13', NULL, NULL, '0.00', '2020-01-13 12:00:00', '2020-01-13 13:00:00', '2020-01-13 08:30:00', '2020-01-13 18:30:00', '1.00', '0.00', '0.00', '0.00', NULL, NULL, '0.00', NULL, NULL, '0.00', '0.00', 'reg', 0, 1, 1, 0, NULL, 0, 'WD', 'Absent', 'MANUAL', 'INPROCESS', 'Admin', NULL, 0, '2020-01-30 05:15:19', '2020-01-30 05:15:19', NULL, NULL),
(591, NULL, '2000-017', 'Araquel, Joe marie Basada', 1, 14, 10, '2020-01-14', NULL, NULL, '0.00', '2020-01-14 12:00:00', '2020-01-14 13:00:00', '2020-01-14 08:30:00', '2020-01-14 18:30:00', '1.00', '0.00', '0.00', '0.00', NULL, NULL, '0.00', NULL, NULL, '0.00', '0.00', 'reg', 0, 1, 1, 0, NULL, 0, 'WD', 'Absent', 'MANUAL', 'INPROCESS', 'Admin', NULL, 0, '2020-01-30 05:15:19', '2020-01-30 05:15:19', NULL, NULL),
(592, NULL, '2000-017', 'Araquel, Joe marie Basada', 1, 14, 10, '2020-01-15', NULL, NULL, '0.00', '2020-01-15 12:00:00', '2020-01-15 13:00:00', '2020-01-15 08:30:00', '2020-01-15 18:30:00', '1.00', '0.00', '0.00', '0.00', NULL, NULL, '0.00', NULL, NULL, '0.00', '0.00', 'reg', 0, 1, 1, 0, NULL, 0, 'WD', 'Absent', 'MANUAL', 'INPROCESS', 'Admin', NULL, 0, '2020-01-30 05:15:19', '2020-01-30 05:15:19', NULL, NULL),
(593, NULL, '2000-017', 'Araquel, Joe marie Basada', 1, 14, 10, '2020-01-16', NULL, NULL, '0.00', '2020-01-16 12:00:00', '2020-01-16 13:00:00', '2020-01-16 08:30:00', '2020-01-16 18:30:00', '1.00', '0.00', '0.00', '0.00', NULL, NULL, '0.00', NULL, NULL, '0.00', '0.00', 'reg', 0, 1, 1, 0, NULL, 0, 'WD', 'Absent', 'MANUAL', 'INPROCESS', 'Admin', NULL, 0, '2020-01-30 05:15:19', '2020-01-30 05:15:19', NULL, NULL),
(594, NULL, '2000-017', 'Araquel, Joe marie Basada', 1, 14, 10, '2020-01-17', NULL, NULL, '0.00', '2020-01-17 12:00:00', '2020-01-17 13:00:00', '2020-01-17 08:30:00', '2020-01-17 18:30:00', '1.00', '0.00', '0.00', '0.00', NULL, NULL, '0.00', NULL, NULL, '0.00', '0.00', 'reg', 0, 1, 1, 0, NULL, 0, 'WD', 'Absent', 'MANUAL', 'INPROCESS', 'Admin', NULL, 0, '2020-01-30 05:15:19', '2020-01-30 05:15:19', NULL, NULL),
(595, NULL, '2000-017', 'Araquel, Joe marie Basada', 1, 14, 10, '2020-01-18', NULL, NULL, '0.00', NULL, NULL, NULL, NULL, '0.00', '0.00', '0.00', '0.00', NULL, NULL, '0.00', NULL, NULL, '0.00', '0.00', 'rd_reg', 0, 1, 1, 0, NULL, 0, 'WD', 'Restday', 'MANUAL', 'INPROCESS', 'Admin', NULL, 0, '2020-01-30 05:15:20', '2020-01-30 05:15:20', NULL, NULL),
(596, NULL, '2000-017', 'Araquel, Joe marie Basada', 1, 14, 10, '2020-01-19', NULL, NULL, '0.00', NULL, NULL, NULL, NULL, '0.00', '0.00', '0.00', '0.00', NULL, NULL, '0.00', NULL, NULL, '0.00', '0.00', 'rd_reg', 0, 1, 1, 0, NULL, 0, 'WD', 'Restday', 'MANUAL', 'INPROCESS', 'Admin', NULL, 0, '2020-01-30 05:15:20', '2020-01-30 05:15:20', NULL, NULL),
(597, NULL, '2000-017', 'Araquel, Joe marie Basada', 1, 14, 10, '2020-01-20', NULL, NULL, '0.00', '2020-01-20 12:00:00', '2020-01-20 13:00:00', '2020-01-20 08:30:00', '2020-01-20 18:30:00', '1.00', '0.00', '0.00', '0.00', NULL, NULL, '0.00', NULL, NULL, '0.00', '0.00', 'reg', 0, 1, 1, 0, NULL, 0, 'WD', 'Absent', 'MANUAL', 'INPROCESS', 'Admin', NULL, 0, '2020-01-30 05:15:20', '2020-01-30 05:15:20', NULL, NULL),
(598, NULL, '2000-017', 'Araquel, Joe marie Basada', 1, 14, 10, '2020-01-21', NULL, NULL, '0.00', '2020-01-21 12:00:00', '2020-01-21 13:00:00', '2020-01-21 08:30:00', '2020-01-21 18:30:00', '1.00', '0.00', '0.00', '0.00', NULL, NULL, '0.00', NULL, NULL, '0.00', '0.00', 'reg', 0, 1, 1, 0, NULL, 0, 'WD', 'Absent', 'MANUAL', 'INPROCESS', 'Admin', NULL, 0, '2020-01-30 05:15:20', '2020-01-30 05:15:20', NULL, NULL),
(599, NULL, '2000-017', 'Araquel, Joe marie Basada', 1, 14, 10, '2020-01-22', NULL, NULL, '0.00', '2020-01-22 12:00:00', '2020-01-22 13:00:00', '2020-01-22 08:30:00', '2020-01-22 18:30:00', '1.00', '0.00', '0.00', '0.00', NULL, NULL, '0.00', NULL, NULL, '0.00', '0.00', 'reg', 0, 1, 1, 0, NULL, 0, 'WD', 'Absent', 'MANUAL', 'INPROCESS', 'Admin', NULL, 0, '2020-01-30 05:15:20', '2020-01-30 05:15:20', NULL, NULL),
(600, NULL, '2000-017', 'Araquel, Joe marie Basada', 1, 14, 10, '2020-01-23', NULL, NULL, '0.00', '2020-01-23 12:00:00', '2020-01-23 13:00:00', '2020-01-23 08:30:00', '2020-01-23 18:30:00', '1.00', '0.00', '0.00', '0.00', NULL, NULL, '0.00', NULL, NULL, '0.00', '0.00', 'reg', 0, 1, 1, 0, NULL, 0, 'WD', 'Absent', 'MANUAL', 'INPROCESS', 'Admin', NULL, 0, '2020-01-30 05:15:20', '2020-01-30 05:15:20', NULL, NULL),
(601, NULL, '2000-017', 'Araquel, Joe marie Basada', 1, 14, 10, '2020-01-24', NULL, NULL, '0.00', '2020-01-24 12:00:00', '2020-01-24 13:00:00', '2020-01-24 08:30:00', '2020-01-24 18:30:00', '1.00', '0.00', '0.00', '0.00', NULL, NULL, '0.00', NULL, NULL, '0.00', '0.00', 'reg', 0, 1, 1, 0, NULL, 0, 'WD', 'Absent', 'MANUAL', 'INPROCESS', 'Admin', NULL, 0, '2020-01-30 05:15:20', '2020-01-30 05:15:20', NULL, NULL),
(602, NULL, '2000-017', 'Araquel, Joe marie Basada', 1, 14, 10, '2020-01-25', NULL, NULL, '0.00', NULL, NULL, NULL, NULL, '0.00', '0.00', '0.00', '0.00', NULL, NULL, '0.00', NULL, NULL, '0.00', '0.00', 'rd_reg', 0, 1, 1, 0, NULL, 0, 'WD', 'Restday', 'MANUAL', 'INPROCESS', 'Admin', NULL, 0, '2020-01-30 05:15:20', '2020-01-30 05:15:20', NULL, NULL),
(603, NULL, '2000-017', 'Araquel, Joe marie Basada', 1, 14, 10, '2020-01-26', NULL, NULL, '0.00', NULL, NULL, NULL, NULL, '0.00', '0.00', '0.00', '0.00', NULL, NULL, '0.00', NULL, NULL, '0.00', '0.00', 'rd_reg', 0, 1, 1, 0, NULL, 0, 'WD', 'Restday', 'MANUAL', 'INPROCESS', 'Admin', NULL, 0, '2020-01-30 05:15:20', '2020-01-30 05:15:20', NULL, NULL),
(604, NULL, '2000-017', 'Araquel, Joe marie Basada', 1, 14, 10, '2020-01-28', NULL, NULL, '0.00', '2020-01-28 12:00:00', '2020-01-28 13:00:00', '2020-01-28 08:30:00', '2020-01-28 18:30:00', '1.00', '0.00', '0.00', '0.00', NULL, NULL, '0.00', NULL, NULL, '0.00', '0.00', 'reg', 0, 1, 1, 0, NULL, 0, 'WD', 'Absent', 'MANUAL', 'INPROCESS', 'Admin', NULL, 0, '2020-01-30 05:15:20', '2020-01-30 05:15:20', NULL, NULL),
(605, NULL, '2000-017', 'Araquel, Joe marie Basada', 1, 14, 10, '2020-01-29', NULL, NULL, '0.00', '2020-01-29 12:00:00', '2020-01-29 13:00:00', '2020-01-29 08:30:00', '2020-01-29 18:30:00', '1.00', '0.00', '0.00', '0.00', NULL, NULL, '0.00', NULL, NULL, '0.00', '0.00', 'reg', 0, 1, 1, 0, NULL, 0, 'WD', 'Absent', 'MANUAL', 'INPROCESS', 'Admin', NULL, 0, '2020-01-30 05:15:20', '2020-01-30 05:15:20', NULL, NULL);
INSERT INTO `date_and_time_records` (`id`, `register_number`, `company_id`, `employee_name`, `company_ind`, `group_ind`, `sched_template_id`, `sched_date`, `date_time_in`, `date_time_out`, `reg_total_hrs`, `lunch_out`, `lunch_in`, `schedule_shift_in`, `schedule_shift_out`, `lunch_durations_hrs`, `over_break_min`, `late_min`, `undertime_min`, `ot_time_in`, `ot_time_out`, `ot_total_hrs`, `night_diff_in`, `night_diff_out`, `night_diff_total_hrs`, `night_diff_total_ot_hrs`, `day_types`, `work_on_holiday`, `before_holiday`, `after_holiday`, `leaved`, `leave_types`, `leave_wpay`, `half_day`, `remarks`, `insystem`, `payroll_status`, `created_by`, `lu_by`, `deleted`, `created_at`, `updated_at`, `device_id_in`, `device_id_out`) VALUES
(606, NULL, '2000-017', 'Araquel, Joe marie Basada', 1, 14, 10, '2020-01-30', NULL, NULL, '0.00', '2020-01-30 12:00:00', '2020-01-30 13:00:00', '2020-01-30 08:30:00', '2020-01-30 18:30:00', '1.00', '0.00', '0.00', '0.00', NULL, NULL, '0.00', NULL, NULL, '0.00', '0.00', 'reg', 0, 1, 1, 0, NULL, 0, 'WD', 'Absent', 'MANUAL', 'INPROCESS', 'Admin', NULL, 0, '2020-01-30 05:15:20', '2020-01-30 05:15:20', NULL, NULL),
(607, NULL, '2018-004', 'Argales, Rome Aubrey Cruz', 1, 15, 13, '2020-01-01', NULL, NULL, '0.00', '2020-01-01 12:00:00', '2020-01-01 13:00:00', NULL, NULL, '1.00', '0.00', '0.00', '0.00', NULL, NULL, '0.00', NULL, NULL, '0.00', '0.00', 'reg', 0, 1, 1, 0, NULL, 0, 'WD', 'Absent', 'MANUAL', 'INPROCESS', 'Admin', NULL, 0, '2020-01-30 05:15:20', '2020-01-30 05:15:20', NULL, NULL),
(608, NULL, '2018-004', 'Argales, Rome Aubrey Cruz', 1, 15, 13, '2020-01-02', NULL, NULL, '0.00', '2020-01-02 12:00:00', '2020-01-02 13:00:00', NULL, NULL, '1.00', '0.00', '0.00', '0.00', NULL, NULL, '0.00', NULL, NULL, '0.00', '0.00', 'reg', 0, 1, 1, 0, NULL, 0, 'WD', 'Absent', 'MANUAL', 'INPROCESS', 'Admin', NULL, 0, '2020-01-30 05:15:20', '2020-01-30 05:15:20', NULL, NULL),
(609, NULL, '2018-004', 'Argales, Rome Aubrey Cruz', 1, 15, 13, '2020-01-03', '2020-01-03 13:02:10', NULL, '0.00', '2020-01-03 12:00:00', '2020-01-03 13:00:00', '2020-01-03 13:02:10', '2020-01-03 23:02:10', '1.00', '0.00', '0.00', '0.00', NULL, NULL, '0.00', NULL, NULL, '0.00', '0.00', 'reg', 0, 1, 1, 0, NULL, 0, 'WD', 'No Time Out', 'MANUAL', 'INPROCESS', 'Admin', NULL, 0, '2020-01-30 05:15:21', '2020-01-30 05:15:21', NULL, NULL),
(610, NULL, '2018-004', 'Argales, Rome Aubrey Cruz', 1, 15, 13, '2020-01-04', NULL, NULL, '0.00', '2020-01-04 12:00:00', '2020-01-04 13:00:00', NULL, NULL, '1.00', '0.00', '0.00', '0.00', NULL, NULL, '0.00', NULL, NULL, '0.00', '0.00', 'reg', 0, 1, 1, 0, NULL, 0, 'WD', 'Absent', 'MANUAL', 'INPROCESS', 'Admin', NULL, 0, '2020-01-30 05:15:21', '2020-01-30 05:15:21', NULL, NULL),
(611, NULL, '2018-004', 'Argales, Rome Aubrey Cruz', 1, 15, 13, '2020-01-05', '2020-01-05 12:00:18', NULL, '0.00', NULL, NULL, NULL, NULL, '0.00', '0.00', '0.00', '0.00', NULL, NULL, '0.00', NULL, NULL, '0.00', '0.00', 'rd_reg', 0, 1, 1, 0, NULL, 0, 'WD', 'Restday', 'MANUAL', 'INPROCESS', 'Admin', NULL, 0, '2020-01-30 05:15:21', '2020-01-30 05:15:21', NULL, NULL),
(612, NULL, '2018-004', 'Argales, Rome Aubrey Cruz', 1, 15, 13, '2020-01-06', NULL, NULL, '0.00', NULL, NULL, NULL, NULL, '0.00', '0.00', '0.00', '0.00', NULL, NULL, '0.00', NULL, NULL, '0.00', '0.00', 'rd_reg', 0, 1, 1, 0, NULL, 0, 'WD', 'Restday', 'MANUAL', 'INPROCESS', 'Admin', NULL, 0, '2020-01-30 05:15:21', '2020-01-30 05:15:21', NULL, NULL),
(613, NULL, '2018-004', 'Argales, Rome Aubrey Cruz', 1, 15, 13, '2020-01-07', '2020-01-07 12:56:51', NULL, '0.00', '2020-01-07 12:00:00', '2020-01-07 13:00:00', '2020-01-07 12:56:51', '2020-01-07 22:56:51', '1.00', '0.00', '0.00', '0.00', NULL, NULL, '0.00', NULL, NULL, '0.00', '0.00', 'reg', 0, 1, 1, 0, NULL, 0, 'WD', 'No Time Out', 'MANUAL', 'INPROCESS', 'Admin', NULL, 0, '2020-01-30 05:15:21', '2020-01-30 05:15:21', NULL, NULL),
(614, NULL, '2018-004', 'Argales, Rome Aubrey Cruz', 1, 15, 13, '2020-01-08', NULL, NULL, '0.00', '2020-01-08 12:00:00', '2020-01-08 13:00:00', NULL, NULL, '1.00', '0.00', '0.00', '0.00', NULL, NULL, '0.00', NULL, NULL, '0.00', '0.00', 'reg', 0, 1, 1, 0, NULL, 0, 'WD', 'Absent', 'MANUAL', 'INPROCESS', 'Admin', NULL, 0, '2020-01-30 05:15:21', '2020-01-30 05:15:21', NULL, NULL),
(615, NULL, '2018-004', 'Argales, Rome Aubrey Cruz', 1, 15, 13, '2020-01-09', NULL, NULL, '0.00', '2020-01-09 12:00:00', '2020-01-09 13:00:00', NULL, NULL, '1.00', '0.00', '0.00', '0.00', NULL, NULL, '0.00', NULL, NULL, '0.00', '0.00', 'reg', 0, 1, 1, 0, NULL, 0, 'WD', 'Absent', 'MANUAL', 'INPROCESS', 'Admin', NULL, 0, '2020-01-30 05:15:21', '2020-01-30 05:15:21', NULL, NULL),
(616, NULL, '2018-004', 'Argales, Rome Aubrey Cruz', 1, 15, 13, '2020-01-10', NULL, NULL, '0.00', '2020-01-10 12:00:00', '2020-01-10 13:00:00', NULL, NULL, '1.00', '0.00', '0.00', '0.00', NULL, NULL, '0.00', NULL, NULL, '0.00', '0.00', 'reg', 0, 1, 1, 0, NULL, 0, 'WD', 'Absent', 'MANUAL', 'INPROCESS', 'Admin', NULL, 0, '2020-01-30 05:15:21', '2020-01-30 05:15:21', NULL, NULL),
(617, NULL, '2018-004', 'Argales, Rome Aubrey Cruz', 1, 15, 13, '2020-01-11', NULL, NULL, '0.00', '2020-01-11 12:00:00', '2020-01-11 13:00:00', NULL, NULL, '1.00', '0.00', '0.00', '0.00', NULL, NULL, '0.00', NULL, NULL, '0.00', '0.00', 'reg', 0, 1, 1, 0, NULL, 0, 'WD', 'Absent', 'MANUAL', 'INPROCESS', 'Admin', NULL, 0, '2020-01-30 05:15:21', '2020-01-30 05:15:21', NULL, NULL),
(618, NULL, '2018-004', 'Argales, Rome Aubrey Cruz', 1, 15, 13, '2020-01-12', NULL, NULL, '0.00', NULL, NULL, NULL, NULL, '0.00', '0.00', '0.00', '0.00', NULL, NULL, '0.00', NULL, NULL, '0.00', '0.00', 'rd_reg', 0, 1, 1, 0, NULL, 0, 'WD', 'Restday', 'MANUAL', 'INPROCESS', 'Admin', NULL, 0, '2020-01-30 05:15:21', '2020-01-30 05:15:21', NULL, NULL),
(619, NULL, '2018-004', 'Argales, Rome Aubrey Cruz', 1, 15, 13, '2020-01-13', NULL, NULL, '0.00', NULL, NULL, NULL, NULL, '0.00', '0.00', '0.00', '0.00', NULL, NULL, '0.00', NULL, NULL, '0.00', '0.00', 'rd_reg', 0, 1, 1, 0, NULL, 0, 'WD', 'Restday', 'MANUAL', 'INPROCESS', 'Admin', NULL, 0, '2020-01-30 05:15:22', '2020-01-30 05:15:22', NULL, NULL),
(620, NULL, '2018-004', 'Argales, Rome Aubrey Cruz', 1, 15, 13, '2020-01-14', NULL, NULL, '0.00', '2020-01-14 12:00:00', '2020-01-14 13:00:00', NULL, NULL, '1.00', '0.00', '0.00', '0.00', NULL, NULL, '0.00', NULL, NULL, '0.00', '0.00', 'reg', 0, 1, 1, 0, NULL, 0, 'WD', 'Absent', 'MANUAL', 'INPROCESS', 'Admin', NULL, 0, '2020-01-30 05:15:22', '2020-01-30 05:15:22', NULL, NULL),
(621, NULL, '2018-004', 'Argales, Rome Aubrey Cruz', 1, 15, 13, '2020-01-15', NULL, NULL, '0.00', '2020-01-15 12:00:00', '2020-01-15 13:00:00', NULL, NULL, '1.00', '0.00', '0.00', '0.00', NULL, NULL, '0.00', NULL, NULL, '0.00', '0.00', 'reg', 0, 1, 1, 0, NULL, 0, 'WD', 'Absent', 'MANUAL', 'INPROCESS', 'Admin', NULL, 0, '2020-01-30 05:15:22', '2020-01-30 05:15:22', NULL, NULL),
(622, NULL, '2018-004', 'Argales, Rome Aubrey Cruz', 1, 15, 13, '2020-01-16', NULL, NULL, '0.00', '2020-01-16 12:00:00', '2020-01-16 13:00:00', NULL, NULL, '1.00', '0.00', '0.00', '0.00', NULL, NULL, '0.00', NULL, NULL, '0.00', '0.00', 'reg', 0, 1, 1, 0, NULL, 0, 'WD', 'Absent', 'MANUAL', 'INPROCESS', 'Admin', NULL, 0, '2020-01-30 05:15:22', '2020-01-30 05:15:22', NULL, NULL),
(623, NULL, '2018-004', 'Argales, Rome Aubrey Cruz', 1, 15, 13, '2020-01-17', NULL, NULL, '0.00', '2020-01-17 12:00:00', '2020-01-17 13:00:00', NULL, NULL, '1.00', '0.00', '0.00', '0.00', NULL, NULL, '0.00', NULL, NULL, '0.00', '0.00', 'reg', 0, 1, 1, 0, NULL, 0, 'WD', 'Absent', 'MANUAL', 'INPROCESS', 'Admin', NULL, 0, '2020-01-30 05:15:22', '2020-01-30 05:15:22', NULL, NULL),
(624, NULL, '2018-004', 'Argales, Rome Aubrey Cruz', 1, 15, 13, '2020-01-18', NULL, NULL, '0.00', '2020-01-18 12:00:00', '2020-01-18 13:00:00', NULL, NULL, '1.00', '0.00', '0.00', '0.00', NULL, NULL, '0.00', NULL, NULL, '0.00', '0.00', 'reg', 0, 1, 1, 0, NULL, 0, 'WD', 'Absent', 'MANUAL', 'INPROCESS', 'Admin', NULL, 0, '2020-01-30 05:15:22', '2020-01-30 05:15:22', NULL, NULL),
(625, NULL, '2018-004', 'Argales, Rome Aubrey Cruz', 1, 15, 13, '2020-01-19', NULL, NULL, '0.00', NULL, NULL, NULL, NULL, '0.00', '0.00', '0.00', '0.00', NULL, NULL, '0.00', NULL, NULL, '0.00', '0.00', 'rd_reg', 0, 1, 1, 0, NULL, 0, 'WD', 'Restday', 'MANUAL', 'INPROCESS', 'Admin', NULL, 0, '2020-01-30 05:15:22', '2020-01-30 05:15:22', NULL, NULL),
(626, NULL, '2018-004', 'Argales, Rome Aubrey Cruz', 1, 15, 13, '2020-01-20', '2020-01-20 12:17:57', '2020-01-20 14:02:44', '1.75', NULL, NULL, NULL, NULL, '0.00', '0.00', '0.00', '0.00', NULL, NULL, '0.00', NULL, NULL, '0.00', '0.00', 'rd_reg', 0, 1, 1, 0, NULL, 0, 'WD', 'Restday', 'MANUAL', 'INPROCESS', 'Admin', NULL, 0, '2020-01-30 05:15:22', '2020-01-30 05:15:22', NULL, NULL),
(627, '202000007', '2018-004', 'Argales, Rome Aubrey Cruz', 1, 15, 13, '2020-01-21', NULL, '2020-01-21 05:28:29', '0.00', '2020-01-21 12:00:00', '2020-01-21 13:00:00', NULL, NULL, '1.00', '0.00', '0.00', '0.00', NULL, NULL, '0.00', NULL, NULL, '0.00', '0.00', 'reg', 0, 1, 1, 0, NULL, 0, 'WD', 'No Time In', 'MANUAL', 'RELEASED', 'Admin', 'Payroll Admin', 0, '2020-01-30 05:15:22', '2020-03-04 02:41:08', NULL, NULL),
(628, '202000007', '2018-004', 'Argales, Rome Aubrey Cruz', 1, 15, 13, '2020-01-22', '2020-01-22 14:53:40', NULL, '0.00', '2020-01-22 12:00:00', '2020-01-22 13:00:00', '2020-01-22 14:53:40', '2020-01-23 00:53:40', '1.00', '0.00', '0.00', '0.00', NULL, NULL, '0.00', NULL, NULL, '0.00', '0.00', 'reg', 0, 1, 1, 0, NULL, 0, 'WD', 'No Time Out', 'MANUAL', 'RELEASED', 'Admin', 'Payroll Admin', 0, '2020-01-30 05:15:22', '2020-03-04 02:41:08', NULL, NULL),
(629, '202000007', '2018-004', 'Argales, Rome Aubrey Cruz', 1, 15, 13, '2020-01-23', NULL, NULL, '0.00', '2020-01-23 12:00:00', '2020-01-23 13:00:00', NULL, NULL, '1.00', '0.00', '0.00', '0.00', NULL, NULL, '0.00', NULL, NULL, '0.00', '0.00', 'reg', 0, 1, 1, 0, NULL, 0, 'WD', 'Absent', 'MANUAL', 'RELEASED', 'Admin', 'Payroll Admin', 0, '2020-01-30 05:15:22', '2020-03-04 02:41:08', NULL, NULL),
(630, '202000007', '2018-004', 'Argales, Rome Aubrey Cruz', 1, 15, 13, '2020-01-24', NULL, NULL, '0.00', '2020-01-24 12:00:00', '2020-01-24 13:00:00', NULL, NULL, '1.00', '0.00', '0.00', '0.00', NULL, NULL, '0.00', NULL, NULL, '0.00', '0.00', 'reg', 0, 1, 1, 0, NULL, 0, 'WD', 'Absent', 'MANUAL', 'RELEASED', 'Admin', 'Payroll Admin', 0, '2020-01-30 05:15:22', '2020-03-04 02:41:08', NULL, NULL),
(631, '202000007', '2018-004', 'Argales, Rome Aubrey Cruz', 1, 15, 13, '2020-01-25', NULL, NULL, '0.00', '2020-01-25 12:00:00', '2020-01-25 13:00:00', NULL, NULL, '1.00', '0.00', '0.00', '0.00', NULL, NULL, '0.00', NULL, NULL, '0.00', '0.00', 'reg', 0, 1, 1, 0, NULL, 0, 'WD', 'Absent', 'MANUAL', 'RELEASED', 'Admin', 'Payroll Admin', 0, '2020-01-30 05:15:23', '2020-03-04 02:41:08', NULL, NULL),
(632, '202000007', '2018-004', 'Argales, Rome Aubrey Cruz', 1, 15, 13, '2020-01-26', NULL, NULL, '0.00', NULL, NULL, NULL, NULL, '0.00', '0.00', '0.00', '0.00', NULL, NULL, '0.00', NULL, NULL, '0.00', '0.00', 'rd_reg', 0, 1, 1, 0, NULL, 0, 'WD', 'Restday', 'MANUAL', 'RELEASED', 'Admin', 'Payroll Admin', 0, '2020-01-30 05:15:23', '2020-03-04 02:41:08', NULL, NULL),
(633, '202000007', '2018-004', 'Argales, Rome Aubrey Cruz', 1, 15, 13, '2020-01-28', NULL, NULL, '0.00', '2020-01-28 12:00:00', '2020-01-28 13:00:00', NULL, NULL, '1.00', '0.00', '0.00', '0.00', NULL, NULL, '0.00', NULL, NULL, '0.00', '0.00', 'reg', 0, 1, 1, 0, NULL, 0, 'WD', 'Absent', 'MANUAL', 'RELEASED', 'Admin', 'Payroll Admin', 0, '2020-01-30 05:15:23', '2020-03-04 02:41:08', NULL, NULL),
(634, '202000007', '2018-004', 'Argales, Rome Aubrey Cruz', 1, 15, 13, '2020-01-29', NULL, NULL, '0.00', '2020-01-29 12:00:00', '2020-01-29 13:00:00', NULL, NULL, '1.00', '0.00', '0.00', '0.00', NULL, NULL, '0.00', NULL, NULL, '0.00', '0.00', 'reg', 0, 1, 1, 0, NULL, 0, 'WD', 'Absent', 'MANUAL', 'RELEASED', 'Admin', 'Payroll Admin', 0, '2020-01-30 05:15:23', '2020-03-04 02:41:08', NULL, NULL),
(635, '202000007', '2018-004', 'Argales, Rome Aubrey Cruz', 1, 15, 13, '2020-01-30', NULL, NULL, '0.00', '2020-01-30 12:00:00', '2020-01-30 13:00:00', NULL, NULL, '1.00', '0.00', '0.00', '0.00', NULL, NULL, '0.00', NULL, NULL, '0.00', '0.00', 'reg', 0, 1, 1, 0, NULL, 0, 'WD', 'Absent', 'MANUAL', 'RELEASED', 'Admin', 'Payroll Admin', 0, '2020-01-30 05:15:23', '2020-03-04 02:41:08', NULL, NULL),
(636, NULL, '2018-040', 'BIÃ‘AS, Kenneth Joshua Lope', 1, 15, 4, '2020-01-01', NULL, NULL, '0.00', '2020-01-01 12:00:00', '2020-01-01 13:00:00', NULL, NULL, '1.00', '0.00', '0.00', '0.00', NULL, NULL, '0.00', NULL, NULL, '0.00', '0.00', 'reg', 0, 1, 1, 0, NULL, 0, 'WD', 'Absent', 'MANUAL', 'INPROCESS', 'Admin', NULL, 0, '2020-01-30 05:15:23', '2020-01-30 05:15:23', NULL, NULL),
(637, NULL, '2018-040', 'BIÃ‘AS, Kenneth Joshua Lope', 1, 15, 4, '2020-01-02', NULL, NULL, '0.00', '2020-01-02 12:00:00', '2020-01-02 13:00:00', NULL, NULL, '1.00', '0.00', '0.00', '0.00', NULL, NULL, '0.00', NULL, NULL, '0.00', '0.00', 'reg', 0, 1, 1, 0, NULL, 0, 'WD', 'Absent', 'MANUAL', 'INPROCESS', 'Admin', NULL, 0, '2020-01-30 05:15:23', '2020-01-30 05:15:23', NULL, NULL),
(638, NULL, '2018-040', 'BIÃ‘AS, Kenneth Joshua Lope', 1, 15, 4, '2020-01-03', NULL, NULL, '0.00', '2020-01-03 12:00:00', '2020-01-03 13:00:00', NULL, NULL, '1.00', '0.00', '0.00', '0.00', NULL, NULL, '0.00', NULL, NULL, '0.00', '0.00', 'reg', 0, 1, 1, 0, NULL, 0, 'WD', 'Absent', 'MANUAL', 'INPROCESS', 'Admin', NULL, 0, '2020-01-30 05:15:23', '2020-01-30 05:15:23', NULL, NULL),
(639, NULL, '2018-040', 'BIÃ‘AS, Kenneth Joshua Lope', 1, 15, 4, '2020-01-04', NULL, NULL, '0.00', NULL, NULL, NULL, NULL, '0.00', '0.00', '0.00', '0.00', NULL, NULL, '0.00', NULL, NULL, '0.00', '0.00', 'rd_reg', 0, 1, 1, 0, NULL, 0, 'WD', 'Restday', 'MANUAL', 'INPROCESS', 'Admin', NULL, 0, '2020-01-30 05:15:23', '2020-01-30 05:15:23', NULL, NULL),
(640, NULL, '2018-040', 'BIÃ‘AS, Kenneth Joshua Lope', 1, 15, 4, '2020-01-05', NULL, NULL, '0.00', NULL, NULL, NULL, NULL, '0.00', '0.00', '0.00', '0.00', NULL, NULL, '0.00', NULL, NULL, '0.00', '0.00', 'rd_reg', 0, 1, 1, 0, NULL, 0, 'WD', 'Restday', 'MANUAL', 'INPROCESS', 'Admin', NULL, 0, '2020-01-30 05:15:23', '2020-01-30 05:15:23', NULL, NULL),
(641, NULL, '2018-040', 'BIÃ‘AS, Kenneth Joshua Lope', 1, 15, 4, '2020-01-06', NULL, NULL, '0.00', '2020-01-06 12:00:00', '2020-01-06 13:00:00', NULL, NULL, '1.00', '0.00', '0.00', '0.00', NULL, NULL, '0.00', NULL, NULL, '0.00', '0.00', 'reg', 0, 1, 1, 0, NULL, 0, 'WD', 'Absent', 'MANUAL', 'INPROCESS', 'Admin', NULL, 0, '2020-01-30 05:15:23', '2020-01-30 05:15:23', NULL, NULL),
(642, NULL, '2018-040', 'BIÃ‘AS, Kenneth Joshua Lope', 1, 15, 4, '2020-01-07', NULL, NULL, '0.00', '2020-01-07 12:00:00', '2020-01-07 13:00:00', NULL, NULL, '1.00', '0.00', '0.00', '0.00', NULL, NULL, '0.00', NULL, NULL, '0.00', '0.00', 'reg', 0, 1, 1, 0, NULL, 0, 'WD', 'Absent', 'MANUAL', 'INPROCESS', 'Admin', NULL, 0, '2020-01-30 05:15:23', '2020-01-30 05:15:23', NULL, NULL),
(643, NULL, '2018-040', 'BIÃ‘AS, Kenneth Joshua Lope', 1, 15, 4, '2020-01-08', '2020-01-08 13:11:44', NULL, '0.00', '2020-01-08 12:00:00', '2020-01-08 13:00:00', '2020-01-08 13:11:44', '2020-01-08 23:11:44', '1.00', '0.00', '0.00', '0.00', NULL, NULL, '0.00', NULL, NULL, '0.00', '0.00', 'reg', 0, 1, 1, 0, NULL, 0, 'WD', 'No Time Out', 'MANUAL', 'INPROCESS', 'Admin', NULL, 0, '2020-01-30 05:15:23', '2020-01-30 05:15:23', NULL, NULL),
(644, NULL, '2018-040', 'BIÃ‘AS, Kenneth Joshua Lope', 1, 15, 4, '2020-01-09', '2020-01-09 11:52:42', NULL, '0.00', '2020-01-09 12:00:00', '2020-01-09 13:00:00', '2020-01-09 11:52:42', '2020-01-09 21:52:42', '1.00', '0.00', '0.00', '0.00', NULL, NULL, '0.00', NULL, NULL, '0.00', '0.00', 'reg', 0, 1, 1, 0, NULL, 0, 'WD', 'No Time Out', 'MANUAL', 'INPROCESS', 'Admin', NULL, 0, '2020-01-30 05:15:23', '2020-01-30 05:15:23', NULL, NULL),
(645, NULL, '2018-040', 'BIÃ‘AS, Kenneth Joshua Lope', 1, 15, 4, '2020-01-10', NULL, NULL, '0.00', '2020-01-10 12:00:00', '2020-01-10 13:00:00', NULL, NULL, '1.00', '0.00', '0.00', '0.00', NULL, NULL, '0.00', NULL, NULL, '0.00', '0.00', 'reg', 0, 1, 1, 0, NULL, 0, 'WD', 'Absent', 'MANUAL', 'INPROCESS', 'Admin', NULL, 0, '2020-01-30 05:15:24', '2020-01-30 05:15:24', NULL, NULL),
(646, NULL, '2018-040', 'BIÃ‘AS, Kenneth Joshua Lope', 1, 15, 4, '2020-01-11', NULL, NULL, '0.00', NULL, NULL, NULL, NULL, '0.00', '0.00', '0.00', '0.00', NULL, NULL, '0.00', NULL, NULL, '0.00', '0.00', 'rd_reg', 0, 1, 1, 0, NULL, 0, 'WD', 'Restday', 'MANUAL', 'INPROCESS', 'Admin', NULL, 0, '2020-01-30 05:15:24', '2020-01-30 05:15:24', NULL, NULL),
(647, NULL, '2018-040', 'BIÃ‘AS, Kenneth Joshua Lope', 1, 15, 4, '2020-01-12', NULL, NULL, '0.00', NULL, NULL, NULL, NULL, '0.00', '0.00', '0.00', '0.00', NULL, NULL, '0.00', NULL, NULL, '0.00', '0.00', 'rd_reg', 0, 1, 1, 0, NULL, 0, 'WD', 'Restday', 'MANUAL', 'INPROCESS', 'Admin', NULL, 0, '2020-01-30 05:15:24', '2020-01-30 05:15:24', NULL, NULL),
(648, NULL, '2018-040', 'BIÃ‘AS, Kenneth Joshua Lope', 1, 15, 4, '2020-01-13', NULL, NULL, '0.00', '2020-01-13 12:00:00', '2020-01-13 13:00:00', NULL, NULL, '1.00', '0.00', '0.00', '0.00', NULL, NULL, '0.00', NULL, NULL, '0.00', '0.00', 'reg', 0, 1, 1, 0, NULL, 0, 'WD', 'Absent', 'MANUAL', 'INPROCESS', 'Admin', NULL, 0, '2020-01-30 05:15:24', '2020-01-30 05:15:24', NULL, NULL),
(649, NULL, '2018-040', 'BIÃ‘AS, Kenneth Joshua Lope', 1, 15, 4, '2020-01-14', '2020-01-14 11:54:28', NULL, '0.00', '2020-01-14 12:00:00', '2020-01-14 13:00:00', '2020-01-14 11:54:28', '2020-01-14 21:54:28', '1.00', '0.00', '0.00', '0.00', NULL, NULL, '0.00', NULL, NULL, '0.00', '0.00', 'reg', 0, 1, 1, 0, NULL, 0, 'WD', 'No Time Out', 'MANUAL', 'INPROCESS', 'Admin', NULL, 0, '2020-01-30 05:15:24', '2020-01-30 05:15:24', NULL, NULL),
(650, NULL, '2018-040', 'BIÃ‘AS, Kenneth Joshua Lope', 1, 15, 4, '2020-01-15', '2020-01-15 14:04:10', '2020-01-15 18:22:56', '4.31', '2020-01-15 12:00:00', '2020-01-15 13:00:00', '2020-01-15 14:04:10', '2020-01-16 00:04:10', '1.00', '0.00', '0.00', '341.40', NULL, NULL, '0.00', NULL, NULL, '0.00', '0.00', 'reg', 0, 1, 1, 0, NULL, 0, 'WD', 'Present', 'MANUAL', 'INPROCESS', 'Admin', NULL, 0, '2020-01-30 05:15:24', '2020-01-30 05:15:24', NULL, NULL),
(651, NULL, '2018-040', 'BIÃ‘AS, Kenneth Joshua Lope', 1, 15, 4, '2020-01-16', '2020-01-16 15:52:39', '2020-01-17 02:50:26', '10.96', '2020-01-16 12:00:00', '2020-01-16 13:00:00', '2020-01-16 15:52:39', '2020-01-17 01:52:39', '1.00', '0.00', '0.00', '0.00', NULL, NULL, '0.00', '2020-01-16 22:00:00', '2020-01-17 01:52:39', '3.88', '0.00', 'reg', 0, 1, 1, 0, NULL, 0, 'WD', 'Present', 'MANUAL', 'INPROCESS', 'Admin', NULL, 0, '2020-01-30 05:15:24', '2020-01-30 05:15:24', NULL, NULL),
(652, NULL, '2018-040', 'BIÃ‘AS, Kenneth Joshua Lope', 1, 15, 4, '2020-01-17', '2020-01-17 16:22:04', '2020-01-17 17:28:43', '1.11', '2020-01-17 12:00:00', '2020-01-17 13:00:00', '2020-01-17 16:22:04', '2020-01-18 02:22:04', '1.00', '0.00', '0.00', '533.40', NULL, NULL, '0.00', NULL, NULL, '0.00', '0.00', 'reg', 0, 1, 1, 0, NULL, 0, 'WD', 'Present', 'MANUAL', 'INPROCESS', 'Admin', NULL, 0, '2020-01-30 05:15:24', '2020-01-30 05:15:24', NULL, NULL),
(653, NULL, '2018-040', 'BIÃ‘AS, Kenneth Joshua Lope', 1, 15, 4, '2020-01-18', NULL, NULL, '0.00', NULL, NULL, NULL, NULL, '0.00', '0.00', '0.00', '0.00', NULL, NULL, '0.00', NULL, NULL, '0.00', '0.00', 'rd_reg', 0, 1, 1, 0, NULL, 0, 'WD', 'Restday', 'MANUAL', 'INPROCESS', 'Admin', NULL, 0, '2020-01-30 05:15:24', '2020-01-30 05:15:24', NULL, NULL),
(654, NULL, '2018-040', 'BIÃ‘AS, Kenneth Joshua Lope', 1, 15, 4, '2020-01-19', NULL, NULL, '0.00', NULL, NULL, NULL, NULL, '0.00', '0.00', '0.00', '0.00', NULL, NULL, '0.00', NULL, NULL, '0.00', '0.00', 'rd_reg', 0, 1, 1, 0, NULL, 0, 'WD', 'Restday', 'MANUAL', 'INPROCESS', 'Admin', NULL, 0, '2020-01-30 05:15:24', '2020-01-30 05:15:24', NULL, NULL),
(655, NULL, '2018-040', 'BIÃ‘AS, Kenneth Joshua Lope', 1, 15, 4, '2020-01-20', NULL, NULL, '0.00', '2020-01-20 12:00:00', '2020-01-20 13:00:00', NULL, NULL, '1.00', '0.00', '0.00', '0.00', NULL, NULL, '0.00', NULL, NULL, '0.00', '0.00', 'reg', 0, 1, 1, 0, NULL, 0, 'WD', 'Absent', 'MANUAL', 'INPROCESS', 'Admin', NULL, 0, '2020-01-30 05:15:24', '2020-01-30 05:15:24', NULL, NULL),
(656, '202000007', '2018-040', 'BIÃ‘AS, Kenneth Joshua Lope', 1, 15, 4, '2020-01-21', '2020-01-21 19:16:10', NULL, '0.00', '2020-01-21 12:00:00', '2020-01-21 13:00:00', '2020-01-21 19:16:10', '2020-01-22 05:16:10', '1.00', '0.00', '0.00', '0.00', NULL, NULL, '0.00', NULL, NULL, '0.00', '0.00', 'reg', 0, 1, 1, 0, NULL, 0, 'WD', 'No Time Out', 'MANUAL', 'RELEASED', 'Admin', 'Payroll Admin', 0, '2020-01-30 05:15:24', '2020-03-04 02:41:08', NULL, NULL),
(657, '202000007', '2018-040', 'BIÃ‘AS, Kenneth Joshua Lope', 1, 15, 4, '2020-01-22', NULL, NULL, '0.00', '2020-01-22 12:00:00', '2020-01-22 13:00:00', NULL, NULL, '1.00', '0.00', '0.00', '0.00', NULL, NULL, '0.00', NULL, NULL, '0.00', '0.00', 'reg', 0, 1, 1, 0, NULL, 0, 'WD', 'Absent', 'MANUAL', 'RELEASED', 'Admin', 'Payroll Admin', 0, '2020-01-30 05:15:24', '2020-03-04 02:41:08', NULL, NULL),
(658, '202000007', '2018-040', 'BIÃ‘AS, Kenneth Joshua Lope', 1, 15, 4, '2020-01-23', '2020-01-23 11:53:54', '2020-01-23 12:51:36', '0.96', '2020-01-23 12:00:00', '2020-01-23 13:00:00', '2020-01-23 11:53:54', '2020-01-23 21:53:54', '1.00', '0.00', '0.00', '542.40', NULL, NULL, '0.00', NULL, NULL, '0.00', '0.00', 'reg', 0, 1, 1, 0, NULL, 0, 'WD', 'Present', 'MANUAL', 'RELEASED', 'Admin', 'Payroll Admin', 0, '2020-01-30 05:15:24', '2020-03-04 02:41:08', NULL, NULL),
(659, '202000007', '2018-040', 'BIÃ‘AS, Kenneth Joshua Lope', 1, 15, 4, '2020-01-24', '2020-01-24 10:17:14', NULL, '0.00', '2020-01-24 12:00:00', '2020-01-24 13:00:00', '2020-01-24 10:17:14', '2020-01-24 20:17:14', '1.00', '0.00', '0.00', '0.00', NULL, NULL, '0.00', NULL, NULL, '0.00', '0.00', 'reg', 0, 1, 1, 0, NULL, 0, 'WD', 'No Time Out', 'MANUAL', 'RELEASED', 'Admin', 'Payroll Admin', 0, '2020-01-30 05:15:24', '2020-03-04 02:41:08', NULL, NULL),
(660, '202000007', '2018-040', 'BIÃ‘AS, Kenneth Joshua Lope', 1, 15, 4, '2020-01-25', NULL, NULL, '0.00', NULL, NULL, NULL, NULL, '0.00', '0.00', '0.00', '0.00', NULL, NULL, '0.00', NULL, NULL, '0.00', '0.00', 'rd_reg', 0, 1, 1, 0, NULL, 0, 'WD', 'Restday', 'MANUAL', 'RELEASED', 'Admin', 'Payroll Admin', 0, '2020-01-30 05:15:24', '2020-03-04 02:41:08', NULL, NULL),
(661, '202000007', '2018-040', 'BIÃ‘AS, Kenneth Joshua Lope', 1, 15, 4, '2020-01-26', NULL, NULL, '0.00', NULL, NULL, NULL, NULL, '0.00', '0.00', '0.00', '0.00', NULL, NULL, '0.00', NULL, NULL, '0.00', '0.00', 'rd_reg', 0, 1, 1, 0, NULL, 0, 'WD', 'Restday', 'MANUAL', 'RELEASED', 'Admin', 'Payroll Admin', 0, '2020-01-30 05:15:24', '2020-03-04 02:41:08', NULL, NULL),
(662, '202000007', '2018-040', 'BIÃ‘AS, Kenneth Joshua Lope', 1, 15, 4, '2020-01-28', '2020-01-28 15:22:38', NULL, '0.00', '2020-01-28 12:00:00', '2020-01-28 13:00:00', '2020-01-28 15:22:38', '2020-01-29 01:22:38', '1.00', '0.00', '0.00', '0.00', NULL, NULL, '0.00', NULL, NULL, '0.00', '0.00', 'reg', 0, 1, 1, 0, NULL, 0, 'WD', 'No Time Out', 'MANUAL', 'RELEASED', 'Admin', 'Payroll Admin', 0, '2020-01-30 05:15:25', '2020-03-04 02:41:08', NULL, NULL),
(663, '202000007', '2018-040', 'BIÃ‘AS, Kenneth Joshua Lope', 1, 15, 4, '2020-01-29', NULL, '2020-01-29 18:00:08', '0.00', '2020-01-29 12:00:00', '2020-01-29 13:00:00', NULL, NULL, '1.00', '0.00', '0.00', '0.00', NULL, NULL, '0.00', NULL, NULL, '0.00', '0.00', 'reg', 0, 1, 1, 0, NULL, 0, 'WD', 'No Time In', 'MANUAL', 'RELEASED', 'Admin', 'Payroll Admin', 0, '2020-01-30 05:15:25', '2020-03-04 02:41:08', NULL, NULL),
(664, '202000007', '2018-040', 'BIÃ‘AS, Kenneth Joshua Lope', 1, 15, 4, '2020-01-30', '2020-01-30 10:15:15', NULL, '0.00', '2020-01-30 12:00:00', '2020-01-30 13:00:00', '2020-01-30 10:15:15', '2020-01-30 20:15:15', '1.00', '0.00', '0.00', '0.00', NULL, NULL, '0.00', NULL, NULL, '0.00', '0.00', 'reg', 0, 1, 1, 0, NULL, 0, 'WD', 'No Time Out', 'MANUAL', 'RELEASED', 'Admin', 'Payroll Admin', 0, '2020-01-30 05:15:25', '2020-03-04 02:41:08', NULL, NULL),
(665, NULL, '2010-191', 'CASTOR, GINA ALMADEN', 1, 16, 10, '2020-01-01', NULL, NULL, '0.00', '2020-01-01 12:00:00', '2020-01-01 13:00:00', '2020-01-01 08:30:00', '2020-01-01 18:30:00', '1.00', '0.00', '0.00', '0.00', NULL, NULL, '0.00', NULL, NULL, '0.00', '0.00', 'reg', 0, 1, 1, 0, NULL, 0, 'WD', 'Absent', 'MANUAL', 'INPROCESS', 'Admin', NULL, 0, '2020-01-30 05:15:25', '2020-01-30 05:15:25', NULL, NULL),
(666, NULL, '2010-191', 'CASTOR, GINA ALMADEN', 1, 16, 10, '2020-01-02', NULL, NULL, '0.00', '2020-01-02 12:00:00', '2020-01-02 13:00:00', '2020-01-02 08:30:00', '2020-01-02 18:30:00', '1.00', '0.00', '0.00', '0.00', NULL, NULL, '0.00', NULL, NULL, '0.00', '0.00', 'reg', 0, 1, 1, 0, NULL, 0, 'WD', 'Absent', 'MANUAL', 'INPROCESS', 'Admin', NULL, 0, '2020-01-30 05:15:25', '2020-01-30 05:15:25', NULL, NULL),
(667, NULL, '2010-191', 'CASTOR, GINA ALMADEN', 1, 16, 10, '2020-01-03', NULL, NULL, '0.00', '2020-01-03 12:00:00', '2020-01-03 13:00:00', '2020-01-03 08:30:00', '2020-01-03 18:30:00', '1.00', '0.00', '0.00', '0.00', NULL, NULL, '0.00', NULL, NULL, '0.00', '0.00', 'reg', 0, 1, 1, 0, NULL, 0, 'WD', 'Absent', 'MANUAL', 'INPROCESS', 'Admin', NULL, 0, '2020-01-30 05:15:25', '2020-01-30 05:15:25', NULL, NULL),
(668, NULL, '2010-191', 'CASTOR, GINA ALMADEN', 1, 16, 10, '2020-01-04', NULL, NULL, '0.00', NULL, NULL, NULL, NULL, '0.00', '0.00', '0.00', '0.00', NULL, NULL, '0.00', NULL, NULL, '0.00', '0.00', 'rd_reg', 0, 1, 1, 0, NULL, 0, 'WD', 'Restday', 'MANUAL', 'INPROCESS', 'Admin', NULL, 0, '2020-01-30 05:15:25', '2020-01-30 05:15:25', NULL, NULL),
(669, NULL, '2010-191', 'CASTOR, GINA ALMADEN', 1, 16, 10, '2020-01-05', NULL, NULL, '0.00', NULL, NULL, NULL, NULL, '0.00', '0.00', '0.00', '0.00', NULL, NULL, '0.00', NULL, NULL, '0.00', '0.00', 'rd_reg', 0, 1, 1, 0, NULL, 0, 'WD', 'Restday', 'MANUAL', 'INPROCESS', 'Admin', NULL, 0, '2020-01-30 05:15:25', '2020-01-30 05:15:25', NULL, NULL),
(670, NULL, '2010-191', 'CASTOR, GINA ALMADEN', 1, 16, 10, '2020-01-06', NULL, NULL, '0.00', '2020-01-06 12:00:00', '2020-01-06 13:00:00', '2020-01-06 08:30:00', '2020-01-06 18:30:00', '1.00', '0.00', '0.00', '0.00', NULL, NULL, '0.00', NULL, NULL, '0.00', '0.00', 'reg', 0, 1, 1, 0, NULL, 0, 'WD', 'Absent', 'MANUAL', 'INPROCESS', 'Admin', NULL, 0, '2020-01-30 05:15:25', '2020-01-30 05:15:25', NULL, NULL),
(671, NULL, '2010-191', 'CASTOR, GINA ALMADEN', 1, 16, 10, '2020-01-07', NULL, NULL, '0.00', '2020-01-07 12:00:00', '2020-01-07 13:00:00', '2020-01-07 08:30:00', '2020-01-07 18:30:00', '1.00', '0.00', '0.00', '0.00', NULL, NULL, '0.00', NULL, NULL, '0.00', '0.00', 'reg', 0, 1, 1, 0, NULL, 0, 'WD', 'Absent', 'MANUAL', 'INPROCESS', 'Admin', NULL, 0, '2020-01-30 05:15:25', '2020-01-30 05:15:25', NULL, NULL),
(672, NULL, '2010-191', 'CASTOR, GINA ALMADEN', 1, 16, 10, '2020-01-08', NULL, NULL, '0.00', '2020-01-08 12:00:00', '2020-01-08 13:00:00', '2020-01-08 08:30:00', '2020-01-08 18:30:00', '1.00', '0.00', '0.00', '0.00', NULL, NULL, '0.00', NULL, NULL, '0.00', '0.00', 'reg', 0, 1, 1, 0, NULL, 0, 'WD', 'Absent', 'MANUAL', 'INPROCESS', 'Admin', NULL, 0, '2020-01-30 05:15:25', '2020-01-30 05:15:25', NULL, NULL),
(673, NULL, '2010-191', 'CASTOR, GINA ALMADEN', 1, 16, 10, '2020-01-09', NULL, NULL, '0.00', '2020-01-09 12:00:00', '2020-01-09 13:00:00', '2020-01-09 08:30:00', '2020-01-09 18:30:00', '1.00', '0.00', '0.00', '0.00', NULL, NULL, '0.00', NULL, NULL, '0.00', '0.00', 'reg', 0, 1, 1, 0, NULL, 0, 'WD', 'Absent', 'MANUAL', 'INPROCESS', 'Admin', NULL, 0, '2020-01-30 05:15:25', '2020-01-30 05:15:25', NULL, NULL),
(674, NULL, '2010-191', 'CASTOR, GINA ALMADEN', 1, 16, 10, '2020-01-10', NULL, NULL, '0.00', '2020-01-10 12:00:00', '2020-01-10 13:00:00', '2020-01-10 08:30:00', '2020-01-10 18:30:00', '1.00', '0.00', '0.00', '0.00', NULL, NULL, '0.00', NULL, NULL, '0.00', '0.00', 'reg', 0, 1, 1, 0, NULL, 0, 'WD', 'Absent', 'MANUAL', 'INPROCESS', 'Admin', NULL, 0, '2020-01-30 05:15:25', '2020-01-30 05:15:25', NULL, NULL),
(675, NULL, '2010-191', 'CASTOR, GINA ALMADEN', 1, 16, 10, '2020-01-11', NULL, NULL, '0.00', NULL, NULL, NULL, NULL, '0.00', '0.00', '0.00', '0.00', NULL, NULL, '0.00', NULL, NULL, '0.00', '0.00', 'rd_reg', 0, 1, 1, 0, NULL, 0, 'WD', 'Restday', 'MANUAL', 'INPROCESS', 'Admin', NULL, 0, '2020-01-30 05:15:25', '2020-01-30 05:15:25', NULL, NULL),
(676, NULL, '2010-191', 'CASTOR, GINA ALMADEN', 1, 16, 10, '2020-01-12', NULL, NULL, '0.00', NULL, NULL, NULL, NULL, '0.00', '0.00', '0.00', '0.00', NULL, NULL, '0.00', NULL, NULL, '0.00', '0.00', 'rd_reg', 0, 1, 1, 0, NULL, 0, 'WD', 'Restday', 'MANUAL', 'INPROCESS', 'Admin', NULL, 0, '2020-01-30 05:15:25', '2020-01-30 05:15:25', NULL, NULL),
(677, NULL, '2010-191', 'CASTOR, GINA ALMADEN', 1, 16, 10, '2020-01-13', NULL, NULL, '0.00', '2020-01-13 12:00:00', '2020-01-13 13:00:00', '2020-01-13 08:30:00', '2020-01-13 18:30:00', '1.00', '0.00', '0.00', '0.00', NULL, NULL, '0.00', NULL, NULL, '0.00', '0.00', 'reg', 0, 1, 1, 0, NULL, 0, 'WD', 'Absent', 'MANUAL', 'INPROCESS', 'Admin', NULL, 0, '2020-01-30 05:15:25', '2020-01-30 05:15:25', NULL, NULL),
(678, NULL, '2010-191', 'CASTOR, GINA ALMADEN', 1, 16, 10, '2020-01-14', NULL, NULL, '0.00', '2020-01-14 12:00:00', '2020-01-14 13:00:00', '2020-01-14 08:30:00', '2020-01-14 18:30:00', '1.00', '0.00', '0.00', '0.00', NULL, NULL, '0.00', NULL, NULL, '0.00', '0.00', 'reg', 0, 1, 1, 0, NULL, 0, 'WD', 'Absent', 'MANUAL', 'INPROCESS', 'Admin', NULL, 0, '2020-01-30 05:15:25', '2020-01-30 05:15:25', NULL, NULL),
(679, NULL, '2010-191', 'CASTOR, GINA ALMADEN', 1, 16, 10, '2020-01-15', NULL, NULL, '0.00', '2020-01-15 12:00:00', '2020-01-15 13:00:00', '2020-01-15 08:30:00', '2020-01-15 18:30:00', '1.00', '0.00', '0.00', '0.00', NULL, NULL, '0.00', NULL, NULL, '0.00', '0.00', 'reg', 0, 1, 1, 0, NULL, 0, 'WD', 'Absent', 'MANUAL', 'INPROCESS', 'Admin', NULL, 0, '2020-01-30 05:15:25', '2020-01-30 05:15:25', NULL, NULL),
(680, NULL, '2010-191', 'CASTOR, GINA ALMADEN', 1, 16, 10, '2020-01-16', NULL, NULL, '0.00', '2020-01-16 12:00:00', '2020-01-16 13:00:00', '2020-01-16 08:30:00', '2020-01-16 18:30:00', '1.00', '0.00', '0.00', '0.00', NULL, NULL, '0.00', NULL, NULL, '0.00', '0.00', 'reg', 0, 1, 1, 0, NULL, 0, 'WD', 'Absent', 'MANUAL', 'INPROCESS', 'Admin', NULL, 0, '2020-01-30 05:15:25', '2020-01-30 05:15:25', NULL, NULL),
(681, NULL, '2010-191', 'CASTOR, GINA ALMADEN', 1, 16, 10, '2020-01-17', NULL, NULL, '0.00', '2020-01-17 12:00:00', '2020-01-17 13:00:00', '2020-01-17 08:30:00', '2020-01-17 18:30:00', '1.00', '0.00', '0.00', '0.00', NULL, NULL, '0.00', NULL, NULL, '0.00', '0.00', 'reg', 0, 1, 1, 0, NULL, 0, 'WD', 'Absent', 'MANUAL', 'INPROCESS', 'Admin', NULL, 0, '2020-01-30 05:15:25', '2020-01-30 05:15:25', NULL, NULL),
(682, NULL, '2010-191', 'CASTOR, GINA ALMADEN', 1, 16, 10, '2020-01-18', NULL, NULL, '0.00', NULL, NULL, NULL, NULL, '0.00', '0.00', '0.00', '0.00', NULL, NULL, '0.00', NULL, NULL, '0.00', '0.00', 'rd_reg', 0, 1, 1, 0, NULL, 0, 'WD', 'Restday', 'MANUAL', 'INPROCESS', 'Admin', NULL, 0, '2020-01-30 05:15:26', '2020-01-30 05:15:26', NULL, NULL),
(683, NULL, '2010-191', 'CASTOR, GINA ALMADEN', 1, 16, 10, '2020-01-19', NULL, NULL, '0.00', NULL, NULL, NULL, NULL, '0.00', '0.00', '0.00', '0.00', NULL, NULL, '0.00', NULL, NULL, '0.00', '0.00', 'rd_reg', 0, 1, 1, 0, NULL, 0, 'WD', 'Restday', 'MANUAL', 'INPROCESS', 'Admin', NULL, 0, '2020-01-30 05:15:26', '2020-01-30 05:15:26', NULL, NULL),
(684, NULL, '2010-191', 'CASTOR, GINA ALMADEN', 1, 16, 10, '2020-01-20', NULL, NULL, '0.00', '2020-01-20 12:00:00', '2020-01-20 13:00:00', '2020-01-20 08:30:00', '2020-01-20 18:30:00', '1.00', '0.00', '0.00', '0.00', NULL, NULL, '0.00', NULL, NULL, '0.00', '0.00', 'reg', 0, 1, 1, 0, NULL, 0, 'WD', 'Absent', 'MANUAL', 'INPROCESS', 'Admin', NULL, 0, '2020-01-30 05:15:26', '2020-01-30 05:15:26', NULL, NULL),
(685, NULL, '2010-191', 'CASTOR, GINA ALMADEN', 1, 16, 10, '2020-01-21', NULL, NULL, '0.00', '2020-01-21 12:00:00', '2020-01-21 13:00:00', '2020-01-21 08:30:00', '2020-01-21 18:30:00', '1.00', '0.00', '0.00', '0.00', NULL, NULL, '0.00', NULL, NULL, '0.00', '0.00', 'reg', 0, 1, 1, 0, NULL, 0, 'WD', 'Absent', 'MANUAL', 'INPROCESS', 'Admin', NULL, 0, '2020-01-30 05:15:26', '2020-01-30 05:15:26', NULL, NULL),
(686, NULL, '2010-191', 'CASTOR, GINA ALMADEN', 1, 16, 10, '2020-01-22', NULL, NULL, '0.00', '2020-01-22 12:00:00', '2020-01-22 13:00:00', '2020-01-22 08:30:00', '2020-01-22 18:30:00', '1.00', '0.00', '0.00', '0.00', NULL, NULL, '0.00', NULL, NULL, '0.00', '0.00', 'reg', 0, 1, 1, 0, NULL, 0, 'WD', 'Absent', 'MANUAL', 'INPROCESS', 'Admin', NULL, 0, '2020-01-30 05:15:27', '2020-01-30 05:15:27', NULL, NULL),
(687, NULL, '2010-191', 'CASTOR, GINA ALMADEN', 1, 16, 10, '2020-01-23', NULL, NULL, '0.00', '2020-01-23 12:00:00', '2020-01-23 13:00:00', '2020-01-23 08:30:00', '2020-01-23 18:30:00', '1.00', '0.00', '0.00', '0.00', NULL, NULL, '0.00', NULL, NULL, '0.00', '0.00', 'reg', 0, 1, 1, 0, NULL, 0, 'WD', 'Absent', 'MANUAL', 'INPROCESS', 'Admin', NULL, 0, '2020-01-30 05:15:27', '2020-01-30 05:15:27', NULL, NULL),
(688, NULL, '2010-191', 'CASTOR, GINA ALMADEN', 1, 16, 10, '2020-01-24', NULL, NULL, '0.00', '2020-01-24 12:00:00', '2020-01-24 13:00:00', '2020-01-24 08:30:00', '2020-01-24 18:30:00', '1.00', '0.00', '0.00', '0.00', NULL, NULL, '0.00', NULL, NULL, '0.00', '0.00', 'reg', 0, 1, 1, 0, NULL, 0, 'WD', 'Absent', 'MANUAL', 'INPROCESS', 'Admin', NULL, 0, '2020-01-30 05:15:27', '2020-01-30 05:15:27', NULL, NULL),
(689, NULL, '2010-191', 'CASTOR, GINA ALMADEN', 1, 16, 10, '2020-01-25', NULL, NULL, '0.00', NULL, NULL, NULL, NULL, '0.00', '0.00', '0.00', '0.00', NULL, NULL, '0.00', NULL, NULL, '0.00', '0.00', 'rd_reg', 0, 1, 1, 0, NULL, 0, 'WD', 'Restday', 'MANUAL', 'INPROCESS', 'Admin', NULL, 0, '2020-01-30 05:15:27', '2020-01-30 05:15:27', NULL, NULL),
(690, NULL, '2010-191', 'CASTOR, GINA ALMADEN', 1, 16, 10, '2020-01-26', NULL, NULL, '0.00', NULL, NULL, NULL, NULL, '0.00', '0.00', '0.00', '0.00', NULL, NULL, '0.00', NULL, NULL, '0.00', '0.00', 'rd_reg', 0, 1, 1, 0, NULL, 0, 'WD', 'Restday', 'MANUAL', 'INPROCESS', 'Admin', NULL, 0, '2020-01-30 05:15:27', '2020-01-30 05:15:27', NULL, NULL),
(691, NULL, '2010-191', 'CASTOR, GINA ALMADEN', 1, 16, 10, '2020-01-28', NULL, NULL, '0.00', '2020-01-28 12:00:00', '2020-01-28 13:00:00', '2020-01-28 08:30:00', '2020-01-28 18:30:00', '1.00', '0.00', '0.00', '0.00', NULL, NULL, '0.00', NULL, NULL, '0.00', '0.00', 'reg', 0, 1, 1, 0, NULL, 0, 'WD', 'Absent', 'MANUAL', 'INPROCESS', 'Admin', NULL, 0, '2020-01-30 05:15:27', '2020-01-30 05:15:27', NULL, NULL),
(692, NULL, '2010-191', 'CASTOR, GINA ALMADEN', 1, 16, 10, '2020-01-29', NULL, NULL, '0.00', '2020-01-29 12:00:00', '2020-01-29 13:00:00', '2020-01-29 08:30:00', '2020-01-29 18:30:00', '1.00', '0.00', '0.00', '0.00', NULL, NULL, '0.00', NULL, NULL, '0.00', '0.00', 'reg', 0, 1, 1, 0, NULL, 0, 'WD', 'Absent', 'MANUAL', 'INPROCESS', 'Admin', NULL, 0, '2020-01-30 05:15:27', '2020-01-30 05:15:27', NULL, NULL),
(693, NULL, '2010-191', 'CASTOR, GINA ALMADEN', 1, 16, 10, '2020-01-30', NULL, NULL, '0.00', '2020-01-30 12:00:00', '2020-01-30 13:00:00', '2020-01-30 08:30:00', '2020-01-30 18:30:00', '1.00', '0.00', '0.00', '0.00', NULL, NULL, '0.00', NULL, NULL, '0.00', '0.00', 'reg', 0, 1, 1, 0, NULL, 0, 'WD', 'Absent', 'MANUAL', 'INPROCESS', 'Admin', NULL, 0, '2020-01-30 05:15:27', '2020-01-30 05:15:27', NULL, NULL),
(694, NULL, '2015-051', 'Dayandante, Jasmin Pasco', 1, 16, 10, '2020-01-01', NULL, NULL, '0.00', '2020-01-01 12:00:00', '2020-01-01 13:00:00', '2020-01-01 08:30:00', '2020-01-01 18:30:00', '1.00', '0.00', '0.00', '0.00', NULL, NULL, '0.00', NULL, NULL, '0.00', '0.00', 'reg', 0, 1, 1, 0, NULL, 0, 'WD', 'Absent', 'MANUAL', 'INPROCESS', 'Admin', NULL, 0, '2020-01-30 05:15:27', '2020-01-30 05:15:27', NULL, NULL),
(695, NULL, '2015-051', 'Dayandante, Jasmin Pasco', 1, 16, 10, '2020-01-02', NULL, NULL, '0.00', '2020-01-02 12:00:00', '2020-01-02 13:00:00', '2020-01-02 08:30:00', '2020-01-02 18:30:00', '1.00', '0.00', '0.00', '0.00', NULL, NULL, '0.00', NULL, NULL, '0.00', '0.00', 'reg', 0, 1, 1, 0, NULL, 0, 'WD', 'Absent', 'MANUAL', 'INPROCESS', 'Admin', NULL, 0, '2020-01-30 05:15:27', '2020-01-30 05:15:27', NULL, NULL),
(696, NULL, '2015-051', 'Dayandante, Jasmin Pasco', 1, 16, 10, '2020-01-03', NULL, NULL, '0.00', '2020-01-03 12:00:00', '2020-01-03 13:00:00', '2020-01-03 08:30:00', '2020-01-03 18:30:00', '1.00', '0.00', '0.00', '0.00', NULL, NULL, '0.00', NULL, NULL, '0.00', '0.00', 'reg', 0, 1, 1, 0, NULL, 0, 'WD', 'Absent', 'MANUAL', 'INPROCESS', 'Admin', NULL, 0, '2020-01-30 05:15:27', '2020-01-30 05:15:27', NULL, NULL),
(697, NULL, '2015-051', 'Dayandante, Jasmin Pasco', 1, 16, 10, '2020-01-04', NULL, NULL, '0.00', NULL, NULL, NULL, NULL, '0.00', '0.00', '0.00', '0.00', NULL, NULL, '0.00', NULL, NULL, '0.00', '0.00', 'rd_reg', 0, 1, 1, 0, NULL, 0, 'WD', 'Restday', 'MANUAL', 'INPROCESS', 'Admin', NULL, 0, '2020-01-30 05:15:27', '2020-01-30 05:15:27', NULL, NULL),
(698, NULL, '2015-051', 'Dayandante, Jasmin Pasco', 1, 16, 10, '2020-01-05', NULL, NULL, '0.00', NULL, NULL, NULL, NULL, '0.00', '0.00', '0.00', '0.00', NULL, NULL, '0.00', NULL, NULL, '0.00', '0.00', 'rd_reg', 0, 1, 1, 0, NULL, 0, 'WD', 'Restday', 'MANUAL', 'INPROCESS', 'Admin', NULL, 0, '2020-01-30 05:15:28', '2020-01-30 05:15:28', NULL, NULL),
(699, NULL, '2015-051', 'Dayandante, Jasmin Pasco', 1, 16, 10, '2020-01-06', NULL, NULL, '0.00', '2020-01-06 12:00:00', '2020-01-06 13:00:00', '2020-01-06 08:30:00', '2020-01-06 18:30:00', '1.00', '0.00', '0.00', '0.00', NULL, NULL, '0.00', NULL, NULL, '0.00', '0.00', 'reg', 0, 1, 1, 0, NULL, 0, 'WD', 'Absent', 'MANUAL', 'INPROCESS', 'Admin', NULL, 0, '2020-01-30 05:15:28', '2020-01-30 05:15:28', NULL, NULL),
(700, NULL, '2015-051', 'Dayandante, Jasmin Pasco', 1, 16, 10, '2020-01-07', NULL, NULL, '0.00', '2020-01-07 12:00:00', '2020-01-07 13:00:00', '2020-01-07 08:30:00', '2020-01-07 18:30:00', '1.00', '0.00', '0.00', '0.00', NULL, NULL, '0.00', NULL, NULL, '0.00', '0.00', 'reg', 0, 1, 1, 0, NULL, 0, 'WD', 'Absent', 'MANUAL', 'INPROCESS', 'Admin', NULL, 0, '2020-01-30 05:15:28', '2020-01-30 05:15:28', NULL, NULL),
(701, NULL, '2015-051', 'Dayandante, Jasmin Pasco', 1, 16, 10, '2020-01-08', NULL, NULL, '0.00', '2020-01-08 12:00:00', '2020-01-08 13:00:00', '2020-01-08 08:30:00', '2020-01-08 18:30:00', '1.00', '0.00', '0.00', '0.00', NULL, NULL, '0.00', NULL, NULL, '0.00', '0.00', 'reg', 0, 1, 1, 0, NULL, 0, 'WD', 'Absent', 'MANUAL', 'INPROCESS', 'Admin', NULL, 0, '2020-01-30 05:15:28', '2020-01-30 05:15:28', NULL, NULL),
(702, NULL, '2015-051', 'Dayandante, Jasmin Pasco', 1, 16, 10, '2020-01-09', NULL, NULL, '0.00', '2020-01-09 12:00:00', '2020-01-09 13:00:00', '2020-01-09 08:30:00', '2020-01-09 18:30:00', '1.00', '0.00', '0.00', '0.00', NULL, NULL, '0.00', NULL, NULL, '0.00', '0.00', 'reg', 0, 1, 1, 0, NULL, 0, 'WD', 'Absent', 'MANUAL', 'INPROCESS', 'Admin', NULL, 0, '2020-01-30 05:15:28', '2020-01-30 05:15:28', NULL, NULL),
(703, NULL, '2015-051', 'Dayandante, Jasmin Pasco', 1, 16, 10, '2020-01-10', NULL, NULL, '0.00', '2020-01-10 12:00:00', '2020-01-10 13:00:00', '2020-01-10 08:30:00', '2020-01-10 18:30:00', '1.00', '0.00', '0.00', '0.00', NULL, NULL, '0.00', NULL, NULL, '0.00', '0.00', 'reg', 0, 1, 1, 0, NULL, 0, 'WD', 'Absent', 'MANUAL', 'INPROCESS', 'Admin', NULL, 0, '2020-01-30 05:15:28', '2020-01-30 05:15:28', NULL, NULL),
(704, NULL, '2015-051', 'Dayandante, Jasmin Pasco', 1, 16, 10, '2020-01-11', NULL, NULL, '0.00', NULL, NULL, NULL, NULL, '0.00', '0.00', '0.00', '0.00', NULL, NULL, '0.00', NULL, NULL, '0.00', '0.00', 'rd_reg', 0, 1, 1, 0, NULL, 0, 'WD', 'Restday', 'MANUAL', 'INPROCESS', 'Admin', NULL, 0, '2020-01-30 05:15:28', '2020-01-30 05:15:28', NULL, NULL),
(705, NULL, '2015-051', 'Dayandante, Jasmin Pasco', 1, 16, 10, '2020-01-12', NULL, NULL, '0.00', NULL, NULL, NULL, NULL, '0.00', '0.00', '0.00', '0.00', NULL, NULL, '0.00', NULL, NULL, '0.00', '0.00', 'rd_reg', 0, 1, 1, 0, NULL, 0, 'WD', 'Restday', 'MANUAL', 'INPROCESS', 'Admin', NULL, 0, '2020-01-30 05:15:28', '2020-01-30 05:15:28', NULL, NULL),
(706, NULL, '2015-051', 'Dayandante, Jasmin Pasco', 1, 16, 10, '2020-01-13', NULL, NULL, '0.00', '2020-01-13 12:00:00', '2020-01-13 13:00:00', '2020-01-13 08:30:00', '2020-01-13 18:30:00', '1.00', '0.00', '0.00', '0.00', NULL, NULL, '0.00', NULL, NULL, '0.00', '0.00', 'reg', 0, 1, 1, 0, NULL, 0, 'WD', 'Absent', 'MANUAL', 'INPROCESS', 'Admin', NULL, 0, '2020-01-30 05:15:28', '2020-01-30 05:15:28', NULL, NULL),
(707, NULL, '2015-051', 'Dayandante, Jasmin Pasco', 1, 16, 10, '2020-01-14', NULL, NULL, '0.00', '2020-01-14 12:00:00', '2020-01-14 13:00:00', '2020-01-14 08:30:00', '2020-01-14 18:30:00', '1.00', '0.00', '0.00', '0.00', NULL, NULL, '0.00', NULL, NULL, '0.00', '0.00', 'reg', 0, 1, 1, 0, NULL, 0, 'WD', 'Absent', 'MANUAL', 'INPROCESS', 'Admin', NULL, 0, '2020-01-30 05:15:28', '2020-01-30 05:15:28', NULL, NULL),
(708, NULL, '2015-051', 'Dayandante, Jasmin Pasco', 1, 16, 10, '2020-01-15', NULL, NULL, '0.00', '2020-01-15 12:00:00', '2020-01-15 13:00:00', '2020-01-15 08:30:00', '2020-01-15 18:30:00', '1.00', '0.00', '0.00', '0.00', NULL, NULL, '0.00', NULL, NULL, '0.00', '0.00', 'reg', 0, 1, 1, 0, NULL, 0, 'WD', 'Absent', 'MANUAL', 'INPROCESS', 'Admin', NULL, 0, '2020-01-30 05:15:28', '2020-01-30 05:15:28', NULL, NULL),
(709, NULL, '2015-051', 'Dayandante, Jasmin Pasco', 1, 16, 10, '2020-01-16', NULL, NULL, '0.00', '2020-01-16 12:00:00', '2020-01-16 13:00:00', '2020-01-16 08:30:00', '2020-01-16 18:30:00', '1.00', '0.00', '0.00', '0.00', NULL, NULL, '0.00', NULL, NULL, '0.00', '0.00', 'reg', 0, 1, 1, 0, NULL, 0, 'WD', 'Absent', 'MANUAL', 'INPROCESS', 'Admin', NULL, 0, '2020-01-30 05:15:28', '2020-01-30 05:15:28', NULL, NULL),
(710, NULL, '2015-051', 'Dayandante, Jasmin Pasco', 1, 16, 10, '2020-01-17', NULL, NULL, '0.00', '2020-01-17 12:00:00', '2020-01-17 13:00:00', '2020-01-17 08:30:00', '2020-01-17 18:30:00', '1.00', '0.00', '0.00', '0.00', NULL, NULL, '0.00', NULL, NULL, '0.00', '0.00', 'reg', 0, 1, 1, 0, NULL, 0, 'WD', 'Absent', 'MANUAL', 'INPROCESS', 'Admin', NULL, 0, '2020-01-30 05:15:28', '2020-01-30 05:15:28', NULL, NULL),
(711, NULL, '2015-051', 'Dayandante, Jasmin Pasco', 1, 16, 10, '2020-01-18', NULL, NULL, '0.00', NULL, NULL, NULL, NULL, '0.00', '0.00', '0.00', '0.00', NULL, NULL, '0.00', NULL, NULL, '0.00', '0.00', 'rd_reg', 0, 1, 1, 0, NULL, 0, 'WD', 'Restday', 'MANUAL', 'INPROCESS', 'Admin', NULL, 0, '2020-01-30 05:15:29', '2020-01-30 05:15:29', NULL, NULL),
(712, NULL, '2015-051', 'Dayandante, Jasmin Pasco', 1, 16, 10, '2020-01-19', NULL, NULL, '0.00', NULL, NULL, NULL, NULL, '0.00', '0.00', '0.00', '0.00', NULL, NULL, '0.00', NULL, NULL, '0.00', '0.00', 'rd_reg', 0, 1, 1, 0, NULL, 0, 'WD', 'Restday', 'MANUAL', 'INPROCESS', 'Admin', NULL, 0, '2020-01-30 05:15:29', '2020-01-30 05:15:29', NULL, NULL),
(713, NULL, '2015-051', 'Dayandante, Jasmin Pasco', 1, 16, 10, '2020-01-20', NULL, NULL, '0.00', '2020-01-20 12:00:00', '2020-01-20 13:00:00', '2020-01-20 08:30:00', '2020-01-20 18:30:00', '1.00', '0.00', '0.00', '0.00', NULL, NULL, '0.00', NULL, NULL, '0.00', '0.00', 'reg', 0, 1, 1, 0, NULL, 0, 'WD', 'Absent', 'MANUAL', 'INPROCESS', 'Admin', NULL, 0, '2020-01-30 05:15:29', '2020-01-30 05:15:29', NULL, NULL),
(714, NULL, '2015-051', 'Dayandante, Jasmin Pasco', 1, 16, 10, '2020-01-21', NULL, NULL, '0.00', '2020-01-21 12:00:00', '2020-01-21 13:00:00', '2020-01-21 08:30:00', '2020-01-21 18:30:00', '1.00', '0.00', '0.00', '0.00', NULL, NULL, '0.00', NULL, NULL, '0.00', '0.00', 'reg', 0, 1, 1, 0, NULL, 0, 'WD', 'Absent', 'MANUAL', 'INPROCESS', 'Admin', NULL, 0, '2020-01-30 05:15:29', '2020-01-30 05:15:29', NULL, NULL),
(715, NULL, '2015-051', 'Dayandante, Jasmin Pasco', 1, 16, 10, '2020-01-22', NULL, NULL, '0.00', '2020-01-22 12:00:00', '2020-01-22 13:00:00', '2020-01-22 08:30:00', '2020-01-22 18:30:00', '1.00', '0.00', '0.00', '0.00', NULL, NULL, '0.00', NULL, NULL, '0.00', '0.00', 'reg', 0, 1, 1, 0, NULL, 0, 'WD', 'Absent', 'MANUAL', 'INPROCESS', 'Admin', NULL, 0, '2020-01-30 05:15:29', '2020-01-30 05:15:29', NULL, NULL),
(716, NULL, '2015-051', 'Dayandante, Jasmin Pasco', 1, 16, 10, '2020-01-23', NULL, NULL, '0.00', '2020-01-23 12:00:00', '2020-01-23 13:00:00', '2020-01-23 08:30:00', '2020-01-23 18:30:00', '1.00', '0.00', '0.00', '0.00', NULL, NULL, '0.00', NULL, NULL, '0.00', '0.00', 'reg', 0, 1, 1, 0, NULL, 0, 'WD', 'Absent', 'MANUAL', 'INPROCESS', 'Admin', NULL, 0, '2020-01-30 05:15:29', '2020-01-30 05:15:29', NULL, NULL),
(717, NULL, '2015-051', 'Dayandante, Jasmin Pasco', 1, 16, 10, '2020-01-24', NULL, NULL, '0.00', '2020-01-24 12:00:00', '2020-01-24 13:00:00', '2020-01-24 08:30:00', '2020-01-24 18:30:00', '1.00', '0.00', '0.00', '0.00', NULL, NULL, '0.00', NULL, NULL, '0.00', '0.00', 'reg', 0, 1, 1, 0, NULL, 0, 'WD', 'Absent', 'MANUAL', 'INPROCESS', 'Admin', NULL, 0, '2020-01-30 05:15:29', '2020-01-30 05:15:29', NULL, NULL),
(718, NULL, '2015-051', 'Dayandante, Jasmin Pasco', 1, 16, 10, '2020-01-25', NULL, NULL, '0.00', NULL, NULL, NULL, NULL, '0.00', '0.00', '0.00', '0.00', NULL, NULL, '0.00', NULL, NULL, '0.00', '0.00', 'rd_reg', 0, 1, 1, 0, NULL, 0, 'WD', 'Restday', 'MANUAL', 'INPROCESS', 'Admin', NULL, 0, '2020-01-30 05:15:29', '2020-01-30 05:15:29', NULL, NULL),
(719, NULL, '2015-051', 'Dayandante, Jasmin Pasco', 1, 16, 10, '2020-01-26', NULL, NULL, '0.00', NULL, NULL, NULL, NULL, '0.00', '0.00', '0.00', '0.00', NULL, NULL, '0.00', NULL, NULL, '0.00', '0.00', 'rd_reg', 0, 1, 1, 0, NULL, 0, 'WD', 'Restday', 'MANUAL', 'INPROCESS', 'Admin', NULL, 0, '2020-01-30 05:15:29', '2020-01-30 05:15:29', NULL, NULL),
(720, NULL, '2015-051', 'Dayandante, Jasmin Pasco', 1, 16, 10, '2020-01-28', NULL, NULL, '0.00', '2020-01-28 12:00:00', '2020-01-28 13:00:00', '2020-01-28 08:30:00', '2020-01-28 18:30:00', '1.00', '0.00', '0.00', '0.00', NULL, NULL, '0.00', NULL, NULL, '0.00', '0.00', 'reg', 0, 1, 1, 0, NULL, 0, 'WD', 'Absent', 'MANUAL', 'INPROCESS', 'Admin', NULL, 0, '2020-01-30 05:15:29', '2020-01-30 05:15:29', NULL, NULL),
(721, NULL, '2015-051', 'Dayandante, Jasmin Pasco', 1, 16, 10, '2020-01-29', NULL, NULL, '0.00', '2020-01-29 12:00:00', '2020-01-29 13:00:00', '2020-01-29 08:30:00', '2020-01-29 18:30:00', '1.00', '0.00', '0.00', '0.00', NULL, NULL, '0.00', NULL, NULL, '0.00', '0.00', 'reg', 0, 1, 1, 0, NULL, 0, 'WD', 'Absent', 'MANUAL', 'INPROCESS', 'Admin', NULL, 0, '2020-01-30 05:15:29', '2020-01-30 05:15:29', NULL, NULL),
(722, NULL, '2015-051', 'Dayandante, Jasmin Pasco', 1, 16, 10, '2020-01-30', NULL, NULL, '0.00', '2020-01-30 12:00:00', '2020-01-30 13:00:00', '2020-01-30 08:30:00', '2020-01-30 18:30:00', '1.00', '0.00', '0.00', '0.00', NULL, NULL, '0.00', NULL, NULL, '0.00', '0.00', 'reg', 0, 1, 1, 0, NULL, 0, 'WD', 'Absent', 'MANUAL', 'INPROCESS', 'Admin', NULL, 0, '2020-01-30 05:15:29', '2020-01-30 05:15:29', NULL, NULL),
(723, NULL, '2017-082', 'Flores, Juan Karlo Quisol', 1, 15, 4, '2020-01-01', NULL, NULL, '0.00', '2020-01-01 12:00:00', '2020-01-01 13:00:00', NULL, NULL, '1.00', '0.00', '0.00', '0.00', NULL, NULL, '0.00', NULL, NULL, '0.00', '0.00', 'reg', 0, 1, 1, 0, NULL, 0, 'WD', 'Absent', 'MANUAL', 'INPROCESS', 'Admin', NULL, 0, '2020-01-30 05:15:30', '2020-01-30 05:15:30', NULL, NULL),
(724, NULL, '2017-082', 'Flores, Juan Karlo Quisol', 1, 15, 4, '2020-01-02', '2020-01-02 09:30:56', '2020-01-02 17:24:24', '7.89', '2020-01-02 12:00:00', '2020-01-02 13:00:00', '2020-01-02 09:30:56', '2020-01-02 19:30:56', '1.00', '0.00', '0.00', '126.60', NULL, NULL, '0.00', NULL, NULL, '0.00', '0.00', 'reg', 0, 1, 1, 0, NULL, 0, 'WD', 'Present', 'MANUAL', 'INPROCESS', 'Admin', NULL, 0, '2020-01-30 05:15:30', '2020-01-30 05:15:30', NULL, NULL),
(725, NULL, '2017-082', 'Flores, Juan Karlo Quisol', 1, 15, 4, '2020-01-03', '2020-01-03 12:27:25', '2020-01-03 14:18:14', '1.85', '2020-01-03 12:00:00', '2020-01-03 13:00:00', '2020-01-03 12:27:25', '2020-01-03 22:27:25', '1.00', '0.00', '0.00', '489.00', NULL, NULL, '0.00', NULL, NULL, '0.00', '0.00', 'reg', 0, 1, 1, 0, NULL, 0, 'WD', 'Present', 'MANUAL', 'INPROCESS', 'Admin', NULL, 0, '2020-01-30 05:15:30', '2020-01-30 05:15:30', NULL, NULL),
(726, NULL, '2017-082', 'Flores, Juan Karlo Quisol', 1, 15, 4, '2020-01-04', NULL, NULL, '0.00', NULL, NULL, NULL, NULL, '0.00', '0.00', '0.00', '0.00', NULL, NULL, '0.00', NULL, NULL, '0.00', '0.00', 'rd_reg', 0, 1, 1, 0, NULL, 0, 'WD', 'Restday', 'MANUAL', 'INPROCESS', 'Admin', NULL, 0, '2020-01-30 05:15:30', '2020-01-30 05:15:30', NULL, NULL),
(727, NULL, '2017-082', 'Flores, Juan Karlo Quisol', 1, 15, 4, '2020-01-05', NULL, NULL, '0.00', NULL, NULL, NULL, NULL, '0.00', '0.00', '0.00', '0.00', NULL, NULL, '0.00', NULL, NULL, '0.00', '0.00', 'rd_reg', 0, 1, 1, 0, NULL, 0, 'WD', 'Restday', 'MANUAL', 'INPROCESS', 'Admin', NULL, 0, '2020-01-30 05:15:30', '2020-01-30 05:15:30', NULL, NULL),
(728, NULL, '2017-082', 'Flores, Juan Karlo Quisol', 1, 15, 4, '2020-01-06', '2020-01-06 09:12:37', '2020-01-06 17:27:51', '8.25', '2020-01-06 12:00:00', '2020-01-06 13:00:00', '2020-01-06 09:12:37', '2020-01-06 19:12:37', '1.00', '0.00', '0.00', '105.00', NULL, NULL, '0.00', NULL, NULL, '0.00', '0.00', 'reg', 0, 1, 1, 0, NULL, 0, 'WD', 'Present', 'MANUAL', 'INPROCESS', 'Admin', NULL, 0, '2020-01-30 05:15:30', '2020-01-30 05:15:30', NULL, NULL),
(729, NULL, '2017-082', 'Flores, Juan Karlo Quisol', 1, 15, 4, '2020-01-07', NULL, NULL, '0.00', '2020-01-07 12:00:00', '2020-01-07 13:00:00', NULL, NULL, '1.00', '0.00', '0.00', '0.00', NULL, NULL, '0.00', NULL, NULL, '0.00', '0.00', 'reg', 0, 1, 1, 0, NULL, 0, 'WD', 'Absent', 'MANUAL', 'INPROCESS', 'Admin', NULL, 0, '2020-01-30 05:15:30', '2020-01-30 05:15:30', NULL, NULL),
(730, NULL, '2017-082', 'Flores, Juan Karlo Quisol', 1, 15, 4, '2020-01-08', '2020-01-08 13:02:39', '2020-01-08 19:18:54', '6.27', '2020-01-08 12:00:00', '2020-01-08 13:00:00', '2020-01-08 13:02:39', '2020-01-08 23:02:39', '1.00', '0.00', '0.00', '223.80', NULL, NULL, '0.00', NULL, NULL, '0.00', '0.00', 'reg', 0, 1, 1, 0, NULL, 0, 'WD', 'Present', 'MANUAL', 'INPROCESS', 'Admin', NULL, 0, '2020-01-30 05:15:30', '2020-01-30 05:15:30', NULL, NULL);
INSERT INTO `date_and_time_records` (`id`, `register_number`, `company_id`, `employee_name`, `company_ind`, `group_ind`, `sched_template_id`, `sched_date`, `date_time_in`, `date_time_out`, `reg_total_hrs`, `lunch_out`, `lunch_in`, `schedule_shift_in`, `schedule_shift_out`, `lunch_durations_hrs`, `over_break_min`, `late_min`, `undertime_min`, `ot_time_in`, `ot_time_out`, `ot_total_hrs`, `night_diff_in`, `night_diff_out`, `night_diff_total_hrs`, `night_diff_total_ot_hrs`, `day_types`, `work_on_holiday`, `before_holiday`, `after_holiday`, `leaved`, `leave_types`, `leave_wpay`, `half_day`, `remarks`, `insystem`, `payroll_status`, `created_by`, `lu_by`, `deleted`, `created_at`, `updated_at`, `device_id_in`, `device_id_out`) VALUES
(731, NULL, '2017-082', 'Flores, Juan Karlo Quisol', 1, 15, 4, '2020-01-09', '2020-01-09 10:03:41', '2020-01-09 16:51:34', '6.80', '2020-01-09 12:00:00', '2020-01-09 13:00:00', '2020-01-09 10:03:41', '2020-01-09 20:03:41', '1.00', '0.00', '0.00', '192.00', NULL, NULL, '0.00', NULL, NULL, '0.00', '0.00', 'reg', 0, 1, 1, 0, NULL, 0, 'WD', 'Present', 'MANUAL', 'INPROCESS', 'Admin', NULL, 0, '2020-01-30 05:15:30', '2020-01-30 05:15:30', NULL, NULL),
(732, NULL, '2017-082', 'Flores, Juan Karlo Quisol', 1, 15, 4, '2020-01-10', '2020-01-10 08:52:48', '2020-01-10 17:56:24', '9.06', '2020-01-10 12:00:00', '2020-01-10 13:00:00', '2020-01-10 08:52:48', '2020-01-10 18:52:48', '1.00', '0.00', '0.00', '56.40', NULL, NULL, '0.00', NULL, NULL, '0.00', '0.00', 'reg', 0, 1, 1, 0, NULL, 0, 'WD', 'Present', 'MANUAL', 'INPROCESS', 'Admin', NULL, 0, '2020-01-30 05:15:30', '2020-01-30 05:15:30', NULL, NULL),
(733, NULL, '2017-082', 'Flores, Juan Karlo Quisol', 1, 15, 4, '2020-01-11', NULL, NULL, '0.00', NULL, NULL, NULL, NULL, '0.00', '0.00', '0.00', '0.00', NULL, NULL, '0.00', NULL, NULL, '0.00', '0.00', 'rd_reg', 0, 1, 1, 0, NULL, 0, 'WD', 'Restday', 'MANUAL', 'INPROCESS', 'Admin', NULL, 0, '2020-01-30 05:15:30', '2020-01-30 05:15:30', NULL, NULL),
(734, NULL, '2017-082', 'Flores, Juan Karlo Quisol', 1, 15, 4, '2020-01-12', NULL, NULL, '0.00', NULL, NULL, NULL, NULL, '0.00', '0.00', '0.00', '0.00', NULL, NULL, '0.00', NULL, NULL, '0.00', '0.00', 'rd_reg', 0, 1, 1, 0, NULL, 0, 'WD', 'Restday', 'MANUAL', 'INPROCESS', 'Admin', NULL, 0, '2020-01-30 05:15:30', '2020-01-30 05:15:30', NULL, NULL),
(735, NULL, '2017-082', 'Flores, Juan Karlo Quisol', 1, 15, 4, '2020-01-13', '2020-01-13 09:13:18', '2020-01-13 17:07:46', '7.91', '2020-01-13 12:00:00', '2020-01-13 13:00:00', '2020-01-13 09:13:18', '2020-01-13 19:13:18', '1.00', '0.00', '0.00', '125.40', NULL, NULL, '0.00', NULL, NULL, '0.00', '0.00', 'reg', 0, 1, 1, 0, NULL, 0, 'WD', 'Present', 'MANUAL', 'INPROCESS', 'Admin', NULL, 0, '2020-01-30 05:15:30', '2020-01-30 05:15:30', NULL, NULL),
(736, NULL, '2017-082', 'Flores, Juan Karlo Quisol', 1, 15, 4, '2020-01-14', NULL, NULL, '0.00', '2020-01-14 12:00:00', '2020-01-14 13:00:00', NULL, NULL, '1.00', '0.00', '0.00', '0.00', NULL, NULL, '0.00', NULL, NULL, '0.00', '0.00', 'reg', 0, 1, 1, 0, NULL, 0, 'WD', 'Absent', 'MANUAL', 'INPROCESS', 'Admin', NULL, 0, '2020-01-30 05:15:31', '2020-01-30 05:15:31', NULL, NULL),
(737, NULL, '2017-082', 'Flores, Juan Karlo Quisol', 1, 15, 4, '2020-01-15', '2020-01-15 13:41:09', '2020-01-15 17:28:49', '3.79', '2020-01-15 12:00:00', '2020-01-15 13:00:00', '2020-01-15 13:41:09', '2020-01-15 23:41:09', '1.00', '0.00', '0.00', '372.60', NULL, NULL, '0.00', NULL, NULL, '0.00', '0.00', 'reg', 0, 1, 1, 0, NULL, 0, 'WD', 'Present', 'MANUAL', 'INPROCESS', 'Admin', NULL, 0, '2020-01-30 05:15:31', '2020-01-30 05:15:31', NULL, NULL),
(738, NULL, '2017-082', 'Flores, Juan Karlo Quisol', 1, 15, 4, '2020-01-16', '2020-01-16 09:17:53', '2020-01-16 17:50:28', '8.54', '2020-01-16 12:00:00', '2020-01-16 13:00:00', '2020-01-16 09:17:53', '2020-01-16 19:17:53', '1.00', '0.00', '0.00', '87.60', NULL, NULL, '0.00', NULL, NULL, '0.00', '0.00', 'reg', 0, 1, 1, 0, NULL, 0, 'WD', 'Present', 'MANUAL', 'INPROCESS', 'Admin', NULL, 0, '2020-01-30 05:15:31', '2020-01-30 05:15:31', NULL, NULL),
(739, NULL, '2017-082', 'Flores, Juan Karlo Quisol', 1, 15, 4, '2020-01-17', '2020-01-17 12:05:36', '2020-01-17 14:01:50', '1.94', '2020-01-17 12:00:00', '2020-01-17 13:00:00', '2020-01-17 12:05:36', '2020-01-17 22:05:36', '1.00', '0.00', '0.00', '483.60', NULL, NULL, '0.00', NULL, NULL, '0.00', '0.00', 'reg', 0, 1, 1, 0, NULL, 0, 'WD', 'Present', 'MANUAL', 'INPROCESS', 'Admin', NULL, 0, '2020-01-30 05:15:31', '2020-01-30 05:15:31', NULL, NULL),
(740, NULL, '2017-082', 'Flores, Juan Karlo Quisol', 1, 15, 4, '2020-01-18', NULL, NULL, '0.00', NULL, NULL, NULL, NULL, '0.00', '0.00', '0.00', '0.00', NULL, NULL, '0.00', NULL, NULL, '0.00', '0.00', 'rd_reg', 0, 1, 1, 0, NULL, 0, 'WD', 'Restday', 'MANUAL', 'INPROCESS', 'Admin', NULL, 0, '2020-01-30 05:15:31', '2020-01-30 05:15:31', NULL, NULL),
(741, NULL, '2017-082', 'Flores, Juan Karlo Quisol', 1, 15, 4, '2020-01-19', NULL, NULL, '0.00', NULL, NULL, NULL, NULL, '0.00', '0.00', '0.00', '0.00', NULL, NULL, '0.00', NULL, NULL, '0.00', '0.00', 'rd_reg', 0, 1, 1, 0, NULL, 0, 'WD', 'Restday', 'MANUAL', 'INPROCESS', 'Admin', NULL, 0, '2020-01-30 05:15:31', '2020-01-30 05:15:31', NULL, NULL),
(742, NULL, '2017-082', 'Flores, Juan Karlo Quisol', 1, 15, 4, '2020-01-20', '2020-01-20 10:25:26', '2020-01-20 17:58:29', '7.55', '2020-01-20 12:00:00', '2020-01-20 13:00:00', '2020-01-20 10:25:26', '2020-01-20 20:25:26', '1.00', '0.00', '0.00', '147.00', NULL, NULL, '0.00', NULL, NULL, '0.00', '0.00', 'reg', 0, 1, 1, 0, NULL, 0, 'WD', 'Present', 'MANUAL', 'INPROCESS', 'Admin', NULL, 0, '2020-01-30 05:15:31', '2020-01-30 05:15:31', NULL, NULL),
(743, '202000007', '2017-082', 'Flores, Juan Karlo Quisol', 1, 15, 4, '2020-01-21', '2020-01-21 09:06:04', '2020-01-21 17:29:46', '8.40', '2020-01-21 12:00:00', '2020-01-21 13:00:00', '2020-01-21 09:06:04', '2020-01-21 19:06:04', '1.00', '0.00', '0.00', '96.60', NULL, NULL, '0.00', NULL, NULL, '0.00', '0.00', 'reg', 0, 1, 1, 0, NULL, 0, 'WD', 'Present', 'MANUAL', 'RELEASED', 'Admin', 'Payroll Admin', 0, '2020-01-30 05:15:31', '2020-03-04 02:41:08', NULL, NULL),
(744, '202000007', '2017-082', 'Flores, Juan Karlo Quisol', 1, 15, 4, '2020-01-22', NULL, NULL, '0.00', '2020-01-22 12:00:00', '2020-01-22 13:00:00', NULL, NULL, '1.00', '0.00', '0.00', '0.00', NULL, NULL, '0.00', NULL, NULL, '0.00', '0.00', 'reg', 0, 1, 1, 0, NULL, 0, 'WD', 'Absent', 'MANUAL', 'RELEASED', 'Admin', 'Payroll Admin', 0, '2020-01-30 05:15:31', '2020-03-04 02:41:08', NULL, NULL),
(745, '202000007', '2017-082', 'Flores, Juan Karlo Quisol', 1, 15, 4, '2020-01-23', '2020-01-23 08:49:24', '2020-01-23 15:49:02', '6.99', '2020-01-23 12:00:00', '2020-01-23 13:00:00', '2020-01-23 08:49:24', '2020-01-23 18:49:24', '1.00', '0.00', '0.00', '180.60', NULL, NULL, '0.00', NULL, NULL, '0.00', '0.00', 'reg', 0, 1, 1, 0, NULL, 0, 'WD', 'Present', 'MANUAL', 'RELEASED', 'Admin', 'Payroll Admin', 0, '2020-01-30 05:15:31', '2020-03-04 02:41:08', NULL, NULL),
(746, '202000007', '2017-082', 'Flores, Juan Karlo Quisol', 1, 15, 4, '2020-01-24', '2020-01-24 09:10:15', '2020-01-24 17:13:56', '8.06', '2020-01-24 12:00:00', '2020-01-24 13:00:00', '2020-01-24 09:10:15', '2020-01-24 19:10:15', '1.00', '0.00', '0.00', '116.40', NULL, NULL, '0.00', NULL, NULL, '0.00', '0.00', 'reg', 0, 1, 1, 0, NULL, 0, 'WD', 'Present', 'MANUAL', 'RELEASED', 'Admin', 'Payroll Admin', 0, '2020-01-30 05:15:32', '2020-03-04 02:41:08', NULL, NULL),
(747, '202000007', '2017-082', 'Flores, Juan Karlo Quisol', 1, 15, 4, '2020-01-25', NULL, NULL, '0.00', NULL, NULL, NULL, NULL, '0.00', '0.00', '0.00', '0.00', NULL, NULL, '0.00', NULL, NULL, '0.00', '0.00', 'rd_reg', 0, 1, 1, 0, NULL, 0, 'WD', 'Restday', 'MANUAL', 'RELEASED', 'Admin', 'Payroll Admin', 0, '2020-01-30 05:15:32', '2020-03-04 02:41:08', NULL, NULL),
(748, '202000007', '2017-082', 'Flores, Juan Karlo Quisol', 1, 15, 4, '2020-01-26', NULL, NULL, '0.00', NULL, NULL, NULL, NULL, '0.00', '0.00', '0.00', '0.00', NULL, NULL, '0.00', NULL, NULL, '0.00', '0.00', 'rd_reg', 0, 1, 1, 0, NULL, 0, 'WD', 'Restday', 'MANUAL', 'RELEASED', 'Admin', 'Payroll Admin', 0, '2020-01-30 05:15:32', '2020-03-04 02:41:08', NULL, NULL),
(749, '202000007', '2017-082', 'Flores, Juan Karlo Quisol', 1, 15, 4, '2020-01-28', '2020-01-28 08:57:51', '2020-01-28 15:06:06', '6.14', '2020-01-28 12:00:00', '2020-01-28 13:00:00', '2020-01-28 08:57:51', '2020-01-28 18:57:51', '1.00', '0.00', '0.00', '231.60', NULL, NULL, '0.00', NULL, NULL, '0.00', '0.00', 'reg', 0, 1, 1, 0, NULL, 0, 'WD', 'Present', 'MANUAL', 'RELEASED', 'Admin', 'Payroll Admin', 0, '2020-01-30 05:15:32', '2020-03-04 02:41:08', NULL, NULL),
(750, '202000007', '2017-082', 'Flores, Juan Karlo Quisol', 1, 15, 4, '2020-01-29', '2020-01-29 14:01:15', '2020-01-29 17:29:47', '3.48', '2020-01-29 12:00:00', '2020-01-29 13:00:00', '2020-01-29 14:01:15', '2020-01-30 00:01:15', '1.00', '0.00', '0.00', '391.20', NULL, NULL, '0.00', NULL, NULL, '0.00', '0.00', 'reg', 0, 1, 1, 0, NULL, 0, 'WD', 'Present', 'MANUAL', 'RELEASED', 'Admin', 'Payroll Admin', 0, '2020-01-30 05:15:32', '2020-03-04 02:41:08', NULL, NULL),
(751, '202000007', '2017-082', 'Flores, Juan Karlo Quisol', 1, 15, 4, '2020-01-30', '2020-01-30 09:07:29', NULL, '0.00', '2020-01-30 12:00:00', '2020-01-30 13:00:00', '2020-01-30 09:07:29', '2020-01-30 19:07:29', '1.00', '0.00', '0.00', '0.00', NULL, NULL, '0.00', NULL, NULL, '0.00', '0.00', 'reg', 0, 1, 1, 0, NULL, 0, 'WD', 'No Time Out', 'MANUAL', 'RELEASED', 'Admin', 'Payroll Admin', 0, '2020-01-30 05:15:32', '2020-03-04 02:41:08', NULL, NULL),
(752, NULL, '2015-056', 'Inguito, Kimberly  Mae Gonzales', 1, 15, 12, '2020-01-01', NULL, NULL, '0.00', '2020-01-01 12:00:00', '2020-01-01 13:00:00', '2020-01-01 08:30:00', '2020-01-01 18:30:00', '1.00', '0.00', '0.00', '0.00', NULL, NULL, '0.00', NULL, NULL, '0.00', '0.00', 'reg', 0, 1, 1, 0, NULL, 0, 'WD', 'Absent', 'MANUAL', 'INPROCESS', 'Admin', NULL, 0, '2020-01-30 05:15:32', '2020-01-30 05:15:32', NULL, NULL),
(753, NULL, '2015-056', 'Inguito, Kimberly  Mae Gonzales', 1, 15, 12, '2020-01-02', NULL, NULL, '0.00', '2020-01-02 12:00:00', '2020-01-02 13:00:00', '2020-01-02 08:30:00', '2020-01-02 18:30:00', '1.00', '0.00', '0.00', '0.00', NULL, NULL, '0.00', NULL, NULL, '0.00', '0.00', 'reg', 0, 1, 1, 0, NULL, 0, 'WD', 'Absent', 'MANUAL', 'INPROCESS', 'Admin', NULL, 0, '2020-01-30 05:15:32', '2020-01-30 05:15:32', NULL, NULL),
(754, NULL, '2015-056', 'Inguito, Kimberly  Mae Gonzales', 1, 15, 12, '2020-01-03', NULL, NULL, '0.00', '2020-01-03 12:00:00', '2020-01-03 13:00:00', '2020-01-03 08:30:00', '2020-01-03 18:30:00', '1.00', '0.00', '0.00', '0.00', NULL, NULL, '0.00', NULL, NULL, '0.00', '0.00', 'reg', 0, 1, 1, 0, NULL, 0, 'WD', 'Absent', 'MANUAL', 'INPROCESS', 'Admin', NULL, 0, '2020-01-30 05:15:32', '2020-01-30 05:15:32', NULL, NULL),
(755, NULL, '2015-056', 'Inguito, Kimberly  Mae Gonzales', 1, 15, 12, '2020-01-04', NULL, NULL, '0.00', '2020-01-04 12:00:00', '2020-01-04 13:00:00', '2020-01-04 08:30:00', '2020-01-04 18:30:00', '1.00', '0.00', '0.00', '0.00', NULL, NULL, '0.00', NULL, NULL, '0.00', '0.00', 'reg', 0, 1, 1, 0, NULL, 0, 'WD', 'Absent', 'MANUAL', 'INPROCESS', 'Admin', NULL, 0, '2020-01-30 05:15:32', '2020-01-30 05:15:32', NULL, NULL),
(756, NULL, '2015-056', 'Inguito, Kimberly  Mae Gonzales', 1, 15, 12, '2020-01-05', NULL, NULL, '0.00', NULL, NULL, NULL, NULL, '0.00', '0.00', '0.00', '0.00', NULL, NULL, '0.00', NULL, NULL, '0.00', '0.00', 'rd_reg', 0, 1, 1, 0, NULL, 0, 'WD', 'Restday', 'MANUAL', 'INPROCESS', 'Admin', NULL, 0, '2020-01-30 05:15:32', '2020-01-30 05:15:32', NULL, NULL),
(757, NULL, '2015-056', 'Inguito, Kimberly  Mae Gonzales', 1, 15, 12, '2020-01-06', NULL, NULL, '0.00', NULL, NULL, NULL, NULL, '0.00', '0.00', '0.00', '0.00', NULL, NULL, '0.00', NULL, NULL, '0.00', '0.00', 'rd_reg', 0, 1, 1, 0, NULL, 0, 'WD', 'Restday', 'MANUAL', 'INPROCESS', 'Admin', NULL, 0, '2020-01-30 05:15:32', '2020-01-30 05:15:32', NULL, NULL),
(758, NULL, '2015-056', 'Inguito, Kimberly  Mae Gonzales', 1, 15, 12, '2020-01-07', NULL, NULL, '0.00', '2020-01-07 12:00:00', '2020-01-07 13:00:00', '2020-01-07 08:30:00', '2020-01-07 18:30:00', '1.00', '0.00', '0.00', '0.00', NULL, NULL, '0.00', NULL, NULL, '0.00', '0.00', 'reg', 0, 1, 1, 0, NULL, 0, 'WD', 'Absent', 'MANUAL', 'INPROCESS', 'Admin', NULL, 0, '2020-01-30 05:15:32', '2020-01-30 05:15:32', NULL, NULL),
(759, NULL, '2015-056', 'Inguito, Kimberly  Mae Gonzales', 1, 15, 12, '2020-01-08', NULL, NULL, '0.00', '2020-01-08 12:00:00', '2020-01-08 13:00:00', '2020-01-08 08:30:00', '2020-01-08 18:30:00', '1.00', '0.00', '0.00', '0.00', NULL, NULL, '0.00', NULL, NULL, '0.00', '0.00', 'reg', 0, 1, 1, 0, NULL, 0, 'WD', 'Absent', 'MANUAL', 'INPROCESS', 'Admin', NULL, 0, '2020-01-30 05:15:32', '2020-01-30 05:15:32', NULL, NULL),
(760, NULL, '2015-056', 'Inguito, Kimberly  Mae Gonzales', 1, 15, 12, '2020-01-09', NULL, NULL, '0.00', '2020-01-09 12:00:00', '2020-01-09 13:00:00', '2020-01-09 08:30:00', '2020-01-09 18:30:00', '1.00', '0.00', '0.00', '0.00', NULL, NULL, '0.00', NULL, NULL, '0.00', '0.00', 'reg', 0, 1, 1, 0, NULL, 0, 'WD', 'Absent', 'MANUAL', 'INPROCESS', 'Admin', NULL, 0, '2020-01-30 05:15:33', '2020-01-30 05:15:33', NULL, NULL),
(761, NULL, '2015-056', 'Inguito, Kimberly  Mae Gonzales', 1, 15, 12, '2020-01-10', NULL, NULL, '0.00', '2020-01-10 12:00:00', '2020-01-10 13:00:00', '2020-01-10 08:30:00', '2020-01-10 18:30:00', '1.00', '0.00', '0.00', '0.00', NULL, NULL, '0.00', NULL, NULL, '0.00', '0.00', 'reg', 0, 1, 1, 0, NULL, 0, 'WD', 'Absent', 'MANUAL', 'INPROCESS', 'Admin', NULL, 0, '2020-01-30 05:15:33', '2020-01-30 05:15:33', NULL, NULL),
(762, NULL, '2015-056', 'Inguito, Kimberly  Mae Gonzales', 1, 15, 12, '2020-01-11', NULL, NULL, '0.00', '2020-01-11 12:00:00', '2020-01-11 13:00:00', '2020-01-11 08:30:00', '2020-01-11 18:30:00', '1.00', '0.00', '0.00', '0.00', NULL, NULL, '0.00', NULL, NULL, '0.00', '0.00', 'reg', 0, 1, 1, 0, NULL, 0, 'WD', 'Absent', 'MANUAL', 'INPROCESS', 'Admin', NULL, 0, '2020-01-30 05:15:33', '2020-01-30 05:15:33', NULL, NULL),
(763, NULL, '2015-056', 'Inguito, Kimberly  Mae Gonzales', 1, 15, 12, '2020-01-12', NULL, NULL, '0.00', NULL, NULL, NULL, NULL, '0.00', '0.00', '0.00', '0.00', NULL, NULL, '0.00', NULL, NULL, '0.00', '0.00', 'rd_reg', 0, 1, 1, 0, NULL, 0, 'WD', 'Restday', 'MANUAL', 'INPROCESS', 'Admin', NULL, 0, '2020-01-30 05:15:33', '2020-01-30 05:15:33', NULL, NULL),
(764, NULL, '2015-056', 'Inguito, Kimberly  Mae Gonzales', 1, 15, 12, '2020-01-13', NULL, NULL, '0.00', NULL, NULL, NULL, NULL, '0.00', '0.00', '0.00', '0.00', NULL, NULL, '0.00', NULL, NULL, '0.00', '0.00', 'rd_reg', 0, 1, 1, 0, NULL, 0, 'WD', 'Restday', 'MANUAL', 'INPROCESS', 'Admin', NULL, 0, '2020-01-30 05:15:33', '2020-01-30 05:15:33', NULL, NULL),
(765, NULL, '2015-056', 'Inguito, Kimberly  Mae Gonzales', 1, 15, 12, '2020-01-14', NULL, NULL, '0.00', '2020-01-14 12:00:00', '2020-01-14 13:00:00', '2020-01-14 08:30:00', '2020-01-14 18:30:00', '1.00', '0.00', '0.00', '0.00', NULL, NULL, '0.00', NULL, NULL, '0.00', '0.00', 'reg', 0, 1, 1, 0, NULL, 0, 'WD', 'Absent', 'MANUAL', 'INPROCESS', 'Admin', NULL, 0, '2020-01-30 05:15:33', '2020-01-30 05:15:33', NULL, NULL),
(766, NULL, '2015-056', 'Inguito, Kimberly  Mae Gonzales', 1, 15, 12, '2020-01-15', NULL, NULL, '0.00', '2020-01-15 12:00:00', '2020-01-15 13:00:00', '2020-01-15 08:30:00', '2020-01-15 18:30:00', '1.00', '0.00', '0.00', '0.00', NULL, NULL, '0.00', NULL, NULL, '0.00', '0.00', 'reg', 0, 1, 1, 0, NULL, 0, 'WD', 'Absent', 'MANUAL', 'INPROCESS', 'Admin', NULL, 0, '2020-01-30 05:15:33', '2020-01-30 05:15:33', NULL, NULL),
(767, NULL, '2015-056', 'Inguito, Kimberly  Mae Gonzales', 1, 15, 12, '2020-01-16', NULL, NULL, '0.00', '2020-01-16 12:00:00', '2020-01-16 13:00:00', '2020-01-16 08:30:00', '2020-01-16 18:30:00', '1.00', '0.00', '0.00', '0.00', NULL, NULL, '0.00', NULL, NULL, '0.00', '0.00', 'reg', 0, 1, 1, 0, NULL, 0, 'WD', 'Absent', 'MANUAL', 'INPROCESS', 'Admin', NULL, 0, '2020-01-30 05:15:33', '2020-01-30 05:15:33', NULL, NULL),
(768, NULL, '2015-056', 'Inguito, Kimberly  Mae Gonzales', 1, 15, 12, '2020-01-17', NULL, NULL, '0.00', '2020-01-17 12:00:00', '2020-01-17 13:00:00', '2020-01-17 08:30:00', '2020-01-17 18:30:00', '1.00', '0.00', '0.00', '0.00', NULL, NULL, '0.00', NULL, NULL, '0.00', '0.00', 'reg', 0, 1, 1, 0, NULL, 0, 'WD', 'Absent', 'MANUAL', 'INPROCESS', 'Admin', NULL, 0, '2020-01-30 05:15:33', '2020-01-30 05:15:33', NULL, NULL),
(769, NULL, '2015-056', 'Inguito, Kimberly  Mae Gonzales', 1, 15, 12, '2020-01-18', NULL, NULL, '0.00', '2020-01-18 12:00:00', '2020-01-18 13:00:00', '2020-01-18 08:30:00', '2020-01-18 18:30:00', '1.00', '0.00', '0.00', '0.00', NULL, NULL, '0.00', NULL, NULL, '0.00', '0.00', 'reg', 0, 1, 1, 0, NULL, 0, 'WD', 'Absent', 'MANUAL', 'INPROCESS', 'Admin', NULL, 0, '2020-01-30 05:15:33', '2020-01-30 05:15:33', NULL, NULL),
(770, NULL, '2015-056', 'Inguito, Kimberly  Mae Gonzales', 1, 15, 12, '2020-01-19', NULL, NULL, '0.00', NULL, NULL, NULL, NULL, '0.00', '0.00', '0.00', '0.00', NULL, NULL, '0.00', NULL, NULL, '0.00', '0.00', 'rd_reg', 0, 1, 1, 0, NULL, 0, 'WD', 'Restday', 'MANUAL', 'INPROCESS', 'Admin', NULL, 0, '2020-01-30 05:15:33', '2020-01-30 05:15:33', NULL, NULL),
(771, NULL, '2015-056', 'Inguito, Kimberly  Mae Gonzales', 1, 15, 12, '2020-01-20', NULL, NULL, '0.00', NULL, NULL, NULL, NULL, '0.00', '0.00', '0.00', '0.00', NULL, NULL, '0.00', NULL, NULL, '0.00', '0.00', 'rd_reg', 0, 1, 1, 0, NULL, 0, 'WD', 'Restday', 'MANUAL', 'INPROCESS', 'Admin', NULL, 0, '2020-01-30 05:15:33', '2020-01-30 05:15:33', NULL, NULL),
(772, '202000007', '2015-056', 'Inguito, Kimberly  Mae Gonzales', 1, 15, 12, '2020-01-21', NULL, NULL, '0.00', '2020-01-21 12:00:00', '2020-01-21 13:00:00', '2020-01-21 08:30:00', '2020-01-21 18:30:00', '1.00', '0.00', '0.00', '0.00', NULL, NULL, '0.00', NULL, NULL, '0.00', '0.00', 'reg', 0, 1, 1, 0, NULL, 0, 'WD', 'Absent', 'MANUAL', 'RELEASED', 'Admin', 'Payroll Admin', 0, '2020-01-30 05:15:33', '2020-03-04 02:41:08', NULL, NULL),
(773, '202000007', '2015-056', 'Inguito, Kimberly  Mae Gonzales', 1, 15, 12, '2020-01-22', NULL, NULL, '0.00', '2020-01-22 12:00:00', '2020-01-22 13:00:00', '2020-01-22 08:30:00', '2020-01-22 18:30:00', '1.00', '0.00', '0.00', '0.00', NULL, NULL, '0.00', NULL, NULL, '0.00', '0.00', 'reg', 0, 1, 1, 0, NULL, 0, 'WD', 'Absent', 'MANUAL', 'RELEASED', 'Admin', 'Payroll Admin', 0, '2020-01-30 05:15:33', '2020-03-04 02:41:08', NULL, NULL),
(774, '202000007', '2015-056', 'Inguito, Kimberly  Mae Gonzales', 1, 15, 12, '2020-01-23', NULL, NULL, '0.00', '2020-01-23 12:00:00', '2020-01-23 13:00:00', '2020-01-23 08:30:00', '2020-01-23 18:30:00', '1.00', '0.00', '0.00', '0.00', NULL, NULL, '0.00', NULL, NULL, '0.00', '0.00', 'reg', 0, 1, 1, 0, NULL, 0, 'WD', 'Absent', 'MANUAL', 'RELEASED', 'Admin', 'Payroll Admin', 0, '2020-01-30 05:15:33', '2020-03-04 02:41:08', NULL, NULL),
(775, '202000007', '2015-056', 'Inguito, Kimberly  Mae Gonzales', 1, 15, 12, '2020-01-24', NULL, NULL, '0.00', '2020-01-24 12:00:00', '2020-01-24 13:00:00', '2020-01-24 08:30:00', '2020-01-24 18:30:00', '1.00', '0.00', '0.00', '0.00', NULL, NULL, '0.00', NULL, NULL, '0.00', '0.00', 'reg', 0, 1, 1, 0, NULL, 0, 'WD', 'Absent', 'MANUAL', 'RELEASED', 'Admin', 'Payroll Admin', 0, '2020-01-30 05:15:33', '2020-03-04 02:41:08', NULL, NULL),
(776, '202000007', '2015-056', 'Inguito, Kimberly  Mae Gonzales', 1, 15, 12, '2020-01-25', NULL, NULL, '0.00', '2020-01-25 12:00:00', '2020-01-25 13:00:00', '2020-01-25 08:30:00', '2020-01-25 18:30:00', '1.00', '0.00', '0.00', '0.00', NULL, NULL, '0.00', NULL, NULL, '0.00', '0.00', 'reg', 0, 1, 1, 0, NULL, 0, 'WD', 'Absent', 'MANUAL', 'RELEASED', 'Admin', 'Payroll Admin', 0, '2020-01-30 05:15:34', '2020-03-04 02:41:08', NULL, NULL),
(777, '202000007', '2015-056', 'Inguito, Kimberly  Mae Gonzales', 1, 15, 12, '2020-01-26', NULL, NULL, '0.00', NULL, NULL, NULL, NULL, '0.00', '0.00', '0.00', '0.00', NULL, NULL, '0.00', NULL, NULL, '0.00', '0.00', 'rd_reg', 0, 1, 1, 0, NULL, 0, 'WD', 'Restday', 'MANUAL', 'RELEASED', 'Admin', 'Payroll Admin', 0, '2020-01-30 05:15:34', '2020-03-04 02:41:08', NULL, NULL),
(778, '202000007', '2015-056', 'Inguito, Kimberly  Mae Gonzales', 1, 15, 12, '2020-01-28', NULL, NULL, '0.00', '2020-01-28 12:00:00', '2020-01-28 13:00:00', '2020-01-28 08:30:00', '2020-01-28 18:30:00', '1.00', '0.00', '0.00', '0.00', NULL, NULL, '0.00', NULL, NULL, '0.00', '0.00', 'reg', 0, 1, 1, 0, NULL, 0, 'WD', 'Absent', 'MANUAL', 'RELEASED', 'Admin', 'Payroll Admin', 0, '2020-01-30 05:15:34', '2020-03-04 02:41:08', NULL, NULL),
(779, '202000007', '2015-056', 'Inguito, Kimberly  Mae Gonzales', 1, 15, 12, '2020-01-29', NULL, NULL, '0.00', '2020-01-29 12:00:00', '2020-01-29 13:00:00', '2020-01-29 08:30:00', '2020-01-29 18:30:00', '1.00', '0.00', '0.00', '0.00', NULL, NULL, '0.00', NULL, NULL, '0.00', '0.00', 'reg', 0, 1, 1, 0, NULL, 0, 'WD', 'Absent', 'MANUAL', 'RELEASED', 'Admin', 'Payroll Admin', 0, '2020-01-30 05:15:34', '2020-03-04 02:41:08', NULL, NULL),
(780, '202000007', '2015-056', 'Inguito, Kimberly  Mae Gonzales', 1, 15, 12, '2020-01-30', NULL, NULL, '0.00', '2020-01-30 12:00:00', '2020-01-30 13:00:00', '2020-01-30 08:30:00', '2020-01-30 18:30:00', '1.00', '0.00', '0.00', '0.00', NULL, NULL, '0.00', NULL, NULL, '0.00', '0.00', 'reg', 0, 1, 1, 0, NULL, 0, 'WD', 'Absent', 'MANUAL', 'RELEASED', 'Admin', 'Payroll Admin', 0, '2020-01-30 05:15:34', '2020-03-04 02:41:08', NULL, NULL),
(781, NULL, '2011-209', 'Kempis, Mark Arthur Avelino', 1, 15, 10, '2020-01-01', NULL, NULL, '0.00', '2020-01-01 12:00:00', '2020-01-01 13:00:00', '2020-01-01 08:30:00', '2020-01-01 18:30:00', '1.00', '0.00', '0.00', '0.00', NULL, NULL, '0.00', NULL, NULL, '0.00', '0.00', 'reg', 0, 1, 1, 0, NULL, 0, 'WD', 'Absent', 'MANUAL', 'INPROCESS', 'Admin', NULL, 0, '2020-01-30 05:15:34', '2020-01-30 05:15:34', NULL, NULL),
(782, NULL, '2011-209', 'Kempis, Mark Arthur Avelino', 1, 15, 10, '2020-01-02', NULL, NULL, '0.00', '2020-01-02 12:00:00', '2020-01-02 13:00:00', '2020-01-02 08:30:00', '2020-01-02 18:30:00', '1.00', '0.00', '0.00', '0.00', NULL, NULL, '0.00', NULL, NULL, '0.00', '0.00', 'reg', 0, 1, 1, 0, NULL, 0, 'WD', 'Absent', 'MANUAL', 'INPROCESS', 'Admin', NULL, 0, '2020-01-30 05:15:34', '2020-01-30 05:15:34', NULL, NULL),
(783, NULL, '2011-209', 'Kempis, Mark Arthur Avelino', 1, 15, 10, '2020-01-03', NULL, NULL, '0.00', '2020-01-03 12:00:00', '2020-01-03 13:00:00', '2020-01-03 08:30:00', '2020-01-03 18:30:00', '1.00', '0.00', '0.00', '0.00', NULL, NULL, '0.00', NULL, NULL, '0.00', '0.00', 'reg', 0, 1, 1, 0, NULL, 0, 'WD', 'Absent', 'MANUAL', 'INPROCESS', 'Admin', NULL, 0, '2020-01-30 05:15:34', '2020-01-30 05:15:34', NULL, NULL),
(784, NULL, '2011-209', 'Kempis, Mark Arthur Avelino', 1, 15, 10, '2020-01-04', NULL, NULL, '0.00', NULL, NULL, NULL, NULL, '0.00', '0.00', '0.00', '0.00', NULL, NULL, '0.00', NULL, NULL, '0.00', '0.00', 'rd_reg', 0, 1, 1, 0, NULL, 0, 'WD', 'Restday', 'MANUAL', 'INPROCESS', 'Admin', NULL, 0, '2020-01-30 05:15:34', '2020-01-30 05:15:34', NULL, NULL),
(785, NULL, '2011-209', 'Kempis, Mark Arthur Avelino', 1, 15, 10, '2020-01-05', NULL, NULL, '0.00', NULL, NULL, NULL, NULL, '0.00', '0.00', '0.00', '0.00', NULL, NULL, '0.00', NULL, NULL, '0.00', '0.00', 'rd_reg', 0, 1, 1, 0, NULL, 0, 'WD', 'Restday', 'MANUAL', 'INPROCESS', 'Admin', NULL, 0, '2020-01-30 05:15:34', '2020-01-30 05:15:34', NULL, NULL),
(786, NULL, '2011-209', 'Kempis, Mark Arthur Avelino', 1, 15, 10, '2020-01-06', NULL, NULL, '0.00', '2020-01-06 12:00:00', '2020-01-06 13:00:00', '2020-01-06 08:30:00', '2020-01-06 18:30:00', '1.00', '0.00', '0.00', '0.00', NULL, NULL, '0.00', NULL, NULL, '0.00', '0.00', 'reg', 0, 1, 1, 0, NULL, 0, 'WD', 'Absent', 'MANUAL', 'INPROCESS', 'Admin', NULL, 0, '2020-01-30 05:15:34', '2020-01-30 05:15:34', NULL, NULL),
(787, NULL, '2011-209', 'Kempis, Mark Arthur Avelino', 1, 15, 10, '2020-01-07', NULL, NULL, '0.00', '2020-01-07 12:00:00', '2020-01-07 13:00:00', '2020-01-07 08:30:00', '2020-01-07 18:30:00', '1.00', '0.00', '0.00', '0.00', NULL, NULL, '0.00', NULL, NULL, '0.00', '0.00', 'reg', 0, 1, 1, 0, NULL, 0, 'WD', 'Absent', 'MANUAL', 'INPROCESS', 'Admin', NULL, 0, '2020-01-30 05:15:34', '2020-01-30 05:15:34', NULL, NULL),
(788, NULL, '2011-209', 'Kempis, Mark Arthur Avelino', 1, 15, 10, '2020-01-08', NULL, NULL, '0.00', '2020-01-08 12:00:00', '2020-01-08 13:00:00', '2020-01-08 08:30:00', '2020-01-08 18:30:00', '1.00', '0.00', '0.00', '0.00', NULL, NULL, '0.00', NULL, NULL, '0.00', '0.00', 'reg', 0, 1, 1, 0, NULL, 0, 'WD', 'Absent', 'MANUAL', 'INPROCESS', 'Admin', NULL, 0, '2020-01-30 05:15:34', '2020-01-30 05:15:34', NULL, NULL),
(789, NULL, '2011-209', 'Kempis, Mark Arthur Avelino', 1, 15, 10, '2020-01-09', NULL, NULL, '0.00', '2020-01-09 12:00:00', '2020-01-09 13:00:00', '2020-01-09 08:30:00', '2020-01-09 18:30:00', '1.00', '0.00', '0.00', '0.00', NULL, NULL, '0.00', NULL, NULL, '0.00', '0.00', 'reg', 0, 1, 1, 0, NULL, 0, 'WD', 'Absent', 'MANUAL', 'INPROCESS', 'Admin', NULL, 0, '2020-01-30 05:15:34', '2020-01-30 05:15:34', NULL, NULL),
(790, NULL, '2011-209', 'Kempis, Mark Arthur Avelino', 1, 15, 10, '2020-01-10', NULL, NULL, '0.00', '2020-01-10 12:00:00', '2020-01-10 13:00:00', '2020-01-10 08:30:00', '2020-01-10 18:30:00', '1.00', '0.00', '0.00', '0.00', NULL, NULL, '0.00', NULL, NULL, '0.00', '0.00', 'reg', 0, 1, 1, 0, NULL, 0, 'WD', 'Absent', 'MANUAL', 'INPROCESS', 'Admin', NULL, 0, '2020-01-30 05:15:34', '2020-01-30 05:15:34', NULL, NULL),
(791, NULL, '2011-209', 'Kempis, Mark Arthur Avelino', 1, 15, 10, '2020-01-11', NULL, NULL, '0.00', NULL, NULL, NULL, NULL, '0.00', '0.00', '0.00', '0.00', NULL, NULL, '0.00', NULL, NULL, '0.00', '0.00', 'rd_reg', 0, 1, 1, 0, NULL, 0, 'WD', 'Restday', 'MANUAL', 'INPROCESS', 'Admin', NULL, 0, '2020-01-30 05:15:35', '2020-01-30 05:15:35', NULL, NULL),
(792, NULL, '2011-209', 'Kempis, Mark Arthur Avelino', 1, 15, 10, '2020-01-12', NULL, NULL, '0.00', NULL, NULL, NULL, NULL, '0.00', '0.00', '0.00', '0.00', NULL, NULL, '0.00', NULL, NULL, '0.00', '0.00', 'rd_reg', 0, 1, 1, 0, NULL, 0, 'WD', 'Restday', 'MANUAL', 'INPROCESS', 'Admin', NULL, 0, '2020-01-30 05:15:35', '2020-01-30 05:15:35', NULL, NULL),
(793, NULL, '2011-209', 'Kempis, Mark Arthur Avelino', 1, 15, 10, '2020-01-13', NULL, NULL, '0.00', '2020-01-13 12:00:00', '2020-01-13 13:00:00', '2020-01-13 08:30:00', '2020-01-13 18:30:00', '1.00', '0.00', '0.00', '0.00', NULL, NULL, '0.00', NULL, NULL, '0.00', '0.00', 'reg', 0, 1, 1, 0, NULL, 0, 'WD', 'Absent', 'MANUAL', 'INPROCESS', 'Admin', NULL, 0, '2020-01-30 05:15:35', '2020-01-30 05:15:35', NULL, NULL),
(794, NULL, '2011-209', 'Kempis, Mark Arthur Avelino', 1, 15, 10, '2020-01-14', NULL, NULL, '0.00', '2020-01-14 12:00:00', '2020-01-14 13:00:00', '2020-01-14 08:30:00', '2020-01-14 18:30:00', '1.00', '0.00', '0.00', '0.00', NULL, NULL, '0.00', NULL, NULL, '0.00', '0.00', 'reg', 0, 1, 1, 0, NULL, 0, 'WD', 'Absent', 'MANUAL', 'INPROCESS', 'Admin', NULL, 0, '2020-01-30 05:15:35', '2020-01-30 05:15:35', NULL, NULL),
(795, NULL, '2011-209', 'Kempis, Mark Arthur Avelino', 1, 15, 10, '2020-01-15', NULL, NULL, '0.00', '2020-01-15 12:00:00', '2020-01-15 13:00:00', '2020-01-15 08:30:00', '2020-01-15 18:30:00', '1.00', '0.00', '0.00', '0.00', NULL, NULL, '0.00', NULL, NULL, '0.00', '0.00', 'reg', 0, 1, 1, 0, NULL, 0, 'WD', 'Absent', 'MANUAL', 'INPROCESS', 'Admin', NULL, 0, '2020-01-30 05:15:35', '2020-01-30 05:15:35', NULL, NULL),
(796, NULL, '2011-209', 'Kempis, Mark Arthur Avelino', 1, 15, 10, '2020-01-16', NULL, NULL, '0.00', '2020-01-16 12:00:00', '2020-01-16 13:00:00', '2020-01-16 08:30:00', '2020-01-16 18:30:00', '1.00', '0.00', '0.00', '0.00', NULL, NULL, '0.00', NULL, NULL, '0.00', '0.00', 'reg', 0, 1, 1, 0, NULL, 0, 'WD', 'Absent', 'MANUAL', 'INPROCESS', 'Admin', NULL, 0, '2020-01-30 05:15:35', '2020-01-30 05:15:35', NULL, NULL),
(797, NULL, '2011-209', 'Kempis, Mark Arthur Avelino', 1, 15, 10, '2020-01-17', NULL, NULL, '0.00', '2020-01-17 12:00:00', '2020-01-17 13:00:00', '2020-01-17 08:30:00', '2020-01-17 18:30:00', '1.00', '0.00', '0.00', '0.00', NULL, NULL, '0.00', NULL, NULL, '0.00', '0.00', 'reg', 0, 1, 1, 0, NULL, 0, 'WD', 'Absent', 'MANUAL', 'INPROCESS', 'Admin', NULL, 0, '2020-01-30 05:15:35', '2020-01-30 05:15:35', NULL, NULL),
(798, NULL, '2011-209', 'Kempis, Mark Arthur Avelino', 1, 15, 10, '2020-01-18', NULL, NULL, '0.00', NULL, NULL, NULL, NULL, '0.00', '0.00', '0.00', '0.00', NULL, NULL, '0.00', NULL, NULL, '0.00', '0.00', 'rd_reg', 0, 1, 1, 0, NULL, 0, 'WD', 'Restday', 'MANUAL', 'INPROCESS', 'Admin', NULL, 0, '2020-01-30 05:15:35', '2020-01-30 05:15:35', NULL, NULL),
(799, NULL, '2011-209', 'Kempis, Mark Arthur Avelino', 1, 15, 10, '2020-01-19', NULL, NULL, '0.00', NULL, NULL, NULL, NULL, '0.00', '0.00', '0.00', '0.00', NULL, NULL, '0.00', NULL, NULL, '0.00', '0.00', 'rd_reg', 0, 1, 1, 0, NULL, 0, 'WD', 'Restday', 'MANUAL', 'INPROCESS', 'Admin', NULL, 0, '2020-01-30 05:15:35', '2020-01-30 05:15:35', NULL, NULL),
(800, NULL, '2011-209', 'Kempis, Mark Arthur Avelino', 1, 15, 10, '2020-01-20', NULL, NULL, '0.00', '2020-01-20 12:00:00', '2020-01-20 13:00:00', '2020-01-20 08:30:00', '2020-01-20 18:30:00', '1.00', '0.00', '0.00', '0.00', NULL, NULL, '0.00', NULL, NULL, '0.00', '0.00', 'reg', 0, 1, 1, 0, NULL, 0, 'WD', 'Absent', 'MANUAL', 'INPROCESS', 'Admin', NULL, 0, '2020-01-30 05:15:35', '2020-01-30 05:15:35', NULL, NULL),
(801, '202000007', '2011-209', 'Kempis, Mark Arthur Avelino', 1, 15, 10, '2020-01-21', NULL, NULL, '0.00', '2020-01-21 12:00:00', '2020-01-21 13:00:00', '2020-01-21 08:30:00', '2020-01-21 18:30:00', '1.00', '0.00', '0.00', '0.00', NULL, NULL, '0.00', NULL, NULL, '0.00', '0.00', 'reg', 0, 1, 1, 0, NULL, 0, 'WD', 'Absent', 'MANUAL', 'RELEASED', 'Admin', 'Payroll Admin', 0, '2020-01-30 05:15:35', '2020-03-04 02:41:08', NULL, NULL),
(802, '202000007', '2011-209', 'Kempis, Mark Arthur Avelino', 1, 15, 10, '2020-01-22', NULL, NULL, '0.00', '2020-01-22 12:00:00', '2020-01-22 13:00:00', '2020-01-22 08:30:00', '2020-01-22 18:30:00', '1.00', '0.00', '0.00', '0.00', NULL, NULL, '0.00', NULL, NULL, '0.00', '0.00', 'reg', 0, 1, 1, 0, NULL, 0, 'WD', 'Absent', 'MANUAL', 'RELEASED', 'Admin', 'Payroll Admin', 0, '2020-01-30 05:15:35', '2020-03-04 02:41:08', NULL, NULL),
(803, '202000007', '2011-209', 'Kempis, Mark Arthur Avelino', 1, 15, 10, '2020-01-23', NULL, NULL, '0.00', '2020-01-23 12:00:00', '2020-01-23 13:00:00', '2020-01-23 08:30:00', '2020-01-23 18:30:00', '1.00', '0.00', '0.00', '0.00', NULL, NULL, '0.00', NULL, NULL, '0.00', '0.00', 'reg', 0, 1, 1, 0, NULL, 0, 'WD', 'Absent', 'MANUAL', 'RELEASED', 'Admin', 'Payroll Admin', 0, '2020-01-30 05:15:35', '2020-03-04 02:41:08', NULL, NULL),
(804, '202000007', '2011-209', 'Kempis, Mark Arthur Avelino', 1, 15, 10, '2020-01-24', NULL, NULL, '0.00', '2020-01-24 12:00:00', '2020-01-24 13:00:00', '2020-01-24 08:30:00', '2020-01-24 18:30:00', '1.00', '0.00', '0.00', '0.00', NULL, NULL, '0.00', NULL, NULL, '0.00', '0.00', 'reg', 0, 1, 1, 0, NULL, 0, 'WD', 'Absent', 'MANUAL', 'RELEASED', 'Admin', 'Payroll Admin', 0, '2020-01-30 05:15:35', '2020-03-04 02:41:08', NULL, NULL),
(805, '202000007', '2011-209', 'Kempis, Mark Arthur Avelino', 1, 15, 10, '2020-01-25', NULL, NULL, '0.00', NULL, NULL, NULL, NULL, '0.00', '0.00', '0.00', '0.00', NULL, NULL, '0.00', NULL, NULL, '0.00', '0.00', 'rd_reg', 0, 1, 1, 0, NULL, 0, 'WD', 'Restday', 'MANUAL', 'RELEASED', 'Admin', 'Payroll Admin', 0, '2020-01-30 05:15:35', '2020-03-04 02:41:08', NULL, NULL),
(806, '202000007', '2011-209', 'Kempis, Mark Arthur Avelino', 1, 15, 10, '2020-01-26', NULL, NULL, '0.00', NULL, NULL, NULL, NULL, '0.00', '0.00', '0.00', '0.00', NULL, NULL, '0.00', NULL, NULL, '0.00', '0.00', 'rd_reg', 0, 1, 1, 0, NULL, 0, 'WD', 'Restday', 'MANUAL', 'RELEASED', 'Admin', 'Payroll Admin', 0, '2020-01-30 05:15:35', '2020-03-04 02:41:08', NULL, NULL),
(807, '202000007', '2011-209', 'Kempis, Mark Arthur Avelino', 1, 15, 10, '2020-01-28', NULL, NULL, '0.00', '2020-01-28 12:00:00', '2020-01-28 13:00:00', '2020-01-28 08:30:00', '2020-01-28 18:30:00', '1.00', '0.00', '0.00', '0.00', NULL, NULL, '0.00', NULL, NULL, '0.00', '0.00', 'reg', 0, 1, 1, 0, NULL, 0, 'WD', 'Absent', 'MANUAL', 'RELEASED', 'Admin', 'Payroll Admin', 0, '2020-01-30 05:15:36', '2020-03-04 02:41:08', NULL, NULL),
(808, '202000007', '2011-209', 'Kempis, Mark Arthur Avelino', 1, 15, 10, '2020-01-29', NULL, NULL, '0.00', '2020-01-29 12:00:00', '2020-01-29 13:00:00', '2020-01-29 08:30:00', '2020-01-29 18:30:00', '1.00', '0.00', '0.00', '0.00', NULL, NULL, '0.00', NULL, NULL, '0.00', '0.00', 'reg', 0, 1, 1, 0, NULL, 0, 'WD', 'Absent', 'MANUAL', 'RELEASED', 'Admin', 'Payroll Admin', 0, '2020-01-30 05:15:36', '2020-03-04 02:41:08', NULL, NULL),
(809, '202000007', '2011-209', 'Kempis, Mark Arthur Avelino', 1, 15, 10, '2020-01-30', NULL, NULL, '0.00', '2020-01-30 12:00:00', '2020-01-30 13:00:00', '2020-01-30 08:30:00', '2020-01-30 18:30:00', '1.00', '0.00', '0.00', '0.00', NULL, NULL, '0.00', NULL, NULL, '0.00', '0.00', 'reg', 0, 1, 1, 0, NULL, 0, 'WD', 'Absent', 'MANUAL', 'RELEASED', 'Admin', 'Payroll Admin', 0, '2020-01-30 05:15:36', '2020-03-04 02:41:08', NULL, NULL),
(810, NULL, '2011-227', 'Navarro, Mary Chris Ann Cruz', 1, 16, 10, '2020-01-01', NULL, NULL, '0.00', '2020-01-01 12:00:00', '2020-01-01 13:00:00', '2020-01-01 08:30:00', '2020-01-01 18:30:00', '1.00', '0.00', '0.00', '0.00', NULL, NULL, '0.00', NULL, NULL, '0.00', '0.00', 'reg', 0, 1, 1, 0, NULL, 0, 'WD', 'Absent', 'MANUAL', 'INPROCESS', 'Admin', NULL, 0, '2020-01-30 05:15:36', '2020-01-30 05:15:36', NULL, NULL),
(811, NULL, '2011-227', 'Navarro, Mary Chris Ann Cruz', 1, 16, 10, '2020-01-02', NULL, NULL, '0.00', '2020-01-02 12:00:00', '2020-01-02 13:00:00', '2020-01-02 08:30:00', '2020-01-02 18:30:00', '1.00', '0.00', '0.00', '0.00', NULL, NULL, '0.00', NULL, NULL, '0.00', '0.00', 'reg', 0, 1, 1, 0, NULL, 0, 'WD', 'Absent', 'MANUAL', 'INPROCESS', 'Admin', NULL, 0, '2020-01-30 05:15:36', '2020-01-30 05:15:36', NULL, NULL),
(812, NULL, '2011-227', 'Navarro, Mary Chris Ann Cruz', 1, 16, 10, '2020-01-03', NULL, NULL, '0.00', '2020-01-03 12:00:00', '2020-01-03 13:00:00', '2020-01-03 08:30:00', '2020-01-03 18:30:00', '1.00', '0.00', '0.00', '0.00', NULL, NULL, '0.00', NULL, NULL, '0.00', '0.00', 'reg', 0, 1, 1, 0, NULL, 0, 'WD', 'Absent', 'MANUAL', 'INPROCESS', 'Admin', NULL, 0, '2020-01-30 05:15:36', '2020-01-30 05:15:36', NULL, NULL),
(813, NULL, '2011-227', 'Navarro, Mary Chris Ann Cruz', 1, 16, 10, '2020-01-04', NULL, NULL, '0.00', NULL, NULL, NULL, NULL, '0.00', '0.00', '0.00', '0.00', NULL, NULL, '0.00', NULL, NULL, '0.00', '0.00', 'rd_reg', 0, 1, 1, 0, NULL, 0, 'WD', 'Restday', 'MANUAL', 'INPROCESS', 'Admin', NULL, 0, '2020-01-30 05:15:36', '2020-01-30 05:15:36', NULL, NULL),
(814, NULL, '2011-227', 'Navarro, Mary Chris Ann Cruz', 1, 16, 10, '2020-01-05', NULL, NULL, '0.00', NULL, NULL, NULL, NULL, '0.00', '0.00', '0.00', '0.00', NULL, NULL, '0.00', NULL, NULL, '0.00', '0.00', 'rd_reg', 0, 1, 1, 0, NULL, 0, 'WD', 'Restday', 'MANUAL', 'INPROCESS', 'Admin', NULL, 0, '2020-01-30 05:15:36', '2020-01-30 05:15:36', NULL, NULL),
(815, NULL, '2011-227', 'Navarro, Mary Chris Ann Cruz', 1, 16, 10, '2020-01-06', NULL, NULL, '0.00', '2020-01-06 12:00:00', '2020-01-06 13:00:00', '2020-01-06 08:30:00', '2020-01-06 18:30:00', '1.00', '0.00', '0.00', '0.00', NULL, NULL, '0.00', NULL, NULL, '0.00', '0.00', 'reg', 0, 1, 1, 0, NULL, 0, 'WD', 'Absent', 'MANUAL', 'INPROCESS', 'Admin', NULL, 0, '2020-01-30 05:15:37', '2020-01-30 05:15:37', NULL, NULL),
(816, NULL, '2011-227', 'Navarro, Mary Chris Ann Cruz', 1, 16, 10, '2020-01-07', NULL, NULL, '0.00', '2020-01-07 12:00:00', '2020-01-07 13:00:00', '2020-01-07 08:30:00', '2020-01-07 18:30:00', '1.00', '0.00', '0.00', '0.00', NULL, NULL, '0.00', NULL, NULL, '0.00', '0.00', 'reg', 0, 1, 1, 0, NULL, 0, 'WD', 'Absent', 'MANUAL', 'INPROCESS', 'Admin', NULL, 0, '2020-01-30 05:15:37', '2020-01-30 05:15:37', NULL, NULL),
(817, NULL, '2011-227', 'Navarro, Mary Chris Ann Cruz', 1, 16, 10, '2020-01-08', NULL, NULL, '0.00', '2020-01-08 12:00:00', '2020-01-08 13:00:00', '2020-01-08 08:30:00', '2020-01-08 18:30:00', '1.00', '0.00', '0.00', '0.00', NULL, NULL, '0.00', NULL, NULL, '0.00', '0.00', 'reg', 0, 1, 1, 0, NULL, 0, 'WD', 'Absent', 'MANUAL', 'INPROCESS', 'Admin', NULL, 0, '2020-01-30 05:15:37', '2020-01-30 05:15:37', NULL, NULL),
(818, NULL, '2011-227', 'Navarro, Mary Chris Ann Cruz', 1, 16, 10, '2020-01-09', NULL, NULL, '0.00', '2020-01-09 12:00:00', '2020-01-09 13:00:00', '2020-01-09 08:30:00', '2020-01-09 18:30:00', '1.00', '0.00', '0.00', '0.00', NULL, NULL, '0.00', NULL, NULL, '0.00', '0.00', 'reg', 0, 1, 1, 0, NULL, 0, 'WD', 'Absent', 'MANUAL', 'INPROCESS', 'Admin', NULL, 0, '2020-01-30 05:15:37', '2020-01-30 05:15:37', NULL, NULL),
(819, NULL, '2011-227', 'Navarro, Mary Chris Ann Cruz', 1, 16, 10, '2020-01-10', NULL, NULL, '0.00', '2020-01-10 12:00:00', '2020-01-10 13:00:00', '2020-01-10 08:30:00', '2020-01-10 18:30:00', '1.00', '0.00', '0.00', '0.00', NULL, NULL, '0.00', NULL, NULL, '0.00', '0.00', 'reg', 0, 1, 1, 0, NULL, 0, 'WD', 'Absent', 'MANUAL', 'INPROCESS', 'Admin', NULL, 0, '2020-01-30 05:15:37', '2020-01-30 05:15:37', NULL, NULL),
(820, NULL, '2011-227', 'Navarro, Mary Chris Ann Cruz', 1, 16, 10, '2020-01-11', NULL, NULL, '0.00', NULL, NULL, NULL, NULL, '0.00', '0.00', '0.00', '0.00', NULL, NULL, '0.00', NULL, NULL, '0.00', '0.00', 'rd_reg', 0, 1, 1, 0, NULL, 0, 'WD', 'Restday', 'MANUAL', 'INPROCESS', 'Admin', NULL, 0, '2020-01-30 05:15:37', '2020-01-30 05:15:37', NULL, NULL),
(821, NULL, '2011-227', 'Navarro, Mary Chris Ann Cruz', 1, 16, 10, '2020-01-12', NULL, NULL, '0.00', NULL, NULL, NULL, NULL, '0.00', '0.00', '0.00', '0.00', NULL, NULL, '0.00', NULL, NULL, '0.00', '0.00', 'rd_reg', 0, 1, 1, 0, NULL, 0, 'WD', 'Restday', 'MANUAL', 'INPROCESS', 'Admin', NULL, 0, '2020-01-30 05:15:37', '2020-01-30 05:15:37', NULL, NULL),
(822, NULL, '2011-227', 'Navarro, Mary Chris Ann Cruz', 1, 16, 10, '2020-01-13', NULL, NULL, '0.00', '2020-01-13 12:00:00', '2020-01-13 13:00:00', '2020-01-13 08:30:00', '2020-01-13 18:30:00', '1.00', '0.00', '0.00', '0.00', NULL, NULL, '0.00', NULL, NULL, '0.00', '0.00', 'reg', 0, 1, 1, 0, NULL, 0, 'WD', 'Absent', 'MANUAL', 'INPROCESS', 'Admin', NULL, 0, '2020-01-30 05:15:37', '2020-01-30 05:15:37', NULL, NULL),
(823, NULL, '2011-227', 'Navarro, Mary Chris Ann Cruz', 1, 16, 10, '2020-01-14', NULL, NULL, '0.00', '2020-01-14 12:00:00', '2020-01-14 13:00:00', '2020-01-14 08:30:00', '2020-01-14 18:30:00', '1.00', '0.00', '0.00', '0.00', NULL, NULL, '0.00', NULL, NULL, '0.00', '0.00', 'reg', 0, 1, 1, 0, NULL, 0, 'WD', 'Absent', 'MANUAL', 'INPROCESS', 'Admin', NULL, 0, '2020-01-30 05:15:37', '2020-01-30 05:15:37', NULL, NULL),
(824, NULL, '2011-227', 'Navarro, Mary Chris Ann Cruz', 1, 16, 10, '2020-01-15', NULL, NULL, '0.00', '2020-01-15 12:00:00', '2020-01-15 13:00:00', '2020-01-15 08:30:00', '2020-01-15 18:30:00', '1.00', '0.00', '0.00', '0.00', NULL, NULL, '0.00', NULL, NULL, '0.00', '0.00', 'reg', 0, 1, 1, 0, NULL, 0, 'WD', 'Absent', 'MANUAL', 'INPROCESS', 'Admin', NULL, 0, '2020-01-30 05:15:37', '2020-01-30 05:15:37', NULL, NULL),
(825, NULL, '2011-227', 'Navarro, Mary Chris Ann Cruz', 1, 16, 10, '2020-01-16', NULL, NULL, '0.00', '2020-01-16 12:00:00', '2020-01-16 13:00:00', '2020-01-16 08:30:00', '2020-01-16 18:30:00', '1.00', '0.00', '0.00', '0.00', NULL, NULL, '0.00', NULL, NULL, '0.00', '0.00', 'reg', 0, 1, 1, 0, NULL, 0, 'WD', 'Absent', 'MANUAL', 'INPROCESS', 'Admin', NULL, 0, '2020-01-30 05:15:37', '2020-01-30 05:15:37', NULL, NULL),
(826, NULL, '2011-227', 'Navarro, Mary Chris Ann Cruz', 1, 16, 10, '2020-01-17', NULL, NULL, '0.00', '2020-01-17 12:00:00', '2020-01-17 13:00:00', '2020-01-17 08:30:00', '2020-01-17 18:30:00', '1.00', '0.00', '0.00', '0.00', NULL, NULL, '0.00', NULL, NULL, '0.00', '0.00', 'reg', 0, 1, 1, 0, NULL, 0, 'WD', 'Absent', 'MANUAL', 'INPROCESS', 'Admin', NULL, 0, '2020-01-30 05:15:37', '2020-01-30 05:15:37', NULL, NULL),
(827, NULL, '2011-227', 'Navarro, Mary Chris Ann Cruz', 1, 16, 10, '2020-01-18', NULL, NULL, '0.00', NULL, NULL, NULL, NULL, '0.00', '0.00', '0.00', '0.00', NULL, NULL, '0.00', NULL, NULL, '0.00', '0.00', 'rd_reg', 0, 1, 1, 0, NULL, 0, 'WD', 'Restday', 'MANUAL', 'INPROCESS', 'Admin', NULL, 0, '2020-01-30 05:15:37', '2020-01-30 05:15:37', NULL, NULL),
(828, NULL, '2011-227', 'Navarro, Mary Chris Ann Cruz', 1, 16, 10, '2020-01-19', NULL, NULL, '0.00', NULL, NULL, NULL, NULL, '0.00', '0.00', '0.00', '0.00', NULL, NULL, '0.00', NULL, NULL, '0.00', '0.00', 'rd_reg', 0, 1, 1, 0, NULL, 0, 'WD', 'Restday', 'MANUAL', 'INPROCESS', 'Admin', NULL, 0, '2020-01-30 05:15:37', '2020-01-30 05:15:37', NULL, NULL),
(829, NULL, '2011-227', 'Navarro, Mary Chris Ann Cruz', 1, 16, 10, '2020-01-20', NULL, NULL, '0.00', '2020-01-20 12:00:00', '2020-01-20 13:00:00', '2020-01-20 08:30:00', '2020-01-20 18:30:00', '1.00', '0.00', '0.00', '0.00', NULL, NULL, '0.00', NULL, NULL, '0.00', '0.00', 'reg', 0, 1, 1, 0, NULL, 0, 'WD', 'Absent', 'MANUAL', 'INPROCESS', 'Admin', NULL, 0, '2020-01-30 05:15:37', '2020-01-30 05:15:37', NULL, NULL),
(830, NULL, '2011-227', 'Navarro, Mary Chris Ann Cruz', 1, 16, 10, '2020-01-21', NULL, NULL, '0.00', '2020-01-21 12:00:00', '2020-01-21 13:00:00', '2020-01-21 08:30:00', '2020-01-21 18:30:00', '1.00', '0.00', '0.00', '0.00', NULL, NULL, '0.00', NULL, NULL, '0.00', '0.00', 'reg', 0, 1, 1, 0, NULL, 0, 'WD', 'Absent', 'MANUAL', 'INPROCESS', 'Admin', NULL, 0, '2020-01-30 05:15:38', '2020-01-30 05:15:38', NULL, NULL),
(831, NULL, '2011-227', 'Navarro, Mary Chris Ann Cruz', 1, 16, 10, '2020-01-22', NULL, NULL, '0.00', '2020-01-22 12:00:00', '2020-01-22 13:00:00', '2020-01-22 08:30:00', '2020-01-22 18:30:00', '1.00', '0.00', '0.00', '0.00', NULL, NULL, '0.00', NULL, NULL, '0.00', '0.00', 'reg', 0, 1, 1, 0, NULL, 0, 'WD', 'Absent', 'MANUAL', 'INPROCESS', 'Admin', NULL, 0, '2020-01-30 05:15:38', '2020-01-30 05:15:38', NULL, NULL),
(832, NULL, '2011-227', 'Navarro, Mary Chris Ann Cruz', 1, 16, 10, '2020-01-23', NULL, NULL, '0.00', '2020-01-23 12:00:00', '2020-01-23 13:00:00', '2020-01-23 08:30:00', '2020-01-23 18:30:00', '1.00', '0.00', '0.00', '0.00', NULL, NULL, '0.00', NULL, NULL, '0.00', '0.00', 'reg', 0, 1, 1, 0, NULL, 0, 'WD', 'Absent', 'MANUAL', 'INPROCESS', 'Admin', NULL, 0, '2020-01-30 05:15:38', '2020-01-30 05:15:38', NULL, NULL),
(833, NULL, '2011-227', 'Navarro, Mary Chris Ann Cruz', 1, 16, 10, '2020-01-24', NULL, NULL, '0.00', '2020-01-24 12:00:00', '2020-01-24 13:00:00', '2020-01-24 08:30:00', '2020-01-24 18:30:00', '1.00', '0.00', '0.00', '0.00', NULL, NULL, '0.00', NULL, NULL, '0.00', '0.00', 'reg', 0, 1, 1, 0, NULL, 0, 'WD', 'Absent', 'MANUAL', 'INPROCESS', 'Admin', NULL, 0, '2020-01-30 05:15:38', '2020-01-30 05:15:38', NULL, NULL),
(834, NULL, '2011-227', 'Navarro, Mary Chris Ann Cruz', 1, 16, 10, '2020-01-25', NULL, NULL, '0.00', NULL, NULL, NULL, NULL, '0.00', '0.00', '0.00', '0.00', NULL, NULL, '0.00', NULL, NULL, '0.00', '0.00', 'rd_reg', 0, 1, 1, 0, NULL, 0, 'WD', 'Restday', 'MANUAL', 'INPROCESS', 'Admin', NULL, 0, '2020-01-30 05:15:38', '2020-01-30 05:15:38', NULL, NULL),
(835, NULL, '2011-227', 'Navarro, Mary Chris Ann Cruz', 1, 16, 10, '2020-01-26', NULL, NULL, '0.00', NULL, NULL, NULL, NULL, '0.00', '0.00', '0.00', '0.00', NULL, NULL, '0.00', NULL, NULL, '0.00', '0.00', 'rd_reg', 0, 1, 1, 0, NULL, 0, 'WD', 'Restday', 'MANUAL', 'INPROCESS', 'Admin', NULL, 0, '2020-01-30 05:15:38', '2020-01-30 05:15:38', NULL, NULL),
(836, NULL, '2011-227', 'Navarro, Mary Chris Ann Cruz', 1, 16, 10, '2020-01-28', NULL, NULL, '0.00', '2020-01-28 12:00:00', '2020-01-28 13:00:00', '2020-01-28 08:30:00', '2020-01-28 18:30:00', '1.00', '0.00', '0.00', '0.00', NULL, NULL, '0.00', NULL, NULL, '0.00', '0.00', 'reg', 0, 1, 1, 0, NULL, 0, 'WD', 'Absent', 'MANUAL', 'INPROCESS', 'Admin', NULL, 0, '2020-01-30 05:15:38', '2020-01-30 05:15:38', NULL, NULL),
(837, NULL, '2011-227', 'Navarro, Mary Chris Ann Cruz', 1, 16, 10, '2020-01-29', NULL, NULL, '0.00', '2020-01-29 12:00:00', '2020-01-29 13:00:00', '2020-01-29 08:30:00', '2020-01-29 18:30:00', '1.00', '0.00', '0.00', '0.00', NULL, NULL, '0.00', NULL, NULL, '0.00', '0.00', 'reg', 0, 1, 1, 0, NULL, 0, 'WD', 'Absent', 'MANUAL', 'INPROCESS', 'Admin', NULL, 0, '2020-01-30 05:15:38', '2020-01-30 05:15:38', NULL, NULL),
(838, NULL, '2011-227', 'Navarro, Mary Chris Ann Cruz', 1, 16, 10, '2020-01-30', NULL, NULL, '0.00', '2020-01-30 12:00:00', '2020-01-30 13:00:00', '2020-01-30 08:30:00', '2020-01-30 18:30:00', '1.00', '0.00', '0.00', '0.00', NULL, NULL, '0.00', NULL, NULL, '0.00', '0.00', 'reg', 0, 1, 1, 0, NULL, 0, 'WD', 'Absent', 'MANUAL', 'INPROCESS', 'Admin', NULL, 0, '2020-01-30 05:15:38', '2020-01-30 05:15:38', NULL, NULL),
(839, NULL, '2016-037', 'PeÃ±a, Rea Kristine Nedia', 1, 14, 10, '2020-01-01', NULL, NULL, '0.00', '2020-01-01 12:00:00', '2020-01-01 13:00:00', '2020-01-01 08:30:00', '2020-01-01 18:30:00', '1.00', '0.00', '0.00', '0.00', NULL, NULL, '0.00', NULL, NULL, '0.00', '0.00', 'reg', 0, 1, 1, 0, NULL, 0, 'WD', 'Absent', 'MANUAL', 'INPROCESS', 'Admin', NULL, 0, '2020-01-30 05:15:38', '2020-01-30 05:15:38', NULL, NULL),
(840, NULL, '2016-037', 'PeÃ±a, Rea Kristine Nedia', 1, 14, 10, '2020-01-02', NULL, NULL, '0.00', '2020-01-02 12:00:00', '2020-01-02 13:00:00', '2020-01-02 08:30:00', '2020-01-02 18:30:00', '1.00', '0.00', '0.00', '0.00', NULL, NULL, '0.00', NULL, NULL, '0.00', '0.00', 'reg', 0, 1, 1, 0, NULL, 0, 'WD', 'Absent', 'MANUAL', 'INPROCESS', 'Admin', NULL, 0, '2020-01-30 05:15:38', '2020-01-30 05:15:38', NULL, NULL),
(841, NULL, '2016-037', 'PeÃ±a, Rea Kristine Nedia', 1, 14, 10, '2020-01-03', NULL, NULL, '0.00', '2020-01-03 12:00:00', '2020-01-03 13:00:00', '2020-01-03 08:30:00', '2020-01-03 18:30:00', '1.00', '0.00', '0.00', '0.00', NULL, NULL, '0.00', NULL, NULL, '0.00', '0.00', 'reg', 0, 1, 1, 0, NULL, 0, 'WD', 'Absent', 'MANUAL', 'INPROCESS', 'Admin', NULL, 0, '2020-01-30 05:15:38', '2020-01-30 05:15:38', NULL, NULL),
(842, NULL, '2016-037', 'PeÃ±a, Rea Kristine Nedia', 1, 14, 10, '2020-01-04', NULL, NULL, '0.00', NULL, NULL, NULL, NULL, '0.00', '0.00', '0.00', '0.00', NULL, NULL, '0.00', NULL, NULL, '0.00', '0.00', 'rd_reg', 0, 1, 1, 0, NULL, 0, 'WD', 'Restday', 'MANUAL', 'INPROCESS', 'Admin', NULL, 0, '2020-01-30 05:15:39', '2020-01-30 05:15:39', NULL, NULL),
(843, NULL, '2016-037', 'PeÃ±a, Rea Kristine Nedia', 1, 14, 10, '2020-01-05', NULL, NULL, '0.00', NULL, NULL, NULL, NULL, '0.00', '0.00', '0.00', '0.00', NULL, NULL, '0.00', NULL, NULL, '0.00', '0.00', 'rd_reg', 0, 1, 1, 0, NULL, 0, 'WD', 'Restday', 'MANUAL', 'INPROCESS', 'Admin', NULL, 0, '2020-01-30 05:15:39', '2020-01-30 05:15:39', NULL, NULL),
(844, NULL, '2016-037', 'PeÃ±a, Rea Kristine Nedia', 1, 14, 10, '2020-01-06', NULL, NULL, '0.00', '2020-01-06 12:00:00', '2020-01-06 13:00:00', '2020-01-06 08:30:00', '2020-01-06 18:30:00', '1.00', '0.00', '0.00', '0.00', NULL, NULL, '0.00', NULL, NULL, '0.00', '0.00', 'reg', 0, 1, 1, 0, NULL, 0, 'WD', 'Absent', 'MANUAL', 'INPROCESS', 'Admin', NULL, 0, '2020-01-30 05:15:39', '2020-01-30 05:15:39', NULL, NULL),
(845, NULL, '2016-037', 'PeÃ±a, Rea Kristine Nedia', 1, 14, 10, '2020-01-07', NULL, NULL, '0.00', '2020-01-07 12:00:00', '2020-01-07 13:00:00', '2020-01-07 08:30:00', '2020-01-07 18:30:00', '1.00', '0.00', '0.00', '0.00', NULL, NULL, '0.00', NULL, NULL, '0.00', '0.00', 'reg', 0, 1, 1, 0, NULL, 0, 'WD', 'Absent', 'MANUAL', 'INPROCESS', 'Admin', NULL, 0, '2020-01-30 05:15:39', '2020-01-30 05:15:39', NULL, NULL),
(846, NULL, '2016-037', 'PeÃ±a, Rea Kristine Nedia', 1, 14, 10, '2020-01-08', NULL, NULL, '0.00', '2020-01-08 12:00:00', '2020-01-08 13:00:00', '2020-01-08 08:30:00', '2020-01-08 18:30:00', '1.00', '0.00', '0.00', '0.00', NULL, NULL, '0.00', NULL, NULL, '0.00', '0.00', 'reg', 0, 1, 1, 0, NULL, 0, 'WD', 'Absent', 'MANUAL', 'INPROCESS', 'Admin', NULL, 0, '2020-01-30 05:15:39', '2020-01-30 05:15:39', NULL, NULL),
(847, NULL, '2016-037', 'PeÃ±a, Rea Kristine Nedia', 1, 14, 10, '2020-01-09', NULL, NULL, '0.00', '2020-01-09 12:00:00', '2020-01-09 13:00:00', '2020-01-09 08:30:00', '2020-01-09 18:30:00', '1.00', '0.00', '0.00', '0.00', NULL, NULL, '0.00', NULL, NULL, '0.00', '0.00', 'reg', 0, 1, 1, 0, NULL, 0, 'WD', 'Absent', 'MANUAL', 'INPROCESS', 'Admin', NULL, 0, '2020-01-30 05:15:39', '2020-01-30 05:15:39', NULL, NULL),
(848, NULL, '2016-037', 'PeÃ±a, Rea Kristine Nedia', 1, 14, 10, '2020-01-10', NULL, NULL, '0.00', '2020-01-10 12:00:00', '2020-01-10 13:00:00', '2020-01-10 08:30:00', '2020-01-10 18:30:00', '1.00', '0.00', '0.00', '0.00', NULL, NULL, '0.00', NULL, NULL, '0.00', '0.00', 'reg', 0, 1, 1, 0, NULL, 0, 'WD', 'Absent', 'MANUAL', 'INPROCESS', 'Admin', NULL, 0, '2020-01-30 05:15:39', '2020-01-30 05:15:39', NULL, NULL),
(849, NULL, '2016-037', 'PeÃ±a, Rea Kristine Nedia', 1, 14, 10, '2020-01-11', NULL, NULL, '0.00', NULL, NULL, NULL, NULL, '0.00', '0.00', '0.00', '0.00', NULL, NULL, '0.00', NULL, NULL, '0.00', '0.00', 'rd_reg', 0, 1, 1, 0, NULL, 0, 'WD', 'Restday', 'MANUAL', 'INPROCESS', 'Admin', NULL, 0, '2020-01-30 05:15:39', '2020-01-30 05:15:39', NULL, NULL),
(850, NULL, '2016-037', 'PeÃ±a, Rea Kristine Nedia', 1, 14, 10, '2020-01-12', NULL, NULL, '0.00', NULL, NULL, NULL, NULL, '0.00', '0.00', '0.00', '0.00', NULL, NULL, '0.00', NULL, NULL, '0.00', '0.00', 'rd_reg', 0, 1, 1, 0, NULL, 0, 'WD', 'Restday', 'MANUAL', 'INPROCESS', 'Admin', NULL, 0, '2020-01-30 05:15:39', '2020-01-30 05:15:39', NULL, NULL),
(851, NULL, '2016-037', 'PeÃ±a, Rea Kristine Nedia', 1, 14, 10, '2020-01-13', NULL, NULL, '0.00', '2020-01-13 12:00:00', '2020-01-13 13:00:00', '2020-01-13 08:30:00', '2020-01-13 18:30:00', '1.00', '0.00', '0.00', '0.00', NULL, NULL, '0.00', NULL, NULL, '0.00', '0.00', 'reg', 0, 1, 1, 0, NULL, 0, 'WD', 'Absent', 'MANUAL', 'INPROCESS', 'Admin', NULL, 0, '2020-01-30 05:15:39', '2020-01-30 05:15:39', NULL, NULL);
INSERT INTO `date_and_time_records` (`id`, `register_number`, `company_id`, `employee_name`, `company_ind`, `group_ind`, `sched_template_id`, `sched_date`, `date_time_in`, `date_time_out`, `reg_total_hrs`, `lunch_out`, `lunch_in`, `schedule_shift_in`, `schedule_shift_out`, `lunch_durations_hrs`, `over_break_min`, `late_min`, `undertime_min`, `ot_time_in`, `ot_time_out`, `ot_total_hrs`, `night_diff_in`, `night_diff_out`, `night_diff_total_hrs`, `night_diff_total_ot_hrs`, `day_types`, `work_on_holiday`, `before_holiday`, `after_holiday`, `leaved`, `leave_types`, `leave_wpay`, `half_day`, `remarks`, `insystem`, `payroll_status`, `created_by`, `lu_by`, `deleted`, `created_at`, `updated_at`, `device_id_in`, `device_id_out`) VALUES
(852, NULL, '2016-037', 'PeÃ±a, Rea Kristine Nedia', 1, 14, 10, '2020-01-14', NULL, NULL, '0.00', '2020-01-14 12:00:00', '2020-01-14 13:00:00', '2020-01-14 08:30:00', '2020-01-14 18:30:00', '1.00', '0.00', '0.00', '0.00', NULL, NULL, '0.00', NULL, NULL, '0.00', '0.00', 'reg', 0, 1, 1, 0, NULL, 0, 'WD', 'Absent', 'MANUAL', 'INPROCESS', 'Admin', NULL, 0, '2020-01-30 05:15:39', '2020-01-30 05:15:39', NULL, NULL),
(853, NULL, '2016-037', 'PeÃ±a, Rea Kristine Nedia', 1, 14, 10, '2020-01-15', NULL, NULL, '0.00', '2020-01-15 12:00:00', '2020-01-15 13:00:00', '2020-01-15 08:30:00', '2020-01-15 18:30:00', '1.00', '0.00', '0.00', '0.00', NULL, NULL, '0.00', NULL, NULL, '0.00', '0.00', 'reg', 0, 1, 1, 0, NULL, 0, 'WD', 'Absent', 'MANUAL', 'INPROCESS', 'Admin', NULL, 0, '2020-01-30 05:15:39', '2020-01-30 05:15:39', NULL, NULL),
(854, NULL, '2016-037', 'PeÃ±a, Rea Kristine Nedia', 1, 14, 10, '2020-01-16', NULL, NULL, '0.00', '2020-01-16 12:00:00', '2020-01-16 13:00:00', '2020-01-16 08:30:00', '2020-01-16 18:30:00', '1.00', '0.00', '0.00', '0.00', NULL, NULL, '0.00', NULL, NULL, '0.00', '0.00', 'reg', 0, 1, 1, 0, NULL, 0, 'WD', 'Absent', 'MANUAL', 'INPROCESS', 'Admin', NULL, 0, '2020-01-30 05:15:39', '2020-01-30 05:15:39', NULL, NULL),
(855, NULL, '2016-037', 'PeÃ±a, Rea Kristine Nedia', 1, 14, 10, '2020-01-17', NULL, NULL, '0.00', '2020-01-17 12:00:00', '2020-01-17 13:00:00', '2020-01-17 08:30:00', '2020-01-17 18:30:00', '1.00', '0.00', '0.00', '0.00', NULL, NULL, '0.00', NULL, NULL, '0.00', '0.00', 'reg', 0, 1, 1, 0, NULL, 0, 'WD', 'Absent', 'MANUAL', 'INPROCESS', 'Admin', NULL, 0, '2020-01-30 05:15:39', '2020-01-30 05:15:39', NULL, NULL),
(856, NULL, '2016-037', 'PeÃ±a, Rea Kristine Nedia', 1, 14, 10, '2020-01-18', NULL, NULL, '0.00', NULL, NULL, NULL, NULL, '0.00', '0.00', '0.00', '0.00', NULL, NULL, '0.00', NULL, NULL, '0.00', '0.00', 'rd_reg', 0, 1, 1, 0, NULL, 0, 'WD', 'Restday', 'MANUAL', 'INPROCESS', 'Admin', NULL, 0, '2020-01-30 05:15:39', '2020-01-30 05:15:39', NULL, NULL),
(857, NULL, '2016-037', 'PeÃ±a, Rea Kristine Nedia', 1, 14, 10, '2020-01-19', NULL, NULL, '0.00', NULL, NULL, NULL, NULL, '0.00', '0.00', '0.00', '0.00', NULL, NULL, '0.00', NULL, NULL, '0.00', '0.00', 'rd_reg', 0, 1, 1, 0, NULL, 0, 'WD', 'Restday', 'MANUAL', 'INPROCESS', 'Admin', NULL, 0, '2020-01-30 05:15:39', '2020-01-30 05:15:39', NULL, NULL),
(858, NULL, '2016-037', 'PeÃ±a, Rea Kristine Nedia', 1, 14, 10, '2020-01-20', NULL, NULL, '0.00', '2020-01-20 12:00:00', '2020-01-20 13:00:00', '2020-01-20 08:30:00', '2020-01-20 18:30:00', '1.00', '0.00', '0.00', '0.00', NULL, NULL, '0.00', NULL, NULL, '0.00', '0.00', 'reg', 0, 1, 1, 0, NULL, 0, 'WD', 'Absent', 'MANUAL', 'INPROCESS', 'Admin', NULL, 0, '2020-01-30 05:15:39', '2020-01-30 05:15:39', NULL, NULL),
(859, NULL, '2016-037', 'PeÃ±a, Rea Kristine Nedia', 1, 14, 10, '2020-01-21', NULL, NULL, '0.00', '2020-01-21 12:00:00', '2020-01-21 13:00:00', '2020-01-21 08:30:00', '2020-01-21 18:30:00', '1.00', '0.00', '0.00', '0.00', NULL, NULL, '0.00', NULL, NULL, '0.00', '0.00', 'reg', 0, 1, 1, 0, NULL, 0, 'WD', 'Absent', 'MANUAL', 'INPROCESS', 'Admin', NULL, 0, '2020-01-30 05:15:40', '2020-01-30 05:15:40', NULL, NULL),
(860, NULL, '2016-037', 'PeÃ±a, Rea Kristine Nedia', 1, 14, 10, '2020-01-22', NULL, NULL, '0.00', '2020-01-22 12:00:00', '2020-01-22 13:00:00', '2020-01-22 08:30:00', '2020-01-22 18:30:00', '1.00', '0.00', '0.00', '0.00', NULL, NULL, '0.00', NULL, NULL, '0.00', '0.00', 'reg', 0, 1, 1, 0, NULL, 0, 'WD', 'Absent', 'MANUAL', 'INPROCESS', 'Admin', NULL, 0, '2020-01-30 05:15:40', '2020-01-30 05:15:40', NULL, NULL),
(861, NULL, '2016-037', 'PeÃ±a, Rea Kristine Nedia', 1, 14, 10, '2020-01-23', NULL, NULL, '0.00', '2020-01-23 12:00:00', '2020-01-23 13:00:00', '2020-01-23 08:30:00', '2020-01-23 18:30:00', '1.00', '0.00', '0.00', '0.00', NULL, NULL, '0.00', NULL, NULL, '0.00', '0.00', 'reg', 0, 1, 1, 0, NULL, 0, 'WD', 'Absent', 'MANUAL', 'INPROCESS', 'Admin', NULL, 0, '2020-01-30 05:15:40', '2020-01-30 05:15:40', NULL, NULL),
(862, NULL, '2016-037', 'PeÃ±a, Rea Kristine Nedia', 1, 14, 10, '2020-01-24', NULL, NULL, '0.00', '2020-01-24 12:00:00', '2020-01-24 13:00:00', '2020-01-24 08:30:00', '2020-01-24 18:30:00', '1.00', '0.00', '0.00', '0.00', NULL, NULL, '0.00', NULL, NULL, '0.00', '0.00', 'reg', 0, 1, 1, 0, NULL, 0, 'WD', 'Absent', 'MANUAL', 'INPROCESS', 'Admin', NULL, 0, '2020-01-30 05:15:40', '2020-01-30 05:15:40', NULL, NULL),
(863, NULL, '2016-037', 'PeÃ±a, Rea Kristine Nedia', 1, 14, 10, '2020-01-25', NULL, NULL, '0.00', NULL, NULL, NULL, NULL, '0.00', '0.00', '0.00', '0.00', NULL, NULL, '0.00', NULL, NULL, '0.00', '0.00', 'rd_reg', 0, 1, 1, 0, NULL, 0, 'WD', 'Restday', 'MANUAL', 'INPROCESS', 'Admin', NULL, 0, '2020-01-30 05:15:40', '2020-01-30 05:15:40', NULL, NULL),
(864, NULL, '2016-037', 'PeÃ±a, Rea Kristine Nedia', 1, 14, 10, '2020-01-26', NULL, NULL, '0.00', NULL, NULL, NULL, NULL, '0.00', '0.00', '0.00', '0.00', NULL, NULL, '0.00', NULL, NULL, '0.00', '0.00', 'rd_reg', 0, 1, 1, 0, NULL, 0, 'WD', 'Restday', 'MANUAL', 'INPROCESS', 'Admin', NULL, 0, '2020-01-30 05:15:40', '2020-01-30 05:15:40', NULL, NULL),
(865, NULL, '2016-037', 'PeÃ±a, Rea Kristine Nedia', 1, 14, 10, '2020-01-28', NULL, NULL, '0.00', '2020-01-28 12:00:00', '2020-01-28 13:00:00', '2020-01-28 08:30:00', '2020-01-28 18:30:00', '1.00', '0.00', '0.00', '0.00', NULL, NULL, '0.00', NULL, NULL, '0.00', '0.00', 'reg', 0, 1, 1, 0, NULL, 0, 'WD', 'Absent', 'MANUAL', 'INPROCESS', 'Admin', NULL, 0, '2020-01-30 05:15:40', '2020-01-30 05:15:40', NULL, NULL),
(866, NULL, '2016-037', 'PeÃ±a, Rea Kristine Nedia', 1, 14, 10, '2020-01-29', NULL, NULL, '0.00', '2020-01-29 12:00:00', '2020-01-29 13:00:00', '2020-01-29 08:30:00', '2020-01-29 18:30:00', '1.00', '0.00', '0.00', '0.00', NULL, NULL, '0.00', NULL, NULL, '0.00', '0.00', 'reg', 0, 1, 1, 0, NULL, 0, 'WD', 'Absent', 'MANUAL', 'INPROCESS', 'Admin', NULL, 0, '2020-01-30 05:15:40', '2020-01-30 05:15:40', NULL, NULL),
(867, NULL, '2016-037', 'PeÃ±a, Rea Kristine Nedia', 1, 14, 10, '2020-01-30', NULL, NULL, '0.00', '2020-01-30 12:00:00', '2020-01-30 13:00:00', '2020-01-30 08:30:00', '2020-01-30 18:30:00', '1.00', '0.00', '0.00', '0.00', NULL, NULL, '0.00', NULL, NULL, '0.00', '0.00', 'reg', 0, 1, 1, 0, NULL, 0, 'WD', 'Absent', 'MANUAL', 'INPROCESS', 'Admin', NULL, 0, '2020-01-30 05:15:40', '2020-01-30 05:15:40', NULL, NULL),
(868, NULL, '2018-039', 'Silvestre, Mark Brenn Morla', 1, 13, 4, '2020-01-01', NULL, NULL, '0.00', '2020-01-01 12:00:00', '2020-01-01 13:00:00', NULL, NULL, '1.00', '0.00', '0.00', '0.00', NULL, NULL, '0.00', NULL, NULL, '0.00', '0.00', 'reg', 0, 1, 1, 0, NULL, 0, 'WD', 'Absent', 'MANUAL', 'INPROCESS', 'Admin', NULL, 0, '2020-01-30 05:15:40', '2020-01-30 05:15:40', NULL, NULL),
(869, NULL, '2018-039', 'Silvestre, Mark Brenn Morla', 1, 13, 4, '2020-01-02', NULL, NULL, '0.00', '2020-01-02 12:00:00', '2020-01-02 13:00:00', NULL, NULL, '1.00', '0.00', '0.00', '0.00', NULL, NULL, '0.00', NULL, NULL, '0.00', '0.00', 'reg', 0, 1, 1, 0, NULL, 0, 'WD', 'Absent', 'MANUAL', 'INPROCESS', 'Admin', NULL, 0, '2020-01-30 05:15:40', '2020-01-30 05:15:40', NULL, NULL),
(870, NULL, '2018-039', 'Silvestre, Mark Brenn Morla', 1, 13, 4, '2020-01-03', NULL, NULL, '0.00', '2020-01-03 12:00:00', '2020-01-03 13:00:00', NULL, NULL, '1.00', '0.00', '0.00', '0.00', NULL, NULL, '0.00', NULL, NULL, '0.00', '0.00', 'reg', 0, 1, 1, 0, NULL, 0, 'WD', 'Absent', 'MANUAL', 'INPROCESS', 'Admin', NULL, 0, '2020-01-30 05:15:40', '2020-01-30 05:15:40', NULL, NULL),
(871, NULL, '2018-039', 'Silvestre, Mark Brenn Morla', 1, 13, 4, '2020-01-04', NULL, NULL, '0.00', NULL, NULL, NULL, NULL, '0.00', '0.00', '0.00', '0.00', NULL, NULL, '0.00', NULL, NULL, '0.00', '0.00', 'rd_reg', 0, 1, 1, 0, NULL, 0, 'WD', 'Restday', 'MANUAL', 'INPROCESS', 'Admin', NULL, 0, '2020-01-30 05:15:40', '2020-01-30 05:15:40', NULL, NULL),
(872, NULL, '2018-039', 'Silvestre, Mark Brenn Morla', 1, 13, 4, '2020-01-05', NULL, NULL, '0.00', NULL, NULL, NULL, NULL, '0.00', '0.00', '0.00', '0.00', NULL, NULL, '0.00', NULL, NULL, '0.00', '0.00', 'rd_reg', 0, 1, 1, 0, NULL, 0, 'WD', 'Restday', 'MANUAL', 'INPROCESS', 'Admin', NULL, 0, '2020-01-30 05:15:40', '2020-01-30 05:15:40', NULL, NULL),
(873, NULL, '2018-039', 'Silvestre, Mark Brenn Morla', 1, 13, 4, '2020-01-06', NULL, NULL, '0.00', '2020-01-06 12:00:00', '2020-01-06 13:00:00', NULL, NULL, '1.00', '0.00', '0.00', '0.00', NULL, NULL, '0.00', NULL, NULL, '0.00', '0.00', 'reg', 0, 1, 1, 0, NULL, 0, 'WD', 'Absent', 'MANUAL', 'INPROCESS', 'Admin', NULL, 0, '2020-01-30 05:15:40', '2020-01-30 05:15:40', NULL, NULL),
(874, NULL, '2018-039', 'Silvestre, Mark Brenn Morla', 1, 13, 4, '2020-01-07', NULL, NULL, '0.00', '2020-01-07 12:00:00', '2020-01-07 13:00:00', NULL, NULL, '1.00', '0.00', '0.00', '0.00', NULL, NULL, '0.00', NULL, NULL, '0.00', '0.00', 'reg', 0, 1, 1, 0, NULL, 0, 'WD', 'Absent', 'MANUAL', 'INPROCESS', 'Admin', NULL, 0, '2020-01-30 05:15:40', '2020-01-30 05:15:40', NULL, NULL),
(875, NULL, '2018-039', 'Silvestre, Mark Brenn Morla', 1, 13, 4, '2020-01-08', NULL, NULL, '0.00', '2020-01-08 12:00:00', '2020-01-08 13:00:00', NULL, NULL, '1.00', '0.00', '0.00', '0.00', NULL, NULL, '0.00', NULL, NULL, '0.00', '0.00', 'reg', 0, 1, 1, 0, NULL, 0, 'WD', 'Absent', 'MANUAL', 'INPROCESS', 'Admin', NULL, 0, '2020-01-30 05:15:41', '2020-01-30 05:15:41', NULL, NULL),
(876, NULL, '2018-039', 'Silvestre, Mark Brenn Morla', 1, 13, 4, '2020-01-09', NULL, NULL, '0.00', '2020-01-09 12:00:00', '2020-01-09 13:00:00', NULL, NULL, '1.00', '0.00', '0.00', '0.00', NULL, NULL, '0.00', NULL, NULL, '0.00', '0.00', 'reg', 0, 1, 1, 0, NULL, 0, 'WD', 'Absent', 'MANUAL', 'INPROCESS', 'Admin', NULL, 0, '2020-01-30 05:15:41', '2020-01-30 05:15:41', NULL, NULL),
(877, NULL, '2018-039', 'Silvestre, Mark Brenn Morla', 1, 13, 4, '2020-01-10', NULL, NULL, '0.00', '2020-01-10 12:00:00', '2020-01-10 13:00:00', NULL, NULL, '1.00', '0.00', '0.00', '0.00', NULL, NULL, '0.00', NULL, NULL, '0.00', '0.00', 'reg', 0, 1, 1, 0, NULL, 0, 'WD', 'Absent', 'MANUAL', 'INPROCESS', 'Admin', NULL, 0, '2020-01-30 05:15:41', '2020-01-30 05:15:41', NULL, NULL),
(878, NULL, '2018-039', 'Silvestre, Mark Brenn Morla', 1, 13, 4, '2020-01-11', NULL, NULL, '0.00', NULL, NULL, NULL, NULL, '0.00', '0.00', '0.00', '0.00', NULL, NULL, '0.00', NULL, NULL, '0.00', '0.00', 'rd_reg', 0, 1, 1, 0, NULL, 0, 'WD', 'Restday', 'MANUAL', 'INPROCESS', 'Admin', NULL, 0, '2020-01-30 05:15:41', '2020-01-30 05:15:41', NULL, NULL),
(879, NULL, '2018-039', 'Silvestre, Mark Brenn Morla', 1, 13, 4, '2020-01-12', NULL, NULL, '0.00', NULL, NULL, NULL, NULL, '0.00', '0.00', '0.00', '0.00', NULL, NULL, '0.00', NULL, NULL, '0.00', '0.00', 'rd_reg', 0, 1, 1, 0, NULL, 0, 'WD', 'Restday', 'MANUAL', 'INPROCESS', 'Admin', NULL, 0, '2020-01-30 05:15:41', '2020-01-30 05:15:41', NULL, NULL),
(880, NULL, '2018-039', 'Silvestre, Mark Brenn Morla', 1, 13, 4, '2020-01-13', NULL, NULL, '0.00', '2020-01-13 12:00:00', '2020-01-13 13:00:00', NULL, NULL, '1.00', '0.00', '0.00', '0.00', NULL, NULL, '0.00', NULL, NULL, '0.00', '0.00', 'reg', 0, 1, 1, 0, NULL, 0, 'WD', 'Absent', 'MANUAL', 'INPROCESS', 'Admin', NULL, 0, '2020-01-30 05:15:41', '2020-01-30 05:15:41', NULL, NULL),
(881, NULL, '2018-039', 'Silvestre, Mark Brenn Morla', 1, 13, 4, '2020-01-14', NULL, NULL, '0.00', '2020-01-14 12:00:00', '2020-01-14 13:00:00', NULL, NULL, '1.00', '0.00', '0.00', '0.00', NULL, NULL, '0.00', NULL, NULL, '0.00', '0.00', 'reg', 0, 1, 1, 0, NULL, 0, 'WD', 'Absent', 'MANUAL', 'INPROCESS', 'Admin', NULL, 0, '2020-01-30 05:15:41', '2020-01-30 05:15:41', NULL, NULL),
(882, NULL, '2018-039', 'Silvestre, Mark Brenn Morla', 1, 13, 4, '2020-01-15', NULL, NULL, '0.00', '2020-01-15 12:00:00', '2020-01-15 13:00:00', NULL, NULL, '1.00', '0.00', '0.00', '0.00', NULL, NULL, '0.00', NULL, NULL, '0.00', '0.00', 'reg', 0, 1, 1, 0, NULL, 0, 'WD', 'Absent', 'MANUAL', 'INPROCESS', 'Admin', NULL, 0, '2020-01-30 05:15:41', '2020-01-30 05:15:41', NULL, NULL),
(883, NULL, '2018-039', 'Silvestre, Mark Brenn Morla', 1, 13, 4, '2020-01-16', NULL, NULL, '0.00', '2020-01-16 12:00:00', '2020-01-16 13:00:00', NULL, NULL, '1.00', '0.00', '0.00', '0.00', NULL, NULL, '0.00', NULL, NULL, '0.00', '0.00', 'reg', 0, 1, 1, 0, NULL, 0, 'WD', 'Absent', 'MANUAL', 'INPROCESS', 'Admin', NULL, 0, '2020-01-30 05:15:41', '2020-01-30 05:15:41', NULL, NULL),
(884, NULL, '2018-039', 'Silvestre, Mark Brenn Morla', 1, 13, 4, '2020-01-17', NULL, NULL, '0.00', '2020-01-17 12:00:00', '2020-01-17 13:00:00', NULL, NULL, '1.00', '0.00', '0.00', '0.00', NULL, NULL, '0.00', NULL, NULL, '0.00', '0.00', 'reg', 0, 1, 1, 0, NULL, 0, 'WD', 'Absent', 'MANUAL', 'INPROCESS', 'Admin', NULL, 0, '2020-01-30 05:15:41', '2020-01-30 05:15:41', NULL, NULL),
(885, NULL, '2018-039', 'Silvestre, Mark Brenn Morla', 1, 13, 4, '2020-01-18', NULL, NULL, '0.00', NULL, NULL, NULL, NULL, '0.00', '0.00', '0.00', '0.00', NULL, NULL, '0.00', NULL, NULL, '0.00', '0.00', 'rd_reg', 0, 1, 1, 0, NULL, 0, 'WD', 'Restday', 'MANUAL', 'INPROCESS', 'Admin', NULL, 0, '2020-01-30 05:15:42', '2020-01-30 05:15:42', NULL, NULL),
(886, NULL, '2018-039', 'Silvestre, Mark Brenn Morla', 1, 13, 4, '2020-01-19', NULL, NULL, '0.00', NULL, NULL, NULL, NULL, '0.00', '0.00', '0.00', '0.00', NULL, NULL, '0.00', NULL, NULL, '0.00', '0.00', 'rd_reg', 0, 1, 1, 0, NULL, 0, 'WD', 'Restday', 'MANUAL', 'INPROCESS', 'Admin', NULL, 0, '2020-01-30 05:15:42', '2020-01-30 05:15:42', NULL, NULL),
(887, NULL, '2018-039', 'Silvestre, Mark Brenn Morla', 1, 13, 4, '2020-01-20', NULL, NULL, '0.00', '2020-01-20 12:00:00', '2020-01-20 13:00:00', NULL, NULL, '1.00', '0.00', '0.00', '0.00', NULL, NULL, '0.00', NULL, NULL, '0.00', '0.00', 'reg', 0, 1, 1, 0, NULL, 0, 'WD', 'Absent', 'MANUAL', 'INPROCESS', 'Admin', NULL, 0, '2020-01-30 05:15:42', '2020-01-30 05:15:42', NULL, NULL),
(888, NULL, '2018-039', 'Silvestre, Mark Brenn Morla', 1, 13, 4, '2020-01-21', NULL, NULL, '0.00', '2020-01-21 12:00:00', '2020-01-21 13:00:00', NULL, NULL, '1.00', '0.00', '0.00', '0.00', NULL, NULL, '0.00', NULL, NULL, '0.00', '0.00', 'reg', 0, 1, 1, 0, NULL, 0, 'WD', 'Absent', 'MANUAL', 'INPROCESS', 'Admin', NULL, 0, '2020-01-30 05:15:42', '2020-01-30 05:15:42', NULL, NULL),
(889, NULL, '2018-039', 'Silvestre, Mark Brenn Morla', 1, 13, 4, '2020-01-22', NULL, NULL, '0.00', '2020-01-22 12:00:00', '2020-01-22 13:00:00', NULL, NULL, '1.00', '0.00', '0.00', '0.00', NULL, NULL, '0.00', NULL, NULL, '0.00', '0.00', 'reg', 0, 1, 1, 0, NULL, 0, 'WD', 'Absent', 'MANUAL', 'INPROCESS', 'Admin', NULL, 0, '2020-01-30 05:15:42', '2020-01-30 05:15:42', NULL, NULL),
(890, NULL, '2018-039', 'Silvestre, Mark Brenn Morla', 1, 13, 4, '2020-01-23', NULL, NULL, '0.00', '2020-01-23 12:00:00', '2020-01-23 13:00:00', NULL, NULL, '1.00', '0.00', '0.00', '0.00', NULL, NULL, '0.00', NULL, NULL, '0.00', '0.00', 'reg', 0, 1, 1, 0, NULL, 0, 'WD', 'Absent', 'MANUAL', 'INPROCESS', 'Admin', NULL, 0, '2020-01-30 05:15:42', '2020-01-30 05:15:42', NULL, NULL),
(891, NULL, '2018-039', 'Silvestre, Mark Brenn Morla', 1, 13, 4, '2020-01-24', NULL, NULL, '0.00', '2020-01-24 12:00:00', '2020-01-24 13:00:00', NULL, NULL, '1.00', '0.00', '0.00', '0.00', NULL, NULL, '0.00', NULL, NULL, '0.00', '0.00', 'reg', 0, 1, 1, 0, NULL, 0, 'WD', 'Absent', 'MANUAL', 'INPROCESS', 'Admin', NULL, 0, '2020-01-30 05:15:42', '2020-01-30 05:15:42', NULL, NULL),
(892, NULL, '2018-039', 'Silvestre, Mark Brenn Morla', 1, 13, 4, '2020-01-25', NULL, NULL, '0.00', NULL, NULL, NULL, NULL, '0.00', '0.00', '0.00', '0.00', NULL, NULL, '0.00', NULL, NULL, '0.00', '0.00', 'rd_reg', 0, 1, 1, 0, NULL, 0, 'WD', 'Restday', 'MANUAL', 'INPROCESS', 'Admin', NULL, 0, '2020-01-30 05:15:42', '2020-01-30 05:15:42', NULL, NULL),
(893, NULL, '2018-039', 'Silvestre, Mark Brenn Morla', 1, 13, 4, '2020-01-26', NULL, NULL, '0.00', NULL, NULL, NULL, NULL, '0.00', '0.00', '0.00', '0.00', NULL, NULL, '0.00', NULL, NULL, '0.00', '0.00', 'rd_reg', 0, 1, 1, 0, NULL, 0, 'WD', 'Restday', 'MANUAL', 'INPROCESS', 'Admin', NULL, 0, '2020-01-30 05:15:42', '2020-01-30 05:15:42', NULL, NULL),
(894, NULL, '2018-039', 'Silvestre, Mark Brenn Morla', 1, 13, 4, '2020-01-28', NULL, NULL, '0.00', '2020-01-28 12:00:00', '2020-01-28 13:00:00', NULL, NULL, '1.00', '0.00', '0.00', '0.00', NULL, NULL, '0.00', NULL, NULL, '0.00', '0.00', 'reg', 0, 1, 1, 0, NULL, 0, 'WD', 'Absent', 'MANUAL', 'INPROCESS', 'Admin', NULL, 0, '2020-01-30 05:15:42', '2020-01-30 05:15:42', NULL, NULL),
(895, NULL, '2018-039', 'Silvestre, Mark Brenn Morla', 1, 13, 4, '2020-01-29', NULL, NULL, '0.00', '2020-01-29 12:00:00', '2020-01-29 13:00:00', NULL, NULL, '1.00', '0.00', '0.00', '0.00', NULL, NULL, '0.00', NULL, NULL, '0.00', '0.00', 'reg', 0, 1, 1, 0, NULL, 0, 'WD', 'Absent', 'MANUAL', 'INPROCESS', 'Admin', NULL, 0, '2020-01-30 05:15:42', '2020-01-30 05:15:42', NULL, NULL),
(896, NULL, '2018-039', 'Silvestre, Mark Brenn Morla', 1, 13, 4, '2020-01-30', NULL, NULL, '0.00', '2020-01-30 12:00:00', '2020-01-30 13:00:00', NULL, NULL, '1.00', '0.00', '0.00', '0.00', NULL, NULL, '0.00', NULL, NULL, '0.00', '0.00', 'reg', 0, 1, 1, 0, NULL, 0, 'WD', 'Absent', 'MANUAL', 'INPROCESS', 'Admin', NULL, 0, '2020-01-30 05:15:42', '2020-01-30 05:15:42', NULL, NULL),
(897, NULL, '2015-040', 'Uson, Rachelle Hyacinth Cruz', 1, 14, 10, '2020-01-01', NULL, NULL, '0.00', '2020-01-01 12:00:00', '2020-01-01 13:00:00', '2020-01-01 08:30:00', '2020-01-01 18:30:00', '1.00', '0.00', '0.00', '0.00', NULL, NULL, '0.00', NULL, NULL, '0.00', '0.00', 'reg', 0, 1, 1, 0, NULL, 0, 'WD', 'Absent', 'MANUAL', 'INPROCESS', 'Admin', NULL, 0, '2020-01-30 05:15:42', '2020-01-30 05:15:42', NULL, NULL),
(898, NULL, '2015-040', 'Uson, Rachelle Hyacinth Cruz', 1, 14, 10, '2020-01-02', NULL, NULL, '0.00', '2020-01-02 12:00:00', '2020-01-02 13:00:00', '2020-01-02 08:30:00', '2020-01-02 18:30:00', '1.00', '0.00', '0.00', '0.00', NULL, NULL, '0.00', NULL, NULL, '0.00', '0.00', 'reg', 0, 1, 1, 0, NULL, 0, 'WD', 'Absent', 'MANUAL', 'INPROCESS', 'Admin', NULL, 0, '2020-01-30 05:15:42', '2020-01-30 05:15:42', NULL, NULL),
(899, NULL, '2015-040', 'Uson, Rachelle Hyacinth Cruz', 1, 14, 10, '2020-01-03', NULL, NULL, '0.00', '2020-01-03 12:00:00', '2020-01-03 13:00:00', '2020-01-03 08:30:00', '2020-01-03 18:30:00', '1.00', '0.00', '0.00', '0.00', NULL, NULL, '0.00', NULL, NULL, '0.00', '0.00', 'reg', 0, 1, 1, 0, NULL, 0, 'WD', 'Absent', 'MANUAL', 'INPROCESS', 'Admin', NULL, 0, '2020-01-30 05:15:43', '2020-01-30 05:15:43', NULL, NULL),
(900, NULL, '2015-040', 'Uson, Rachelle Hyacinth Cruz', 1, 14, 10, '2020-01-04', NULL, NULL, '0.00', NULL, NULL, NULL, NULL, '0.00', '0.00', '0.00', '0.00', NULL, NULL, '0.00', NULL, NULL, '0.00', '0.00', 'rd_reg', 0, 1, 1, 0, NULL, 0, 'WD', 'Restday', 'MANUAL', 'INPROCESS', 'Admin', NULL, 0, '2020-01-30 05:15:43', '2020-01-30 05:15:43', NULL, NULL),
(901, NULL, '2015-040', 'Uson, Rachelle Hyacinth Cruz', 1, 14, 10, '2020-01-05', NULL, NULL, '0.00', NULL, NULL, NULL, NULL, '0.00', '0.00', '0.00', '0.00', NULL, NULL, '0.00', NULL, NULL, '0.00', '0.00', 'rd_reg', 0, 1, 1, 0, NULL, 0, 'WD', 'Restday', 'MANUAL', 'INPROCESS', 'Admin', NULL, 0, '2020-01-30 05:15:43', '2020-01-30 05:15:43', NULL, NULL),
(902, NULL, '2015-040', 'Uson, Rachelle Hyacinth Cruz', 1, 14, 10, '2020-01-06', NULL, NULL, '0.00', '2020-01-06 12:00:00', '2020-01-06 13:00:00', '2020-01-06 08:30:00', '2020-01-06 18:30:00', '1.00', '0.00', '0.00', '0.00', NULL, NULL, '0.00', NULL, NULL, '0.00', '0.00', 'reg', 0, 1, 1, 0, NULL, 0, 'WD', 'Absent', 'MANUAL', 'INPROCESS', 'Admin', NULL, 0, '2020-01-30 05:15:43', '2020-01-30 05:15:43', NULL, NULL),
(903, NULL, '2015-040', 'Uson, Rachelle Hyacinth Cruz', 1, 14, 10, '2020-01-07', NULL, NULL, '0.00', '2020-01-07 12:00:00', '2020-01-07 13:00:00', '2020-01-07 08:30:00', '2020-01-07 18:30:00', '1.00', '0.00', '0.00', '0.00', NULL, NULL, '0.00', NULL, NULL, '0.00', '0.00', 'reg', 0, 1, 1, 0, NULL, 0, 'WD', 'Absent', 'MANUAL', 'INPROCESS', 'Admin', NULL, 0, '2020-01-30 05:15:43', '2020-01-30 05:15:43', NULL, NULL),
(904, NULL, '2015-040', 'Uson, Rachelle Hyacinth Cruz', 1, 14, 10, '2020-01-08', NULL, NULL, '0.00', '2020-01-08 12:00:00', '2020-01-08 13:00:00', '2020-01-08 08:30:00', '2020-01-08 18:30:00', '1.00', '0.00', '0.00', '0.00', NULL, NULL, '0.00', NULL, NULL, '0.00', '0.00', 'reg', 0, 1, 1, 0, NULL, 0, 'WD', 'Absent', 'MANUAL', 'INPROCESS', 'Admin', NULL, 0, '2020-01-30 05:15:43', '2020-01-30 05:15:43', NULL, NULL),
(905, NULL, '2015-040', 'Uson, Rachelle Hyacinth Cruz', 1, 14, 10, '2020-01-09', NULL, NULL, '0.00', '2020-01-09 12:00:00', '2020-01-09 13:00:00', '2020-01-09 08:30:00', '2020-01-09 18:30:00', '1.00', '0.00', '0.00', '0.00', NULL, NULL, '0.00', NULL, NULL, '0.00', '0.00', 'reg', 0, 1, 1, 0, NULL, 0, 'WD', 'Absent', 'MANUAL', 'INPROCESS', 'Admin', NULL, 0, '2020-01-30 05:15:43', '2020-01-30 05:15:43', NULL, NULL),
(906, NULL, '2015-040', 'Uson, Rachelle Hyacinth Cruz', 1, 14, 10, '2020-01-10', NULL, NULL, '0.00', '2020-01-10 12:00:00', '2020-01-10 13:00:00', '2020-01-10 08:30:00', '2020-01-10 18:30:00', '1.00', '0.00', '0.00', '0.00', NULL, NULL, '0.00', NULL, NULL, '0.00', '0.00', 'reg', 0, 1, 1, 0, NULL, 0, 'WD', 'Absent', 'MANUAL', 'INPROCESS', 'Admin', NULL, 0, '2020-01-30 05:15:43', '2020-01-30 05:15:43', NULL, NULL),
(907, NULL, '2015-040', 'Uson, Rachelle Hyacinth Cruz', 1, 14, 10, '2020-01-11', NULL, NULL, '0.00', NULL, NULL, NULL, NULL, '0.00', '0.00', '0.00', '0.00', NULL, NULL, '0.00', NULL, NULL, '0.00', '0.00', 'rd_reg', 0, 1, 1, 0, NULL, 0, 'WD', 'Restday', 'MANUAL', 'INPROCESS', 'Admin', NULL, 0, '2020-01-30 05:15:43', '2020-01-30 05:15:43', NULL, NULL),
(908, NULL, '2015-040', 'Uson, Rachelle Hyacinth Cruz', 1, 14, 10, '2020-01-12', NULL, NULL, '0.00', NULL, NULL, NULL, NULL, '0.00', '0.00', '0.00', '0.00', NULL, NULL, '0.00', NULL, NULL, '0.00', '0.00', 'rd_reg', 0, 1, 1, 0, NULL, 0, 'WD', 'Restday', 'MANUAL', 'INPROCESS', 'Admin', NULL, 0, '2020-01-30 05:15:43', '2020-01-30 05:15:43', NULL, NULL),
(909, NULL, '2015-040', 'Uson, Rachelle Hyacinth Cruz', 1, 14, 10, '2020-01-13', NULL, NULL, '0.00', '2020-01-13 12:00:00', '2020-01-13 13:00:00', '2020-01-13 08:30:00', '2020-01-13 18:30:00', '1.00', '0.00', '0.00', '0.00', NULL, NULL, '0.00', NULL, NULL, '0.00', '0.00', 'reg', 0, 1, 1, 0, NULL, 0, 'WD', 'Absent', 'MANUAL', 'INPROCESS', 'Admin', NULL, 0, '2020-01-30 05:15:43', '2020-01-30 05:15:43', NULL, NULL),
(910, NULL, '2015-040', 'Uson, Rachelle Hyacinth Cruz', 1, 14, 10, '2020-01-14', NULL, NULL, '0.00', '2020-01-14 12:00:00', '2020-01-14 13:00:00', '2020-01-14 08:30:00', '2020-01-14 18:30:00', '1.00', '0.00', '0.00', '0.00', NULL, NULL, '0.00', NULL, NULL, '0.00', '0.00', 'reg', 0, 1, 1, 0, NULL, 0, 'WD', 'Absent', 'MANUAL', 'INPROCESS', 'Admin', NULL, 0, '2020-01-30 05:15:43', '2020-01-30 05:15:43', NULL, NULL),
(911, NULL, '2015-040', 'Uson, Rachelle Hyacinth Cruz', 1, 14, 10, '2020-01-15', NULL, NULL, '0.00', '2020-01-15 12:00:00', '2020-01-15 13:00:00', '2020-01-15 08:30:00', '2020-01-15 18:30:00', '1.00', '0.00', '0.00', '0.00', NULL, NULL, '0.00', NULL, NULL, '0.00', '0.00', 'reg', 0, 1, 1, 0, NULL, 0, 'WD', 'Absent', 'MANUAL', 'INPROCESS', 'Admin', NULL, 0, '2020-01-30 05:15:43', '2020-01-30 05:15:43', NULL, NULL),
(912, NULL, '2015-040', 'Uson, Rachelle Hyacinth Cruz', 1, 14, 10, '2020-01-16', NULL, NULL, '0.00', '2020-01-16 12:00:00', '2020-01-16 13:00:00', '2020-01-16 08:30:00', '2020-01-16 18:30:00', '1.00', '0.00', '0.00', '0.00', NULL, NULL, '0.00', NULL, NULL, '0.00', '0.00', 'reg', 0, 1, 1, 0, NULL, 0, 'WD', 'Absent', 'MANUAL', 'INPROCESS', 'Admin', NULL, 0, '2020-01-30 05:15:43', '2020-01-30 05:15:43', NULL, NULL),
(913, NULL, '2015-040', 'Uson, Rachelle Hyacinth Cruz', 1, 14, 10, '2020-01-17', NULL, NULL, '0.00', '2020-01-17 12:00:00', '2020-01-17 13:00:00', '2020-01-17 08:30:00', '2020-01-17 18:30:00', '1.00', '0.00', '0.00', '0.00', NULL, NULL, '0.00', NULL, NULL, '0.00', '0.00', 'reg', 0, 1, 1, 0, NULL, 0, 'WD', 'Absent', 'MANUAL', 'INPROCESS', 'Admin', NULL, 0, '2020-01-30 05:15:43', '2020-01-30 05:15:43', NULL, NULL),
(914, NULL, '2015-040', 'Uson, Rachelle Hyacinth Cruz', 1, 14, 10, '2020-01-18', NULL, NULL, '0.00', NULL, NULL, NULL, NULL, '0.00', '0.00', '0.00', '0.00', NULL, NULL, '0.00', NULL, NULL, '0.00', '0.00', 'rd_reg', 0, 1, 1, 0, NULL, 0, 'WD', 'Restday', 'MANUAL', 'INPROCESS', 'Admin', NULL, 0, '2020-01-30 05:15:43', '2020-01-30 05:15:43', NULL, NULL),
(915, NULL, '2015-040', 'Uson, Rachelle Hyacinth Cruz', 1, 14, 10, '2020-01-19', NULL, NULL, '0.00', NULL, NULL, NULL, NULL, '0.00', '0.00', '0.00', '0.00', NULL, NULL, '0.00', NULL, NULL, '0.00', '0.00', 'rd_reg', 0, 1, 1, 0, NULL, 0, 'WD', 'Restday', 'MANUAL', 'INPROCESS', 'Admin', NULL, 0, '2020-01-30 05:15:43', '2020-01-30 05:15:43', NULL, NULL),
(916, NULL, '2015-040', 'Uson, Rachelle Hyacinth Cruz', 1, 14, 10, '2020-01-20', NULL, NULL, '0.00', '2020-01-20 12:00:00', '2020-01-20 13:00:00', '2020-01-20 08:30:00', '2020-01-20 18:30:00', '1.00', '0.00', '0.00', '0.00', NULL, NULL, '0.00', NULL, NULL, '0.00', '0.00', 'reg', 0, 1, 1, 0, NULL, 0, 'WD', 'Absent', 'MANUAL', 'INPROCESS', 'Admin', NULL, 0, '2020-01-30 05:15:44', '2020-01-30 05:15:44', NULL, NULL),
(917, '202000007', '2015-040', 'Uson, Rachelle Hyacinth Cruz', 1, 14, 10, '2020-01-21', NULL, NULL, '0.00', '2020-01-21 12:00:00', '2020-01-21 13:00:00', '2020-01-21 08:30:00', '2020-01-21 18:30:00', '1.00', '0.00', '0.00', '0.00', NULL, NULL, '0.00', NULL, NULL, '0.00', '0.00', 'reg', 0, 1, 1, 0, NULL, 0, 'WD', 'Absent', 'MANUAL', 'RELEASED', 'Admin', 'Payroll Admin', 0, '2020-01-30 05:15:44', '2020-03-04 02:41:08', NULL, NULL),
(918, '202000007', '2015-040', 'Uson, Rachelle Hyacinth Cruz', 1, 14, 10, '2020-01-22', NULL, NULL, '0.00', '2020-01-22 12:00:00', '2020-01-22 13:00:00', '2020-01-22 08:30:00', '2020-01-22 18:30:00', '1.00', '0.00', '0.00', '0.00', NULL, NULL, '0.00', NULL, NULL, '0.00', '0.00', 'reg', 0, 1, 1, 0, NULL, 0, 'WD', 'Absent', 'MANUAL', 'RELEASED', 'Admin', 'Payroll Admin', 0, '2020-01-30 05:15:44', '2020-03-04 02:41:08', NULL, NULL),
(919, '202000007', '2015-040', 'Uson, Rachelle Hyacinth Cruz', 1, 14, 10, '2020-01-23', NULL, NULL, '0.00', '2020-01-23 12:00:00', '2020-01-23 13:00:00', '2020-01-23 08:30:00', '2020-01-23 18:30:00', '1.00', '0.00', '0.00', '0.00', NULL, NULL, '0.00', NULL, NULL, '0.00', '0.00', 'reg', 0, 1, 1, 0, NULL, 0, 'WD', 'Absent', 'MANUAL', 'RELEASED', 'Admin', 'Payroll Admin', 0, '2020-01-30 05:15:44', '2020-03-04 02:41:08', NULL, NULL),
(920, '202000007', '2015-040', 'Uson, Rachelle Hyacinth Cruz', 1, 14, 10, '2020-01-24', NULL, NULL, '0.00', '2020-01-24 12:00:00', '2020-01-24 13:00:00', '2020-01-24 08:30:00', '2020-01-24 18:30:00', '1.00', '0.00', '0.00', '0.00', NULL, NULL, '0.00', NULL, NULL, '0.00', '0.00', 'reg', 0, 1, 1, 0, NULL, 0, 'WD', 'Absent', 'MANUAL', 'RELEASED', 'Admin', 'Payroll Admin', 0, '2020-01-30 05:15:44', '2020-03-04 02:41:08', NULL, NULL),
(921, '202000007', '2015-040', 'Uson, Rachelle Hyacinth Cruz', 1, 14, 10, '2020-01-25', NULL, NULL, '0.00', NULL, NULL, NULL, NULL, '0.00', '0.00', '0.00', '0.00', NULL, NULL, '0.00', NULL, NULL, '0.00', '0.00', 'rd_reg', 0, 1, 1, 0, NULL, 0, 'WD', 'Restday', 'MANUAL', 'RELEASED', 'Admin', 'Payroll Admin', 0, '2020-01-30 05:15:44', '2020-03-04 02:41:08', NULL, NULL),
(922, '202000007', '2015-040', 'Uson, Rachelle Hyacinth Cruz', 1, 14, 10, '2020-01-26', NULL, NULL, '0.00', NULL, NULL, NULL, NULL, '0.00', '0.00', '0.00', '0.00', NULL, NULL, '0.00', NULL, NULL, '0.00', '0.00', 'rd_reg', 0, 1, 1, 0, NULL, 0, 'WD', 'Restday', 'MANUAL', 'RELEASED', 'Admin', 'Payroll Admin', 0, '2020-01-30 05:15:44', '2020-03-04 02:41:08', NULL, NULL),
(923, '202000007', '2015-040', 'Uson, Rachelle Hyacinth Cruz', 1, 14, 10, '2020-01-28', NULL, NULL, '0.00', '2020-01-28 12:00:00', '2020-01-28 13:00:00', '2020-01-28 08:30:00', '2020-01-28 18:30:00', '1.00', '0.00', '0.00', '0.00', NULL, NULL, '0.00', NULL, NULL, '0.00', '0.00', 'reg', 0, 1, 1, 0, NULL, 0, 'WD', 'Absent', 'MANUAL', 'RELEASED', 'Admin', 'Payroll Admin', 0, '2020-01-30 05:15:44', '2020-03-04 02:41:08', NULL, NULL),
(924, '202000007', '2015-040', 'Uson, Rachelle Hyacinth Cruz', 1, 14, 10, '2020-01-29', NULL, NULL, '0.00', '2020-01-29 12:00:00', '2020-01-29 13:00:00', '2020-01-29 08:30:00', '2020-01-29 18:30:00', '1.00', '0.00', '0.00', '0.00', NULL, NULL, '0.00', NULL, NULL, '0.00', '0.00', 'reg', 0, 1, 1, 0, NULL, 0, 'WD', 'Absent', 'MANUAL', 'RELEASED', 'Admin', 'Payroll Admin', 0, '2020-01-30 05:15:44', '2020-03-04 02:41:08', NULL, NULL),
(925, '202000007', '2015-040', 'Uson, Rachelle Hyacinth Cruz', 1, 14, 10, '2020-01-30', NULL, NULL, '0.00', '2020-01-30 12:00:00', '2020-01-30 13:00:00', '2020-01-30 08:30:00', '2020-01-30 18:30:00', '1.00', '0.00', '0.00', '0.00', NULL, NULL, '0.00', NULL, NULL, '0.00', '0.00', 'reg', 0, 1, 1, 0, NULL, 0, 'WD', 'Absent', 'MANUAL', 'RELEASED', 'Admin', 'Payroll Admin', 0, '2020-01-30 05:15:44', '2020-03-04 02:41:08', NULL, NULL),
(926, NULL, '2018-085', 'ValeÃ±a Jr, Daniel  Vallar', 1, 13, 13, '2020-01-01', NULL, NULL, '0.00', '2020-01-01 12:00:00', '2020-01-01 13:00:00', NULL, NULL, '1.00', '0.00', '0.00', '0.00', NULL, NULL, '0.00', NULL, NULL, '0.00', '0.00', 'reg', 0, 1, 1, 0, NULL, 0, 'WD', 'Absent', 'MANUAL', 'INPROCESS', 'Admin', NULL, 0, '2020-01-30 05:15:44', '2020-01-30 05:15:44', NULL, NULL),
(927, NULL, '2018-085', 'ValeÃ±a Jr, Daniel  Vallar', 1, 13, 13, '2020-01-02', '2020-01-02 13:01:13', '2020-01-02 15:56:45', '2.93', '2020-01-02 12:00:00', '2020-01-02 13:00:00', '2020-01-02 13:01:13', '2020-01-02 23:01:13', '1.00', '0.00', '0.00', '424.20', NULL, NULL, '0.00', NULL, NULL, '0.00', '0.00', 'reg', 0, 1, 1, 0, NULL, 0, 'WD', 'Present', 'MANUAL', 'INPROCESS', 'Admin', NULL, 0, '2020-01-30 05:15:44', '2020-01-30 05:15:44', NULL, NULL),
(928, NULL, '2018-085', 'ValeÃ±a Jr, Daniel  Vallar', 1, 13, 13, '2020-01-03', '2020-01-03 12:48:38', '2020-01-03 20:16:20', '7.46', '2020-01-03 12:00:00', '2020-01-03 13:00:00', '2020-01-03 12:48:38', '2020-01-03 22:48:38', '1.00', '0.00', '0.00', '152.40', NULL, NULL, '0.00', NULL, NULL, '0.00', '0.00', 'reg', 0, 1, 1, 0, NULL, 0, 'WD', 'Present', 'MANUAL', 'INPROCESS', 'Admin', NULL, 0, '2020-01-30 05:15:44', '2020-01-30 05:15:44', NULL, NULL),
(929, NULL, '2018-085', 'ValeÃ±a Jr, Daniel  Vallar', 1, 13, 13, '2020-01-04', NULL, NULL, '0.00', '2020-01-04 12:00:00', '2020-01-04 13:00:00', NULL, NULL, '1.00', '0.00', '0.00', '0.00', NULL, NULL, '0.00', NULL, NULL, '0.00', '0.00', 'reg', 0, 1, 1, 0, NULL, 0, 'WD', 'Absent', 'MANUAL', 'INPROCESS', 'Admin', NULL, 0, '2020-01-30 05:15:44', '2020-01-30 05:15:44', NULL, NULL),
(930, NULL, '2018-085', 'ValeÃ±a Jr, Daniel  Vallar', 1, 13, 13, '2020-01-05', NULL, NULL, '0.00', NULL, NULL, NULL, NULL, '0.00', '0.00', '0.00', '0.00', NULL, NULL, '0.00', NULL, NULL, '0.00', '0.00', 'rd_reg', 0, 1, 1, 0, NULL, 0, 'WD', 'Restday', 'MANUAL', 'INPROCESS', 'Admin', NULL, 0, '2020-01-30 05:15:45', '2020-01-30 05:15:45', NULL, NULL),
(931, NULL, '2018-085', 'ValeÃ±a Jr, Daniel  Vallar', 1, 13, 13, '2020-01-06', NULL, NULL, '0.00', NULL, NULL, NULL, NULL, '0.00', '0.00', '0.00', '0.00', NULL, NULL, '0.00', NULL, NULL, '0.00', '0.00', 'rd_reg', 0, 1, 1, 0, NULL, 0, 'WD', 'Restday', 'MANUAL', 'INPROCESS', 'Admin', NULL, 0, '2020-01-30 05:15:45', '2020-01-30 05:15:45', NULL, NULL),
(932, NULL, '2018-085', 'ValeÃ±a Jr, Daniel  Vallar', 1, 13, 13, '2020-01-07', NULL, NULL, '0.00', '2020-01-07 12:00:00', '2020-01-07 13:00:00', NULL, NULL, '1.00', '0.00', '0.00', '0.00', NULL, NULL, '0.00', NULL, NULL, '0.00', '0.00', 'reg', 0, 1, 1, 0, NULL, 0, 'WD', 'Absent', 'MANUAL', 'INPROCESS', 'Admin', NULL, 0, '2020-01-30 05:15:45', '2020-01-30 05:15:45', NULL, NULL),
(933, NULL, '2018-085', 'ValeÃ±a Jr, Daniel  Vallar', 1, 13, 13, '2020-01-08', '2020-01-08 13:22:18', '2020-01-08 19:25:13', '6.05', '2020-01-08 12:00:00', '2020-01-08 13:00:00', '2020-01-08 13:22:18', '2020-01-08 23:22:18', '1.00', '0.00', '0.00', '237.00', NULL, NULL, '0.00', NULL, NULL, '0.00', '0.00', 'reg', 0, 1, 1, 0, NULL, 0, 'WD', 'Present', 'MANUAL', 'INPROCESS', 'Admin', NULL, 0, '2020-01-30 05:15:45', '2020-01-30 05:15:45', NULL, NULL),
(934, NULL, '2018-085', 'ValeÃ±a Jr, Daniel  Vallar', 1, 13, 13, '2020-01-09', '2020-01-09 09:54:58', '2020-01-09 20:52:53', '10.97', '2020-01-09 12:00:00', '2020-01-09 13:00:00', '2020-01-09 09:54:58', '2020-01-09 19:54:58', '1.00', '0.00', '0.00', '0.00', NULL, NULL, '0.00', NULL, NULL, '0.00', '0.00', 'reg', 0, 1, 1, 0, NULL, 0, 'WD', 'Present', 'MANUAL', 'INPROCESS', 'Admin', NULL, 0, '2020-01-30 05:15:45', '2020-01-30 05:15:45', NULL, NULL),
(935, NULL, '2018-085', 'ValeÃ±a Jr, Daniel  Vallar', 1, 13, 13, '2020-01-10', '2020-01-10 12:16:30', '2020-01-10 17:08:58', '4.87', '2020-01-10 12:00:00', '2020-01-10 13:00:00', '2020-01-10 12:16:30', '2020-01-10 22:16:30', '1.00', '0.00', '0.00', '307.80', NULL, NULL, '0.00', NULL, NULL, '0.00', '0.00', 'reg', 0, 1, 1, 0, NULL, 0, 'WD', 'Present', 'MANUAL', 'INPROCESS', 'Admin', NULL, 0, '2020-01-30 05:15:45', '2020-01-30 05:15:45', NULL, NULL),
(936, NULL, '2018-085', 'ValeÃ±a Jr, Daniel  Vallar', 1, 13, 13, '2020-01-11', NULL, NULL, '0.00', '2020-01-11 12:00:00', '2020-01-11 13:00:00', NULL, NULL, '1.00', '0.00', '0.00', '0.00', NULL, NULL, '0.00', NULL, NULL, '0.00', '0.00', 'reg', 0, 1, 1, 0, NULL, 0, 'WD', 'Absent', 'MANUAL', 'INPROCESS', 'Admin', NULL, 0, '2020-01-30 05:15:45', '2020-01-30 05:15:45', NULL, NULL),
(937, NULL, '2018-085', 'ValeÃ±a Jr, Daniel  Vallar', 1, 13, 13, '2020-01-12', NULL, NULL, '0.00', NULL, NULL, NULL, NULL, '0.00', '0.00', '0.00', '0.00', NULL, NULL, '0.00', NULL, NULL, '0.00', '0.00', 'rd_reg', 0, 1, 1, 0, NULL, 0, 'WD', 'Restday', 'MANUAL', 'INPROCESS', 'Admin', NULL, 0, '2020-01-30 05:15:45', '2020-01-30 05:15:45', NULL, NULL),
(938, NULL, '2018-085', 'ValeÃ±a Jr, Daniel  Vallar', 1, 13, 13, '2020-01-13', '2020-01-13 09:55:49', '2020-01-13 17:48:02', '7.87', NULL, NULL, NULL, NULL, '0.00', '0.00', '0.00', '0.00', NULL, NULL, '0.00', NULL, NULL, '0.00', '0.00', 'rd_reg', 0, 1, 1, 0, NULL, 0, 'WD', 'Restday', 'MANUAL', 'INPROCESS', 'Admin', NULL, 0, '2020-01-30 05:15:45', '2020-01-30 05:15:45', NULL, NULL),
(939, NULL, '2018-085', 'ValeÃ±a Jr, Daniel  Vallar', 1, 13, 13, '2020-01-14', '2020-01-14 09:00:46', '2020-01-14 17:07:33', '8.11', '2020-01-14 12:00:00', '2020-01-14 13:00:00', '2020-01-14 09:00:46', '2020-01-14 19:00:46', '1.00', '0.00', '0.00', '113.40', NULL, NULL, '0.00', NULL, NULL, '0.00', '0.00', 'reg', 0, 1, 1, 0, NULL, 0, 'WD', 'Present', 'MANUAL', 'INPROCESS', 'Admin', NULL, 0, '2020-01-30 05:15:45', '2020-01-30 05:15:45', NULL, NULL),
(940, NULL, '2018-085', 'ValeÃ±a Jr, Daniel  Vallar', 1, 13, 13, '2020-01-15', '2020-01-15 12:57:39', '2020-01-15 16:54:26', '3.95', '2020-01-15 12:00:00', '2020-01-15 13:00:00', '2020-01-15 12:57:39', '2020-01-15 22:57:39', '1.00', '0.00', '0.00', '363.00', NULL, NULL, '0.00', NULL, NULL, '0.00', '0.00', 'reg', 0, 1, 1, 0, NULL, 0, 'WD', 'Present', 'MANUAL', 'INPROCESS', 'Admin', NULL, 0, '2020-01-30 05:15:45', '2020-01-30 05:15:45', NULL, NULL),
(941, NULL, '2018-085', 'ValeÃ±a Jr, Daniel  Vallar', 1, 13, 13, '2020-01-16', '2020-01-16 12:57:33', '2020-01-16 17:53:05', '4.93', '2020-01-16 12:00:00', '2020-01-16 13:00:00', '2020-01-16 12:57:33', '2020-01-16 22:57:33', '1.00', '0.00', '0.00', '304.20', NULL, NULL, '0.00', NULL, NULL, '0.00', '0.00', 'reg', 0, 1, 1, 0, NULL, 0, 'WD', 'Present', 'MANUAL', 'INPROCESS', 'Admin', NULL, 0, '2020-01-30 05:15:46', '2020-01-30 05:15:46', NULL, NULL),
(942, NULL, '2018-085', 'ValeÃ±a Jr, Daniel  Vallar', 1, 13, 13, '2020-01-17', '2020-01-17 11:13:06', '2020-01-17 16:56:34', '5.72', '2020-01-17 12:00:00', '2020-01-17 13:00:00', '2020-01-17 11:13:06', '2020-01-17 21:13:06', '1.00', '0.00', '0.00', '256.80', NULL, NULL, '0.00', NULL, NULL, '0.00', '0.00', 'reg', 0, 1, 1, 0, NULL, 0, 'WD', 'Present', 'MANUAL', 'INPROCESS', 'Admin', NULL, 0, '2020-01-30 05:15:46', '2020-01-30 05:15:46', NULL, NULL),
(943, NULL, '2018-085', 'ValeÃ±a Jr, Daniel  Vallar', 1, 13, 13, '2020-01-18', NULL, NULL, '0.00', '2020-01-18 12:00:00', '2020-01-18 13:00:00', NULL, NULL, '1.00', '0.00', '0.00', '0.00', NULL, NULL, '0.00', NULL, NULL, '0.00', '0.00', 'reg', 0, 1, 1, 0, NULL, 0, 'WD', 'Absent', 'MANUAL', 'INPROCESS', 'Admin', NULL, 0, '2020-01-30 05:15:46', '2020-01-30 05:15:46', NULL, NULL),
(944, NULL, '2018-085', 'ValeÃ±a Jr, Daniel  Vallar', 1, 13, 13, '2020-01-19', NULL, NULL, '0.00', NULL, NULL, NULL, NULL, '0.00', '0.00', '0.00', '0.00', NULL, NULL, '0.00', NULL, NULL, '0.00', '0.00', 'rd_reg', 0, 1, 1, 0, NULL, 0, 'WD', 'Restday', 'MANUAL', 'INPROCESS', 'Admin', NULL, 0, '2020-01-30 05:15:46', '2020-01-30 05:15:46', NULL, NULL),
(945, NULL, '2018-085', 'ValeÃ±a Jr, Daniel  Vallar', 1, 13, 13, '2020-01-20', '2020-01-20 09:31:27', '2020-01-20 17:02:37', '7.52', NULL, NULL, NULL, NULL, '0.00', '0.00', '0.00', '0.00', NULL, NULL, '0.00', NULL, NULL, '0.00', '0.00', 'rd_reg', 0, 1, 1, 0, NULL, 0, 'WD', 'Restday', 'MANUAL', 'INPROCESS', 'Admin', NULL, 0, '2020-01-30 05:15:46', '2020-01-30 05:15:46', NULL, NULL),
(946, NULL, '2018-085', 'ValeÃ±a Jr, Daniel  Vallar', 1, 13, 13, '2020-01-21', '2020-01-21 09:05:06', '2020-01-21 13:55:47', '4.84', '2020-01-21 12:00:00', '2020-01-21 13:00:00', '2020-01-21 09:05:06', '2020-01-21 19:05:06', '1.00', '0.00', '0.00', '309.60', NULL, NULL, '0.00', NULL, NULL, '0.00', '0.00', 'reg', 0, 1, 1, 0, NULL, 0, 'WD', 'Present', 'MANUAL', 'INPROCESS', 'Admin', NULL, 0, '2020-01-30 05:15:46', '2020-01-30 05:15:46', NULL, NULL),
(947, NULL, '2018-085', 'ValeÃ±a Jr, Daniel  Vallar', 1, 13, 13, '2020-01-22', '2020-01-22 13:22:28', '2020-01-22 17:32:41', '4.17', '2020-01-22 12:00:00', '2020-01-22 13:00:00', '2020-01-22 13:22:28', '2020-01-22 23:22:28', '1.00', '0.00', '0.00', '349.80', NULL, NULL, '0.00', NULL, NULL, '0.00', '0.00', 'reg', 0, 1, 1, 0, NULL, 0, 'WD', 'Present', 'MANUAL', 'INPROCESS', 'Admin', NULL, 0, '2020-01-30 05:15:46', '2020-01-30 05:15:46', NULL, NULL),
(948, NULL, '2018-085', 'ValeÃ±a Jr, Daniel  Vallar', 1, 13, 13, '2020-01-23', '2020-01-23 08:41:54', '2020-01-23 17:27:42', '8.76', '2020-01-23 12:00:00', '2020-01-23 13:00:00', '2020-01-23 08:41:54', '2020-01-23 18:41:54', '1.00', '0.00', '0.00', '74.40', NULL, NULL, '0.00', NULL, NULL, '0.00', '0.00', 'reg', 0, 1, 1, 0, NULL, 0, 'WD', 'Present', 'MANUAL', 'INPROCESS', 'Admin', NULL, 0, '2020-01-30 05:15:46', '2020-01-30 05:15:46', NULL, NULL),
(949, NULL, '2018-085', 'ValeÃ±a Jr, Daniel  Vallar', 1, 13, 13, '2020-01-24', '2020-01-24 09:27:07', '2020-01-24 19:58:03', '10.52', '2020-01-24 12:00:00', '2020-01-24 13:00:00', '2020-01-24 09:27:07', '2020-01-24 19:27:07', '1.00', '0.00', '0.00', '0.00', NULL, NULL, '0.00', NULL, NULL, '0.00', '0.00', 'reg', 0, 1, 1, 0, NULL, 0, 'WD', 'Present', 'MANUAL', 'INPROCESS', 'Admin', NULL, 0, '2020-01-30 05:15:46', '2020-01-30 05:15:46', NULL, NULL),
(950, NULL, '2018-085', 'ValeÃ±a Jr, Daniel  Vallar', 1, 13, 13, '2020-01-25', NULL, NULL, '0.00', '2020-01-25 12:00:00', '2020-01-25 13:00:00', NULL, NULL, '1.00', '0.00', '0.00', '0.00', NULL, NULL, '0.00', NULL, NULL, '0.00', '0.00', 'reg', 0, 1, 1, 0, NULL, 0, 'WD', 'Absent', 'MANUAL', 'INPROCESS', 'Admin', NULL, 0, '2020-01-30 05:15:46', '2020-01-30 05:15:46', NULL, NULL),
(951, NULL, '2018-085', 'ValeÃ±a Jr, Daniel  Vallar', 1, 13, 13, '2020-01-26', NULL, NULL, '0.00', NULL, NULL, NULL, NULL, '0.00', '0.00', '0.00', '0.00', NULL, NULL, '0.00', NULL, NULL, '0.00', '0.00', 'rd_reg', 0, 1, 1, 0, NULL, 0, 'WD', 'Restday', 'MANUAL', 'INPROCESS', 'Admin', NULL, 0, '2020-01-30 05:15:46', '2020-01-30 05:15:46', NULL, NULL),
(952, NULL, '2018-085', 'ValeÃ±a Jr, Daniel  Vallar', 1, 13, 13, '2020-01-28', '2020-01-28 10:31:54', '2020-01-28 17:57:13', '7.42', '2020-01-28 12:00:00', '2020-01-28 13:00:00', '2020-01-28 10:31:54', '2020-01-28 20:31:54', '1.00', '0.00', '0.00', '154.80', NULL, NULL, '0.00', NULL, NULL, '0.00', '0.00', 'reg', 0, 1, 1, 0, NULL, 0, 'WD', 'Present', 'MANUAL', 'INPROCESS', 'Admin', NULL, 0, '2020-01-30 05:15:46', '2020-01-30 05:15:46', NULL, NULL),
(953, NULL, '2018-085', 'ValeÃ±a Jr, Daniel  Vallar', 1, 13, 13, '2020-01-29', '2020-01-29 14:28:57', '2020-01-29 17:34:26', '3.09', '2020-01-29 12:00:00', '2020-01-29 13:00:00', '2020-01-29 14:28:57', '2020-01-30 00:28:57', '1.00', '0.00', '0.00', '414.60', NULL, NULL, '0.00', NULL, NULL, '0.00', '0.00', 'reg', 0, 1, 1, 0, NULL, 0, 'WD', 'Present', 'MANUAL', 'INPROCESS', 'Admin', NULL, 0, '2020-01-30 05:15:47', '2020-01-30 05:15:47', NULL, NULL),
(954, NULL, '2018-085', 'ValeÃ±a Jr, Daniel  Vallar', 1, 13, 13, '2020-01-30', '2020-01-30 11:07:30', NULL, '0.00', '2020-01-30 12:00:00', '2020-01-30 13:00:00', '2020-01-30 11:07:30', '2020-01-30 21:07:30', '1.00', '0.00', '0.00', '0.00', NULL, NULL, '0.00', NULL, NULL, '0.00', '0.00', 'reg', 0, 1, 1, 0, NULL, 0, 'WD', 'No Time Out', 'MANUAL', 'INPROCESS', 'Admin', NULL, 0, '2020-01-30 05:15:47', '2020-01-30 05:15:47', NULL, NULL),
(955, NULL, '2013-341', 'Velasco, Teejay Viloria', 1, 15, 13, '2020-01-01', NULL, NULL, '0.00', '2020-01-01 12:00:00', '2020-01-01 13:00:00', NULL, NULL, '1.00', '0.00', '0.00', '0.00', NULL, NULL, '0.00', NULL, NULL, '0.00', '0.00', 'reg', 0, 1, 1, 0, NULL, 0, 'WD', 'Absent', 'MANUAL', 'INPROCESS', 'Admin', NULL, 0, '2020-01-30 05:15:47', '2020-01-30 05:15:47', NULL, NULL),
(956, NULL, '2013-341', 'Velasco, Teejay Viloria', 1, 15, 13, '2020-01-02', NULL, NULL, '0.00', '2020-01-02 12:00:00', '2020-01-02 13:00:00', NULL, NULL, '1.00', '0.00', '0.00', '0.00', NULL, NULL, '0.00', NULL, NULL, '0.00', '0.00', 'reg', 0, 1, 1, 0, NULL, 0, 'WD', 'Absent', 'MANUAL', 'INPROCESS', 'Admin', NULL, 0, '2020-01-30 05:15:47', '2020-01-30 05:15:47', NULL, NULL),
(957, NULL, '2013-341', 'Velasco, Teejay Viloria', 1, 15, 13, '2020-01-03', '2020-01-03 08:31:17', '2020-01-03 14:53:07', '6.36', '2020-01-03 12:00:00', '2020-01-03 13:00:00', '2020-01-03 08:31:17', '2020-01-03 18:31:17', '1.00', '0.00', '0.00', '218.40', NULL, NULL, '0.00', NULL, NULL, '0.00', '0.00', 'reg', 0, 1, 1, 0, NULL, 0, 'WD', 'Present', 'MANUAL', 'INPROCESS', 'Admin', NULL, 0, '2020-01-30 05:15:47', '2020-01-30 05:15:47', NULL, NULL),
(958, NULL, '2013-341', 'Velasco, Teejay Viloria', 1, 15, 13, '2020-01-04', NULL, NULL, '0.00', '2020-01-04 12:00:00', '2020-01-04 13:00:00', NULL, NULL, '1.00', '0.00', '0.00', '0.00', NULL, NULL, '0.00', NULL, NULL, '0.00', '0.00', 'reg', 0, 1, 1, 0, NULL, 0, 'WD', 'Absent', 'MANUAL', 'INPROCESS', 'Admin', NULL, 0, '2020-01-30 05:15:47', '2020-01-30 05:15:47', NULL, NULL),
(959, NULL, '2013-341', 'Velasco, Teejay Viloria', 1, 15, 13, '2020-01-05', '2020-01-05 08:17:06', '2020-01-05 18:04:35', '9.79', NULL, NULL, NULL, NULL, '0.00', '0.00', '0.00', '0.00', NULL, NULL, '0.00', NULL, NULL, '0.00', '0.00', 'rd_reg', 0, 1, 1, 0, NULL, 0, 'WD', 'Restday', 'MANUAL', 'INPROCESS', 'Admin', NULL, 0, '2020-01-30 05:15:47', '2020-01-30 05:15:47', NULL, NULL),
(960, NULL, '2013-341', 'Velasco, Teejay Viloria', 1, 15, 13, '2020-01-06', '2020-01-06 08:25:10', '2020-01-06 18:17:33', '9.87', NULL, NULL, NULL, NULL, '0.00', '0.00', '0.00', '0.00', NULL, NULL, '0.00', NULL, NULL, '0.00', '0.00', 'rd_reg', 0, 1, 1, 0, NULL, 0, 'WD', 'Restday', 'MANUAL', 'INPROCESS', 'Admin', NULL, 0, '2020-01-30 05:15:47', '2020-01-30 05:15:47', NULL, NULL),
(961, NULL, '2013-341', 'Velasco, Teejay Viloria', 1, 15, 13, '2020-01-07', '2020-01-07 13:26:44', '2020-01-07 17:30:26', '4.06', '2020-01-07 12:00:00', '2020-01-07 13:00:00', '2020-01-07 13:26:44', '2020-01-07 23:26:44', '1.00', '0.00', '0.00', '356.40', NULL, NULL, '0.00', NULL, NULL, '0.00', '0.00', 'reg', 0, 1, 1, 0, NULL, 0, 'WD', 'Present', 'MANUAL', 'INPROCESS', 'Admin', NULL, 0, '2020-01-30 05:15:47', '2020-01-30 05:15:47', NULL, NULL),
(962, NULL, '2013-341', 'Velasco, Teejay Viloria', 1, 15, 13, '2020-01-08', '2020-01-08 11:28:02', '2020-01-08 15:20:13', '3.87', '2020-01-08 12:00:00', '2020-01-08 13:00:00', '2020-01-08 11:28:02', '2020-01-08 21:28:02', '1.00', '0.00', '0.00', '367.80', NULL, NULL, '0.00', NULL, NULL, '0.00', '0.00', 'reg', 0, 1, 1, 0, NULL, 0, 'WD', 'Present', 'MANUAL', 'INPROCESS', 'Admin', NULL, 0, '2020-01-30 05:15:47', '2020-01-30 05:15:47', NULL, NULL),
(963, NULL, '2013-341', 'Velasco, Teejay Viloria', 1, 15, 13, '2020-01-09', '2020-01-09 09:35:17', '2020-01-09 17:42:16', '8.12', '2020-01-09 12:00:00', '2020-01-09 13:00:00', '2020-01-09 09:35:17', '2020-01-09 19:35:17', '1.00', '0.00', '0.00', '112.80', NULL, NULL, '0.00', NULL, NULL, '0.00', '0.00', 'reg', 0, 1, 1, 0, NULL, 0, 'WD', 'Present', 'MANUAL', 'INPROCESS', 'Admin', NULL, 0, '2020-01-30 05:15:47', '2020-01-30 05:15:47', NULL, NULL),
(964, NULL, '2013-341', 'Velasco, Teejay Viloria', 1, 15, 13, '2020-01-10', '2020-01-10 10:58:57', '2020-01-10 23:15:36', '12.28', '2020-01-10 12:00:00', '2020-01-10 13:00:00', '2020-01-10 10:58:57', '2020-01-10 20:58:57', '1.00', '0.00', '0.00', '0.00', NULL, NULL, '0.00', NULL, NULL, '0.00', '0.00', 'reg', 0, 1, 1, 0, NULL, 0, 'WD', 'Present', 'MANUAL', 'INPROCESS', 'Admin', NULL, 0, '2020-01-30 05:15:47', '2020-01-30 05:15:47', NULL, NULL),
(965, NULL, '2013-341', 'Velasco, Teejay Viloria', 1, 15, 13, '2020-01-11', NULL, NULL, '0.00', '2020-01-11 12:00:00', '2020-01-11 13:00:00', NULL, NULL, '1.00', '0.00', '0.00', '0.00', NULL, NULL, '0.00', NULL, NULL, '0.00', '0.00', 'reg', 0, 1, 1, 0, NULL, 0, 'WD', 'Absent', 'MANUAL', 'INPROCESS', 'Admin', NULL, 0, '2020-01-30 05:15:48', '2020-01-30 05:15:48', NULL, NULL),
(966, NULL, '2013-341', 'Velasco, Teejay Viloria', 1, 15, 13, '2020-01-12', NULL, NULL, '0.00', NULL, NULL, NULL, NULL, '0.00', '0.00', '0.00', '0.00', NULL, NULL, '0.00', NULL, NULL, '0.00', '0.00', 'rd_reg', 0, 1, 1, 0, NULL, 0, 'WD', 'Restday', 'MANUAL', 'INPROCESS', 'Admin', NULL, 0, '2020-01-30 05:15:48', '2020-01-30 05:15:48', NULL, NULL),
(967, NULL, '2013-341', 'Velasco, Teejay Viloria', 1, 15, 13, '2020-01-13', '2020-01-13 09:53:30', NULL, '0.00', NULL, NULL, NULL, NULL, '0.00', '0.00', '0.00', '0.00', NULL, NULL, '0.00', NULL, NULL, '0.00', '0.00', 'rd_reg', 0, 1, 1, 0, NULL, 0, 'WD', 'Restday', 'MANUAL', 'INPROCESS', 'Admin', NULL, 0, '2020-01-30 05:15:48', '2020-01-30 05:15:48', NULL, NULL),
(968, NULL, '2013-341', 'Velasco, Teejay Viloria', 1, 15, 13, '2020-01-14', '2020-01-14 10:07:07', NULL, '0.00', '2020-01-14 12:00:00', '2020-01-14 13:00:00', '2020-01-14 10:07:07', '2020-01-14 20:07:07', '1.00', '0.00', '0.00', '0.00', NULL, NULL, '0.00', NULL, NULL, '0.00', '0.00', 'reg', 0, 1, 1, 0, NULL, 0, 'WD', 'No Time Out', 'MANUAL', 'INPROCESS', 'Admin', NULL, 0, '2020-01-30 05:15:48', '2020-01-30 05:15:48', NULL, NULL),
(969, NULL, '2013-341', 'Velasco, Teejay Viloria', 1, 15, 13, '2020-01-15', '2020-01-15 09:16:11', '2020-01-15 15:12:09', '5.93', '2020-01-15 12:00:00', '2020-01-15 13:00:00', '2020-01-15 09:16:11', '2020-01-15 19:16:11', '1.00', '0.00', '0.00', '244.20', NULL, NULL, '0.00', NULL, NULL, '0.00', '0.00', 'reg', 0, 1, 1, 0, NULL, 0, 'WD', 'Present', 'MANUAL', 'INPROCESS', 'Admin', NULL, 0, '2020-01-30 05:15:48', '2020-01-30 05:15:48', NULL, NULL),
(970, NULL, '2013-341', 'Velasco, Teejay Viloria', 1, 15, 13, '2020-01-16', '2020-01-16 12:59:52', '2020-01-16 16:52:25', '3.88', '2020-01-16 12:00:00', '2020-01-16 13:00:00', '2020-01-16 12:59:52', '2020-01-16 22:59:52', '1.00', '0.00', '0.00', '367.20', NULL, NULL, '0.00', NULL, NULL, '0.00', '0.00', 'reg', 0, 1, 1, 0, NULL, 0, 'WD', 'Present', 'MANUAL', 'INPROCESS', 'Admin', NULL, 0, '2020-01-30 05:15:48', '2020-01-30 05:15:48', NULL, NULL),
(971, NULL, '2013-341', 'Velasco, Teejay Viloria', 1, 15, 13, '2020-01-17', NULL, NULL, '0.00', '2020-01-17 12:00:00', '2020-01-17 13:00:00', NULL, NULL, '1.00', '0.00', '0.00', '0.00', NULL, NULL, '0.00', NULL, NULL, '0.00', '0.00', 'reg', 0, 1, 1, 0, NULL, 0, 'WD', 'Absent', 'MANUAL', 'INPROCESS', 'Admin', NULL, 0, '2020-01-30 05:15:48', '2020-01-30 05:15:48', NULL, NULL),
(972, NULL, '2013-341', 'Velasco, Teejay Viloria', 1, 15, 13, '2020-01-18', NULL, NULL, '0.00', '2020-01-18 12:00:00', '2020-01-18 13:00:00', NULL, NULL, '1.00', '0.00', '0.00', '0.00', NULL, NULL, '0.00', NULL, NULL, '0.00', '0.00', 'reg', 0, 1, 1, 0, NULL, 0, 'WD', 'Absent', 'MANUAL', 'INPROCESS', 'Admin', NULL, 0, '2020-01-30 05:15:48', '2020-01-30 05:15:48', NULL, NULL),
(973, NULL, '2013-341', 'Velasco, Teejay Viloria', 1, 15, 13, '2020-01-19', NULL, NULL, '0.00', NULL, NULL, NULL, NULL, '0.00', '0.00', '0.00', '0.00', NULL, NULL, '0.00', NULL, NULL, '0.00', '0.00', 'rd_reg', 0, 1, 1, 0, NULL, 0, 'WD', 'Restday', 'MANUAL', 'INPROCESS', 'Admin', NULL, 0, '2020-01-30 05:15:48', '2020-01-30 05:15:48', NULL, NULL),
(974, NULL, '2013-341', 'Velasco, Teejay Viloria', 1, 15, 13, '2020-01-20', '2020-01-20 12:36:23', '2020-01-20 19:34:14', '6.96', NULL, NULL, NULL, NULL, '0.00', '0.00', '0.00', '0.00', NULL, NULL, '0.00', NULL, NULL, '0.00', '0.00', 'rd_reg', 0, 1, 1, 0, NULL, 0, 'WD', 'Restday', 'MANUAL', 'INPROCESS', 'Admin', NULL, 0, '2020-01-30 05:15:48', '2020-01-30 05:15:48', NULL, NULL),
(975, '202000007', '2013-341', 'Velasco, Teejay Viloria', 1, 15, 13, '2020-01-21', '2020-01-21 09:53:55', '2020-01-21 22:02:50', '12.15', '2020-01-21 12:00:00', '2020-01-21 13:00:00', '2020-01-21 09:53:55', '2020-01-21 19:53:55', '1.00', '0.00', '0.00', '0.00', NULL, NULL, '0.00', NULL, NULL, '0.00', '0.00', 'reg', 0, 1, 1, 0, NULL, 0, 'WD', 'Present', 'MANUAL', 'RELEASED', 'Admin', 'Payroll Admin', 0, '2020-01-30 05:15:48', '2020-03-04 02:41:08', NULL, NULL);
INSERT INTO `date_and_time_records` (`id`, `register_number`, `company_id`, `employee_name`, `company_ind`, `group_ind`, `sched_template_id`, `sched_date`, `date_time_in`, `date_time_out`, `reg_total_hrs`, `lunch_out`, `lunch_in`, `schedule_shift_in`, `schedule_shift_out`, `lunch_durations_hrs`, `over_break_min`, `late_min`, `undertime_min`, `ot_time_in`, `ot_time_out`, `ot_total_hrs`, `night_diff_in`, `night_diff_out`, `night_diff_total_hrs`, `night_diff_total_ot_hrs`, `day_types`, `work_on_holiday`, `before_holiday`, `after_holiday`, `leaved`, `leave_types`, `leave_wpay`, `half_day`, `remarks`, `insystem`, `payroll_status`, `created_by`, `lu_by`, `deleted`, `created_at`, `updated_at`, `device_id_in`, `device_id_out`) VALUES
(976, '202000007', '2013-341', 'Velasco, Teejay Viloria', 1, 15, 13, '2020-01-22', NULL, NULL, '0.00', '2020-01-22 12:00:00', '2020-01-22 13:00:00', NULL, NULL, '1.00', '0.00', '0.00', '0.00', NULL, NULL, '0.00', NULL, NULL, '0.00', '0.00', 'reg', 0, 1, 1, 0, NULL, 0, 'WD', 'Absent', 'MANUAL', 'RELEASED', 'Admin', 'Payroll Admin', 0, '2020-01-30 05:15:48', '2020-03-04 02:41:08', NULL, NULL),
(977, '202000007', '2013-341', 'Velasco, Teejay Viloria', 1, 15, 13, '2020-01-23', '2020-01-23 10:37:52', '2020-01-23 17:25:48', '6.80', '2020-01-23 12:00:00', '2020-01-23 13:00:00', '2020-01-23 10:37:52', '2020-01-23 20:37:52', '1.00', '0.00', '0.00', '192.00', NULL, NULL, '0.00', NULL, NULL, '0.00', '0.00', 'reg', 0, 1, 1, 0, NULL, 0, 'WD', 'Present', 'MANUAL', 'RELEASED', 'Admin', 'Payroll Admin', 0, '2020-01-30 05:15:48', '2020-03-04 02:41:08', NULL, NULL),
(978, '202000007', '2013-341', 'Velasco, Teejay Viloria', 1, 15, 13, '2020-01-24', '2020-01-24 10:18:59', '2020-01-24 17:32:58', '7.23', '2020-01-24 12:00:00', '2020-01-24 13:00:00', '2020-01-24 10:18:59', '2020-01-24 20:18:59', '1.00', '0.00', '0.00', '166.20', NULL, NULL, '0.00', NULL, NULL, '0.00', '0.00', 'reg', 0, 1, 1, 0, NULL, 0, 'WD', 'Present', 'MANUAL', 'RELEASED', 'Admin', 'Payroll Admin', 0, '2020-01-30 05:15:48', '2020-03-04 02:41:08', NULL, NULL),
(979, '202000007', '2013-341', 'Velasco, Teejay Viloria', 1, 15, 13, '2020-01-25', NULL, NULL, '0.00', '2020-01-25 12:00:00', '2020-01-25 13:00:00', NULL, NULL, '1.00', '0.00', '0.00', '0.00', NULL, NULL, '0.00', NULL, NULL, '0.00', '0.00', 'reg', 0, 1, 1, 0, NULL, 0, 'WD', 'Absent', 'MANUAL', 'RELEASED', 'Admin', 'Payroll Admin', 0, '2020-01-30 05:15:48', '2020-03-04 02:41:08', NULL, NULL),
(980, '202000007', '2013-341', 'Velasco, Teejay Viloria', 1, 15, 13, '2020-01-26', NULL, NULL, '0.00', NULL, NULL, NULL, NULL, '0.00', '0.00', '0.00', '0.00', NULL, NULL, '0.00', NULL, NULL, '0.00', '0.00', 'rd_reg', 0, 1, 1, 0, NULL, 0, 'WD', 'Restday', 'MANUAL', 'RELEASED', 'Admin', 'Payroll Admin', 0, '2020-01-30 05:15:48', '2020-03-04 02:41:08', NULL, NULL),
(981, '202000007', '2013-341', 'Velasco, Teejay Viloria', 1, 15, 11, '2020-01-28', NULL, NULL, '0.00', '2020-01-28 12:00:00', '2020-01-28 13:00:00', NULL, NULL, '1.00', '0.00', '0.00', '0.00', NULL, NULL, '0.00', NULL, NULL, '0.00', '0.00', 'reg', 0, 1, 1, 0, NULL, 0, 'WD', 'Absent', 'MANUAL', 'RELEASED', 'Admin', 'Payroll Admin', 0, '2020-01-30 05:15:49', '2020-03-04 02:41:08', NULL, NULL),
(982, '202000007', '2013-341', 'Velasco, Teejay Viloria', 1, 15, 13, '2020-01-29', '2020-01-29 13:34:58', '2020-01-29 18:24:54', '4.83', '2020-01-29 12:00:00', '2020-01-29 13:00:00', '2020-01-29 13:34:58', '2020-01-29 23:34:58', '1.00', '0.00', '0.00', '310.20', NULL, NULL, '0.00', NULL, NULL, '0.00', '0.00', 'reg', 0, 1, 1, 0, NULL, 0, 'WD', 'Present', 'MANUAL', 'RELEASED', 'Admin', 'Payroll Admin', 0, '2020-01-30 05:15:49', '2020-03-04 02:41:08', NULL, NULL),
(983, '202000007', '2013-341', 'Velasco, Teejay Viloria', 1, 15, 13, '2020-01-30', '2020-01-30 12:12:13', NULL, '0.00', '2020-01-30 12:00:00', '2020-01-30 13:00:00', '2020-01-30 12:12:13', '2020-01-30 22:12:13', '1.00', '0.00', '0.00', '0.00', NULL, NULL, '0.00', NULL, NULL, '0.00', '0.00', 'reg', 0, 1, 1, 0, NULL, 0, 'WD', 'No Time Out', 'MANUAL', 'RELEASED', 'Admin', 'Payroll Admin', 0, '2020-01-30 05:15:49', '2020-03-04 02:41:08', NULL, NULL),
(984, NULL, '2006-054', 'Villagracia, Jacelyn Bayanay', 1, 16, 10, '2020-01-01', NULL, NULL, '0.00', '2020-01-01 12:00:00', '2020-01-01 13:00:00', '2020-01-01 08:30:00', '2020-01-01 18:30:00', '1.00', '0.00', '0.00', '0.00', NULL, NULL, '0.00', NULL, NULL, '0.00', '0.00', 'reg', 0, 1, 1, 0, NULL, 0, 'WD', 'Absent', 'MANUAL', 'INPROCESS', 'Admin', NULL, 0, '2020-01-30 05:15:49', '2020-01-30 05:15:49', NULL, NULL),
(985, NULL, '2006-054', 'Villagracia, Jacelyn Bayanay', 1, 16, 10, '2020-01-02', NULL, NULL, '0.00', '2020-01-02 12:00:00', '2020-01-02 13:00:00', '2020-01-02 08:30:00', '2020-01-02 18:30:00', '1.00', '0.00', '0.00', '0.00', NULL, NULL, '0.00', NULL, NULL, '0.00', '0.00', 'reg', 0, 1, 1, 0, NULL, 0, 'WD', 'Absent', 'MANUAL', 'INPROCESS', 'Admin', NULL, 0, '2020-01-30 05:15:49', '2020-01-30 05:15:49', NULL, NULL),
(986, NULL, '2006-054', 'Villagracia, Jacelyn Bayanay', 1, 16, 10, '2020-01-03', NULL, NULL, '0.00', '2020-01-03 12:00:00', '2020-01-03 13:00:00', '2020-01-03 08:30:00', '2020-01-03 18:30:00', '1.00', '0.00', '0.00', '0.00', NULL, NULL, '0.00', NULL, NULL, '0.00', '0.00', 'reg', 0, 1, 1, 0, NULL, 0, 'WD', 'Absent', 'MANUAL', 'INPROCESS', 'Admin', NULL, 0, '2020-01-30 05:15:49', '2020-01-30 05:15:49', NULL, NULL),
(987, NULL, '2006-054', 'Villagracia, Jacelyn Bayanay', 1, 16, 10, '2020-01-04', NULL, NULL, '0.00', NULL, NULL, NULL, NULL, '0.00', '0.00', '0.00', '0.00', NULL, NULL, '0.00', NULL, NULL, '0.00', '0.00', 'rd_reg', 0, 1, 1, 0, NULL, 0, 'WD', 'Restday', 'MANUAL', 'INPROCESS', 'Admin', NULL, 0, '2020-01-30 05:15:49', '2020-01-30 05:15:49', NULL, NULL),
(988, NULL, '2006-054', 'Villagracia, Jacelyn Bayanay', 1, 16, 10, '2020-01-05', NULL, NULL, '0.00', NULL, NULL, NULL, NULL, '0.00', '0.00', '0.00', '0.00', NULL, NULL, '0.00', NULL, NULL, '0.00', '0.00', 'rd_reg', 0, 1, 1, 0, NULL, 0, 'WD', 'Restday', 'MANUAL', 'INPROCESS', 'Admin', NULL, 0, '2020-01-30 05:15:49', '2020-01-30 05:15:49', NULL, NULL),
(989, NULL, '2006-054', 'Villagracia, Jacelyn Bayanay', 1, 16, 10, '2020-01-06', NULL, NULL, '0.00', '2020-01-06 12:00:00', '2020-01-06 13:00:00', '2020-01-06 08:30:00', '2020-01-06 18:30:00', '1.00', '0.00', '0.00', '0.00', NULL, NULL, '0.00', NULL, NULL, '0.00', '0.00', 'reg', 0, 1, 1, 0, NULL, 0, 'WD', 'Absent', 'MANUAL', 'INPROCESS', 'Admin', NULL, 0, '2020-01-30 05:15:49', '2020-01-30 05:15:49', NULL, NULL),
(990, NULL, '2006-054', 'Villagracia, Jacelyn Bayanay', 1, 16, 10, '2020-01-07', NULL, NULL, '0.00', '2020-01-07 12:00:00', '2020-01-07 13:00:00', '2020-01-07 08:30:00', '2020-01-07 18:30:00', '1.00', '0.00', '0.00', '0.00', NULL, NULL, '0.00', NULL, NULL, '0.00', '0.00', 'reg', 0, 1, 1, 0, NULL, 0, 'WD', 'Absent', 'MANUAL', 'INPROCESS', 'Admin', NULL, 0, '2020-01-30 05:15:49', '2020-01-30 05:15:49', NULL, NULL),
(991, NULL, '2006-054', 'Villagracia, Jacelyn Bayanay', 1, 16, 10, '2020-01-08', NULL, NULL, '0.00', '2020-01-08 12:00:00', '2020-01-08 13:00:00', '2020-01-08 08:30:00', '2020-01-08 18:30:00', '1.00', '0.00', '0.00', '0.00', NULL, NULL, '0.00', NULL, NULL, '0.00', '0.00', 'reg', 0, 1, 1, 0, NULL, 0, 'WD', 'Absent', 'MANUAL', 'INPROCESS', 'Admin', NULL, 0, '2020-01-30 05:15:50', '2020-01-30 05:15:50', NULL, NULL),
(992, NULL, '2006-054', 'Villagracia, Jacelyn Bayanay', 1, 16, 10, '2020-01-09', NULL, NULL, '0.00', '2020-01-09 12:00:00', '2020-01-09 13:00:00', '2020-01-09 08:30:00', '2020-01-09 18:30:00', '1.00', '0.00', '0.00', '0.00', NULL, NULL, '0.00', NULL, NULL, '0.00', '0.00', 'reg', 0, 1, 1, 0, NULL, 0, 'WD', 'Absent', 'MANUAL', 'INPROCESS', 'Admin', NULL, 0, '2020-01-30 05:15:50', '2020-01-30 05:15:50', NULL, NULL),
(993, NULL, '2006-054', 'Villagracia, Jacelyn Bayanay', 1, 16, 10, '2020-01-10', NULL, NULL, '0.00', '2020-01-10 12:00:00', '2020-01-10 13:00:00', '2020-01-10 08:30:00', '2020-01-10 18:30:00', '1.00', '0.00', '0.00', '0.00', NULL, NULL, '0.00', NULL, NULL, '0.00', '0.00', 'reg', 0, 1, 1, 0, NULL, 0, 'WD', 'Absent', 'MANUAL', 'INPROCESS', 'Admin', NULL, 0, '2020-01-30 05:15:50', '2020-01-30 05:15:50', NULL, NULL),
(994, NULL, '2006-054', 'Villagracia, Jacelyn Bayanay', 1, 16, 10, '2020-01-11', NULL, NULL, '0.00', NULL, NULL, NULL, NULL, '0.00', '0.00', '0.00', '0.00', NULL, NULL, '0.00', NULL, NULL, '0.00', '0.00', 'rd_reg', 0, 1, 1, 0, NULL, 0, 'WD', 'Restday', 'MANUAL', 'INPROCESS', 'Admin', NULL, 0, '2020-01-30 05:15:50', '2020-01-30 05:15:50', NULL, NULL),
(995, NULL, '2006-054', 'Villagracia, Jacelyn Bayanay', 1, 16, 10, '2020-01-12', NULL, NULL, '0.00', NULL, NULL, NULL, NULL, '0.00', '0.00', '0.00', '0.00', NULL, NULL, '0.00', NULL, NULL, '0.00', '0.00', 'rd_reg', 0, 1, 1, 0, NULL, 0, 'WD', 'Restday', 'MANUAL', 'INPROCESS', 'Admin', NULL, 0, '2020-01-30 05:15:50', '2020-01-30 05:15:50', NULL, NULL),
(996, NULL, '2006-054', 'Villagracia, Jacelyn Bayanay', 1, 16, 10, '2020-01-13', NULL, NULL, '0.00', '2020-01-13 12:00:00', '2020-01-13 13:00:00', '2020-01-13 08:30:00', '2020-01-13 18:30:00', '1.00', '0.00', '0.00', '0.00', NULL, NULL, '0.00', NULL, NULL, '0.00', '0.00', 'reg', 0, 1, 1, 0, NULL, 0, 'WD', 'Absent', 'MANUAL', 'INPROCESS', 'Admin', NULL, 0, '2020-01-30 05:15:50', '2020-01-30 05:15:50', NULL, NULL),
(997, NULL, '2006-054', 'Villagracia, Jacelyn Bayanay', 1, 16, 10, '2020-01-14', NULL, NULL, '0.00', '2020-01-14 12:00:00', '2020-01-14 13:00:00', '2020-01-14 08:30:00', '2020-01-14 18:30:00', '1.00', '0.00', '0.00', '0.00', NULL, NULL, '0.00', NULL, NULL, '0.00', '0.00', 'reg', 0, 1, 1, 0, NULL, 0, 'WD', 'Absent', 'MANUAL', 'INPROCESS', 'Admin', NULL, 0, '2020-01-30 05:15:50', '2020-01-30 05:15:50', NULL, NULL),
(998, NULL, '2006-054', 'Villagracia, Jacelyn Bayanay', 1, 16, 10, '2020-01-15', NULL, NULL, '0.00', '2020-01-15 12:00:00', '2020-01-15 13:00:00', '2020-01-15 08:30:00', '2020-01-15 18:30:00', '1.00', '0.00', '0.00', '0.00', NULL, NULL, '0.00', NULL, NULL, '0.00', '0.00', 'reg', 0, 1, 1, 0, NULL, 0, 'WD', 'Absent', 'MANUAL', 'INPROCESS', 'Admin', NULL, 0, '2020-01-30 05:15:50', '2020-01-30 05:15:50', NULL, NULL),
(999, NULL, '2006-054', 'Villagracia, Jacelyn Bayanay', 1, 16, 10, '2020-01-16', NULL, NULL, '0.00', '2020-01-16 12:00:00', '2020-01-16 13:00:00', '2020-01-16 08:30:00', '2020-01-16 18:30:00', '1.00', '0.00', '0.00', '0.00', NULL, NULL, '0.00', NULL, NULL, '0.00', '0.00', 'reg', 0, 1, 1, 0, NULL, 0, 'WD', 'Absent', 'MANUAL', 'INPROCESS', 'Admin', NULL, 0, '2020-01-30 05:15:50', '2020-01-30 05:15:50', NULL, NULL),
(1000, NULL, '2006-054', 'Villagracia, Jacelyn Bayanay', 1, 16, 10, '2020-01-17', NULL, NULL, '0.00', '2020-01-17 12:00:00', '2020-01-17 13:00:00', '2020-01-17 08:30:00', '2020-01-17 18:30:00', '1.00', '0.00', '0.00', '0.00', NULL, NULL, '0.00', NULL, NULL, '0.00', '0.00', 'reg', 0, 1, 1, 0, NULL, 0, 'WD', 'Absent', 'MANUAL', 'INPROCESS', 'Admin', NULL, 0, '2020-01-30 05:15:50', '2020-01-30 05:15:50', NULL, NULL),
(1001, NULL, '2006-054', 'Villagracia, Jacelyn Bayanay', 1, 16, 10, '2020-01-18', NULL, NULL, '0.00', NULL, NULL, NULL, NULL, '0.00', '0.00', '0.00', '0.00', NULL, NULL, '0.00', NULL, NULL, '0.00', '0.00', 'rd_reg', 0, 1, 1, 0, NULL, 0, 'WD', 'Restday', 'MANUAL', 'INPROCESS', 'Admin', NULL, 0, '2020-01-30 05:15:50', '2020-01-30 05:15:50', NULL, NULL),
(1002, NULL, '2006-054', 'Villagracia, Jacelyn Bayanay', 1, 16, 10, '2020-01-19', NULL, NULL, '0.00', NULL, NULL, NULL, NULL, '0.00', '0.00', '0.00', '0.00', NULL, NULL, '0.00', NULL, NULL, '0.00', '0.00', 'rd_reg', 0, 1, 1, 0, NULL, 0, 'WD', 'Restday', 'MANUAL', 'INPROCESS', 'Admin', NULL, 0, '2020-01-30 05:15:50', '2020-01-30 05:15:50', NULL, NULL),
(1003, NULL, '2006-054', 'Villagracia, Jacelyn Bayanay', 1, 16, 10, '2020-01-20', NULL, NULL, '0.00', '2020-01-20 12:00:00', '2020-01-20 13:00:00', '2020-01-20 08:30:00', '2020-01-20 18:30:00', '1.00', '0.00', '0.00', '0.00', NULL, NULL, '0.00', NULL, NULL, '0.00', '0.00', 'reg', 0, 1, 1, 0, NULL, 0, 'WD', 'Absent', 'MANUAL', 'INPROCESS', 'Admin', NULL, 0, '2020-01-30 05:15:50', '2020-01-30 05:15:50', NULL, NULL),
(1004, NULL, '2006-054', 'Villagracia, Jacelyn Bayanay', 1, 16, 10, '2020-01-21', NULL, NULL, '0.00', '2020-01-21 12:00:00', '2020-01-21 13:00:00', '2020-01-21 08:30:00', '2020-01-21 18:30:00', '1.00', '0.00', '0.00', '0.00', NULL, NULL, '0.00', NULL, NULL, '0.00', '0.00', 'reg', 0, 1, 1, 0, NULL, 0, 'WD', 'Absent', 'MANUAL', 'INPROCESS', 'Admin', NULL, 0, '2020-01-30 05:15:50', '2020-01-30 05:15:50', NULL, NULL),
(1005, NULL, '2006-054', 'Villagracia, Jacelyn Bayanay', 1, 16, 10, '2020-01-22', NULL, NULL, '0.00', '2020-01-22 12:00:00', '2020-01-22 13:00:00', '2020-01-22 08:30:00', '2020-01-22 18:30:00', '1.00', '0.00', '0.00', '0.00', NULL, NULL, '0.00', NULL, NULL, '0.00', '0.00', 'reg', 0, 1, 1, 0, NULL, 0, 'WD', 'Absent', 'MANUAL', 'INPROCESS', 'Admin', NULL, 0, '2020-01-30 05:15:50', '2020-01-30 05:15:50', NULL, NULL),
(1006, NULL, '2006-054', 'Villagracia, Jacelyn Bayanay', 1, 16, 10, '2020-01-23', NULL, NULL, '0.00', '2020-01-23 12:00:00', '2020-01-23 13:00:00', '2020-01-23 08:30:00', '2020-01-23 18:30:00', '1.00', '0.00', '0.00', '0.00', NULL, NULL, '0.00', NULL, NULL, '0.00', '0.00', 'reg', 0, 1, 1, 0, NULL, 0, 'WD', 'Absent', 'MANUAL', 'INPROCESS', 'Admin', NULL, 0, '2020-01-30 05:15:51', '2020-01-30 05:15:51', NULL, NULL),
(1007, NULL, '2006-054', 'Villagracia, Jacelyn Bayanay', 1, 16, 10, '2020-01-24', NULL, NULL, '0.00', '2020-01-24 12:00:00', '2020-01-24 13:00:00', '2020-01-24 08:30:00', '2020-01-24 18:30:00', '1.00', '0.00', '0.00', '0.00', NULL, NULL, '0.00', NULL, NULL, '0.00', '0.00', 'reg', 0, 1, 1, 0, NULL, 0, 'WD', 'Absent', 'MANUAL', 'INPROCESS', 'Admin', NULL, 0, '2020-01-30 05:15:51', '2020-01-30 05:15:51', NULL, NULL),
(1008, NULL, '2006-054', 'Villagracia, Jacelyn Bayanay', 1, 16, 10, '2020-01-25', NULL, NULL, '0.00', NULL, NULL, NULL, NULL, '0.00', '0.00', '0.00', '0.00', NULL, NULL, '0.00', NULL, NULL, '0.00', '0.00', 'rd_reg', 0, 1, 1, 0, NULL, 0, 'WD', 'Restday', 'MANUAL', 'INPROCESS', 'Admin', NULL, 0, '2020-01-30 05:15:51', '2020-01-30 05:15:51', NULL, NULL),
(1009, NULL, '2006-054', 'Villagracia, Jacelyn Bayanay', 1, 16, 10, '2020-01-26', NULL, NULL, '0.00', NULL, NULL, NULL, NULL, '0.00', '0.00', '0.00', '0.00', NULL, NULL, '0.00', NULL, NULL, '0.00', '0.00', 'rd_reg', 0, 1, 1, 0, NULL, 0, 'WD', 'Restday', 'MANUAL', 'INPROCESS', 'Admin', NULL, 0, '2020-01-30 05:15:51', '2020-01-30 05:15:51', NULL, NULL),
(1010, NULL, '2006-054', 'Villagracia, Jacelyn Bayanay', 1, 16, 10, '2020-01-28', NULL, NULL, '0.00', '2020-01-28 12:00:00', '2020-01-28 13:00:00', '2020-01-28 08:30:00', '2020-01-28 18:30:00', '1.00', '0.00', '0.00', '0.00', NULL, NULL, '0.00', NULL, NULL, '0.00', '0.00', 'reg', 0, 1, 1, 0, NULL, 0, 'WD', 'Absent', 'MANUAL', 'INPROCESS', 'Admin', NULL, 0, '2020-01-30 05:15:51', '2020-01-30 05:15:51', NULL, NULL),
(1011, NULL, '2006-054', 'Villagracia, Jacelyn Bayanay', 1, 16, 10, '2020-01-29', NULL, NULL, '0.00', '2020-01-29 12:00:00', '2020-01-29 13:00:00', '2020-01-29 08:30:00', '2020-01-29 18:30:00', '1.00', '0.00', '0.00', '0.00', NULL, NULL, '0.00', NULL, NULL, '0.00', '0.00', 'reg', 0, 1, 1, 0, NULL, 0, 'WD', 'Absent', 'MANUAL', 'INPROCESS', 'Admin', NULL, 0, '2020-01-30 05:15:51', '2020-01-30 05:15:51', NULL, NULL),
(1012, NULL, '2006-054', 'Villagracia, Jacelyn Bayanay', 1, 16, 10, '2020-01-30', NULL, NULL, '0.00', '2020-01-30 12:00:00', '2020-01-30 13:00:00', '2020-01-30 08:30:00', '2020-01-30 18:30:00', '1.00', '0.00', '0.00', '0.00', NULL, NULL, '0.00', NULL, NULL, '0.00', '0.00', 'reg', 0, 1, 1, 0, NULL, 0, 'WD', 'Absent', 'MANUAL', 'INPROCESS', 'Admin', NULL, 0, '2020-01-30 05:15:51', '2020-01-30 05:15:51', NULL, NULL),
(1013, NULL, '2006-052', 'Villegas, Maria Teresa Lanozo', 1, 14, 10, '2020-01-01', NULL, NULL, '0.00', '2020-01-01 12:00:00', '2020-01-01 13:00:00', '2020-01-01 08:30:00', '2020-01-01 18:30:00', '1.00', '0.00', '0.00', '0.00', NULL, NULL, '0.00', NULL, NULL, '0.00', '0.00', 'reg', 0, 1, 1, 0, NULL, 0, 'WD', 'Absent', 'MANUAL', 'INPROCESS', 'Admin', NULL, 0, '2020-01-30 05:15:51', '2020-01-30 05:15:51', NULL, NULL),
(1014, NULL, '2006-052', 'Villegas, Maria Teresa Lanozo', 1, 14, 10, '2020-01-02', NULL, NULL, '0.00', '2020-01-02 12:00:00', '2020-01-02 13:00:00', '2020-01-02 08:30:00', '2020-01-02 18:30:00', '1.00', '0.00', '0.00', '0.00', NULL, NULL, '0.00', NULL, NULL, '0.00', '0.00', 'reg', 0, 1, 1, 0, NULL, 0, 'WD', 'Absent', 'MANUAL', 'INPROCESS', 'Admin', NULL, 0, '2020-01-30 05:15:51', '2020-01-30 05:15:51', NULL, NULL),
(1015, NULL, '2006-052', 'Villegas, Maria Teresa Lanozo', 1, 14, 10, '2020-01-03', NULL, NULL, '0.00', '2020-01-03 12:00:00', '2020-01-03 13:00:00', '2020-01-03 08:30:00', '2020-01-03 18:30:00', '1.00', '0.00', '0.00', '0.00', NULL, NULL, '0.00', NULL, NULL, '0.00', '0.00', 'reg', 0, 1, 1, 0, NULL, 0, 'WD', 'Absent', 'MANUAL', 'INPROCESS', 'Admin', NULL, 0, '2020-01-30 05:15:51', '2020-01-30 05:15:51', NULL, NULL),
(1016, NULL, '2006-052', 'Villegas, Maria Teresa Lanozo', 1, 14, 10, '2020-01-04', NULL, NULL, '0.00', NULL, NULL, NULL, NULL, '0.00', '0.00', '0.00', '0.00', NULL, NULL, '0.00', NULL, NULL, '0.00', '0.00', 'rd_reg', 0, 1, 1, 0, NULL, 0, 'WD', 'Restday', 'MANUAL', 'INPROCESS', 'Admin', NULL, 0, '2020-01-30 05:15:51', '2020-01-30 05:15:51', NULL, NULL),
(1017, NULL, '2006-052', 'Villegas, Maria Teresa Lanozo', 1, 14, 10, '2020-01-05', NULL, NULL, '0.00', NULL, NULL, NULL, NULL, '0.00', '0.00', '0.00', '0.00', NULL, NULL, '0.00', NULL, NULL, '0.00', '0.00', 'rd_reg', 0, 1, 1, 0, NULL, 0, 'WD', 'Restday', 'MANUAL', 'INPROCESS', 'Admin', NULL, 0, '2020-01-30 05:15:51', '2020-01-30 05:15:51', NULL, NULL),
(1018, NULL, '2006-052', 'Villegas, Maria Teresa Lanozo', 1, 14, 10, '2020-01-06', NULL, NULL, '0.00', '2020-01-06 12:00:00', '2020-01-06 13:00:00', '2020-01-06 08:30:00', '2020-01-06 18:30:00', '1.00', '0.00', '0.00', '0.00', NULL, NULL, '0.00', NULL, NULL, '0.00', '0.00', 'reg', 0, 1, 1, 0, NULL, 0, 'WD', 'Absent', 'MANUAL', 'INPROCESS', 'Admin', NULL, 0, '2020-01-30 05:15:51', '2020-01-30 05:15:51', NULL, NULL),
(1019, NULL, '2006-052', 'Villegas, Maria Teresa Lanozo', 1, 14, 10, '2020-01-07', NULL, NULL, '0.00', '2020-01-07 12:00:00', '2020-01-07 13:00:00', '2020-01-07 08:30:00', '2020-01-07 18:30:00', '1.00', '0.00', '0.00', '0.00', NULL, NULL, '0.00', NULL, NULL, '0.00', '0.00', 'reg', 0, 1, 1, 0, NULL, 0, 'WD', 'Absent', 'MANUAL', 'INPROCESS', 'Admin', NULL, 0, '2020-01-30 05:15:51', '2020-01-30 05:15:51', NULL, NULL),
(1020, NULL, '2006-052', 'Villegas, Maria Teresa Lanozo', 1, 14, 10, '2020-01-08', NULL, NULL, '0.00', '2020-01-08 12:00:00', '2020-01-08 13:00:00', '2020-01-08 08:30:00', '2020-01-08 18:30:00', '1.00', '0.00', '0.00', '0.00', NULL, NULL, '0.00', NULL, NULL, '0.00', '0.00', 'reg', 0, 1, 1, 0, NULL, 0, 'WD', 'Absent', 'MANUAL', 'INPROCESS', 'Admin', NULL, 0, '2020-01-30 05:15:52', '2020-01-30 05:15:52', NULL, NULL),
(1021, NULL, '2006-052', 'Villegas, Maria Teresa Lanozo', 1, 14, 10, '2020-01-09', NULL, NULL, '0.00', '2020-01-09 12:00:00', '2020-01-09 13:00:00', '2020-01-09 08:30:00', '2020-01-09 18:30:00', '1.00', '0.00', '0.00', '0.00', NULL, NULL, '0.00', NULL, NULL, '0.00', '0.00', 'reg', 0, 1, 1, 0, NULL, 0, 'WD', 'Absent', 'MANUAL', 'INPROCESS', 'Admin', NULL, 0, '2020-01-30 05:15:52', '2020-01-30 05:15:52', NULL, NULL),
(1022, NULL, '2006-052', 'Villegas, Maria Teresa Lanozo', 1, 14, 10, '2020-01-10', NULL, NULL, '0.00', '2020-01-10 12:00:00', '2020-01-10 13:00:00', '2020-01-10 08:30:00', '2020-01-10 18:30:00', '1.00', '0.00', '0.00', '0.00', NULL, NULL, '0.00', NULL, NULL, '0.00', '0.00', 'reg', 0, 1, 1, 0, NULL, 0, 'WD', 'Absent', 'MANUAL', 'INPROCESS', 'Admin', NULL, 0, '2020-01-30 05:15:52', '2020-01-30 05:15:52', NULL, NULL),
(1023, NULL, '2006-052', 'Villegas, Maria Teresa Lanozo', 1, 14, 10, '2020-01-11', NULL, NULL, '0.00', NULL, NULL, NULL, NULL, '0.00', '0.00', '0.00', '0.00', NULL, NULL, '0.00', NULL, NULL, '0.00', '0.00', 'rd_reg', 0, 1, 1, 0, NULL, 0, 'WD', 'Restday', 'MANUAL', 'INPROCESS', 'Admin', NULL, 0, '2020-01-30 05:15:52', '2020-01-30 05:15:52', NULL, NULL),
(1024, NULL, '2006-052', 'Villegas, Maria Teresa Lanozo', 1, 14, 10, '2020-01-12', NULL, NULL, '0.00', NULL, NULL, NULL, NULL, '0.00', '0.00', '0.00', '0.00', NULL, NULL, '0.00', NULL, NULL, '0.00', '0.00', 'rd_reg', 0, 1, 1, 0, NULL, 0, 'WD', 'Restday', 'MANUAL', 'INPROCESS', 'Admin', NULL, 0, '2020-01-30 05:15:52', '2020-01-30 05:15:52', NULL, NULL),
(1025, NULL, '2006-052', 'Villegas, Maria Teresa Lanozo', 1, 14, 10, '2020-01-13', NULL, NULL, '0.00', '2020-01-13 12:00:00', '2020-01-13 13:00:00', '2020-01-13 08:30:00', '2020-01-13 18:30:00', '1.00', '0.00', '0.00', '0.00', NULL, NULL, '0.00', NULL, NULL, '0.00', '0.00', 'reg', 0, 1, 1, 0, NULL, 0, 'WD', 'Absent', 'MANUAL', 'INPROCESS', 'Admin', NULL, 0, '2020-01-30 05:15:52', '2020-01-30 05:15:52', NULL, NULL),
(1026, NULL, '2006-052', 'Villegas, Maria Teresa Lanozo', 1, 14, 10, '2020-01-14', NULL, NULL, '0.00', '2020-01-14 12:00:00', '2020-01-14 13:00:00', '2020-01-14 08:30:00', '2020-01-14 18:30:00', '1.00', '0.00', '0.00', '0.00', NULL, NULL, '0.00', NULL, NULL, '0.00', '0.00', 'reg', 0, 1, 1, 0, NULL, 0, 'WD', 'Absent', 'MANUAL', 'INPROCESS', 'Admin', NULL, 0, '2020-01-30 05:15:52', '2020-01-30 05:15:52', NULL, NULL),
(1027, NULL, '2006-052', 'Villegas, Maria Teresa Lanozo', 1, 14, 10, '2020-01-15', NULL, NULL, '0.00', '2020-01-15 12:00:00', '2020-01-15 13:00:00', '2020-01-15 08:30:00', '2020-01-15 18:30:00', '1.00', '0.00', '0.00', '0.00', NULL, NULL, '0.00', NULL, NULL, '0.00', '0.00', 'reg', 0, 1, 1, 0, NULL, 0, 'WD', 'Absent', 'MANUAL', 'INPROCESS', 'Admin', NULL, 0, '2020-01-30 05:15:52', '2020-01-30 05:15:52', NULL, NULL),
(1028, NULL, '2006-052', 'Villegas, Maria Teresa Lanozo', 1, 14, 10, '2020-01-16', NULL, NULL, '0.00', '2020-01-16 12:00:00', '2020-01-16 13:00:00', '2020-01-16 08:30:00', '2020-01-16 18:30:00', '1.00', '0.00', '0.00', '0.00', NULL, NULL, '0.00', NULL, NULL, '0.00', '0.00', 'reg', 0, 1, 1, 0, NULL, 0, 'WD', 'Absent', 'MANUAL', 'INPROCESS', 'Admin', NULL, 0, '2020-01-30 05:15:53', '2020-01-30 05:15:53', NULL, NULL),
(1029, NULL, '2006-052', 'Villegas, Maria Teresa Lanozo', 1, 14, 10, '2020-01-17', NULL, NULL, '0.00', '2020-01-17 12:00:00', '2020-01-17 13:00:00', '2020-01-17 08:30:00', '2020-01-17 18:30:00', '1.00', '0.00', '0.00', '0.00', NULL, NULL, '0.00', NULL, NULL, '0.00', '0.00', 'reg', 0, 1, 1, 0, NULL, 0, 'WD', 'Absent', 'MANUAL', 'INPROCESS', 'Admin', NULL, 0, '2020-01-30 05:15:53', '2020-01-30 05:15:53', NULL, NULL),
(1030, NULL, '2006-052', 'Villegas, Maria Teresa Lanozo', 1, 14, 10, '2020-01-18', NULL, NULL, '0.00', NULL, NULL, NULL, NULL, '0.00', '0.00', '0.00', '0.00', NULL, NULL, '0.00', NULL, NULL, '0.00', '0.00', 'rd_reg', 0, 1, 1, 0, NULL, 0, 'WD', 'Restday', 'MANUAL', 'INPROCESS', 'Admin', NULL, 0, '2020-01-30 05:15:53', '2020-01-30 05:15:53', NULL, NULL),
(1031, NULL, '2006-052', 'Villegas, Maria Teresa Lanozo', 1, 14, 10, '2020-01-19', NULL, NULL, '0.00', NULL, NULL, NULL, NULL, '0.00', '0.00', '0.00', '0.00', NULL, NULL, '0.00', NULL, NULL, '0.00', '0.00', 'rd_reg', 0, 1, 1, 0, NULL, 0, 'WD', 'Restday', 'MANUAL', 'INPROCESS', 'Admin', NULL, 0, '2020-01-30 05:15:53', '2020-01-30 05:15:53', NULL, NULL),
(1032, NULL, '2006-052', 'Villegas, Maria Teresa Lanozo', 1, 14, 10, '2020-01-20', NULL, NULL, '0.00', '2020-01-20 12:00:00', '2020-01-20 13:00:00', '2020-01-20 08:30:00', '2020-01-20 18:30:00', '1.00', '0.00', '0.00', '0.00', NULL, NULL, '0.00', NULL, NULL, '0.00', '0.00', 'reg', 0, 1, 1, 0, NULL, 0, 'WD', 'Absent', 'MANUAL', 'INPROCESS', 'Admin', NULL, 0, '2020-01-30 05:15:53', '2020-01-30 05:15:53', NULL, NULL),
(1033, NULL, '2006-052', 'Villegas, Maria Teresa Lanozo', 1, 14, 10, '2020-01-21', NULL, NULL, '0.00', '2020-01-21 12:00:00', '2020-01-21 13:00:00', '2020-01-21 08:30:00', '2020-01-21 18:30:00', '1.00', '0.00', '0.00', '0.00', NULL, NULL, '0.00', NULL, NULL, '0.00', '0.00', 'reg', 0, 1, 1, 0, NULL, 0, 'WD', 'Absent', 'MANUAL', 'INPROCESS', 'Admin', NULL, 0, '2020-01-30 05:15:53', '2020-01-30 05:15:53', NULL, NULL),
(1034, NULL, '2006-052', 'Villegas, Maria Teresa Lanozo', 1, 14, 10, '2020-01-22', NULL, NULL, '0.00', '2020-01-22 12:00:00', '2020-01-22 13:00:00', '2020-01-22 08:30:00', '2020-01-22 18:30:00', '1.00', '0.00', '0.00', '0.00', NULL, NULL, '0.00', NULL, NULL, '0.00', '0.00', 'reg', 0, 1, 1, 0, NULL, 0, 'WD', 'Absent', 'MANUAL', 'INPROCESS', 'Admin', NULL, 0, '2020-01-30 05:15:53', '2020-01-30 05:15:53', NULL, NULL),
(1035, NULL, '2006-052', 'Villegas, Maria Teresa Lanozo', 1, 14, 10, '2020-01-23', NULL, NULL, '0.00', '2020-01-23 12:00:00', '2020-01-23 13:00:00', '2020-01-23 08:30:00', '2020-01-23 18:30:00', '1.00', '0.00', '0.00', '0.00', NULL, NULL, '0.00', NULL, NULL, '0.00', '0.00', 'reg', 0, 1, 1, 0, NULL, 0, 'WD', 'Absent', 'MANUAL', 'INPROCESS', 'Admin', NULL, 0, '2020-01-30 05:15:53', '2020-01-30 05:15:53', NULL, NULL),
(1036, NULL, '2006-052', 'Villegas, Maria Teresa Lanozo', 1, 14, 10, '2020-01-24', NULL, NULL, '0.00', '2020-01-24 12:00:00', '2020-01-24 13:00:00', '2020-01-24 08:30:00', '2020-01-24 18:30:00', '1.00', '0.00', '0.00', '0.00', NULL, NULL, '0.00', NULL, NULL, '0.00', '0.00', 'reg', 0, 1, 1, 0, NULL, 0, 'WD', 'Absent', 'MANUAL', 'INPROCESS', 'Admin', NULL, 0, '2020-01-30 05:15:53', '2020-01-30 05:15:53', NULL, NULL),
(1037, NULL, '2006-052', 'Villegas, Maria Teresa Lanozo', 1, 14, 10, '2020-01-25', NULL, NULL, '0.00', NULL, NULL, NULL, NULL, '0.00', '0.00', '0.00', '0.00', NULL, NULL, '0.00', NULL, NULL, '0.00', '0.00', 'rd_reg', 0, 1, 1, 0, NULL, 0, 'WD', 'Restday', 'MANUAL', 'INPROCESS', 'Admin', NULL, 0, '2020-01-30 05:15:53', '2020-01-30 05:15:53', NULL, NULL),
(1038, NULL, '2006-052', 'Villegas, Maria Teresa Lanozo', 1, 14, 10, '2020-01-26', NULL, NULL, '0.00', NULL, NULL, NULL, NULL, '0.00', '0.00', '0.00', '0.00', NULL, NULL, '0.00', NULL, NULL, '0.00', '0.00', 'rd_reg', 0, 1, 1, 0, NULL, 0, 'WD', 'Restday', 'MANUAL', 'INPROCESS', 'Admin', NULL, 0, '2020-01-30 05:15:53', '2020-01-30 05:15:53', NULL, NULL),
(1039, NULL, '2006-052', 'Villegas, Maria Teresa Lanozo', 1, 14, 10, '2020-01-28', NULL, NULL, '0.00', '2020-01-28 12:00:00', '2020-01-28 13:00:00', '2020-01-28 08:30:00', '2020-01-28 18:30:00', '1.00', '0.00', '0.00', '0.00', NULL, NULL, '0.00', NULL, NULL, '0.00', '0.00', 'reg', 0, 1, 1, 0, NULL, 0, 'WD', 'Absent', 'MANUAL', 'INPROCESS', 'Admin', NULL, 0, '2020-01-30 05:15:54', '2020-01-30 05:15:54', NULL, NULL),
(1040, NULL, '2006-052', 'Villegas, Maria Teresa Lanozo', 1, 14, 10, '2020-01-29', NULL, NULL, '0.00', '2020-01-29 12:00:00', '2020-01-29 13:00:00', '2020-01-29 08:30:00', '2020-01-29 18:30:00', '1.00', '0.00', '0.00', '0.00', NULL, NULL, '0.00', NULL, NULL, '0.00', '0.00', 'reg', 0, 1, 1, 0, NULL, 0, 'WD', 'Absent', 'MANUAL', 'INPROCESS', 'Admin', NULL, 0, '2020-01-30 05:15:54', '2020-01-30 05:15:54', NULL, NULL),
(1041, NULL, '2006-052', 'Villegas, Maria Teresa Lanozo', 1, 14, 10, '2020-01-30', NULL, NULL, '0.00', '2020-01-30 12:00:00', '2020-01-30 13:00:00', '2020-01-30 08:30:00', '2020-01-30 18:30:00', '1.00', '0.00', '0.00', '0.00', NULL, NULL, '0.00', NULL, NULL, '0.00', '0.00', 'reg', 0, 1, 1, 0, NULL, 0, 'WD', 'Absent', 'MANUAL', 'INPROCESS', 'Admin', NULL, 0, '2020-01-30 05:15:54', '2020-01-30 05:15:54', NULL, NULL),
(1042, '202000007', '2017-083', 'Advincula, Kris Nino Marco Sawal', 1, 15, 4, '2020-02-01', NULL, NULL, '0.00', NULL, NULL, NULL, NULL, '0.00', '0.00', '0.00', '0.00', NULL, NULL, '0.00', NULL, NULL, '0.00', '0.00', 'rd_reg', 0, 1, 1, 0, NULL, 0, 'WD', 'Restday', 'MANUAL', 'RELEASED', 'Admin', 'Payroll Admin', 0, '2020-02-12 09:17:57', '2020-03-04 02:41:08', NULL, NULL),
(1043, '202000007', '2017-083', 'Advincula, Kris Nino Marco Sawal', 1, 15, 4, '2020-02-02', NULL, NULL, '0.00', NULL, NULL, NULL, NULL, '0.00', '0.00', '0.00', '0.00', NULL, NULL, '0.00', NULL, NULL, '0.00', '0.00', 'rd_reg', 0, 1, 1, 0, NULL, 0, 'WD', 'Restday', 'MANUAL', 'RELEASED', 'Admin', 'Payroll Admin', 0, '2020-02-12 09:17:57', '2020-03-04 02:41:08', NULL, NULL),
(1044, '202000007', '2017-083', 'Advincula, Kris Nino Marco Sawal', 1, 15, 4, '2020-02-03', NULL, NULL, '0.00', '2020-02-03 12:00:00', '2020-02-03 13:00:00', NULL, NULL, '1.00', '0.00', '0.00', '0.00', NULL, NULL, '0.00', NULL, NULL, '0.00', '0.00', 'reg', 0, 1, 1, 0, NULL, 0, 'WD', 'Absent', 'MANUAL', 'RELEASED', 'Admin', 'Payroll Admin', 0, '2020-02-12 09:17:57', '2020-03-04 02:41:08', NULL, NULL),
(1045, '202000007', '2017-083', 'Advincula, Kris Nino Marco Sawal', 1, 15, 4, '2020-02-04', NULL, NULL, '0.00', '2020-02-04 12:00:00', '2020-02-04 13:00:00', NULL, NULL, '1.00', '0.00', '0.00', '0.00', NULL, NULL, '0.00', NULL, NULL, '0.00', '0.00', 'reg', 0, 1, 1, 0, NULL, 0, 'WD', 'Absent', 'MANUAL', 'RELEASED', 'Admin', 'Payroll Admin', 0, '2020-02-12 09:17:57', '2020-03-04 02:41:08', NULL, NULL),
(1046, '202000007', '2017-083', 'Advincula, Kris Nino Marco Sawal', 1, 15, 4, '2020-02-05', NULL, NULL, '0.00', '2020-02-05 12:00:00', '2020-02-05 13:00:00', NULL, NULL, '1.00', '0.00', '0.00', '0.00', NULL, NULL, '0.00', NULL, NULL, '0.00', '0.00', 'reg', 0, 1, 1, 0, NULL, 0, 'WD', 'Absent', 'MANUAL', 'RELEASED', 'Admin', 'Payroll Admin', 0, '2020-02-12 09:17:57', '2020-03-04 02:41:08', NULL, NULL),
(1047, '202000009', '2017-083', 'Advincula, Kris Nino Marco Sawal', 1, 15, 4, '2020-02-06', NULL, NULL, '0.00', '2020-02-06 12:00:00', '2020-02-06 13:00:00', NULL, NULL, '1.00', '0.00', '0.00', '0.00', NULL, NULL, '0.00', NULL, NULL, '0.00', '0.00', 'reg', 0, 1, 1, 0, NULL, 0, 'WD', 'Absent', 'MANUAL', 'RELEASED', 'Admin', 'Payroll Admin', 0, '2020-02-12 09:17:57', '2020-03-04 03:27:54', NULL, NULL),
(1048, '202000009', '2017-083', 'Advincula, Kris Nino Marco Sawal', 1, 15, 4, '2020-02-07', NULL, NULL, '0.00', '2020-02-07 12:00:00', '2020-02-07 13:00:00', NULL, NULL, '1.00', '0.00', '0.00', '0.00', NULL, NULL, '0.00', NULL, NULL, '0.00', '0.00', 'reg', 0, 1, 1, 0, NULL, 0, 'WD', 'Absent', 'MANUAL', 'RELEASED', 'Admin', 'Payroll Admin', 0, '2020-02-12 09:17:57', '2020-03-04 03:27:54', NULL, NULL),
(1049, '202000009', '2017-083', 'Advincula, Kris Nino Marco Sawal', 1, 15, 4, '2020-02-08', NULL, NULL, '0.00', NULL, NULL, NULL, NULL, '0.00', '0.00', '0.00', '0.00', NULL, NULL, '0.00', NULL, NULL, '0.00', '0.00', 'rd_reg', 0, 1, 1, 0, NULL, 0, 'WD', 'Restday', 'MANUAL', 'RELEASED', 'Admin', 'Payroll Admin', 0, '2020-02-12 09:17:57', '2020-03-04 03:27:54', NULL, NULL),
(1050, '202000009', '2017-083', 'Advincula, Kris Nino Marco Sawal', 1, 15, 4, '2020-02-09', NULL, NULL, '0.00', NULL, NULL, NULL, NULL, '0.00', '0.00', '0.00', '0.00', NULL, NULL, '0.00', NULL, NULL, '0.00', '0.00', 'rd_reg', 0, 1, 1, 0, NULL, 0, 'WD', 'Restday', 'MANUAL', 'RELEASED', 'CASTOR, GINA', 'Payroll Admin', 0, '2020-02-12 09:17:57', '2020-03-04 03:27:54', NULL, NULL),
(1051, '202000009', '2017-083', 'Advincula, Kris Nino Marco Sawal', 1, 15, 4, '2020-02-10', NULL, NULL, '0.00', '2020-02-10 12:00:00', '2020-02-10 13:00:00', NULL, NULL, '1.00', '0.00', '0.00', '0.00', NULL, NULL, '0.00', NULL, NULL, '0.00', '0.00', 'reg', 0, 1, 1, 0, NULL, 0, 'WD', 'Absent', 'MANUAL', 'RELEASED', 'CASTOR, GINA', 'Payroll Admin', 0, '2020-02-12 09:17:57', '2020-03-04 03:27:54', NULL, NULL),
(1052, '202000009', '2017-083', 'Advincula, Kris Nino Marco Sawal', 1, 15, 4, '2020-02-11', NULL, NULL, '0.00', '2020-02-11 12:00:00', '2020-02-11 13:00:00', NULL, NULL, '1.00', '0.00', '0.00', '0.00', NULL, NULL, '0.00', NULL, NULL, '0.00', '0.00', 'reg', 0, 1, 1, 0, NULL, 0, 'WD', 'Absent', 'MANUAL', 'RELEASED', 'Admin', 'Payroll Admin', 0, '2020-02-12 09:17:57', '2020-03-04 03:27:54', NULL, NULL),
(1053, NULL, '2000-017', 'Araquel, Joe marie Basada', 1, 14, 10, '2020-02-01', NULL, NULL, '0.00', NULL, NULL, NULL, NULL, '0.00', '0.00', '0.00', '0.00', NULL, NULL, '0.00', NULL, NULL, '0.00', '0.00', 'rd_reg', 0, 1, 1, 0, NULL, 0, 'WD', 'Restday', 'MANUAL', 'INPROCESS', 'Admin', NULL, 0, '2020-02-12 09:17:57', '2020-02-12 09:17:57', NULL, NULL),
(1054, NULL, '2000-017', 'Araquel, Joe marie Basada', 1, 14, 10, '2020-02-02', NULL, NULL, '0.00', NULL, NULL, NULL, NULL, '0.00', '0.00', '0.00', '0.00', NULL, NULL, '0.00', NULL, NULL, '0.00', '0.00', 'rd_reg', 0, 1, 1, 0, NULL, 0, 'WD', 'Restday', 'MANUAL', 'INPROCESS', 'Admin', NULL, 0, '2020-02-12 09:17:57', '2020-02-12 09:17:57', NULL, NULL),
(1055, NULL, '2000-017', 'Araquel, Joe marie Basada', 1, 14, 10, '2020-02-03', NULL, NULL, '0.00', '2020-02-03 12:00:00', '2020-02-03 13:00:00', '2020-02-03 08:30:00', '2020-02-03 18:30:00', '1.00', '0.00', '0.00', '0.00', NULL, NULL, '0.00', NULL, NULL, '0.00', '0.00', 'reg', 0, 1, 1, 0, NULL, 0, 'WD', 'Absent', 'MANUAL', 'INPROCESS', 'Admin', NULL, 0, '2020-02-12 09:17:57', '2020-02-12 09:17:57', NULL, NULL),
(1056, NULL, '2000-017', 'Araquel, Joe marie Basada', 1, 14, 10, '2020-02-04', NULL, NULL, '0.00', '2020-02-04 12:00:00', '2020-02-04 13:00:00', '2020-02-04 08:30:00', '2020-02-04 18:30:00', '1.00', '0.00', '0.00', '0.00', NULL, NULL, '0.00', NULL, NULL, '0.00', '0.00', 'reg', 0, 1, 1, 0, NULL, 0, 'WD', 'Absent', 'MANUAL', 'INPROCESS', 'Admin', NULL, 0, '2020-02-12 09:17:57', '2020-02-12 09:17:57', NULL, NULL),
(1057, NULL, '2000-017', 'Araquel, Joe marie Basada', 1, 14, 10, '2020-02-05', NULL, NULL, '0.00', '2020-02-05 12:00:00', '2020-02-05 13:00:00', '2020-02-05 08:30:00', '2020-02-05 18:30:00', '1.00', '0.00', '0.00', '0.00', NULL, NULL, '0.00', NULL, NULL, '0.00', '0.00', 'reg', 0, 1, 1, 0, NULL, 0, 'WD', 'Absent', 'MANUAL', 'INPROCESS', 'Admin', NULL, 0, '2020-02-12 09:17:58', '2020-02-12 09:17:58', NULL, NULL),
(1058, NULL, '2000-017', 'Araquel, Joe marie Basada', 1, 14, 10, '2020-02-06', NULL, NULL, '0.00', '2020-02-06 12:00:00', '2020-02-06 13:00:00', '2020-02-06 08:30:00', '2020-02-06 18:30:00', '1.00', '0.00', '0.00', '0.00', NULL, NULL, '0.00', NULL, NULL, '0.00', '0.00', 'reg', 0, 1, 1, 0, NULL, 0, 'WD', 'Absent', 'MANUAL', 'INPROCESS', 'Admin', NULL, 0, '2020-02-12 09:17:58', '2020-02-12 09:17:58', NULL, NULL),
(1059, NULL, '2000-017', 'Araquel, Joe marie Basada', 1, 14, 10, '2020-02-07', NULL, NULL, '0.00', '2020-02-07 12:00:00', '2020-02-07 13:00:00', '2020-02-07 08:30:00', '2020-02-07 18:30:00', '1.00', '0.00', '0.00', '0.00', NULL, NULL, '0.00', NULL, NULL, '0.00', '0.00', 'reg', 0, 1, 1, 0, NULL, 0, 'WD', 'Absent', 'MANUAL', 'INPROCESS', 'Admin', NULL, 0, '2020-02-12 09:17:58', '2020-02-12 09:17:58', NULL, NULL),
(1060, NULL, '2000-017', 'Araquel, Joe marie Basada', 1, 14, 10, '2020-02-08', NULL, NULL, '0.00', NULL, NULL, NULL, NULL, '0.00', '0.00', '0.00', '0.00', NULL, NULL, '0.00', NULL, NULL, '0.00', '0.00', 'rd_reg', 0, 1, 1, 0, NULL, 0, 'WD', 'Restday', 'MANUAL', 'INPROCESS', 'Admin', NULL, 0, '2020-02-12 09:17:58', '2020-02-12 09:17:58', NULL, NULL),
(1061, NULL, '2000-017', 'Araquel, Joe marie Basada', 1, 14, 10, '2020-02-09', NULL, NULL, '0.00', NULL, NULL, NULL, NULL, '0.00', '0.00', '0.00', '0.00', NULL, NULL, '0.00', NULL, NULL, '0.00', '0.00', 'rd_reg', 0, 1, 1, 0, NULL, 0, 'WD', 'Restday', 'MANUAL', 'INPROCESS', 'CASTOR, GINA', NULL, 0, '2020-02-12 09:17:58', '2020-02-21 06:31:15', NULL, NULL),
(1062, NULL, '2000-017', 'Araquel, Joe marie Basada', 1, 14, 10, '2020-02-10', NULL, NULL, '0.00', '2020-02-10 12:00:00', '2020-02-10 13:00:00', '2020-02-10 08:30:00', '2020-02-10 18:30:00', '1.00', '0.00', '0.00', '0.00', NULL, NULL, '0.00', NULL, NULL, '0.00', '0.00', 'reg', 0, 1, 1, 0, NULL, 0, 'WD', 'Absent', 'MANUAL', 'INPROCESS', 'CASTOR, GINA', NULL, 0, '2020-02-12 09:17:58', '2020-02-21 06:31:15', NULL, NULL),
(1063, NULL, '2000-017', 'Araquel, Joe marie Basada', 1, 14, 10, '2020-02-11', NULL, NULL, '0.00', '2020-02-11 12:00:00', '2020-02-11 13:00:00', '2020-02-11 08:30:00', '2020-02-11 18:30:00', '1.00', '0.00', '0.00', '0.00', NULL, NULL, '0.00', NULL, NULL, '0.00', '0.00', 'reg', 0, 1, 1, 0, NULL, 0, 'WD', 'Absent', 'MANUAL', 'INPROCESS', 'Admin', NULL, 0, '2020-02-12 09:17:58', '2020-02-12 09:17:58', NULL, NULL),
(1064, '202000007', '2018-004', 'Argales, Rome Aubrey Cruz', 1, 15, 13, '2020-02-01', NULL, NULL, '0.00', '2020-02-01 12:00:00', '2020-02-01 13:00:00', NULL, NULL, '1.00', '0.00', '0.00', '0.00', NULL, NULL, '0.00', NULL, NULL, '0.00', '0.00', 'reg', 0, 1, 1, 0, NULL, 0, 'WD', 'Absent', 'MANUAL', 'RELEASED', 'Admin', 'Payroll Admin', 0, '2020-02-12 09:17:58', '2020-03-04 02:41:08', NULL, NULL),
(1065, '202000007', '2018-004', 'Argales, Rome Aubrey Cruz', 1, 15, 13, '2020-02-02', NULL, NULL, '0.00', NULL, NULL, NULL, NULL, '0.00', '0.00', '0.00', '0.00', NULL, NULL, '0.00', NULL, NULL, '0.00', '0.00', 'rd_reg', 0, 1, 1, 0, NULL, 0, 'WD', 'Restday', 'MANUAL', 'RELEASED', 'Admin', 'Payroll Admin', 0, '2020-02-12 09:17:58', '2020-03-04 02:41:08', NULL, NULL),
(1066, '202000007', '2018-004', 'Argales, Rome Aubrey Cruz', 1, 15, 13, '2020-02-03', NULL, NULL, '0.00', NULL, NULL, NULL, NULL, '0.00', '0.00', '0.00', '0.00', NULL, NULL, '0.00', NULL, NULL, '0.00', '0.00', 'rd_reg', 0, 1, 1, 0, NULL, 0, 'WD', 'Restday', 'MANUAL', 'RELEASED', 'Admin', 'Payroll Admin', 0, '2020-02-12 09:17:58', '2020-03-04 02:41:08', NULL, NULL),
(1067, '202000007', '2018-004', 'Argales, Rome Aubrey Cruz', 1, 15, 13, '2020-02-04', NULL, NULL, '0.00', '2020-02-04 12:00:00', '2020-02-04 13:00:00', NULL, NULL, '1.00', '0.00', '0.00', '0.00', NULL, NULL, '0.00', NULL, NULL, '0.00', '0.00', 'reg', 0, 1, 1, 0, NULL, 0, 'WD', 'Absent', 'MANUAL', 'RELEASED', 'Admin', 'Payroll Admin', 0, '2020-02-12 09:17:58', '2020-03-04 02:41:08', NULL, NULL),
(1068, '202000007', '2018-004', 'Argales, Rome Aubrey Cruz', 1, 15, 13, '2020-02-05', NULL, NULL, '0.00', '2020-02-05 12:00:00', '2020-02-05 13:00:00', NULL, NULL, '1.00', '0.00', '0.00', '0.00', NULL, NULL, '0.00', NULL, NULL, '0.00', '0.00', 'reg', 0, 1, 1, 0, NULL, 0, 'WD', 'Absent', 'MANUAL', 'RELEASED', 'Admin', 'Payroll Admin', 0, '2020-02-12 09:17:58', '2020-03-04 02:41:08', NULL, NULL),
(1069, '202000009', '2018-004', 'Argales, Rome Aubrey Cruz', 1, 15, 13, '2020-02-06', NULL, NULL, '0.00', '2020-02-06 12:00:00', '2020-02-06 13:00:00', NULL, NULL, '1.00', '0.00', '0.00', '0.00', NULL, NULL, '0.00', NULL, NULL, '0.00', '0.00', 'reg', 0, 1, 1, 0, NULL, 0, 'WD', 'Absent', 'MANUAL', 'RELEASED', 'Admin', 'Payroll Admin', 0, '2020-02-12 09:17:58', '2020-03-04 03:27:54', NULL, NULL),
(1070, '202000009', '2018-004', 'Argales, Rome Aubrey Cruz', 1, 15, 13, '2020-02-07', NULL, NULL, '0.00', '2020-02-07 12:00:00', '2020-02-07 13:00:00', NULL, NULL, '1.00', '0.00', '0.00', '0.00', NULL, NULL, '0.00', NULL, NULL, '0.00', '0.00', 'reg', 0, 1, 1, 0, NULL, 0, 'WD', 'Absent', 'MANUAL', 'RELEASED', 'Admin', 'Payroll Admin', 0, '2020-02-12 09:17:58', '2020-03-04 03:27:54', NULL, NULL),
(1071, '202000009', '2018-004', 'Argales, Rome Aubrey Cruz', 1, 15, 13, '2020-02-08', NULL, NULL, '0.00', '2020-02-08 12:00:00', '2020-02-08 13:00:00', NULL, NULL, '1.00', '0.00', '0.00', '0.00', NULL, NULL, '0.00', NULL, NULL, '0.00', '0.00', 'reg', 0, 1, 1, 0, NULL, 0, 'WD', 'Absent', 'MANUAL', 'RELEASED', 'Admin', 'Payroll Admin', 0, '2020-02-12 09:17:58', '2020-03-04 03:27:54', NULL, NULL),
(1072, '202000009', '2018-004', 'Argales, Rome Aubrey Cruz', 1, 15, 13, '2020-02-09', NULL, NULL, '0.00', NULL, NULL, NULL, NULL, '0.00', '0.00', '0.00', '0.00', NULL, NULL, '0.00', NULL, NULL, '0.00', '0.00', 'rd_reg', 0, 1, 1, 0, NULL, 0, 'WD', 'Restday', 'MANUAL', 'RELEASED', 'CASTOR, GINA', 'Payroll Admin', 0, '2020-02-12 09:17:58', '2020-03-04 03:27:54', NULL, NULL),
(1073, '202000009', '2018-004', 'Argales, Rome Aubrey Cruz', 1, 15, 13, '2020-02-10', NULL, NULL, '0.00', NULL, NULL, NULL, NULL, '0.00', '0.00', '0.00', '0.00', NULL, NULL, '0.00', NULL, NULL, '0.00', '0.00', 'rd_reg', 0, 1, 1, 0, NULL, 0, 'WD', 'Restday', 'MANUAL', 'RELEASED', 'CASTOR, GINA', 'Payroll Admin', 0, '2020-02-12 09:17:59', '2020-03-04 03:27:54', NULL, NULL),
(1074, '202000009', '2018-004', 'Argales, Rome Aubrey Cruz', 1, 15, 13, '2020-02-11', NULL, NULL, '0.00', '2020-02-11 12:00:00', '2020-02-11 13:00:00', NULL, NULL, '1.00', '0.00', '0.00', '0.00', NULL, NULL, '0.00', NULL, NULL, '0.00', '0.00', 'reg', 0, 1, 1, 0, NULL, 0, 'WD', 'Absent', 'MANUAL', 'RELEASED', 'Admin', 'Payroll Admin', 0, '2020-02-12 09:17:59', '2020-03-04 03:27:54', NULL, NULL),
(1075, '202000007', '2018-040', 'BIÃ‘AS, Kenneth Joshua Lope', 1, 15, 4, '2020-02-01', NULL, NULL, '0.00', NULL, NULL, NULL, NULL, '0.00', '0.00', '0.00', '0.00', NULL, NULL, '0.00', NULL, NULL, '0.00', '0.00', 'rd_reg', 0, 1, 1, 0, NULL, 0, 'WD', 'Restday', 'MANUAL', 'RELEASED', 'Admin', 'Payroll Admin', 0, '2020-02-12 09:17:59', '2020-03-04 02:41:08', NULL, NULL),
(1076, '202000007', '2018-040', 'BIÃ‘AS, Kenneth Joshua Lope', 1, 15, 4, '2020-02-02', NULL, NULL, '0.00', NULL, NULL, NULL, NULL, '0.00', '0.00', '0.00', '0.00', NULL, NULL, '0.00', NULL, NULL, '0.00', '0.00', 'rd_reg', 0, 1, 1, 0, NULL, 0, 'WD', 'Restday', 'MANUAL', 'RELEASED', 'Admin', 'Payroll Admin', 0, '2020-02-12 09:17:59', '2020-03-04 02:41:08', NULL, NULL),
(1077, '202000007', '2018-040', 'BIÃ‘AS, Kenneth Joshua Lope', 1, 15, 4, '2020-02-03', '2020-02-03 12:46:39', '2020-02-03 19:18:25', '6.53', '2020-02-03 12:00:00', '2020-02-03 13:00:00', '2020-02-03 12:46:39', '2020-02-03 22:46:39', '1.00', '0.00', '0.00', '208.20', NULL, NULL, '0.00', NULL, NULL, '0.00', '0.00', 'reg', 0, 1, 1, 0, NULL, 0, 'WD', 'Present', 'MANUAL', 'RELEASED', 'Admin', 'Payroll Admin', 0, '2020-02-12 09:17:59', '2020-03-04 02:41:08', 'vivo vivo 1804', 'vivo vivo 1804'),
(1078, '202000007', '2018-040', 'BIÃ‘AS, Kenneth Joshua Lope', 1, 15, 4, '2020-02-04', '2020-02-04 16:03:50', NULL, '0.00', '2020-02-04 12:00:00', '2020-02-04 13:00:00', '2020-02-04 16:03:50', '2020-02-05 02:03:50', '1.00', '0.00', '0.00', '0.00', NULL, NULL, '0.00', NULL, NULL, '0.00', '0.00', 'reg', 0, 1, 1, 0, NULL, 0, 'WD', 'No Time Out', 'MANUAL', 'RELEASED', 'Admin', 'Payroll Admin', 0, '2020-02-12 09:17:59', '2020-03-04 02:41:08', 'vivo vivo 1804', NULL),
(1079, '202000007', '2018-040', 'BIÃ‘AS, Kenneth Joshua Lope', 1, 15, 4, '2020-02-05', '2020-02-05 15:21:20', '2020-02-05 15:56:58', '0.59', '2020-02-05 12:00:00', '2020-02-05 13:00:00', '2020-02-05 15:21:20', '2020-02-06 01:21:20', '1.00', '0.00', '0.00', '564.60', NULL, NULL, '0.00', NULL, NULL, '0.00', '0.00', 'reg', 0, 1, 1, 0, NULL, 0, 'WD', 'Present', 'MANUAL', 'RELEASED', 'Admin', 'Payroll Admin', 0, '2020-02-12 09:17:59', '2020-03-04 02:41:08', 'vivo vivo 1804', 'vivo vivo 1804'),
(1080, '202000009', '2018-040', 'BIÃ‘AS, Kenneth Joshua Lope', 1, 15, 4, '2020-02-06', NULL, NULL, '0.00', '2020-02-06 12:00:00', '2020-02-06 13:00:00', NULL, NULL, '1.00', '0.00', '0.00', '0.00', NULL, NULL, '0.00', NULL, NULL, '0.00', '0.00', 'reg', 0, 1, 1, 0, NULL, 0, 'WD', 'Absent', 'MANUAL', 'RELEASED', 'Admin', 'Payroll Admin', 0, '2020-02-12 09:17:59', '2020-03-04 03:27:54', NULL, NULL),
(1081, '202000009', '2018-040', 'BIÃ‘AS, Kenneth Joshua Lope', 1, 15, 4, '2020-02-07', '2020-02-07 13:51:45', NULL, '0.00', '2020-02-07 12:00:00', '2020-02-07 13:00:00', '2020-02-07 13:51:45', '2020-02-07 23:51:45', '1.00', '0.00', '0.00', '0.00', NULL, NULL, '0.00', NULL, NULL, '0.00', '0.00', 'reg', 0, 1, 1, 0, NULL, 0, 'WD', 'No Time Out', 'MANUAL', 'RELEASED', 'Admin', 'Payroll Admin', 0, '2020-02-12 09:17:59', '2020-03-04 03:27:54', 'vivo vivo 1804', NULL),
(1082, '202000009', '2018-040', 'BIÃ‘AS, Kenneth Joshua Lope', 1, 15, 4, '2020-02-08', NULL, NULL, '0.00', NULL, NULL, NULL, NULL, '0.00', '0.00', '0.00', '0.00', NULL, NULL, '0.00', NULL, NULL, '0.00', '0.00', 'rd_reg', 0, 1, 1, 0, NULL, 0, 'WD', 'Restday', 'MANUAL', 'RELEASED', 'Admin', 'Payroll Admin', 0, '2020-02-12 09:17:59', '2020-03-04 03:27:54', NULL, NULL),
(1083, '202000009', '2018-040', 'BIÃ‘AS, Kenneth Joshua Lope', 1, 15, 4, '2020-02-09', NULL, NULL, '0.00', NULL, NULL, NULL, NULL, '0.00', '0.00', '0.00', '0.00', NULL, NULL, '0.00', NULL, NULL, '0.00', '0.00', 'rd_reg', 0, 1, 1, 0, NULL, 0, 'WD', 'Restday', 'MANUAL', 'RELEASED', 'CASTOR, GINA', 'Payroll Admin', 0, '2020-02-12 09:17:59', '2020-03-04 03:27:54', NULL, NULL),
(1084, '202000009', '2018-040', 'BIÃ‘AS, Kenneth Joshua Lope', 1, 15, 4, '2020-02-10', '2020-02-10 15:53:55', NULL, '0.00', '2020-02-10 12:00:00', '2020-02-10 13:00:00', '2020-02-10 15:53:55', '2020-02-11 01:53:55', '1.00', '0.00', '0.00', '0.00', NULL, NULL, '0.00', NULL, NULL, '0.00', '0.00', 'reg', 0, 1, 1, 0, NULL, 0, 'WD', 'No Time Out', 'MANUAL', 'RELEASED', 'CASTOR, GINA', 'Payroll Admin', 0, '2020-02-12 09:17:59', '2020-03-04 03:27:54', 'vivo vivo 1804', NULL),
(1085, '202000009', '2018-040', 'BIÃ‘AS, Kenneth Joshua Lope', 1, 15, 4, '2020-02-11', NULL, NULL, '0.00', '2020-02-11 12:00:00', '2020-02-11 13:00:00', NULL, NULL, '1.00', '0.00', '0.00', '0.00', NULL, NULL, '0.00', NULL, NULL, '0.00', '0.00', 'reg', 0, 1, 1, 0, NULL, 0, 'WD', 'Absent', 'MANUAL', 'RELEASED', 'Admin', 'Payroll Admin', 0, '2020-02-12 09:18:00', '2020-03-04 03:27:54', NULL, NULL),
(1086, NULL, '2010-191', 'CASTOR, GINA ALMADEN', 1, 16, 10, '2020-02-01', NULL, NULL, '0.00', NULL, NULL, NULL, NULL, '0.00', '0.00', '0.00', '0.00', NULL, NULL, '0.00', NULL, NULL, '0.00', '0.00', 'rd_reg', 0, 1, 1, 0, NULL, 0, 'WD', 'Restday', 'MANUAL', 'INPROCESS', 'Admin', NULL, 0, '2020-02-12 09:18:00', '2020-02-12 09:18:00', NULL, NULL),
(1087, NULL, '2010-191', 'CASTOR, GINA ALMADEN', 1, 16, 10, '2020-02-02', NULL, NULL, '0.00', NULL, NULL, NULL, NULL, '0.00', '0.00', '0.00', '0.00', NULL, NULL, '0.00', NULL, NULL, '0.00', '0.00', 'rd_reg', 0, 1, 1, 0, NULL, 0, 'WD', 'Restday', 'MANUAL', 'INPROCESS', 'Admin', NULL, 0, '2020-02-12 09:18:00', '2020-02-12 09:18:00', NULL, NULL),
(1088, NULL, '2010-191', 'CASTOR, GINA ALMADEN', 1, 16, 10, '2020-02-03', NULL, NULL, '0.00', '2020-02-03 12:00:00', '2020-02-03 13:00:00', '2020-02-03 08:30:00', '2020-02-03 18:30:00', '1.00', '0.00', '0.00', '0.00', NULL, NULL, '0.00', NULL, NULL, '0.00', '0.00', 'reg', 0, 1, 1, 0, NULL, 0, 'WD', 'Absent', 'MANUAL', 'INPROCESS', 'Admin', NULL, 0, '2020-02-12 09:18:00', '2020-02-12 09:18:00', NULL, NULL),
(1089, NULL, '2010-191', 'CASTOR, GINA ALMADEN', 1, 16, 10, '2020-02-04', NULL, NULL, '0.00', '2020-02-04 12:00:00', '2020-02-04 13:00:00', '2020-02-04 08:30:00', '2020-02-04 18:30:00', '1.00', '0.00', '0.00', '0.00', NULL, NULL, '0.00', NULL, NULL, '0.00', '0.00', 'reg', 0, 1, 1, 0, NULL, 0, 'WD', 'Absent', 'MANUAL', 'INPROCESS', 'Admin', NULL, 0, '2020-02-12 09:18:00', '2020-02-12 09:18:00', NULL, NULL),
(1090, NULL, '2010-191', 'CASTOR, GINA ALMADEN', 1, 16, 10, '2020-02-05', NULL, NULL, '0.00', '2020-02-05 12:00:00', '2020-02-05 13:00:00', '2020-02-05 08:30:00', '2020-02-05 18:30:00', '1.00', '0.00', '0.00', '0.00', NULL, NULL, '0.00', NULL, NULL, '0.00', '0.00', 'reg', 0, 1, 1, 0, NULL, 0, 'WD', 'Absent', 'MANUAL', 'INPROCESS', 'Admin', NULL, 0, '2020-02-12 09:18:00', '2020-02-12 09:18:00', NULL, NULL),
(1091, NULL, '2010-191', 'CASTOR, GINA ALMADEN', 1, 16, 10, '2020-02-06', NULL, NULL, '0.00', '2020-02-06 12:00:00', '2020-02-06 13:00:00', '2020-02-06 08:30:00', '2020-02-06 18:30:00', '1.00', '0.00', '0.00', '0.00', NULL, NULL, '0.00', NULL, NULL, '0.00', '0.00', 'reg', 0, 1, 1, 0, NULL, 0, 'WD', 'Absent', 'MANUAL', 'INPROCESS', 'Admin', NULL, 0, '2020-02-12 09:18:00', '2020-02-12 09:18:00', NULL, NULL),
(1092, NULL, '2010-191', 'CASTOR, GINA ALMADEN', 1, 16, 10, '2020-02-07', NULL, NULL, '0.00', '2020-02-07 12:00:00', '2020-02-07 13:00:00', '2020-02-07 08:30:00', '2020-02-07 18:30:00', '1.00', '0.00', '0.00', '0.00', NULL, NULL, '0.00', NULL, NULL, '0.00', '0.00', 'reg', 0, 1, 1, 0, NULL, 0, 'WD', 'Absent', 'MANUAL', 'INPROCESS', 'Admin', NULL, 0, '2020-02-12 09:18:00', '2020-02-12 09:18:00', NULL, NULL),
(1093, NULL, '2010-191', 'CASTOR, GINA ALMADEN', 1, 16, 10, '2020-02-08', NULL, NULL, '0.00', NULL, NULL, NULL, NULL, '0.00', '0.00', '0.00', '0.00', NULL, NULL, '0.00', NULL, NULL, '0.00', '0.00', 'rd_reg', 0, 1, 1, 0, NULL, 0, 'WD', 'Restday', 'MANUAL', 'INPROCESS', 'Admin', NULL, 0, '2020-02-12 09:18:01', '2020-02-12 09:18:01', NULL, NULL),
(1094, NULL, '2010-191', 'CASTOR, GINA ALMADEN', 1, 16, 10, '2020-02-09', NULL, NULL, '0.00', NULL, NULL, NULL, NULL, '0.00', '0.00', '0.00', '0.00', NULL, NULL, '0.00', NULL, NULL, '0.00', '0.00', 'rd_reg', 0, 1, 1, 0, NULL, 0, 'WD', 'Restday', 'MANUAL', 'INPROCESS', 'CASTOR, GINA', NULL, 0, '2020-02-12 09:18:01', '2020-02-21 06:31:15', NULL, NULL),
(1095, NULL, '2010-191', 'CASTOR, GINA ALMADEN', 1, 16, 10, '2020-02-10', NULL, NULL, '0.00', '2020-02-10 12:00:00', '2020-02-10 13:00:00', '2020-02-10 08:30:00', '2020-02-10 18:30:00', '1.00', '0.00', '0.00', '0.00', NULL, NULL, '0.00', NULL, NULL, '0.00', '0.00', 'reg', 0, 1, 1, 0, NULL, 0, 'WD', 'Absent', 'MANUAL', 'INPROCESS', 'CASTOR, GINA', NULL, 0, '2020-02-12 09:18:01', '2020-02-21 06:31:15', NULL, NULL),
(1096, NULL, '2010-191', 'CASTOR, GINA ALMADEN', 1, 16, 10, '2020-02-11', NULL, NULL, '0.00', '2020-02-11 12:00:00', '2020-02-11 13:00:00', '2020-02-11 08:30:00', '2020-02-11 18:30:00', '1.00', '0.00', '0.00', '0.00', NULL, NULL, '0.00', NULL, NULL, '0.00', '0.00', 'reg', 0, 1, 1, 0, NULL, 0, 'WD', 'Absent', 'MANUAL', 'INPROCESS', 'Admin', NULL, 0, '2020-02-12 09:18:01', '2020-02-12 09:18:01', NULL, NULL),
(1097, NULL, '2015-051', 'Dayandante, Jasmin Pasco', 1, 16, 10, '2020-02-01', NULL, NULL, '0.00', NULL, NULL, NULL, NULL, '0.00', '0.00', '0.00', '0.00', NULL, NULL, '0.00', NULL, NULL, '0.00', '0.00', 'rd_reg', 0, 1, 1, 0, NULL, 0, 'WD', 'Restday', 'MANUAL', 'INPROCESS', 'Admin', NULL, 0, '2020-02-12 09:18:01', '2020-02-12 09:18:01', NULL, NULL),
(1098, NULL, '2015-051', 'Dayandante, Jasmin Pasco', 1, 16, 10, '2020-02-02', NULL, NULL, '0.00', NULL, NULL, NULL, NULL, '0.00', '0.00', '0.00', '0.00', NULL, NULL, '0.00', NULL, NULL, '0.00', '0.00', 'rd_reg', 0, 1, 1, 0, NULL, 0, 'WD', 'Restday', 'MANUAL', 'INPROCESS', 'Admin', NULL, 0, '2020-02-12 09:18:01', '2020-02-12 09:18:01', NULL, NULL);
INSERT INTO `date_and_time_records` (`id`, `register_number`, `company_id`, `employee_name`, `company_ind`, `group_ind`, `sched_template_id`, `sched_date`, `date_time_in`, `date_time_out`, `reg_total_hrs`, `lunch_out`, `lunch_in`, `schedule_shift_in`, `schedule_shift_out`, `lunch_durations_hrs`, `over_break_min`, `late_min`, `undertime_min`, `ot_time_in`, `ot_time_out`, `ot_total_hrs`, `night_diff_in`, `night_diff_out`, `night_diff_total_hrs`, `night_diff_total_ot_hrs`, `day_types`, `work_on_holiday`, `before_holiday`, `after_holiday`, `leaved`, `leave_types`, `leave_wpay`, `half_day`, `remarks`, `insystem`, `payroll_status`, `created_by`, `lu_by`, `deleted`, `created_at`, `updated_at`, `device_id_in`, `device_id_out`) VALUES
(1099, NULL, '2015-051', 'Dayandante, Jasmin Pasco', 1, 16, 10, '2020-02-03', NULL, NULL, '0.00', '2020-02-03 12:00:00', '2020-02-03 13:00:00', '2020-02-03 08:30:00', '2020-02-03 18:30:00', '1.00', '0.00', '0.00', '0.00', NULL, NULL, '0.00', NULL, NULL, '0.00', '0.00', 'reg', 0, 1, 1, 0, NULL, 0, 'WD', 'Absent', 'MANUAL', 'INPROCESS', 'Admin', NULL, 0, '2020-02-12 09:18:01', '2020-02-12 09:18:01', NULL, NULL),
(1100, NULL, '2015-051', 'Dayandante, Jasmin Pasco', 1, 16, 10, '2020-02-04', NULL, NULL, '0.00', '2020-02-04 12:00:00', '2020-02-04 13:00:00', '2020-02-04 08:30:00', '2020-02-04 18:30:00', '1.00', '0.00', '0.00', '0.00', NULL, NULL, '0.00', NULL, NULL, '0.00', '0.00', 'reg', 0, 1, 1, 0, NULL, 0, 'WD', 'Absent', 'MANUAL', 'INPROCESS', 'Admin', NULL, 0, '2020-02-12 09:18:01', '2020-02-12 09:18:01', NULL, NULL),
(1101, NULL, '2015-051', 'Dayandante, Jasmin Pasco', 1, 16, 10, '2020-02-05', NULL, NULL, '0.00', '2020-02-05 12:00:00', '2020-02-05 13:00:00', '2020-02-05 08:30:00', '2020-02-05 18:30:00', '1.00', '0.00', '0.00', '0.00', NULL, NULL, '0.00', NULL, NULL, '0.00', '0.00', 'reg', 0, 1, 1, 0, NULL, 0, 'WD', 'Absent', 'MANUAL', 'INPROCESS', 'Admin', NULL, 0, '2020-02-12 09:18:01', '2020-02-12 09:18:01', NULL, NULL),
(1102, NULL, '2015-051', 'Dayandante, Jasmin Pasco', 1, 16, 10, '2020-02-06', NULL, NULL, '0.00', '2020-02-06 12:00:00', '2020-02-06 13:00:00', '2020-02-06 08:30:00', '2020-02-06 18:30:00', '1.00', '0.00', '0.00', '0.00', NULL, NULL, '0.00', NULL, NULL, '0.00', '0.00', 'reg', 0, 1, 1, 0, NULL, 0, 'WD', 'Absent', 'MANUAL', 'INPROCESS', 'Admin', NULL, 0, '2020-02-12 09:18:01', '2020-02-12 09:18:01', NULL, NULL),
(1103, NULL, '2015-051', 'Dayandante, Jasmin Pasco', 1, 16, 10, '2020-02-07', NULL, NULL, '0.00', '2020-02-07 12:00:00', '2020-02-07 13:00:00', '2020-02-07 08:30:00', '2020-02-07 18:30:00', '1.00', '0.00', '0.00', '0.00', NULL, NULL, '0.00', NULL, NULL, '0.00', '0.00', 'reg', 0, 1, 1, 0, NULL, 0, 'WD', 'Absent', 'MANUAL', 'INPROCESS', 'Admin', NULL, 0, '2020-02-12 09:18:01', '2020-02-12 09:18:01', NULL, NULL),
(1104, NULL, '2015-051', 'Dayandante, Jasmin Pasco', 1, 16, 10, '2020-02-08', NULL, NULL, '0.00', NULL, NULL, NULL, NULL, '0.00', '0.00', '0.00', '0.00', NULL, NULL, '0.00', NULL, NULL, '0.00', '0.00', 'rd_reg', 0, 1, 1, 0, NULL, 0, 'WD', 'Restday', 'MANUAL', 'INPROCESS', 'Admin', NULL, 0, '2020-02-12 09:18:01', '2020-02-12 09:18:01', NULL, NULL),
(1105, NULL, '2015-051', 'Dayandante, Jasmin Pasco', 1, 16, 10, '2020-02-09', NULL, NULL, '0.00', NULL, NULL, NULL, NULL, '0.00', '0.00', '0.00', '0.00', NULL, NULL, '0.00', NULL, NULL, '0.00', '0.00', 'rd_reg', 0, 1, 1, 0, NULL, 0, 'WD', 'Restday', 'MANUAL', 'INPROCESS', 'CASTOR, GINA', NULL, 0, '2020-02-12 09:18:01', '2020-02-21 06:31:15', NULL, NULL),
(1106, NULL, '2015-051', 'Dayandante, Jasmin Pasco', 1, 16, 10, '2020-02-10', NULL, NULL, '0.00', '2020-02-10 12:00:00', '2020-02-10 13:00:00', '2020-02-10 08:30:00', '2020-02-10 18:30:00', '1.00', '0.00', '0.00', '0.00', NULL, NULL, '0.00', NULL, NULL, '0.00', '0.00', 'reg', 0, 1, 1, 0, NULL, 0, 'WD', 'Absent', 'MANUAL', 'INPROCESS', 'CASTOR, GINA', NULL, 0, '2020-02-12 09:18:01', '2020-02-21 06:31:15', NULL, NULL),
(1107, NULL, '2015-051', 'Dayandante, Jasmin Pasco', 1, 16, 10, '2020-02-11', NULL, NULL, '0.00', '2020-02-11 12:00:00', '2020-02-11 13:00:00', '2020-02-11 08:30:00', '2020-02-11 18:30:00', '1.00', '0.00', '0.00', '0.00', NULL, NULL, '0.00', NULL, NULL, '0.00', '0.00', 'reg', 0, 1, 1, 0, NULL, 0, 'WD', 'Absent', 'MANUAL', 'INPROCESS', 'Admin', NULL, 0, '2020-02-12 09:18:01', '2020-02-12 09:18:01', NULL, NULL),
(1108, '202000007', '2017-082', 'Flores, Juan Karlo Quisol', 1, 15, 4, '2020-02-01', NULL, NULL, '0.00', NULL, NULL, NULL, NULL, '0.00', '0.00', '0.00', '0.00', NULL, NULL, '0.00', NULL, NULL, '0.00', '0.00', 'rd_reg', 0, 1, 1, 0, NULL, 0, 'WD', 'Restday', 'MANUAL', 'RELEASED', 'Admin', 'Payroll Admin', 0, '2020-02-12 09:18:01', '2020-03-04 02:41:08', NULL, NULL),
(1109, '202000007', '2017-082', 'Flores, Juan Karlo Quisol', 1, 15, 4, '2020-02-02', NULL, NULL, '0.00', NULL, NULL, NULL, NULL, '0.00', '0.00', '0.00', '0.00', NULL, NULL, '0.00', NULL, NULL, '0.00', '0.00', 'rd_reg', 0, 1, 1, 0, NULL, 0, 'WD', 'Restday', 'MANUAL', 'RELEASED', 'Admin', 'Payroll Admin', 0, '2020-02-12 09:18:01', '2020-03-04 02:41:08', NULL, NULL),
(1110, '202000007', '2017-082', 'Flores, Juan Karlo Quisol', 1, 15, 4, '2020-02-03', NULL, NULL, '0.00', '2020-02-03 12:00:00', '2020-02-03 13:00:00', NULL, NULL, '1.00', '0.00', '0.00', '0.00', NULL, NULL, '0.00', NULL, NULL, '0.00', '0.00', 'reg', 0, 1, 1, 0, NULL, 0, 'WD', 'Absent', 'MANUAL', 'RELEASED', 'Admin', 'Payroll Admin', 0, '2020-02-12 09:18:01', '2020-03-04 02:41:08', NULL, NULL),
(1111, '202000007', '2017-082', 'Flores, Juan Karlo Quisol', 1, 15, 4, '2020-02-04', NULL, NULL, '0.00', '2020-02-04 12:00:00', '2020-02-04 13:00:00', NULL, NULL, '1.00', '0.00', '0.00', '0.00', NULL, NULL, '0.00', NULL, NULL, '0.00', '0.00', 'reg', 0, 1, 1, 0, NULL, 0, 'WD', 'Absent', 'MANUAL', 'RELEASED', 'Admin', 'Payroll Admin', 0, '2020-02-12 09:18:02', '2020-03-04 02:41:08', NULL, NULL),
(1112, '202000007', '2017-082', 'Flores, Juan Karlo Quisol', 1, 15, 4, '2020-02-05', NULL, NULL, '0.00', '2020-02-05 12:00:00', '2020-02-05 13:00:00', NULL, NULL, '1.00', '0.00', '0.00', '0.00', NULL, NULL, '0.00', NULL, NULL, '0.00', '0.00', 'reg', 0, 1, 1, 0, NULL, 0, 'WD', 'Absent', 'MANUAL', 'RELEASED', 'Admin', 'Payroll Admin', 0, '2020-02-12 09:18:02', '2020-03-04 02:41:08', NULL, NULL),
(1113, '202000009', '2017-082', 'Flores, Juan Karlo Quisol', 1, 15, 4, '2020-02-06', NULL, NULL, '0.00', '2020-02-06 12:00:00', '2020-02-06 13:00:00', NULL, NULL, '1.00', '0.00', '0.00', '0.00', NULL, NULL, '0.00', NULL, NULL, '0.00', '0.00', 'reg', 0, 1, 1, 0, NULL, 0, 'WD', 'Absent', 'MANUAL', 'RELEASED', 'Admin', 'Payroll Admin', 0, '2020-02-12 09:18:02', '2020-03-04 03:27:54', NULL, NULL),
(1114, '202000009', '2017-082', 'Flores, Juan Karlo Quisol', 1, 15, 4, '2020-02-07', NULL, NULL, '0.00', '2020-02-07 12:00:00', '2020-02-07 13:00:00', NULL, NULL, '1.00', '0.00', '0.00', '0.00', NULL, NULL, '0.00', NULL, NULL, '0.00', '0.00', 'reg', 0, 1, 1, 0, NULL, 0, 'WD', 'Absent', 'MANUAL', 'RELEASED', 'Admin', 'Payroll Admin', 0, '2020-02-12 09:18:02', '2020-03-04 03:27:54', NULL, NULL),
(1115, '202000009', '2017-082', 'Flores, Juan Karlo Quisol', 1, 15, 4, '2020-02-08', NULL, NULL, '0.00', NULL, NULL, NULL, NULL, '0.00', '0.00', '0.00', '0.00', NULL, NULL, '0.00', NULL, NULL, '0.00', '0.00', 'rd_reg', 0, 1, 1, 0, NULL, 0, 'WD', 'Restday', 'MANUAL', 'RELEASED', 'Admin', 'Payroll Admin', 0, '2020-02-12 09:18:02', '2020-03-04 03:27:54', NULL, NULL),
(1116, '202000009', '2017-082', 'Flores, Juan Karlo Quisol', 1, 15, 4, '2020-02-09', NULL, NULL, '0.00', NULL, NULL, NULL, NULL, '0.00', '0.00', '0.00', '0.00', NULL, NULL, '0.00', NULL, NULL, '0.00', '0.00', 'rd_reg', 0, 1, 1, 0, NULL, 0, 'WD', 'Restday', 'MANUAL', 'RELEASED', 'CASTOR, GINA', 'Payroll Admin', 0, '2020-02-12 09:18:02', '2020-03-04 03:27:54', NULL, NULL),
(1117, '202000009', '2017-082', 'Flores, Juan Karlo Quisol', 1, 15, 4, '2020-02-10', NULL, NULL, '0.00', '2020-02-10 12:00:00', '2020-02-10 13:00:00', NULL, NULL, '1.00', '0.00', '0.00', '0.00', NULL, NULL, '0.00', NULL, NULL, '0.00', '0.00', 'reg', 0, 1, 1, 0, NULL, 0, 'WD', 'Absent', 'MANUAL', 'RELEASED', 'CASTOR, GINA', 'Payroll Admin', 0, '2020-02-12 09:18:02', '2020-03-04 03:27:54', NULL, NULL),
(1118, '202000009', '2017-082', 'Flores, Juan Karlo Quisol', 1, 15, 4, '2020-02-11', NULL, NULL, '0.00', '2020-02-11 12:00:00', '2020-02-11 13:00:00', NULL, NULL, '1.00', '0.00', '0.00', '0.00', NULL, NULL, '0.00', NULL, NULL, '0.00', '0.00', 'reg', 0, 1, 1, 0, NULL, 0, 'WD', 'Absent', 'MANUAL', 'RELEASED', 'Admin', 'Payroll Admin', 0, '2020-02-12 09:18:02', '2020-03-04 03:27:54', NULL, NULL),
(1119, '202000007', '2015-056', 'Inguito, Kimberly  Mae Gonzales', 1, 15, 12, '2020-02-01', NULL, NULL, '0.00', '2020-02-01 12:00:00', '2020-02-01 13:00:00', '2020-02-01 08:30:00', '2020-02-01 18:30:00', '1.00', '0.00', '0.00', '0.00', NULL, NULL, '0.00', NULL, NULL, '0.00', '0.00', 'reg', 0, 1, 1, 0, NULL, 0, 'WD', 'Absent', 'MANUAL', 'RELEASED', 'Admin', 'Payroll Admin', 0, '2020-02-12 09:18:02', '2020-03-04 02:41:08', NULL, NULL),
(1120, '202000007', '2015-056', 'Inguito, Kimberly  Mae Gonzales', 1, 15, 12, '2020-02-02', NULL, NULL, '0.00', NULL, NULL, NULL, NULL, '0.00', '0.00', '0.00', '0.00', NULL, NULL, '0.00', NULL, NULL, '0.00', '0.00', 'rd_reg', 0, 1, 1, 0, NULL, 0, 'WD', 'Restday', 'MANUAL', 'RELEASED', 'Admin', 'Payroll Admin', 0, '2020-02-12 09:18:02', '2020-03-04 02:41:08', NULL, NULL),
(1121, '202000007', '2015-056', 'Inguito, Kimberly  Mae Gonzales', 1, 15, 12, '2020-02-03', NULL, NULL, '0.00', NULL, NULL, NULL, NULL, '0.00', '0.00', '0.00', '0.00', NULL, NULL, '0.00', NULL, NULL, '0.00', '0.00', 'rd_reg', 0, 1, 1, 0, NULL, 0, 'WD', 'Restday', 'MANUAL', 'RELEASED', 'Admin', 'Payroll Admin', 0, '2020-02-12 09:18:02', '2020-03-04 02:41:08', NULL, NULL),
(1122, '202000007', '2015-056', 'Inguito, Kimberly  Mae Gonzales', 1, 15, 12, '2020-02-04', NULL, NULL, '0.00', '2020-02-04 12:00:00', '2020-02-04 13:00:00', '2020-02-04 08:30:00', '2020-02-04 18:30:00', '1.00', '0.00', '0.00', '0.00', NULL, NULL, '0.00', NULL, NULL, '0.00', '0.00', 'reg', 0, 1, 1, 0, NULL, 0, 'WD', 'Absent', 'MANUAL', 'RELEASED', 'Admin', 'Payroll Admin', 0, '2020-02-12 09:18:02', '2020-03-04 02:41:08', NULL, NULL),
(1123, '202000007', '2015-056', 'Inguito, Kimberly  Mae Gonzales', 1, 15, 12, '2020-02-05', NULL, NULL, '0.00', '2020-02-05 12:00:00', '2020-02-05 13:00:00', '2020-02-05 08:30:00', '2020-02-05 18:30:00', '1.00', '0.00', '0.00', '0.00', NULL, NULL, '0.00', NULL, NULL, '0.00', '0.00', 'reg', 0, 1, 1, 0, NULL, 0, 'WD', 'Absent', 'MANUAL', 'RELEASED', 'Admin', 'Payroll Admin', 0, '2020-02-12 09:18:02', '2020-03-04 02:41:08', NULL, NULL),
(1124, '202000009', '2015-056', 'Inguito, Kimberly  Mae Gonzales', 1, 15, 12, '2020-02-06', NULL, NULL, '0.00', '2020-02-06 12:00:00', '2020-02-06 13:00:00', '2020-02-06 08:30:00', '2020-02-06 18:30:00', '1.00', '0.00', '0.00', '0.00', NULL, NULL, '0.00', NULL, NULL, '0.00', '0.00', 'reg', 0, 1, 1, 0, NULL, 0, 'WD', 'Absent', 'MANUAL', 'RELEASED', 'Admin', 'Payroll Admin', 0, '2020-02-12 09:18:02', '2020-03-04 03:27:54', NULL, NULL),
(1125, '202000009', '2015-056', 'Inguito, Kimberly  Mae Gonzales', 1, 15, 12, '2020-02-07', NULL, NULL, '0.00', '2020-02-07 12:00:00', '2020-02-07 13:00:00', '2020-02-07 08:30:00', '2020-02-07 18:30:00', '1.00', '0.00', '0.00', '0.00', NULL, NULL, '0.00', NULL, NULL, '0.00', '0.00', 'reg', 0, 1, 1, 0, NULL, 0, 'WD', 'Absent', 'MANUAL', 'RELEASED', 'Admin', 'Payroll Admin', 0, '2020-02-12 09:18:02', '2020-03-04 03:27:54', NULL, NULL),
(1126, '202000009', '2015-056', 'Inguito, Kimberly  Mae Gonzales', 1, 15, 12, '2020-02-08', NULL, NULL, '0.00', '2020-02-08 12:00:00', '2020-02-08 13:00:00', '2020-02-08 08:30:00', '2020-02-08 18:30:00', '1.00', '0.00', '0.00', '0.00', NULL, NULL, '0.00', NULL, NULL, '0.00', '0.00', 'reg', 0, 1, 1, 0, NULL, 0, 'WD', 'Absent', 'MANUAL', 'RELEASED', 'Admin', 'Payroll Admin', 0, '2020-02-12 09:18:02', '2020-03-04 03:27:54', NULL, NULL),
(1127, '202000009', '2015-056', 'Inguito, Kimberly  Mae Gonzales', 1, 15, 12, '2020-02-09', NULL, NULL, '0.00', NULL, NULL, NULL, NULL, '0.00', '0.00', '0.00', '0.00', NULL, NULL, '0.00', NULL, NULL, '0.00', '0.00', 'rd_reg', 0, 1, 1, 0, NULL, 0, 'WD', 'Restday', 'MANUAL', 'RELEASED', 'CASTOR, GINA', 'Payroll Admin', 0, '2020-02-12 09:18:02', '2020-03-04 03:27:54', NULL, NULL),
(1128, '202000009', '2015-056', 'Inguito, Kimberly  Mae Gonzales', 1, 15, 12, '2020-02-10', NULL, NULL, '0.00', NULL, NULL, NULL, NULL, '0.00', '0.00', '0.00', '0.00', NULL, NULL, '0.00', NULL, NULL, '0.00', '0.00', 'rd_reg', 0, 1, 1, 0, NULL, 0, 'WD', 'Restday', 'MANUAL', 'RELEASED', 'CASTOR, GINA', 'Payroll Admin', 0, '2020-02-12 09:18:02', '2020-03-04 03:27:54', NULL, NULL),
(1129, '202000009', '2015-056', 'Inguito, Kimberly  Mae Gonzales', 1, 15, 12, '2020-02-11', NULL, NULL, '0.00', '2020-02-11 12:00:00', '2020-02-11 13:00:00', '2020-02-11 08:30:00', '2020-02-11 18:30:00', '1.00', '0.00', '0.00', '0.00', NULL, NULL, '0.00', NULL, NULL, '0.00', '0.00', 'reg', 0, 1, 1, 0, NULL, 0, 'WD', 'Absent', 'MANUAL', 'RELEASED', 'Admin', 'Payroll Admin', 0, '2020-02-12 09:18:02', '2020-03-04 03:27:54', NULL, NULL),
(1130, '202000007', '2011-209', 'Kempis, Mark Arthur Avelino', 1, 15, 10, '2020-02-01', NULL, NULL, '0.00', NULL, NULL, NULL, NULL, '0.00', '0.00', '0.00', '0.00', NULL, NULL, '0.00', NULL, NULL, '0.00', '0.00', 'rd_reg', 0, 1, 1, 0, NULL, 0, 'WD', 'Restday', 'MANUAL', 'RELEASED', 'Admin', 'Payroll Admin', 0, '2020-02-12 09:18:02', '2020-03-04 02:41:08', NULL, NULL),
(1131, '202000007', '2011-209', 'Kempis, Mark Arthur Avelino', 1, 15, 10, '2020-02-02', NULL, NULL, '0.00', NULL, NULL, NULL, NULL, '0.00', '0.00', '0.00', '0.00', NULL, NULL, '0.00', NULL, NULL, '0.00', '0.00', 'rd_reg', 0, 1, 1, 0, NULL, 0, 'WD', 'Restday', 'MANUAL', 'RELEASED', 'Admin', 'Payroll Admin', 0, '2020-02-12 09:18:02', '2020-03-04 02:41:08', NULL, NULL),
(1132, '202000007', '2011-209', 'Kempis, Mark Arthur Avelino', 1, 15, 10, '2020-02-03', NULL, NULL, '0.00', '2020-02-03 12:00:00', '2020-02-03 13:00:00', '2020-02-03 08:30:00', '2020-02-03 18:30:00', '1.00', '0.00', '0.00', '0.00', NULL, NULL, '0.00', NULL, NULL, '0.00', '0.00', 'reg', 0, 1, 1, 0, NULL, 0, 'WD', 'Absent', 'MANUAL', 'RELEASED', 'Admin', 'Payroll Admin', 0, '2020-02-12 09:18:03', '2020-03-04 02:41:08', NULL, NULL),
(1133, '202000007', '2011-209', 'Kempis, Mark Arthur Avelino', 1, 15, 10, '2020-02-04', NULL, NULL, '0.00', '2020-02-04 12:00:00', '2020-02-04 13:00:00', '2020-02-04 08:30:00', '2020-02-04 18:30:00', '1.00', '0.00', '0.00', '0.00', NULL, NULL, '0.00', NULL, NULL, '0.00', '0.00', 'reg', 0, 1, 1, 0, NULL, 0, 'WD', 'Absent', 'MANUAL', 'RELEASED', 'Admin', 'Payroll Admin', 0, '2020-02-12 09:18:03', '2020-03-04 02:41:08', NULL, NULL),
(1134, '202000007', '2011-209', 'Kempis, Mark Arthur Avelino', 1, 15, 10, '2020-02-05', NULL, NULL, '0.00', '2020-02-05 12:00:00', '2020-02-05 13:00:00', '2020-02-05 08:30:00', '2020-02-05 18:30:00', '1.00', '0.00', '0.00', '0.00', NULL, NULL, '0.00', NULL, NULL, '0.00', '0.00', 'reg', 0, 1, 1, 0, NULL, 0, 'WD', 'Absent', 'MANUAL', 'RELEASED', 'Admin', 'Payroll Admin', 0, '2020-02-12 09:18:03', '2020-03-04 02:41:08', NULL, NULL),
(1135, '202000009', '2011-209', 'Kempis, Mark Arthur Avelino', 1, 15, 10, '2020-02-06', NULL, NULL, '0.00', '2020-02-06 12:00:00', '2020-02-06 13:00:00', '2020-02-06 08:30:00', '2020-02-06 18:30:00', '1.00', '0.00', '0.00', '0.00', NULL, NULL, '0.00', NULL, NULL, '0.00', '0.00', 'reg', 0, 1, 1, 0, NULL, 0, 'WD', 'Absent', 'MANUAL', 'RELEASED', 'Admin', 'Payroll Admin', 0, '2020-02-12 09:18:03', '2020-03-04 03:27:54', NULL, NULL),
(1136, '202000009', '2011-209', 'Kempis, Mark Arthur Avelino', 1, 15, 10, '2020-02-07', NULL, NULL, '0.00', '2020-02-07 12:00:00', '2020-02-07 13:00:00', '2020-02-07 08:30:00', '2020-02-07 18:30:00', '1.00', '0.00', '0.00', '0.00', NULL, NULL, '0.00', NULL, NULL, '0.00', '0.00', 'reg', 0, 1, 1, 0, NULL, 0, 'WD', 'Absent', 'MANUAL', 'RELEASED', 'Admin', 'Payroll Admin', 0, '2020-02-12 09:18:03', '2020-03-04 03:27:54', NULL, NULL),
(1137, '202000009', '2011-209', 'Kempis, Mark Arthur Avelino', 1, 15, 10, '2020-02-08', NULL, NULL, '0.00', NULL, NULL, NULL, NULL, '0.00', '0.00', '0.00', '0.00', NULL, NULL, '0.00', NULL, NULL, '0.00', '0.00', 'rd_reg', 0, 1, 1, 0, NULL, 0, 'WD', 'Restday', 'MANUAL', 'RELEASED', 'Admin', 'Payroll Admin', 0, '2020-02-12 09:18:03', '2020-03-04 03:27:54', NULL, NULL),
(1138, '202000009', '2011-209', 'Kempis, Mark Arthur Avelino', 1, 15, 10, '2020-02-09', NULL, NULL, '0.00', NULL, NULL, NULL, NULL, '0.00', '0.00', '0.00', '0.00', NULL, NULL, '0.00', NULL, NULL, '0.00', '0.00', 'rd_reg', 0, 1, 1, 0, NULL, 0, 'WD', 'Restday', 'MANUAL', 'RELEASED', 'CASTOR, GINA', 'Payroll Admin', 0, '2020-02-12 09:18:03', '2020-03-04 03:27:54', NULL, NULL),
(1139, '202000009', '2011-209', 'Kempis, Mark Arthur Avelino', 1, 15, 10, '2020-02-10', NULL, NULL, '0.00', '2020-02-10 12:00:00', '2020-02-10 13:00:00', '2020-02-10 08:30:00', '2020-02-10 18:30:00', '1.00', '0.00', '0.00', '0.00', NULL, NULL, '0.00', NULL, NULL, '0.00', '0.00', 'reg', 0, 1, 1, 0, NULL, 0, 'WD', 'Absent', 'MANUAL', 'RELEASED', 'CASTOR, GINA', 'Payroll Admin', 0, '2020-02-12 09:18:03', '2020-03-04 03:27:54', NULL, NULL),
(1140, '202000009', '2011-209', 'Kempis, Mark Arthur Avelino', 1, 15, 10, '2020-02-11', NULL, NULL, '0.00', '2020-02-11 12:00:00', '2020-02-11 13:00:00', '2020-02-11 08:30:00', '2020-02-11 18:30:00', '1.00', '0.00', '0.00', '0.00', NULL, NULL, '0.00', NULL, NULL, '0.00', '0.00', 'reg', 0, 1, 1, 0, NULL, 0, 'WD', 'Absent', 'MANUAL', 'RELEASED', 'Admin', 'Payroll Admin', 0, '2020-02-12 09:18:03', '2020-03-04 03:27:54', NULL, NULL),
(1141, NULL, '2011-227', 'Navarro, Mary Chris Ann Cruz', 1, 16, 10, '2020-02-01', NULL, NULL, '0.00', NULL, NULL, NULL, NULL, '0.00', '0.00', '0.00', '0.00', NULL, NULL, '0.00', NULL, NULL, '0.00', '0.00', 'rd_reg', 0, 1, 1, 0, NULL, 0, 'WD', 'Restday', 'MANUAL', 'INPROCESS', 'Admin', NULL, 0, '2020-02-12 09:18:03', '2020-02-12 09:18:03', NULL, NULL),
(1142, NULL, '2011-227', 'Navarro, Mary Chris Ann Cruz', 1, 16, 10, '2020-02-02', NULL, NULL, '0.00', NULL, NULL, NULL, NULL, '0.00', '0.00', '0.00', '0.00', NULL, NULL, '0.00', NULL, NULL, '0.00', '0.00', 'rd_reg', 0, 1, 1, 0, NULL, 0, 'WD', 'Restday', 'MANUAL', 'INPROCESS', 'Admin', NULL, 0, '2020-02-12 09:18:03', '2020-02-12 09:18:03', NULL, NULL),
(1143, NULL, '2011-227', 'Navarro, Mary Chris Ann Cruz', 1, 16, 10, '2020-02-03', NULL, NULL, '0.00', '2020-02-03 12:00:00', '2020-02-03 13:00:00', '2020-02-03 08:30:00', '2020-02-03 18:30:00', '1.00', '0.00', '0.00', '0.00', NULL, NULL, '0.00', NULL, NULL, '0.00', '0.00', 'reg', 0, 1, 1, 0, NULL, 0, 'WD', 'Absent', 'MANUAL', 'INPROCESS', 'Admin', NULL, 0, '2020-02-12 09:18:03', '2020-02-12 09:18:03', NULL, NULL),
(1144, NULL, '2011-227', 'Navarro, Mary Chris Ann Cruz', 1, 16, 10, '2020-02-04', NULL, NULL, '0.00', '2020-02-04 12:00:00', '2020-02-04 13:00:00', '2020-02-04 08:30:00', '2020-02-04 18:30:00', '1.00', '0.00', '0.00', '0.00', NULL, NULL, '0.00', NULL, NULL, '0.00', '0.00', 'reg', 0, 1, 1, 0, NULL, 0, 'WD', 'Absent', 'MANUAL', 'INPROCESS', 'Admin', NULL, 0, '2020-02-12 09:18:03', '2020-02-12 09:18:03', NULL, NULL),
(1145, NULL, '2011-227', 'Navarro, Mary Chris Ann Cruz', 1, 16, 10, '2020-02-05', NULL, NULL, '0.00', '2020-02-05 12:00:00', '2020-02-05 13:00:00', '2020-02-05 08:30:00', '2020-02-05 18:30:00', '1.00', '0.00', '0.00', '0.00', NULL, NULL, '0.00', NULL, NULL, '0.00', '0.00', 'reg', 0, 1, 1, 0, NULL, 0, 'WD', 'Absent', 'MANUAL', 'INPROCESS', 'Admin', NULL, 0, '2020-02-12 09:18:03', '2020-02-12 09:18:03', NULL, NULL),
(1146, NULL, '2011-227', 'Navarro, Mary Chris Ann Cruz', 1, 16, 10, '2020-02-06', NULL, NULL, '0.00', '2020-02-06 12:00:00', '2020-02-06 13:00:00', '2020-02-06 08:30:00', '2020-02-06 18:30:00', '1.00', '0.00', '0.00', '0.00', NULL, NULL, '0.00', NULL, NULL, '0.00', '0.00', 'reg', 0, 1, 1, 0, NULL, 0, 'WD', 'Absent', 'MANUAL', 'INPROCESS', 'Admin', NULL, 0, '2020-02-12 09:18:03', '2020-02-12 09:18:03', NULL, NULL),
(1147, NULL, '2011-227', 'Navarro, Mary Chris Ann Cruz', 1, 16, 10, '2020-02-07', NULL, NULL, '0.00', '2020-02-07 12:00:00', '2020-02-07 13:00:00', '2020-02-07 08:30:00', '2020-02-07 18:30:00', '1.00', '0.00', '0.00', '0.00', NULL, NULL, '0.00', NULL, NULL, '0.00', '0.00', 'reg', 0, 1, 1, 0, NULL, 0, 'WD', 'Absent', 'MANUAL', 'INPROCESS', 'Admin', NULL, 0, '2020-02-12 09:18:03', '2020-02-12 09:18:03', NULL, NULL),
(1148, NULL, '2011-227', 'Navarro, Mary Chris Ann Cruz', 1, 16, 10, '2020-02-08', NULL, NULL, '0.00', NULL, NULL, NULL, NULL, '0.00', '0.00', '0.00', '0.00', NULL, NULL, '0.00', NULL, NULL, '0.00', '0.00', 'rd_reg', 0, 1, 1, 0, NULL, 0, 'WD', 'Restday', 'MANUAL', 'INPROCESS', 'Admin', NULL, 0, '2020-02-12 09:18:03', '2020-02-12 09:18:03', NULL, NULL),
(1149, NULL, '2011-227', 'Navarro, Mary Chris Ann Cruz', 1, 16, 10, '2020-02-09', NULL, NULL, '0.00', NULL, NULL, NULL, NULL, '0.00', '0.00', '0.00', '0.00', NULL, NULL, '0.00', NULL, NULL, '0.00', '0.00', 'rd_reg', 0, 1, 1, 0, NULL, 0, 'WD', 'Restday', 'MANUAL', 'INPROCESS', 'CASTOR, GINA', NULL, 0, '2020-02-12 09:18:03', '2020-02-21 06:31:16', NULL, NULL),
(1150, NULL, '2011-227', 'Navarro, Mary Chris Ann Cruz', 1, 16, 10, '2020-02-10', NULL, NULL, '0.00', '2020-02-10 12:00:00', '2020-02-10 13:00:00', '2020-02-10 08:30:00', '2020-02-10 18:30:00', '1.00', '0.00', '0.00', '0.00', NULL, NULL, '0.00', NULL, NULL, '0.00', '0.00', 'reg', 0, 1, 1, 0, NULL, 0, 'WD', 'Absent', 'MANUAL', 'INPROCESS', 'CASTOR, GINA', NULL, 0, '2020-02-12 09:18:03', '2020-02-21 06:31:16', NULL, NULL),
(1151, NULL, '2011-227', 'Navarro, Mary Chris Ann Cruz', 1, 16, 10, '2020-02-11', NULL, NULL, '0.00', '2020-02-11 12:00:00', '2020-02-11 13:00:00', '2020-02-11 08:30:00', '2020-02-11 18:30:00', '1.00', '0.00', '0.00', '0.00', NULL, NULL, '0.00', NULL, NULL, '0.00', '0.00', 'reg', 0, 1, 1, 0, NULL, 0, 'WD', 'Absent', 'MANUAL', 'INPROCESS', 'Admin', NULL, 0, '2020-02-12 09:18:03', '2020-02-12 09:18:03', NULL, NULL),
(1152, NULL, '2016-037', 'PeÃ±a, Rea Kristine Nedia', 1, 14, 10, '2020-02-01', NULL, NULL, '0.00', NULL, NULL, NULL, NULL, '0.00', '0.00', '0.00', '0.00', NULL, NULL, '0.00', NULL, NULL, '0.00', '0.00', 'rd_reg', 0, 1, 1, 0, NULL, 0, 'WD', 'Restday', 'MANUAL', 'INPROCESS', 'Admin', NULL, 0, '2020-02-12 09:18:04', '2020-02-12 09:18:04', NULL, NULL),
(1153, NULL, '2016-037', 'PeÃ±a, Rea Kristine Nedia', 1, 14, 10, '2020-02-02', NULL, NULL, '0.00', NULL, NULL, NULL, NULL, '0.00', '0.00', '0.00', '0.00', NULL, NULL, '0.00', NULL, NULL, '0.00', '0.00', 'rd_reg', 0, 1, 1, 0, NULL, 0, 'WD', 'Restday', 'MANUAL', 'INPROCESS', 'Admin', NULL, 0, '2020-02-12 09:18:04', '2020-02-12 09:18:04', NULL, NULL),
(1154, NULL, '2016-037', 'PeÃ±a, Rea Kristine Nedia', 1, 14, 10, '2020-02-03', NULL, NULL, '0.00', '2020-02-03 12:00:00', '2020-02-03 13:00:00', '2020-02-03 08:30:00', '2020-02-03 18:30:00', '1.00', '0.00', '0.00', '0.00', NULL, NULL, '0.00', NULL, NULL, '0.00', '0.00', 'reg', 0, 1, 1, 0, NULL, 0, 'WD', 'Absent', 'MANUAL', 'INPROCESS', 'Admin', NULL, 0, '2020-02-12 09:18:04', '2020-02-12 09:18:04', NULL, NULL),
(1155, NULL, '2016-037', 'PeÃ±a, Rea Kristine Nedia', 1, 14, 10, '2020-02-04', NULL, NULL, '0.00', '2020-02-04 12:00:00', '2020-02-04 13:00:00', '2020-02-04 08:30:00', '2020-02-04 18:30:00', '1.00', '0.00', '0.00', '0.00', NULL, NULL, '0.00', NULL, NULL, '0.00', '0.00', 'reg', 0, 1, 1, 0, NULL, 0, 'WD', 'Absent', 'MANUAL', 'INPROCESS', 'Admin', NULL, 0, '2020-02-12 09:18:04', '2020-02-12 09:18:04', NULL, NULL),
(1156, NULL, '2016-037', 'PeÃ±a, Rea Kristine Nedia', 1, 14, 10, '2020-02-05', NULL, NULL, '0.00', '2020-02-05 12:00:00', '2020-02-05 13:00:00', '2020-02-05 08:30:00', '2020-02-05 18:30:00', '1.00', '0.00', '0.00', '0.00', NULL, NULL, '0.00', NULL, NULL, '0.00', '0.00', 'reg', 0, 1, 1, 0, NULL, 0, 'WD', 'Absent', 'MANUAL', 'INPROCESS', 'Admin', NULL, 0, '2020-02-12 09:18:04', '2020-02-12 09:18:04', NULL, NULL),
(1157, NULL, '2016-037', 'PeÃ±a, Rea Kristine Nedia', 1, 14, 10, '2020-02-06', NULL, NULL, '0.00', '2020-02-06 12:00:00', '2020-02-06 13:00:00', '2020-02-06 08:30:00', '2020-02-06 18:30:00', '1.00', '0.00', '0.00', '0.00', NULL, NULL, '0.00', NULL, NULL, '0.00', '0.00', 'reg', 0, 1, 1, 0, NULL, 0, 'WD', 'Absent', 'MANUAL', 'INPROCESS', 'Admin', NULL, 0, '2020-02-12 09:18:04', '2020-02-12 09:18:04', NULL, NULL),
(1158, NULL, '2016-037', 'PeÃ±a, Rea Kristine Nedia', 1, 14, 10, '2020-02-07', NULL, NULL, '0.00', '2020-02-07 12:00:00', '2020-02-07 13:00:00', '2020-02-07 08:30:00', '2020-02-07 18:30:00', '1.00', '0.00', '0.00', '0.00', NULL, NULL, '0.00', NULL, NULL, '0.00', '0.00', 'reg', 0, 1, 1, 0, NULL, 0, 'WD', 'Absent', 'MANUAL', 'INPROCESS', 'Admin', NULL, 0, '2020-02-12 09:18:04', '2020-02-12 09:18:04', NULL, NULL),
(1159, NULL, '2016-037', 'PeÃ±a, Rea Kristine Nedia', 1, 14, 10, '2020-02-08', NULL, NULL, '0.00', NULL, NULL, NULL, NULL, '0.00', '0.00', '0.00', '0.00', NULL, NULL, '0.00', NULL, NULL, '0.00', '0.00', 'rd_reg', 0, 1, 1, 0, NULL, 0, 'WD', 'Restday', 'MANUAL', 'INPROCESS', 'Admin', NULL, 0, '2020-02-12 09:18:04', '2020-02-12 09:18:04', NULL, NULL),
(1160, NULL, '2016-037', 'PeÃ±a, Rea Kristine Nedia', 1, 14, 10, '2020-02-09', NULL, NULL, '0.00', NULL, NULL, NULL, NULL, '0.00', '0.00', '0.00', '0.00', NULL, NULL, '0.00', NULL, NULL, '0.00', '0.00', 'rd_reg', 0, 1, 1, 0, NULL, 0, 'WD', 'Restday', 'MANUAL', 'INPROCESS', 'CASTOR, GINA', NULL, 0, '2020-02-12 09:18:04', '2020-02-21 06:31:16', NULL, NULL),
(1161, NULL, '2016-037', 'PeÃ±a, Rea Kristine Nedia', 1, 14, 10, '2020-02-10', NULL, NULL, '0.00', '2020-02-10 12:00:00', '2020-02-10 13:00:00', '2020-02-10 08:30:00', '2020-02-10 18:30:00', '1.00', '0.00', '0.00', '0.00', NULL, NULL, '0.00', NULL, NULL, '0.00', '0.00', 'reg', 0, 1, 1, 0, NULL, 0, 'WD', 'Absent', 'MANUAL', 'INPROCESS', 'CASTOR, GINA', NULL, 0, '2020-02-12 09:18:04', '2020-02-21 06:31:16', NULL, NULL),
(1162, NULL, '2016-037', 'PeÃ±a, Rea Kristine Nedia', 1, 14, 10, '2020-02-11', NULL, NULL, '0.00', '2020-02-11 12:00:00', '2020-02-11 13:00:00', '2020-02-11 08:30:00', '2020-02-11 18:30:00', '1.00', '0.00', '0.00', '0.00', NULL, NULL, '0.00', NULL, NULL, '0.00', '0.00', 'reg', 0, 1, 1, 0, NULL, 0, 'WD', 'Absent', 'MANUAL', 'INPROCESS', 'Admin', NULL, 0, '2020-02-12 09:18:04', '2020-02-12 09:18:04', NULL, NULL),
(1163, NULL, '2018-039', 'Silvestre, Mark Brenn Morla', 1, 13, 4, '2020-02-01', NULL, NULL, '0.00', NULL, NULL, NULL, NULL, '0.00', '0.00', '0.00', '0.00', NULL, NULL, '0.00', NULL, NULL, '0.00', '0.00', 'rd_reg', 0, 1, 1, 0, NULL, 0, 'WD', 'Restday', 'MANUAL', 'INPROCESS', 'Admin', NULL, 0, '2020-02-12 09:18:04', '2020-02-12 09:18:04', NULL, NULL),
(1164, NULL, '2018-039', 'Silvestre, Mark Brenn Morla', 1, 13, 4, '2020-02-02', NULL, NULL, '0.00', NULL, NULL, NULL, NULL, '0.00', '0.00', '0.00', '0.00', NULL, NULL, '0.00', NULL, NULL, '0.00', '0.00', 'rd_reg', 0, 1, 1, 0, NULL, 0, 'WD', 'Restday', 'MANUAL', 'INPROCESS', 'Admin', NULL, 0, '2020-02-12 09:18:04', '2020-02-12 09:18:04', NULL, NULL),
(1165, NULL, '2018-039', 'Silvestre, Mark Brenn Morla', 1, 13, 4, '2020-02-03', NULL, NULL, '0.00', '2020-02-03 12:00:00', '2020-02-03 13:00:00', NULL, NULL, '1.00', '0.00', '0.00', '0.00', NULL, NULL, '0.00', NULL, NULL, '0.00', '0.00', 'reg', 0, 1, 1, 0, NULL, 0, 'WD', 'Absent', 'MANUAL', 'INPROCESS', 'Admin', NULL, 0, '2020-02-12 09:18:04', '2020-02-12 09:18:04', NULL, NULL),
(1166, NULL, '2018-039', 'Silvestre, Mark Brenn Morla', 1, 13, 4, '2020-02-04', NULL, NULL, '0.00', '2020-02-04 12:00:00', '2020-02-04 13:00:00', NULL, NULL, '1.00', '0.00', '0.00', '0.00', NULL, NULL, '0.00', NULL, NULL, '0.00', '0.00', 'reg', 0, 1, 1, 0, NULL, 0, 'WD', 'Absent', 'MANUAL', 'INPROCESS', 'Admin', NULL, 0, '2020-02-12 09:18:04', '2020-02-12 09:18:04', NULL, NULL),
(1167, NULL, '2018-039', 'Silvestre, Mark Brenn Morla', 1, 13, 4, '2020-02-05', NULL, NULL, '0.00', '2020-02-05 12:00:00', '2020-02-05 13:00:00', NULL, NULL, '1.00', '0.00', '0.00', '0.00', NULL, NULL, '0.00', NULL, NULL, '0.00', '0.00', 'reg', 0, 1, 1, 0, NULL, 0, 'WD', 'Absent', 'MANUAL', 'INPROCESS', 'Admin', NULL, 0, '2020-02-12 09:18:04', '2020-02-12 09:18:04', NULL, NULL),
(1168, NULL, '2018-039', 'Silvestre, Mark Brenn Morla', 1, 13, 4, '2020-02-06', NULL, NULL, '0.00', '2020-02-06 12:00:00', '2020-02-06 13:00:00', NULL, NULL, '1.00', '0.00', '0.00', '0.00', NULL, NULL, '0.00', NULL, NULL, '0.00', '0.00', 'reg', 0, 1, 1, 0, NULL, 0, 'WD', 'Absent', 'MANUAL', 'INPROCESS', 'Admin', NULL, 0, '2020-02-12 09:18:04', '2020-02-12 09:18:04', NULL, NULL),
(1169, NULL, '2018-039', 'Silvestre, Mark Brenn Morla', 1, 13, 4, '2020-02-07', NULL, NULL, '0.00', '2020-02-07 12:00:00', '2020-02-07 13:00:00', NULL, NULL, '1.00', '0.00', '0.00', '0.00', NULL, NULL, '0.00', NULL, NULL, '0.00', '0.00', 'reg', 0, 1, 1, 0, NULL, 0, 'WD', 'Absent', 'MANUAL', 'INPROCESS', 'Admin', NULL, 0, '2020-02-12 09:18:04', '2020-02-12 09:18:04', NULL, NULL),
(1170, NULL, '2018-039', 'Silvestre, Mark Brenn Morla', 1, 13, 4, '2020-02-08', NULL, NULL, '0.00', NULL, NULL, NULL, NULL, '0.00', '0.00', '0.00', '0.00', NULL, NULL, '0.00', NULL, NULL, '0.00', '0.00', 'rd_reg', 0, 1, 1, 0, NULL, 0, 'WD', 'Restday', 'MANUAL', 'INPROCESS', 'Admin', NULL, 0, '2020-02-12 09:18:04', '2020-02-12 09:18:04', NULL, NULL),
(1171, NULL, '2018-039', 'Silvestre, Mark Brenn Morla', 1, 13, 4, '2020-02-09', NULL, NULL, '0.00', NULL, NULL, NULL, NULL, '0.00', '0.00', '0.00', '0.00', NULL, NULL, '0.00', NULL, NULL, '0.00', '0.00', 'rd_reg', 0, 1, 1, 0, NULL, 0, 'WD', 'Restday', 'MANUAL', 'INPROCESS', 'CASTOR, GINA', NULL, 0, '2020-02-12 09:18:04', '2020-02-21 06:31:16', NULL, NULL),
(1172, NULL, '2018-039', 'Silvestre, Mark Brenn Morla', 1, 13, 4, '2020-02-10', NULL, NULL, '0.00', '2020-02-10 12:00:00', '2020-02-10 13:00:00', NULL, NULL, '1.00', '0.00', '0.00', '0.00', NULL, NULL, '0.00', NULL, NULL, '0.00', '0.00', 'reg', 0, 1, 1, 0, NULL, 0, 'WD', 'Absent', 'MANUAL', 'INPROCESS', 'CASTOR, GINA', NULL, 0, '2020-02-12 09:18:05', '2020-02-21 06:31:16', NULL, NULL),
(1173, NULL, '2018-039', 'Silvestre, Mark Brenn Morla', 1, 13, 4, '2020-02-11', NULL, NULL, '0.00', '2020-02-11 12:00:00', '2020-02-11 13:00:00', NULL, NULL, '1.00', '0.00', '0.00', '0.00', NULL, NULL, '0.00', NULL, NULL, '0.00', '0.00', 'reg', 0, 1, 1, 0, NULL, 0, 'WD', 'Absent', 'MANUAL', 'INPROCESS', 'Admin', NULL, 0, '2020-02-12 09:18:05', '2020-02-12 09:18:05', NULL, NULL),
(1174, '202000007', '2015-040', 'Uson, Rachelle Hyacinth Cruz', 1, 14, 10, '2020-02-01', NULL, NULL, '0.00', NULL, NULL, NULL, NULL, '0.00', '0.00', '0.00', '0.00', NULL, NULL, '0.00', NULL, NULL, '0.00', '0.00', 'rd_reg', 0, 1, 1, 0, NULL, 0, 'WD', 'Restday', 'MANUAL', 'RELEASED', 'Admin', 'Payroll Admin', 0, '2020-02-12 09:18:05', '2020-03-04 02:41:08', NULL, NULL),
(1175, '202000007', '2015-040', 'Uson, Rachelle Hyacinth Cruz', 1, 14, 10, '2020-02-02', NULL, NULL, '0.00', NULL, NULL, NULL, NULL, '0.00', '0.00', '0.00', '0.00', NULL, NULL, '0.00', NULL, NULL, '0.00', '0.00', 'rd_reg', 0, 1, 1, 0, NULL, 0, 'WD', 'Restday', 'MANUAL', 'RELEASED', 'Admin', 'Payroll Admin', 0, '2020-02-12 09:18:05', '2020-03-04 02:41:08', NULL, NULL),
(1176, '202000007', '2015-040', 'Uson, Rachelle Hyacinth Cruz', 1, 14, 10, '2020-02-03', NULL, NULL, '0.00', '2020-02-03 12:00:00', '2020-02-03 13:00:00', '2020-02-03 08:30:00', '2020-02-03 18:30:00', '1.00', '0.00', '0.00', '0.00', NULL, NULL, '0.00', NULL, NULL, '0.00', '0.00', 'reg', 0, 1, 1, 0, NULL, 0, 'WD', 'Absent', 'MANUAL', 'RELEASED', 'Admin', 'Payroll Admin', 0, '2020-02-12 09:18:05', '2020-03-04 02:41:08', NULL, NULL),
(1177, '202000007', '2015-040', 'Uson, Rachelle Hyacinth Cruz', 1, 14, 10, '2020-02-04', NULL, NULL, '0.00', '2020-02-04 12:00:00', '2020-02-04 13:00:00', '2020-02-04 08:30:00', '2020-02-04 18:30:00', '1.00', '0.00', '0.00', '0.00', NULL, NULL, '0.00', NULL, NULL, '0.00', '0.00', 'reg', 0, 1, 1, 0, NULL, 0, 'WD', 'Absent', 'MANUAL', 'RELEASED', 'Admin', 'Payroll Admin', 0, '2020-02-12 09:18:05', '2020-03-04 02:41:08', NULL, NULL),
(1178, '202000007', '2015-040', 'Uson, Rachelle Hyacinth Cruz', 1, 14, 10, '2020-02-05', NULL, NULL, '0.00', '2020-02-05 12:00:00', '2020-02-05 13:00:00', '2020-02-05 08:30:00', '2020-02-05 18:30:00', '1.00', '0.00', '0.00', '0.00', NULL, NULL, '0.00', NULL, NULL, '0.00', '0.00', 'reg', 0, 1, 1, 0, NULL, 0, 'WD', 'Absent', 'MANUAL', 'RELEASED', 'Admin', 'Payroll Admin', 0, '2020-02-12 09:18:05', '2020-03-04 02:41:08', NULL, NULL),
(1179, '202000009', '2015-040', 'Uson, Rachelle Hyacinth Cruz', 1, 14, 10, '2020-02-06', NULL, NULL, '0.00', '2020-02-06 12:00:00', '2020-02-06 13:00:00', '2020-02-06 08:30:00', '2020-02-06 18:30:00', '1.00', '0.00', '0.00', '0.00', NULL, NULL, '0.00', NULL, NULL, '0.00', '0.00', 'reg', 0, 1, 1, 0, NULL, 0, 'WD', 'Absent', 'MANUAL', 'RELEASED', 'Admin', 'Payroll Admin', 0, '2020-02-12 09:18:05', '2020-03-04 03:27:54', NULL, NULL),
(1180, '202000009', '2015-040', 'Uson, Rachelle Hyacinth Cruz', 1, 14, 10, '2020-02-07', NULL, NULL, '0.00', '2020-02-07 12:00:00', '2020-02-07 13:00:00', '2020-02-07 08:30:00', '2020-02-07 18:30:00', '1.00', '0.00', '0.00', '0.00', NULL, NULL, '0.00', NULL, NULL, '0.00', '0.00', 'reg', 0, 1, 1, 0, NULL, 0, 'WD', 'Absent', 'MANUAL', 'RELEASED', 'Admin', 'Payroll Admin', 0, '2020-02-12 09:18:05', '2020-03-04 03:27:54', NULL, NULL),
(1181, '202000009', '2015-040', 'Uson, Rachelle Hyacinth Cruz', 1, 14, 10, '2020-02-08', NULL, NULL, '0.00', NULL, NULL, NULL, NULL, '0.00', '0.00', '0.00', '0.00', NULL, NULL, '0.00', NULL, NULL, '0.00', '0.00', 'rd_reg', 0, 1, 1, 0, NULL, 0, 'WD', 'Restday', 'MANUAL', 'RELEASED', 'Admin', 'Payroll Admin', 0, '2020-02-12 09:18:05', '2020-03-04 03:27:54', NULL, NULL),
(1182, '202000009', '2015-040', 'Uson, Rachelle Hyacinth Cruz', 1, 14, 10, '2020-02-09', NULL, NULL, '0.00', NULL, NULL, NULL, NULL, '0.00', '0.00', '0.00', '0.00', NULL, NULL, '0.00', NULL, NULL, '0.00', '0.00', 'rd_reg', 0, 1, 1, 0, NULL, 0, 'WD', 'Restday', 'MANUAL', 'RELEASED', 'CASTOR, GINA', 'Payroll Admin', 0, '2020-02-12 09:18:05', '2020-03-04 03:27:54', NULL, NULL),
(1183, '202000009', '2015-040', 'Uson, Rachelle Hyacinth Cruz', 1, 14, 10, '2020-02-10', NULL, NULL, '0.00', '2020-02-10 12:00:00', '2020-02-10 13:00:00', '2020-02-10 08:30:00', '2020-02-10 18:30:00', '1.00', '0.00', '0.00', '0.00', NULL, NULL, '0.00', NULL, NULL, '0.00', '0.00', 'reg', 0, 1, 1, 0, NULL, 0, 'WD', 'Absent', 'MANUAL', 'RELEASED', 'CASTOR, GINA', 'Payroll Admin', 0, '2020-02-12 09:18:05', '2020-03-04 03:27:54', NULL, NULL),
(1184, '202000009', '2015-040', 'Uson, Rachelle Hyacinth Cruz', 1, 14, 10, '2020-02-11', NULL, NULL, '0.00', '2020-02-11 12:00:00', '2020-02-11 13:00:00', '2020-02-11 08:30:00', '2020-02-11 18:30:00', '1.00', '0.00', '0.00', '0.00', NULL, NULL, '0.00', NULL, NULL, '0.00', '0.00', 'reg', 0, 1, 1, 0, NULL, 0, 'WD', 'Absent', 'MANUAL', 'RELEASED', 'Admin', 'Payroll Admin', 0, '2020-02-12 09:18:05', '2020-03-04 03:27:54', NULL, NULL),
(1185, NULL, '2018-085', 'ValeÃ±a Jr, Daniel  Vallar', 1, 13, 13, '2020-02-01', NULL, NULL, '0.00', '2020-02-01 12:00:00', '2020-02-01 13:00:00', NULL, NULL, '1.00', '0.00', '0.00', '0.00', NULL, NULL, '0.00', NULL, NULL, '0.00', '0.00', 'reg', 0, 1, 1, 0, NULL, 0, 'WD', 'Absent', 'MANUAL', 'INPROCESS', 'Admin', NULL, 0, '2020-02-12 09:18:06', '2020-02-12 09:18:06', NULL, NULL),
(1186, NULL, '2018-085', 'ValeÃ±a Jr, Daniel  Vallar', 1, 13, 13, '2020-02-02', NULL, NULL, '0.00', NULL, NULL, NULL, NULL, '0.00', '0.00', '0.00', '0.00', NULL, NULL, '0.00', NULL, NULL, '0.00', '0.00', 'rd_reg', 0, 1, 1, 0, NULL, 0, 'WD', 'Restday', 'MANUAL', 'INPROCESS', 'Admin', NULL, 0, '2020-02-12 09:18:06', '2020-02-12 09:18:06', NULL, NULL),
(1187, NULL, '2018-085', 'ValeÃ±a Jr, Daniel  Vallar', 1, 13, 13, '2020-02-03', NULL, NULL, '0.00', NULL, NULL, NULL, NULL, '0.00', '0.00', '0.00', '0.00', NULL, NULL, '0.00', NULL, NULL, '0.00', '0.00', 'rd_reg', 0, 1, 1, 0, NULL, 0, 'WD', 'Restday', 'MANUAL', 'INPROCESS', 'Admin', NULL, 0, '2020-02-12 09:18:06', '2020-02-12 09:18:06', NULL, NULL),
(1188, NULL, '2018-085', 'ValeÃ±a Jr, Daniel  Vallar', 1, 13, 13, '2020-02-04', NULL, NULL, '0.00', '2020-02-04 12:00:00', '2020-02-04 13:00:00', NULL, NULL, '1.00', '0.00', '0.00', '0.00', NULL, NULL, '0.00', NULL, NULL, '0.00', '0.00', 'reg', 0, 1, 1, 0, NULL, 0, 'WD', 'Absent', 'MANUAL', 'INPROCESS', 'Admin', NULL, 0, '2020-02-12 09:18:06', '2020-02-12 09:18:06', NULL, NULL),
(1189, NULL, '2018-085', 'ValeÃ±a Jr, Daniel  Vallar', 1, 13, 13, '2020-02-05', NULL, NULL, '0.00', '2020-02-05 12:00:00', '2020-02-05 13:00:00', NULL, NULL, '1.00', '0.00', '0.00', '0.00', NULL, NULL, '0.00', NULL, NULL, '0.00', '0.00', 'reg', 0, 1, 1, 0, NULL, 0, 'WD', 'Absent', 'MANUAL', 'INPROCESS', 'Admin', NULL, 0, '2020-02-12 09:18:06', '2020-02-12 09:18:06', NULL, NULL),
(1190, NULL, '2018-085', 'ValeÃ±a Jr, Daniel  Vallar', 1, 13, 13, '2020-02-06', NULL, NULL, '0.00', '2020-02-06 12:00:00', '2020-02-06 13:00:00', NULL, NULL, '1.00', '0.00', '0.00', '0.00', NULL, NULL, '0.00', NULL, NULL, '0.00', '0.00', 'reg', 0, 1, 1, 0, NULL, 0, 'WD', 'Absent', 'MANUAL', 'INPROCESS', 'Admin', NULL, 0, '2020-02-12 09:18:06', '2020-02-12 09:18:06', NULL, NULL),
(1191, NULL, '2018-085', 'ValeÃ±a Jr, Daniel  Vallar', 1, 13, 13, '2020-02-07', NULL, NULL, '0.00', '2020-02-07 12:00:00', '2020-02-07 13:00:00', NULL, NULL, '1.00', '0.00', '0.00', '0.00', NULL, NULL, '0.00', NULL, NULL, '0.00', '0.00', 'reg', 0, 1, 1, 0, NULL, 0, 'WD', 'Absent', 'MANUAL', 'INPROCESS', 'Admin', NULL, 0, '2020-02-12 09:18:06', '2020-02-12 09:18:06', NULL, NULL),
(1192, NULL, '2018-085', 'ValeÃ±a Jr, Daniel  Vallar', 1, 13, 13, '2020-02-08', NULL, NULL, '0.00', '2020-02-08 12:00:00', '2020-02-08 13:00:00', NULL, NULL, '1.00', '0.00', '0.00', '0.00', NULL, NULL, '0.00', NULL, NULL, '0.00', '0.00', 'reg', 0, 1, 1, 0, NULL, 0, 'WD', 'Absent', 'MANUAL', 'INPROCESS', 'Admin', NULL, 0, '2020-02-12 09:18:06', '2020-02-12 09:18:06', NULL, NULL),
(1193, NULL, '2018-085', 'ValeÃ±a Jr, Daniel  Vallar', 1, 13, 13, '2020-02-09', NULL, NULL, '0.00', NULL, NULL, NULL, NULL, '0.00', '0.00', '0.00', '0.00', NULL, NULL, '0.00', NULL, NULL, '0.00', '0.00', 'rd_reg', 0, 1, 1, 0, NULL, 0, 'WD', 'Restday', 'MANUAL', 'INPROCESS', 'CASTOR, GINA', NULL, 0, '2020-02-12 09:18:06', '2020-02-21 06:31:16', NULL, NULL),
(1194, NULL, '2018-085', 'ValeÃ±a Jr, Daniel  Vallar', 1, 13, 13, '2020-02-10', NULL, NULL, '0.00', NULL, NULL, NULL, NULL, '0.00', '0.00', '0.00', '0.00', NULL, NULL, '0.00', NULL, NULL, '0.00', '0.00', 'rd_reg', 0, 1, 1, 0, NULL, 0, 'WD', 'Restday', 'MANUAL', 'INPROCESS', 'CASTOR, GINA', NULL, 0, '2020-02-12 09:18:06', '2020-02-21 06:31:16', NULL, NULL),
(1195, NULL, '2018-085', 'ValeÃ±a Jr, Daniel  Vallar', 1, 13, 13, '2020-02-11', NULL, NULL, '0.00', '2020-02-11 12:00:00', '2020-02-11 13:00:00', NULL, NULL, '1.00', '0.00', '0.00', '0.00', NULL, NULL, '0.00', NULL, NULL, '0.00', '0.00', 'reg', 0, 1, 1, 0, NULL, 0, 'WD', 'Absent', 'MANUAL', 'INPROCESS', 'Admin', NULL, 0, '2020-02-12 09:18:06', '2020-02-12 09:18:06', NULL, NULL),
(1196, '202000007', '2013-341', 'Velasco, Teejay Viloria', 1, 15, 13, '2020-02-01', NULL, NULL, '0.00', '2020-02-01 12:00:00', '2020-02-01 13:00:00', NULL, NULL, '1.00', '0.00', '0.00', '0.00', NULL, NULL, '0.00', NULL, NULL, '0.00', '0.00', 'reg', 0, 1, 1, 0, NULL, 0, 'WD', 'Absent', 'MANUAL', 'RELEASED', 'Admin', 'Payroll Admin', 0, '2020-02-12 09:18:06', '2020-03-04 02:41:08', NULL, NULL),
(1197, '202000007', '2013-341', 'Velasco, Teejay Viloria', 1, 15, 13, '2020-02-02', NULL, NULL, '0.00', NULL, NULL, NULL, NULL, '0.00', '0.00', '0.00', '0.00', NULL, NULL, '0.00', NULL, NULL, '0.00', '0.00', 'rd_reg', 0, 1, 1, 0, NULL, 0, 'WD', 'Restday', 'MANUAL', 'RELEASED', 'Admin', 'Payroll Admin', 0, '2020-02-12 09:18:06', '2020-03-04 02:41:08', NULL, NULL),
(1198, '202000007', '2013-341', 'Velasco, Teejay Viloria', 1, 15, 13, '2020-02-03', NULL, NULL, '0.00', NULL, NULL, NULL, NULL, '0.00', '0.00', '0.00', '0.00', NULL, NULL, '0.00', NULL, NULL, '0.00', '0.00', 'rd_reg', 0, 1, 1, 0, NULL, 0, 'WD', 'Restday', 'MANUAL', 'RELEASED', 'Admin', 'Payroll Admin', 0, '2020-02-12 09:18:06', '2020-03-04 02:41:08', NULL, NULL),
(1199, '202000007', '2013-341', 'Velasco, Teejay Viloria', 1, 15, 13, '2020-02-04', NULL, NULL, '0.00', '2020-02-04 12:00:00', '2020-02-04 13:00:00', NULL, NULL, '1.00', '0.00', '0.00', '0.00', NULL, NULL, '0.00', NULL, NULL, '0.00', '0.00', 'reg', 0, 1, 1, 0, NULL, 0, 'WD', 'Absent', 'MANUAL', 'RELEASED', 'Admin', 'Payroll Admin', 0, '2020-02-12 09:18:06', '2020-03-04 02:41:08', NULL, NULL),
(1200, '202000007', '2013-341', 'Velasco, Teejay Viloria', 1, 15, 13, '2020-02-05', NULL, NULL, '0.00', '2020-02-05 12:00:00', '2020-02-05 13:00:00', NULL, NULL, '1.00', '0.00', '0.00', '0.00', NULL, NULL, '0.00', NULL, NULL, '0.00', '0.00', 'reg', 0, 1, 1, 0, NULL, 0, 'WD', 'Absent', 'MANUAL', 'RELEASED', 'Admin', 'Payroll Admin', 0, '2020-02-12 09:18:06', '2020-03-04 02:41:08', NULL, NULL),
(1201, '202000009', '2013-341', 'Velasco, Teejay Viloria', 1, 15, 13, '2020-02-06', NULL, NULL, '0.00', '2020-02-06 12:00:00', '2020-02-06 13:00:00', NULL, NULL, '1.00', '0.00', '0.00', '0.00', NULL, NULL, '0.00', NULL, NULL, '0.00', '0.00', 'reg', 0, 1, 1, 0, NULL, 0, 'WD', 'Absent', 'MANUAL', 'RELEASED', 'Admin', 'Payroll Admin', 0, '2020-02-12 09:18:07', '2020-03-04 03:27:54', NULL, NULL),
(1202, '202000009', '2013-341', 'Velasco, Teejay Viloria', 1, 15, 13, '2020-02-07', NULL, NULL, '0.00', '2020-02-07 12:00:00', '2020-02-07 13:00:00', NULL, NULL, '1.00', '0.00', '0.00', '0.00', NULL, NULL, '0.00', NULL, NULL, '0.00', '0.00', 'reg', 0, 1, 1, 0, NULL, 0, 'WD', 'Absent', 'MANUAL', 'RELEASED', 'Admin', 'Payroll Admin', 0, '2020-02-12 09:18:07', '2020-03-04 03:27:54', NULL, NULL),
(1203, '202000009', '2013-341', 'Velasco, Teejay Viloria', 1, 15, 13, '2020-02-08', NULL, NULL, '0.00', '2020-02-08 12:00:00', '2020-02-08 13:00:00', NULL, NULL, '1.00', '0.00', '0.00', '0.00', NULL, NULL, '0.00', NULL, NULL, '0.00', '0.00', 'reg', 0, 1, 1, 0, NULL, 0, 'WD', 'Absent', 'MANUAL', 'RELEASED', 'Admin', 'Payroll Admin', 0, '2020-02-12 09:18:07', '2020-03-04 03:27:54', NULL, NULL),
(1204, '202000009', '2013-341', 'Velasco, Teejay Viloria', 1, 15, 13, '2020-02-09', '2020-02-09 18:00:00', '2020-02-10 05:00:00', '11.00', '2020-02-09 12:00:00', '2020-02-09 13:00:00', '2020-02-09 00:00:00', '2020-02-09 00:00:00', '1.00', '0.00', '0.00', '0.00', '2020-02-09 18:00:00', '2020-02-10 05:00:00', '11.00', '2020-02-09 22:00:00', '2020-02-10 05:00:00', '7.00', '0.00', 'rd_reg', 0, 1, 1, 0, NULL, 0, 'WD', 'Restday', 'MANUAL', 'RELEASED', 'CASTOR, GINA', 'Payroll Admin', 0, '2020-02-12 09:18:07', '2020-03-04 03:27:54', NULL, NULL),
(1205, '202000009', '2013-341', 'Velasco, Teejay Viloria', 1, 15, 13, '2020-02-10', NULL, NULL, '0.00', NULL, NULL, NULL, NULL, '0.00', '0.00', '0.00', '0.00', NULL, NULL, '0.00', NULL, NULL, '0.00', '0.00', 'rd_reg', 0, 1, 1, 0, NULL, 0, 'WD', 'Restday', 'MANUAL', 'RELEASED', 'CASTOR, GINA', 'Payroll Admin', 0, '2020-02-12 09:18:07', '2020-03-04 03:27:54', NULL, NULL),
(1206, '202000009', '2013-341', 'Velasco, Teejay Viloria', 1, 15, 13, '2020-02-11', NULL, NULL, '0.00', '2020-02-11 12:00:00', '2020-02-11 13:00:00', NULL, NULL, '1.00', '0.00', '0.00', '0.00', NULL, NULL, '0.00', NULL, NULL, '0.00', '0.00', 'reg', 0, 1, 1, 0, NULL, 0, 'WD', 'Absent', 'MANUAL', 'RELEASED', 'Admin', 'Payroll Admin', 0, '2020-02-12 09:18:07', '2020-03-04 03:27:54', NULL, NULL),
(1207, NULL, '2006-054', 'Villagracia, Jacelyn Bayanay', 1, 16, 10, '2020-02-01', NULL, NULL, '0.00', NULL, NULL, NULL, NULL, '0.00', '0.00', '0.00', '0.00', NULL, NULL, '0.00', NULL, NULL, '0.00', '0.00', 'rd_reg', 0, 1, 1, 0, NULL, 0, 'WD', 'Restday', 'MANUAL', 'INPROCESS', 'Admin', NULL, 0, '2020-02-12 09:18:07', '2020-02-12 09:18:07', NULL, NULL),
(1208, NULL, '2006-054', 'Villagracia, Jacelyn Bayanay', 1, 16, 10, '2020-02-02', NULL, NULL, '0.00', NULL, NULL, NULL, NULL, '0.00', '0.00', '0.00', '0.00', NULL, NULL, '0.00', NULL, NULL, '0.00', '0.00', 'rd_reg', 0, 1, 1, 0, NULL, 0, 'WD', 'Restday', 'MANUAL', 'INPROCESS', 'Admin', NULL, 0, '2020-02-12 09:18:07', '2020-02-12 09:18:07', NULL, NULL),
(1209, NULL, '2006-054', 'Villagracia, Jacelyn Bayanay', 1, 16, 10, '2020-02-03', NULL, NULL, '0.00', '2020-02-03 12:00:00', '2020-02-03 13:00:00', '2020-02-03 08:30:00', '2020-02-03 18:30:00', '1.00', '0.00', '0.00', '0.00', NULL, NULL, '0.00', NULL, NULL, '0.00', '0.00', 'reg', 0, 1, 1, 0, NULL, 0, 'WD', 'Absent', 'MANUAL', 'INPROCESS', 'Admin', NULL, 0, '2020-02-12 09:18:07', '2020-02-12 09:18:07', NULL, NULL),
(1210, NULL, '2006-054', 'Villagracia, Jacelyn Bayanay', 1, 16, 10, '2020-02-04', NULL, NULL, '0.00', '2020-02-04 12:00:00', '2020-02-04 13:00:00', '2020-02-04 08:30:00', '2020-02-04 18:30:00', '1.00', '0.00', '0.00', '0.00', NULL, NULL, '0.00', NULL, NULL, '0.00', '0.00', 'reg', 0, 1, 1, 0, NULL, 0, 'WD', 'Absent', 'MANUAL', 'INPROCESS', 'Admin', NULL, 0, '2020-02-12 09:18:07', '2020-02-12 09:18:07', NULL, NULL),
(1211, NULL, '2006-054', 'Villagracia, Jacelyn Bayanay', 1, 16, 10, '2020-02-05', NULL, NULL, '0.00', '2020-02-05 12:00:00', '2020-02-05 13:00:00', '2020-02-05 08:30:00', '2020-02-05 18:30:00', '1.00', '0.00', '0.00', '0.00', NULL, NULL, '0.00', NULL, NULL, '0.00', '0.00', 'reg', 0, 1, 1, 0, NULL, 0, 'WD', 'Absent', 'MANUAL', 'INPROCESS', 'Admin', NULL, 0, '2020-02-12 09:18:07', '2020-02-12 09:18:07', NULL, NULL),
(1212, NULL, '2006-054', 'Villagracia, Jacelyn Bayanay', 1, 16, 10, '2020-02-06', NULL, NULL, '0.00', '2020-02-06 12:00:00', '2020-02-06 13:00:00', '2020-02-06 08:30:00', '2020-02-06 18:30:00', '1.00', '0.00', '0.00', '0.00', NULL, NULL, '0.00', NULL, NULL, '0.00', '0.00', 'reg', 0, 1, 1, 0, NULL, 0, 'WD', 'Absent', 'MANUAL', 'INPROCESS', 'Admin', NULL, 0, '2020-02-12 09:18:07', '2020-02-12 09:18:07', NULL, NULL),
(1213, NULL, '2006-054', 'Villagracia, Jacelyn Bayanay', 1, 16, 10, '2020-02-07', NULL, NULL, '0.00', '2020-02-07 12:00:00', '2020-02-07 13:00:00', '2020-02-07 08:30:00', '2020-02-07 18:30:00', '1.00', '0.00', '0.00', '0.00', NULL, NULL, '0.00', NULL, NULL, '0.00', '0.00', 'reg', 0, 1, 1, 0, NULL, 0, 'WD', 'Absent', 'MANUAL', 'INPROCESS', 'Admin', NULL, 0, '2020-02-12 09:18:07', '2020-02-12 09:18:07', NULL, NULL),
(1214, NULL, '2006-054', 'Villagracia, Jacelyn Bayanay', 1, 16, 10, '2020-02-08', NULL, NULL, '0.00', NULL, NULL, NULL, NULL, '0.00', '0.00', '0.00', '0.00', NULL, NULL, '0.00', NULL, NULL, '0.00', '0.00', 'rd_reg', 0, 1, 1, 0, NULL, 0, 'WD', 'Restday', 'MANUAL', 'INPROCESS', 'Admin', NULL, 0, '2020-02-12 09:18:07', '2020-02-12 09:18:07', NULL, NULL),
(1215, NULL, '2006-054', 'Villagracia, Jacelyn Bayanay', 1, 16, 10, '2020-02-09', NULL, NULL, '0.00', NULL, NULL, NULL, NULL, '0.00', '0.00', '0.00', '0.00', NULL, NULL, '0.00', NULL, NULL, '0.00', '0.00', 'rd_reg', 0, 1, 1, 0, NULL, 0, 'WD', 'Restday', 'MANUAL', 'INPROCESS', 'CASTOR, GINA', NULL, 0, '2020-02-12 09:18:07', '2020-02-21 06:31:16', NULL, NULL),
(1216, NULL, '2006-054', 'Villagracia, Jacelyn Bayanay', 1, 16, 10, '2020-02-10', NULL, NULL, '0.00', '2020-02-10 12:00:00', '2020-02-10 13:00:00', '2020-02-10 08:30:00', '2020-02-10 18:30:00', '1.00', '0.00', '0.00', '0.00', NULL, NULL, '0.00', NULL, NULL, '0.00', '0.00', 'reg', 0, 1, 1, 0, NULL, 0, 'WD', 'Absent', 'MANUAL', 'INPROCESS', 'CASTOR, GINA', NULL, 0, '2020-02-12 09:18:07', '2020-02-21 06:31:16', NULL, NULL),
(1217, NULL, '2006-054', 'Villagracia, Jacelyn Bayanay', 1, 16, 10, '2020-02-11', NULL, NULL, '0.00', '2020-02-11 12:00:00', '2020-02-11 13:00:00', '2020-02-11 08:30:00', '2020-02-11 18:30:00', '1.00', '0.00', '0.00', '0.00', NULL, NULL, '0.00', NULL, NULL, '0.00', '0.00', 'reg', 0, 1, 1, 0, NULL, 0, 'WD', 'Absent', 'MANUAL', 'INPROCESS', 'Admin', NULL, 0, '2020-02-12 09:18:08', '2020-02-12 09:18:08', NULL, NULL),
(1218, NULL, '2006-052', 'Villegas, Maria Teresa Lanozo', 1, 14, 10, '2020-02-01', NULL, NULL, '0.00', NULL, NULL, NULL, NULL, '0.00', '0.00', '0.00', '0.00', NULL, NULL, '0.00', NULL, NULL, '0.00', '0.00', 'rd_reg', 0, 1, 1, 0, NULL, 0, 'WD', 'Restday', 'MANUAL', 'INPROCESS', 'Admin', NULL, 0, '2020-02-12 09:18:08', '2020-02-12 09:18:08', NULL, NULL),
(1219, NULL, '2006-052', 'Villegas, Maria Teresa Lanozo', 1, 14, 10, '2020-02-02', NULL, NULL, '0.00', NULL, NULL, NULL, NULL, '0.00', '0.00', '0.00', '0.00', NULL, NULL, '0.00', NULL, NULL, '0.00', '0.00', 'rd_reg', 0, 1, 1, 0, NULL, 0, 'WD', 'Restday', 'MANUAL', 'INPROCESS', 'Admin', NULL, 0, '2020-02-12 09:18:08', '2020-02-12 09:18:08', NULL, NULL),
(1220, NULL, '2006-052', 'Villegas, Maria Teresa Lanozo', 1, 14, 10, '2020-02-03', NULL, NULL, '0.00', '2020-02-03 12:00:00', '2020-02-03 13:00:00', '2020-02-03 08:30:00', '2020-02-03 18:30:00', '1.00', '0.00', '0.00', '0.00', NULL, NULL, '0.00', NULL, NULL, '0.00', '0.00', 'reg', 0, 1, 1, 0, NULL, 0, 'WD', 'Absent', 'MANUAL', 'INPROCESS', 'Admin', NULL, 0, '2020-02-12 09:18:08', '2020-02-12 09:18:08', NULL, NULL),
(1221, NULL, '2006-052', 'Villegas, Maria Teresa Lanozo', 1, 14, 10, '2020-02-04', NULL, NULL, '0.00', '2020-02-04 12:00:00', '2020-02-04 13:00:00', '2020-02-04 08:30:00', '2020-02-04 18:30:00', '1.00', '0.00', '0.00', '0.00', NULL, NULL, '0.00', NULL, NULL, '0.00', '0.00', 'reg', 0, 1, 1, 0, NULL, 0, 'WD', 'Absent', 'MANUAL', 'INPROCESS', 'Admin', NULL, 0, '2020-02-12 09:18:08', '2020-02-12 09:18:08', NULL, NULL),
(1222, NULL, '2006-052', 'Villegas, Maria Teresa Lanozo', 1, 14, 10, '2020-02-05', NULL, NULL, '0.00', '2020-02-05 12:00:00', '2020-02-05 13:00:00', '2020-02-05 08:30:00', '2020-02-05 18:30:00', '1.00', '0.00', '0.00', '0.00', NULL, NULL, '0.00', NULL, NULL, '0.00', '0.00', 'reg', 0, 1, 1, 0, NULL, 0, 'WD', 'Absent', 'MANUAL', 'INPROCESS', 'Admin', NULL, 0, '2020-02-12 09:18:08', '2020-02-12 09:18:08', NULL, NULL);
INSERT INTO `date_and_time_records` (`id`, `register_number`, `company_id`, `employee_name`, `company_ind`, `group_ind`, `sched_template_id`, `sched_date`, `date_time_in`, `date_time_out`, `reg_total_hrs`, `lunch_out`, `lunch_in`, `schedule_shift_in`, `schedule_shift_out`, `lunch_durations_hrs`, `over_break_min`, `late_min`, `undertime_min`, `ot_time_in`, `ot_time_out`, `ot_total_hrs`, `night_diff_in`, `night_diff_out`, `night_diff_total_hrs`, `night_diff_total_ot_hrs`, `day_types`, `work_on_holiday`, `before_holiday`, `after_holiday`, `leaved`, `leave_types`, `leave_wpay`, `half_day`, `remarks`, `insystem`, `payroll_status`, `created_by`, `lu_by`, `deleted`, `created_at`, `updated_at`, `device_id_in`, `device_id_out`) VALUES
(1223, NULL, '2006-052', 'Villegas, Maria Teresa Lanozo', 1, 14, 10, '2020-02-06', NULL, NULL, '0.00', '2020-02-06 12:00:00', '2020-02-06 13:00:00', '2020-02-06 08:30:00', '2020-02-06 18:30:00', '1.00', '0.00', '0.00', '0.00', NULL, NULL, '0.00', NULL, NULL, '0.00', '0.00', 'reg', 0, 1, 1, 0, NULL, 0, 'WD', 'Absent', 'MANUAL', 'INPROCESS', 'Admin', NULL, 0, '2020-02-12 09:18:08', '2020-02-12 09:18:08', NULL, NULL),
(1224, NULL, '2006-052', 'Villegas, Maria Teresa Lanozo', 1, 14, 10, '2020-02-07', NULL, NULL, '0.00', '2020-02-07 12:00:00', '2020-02-07 13:00:00', '2020-02-07 08:30:00', '2020-02-07 18:30:00', '1.00', '0.00', '0.00', '0.00', NULL, NULL, '0.00', NULL, NULL, '0.00', '0.00', 'reg', 0, 1, 1, 0, NULL, 0, 'WD', 'Absent', 'MANUAL', 'INPROCESS', 'Admin', NULL, 0, '2020-02-12 09:18:08', '2020-02-12 09:18:08', NULL, NULL),
(1225, NULL, '2006-052', 'Villegas, Maria Teresa Lanozo', 1, 14, 10, '2020-02-08', NULL, NULL, '0.00', NULL, NULL, NULL, NULL, '0.00', '0.00', '0.00', '0.00', NULL, NULL, '0.00', NULL, NULL, '0.00', '0.00', 'rd_reg', 0, 1, 1, 0, NULL, 0, 'WD', 'Restday', 'MANUAL', 'INPROCESS', 'Admin', NULL, 0, '2020-02-12 09:18:08', '2020-02-12 09:18:08', NULL, NULL),
(1226, NULL, '2006-052', 'Villegas, Maria Teresa Lanozo', 1, 14, 10, '2020-02-09', NULL, NULL, '0.00', NULL, NULL, NULL, NULL, '0.00', '0.00', '0.00', '0.00', NULL, NULL, '0.00', NULL, NULL, '0.00', '0.00', 'rd_reg', 0, 1, 1, 0, NULL, 0, 'WD', 'Restday', 'MANUAL', 'INPROCESS', 'CASTOR, GINA', NULL, 0, '2020-02-12 09:18:08', '2020-02-21 06:31:17', NULL, NULL),
(1227, NULL, '2006-052', 'Villegas, Maria Teresa Lanozo', 1, 14, 10, '2020-02-10', NULL, NULL, '0.00', '2020-02-10 12:00:00', '2020-02-10 13:00:00', '2020-02-10 08:30:00', '2020-02-10 18:30:00', '1.00', '0.00', '0.00', '0.00', NULL, NULL, '0.00', NULL, NULL, '0.00', '0.00', 'reg', 0, 1, 1, 0, NULL, 0, 'WD', 'Absent', 'MANUAL', 'INPROCESS', 'CASTOR, GINA', NULL, 0, '2020-02-12 09:18:08', '2020-02-21 06:31:17', NULL, NULL),
(1228, NULL, '2006-052', 'Villegas, Maria Teresa Lanozo', 1, 14, 10, '2020-02-11', NULL, NULL, '0.00', '2020-02-11 12:00:00', '2020-02-11 13:00:00', '2020-02-11 08:30:00', '2020-02-11 18:30:00', '1.00', '0.00', '0.00', '0.00', NULL, NULL, '0.00', NULL, NULL, '0.00', '0.00', 'reg', 0, 1, 1, 0, NULL, 0, 'WD', 'Absent', 'MANUAL', 'INPROCESS', 'Admin', NULL, 0, '2020-02-12 09:18:08', '2020-02-12 09:18:08', NULL, NULL),
(1229, '202000009', '2017-083', 'Advincula, Kris Nino Marco Sawal', 1, 15, 4, '2020-02-15', NULL, NULL, '0.00', NULL, NULL, NULL, NULL, '0.00', '0.00', '0.00', '0.00', NULL, NULL, '0.00', NULL, NULL, '0.00', '0.00', 'rd_reg', 0, 1, 1, 0, NULL, 0, 'WD', 'Restday', 'MANUAL', 'RELEASED', 'CASTOR, GINA', 'Payroll Admin', 0, '2020-02-20 08:26:46', '2020-03-04 03:27:54', NULL, NULL),
(1230, NULL, '2000-017', 'Araquel, Joe marie Basada', 1, 14, 10, '2020-02-15', NULL, NULL, '0.00', NULL, NULL, NULL, NULL, '0.00', '0.00', '0.00', '0.00', NULL, NULL, '0.00', NULL, NULL, '0.00', '0.00', 'rd_reg', 0, 1, 1, 0, NULL, 0, 'WD', 'Restday', 'MANUAL', 'INPROCESS', 'CASTOR, GINA', NULL, 0, '2020-02-20 08:26:46', '2020-02-21 07:57:05', NULL, NULL),
(1231, '202000009', '2018-004', 'Argales, Rome Aubrey Cruz', 1, 15, 13, '2020-02-15', NULL, NULL, '0.00', '2020-02-15 12:00:00', '2020-02-15 13:00:00', NULL, NULL, '1.00', '0.00', '0.00', '0.00', NULL, NULL, '0.00', NULL, NULL, '0.00', '0.00', 'reg', 0, 1, 1, 0, NULL, 0, 'WD', 'Absent', 'MANUAL', 'RELEASED', 'CASTOR, GINA', 'Payroll Admin', 0, '2020-02-20 08:26:47', '2020-03-04 03:27:54', NULL, NULL),
(1232, '202000009', '2018-040', 'BIÃ‘AS, Kenneth Joshua Lope', 1, 15, 4, '2020-02-15', NULL, NULL, '0.00', NULL, NULL, NULL, NULL, '0.00', '0.00', '0.00', '0.00', NULL, NULL, '0.00', NULL, NULL, '0.00', '0.00', 'rd_reg', 0, 1, 1, 0, NULL, 0, 'WD', 'Restday', 'MANUAL', 'RELEASED', 'CASTOR, GINA', 'Payroll Admin', 0, '2020-02-20 08:26:47', '2020-03-04 03:27:54', NULL, NULL),
(1233, NULL, '2010-191', 'CASTOR, GINA ALMADEN', 1, 16, 10, '2020-02-15', NULL, NULL, '0.00', NULL, NULL, NULL, NULL, '0.00', '0.00', '0.00', '0.00', NULL, NULL, '0.00', NULL, NULL, '0.00', '0.00', 'rd_reg', 0, 1, 1, 0, NULL, 0, 'WD', 'Restday', 'MANUAL', 'INPROCESS', 'CASTOR, GINA', NULL, 0, '2020-02-20 08:26:47', '2020-02-21 07:57:05', NULL, NULL),
(1234, NULL, '2015-051', 'Dayandante, Jasmin Pasco', 1, 16, 10, '2020-02-15', '2020-02-15 10:00:00', '2020-02-15 15:00:00', '5.00', '2020-02-15 12:00:00', '2020-02-15 13:00:00', '2020-02-15 00:00:00', '2020-02-15 00:00:00', '1.00', '0.00', '0.00', '0.00', '2020-02-15 10:00:00', '2020-02-15 15:00:00', '5.00', '2020-02-15 22:00:00', '2020-02-15 15:00:00', '7.00', '0.00', 'rd_reg', 0, 1, 1, 0, NULL, 0, 'WD', 'Restday', 'MANUAL', 'INPROCESS', 'CASTOR, GINA', NULL, 0, '2020-02-20 08:26:47', '2020-02-21 07:57:05', NULL, NULL),
(1235, '202000009', '2017-082', 'Flores, Juan Karlo Quisol', 1, 15, 4, '2020-02-15', NULL, NULL, '0.00', NULL, NULL, NULL, NULL, '0.00', '0.00', '0.00', '0.00', NULL, NULL, '0.00', NULL, NULL, '0.00', '0.00', 'rd_reg', 0, 1, 1, 0, NULL, 0, 'WD', 'Restday', 'MANUAL', 'RELEASED', 'CASTOR, GINA', 'Payroll Admin', 0, '2020-02-20 08:26:47', '2020-03-04 03:27:54', NULL, NULL),
(1236, '202000009', '2015-056', 'Inguito, Kimberly  Mae Gonzales', 1, 15, 12, '2020-02-15', NULL, NULL, '0.00', '2020-02-15 12:00:00', '2020-02-15 13:00:00', '2020-02-15 08:30:00', '2020-02-15 18:30:00', '1.00', '0.00', '0.00', '0.00', NULL, NULL, '0.00', NULL, NULL, '0.00', '0.00', 'reg', 0, 1, 1, 0, NULL, 0, 'WD', 'Absent', 'MANUAL', 'RELEASED', 'CASTOR, GINA', 'Payroll Admin', 0, '2020-02-20 08:26:47', '2020-03-04 03:27:54', NULL, NULL),
(1237, '202000009', '2011-209', 'Kempis, Mark Arthur Avelino', 1, 15, 10, '2020-02-15', NULL, NULL, '0.00', NULL, NULL, NULL, NULL, '0.00', '0.00', '0.00', '0.00', NULL, NULL, '0.00', NULL, NULL, '0.00', '0.00', 'rd_reg', 0, 1, 1, 0, NULL, 0, 'WD', 'Restday', 'MANUAL', 'RELEASED', 'CASTOR, GINA', 'Payroll Admin', 0, '2020-02-20 08:26:47', '2020-03-04 03:27:54', NULL, NULL),
(1238, NULL, '2011-227', 'Navarro, Mary Chris Ann Cruz', 1, 16, 10, '2020-02-15', NULL, NULL, '0.00', NULL, NULL, NULL, NULL, '0.00', '0.00', '0.00', '0.00', NULL, NULL, '0.00', NULL, NULL, '0.00', '0.00', 'rd_reg', 0, 1, 1, 0, NULL, 0, 'WD', 'Restday', 'MANUAL', 'INPROCESS', 'CASTOR, GINA', NULL, 0, '2020-02-20 08:26:47', '2020-02-21 07:57:06', NULL, NULL),
(1239, NULL, '2016-037', 'PeÃ±a, Rea Kristine Nedia', 1, 14, 10, '2020-02-15', NULL, NULL, '0.00', NULL, NULL, NULL, NULL, '0.00', '0.00', '0.00', '0.00', NULL, NULL, '0.00', NULL, NULL, '0.00', '0.00', 'rd_reg', 0, 1, 1, 0, NULL, 0, 'WD', 'Restday', 'MANUAL', 'INPROCESS', 'CASTOR, GINA', NULL, 0, '2020-02-20 08:26:47', '2020-02-21 07:57:06', NULL, NULL),
(1240, NULL, '2018-039', 'Silvestre, Mark Brenn Morla', 1, 13, 4, '2020-02-15', NULL, NULL, '0.00', NULL, NULL, NULL, NULL, '0.00', '0.00', '0.00', '0.00', NULL, NULL, '0.00', NULL, NULL, '0.00', '0.00', 'rd_reg', 0, 1, 1, 0, NULL, 0, 'WD', 'Restday', 'MANUAL', 'INPROCESS', 'CASTOR, GINA', NULL, 0, '2020-02-20 08:26:47', '2020-02-21 07:57:06', NULL, NULL),
(1241, '202000009', '2015-040', 'Uson, Rachelle Hyacinth Cruz', 1, 14, 10, '2020-02-15', NULL, NULL, '0.00', NULL, NULL, NULL, NULL, '0.00', '0.00', '0.00', '0.00', NULL, NULL, '0.00', NULL, NULL, '0.00', '0.00', 'rd_reg', 0, 1, 1, 0, NULL, 0, 'WD', 'Restday', 'MANUAL', 'RELEASED', 'CASTOR, GINA', 'Payroll Admin', 0, '2020-02-20 08:26:47', '2020-03-04 03:27:54', NULL, NULL),
(1242, NULL, '2018-085', 'ValeÃ±a Jr, Daniel  Vallar', 1, 13, 13, '2020-02-15', NULL, NULL, '0.00', '2020-02-15 12:00:00', '2020-02-15 13:00:00', NULL, NULL, '1.00', '0.00', '0.00', '0.00', NULL, NULL, '0.00', NULL, NULL, '0.00', '0.00', 'reg', 0, 1, 1, 0, NULL, 0, 'WD', 'Absent', 'MANUAL', 'INPROCESS', 'CASTOR, GINA', NULL, 0, '2020-02-20 08:26:47', '2020-02-21 07:57:06', NULL, NULL),
(1243, '202000009', '2013-341', 'Velasco, Teejay Viloria', 1, 15, 13, '2020-02-15', '2020-02-15 08:00:00', '2020-02-15 18:30:00', '10.50', '2020-02-15 12:00:00', '2020-02-15 13:00:00', '2020-02-15 00:00:00', '2020-02-15 00:00:00', '1.00', '0.00', '480.00', '0.00', NULL, NULL, '0.00', NULL, NULL, '0.00', '0.00', 'reg', 0, 1, 1, 0, NULL, 0, 'WD', 'Present', 'MANUAL', 'RELEASED', 'CASTOR, GINA', 'Payroll Admin', 0, '2020-02-20 08:26:47', '2020-03-04 03:27:54', NULL, NULL),
(1244, NULL, '2006-054', 'Villagracia, Jacelyn Bayanay', 1, 16, 10, '2020-02-15', NULL, NULL, '0.00', NULL, NULL, NULL, NULL, '0.00', '0.00', '0.00', '0.00', NULL, NULL, '0.00', NULL, NULL, '0.00', '0.00', 'rd_reg', 0, 1, 1, 0, NULL, 0, 'WD', 'Restday', 'MANUAL', 'INPROCESS', 'CASTOR, GINA', NULL, 0, '2020-02-20 08:26:47', '2020-02-21 07:57:06', NULL, NULL),
(1245, NULL, '2006-052', 'Villegas, Maria Teresa Lanozo', 1, 14, 10, '2020-02-15', NULL, NULL, '0.00', NULL, NULL, NULL, NULL, '0.00', '0.00', '0.00', '0.00', NULL, NULL, '0.00', NULL, NULL, '0.00', '0.00', 'rd_reg', 0, 1, 1, 0, NULL, 0, 'WD', 'Restday', 'MANUAL', 'INPROCESS', 'CASTOR, GINA', NULL, 0, '2020-02-20 08:26:47', '2020-02-21 07:57:06', NULL, NULL),
(1246, '202000007', '2017-083', 'ADVINCULA, KRIS NINO MARCO', 1, 15, 4, '2020-01-31', NULL, NULL, '0.00', NULL, NULL, NULL, NULL, '1.00', '0.00', '0.00', '0.00', NULL, NULL, '0.00', NULL, NULL, '0.00', '0.00', 'reg', 0, 1, 1, 0, NULL, 0, 'WD', '', 'MANUAL', 'RELEASED', 'Payroll Admin', 'Payroll Admin', 0, '2020-03-04 01:57:55', '2020-03-04 02:41:08', NULL, NULL),
(1247, '202000007', '2018-004', 'ARGALES, ROME AUBREY', 1, 15, 13, '2020-01-31', NULL, NULL, '0.00', NULL, NULL, NULL, NULL, '1.00', '0.00', '0.00', '0.00', NULL, NULL, '0.00', NULL, NULL, '0.00', '0.00', 'reg', 0, 1, 1, 0, NULL, 0, 'WD', '', 'MANUAL', 'RELEASED', 'Payroll Admin', 'Payroll Admin', 0, '2020-03-04 02:40:24', '2020-03-04 02:41:08', NULL, NULL),
(1248, '202000007', '2018-040', 'BIÑAS, KENNETH JOSHUA', 1, 15, 4, '2020-01-31', NULL, NULL, '0.00', NULL, NULL, NULL, NULL, '1.00', '0.00', '0.00', '0.00', NULL, NULL, '0.00', NULL, NULL, '0.00', '0.00', 'reg', 0, 1, 1, 0, NULL, 0, 'WD', '', 'MANUAL', 'RELEASED', 'Payroll Admin', 'Payroll Admin', 0, '2020-03-04 02:40:25', '2020-03-04 02:41:08', NULL, NULL),
(1249, '202000007', '2017-082', 'FLORES, JUAN KARLO', 1, 15, 4, '2020-01-31', NULL, NULL, '0.00', NULL, NULL, NULL, NULL, '1.00', '0.00', '0.00', '0.00', NULL, NULL, '0.00', NULL, NULL, '0.00', '0.00', 'reg', 0, 1, 1, 0, NULL, 0, 'WD', '', 'MANUAL', 'RELEASED', 'Payroll Admin', 'Payroll Admin', 0, '2020-03-04 02:40:25', '2020-03-04 02:41:08', NULL, NULL),
(1250, '202000007', '2015-056', 'INGUITO, KIMBERLY  MAE', 1, 15, 12, '2020-01-31', NULL, NULL, '0.00', NULL, NULL, '2020-01-31 08:30:00', '2020-01-31 18:30:00', '1.00', '0.00', '0.00', '0.00', NULL, NULL, '0.00', NULL, NULL, '0.00', '0.00', 'reg', 0, 1, 1, 0, NULL, 0, 'WD', '', 'MANUAL', 'RELEASED', 'Payroll Admin', 'Payroll Admin', 0, '2020-03-04 02:40:25', '2020-03-04 02:41:08', NULL, NULL),
(1251, '202000007', '2011-209', 'KEMPIS, MARK ARTHUR', 1, 15, 10, '2020-01-31', NULL, NULL, '0.00', NULL, NULL, '2020-01-31 08:30:00', '2020-01-31 18:30:00', '1.00', '0.00', '0.00', '0.00', NULL, NULL, '0.00', NULL, NULL, '0.00', '0.00', 'reg', 0, 1, 1, 0, NULL, 0, 'WD', '', 'MANUAL', 'RELEASED', 'Payroll Admin', 'Payroll Admin', 0, '2020-03-04 02:40:26', '2020-03-04 02:41:08', NULL, NULL),
(1252, '202000007', '2015-040', 'USON, RACHELLE HYACINTH', 1, 15, 10, '2020-01-31', NULL, NULL, '0.00', NULL, NULL, '2020-01-31 08:30:00', '2020-01-31 18:30:00', '1.00', '0.00', '0.00', '0.00', NULL, NULL, '0.00', NULL, NULL, '0.00', '0.00', 'reg', 0, 1, 1, 0, NULL, 0, 'WD', '', 'MANUAL', 'RELEASED', 'Payroll Admin', 'Payroll Admin', 0, '2020-03-04 02:40:26', '2020-03-04 02:41:08', NULL, NULL),
(1253, '202000007', '2013-341', 'VELASCO, TEEJAY', 1, 15, 13, '2020-01-31', NULL, NULL, '0.00', NULL, NULL, NULL, NULL, '1.00', '0.00', '0.00', '0.00', NULL, NULL, '0.00', NULL, NULL, '0.00', '0.00', 'reg', 0, 1, 1, 0, NULL, 0, 'WD', '', 'MANUAL', 'RELEASED', 'Payroll Admin', 'Payroll Admin', 0, '2020-03-04 02:40:27', '2020-03-04 02:41:08', NULL, NULL),
(1254, '202000009', '2017-083', 'ADVINCULA, KRIS NINO MARCO', 1, 15, 4, '2020-02-12', NULL, NULL, '0.00', NULL, NULL, NULL, NULL, '1.00', '0.00', '0.00', '0.00', NULL, NULL, '0.00', NULL, NULL, '0.00', '0.00', 'reg', 0, 1, 1, 0, NULL, 0, 'WD', '', 'MANUAL', 'RELEASED', 'Payroll Admin', 'Payroll Admin', 0, '2020-03-04 03:26:01', '2020-03-04 03:27:54', NULL, NULL),
(1255, '202000009', '2017-083', 'ADVINCULA, KRIS NINO MARCO', 1, 15, 4, '2020-02-13', NULL, NULL, '0.00', NULL, NULL, NULL, NULL, '1.00', '0.00', '0.00', '0.00', NULL, NULL, '0.00', NULL, NULL, '0.00', '0.00', 'reg', 0, 1, 1, 0, NULL, 0, 'WD', '', 'MANUAL', 'RELEASED', 'Payroll Admin', 'Payroll Admin', 0, '2020-03-04 03:26:01', '2020-03-04 03:27:54', NULL, NULL),
(1256, '202000009', '2017-083', 'ADVINCULA, KRIS NINO MARCO', 1, 15, 4, '2020-02-14', NULL, NULL, '0.00', NULL, NULL, NULL, NULL, '1.00', '0.00', '0.00', '0.00', NULL, NULL, '0.00', NULL, NULL, '0.00', '0.00', 'reg', 0, 1, 1, 0, NULL, 0, 'WD', '', 'MANUAL', 'RELEASED', 'Payroll Admin', 'Payroll Admin', 0, '2020-03-04 03:26:01', '2020-03-04 03:27:54', NULL, NULL),
(1257, '202000009', '2017-083', 'ADVINCULA, KRIS NINO MARCO', 1, 15, 4, '2020-02-16', NULL, NULL, '0.00', NULL, NULL, NULL, NULL, '1.00', '0.00', '0.00', '0.00', NULL, NULL, '0.00', NULL, NULL, '0.00', '0.00', 'rd_reg', 0, 1, 1, 0, NULL, 0, 'WD', '', 'MANUAL', 'RELEASED', 'Payroll Admin', 'Payroll Admin', 0, '2020-03-04 03:26:02', '2020-03-04 03:27:54', NULL, NULL),
(1258, '202000009', '2017-083', 'ADVINCULA, KRIS NINO MARCO', 1, 15, 4, '2020-02-17', NULL, NULL, '0.00', NULL, NULL, NULL, NULL, '1.00', '0.00', '0.00', '0.00', NULL, NULL, '0.00', NULL, NULL, '0.00', '0.00', 'reg', 0, 1, 1, 0, NULL, 0, 'WD', '', 'MANUAL', 'RELEASED', 'Payroll Admin', 'Payroll Admin', 0, '2020-03-04 03:26:02', '2020-03-04 03:27:54', NULL, NULL),
(1259, '202000009', '2017-083', 'ADVINCULA, KRIS NINO MARCO', 1, 15, 4, '2020-02-18', NULL, NULL, '0.00', NULL, NULL, NULL, NULL, '1.00', '0.00', '0.00', '0.00', NULL, NULL, '0.00', NULL, NULL, '0.00', '0.00', 'reg', 0, 1, 1, 0, NULL, 0, 'WD', '', 'MANUAL', 'RELEASED', 'Payroll Admin', 'Payroll Admin', 0, '2020-03-04 03:26:02', '2020-03-04 03:27:54', NULL, NULL),
(1260, '202000009', '2017-083', 'ADVINCULA, KRIS NINO MARCO', 1, 15, 4, '2020-02-19', NULL, NULL, '0.00', NULL, NULL, NULL, NULL, '1.00', '0.00', '0.00', '0.00', NULL, NULL, '0.00', NULL, NULL, '0.00', '0.00', 'reg', 0, 1, 1, 0, NULL, 0, 'WD', '', 'MANUAL', 'RELEASED', 'Payroll Admin', 'Payroll Admin', 0, '2020-03-04 03:26:02', '2020-03-04 03:27:54', NULL, NULL),
(1261, '202000009', '2017-083', 'ADVINCULA, KRIS NINO MARCO', 1, 15, 4, '2020-02-20', NULL, NULL, '0.00', NULL, NULL, NULL, NULL, '1.00', '0.00', '0.00', '0.00', NULL, NULL, '0.00', NULL, NULL, '0.00', '0.00', 'reg', 0, 1, 1, 0, NULL, 0, 'WD', '', 'MANUAL', 'RELEASED', 'Payroll Admin', 'Payroll Admin', 0, '2020-03-04 03:26:02', '2020-03-04 03:27:54', NULL, NULL),
(1262, '202000009', '2018-004', 'ARGALES, ROME AUBREY', 1, 15, 13, '2020-02-12', NULL, NULL, '0.00', NULL, NULL, NULL, NULL, '1.00', '0.00', '0.00', '0.00', NULL, NULL, '0.00', NULL, NULL, '0.00', '0.00', 'reg', 0, 1, 1, 0, NULL, 0, 'WD', '', 'MANUAL', 'RELEASED', 'Payroll Admin', 'Payroll Admin', 0, '2020-03-04 03:27:28', '2020-03-04 03:27:54', NULL, NULL),
(1263, '202000009', '2018-004', 'ARGALES, ROME AUBREY', 1, 15, 13, '2020-02-13', NULL, NULL, '0.00', NULL, NULL, NULL, NULL, '1.00', '0.00', '0.00', '0.00', NULL, NULL, '0.00', NULL, NULL, '0.00', '0.00', 'reg', 0, 1, 1, 0, NULL, 0, 'WD', '', 'MANUAL', 'RELEASED', 'Payroll Admin', 'Payroll Admin', 0, '2020-03-04 03:27:28', '2020-03-04 03:27:54', NULL, NULL),
(1264, '202000009', '2018-004', 'ARGALES, ROME AUBREY', 1, 15, 13, '2020-02-14', NULL, NULL, '0.00', NULL, NULL, NULL, NULL, '1.00', '0.00', '0.00', '0.00', NULL, NULL, '0.00', NULL, NULL, '0.00', '0.00', 'reg', 0, 1, 1, 0, NULL, 0, 'WD', '', 'MANUAL', 'RELEASED', 'Payroll Admin', 'Payroll Admin', 0, '2020-03-04 03:27:28', '2020-03-04 03:27:54', NULL, NULL),
(1265, '202000009', '2018-004', 'ARGALES, ROME AUBREY', 1, 15, 13, '2020-02-16', NULL, NULL, '0.00', NULL, NULL, NULL, NULL, '1.00', '0.00', '0.00', '0.00', NULL, NULL, '0.00', NULL, NULL, '0.00', '0.00', 'rd_reg', 0, 1, 1, 0, NULL, 0, 'WD', '', 'MANUAL', 'RELEASED', 'Payroll Admin', 'Payroll Admin', 0, '2020-03-04 03:27:28', '2020-03-04 03:27:54', NULL, NULL),
(1266, '202000009', '2018-004', 'ARGALES, ROME AUBREY', 1, 15, 13, '2020-02-17', NULL, NULL, '0.00', NULL, NULL, NULL, NULL, '1.00', '0.00', '0.00', '0.00', NULL, NULL, '0.00', NULL, NULL, '0.00', '0.00', 'rd_reg', 0, 1, 1, 0, NULL, 0, 'WD', '', 'MANUAL', 'RELEASED', 'Payroll Admin', 'Payroll Admin', 0, '2020-03-04 03:27:29', '2020-03-04 03:27:54', NULL, NULL),
(1267, '202000009', '2018-004', 'ARGALES, ROME AUBREY', 1, 15, 13, '2020-02-18', NULL, NULL, '0.00', NULL, NULL, NULL, NULL, '1.00', '0.00', '0.00', '0.00', NULL, NULL, '0.00', NULL, NULL, '0.00', '0.00', 'reg', 0, 1, 1, 0, NULL, 0, 'WD', '', 'MANUAL', 'RELEASED', 'Payroll Admin', 'Payroll Admin', 0, '2020-03-04 03:27:29', '2020-03-04 03:27:54', NULL, NULL),
(1268, '202000009', '2018-004', 'ARGALES, ROME AUBREY', 1, 15, 13, '2020-02-19', NULL, NULL, '0.00', NULL, NULL, NULL, NULL, '1.00', '0.00', '0.00', '0.00', NULL, NULL, '0.00', NULL, NULL, '0.00', '0.00', 'reg', 0, 1, 1, 0, NULL, 0, 'WD', '', 'MANUAL', 'RELEASED', 'Payroll Admin', 'Payroll Admin', 0, '2020-03-04 03:27:29', '2020-03-04 03:27:54', NULL, NULL),
(1269, '202000009', '2018-004', 'ARGALES, ROME AUBREY', 1, 15, 13, '2020-02-20', NULL, NULL, '0.00', NULL, NULL, NULL, NULL, '1.00', '0.00', '0.00', '0.00', NULL, NULL, '0.00', NULL, NULL, '0.00', '0.00', 'reg', 0, 1, 1, 0, NULL, 0, 'WD', '', 'MANUAL', 'RELEASED', 'Payroll Admin', 'Payroll Admin', 0, '2020-03-04 03:27:29', '2020-03-04 03:27:54', NULL, NULL),
(1270, '202000009', '2018-040', 'BIÑAS, KENNETH JOSHUA', 1, 15, 4, '2020-02-12', NULL, NULL, '0.00', NULL, NULL, NULL, NULL, '1.00', '0.00', '0.00', '0.00', NULL, NULL, '0.00', NULL, NULL, '0.00', '0.00', 'reg', 0, 1, 1, 0, NULL, 0, 'WD', '', 'MANUAL', 'RELEASED', 'Payroll Admin', 'Payroll Admin', 0, '2020-03-04 03:27:29', '2020-03-04 03:27:54', NULL, NULL),
(1271, '202000009', '2018-040', 'BIÑAS, KENNETH JOSHUA', 1, 15, 4, '2020-02-13', NULL, NULL, '0.00', NULL, NULL, NULL, NULL, '1.00', '0.00', '0.00', '0.00', NULL, NULL, '0.00', NULL, NULL, '0.00', '0.00', 'reg', 0, 1, 1, 0, NULL, 0, 'WD', '', 'MANUAL', 'RELEASED', 'Payroll Admin', 'Payroll Admin', 0, '2020-03-04 03:27:29', '2020-03-04 03:27:54', NULL, NULL),
(1272, '202000009', '2018-040', 'BIÑAS, KENNETH JOSHUA', 1, 15, 4, '2020-02-14', NULL, NULL, '0.00', NULL, NULL, NULL, NULL, '1.00', '0.00', '0.00', '0.00', NULL, NULL, '0.00', NULL, NULL, '0.00', '0.00', 'reg', 0, 1, 1, 0, NULL, 0, 'WD', '', 'MANUAL', 'RELEASED', 'Payroll Admin', 'Payroll Admin', 0, '2020-03-04 03:27:29', '2020-03-04 03:27:54', NULL, NULL),
(1273, '202000009', '2018-040', 'BIÑAS, KENNETH JOSHUA', 1, 15, 4, '2020-02-16', NULL, NULL, '0.00', NULL, NULL, NULL, NULL, '1.00', '0.00', '0.00', '0.00', NULL, NULL, '0.00', NULL, NULL, '0.00', '0.00', 'rd_reg', 0, 1, 1, 0, NULL, 0, 'WD', '', 'MANUAL', 'RELEASED', 'Payroll Admin', 'Payroll Admin', 0, '2020-03-04 03:27:29', '2020-03-04 03:27:54', NULL, NULL),
(1274, '202000009', '2018-040', 'BIÑAS, KENNETH JOSHUA', 1, 15, 4, '2020-02-17', NULL, NULL, '0.00', NULL, NULL, NULL, NULL, '1.00', '0.00', '0.00', '0.00', NULL, NULL, '0.00', NULL, NULL, '0.00', '0.00', 'reg', 0, 1, 1, 0, NULL, 0, 'WD', '', 'MANUAL', 'RELEASED', 'Payroll Admin', 'Payroll Admin', 0, '2020-03-04 03:27:30', '2020-03-04 03:27:54', NULL, NULL),
(1275, '202000009', '2018-040', 'BIÑAS, KENNETH JOSHUA', 1, 15, 4, '2020-02-18', NULL, NULL, '0.00', NULL, NULL, NULL, NULL, '1.00', '0.00', '0.00', '0.00', NULL, NULL, '0.00', NULL, NULL, '0.00', '0.00', 'reg', 0, 1, 1, 0, NULL, 0, 'WD', '', 'MANUAL', 'RELEASED', 'Payroll Admin', 'Payroll Admin', 0, '2020-03-04 03:27:30', '2020-03-04 03:27:54', NULL, NULL),
(1276, '202000009', '2018-040', 'BIÑAS, KENNETH JOSHUA', 1, 15, 4, '2020-02-19', NULL, NULL, '0.00', NULL, NULL, NULL, NULL, '1.00', '0.00', '0.00', '0.00', NULL, NULL, '0.00', NULL, NULL, '0.00', '0.00', 'reg', 0, 1, 1, 0, NULL, 0, 'WD', '', 'MANUAL', 'RELEASED', 'Payroll Admin', 'Payroll Admin', 0, '2020-03-04 03:27:30', '2020-03-04 03:27:54', NULL, NULL),
(1277, '202000009', '2018-040', 'BIÑAS, KENNETH JOSHUA', 1, 15, 4, '2020-02-20', NULL, NULL, '0.00', NULL, NULL, NULL, NULL, '1.00', '0.00', '0.00', '0.00', NULL, NULL, '0.00', NULL, NULL, '0.00', '0.00', 'reg', 0, 1, 1, 0, NULL, 0, 'WD', '', 'MANUAL', 'RELEASED', 'Payroll Admin', 'Payroll Admin', 0, '2020-03-04 03:27:30', '2020-03-04 03:27:54', NULL, NULL),
(1278, '202000009', '2017-082', 'FLORES, JUAN KARLO', 1, 15, 4, '2020-02-12', NULL, NULL, '0.00', NULL, NULL, NULL, NULL, '1.00', '0.00', '0.00', '0.00', NULL, NULL, '0.00', NULL, NULL, '0.00', '0.00', 'reg', 0, 1, 1, 0, NULL, 0, 'WD', '', 'MANUAL', 'RELEASED', 'Payroll Admin', 'Payroll Admin', 0, '2020-03-04 03:27:31', '2020-03-04 03:27:54', NULL, NULL),
(1279, '202000009', '2017-082', 'FLORES, JUAN KARLO', 1, 15, 4, '2020-02-13', NULL, NULL, '0.00', NULL, NULL, NULL, NULL, '1.00', '0.00', '0.00', '0.00', NULL, NULL, '0.00', NULL, NULL, '0.00', '0.00', 'reg', 0, 1, 1, 0, NULL, 0, 'WD', '', 'MANUAL', 'RELEASED', 'Payroll Admin', 'Payroll Admin', 0, '2020-03-04 03:27:31', '2020-03-04 03:27:54', NULL, NULL),
(1280, '202000009', '2017-082', 'FLORES, JUAN KARLO', 1, 15, 4, '2020-02-14', NULL, NULL, '0.00', NULL, NULL, NULL, NULL, '1.00', '0.00', '0.00', '0.00', NULL, NULL, '0.00', NULL, NULL, '0.00', '0.00', 'reg', 0, 1, 1, 0, NULL, 0, 'WD', '', 'MANUAL', 'RELEASED', 'Payroll Admin', 'Payroll Admin', 0, '2020-03-04 03:27:31', '2020-03-04 03:27:54', NULL, NULL),
(1281, '202000009', '2017-082', 'FLORES, JUAN KARLO', 1, 15, 4, '2020-02-16', NULL, NULL, '0.00', NULL, NULL, NULL, NULL, '1.00', '0.00', '0.00', '0.00', NULL, NULL, '0.00', NULL, NULL, '0.00', '0.00', 'rd_reg', 0, 1, 1, 0, NULL, 0, 'WD', '', 'MANUAL', 'RELEASED', 'Payroll Admin', 'Payroll Admin', 0, '2020-03-04 03:27:31', '2020-03-04 03:27:54', NULL, NULL),
(1282, '202000009', '2017-082', 'FLORES, JUAN KARLO', 1, 15, 4, '2020-02-17', NULL, NULL, '0.00', NULL, NULL, NULL, NULL, '1.00', '0.00', '0.00', '0.00', NULL, NULL, '0.00', NULL, NULL, '0.00', '0.00', 'reg', 0, 1, 1, 0, NULL, 0, 'WD', '', 'MANUAL', 'RELEASED', 'Payroll Admin', 'Payroll Admin', 0, '2020-03-04 03:27:31', '2020-03-04 03:27:54', NULL, NULL),
(1283, '202000009', '2017-082', 'FLORES, JUAN KARLO', 1, 15, 4, '2020-02-18', NULL, NULL, '0.00', NULL, NULL, NULL, NULL, '1.00', '0.00', '0.00', '0.00', NULL, NULL, '0.00', NULL, NULL, '0.00', '0.00', 'reg', 0, 1, 1, 0, NULL, 0, 'WD', '', 'MANUAL', 'RELEASED', 'Payroll Admin', 'Payroll Admin', 0, '2020-03-04 03:27:32', '2020-03-04 03:27:54', NULL, NULL),
(1284, '202000009', '2017-082', 'FLORES, JUAN KARLO', 1, 15, 4, '2020-02-19', NULL, NULL, '0.00', NULL, NULL, NULL, NULL, '1.00', '0.00', '0.00', '0.00', NULL, NULL, '0.00', NULL, NULL, '0.00', '0.00', 'reg', 0, 1, 1, 0, NULL, 0, 'WD', '', 'MANUAL', 'RELEASED', 'Payroll Admin', 'Payroll Admin', 0, '2020-03-04 03:27:32', '2020-03-04 03:27:54', NULL, NULL),
(1285, '202000009', '2017-082', 'FLORES, JUAN KARLO', 1, 15, 4, '2020-02-20', NULL, NULL, '0.00', NULL, NULL, NULL, NULL, '1.00', '0.00', '0.00', '0.00', NULL, NULL, '0.00', NULL, NULL, '0.00', '0.00', 'reg', 0, 1, 1, 0, NULL, 0, 'WD', '', 'MANUAL', 'RELEASED', 'Payroll Admin', 'Payroll Admin', 0, '2020-03-04 03:27:32', '2020-03-04 03:27:54', NULL, NULL),
(1286, '202000009', '2015-056', 'INGUITO, KIMBERLY  MAE', 1, 15, 12, '2020-02-12', NULL, NULL, '0.00', NULL, NULL, '2020-02-12 08:30:00', '2020-02-12 18:30:00', '1.00', '0.00', '0.00', '0.00', NULL, NULL, '0.00', NULL, NULL, '0.00', '0.00', 'reg', 0, 1, 1, 0, NULL, 0, 'WD', '', 'MANUAL', 'RELEASED', 'Payroll Admin', 'Payroll Admin', 0, '2020-03-04 03:27:33', '2020-03-04 03:27:54', NULL, NULL),
(1287, '202000009', '2015-056', 'INGUITO, KIMBERLY  MAE', 1, 15, 12, '2020-02-13', NULL, NULL, '0.00', NULL, NULL, '2020-02-13 08:30:00', '2020-02-13 18:30:00', '1.00', '0.00', '0.00', '0.00', NULL, NULL, '0.00', NULL, NULL, '0.00', '0.00', 'reg', 0, 1, 1, 0, NULL, 0, 'WD', '', 'MANUAL', 'RELEASED', 'Payroll Admin', 'Payroll Admin', 0, '2020-03-04 03:27:33', '2020-03-04 03:27:54', NULL, NULL),
(1288, '202000009', '2015-056', 'INGUITO, KIMBERLY  MAE', 1, 15, 12, '2020-02-14', NULL, NULL, '0.00', NULL, NULL, '2020-02-14 08:30:00', '2020-02-14 18:30:00', '1.00', '0.00', '0.00', '0.00', NULL, NULL, '0.00', NULL, NULL, '0.00', '0.00', 'reg', 0, 1, 1, 0, NULL, 0, 'WD', '', 'MANUAL', 'RELEASED', 'Payroll Admin', 'Payroll Admin', 0, '2020-03-04 03:27:33', '2020-03-04 03:27:54', NULL, NULL),
(1289, '202000009', '2015-056', 'INGUITO, KIMBERLY  MAE', 1, 15, 12, '2020-02-16', NULL, NULL, '0.00', NULL, NULL, NULL, NULL, '1.00', '0.00', '0.00', '0.00', NULL, NULL, '0.00', NULL, NULL, '0.00', '0.00', 'rd_reg', 0, 1, 1, 0, NULL, 0, 'WD', '', 'MANUAL', 'RELEASED', 'Payroll Admin', 'Payroll Admin', 0, '2020-03-04 03:27:33', '2020-03-04 03:27:54', NULL, NULL),
(1290, '202000009', '2015-056', 'INGUITO, KIMBERLY  MAE', 1, 15, 12, '2020-02-17', NULL, NULL, '0.00', NULL, NULL, NULL, NULL, '1.00', '0.00', '0.00', '0.00', NULL, NULL, '0.00', NULL, NULL, '0.00', '0.00', 'rd_reg', 0, 1, 1, 0, NULL, 0, 'WD', '', 'MANUAL', 'RELEASED', 'Payroll Admin', 'Payroll Admin', 0, '2020-03-04 03:27:33', '2020-03-04 03:27:54', NULL, NULL),
(1291, '202000009', '2015-056', 'INGUITO, KIMBERLY  MAE', 1, 15, 12, '2020-02-18', NULL, NULL, '0.00', NULL, NULL, '2020-02-18 08:30:00', '2020-02-18 18:30:00', '1.00', '0.00', '0.00', '0.00', NULL, NULL, '0.00', NULL, NULL, '0.00', '0.00', 'reg', 0, 1, 1, 0, NULL, 0, 'WD', '', 'MANUAL', 'RELEASED', 'Payroll Admin', 'Payroll Admin', 0, '2020-03-04 03:27:33', '2020-03-04 03:27:54', NULL, NULL),
(1292, '202000009', '2015-056', 'INGUITO, KIMBERLY  MAE', 1, 15, 12, '2020-02-19', NULL, NULL, '0.00', NULL, NULL, '2020-02-19 08:30:00', '2020-02-19 18:30:00', '1.00', '0.00', '0.00', '0.00', NULL, NULL, '0.00', NULL, NULL, '0.00', '0.00', 'reg', 0, 1, 1, 0, NULL, 0, 'WD', '', 'MANUAL', 'RELEASED', 'Payroll Admin', 'Payroll Admin', 0, '2020-03-04 03:27:33', '2020-03-04 03:27:54', NULL, NULL),
(1293, '202000009', '2015-056', 'INGUITO, KIMBERLY  MAE', 1, 15, 12, '2020-02-20', NULL, NULL, '0.00', NULL, NULL, '2020-02-20 08:30:00', '2020-02-20 18:30:00', '1.00', '0.00', '0.00', '0.00', NULL, NULL, '0.00', NULL, NULL, '0.00', '0.00', 'reg', 0, 1, 1, 0, NULL, 0, 'WD', '', 'MANUAL', 'RELEASED', 'Payroll Admin', 'Payroll Admin', 0, '2020-03-04 03:27:33', '2020-03-04 03:27:54', NULL, NULL),
(1294, '202000009', '2011-209', 'KEMPIS, MARK ARTHUR', 1, 15, 10, '2020-02-12', NULL, NULL, '0.00', NULL, NULL, '2020-02-12 08:30:00', '2020-02-12 18:30:00', '1.00', '0.00', '0.00', '0.00', NULL, NULL, '0.00', NULL, NULL, '0.00', '0.00', 'reg', 0, 1, 1, 0, NULL, 0, 'WD', '', 'MANUAL', 'RELEASED', 'Payroll Admin', 'Payroll Admin', 0, '2020-03-04 03:27:34', '2020-03-04 03:27:54', NULL, NULL),
(1295, '202000009', '2011-209', 'KEMPIS, MARK ARTHUR', 1, 15, 10, '2020-02-13', NULL, NULL, '0.00', NULL, NULL, '2020-02-13 08:30:00', '2020-02-13 18:30:00', '1.00', '0.00', '0.00', '0.00', NULL, NULL, '0.00', NULL, NULL, '0.00', '0.00', 'reg', 0, 1, 1, 0, NULL, 0, 'WD', '', 'MANUAL', 'RELEASED', 'Payroll Admin', 'Payroll Admin', 0, '2020-03-04 03:27:34', '2020-03-04 03:27:54', NULL, NULL),
(1296, '202000009', '2011-209', 'KEMPIS, MARK ARTHUR', 1, 15, 10, '2020-02-14', NULL, NULL, '0.00', NULL, NULL, '2020-02-14 08:30:00', '2020-02-14 18:30:00', '1.00', '0.00', '0.00', '0.00', NULL, NULL, '0.00', NULL, NULL, '0.00', '0.00', 'reg', 0, 1, 1, 0, NULL, 0, 'WD', '', 'MANUAL', 'RELEASED', 'Payroll Admin', 'Payroll Admin', 0, '2020-03-04 03:27:34', '2020-03-04 03:27:54', NULL, NULL),
(1297, '202000009', '2011-209', 'KEMPIS, MARK ARTHUR', 1, 15, 10, '2020-02-16', NULL, NULL, '0.00', NULL, NULL, NULL, NULL, '1.00', '0.00', '0.00', '0.00', NULL, NULL, '0.00', NULL, NULL, '0.00', '0.00', 'rd_reg', 0, 1, 1, 0, NULL, 0, 'WD', '', 'MANUAL', 'RELEASED', 'Payroll Admin', 'Payroll Admin', 0, '2020-03-04 03:27:34', '2020-03-04 03:27:54', NULL, NULL),
(1298, '202000009', '2011-209', 'KEMPIS, MARK ARTHUR', 1, 15, 10, '2020-02-17', NULL, NULL, '0.00', NULL, NULL, '2020-02-17 08:30:00', '2020-02-17 18:30:00', '1.00', '0.00', '0.00', '0.00', NULL, NULL, '0.00', NULL, NULL, '0.00', '0.00', 'reg', 0, 1, 1, 0, NULL, 0, 'WD', '', 'MANUAL', 'RELEASED', 'Payroll Admin', 'Payroll Admin', 0, '2020-03-04 03:27:34', '2020-03-04 03:27:54', NULL, NULL),
(1299, '202000009', '2011-209', 'KEMPIS, MARK ARTHUR', 1, 15, 10, '2020-02-18', NULL, NULL, '0.00', NULL, NULL, '2020-02-18 08:30:00', '2020-02-18 18:30:00', '1.00', '0.00', '0.00', '0.00', NULL, NULL, '0.00', NULL, NULL, '0.00', '0.00', 'reg', 0, 1, 1, 0, NULL, 0, 'WD', '', 'MANUAL', 'RELEASED', 'Payroll Admin', 'Payroll Admin', 0, '2020-03-04 03:27:34', '2020-03-04 03:27:54', NULL, NULL),
(1300, '202000009', '2011-209', 'KEMPIS, MARK ARTHUR', 1, 15, 10, '2020-02-19', NULL, NULL, '0.00', NULL, NULL, '2020-02-19 08:30:00', '2020-02-19 18:30:00', '1.00', '0.00', '0.00', '0.00', NULL, NULL, '0.00', NULL, NULL, '0.00', '0.00', 'reg', 0, 1, 1, 0, NULL, 0, 'WD', '', 'MANUAL', 'RELEASED', 'Payroll Admin', 'Payroll Admin', 0, '2020-03-04 03:27:34', '2020-03-04 03:27:54', NULL, NULL),
(1301, '202000009', '2011-209', 'KEMPIS, MARK ARTHUR', 1, 15, 10, '2020-02-20', NULL, NULL, '0.00', NULL, NULL, '2020-02-20 08:30:00', '2020-02-20 18:30:00', '1.00', '0.00', '0.00', '0.00', NULL, NULL, '0.00', NULL, NULL, '0.00', '0.00', 'reg', 0, 1, 1, 0, NULL, 0, 'WD', '', 'MANUAL', 'RELEASED', 'Payroll Admin', 'Payroll Admin', 0, '2020-03-04 03:27:34', '2020-03-04 03:27:54', NULL, NULL),
(1302, '202000009', '2015-040', 'USON, RACHELLE HYACINTH', 1, 15, 10, '2020-02-12', NULL, NULL, '0.00', NULL, NULL, '2020-02-12 08:30:00', '2020-02-12 18:30:00', '1.00', '0.00', '0.00', '0.00', NULL, NULL, '0.00', NULL, NULL, '0.00', '0.00', 'reg', 0, 1, 1, 0, NULL, 0, 'WD', '', 'MANUAL', 'RELEASED', 'Payroll Admin', 'Payroll Admin', 0, '2020-03-04 03:27:35', '2020-03-04 03:27:54', NULL, NULL),
(1303, '202000009', '2015-040', 'USON, RACHELLE HYACINTH', 1, 15, 10, '2020-02-13', NULL, NULL, '0.00', NULL, NULL, '2020-02-13 08:30:00', '2020-02-13 18:30:00', '1.00', '0.00', '0.00', '0.00', NULL, NULL, '0.00', NULL, NULL, '0.00', '0.00', 'reg', 0, 1, 1, 0, NULL, 0, 'WD', '', 'MANUAL', 'RELEASED', 'Payroll Admin', 'Payroll Admin', 0, '2020-03-04 03:27:35', '2020-03-04 03:27:54', NULL, NULL),
(1304, '202000009', '2015-040', 'USON, RACHELLE HYACINTH', 1, 15, 10, '2020-02-14', NULL, NULL, '0.00', NULL, NULL, '2020-02-14 08:30:00', '2020-02-14 18:30:00', '1.00', '0.00', '0.00', '0.00', NULL, NULL, '0.00', NULL, NULL, '0.00', '0.00', 'reg', 0, 1, 1, 0, NULL, 0, 'WD', '', 'MANUAL', 'RELEASED', 'Payroll Admin', 'Payroll Admin', 0, '2020-03-04 03:27:35', '2020-03-04 03:27:54', NULL, NULL),
(1305, '202000009', '2015-040', 'USON, RACHELLE HYACINTH', 1, 15, 10, '2020-02-16', NULL, NULL, '0.00', NULL, NULL, NULL, NULL, '1.00', '0.00', '0.00', '0.00', NULL, NULL, '0.00', NULL, NULL, '0.00', '0.00', 'rd_reg', 0, 1, 1, 0, NULL, 0, 'WD', '', 'MANUAL', 'RELEASED', 'Payroll Admin', 'Payroll Admin', 0, '2020-03-04 03:27:35', '2020-03-04 03:27:54', NULL, NULL),
(1306, '202000009', '2015-040', 'USON, RACHELLE HYACINTH', 1, 15, 10, '2020-02-17', NULL, NULL, '0.00', NULL, NULL, '2020-02-17 08:30:00', '2020-02-17 18:30:00', '1.00', '0.00', '0.00', '0.00', NULL, NULL, '0.00', NULL, NULL, '0.00', '0.00', 'reg', 0, 1, 1, 0, NULL, 0, 'WD', '', 'MANUAL', 'RELEASED', 'Payroll Admin', 'Payroll Admin', 0, '2020-03-04 03:27:36', '2020-03-04 03:27:54', NULL, NULL),
(1307, '202000009', '2015-040', 'USON, RACHELLE HYACINTH', 1, 15, 10, '2020-02-18', NULL, NULL, '0.00', NULL, NULL, '2020-02-18 08:30:00', '2020-02-18 18:30:00', '1.00', '0.00', '0.00', '0.00', NULL, NULL, '0.00', NULL, NULL, '0.00', '0.00', 'reg', 0, 1, 1, 0, NULL, 0, 'WD', '', 'MANUAL', 'RELEASED', 'Payroll Admin', 'Payroll Admin', 0, '2020-03-04 03:27:36', '2020-03-04 03:27:54', NULL, NULL),
(1308, '202000009', '2015-040', 'USON, RACHELLE HYACINTH', 1, 15, 10, '2020-02-19', NULL, NULL, '0.00', NULL, NULL, '2020-02-19 08:30:00', '2020-02-19 18:30:00', '1.00', '0.00', '0.00', '0.00', NULL, NULL, '0.00', NULL, NULL, '0.00', '0.00', 'reg', 0, 1, 1, 0, NULL, 0, 'WD', '', 'MANUAL', 'RELEASED', 'Payroll Admin', 'Payroll Admin', 0, '2020-03-04 03:27:36', '2020-03-04 03:27:54', NULL, NULL),
(1309, '202000009', '2015-040', 'USON, RACHELLE HYACINTH', 1, 15, 10, '2020-02-20', NULL, NULL, '0.00', NULL, NULL, '2020-02-20 08:30:00', '2020-02-20 18:30:00', '1.00', '0.00', '0.00', '0.00', NULL, NULL, '0.00', NULL, NULL, '0.00', '0.00', 'reg', 0, 1, 1, 0, NULL, 0, 'WD', '', 'MANUAL', 'RELEASED', 'Payroll Admin', 'Payroll Admin', 0, '2020-03-04 03:27:36', '2020-03-04 03:27:54', NULL, NULL),
(1310, '202000009', '2013-341', 'VELASCO, TEEJAY', 1, 15, 13, '2020-02-12', NULL, NULL, '0.00', NULL, NULL, NULL, NULL, '1.00', '0.00', '0.00', '0.00', NULL, NULL, '0.00', NULL, NULL, '0.00', '0.00', 'reg', 0, 1, 1, 0, NULL, 0, 'WD', '', 'MANUAL', 'RELEASED', 'Payroll Admin', 'Payroll Admin', 0, '2020-03-04 03:27:36', '2020-03-04 03:27:54', NULL, NULL),
(1311, '202000009', '2013-341', 'VELASCO, TEEJAY', 1, 15, 13, '2020-02-13', NULL, NULL, '0.00', NULL, NULL, NULL, NULL, '1.00', '0.00', '0.00', '0.00', NULL, NULL, '0.00', NULL, NULL, '0.00', '0.00', 'reg', 0, 1, 1, 0, NULL, 0, 'WD', '', 'MANUAL', 'RELEASED', 'Payroll Admin', 'Payroll Admin', 0, '2020-03-04 03:27:36', '2020-03-04 03:27:54', NULL, NULL),
(1312, '202000009', '2013-341', 'VELASCO, TEEJAY', 1, 15, 13, '2020-02-14', NULL, NULL, '0.00', NULL, NULL, NULL, NULL, '1.00', '0.00', '0.00', '0.00', NULL, NULL, '0.00', NULL, NULL, '0.00', '0.00', 'reg', 0, 1, 1, 0, NULL, 0, 'WD', '', 'MANUAL', 'RELEASED', 'Payroll Admin', 'Payroll Admin', 0, '2020-03-04 03:27:36', '2020-03-04 03:27:54', NULL, NULL),
(1313, '202000009', '2013-341', 'VELASCO, TEEJAY', 1, 15, 13, '2020-02-16', NULL, NULL, '0.00', NULL, NULL, NULL, NULL, '1.00', '0.00', '0.00', '0.00', NULL, NULL, '0.00', NULL, NULL, '0.00', '0.00', 'rd_reg', 0, 1, 1, 0, NULL, 0, 'WD', '', 'MANUAL', 'RELEASED', 'Payroll Admin', 'Payroll Admin', 0, '2020-03-04 03:27:37', '2020-03-04 03:27:54', NULL, NULL),
(1314, '202000009', '2013-341', 'VELASCO, TEEJAY', 1, 15, 13, '2020-02-17', NULL, NULL, '0.00', NULL, NULL, NULL, NULL, '1.00', '0.00', '0.00', '0.00', NULL, NULL, '0.00', NULL, NULL, '0.00', '0.00', 'rd_reg', 0, 1, 1, 0, NULL, 0, 'WD', '', 'MANUAL', 'RELEASED', 'Payroll Admin', 'Payroll Admin', 0, '2020-03-04 03:27:37', '2020-03-04 03:27:54', NULL, NULL),
(1315, '202000009', '2013-341', 'VELASCO, TEEJAY', 1, 15, 13, '2020-02-18', NULL, NULL, '0.00', NULL, NULL, NULL, NULL, '1.00', '0.00', '0.00', '0.00', NULL, NULL, '0.00', NULL, NULL, '0.00', '0.00', 'reg', 0, 1, 1, 0, NULL, 0, 'WD', '', 'MANUAL', 'RELEASED', 'Payroll Admin', 'Payroll Admin', 0, '2020-03-04 03:27:37', '2020-03-04 03:27:54', NULL, NULL),
(1316, '202000009', '2013-341', 'VELASCO, TEEJAY', 1, 15, 13, '2020-02-19', NULL, NULL, '0.00', NULL, NULL, NULL, NULL, '1.00', '0.00', '0.00', '0.00', NULL, NULL, '0.00', NULL, NULL, '0.00', '0.00', 'reg', 0, 1, 1, 0, NULL, 0, 'WD', '', 'MANUAL', 'RELEASED', 'Payroll Admin', 'Payroll Admin', 0, '2020-03-04 03:27:37', '2020-03-04 03:27:54', NULL, NULL),
(1317, '202000009', '2013-341', 'VELASCO, TEEJAY', 1, 15, 13, '2020-02-20', NULL, NULL, '0.00', NULL, NULL, NULL, NULL, '1.00', '0.00', '0.00', '0.00', NULL, NULL, '0.00', NULL, NULL, '0.00', '0.00', 'reg', 0, 1, 1, 0, NULL, 0, 'WD', '', 'MANUAL', 'RELEASED', 'Payroll Admin', 'Payroll Admin', 0, '2020-03-04 03:27:37', '2020-03-04 03:27:54', NULL, NULL),
(1318, NULL, '2017-083', 'Advincula, Kris Nino Marco Sawal', 1, 15, 4, '2020-03-08', NULL, NULL, '0.00', NULL, NULL, NULL, NULL, '0.00', '0.00', '0.00', '0.00', NULL, NULL, '0.00', NULL, NULL, '0.00', '0.00', 'rd_reg', 0, 1, 1, 0, NULL, 0, 'WD', 'Restday', 'MANUAL', 'INPROCESS', 'CASTOR, GINA', NULL, 0, '2020-03-12 01:43:58', '2020-03-18 02:00:57', NULL, NULL),
(1319, NULL, '2017-083', 'Advincula, Kris Nino Marco Sawal', 1, 15, 4, '2020-03-09', NULL, NULL, '0.00', '2020-03-09 12:00:00', '2020-03-09 13:00:00', NULL, NULL, '1.00', '0.00', '0.00', '0.00', NULL, NULL, '0.00', NULL, NULL, '0.00', '0.00', 'reg', 0, 1, 1, 0, NULL, 0, 'WD', 'Absent', 'MANUAL', 'INPROCESS', 'CASTOR, GINA', NULL, 0, '2020-03-12 01:43:58', '2020-03-18 05:25:06', NULL, NULL),
(1320, NULL, '2000-017', 'Araquel, Joe marie Basada', 1, 14, 10, '2020-03-08', NULL, NULL, '0.00', NULL, NULL, NULL, NULL, '0.00', '0.00', '0.00', '0.00', NULL, NULL, '0.00', NULL, NULL, '0.00', '0.00', 'rd_reg', 0, 1, 1, 0, NULL, 0, 'WD', 'Restday', 'MANUAL', 'INPROCESS', 'CASTOR, GINA', NULL, 0, '2020-03-12 01:43:58', '2020-03-18 02:00:57', NULL, NULL),
(1321, NULL, '2018-004', 'Argales, Rome Aubrey Cruz', 1, 15, 13, '2020-03-08', NULL, NULL, '0.00', NULL, NULL, NULL, NULL, '0.00', '0.00', '0.00', '0.00', NULL, NULL, '0.00', NULL, NULL, '0.00', '0.00', 'rd_reg', 0, 1, 1, 0, NULL, 0, 'WD', 'Restday', 'MANUAL', 'INPROCESS', 'CASTOR, GINA', NULL, 0, '2020-03-12 01:43:58', '2020-03-18 02:00:57', NULL, NULL),
(1322, NULL, '2018-004', 'Argales, Rome Aubrey Cruz', 1, 15, 13, '2020-03-09', NULL, NULL, '0.00', NULL, NULL, NULL, NULL, '0.00', '0.00', '0.00', '0.00', NULL, NULL, '0.00', NULL, NULL, '0.00', '0.00', 'rd_reg', 0, 1, 1, 0, NULL, 0, 'WD', 'Restday', 'MANUAL', 'INPROCESS', 'CASTOR, GINA', NULL, 0, '2020-03-12 01:43:58', '2020-03-18 05:25:06', NULL, NULL),
(1323, NULL, '2018-040', 'BIÃ‘AS, Kenneth Joshua Lope', 1, 15, 4, '2020-03-08', NULL, NULL, '0.00', NULL, NULL, NULL, NULL, '0.00', '0.00', '0.00', '0.00', NULL, NULL, '0.00', NULL, NULL, '0.00', '0.00', 'rd_reg', 0, 1, 1, 0, NULL, 0, 'WD', 'Restday', 'MANUAL', 'INPROCESS', 'CASTOR, GINA', NULL, 0, '2020-03-12 01:43:58', '2020-03-18 02:00:57', NULL, NULL),
(1324, NULL, '2018-040', 'BIÃ‘AS, Kenneth Joshua Lope', 1, 15, 4, '2020-03-09', NULL, NULL, '0.00', '2020-03-09 12:00:00', '2020-03-09 13:00:00', NULL, NULL, '1.00', '0.00', '0.00', '0.00', NULL, NULL, '0.00', NULL, NULL, '0.00', '0.00', 'reg', 0, 1, 1, 0, NULL, 0, 'WD', 'Absent', 'MANUAL', 'INPROCESS', 'CASTOR, GINA', NULL, 0, '2020-03-12 01:43:58', '2020-03-18 05:25:06', NULL, NULL),
(1325, NULL, '2010-191', 'CASTOR, GINA ALMADEN', 1, 16, 10, '2020-03-08', NULL, NULL, '0.00', NULL, NULL, NULL, NULL, '0.00', '0.00', '0.00', '0.00', NULL, NULL, '0.00', NULL, NULL, '0.00', '0.00', 'rd_reg', 0, 1, 1, 0, NULL, 0, 'WD', 'Restday', 'MANUAL', 'INPROCESS', 'CASTOR, GINA', NULL, 0, '2020-03-12 01:43:58', '2020-03-18 02:00:57', NULL, NULL),
(1326, NULL, '2010-191', 'CASTOR, GINA ALMADEN', 1, 16, 10, '2020-03-09', NULL, NULL, '0.00', '2020-03-09 12:00:00', '2020-03-09 13:00:00', '2020-03-09 08:30:00', '2020-03-09 18:30:00', '1.00', '0.00', '0.00', '0.00', NULL, NULL, '0.00', NULL, NULL, '0.00', '0.00', 'reg', 0, 1, 1, 0, NULL, 0, 'WD', 'Absent', 'MANUAL', 'INPROCESS', 'CASTOR, GINA', NULL, 0, '2020-03-12 01:43:58', '2020-03-18 05:25:07', NULL, NULL),
(1327, NULL, '2015-051', 'Dayandante, Jasmin Pasco', 1, 16, 10, '2020-03-08', NULL, NULL, '0.00', NULL, NULL, NULL, NULL, '0.00', '0.00', '0.00', '0.00', NULL, NULL, '0.00', NULL, NULL, '0.00', '0.00', 'rd_reg', 0, 1, 1, 0, NULL, 0, 'WD', 'Restday', 'MANUAL', 'INPROCESS', 'CASTOR, GINA', NULL, 0, '2020-03-12 01:43:58', '2020-03-18 02:00:57', NULL, NULL),
(1328, NULL, '2015-051', 'Dayandante, Jasmin Pasco', 1, 16, 10, '2020-03-09', NULL, NULL, '0.00', '2020-03-09 12:00:00', '2020-03-09 13:00:00', '2020-03-09 08:30:00', '2020-03-09 18:30:00', '1.00', '0.00', '0.00', '0.00', NULL, NULL, '0.00', NULL, NULL, '0.00', '0.00', 'reg', 0, 1, 1, 0, NULL, 0, 'WD', 'Absent', 'MANUAL', 'INPROCESS', 'CASTOR, GINA', NULL, 0, '2020-03-12 01:43:59', '2020-03-18 05:25:07', NULL, NULL),
(1329, NULL, '2017-082', 'Flores, Juan Karlo Quisol', 1, 15, 4, '2020-03-08', NULL, NULL, '0.00', NULL, NULL, NULL, NULL, '0.00', '0.00', '0.00', '0.00', NULL, NULL, '0.00', NULL, NULL, '0.00', '0.00', 'rd_reg', 0, 1, 1, 0, NULL, 0, 'WD', 'Restday', 'MANUAL', 'INPROCESS', 'CASTOR, GINA', NULL, 0, '2020-03-12 01:43:59', '2020-03-18 02:00:57', NULL, NULL),
(1330, NULL, '2017-082', 'Flores, Juan Karlo Quisol', 1, 15, 4, '2020-03-09', NULL, NULL, '0.00', '2020-03-09 12:00:00', '2020-03-09 13:00:00', NULL, NULL, '1.00', '0.00', '0.00', '0.00', NULL, NULL, '0.00', NULL, NULL, '0.00', '0.00', 'reg', 0, 1, 1, 0, NULL, 0, 'WD', 'Absent', 'MANUAL', 'INPROCESS', 'CASTOR, GINA', NULL, 0, '2020-03-12 01:43:59', '2020-03-18 05:25:07', NULL, NULL),
(1331, NULL, '2015-056', 'Inguito, Kimberly  Mae Gonzales', 1, 15, 12, '2020-03-08', NULL, NULL, '0.00', NULL, NULL, NULL, NULL, '0.00', '0.00', '0.00', '0.00', NULL, NULL, '0.00', NULL, NULL, '0.00', '0.00', 'rd_reg', 0, 1, 1, 0, NULL, 0, 'WD', 'Restday', 'MANUAL', 'INPROCESS', 'CASTOR, GINA', NULL, 0, '2020-03-12 01:43:59', '2020-03-18 02:00:57', NULL, NULL),
(1332, NULL, '2015-056', 'Inguito, Kimberly  Mae Gonzales', 1, 15, 12, '2020-03-09', NULL, NULL, '0.00', NULL, NULL, NULL, NULL, '0.00', '0.00', '0.00', '0.00', NULL, NULL, '0.00', NULL, NULL, '0.00', '0.00', 'rd_reg', 0, 1, 1, 0, NULL, 0, 'WD', 'Restday', 'MANUAL', 'INPROCESS', 'CASTOR, GINA', NULL, 0, '2020-03-12 01:43:59', '2020-03-18 05:25:07', NULL, NULL),
(1333, NULL, '2011-209', 'Kempis, Mark Arthur Avelino', 1, 15, 10, '2020-03-08', NULL, NULL, '0.00', NULL, NULL, NULL, NULL, '0.00', '0.00', '0.00', '0.00', NULL, NULL, '0.00', NULL, NULL, '0.00', '0.00', 'rd_reg', 0, 1, 1, 0, NULL, 0, 'WD', 'Restday', 'MANUAL', 'INPROCESS', 'CASTOR, GINA', NULL, 0, '2020-03-12 01:43:59', '2020-03-18 02:00:57', NULL, NULL),
(1334, NULL, '2011-209', 'Kempis, Mark Arthur Avelino', 1, 15, 10, '2020-03-09', NULL, NULL, '0.00', '2020-03-09 12:00:00', '2020-03-09 13:00:00', '2020-03-09 08:30:00', '2020-03-09 18:30:00', '1.00', '0.00', '0.00', '0.00', NULL, NULL, '0.00', NULL, NULL, '0.00', '0.00', 'reg', 0, 1, 1, 0, NULL, 0, 'WD', 'Absent', 'MANUAL', 'INPROCESS', 'CASTOR, GINA', NULL, 0, '2020-03-12 01:43:59', '2020-03-18 05:25:07', NULL, NULL),
(1335, NULL, '2011-227', 'Navarro, Mary Chris Ann Cruz', 1, 16, 10, '2020-03-08', NULL, NULL, '0.00', NULL, NULL, NULL, NULL, '0.00', '0.00', '0.00', '0.00', NULL, NULL, '0.00', NULL, NULL, '0.00', '0.00', 'rd_reg', 0, 1, 1, 0, NULL, 0, 'WD', 'Restday', 'MANUAL', 'INPROCESS', 'CASTOR, GINA', NULL, 0, '2020-03-12 01:43:59', '2020-03-18 02:00:58', NULL, NULL),
(1336, NULL, '2011-227', 'Navarro, Mary Chris Ann Cruz', 1, 16, 10, '2020-03-09', NULL, NULL, '0.00', '2020-03-09 12:00:00', '2020-03-09 13:00:00', '2020-03-09 08:30:00', '2020-03-09 18:30:00', '1.00', '0.00', '0.00', '0.00', NULL, NULL, '0.00', NULL, NULL, '0.00', '0.00', 'reg', 0, 1, 1, 0, NULL, 0, 'WD', 'Absent', 'MANUAL', 'INPROCESS', 'CASTOR, GINA', NULL, 0, '2020-03-12 01:43:59', '2020-03-18 05:25:07', NULL, NULL),
(1337, NULL, '2016-037', 'PeÃ±a, Rea Kristine Nedia', 1, 14, 10, '2020-03-08', NULL, NULL, '0.00', NULL, NULL, NULL, NULL, '0.00', '0.00', '0.00', '0.00', NULL, NULL, '0.00', NULL, NULL, '0.00', '0.00', 'rd_reg', 0, 1, 1, 0, NULL, 0, 'WD', 'Restday', 'MANUAL', 'INPROCESS', 'CASTOR, GINA', NULL, 0, '2020-03-12 01:43:59', '2020-03-18 02:00:58', NULL, NULL),
(1338, NULL, '2016-037', 'PeÃ±a, Rea Kristine Nedia', 1, 14, 10, '2020-03-09', NULL, NULL, '0.00', '2020-03-09 12:00:00', '2020-03-09 13:00:00', '2020-03-09 08:30:00', '2020-03-09 18:30:00', '1.00', '0.00', '0.00', '0.00', NULL, NULL, '0.00', NULL, NULL, '0.00', '0.00', 'reg', 0, 1, 1, 0, NULL, 0, 'WD', 'Absent', 'MANUAL', 'INPROCESS', 'CASTOR, GINA', NULL, 0, '2020-03-12 01:43:59', '2020-03-18 05:25:07', NULL, NULL),
(1339, NULL, '2018-039', 'Silvestre, Mark Brenn Morla', 1, 13, 4, '2020-03-08', NULL, NULL, '0.00', NULL, NULL, NULL, NULL, '0.00', '0.00', '0.00', '0.00', NULL, NULL, '0.00', NULL, NULL, '0.00', '0.00', 'rd_reg', 0, 1, 1, 0, NULL, 0, 'WD', 'Restday', 'MANUAL', 'INPROCESS', 'CASTOR, GINA', NULL, 0, '2020-03-12 01:43:59', '2020-03-18 02:00:58', NULL, NULL),
(1340, NULL, '2018-039', 'Silvestre, Mark Brenn Morla', 1, 13, 4, '2020-03-09', NULL, NULL, '0.00', '2020-03-09 12:00:00', '2020-03-09 13:00:00', NULL, NULL, '1.00', '0.00', '0.00', '0.00', NULL, NULL, '0.00', NULL, NULL, '0.00', '0.00', 'reg', 0, 1, 1, 0, NULL, 0, 'WD', 'Absent', 'MANUAL', 'INPROCESS', 'CASTOR, GINA', NULL, 0, '2020-03-12 01:43:59', '2020-03-18 05:25:07', NULL, NULL),
(1341, NULL, '2015-040', 'Uson, Rachelle Hyacinth Cruz', 1, 15, 10, '2020-03-08', NULL, NULL, '0.00', NULL, NULL, NULL, NULL, '0.00', '0.00', '0.00', '0.00', NULL, NULL, '0.00', NULL, NULL, '0.00', '0.00', 'rd_reg', 0, 1, 1, 0, NULL, 0, 'WD', 'Restday', 'MANUAL', 'INPROCESS', 'CASTOR, GINA', NULL, 0, '2020-03-12 01:43:59', '2020-03-18 02:00:58', NULL, NULL),
(1342, NULL, '2015-040', 'Uson, Rachelle Hyacinth Cruz', 1, 15, 10, '2020-03-09', NULL, NULL, '0.00', '2020-03-09 12:00:00', '2020-03-09 13:00:00', '2020-03-09 08:30:00', '2020-03-09 18:30:00', '1.00', '0.00', '0.00', '0.00', NULL, NULL, '0.00', NULL, NULL, '0.00', '0.00', 'reg', 0, 1, 1, 0, NULL, 0, 'WD', 'Absent', 'MANUAL', 'INPROCESS', 'CASTOR, GINA', NULL, 0, '2020-03-12 01:43:59', '2020-03-18 05:25:07', NULL, NULL),
(1343, NULL, '2018-085', 'ValeÃ±a Jr, Daniel  Vallar', 1, 13, 13, '2020-03-08', NULL, NULL, '0.00', NULL, NULL, NULL, NULL, '0.00', '0.00', '0.00', '0.00', NULL, NULL, '0.00', NULL, NULL, '0.00', '0.00', 'rd_reg', 0, 1, 1, 0, NULL, 0, 'WD', 'Restday', 'MANUAL', 'INPROCESS', 'CASTOR, GINA', NULL, 0, '2020-03-12 01:43:59', '2020-03-18 02:00:58', NULL, NULL),
(1344, NULL, '2018-085', 'ValeÃ±a Jr, Daniel  Vallar', 1, 13, 13, '2020-03-09', NULL, NULL, '0.00', NULL, NULL, NULL, NULL, '0.00', '0.00', '0.00', '0.00', NULL, NULL, '0.00', NULL, NULL, '0.00', '0.00', 'rd_reg', 0, 1, 1, 0, NULL, 0, 'WD', 'Restday', 'MANUAL', 'INPROCESS', 'CASTOR, GINA', NULL, 0, '2020-03-12 01:43:59', '2020-03-18 05:25:07', NULL, NULL),
(1345, NULL, '2013-341', 'Velasco, Teejay Viloria', 1, 15, 13, '2020-03-08', '2020-03-08 06:00:00', '2020-03-08 00:00:00', '0.00', '2020-03-08 12:00:00', '2020-03-08 13:00:00', '2020-03-08 00:00:00', '2020-03-08 00:00:00', '1.00', '0.00', '0.00', '0.00', NULL, NULL, '0.00', '2020-03-08 22:00:00', '2020-03-08 00:00:00', '22.00', '0.00', 'rd_reg', 0, 1, 1, 0, NULL, 0, 'WD', 'Restday', 'MANUAL', 'INPROCESS', 'CASTOR, GINA', NULL, 0, '2020-03-12 01:43:59', '2020-03-18 02:00:58', NULL, NULL),
(1346, NULL, '2013-341', 'Velasco, Teejay Viloria', 1, 15, 13, '2020-03-09', '2020-03-09 06:00:00', '2020-03-09 20:00:00', '14.00', '2020-03-09 12:00:00', '2020-03-09 13:00:00', '2020-03-09 00:00:00', '2020-03-09 00:00:00', '1.00', '0.00', '0.00', '0.00', NULL, NULL, '4.40', '2020-03-09 22:00:00', '2020-03-09 20:00:00', '2.00', '0.00', 'rd_reg', 0, 1, 1, 0, NULL, 0, 'WD', 'Restday', 'MANUAL', 'INPROCESS', 'CASTOR, GINA', NULL, 0, '2020-03-12 01:43:59', '2020-03-18 05:25:07', NULL, NULL),
(1347, NULL, '2006-054', 'Villagracia, Jacelyn Bayanay', 1, 16, 10, '2020-03-08', NULL, NULL, '0.00', NULL, NULL, NULL, NULL, '0.00', '0.00', '0.00', '0.00', NULL, NULL, '0.00', NULL, NULL, '0.00', '0.00', 'rd_reg', 0, 1, 1, 0, NULL, 0, 'WD', 'Restday', 'MANUAL', 'INPROCESS', 'CASTOR, GINA', NULL, 0, '2020-03-12 01:43:59', '2020-03-18 02:00:58', NULL, NULL),
(1348, NULL, '2006-054', 'Villagracia, Jacelyn Bayanay', 1, 16, 10, '2020-03-09', NULL, NULL, '0.00', '2020-03-09 12:00:00', '2020-03-09 13:00:00', '2020-03-09 08:30:00', '2020-03-09 18:30:00', '1.00', '0.00', '0.00', '0.00', NULL, NULL, '0.00', NULL, NULL, '0.00', '0.00', 'reg', 0, 1, 1, 0, NULL, 0, 'WD', 'Absent', 'MANUAL', 'INPROCESS', 'CASTOR, GINA', NULL, 0, '2020-03-12 01:43:59', '2020-03-18 05:25:07', NULL, NULL),
(1349, NULL, '2006-052', 'Villegas, Maria Teresa Lanozo', 1, 14, 10, '2020-03-08', NULL, NULL, '0.00', NULL, NULL, NULL, NULL, '0.00', '0.00', '0.00', '0.00', NULL, NULL, '0.00', NULL, NULL, '0.00', '0.00', 'rd_reg', 0, 1, 1, 0, NULL, 0, 'WD', 'Restday', 'MANUAL', 'INPROCESS', 'CASTOR, GINA', NULL, 0, '2020-03-12 01:44:00', '2020-03-18 02:00:58', NULL, NULL),
(1350, NULL, '2006-052', 'Villegas, Maria Teresa Lanozo', 1, 14, 10, '2020-03-09', NULL, NULL, '0.00', '2020-03-09 12:00:00', '2020-03-09 13:00:00', '2020-03-09 08:30:00', '2020-03-09 18:30:00', '1.00', '0.00', '0.00', '0.00', NULL, NULL, '0.00', NULL, NULL, '0.00', '0.00', 'reg', 0, 1, 1, 0, NULL, 0, 'WD', 'Absent', 'MANUAL', 'INPROCESS', 'CASTOR, GINA', NULL, 0, '2020-03-12 01:44:00', '2020-03-18 05:25:07', NULL, NULL),
(1351, NULL, '2017-083', 'Advincula, Kris Nino Marco Sawal', 1, 15, 4, '2020-03-10', NULL, NULL, '0.00', '2020-03-10 12:00:00', '2020-03-10 13:00:00', NULL, NULL, '1.00', '0.00', '0.00', '0.00', NULL, NULL, '0.00', NULL, NULL, '0.00', '0.00', 'reg', 0, 1, 1, 0, NULL, 0, 'WD', 'Absent', 'MANUAL', 'INPROCESS', 'CASTOR, GINA', NULL, 0, '2020-03-16 06:40:42', '2020-03-16 06:40:42', NULL, NULL),
(1352, NULL, '2017-083', 'Advincula, Kris Nino Marco Sawal', 1, 15, 4, '2020-03-11', NULL, NULL, '0.00', '2020-03-11 12:00:00', '2020-03-11 13:00:00', NULL, NULL, '1.00', '0.00', '0.00', '0.00', NULL, NULL, '0.00', NULL, NULL, '0.00', '0.00', 'reg', 0, 1, 1, 0, NULL, 0, 'WD', 'Absent', 'MANUAL', 'INPROCESS', 'CASTOR, GINA', NULL, 0, '2020-03-16 06:40:42', '2020-03-16 06:40:42', NULL, NULL);
INSERT INTO `date_and_time_records` (`id`, `register_number`, `company_id`, `employee_name`, `company_ind`, `group_ind`, `sched_template_id`, `sched_date`, `date_time_in`, `date_time_out`, `reg_total_hrs`, `lunch_out`, `lunch_in`, `schedule_shift_in`, `schedule_shift_out`, `lunch_durations_hrs`, `over_break_min`, `late_min`, `undertime_min`, `ot_time_in`, `ot_time_out`, `ot_total_hrs`, `night_diff_in`, `night_diff_out`, `night_diff_total_hrs`, `night_diff_total_ot_hrs`, `day_types`, `work_on_holiday`, `before_holiday`, `after_holiday`, `leaved`, `leave_types`, `leave_wpay`, `half_day`, `remarks`, `insystem`, `payroll_status`, `created_by`, `lu_by`, `deleted`, `created_at`, `updated_at`, `device_id_in`, `device_id_out`) VALUES
(1353, NULL, '2017-083', 'Advincula, Kris Nino Marco Sawal', 1, 15, 4, '2020-03-12', NULL, NULL, '0.00', '2020-03-12 12:00:00', '2020-03-12 13:00:00', NULL, NULL, '1.00', '0.00', '0.00', '0.00', NULL, NULL, '0.00', NULL, NULL, '0.00', '0.00', 'reg', 0, 1, 1, 0, NULL, 0, 'WD', 'Absent', 'MANUAL', 'INPROCESS', 'CASTOR, GINA', NULL, 0, '2020-03-16 06:40:42', '2020-03-16 06:40:42', NULL, NULL),
(1354, NULL, '2018-004', 'Argales, Rome Aubrey Cruz', 1, 15, 13, '2020-03-10', NULL, NULL, '0.00', '2020-03-10 12:00:00', '2020-03-10 13:00:00', NULL, NULL, '1.00', '0.00', '0.00', '0.00', NULL, NULL, '0.00', NULL, NULL, '0.00', '0.00', 'reg', 0, 1, 1, 0, NULL, 0, 'WD', 'Absent', 'MANUAL', 'INPROCESS', 'CASTOR, GINA', NULL, 0, '2020-03-16 06:40:42', '2020-03-16 06:40:42', NULL, NULL),
(1355, NULL, '2018-004', 'Argales, Rome Aubrey Cruz', 1, 15, 13, '2020-03-11', NULL, NULL, '0.00', '2020-03-11 12:00:00', '2020-03-11 13:00:00', NULL, NULL, '1.00', '0.00', '0.00', '0.00', NULL, NULL, '0.00', NULL, NULL, '0.00', '0.00', 'reg', 0, 1, 1, 0, NULL, 0, 'WD', 'Absent', 'MANUAL', 'INPROCESS', 'CASTOR, GINA', NULL, 0, '2020-03-16 06:40:42', '2020-03-16 06:40:42', NULL, NULL),
(1356, NULL, '2018-004', 'Argales, Rome Aubrey Cruz', 1, 15, 13, '2020-03-12', NULL, NULL, '0.00', '2020-03-12 12:00:00', '2020-03-12 13:00:00', NULL, NULL, '1.00', '0.00', '0.00', '0.00', NULL, NULL, '0.00', NULL, NULL, '0.00', '0.00', 'reg', 0, 1, 1, 0, NULL, 0, 'WD', 'Absent', 'MANUAL', 'INPROCESS', 'CASTOR, GINA', NULL, 0, '2020-03-16 06:40:42', '2020-03-16 06:40:42', NULL, NULL),
(1357, NULL, '2018-040', 'BIÃ‘AS, Kenneth Joshua Lope', 1, 15, 4, '2020-03-10', NULL, NULL, '0.00', '2020-03-10 12:00:00', '2020-03-10 13:00:00', NULL, NULL, '1.00', '0.00', '0.00', '0.00', NULL, NULL, '0.00', NULL, NULL, '0.00', '0.00', 'reg', 0, 1, 1, 0, NULL, 0, 'WD', 'Absent', 'MANUAL', 'INPROCESS', 'CASTOR, GINA', NULL, 0, '2020-03-16 06:40:42', '2020-03-16 06:40:42', NULL, NULL),
(1358, NULL, '2018-040', 'BIÃ‘AS, Kenneth Joshua Lope', 1, 15, 4, '2020-03-11', NULL, NULL, '0.00', '2020-03-11 12:00:00', '2020-03-11 13:00:00', NULL, NULL, '1.00', '0.00', '0.00', '0.00', NULL, NULL, '0.00', NULL, NULL, '0.00', '0.00', 'reg', 0, 1, 1, 0, NULL, 0, 'WD', 'Absent', 'MANUAL', 'INPROCESS', 'CASTOR, GINA', NULL, 0, '2020-03-16 06:40:43', '2020-03-16 06:40:43', NULL, NULL),
(1359, NULL, '2018-040', 'BIÃ‘AS, Kenneth Joshua Lope', 1, 15, 4, '2020-03-12', NULL, NULL, '0.00', '2020-03-12 12:00:00', '2020-03-12 13:00:00', NULL, NULL, '1.00', '0.00', '0.00', '0.00', NULL, NULL, '0.00', NULL, NULL, '0.00', '0.00', 'reg', 0, 1, 1, 0, NULL, 0, 'WD', 'Absent', 'MANUAL', 'INPROCESS', 'CASTOR, GINA', NULL, 0, '2020-03-16 06:40:43', '2020-03-16 06:40:43', NULL, NULL),
(1360, NULL, '2010-191', 'CASTOR, GINA ALMADEN', 1, 16, 10, '2020-03-10', NULL, NULL, '0.00', '2020-03-10 12:00:00', '2020-03-10 13:00:00', '2020-03-10 08:30:00', '2020-03-10 18:30:00', '1.00', '0.00', '0.00', '0.00', NULL, NULL, '0.00', NULL, NULL, '0.00', '0.00', 'reg', 0, 1, 1, 0, NULL, 0, 'WD', 'Absent', 'MANUAL', 'INPROCESS', 'CASTOR, GINA', NULL, 0, '2020-03-16 06:40:43', '2020-03-16 06:40:43', NULL, NULL),
(1361, NULL, '2010-191', 'CASTOR, GINA ALMADEN', 1, 16, 10, '2020-03-11', NULL, NULL, '0.00', '2020-03-11 12:00:00', '2020-03-11 13:00:00', '2020-03-11 08:30:00', '2020-03-11 18:30:00', '1.00', '0.00', '0.00', '0.00', NULL, NULL, '0.00', NULL, NULL, '0.00', '0.00', 'reg', 0, 1, 1, 0, NULL, 0, 'WD', 'Absent', 'MANUAL', 'INPROCESS', 'CASTOR, GINA', NULL, 0, '2020-03-16 06:40:43', '2020-03-16 06:40:43', NULL, NULL),
(1362, NULL, '2010-191', 'CASTOR, GINA ALMADEN', 1, 16, 10, '2020-03-12', NULL, NULL, '0.00', '2020-03-12 12:00:00', '2020-03-12 13:00:00', '2020-03-12 08:30:00', '2020-03-12 18:30:00', '1.00', '0.00', '0.00', '0.00', NULL, NULL, '0.00', NULL, NULL, '0.00', '0.00', 'reg', 0, 1, 1, 0, NULL, 0, 'WD', 'Absent', 'MANUAL', 'INPROCESS', 'CASTOR, GINA', NULL, 0, '2020-03-16 06:40:43', '2020-03-16 06:40:43', NULL, NULL),
(1363, NULL, '2015-051', 'Dayandante, Jasmin Pasco', 1, 16, 10, '2020-03-10', NULL, NULL, '0.00', '2020-03-10 12:00:00', '2020-03-10 13:00:00', '2020-03-10 08:30:00', '2020-03-10 18:30:00', '1.00', '0.00', '0.00', '0.00', NULL, NULL, '0.00', NULL, NULL, '0.00', '0.00', 'reg', 0, 1, 1, 0, NULL, 0, 'WD', 'Absent', 'MANUAL', 'INPROCESS', 'CASTOR, GINA', NULL, 0, '2020-03-16 06:40:44', '2020-03-16 06:40:44', NULL, NULL),
(1364, NULL, '2015-051', 'Dayandante, Jasmin Pasco', 1, 16, 10, '2020-03-11', NULL, NULL, '0.00', '2020-03-11 12:00:00', '2020-03-11 13:00:00', '2020-03-11 08:30:00', '2020-03-11 18:30:00', '1.00', '0.00', '0.00', '0.00', NULL, NULL, '0.00', NULL, NULL, '0.00', '0.00', 'reg', 0, 1, 1, 0, NULL, 0, 'WD', 'Absent', 'MANUAL', 'INPROCESS', 'CASTOR, GINA', NULL, 0, '2020-03-16 06:40:44', '2020-03-16 06:40:44', NULL, NULL),
(1365, NULL, '2015-051', 'Dayandante, Jasmin Pasco', 1, 16, 10, '2020-03-12', NULL, NULL, '0.00', '2020-03-12 12:00:00', '2020-03-12 13:00:00', '2020-03-12 08:30:00', '2020-03-12 18:30:00', '1.00', '0.00', '0.00', '0.00', NULL, NULL, '0.00', NULL, NULL, '0.00', '0.00', 'reg', 0, 1, 1, 0, NULL, 0, 'WD', 'Absent', 'MANUAL', 'INPROCESS', 'CASTOR, GINA', NULL, 0, '2020-03-16 06:40:44', '2020-03-16 06:40:44', NULL, NULL),
(1366, NULL, '2017-082', 'Flores, Juan Karlo Quisol', 1, 15, 4, '2020-03-10', NULL, NULL, '0.00', '2020-03-10 12:00:00', '2020-03-10 13:00:00', NULL, NULL, '1.00', '0.00', '0.00', '0.00', NULL, NULL, '0.00', NULL, NULL, '0.00', '0.00', 'reg', 0, 1, 1, 0, NULL, 0, 'WD', 'Absent', 'MANUAL', 'INPROCESS', 'CASTOR, GINA', NULL, 0, '2020-03-16 06:40:44', '2020-03-16 06:40:44', NULL, NULL),
(1367, NULL, '2017-082', 'Flores, Juan Karlo Quisol', 1, 15, 4, '2020-03-11', NULL, NULL, '0.00', '2020-03-11 12:00:00', '2020-03-11 13:00:00', NULL, NULL, '1.00', '0.00', '0.00', '0.00', NULL, NULL, '0.00', NULL, NULL, '0.00', '0.00', 'reg', 0, 1, 1, 0, NULL, 0, 'WD', 'Absent', 'MANUAL', 'INPROCESS', 'CASTOR, GINA', NULL, 0, '2020-03-16 06:40:44', '2020-03-16 06:40:44', NULL, NULL),
(1368, NULL, '2017-082', 'Flores, Juan Karlo Quisol', 1, 15, 4, '2020-03-12', NULL, NULL, '0.00', '2020-03-12 12:00:00', '2020-03-12 13:00:00', NULL, NULL, '1.00', '0.00', '0.00', '0.00', NULL, NULL, '0.00', NULL, NULL, '0.00', '0.00', 'reg', 0, 1, 1, 0, NULL, 0, 'WD', 'Absent', 'MANUAL', 'INPROCESS', 'CASTOR, GINA', NULL, 0, '2020-03-16 06:40:44', '2020-03-16 06:40:44', NULL, NULL),
(1369, NULL, '2015-056', 'Inguito, Kimberly  Mae Gonzales', 1, 15, 12, '2020-03-10', NULL, NULL, '0.00', '2020-03-10 12:00:00', '2020-03-10 13:00:00', '2020-03-10 08:30:00', '2020-03-10 18:30:00', '1.00', '0.00', '0.00', '0.00', NULL, NULL, '0.00', NULL, NULL, '0.00', '0.00', 'reg', 0, 1, 1, 0, NULL, 0, 'WD', 'Absent', 'MANUAL', 'INPROCESS', 'CASTOR, GINA', NULL, 0, '2020-03-16 06:40:44', '2020-03-16 06:40:44', NULL, NULL),
(1370, NULL, '2015-056', 'Inguito, Kimberly  Mae Gonzales', 1, 15, 12, '2020-03-11', NULL, NULL, '0.00', '2020-03-11 12:00:00', '2020-03-11 13:00:00', '2020-03-11 08:30:00', '2020-03-11 18:30:00', '1.00', '0.00', '0.00', '0.00', NULL, NULL, '0.00', NULL, NULL, '0.00', '0.00', 'reg', 0, 1, 1, 0, NULL, 0, 'WD', 'Absent', 'MANUAL', 'INPROCESS', 'CASTOR, GINA', NULL, 0, '2020-03-16 06:40:44', '2020-03-16 06:40:44', NULL, NULL),
(1371, NULL, '2015-056', 'Inguito, Kimberly  Mae Gonzales', 1, 15, 12, '2020-03-12', NULL, NULL, '0.00', '2020-03-12 12:00:00', '2020-03-12 13:00:00', '2020-03-12 08:30:00', '2020-03-12 18:30:00', '1.00', '0.00', '0.00', '0.00', NULL, NULL, '0.00', NULL, NULL, '0.00', '0.00', 'reg', 0, 1, 1, 0, NULL, 0, 'WD', 'Absent', 'MANUAL', 'INPROCESS', 'CASTOR, GINA', NULL, 0, '2020-03-16 06:40:45', '2020-03-16 06:40:45', NULL, NULL),
(1372, NULL, '2011-209', 'Kempis, Mark Arthur Avelino', 1, 15, 10, '2020-03-10', NULL, NULL, '0.00', '2020-03-10 12:00:00', '2020-03-10 13:00:00', '2020-03-10 08:30:00', '2020-03-10 18:30:00', '1.00', '0.00', '0.00', '0.00', NULL, NULL, '0.00', NULL, NULL, '0.00', '0.00', 'reg', 0, 1, 1, 0, NULL, 0, 'WD', 'Absent', 'MANUAL', 'INPROCESS', 'CASTOR, GINA', NULL, 0, '2020-03-16 06:40:45', '2020-03-16 06:40:45', NULL, NULL),
(1373, NULL, '2011-209', 'Kempis, Mark Arthur Avelino', 1, 15, 10, '2020-03-11', NULL, NULL, '0.00', '2020-03-11 12:00:00', '2020-03-11 13:00:00', '2020-03-11 08:30:00', '2020-03-11 18:30:00', '1.00', '0.00', '0.00', '0.00', NULL, NULL, '0.00', NULL, NULL, '0.00', '0.00', 'reg', 0, 1, 1, 0, NULL, 0, 'WD', 'Absent', 'MANUAL', 'INPROCESS', 'CASTOR, GINA', NULL, 0, '2020-03-16 06:40:45', '2020-03-16 06:40:45', NULL, NULL),
(1374, NULL, '2011-209', 'Kempis, Mark Arthur Avelino', 1, 15, 10, '2020-03-12', NULL, NULL, '0.00', '2020-03-12 12:00:00', '2020-03-12 13:00:00', '2020-03-12 08:30:00', '2020-03-12 18:30:00', '1.00', '0.00', '0.00', '0.00', NULL, NULL, '0.00', NULL, NULL, '0.00', '0.00', 'reg', 0, 1, 1, 0, NULL, 0, 'WD', 'Absent', 'MANUAL', 'INPROCESS', 'CASTOR, GINA', NULL, 0, '2020-03-16 06:40:45', '2020-03-16 06:40:45', NULL, NULL),
(1375, NULL, '2011-227', 'Navarro, Mary Chris Ann Cruz', 1, 16, 10, '2020-03-10', NULL, NULL, '0.00', '2020-03-10 12:00:00', '2020-03-10 13:00:00', '2020-03-10 08:30:00', '2020-03-10 18:30:00', '1.00', '0.00', '0.00', '0.00', NULL, NULL, '0.00', NULL, NULL, '0.00', '0.00', 'reg', 0, 1, 1, 0, NULL, 0, 'WD', 'Absent', 'MANUAL', 'INPROCESS', 'CASTOR, GINA', NULL, 0, '2020-03-16 06:40:45', '2020-03-16 06:40:45', NULL, NULL),
(1376, NULL, '2011-227', 'Navarro, Mary Chris Ann Cruz', 1, 16, 10, '2020-03-11', NULL, NULL, '0.00', '2020-03-11 12:00:00', '2020-03-11 13:00:00', '2020-03-11 08:30:00', '2020-03-11 18:30:00', '1.00', '0.00', '0.00', '0.00', NULL, NULL, '0.00', NULL, NULL, '0.00', '0.00', 'reg', 0, 1, 1, 0, NULL, 0, 'WD', 'Absent', 'MANUAL', 'INPROCESS', 'CASTOR, GINA', NULL, 0, '2020-03-16 06:40:45', '2020-03-16 06:40:45', NULL, NULL),
(1377, NULL, '2011-227', 'Navarro, Mary Chris Ann Cruz', 1, 16, 10, '2020-03-12', NULL, NULL, '0.00', '2020-03-12 12:00:00', '2020-03-12 13:00:00', '2020-03-12 08:30:00', '2020-03-12 18:30:00', '1.00', '0.00', '0.00', '0.00', NULL, NULL, '0.00', NULL, NULL, '0.00', '0.00', 'reg', 0, 1, 1, 0, NULL, 0, 'WD', 'Absent', 'MANUAL', 'INPROCESS', 'CASTOR, GINA', NULL, 0, '2020-03-16 06:40:45', '2020-03-16 06:40:45', NULL, NULL),
(1378, NULL, '2016-037', 'PeÃ±a, Rea Kristine Nedia', 1, 14, 10, '2020-03-10', NULL, NULL, '0.00', '2020-03-10 12:00:00', '2020-03-10 13:00:00', '2020-03-10 08:30:00', '2020-03-10 18:30:00', '1.00', '0.00', '0.00', '0.00', NULL, NULL, '0.00', NULL, NULL, '0.00', '0.00', 'reg', 0, 1, 1, 0, NULL, 0, 'WD', 'Absent', 'MANUAL', 'INPROCESS', 'CASTOR, GINA', NULL, 0, '2020-03-16 06:40:45', '2020-03-16 06:40:45', NULL, NULL),
(1379, NULL, '2016-037', 'PeÃ±a, Rea Kristine Nedia', 1, 14, 10, '2020-03-11', NULL, NULL, '0.00', '2020-03-11 12:00:00', '2020-03-11 13:00:00', '2020-03-11 08:30:00', '2020-03-11 18:30:00', '1.00', '0.00', '0.00', '0.00', NULL, NULL, '0.00', NULL, NULL, '0.00', '0.00', 'reg', 0, 1, 1, 0, NULL, 0, 'WD', 'Absent', 'MANUAL', 'INPROCESS', 'CASTOR, GINA', NULL, 0, '2020-03-16 06:40:45', '2020-03-16 06:40:45', NULL, NULL),
(1380, NULL, '2016-037', 'PeÃ±a, Rea Kristine Nedia', 1, 14, 10, '2020-03-12', NULL, NULL, '0.00', '2020-03-12 12:00:00', '2020-03-12 13:00:00', '2020-03-12 08:30:00', '2020-03-12 18:30:00', '1.00', '0.00', '0.00', '0.00', NULL, NULL, '0.00', NULL, NULL, '0.00', '0.00', 'reg', 0, 1, 1, 0, NULL, 0, 'WD', 'Absent', 'MANUAL', 'INPROCESS', 'CASTOR, GINA', NULL, 0, '2020-03-16 06:40:45', '2020-03-16 06:40:45', NULL, NULL),
(1381, NULL, '2018-039', 'Silvestre, Mark Brenn Morla', 1, 13, 4, '2020-03-10', NULL, NULL, '0.00', '2020-03-10 12:00:00', '2020-03-10 13:00:00', NULL, NULL, '1.00', '0.00', '0.00', '0.00', NULL, NULL, '0.00', NULL, NULL, '0.00', '0.00', 'reg', 0, 1, 1, 0, NULL, 0, 'WD', 'Absent', 'MANUAL', 'INPROCESS', 'CASTOR, GINA', NULL, 0, '2020-03-16 06:40:46', '2020-03-16 06:40:46', NULL, NULL),
(1382, NULL, '2018-039', 'Silvestre, Mark Brenn Morla', 1, 13, 4, '2020-03-11', NULL, NULL, '0.00', '2020-03-11 12:00:00', '2020-03-11 13:00:00', NULL, NULL, '1.00', '0.00', '0.00', '0.00', NULL, NULL, '0.00', NULL, NULL, '0.00', '0.00', 'reg', 0, 1, 1, 0, NULL, 0, 'WD', 'Absent', 'MANUAL', 'INPROCESS', 'CASTOR, GINA', NULL, 0, '2020-03-16 06:40:46', '2020-03-16 06:40:46', NULL, NULL),
(1383, NULL, '2018-039', 'Silvestre, Mark Brenn Morla', 1, 13, 4, '2020-03-12', NULL, NULL, '0.00', '2020-03-12 12:00:00', '2020-03-12 13:00:00', NULL, NULL, '1.00', '0.00', '0.00', '0.00', NULL, NULL, '0.00', NULL, NULL, '0.00', '0.00', 'reg', 0, 1, 1, 0, NULL, 0, 'WD', 'Absent', 'MANUAL', 'INPROCESS', 'CASTOR, GINA', NULL, 0, '2020-03-16 06:40:46', '2020-03-16 06:40:46', NULL, NULL),
(1384, NULL, '2015-040', 'Uson, Rachelle Hyacinth Cruz', 1, 15, 10, '2020-03-10', NULL, NULL, '0.00', '2020-03-10 12:00:00', '2020-03-10 13:00:00', '2020-03-10 08:30:00', '2020-03-10 18:30:00', '1.00', '0.00', '0.00', '0.00', NULL, NULL, '0.00', NULL, NULL, '0.00', '0.00', 'reg', 0, 1, 1, 0, NULL, 0, 'WD', 'Absent', 'MANUAL', 'INPROCESS', 'CASTOR, GINA', NULL, 0, '2020-03-16 06:40:46', '2020-03-16 06:40:46', NULL, NULL),
(1385, NULL, '2015-040', 'Uson, Rachelle Hyacinth Cruz', 1, 15, 10, '2020-03-11', NULL, NULL, '0.00', '2020-03-11 12:00:00', '2020-03-11 13:00:00', '2020-03-11 08:30:00', '2020-03-11 18:30:00', '1.00', '0.00', '0.00', '0.00', NULL, NULL, '0.00', NULL, NULL, '0.00', '0.00', 'reg', 0, 1, 1, 0, NULL, 0, 'WD', 'Absent', 'MANUAL', 'INPROCESS', 'CASTOR, GINA', NULL, 0, '2020-03-16 06:40:46', '2020-03-16 06:40:46', NULL, NULL),
(1386, NULL, '2015-040', 'Uson, Rachelle Hyacinth Cruz', 1, 15, 10, '2020-03-12', NULL, NULL, '0.00', '2020-03-12 12:00:00', '2020-03-12 13:00:00', '2020-03-12 08:30:00', '2020-03-12 18:30:00', '1.00', '0.00', '0.00', '0.00', NULL, NULL, '0.00', NULL, NULL, '0.00', '0.00', 'reg', 0, 1, 1, 0, NULL, 0, 'WD', 'Absent', 'MANUAL', 'INPROCESS', 'CASTOR, GINA', NULL, 0, '2020-03-16 06:40:46', '2020-03-16 06:40:46', NULL, NULL),
(1387, NULL, '2018-085', 'ValeÃ±a Jr, Daniel  Vallar', 1, 13, 13, '2020-03-10', NULL, NULL, '0.00', '2020-03-10 12:00:00', '2020-03-10 13:00:00', NULL, NULL, '1.00', '0.00', '0.00', '0.00', NULL, NULL, '0.00', NULL, NULL, '0.00', '0.00', 'reg', 0, 1, 1, 0, NULL, 0, 'WD', 'Absent', 'MANUAL', 'INPROCESS', 'CASTOR, GINA', NULL, 0, '2020-03-16 06:40:46', '2020-03-16 06:40:46', NULL, NULL),
(1388, NULL, '2018-085', 'ValeÃ±a Jr, Daniel  Vallar', 1, 13, 13, '2020-03-11', NULL, NULL, '0.00', '2020-03-11 12:00:00', '2020-03-11 13:00:00', NULL, NULL, '1.00', '0.00', '0.00', '0.00', NULL, NULL, '0.00', NULL, NULL, '0.00', '0.00', 'reg', 0, 1, 1, 0, NULL, 0, 'WD', 'Absent', 'MANUAL', 'INPROCESS', 'CASTOR, GINA', NULL, 0, '2020-03-16 06:40:46', '2020-03-16 06:40:46', NULL, NULL),
(1389, NULL, '2018-085', 'ValeÃ±a Jr, Daniel  Vallar', 1, 13, 13, '2020-03-12', NULL, NULL, '0.00', '2020-03-12 12:00:00', '2020-03-12 13:00:00', NULL, NULL, '1.00', '0.00', '0.00', '0.00', NULL, NULL, '0.00', NULL, NULL, '0.00', '0.00', 'reg', 0, 1, 1, 0, NULL, 0, 'WD', 'Absent', 'MANUAL', 'INPROCESS', 'CASTOR, GINA', NULL, 0, '2020-03-16 06:40:46', '2020-03-16 06:40:46', NULL, NULL),
(1390, NULL, '2013-341', 'Velasco, Teejay Viloria', 1, 15, 13, '2020-03-10', NULL, NULL, '0.00', '2020-03-10 12:00:00', '2020-03-10 13:00:00', NULL, NULL, '1.00', '0.00', '0.00', '0.00', NULL, NULL, '0.00', NULL, NULL, '0.00', '0.00', 'reg', 0, 1, 1, 0, NULL, 0, 'WD', 'Absent', 'MANUAL', 'INPROCESS', 'CASTOR, GINA', NULL, 0, '2020-03-16 06:40:46', '2020-03-16 06:40:46', NULL, NULL),
(1391, NULL, '2013-341', 'Velasco, Teejay Viloria', 1, 15, 13, '2020-03-11', NULL, NULL, '0.00', '2020-03-11 12:00:00', '2020-03-11 13:00:00', NULL, NULL, '1.00', '0.00', '0.00', '0.00', NULL, NULL, '0.00', NULL, NULL, '0.00', '0.00', 'reg', 0, 1, 1, 0, NULL, 0, 'WD', 'Absent', 'MANUAL', 'INPROCESS', 'CASTOR, GINA', NULL, 0, '2020-03-16 06:40:46', '2020-03-16 06:40:46', NULL, NULL),
(1392, NULL, '2013-341', 'Velasco, Teejay Viloria', 1, 15, 13, '2020-03-12', NULL, NULL, '0.00', '2020-03-12 12:00:00', '2020-03-12 13:00:00', NULL, NULL, '1.00', '0.00', '0.00', '0.00', NULL, NULL, '0.00', NULL, NULL, '0.00', '0.00', 'reg', 0, 1, 1, 0, NULL, 0, 'WD', 'Absent', 'MANUAL', 'INPROCESS', 'CASTOR, GINA', NULL, 0, '2020-03-16 06:40:46', '2020-03-16 06:40:46', NULL, NULL),
(1393, NULL, '2006-054', 'Villagracia, Jacelyn Bayanay', 1, 16, 10, '2020-03-10', NULL, NULL, '0.00', '2020-03-10 12:00:00', '2020-03-10 13:00:00', '2020-03-10 08:30:00', '2020-03-10 18:30:00', '1.00', '0.00', '0.00', '0.00', NULL, NULL, '0.00', NULL, NULL, '0.00', '0.00', 'reg', 0, 1, 1, 0, NULL, 0, 'WD', 'Absent', 'MANUAL', 'INPROCESS', 'CASTOR, GINA', NULL, 0, '2020-03-16 06:40:47', '2020-03-16 06:40:47', NULL, NULL),
(1394, NULL, '2006-054', 'Villagracia, Jacelyn Bayanay', 1, 16, 10, '2020-03-11', NULL, NULL, '0.00', '2020-03-11 12:00:00', '2020-03-11 13:00:00', '2020-03-11 08:30:00', '2020-03-11 18:30:00', '1.00', '0.00', '0.00', '0.00', NULL, NULL, '0.00', NULL, NULL, '0.00', '0.00', 'reg', 0, 1, 1, 0, NULL, 0, 'WD', 'Absent', 'MANUAL', 'INPROCESS', 'CASTOR, GINA', NULL, 0, '2020-03-16 06:40:47', '2020-03-16 06:40:47', NULL, NULL),
(1395, NULL, '2006-054', 'Villagracia, Jacelyn Bayanay', 1, 16, 10, '2020-03-12', NULL, NULL, '0.00', '2020-03-12 12:00:00', '2020-03-12 13:00:00', '2020-03-12 08:30:00', '2020-03-12 18:30:00', '1.00', '0.00', '0.00', '0.00', NULL, NULL, '0.00', NULL, NULL, '0.00', '0.00', 'reg', 0, 1, 1, 0, NULL, 0, 'WD', 'Absent', 'MANUAL', 'INPROCESS', 'CASTOR, GINA', NULL, 0, '2020-03-16 06:40:47', '2020-03-16 06:40:47', NULL, NULL),
(1396, NULL, '2006-052', 'Villegas, Maria Teresa Lanozo', 1, 14, 10, '2020-03-10', NULL, NULL, '0.00', '2020-03-10 12:00:00', '2020-03-10 13:00:00', '2020-03-10 08:30:00', '2020-03-10 18:30:00', '1.00', '0.00', '0.00', '0.00', NULL, NULL, '0.00', NULL, NULL, '0.00', '0.00', 'reg', 0, 1, 1, 0, NULL, 0, 'WD', 'Absent', 'MANUAL', 'INPROCESS', 'CASTOR, GINA', NULL, 0, '2020-03-16 06:40:47', '2020-03-16 06:40:47', NULL, NULL),
(1397, NULL, '2006-052', 'Villegas, Maria Teresa Lanozo', 1, 14, 10, '2020-03-11', NULL, NULL, '0.00', '2020-03-11 12:00:00', '2020-03-11 13:00:00', '2020-03-11 08:30:00', '2020-03-11 18:30:00', '1.00', '0.00', '0.00', '0.00', NULL, NULL, '0.00', NULL, NULL, '0.00', '0.00', 'reg', 0, 1, 1, 0, NULL, 0, 'WD', 'Absent', 'MANUAL', 'INPROCESS', 'CASTOR, GINA', NULL, 0, '2020-03-16 06:40:47', '2020-03-16 06:40:47', NULL, NULL),
(1398, NULL, '2006-052', 'Villegas, Maria Teresa Lanozo', 1, 14, 10, '2020-03-12', NULL, NULL, '0.00', '2020-03-12 12:00:00', '2020-03-12 13:00:00', '2020-03-12 08:30:00', '2020-03-12 18:30:00', '1.00', '0.00', '0.00', '0.00', NULL, NULL, '0.00', NULL, NULL, '0.00', '0.00', 'reg', 0, 1, 1, 0, NULL, 0, 'WD', 'Absent', 'MANUAL', 'INPROCESS', 'CASTOR, GINA', NULL, 0, '2020-03-16 06:40:47', '2020-03-16 06:40:47', NULL, NULL),
(1399, NULL, '2017-083', 'Advincula, Kris Nino Marco Sawal', 1, 15, 4, '2020-03-23', NULL, NULL, '0.00', '2020-03-23 12:00:00', '2020-03-23 13:00:00', NULL, NULL, '1.00', '0.00', '0.00', '0.00', NULL, NULL, '0.00', NULL, NULL, '0.00', '0.00', 'reg', 0, 1, 1, 0, NULL, 0, 'WD', 'Absent', 'MANUAL', 'INPROCESS', 'CASTOR, GINA', NULL, 0, '2020-03-23 02:21:28', '2020-03-23 02:21:28', NULL, NULL),
(1400, NULL, '2000-017', 'Araquel, Joe marie Basada', 1, 14, 10, '2020-03-23', NULL, NULL, '0.00', '2020-03-23 12:00:00', '2020-03-23 13:00:00', '2020-03-23 08:30:00', '2020-03-23 18:30:00', '1.00', '0.00', '0.00', '0.00', NULL, NULL, '0.00', NULL, NULL, '0.00', '0.00', 'reg', 0, 1, 1, 0, NULL, 0, 'WD', 'Absent', 'MANUAL', 'INPROCESS', 'CASTOR, GINA', NULL, 0, '2020-03-23 02:21:28', '2020-03-23 02:21:28', NULL, NULL),
(1401, NULL, '2018-004', 'Argales, Rome Aubrey Cruz', 1, 15, 13, '2020-03-23', NULL, NULL, '0.00', NULL, NULL, NULL, NULL, '0.00', '0.00', '0.00', '0.00', NULL, NULL, '0.00', NULL, NULL, '0.00', '0.00', 'rd_reg', 0, 1, 1, 0, NULL, 0, 'WD', 'Restday', 'MANUAL', 'INPROCESS', 'CASTOR, GINA', NULL, 0, '2020-03-23 02:21:28', '2020-03-23 02:21:28', NULL, NULL),
(1402, NULL, '2018-040', 'BIÃ‘AS, Kenneth Joshua Lope', 1, 15, 4, '2020-03-23', NULL, NULL, '0.00', '2020-03-23 12:00:00', '2020-03-23 13:00:00', NULL, NULL, '1.00', '0.00', '0.00', '0.00', NULL, NULL, '0.00', NULL, NULL, '0.00', '0.00', 'reg', 0, 1, 1, 0, NULL, 0, 'WD', 'Absent', 'MANUAL', 'INPROCESS', 'CASTOR, GINA', NULL, 0, '2020-03-23 02:21:28', '2020-03-23 02:21:28', NULL, NULL),
(1403, NULL, '2010-191', 'CASTOR, GINA ALMADEN', 1, 16, 10, '2020-03-23', NULL, NULL, '0.00', '2020-03-23 12:00:00', '2020-03-23 13:00:00', '2020-03-23 08:30:00', '2020-03-23 18:30:00', '1.00', '0.00', '0.00', '0.00', NULL, NULL, '0.00', NULL, NULL, '0.00', '0.00', 'reg', 0, 1, 1, 0, NULL, 0, 'WD', 'Absent', 'MANUAL', 'INPROCESS', 'CASTOR, GINA', NULL, 0, '2020-03-23 02:21:28', '2020-03-23 02:21:28', NULL, NULL),
(1404, NULL, '2015-051', 'Dayandante, Jasmin Pasco', 1, 16, 10, '2020-03-23', NULL, NULL, '0.00', '2020-03-23 12:00:00', '2020-03-23 13:00:00', '2020-03-23 08:30:00', '2020-03-23 18:30:00', '1.00', '0.00', '0.00', '0.00', NULL, NULL, '0.00', NULL, NULL, '0.00', '0.00', 'reg', 0, 1, 1, 0, NULL, 0, 'WD', 'Absent', 'MANUAL', 'INPROCESS', 'CASTOR, GINA', NULL, 0, '2020-03-23 02:21:28', '2020-03-23 02:21:28', NULL, NULL),
(1405, NULL, '2017-082', 'Flores, Juan Karlo Quisol', 1, 15, 4, '2020-03-23', NULL, NULL, '0.00', '2020-03-23 12:00:00', '2020-03-23 13:00:00', NULL, NULL, '1.00', '0.00', '0.00', '0.00', NULL, NULL, '0.00', NULL, NULL, '0.00', '0.00', 'reg', 0, 1, 1, 0, NULL, 0, 'WD', 'Absent', 'MANUAL', 'INPROCESS', 'CASTOR, GINA', NULL, 0, '2020-03-23 02:21:28', '2020-03-23 02:21:28', NULL, NULL),
(1406, NULL, '2015-056', 'Inguito, Kimberly  Mae Gonzales', 1, 15, 12, '2020-03-23', NULL, NULL, '0.00', NULL, NULL, NULL, NULL, '0.00', '0.00', '0.00', '0.00', NULL, NULL, '0.00', NULL, NULL, '0.00', '0.00', 'rd_reg', 0, 1, 1, 0, NULL, 0, 'WD', 'Restday', 'MANUAL', 'INPROCESS', 'CASTOR, GINA', NULL, 0, '2020-03-23 02:21:28', '2020-03-23 02:21:28', NULL, NULL),
(1407, NULL, '2011-209', 'Kempis, Mark Arthur Avelino', 1, 15, 10, '2020-03-23', NULL, NULL, '0.00', '2020-03-23 12:00:00', '2020-03-23 13:00:00', '2020-03-23 08:30:00', '2020-03-23 18:30:00', '1.00', '0.00', '0.00', '0.00', NULL, NULL, '0.00', NULL, NULL, '0.00', '0.00', 'reg', 0, 1, 1, 0, NULL, 0, 'WD', 'Absent', 'MANUAL', 'INPROCESS', 'CASTOR, GINA', NULL, 0, '2020-03-23 02:21:28', '2020-03-23 02:21:28', NULL, NULL),
(1408, NULL, '2011-227', 'Navarro, Mary Chris Ann Cruz', 1, 16, 10, '2020-03-23', NULL, NULL, '0.00', '2020-03-23 12:00:00', '2020-03-23 13:00:00', '2020-03-23 08:30:00', '2020-03-23 18:30:00', '1.00', '0.00', '0.00', '0.00', NULL, NULL, '0.00', NULL, NULL, '0.00', '0.00', 'reg', 0, 1, 1, 0, NULL, 0, 'WD', 'Absent', 'MANUAL', 'INPROCESS', 'CASTOR, GINA', NULL, 0, '2020-03-23 02:21:29', '2020-03-23 02:21:29', NULL, NULL),
(1409, NULL, '2016-037', 'PeÃ±a, Rea Kristine Nedia', 1, 14, 10, '2020-03-23', NULL, NULL, '0.00', '2020-03-23 12:00:00', '2020-03-23 13:00:00', '2020-03-23 08:30:00', '2020-03-23 18:30:00', '1.00', '0.00', '0.00', '0.00', NULL, NULL, '0.00', NULL, NULL, '0.00', '0.00', 'reg', 0, 1, 1, 0, NULL, 0, 'WD', 'Absent', 'MANUAL', 'INPROCESS', 'CASTOR, GINA', NULL, 0, '2020-03-23 02:21:29', '2020-03-23 02:21:29', NULL, NULL),
(1410, NULL, '2018-039', 'Silvestre, Mark Brenn Morla', 1, 13, 4, '2020-03-23', NULL, NULL, '0.00', '2020-03-23 12:00:00', '2020-03-23 13:00:00', NULL, NULL, '1.00', '0.00', '0.00', '0.00', NULL, NULL, '0.00', NULL, NULL, '0.00', '0.00', 'reg', 0, 1, 1, 0, NULL, 0, 'WD', 'Absent', 'MANUAL', 'INPROCESS', 'CASTOR, GINA', NULL, 0, '2020-03-23 02:21:29', '2020-03-23 02:21:29', NULL, NULL),
(1411, NULL, '2015-040', 'Uson, Rachelle Hyacinth Cruz', 1, 15, 10, '2020-03-23', NULL, NULL, '0.00', '2020-03-23 12:00:00', '2020-03-23 13:00:00', '2020-03-23 08:30:00', '2020-03-23 18:30:00', '1.00', '0.00', '0.00', '0.00', NULL, NULL, '0.00', NULL, NULL, '0.00', '0.00', 'reg', 0, 1, 1, 0, NULL, 0, 'WD', 'Absent', 'MANUAL', 'INPROCESS', 'CASTOR, GINA', NULL, 0, '2020-03-23 02:21:29', '2020-03-23 02:21:29', NULL, NULL),
(1412, NULL, '2018-085', 'ValeÃ±a Jr, Daniel  Vallar', 1, 13, 13, '2020-03-23', NULL, NULL, '0.00', NULL, NULL, NULL, NULL, '0.00', '0.00', '0.00', '0.00', NULL, NULL, '0.00', NULL, NULL, '0.00', '0.00', 'rd_reg', 0, 1, 1, 0, NULL, 0, 'WD', 'Restday', 'MANUAL', 'INPROCESS', 'CASTOR, GINA', NULL, 0, '2020-03-23 02:21:29', '2020-03-23 02:21:29', NULL, NULL),
(1413, NULL, '2013-341', 'Velasco, Teejay Viloria', 1, 15, 13, '2020-03-23', NULL, NULL, '0.00', NULL, NULL, NULL, NULL, '0.00', '0.00', '0.00', '0.00', NULL, NULL, '0.00', NULL, NULL, '0.00', '0.00', 'rd_reg', 0, 1, 1, 0, NULL, 0, 'WD', 'Restday', 'MANUAL', 'INPROCESS', 'CASTOR, GINA', NULL, 0, '2020-03-23 02:21:29', '2020-03-23 02:21:29', NULL, NULL),
(1414, NULL, '2006-054', 'Villagracia, Jacelyn Bayanay', 1, 16, 10, '2020-03-23', NULL, NULL, '0.00', '2020-03-23 12:00:00', '2020-03-23 13:00:00', '2020-03-23 08:30:00', '2020-03-23 18:30:00', '1.00', '0.00', '0.00', '0.00', NULL, NULL, '0.00', NULL, NULL, '0.00', '0.00', 'reg', 0, 1, 1, 0, NULL, 0, 'WD', 'Absent', 'MANUAL', 'INPROCESS', 'CASTOR, GINA', NULL, 0, '2020-03-23 02:21:29', '2020-03-23 02:21:29', NULL, NULL),
(1415, NULL, '2006-052', 'Villegas, Maria Teresa Lanozo', 1, 14, 10, '2020-03-23', NULL, NULL, '0.00', '2020-03-23 12:00:00', '2020-03-23 13:00:00', '2020-03-23 08:30:00', '2020-03-23 18:30:00', '1.00', '0.00', '0.00', '0.00', NULL, NULL, '0.00', NULL, NULL, '0.00', '0.00', 'reg', 0, 1, 1, 0, NULL, 0, 'WD', 'Absent', 'MANUAL', 'INPROCESS', 'CASTOR, GINA', NULL, 0, '2020-03-23 02:21:29', '2020-03-23 02:21:29', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `deduction_masters`
--

CREATE TABLE `deduction_masters` (
  `id` int(10) UNSIGNED NOT NULL,
  `deduction_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `deduction_type` varchar(15) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'LOAN',
  `description` varchar(500) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_by` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `lu_by` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `deleted` int(11) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `deduction_masters`
--

INSERT INTO `deduction_masters` (`id`, `deduction_name`, `deduction_type`, `description`, `created_by`, `lu_by`, `deleted`, `created_at`, `updated_at`) VALUES
(1, 'SSS LOAN', 'LOAN', 'Default SSS loan', 'Payroll Admin', 'Payroll Admin', 0, '2018-10-01 18:20:34', '2018-10-01 18:20:34'),
(2, 'HDMF LOAN', 'LOAN', 'Default Pagibig Loan', 'Payroll Admin', 'Payroll Admin', 0, '2018-10-01 18:20:57', '2018-10-01 18:20:57'),
(3, 'EMPLOYEE LOAN', 'LOAN', 'Employee loan', 'gina castor', 'gina castor', 0, '2018-10-08 01:21:36', '2018-10-08 01:21:36'),
(4, 'HEALTHCARE', 'LOAN', 'Healtcard', 'gina castor', 'gina castor', 0, '2018-10-08 01:23:08', '2018-10-08 01:23:08'),
(5, 'SAUSAGES', 'OTHERS', 'Sausages', 'gina castor', 'gina castor', 0, '2018-10-08 01:24:36', '2018-11-06 21:40:05'),
(6, 'Excess Mobile Plan Phone Charges', 'OTHERS', 'Cellphone Charges', 'gina castor', 'gina castor', 0, '2018-10-08 01:27:43', '2019-02-26 01:09:44'),
(7, 'LOST ITEM', 'OTHERS', 'Lost Item', 'gina castor', 'gina castor', 0, '2018-10-08 01:28:30', '2018-11-06 21:39:49'),
(8, 'MULTIVITAMINS', 'OTHERS', 'Multivitamins', 'gina castor', 'gina castor', 0, '2018-10-11 02:39:39', '2018-11-06 21:39:26'),
(9, 'Housing Loan', 'LOAN', 'For housing Loan', 'gina castor', 'gina castor', 0, '2018-10-30 01:04:24', '2018-10-30 01:04:24'),
(10, 'Safety shoes', 'OTHERS', 'Safety shoes', 'gina castor', 'gina castor', 0, '2019-02-14 17:48:15', '2019-02-14 17:48:15'),
(11, 'Excess Mobile Data Usage', 'OTHERS', 'Excess Mobile Data Usage', 'gina castor', 'Payroll Admin', 0, '2019-02-26 01:06:23', '2019-05-17 05:46:27'),
(12, 'Trial Ñ', 'OTHERS', 'trial', 'Payroll Admin', 'Payroll Admin', 1, '2019-02-27 18:50:59', '2019-02-27 18:54:17'),
(13, 'This is a test', 'OTHERS', 'This is a test', 'Payroll Admin', 'Payroll Admin', 0, '2019-05-27 02:42:32', '2019-05-27 02:42:32');

-- --------------------------------------------------------

--
-- Table structure for table `deduction_tables`
--

CREATE TABLE `deduction_tables` (
  `id` int(10) UNSIGNED NOT NULL,
  `company_id` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `company_ind` int(11) NOT NULL,
  `deduction_id` int(11) NOT NULL,
  `status` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'OPEN',
  `type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` decimal(8,2) NOT NULL,
  `amortization` decimal(8,2) NOT NULL DEFAULT '0.00',
  `start_date` date NOT NULL,
  `end_date` date DEFAULT NULL,
  `schedule` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'Every Payroll',
  `payment_term` int(11) NOT NULL DEFAULT '0',
  `payment_count` int(11) NOT NULL DEFAULT '0',
  `total_balance` decimal(8,2) NOT NULL,
  `created_by` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `lu_by` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `deleted` int(11) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `holidays`
--

CREATE TABLE `holidays` (
  `id` int(10) UNSIGNED NOT NULL,
  `holiday_date` date NOT NULL,
  `description` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `holiday_type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'CREATED',
  `created_by` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `lu_by` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted` int(2) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `holidays`
--

INSERT INTO `holidays` (`id`, `holiday_date`, `description`, `holiday_type`, `status`, `created_by`, `lu_by`, `created_at`, `updated_at`, `deleted`) VALUES
(1, '2019-11-30', 'Bonifacio Day', 'Legal', 'CREATED', 'gina castor', 'gina castor', '2019-12-04 03:28:39', '2019-12-04 03:28:39', 0),
(2, '2019-11-01', 'All Saint\'s Day', 'Special Non-Working', 'CREATED', 'gina castor', 'gina castor', '2019-12-04 03:29:15', '2019-12-04 03:29:15', 0),
(3, '2019-11-02', 'Addtional Special Day', 'Special Non-Working', 'CREATED', 'gina castor', 'gina castor', '2019-12-04 03:30:08', '2019-12-04 03:30:08', 0),
(4, '2019-12-25', 'Christmas Day', 'Legal', 'CREATED', 'gina castor', 'gina castor', '2019-12-04 03:30:50', '2019-12-04 03:30:50', 0),
(5, '2019-12-30', 'Rizal Day', 'Legal', 'CREATED', 'gina castor', 'gina castor', '2019-12-04 03:31:08', '2019-12-04 03:31:08', 0),
(6, '2019-12-08', 'Feast of the Immaculate Conceptions Of Mary', 'Special Non-Working', 'CREATED', 'gina castor', 'gina castor', '2019-12-04 03:32:35', '2019-12-04 03:32:35', 0),
(7, '2019-12-31', 'Last day of the Year', 'Special Non-Working', 'CREATED', 'gina castor', 'gina castor', '2019-12-04 03:33:24', '2019-12-04 03:33:24', 0),
(8, '2019-12-24', 'Additional Special Day', 'Special Non-Working', 'CREATED', 'gina castor', 'gina castor', '2019-12-04 03:33:58', '2019-12-04 03:33:58', 0);

-- --------------------------------------------------------

--
-- Table structure for table `last_pay`
--

CREATE TABLE `last_pay` (
  `id` int(10) UNSIGNED NOT NULL,
  `company_id` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `company_ind` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `department` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `employee_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `date_hired` date NOT NULL,
  `date_seperated` date NOT NULL,
  `last_pay` decimal(8,2) NOT NULL DEFAULT '0.00',
  `thirteenthmonth_date_start` date NOT NULL,
  `thirteenthmonth_date_end` date NOT NULL,
  `thirteenthmonth_basic` decimal(8,2) NOT NULL DEFAULT '0.00',
  `thirteenthmonth_nontax_allow` decimal(8,2) NOT NULL DEFAULT '0.00',
  `thirteenthmonth_wtax_allow` decimal(8,2) NOT NULL DEFAULT '0.00',
  `deductions` decimal(8,2) NOT NULL DEFAULT '0.00',
  `adjustment` decimal(8,2) NOT NULL DEFAULT '0.00',
  `net` decimal(8,2) NOT NULL DEFAULT '0.00',
  `approved_by` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `with_taxable_allowance` int(2) NOT NULL DEFAULT '1',
  `with_nontaxable_allowance` int(2) NOT NULL DEFAULT '1',
  `status` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'INPROCESS',
  `lu_by` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_by` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `last_pay_adjustment`
--

CREATE TABLE `last_pay_adjustment` (
  `id` int(10) UNSIGNED NOT NULL,
  `last_pay_id` bigint(20) NOT NULL,
  `description` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `amount` decimal(8,2) NOT NULL DEFAULT '0.00',
  `lu_by` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_by` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `last_pay_deductions`
--

CREATE TABLE `last_pay_deductions` (
  `id` int(10) UNSIGNED NOT NULL,
  `last_pay_id` bigint(20) NOT NULL,
  `description` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `amount` decimal(8,2) NOT NULL DEFAULT '0.00',
  `lu_by` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_by` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `last_pay_payreg`
--

CREATE TABLE `last_pay_payreg` (
  `id` int(10) UNSIGNED NOT NULL,
  `last_pay_id` bigint(20) NOT NULL,
  `register_number` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `amount` decimal(8,2) NOT NULL DEFAULT '0.00',
  `lu_by` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_by` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2018_06_22_095742_create_deduction_masters_table', 1),
(12, '2018_06_29_071056_create_tax_tables_table', 3),
(13, '2018_06_28_052938_create_social_security_systems_table', 4),
(14, '2018_07_04_020405_create_philhealth_tables_table', 4),
(15, '2018_07_05_093646_create_pagibig_tables_table', 4),
(16, '2018_07_11_031312_create_payroll_register_table', 5),
(17, '2018_07_11_033854_create_payroll_register_group', 6),
(19, '2018_07_17_051950_create_payroll_register_attendance_summary', 7),
(20, '2018_07_23_014230_create_table_date_and_time_record', 8),
(23, '2018_06_27_062354_create_payroll_rates_table', 10),
(25, '2018_07_27_020049_create_payroll_register_deductions', 11),
(26, '2018_07_27_020119_create_payroll_register_additions', 11),
(27, '2018_07_09_101006_create_deduction_tables_table', 12),
(28, '2018_07_19_051733_create_addition_tables_table', 12),
(29, '2018_07_31_102146_create_payroll_register_sss', 13),
(31, '2018_08_01_070524_create_payroll_register_philhealth', 15),
(32, '2018_08_01_090548_create_payroll_register_pagibig', 16),
(33, '2018_08_01_093022_create_payroll_register_tax', 17),
(35, '2018_07_27_015150_create_payroll_register_summary_amount', 18),
(36, '2018_08_10_052649_create_payroll_varialbles', 19),
(37, '2018_08_13_020719_create_holidays_table', 20);

-- --------------------------------------------------------

--
-- Table structure for table `pagibig_tables`
--

CREATE TABLE `pagibig_tables` (
  `id` int(10) UNSIGNED NOT NULL,
  `compensation_from` decimal(8,2) NOT NULL,
  `compensation_to` decimal(8,2) NOT NULL,
  `notpercentage` int(11) NOT NULL DEFAULT '0',
  `percentage_employee_share` decimal(8,2) NOT NULL DEFAULT '0.00',
  `percentage_employer_share` decimal(8,2) NOT NULL DEFAULT '0.00',
  `value_employee_share` decimal(8,2) NOT NULL DEFAULT '0.00',
  `value_employer_share` decimal(8,2) NOT NULL DEFAULT '0.00',
  `created_by` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `lu_by` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `deleted` int(11) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `pagibig_tables`
--

INSERT INTO `pagibig_tables` (`id`, `compensation_from`, `compensation_to`, `notpercentage`, `percentage_employee_share`, `percentage_employer_share`, `value_employee_share`, `value_employer_share`, `created_by`, `lu_by`, `deleted`, `created_at`, `updated_at`) VALUES
(1, '0.00', '1500.00', 1, '1.00', '2.00', '100.00', '100.00', 'JM', 'gina castor', 0, '2018-07-08 14:36:16', '2018-10-11 23:52:45'),
(2, '1500.00', '999999.00', 1, '2.00', '2.00', '100.00', '100.00', 'JM', 'gina castor', 0, '2018-07-08 14:36:46', '2018-10-11 23:52:59');

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `payroll_rates`
--

CREATE TABLE `payroll_rates` (
  `id` int(10) UNSIGNED NOT NULL,
  `rate_code` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `rate_description` varchar(500) COLLATE utf8mb4_unicode_ci NOT NULL,
  `rate` decimal(8,3) NOT NULL DEFAULT '0.000',
  `dropdown` int(11) NOT NULL DEFAULT '0',
  `lu_by` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `payroll_rates`
--

INSERT INTO `payroll_rates` (`id`, `rate_code`, `rate_description`, `rate`, `dropdown`, `lu_by`, `created_at`, `updated_at`) VALUES
(1, 'reg', 'Regular', '1.000', 1, 'Marlon Belarmino', NULL, '2018-08-09 02:48:06'),
(2, 'spcl_nw', 'Special Non-Working Holiday', '1.300', 1, 'Marlon Belarmino', NULL, '2018-08-09 02:48:06'),
(3, 'spcl_w', 'Special Working Holiday', '1.300', 1, 'Marlon Belarmino', NULL, '2018-08-09 02:48:06'),
(4, 'legal', 'Legal Holiday', '2.000', 1, 'Marlon Belarmino', NULL, '2018-08-09 02:48:07'),
(5, 'rd_reg', 'Restday Regular', '1.300', 1, 'Marlon Belarmino', NULL, '2018-08-09 02:48:07'),
(6, 'rd_spcl_nw', 'Restday Special Non-Working Holiday', '1.800', 1, 'Marlon Belarmino', NULL, '2018-08-09 02:48:07'),
(7, 'rd_spcl_w', 'Restday Special Working Holiday', '1.800', 1, 'Marlon Belarmino', NULL, '2018-08-09 02:48:07'),
(8, 'rd_legal', 'Restday Legal Holiday', '2.900', 1, 'Marlon Belarmino', NULL, '2018-08-09 02:48:07'),
(9, 'ot_reg', 'Overtime Regular', '1.250', 0, 'Marlon Belarmino', NULL, '2018-08-09 02:48:07'),
(10, 'ot_spcl_nw', 'Overtime Special Non-Working Holiday', '1.690', 0, 'Marlon Belarmino', NULL, '2018-08-09 02:48:07'),
(11, 'ot_spcl_w', 'Overtime Special Working Holiday', '1.690', 0, 'Marlon Belarmino', NULL, '2018-08-09 02:48:07'),
(12, 'ot_legal', 'Overtime Legal Holiday', '2.600', 0, 'Marlon Belarmino', NULL, '2018-08-09 02:48:07'),
(13, 'ot_rd', 'Overtime Restday', '1.690', 0, 'Marlon Belarmino', NULL, '2018-08-09 02:48:07'),
(14, 'ot_rd_spcl_nw', 'Overtime Restday Special Non-Working Holiday', '1.950', 0, 'Marlon Belarmino', NULL, '2018-08-09 02:48:07'),
(15, 'ot_rd_spcl_w', 'Overtime Restday Special Working Holiday', '1.950', 0, 'Marlon Belarmino', NULL, '2018-08-09 02:48:07'),
(16, 'ot_rd_legal', 'Overtime Restday Legal Holiday', '3.380', 0, 'Marlon Belarmino', NULL, '2018-08-09 02:48:07'),
(17, 'nd_reg', 'Night Differential Regular', '0.100', 0, 'Marlon Belarmino', NULL, '2018-08-09 02:48:07'),
(18, 'nd_spcl_nw', 'Night Differential Special Non-Working Holiday', '0.130', 0, 'Marlon Belarmino', NULL, '2018-08-09 02:48:07'),
(19, 'nd_spcl_w', 'Night Differential Special Working Holiday', '0.130', 0, 'Marlon Belarmino', NULL, '2018-08-09 02:48:07'),
(20, 'nd_legal', 'Night Differential Legal Holiday', '0.200', 0, 'Marlon Belarmino', NULL, '2018-08-09 02:48:07'),
(21, 'nd_reg_ot', 'Night Differential Overtime', '0.125', 0, 'Marlon Belarmino', NULL, '2018-08-09 02:48:07'),
(22, 'nd_rd_xs_ot', 'Night Differential Restday Excess Overtime', '0.169', 0, 'Marlon Belarmino', NULL, '2018-08-09 02:48:07'),
(23, 'nd_legal_ot', 'Night Differential Legal Holiday Overtime', '0.260', 0, 'Marlon Belarmino', NULL, '2018-08-09 02:48:07'),
(24, 'nd_rd_ot', 'Night Differential Restday Overtime', '0.169', 0, 'Marlon Belarmino', NULL, '2018-08-09 02:48:07'),
(25, 'nd_spcl_nw_ot', 'Night Differential Special Non-Working Holiday Overtime', '0.169', 0, 'Marlon Belarmino', NULL, '2018-08-09 02:48:07'),
(26, 'nd_rd_spcl_nw', 'Night Differential Restday Special Non-Working Holiday', '0.150', 0, 'Marlon Belarmino', NULL, '2018-08-09 02:48:07'),
(27, 'nd_rd_spcl_nw_ot', 'Night Differential Resday Special Non-Working Holiday Overtime', '0.195', 0, 'Marlon Belarmino', NULL, '2018-08-09 02:48:07'),
(28, 'nd_rd_spcl_w', 'Night Differential Restday Special Working Holiday', '0.150', 0, 'Marlon Belarmino', NULL, '2018-08-09 02:48:07'),
(29, 'nd_rd_spcl_w_ot', 'Night Differential Resday Special Working Holiday Overtime', '0.195', 0, 'Marlon Belarmino', NULL, '2018-08-09 02:48:07'),
(30, 'nd_rd_leg', 'Night Differential Restday Legal Holiday', '0.260', 0, 'Marlon Belarmino', NULL, '2018-08-09 02:48:07'),
(31, 'nd_rd_leg_ot', 'Night Differential Restday Legal Holiday Overtime', '0.338', 0, 'Marlon Belarmino', NULL, '2018-08-09 02:48:08'),
(32, 'nd_spcl_w_ot', 'Night Differential Special Working Holiday Overtime', '0.169', 0, 'Marlon Belarmino', NULL, '2018-08-09 02:48:08'),
(33, 'nd_rd', 'Night Differential Restday', '0.130', 0, 'admin', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `payroll_register`
--

CREATE TABLE `payroll_register` (
  `id` int(10) UNSIGNED NOT NULL,
  `register_number` varchar(15) COLLATE utf8mb4_unicode_ci NOT NULL,
  `company_ind` bigint(20) NOT NULL,
  `pay_date_from` date NOT NULL,
  `pay_date_to` date NOT NULL,
  `pay_date` date NOT NULL,
  `status` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'INPROCESS',
  `release_date` date DEFAULT NULL,
  `pay_term` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'First Cutoff',
  `created_by` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `lu_by` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `deleted` int(11) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `payroll_register`
--

INSERT INTO `payroll_register` (`id`, `register_number`, `company_ind`, `pay_date_from`, `pay_date_to`, `pay_date`, `status`, `release_date`, `pay_term`, `created_by`, `lu_by`, `deleted`, `created_at`, `updated_at`) VALUES
(1, '202000001', 1, '2020-01-21', '2020-02-05', '2020-02-13', 'CANCELLED', NULL, 'First Cutoff', 'Payroll Admin', 'Payroll Admin', 0, '2020-03-04 01:57:54', '2020-03-04 01:59:24'),
(2, '202000002', 1, '2020-01-21', '2020-02-05', '2020-02-13', 'CANCELLED', NULL, 'First Cutoff', 'Payroll Admin', 'Payroll Admin', 0, '2020-03-04 02:00:04', '2020-03-04 02:00:57'),
(3, '202000003', 1, '2020-01-21', '2020-02-05', '2020-02-13', 'CANCELLED', NULL, 'First Cutoff', 'Payroll Admin', 'Payroll Admin', 0, '2020-03-04 02:02:19', '2020-03-04 02:03:04'),
(4, '202000004', 1, '2020-01-21', '2020-02-05', '2020-02-13', 'CANCELLED', NULL, 'First Cutoff', 'Payroll Admin', 'Payroll Admin', 0, '2020-03-04 02:03:43', '2020-03-04 02:04:56'),
(5, '202000005', 1, '2020-01-21', '2020-02-05', '2020-02-13', 'CANCELLED', NULL, 'First Cutoff', 'Payroll Admin', 'Payroll Admin', 0, '2020-03-04 02:05:29', '2020-03-04 02:35:21'),
(6, '202000006', 1, '2020-01-21', '2020-02-05', '2020-02-13', 'CANCELLED', NULL, 'First Cutoff', 'Payroll Admin', 'Payroll Admin', 0, '2020-03-04 02:35:47', '2020-03-04 02:39:53'),
(7, '202000007', 1, '2020-01-21', '2020-02-05', '2020-02-13', 'RELEASED', NULL, 'First Cutoff', 'Payroll Admin', 'Payroll Admin', 0, '2020-03-04 02:40:23', '2020-03-04 02:41:09'),
(8, '202000008', 1, '2020-02-06', '2020-02-20', '2020-02-28', 'CANCELLED', NULL, 'Last Cutoff', 'Payroll Admin', 'Payroll Admin', 0, '2020-03-04 03:26:01', '2020-03-04 03:27:02'),
(9, '202000009', 1, '2020-02-06', '2020-02-20', '2020-02-28', 'RELEASED', NULL, 'Last Cutoff', 'Payroll Admin', 'Payroll Admin', 0, '2020-03-04 03:27:27', '2020-03-04 03:27:55');

-- --------------------------------------------------------

--
-- Table structure for table `payroll_register_additions`
--

CREATE TABLE `payroll_register_additions` (
  `id` int(10) UNSIGNED NOT NULL,
  `register_number` varchar(15) COLLATE utf8mb4_unicode_ci NOT NULL,
  `company_id` varchar(15) COLLATE utf8mb4_unicode_ci NOT NULL,
  `addition_id` bigint(20) NOT NULL,
  `amount` decimal(15,2) NOT NULL DEFAULT '0.00',
  `term_number` int(11) NOT NULL DEFAULT '0',
  `status` varchar(15) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'COMPUTE',
  `taxable` int(2) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `payroll_register_attendance_summary`
--

CREATE TABLE `payroll_register_attendance_summary` (
  `id` int(10) UNSIGNED NOT NULL,
  `register_number` varchar(15) COLLATE utf8mb4_unicode_ci NOT NULL,
  `company_id` varchar(15) COLLATE utf8mb4_unicode_ci NOT NULL,
  `employee_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `company_ind` bigint(20) NOT NULL,
  `group_ind` bigint(20) NOT NULL,
  `total_days` decimal(8,2) NOT NULL DEFAULT '0.00',
  `late_counts` int(11) NOT NULL DEFAULT '0',
  `late_hrs` decimal(8,2) NOT NULL DEFAULT '0.00',
  `absent_count` decimal(8,2) NOT NULL DEFAULT '0.00',
  `undertime_hrs` decimal(8,2) NOT NULL DEFAULT '0.00',
  `working_hrs_reg` decimal(8,2) NOT NULL DEFAULT '0.00',
  `working_hrs_leg` decimal(8,2) NOT NULL DEFAULT '0.00',
  `working_hrs_spcl_nw` decimal(8,2) NOT NULL DEFAULT '0.00',
  `working_hrs_spcl_w` decimal(8,2) NOT NULL DEFAULT '0.00',
  `overtime_hrs_reg` decimal(8,2) NOT NULL DEFAULT '0.00',
  `overtime_hrs_leg` decimal(8,2) NOT NULL DEFAULT '0.00',
  `overtime_hrs_spcl_nw` decimal(8,2) NOT NULL DEFAULT '0.00',
  `overtime_hrs_spcl_w` decimal(8,2) NOT NULL DEFAULT '0.00',
  `overtime_hrs_rd` decimal(8,2) NOT NULL DEFAULT '0.00',
  `overtime_hrs_rd_spcl_nw` decimal(8,2) NOT NULL DEFAULT '0.00',
  `overtime_hrs_rd_spcl_w` decimal(8,2) NOT NULL DEFAULT '0.00',
  `overtime_hrs_rd_leg` decimal(8,2) NOT NULL DEFAULT '0.00',
  `nd_hrs_reg` decimal(8,2) NOT NULL DEFAULT '0.00',
  `nd_hrs_leg` decimal(8,2) NOT NULL DEFAULT '0.00',
  `nd_hrs_spcl_nw` decimal(8,2) NOT NULL DEFAULT '0.00',
  `nd_hrs_spcl_w` decimal(8,2) NOT NULL DEFAULT '0.00',
  `nd_hrs_rd` decimal(11,2) NOT NULL DEFAULT '0.00',
  `nd_hrs_reg_ot` decimal(8,2) NOT NULL DEFAULT '0.00',
  `nd_hrs_spcl_nw_ot` decimal(8,2) NOT NULL DEFAULT '0.00',
  `nd_hrs_spcl_w_ot` decimal(8,2) NOT NULL DEFAULT '0.00',
  `nd_hrs_leg_ot` decimal(8,2) NOT NULL DEFAULT '0.00',
  `nd_hrs_rd_ot` decimal(8,2) NOT NULL DEFAULT '0.00',
  `nd_hrs_xs_ot` decimal(8,2) NOT NULL DEFAULT '0.00',
  `nd_hrs_rd_spcl_nw` decimal(8,2) NOT NULL DEFAULT '0.00',
  `nd_hrs_rd_spcl_nw_ot` decimal(8,2) NOT NULL DEFAULT '0.00',
  `nd_hrs_rd_spcl_w` decimal(8,2) NOT NULL DEFAULT '0.00',
  `nd_hrs_rd_spcl_w_ot` decimal(8,2) NOT NULL DEFAULT '0.00',
  `nd_hrs_rd_leg` decimal(8,2) NOT NULL DEFAULT '0.00',
  `nd_hrs_rd_leg_ot` decimal(8,2) NOT NULL DEFAULT '0.00',
  `rd_hrs_reg` decimal(8,2) NOT NULL DEFAULT '0.00',
  `rd_hrs_leg` decimal(8,2) NOT NULL DEFAULT '0.00',
  `rd_hrs_spcl_nw` decimal(8,2) NOT NULL DEFAULT '0.00',
  `rd_hrs_spcl_w` decimal(8,2) NOT NULL DEFAULT '0.00',
  `leave_wpay_count` decimal(8,2) NOT NULL DEFAULT '0.00',
  `leave_wopay_count` decimal(8,2) NOT NULL DEFAULT '0.00',
  `over_break_hrs` decimal(8,2) NOT NULL DEFAULT '0.00',
  `holiday_absent` int(11) NOT NULL DEFAULT '0',
  `created_by` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `lu_by` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `deleted` int(11) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `payroll_register_attendance_summary`
--

INSERT INTO `payroll_register_attendance_summary` (`id`, `register_number`, `company_id`, `employee_name`, `company_ind`, `group_ind`, `total_days`, `late_counts`, `late_hrs`, `absent_count`, `undertime_hrs`, `working_hrs_reg`, `working_hrs_leg`, `working_hrs_spcl_nw`, `working_hrs_spcl_w`, `overtime_hrs_reg`, `overtime_hrs_leg`, `overtime_hrs_spcl_nw`, `overtime_hrs_spcl_w`, `overtime_hrs_rd`, `overtime_hrs_rd_spcl_nw`, `overtime_hrs_rd_spcl_w`, `overtime_hrs_rd_leg`, `nd_hrs_reg`, `nd_hrs_leg`, `nd_hrs_spcl_nw`, `nd_hrs_spcl_w`, `nd_hrs_rd`, `nd_hrs_reg_ot`, `nd_hrs_spcl_nw_ot`, `nd_hrs_spcl_w_ot`, `nd_hrs_leg_ot`, `nd_hrs_rd_ot`, `nd_hrs_xs_ot`, `nd_hrs_rd_spcl_nw`, `nd_hrs_rd_spcl_nw_ot`, `nd_hrs_rd_spcl_w`, `nd_hrs_rd_spcl_w_ot`, `nd_hrs_rd_leg`, `nd_hrs_rd_leg_ot`, `rd_hrs_reg`, `rd_hrs_leg`, `rd_hrs_spcl_nw`, `rd_hrs_spcl_w`, `leave_wpay_count`, `leave_wopay_count`, `over_break_hrs`, `holiday_absent`, `created_by`, `lu_by`, `deleted`, `created_at`, `updated_at`) VALUES
(1, '202000007', '2017-083', 'ADVINCULA, KRIS NINO MARCO', 1, 15, '7.00', 0, '0.00', '5.00', '6.75', '3.25', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '4.00', '0.00', 0, 'Payroll Admin', 'Payroll Admin', 0, '2020-03-04 02:40:24', '2020-03-04 02:40:24'),
(2, '202000007', '2018-004', 'ARGALES, ROME AUBREY', 1, 15, '1.00', 0, '0.00', '11.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '10.00', '0.00', 0, 'Payroll Admin', 'Payroll Admin', 0, '2020-03-04 02:40:24', '2020-03-04 02:40:24'),
(3, '202000007', '2018-040', 'BIÑAS, KENNETH JOSHUA', 1, 15, '9.00', 0, '0.00', '3.00', '25.48', '14.52', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '2.00', '0.00', 0, 'Payroll Admin', 'Payroll Admin', 0, '2020-03-04 02:40:25', '2020-03-04 02:40:25'),
(4, '202000007', '2017-082', 'FLORES, JUAN KARLO', 1, 15, '7.00', 0, '0.00', '5.00', '24.71', '35.30', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '4.00', '0.00', 0, 'Payroll Admin', 'Payroll Admin', 0, '2020-03-04 02:40:25', '2020-03-04 02:40:25'),
(5, '202000007', '2015-056', 'INGUITO, KIMBERLY  MAE', 1, 15, '0.00', 0, '0.00', '12.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '11.00', '0.00', 0, 'Payroll Admin', 'Payroll Admin', 0, '2020-03-04 02:40:26', '2020-03-04 02:40:26'),
(6, '202000007', '2011-209', 'KEMPIS, MARK ARTHUR', 1, 15, '0.00', 0, '0.00', '12.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '11.00', '0.00', 0, 'Payroll Admin', 'Payroll Admin', 0, '2020-03-04 02:40:26', '2020-03-04 02:40:26'),
(7, '202000007', '2015-040', 'USON, RACHELLE HYACINTH', 1, 15, '0.00', 0, '0.00', '12.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '11.00', '0.00', 0, 'Payroll Admin', 'Payroll Admin', 0, '2020-03-04 02:40:26', '2020-03-04 02:40:26'),
(8, '202000007', '2013-341', 'VELASCO, TEEJAY', 1, 15, '6.00', 0, '0.00', '7.00', '19.29', '32.86', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '6.00', '0.00', 0, 'Payroll Admin', 'Payroll Admin', 0, '2020-03-04 02:40:27', '2020-03-04 02:40:27'),
(9, '202000009', '2017-083', 'ADVINCULA, KRIS NINO MARCO', 1, 15, '0.00', 0, '0.00', '11.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '4.00', '0.00', 0, 'Payroll Admin', 'Payroll Admin', 0, '2020-03-04 03:27:28', '2020-03-04 03:27:28'),
(10, '202000009', '2018-004', 'ARGALES, ROME AUBREY', 1, 15, '0.00', 0, '0.00', '11.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '5.00', '0.00', 0, 'Payroll Admin', 'Payroll Admin', 0, '2020-03-04 03:27:29', '2020-03-04 03:27:29'),
(11, '202000009', '2018-040', 'BIÑAS, KENNETH JOSHUA', 1, 15, '2.00', 0, '0.00', '9.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '2.00', '0.00', 0, 'Payroll Admin', 'Payroll Admin', 0, '2020-03-04 03:27:31', '2020-03-04 03:27:31'),
(12, '202000009', '2017-082', 'FLORES, JUAN KARLO', 1, 15, '0.00', 0, '0.00', '11.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '4.00', '0.00', 0, 'Payroll Admin', 'Payroll Admin', 0, '2020-03-04 03:27:32', '2020-03-04 03:27:32'),
(13, '202000009', '2015-056', 'INGUITO, KIMBERLY  MAE', 1, 15, '0.00', 0, '0.00', '11.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '5.00', '0.00', 0, 'Payroll Admin', 'Payroll Admin', 0, '2020-03-04 03:27:34', '2020-03-04 03:27:34'),
(14, '202000009', '2011-209', 'KEMPIS, MARK ARTHUR', 1, 15, '0.00', 0, '0.00', '11.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '4.00', '0.00', 0, 'Payroll Admin', 'Payroll Admin', 0, '2020-03-04 03:27:35', '2020-03-04 03:27:35'),
(15, '202000009', '2015-040', 'USON, RACHELLE HYACINTH', 1, 15, '0.00', 0, '0.00', '11.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '4.00', '0.00', 0, 'Payroll Admin', 'Payroll Admin', 0, '2020-03-04 03:27:36', '2020-03-04 03:27:36'),
(16, '202000009', '2013-341', 'VELASCO, TEEJAY', 1, 15, '3.00', 1, '8.00', '10.00', '0.00', '30.50', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '11.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '11.00', '0.00', '0.00', '0.00', '0.00', '4.00', '0.00', 0, 'Payroll Admin', 'Payroll Admin', 0, '2020-03-04 03:27:37', '2020-03-04 03:27:37');

-- --------------------------------------------------------

--
-- Table structure for table `payroll_register_deductions`
--

CREATE TABLE `payroll_register_deductions` (
  `id` int(10) UNSIGNED NOT NULL,
  `register_number` varchar(15) COLLATE utf8mb4_unicode_ci NOT NULL,
  `company_id` varchar(15) COLLATE utf8mb4_unicode_ci NOT NULL,
  `deduction_transaction_id` bigint(20) NOT NULL,
  `amount` decimal(15,2) NOT NULL DEFAULT '0.00',
  `term_number` int(11) NOT NULL DEFAULT '0',
  `status` varchar(15) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'COMPUTE',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `payroll_register_group`
--

CREATE TABLE `payroll_register_group` (
  `id` int(10) UNSIGNED NOT NULL,
  `register_number` varchar(15) COLLATE utf8mb4_unicode_ci NOT NULL,
  `group_ind` bigint(20) NOT NULL,
  `status` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'INPROCESS',
  `created_by` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `lu_by` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `deleted` int(11) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `payroll_register_group`
--

INSERT INTO `payroll_register_group` (`id`, `register_number`, `group_ind`, `status`, `created_by`, `lu_by`, `deleted`, `created_at`, `updated_at`) VALUES
(1, '202000001', 15, 'INPROCESS', 'Payroll Admin', 'Payroll Admin', 0, '2020-03-04 01:57:54', '2020-03-04 01:57:54'),
(2, '202000002', 15, 'INPROCESS', 'Payroll Admin', 'Payroll Admin', 0, '2020-03-04 02:00:04', '2020-03-04 02:00:04'),
(3, '202000003', 15, 'INPROCESS', 'Payroll Admin', 'Payroll Admin', 0, '2020-03-04 02:02:20', '2020-03-04 02:02:20'),
(4, '202000004', 15, 'INPROCESS', 'Payroll Admin', 'Payroll Admin', 0, '2020-03-04 02:03:43', '2020-03-04 02:03:43'),
(5, '202000005', 15, 'INPROCESS', 'Payroll Admin', 'Payroll Admin', 0, '2020-03-04 02:05:29', '2020-03-04 02:05:29'),
(6, '202000006', 15, 'INPROCESS', 'Payroll Admin', 'Payroll Admin', 0, '2020-03-04 02:35:47', '2020-03-04 02:35:47'),
(7, '202000007', 15, 'RELEASED', 'Payroll Admin', 'Payroll Admin', 0, '2020-03-04 02:40:24', '2020-03-04 02:41:09'),
(8, '202000008', 15, 'INPROCESS', 'Payroll Admin', 'Payroll Admin', 0, '2020-03-04 03:26:01', '2020-03-04 03:26:01'),
(9, '202000009', 15, 'RELEASED', 'Payroll Admin', 'Payroll Admin', 0, '2020-03-04 03:27:27', '2020-03-04 03:27:54');

-- --------------------------------------------------------

--
-- Table structure for table `payroll_register_pagibig`
--

CREATE TABLE `payroll_register_pagibig` (
  `id` int(10) UNSIGNED NOT NULL,
  `register_number` varchar(15) COLLATE utf8mb4_unicode_ci NOT NULL,
  `company_id` varchar(15) COLLATE utf8mb4_unicode_ci NOT NULL,
  `pagibig_number` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `pagibig_table_id` bigint(20) NOT NULL,
  `gross` decimal(11,2) NOT NULL DEFAULT '0.00',
  `employee_share` decimal(11,2) NOT NULL DEFAULT '0.00',
  `employer_share` decimal(11,2) NOT NULL DEFAULT '0.00',
  `status` varchar(15) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'COMPUTE',
  `pay_date` date NOT NULL,
  `pay_term` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `payroll_register_pagibig`
--

INSERT INTO `payroll_register_pagibig` (`id`, `register_number`, `company_id`, `pagibig_number`, `pagibig_table_id`, `gross`, `employee_share`, `employer_share`, `status`, `pay_date`, `pay_term`, `created_at`, `updated_at`) VALUES
(1, '202000007', '2017-083', '121186802920', 2, '3328.25', '100.00', '100.00', 'RELEASED', '2020-02-13', 'First Cutoff', '2020-03-04 02:40:53', '2020-03-04 02:41:09'),
(2, '202000007', '2018-004', '121084706567', 2, '-85.02', '0.00', '0.00', 'RELEASED', '2020-02-13', 'First Cutoff', '2020-03-04 02:40:53', '2020-03-04 02:41:09'),
(3, '202000007', '2018-040', '121226871959', 2, '3359.71', '100.00', '100.00', 'RELEASED', '2020-02-13', 'First Cutoff', '2020-03-04 02:40:54', '2020-03-04 02:41:09'),
(4, '202000007', '2017-082', '121121815159', 2, '2122.60', '100.00', '100.00', 'RELEASED', '2020-02-13', 'First Cutoff', '2020-03-04 02:40:54', '2020-03-04 02:41:09'),
(5, '202000007', '2015-056', '1211-37161622', 1, '0.00', '0.00', '0.00', 'RELEASED', '2020-02-13', 'First Cutoff', '2020-03-04 02:40:55', '2020-03-04 02:41:09'),
(6, '202000007', '2011-209', '1210-13117124', 1, '0.00', '0.00', '0.00', 'RELEASED', '2020-02-13', 'First Cutoff', '2020-03-04 02:40:56', '2020-03-04 02:41:09'),
(7, '202000007', '2015-040', '1210-29222053', 1, '0.00', '0.00', '0.00', 'RELEASED', '2020-02-13', 'First Cutoff', '2020-03-04 02:40:56', '2020-03-04 02:41:09'),
(8, '202000007', '2013-341', '121116336201', 1, '1197.64', '100.00', '100.00', 'RELEASED', '2020-02-13', 'First Cutoff', '2020-03-04 02:40:56', '2020-03-04 02:41:09'),
(9, '202000009', '2017-083', '121186802920', 2, '0.00', '0.00', '0.00', 'RELEASED', '2020-02-28', 'Last Cutoff', '2020-03-04 03:27:44', '2020-03-04 03:27:55'),
(10, '202000009', '2018-004', '121084706567', 2, '0.00', '0.00', '0.00', 'RELEASED', '2020-02-28', 'Last Cutoff', '2020-03-04 03:27:45', '2020-03-04 03:27:55'),
(11, '202000009', '2018-040', '121226871959', 2, '1203.78', '0.00', '0.00', 'RELEASED', '2020-02-28', 'Last Cutoff', '2020-03-04 03:27:45', '2020-03-04 03:27:55'),
(12, '202000009', '2017-082', '121121815159', 2, '0.00', '0.00', '0.00', 'RELEASED', '2020-02-28', 'Last Cutoff', '2020-03-04 03:27:46', '2020-03-04 03:27:55'),
(13, '202000009', '2015-056', '1211-37161622', 1, '0.00', '0.00', '0.00', 'RELEASED', '2020-02-28', 'Last Cutoff', '2020-03-04 03:27:46', '2020-03-04 03:27:55'),
(14, '202000009', '2011-209', '1210-13117124', 1, '0.00', '0.00', '0.00', 'RELEASED', '2020-02-28', 'Last Cutoff', '2020-03-04 03:27:47', '2020-03-04 03:27:55'),
(15, '202000009', '2015-040', '1210-29222053', 1, '0.00', '0.00', '0.00', 'RELEASED', '2020-02-28', 'Last Cutoff', '2020-03-04 03:27:47', '2020-03-04 03:27:55'),
(16, '202000009', '2013-341', '121116336201', 2, '2230.08', '0.00', '0.00', 'RELEASED', '2020-02-28', 'Last Cutoff', '2020-03-04 03:27:48', '2020-03-04 03:27:55');

-- --------------------------------------------------------

--
-- Table structure for table `payroll_register_philhealth`
--

CREATE TABLE `payroll_register_philhealth` (
  `id` int(10) UNSIGNED NOT NULL,
  `register_number` varchar(15) COLLATE utf8mb4_unicode_ci NOT NULL,
  `company_id` varchar(15) COLLATE utf8mb4_unicode_ci NOT NULL,
  `philhealth_number` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phil_table_id` bigint(20) NOT NULL,
  `gross` decimal(11,2) NOT NULL DEFAULT '0.00',
  `employee_share` decimal(11,2) NOT NULL DEFAULT '0.00',
  `employer_share` decimal(11,2) NOT NULL DEFAULT '0.00',
  `status` varchar(15) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'COMPUTE',
  `pay_date` date NOT NULL,
  `pay_term` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `payroll_register_philhealth`
--

INSERT INTO `payroll_register_philhealth` (`id`, `register_number`, `company_id`, `philhealth_number`, `phil_table_id`, `gross`, `employee_share`, `employer_share`, `status`, `pay_date`, `pay_term`, `created_at`, `updated_at`) VALUES
(1, '202000007', '2017-083', '032512246949', 1, '3328.25', '137.50', '0.00', 'RELEASED', '2020-02-13', 'First Cutoff', '2020-03-04 02:40:52', '2020-03-04 02:41:09'),
(2, '202000007', '2018-004', '020506734607', 3, '-85.02', '0.00', '0.00', 'RELEASED', '2020-02-13', 'First Cutoff', '2020-03-04 02:40:53', '2020-03-04 02:41:09'),
(3, '202000007', '2018-040', '010522855583', 1, '3359.71', '137.50', '0.00', 'RELEASED', '2020-02-13', 'First Cutoff', '2020-03-04 02:40:54', '2020-03-04 02:41:09'),
(4, '202000007', '2017-082', '010519652639', 1, '2122.60', '137.50', '0.00', 'RELEASED', '2020-02-13', 'First Cutoff', '2020-03-04 02:40:54', '2020-03-04 02:41:09'),
(5, '202000007', '2015-056', '20511462984', 1, '0.00', '0.00', '0.00', 'RELEASED', '2020-02-13', 'First Cutoff', '2020-03-04 02:40:55', '2020-03-04 02:41:09'),
(6, '202000007', '2011-209', '20503495547', 1, '0.00', '0.00', '0.00', 'RELEASED', '2020-02-13', 'First Cutoff', '2020-03-04 02:40:56', '2020-03-04 02:41:09'),
(7, '202000007', '2015-040', '1.90266E+11', 1, '0.00', '0.00', '0.00', 'RELEASED', '2020-02-13', 'First Cutoff', '2020-03-04 02:40:56', '2020-03-04 02:41:09'),
(8, '202000007', '2013-341', '210251077325', 1, '1197.64', '137.50', '0.00', 'RELEASED', '2020-02-13', 'First Cutoff', '2020-03-04 02:40:56', '2020-03-04 02:41:09'),
(9, '202000009', '2017-083', '032512246949', 1, '0.00', '0.00', '0.00', 'RELEASED', '2020-02-28', 'Last Cutoff', '2020-03-04 03:27:44', '2020-03-04 03:27:54'),
(10, '202000009', '2018-004', '020506734607', 3, '0.00', '0.00', '0.00', 'RELEASED', '2020-02-28', 'Last Cutoff', '2020-03-04 03:27:45', '2020-03-04 03:27:54'),
(11, '202000009', '2018-040', '010522855583', 1, '1203.78', '0.00', '0.00', 'RELEASED', '2020-02-28', 'Last Cutoff', '2020-03-04 03:27:45', '2020-03-04 03:27:54'),
(12, '202000009', '2017-082', '010519652639', 1, '0.00', '0.00', '0.00', 'RELEASED', '2020-02-28', 'Last Cutoff', '2020-03-04 03:27:46', '2020-03-04 03:27:54'),
(13, '202000009', '2015-056', '20511462984', 1, '0.00', '0.00', '0.00', 'RELEASED', '2020-02-28', 'Last Cutoff', '2020-03-04 03:27:46', '2020-03-04 03:27:54'),
(14, '202000009', '2011-209', '20503495547', 1, '0.00', '0.00', '0.00', 'RELEASED', '2020-02-28', 'Last Cutoff', '2020-03-04 03:27:47', '2020-03-04 03:27:54'),
(15, '202000009', '2015-040', '1.90266E+11', 1, '0.00', '0.00', '0.00', 'RELEASED', '2020-02-28', 'Last Cutoff', '2020-03-04 03:27:47', '2020-03-04 03:27:54'),
(16, '202000009', '2013-341', '210251077325', 1, '2230.08', '0.00', '0.00', 'RELEASED', '2020-02-28', 'Last Cutoff', '2020-03-04 03:27:48', '2020-03-04 03:27:54');

-- --------------------------------------------------------

--
-- Table structure for table `payroll_register_sss`
--

CREATE TABLE `payroll_register_sss` (
  `id` int(10) UNSIGNED NOT NULL,
  `register_number` varchar(15) COLLATE utf8mb4_unicode_ci NOT NULL,
  `company_id` varchar(15) COLLATE utf8mb4_unicode_ci NOT NULL,
  `sss_number` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `sss_table_id` bigint(20) NOT NULL,
  `gross` decimal(8,2) NOT NULL DEFAULT '0.00',
  `employee_share` decimal(11,2) NOT NULL DEFAULT '0.00',
  `employer_share` decimal(11,2) NOT NULL DEFAULT '0.00',
  `ec` decimal(11,2) NOT NULL DEFAULT '0.00',
  `status` varchar(15) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'COMPUTE',
  `pay_date` date NOT NULL,
  `pay_term` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'First Cutoff',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `payroll_register_sss`
--

INSERT INTO `payroll_register_sss` (`id`, `register_number`, `company_id`, `sss_number`, `sss_table_id`, `gross`, `employee_share`, `employer_share`, `ec`, `status`, `pay_date`, `pay_term`, `created_at`, `updated_at`) VALUES
(1, '202000007', '2017-083', '34-6388464', 6, '3328.25', '127.20', '257.80', '10.00', 'RELEASED', '2020-02-13', 'First Cutoff', '2020-03-04 02:40:52', '2020-03-04 02:41:09'),
(2, '202000007', '2018-004', '3459892523', 31, '-85.02', '0.00', '0.00', '0.00', 'RELEASED', '2020-02-13', 'First Cutoff', '2020-03-04 02:40:53', '2020-03-04 02:41:09'),
(3, '202000007', '2018-040', '3456875048', 6, '3359.71', '127.20', '257.80', '10.00', 'RELEASED', '2020-02-13', 'First Cutoff', '2020-03-04 02:40:54', '2020-03-04 02:41:09'),
(4, '202000007', '2017-082', '3445522959', 3, '2122.60', '72.70', '147.30', '10.00', 'RELEASED', '2020-02-13', 'First Cutoff', '2020-03-04 02:40:54', '2020-03-04 02:41:09'),
(5, '202000007', '2015-056', '34-4920530-8', 31, '0.00', '0.00', '0.00', '0.00', 'RELEASED', '2020-02-13', 'First Cutoff', '2020-03-04 02:40:55', '2020-03-04 02:41:09'),
(6, '202000007', '2011-209', '34-0609755-9', 31, '0.00', '0.00', '0.00', '0.00', 'RELEASED', '2020-02-13', 'First Cutoff', '2020-03-04 02:40:56', '2020-03-04 02:41:09'),
(7, '202000007', '2015-040', '34-1808073-2', 31, '0.00', '0.00', '0.00', '0.00', 'RELEASED', '2020-02-13', 'First Cutoff', '2020-03-04 02:40:56', '2020-03-04 02:41:09'),
(8, '202000007', '2013-341', '3436933528', 1, '1197.64', '36.30', '73.70', '10.00', 'RELEASED', '2020-02-13', 'First Cutoff', '2020-03-04 02:40:56', '2020-03-04 02:41:09'),
(9, '202000009', '2017-083', '34-6388464', 6, '0.00', '0.00', '0.00', '0.00', 'RELEASED', '2020-02-28', 'Last Cutoff', '2020-03-04 03:27:44', '2020-03-04 03:27:54'),
(10, '202000009', '2018-004', '3459892523', 31, '0.00', '0.00', '0.00', '0.00', 'RELEASED', '2020-02-28', 'Last Cutoff', '2020-03-04 03:27:45', '2020-03-04 03:27:54'),
(11, '202000009', '2018-040', '3456875048', 8, '1203.78', '36.30', '73.70', '0.00', 'RELEASED', '2020-02-28', 'Last Cutoff', '2020-03-04 03:27:45', '2020-03-04 03:27:54'),
(12, '202000009', '2017-082', '3445522959', 3, '0.00', '0.00', '0.00', '0.00', 'RELEASED', '2020-02-28', 'Last Cutoff', '2020-03-04 03:27:46', '2020-03-04 03:27:54'),
(13, '202000009', '2015-056', '34-4920530-8', 31, '0.00', '0.00', '0.00', '0.00', 'RELEASED', '2020-02-28', 'Last Cutoff', '2020-03-04 03:27:46', '2020-03-04 03:27:54'),
(14, '202000009', '2011-209', '34-0609755-9', 31, '0.00', '0.00', '0.00', '0.00', 'RELEASED', '2020-02-28', 'Last Cutoff', '2020-03-04 03:27:47', '2020-03-04 03:27:54'),
(15, '202000009', '2015-040', '34-1808073-2', 31, '0.00', '0.00', '0.00', '0.00', 'RELEASED', '2020-02-28', 'Last Cutoff', '2020-03-04 03:27:47', '2020-03-04 03:27:54'),
(16, '202000009', '2013-341', '3436933528', 6, '2230.08', '90.90', '184.10', '0.00', 'RELEASED', '2020-02-28', 'Last Cutoff', '2020-03-04 03:27:47', '2020-03-04 03:27:54');

-- --------------------------------------------------------

--
-- Table structure for table `payroll_register_summary_amount`
--

CREATE TABLE `payroll_register_summary_amount` (
  `id` int(10) UNSIGNED NOT NULL,
  `register_number` varchar(15) COLLATE utf8mb4_unicode_ci NOT NULL,
  `company_id` varchar(15) COLLATE utf8mb4_unicode_ci NOT NULL,
  `employee_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `company_ind` bigint(20) NOT NULL,
  `group_ind` bigint(20) NOT NULL,
  `total_days` decimal(8,2) NOT NULL DEFAULT '0.00',
  `late_counts` int(11) NOT NULL DEFAULT '0',
  `late_amount` decimal(8,2) NOT NULL DEFAULT '0.00',
  `absent_count` decimal(8,2) NOT NULL DEFAULT '0.00',
  `absent_amount` decimal(8,2) NOT NULL DEFAULT '0.00',
  `nontaxable_allowance_absent_amount` decimal(8,2) NOT NULL DEFAULT '0.00',
  `taxable_allowance_absent_amount` decimal(8,2) NOT NULL DEFAULT '0.00',
  `nontaxallowance_late_under_amount` decimal(8,2) NOT NULL DEFAULT '0.00',
  `taxallowance_late_under_amount` decimal(8,2) NOT NULL DEFAULT '0.00',
  `undertime_amount` decimal(8,2) NOT NULL DEFAULT '0.00',
  `working_amount_reg` decimal(8,2) NOT NULL DEFAULT '0.00',
  `working_amount_leg` decimal(8,2) NOT NULL DEFAULT '0.00',
  `working_amount_spcl_nw` decimal(8,2) NOT NULL DEFAULT '0.00',
  `working_amount_spcl_w` decimal(8,2) NOT NULL DEFAULT '0.00',
  `overtime_amount_reg` decimal(8,2) NOT NULL DEFAULT '0.00',
  `overtime_amount_leg` decimal(8,2) NOT NULL DEFAULT '0.00',
  `overtime_amount_spcl_nw` decimal(8,2) NOT NULL DEFAULT '0.00',
  `overtime_amount_spcl_w` decimal(8,2) NOT NULL DEFAULT '0.00',
  `overtime_amount_rd` decimal(8,2) NOT NULL DEFAULT '0.00',
  `overtime_amount_rd_spcl_nw` decimal(8,2) NOT NULL DEFAULT '0.00',
  `overtime_amount_rd_spcl_w` decimal(8,2) NOT NULL DEFAULT '0.00',
  `overtime_amount_rd_leg` decimal(8,2) NOT NULL DEFAULT '0.00',
  `nd_amount_reg` decimal(8,2) NOT NULL DEFAULT '0.00',
  `nd_amount_leg` decimal(8,2) NOT NULL DEFAULT '0.00',
  `nd_amount_spcl_nw` decimal(8,2) NOT NULL DEFAULT '0.00',
  `nd_amount_spcl_w` decimal(8,2) NOT NULL DEFAULT '0.00',
  `nd_amount_rd` decimal(8,2) NOT NULL DEFAULT '0.00',
  `nd_amount_reg_ot` decimal(8,2) NOT NULL DEFAULT '0.00',
  `nd_amount_spcl_nw_ot` decimal(8,2) NOT NULL DEFAULT '0.00',
  `nd_amount_spcl_w_ot` decimal(8,2) NOT NULL DEFAULT '0.00',
  `nd_amount_leg_ot` decimal(8,2) NOT NULL DEFAULT '0.00',
  `nd_amount_rd_ot` decimal(8,2) NOT NULL DEFAULT '0.00',
  `nd_amount_xs_ot` decimal(8,2) NOT NULL DEFAULT '0.00',
  `nd_amount_rd_spcl_nw` decimal(8,2) NOT NULL DEFAULT '0.00',
  `nd_amount_rd_spcl_nw_ot` decimal(8,2) NOT NULL DEFAULT '0.00',
  `nd_amount_rd_spcl_w` decimal(8,2) NOT NULL DEFAULT '0.00',
  `nd_amount_rd_spcl_w_ot` decimal(8,2) NOT NULL DEFAULT '0.00',
  `nd_amount_rd_leg` decimal(8,2) NOT NULL DEFAULT '0.00',
  `nd_amount_rd_leg_ot` decimal(8,2) NOT NULL DEFAULT '0.00',
  `rd_amount_reg` decimal(8,2) NOT NULL DEFAULT '0.00',
  `rd_amount_leg` decimal(8,2) NOT NULL DEFAULT '0.00',
  `rd_amount_spcl_nw` decimal(8,2) NOT NULL DEFAULT '0.00',
  `rd_amount_spcl_w` decimal(8,2) NOT NULL DEFAULT '0.00',
  `leave_wpay_count` decimal(8,2) NOT NULL DEFAULT '0.00',
  `leave_wopay_count` decimal(8,2) NOT NULL DEFAULT '0.00',
  `taxable_allowance` decimal(11,2) NOT NULL DEFAULT '0.00',
  `nontaxable_allowance` decimal(11,2) NOT NULL DEFAULT '0.00',
  `gross_income` decimal(11,2) NOT NULL DEFAULT '0.00',
  `total_additions` decimal(11,2) NOT NULL DEFAULT '0.00',
  `other_deductions` decimal(11,2) NOT NULL DEFAULT '0.00',
  `sss_amount` decimal(11,2) NOT NULL DEFAULT '0.00',
  `phil_amount` decimal(11,2) NOT NULL DEFAULT '0.00',
  `pagibig_amount` decimal(11,2) NOT NULL DEFAULT '0.00',
  `tax_amount` decimal(11,2) NOT NULL DEFAULT '0.00',
  `total_deductions` decimal(11,2) NOT NULL DEFAULT '0.00',
  `net_income` decimal(11,2) NOT NULL DEFAULT '0.00',
  `basic_salary` decimal(11,2) NOT NULL DEFAULT '0.00',
  `emailed` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'NotSend',
  `hold_aslastpay` int(2) NOT NULL DEFAULT '0',
  `created_by` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `lu_by` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `deleted` int(11) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `payroll_register_summary_amount`
--

INSERT INTO `payroll_register_summary_amount` (`id`, `register_number`, `company_id`, `employee_name`, `company_ind`, `group_ind`, `total_days`, `late_counts`, `late_amount`, `absent_count`, `absent_amount`, `nontaxable_allowance_absent_amount`, `taxable_allowance_absent_amount`, `nontaxallowance_late_under_amount`, `taxallowance_late_under_amount`, `undertime_amount`, `working_amount_reg`, `working_amount_leg`, `working_amount_spcl_nw`, `working_amount_spcl_w`, `overtime_amount_reg`, `overtime_amount_leg`, `overtime_amount_spcl_nw`, `overtime_amount_spcl_w`, `overtime_amount_rd`, `overtime_amount_rd_spcl_nw`, `overtime_amount_rd_spcl_w`, `overtime_amount_rd_leg`, `nd_amount_reg`, `nd_amount_leg`, `nd_amount_spcl_nw`, `nd_amount_spcl_w`, `nd_amount_rd`, `nd_amount_reg_ot`, `nd_amount_spcl_nw_ot`, `nd_amount_spcl_w_ot`, `nd_amount_leg_ot`, `nd_amount_rd_ot`, `nd_amount_xs_ot`, `nd_amount_rd_spcl_nw`, `nd_amount_rd_spcl_nw_ot`, `nd_amount_rd_spcl_w`, `nd_amount_rd_spcl_w_ot`, `nd_amount_rd_leg`, `nd_amount_rd_leg_ot`, `rd_amount_reg`, `rd_amount_leg`, `rd_amount_spcl_nw`, `rd_amount_spcl_w`, `leave_wpay_count`, `leave_wopay_count`, `taxable_allowance`, `nontaxable_allowance`, `gross_income`, `total_additions`, `other_deductions`, `sss_amount`, `phil_amount`, `pagibig_amount`, `tax_amount`, `total_deductions`, `net_income`, `basic_salary`, `emailed`, `hold_aslastpay`, `created_by`, `lu_by`, `deleted`, `created_at`, `updated_at`) VALUES
(1, '202000007', '2017-083', 'ADVINCULA, KRIS NINO MARCO', 1, 15, '7.00', 0, '0.00', '5.00', '3222.00', '113.47', '0.00', '15.93', '0.00', '453.13', '3445.48', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '4.00', '0.00', '117.23', '3445.48', '0.00', '0.00', '127.20', '137.50', '100.00', '0.00', '364.70', '3080.78', '7003.38', 'NotSend', 0, 'Payroll Admin', 'Payroll Admin', 0, '2020-03-04 02:40:53', '2020-03-04 02:40:53'),
(2, '202000007', '2018-004', 'ARGALES, ROME AUBREY', 1, 15, '1.00', 0, '0.00', '11.00', '7088.40', '502.66', '0.00', '0.00', '0.00', '0.00', '-91.05', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '10.00', '0.00', '-6.03', '-91.05', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '-91.05', '7003.38', 'NotSend', 0, 'Payroll Admin', 'Payroll Admin', 0, '2020-03-04 02:40:54', '2020-03-04 02:40:54'),
(3, '202000007', '2018-040', 'BIÑAS, KENNETH JOSHUA', 1, 15, '9.00', 0, '0.00', '3.00', '1933.20', '0.00', '0.00', '0.00', '0.00', '1710.47', '3359.71', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '2.00', '0.00', '0.00', '3359.71', '0.00', '0.00', '127.20', '137.50', '100.00', '0.00', '364.70', '2995.01', '7003.38', 'NotSend', 0, 'Payroll Admin', 'Payroll Admin', 0, '2020-03-04 02:40:54', '2020-03-04 02:40:54'),
(4, '202000007', '2017-082', 'FLORES, JUAN KARLO', 1, 15, '7.00', 0, '0.00', '5.00', '3222.00', '228.48', '0.00', '117.62', '0.00', '1658.78', '2273.13', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '4.00', '0.00', '150.53', '2273.13', '0.00', '0.00', '72.70', '137.50', '100.00', '0.00', '310.20', '1962.93', '7003.38', 'NotSend', 0, 'Payroll Admin', 'Payroll Admin', 0, '2020-03-04 02:40:55', '2020-03-04 02:40:55'),
(5, '202000007', '2015-056', 'INGUITO, KIMBERLY  MAE', 1, 15, '0.00', 0, '0.00', '12.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '11.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '7003.38', 'NotSend', 0, 'Payroll Admin', 'Payroll Admin', 0, '2020-03-04 02:40:55', '2020-03-04 02:40:55'),
(6, '202000007', '2011-209', 'KEMPIS, MARK ARTHUR', 1, 15, '0.00', 0, '0.00', '12.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '11.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '7003.38', 'NotSend', 0, 'Payroll Admin', 'Payroll Admin', 0, '2020-03-04 02:40:56', '2020-03-04 02:40:56'),
(7, '202000007', '2015-040', 'USON, RACHELLE HYACINTH', 1, 15, '0.00', 0, '0.00', '12.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '11.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '9500.00', 'NotSend', 0, 'Payroll Admin', 'Payroll Admin', 0, '2020-03-04 02:40:56', '2020-03-04 02:40:56'),
(8, '202000007', '2013-341', 'VELASCO, TEEJAY', 1, 15, '6.00', 0, '0.00', '7.00', '4510.80', '1930.09', '0.00', '554.01', '0.00', '1294.94', '1710.16', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '6.00', '0.00', '512.52', '1710.16', '0.00', '0.00', '36.30', '137.50', '100.00', '0.00', '273.80', '1436.36', '7003.38', 'NotSend', 0, 'Payroll Admin', 'Payroll Admin', 0, '2020-03-04 02:40:56', '2020-03-04 02:40:56'),
(9, '202000009', '2017-083', 'ADVINCULA, KRIS NINO MARCO', 1, 15, '0.00', 0, '0.00', '11.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '4.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '7003.38', 'NotSend', 0, 'Payroll Admin', 'Payroll Admin', 0, '2020-03-04 03:27:45', '2020-03-04 03:27:45'),
(10, '202000009', '2018-004', 'ARGALES, ROME AUBREY', 1, 15, '0.00', 0, '0.00', '11.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '5.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '7003.38', 'NotSend', 0, 'Payroll Admin', 'Payroll Admin', 0, '2020-03-04 03:27:45', '2020-03-04 03:27:45'),
(11, '202000009', '2018-040', 'BIÑAS, KENNETH JOSHUA', 1, 15, '2.00', 0, '0.00', '9.00', '5799.60', '0.00', '0.00', '0.00', '0.00', '0.00', '1203.78', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '2.00', '0.00', '0.00', '1203.78', '0.00', '0.00', '36.30', '0.00', '0.00', '0.00', '36.30', '1167.48', '7003.38', 'NotSend', 0, 'Payroll Admin', 'Payroll Admin', 0, '2020-03-04 03:27:46', '2020-03-04 03:27:46'),
(12, '202000009', '2017-082', 'FLORES, JUAN KARLO', 1, 15, '0.00', 0, '0.00', '11.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '4.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '7003.38', 'NotSend', 0, 'Payroll Admin', 'Payroll Admin', 0, '2020-03-04 03:27:46', '2020-03-04 03:27:46'),
(13, '202000009', '2015-056', 'INGUITO, KIMBERLY  MAE', 1, 15, '0.00', 0, '0.00', '11.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '5.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '7003.38', 'NotSend', 0, 'Payroll Admin', 'Payroll Admin', 0, '2020-03-04 03:27:46', '2020-03-04 03:27:46'),
(14, '202000009', '2011-209', 'KEMPIS, MARK ARTHUR', 1, 15, '0.00', 0, '0.00', '11.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '4.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '7003.38', 'NotSend', 0, 'Payroll Admin', 'Payroll Admin', 0, '2020-03-04 03:27:47', '2020-03-04 03:27:47'),
(15, '202000009', '2015-040', 'USON, RACHELLE HYACINTH', 1, 15, '0.00', 0, '0.00', '11.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '4.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '9500.00', 'NotSend', 0, 'Payroll Admin', 'Payroll Admin', 0, '2020-03-04 03:27:47', '2020-03-04 03:27:47'),
(16, '202000009', '2013-341', 'VELASCO, TEEJAY', 1, 15, '3.00', 1, '537.04', '10.00', '6444.00', '2757.27', '0.00', '229.76', '0.00', '0.00', '31.93', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '1247.85', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '959.89', '0.00', '0.00', '0.00', '0.00', '4.00', '0.00', '9.59', '2239.67', '0.00', '0.00', '90.90', '0.00', '0.00', '0.00', '90.90', '2148.77', '7003.38', 'NotSend', 0, 'Payroll Admin', 'Payroll Admin', 0, '2020-03-04 03:27:48', '2020-03-04 03:27:48');

-- --------------------------------------------------------

--
-- Table structure for table `payroll_register_tax`
--

CREATE TABLE `payroll_register_tax` (
  `id` int(10) UNSIGNED NOT NULL,
  `register_number` varchar(15) COLLATE utf8mb4_unicode_ci NOT NULL,
  `company_id` varchar(15) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tin_number` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tin_table_id` bigint(20) NOT NULL,
  `gross` decimal(11,2) NOT NULL DEFAULT '0.00',
  `non_taxable_earnings` decimal(11,2) NOT NULL DEFAULT '0.00',
  `tax_income` decimal(11,2) NOT NULL DEFAULT '0.00',
  `wtax` decimal(11,2) NOT NULL DEFAULT '0.00',
  `status` varchar(15) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'COMPUTE',
  `pay_date` date NOT NULL,
  `pay_term` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `payroll_register_tax`
--

INSERT INTO `payroll_register_tax` (`id`, `register_number`, `company_id`, `tin_number`, `tin_table_id`, `gross`, `non_taxable_earnings`, `tax_income`, `wtax`, `status`, `pay_date`, `pay_term`, `created_at`, `updated_at`) VALUES
(1, '202000007', '2017-083', '341156336', 0, '3445.48', '117.23', '0.00', '0.00', 'RELEASED', '2020-02-13', 'First Cutoff', '2020-03-04 02:40:53', '2020-03-04 02:41:09'),
(2, '202000007', '2018-004', '314120318', 0, '-91.05', '-6.03', '0.00', '0.00', 'RELEASED', '2020-02-13', 'First Cutoff', '2020-03-04 02:40:53', '2020-03-04 02:41:09'),
(3, '202000007', '2018-040', '347860815', 0, '3359.71', '0.00', '0.00', '0.00', 'RELEASED', '2020-02-13', 'First Cutoff', '2020-03-04 02:40:54', '2020-03-04 02:41:09'),
(4, '202000007', '2017-082', '319578522', 0, '2273.13', '150.53', '0.00', '0.00', 'RELEASED', '2020-02-13', 'First Cutoff', '2020-03-04 02:40:55', '2020-03-04 02:41:09'),
(5, '202000007', '2015-056', '448-879-119', 0, '0.00', '0.00', '0.00', '0.00', 'RELEASED', '2020-02-13', 'First Cutoff', '2020-03-04 02:40:55', '2020-03-04 02:41:09'),
(6, '202000007', '2011-209', '252-492-172', 0, '0.00', '0.00', '0.00', '0.00', 'RELEASED', '2020-02-13', 'First Cutoff', '2020-03-04 02:40:56', '2020-03-04 02:41:09'),
(7, '202000007', '2015-040', '289-672-338', 0, '0.00', '0.00', '0.00', '0.00', 'RELEASED', '2020-02-13', 'First Cutoff', '2020-03-04 02:40:56', '2020-03-04 02:41:09'),
(8, '202000007', '2013-341', '436081439', 0, '1710.16', '512.52', '0.00', '0.00', 'RELEASED', '2020-02-13', 'First Cutoff', '2020-03-04 02:40:56', '2020-03-04 02:41:09'),
(9, '202000009', '2017-083', '341156336', 0, '0.00', '0.00', '0.00', '0.00', 'RELEASED', '2020-02-28', 'Last Cutoff', '2020-03-04 03:27:44', '2020-03-04 03:27:55'),
(10, '202000009', '2018-004', '314120318', 0, '0.00', '0.00', '0.00', '0.00', 'RELEASED', '2020-02-28', 'Last Cutoff', '2020-03-04 03:27:45', '2020-03-04 03:27:55'),
(11, '202000009', '2018-040', '347860815', 0, '1203.78', '0.00', '0.00', '0.00', 'RELEASED', '2020-02-28', 'Last Cutoff', '2020-03-04 03:27:46', '2020-03-04 03:27:55'),
(12, '202000009', '2017-082', '319578522', 0, '0.00', '0.00', '0.00', '0.00', 'RELEASED', '2020-02-28', 'Last Cutoff', '2020-03-04 03:27:46', '2020-03-04 03:27:55'),
(13, '202000009', '2015-056', '448-879-119', 0, '0.00', '0.00', '0.00', '0.00', 'RELEASED', '2020-02-28', 'Last Cutoff', '2020-03-04 03:27:46', '2020-03-04 03:27:55'),
(14, '202000009', '2011-209', '252-492-172', 0, '0.00', '0.00', '0.00', '0.00', 'RELEASED', '2020-02-28', 'Last Cutoff', '2020-03-04 03:27:47', '2020-03-04 03:27:55'),
(15, '202000009', '2015-040', '289-672-338', 0, '0.00', '0.00', '0.00', '0.00', 'RELEASED', '2020-02-28', 'Last Cutoff', '2020-03-04 03:27:47', '2020-03-04 03:27:55'),
(16, '202000009', '2013-341', '436081439', 0, '2239.67', '9.59', '0.00', '0.00', 'RELEASED', '2020-02-28', 'Last Cutoff', '2020-03-04 03:27:48', '2020-03-04 03:27:55');

-- --------------------------------------------------------

--
-- Table structure for table `payroll_variables`
--

CREATE TABLE `payroll_variables` (
  `id` int(10) UNSIGNED NOT NULL,
  `night_diff_start_time` time NOT NULL,
  `night_diff_end_time` time NOT NULL,
  `start_date_13th_month` date NOT NULL,
  `year_working_days` decimal(8,2) NOT NULL,
  `hrs_per_days` decimal(8,2) NOT NULL,
  `minimum_wage` decimal(8,2) NOT NULL,
  `lu_by` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_by` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `payroll_variables`
--

INSERT INTO `payroll_variables` (`id`, `night_diff_start_time`, `night_diff_end_time`, `start_date_13th_month`, `year_working_days`, `hrs_per_days`, `minimum_wage`, `lu_by`, `created_by`, `created_at`, `updated_at`) VALUES
(1, '22:00:00', '06:00:00', '2018-12-01', '313.00', '8.00', '537.00', 'gina castor', 'admin', '2018-08-09 16:00:00', '2019-02-19 19:43:04');

-- --------------------------------------------------------

--
-- Table structure for table `philhealth_tables`
--

CREATE TABLE `philhealth_tables` (
  `id` int(10) UNSIGNED NOT NULL,
  `salary_from` decimal(8,2) NOT NULL,
  `salary_to` decimal(8,2) NOT NULL,
  `monthly_premium` decimal(8,2) NOT NULL,
  `personal_share` decimal(8,2) NOT NULL,
  `employer_share` decimal(8,2) NOT NULL,
  `notpercentage` int(11) NOT NULL DEFAULT '0',
  `percentage` decimal(8,2) NOT NULL DEFAULT '0.00',
  `value` decimal(8,2) NOT NULL DEFAULT '0.00',
  `created_by` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `lu_by` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `deleted` int(11) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `philhealth_tables`
--

INSERT INTO `philhealth_tables` (`id`, `salary_from`, `salary_to`, `monthly_premium`, `personal_share`, `employer_share`, `notpercentage`, `percentage`, `value`, `created_by`, `lu_by`, `deleted`, `created_at`, `updated_at`) VALUES
(1, '0.00', '10000.00', '275.00', '137.50', '0.00', 0, '2.75', '0.00', 'JM', 'Payroll Admin', 0, '2018-07-08 22:31:22', '2018-10-12 02:01:41'),
(2, '10000.01', '39999.99', '1099.99', '549.99', '0.00', 0, '2.75', '0.00', 'JM', 'gina castor', 0, '2018-07-08 22:32:54', '2018-10-11 23:59:01'),
(3, '40000.00', '999999.00', '1100.00', '550.00', '0.00', 0, '2.75', '0.00', 'JM', 'gina castor', 0, '2018-07-08 22:34:27', '2018-10-11 23:59:14');

-- --------------------------------------------------------

--
-- Table structure for table `social_security_systems`
--

CREATE TABLE `social_security_systems` (
  `id` int(10) UNSIGNED NOT NULL,
  `compensation_from` decimal(8,2) NOT NULL,
  `compensation_to` decimal(8,2) NOT NULL,
  `monthly_salary_credit` decimal(8,2) NOT NULL,
  `ss_er` decimal(8,2) NOT NULL,
  `ss_ee` decimal(8,2) NOT NULL,
  `ss_total` decimal(8,2) NOT NULL,
  `ec_er` decimal(8,2) NOT NULL,
  `tc_er` decimal(8,2) NOT NULL,
  `tc_ee` decimal(8,2) NOT NULL,
  `tc_total` decimal(8,2) NOT NULL,
  `notpercentage` int(11) NOT NULL DEFAULT '0',
  `total_contribution_value` decimal(8,2) NOT NULL DEFAULT '0.00',
  `total_contribution_percentage` decimal(8,2) NOT NULL DEFAULT '0.00',
  `created_by` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `lu_by` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `deleted` int(11) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `social_security_systems`
--

INSERT INTO `social_security_systems` (`id`, `compensation_from`, `compensation_to`, `monthly_salary_credit`, `ss_er`, `ss_ee`, `ss_total`, `ec_er`, `tc_er`, `tc_ee`, `tc_total`, `notpercentage`, `total_contribution_value`, `total_contribution_percentage`, `created_by`, `lu_by`, `deleted`, `created_at`, `updated_at`) VALUES
(1, '1000.00', '1249.99', '1000.00', '73.70', '36.30', '110.00', '10.00', '83.70', '36.30', '120.00', 1, '110.00', '0.00', 'JM', 'JM', 0, '2018-07-08 22:45:22', '2018-07-08 22:45:22'),
(2, '1250.00', '1749.99', '1500.00', '110.50', '54.50', '165.00', '10.00', '120.50', '54.50', '175.00', 1, '165.00', '0.00', 'JM', 'JM', 0, '2018-07-08 22:48:10', '2018-07-08 22:48:10'),
(3, '1750.00', '2249.99', '2000.00', '147.30', '72.70', '220.00', '10.00', '157.30', '72.70', '230.00', 1, '220.00', '0.00', 'JM', 'JM', 0, '2018-07-08 22:49:27', '2018-07-08 22:49:27'),
(4, '2250.00', '2749.99', '2500.00', '184.20', '90.80', '275.00', '10.00', '194.20', '90.80', '285.00', 1, '275.00', '0.00', 'JM', 'JM', 0, '2018-07-08 22:51:54', '2018-07-08 22:51:54'),
(5, '2750.00', '3249.99', '3000.00', '221.00', '109.00', '330.00', '10.00', '231.00', '109.00', '340.00', 1, '330.00', '0.00', 'JM', 'JM', 0, '2018-07-08 22:53:41', '2018-07-08 22:53:41'),
(6, '3250.00', '3749.99', '3500.00', '257.80', '127.20', '385.00', '10.00', '267.80', '127.20', '395.00', 1, '385.00', '0.00', 'JM', 'JM', 0, '2018-07-08 22:54:39', '2018-07-08 22:54:39'),
(7, '3750.00', '4249.99', '4000.00', '294.70', '145.30', '440.00', '10.00', '304.70', '154.30', '450.00', 1, '440.00', '0.00', 'JM', 'JM', 0, '2018-07-08 22:55:49', '2018-07-08 22:55:49'),
(8, '4250.00', '4749.99', '4500.00', '331.50', '163.50', '495.00', '10.00', '341.50', '163.50', '505.00', 1, '495.00', '0.00', 'JM', 'JM', 0, '2018-07-08 22:56:23', '2018-07-08 22:56:23'),
(9, '4750.00', '5249.99', '5000.00', '368.30', '181.70', '550.00', '10.00', '378.30', '181.70', '560.00', 1, '550.00', '0.00', 'JM', 'JM', 0, '2018-07-08 22:57:05', '2018-07-08 22:57:05'),
(10, '5250.00', '5749.99', '5500.00', '405.20', '199.80', '605.00', '10.00', '415.20', '199.80', '615.00', 1, '605.00', '0.00', 'JM', 'JM', 0, '2018-07-08 22:57:56', '2018-07-08 22:57:56'),
(11, '5750.00', '6249.99', '6000.00', '442.00', '218.00', '660.00', '10.00', '452.00', '218.00', '670.00', 1, '660.00', '0.00', 'JM', 'JM', 0, '2018-07-08 22:59:05', '2018-07-08 22:59:05'),
(12, '6250.00', '6749.99', '6500.00', '478.80', '236.20', '715.00', '10.00', '488.80', '236.20', '725.00', 1, '715.00', '0.00', 'Payroll Admin', 'Payroll Admin', 0, '2018-07-08 23:00:07', '2018-11-08 01:38:38'),
(13, '6750.00', '7249.99', '7000.00', '515.70', '254.30', '770.00', '10.00', '525.70', '254.30', '780.00', 1, '770.00', '0.00', 'JM', 'JM', 0, '2018-07-08 23:00:43', '2018-07-08 23:00:43'),
(14, '7250.00', '7749.99', '7500.00', '552.50', '272.50', '825.00', '10.00', '562.50', '272.50', '835.00', 1, '825.00', '0.00', 'JM', 'JM', 0, '2018-07-08 23:01:37', '2018-07-08 23:01:37'),
(15, '7750.00', '8249.99', '8000.00', '589.30', '290.70', '880.00', '10.00', '559.30', '290.70', '890.00', 1, '880.00', '0.00', 'JM', 'JM', 0, '2018-07-08 23:02:26', '2018-07-08 23:02:26'),
(16, '8250.00', '8749.99', '8500.00', '626.20', '308.80', '935.00', '10.00', '636.20', '308.80', '945.00', 1, '935.00', '0.00', 'JM', 'JM', 0, '2018-07-08 23:03:11', '2018-07-08 23:03:11'),
(17, '8750.00', '9249.99', '9000.00', '663.00', '327.00', '990.00', '10.00', '673.00', '327.00', '1000.00', 1, '990.00', '0.00', 'JM', 'JM', 0, '2018-07-08 23:04:20', '2018-07-08 23:04:20'),
(18, '9250.00', '9749.99', '9500.00', '699.80', '345.20', '1045.00', '10.00', '709.80', '345.20', '1055.00', 1, '1045.00', '0.00', 'JM', 'JM', 0, '2018-07-08 23:05:40', '2018-07-08 23:05:40'),
(19, '9750.00', '10249.99', '10000.00', '736.70', '363.30', '1100.00', '10.00', '746.70', '363.30', '1110.00', 1, '1100.00', '0.00', 'JM', 'JM', 0, '2018-07-08 23:06:37', '2018-07-08 23:06:37'),
(20, '10250.00', '10749.99', '10500.00', '773.50', '381.50', '1155.00', '10.00', '783.50', '381.50', '1165.00', 1, '1155.00', '0.00', 'JM', 'JM', 0, '2018-07-08 23:07:57', '2018-07-08 23:07:57'),
(21, '10750.00', '11249.99', '11000.00', '810.30', '399.70', '1210.00', '10.00', '820.30', '399.70', '1220.00', 1, '1210.00', '0.00', 'JM', 'JM', 0, '2018-07-08 23:08:56', '2018-07-08 23:08:56'),
(22, '11250.00', '11749.99', '11500.00', '847.20', '417.80', '1265.00', '10.00', '857.20', '417.80', '1275.00', 1, '1265.00', '0.00', 'JM', 'JM', 0, '2018-07-08 23:10:14', '2018-07-08 23:10:14'),
(23, '11750.00', '12249.99', '12000.00', '884.00', '436.00', '1320.00', '10.00', '894.00', '436.00', '1330.00', 1, '1320.00', '0.00', 'JM', 'JM', 0, '2018-07-08 23:11:40', '2018-07-08 23:11:40'),
(24, '12250.00', '12749.99', '12500.00', '920.80', '454.20', '1375.00', '10.00', '930.80', '454.20', '1385.00', 1, '1375.00', '0.00', 'JM', 'JM', 0, '2018-07-08 23:13:20', '2018-07-08 23:13:20'),
(25, '12750.00', '13249.99', '13000.00', '957.70', '472.30', '1430.00', '10.00', '967.70', '472.30', '1440.00', 1, '1430.00', '0.00', 'JM', 'JM', 0, '2018-07-08 23:14:23', '2018-07-08 23:14:23'),
(26, '13250.00', '13749.99', '13500.00', '994.50', '490.50', '1485.00', '10.00', '1004.50', '490.50', '1495.00', 1, '1485.00', '0.00', 'JM', 'JM', 0, '2018-07-08 23:15:21', '2018-07-08 23:15:21'),
(27, '13750.00', '14249.99', '14000.00', '1031.30', '508.70', '1540.00', '10.00', '1041.30', '508.70', '1550.00', 1, '1540.00', '0.00', 'JM', 'JM', 0, '2018-07-08 23:16:42', '2018-07-08 23:16:42'),
(28, '14250.00', '14749.99', '14500.00', '1068.20', '526.80', '1595.00', '10.00', '1078.20', '526.80', '1605.00', 1, '1595.00', '0.00', 'JM', 'JM', 0, '2018-07-08 23:17:34', '2018-07-08 23:17:34'),
(29, '14750.00', '15249.99', '15000.00', '1105.00', '545.00', '1650.00', '30.00', '1135.00', '545.00', '1680.00', 1, '1650.00', '0.00', 'JM', 'JM', 0, '2018-07-08 23:18:20', '2018-07-08 23:18:20'),
(30, '15250.00', '15749.99', '15500.00', '1141.80', '563.20', '1705.00', '30.00', '1171.80', '563.20', '1735.00', 1, '1705.00', '0.00', 'JM', 'JM', 0, '2018-07-08 23:19:36', '2018-07-08 23:19:36'),
(31, '15750.00', '999999.00', '16000.00', '1178.70', '581.30', '1760.00', '30.00', '1208.70', '581.30', '1790.00', 1, '1760.00', '0.00', 'JM', 'JM', 0, '2018-07-08 23:23:04', '2018-07-08 23:23:04');

-- --------------------------------------------------------

--
-- Table structure for table `tax_tables`
--

CREATE TABLE `tax_tables` (
  `id` int(10) UNSIGNED NOT NULL,
  `tax_type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tax_status` int(11) NOT NULL,
  `status_number` int(11) NOT NULL,
  `compensation_level` decimal(8,2) NOT NULL,
  `prescribe_minimum` decimal(8,2) DEFAULT '0.00',
  `percent_over_cl` decimal(8,2) NOT NULL,
  `percentage` decimal(8,2) DEFAULT '0.00',
  `notpercentage` int(11) NOT NULL DEFAULT '1',
  `created_by` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `lu_by` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `deleted` int(11) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `tax_tables`
--

INSERT INTO `tax_tables` (`id`, `tax_type`, `tax_status`, `status_number`, `compensation_level`, `prescribe_minimum`, `percent_over_cl`, `percentage`, `notpercentage`, `created_by`, `lu_by`, `deleted`, `created_at`, `updated_at`) VALUES
(1, 'daily', 1, 1, '685.00', '0.00', '0.00', '0.00', 1, 'Marlon Belarmino', 'Marlon Belarmino', 0, '2018-07-08 22:16:39', '2018-07-08 22:16:39'),
(2, 'daily', 1, 2, '685.00', '0.00', '20.00', '0.00', 1, 'Marlon Belarmino', 'Marlon Belarmino', 0, '2018-07-08 22:17:20', '2018-07-08 22:17:20'),
(3, 'daily', 1, 3, '1096.00', '82.19', '25.00', '0.00', 1, 'Marlon Belarmino', 'Marlon Belarmino', 0, '2018-07-08 22:17:43', '2018-07-08 22:17:43'),
(4, 'daily', 1, 4, '2192.00', '356.16', '30.00', '0.00', 1, 'Marlon Belarmino', 'Marlon Belarmino', 0, '2018-07-08 22:18:10', '2018-07-08 22:18:10'),
(5, 'daily', 1, 5, '5479.00', '1342.47', '32.00', '0.00', 1, 'Marlon Belarmino', 'Marlon Belarmino', 0, '2018-07-08 22:18:29', '2018-07-08 22:18:29'),
(6, 'daily', 1, 6, '21918.00', '6602.74', '35.00', '0.00', 1, 'Marlon Belarmino', 'Marlon Belarmino', 0, '2018-07-08 22:19:27', '2018-07-08 22:19:27'),
(7, 'daily', 2, 1, '685.00', '0.00', '0.00', '0.00', 1, 'Marlon Belarmino', 'Marlon Belarmino', 0, '2018-07-08 22:16:39', '2018-07-08 22:16:39'),
(8, 'daily', 2, 2, '685.00', '0.00', '20.00', '0.00', 1, 'Marlon Belarmino', 'Marlon Belarmino', 0, '2018-07-08 22:17:20', '2018-07-08 22:17:20'),
(9, 'daily', 2, 3, '1096.00', '82.19', '25.00', '0.00', 1, 'Marlon Belarmino', 'Marlon Belarmino', 0, '2018-07-08 22:17:43', '2018-07-08 22:17:43'),
(10, 'daily', 2, 4, '2192.00', '356.16', '30.00', '0.00', 1, 'Marlon Belarmino', 'Marlon Belarmino', 0, '2018-07-08 22:18:10', '2018-07-08 22:18:10'),
(11, 'daily', 2, 5, '5479.00', '1342.47', '32.00', '0.00', 1, 'Marlon Belarmino', 'Marlon Belarmino', 0, '2018-07-08 22:18:29', '2018-07-08 22:18:29'),
(12, 'daily', 2, 6, '21918.00', '6602.74', '35.00', '0.00', 1, 'Marlon Belarmino', 'Marlon Belarmino', 0, '2018-07-08 22:19:27', '2018-07-08 22:19:27'),
(13, 'daily', 3, 1, '685.00', '0.00', '0.00', '0.00', 1, 'Marlon Belarmino', 'Marlon Belarmino', 0, '2018-07-08 22:16:39', '2018-07-08 22:16:39'),
(14, 'daily', 3, 2, '685.00', '0.00', '20.00', '0.00', 1, 'Marlon Belarmino', 'Marlon Belarmino', 0, '2018-07-08 22:17:20', '2018-07-08 22:17:20'),
(15, 'daily', 3, 3, '1096.00', '82.19', '25.00', '0.00', 1, 'Marlon Belarmino', 'Marlon Belarmino', 0, '2018-07-08 22:17:43', '2018-07-08 22:17:43'),
(16, 'daily', 3, 4, '2192.00', '356.16', '30.00', '0.00', 1, 'Marlon Belarmino', 'Marlon Belarmino', 0, '2018-07-08 22:18:10', '2018-07-08 22:18:10'),
(17, 'daily', 3, 5, '5479.00', '1342.47', '32.00', '0.00', 1, 'Marlon Belarmino', 'Marlon Belarmino', 0, '2018-07-08 22:18:29', '2018-07-08 22:18:29'),
(18, 'daily', 3, 6, '21918.00', '6602.74', '35.00', '0.00', 1, 'Marlon Belarmino', 'Marlon Belarmino', 0, '2018-07-08 22:19:27', '2018-07-08 22:19:27'),
(19, 'daily', 4, 1, '685.00', '0.00', '0.00', '0.00', 1, 'Marlon Belarmino', 'Marlon Belarmino', 0, '2018-07-08 22:16:39', '2018-07-08 22:16:39'),
(20, 'daily', 4, 2, '685.00', '0.00', '20.00', '0.00', 1, 'Marlon Belarmino', 'Marlon Belarmino', 0, '2018-07-08 22:17:20', '2018-07-08 22:17:20'),
(21, 'daily', 4, 3, '1096.00', '82.19', '25.00', '0.00', 1, 'Marlon Belarmino', 'Marlon Belarmino', 0, '2018-07-08 22:17:43', '2018-07-08 22:17:43'),
(22, 'daily', 4, 4, '2192.00', '356.16', '30.00', '0.00', 1, 'Marlon Belarmino', 'Marlon Belarmino', 0, '2018-07-08 22:18:10', '2018-07-08 22:18:10'),
(23, 'daily', 4, 5, '5479.00', '1342.47', '32.00', '0.00', 1, 'Marlon Belarmino', 'Marlon Belarmino', 0, '2018-07-08 22:18:29', '2018-07-08 22:18:29'),
(24, 'daily', 4, 6, '21918.00', '6602.74', '35.00', '0.00', 1, 'Marlon Belarmino', 'Marlon Belarmino', 0, '2018-07-08 22:19:27', '2018-07-08 22:19:27'),
(25, 'daily', 5, 1, '685.00', '0.00', '0.00', '0.00', 1, 'Marlon Belarmino', 'Marlon Belarmino', 0, '2018-07-08 22:16:39', '2018-07-08 22:16:39'),
(26, 'daily', 5, 2, '685.00', '0.00', '20.00', '0.00', 1, 'Marlon Belarmino', 'Marlon Belarmino', 0, '2018-07-08 22:17:20', '2018-07-08 22:17:20'),
(27, 'daily', 5, 3, '1096.00', '82.19', '25.00', '0.00', 1, 'Marlon Belarmino', 'Marlon Belarmino', 0, '2018-07-08 22:17:43', '2018-07-08 22:17:43'),
(28, 'daily', 5, 4, '2192.00', '356.16', '30.00', '0.00', 1, 'Marlon Belarmino', 'Marlon Belarmino', 0, '2018-07-08 22:18:10', '2018-07-08 22:18:10'),
(29, 'daily', 5, 5, '5479.00', '1342.47', '32.00', '0.00', 1, 'Marlon Belarmino', 'Marlon Belarmino', 0, '2018-07-08 22:18:29', '2018-07-08 22:18:29'),
(30, 'daily', 5, 6, '21918.00', '6602.74', '35.00', '0.00', 1, 'Marlon Belarmino', 'Marlon Belarmino', 0, '2018-07-08 22:19:27', '2018-07-08 22:19:27'),
(31, 'daily', 6, 1, '685.00', '0.00', '0.00', '0.00', 1, 'Marlon Belarmino', 'Marlon Belarmino', 0, '2018-07-08 22:16:39', '2018-07-08 22:16:39'),
(32, 'daily', 6, 2, '685.00', '0.00', '20.00', '0.00', 1, 'Marlon Belarmino', 'Marlon Belarmino', 0, '2018-07-08 22:17:20', '2018-07-08 22:17:20'),
(33, 'daily', 6, 3, '1096.00', '82.19', '25.00', '0.00', 1, 'Marlon Belarmino', 'Marlon Belarmino', 0, '2018-07-08 22:17:43', '2018-07-08 22:17:43'),
(34, 'daily', 6, 4, '2192.00', '356.16', '30.00', '0.00', 1, 'Marlon Belarmino', 'Marlon Belarmino', 0, '2018-07-08 22:18:10', '2018-07-08 22:18:10'),
(35, 'daily', 6, 5, '5479.00', '1342.47', '32.00', '0.00', 1, 'Marlon Belarmino', 'Marlon Belarmino', 0, '2018-07-08 22:18:29', '2018-07-08 22:18:29'),
(36, 'daily', 6, 6, '21918.00', '6602.74', '35.00', '0.00', 1, 'Marlon Belarmino', 'Marlon Belarmino', 0, '2018-07-08 22:19:27', '2018-07-08 22:19:27'),
(37, 'daily', 7, 1, '685.00', '0.00', '0.00', '0.00', 1, 'Marlon Belarmino', 'Marlon Belarmino', 0, '2018-07-08 22:16:39', '2018-07-08 22:16:39'),
(38, 'daily', 7, 2, '685.00', '0.00', '20.00', '0.00', 1, 'Marlon Belarmino', 'Marlon Belarmino', 0, '2018-07-08 22:17:20', '2018-07-08 22:17:20'),
(39, 'daily', 7, 3, '1096.00', '82.19', '25.00', '0.00', 1, 'Marlon Belarmino', 'Marlon Belarmino', 0, '2018-07-08 22:17:43', '2018-07-08 22:17:43'),
(40, 'daily', 7, 4, '2192.00', '356.16', '30.00', '0.00', 1, 'Marlon Belarmino', 'Marlon Belarmino', 0, '2018-07-08 22:18:10', '2018-07-08 22:18:10'),
(41, 'daily', 7, 5, '5479.00', '1342.47', '32.00', '0.00', 1, 'Marlon Belarmino', 'Marlon Belarmino', 0, '2018-07-08 22:18:29', '2018-07-08 22:18:29'),
(42, 'daily', 7, 6, '21918.00', '6602.74', '35.00', '0.00', 1, 'Marlon Belarmino', 'Marlon Belarmino', 0, '2018-07-08 22:19:27', '2018-07-08 22:19:27'),
(43, 'daily', 8, 1, '685.00', '0.00', '0.00', '0.00', 1, 'Marlon Belarmino', 'Marlon Belarmino', 0, '2018-07-08 22:16:39', '2018-07-08 22:16:39'),
(44, 'daily', 8, 2, '685.00', '0.00', '20.00', '0.00', 1, 'Marlon Belarmino', 'Marlon Belarmino', 0, '2018-07-08 22:17:20', '2018-07-08 22:17:20'),
(45, 'daily', 8, 3, '1096.00', '82.19', '25.00', '0.00', 1, 'Marlon Belarmino', 'Marlon Belarmino', 0, '2018-07-08 22:17:43', '2018-07-08 22:17:43'),
(46, 'daily', 8, 4, '2192.00', '356.16', '30.00', '0.00', 1, 'Marlon Belarmino', 'Marlon Belarmino', 0, '2018-07-08 22:18:10', '2018-07-08 22:18:10'),
(47, 'daily', 8, 5, '5479.00', '1342.47', '32.00', '0.00', 1, 'Marlon Belarmino', 'Marlon Belarmino', 0, '2018-07-08 22:18:29', '2018-07-08 22:18:29'),
(48, 'daily', 8, 6, '21918.00', '6602.74', '35.00', '0.00', 1, 'Marlon Belarmino', 'Marlon Belarmino', 0, '2018-07-08 22:19:27', '2018-07-08 22:19:27'),
(49, 'daily', 9, 1, '685.00', '0.00', '0.00', '0.00', 1, 'Marlon Belarmino', 'Marlon Belarmino', 0, '2018-07-08 22:16:39', '2018-07-08 22:16:39'),
(50, 'daily', 9, 2, '685.00', '0.00', '20.00', '0.00', 1, 'Marlon Belarmino', 'Marlon Belarmino', 0, '2018-07-08 22:17:20', '2018-07-08 22:17:20'),
(51, 'daily', 9, 3, '1096.00', '82.19', '25.00', '0.00', 1, 'Marlon Belarmino', 'Marlon Belarmino', 0, '2018-07-08 22:17:43', '2018-07-08 22:17:43'),
(52, 'daily', 9, 4, '2192.00', '356.16', '30.00', '0.00', 1, 'Marlon Belarmino', 'Marlon Belarmino', 0, '2018-07-08 22:18:10', '2018-07-08 22:18:10'),
(53, 'daily', 9, 5, '5479.00', '1342.47', '32.00', '0.00', 1, 'Marlon Belarmino', 'Marlon Belarmino', 0, '2018-07-08 22:18:29', '2018-07-08 22:18:29'),
(54, 'daily', 9, 6, '21918.00', '6602.74', '35.00', '0.00', 1, 'Marlon Belarmino', 'Marlon Belarmino', 0, '2018-07-08 22:19:27', '2018-07-08 22:19:27'),
(55, 'daily', 10, 1, '685.00', '0.00', '0.00', '0.00', 1, 'Marlon Belarmino', 'Marlon Belarmino', 0, '2018-07-08 22:16:39', '2018-07-08 22:16:39'),
(56, 'daily', 10, 2, '685.00', '0.00', '20.00', '0.00', 1, 'Marlon Belarmino', 'Marlon Belarmino', 0, '2018-07-08 22:17:20', '2018-07-08 22:17:20'),
(57, 'daily', 10, 3, '1096.00', '82.19', '25.00', '0.00', 1, 'Marlon Belarmino', 'Marlon Belarmino', 0, '2018-07-08 22:17:43', '2018-07-08 22:17:43'),
(58, 'daily', 10, 4, '2192.00', '356.16', '30.00', '0.00', 1, 'Marlon Belarmino', 'Marlon Belarmino', 0, '2018-07-08 22:18:10', '2018-07-08 22:18:10'),
(59, 'daily', 10, 5, '5479.00', '1342.47', '32.00', '0.00', 1, 'Marlon Belarmino', 'Marlon Belarmino', 0, '2018-07-08 22:18:29', '2018-07-08 22:18:29'),
(60, 'daily', 10, 6, '21918.00', '6602.74', '35.00', '0.00', 1, 'Marlon Belarmino', 'Marlon Belarmino', 0, '2018-07-08 22:19:27', '2018-07-08 22:19:27'),
(61, 'daily', 11, 1, '685.00', '0.00', '0.00', '0.00', 1, 'Marlon Belarmino', 'Marlon Belarmino', 0, '2018-07-08 22:16:39', '2018-07-08 22:16:39'),
(62, 'daily', 11, 2, '685.00', '0.00', '20.00', '0.00', 1, 'Marlon Belarmino', 'Marlon Belarmino', 0, '2018-07-08 22:17:20', '2018-07-08 22:17:20'),
(63, 'daily', 11, 3, '1096.00', '82.19', '25.00', '0.00', 1, 'Marlon Belarmino', 'Marlon Belarmino', 0, '2018-07-08 22:17:43', '2018-07-08 22:17:43'),
(64, 'daily', 11, 4, '2192.00', '356.16', '30.00', '0.00', 1, 'Marlon Belarmino', 'Marlon Belarmino', 0, '2018-07-08 22:18:10', '2018-07-08 22:18:10'),
(65, 'daily', 11, 5, '5479.00', '1342.47', '32.00', '0.00', 1, 'Marlon Belarmino', 'Marlon Belarmino', 0, '2018-07-08 22:18:29', '2018-07-08 22:18:29'),
(66, 'daily', 11, 6, '21918.00', '6602.74', '35.00', '0.00', 1, 'Marlon Belarmino', 'Marlon Belarmino', 0, '2018-07-08 22:19:27', '2018-07-08 22:19:27'),
(67, 'weekly', 1, 1, '4808.00', '0.00', '0.00', '0.00', 1, 'Marlon Belarmino', 'Marlon Belarmino', 0, '2018-07-08 22:33:54', '2018-07-08 22:33:54'),
(68, 'weekly', 1, 2, '4808.00', '0.00', '20.00', '0.00', 1, 'Marlon Belarmino', 'Marlon Belarmino', 0, '2018-07-08 22:34:49', '2018-07-08 22:34:49'),
(69, 'weekly', 1, 3, '7692.00', '576.92', '25.00', '0.00', 1, 'Marlon Belarmino', 'Marlon Belarmino', 0, '2018-07-08 22:35:11', '2018-07-08 22:35:11'),
(70, 'weekly', 1, 4, '15385.00', '2500.00', '30.00', '0.00', 1, 'Marlon Belarmino', 'Marlon Belarmino', 0, '2018-07-08 22:35:34', '2018-07-08 22:35:34'),
(71, 'weekly', 1, 5, '38462.00', '9423.08', '32.00', '0.00', 1, 'Marlon Belarmino', 'Marlon Belarmino', 0, '2018-07-08 22:36:03', '2018-07-08 22:36:03'),
(72, 'weekly', 1, 6, '153846.00', '46346.15', '35.00', '0.00', 1, 'Marlon Belarmino', 'Marlon Belarmino', 0, '2018-07-08 22:36:40', '2018-07-08 22:36:40'),
(73, 'weekly', 2, 1, '4808.00', '0.00', '0.00', '0.00', 1, 'Marlon Belarmino', 'Marlon Belarmino', 0, '2018-07-08 22:33:54', '2018-07-08 22:33:54'),
(74, 'weekly', 2, 2, '4808.00', '0.00', '20.00', '0.00', 1, 'Marlon Belarmino', 'Marlon Belarmino', 0, '2018-07-08 22:34:49', '2018-07-08 22:34:49'),
(75, 'weekly', 2, 3, '7692.00', '576.92', '25.00', '0.00', 1, 'Marlon Belarmino', 'Marlon Belarmino', 0, '2018-07-08 22:35:11', '2018-07-08 22:35:11'),
(76, 'weekly', 2, 4, '15385.00', '2500.00', '30.00', '0.00', 1, 'Marlon Belarmino', 'Marlon Belarmino', 0, '2018-07-08 22:35:34', '2018-07-08 22:35:34'),
(77, 'weekly', 2, 5, '38462.00', '9423.08', '32.00', '0.00', 1, 'Marlon Belarmino', 'Marlon Belarmino', 0, '2018-07-08 22:36:03', '2018-07-08 22:36:03'),
(78, 'weekly', 2, 6, '153846.00', '46346.15', '35.00', '0.00', 1, 'Marlon Belarmino', 'Marlon Belarmino', 0, '2018-07-08 22:36:40', '2018-07-08 22:36:40'),
(79, 'weekly', 3, 1, '4808.00', '0.00', '0.00', '0.00', 1, 'Marlon Belarmino', 'Marlon Belarmino', 0, '2018-07-08 22:33:54', '2018-07-08 22:33:54'),
(80, 'weekly', 3, 2, '4808.00', '0.00', '20.00', '0.00', 1, 'Marlon Belarmino', 'Marlon Belarmino', 0, '2018-07-08 22:34:49', '2018-07-08 22:34:49'),
(81, 'weekly', 3, 3, '7692.00', '576.92', '25.00', '0.00', 1, 'Marlon Belarmino', 'Marlon Belarmino', 0, '2018-07-08 22:35:11', '2018-07-08 22:35:11'),
(82, 'weekly', 3, 4, '15385.00', '2500.00', '30.00', '0.00', 1, 'Marlon Belarmino', 'Marlon Belarmino', 0, '2018-07-08 22:35:34', '2018-07-08 22:35:34'),
(83, 'weekly', 3, 5, '38462.00', '9423.08', '32.00', '0.00', 1, 'Marlon Belarmino', 'Marlon Belarmino', 0, '2018-07-08 22:36:03', '2018-07-08 22:36:03'),
(84, 'weekly', 3, 6, '153846.00', '46346.15', '35.00', '0.00', 1, 'Marlon Belarmino', 'Marlon Belarmino', 0, '2018-07-08 22:36:40', '2018-07-08 22:36:40'),
(85, 'weekly', 4, 1, '4808.00', '0.00', '0.00', '0.00', 1, 'Marlon Belarmino', 'Marlon Belarmino', 0, '2018-07-08 22:33:54', '2018-07-08 22:33:54'),
(86, 'weekly', 4, 2, '4808.00', '0.00', '20.00', '0.00', 1, 'Marlon Belarmino', 'Marlon Belarmino', 0, '2018-07-08 22:34:49', '2018-07-08 22:34:49'),
(87, 'weekly', 4, 3, '7692.00', '576.92', '25.00', '0.00', 1, 'Marlon Belarmino', 'Marlon Belarmino', 0, '2018-07-08 22:35:11', '2018-07-08 22:35:11'),
(88, 'weekly', 4, 4, '15385.00', '2500.00', '30.00', '0.00', 1, 'Marlon Belarmino', 'Marlon Belarmino', 0, '2018-07-08 22:35:34', '2018-07-08 22:35:34'),
(89, 'weekly', 4, 5, '38462.00', '9423.08', '32.00', '0.00', 1, 'Marlon Belarmino', 'Marlon Belarmino', 0, '2018-07-08 22:36:03', '2018-07-08 22:36:03'),
(90, 'weekly', 4, 6, '153846.00', '46346.15', '35.00', '0.00', 1, 'Marlon Belarmino', 'Marlon Belarmino', 0, '2018-07-08 22:36:40', '2018-07-08 22:36:40'),
(91, 'weekly', 5, 1, '4808.00', '0.00', '0.00', '0.00', 1, 'Marlon Belarmino', 'Marlon Belarmino', 0, '2018-07-08 22:33:54', '2018-07-08 22:33:54'),
(92, 'weekly', 5, 2, '4808.00', '0.00', '20.00', '0.00', 1, 'Marlon Belarmino', 'Marlon Belarmino', 0, '2018-07-08 22:34:49', '2018-07-08 22:34:49'),
(93, 'weekly', 5, 3, '7692.00', '576.92', '25.00', '0.00', 1, 'Marlon Belarmino', 'Marlon Belarmino', 0, '2018-07-08 22:35:11', '2018-07-08 22:35:11'),
(94, 'weekly', 5, 4, '15385.00', '2500.00', '30.00', '0.00', 1, 'Marlon Belarmino', 'Marlon Belarmino', 0, '2018-07-08 22:35:34', '2018-07-08 22:35:34'),
(95, 'weekly', 5, 5, '38462.00', '9423.08', '32.00', '0.00', 1, 'Marlon Belarmino', 'Marlon Belarmino', 0, '2018-07-08 22:36:03', '2018-07-08 22:36:03'),
(96, 'weekly', 5, 6, '153846.00', '46346.15', '35.00', '0.00', 1, 'Marlon Belarmino', 'Marlon Belarmino', 0, '2018-07-08 22:36:40', '2018-07-08 22:36:40'),
(97, 'weekly', 6, 1, '4808.00', '0.00', '0.00', '0.00', 1, 'Marlon Belarmino', 'Marlon Belarmino', 0, '2018-07-08 22:33:54', '2018-07-08 22:33:54'),
(98, 'weekly', 6, 2, '4808.00', '0.00', '20.00', '0.00', 1, 'Marlon Belarmino', 'Marlon Belarmino', 0, '2018-07-08 22:34:49', '2018-07-08 22:34:49'),
(99, 'weekly', 6, 3, '7692.00', '576.92', '25.00', '0.00', 1, 'Marlon Belarmino', 'Marlon Belarmino', 0, '2018-07-08 22:35:11', '2018-07-08 22:35:11'),
(100, 'weekly', 6, 4, '15385.00', '2500.00', '30.00', '0.00', 1, 'Marlon Belarmino', 'Marlon Belarmino', 0, '2018-07-08 22:35:34', '2018-07-08 22:35:34'),
(101, 'weekly', 6, 5, '38462.00', '9423.08', '32.00', '0.00', 1, 'Marlon Belarmino', 'Marlon Belarmino', 0, '2018-07-08 22:36:03', '2018-07-08 22:36:03'),
(102, 'weekly', 6, 6, '153846.00', '46346.15', '35.00', '0.00', 1, 'Marlon Belarmino', 'Marlon Belarmino', 0, '2018-07-08 22:36:40', '2018-07-08 22:36:40'),
(103, 'weekly', 7, 1, '4808.00', '0.00', '0.00', '0.00', 1, 'Marlon Belarmino', 'Marlon Belarmino', 0, '2018-07-08 22:33:54', '2018-07-08 22:33:54'),
(104, 'weekly', 7, 2, '4808.00', '0.00', '20.00', '0.00', 1, 'Marlon Belarmino', 'Marlon Belarmino', 0, '2018-07-08 22:34:49', '2018-07-08 22:34:49'),
(105, 'weekly', 7, 3, '7692.00', '576.92', '25.00', '0.00', 1, 'Marlon Belarmino', 'Marlon Belarmino', 0, '2018-07-08 22:35:11', '2018-07-08 22:35:11'),
(106, 'weekly', 7, 4, '15385.00', '2500.00', '30.00', '0.00', 1, 'Marlon Belarmino', 'Marlon Belarmino', 0, '2018-07-08 22:35:34', '2018-07-08 22:35:34'),
(107, 'weekly', 7, 5, '38462.00', '9423.08', '32.00', '0.00', 1, 'Marlon Belarmino', 'Marlon Belarmino', 0, '2018-07-08 22:36:03', '2018-07-08 22:36:03'),
(108, 'weekly', 7, 6, '153846.00', '46346.15', '35.00', '0.00', 1, 'Marlon Belarmino', 'Marlon Belarmino', 0, '2018-07-08 22:36:40', '2018-07-08 22:36:40'),
(109, 'weekly', 8, 1, '4808.00', '0.00', '0.00', '0.00', 1, 'Marlon Belarmino', 'Marlon Belarmino', 0, '2018-07-08 22:33:54', '2018-07-08 22:33:54'),
(110, 'weekly', 8, 2, '4808.00', '0.00', '20.00', '0.00', 1, 'Marlon Belarmino', 'Marlon Belarmino', 0, '2018-07-08 22:34:49', '2018-07-08 22:34:49'),
(111, 'weekly', 8, 3, '7692.00', '576.92', '25.00', '0.00', 1, 'Marlon Belarmino', 'Marlon Belarmino', 0, '2018-07-08 22:35:11', '2018-07-08 22:35:11'),
(112, 'weekly', 8, 4, '15385.00', '2500.00', '30.00', '0.00', 1, 'Marlon Belarmino', 'Marlon Belarmino', 0, '2018-07-08 22:35:34', '2018-07-08 22:35:34'),
(113, 'weekly', 8, 5, '38462.00', '9423.08', '32.00', '0.00', 1, 'Marlon Belarmino', 'Marlon Belarmino', 0, '2018-07-08 22:36:03', '2018-07-08 22:36:03'),
(114, 'weekly', 8, 6, '153846.00', '46346.15', '35.00', '0.00', 1, 'Marlon Belarmino', 'Marlon Belarmino', 0, '2018-07-08 22:36:40', '2018-07-08 22:36:40'),
(115, 'weekly', 9, 1, '4808.00', '0.00', '0.00', '0.00', 1, 'Marlon Belarmino', 'Marlon Belarmino', 0, '2018-07-08 22:33:54', '2018-07-08 22:33:54'),
(116, 'weekly', 9, 2, '4808.00', '0.00', '20.00', '0.00', 1, 'Marlon Belarmino', 'Marlon Belarmino', 0, '2018-07-08 22:34:49', '2018-07-08 22:34:49'),
(117, 'weekly', 9, 3, '7692.00', '576.92', '25.00', '0.00', 1, 'Marlon Belarmino', 'Marlon Belarmino', 0, '2018-07-08 22:35:11', '2018-07-08 22:35:11'),
(118, 'weekly', 9, 4, '15385.00', '2500.00', '30.00', '0.00', 1, 'Marlon Belarmino', 'Marlon Belarmino', 0, '2018-07-08 22:35:34', '2018-07-08 22:35:34'),
(119, 'weekly', 9, 5, '38462.00', '9423.08', '32.00', '0.00', 1, 'Marlon Belarmino', 'Marlon Belarmino', 0, '2018-07-08 22:36:03', '2018-07-08 22:36:03'),
(120, 'weekly', 9, 6, '153846.00', '46346.15', '35.00', '0.00', 1, 'Marlon Belarmino', 'Marlon Belarmino', 0, '2018-07-08 22:36:40', '2018-07-08 22:36:40'),
(121, 'weekly', 10, 1, '4808.00', '0.00', '0.00', '0.00', 1, 'Marlon Belarmino', 'Marlon Belarmino', 0, '2018-07-08 22:33:54', '2018-07-08 22:33:54'),
(122, 'weekly', 10, 2, '4808.00', '0.00', '20.00', '0.00', 1, 'Marlon Belarmino', 'Marlon Belarmino', 0, '2018-07-08 22:34:49', '2018-07-08 22:34:49'),
(123, 'weekly', 10, 3, '7692.00', '576.92', '25.00', '0.00', 1, 'Marlon Belarmino', 'Marlon Belarmino', 0, '2018-07-08 22:35:11', '2018-07-08 22:35:11'),
(124, 'weekly', 10, 4, '15385.00', '2500.00', '30.00', '0.00', 1, 'Marlon Belarmino', 'Marlon Belarmino', 0, '2018-07-08 22:35:34', '2018-07-08 22:35:34'),
(125, 'weekly', 10, 5, '38462.00', '9423.08', '32.00', '0.00', 1, 'Marlon Belarmino', 'Marlon Belarmino', 0, '2018-07-08 22:36:03', '2018-07-08 22:36:03'),
(126, 'weekly', 10, 6, '153846.00', '46346.15', '35.00', '0.00', 1, 'Marlon Belarmino', 'Marlon Belarmino', 0, '2018-07-08 22:36:40', '2018-07-08 22:36:40'),
(127, 'weekly', 11, 1, '4808.00', '0.00', '0.00', '0.00', 1, 'Marlon Belarmino', 'Marlon Belarmino', 0, '2018-07-08 22:33:54', '2018-07-08 22:33:54'),
(128, 'weekly', 11, 2, '4808.00', '0.00', '20.00', '0.00', 1, 'Marlon Belarmino', 'Marlon Belarmino', 0, '2018-07-08 22:34:49', '2018-07-08 22:34:49'),
(129, 'weekly', 11, 3, '7692.00', '576.92', '25.00', '0.00', 1, 'Marlon Belarmino', 'Marlon Belarmino', 0, '2018-07-08 22:35:11', '2018-07-08 22:35:11'),
(130, 'weekly', 11, 4, '15385.00', '2500.00', '30.00', '0.00', 1, 'Marlon Belarmino', 'Marlon Belarmino', 0, '2018-07-08 22:35:34', '2018-07-08 22:35:34'),
(131, 'weekly', 11, 5, '38462.00', '9423.08', '32.00', '0.00', 1, 'Marlon Belarmino', 'Marlon Belarmino', 0, '2018-07-08 22:36:03', '2018-07-08 22:36:03'),
(132, 'weekly', 11, 6, '153846.00', '46346.15', '35.00', '0.00', 1, 'Marlon Belarmino', 'Marlon Belarmino', 0, '2018-07-08 22:36:40', '2018-07-08 22:36:40'),
(133, 'semimonthly', 1, 1, '10417.00', '0.00', '0.00', '0.00', 1, 'Marlon Belarmino', 'Marlon Belarmino', 0, '2018-07-08 22:51:02', '2018-07-08 22:51:02'),
(134, 'semimonthly', 1, 2, '10417.00', '0.00', '20.00', '0.00', 1, 'Marlon Belarmino', 'Marlon Belarmino', 0, '2018-07-08 22:51:14', '2018-07-08 22:51:14'),
(135, 'semimonthly', 1, 3, '16667.00', '1250.00', '25.00', '0.00', 1, 'Marlon Belarmino', 'Marlon Belarmino', 0, '2018-07-08 22:51:36', '2018-07-08 22:51:36'),
(136, 'semimonthly', 1, 4, '33333.00', '5416.67', '30.00', '0.00', 1, 'Marlon Belarmino', 'Marlon Belarmino', 0, '2018-07-08 22:51:53', '2018-07-08 22:51:53'),
(137, 'semimonthly', 1, 5, '83333.00', '20416.67', '32.00', '0.00', 1, 'Marlon Belarmino', 'Marlon Belarmino', 0, '2018-07-08 22:52:19', '2018-07-08 22:52:19'),
(138, 'semimonthly', 1, 6, '333333.00', '100416.67', '35.00', '0.00', 1, 'Marlon Belarmino', 'Marlon Belarmino', 0, '2018-07-08 22:52:43', '2018-07-08 22:52:43'),
(139, 'semimonthly', 2, 1, '10417.00', '0.00', '0.00', '0.00', 1, 'Marlon Belarmino', 'Marlon Belarmino', 0, '2018-07-08 22:51:02', '2018-07-08 22:51:02'),
(140, 'semimonthly', 2, 2, '10417.00', '0.00', '20.00', '0.00', 1, 'Marlon Belarmino', 'Marlon Belarmino', 0, '2018-07-08 22:51:14', '2018-07-08 22:51:14'),
(141, 'semimonthly', 2, 3, '16667.00', '1250.00', '25.00', '0.00', 1, 'Marlon Belarmino', 'Marlon Belarmino', 0, '2018-07-08 22:51:36', '2018-07-08 22:51:36'),
(142, 'semimonthly', 2, 4, '33333.00', '5416.67', '30.00', '0.00', 1, 'Marlon Belarmino', 'Marlon Belarmino', 0, '2018-07-08 22:51:53', '2018-07-08 22:51:53'),
(143, 'semimonthly', 2, 5, '83333.00', '20416.67', '32.00', '0.00', 1, 'Marlon Belarmino', 'Marlon Belarmino', 0, '2018-07-08 22:52:19', '2018-07-08 22:52:19'),
(144, 'semimonthly', 2, 6, '333333.00', '100416.67', '35.00', '0.00', 1, 'Marlon Belarmino', 'Marlon Belarmino', 0, '2018-07-08 22:52:43', '2018-07-08 22:52:43'),
(145, 'semimonthly', 3, 1, '10417.00', '0.00', '0.00', '0.00', 1, 'Marlon Belarmino', 'Marlon Belarmino', 0, '2018-07-08 22:51:02', '2018-07-08 22:51:02'),
(146, 'semimonthly', 3, 2, '10417.00', '0.00', '20.00', '0.00', 1, 'Marlon Belarmino', 'Marlon Belarmino', 0, '2018-07-08 22:51:14', '2018-07-08 22:51:14'),
(147, 'semimonthly', 3, 3, '16667.00', '1250.00', '25.00', '0.00', 1, 'Marlon Belarmino', 'Marlon Belarmino', 0, '2018-07-08 22:51:36', '2018-07-08 22:51:36'),
(148, 'semimonthly', 3, 4, '33333.00', '5416.67', '30.00', '0.00', 1, 'Marlon Belarmino', 'Marlon Belarmino', 0, '2018-07-08 22:51:53', '2018-07-08 22:51:53'),
(149, 'semimonthly', 3, 5, '83333.00', '20416.67', '32.00', '0.00', 1, 'Marlon Belarmino', 'Marlon Belarmino', 0, '2018-07-08 22:52:19', '2018-07-08 22:52:19'),
(150, 'semimonthly', 3, 6, '333333.00', '100416.67', '35.00', '0.00', 1, 'Marlon Belarmino', 'Marlon Belarmino', 0, '2018-07-08 22:52:43', '2018-07-08 22:52:43'),
(151, 'semimonthly', 4, 1, '10417.00', '0.00', '0.00', '0.00', 1, 'Marlon Belarmino', 'Marlon Belarmino', 0, '2018-07-08 22:51:02', '2018-07-08 22:51:02'),
(152, 'semimonthly', 4, 2, '10417.00', '0.00', '20.00', '0.00', 1, 'Marlon Belarmino', 'Marlon Belarmino', 0, '2018-07-08 22:51:14', '2018-07-08 22:51:14'),
(153, 'semimonthly', 4, 3, '16667.00', '1250.00', '25.00', '0.00', 1, 'Marlon Belarmino', 'Marlon Belarmino', 0, '2018-07-08 22:51:36', '2018-07-08 22:51:36'),
(154, 'semimonthly', 4, 4, '33333.00', '5416.67', '30.00', '0.00', 1, 'Marlon Belarmino', 'Marlon Belarmino', 0, '2018-07-08 22:51:53', '2018-07-08 22:51:53'),
(155, 'semimonthly', 4, 5, '83333.00', '20416.67', '32.00', '0.00', 1, 'Marlon Belarmino', 'Marlon Belarmino', 0, '2018-07-08 22:52:19', '2018-07-08 22:52:19'),
(156, 'semimonthly', 4, 6, '333333.00', '100416.67', '35.00', '0.00', 1, 'Marlon Belarmino', 'Marlon Belarmino', 0, '2018-07-08 22:52:43', '2018-07-08 22:52:43'),
(157, 'semimonthly', 5, 1, '10417.00', '0.00', '0.00', '0.00', 1, 'Marlon Belarmino', 'Marlon Belarmino', 0, '2018-07-08 22:51:02', '2018-07-08 22:51:02'),
(158, 'semimonthly', 5, 2, '10417.00', '0.00', '20.00', '0.00', 1, 'Marlon Belarmino', 'Marlon Belarmino', 0, '2018-07-08 22:51:14', '2018-07-08 22:51:14'),
(159, 'semimonthly', 5, 3, '16667.00', '1250.00', '25.00', '0.00', 1, 'Marlon Belarmino', 'Marlon Belarmino', 0, '2018-07-08 22:51:36', '2018-07-08 22:51:36'),
(160, 'semimonthly', 5, 4, '33333.00', '5416.67', '30.00', '0.00', 1, 'Marlon Belarmino', 'Marlon Belarmino', 0, '2018-07-08 22:51:53', '2018-07-08 22:51:53'),
(161, 'semimonthly', 5, 5, '83333.00', '20416.67', '32.00', '0.00', 1, 'Marlon Belarmino', 'Marlon Belarmino', 0, '2018-07-08 22:52:19', '2018-07-08 22:52:19'),
(162, 'semimonthly', 5, 6, '333333.00', '100416.67', '35.00', '0.00', 1, 'Marlon Belarmino', 'Marlon Belarmino', 0, '2018-07-08 22:52:43', '2018-07-08 22:52:43'),
(163, 'semimonthly', 6, 1, '10417.00', '0.00', '0.00', '0.00', 1, 'Marlon Belarmino', 'Marlon Belarmino', 0, '2018-07-08 22:51:02', '2018-07-08 22:51:02'),
(164, 'semimonthly', 6, 2, '10417.00', '0.00', '20.00', '0.00', 1, 'Marlon Belarmino', 'Marlon Belarmino', 0, '2018-07-08 22:51:14', '2018-07-08 22:51:14'),
(165, 'semimonthly', 6, 3, '16667.00', '1250.00', '25.00', '0.00', 1, 'Marlon Belarmino', 'Marlon Belarmino', 0, '2018-07-08 22:51:36', '2018-07-08 22:51:36'),
(166, 'semimonthly', 6, 4, '33333.00', '5416.67', '30.00', '0.00', 1, 'Marlon Belarmino', 'Marlon Belarmino', 0, '2018-07-08 22:51:53', '2018-07-08 22:51:53'),
(167, 'semimonthly', 6, 5, '83333.00', '20416.67', '32.00', '0.00', 1, 'Marlon Belarmino', 'Marlon Belarmino', 0, '2018-07-08 22:52:19', '2018-07-08 22:52:19'),
(168, 'semimonthly', 6, 6, '333333.00', '100416.67', '35.00', '0.00', 1, 'Marlon Belarmino', 'Marlon Belarmino', 0, '2018-07-08 22:52:43', '2018-07-08 22:52:43'),
(169, 'semimonthly', 7, 1, '10417.00', '0.00', '0.00', '0.00', 1, 'Marlon Belarmino', 'Marlon Belarmino', 0, '2018-07-08 22:51:02', '2018-07-08 22:51:02'),
(170, 'semimonthly', 7, 2, '10417.00', '0.00', '20.00', '0.00', 1, 'Marlon Belarmino', 'Marlon Belarmino', 0, '2018-07-08 22:51:14', '2018-07-08 22:51:14'),
(171, 'semimonthly', 7, 3, '16667.00', '1250.00', '25.00', '0.00', 1, 'Marlon Belarmino', 'Marlon Belarmino', 0, '2018-07-08 22:51:36', '2018-07-08 22:51:36'),
(172, 'semimonthly', 7, 4, '33333.00', '5416.67', '30.00', '0.00', 1, 'Marlon Belarmino', 'Marlon Belarmino', 0, '2018-07-08 22:51:53', '2018-07-08 22:51:53'),
(173, 'semimonthly', 7, 5, '83333.00', '20416.67', '32.00', '0.00', 1, 'Marlon Belarmino', 'Marlon Belarmino', 0, '2018-07-08 22:52:19', '2018-07-08 22:52:19'),
(174, 'semimonthly', 7, 6, '333333.00', '100416.67', '35.00', '0.00', 1, 'Marlon Belarmino', 'Marlon Belarmino', 0, '2018-07-08 22:52:43', '2018-07-08 22:52:43'),
(175, 'semimonthly', 8, 1, '10417.00', '0.00', '0.00', '0.00', 1, 'Marlon Belarmino', 'Marlon Belarmino', 0, '2018-07-08 22:51:02', '2018-07-08 22:51:02'),
(176, 'semimonthly', 8, 2, '10417.00', '0.00', '20.00', '0.00', 1, 'Marlon Belarmino', 'Marlon Belarmino', 0, '2018-07-08 22:51:14', '2018-07-08 22:51:14'),
(177, 'semimonthly', 8, 3, '16667.00', '1250.00', '25.00', '0.00', 1, 'Marlon Belarmino', 'Marlon Belarmino', 0, '2018-07-08 22:51:36', '2018-07-08 22:51:36'),
(178, 'semimonthly', 8, 4, '33333.00', '5416.67', '30.00', '0.00', 1, 'Marlon Belarmino', 'Marlon Belarmino', 0, '2018-07-08 22:51:53', '2018-07-08 22:51:53'),
(179, 'semimonthly', 8, 5, '83333.00', '20416.67', '32.00', '0.00', 1, 'Marlon Belarmino', 'Marlon Belarmino', 0, '2018-07-08 22:52:19', '2018-07-08 22:52:19'),
(180, 'semimonthly', 8, 6, '333333.00', '100416.67', '35.00', '0.00', 1, 'Marlon Belarmino', 'Marlon Belarmino', 0, '2018-07-08 22:52:43', '2018-07-08 22:52:43'),
(181, 'semimonthly', 9, 1, '10417.00', '0.00', '0.00', '0.00', 1, 'Marlon Belarmino', 'Marlon Belarmino', 0, '2018-07-08 22:51:02', '2018-07-08 22:51:02'),
(182, 'semimonthly', 9, 2, '10417.00', '0.00', '20.00', '0.00', 1, 'Marlon Belarmino', 'Marlon Belarmino', 0, '2018-07-08 22:51:14', '2018-07-08 22:51:14'),
(183, 'semimonthly', 9, 3, '16667.00', '1250.00', '25.00', '0.00', 1, 'Marlon Belarmino', 'Marlon Belarmino', 0, '2018-07-08 22:51:36', '2018-07-08 22:51:36'),
(184, 'semimonthly', 9, 4, '33333.00', '5416.67', '30.00', '0.00', 1, 'Marlon Belarmino', 'Marlon Belarmino', 0, '2018-07-08 22:51:53', '2018-07-08 22:51:53'),
(185, 'semimonthly', 9, 5, '83333.00', '20416.67', '32.00', '0.00', 1, 'Marlon Belarmino', 'Marlon Belarmino', 0, '2018-07-08 22:52:19', '2018-07-08 22:52:19'),
(186, 'semimonthly', 9, 6, '333333.00', '100416.67', '35.00', '0.00', 1, 'Marlon Belarmino', 'Marlon Belarmino', 0, '2018-07-08 22:52:43', '2018-07-08 22:52:43'),
(187, 'semimonthly', 10, 1, '10417.00', '0.00', '0.00', '0.00', 1, 'Marlon Belarmino', 'Marlon Belarmino', 0, '2018-07-08 22:51:02', '2018-07-08 22:51:02'),
(188, 'semimonthly', 10, 2, '10417.00', '0.00', '20.00', '0.00', 1, 'Marlon Belarmino', 'Marlon Belarmino', 0, '2018-07-08 22:51:14', '2018-07-08 22:51:14'),
(189, 'semimonthly', 10, 3, '16667.00', '1250.00', '25.00', '0.00', 1, 'Marlon Belarmino', 'Marlon Belarmino', 0, '2018-07-08 22:51:36', '2018-07-08 22:51:36'),
(190, 'semimonthly', 10, 4, '33333.00', '5416.67', '30.00', '0.00', 1, 'Marlon Belarmino', 'Marlon Belarmino', 0, '2018-07-08 22:51:53', '2018-07-08 22:51:53'),
(191, 'semimonthly', 10, 5, '83333.00', '20416.67', '32.00', '0.00', 1, 'Marlon Belarmino', 'Marlon Belarmino', 0, '2018-07-08 22:52:19', '2018-07-08 22:52:19'),
(192, 'semimonthly', 10, 6, '333333.00', '100416.67', '35.00', '0.00', 1, 'Marlon Belarmino', 'Marlon Belarmino', 0, '2018-07-08 22:52:43', '2018-07-08 22:52:43'),
(193, 'semimonthly', 11, 1, '10417.00', '0.00', '0.00', '0.00', 1, 'Marlon Belarmino', 'Marlon Belarmino', 0, '2018-07-08 22:51:02', '2018-07-08 22:51:02'),
(194, 'semimonthly', 11, 2, '10417.00', '0.00', '20.00', '0.00', 1, 'Marlon Belarmino', 'Marlon Belarmino', 0, '2018-07-08 22:51:14', '2018-07-08 22:51:14'),
(195, 'semimonthly', 11, 3, '16667.00', '1250.00', '25.00', '0.00', 1, 'Marlon Belarmino', 'Marlon Belarmino', 0, '2018-07-08 22:51:36', '2018-07-08 22:51:36'),
(196, 'semimonthly', 11, 4, '33333.00', '5416.67', '30.00', '0.00', 1, 'Marlon Belarmino', 'Marlon Belarmino', 0, '2018-07-08 22:51:53', '2018-07-08 22:51:53'),
(197, 'semimonthly', 11, 5, '83333.00', '20416.67', '32.00', '0.00', 1, 'Marlon Belarmino', 'Marlon Belarmino', 0, '2018-07-08 22:52:19', '2018-07-08 22:52:19'),
(198, 'semimonthly', 11, 6, '333333.00', '100416.67', '35.00', '0.00', 1, 'Marlon Belarmino', 'Marlon Belarmino', 0, '2018-07-08 22:52:43', '2018-07-08 22:52:43'),
(199, 'monthly', 1, 1, '20833.00', '0.00', '0.00', '0.00', 1, 'Marlon Belarmino', 'Marlon Belarmino', 0, '2018-07-08 23:00:02', '2018-07-08 23:00:02'),
(200, 'monthly', 1, 2, '20833.00', '0.00', '20.00', '0.00', 1, 'Marlon Belarmino', 'Marlon Belarmino', 0, '2018-07-08 23:00:10', '2018-07-08 23:00:10'),
(201, 'monthly', 1, 3, '33333.00', '2500.00', '25.00', '0.00', 1, 'Marlon Belarmino', 'Marlon Belarmino', 0, '2018-07-08 23:00:31', '2018-07-08 23:00:31'),
(202, 'monthly', 1, 4, '66667.00', '10833.33', '30.00', '0.00', 1, 'Marlon Belarmino', 'Marlon Belarmino', 0, '2018-07-08 23:00:49', '2018-07-08 23:00:49'),
(203, 'monthly', 1, 5, '166667.00', '40833.33', '32.00', '0.00', 1, 'Marlon Belarmino', 'Marlon Belarmino', 0, '2018-07-08 23:01:06', '2018-07-08 23:01:06'),
(204, 'monthly', 1, 6, '666667.00', '200833.33', '35.00', '0.00', 1, 'Marlon Belarmino', 'Marlon Belarmino', 0, '2018-07-08 23:01:59', '2018-07-08 23:01:59'),
(205, 'monthly', 2, 1, '20833.00', '0.00', '0.00', '0.00', 1, 'Marlon Belarmino', 'Marlon Belarmino', 0, '2018-07-08 23:00:02', '2018-07-08 23:00:02'),
(206, 'monthly', 2, 2, '20833.00', '0.00', '20.00', '0.00', 1, 'Marlon Belarmino', 'Marlon Belarmino', 0, '2018-07-08 23:00:10', '2018-07-08 23:00:10'),
(207, 'monthly', 2, 3, '33333.00', '2500.00', '25.00', '0.00', 1, 'Marlon Belarmino', 'Marlon Belarmino', 0, '2018-07-08 23:00:31', '2018-07-08 23:00:31'),
(208, 'monthly', 2, 4, '66667.00', '10833.33', '30.00', '0.00', 1, 'Marlon Belarmino', 'Marlon Belarmino', 0, '2018-07-08 23:00:49', '2018-07-08 23:00:49'),
(209, 'monthly', 2, 5, '166667.00', '40833.33', '32.00', '0.00', 1, 'Marlon Belarmino', 'Marlon Belarmino', 0, '2018-07-08 23:01:06', '2018-07-08 23:01:06'),
(210, 'monthly', 2, 6, '666667.00', '200833.33', '35.00', '0.00', 1, 'Marlon Belarmino', 'Marlon Belarmino', 0, '2018-07-08 23:01:59', '2018-07-08 23:01:59'),
(211, 'monthly', 3, 1, '20833.00', '0.00', '0.00', '0.00', 1, 'Marlon Belarmino', 'Marlon Belarmino', 0, '2018-07-08 23:00:02', '2018-07-08 23:00:02'),
(212, 'monthly', 3, 2, '20833.00', '0.00', '20.00', '0.00', 1, 'Marlon Belarmino', 'Marlon Belarmino', 0, '2018-07-08 23:00:10', '2018-07-08 23:00:10'),
(213, 'monthly', 3, 3, '33333.00', '2500.00', '25.00', '0.00', 1, 'Marlon Belarmino', 'Marlon Belarmino', 0, '2018-07-08 23:00:31', '2018-07-08 23:00:31'),
(214, 'monthly', 3, 4, '66667.00', '10833.33', '30.00', '0.00', 1, 'Marlon Belarmino', 'Marlon Belarmino', 0, '2018-07-08 23:00:49', '2018-07-08 23:00:49'),
(215, 'monthly', 3, 5, '166667.00', '40833.33', '32.00', '0.00', 1, 'Marlon Belarmino', 'Marlon Belarmino', 0, '2018-07-08 23:01:06', '2018-07-08 23:01:06'),
(216, 'monthly', 3, 6, '666667.00', '200833.33', '35.00', '0.00', 1, 'Marlon Belarmino', 'Marlon Belarmino', 0, '2018-07-08 23:01:59', '2018-07-08 23:01:59'),
(217, 'monthly', 4, 1, '20833.00', '0.00', '0.00', '0.00', 1, 'Marlon Belarmino', 'Marlon Belarmino', 0, '2018-07-08 23:00:02', '2018-07-08 23:00:02'),
(218, 'monthly', 4, 2, '20833.00', '0.00', '20.00', '0.00', 1, 'Marlon Belarmino', 'Marlon Belarmino', 0, '2018-07-08 23:00:10', '2018-07-08 23:00:10'),
(219, 'monthly', 4, 3, '33333.00', '2500.00', '25.00', '0.00', 1, 'Marlon Belarmino', 'Marlon Belarmino', 0, '2018-07-08 23:00:31', '2018-07-08 23:00:31'),
(220, 'monthly', 4, 4, '66667.00', '10833.33', '30.00', '0.00', 1, 'Marlon Belarmino', 'Marlon Belarmino', 0, '2018-07-08 23:00:49', '2018-07-08 23:00:49'),
(221, 'monthly', 4, 5, '166667.00', '40833.33', '32.00', '0.00', 1, 'Marlon Belarmino', 'Marlon Belarmino', 0, '2018-07-08 23:01:06', '2018-07-08 23:01:06'),
(222, 'monthly', 4, 6, '666667.00', '200833.33', '35.00', '0.00', 1, 'Marlon Belarmino', 'Marlon Belarmino', 0, '2018-07-08 23:01:59', '2018-07-08 23:01:59'),
(223, 'monthly', 5, 1, '20833.00', '0.00', '0.00', '0.00', 1, 'Marlon Belarmino', 'Marlon Belarmino', 0, '2018-07-08 23:00:02', '2018-07-08 23:00:02'),
(224, 'monthly', 5, 2, '20833.00', '0.00', '20.00', '0.00', 1, 'Marlon Belarmino', 'Marlon Belarmino', 0, '2018-07-08 23:00:10', '2018-07-08 23:00:10'),
(225, 'monthly', 5, 3, '33333.00', '2500.00', '25.00', '0.00', 1, 'Marlon Belarmino', 'Marlon Belarmino', 0, '2018-07-08 23:00:31', '2018-07-08 23:00:31'),
(226, 'monthly', 5, 4, '66667.00', '10833.33', '30.00', '0.00', 1, 'Marlon Belarmino', 'Marlon Belarmino', 0, '2018-07-08 23:00:49', '2018-07-08 23:00:49'),
(227, 'monthly', 5, 5, '166667.00', '40833.33', '32.00', '0.00', 1, 'Marlon Belarmino', 'Marlon Belarmino', 0, '2018-07-08 23:01:06', '2018-07-08 23:01:06'),
(228, 'monthly', 5, 6, '666667.00', '200833.33', '35.00', '0.00', 1, 'Marlon Belarmino', 'Marlon Belarmino', 0, '2018-07-08 23:01:59', '2018-07-08 23:01:59'),
(229, 'monthly', 6, 1, '20833.00', '0.00', '0.00', '0.00', 1, 'Marlon Belarmino', 'Marlon Belarmino', 0, '2018-07-08 23:00:02', '2018-07-08 23:00:02'),
(230, 'monthly', 6, 2, '20833.00', '0.00', '20.00', '0.00', 1, 'Marlon Belarmino', 'Marlon Belarmino', 0, '2018-07-08 23:00:10', '2018-07-08 23:00:10'),
(231, 'monthly', 6, 3, '33333.00', '2500.00', '25.00', '0.00', 1, 'Marlon Belarmino', 'Marlon Belarmino', 0, '2018-07-08 23:00:31', '2018-07-08 23:00:31'),
(232, 'monthly', 6, 4, '66667.00', '10833.33', '30.00', '0.00', 1, 'Marlon Belarmino', 'Marlon Belarmino', 0, '2018-07-08 23:00:49', '2018-07-08 23:00:49'),
(233, 'monthly', 6, 5, '166667.00', '40833.33', '32.00', '0.00', 1, 'Marlon Belarmino', 'Marlon Belarmino', 0, '2018-07-08 23:01:06', '2018-07-08 23:01:06'),
(234, 'monthly', 6, 6, '666667.00', '200833.33', '35.00', '0.00', 1, 'Marlon Belarmino', 'Marlon Belarmino', 0, '2018-07-08 23:01:59', '2018-07-08 23:01:59'),
(235, 'monthly', 7, 1, '20833.00', '0.00', '0.00', '0.00', 1, 'Marlon Belarmino', 'Marlon Belarmino', 0, '2018-07-08 23:00:02', '2018-07-08 23:00:02'),
(236, 'monthly', 7, 2, '20833.00', '0.00', '20.00', '0.00', 1, 'Marlon Belarmino', 'Marlon Belarmino', 0, '2018-07-08 23:00:10', '2018-07-08 23:00:10'),
(237, 'monthly', 7, 3, '33333.00', '2500.00', '25.00', '0.00', 1, 'Marlon Belarmino', 'Marlon Belarmino', 0, '2018-07-08 23:00:31', '2018-07-08 23:00:31'),
(238, 'monthly', 7, 4, '66667.00', '10833.33', '30.00', '0.00', 1, 'Marlon Belarmino', 'Marlon Belarmino', 0, '2018-07-08 23:00:49', '2018-07-08 23:00:49'),
(239, 'monthly', 7, 5, '166667.00', '40833.33', '32.00', '0.00', 1, 'Marlon Belarmino', 'Marlon Belarmino', 0, '2018-07-08 23:01:06', '2018-07-08 23:01:06'),
(240, 'monthly', 7, 6, '666667.00', '200833.33', '35.00', '0.00', 1, 'Marlon Belarmino', 'Marlon Belarmino', 0, '2018-07-08 23:01:59', '2018-07-08 23:01:59'),
(241, 'monthly', 8, 1, '20833.00', '0.00', '0.00', '0.00', 1, 'Marlon Belarmino', 'Marlon Belarmino', 0, '2018-07-08 23:00:02', '2018-07-08 23:00:02'),
(242, 'monthly', 8, 2, '20833.00', '0.00', '20.00', '0.00', 1, 'Marlon Belarmino', 'Marlon Belarmino', 0, '2018-07-08 23:00:10', '2018-07-08 23:00:10'),
(243, 'monthly', 8, 3, '33333.00', '2500.00', '25.00', '0.00', 1, 'Marlon Belarmino', 'Marlon Belarmino', 0, '2018-07-08 23:00:31', '2018-07-08 23:00:31'),
(244, 'monthly', 8, 4, '66667.00', '10833.33', '30.00', '0.00', 1, 'Marlon Belarmino', 'Marlon Belarmino', 0, '2018-07-08 23:00:49', '2018-07-08 23:00:49'),
(245, 'monthly', 8, 5, '166667.00', '40833.33', '32.00', '0.00', 1, 'Marlon Belarmino', 'Marlon Belarmino', 0, '2018-07-08 23:01:06', '2018-07-08 23:01:06'),
(246, 'monthly', 8, 6, '666667.00', '200833.33', '35.00', '0.00', 1, 'Marlon Belarmino', 'Marlon Belarmino', 0, '2018-07-08 23:01:59', '2018-07-08 23:01:59'),
(247, 'monthly', 9, 1, '20833.00', '0.00', '0.00', '0.00', 1, 'Marlon Belarmino', 'Marlon Belarmino', 0, '2018-07-08 23:00:02', '2018-07-08 23:00:02'),
(248, 'monthly', 9, 2, '20833.00', '0.00', '20.00', '0.00', 1, 'Marlon Belarmino', 'Marlon Belarmino', 0, '2018-07-08 23:00:10', '2018-07-08 23:00:10'),
(249, 'monthly', 9, 3, '33333.00', '2500.00', '25.00', '0.00', 1, 'Marlon Belarmino', 'Marlon Belarmino', 0, '2018-07-08 23:00:31', '2018-07-08 23:00:31'),
(250, 'monthly', 9, 4, '66667.00', '10833.33', '30.00', '0.00', 1, 'Marlon Belarmino', 'Marlon Belarmino', 0, '2018-07-08 23:00:49', '2018-07-08 23:00:49'),
(251, 'monthly', 9, 5, '166667.00', '40833.33', '32.00', '0.00', 1, 'Marlon Belarmino', 'Marlon Belarmino', 0, '2018-07-08 23:01:06', '2018-07-08 23:01:06'),
(252, 'monthly', 9, 6, '666667.00', '200833.33', '35.00', '0.00', 1, 'Marlon Belarmino', 'Marlon Belarmino', 0, '2018-07-08 23:01:59', '2018-07-08 23:01:59'),
(253, 'monthly', 10, 1, '20833.00', '0.00', '0.00', '0.00', 1, 'Marlon Belarmino', 'Marlon Belarmino', 0, '2018-07-08 23:00:02', '2018-07-08 23:00:02'),
(254, 'monthly', 10, 2, '20833.00', '0.00', '20.00', '0.00', 1, 'Marlon Belarmino', 'Marlon Belarmino', 0, '2018-07-08 23:00:10', '2018-07-08 23:00:10'),
(255, 'monthly', 10, 3, '33333.00', '2500.00', '25.00', '0.00', 1, 'Marlon Belarmino', 'Marlon Belarmino', 0, '2018-07-08 23:00:31', '2018-07-08 23:00:31'),
(256, 'monthly', 10, 4, '66667.00', '10833.33', '30.00', '0.00', 1, 'Marlon Belarmino', 'Marlon Belarmino', 0, '2018-07-08 23:00:49', '2018-07-08 23:00:49'),
(257, 'monthly', 10, 5, '166667.00', '40833.33', '32.00', '0.00', 1, 'Marlon Belarmino', 'Marlon Belarmino', 0, '2018-07-08 23:01:06', '2018-07-08 23:01:06'),
(258, 'monthly', 10, 6, '666667.00', '200833.33', '35.00', '0.00', 1, 'Marlon Belarmino', 'Marlon Belarmino', 0, '2018-07-08 23:01:59', '2018-07-08 23:01:59'),
(259, 'monthly', 11, 1, '20833.00', '0.00', '0.00', '0.00', 1, 'Marlon Belarmino', 'Marlon Belarmino', 0, '2018-07-08 23:00:02', '2018-07-08 23:00:02'),
(260, 'monthly', 11, 2, '20833.00', '0.00', '20.00', '0.00', 1, 'Marlon Belarmino', 'Marlon Belarmino', 0, '2018-07-08 23:00:10', '2018-07-08 23:00:10'),
(261, 'monthly', 11, 3, '33333.00', '2500.00', '25.00', '0.00', 1, 'Marlon Belarmino', 'Marlon Belarmino', 0, '2018-07-08 23:00:31', '2018-07-08 23:00:31'),
(262, 'monthly', 11, 4, '66667.00', '10833.33', '30.00', '0.00', 1, 'Marlon Belarmino', 'Marlon Belarmino', 0, '2018-07-08 23:00:49', '2018-07-08 23:00:49'),
(263, 'monthly', 11, 5, '166667.00', '40833.33', '32.00', '0.00', 1, 'Marlon Belarmino', 'Marlon Belarmino', 0, '2018-07-08 23:01:06', '2018-07-08 23:01:06'),
(264, 'monthly', 11, 6, '666667.00', '200833.33', '35.00', '0.00', 1, 'Marlon Belarmino', 'Marlon Belarmino', 0, '2018-07-08 23:01:59', '2018-07-08 23:01:59');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_type_id` int(11) NOT NULL DEFAULT '1',
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_by` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `lu_by` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `deleted` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `user_type_id`, `email`, `password`, `remember_token`, `created_by`, `lu_by`, `deleted`, `created_at`, `updated_at`) VALUES
(2, 'Marlon Belarmino', 1, 'belarminomarlon@yahoo.com', '$2y$10$pII3gchlu3.kyFac9CGnmOqbWSQW58lgX38tw8vy.3yXByjgRw0Zq', 'CUw7A7YhjgLTtZNEvPiu6chT4nTqExiYyF8lgvvuFVwgPKqqMd0WxGQuacqc', 'marlon', 'marlon', 0, '2018-06-28 01:35:32', '2018-06-28 01:35:32'),
(3, 'Payroll Admin', 1, 'admin@payroll.com', '$2y$10$ePrvf/wrqHk1tX.Sc0VSZ.NjPSda.Xp/pVOrJOdRiyf/3z3UVlY0q', 'GeWOe45jOQotBNkGsSsRH8PtaXcW2thmfj923PoEGK885Y7AOvZfoVS1C9iz', 'marlon', 'Payroll Admin', 0, '2018-09-10 01:49:59', '2019-10-30 01:52:59'),
(4, 'gina castor', 1, 'gacastor@circuit-solutions.net', '$2y$10$UpKIx6NB7.U2bFY2fSKgxO2KynfT9/WZXZ5xA16xXrrAdTYm5SmGe', 'v20hyJmZVd63aBuKs2tK6qi1gbQjY3KMawNCJrVjGVm0QOKHfsw8yDpxdGbZ', 'marlon', 'marlon', 0, '2018-10-04 19:21:54', '2018-10-04 19:21:54');

-- --------------------------------------------------------

--
-- Table structure for table `user_modules`
--

CREATE TABLE `user_modules` (
  `id` int(10) UNSIGNED NOT NULL,
  `module_code` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `module_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `module_type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `lu_by` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_by` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `user_modules`
--

INSERT INTO `user_modules` (`id`, `module_code`, `module_name`, `module_type`, `lu_by`, `created_by`, `created_at`, `updated_at`, `deleted`) VALUES
(1, 'deduction_type', 'Deduction Type', 'module', 'admin', 'admin', NULL, NULL, 0),
(2, 'payroll_rate', 'Payroll Rate', 'module', 'admin', 'admin', NULL, NULL, 0),
(3, 'payroll_variable', 'Payroll Variable', 'module', 'admin', 'admin', NULL, NULL, 0),
(4, 'holidays', 'Holidays', 'module', 'admin', 'admin', NULL, NULL, 0),
(5, 'sss', 'SSS', 'module', 'admin', 'admin', NULL, NULL, 0),
(6, 'pagibig', 'Pagibig', 'module', 'admin', 'admin', NULL, NULL, 0),
(7, 'philhealth', 'PhilHealth', 'module', 'admin', 'admin', NULL, NULL, 0),
(8, 'tax', 'Tax', 'module', 'admin', 'admin', NULL, NULL, 0),
(9, 'payroll_register', 'Payroll Register', 'module', 'admin', 'admin', NULL, NULL, 0),
(10, 'deduction', 'Add Deduction ', 'module', 'admin', 'admin', NULL, NULL, 0),
(11, 'payroll_register_report', 'Payroll Register Report', 'report', 'admin', 'admin', NULL, NULL, 0),
(12, 'payroll_register_history', 'Payroll Register History', 'report', 'admin', 'admin', NULL, NULL, 0),
(13, 'alphalist_payroll_journal', 'Alphalist Payroll Journal', 'report', 'admin', 'admin', NULL, NULL, 0),
(14, 'deduction_report', 'Deduction Report', 'report', 'admin', 'admin', NULL, NULL, 0),
(15, 'addition_report', 'Addition Report', 'report', 'admin', 'admin', NULL, NULL, 0),
(16, 'thirteenth_month', 'Thirteenth Month', 'report', 'admin', 'admin', NULL, NULL, 0),
(17, 'phic_report', 'PHIC Report', 'report', 'admin', 'admin', NULL, NULL, 0),
(18, 'hdmf_report', 'HDMF Report', 'report', 'admin', 'admin', NULL, NULL, 0),
(19, 'sss_report', 'SSS Report', 'report', 'admin', 'admin', NULL, NULL, 0),
(20, 'tax_report', 'TAX Report', 'report', 'admin', 'admin', NULL, NULL, 0),
(21, 'register_user', 'Register User', 'module', 'admin', 'admin', NULL, NULL, 0),
(22, 'user_type', 'User Type', 'module', 'admin', 'admin', NULL, NULL, 0),
(23, 'addition', 'Add Addition ', 'module', 'admin', 'admin', NULL, NULL, 0),
(24, 'dtr', 'Date and Time Records', 'module', 'admin', 'admin', NULL, NULL, 0),
(25, 'employee_information', 'Employees Information Report', 'report', 'admin', 'admin', NULL, NULL, 0),
(26, 'last_pay', 'Last Pay Module', 'module', 'admin', 'admin', NULL, NULL, 0),
(27, 'deduction_actual_report', 'Deduction Actual Report', 'report', 'admin', 'admin', NULL, NULL, 0),
(28, 'addition_actual_report', 'Addition Actual Report', 'report', 'admin', 'admin', NULL, NULL, 0),
(29, 'summary_ot_report', 'Summary Overtime Report', 'report', 'admin', 'admin', NULL, NULL, 0),
(30, 'summary_allowance_report', 'Summary Allowance Report', 'report', 'admin', 'admin', NULL, NULL, 0),
(31, 'metrobank_data', 'MetroBank Data Export', 'report', 'admin', 'admin', NULL, NULL, 0);

-- --------------------------------------------------------

--
-- Table structure for table `user_module_accesses`
--

CREATE TABLE `user_module_accesses` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_type_id` int(11) NOT NULL,
  `deduction_type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'all',
  `payroll_rate` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'all',
  `payroll_variable` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'all',
  `holidays` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'all',
  `sss` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'all',
  `pagibig` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'all',
  `philhealth` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'all',
  `tax` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'all',
  `payroll_register` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'all',
  `dtr` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'all',
  `deduction` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'all',
  `addition` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'all',
  `employee_information` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'all',
  `last_pay` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'all',
  `payroll_register_report` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'all',
  `payroll_register_history` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'all',
  `alphalist_payroll_journal` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'all',
  `deduction_report` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'all',
  `addition_report` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'all',
  `thirteenth_month` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'all',
  `phic_report` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'all',
  `hdmf_report` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'all',
  `sss_report` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'all',
  `tax_report` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'all',
  `register_user` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'all',
  `user_type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'all',
  `lu_by` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_by` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted` int(11) NOT NULL DEFAULT '0',
  `addition_actual_report` varchar(15) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'all',
  `deduction_actual_report` varchar(15) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'all',
  `metrobank_data` varchar(15) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'all',
  `summary_allowance_report` varchar(15) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'all',
  `summary_ot_report` varchar(15) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'all'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `user_module_accesses`
--

INSERT INTO `user_module_accesses` (`id`, `user_type_id`, `deduction_type`, `payroll_rate`, `payroll_variable`, `holidays`, `sss`, `pagibig`, `philhealth`, `tax`, `payroll_register`, `dtr`, `deduction`, `addition`, `employee_information`, `last_pay`, `payroll_register_report`, `payroll_register_history`, `alphalist_payroll_journal`, `deduction_report`, `addition_report`, `thirteenth_month`, `phic_report`, `hdmf_report`, `sss_report`, `tax_report`, `register_user`, `user_type`, `lu_by`, `created_by`, `created_at`, `updated_at`, `deleted`, `addition_actual_report`, `deduction_actual_report`, `metrobank_data`, `summary_allowance_report`, `summary_ot_report`) VALUES
(1, 1, 'all', 'all', 'all', 'all', 'all', 'all', 'all', 'all', 'all', 'all', 'all', 'all', 'all', 'all', 'all', 'all', 'all', 'all', 'all', 'all', 'all', 'all', 'all', 'all', 'all', 'all', 'jm', 'jm', '2018-10-11 01:16:46', '2018-10-11 01:16:46', 0, 'all', 'all', 'all', 'all', 'all'),
(2, 2, 'all', 'all', 'all', 'all', 'all', 'all', 'all', 'all', 'all', 'all', 'all', 'all', 'all', 'all', 'all', 'all', 'none', 'none', 'none', 'none', 'none', 'none', 'none', 'none', 'all', 'all', 'jm', 'jm', '2018-10-11 01:17:37', '2018-10-11 01:17:37', 0, 'all', 'all', 'all', 'all', 'all'),
(3, 3, 'all', 'view', 'view', 'view', 'view', 'view', 'view', 'view', 'all', 'all', 'all', 'all', 'all', 'all', 'all', 'all', 'all', 'all', 'all', 'all', 'all', 'all', 'all', 'all', 'all', 'all', 'jm', 'jm', '2018-10-16 02:42:25', '2018-10-16 02:42:25', 0, 'all', 'all', 'all', 'all', 'all');

-- --------------------------------------------------------

--
-- Table structure for table `user_types`
--

CREATE TABLE `user_types` (
  `id` int(10) UNSIGNED NOT NULL,
  `type_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `type_description` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `lu_by` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_by` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `user_types`
--

INSERT INTO `user_types` (`id`, `type_name`, `type_description`, `lu_by`, `created_by`, `created_at`, `updated_at`, `deleted`) VALUES
(1, 'Super User', 'Test Default', 'jm', 'jm', '2018-10-11 01:16:46', '2018-10-11 01:16:46', 0),
(2, 'Trial User', 'Last day', 'jm', 'jm', '2018-10-11 01:17:36', '2018-10-16 17:55:03', 0),
(3, 'User 1', 'Test', 'jm', 'jm', '2018-10-16 02:42:25', '2018-10-16 02:42:54', 1);

-- --------------------------------------------------------

--
-- Stand-in structure for view `view_actual_addition_report`
-- (See below for the actual view)
--
CREATE TABLE `view_actual_addition_report` (
`company_id` varchar(15)
,`fullname` varchar(93)
,`company_name` varchar(100)
,`department` varchar(50)
,`company_ind` bigint(20)
,`register_number` varchar(15)
,`addition_name` varchar(191)
,`taxable` int(11)
,`amount` decimal(15,2)
,`status` varchar(15)
,`pay_date` date
,`Qtaxable` varchar(5)
,`addition_type` varchar(30)
);

-- --------------------------------------------------------

--
-- Stand-in structure for view `view_actual_deduction_report`
-- (See below for the actual view)
--
CREATE TABLE `view_actual_deduction_report` (
`deduction_id` int(11)
,`company_id` varchar(15)
,`fullname` varchar(93)
,`company_name` varchar(100)
,`department` varchar(50)
,`company_ind` bigint(20)
,`register_number` varchar(15)
,`deduction_name` varchar(191)
,`deduction_type` varchar(15)
,`amount` decimal(15,2)
,`status` varchar(15)
,`pay_date` date
);

-- --------------------------------------------------------

--
-- Stand-in structure for view `view_adddition_reg`
-- (See below for the actual view)
--
CREATE TABLE `view_adddition_reg` (
`full_name` varchar(92)
,`register_number` varchar(15)
,`company_id` varchar(15)
,`amount` decimal(15,2)
,`term_number` int(11)
,`total_balance` decimal(8,2)
,`addition_name` varchar(191)
,`payment_term` int(11)
);

-- --------------------------------------------------------

--
-- Stand-in structure for view `view_addition_type_amount`
-- (See below for the actual view)
--
CREATE TABLE `view_addition_type_amount` (
`amount` decimal(37,2)
,`addition_type` varchar(30)
,`register_number` varchar(15)
,`company_id` varchar(15)
,`taxable` int(2)
);

-- --------------------------------------------------------

--
-- Stand-in structure for view `view_allowance_report`
-- (See below for the actual view)
--
CREATE TABLE `view_allowance_report` (
`company_id` varchar(15)
,`empname` varchar(93)
,`company_ind` bigint(20)
,`department` varchar(50)
,`company_name` varchar(100)
,`taxable_allowance` decimal(11,2)
,`taxable_allowance_type` varchar(20)
,`non_taxable_allowance` decimal(11,2)
,`non_taxable_allowance_type` varchar(20)
,`register_number` varchar(15)
,`pay_date` date
,`taxable_allowance_absent_amount` decimal(8,2)
,`taxallowance_late_under_amount` decimal(8,2)
,`taxable_allowance_amount` decimal(11,2)
,`nontaxable_allowance_absent_amount` decimal(8,2)
,`nontaxallowance_late_under_amount` decimal(8,2)
,`nontaxable_allowance_amount` decimal(11,2)
,`total_allowance` decimal(12,2)
);

-- --------------------------------------------------------

--
-- Stand-in structure for view `view_checkifgroup_belongto_register`
-- (See below for the actual view)
--
CREATE TABLE `view_checkifgroup_belongto_register` (
`register_number` varchar(15)
,`emp_no` bigint(20)
,`full_name` varchar(92)
,`company_id` varchar(20)
,`company_ind` bigint(20)
,`company_name` varchar(100)
,`type` varchar(200)
,`flexihrs` decimal(8,2)
,`payroll_group_ind` bigint(20)
);

-- --------------------------------------------------------

--
-- Stand-in structure for view `view_check_daterange`
-- (See below for the actual view)
--
CREATE TABLE `view_check_daterange` (
`company_id` varchar(15)
,`employee_name` varchar(191)
,`sched_date` date
,`payroll_status` varchar(20)
,`group_ind` bigint(20)
,`register_number` varchar(15)
);

-- --------------------------------------------------------

--
-- Stand-in structure for view `view_deduction_reg`
-- (See below for the actual view)
--
CREATE TABLE `view_deduction_reg` (
`full_name` varchar(92)
,`register_number` varchar(15)
,`company_id` varchar(15)
,`amount` decimal(15,2)
,`term_number` int(11)
,`total_balance` decimal(8,2)
,`deduction_type` varchar(15)
,`deduction_name` varchar(191)
,`payment_term` int(11)
);

-- --------------------------------------------------------

--
-- Stand-in structure for view `view_employee_information`
-- (See below for the actual view)
--
CREATE TABLE `view_employee_information` (
`register_number` varchar(15)
,`name` varchar(66)
,`company_name` varchar(100)
,`group_name` varchar(200)
,`daily_rate` decimal(11,2)
,`basic_salary` decimal(11,2)
,`payroll_account_no` varchar(20)
,`company_id` varchar(20)
,`department` varchar(50)
,`position` varchar(50)
,`non_taxable_allowance` decimal(11,2)
,`taxable_allowance` decimal(11,2)
);

-- --------------------------------------------------------

--
-- Stand-in structure for view `view_employee_schedule`
-- (See below for the actual view)
--
CREATE TABLE `view_employee_schedule` (
`id` bigint(20)
,`template_id` bigint(20)
,`name` varchar(62)
,`company_id` varchar(20)
,`template` varchar(200)
,`type` varchar(200)
,`reg_in` time
,`reg_out` time
,`mon_in` time
,`mon_out` time
,`mon` int(2)
,`tue_in` time
,`tue_out` time
,`tue` int(2)
,`wed_in` time
,`wed_out` time
,`wed` int(11)
,`thu_in` time
,`thu_out` time
,`thu` int(2)
,`fri_in` time
,`fri_out` time
,`fri` int(2)
,`sat_in` time
,`sat_out` time
,`sat` int(2)
,`sun_in` time
,`sun_out` time
,`sun` int(2)
,`flexihrs` decimal(8,2)
,`lunch_out` time
,`lunch_in` time
,`lunch_hrs` decimal(8,2)
,`lu_by` varchar(20)
);

-- --------------------------------------------------------

--
-- Stand-in structure for view `view_getemployeedetails`
-- (See below for the actual view)
--
CREATE TABLE `view_getemployeedetails` (
`emp_no` bigint(20)
,`company_id` varchar(20)
,`lname` varchar(30)
,`fname` varchar(30)
,`mname` varchar(30)
,`company_ind` bigint(20)
,`department` varchar(50)
,`team` varchar(50)
,`full_name` varchar(96)
);

-- --------------------------------------------------------

--
-- Stand-in structure for view `view_getnextstatus_daily`
-- (See below for the actual view)
--
CREATE TABLE `view_getnextstatus_daily` (
`ind` int(11)
,`status_code` varchar(20)
,`last_num` bigint(12)
);

-- --------------------------------------------------------

--
-- Stand-in structure for view `view_getnextstatus_monthly`
-- (See below for the actual view)
--
CREATE TABLE `view_getnextstatus_monthly` (
`ind` int(11)
,`status_code` varchar(20)
,`last_num` bigint(12)
);

-- --------------------------------------------------------

--
-- Stand-in structure for view `view_getnextstatus_semi`
-- (See below for the actual view)
--
CREATE TABLE `view_getnextstatus_semi` (
`ind` int(11)
,`status_code` varchar(20)
,`last_num` bigint(12)
);

-- --------------------------------------------------------

--
-- Stand-in structure for view `view_getnextstatus_weekly`
-- (See below for the actual view)
--
CREATE TABLE `view_getnextstatus_weekly` (
`ind` int(11)
,`status_code` varchar(20)
,`last_num` bigint(12)
);

-- --------------------------------------------------------

--
-- Stand-in structure for view `view_get_payrollgroup_emp`
-- (See below for the actual view)
--
CREATE TABLE `view_get_payrollgroup_emp` (
`empname` varchar(62)
,`register_number` varchar(15)
,`company_id` varchar(20)
,`company_ind` bigint(20)
,`ind` bigint(20)
);

-- --------------------------------------------------------

--
-- Stand-in structure for view `view_get_payroll_register`
-- (See below for the actual view)
--
CREATE TABLE `view_get_payroll_register` (
`id` int(10) unsigned
,`register_number` varchar(15)
,`company_name` varchar(100)
,`pay_date_from` date
,`pay_date_to` date
,`pay_date` date
,`status` varchar(191)
,`release_date` date
,`group_count` bigint(21)
,`created_by` varchar(191)
);

-- --------------------------------------------------------

--
-- Stand-in structure for view `view_metrobank`
-- (See below for the actual view)
--
CREATE TABLE `view_metrobank` (
`company_id` varchar(15)
,`empname` varchar(92)
,`payroll_account_no` varchar(20)
,`company_ind` bigint(20)
,`department` varchar(50)
,`company_name` varchar(100)
,`register_number` varchar(15)
,`pay_date` date
,`taxable_allowance_amount` decimal(11,2)
,`nontaxable_allowance_amount` decimal(11,2)
,`total_allowance` decimal(12,2)
,`net_income` decimal(11,2)
);

-- --------------------------------------------------------

--
-- Stand-in structure for view `view_payrollgroup`
-- (See below for the actual view)
--
CREATE TABLE `view_payrollgroup` (
`register_number` varchar(15)
,`group_ind` bigint(20)
,`group_name` varchar(200)
,`deleted` int(11)
,`empcount` bigint(21)
);

-- --------------------------------------------------------

--
-- Stand-in structure for view `view_payrollgroup_list`
-- (See below for the actual view)
--
CREATE TABLE `view_payrollgroup_list` (
`ind` bigint(20)
,`company_ind` bigint(20)
,`group_name` varchar(200)
,`empcount` bigint(21)
);

-- --------------------------------------------------------

--
-- Stand-in structure for view `view_payslip`
-- (See below for the actual view)
--
CREATE TABLE `view_payslip` (
`name` varchar(62)
,`register_number` varchar(15)
,`group_ind` bigint(20)
,`company_id` varchar(15)
,`company_name` varchar(100)
,`total_days` decimal(8,2)
,`late_amount` decimal(8,2)
,`late_hrs` decimal(8,2)
,`undertime_hrs` decimal(8,2)
,`absent_amount` decimal(10,2)
,`absent_count` decimal(13,2)
,`undertime_amount` decimal(8,2)
,`basic_pay` decimal(8,2)
,`basic_pay_hrs` decimal(8,2)
,`pay_date_from` date
,`pay_date_to` date
,`pay_date` date
,`position` varchar(50)
,`department` varchar(50)
,`status_code` varchar(20)
,`monthly_salary` decimal(11,2)
,`daily_rate` decimal(11,2)
,`taxallowrate` decimal(11,2)
,`nontaxallowrate` decimal(11,2)
,`rd_hol_amount` decimal(14,2)
,`rd_hol_hrs` decimal(14,2)
,`ot_amount` decimal(15,2)
,`ot_hrs` decimal(15,2)
,`nd_amount` decimal(24,2)
,`nd_hrs` decimal(24,2)
,`leave_wpay_count` decimal(8,2)
,`taxable_allowance` decimal(11,2)
,`nontaxable_allowance` decimal(11,2)
,`gross_income` decimal(16,2)
,`total_additions` decimal(11,2)
,`sss_amount` decimal(11,2)
,`phil_amount` decimal(11,2)
,`pagibig_amount` decimal(11,2)
,`tax_amount` decimal(11,2)
,`total_deductions` decimal(16,2)
,`net_income` decimal(11,2)
,`status` varchar(191)
,`hold_aslastpay` int(2)
);

-- --------------------------------------------------------

--
-- Stand-in structure for view `view_payslipinfo`
-- (See below for the actual view)
--
CREATE TABLE `view_payslipinfo` (
`name` varchar(62)
,`company_id` varchar(20)
,`company_name` varchar(100)
,`department` varchar(50)
,`position` varchar(50)
,`status_code` varchar(20)
,`basic_salary` decimal(11,2)
,`salary_type` varchar(100)
,`taxable_allowance` decimal(11,2)
,`non_taxable_allowance` decimal(11,2)
);

-- --------------------------------------------------------

--
-- Stand-in structure for view `view_report_addition`
-- (See below for the actual view)
--
CREATE TABLE `view_report_addition` (
`name` varchar(62)
,`company_id` varchar(191)
,`company_ind` bigint(20)
,`company_name` varchar(100)
,`department` varchar(50)
,`addition_name` varchar(191)
,`addition_id` int(10) unsigned
,`status` varchar(191)
,`value` decimal(8,2)
,`transaction_value` decimal(8,2)
,`schedule` varchar(191)
,`validity` int(11)
,`validity_count` int(11)
,`remaining_balance` decimal(8,2)
,`encoded` varchar(191)
,`updated_at` timestamp
);

-- --------------------------------------------------------

--
-- Stand-in structure for view `view_report_deduction`
-- (See below for the actual view)
--
CREATE TABLE `view_report_deduction` (
`name` varchar(62)
,`company_id` varchar(191)
,`company_ind` bigint(20)
,`company_name` varchar(100)
,`department` varchar(50)
,`deduction_name` varchar(191)
,`deduction_id` int(11)
,`deduction_transaction_id` int(10) unsigned
,`status` varchar(191)
,`type` varchar(191)
,`value` decimal(8,2)
,`amortization` decimal(8,2)
,`schedule` varchar(191)
,`payment_term` int(11)
,`payment_count` int(11)
,`total_balance` decimal(8,2)
,`encoded` varchar(191)
,`updated_at` timestamp
);

-- --------------------------------------------------------

--
-- Stand-in structure for view `view_report_deduction_payreg`
-- (See below for the actual view)
--
CREATE TABLE `view_report_deduction_payreg` (
`register_number` varchar(15)
,`employee_name` varchar(191)
,`company_id` varchar(15)
,`amount` decimal(15,2)
,`deduction_transaction_id` bigint(20)
,`deduction_name` varchar(191)
,`deduction_id` int(11)
,`deduction_type` varchar(15)
,`pay_date` date
,`status` varchar(191)
);

-- --------------------------------------------------------

--
-- Stand-in structure for view `view_report_employee_information`
-- (See below for the actual view)
--
CREATE TABLE `view_report_employee_information` (
`company_id` varchar(20)
,`biometrics_id` varchar(20)
,`company_ind` bigint(20)
,`company_name` varchar(100)
,`fname` varchar(30)
,`mname` varchar(30)
,`lname` varchar(30)
,`full_name` varchar(92)
,`gender` varchar(6)
,`status` varchar(10)
,`birtdate` date
,`date_employed` date
,`regular_date` date
,`employment_status` varchar(16)
,`position` varchar(50)
,`department` varchar(50)
,`team` varchar(50)
,`bank_name` varchar(100)
,`payroll_account_no` varchar(20)
,`tin_number` varchar(20)
,`philhealth_number` varchar(20)
,`pagibig_number` varchar(20)
,`sss_number` varchar(20)
,`status_code` varchar(20)
,`salary_type` varchar(100)
,`basic_salary` decimal(11,2)
,`hourly_rate` decimal(11,2)
,`non_taxable_allowance` decimal(11,2)
,`taxable_allowance` decimal(11,2)
,`tax_shield` decimal(11,2)
,`gross_salary` decimal(11,2)
);

-- --------------------------------------------------------

--
-- Stand-in structure for view `view_report_lastpay`
-- (See below for the actual view)
--
CREATE TABLE `view_report_lastpay` (
`empname` varchar(62)
,`company_id` varchar(15)
,`company_ind` bigint(20)
,`company_name` varchar(100)
,`department` varchar(50)
,`date_employed` date
,`basic_salary` decimal(11,2)
,`taxableallowance` decimal(12,2)
,`nontaxableallowance` decimal(12,2)
,`gross_for_thirteenth` decimal(61,2)
,`nontaxallowance_for_thirteenth` decimal(11,2)
,`taxallowance_for_thirteenth` decimal(11,2)
,`register_number` varchar(15)
,`pay_date` date
,`pay_date_from` date
,`pay_date_to` date
,`tax_income` decimal(11,2)
,`wtax` decimal(11,2)
);

-- --------------------------------------------------------

--
-- Stand-in structure for view `view_report_overtime`
-- (See below for the actual view)
--
CREATE TABLE `view_report_overtime` (
`fullname` varchar(93)
,`company_id` varchar(15)
,`company_ind` bigint(20)
,`company_name` varchar(100)
,`department` varchar(50)
,`register_number` varchar(15)
,`pay_date` date
,`overtime_amount_reg` decimal(8,2)
,`overtime_hrs_reg` decimal(8,2)
,`overtime_amount_leg` decimal(8,2)
,`overtime_hrs_leg` decimal(8,2)
,`overtime_amount_special` decimal(9,2)
,`overtime_hrs_special` decimal(9,2)
,`overtime_amount_rd` decimal(8,2)
,`overtime_hrs_rd` decimal(8,2)
,`overtime_amount_rd_spcl` decimal(9,2)
,`overtime_hrs_rd_spcl` decimal(9,2)
,`overtime_amount_rd_leg` decimal(8,2)
,`overtime_hrs_rd_leg` decimal(8,2)
,`nd_amount_reg_ot` decimal(8,2)
,`nd_hrs_reg_ot` decimal(8,2)
,`nd_amount_spcl_ot` decimal(9,2)
,`nd_hrs_spcl_ot` decimal(9,2)
,`nd_amount_rd_spcl_ot` decimal(9,2)
,`nd_hrs_rd_spcl_ot` decimal(9,2)
,`nd_amount_leg_ot` decimal(8,2)
,`nd_hrs_leg_ot` decimal(8,2)
,`nd_amount_xs_ot` decimal(8,2)
,`nd_hrs_xs_ot` decimal(8,2)
,`nd_amount_rd_leg_ot` decimal(8,2)
,`nd_hrs_rd_leg_ot` decimal(8,2)
,`total_amount_ot` decimal(60,2)
,`total_hrs_ot` decimal(24,2)
,`ot_adustment` decimal(59,2)
);

-- --------------------------------------------------------

--
-- Stand-in structure for view `view_report_pagibig`
-- (See below for the actual view)
--
CREATE TABLE `view_report_pagibig` (
`empname` varchar(92)
,`company_ind` bigint(20)
,`department` varchar(50)
,`company_name` varchar(100)
,`register_number` varchar(15)
,`company_id` varchar(15)
,`pagibig_number` varchar(20)
,`gross` decimal(11,2)
,`employee_share` decimal(11,2)
,`employer_share` decimal(11,2)
,`pay_date` date
,`pay_term` varchar(191)
,`with_pagibig` varchar(5)
);

-- --------------------------------------------------------

--
-- Stand-in structure for view `view_report_payroll_journal_monthly`
-- (See below for the actual view)
--
CREATE TABLE `view_report_payroll_journal_monthly` (
`id` int(10) unsigned
,`register_number` varchar(15)
,`company_id` varchar(15)
,`lname` varchar(30)
,`fname` varchar(30)
,`mname` varchar(30)
,`company_name` varchar(100)
,`category_name` varchar(200)
,`company_ind` bigint(20)
,`department` varchar(50)
,`tax_status` varchar(20)
,`sss_number` varchar(20)
,`philhealth_number` varchar(20)
,`pagibig_number` varchar(20)
,`tin_number` varchar(20)
,`birth_date` date
,`date_employed` date
,`date_terminated` date
,`status` varchar(5)
,`overtime_pay` decimal(60,2)
,`taxable_allowance` decimal(11,2)
,`holiday_pay` decimal(10,2)
,`basic_salary` decimal(60,2)
,`gross_income` decimal(60,2)
,`nightdiff` decimal(60,2)
,`sss_ee_share` decimal(11,2)
,`sss_er_share` decimal(11,2)
,`sss_total` decimal(12,2)
,`ec` decimal(11,2)
,`sss_and_ecc_total` decimal(13,2)
,`hdmf_ee_share` decimal(11,2)
,`hdmf_er_share` decimal(11,2)
,`hdmf_total` decimal(12,2)
,`phic_ee_share` decimal(11,2)
,`phic_er_share` decimal(11,2)
,`phic_total` decimal(12,2)
,`tax_income` decimal(64,2)
,`wtax` decimal(11,2)
,`sss_loan` decimal(37,2)
,`hdmf_loan` decimal(37,2)
,`net_income` decimal(11,2)
,`pay_date` date
,`month` varchar(9)
,`year` int(4)
);

-- --------------------------------------------------------

--
-- Stand-in structure for view `view_report_payroll_register`
-- (See below for the actual view)
--
CREATE TABLE `view_report_payroll_register` (
`company_ind` bigint(20)
,`register_number` varchar(15)
,`pay_date` date
,`company_id` varchar(15)
,`employee_name` varchar(191)
,`company_name` varchar(100)
,`department` varchar(50)
,`payroll_account_no` varchar(20)
,`basic_salary` decimal(11,2)
,`absent_amount` decimal(8,2)
,`late_amount` decimal(8,2)
,`undertime_amount` decimal(8,2)
,`legal_holiday` decimal(8,2)
,`special_non_working` decimal(8,2)
,`special_working` decimal(8,2)
,`restday` decimal(11,2)
,`overtime` decimal(15,2)
,`nightdiff` decimal(24,2)
,`taxable_allowance` decimal(11,2)
,`nontaxable_allowance` decimal(11,2)
,`total_additions` decimal(11,2)
,`gross_income` decimal(11,2)
,`sss` decimal(11,2)
,`philhealth` decimal(11,2)
,`pagibig` decimal(11,2)
,`tax` decimal(11,2)
,`total_deductions` decimal(11,2)
,`net_income` decimal(11,2)
,`other_deduction` decimal(37,2)
,`status` varchar(191)
,`with_sss` varchar(5)
,`with_pagibig` varchar(5)
,`with_philhealth` varchar(5)
,`with_withholdingtax` varchar(5)
);

-- --------------------------------------------------------

--
-- Stand-in structure for view `view_report_payroll_register_history_per_employee`
-- (See below for the actual view)
--
CREATE TABLE `view_report_payroll_register_history_per_employee` (
`id` int(10) unsigned
,`register_number` varchar(15)
,`company_id` varchar(15)
,`full_name` varchar(92)
,`company_name` varchar(100)
,`company_ind` varchar(20)
,`department` varchar(50)
,`pay_date` date
,`month` varchar(9)
,`year` int(4)
,`basic_salary` decimal(11,2)
,`absent_amount` decimal(8,2)
,`late_amount` decimal(8,2)
,`overtime_amount_reg` decimal(8,2)
,`overtime_amount_leg` decimal(8,2)
,`overtime_amount_spcl_nw` decimal(8,2)
,`overtime_amount_spcl_w` decimal(8,2)
,`working_amount_leg` decimal(8,2)
,`working_amount_spcl_nw` decimal(8,2)
,`working_amount_spcl_w` decimal(8,2)
,`nd_amount_reg` decimal(8,2)
,`nd_amount_leg` decimal(8,2)
,`nd_amount_spcl_nw` decimal(8,2)
,`nd_amount_spcl_w` decimal(8,2)
,`rd_amount_reg` decimal(8,2)
,`rd_amount_leg` decimal(8,2)
,`rd_amount_spcl_nw` decimal(8,2)
,`rd_amount_spcl_w` decimal(8,2)
,`nontaxable_allowance` decimal(11,2)
,`total_additions` decimal(11,2)
,`other_deductions` decimal(11,2)
,`gross_income` decimal(11,2)
,`sss_amount` decimal(11,2)
,`phil_amount` decimal(11,2)
,`pagibig_amount` decimal(11,2)
,`tax_amount` decimal(11,2)
,`total_deductions` decimal(11,2)
,`net_income` decimal(11,2)
,`sss_employer_share` decimal(11,2)
,`ec` decimal(11,2)
,`pagibig_employer_share` decimal(11,2)
,`tax_income` decimal(11,2)
,`ot_adjustment` decimal(59,2)
,`nd_adjustment` decimal(59,2)
);

-- --------------------------------------------------------

--
-- Stand-in structure for view `view_report_philhealth`
-- (See below for the actual view)
--
CREATE TABLE `view_report_philhealth` (
`id` int(10) unsigned
,`register_number` varchar(15)
,`company_id` varchar(15)
,`full_name` varchar(92)
,`company_name` varchar(100)
,`company_ind` bigint(20)
,`department` varchar(50)
,`philhealth_number` varchar(20)
,`phil_table_id` bigint(20)
,`gross` decimal(11,2)
,`employee_share` decimal(11,2)
,`employer_share` decimal(11,2)
,`total` decimal(12,2)
,`status` varchar(15)
,`pay_date` date
,`pay_term` varchar(191)
,`group_ind` bigint(20)
,`with_philhealth` varchar(5)
);

-- --------------------------------------------------------

--
-- Stand-in structure for view `view_report_sss`
-- (See below for the actual view)
--
CREATE TABLE `view_report_sss` (
`id` int(10) unsigned
,`register_number` varchar(15)
,`company_id` varchar(15)
,`full_name` varchar(92)
,`company_name` varchar(100)
,`company_ind` bigint(20)
,`department` varchar(50)
,`sss_number` varchar(20)
,`sss_table_id` bigint(20)
,`gross` decimal(8,2)
,`employee_share` decimal(11,2)
,`employer_share` decimal(11,2)
,`ec` decimal(11,2)
,`total` decimal(13,2)
,`status` varchar(15)
,`pay_date` date
,`pay_term` varchar(100)
,`group_ind` bigint(20)
,`with_sss` varchar(5)
);

-- --------------------------------------------------------

--
-- Stand-in structure for view `view_report_tax`
-- (See below for the actual view)
--
CREATE TABLE `view_report_tax` (
`empname` varchar(92)
,`company_ind` bigint(20)
,`department` varchar(50)
,`company_name` varchar(100)
,`register_number` varchar(15)
,`company_id` varchar(15)
,`tin_number` varchar(20)
,`gross` decimal(11,2)
,`sss` decimal(11,2)
,`philhealth` decimal(11,2)
,`pagibig` decimal(11,2)
,`non_taxable_earnings` decimal(11,2)
,`tax_income` decimal(11,2)
,`wtax` decimal(11,2)
,`pay_date` date
,`pay_term` varchar(191)
,`with_sss` varchar(5)
,`with_withholdingtax` varchar(5)
,`with_pagibig` varchar(5)
,`with_philhealth` varchar(5)
);

-- --------------------------------------------------------

--
-- Stand-in structure for view `view_report_thirteenthmonth`
-- (See below for the actual view)
--
CREATE TABLE `view_report_thirteenthmonth` (
`empname` varchar(62)
,`company_id` varchar(15)
,`company_ind` bigint(20)
,`company_name` varchar(100)
,`department` varchar(50)
,`date_employed` date
,`basic_salary` decimal(11,2)
,`taxableallowance` decimal(12,2)
,`nontaxableallowance` decimal(12,2)
,`gross_for_thirteenth` decimal(47,2)
,`nontaxallowance_for_thirteenth` decimal(11,2)
,`taxallowance_for_thirteenth` decimal(11,2)
,`register_number` varchar(15)
,`pay_date` date
,`pay_date_from` date
,`pay_date_to` date
);

-- --------------------------------------------------------

--
-- Stand-in structure for view `view_sendemail_emp`
-- (See below for the actual view)
--
CREATE TABLE `view_sendemail_emp` (
`empname` varchar(92)
,`company_id` varchar(15)
,`csi_email` varchar(50)
,`register_number` varchar(15)
,`group_ind` bigint(20)
,`company_ind` bigint(20)
,`emailed` varchar(100)
,`hold_aslastpay` int(2)
);

-- --------------------------------------------------------

--
-- Stand-in structure for view `view_tbladdition`
-- (See below for the actual view)
--
CREATE TABLE `view_tbladdition` (
`id` int(10) unsigned
,`company_id` varchar(191)
,`full_name` varchar(92)
,`department` varchar(50)
,`team` varchar(50)
,`company_ind` int(11)
,`addition_name` varchar(191)
,`status` varchar(191)
,`option` varchar(191)
,`taxable` int(11)
,`value` decimal(8,2)
,`transaction_value` decimal(8,2)
,`start_date` date
,`end_date` date
,`schedule` varchar(191)
,`validity` int(11)
,`validity_count` int(11)
,`remaining_balance` decimal(8,2)
,`created_by` varchar(191)
,`lu_by` varchar(191)
,`deleted` int(11)
,`created_at` timestamp
,`updated_at` timestamp
,`addition_type` varchar(30)
);

-- --------------------------------------------------------

--
-- Stand-in structure for view `view_tbldeduction`
-- (See below for the actual view)
--
CREATE TABLE `view_tbldeduction` (
`id` int(10) unsigned
,`company_id` varchar(191)
,`full_name` varchar(92)
,`department` varchar(50)
,`team` varchar(50)
,`company_ind` int(11)
,`deduction_id` int(11)
,`deduction_name` varchar(191)
,`status` varchar(191)
,`type` varchar(191)
,`value` decimal(8,2)
,`amortization` decimal(8,2)
,`start_date` date
,`end_date` date
,`schedule` varchar(191)
,`payment_term` int(11)
,`payment_count` int(11)
,`total_balance` decimal(8,2)
,`created_by` varchar(191)
,`lu_by` varchar(191)
,`deleted` int(11)
,`created_at` timestamp
,`updated_at` timestamp
);

-- --------------------------------------------------------

--
-- Stand-in structure for view `view_tbltax`
-- (See below for the actual view)
--
CREATE TABLE `view_tbltax` (
`id` int(10) unsigned
,`tax_type` varchar(191)
,`status_code` varchar(20)
,`status_number` int(11)
,`compensation_level` decimal(8,2)
,`prescribe_minimum` decimal(8,2)
,`percent_over_cl` decimal(8,2)
,`percentage` decimal(8,2)
,`notpercentage` int(11)
);

-- --------------------------------------------------------

--
-- Structure for view `view_actual_addition_report`
--
DROP TABLE IF EXISTS `view_actual_addition_report`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `view_actual_addition_report`  AS  select `a`.`company_id` AS `company_id`,replace(concat(`g`.`lname`,', ',`g`.`fname`,' ',`g`.`mname`),'Ã‘','Ñ') AS `fullname`,`e`.`company_name` AS `company_name`,`f`.`department` AS `department`,`d`.`company_ind` AS `company_ind`,`a`.`register_number` AS `register_number`,`b`.`addition_name` AS `addition_name`,`b`.`taxable` AS `taxable`,`a`.`amount` AS `amount`,`a`.`status` AS `status`,`h`.`pay_date` AS `pay_date`,if((`b`.`taxable` = 1),'TRUE','FALSE') AS `Qtaxable`,`b`.`addition_type` AS `addition_type` from ((((((`payroll_register_additions` `a` left join `addition_tables` `b` on((`a`.`addition_id` = `b`.`id`))) left join `payroll_register_attendance_summary` `d` on(((`a`.`register_number` = `d`.`register_number`) and (`a`.`company_id` = `d`.`company_id`)))) left join `hris_csi`.`company` `e` on((`e`.`id` = `d`.`company_ind`))) left join `hris_csi`.`employee_information` `f` on((`f`.`company_id` = `a`.`company_id`))) left join `hris_csi`.`personal_information` `g` on((`g`.`company_id` = `a`.`company_id`))) left join `payroll_register` `h` on((`a`.`register_number` = `h`.`register_number`))) ;

-- --------------------------------------------------------

--
-- Structure for view `view_actual_deduction_report`
--
DROP TABLE IF EXISTS `view_actual_deduction_report`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `view_actual_deduction_report`  AS  select `b`.`deduction_id` AS `deduction_id`,`a`.`company_id` AS `company_id`,replace(concat(`g`.`lname`,', ',`g`.`fname`,' ',`g`.`mname`),'Ã‘','Ñ') AS `fullname`,`e`.`company_name` AS `company_name`,`f`.`department` AS `department`,`d`.`company_ind` AS `company_ind`,`a`.`register_number` AS `register_number`,`c`.`deduction_name` AS `deduction_name`,`c`.`deduction_type` AS `deduction_type`,`a`.`amount` AS `amount`,`a`.`status` AS `status`,`h`.`pay_date` AS `pay_date` from (((((((`payroll_register_deductions` `a` left join `deduction_tables` `b` on((`a`.`deduction_transaction_id` = `b`.`id`))) left join `deduction_masters` `c` on((`b`.`deduction_id` = `c`.`id`))) left join `payroll_register_attendance_summary` `d` on(((`a`.`register_number` = `d`.`register_number`) and (`a`.`company_id` = `d`.`company_id`)))) left join `hris_csi`.`company` `e` on((`e`.`id` = `d`.`company_ind`))) left join `hris_csi`.`employee_information` `f` on((`f`.`company_id` = `a`.`company_id`))) left join `hris_csi`.`personal_information` `g` on((`g`.`company_id` = `a`.`company_id`))) left join `payroll_register` `h` on((`a`.`register_number` = `h`.`register_number`))) ;

-- --------------------------------------------------------

--
-- Structure for view `view_adddition_reg`
--
DROP TABLE IF EXISTS `view_adddition_reg`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `view_adddition_reg`  AS  select replace(ucase(concat(`d`.`lname`,',',`d`.`fname`,' ',`d`.`mname`)),'Ã‘','Ñ') AS `full_name`,`a`.`register_number` AS `register_number`,`a`.`company_id` AS `company_id`,`a`.`amount` AS `amount`,`a`.`term_number` AS `term_number`,`b`.`remaining_balance` AS `total_balance`,`b`.`addition_name` AS `addition_name`,`b`.`validity` AS `payment_term` from ((`payroll_register_additions` `a` left join `addition_tables` `b` on((`a`.`addition_id` = `b`.`id`))) left join `hris_csi`.`personal_information` `d` on((`a`.`company_id` = `d`.`company_id`))) where ((`a`.`status` = 'RELEASED') or (`a`.`status` = 'COMPUTE')) ;

-- --------------------------------------------------------

--
-- Structure for view `view_addition_type_amount`
--
DROP TABLE IF EXISTS `view_addition_type_amount`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `view_addition_type_amount`  AS  select sum(`a`.`amount`) AS `amount`,`b`.`addition_type` AS `addition_type`,`a`.`register_number` AS `register_number`,`a`.`company_id` AS `company_id`,`a`.`taxable` AS `taxable` from (`payroll_register_additions` `a` left join `addition_tables` `b` on((`a`.`addition_id` = `b`.`id`))) group by `a`.`register_number`,`a`.`company_id`,`b`.`addition_type`,`a`.`taxable` ;

-- --------------------------------------------------------

--
-- Structure for view `view_allowance_report`
--
DROP TABLE IF EXISTS `view_allowance_report`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `view_allowance_report`  AS  select `a`.`company_id` AS `company_id`,replace(concat(`c`.`lname`,', ',`c`.`fname`,' ',`c`.`lname`),'Ã‘','Ñ') AS `empname`,`d`.`company_ind` AS `company_ind`,`d`.`department` AS `department`,`e`.`company_name` AS `company_name`,`f`.`taxable_allowance` AS `taxable_allowance`,`f`.`taxable_allowance_type` AS `taxable_allowance_type`,`f`.`non_taxable_allowance` AS `non_taxable_allowance`,`f`.`non_taxable_allowance_type` AS `non_taxable_allowance_type`,`a`.`register_number` AS `register_number`,`b`.`pay_date` AS `pay_date`,`a`.`taxable_allowance_absent_amount` AS `taxable_allowance_absent_amount`,`a`.`taxallowance_late_under_amount` AS `taxallowance_late_under_amount`,`a`.`taxable_allowance` AS `taxable_allowance_amount`,`a`.`nontaxable_allowance_absent_amount` AS `nontaxable_allowance_absent_amount`,`a`.`nontaxallowance_late_under_amount` AS `nontaxallowance_late_under_amount`,`a`.`nontaxable_allowance` AS `nontaxable_allowance_amount`,(`a`.`taxable_allowance` + `a`.`nontaxable_allowance`) AS `total_allowance` from (((((`payroll_register_summary_amount` `a` left join `payroll_register` `b` on((`a`.`register_number` = `b`.`register_number`))) left join `hris_csi`.`personal_information` `c` on((`a`.`company_id` = `c`.`company_id`))) left join `hris_csi`.`employee_information` `d` on((`a`.`company_id` = `d`.`company_id`))) left join `hris_csi`.`company` `e` on((`d`.`company_ind` = `e`.`id`))) left join `hris_csi`.`employee_compensation` `f` on((`a`.`company_id` = `f`.`company_id`))) where ((`b`.`status` = 'COMPUTE') or (`b`.`status` = 'RELEASED')) ;

-- --------------------------------------------------------

--
-- Structure for view `view_checkifgroup_belongto_register`
--
DROP TABLE IF EXISTS `view_checkifgroup_belongto_register`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `view_checkifgroup_belongto_register`  AS  select `d`.`register_number` AS `register_number`,`a`.`emp_no` AS `emp_no`,replace(ucase(concat(`a`.`lname`,',',`a`.`fname`,' ',`a`.`mname`)),'Ã‘','Ñ') AS `full_name`,`a`.`company_id` AS `company_id`,`b`.`company_ind` AS `company_ind`,`f`.`company_name` AS `company_name`,`e`.`type` AS `type`,`e`.`flexihrs` AS `flexihrs`,`c`.`payroll_group_ind` AS `payroll_group_ind` from (((((`hris_csi`.`personal_information` `a` left join `hris_csi`.`employee_information` `b` on((`a`.`company_id` = `b`.`company_id`))) left join `hris_csi`.`employee_payroll_group` `c` on((`a`.`company_id` = `c`.`company_id`))) left join `payroll_register_group` `d` on((`c`.`payroll_group_ind` = `d`.`group_ind`))) left join `hris_csi`.`group_schedule` `e` on((`c`.`payroll_group_ind` = `e`.`group_ind`))) left join `hris_csi`.`company` `f` on((`b`.`company_ind` = `f`.`id`))) where ((`a`.`active` = 'yes') and (`c`.`deleted` = 0) and (`d`.`deleted` = 0)) order by `d`.`register_number` ;

-- --------------------------------------------------------

--
-- Structure for view `view_check_daterange`
--
DROP TABLE IF EXISTS `view_check_daterange`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `view_check_daterange`  AS  select `b`.`company_id` AS `company_id`,replace(ucase(`b`.`employee_name`),'Ã‘','Ñ') AS `employee_name`,`b`.`sched_date` AS `sched_date`,`b`.`payroll_status` AS `payroll_status`,`a`.`payroll_group_ind` AS `group_ind`,`b`.`register_number` AS `register_number` from (`hris_csi`.`employee_payroll_group` `a` left join `date_and_time_records` `b` on((`a`.`company_id` = `b`.`company_id`))) where ((`a`.`deleted` = 0) and ((`b`.`register_number` is not null) or (`b`.`register_number` <> '-'))) ;

-- --------------------------------------------------------

--
-- Structure for view `view_deduction_reg`
--
DROP TABLE IF EXISTS `view_deduction_reg`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `view_deduction_reg`  AS  select replace(ucase(concat(`d`.`lname`,',',`d`.`fname`,' ',`d`.`mname`)),'Ã‘','Ñ') AS `full_name`,`a`.`register_number` AS `register_number`,`a`.`company_id` AS `company_id`,`a`.`amount` AS `amount`,`a`.`term_number` AS `term_number`,`b`.`total_balance` AS `total_balance`,`c`.`deduction_type` AS `deduction_type`,`c`.`deduction_name` AS `deduction_name`,`b`.`payment_term` AS `payment_term` from (((`payroll_register_deductions` `a` left join `deduction_tables` `b` on((`a`.`deduction_transaction_id` = `b`.`id`))) left join `deduction_masters` `c` on((`b`.`deduction_id` = `c`.`id`))) left join `hris_csi`.`personal_information` `d` on((`a`.`company_id` = `d`.`company_id`))) where ((`a`.`status` = 'RELEASED') or (`a`.`status` = 'COMPUTE')) ;

-- --------------------------------------------------------

--
-- Structure for view `view_employee_information`
--
DROP TABLE IF EXISTS `view_employee_information`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `view_employee_information`  AS  select `p`.`register_number` AS `register_number`,replace(ucase(concat(`a`.`lname`,', \r\n\r\n',`a`.`fname`)),'Ã‘','Ñ') AS `name`,`c`.`company_name` AS `company_name`,`e`.`group_name` AS `group_name`,`f`.`daily_rate` AS `daily_rate`,`f`.`basic_salary` AS `basic_salary`,`f`.`payroll_account_no` AS `payroll_account_no`,`a`.`company_id` AS `company_id`,`b`.`department` AS `department`,`b`.`position` AS `position`,`f`.`non_taxable_allowance` AS `non_taxable_allowance`,`f`.`taxable_allowance` AS `taxable_allowance` from (((((`payroll_register_summary_amount` `p` left join `hris_csi`.`personal_information` `a` on((`p`.`company_id` = `a`.`company_id`))) left join `hris_csi`.`employee_information` `b` on((`a`.`company_id` = `b`.`company_id`))) left join `hris_csi`.`company` `c` on((`b`.`company_ind` = `c`.`id`))) left join `hris_csi`.`payroll_group` `e` on((`p`.`group_ind` = `e`.`ind`))) left join `hris_csi`.`employee_compensation` `f` on((`a`.`company_id` = `f`.`company_id`))) ;

-- --------------------------------------------------------

--
-- Structure for view `view_employee_schedule`
--
DROP TABLE IF EXISTS `view_employee_schedule`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `view_employee_schedule`  AS  select `b`.`id` AS `id`,`b`.`template_id` AS `template_id`,concat(`a`.`lname`,', ',`a`.`fname`) AS `name`,`a`.`company_id` AS `company_id`,`c`.`template` AS `template`,`c`.`type` AS `type`,`c`.`reg_in` AS `reg_in`,`c`.`reg_out` AS `reg_out`,`c`.`mon_in` AS `mon_in`,`c`.`mon_out` AS `mon_out`,`c`.`mon` AS `mon`,`c`.`tue_in` AS `tue_in`,`c`.`tue_out` AS `tue_out`,`c`.`tue` AS `tue`,`c`.`wed_in` AS `wed_in`,`c`.`wed_out` AS `wed_out`,`c`.`wed` AS `wed`,`c`.`thu_in` AS `thu_in`,`c`.`thu_out` AS `thu_out`,`c`.`thu` AS `thu`,`c`.`fri_in` AS `fri_in`,`c`.`fri_out` AS `fri_out`,`c`.`fri` AS `fri`,`c`.`sat_in` AS `sat_in`,`c`.`sat_out` AS `sat_out`,`c`.`sat` AS `sat`,`c`.`sun_in` AS `sun_in`,`c`.`sun_out` AS `sun_out`,`c`.`sun` AS `sun`,`c`.`flexihrs` AS `flexihrs`,`c`.`lunch_out` AS `lunch_out`,`c`.`lunch_in` AS `lunch_in`,`c`.`lunch_hrs` AS `lunch_hrs`,`b`.`lu_by` AS `lu_by` from ((`hris_csi`.`personal_information` `a` left join `hris_csi`.`employee_schedule` `b` on((`a`.`company_id` = `b`.`company_id`))) left join `hris_csi`.`schedule_template` `c` on((`b`.`template_id` = `c`.`ind`))) where ((`a`.`active` = 'Yes') and (`b`.`deleted` = 0)) ;

-- --------------------------------------------------------

--
-- Structure for view `view_getemployeedetails`
--
DROP TABLE IF EXISTS `view_getemployeedetails`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `view_getemployeedetails`  AS  select `a`.`emp_no` AS `emp_no`,`a`.`company_id` AS `company_id`,replace(ucase(`a`.`lname`),'Ã‘','Ñ') AS `lname`,ucase(`a`.`fname`) AS `fname`,ucase(`a`.`mname`) AS `mname`,`b`.`company_ind` AS `company_ind`,`b`.`department` AS `department`,`b`.`team` AS `team`,replace(ucase(concat(`a`.`fname`,' \r\n\r\n',`a`.`mname`,' ',`a`.`lname`)),'Ã‘','Ñ') AS `full_name` from (`hris_csi`.`personal_information` `a` left join `hris_csi`.`employee_information` `b` on((`a`.`company_id` = `b`.`company_id`))) ;

-- --------------------------------------------------------

--
-- Structure for view `view_getnextstatus_daily`
--
DROP TABLE IF EXISTS `view_getnextstatus_daily`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `view_getnextstatus_daily`  AS  select `a`.`ind` AS `ind`,`a`.`status_code` AS `status_code`,(select ifnull(max((`tax_tables`.`status_number` + 1)),1) from `tax_tables` where ((`tax_tables`.`tax_status` = `a`.`ind`) and (`tax_tables`.`deleted` = 0) and (`tax_tables`.`tax_type` = 'daily'))) AS `last_num` from `hris_csi`.`tax_status` `a` where (`a`.`deleted` = '0') ;

-- --------------------------------------------------------

--
-- Structure for view `view_getnextstatus_monthly`
--
DROP TABLE IF EXISTS `view_getnextstatus_monthly`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `view_getnextstatus_monthly`  AS  select `a`.`ind` AS `ind`,`a`.`status_code` AS `status_code`,(select ifnull(max((`tax_tables`.`status_number` + 1)),1) from `tax_tables` where ((`tax_tables`.`tax_status` = `a`.`ind`) and (`tax_tables`.`deleted` = 0) and (`tax_tables`.`tax_type` = 'monthly'))) AS `last_num` from `hris_csi`.`tax_status` `a` where (`a`.`deleted` = '0') ;

-- --------------------------------------------------------

--
-- Structure for view `view_getnextstatus_semi`
--
DROP TABLE IF EXISTS `view_getnextstatus_semi`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `view_getnextstatus_semi`  AS  select `a`.`ind` AS `ind`,`a`.`status_code` AS `status_code`,(select ifnull(max((`tax_tables`.`status_number` + 1)),1) from `tax_tables` where ((`tax_tables`.`tax_status` = `a`.`ind`) and (`tax_tables`.`deleted` = 0) and (`tax_tables`.`tax_type` = 'semimonthly'))) AS `last_num` from `hris_csi`.`tax_status` `a` where (`a`.`deleted` = '0') ;

-- --------------------------------------------------------

--
-- Structure for view `view_getnextstatus_weekly`
--
DROP TABLE IF EXISTS `view_getnextstatus_weekly`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `view_getnextstatus_weekly`  AS  select `a`.`ind` AS `ind`,`a`.`status_code` AS `status_code`,(select ifnull(max((`tax_tables`.`status_number` + 1)),1) from `tax_tables` where ((`tax_tables`.`tax_status` = `a`.`ind`) and (`tax_tables`.`deleted` = 0) and (`tax_tables`.`tax_type` = 'weekly'))) AS `last_num` from `hris_csi`.`tax_status` `a` where (`a`.`deleted` = '0') ;

-- --------------------------------------------------------

--
-- Structure for view `view_get_payrollgroup_emp`
--
DROP TABLE IF EXISTS `view_get_payrollgroup_emp`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `view_get_payrollgroup_emp`  AS  select replace(ucase(concat(`d`.`lname`,', ',`d`.`fname`)),'Ã‘','Ñ') AS `empname`,`a`.`register_number` AS `register_number`,`b`.`company_id` AS `company_id`,`c`.`company_ind` AS `company_ind`,`c`.`ind` AS `ind` from (((`hris_csi`.`employee_payroll_group` `b` join `payroll_register_group` `a` on((`a`.`group_ind` = `b`.`payroll_group_ind`))) join `hris_csi`.`payroll_group` `c` on((`b`.`payroll_group_ind` = `c`.`ind`))) join `hris_csi`.`personal_information` `d` on((`b`.`company_id` = `d`.`company_id`))) where ((`a`.`deleted` = 0) and (`b`.`deleted` = 0) and (`d`.`active` = 'yes')) order by `d`.`lname` ;

-- --------------------------------------------------------

--
-- Structure for view `view_get_payroll_register`
--
DROP TABLE IF EXISTS `view_get_payroll_register`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `view_get_payroll_register`  AS  select `a`.`id` AS `id`,`a`.`register_number` AS `register_number`,`b`.`company_name` AS `company_name`,`a`.`pay_date_from` AS `pay_date_from`,`a`.`pay_date_to` AS `pay_date_to`,`a`.`pay_date` AS `pay_date`,`a`.`status` AS `status`,`a`.`release_date` AS `release_date`,(select count(`payroll_register_group`.`group_ind`) from `payroll_register_group` where ((`payroll_register_group`.`register_number` = `a`.`register_number`) and (`payroll_register_group`.`deleted` = 0))) AS `group_count`,`a`.`created_by` AS `created_by` from (`payroll_register` `a` left join `hris_csi`.`company` `b` on((`a`.`company_ind` = `b`.`id`))) where (`a`.`deleted` = 0) ;

-- --------------------------------------------------------

--
-- Structure for view `view_metrobank`
--
DROP TABLE IF EXISTS `view_metrobank`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `view_metrobank`  AS  select `a`.`company_id` AS `company_id`,replace(concat(`c`.`lname`,' ',`c`.`fname`,' ',`c`.`mname`),'Ã‘','Ñ') AS `empname`,`f`.`payroll_account_no` AS `payroll_account_no`,`d`.`company_ind` AS `company_ind`,`d`.`department` AS `department`,`e`.`company_name` AS `company_name`,`a`.`register_number` AS `register_number`,`b`.`pay_date` AS `pay_date`,`a`.`taxable_allowance` AS `taxable_allowance_amount`,`a`.`nontaxable_allowance` AS `nontaxable_allowance_amount`,(`a`.`taxable_allowance` + `a`.`nontaxable_allowance`) AS `total_allowance`,`a`.`net_income` AS `net_income` from (((((`payroll_register_summary_amount` `a` left join `payroll_register` `b` on((`a`.`register_number` = `b`.`register_number`))) left join `hris_csi`.`personal_information` `c` on((`a`.`company_id` = `c`.`company_id`))) left join `hris_csi`.`employee_information` `d` on((`a`.`company_id` = `d`.`company_id`))) left join `hris_csi`.`company` `e` on((`d`.`company_ind` = `e`.`id`))) left join `hris_csi`.`employee_compensation` `f` on((`a`.`company_id` = `f`.`company_id`))) where ((`b`.`status` = 'RELEASED') or (`b`.`status` = 'COMPUTE')) ;

-- --------------------------------------------------------

--
-- Structure for view `view_payrollgroup`
--
DROP TABLE IF EXISTS `view_payrollgroup`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `view_payrollgroup`  AS  select `a`.`register_number` AS `register_number`,`a`.`group_ind` AS `group_ind`,`b`.`group_name` AS `group_name`,`a`.`deleted` AS `deleted`,(select count(`payroll_register_attendance_summary`.`company_id`) from `payroll_register_attendance_summary` where ((`payroll_register_attendance_summary`.`group_ind` = `a`.`group_ind`) and (`payroll_register_attendance_summary`.`deleted` = 0) and (`payroll_register_attendance_summary`.`register_number` = `a`.`register_number`))) AS `empcount` from (`payroll_register_group` `a` left join `hris_csi`.`payroll_group` `b` on((`a`.`group_ind` = `b`.`ind`))) where (`a`.`deleted` = 0) ;

-- --------------------------------------------------------

--
-- Structure for view `view_payrollgroup_list`
--
DROP TABLE IF EXISTS `view_payrollgroup_list`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `view_payrollgroup_list`  AS  select `a`.`ind` AS `ind`,`a`.`company_ind` AS `company_ind`,`a`.`group_name` AS `group_name`,(select count(`hris_csi`.`employee_payroll_group`.`name`) from `hris_csi`.`employee_payroll_group` where ((`hris_csi`.`employee_payroll_group`.`deleted` = 0) and (`hris_csi`.`employee_payroll_group`.`payroll_group_ind` = `a`.`ind`))) AS `empcount` from `hris_csi`.`payroll_group` `a` where (`a`.`deleted` = 0) ;

-- --------------------------------------------------------

--
-- Structure for view `view_payslip`
--
DROP TABLE IF EXISTS `view_payslip`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `view_payslip`  AS  select replace(ucase(concat(`b`.`lname`,', ',`b`.`fname`)),'Ã‘','Ñ') AS `name`,`a`.`register_number` AS `register_number`,`a`.`group_ind` AS `group_ind`,`a`.`company_id` AS `company_id`,`c`.`company_name` AS `company_name`,`a`.`total_days` AS `total_days`,`a`.`late_amount` AS `late_amount`,`i`.`late_hrs` AS `late_hrs`,`i`.`undertime_hrs` AS `undertime_hrs`,((`a`.`absent_amount` + `a`.`nontaxable_allowance_absent_amount`) + `a`.`taxable_allowance_absent_amount`) AS `absent_amount`,(`a`.`absent_count` + `i`.`holiday_absent`) AS `absent_count`,`a`.`undertime_amount` AS `undertime_amount`,`a`.`working_amount_reg` AS `basic_pay`,`i`.`working_hrs_reg` AS `basic_pay_hrs`,`d`.`pay_date_from` AS `pay_date_from`,`d`.`pay_date_to` AS `pay_date_to`,`d`.`pay_date` AS `pay_date`,`e`.`position` AS `position`,`e`.`department` AS `department`,`h`.`status_code` AS `status_code`,`f`.`basic_salary` AS `monthly_salary`,`f`.`daily_rate` AS `daily_rate`,`f`.`taxable_allowance` AS `taxallowrate`,`f`.`non_taxable_allowance` AS `nontaxallowrate`,((((((`a`.`working_amount_leg` + `a`.`working_amount_spcl_nw`) + `a`.`working_amount_spcl_w`) + `a`.`rd_amount_reg`) + `a`.`rd_amount_leg`) + `a`.`rd_amount_spcl_nw`) + `a`.`rd_amount_spcl_w`) AS `rd_hol_amount`,((((((`i`.`working_hrs_leg` + `i`.`working_hrs_spcl_nw`) + `i`.`working_hrs_spcl_w`) + `i`.`rd_hrs_reg`) + `i`.`rd_hrs_leg`) + `i`.`rd_hrs_spcl_nw`) + `i`.`rd_hrs_spcl_w`) AS `rd_hol_hrs`,(((((((`a`.`overtime_amount_reg` + `a`.`overtime_amount_leg`) + `a`.`overtime_amount_spcl_nw`) + `a`.`overtime_amount_spcl_w`) + `a`.`overtime_amount_rd`) + `a`.`overtime_amount_rd_spcl_nw`) + `a`.`overtime_amount_rd_spcl_w`) + `a`.`overtime_amount_rd_leg`) AS `ot_amount`,(((((((`i`.`overtime_hrs_reg` + `i`.`overtime_hrs_leg`) + `i`.`overtime_hrs_spcl_nw`) + `i`.`overtime_hrs_spcl_w`) + `i`.`overtime_hrs_rd`) + `i`.`overtime_hrs_rd_spcl_nw`) + `i`.`overtime_hrs_rd_spcl_w`) + `i`.`overtime_hrs_rd_leg`) AS `ot_hrs`,((((((((((((((((`a`.`nd_amount_reg` + `a`.`nd_amount_leg`) + `a`.`nd_amount_spcl_nw`) + `a`.`nd_amount_spcl_w`) + `a`.`nd_amount_rd`) + `a`.`nd_amount_reg_ot`) + `a`.`nd_amount_spcl_nw_ot`) + `a`.`nd_amount_spcl_w_ot`) + `a`.`nd_amount_leg_ot`) + `a`.`nd_amount_rd_ot`) + `a`.`nd_amount_xs_ot`) + `a`.`nd_amount_rd_spcl_nw`) + `a`.`nd_amount_rd_spcl_nw_ot`) + `a`.`nd_amount_rd_spcl_w`) + `a`.`nd_amount_rd_spcl_w_ot`) + `a`.`nd_amount_rd_leg`) + `a`.`nd_amount_rd_leg_ot`) AS `nd_amount`,((((((((((((((((`i`.`nd_hrs_reg` + `i`.`nd_hrs_leg`) + `i`.`nd_hrs_spcl_nw`) + `i`.`nd_hrs_spcl_w`) + `i`.`nd_hrs_rd`) + `i`.`nd_hrs_reg_ot`) + `i`.`nd_hrs_spcl_nw_ot`) + `i`.`nd_hrs_spcl_w_ot`) + `i`.`nd_hrs_leg_ot`) + `i`.`nd_hrs_rd_ot`) + `i`.`nd_hrs_xs_ot`) + `i`.`nd_hrs_rd_spcl_nw`) + `i`.`nd_hrs_rd_spcl_nw_ot`) + `i`.`nd_hrs_rd_spcl_w`) + `i`.`nd_hrs_rd_spcl_w_ot`) + `i`.`nd_hrs_rd_leg`) + `i`.`nd_hrs_rd_leg_ot`) AS `nd_hrs`,`a`.`leave_wpay_count` AS `leave_wpay_count`,`a`.`taxable_allowance` AS `taxable_allowance`,`a`.`nontaxable_allowance` AS `nontaxable_allowance`,(((((`a`.`gross_income` + `a`.`absent_amount`) + `a`.`taxable_allowance_absent_amount`) + `a`.`nontaxable_allowance_absent_amount`) + `a`.`late_amount`) + `a`.`undertime_amount`) AS `gross_income`,`a`.`total_additions` AS `total_additions`,`a`.`sss_amount` AS `sss_amount`,`a`.`phil_amount` AS `phil_amount`,`a`.`pagibig_amount` AS `pagibig_amount`,`a`.`tax_amount` AS `tax_amount`,(((((`a`.`total_deductions` + `a`.`absent_amount`) + `a`.`late_amount`) + `a`.`undertime_amount`) + `a`.`nontaxable_allowance_absent_amount`) + `a`.`taxable_allowance_absent_amount`) AS `total_deductions`,`a`.`net_income` AS `net_income`,`d`.`status` AS `status`,`a`.`hold_aslastpay` AS `hold_aslastpay` from ((((((((`payroll_register_summary_amount` `a` left join `hris_csi`.`personal_information` `b` on((`a`.`company_id` = `b`.`company_id`))) left join `hris_csi`.`company` `c` on((`a`.`company_ind` = `c`.`id`))) left join `payroll_register` `d` on((`a`.`register_number` = `d`.`register_number`))) left join `hris_csi`.`employee_information` `e` on((`a`.`company_id` = `e`.`company_id`))) left join `hris_csi`.`employee_compensation` `f` on((`a`.`company_id` = `f`.`company_id`))) left join `hris_csi`.`goverment_number` `g` on((`a`.`company_id` = `g`.`company_id`))) left join `payroll_register_attendance_summary` `i` on(((`a`.`register_number` = `i`.`register_number`) and (`a`.`company_id` = `i`.`company_id`)))) left join `hris_csi`.`tax_status` `h` on((`g`.`tax_status_ind` = `h`.`ind`))) where ((`d`.`deleted` = 0) and ((`d`.`status` = 'RELEASED') or (`d`.`status` = 'COMPUTE'))) ;

-- --------------------------------------------------------

--
-- Structure for view `view_payslipinfo`
--
DROP TABLE IF EXISTS `view_payslipinfo`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `view_payslipinfo`  AS  select replace(ucase(concat(`b`.`lname`,', ',`b`.`fname`)),'Ã‘','Ñ') AS `name`,`b`.`company_id` AS `company_id`,`c`.`company_name` AS `company_name`,`a`.`department` AS `department`,`a`.`position` AS `position`,`e`.`status_code` AS `status_code`,`f`.`basic_salary` AS `basic_salary`,`f`.`salary_type` AS `salary_type`,`f`.`taxable_allowance` AS `taxable_allowance`,`f`.`non_taxable_allowance` AS `non_taxable_allowance` from (((((`hris_csi`.`personal_information` `b` left join `hris_csi`.`employee_information` `a` on((`b`.`company_id` = `a`.`company_id`))) left join `hris_csi`.`company` `c` on((`a`.`company_ind` = `c`.`id`))) left join `hris_csi`.`goverment_number` `d` on((`b`.`company_id` = `d`.`company_id`))) left join `hris_csi`.`tax_status` `e` on((`d`.`tax_status_ind` = `e`.`ind`))) left join `hris_csi`.`employee_compensation` `f` on((`b`.`company_id` = `f`.`company_id`))) ;

-- --------------------------------------------------------

--
-- Structure for view `view_report_addition`
--
DROP TABLE IF EXISTS `view_report_addition`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `view_report_addition`  AS  select replace(ucase(concat(`b`.`lname`,', ',`b`.`fname`)),'Ã‘','Ñ') AS `name`,`a`.`company_id` AS `company_id`,`c`.`company_ind` AS `company_ind`,`d`.`company_name` AS `company_name`,`c`.`department` AS `department`,`a`.`addition_name` AS `addition_name`,`a`.`id` AS `addition_id`,`a`.`status` AS `status`,`a`.`value` AS `value`,`a`.`transaction_value` AS `transaction_value`,`a`.`schedule` AS `schedule`,`a`.`validity` AS `validity`,`a`.`validity_count` AS `validity_count`,`a`.`remaining_balance` AS `remaining_balance`,`a`.`lu_by` AS `encoded`,`a`.`updated_at` AS `updated_at` from (((`addition_tables` `a` left join `hris_csi`.`personal_information` `b` on((`a`.`company_id` = `b`.`company_id`))) left join `hris_csi`.`employee_information` `c` on((`b`.`company_id` = `c`.`company_id`))) left join `hris_csi`.`company` `d` on((`c`.`company_ind` = `d`.`id`))) ;

-- --------------------------------------------------------

--
-- Structure for view `view_report_deduction`
--
DROP TABLE IF EXISTS `view_report_deduction`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `view_report_deduction`  AS  select replace(ucase(concat(`b`.`lname`,', ',`b`.`fname`)),'Ã‘','Ñ') AS `name`,`a`.`company_id` AS `company_id`,`c`.`company_ind` AS `company_ind`,`d`.`company_name` AS `company_name`,`c`.`department` AS `department`,`e`.`deduction_name` AS `deduction_name`,`a`.`deduction_id` AS `deduction_id`,`a`.`id` AS `deduction_transaction_id`,`a`.`status` AS `status`,`a`.`type` AS `type`,`a`.`value` AS `value`,`a`.`amortization` AS `amortization`,`a`.`schedule` AS `schedule`,`a`.`payment_term` AS `payment_term`,`a`.`payment_count` AS `payment_count`,`a`.`total_balance` AS `total_balance`,`a`.`lu_by` AS `encoded`,`a`.`updated_at` AS `updated_at` from ((((`deduction_tables` `a` left join `hris_csi`.`personal_information` `b` on((`a`.`company_id` = `b`.`company_id`))) left join `hris_csi`.`employee_information` `c` on((`b`.`company_id` = `c`.`company_id`))) left join `hris_csi`.`company` `d` on((`c`.`company_ind` = `d`.`id`))) left join `deduction_masters` `e` on((`a`.`deduction_id` = `e`.`id`))) ;

-- --------------------------------------------------------

--
-- Structure for view `view_report_deduction_payreg`
--
DROP TABLE IF EXISTS `view_report_deduction_payreg`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `view_report_deduction_payreg`  AS  select `a`.`register_number` AS `register_number`,replace(ucase(`a`.`employee_name`),'Ã‘','Ñ') AS `employee_name`,`a`.`company_id` AS `company_id`,`b`.`amount` AS `amount`,`b`.`deduction_transaction_id` AS `deduction_transaction_id`,`e`.`deduction_name` AS `deduction_name`,`c`.`deduction_id` AS `deduction_id`,`e`.`deduction_type` AS `deduction_type`,`d`.`pay_date` AS `pay_date`,`d`.`status` AS `status` from ((((`payroll_register_summary_amount` `a` left join `payroll_register_deductions` `b` on((`a`.`register_number` = `b`.`register_number`))) left join `deduction_tables` `c` on(((`b`.`deduction_transaction_id` = `c`.`id`) and (`a`.`company_id` = `c`.`company_id`)))) left join `deduction_masters` `e` on((`c`.`deduction_id` = `e`.`id`))) left join `payroll_register` `d` on((`a`.`register_number` = `d`.`register_number`))) ;

-- --------------------------------------------------------

--
-- Structure for view `view_report_employee_information`
--
DROP TABLE IF EXISTS `view_report_employee_information`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `view_report_employee_information`  AS  select `a`.`company_id` AS `company_id`,`b`.`biometrics_id` AS `biometrics_id`,`b`.`company_ind` AS `company_ind`,`f`.`company_name` AS `company_name`,`a`.`fname` AS `fname`,`a`.`mname` AS `mname`,replace(`a`.`lname`,'Ã‘','Ñ') AS `lname`,replace(concat(`a`.`fname`,' ',`a`.`mname`,' ',`a`.`lname`),'Ã‘','Ñ') AS `full_name`,`a`.`gender` AS `gender`,`a`.`status` AS `status`,`a`.`birtdate` AS `birtdate`,`b`.`date_employed` AS `date_employed`,`b`.`regular_date` AS `regular_date`,`b`.`employment_status` AS `employment_status`,`b`.`position` AS `position`,`b`.`department` AS `department`,`b`.`team` AS `team`,`c`.`bank_name` AS `bank_name`,`c`.`payroll_account_no` AS `payroll_account_no`,`d`.`tin_number` AS `tin_number`,`d`.`philhealth_number` AS `philhealth_number`,`d`.`pagibig_number` AS `pagibig_number`,`d`.`sss_number` AS `sss_number`,`e`.`status_code` AS `status_code`,`c`.`salary_type` AS `salary_type`,`c`.`basic_salary` AS `basic_salary`,`c`.`hourly_rate` AS `hourly_rate`,`c`.`non_taxable_allowance` AS `non_taxable_allowance`,`c`.`taxable_allowance` AS `taxable_allowance`,`c`.`tax_shield` AS `tax_shield`,`c`.`gross_salary` AS `gross_salary` from (((((`hris_csi`.`personal_information` `a` left join `hris_csi`.`employee_information` `b` on((`a`.`company_id` = `b`.`company_id`))) left join `hris_csi`.`employee_compensation` `c` on((`a`.`company_id` = `c`.`company_id`))) left join `hris_csi`.`goverment_number` `d` on((`a`.`company_id` = `d`.`company_id`))) left join `hris_csi`.`tax_status` `e` on((`d`.`tax_status_ind` = `e`.`ind`))) left join `hris_csi`.`company` `f` on((`b`.`company_ind` = `f`.`id`))) ;

-- --------------------------------------------------------

--
-- Structure for view `view_report_lastpay`
--
DROP TABLE IF EXISTS `view_report_lastpay`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `view_report_lastpay`  AS  select replace(ucase(concat(`c`.`lname`,', ',`c`.`fname`)),'Ã‘','Ñ') AS `empname`,`a`.`company_id` AS `company_id`,`a`.`company_ind` AS `company_ind`,`e`.`company_name` AS `company_name`,`d`.`department` AS `department`,`d`.`date_employed` AS `date_employed`,`a`.`basic_salary` AS `basic_salary`,(`a`.`taxable_allowance_absent_amount` + `a`.`taxable_allowance`) AS `taxableallowance`,(`a`.`nontaxable_allowance_absent_amount` + `a`.`nontaxable_allowance`) AS `nontaxableallowance`,((`a`.`gross_income` + (select coalesce(sum(`addi`.`amount`),0) AS `baddition` from `view_addition_type_amount` `addi` where ((`addi`.`register_number` = `a`.`register_number`) and (`addi`.`addition_type` = 'BASIC') and (`addi`.`company_id` = `a`.`company_id`)))) - (((((((((((((((((((((((((((((((((((`a`.`nontaxable_allowance` + `a`.`taxable_allowance`) + `a`.`total_additions`) + `a`.`rd_amount_reg`) + `a`.`rd_amount_leg`) + `a`.`rd_amount_spcl_nw`) + `a`.`rd_amount_spcl_w`) + `a`.`nd_amount_reg`) + `a`.`nd_amount_leg`) + `a`.`nd_amount_spcl_nw`) + `a`.`nd_amount_spcl_w`) + `a`.`nd_amount_rd`) + `a`.`nd_amount_reg_ot`) + `a`.`nd_amount_spcl_nw_ot`) + `a`.`nd_amount_spcl_nw_ot`) + `a`.`nd_amount_spcl_w_ot`) + `a`.`nd_amount_leg_ot`) + `a`.`nd_amount_rd_ot`) + `a`.`nd_amount_xs_ot`) + `a`.`nd_amount_rd_spcl_nw`) + `a`.`nd_amount_rd_spcl_nw_ot`) + `a`.`nd_amount_rd_spcl_w`) + `a`.`nd_amount_rd_spcl_w_ot`) + `a`.`nd_amount_rd_leg`) + `a`.`nd_amount_rd_leg_ot`) + `a`.`overtime_amount_reg`) + `a`.`overtime_amount_leg`) + `a`.`overtime_amount_spcl_nw`) + `a`.`overtime_amount_spcl_w`) + `a`.`overtime_amount_rd`) + `a`.`overtime_amount_rd_spcl_nw`) + `a`.`overtime_amount_rd_spcl_w`) + `a`.`overtime_amount_rd_leg`) + `a`.`working_amount_leg`) + `a`.`working_amount_spcl_nw`) + `a`.`working_amount_spcl_w`)) AS `gross_for_thirteenth`,`a`.`nontaxable_allowance` AS `nontaxallowance_for_thirteenth`,`a`.`taxable_allowance` AS `taxallowance_for_thirteenth`,`b`.`register_number` AS `register_number`,`b`.`pay_date` AS `pay_date`,`b`.`pay_date_from` AS `pay_date_from`,`b`.`pay_date_to` AS `pay_date_to`,`f`.`tax_income` AS `tax_income`,`f`.`wtax` AS `wtax` from (((((`payroll_register_summary_amount` `a` left join `payroll_register` `b` on((`a`.`register_number` = `b`.`register_number`))) left join `hris_csi`.`personal_information` `c` on((`a`.`company_id` = `c`.`company_id`))) left join `hris_csi`.`employee_information` `d` on((`c`.`company_id` = `d`.`company_id`))) left join `hris_csi`.`company` `e` on((`a`.`company_ind` = `e`.`id`))) left join `payroll_register_tax` `f` on(((`a`.`register_number` = `f`.`register_number`) and (`a`.`company_id` = `f`.`company_id`)))) where (`b`.`status` = 'RELEASED') ;

-- --------------------------------------------------------

--
-- Structure for view `view_report_overtime`
--
DROP TABLE IF EXISTS `view_report_overtime`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `view_report_overtime`  AS  select replace(concat(`c`.`lname`,', ',`c`.`fname`,' ',`c`.`mname`),'Ã‘','Ñ') AS `fullname`,`a`.`company_id` AS `company_id`,`d`.`company_ind` AS `company_ind`,`e`.`company_name` AS `company_name`,`d`.`department` AS `department`,`a`.`register_number` AS `register_number`,`b`.`pay_date` AS `pay_date`,`a`.`overtime_amount_reg` AS `overtime_amount_reg`,`f`.`overtime_hrs_reg` AS `overtime_hrs_reg`,`a`.`overtime_amount_leg` AS `overtime_amount_leg`,`f`.`overtime_hrs_leg` AS `overtime_hrs_leg`,(`a`.`overtime_amount_spcl_nw` + `a`.`overtime_amount_spcl_w`) AS `overtime_amount_special`,(`f`.`overtime_hrs_spcl_nw` + `f`.`overtime_hrs_spcl_w`) AS `overtime_hrs_special`,`a`.`overtime_amount_rd` AS `overtime_amount_rd`,`f`.`overtime_hrs_rd` AS `overtime_hrs_rd`,(`a`.`overtime_amount_rd_spcl_nw` + `a`.`overtime_amount_rd_spcl_w`) AS `overtime_amount_rd_spcl`,(`f`.`overtime_hrs_rd_spcl_nw` + `f`.`overtime_hrs_rd_spcl_w`) AS `overtime_hrs_rd_spcl`,`a`.`overtime_amount_rd_leg` AS `overtime_amount_rd_leg`,`f`.`overtime_hrs_rd_leg` AS `overtime_hrs_rd_leg`,`a`.`nd_amount_reg_ot` AS `nd_amount_reg_ot`,`f`.`nd_hrs_reg_ot` AS `nd_hrs_reg_ot`,(`a`.`nd_amount_spcl_nw_ot` + `a`.`nd_amount_spcl_w_ot`) AS `nd_amount_spcl_ot`,(`f`.`nd_hrs_spcl_nw_ot` + `f`.`nd_hrs_spcl_w_ot`) AS `nd_hrs_spcl_ot`,(`a`.`nd_amount_rd_spcl_nw_ot` + `a`.`nd_amount_rd_spcl_w_ot`) AS `nd_amount_rd_spcl_ot`,(`f`.`nd_hrs_rd_spcl_nw_ot` + `f`.`nd_hrs_rd_spcl_w_ot`) AS `nd_hrs_rd_spcl_ot`,`a`.`nd_amount_leg_ot` AS `nd_amount_leg_ot`,`f`.`nd_hrs_leg_ot` AS `nd_hrs_leg_ot`,`a`.`nd_amount_xs_ot` AS `nd_amount_xs_ot`,`f`.`nd_hrs_xs_ot` AS `nd_hrs_xs_ot`,`a`.`nd_amount_rd_leg_ot` AS `nd_amount_rd_leg_ot`,`f`.`nd_hrs_rd_leg_ot` AS `nd_hrs_rd_leg_ot`,(((((((((((((((((`a`.`overtime_amount_reg` + `a`.`overtime_amount_leg`) + `a`.`overtime_amount_spcl_nw`) + `a`.`overtime_amount_spcl_w`) + `a`.`overtime_amount_rd`) + `a`.`overtime_amount_rd_spcl_nw`) + `a`.`overtime_amount_rd_spcl_w`) + `a`.`overtime_amount_rd_leg`) + `a`.`nd_amount_reg_ot`) + `a`.`nd_amount_spcl_nw_ot`) + `a`.`nd_amount_spcl_w_ot`) + `a`.`nd_amount_leg_ot`) + `a`.`nd_amount_rd_ot`) + `a`.`nd_amount_xs_ot`) + `a`.`nd_amount_rd_spcl_nw_ot`) + `a`.`nd_amount_rd_spcl_w_ot`) + `a`.`nd_amount_rd_leg_ot`) + (select coalesce(sum(`view_addition_type_amount`.`amount`),0) from `view_addition_type_amount` where ((`view_addition_type_amount`.`company_id` = `a`.`company_id`) and (`view_addition_type_amount`.`register_number` = `a`.`register_number`) and (`view_addition_type_amount`.`addition_type` = 'OVERTIME')))) AS `total_amount_ot`,((((((((((((((((`f`.`overtime_hrs_reg` + `f`.`overtime_hrs_leg`) + `f`.`overtime_hrs_spcl_nw`) + `f`.`overtime_hrs_spcl_w`) + `f`.`overtime_hrs_rd`) + `f`.`overtime_hrs_rd_spcl_nw`) + `f`.`overtime_hrs_rd_spcl_w`) + `f`.`overtime_hrs_rd_leg`) + `f`.`nd_hrs_reg_ot`) + `f`.`nd_hrs_spcl_nw_ot`) + `f`.`nd_hrs_spcl_w_ot`) + `f`.`nd_hrs_leg_ot`) + `f`.`nd_hrs_rd_ot`) + `a`.`nd_amount_xs_ot`) + `f`.`nd_hrs_rd_spcl_nw_ot`) + `f`.`nd_hrs_rd_spcl_w_ot`) + `f`.`nd_hrs_rd_leg_ot`) AS `total_hrs_ot`,(select coalesce(sum(`view_addition_type_amount`.`amount`),0) from `view_addition_type_amount` where ((`view_addition_type_amount`.`company_id` = `a`.`company_id`) and (`view_addition_type_amount`.`register_number` = `a`.`register_number`) and (`view_addition_type_amount`.`addition_type` = 'OVERTIME'))) AS `ot_adustment` from (((((`payroll_register_summary_amount` `a` left join `payroll_register` `b` on((`a`.`register_number` = `b`.`register_number`))) left join `hris_csi`.`personal_information` `c` on((`a`.`company_id` = `c`.`company_id`))) left join `hris_csi`.`employee_information` `d` on((`a`.`company_id` = `d`.`company_id`))) left join `hris_csi`.`company` `e` on((`d`.`company_ind` = `e`.`id`))) left join `payroll_register_attendance_summary` `f` on(((`a`.`register_number` = `f`.`register_number`) and (`a`.`company_id` = `f`.`company_id`)))) where ((`b`.`status` = 'RELEASED') or (`b`.`status` = 'COMPUTE')) ;

-- --------------------------------------------------------

--
-- Structure for view `view_report_pagibig`
--
DROP TABLE IF EXISTS `view_report_pagibig`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `view_report_pagibig`  AS  select replace(ucase(concat(`b`.`lname`,',',`b`.`fname`,' ',`b`.`mname`)),'Ã‘','Ñ') AS `empname`,`d`.`id` AS `company_ind`,`c`.`department` AS `department`,`d`.`company_name` AS `company_name`,`a`.`register_number` AS `register_number`,`a`.`company_id` AS `company_id`,`a`.`pagibig_number` AS `pagibig_number`,`a`.`gross` AS `gross`,`a`.`employee_share` AS `employee_share`,`a`.`employer_share` AS `employer_share`,`a`.`pay_date` AS `pay_date`,`a`.`pay_term` AS `pay_term`,`f`.`with_pagibig` AS `with_pagibig` from (((((`payroll_register_pagibig` `a` left join `hris_csi`.`personal_information` `b` on((`a`.`company_id` = `b`.`company_id`))) left join `hris_csi`.`employee_information` `c` on((`b`.`company_id` = `c`.`company_id`))) left join `hris_csi`.`company` `d` on((`c`.`company_ind` = `d`.`id`))) left join `payroll_register_summary_amount` `e` on(((`a`.`register_number` = `e`.`register_number`) and (`a`.`company_id` = `e`.`company_id`)))) left join `hris_csi`.`payroll_settings` `f` on((`e`.`group_ind` = `f`.`group_ind`))) where (`a`.`status` = 'Released') ;

-- --------------------------------------------------------

--
-- Structure for view `view_report_payroll_journal_monthly`
--
DROP TABLE IF EXISTS `view_report_payroll_journal_monthly`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `view_report_payroll_journal_monthly`  AS  select `a`.`id` AS `id`,`a`.`register_number` AS `register_number`,`a`.`company_id` AS `company_id`,replace(ucase(`b`.`lname`),'Ã‘','Ñ') AS `lname`,replace(ucase(`b`.`fname`),'Ã‘','Ñ') AS `fname`,replace(ucase(`b`.`mname`),'Ã‘','Ñ') AS `mname`,`d`.`company_name` AS `company_name`,`z`.`category_name` AS `category_name`,`c`.`company_ind` AS `company_ind`,`c`.`department` AS `department`,`f`.`status_code` AS `tax_status`,`e`.`sss_number` AS `sss_number`,`e`.`philhealth_number` AS `philhealth_number`,`e`.`pagibig_number` AS `pagibig_number`,`e`.`tin_number` AS `tin_number`,`b`.`birtdate` AS `birth_date`,`c`.`date_employed` AS `date_employed`,`b`.`resigned_date` AS `date_terminated`,`k`.`with_withholdingtax` AS `status`,(((((((((((((((((((((((((((((`a`.`overtime_amount_reg` + `a`.`overtime_amount_leg`) + `a`.`overtime_amount_spcl_nw`) + `a`.`overtime_amount_spcl_w`) + `a`.`overtime_amount_rd`) + `a`.`overtime_amount_rd_leg`) + `a`.`overtime_amount_rd_spcl_nw`) + `a`.`overtime_amount_rd_spcl_w`) + `a`.`nd_amount_reg`) + `a`.`nd_amount_leg`) + `a`.`nd_amount_spcl_nw`) + `a`.`nd_amount_spcl_w`) + `a`.`nd_amount_rd`) + `a`.`nd_amount_reg_ot`) + `a`.`nd_amount_spcl_nw_ot`) + `a`.`nd_amount_spcl_w_ot`) + `a`.`nd_amount_leg_ot`) + `a`.`nd_amount_rd_ot`) + `a`.`nd_amount_xs_ot`) + `a`.`nd_amount_rd_spcl_nw`) + `a`.`nd_amount_rd_spcl_nw_ot`) + `a`.`nd_amount_rd_spcl_w`) + `a`.`nd_amount_rd_spcl_w_ot`) + `a`.`nd_amount_rd_leg`) + `a`.`nd_amount_rd_leg_ot`) + `a`.`rd_amount_reg`) + `a`.`rd_amount_leg`) + `a`.`rd_amount_spcl_nw`) + `a`.`rd_amount_spcl_w`) + (select coalesce(sum(`addi`.`amount`),0) AS `baddition` from `view_addition_type_amount` `addi` where ((`addi`.`register_number` = `a`.`register_number`) and ((`addi`.`addition_type` = 'OVERTIME') or (`addi`.`addition_type` = 'NIGHTDIFF')) and (`addi`.`company_id` = `a`.`company_id`)))) AS `overtime_pay`,`a`.`taxable_allowance` AS `taxable_allowance`,((`a`.`working_amount_leg` + `a`.`working_amount_spcl_nw`) + `a`.`working_amount_spcl_w`) AS `holiday_pay`,(((`a`.`working_amount_reg` - `a`.`nontaxable_allowance`) - `a`.`taxable_allowance`) + (select coalesce(sum(`addi`.`amount`),0) AS `baddition` from `view_addition_type_amount` `addi` where ((`addi`.`register_number` = `a`.`register_number`) and (`addi`.`addition_type` = 'BASIC') and (`addi`.`company_id` = `a`.`company_id`)))) AS `basic_salary`,(((`a`.`gross_income` - `a`.`nontaxable_allowance`) - `a`.`total_additions`) + (select coalesce(sum(`addi`.`amount`),0) AS `baddition` from `view_addition_type_amount` `addi` where ((`addi`.`register_number` = `a`.`register_number`) and (`addi`.`addition_type` <> 'REGULAR') and (`addi`.`company_id` = `a`.`company_id`)))) AS `gross_income`,(((((((((((((((((`a`.`nd_amount_reg` + `a`.`nd_amount_leg`) + `a`.`nd_amount_spcl_nw`) + `a`.`nd_amount_spcl_w`) + `a`.`nd_amount_rd`) + `a`.`nd_amount_reg_ot`) + `a`.`nd_amount_spcl_nw_ot`) + `a`.`nd_amount_spcl_w_ot`) + `a`.`nd_amount_leg_ot`) + `a`.`nd_amount_rd_ot`) + `a`.`nd_amount_xs_ot`) + `a`.`nd_amount_rd_spcl_nw`) + `a`.`nd_amount_rd_spcl_nw_ot`) + `a`.`nd_amount_rd_spcl_w`) + `a`.`nd_amount_rd_spcl_w_ot`) + `a`.`nd_amount_rd_leg`) + `a`.`nd_amount_rd_leg_ot`) + (select coalesce(sum(`addi`.`amount`),0) AS `baddition` from `view_addition_type_amount` `addi` where ((`addi`.`register_number` = `a`.`register_number`) and (`addi`.`addition_type` = 'NIGHTDIFF') and (`addi`.`company_id` = `a`.`company_id`)))) AS `nightdiff`,`g`.`employee_share` AS `sss_ee_share`,`g`.`employer_share` AS `sss_er_share`,(`g`.`employee_share` + `g`.`employer_share`) AS `sss_total`,`g`.`ec` AS `ec`,((`g`.`employee_share` + `g`.`employer_share`) + `g`.`ec`) AS `sss_and_ecc_total`,`h`.`employee_share` AS `hdmf_ee_share`,`h`.`employer_share` AS `hdmf_er_share`,(`h`.`employee_share` + `h`.`employer_share`) AS `hdmf_total`,`i`.`employee_share` AS `phic_ee_share`,`i`.`employer_share` AS `phic_er_share`,(`i`.`employee_share` + `i`.`employer_share`) AS `phic_total`,(`a`.`gross_income` - (((((select coalesce(sum(`addi`.`amount`),0) AS `baddition` from `view_addition_type_amount` `addi` where ((`addi`.`register_number` = `a`.`register_number`) and (`addi`.`addition_type` = 'REGULAR') and (`addi`.`company_id` = `a`.`company_id`))) + `a`.`nontaxable_allowance`) + `g`.`employee_share`) + `h`.`employee_share`) + `i`.`employee_share`)) AS `tax_income`,`j`.`wtax` AS `wtax`,(select coalesce(sum(`payroll_register_deductions`.`amount`),0) from (`payroll_register_deductions` left join `deduction_tables` on((`payroll_register_deductions`.`deduction_transaction_id` = `deduction_tables`.`id`))) where ((`deduction_tables`.`deduction_id` = 1) and (`a`.`register_number` = `payroll_register_deductions`.`register_number`) and (`a`.`company_id` = `payroll_register_deductions`.`company_id`))) AS `sss_loan`,(select coalesce(sum(`payroll_register_deductions`.`amount`),0) from (`payroll_register_deductions` left join `deduction_tables` on((`payroll_register_deductions`.`deduction_transaction_id` = `deduction_tables`.`id`))) where ((`deduction_tables`.`deduction_id` = 2) and (`a`.`register_number` = `payroll_register_deductions`.`register_number`) and (`a`.`company_id` = `payroll_register_deductions`.`company_id`))) AS `hdmf_loan`,`a`.`net_income` AS `net_income`,`m`.`pay_date` AS `pay_date`,monthname(`m`.`pay_date`) AS `month`,year(`m`.`pay_date`) AS `year` from (((((((((((((`payroll_register_summary_amount` `a` join `hris_csi`.`personal_information` `b` on((`a`.`company_id` = `b`.`company_id`))) left join `hris_csi`.`employee_information` `c` on((`a`.`company_id` = `c`.`company_id`))) left join `hris_csi`.`company` `d` on((`c`.`company_ind` = `d`.`id`))) left join `hris_csi`.`goverment_number` `e` on((`a`.`company_id` = `e`.`company_id`))) left join `hris_csi`.`tax_status` `f` on((`e`.`tax_status_ind` = `f`.`ind`))) left join `payroll_register_sss` `g` on(((`a`.`register_number` = `g`.`register_number`) and (`a`.`company_id` = `g`.`company_id`)))) left join `payroll_register_pagibig` `h` on(((`a`.`register_number` = `h`.`register_number`) and (`a`.`company_id` = `h`.`company_id`)))) left join `payroll_register_philhealth` `i` on(((`a`.`register_number` = `i`.`register_number`) and (`a`.`company_id` = `i`.`company_id`)))) left join `payroll_register_tax` `j` on(((`a`.`register_number` = `j`.`register_number`) and (`a`.`company_id` = `j`.`company_id`)))) left join `hris_csi`.`payroll_settings` `k` on((`a`.`group_ind` = `k`.`group_ind`))) left join `payroll_register` `m` on((`a`.`register_number` = `m`.`register_number`))) left join `hris_csi`.`employee_compensation` `x` on((`a`.`company_id` = `x`.`company_id`))) left join `hris_csi`.`rate_category` `z` on((`x`.`category_rate_id` = `z`.`id`))) where ((`a`.`deleted` = '0') and (`m`.`status` = 'RELEASED') and (`k`.`with_sss` = 'Yes') and (`k`.`with_pagibig` = 'Yes') and (`k`.`with_philhealth` = 'Yes')) ;

-- --------------------------------------------------------

--
-- Structure for view `view_report_payroll_register`
--
DROP TABLE IF EXISTS `view_report_payroll_register`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `view_report_payroll_register`  AS  select `b`.`company_ind` AS `company_ind`,`a`.`register_number` AS `register_number`,`i`.`pay_date` AS `pay_date`,`a`.`company_id` AS `company_id`,ucase(`a`.`employee_name`) AS `employee_name`,`c`.`company_name` AS `company_name`,`b`.`department` AS `department`,`d`.`payroll_account_no` AS `payroll_account_no`,`a`.`basic_salary` AS `basic_salary`,`a`.`absent_amount` AS `absent_amount`,`a`.`late_amount` AS `late_amount`,`a`.`undertime_amount` AS `undertime_amount`,`a`.`working_amount_leg` AS `legal_holiday`,`a`.`working_amount_spcl_nw` AS `special_non_working`,`a`.`working_amount_spcl_w` AS `special_working`,(((`a`.`rd_amount_reg` + `a`.`rd_amount_leg`) + `a`.`rd_amount_spcl_nw`) + `a`.`rd_amount_spcl_w`) AS `restday`,(((((((`a`.`overtime_amount_reg` + `a`.`overtime_amount_leg`) + `a`.`overtime_amount_spcl_nw`) + `a`.`overtime_amount_spcl_w`) + `a`.`overtime_amount_rd`) + `a`.`overtime_amount_rd_spcl_nw`) + `a`.`overtime_amount_rd_spcl_w`) + `a`.`overtime_amount_rd_leg`) AS `overtime`,((((((((((((((((`a`.`nd_amount_reg` + `a`.`nd_amount_leg`) + `a`.`nd_amount_spcl_nw`) + `a`.`nd_amount_spcl_w`) + `a`.`nd_amount_rd`) + `a`.`nd_amount_reg_ot`) + `a`.`nd_amount_spcl_nw_ot`) + `a`.`nd_amount_spcl_w_ot`) + `a`.`nd_amount_leg_ot`) + `a`.`nd_amount_rd_ot`) + `a`.`nd_amount_xs_ot`) + `a`.`nd_amount_rd_spcl_nw`) + `a`.`nd_amount_rd_spcl_nw_ot`) + `a`.`nd_amount_rd_spcl_w`) + `a`.`nd_amount_rd_spcl_w_ot`) + `a`.`nd_amount_rd_leg`) + `a`.`nd_amount_rd_leg_ot`) AS `nightdiff`,`a`.`taxable_allowance` AS `taxable_allowance`,`a`.`nontaxable_allowance` AS `nontaxable_allowance`,`a`.`total_additions` AS `total_additions`,`a`.`gross_income` AS `gross_income`,`h`.`employee_share` AS `sss`,`g`.`employee_share` AS `philhealth`,`f`.`employee_share` AS `pagibig`,`e`.`wtax` AS `tax`,`a`.`total_deductions` AS `total_deductions`,`a`.`net_income` AS `net_income`,ifnull((select sum(`view_report_deduction_payreg`.`amount`) from `view_report_deduction_payreg` where ((`view_report_deduction_payreg`.`register_number` = `a`.`register_number`) and (`view_report_deduction_payreg`.`company_id` = `a`.`company_id`) and (`view_report_deduction_payreg`.`deduction_type` = 'OTHERS'))),0) AS `other_deduction`,`i`.`status` AS `status`,`j`.`with_sss` AS `with_sss`,`j`.`with_pagibig` AS `with_pagibig`,`j`.`with_philhealth` AS `with_philhealth`,`j`.`with_withholdingtax` AS `with_withholdingtax` from (((((((((`payroll_register_summary_amount` `a` left join `hris_csi`.`employee_information` `b` on((`a`.`company_id` = `b`.`company_id`))) left join `hris_csi`.`company` `c` on((`a`.`company_ind` = `c`.`id`))) left join `hris_csi`.`employee_compensation` `d` on((`a`.`company_id` = `d`.`company_id`))) left join `payroll_register_tax` `e` on(((`a`.`company_id` = `e`.`company_id`) and (`a`.`register_number` = `e`.`register_number`)))) left join `payroll_register_pagibig` `f` on(((`a`.`company_id` = `f`.`company_id`) and (`a`.`register_number` = `f`.`register_number`)))) left join `payroll_register_philhealth` `g` on(((`a`.`company_id` = `g`.`company_id`) and (`a`.`register_number` = `g`.`register_number`)))) left join `payroll_register_sss` `h` on(((`a`.`company_id` = `h`.`company_id`) and (`a`.`register_number` = `h`.`register_number`)))) left join `payroll_register` `i` on((`a`.`register_number` = `i`.`register_number`))) left join `hris_csi`.`payroll_settings` `j` on((`a`.`group_ind` = `j`.`group_ind`))) ;

-- --------------------------------------------------------

--
-- Structure for view `view_report_payroll_register_history_per_employee`
--
DROP TABLE IF EXISTS `view_report_payroll_register_history_per_employee`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `view_report_payroll_register_history_per_employee`  AS  select `a`.`id` AS `id`,`a`.`register_number` AS `register_number`,`a`.`company_id` AS `company_id`,replace(ucase(concat(`b`.`lname`,',',`b`.`fname`,' ',`b`.`mname`)),'Ã‘','Ñ') AS `full_name`,`c`.`company_name` AS `company_name`,`ei`.`company_id` AS `company_ind`,`ei`.`department` AS `department`,`e`.`pay_date` AS `pay_date`,monthname(`e`.`pay_date`) AS `month`,year(`e`.`pay_date`) AS `year`,`a`.`basic_salary` AS `basic_salary`,`a`.`absent_amount` AS `absent_amount`,`a`.`late_amount` AS `late_amount`,`a`.`overtime_amount_reg` AS `overtime_amount_reg`,`a`.`overtime_amount_leg` AS `overtime_amount_leg`,`a`.`overtime_amount_spcl_nw` AS `overtime_amount_spcl_nw`,`a`.`overtime_amount_spcl_w` AS `overtime_amount_spcl_w`,`a`.`working_amount_leg` AS `working_amount_leg`,`a`.`working_amount_spcl_nw` AS `working_amount_spcl_nw`,`a`.`working_amount_spcl_w` AS `working_amount_spcl_w`,`a`.`nd_amount_reg` AS `nd_amount_reg`,`a`.`nd_amount_leg` AS `nd_amount_leg`,`a`.`nd_amount_spcl_nw` AS `nd_amount_spcl_nw`,`a`.`nd_amount_spcl_w` AS `nd_amount_spcl_w`,`a`.`rd_amount_reg` AS `rd_amount_reg`,`a`.`rd_amount_leg` AS `rd_amount_leg`,`a`.`rd_amount_spcl_nw` AS `rd_amount_spcl_nw`,`a`.`rd_amount_spcl_w` AS `rd_amount_spcl_w`,`a`.`nontaxable_allowance` AS `nontaxable_allowance`,`a`.`total_additions` AS `total_additions`,`a`.`other_deductions` AS `other_deductions`,`a`.`gross_income` AS `gross_income`,`a`.`sss_amount` AS `sss_amount`,`a`.`phil_amount` AS `phil_amount`,`a`.`pagibig_amount` AS `pagibig_amount`,`a`.`tax_amount` AS `tax_amount`,`a`.`total_deductions` AS `total_deductions`,`a`.`net_income` AS `net_income`,`h`.`employer_share` AS `sss_employer_share`,`h`.`ec` AS `ec`,`i`.`employer_share` AS `pagibig_employer_share`,`j`.`tax_income` AS `tax_income`,(select coalesce(sum(`addi`.`amount`),0) AS `baddition` from `view_addition_type_amount` `addi` where ((`addi`.`register_number` = `a`.`register_number`) and (`addi`.`addition_type` = 'OVERTIME') and (`addi`.`company_id` = `a`.`company_id`))) AS `ot_adjustment`,(select coalesce(sum(`addi`.`amount`),0) AS `baddition` from `view_addition_type_amount` `addi` where ((`addi`.`register_number` = `a`.`register_number`) and (`addi`.`addition_type` = 'NIGHTDIFF') and (`addi`.`company_id` = `a`.`company_id`))) AS `nd_adjustment` from (((((((`payroll_register_summary_amount` `a` left join `hris_csi`.`personal_information` `b` on((`a`.`company_id` = `b`.`company_id`))) left join `hris_csi`.`employee_information` `ei` on((`a`.`company_id` = `ei`.`company_id`))) left join `hris_csi`.`company` `c` on((`ei`.`company_ind` = `c`.`id`))) left join `payroll_register` `e` on((`a`.`register_number` = `e`.`register_number`))) left join `payroll_register_sss` `h` on(((`a`.`register_number` = `h`.`register_number`) and (`a`.`company_id` = `h`.`company_id`)))) left join `payroll_register_pagibig` `i` on(((`a`.`register_number` = `i`.`register_number`) and (`a`.`company_id` = `i`.`company_id`)))) left join `payroll_register_tax` `j` on(((`a`.`register_number` = `j`.`register_number`) and (`a`.`company_id` = `j`.`company_id`)))) where ((`a`.`deleted` = '0') and (`e`.`status` = 'RELEASED')) ;

-- --------------------------------------------------------

--
-- Structure for view `view_report_philhealth`
--
DROP TABLE IF EXISTS `view_report_philhealth`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `view_report_philhealth`  AS  select `a`.`id` AS `id`,`a`.`register_number` AS `register_number`,`a`.`company_id` AS `company_id`,replace(ucase(concat(`b`.`lname`,',',`b`.`fname`,' ',`b`.`mname`)),'Ã‘','Ñ') AS `full_name`,`c`.`company_name` AS `company_name`,`e`.`company_ind` AS `company_ind`,`e`.`department` AS `department`,`a`.`philhealth_number` AS `philhealth_number`,`a`.`phil_table_id` AS `phil_table_id`,`a`.`gross` AS `gross`,`a`.`employee_share` AS `employee_share`,`a`.`employer_share` AS `employer_share`,(`a`.`employee_share` + `a`.`employer_share`) AS `total`,`a`.`status` AS `status`,`a`.`pay_date` AS `pay_date`,`a`.`pay_term` AS `pay_term`,`d`.`group_ind` AS `group_ind`,`f`.`with_philhealth` AS `with_philhealth` from (((((`payroll_register_philhealth` `a` left join `hris_csi`.`personal_information` `b` on((`a`.`company_id` = `b`.`company_id`))) left join `hris_csi`.`employee_information` `e` on((`a`.`company_id` = `e`.`company_id`))) left join `hris_csi`.`company` `c` on((`e`.`company_ind` = `c`.`id`))) left join `payroll_register_summary_amount` `d` on(((`a`.`company_id` = `d`.`company_id`) and (`a`.`register_number` = `d`.`register_number`)))) left join `hris_csi`.`payroll_settings` `f` on((`d`.`group_ind` = `f`.`group_ind`))) where (`a`.`status` = 'RELEASED') ;

-- --------------------------------------------------------

--
-- Structure for view `view_report_sss`
--
DROP TABLE IF EXISTS `view_report_sss`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `view_report_sss`  AS  select `a`.`id` AS `id`,`a`.`register_number` AS `register_number`,`a`.`company_id` AS `company_id`,replace(ucase(concat(`b`.`lname`,',',`b`.`fname`,' ',`b`.`mname`)),'Ã‘','Ñ') AS `full_name`,`c`.`company_name` AS `company_name`,`e`.`company_ind` AS `company_ind`,`e`.`department` AS `department`,`a`.`sss_number` AS `sss_number`,`a`.`sss_table_id` AS `sss_table_id`,`a`.`gross` AS `gross`,`a`.`employee_share` AS `employee_share`,`a`.`employer_share` AS `employer_share`,`a`.`ec` AS `ec`,((`a`.`employee_share` + `a`.`employer_share`) + `a`.`ec`) AS `total`,`a`.`status` AS `status`,`a`.`pay_date` AS `pay_date`,`a`.`pay_term` AS `pay_term`,`d`.`group_ind` AS `group_ind`,`f`.`with_sss` AS `with_sss` from (((((`payroll_register_sss` `a` left join `hris_csi`.`personal_information` `b` on((`a`.`company_id` = `b`.`company_id`))) left join `hris_csi`.`employee_information` `e` on((`a`.`company_id` = `e`.`company_id`))) left join `hris_csi`.`company` `c` on((`e`.`company_ind` = `c`.`id`))) left join `payroll_register_summary_amount` `d` on(((`a`.`company_id` = `d`.`company_id`) and (`a`.`register_number` = `d`.`register_number`)))) left join `hris_csi`.`payroll_settings` `f` on((`d`.`group_ind` = `f`.`group_ind`))) where (`a`.`status` = 'RELEASED') ;

-- --------------------------------------------------------

--
-- Structure for view `view_report_tax`
--
DROP TABLE IF EXISTS `view_report_tax`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `view_report_tax`  AS  select replace(ucase(concat(`b`.`lname`,',',`b`.`fname`,' ',`b`.`mname`)),'Ã‘','Ñ') AS `empname`,`d`.`id` AS `company_ind`,`c`.`department` AS `department`,`d`.`company_name` AS `company_name`,`a`.`register_number` AS `register_number`,`a`.`company_id` AS `company_id`,`a`.`tin_number` AS `tin_number`,`h`.`gross_income` AS `gross`,`e`.`employee_share` AS `sss`,`f`.`employee_share` AS `philhealth`,`g`.`employee_share` AS `pagibig`,`a`.`non_taxable_earnings` AS `non_taxable_earnings`,`a`.`tax_income` AS `tax_income`,`a`.`wtax` AS `wtax`,`a`.`pay_date` AS `pay_date`,`a`.`pay_term` AS `pay_term`,`i`.`with_sss` AS `with_sss`,`i`.`with_withholdingtax` AS `with_withholdingtax`,`i`.`with_pagibig` AS `with_pagibig`,`i`.`with_philhealth` AS `with_philhealth` from ((((((((`payroll_register_summary_amount` `h` left join `payroll_register_tax` `a` on(((`h`.`company_id` = `a`.`company_id`) and (`h`.`register_number` = `a`.`register_number`)))) left join `payroll_register_sss` `e` on(((`h`.`register_number` = `e`.`register_number`) and (`h`.`company_id` = `e`.`company_id`)))) left join `payroll_register_philhealth` `f` on(((`h`.`register_number` = `f`.`register_number`) and (`h`.`company_id` = `f`.`company_id`)))) left join `payroll_register_pagibig` `g` on(((`h`.`register_number` = `g`.`register_number`) and (`h`.`company_id` = `g`.`company_id`)))) left join `hris_csi`.`personal_information` `b` on((`a`.`company_id` = `b`.`company_id`))) left join `hris_csi`.`employee_information` `c` on((`b`.`company_id` = `c`.`company_id`))) left join `hris_csi`.`company` `d` on((`c`.`company_ind` = `d`.`id`))) left join `hris_csi`.`payroll_settings` `i` on((`h`.`group_ind` = `i`.`group_ind`))) where (`a`.`status` = 'Released') ;

-- --------------------------------------------------------

--
-- Structure for view `view_report_thirteenthmonth`
--
DROP TABLE IF EXISTS `view_report_thirteenthmonth`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `view_report_thirteenthmonth`  AS  select replace(ucase(concat(`c`.`lname`,', ',`c`.`fname`)),'Ã‘','Ñ') AS `empname`,`a`.`company_id` AS `company_id`,`a`.`company_ind` AS `company_ind`,`e`.`company_name` AS `company_name`,`d`.`department` AS `department`,`d`.`date_employed` AS `date_employed`,`a`.`basic_salary` AS `basic_salary`,(`a`.`taxable_allowance_absent_amount` + `a`.`taxable_allowance`) AS `taxableallowance`,(`a`.`nontaxable_allowance_absent_amount` + `a`.`nontaxable_allowance`) AS `nontaxableallowance`,(`a`.`gross_income` - (((((((((((((((((((((((((((((((((((`a`.`nontaxable_allowance` + `a`.`taxable_allowance`) + `a`.`total_additions`) + `a`.`rd_amount_reg`) + `a`.`rd_amount_leg`) + `a`.`rd_amount_spcl_nw`) + `a`.`rd_amount_spcl_w`) + `a`.`nd_amount_reg`) + `a`.`nd_amount_leg`) + `a`.`nd_amount_spcl_nw`) + `a`.`nd_amount_spcl_w`) + `a`.`nd_amount_rd`) + `a`.`nd_amount_reg_ot`) + `a`.`nd_amount_spcl_nw_ot`) + `a`.`nd_amount_spcl_nw_ot`) + `a`.`nd_amount_spcl_w_ot`) + `a`.`nd_amount_leg_ot`) + `a`.`nd_amount_rd_ot`) + `a`.`nd_amount_xs_ot`) + `a`.`nd_amount_rd_spcl_nw`) + `a`.`nd_amount_rd_spcl_nw_ot`) + `a`.`nd_amount_rd_spcl_w`) + `a`.`nd_amount_rd_spcl_w_ot`) + `a`.`nd_amount_rd_leg`) + `a`.`nd_amount_rd_leg_ot`) + `a`.`overtime_amount_reg`) + `a`.`overtime_amount_leg`) + `a`.`overtime_amount_spcl_nw`) + `a`.`overtime_amount_spcl_w`) + `a`.`overtime_amount_rd`) + `a`.`overtime_amount_rd_spcl_nw`) + `a`.`overtime_amount_rd_spcl_w`) + `a`.`overtime_amount_rd_leg`) + `a`.`working_amount_leg`) + `a`.`working_amount_spcl_nw`) + `a`.`working_amount_spcl_w`)) AS `gross_for_thirteenth`,`a`.`nontaxable_allowance` AS `nontaxallowance_for_thirteenth`,`a`.`taxable_allowance` AS `taxallowance_for_thirteenth`,`b`.`register_number` AS `register_number`,`b`.`pay_date` AS `pay_date`,`b`.`pay_date_from` AS `pay_date_from`,`b`.`pay_date_to` AS `pay_date_to` from ((((`payroll_register_summary_amount` `a` left join `payroll_register` `b` on((`a`.`register_number` = `b`.`register_number`))) left join `hris_csi`.`personal_information` `c` on((`a`.`company_id` = `c`.`company_id`))) left join `hris_csi`.`employee_information` `d` on((`c`.`company_id` = `d`.`company_id`))) left join `hris_csi`.`company` `e` on((`a`.`company_ind` = `e`.`id`))) where (`b`.`status` = 'RELEASED') ;

-- --------------------------------------------------------

--
-- Structure for view `view_sendemail_emp`
--
DROP TABLE IF EXISTS `view_sendemail_emp`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `view_sendemail_emp`  AS  select replace(ucase(concat(`b`.`lname`,',',`b`.`fname`,' ',`b`.`mname`)),'Ã‘','Ñ') AS `empname`,`a`.`company_id` AS `company_id`,`b`.`csi_email` AS `csi_email`,`a`.`register_number` AS `register_number`,`a`.`group_ind` AS `group_ind`,`a`.`company_ind` AS `company_ind`,`a`.`emailed` AS `emailed`,`a`.`hold_aslastpay` AS `hold_aslastpay` from (`payroll_register_summary_amount` `a` left join `hris_csi`.`personal_information` `b` on((`a`.`company_id` = `b`.`company_id`))) where (`a`.`deleted` = 0) order by `b`.`lname` ;

-- --------------------------------------------------------

--
-- Structure for view `view_tbladdition`
--
DROP TABLE IF EXISTS `view_tbladdition`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `view_tbladdition`  AS  select `a`.`id` AS `id`,`a`.`company_id` AS `company_id`,replace(ucase(concat(`b`.`lname`,',',`b`.`fname`,' ',`b`.`mname`)),'Ã‘','Ñ') AS `full_name`,`b`.`department` AS `department`,`b`.`team` AS `team`,`a`.`company_ind` AS `company_ind`,`a`.`addition_name` AS `addition_name`,`a`.`status` AS `status`,`a`.`option` AS `option`,`a`.`taxable` AS `taxable`,`a`.`value` AS `value`,`a`.`transaction_value` AS `transaction_value`,`a`.`start_date` AS `start_date`,`a`.`end_date` AS `end_date`,`a`.`schedule` AS `schedule`,`a`.`validity` AS `validity`,`a`.`validity_count` AS `validity_count`,`a`.`remaining_balance` AS `remaining_balance`,`a`.`created_by` AS `created_by`,`a`.`lu_by` AS `lu_by`,`a`.`deleted` AS `deleted`,`a`.`created_at` AS `created_at`,`a`.`updated_at` AS `updated_at`,`a`.`addition_type` AS `addition_type` from (`addition_tables` `a` left join `view_getemployeedetails` `b` on((`a`.`company_id` = `b`.`company_id`))) ;

-- --------------------------------------------------------

--
-- Structure for view `view_tbldeduction`
--
DROP TABLE IF EXISTS `view_tbldeduction`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `view_tbldeduction`  AS  select `a`.`id` AS `id`,`a`.`company_id` AS `company_id`,replace(ucase(concat(`b`.`lname`,',',`b`.`fname`,' ',`b`.`mname`)),'Ã‘','Ñ') AS `full_name`,`b`.`department` AS `department`,`b`.`team` AS `team`,`a`.`company_ind` AS `company_ind`,`a`.`deduction_id` AS `deduction_id`,`c`.`deduction_name` AS `deduction_name`,`a`.`status` AS `status`,`a`.`type` AS `type`,`a`.`value` AS `value`,`a`.`amortization` AS `amortization`,`a`.`start_date` AS `start_date`,`a`.`end_date` AS `end_date`,`a`.`schedule` AS `schedule`,`a`.`payment_term` AS `payment_term`,`a`.`payment_count` AS `payment_count`,`a`.`total_balance` AS `total_balance`,`a`.`created_by` AS `created_by`,`a`.`lu_by` AS `lu_by`,`a`.`deleted` AS `deleted`,`a`.`created_at` AS `created_at`,`a`.`updated_at` AS `updated_at` from ((`deduction_tables` `a` left join `view_getemployeedetails` `b` on((`a`.`company_id` = `b`.`company_id`))) left join `deduction_masters` `c` on((`a`.`deduction_id` = `c`.`id`))) ;

-- --------------------------------------------------------

--
-- Structure for view `view_tbltax`
--
DROP TABLE IF EXISTS `view_tbltax`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `view_tbltax`  AS  select `a`.`id` AS `id`,`a`.`tax_type` AS `tax_type`,`b`.`status_code` AS `status_code`,`a`.`status_number` AS `status_number`,`a`.`compensation_level` AS `compensation_level`,`a`.`prescribe_minimum` AS `prescribe_minimum`,`a`.`percent_over_cl` AS `percent_over_cl`,`a`.`percentage` AS `percentage`,`a`.`notpercentage` AS `notpercentage` from (`tax_tables` `a` left join `hris_csi`.`tax_status` `b` on((`a`.`tax_status` = `b`.`ind`))) where ((`a`.`deleted` = 0) and (`b`.`deleted` = 0)) ;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `addition_tables`
--
ALTER TABLE `addition_tables`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `date_and_time_records`
--
ALTER TABLE `date_and_time_records`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `deduction_masters`
--
ALTER TABLE `deduction_masters`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `deduction_tables`
--
ALTER TABLE `deduction_tables`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `holidays`
--
ALTER TABLE `holidays`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `last_pay`
--
ALTER TABLE `last_pay`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `last_pay_adjustment`
--
ALTER TABLE `last_pay_adjustment`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `last_pay_deductions`
--
ALTER TABLE `last_pay_deductions`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `last_pay_payreg`
--
ALTER TABLE `last_pay_payreg`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pagibig_tables`
--
ALTER TABLE `pagibig_tables`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `payroll_rates`
--
ALTER TABLE `payroll_rates`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `payroll_register`
--
ALTER TABLE `payroll_register`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `payroll_register_additions`
--
ALTER TABLE `payroll_register_additions`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `payroll_register_attendance_summary`
--
ALTER TABLE `payroll_register_attendance_summary`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `payroll_register_deductions`
--
ALTER TABLE `payroll_register_deductions`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `payroll_register_group`
--
ALTER TABLE `payroll_register_group`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `payroll_register_pagibig`
--
ALTER TABLE `payroll_register_pagibig`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `payroll_register_philhealth`
--
ALTER TABLE `payroll_register_philhealth`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `payroll_register_sss`
--
ALTER TABLE `payroll_register_sss`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `payroll_register_summary_amount`
--
ALTER TABLE `payroll_register_summary_amount`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `payroll_register_tax`
--
ALTER TABLE `payroll_register_tax`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `payroll_variables`
--
ALTER TABLE `payroll_variables`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `philhealth_tables`
--
ALTER TABLE `philhealth_tables`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `social_security_systems`
--
ALTER TABLE `social_security_systems`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tax_tables`
--
ALTER TABLE `tax_tables`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- Indexes for table `user_modules`
--
ALTER TABLE `user_modules`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user_module_accesses`
--
ALTER TABLE `user_module_accesses`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user_types`
--
ALTER TABLE `user_types`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `addition_tables`
--
ALTER TABLE `addition_tables`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `date_and_time_records`
--
ALTER TABLE `date_and_time_records`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1416;

--
-- AUTO_INCREMENT for table `deduction_masters`
--
ALTER TABLE `deduction_masters`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `deduction_tables`
--
ALTER TABLE `deduction_tables`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `holidays`
--
ALTER TABLE `holidays`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `last_pay`
--
ALTER TABLE `last_pay`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `last_pay_adjustment`
--
ALTER TABLE `last_pay_adjustment`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `last_pay_deductions`
--
ALTER TABLE `last_pay_deductions`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `last_pay_payreg`
--
ALTER TABLE `last_pay_payreg`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=38;

--
-- AUTO_INCREMENT for table `pagibig_tables`
--
ALTER TABLE `pagibig_tables`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `payroll_rates`
--
ALTER TABLE `payroll_rates`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=34;

--
-- AUTO_INCREMENT for table `payroll_register`
--
ALTER TABLE `payroll_register`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `payroll_register_additions`
--
ALTER TABLE `payroll_register_additions`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `payroll_register_attendance_summary`
--
ALTER TABLE `payroll_register_attendance_summary`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `payroll_register_deductions`
--
ALTER TABLE `payroll_register_deductions`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `payroll_register_group`
--
ALTER TABLE `payroll_register_group`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `payroll_register_pagibig`
--
ALTER TABLE `payroll_register_pagibig`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `payroll_register_philhealth`
--
ALTER TABLE `payroll_register_philhealth`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `payroll_register_sss`
--
ALTER TABLE `payroll_register_sss`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `payroll_register_summary_amount`
--
ALTER TABLE `payroll_register_summary_amount`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `payroll_register_tax`
--
ALTER TABLE `payroll_register_tax`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `payroll_variables`
--
ALTER TABLE `payroll_variables`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `philhealth_tables`
--
ALTER TABLE `philhealth_tables`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `social_security_systems`
--
ALTER TABLE `social_security_systems`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=32;

--
-- AUTO_INCREMENT for table `tax_tables`
--
ALTER TABLE `tax_tables`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=265;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `user_modules`
--
ALTER TABLE `user_modules`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=32;

--
-- AUTO_INCREMENT for table `user_module_accesses`
--
ALTER TABLE `user_module_accesses`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `user_types`
--
ALTER TABLE `user_types`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
