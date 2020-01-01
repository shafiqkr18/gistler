-- phpMyAdmin SQL Dump
-- version 4.2.11
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: May 01, 2016 at 02:09 PM
-- Server version: 5.6.21
-- PHP Version: 5.6.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `gistler_crm`
--

-- --------------------------------------------------------

--
-- Table structure for table `crm_accounting_balancesheet`
--

CREATE TABLE IF NOT EXISTS `crm_accounting_balancesheet` (
`id` int(11) NOT NULL,
  `client_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `ref` varchar(255) NOT NULL,
  `bank_id` varchar(255) NOT NULL,
  `deal_id` int(11) NOT NULL,
  `transaction` varchar(255) NOT NULL,
  `status` int(11) NOT NULL,
  `payment_mode` int(11) NOT NULL,
  `type` int(11) NOT NULL,
  `sub_type` int(11) NOT NULL,
  `internal_ref` varchar(255) NOT NULL,
  `agent_id` int(11) NOT NULL,
  `auto_name_field` varchar(255) NOT NULL,
  `receipt_no` varchar(255) NOT NULL,
  `deal_ref` varchar(255) NOT NULL,
  `created_by_name` varchar(255) NOT NULL,
  `amount` decimal(18,2) NOT NULL,
  `notes` text,
  `dateadded` datetime NOT NULL,
  `dateupdated` datetime NOT NULL,
  `is_active` tinyint(2) NOT NULL DEFAULT '1'
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `crm_accounting_balancesheet`
--

INSERT INTO `crm_accounting_balancesheet` (`id`, `client_id`, `user_id`, `ref`, `bank_id`, `deal_id`, `transaction`, `status`, `payment_mode`, `type`, `sub_type`, `internal_ref`, `agent_id`, `auto_name_field`, `receipt_no`, `deal_ref`, `created_by_name`, `amount`, `notes`, `dateadded`, `dateupdated`, `is_active`) VALUES
(1, 1000000, 1, 'GIS-BS-1', '248', 4, 'debit', 2, 20, 178, 186, '2536', 84, 'Maria', '123456', 'GIS-D-4', 'Admin S', '200.00', NULL, '2016-02-16 07:29:19', '2016-02-16 07:29:19', 1);

-- --------------------------------------------------------

--
-- Table structure for table `crm_accounting_balancesheet_history`
--

CREATE TABLE IF NOT EXISTS `crm_accounting_balancesheet_history` (
`id` int(11) NOT NULL,
  `client_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `ref` varchar(255) NOT NULL,
  `bank_id` varchar(255) NOT NULL,
  `deal_id` int(11) NOT NULL,
  `transaction` varchar(255) NOT NULL,
  `status` int(11) NOT NULL,
  `payment_mode` int(11) NOT NULL,
  `type` int(11) NOT NULL,
  `sub_type` int(11) NOT NULL,
  `internal_ref` varchar(255) NOT NULL,
  `agent_id` int(11) NOT NULL,
  `auto_name_field` varchar(255) NOT NULL,
  `receipt_no` varchar(255) NOT NULL,
  `deal_ref` varchar(255) NOT NULL,
  `created_by_name` varchar(255) NOT NULL,
  `amount` decimal(18,2) NOT NULL,
  `notes` text,
  `dateadded` datetime NOT NULL,
  `dateupdated` datetime NOT NULL,
  `is_active` tinyint(2) NOT NULL DEFAULT '1',
  `activitytime` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' ON UPDATE CURRENT_TIMESTAMP,
  `action` varchar(55) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `crm_accounting_balancesheet_history`
--

INSERT INTO `crm_accounting_balancesheet_history` (`id`, `client_id`, `user_id`, `ref`, `bank_id`, `deal_id`, `transaction`, `status`, `payment_mode`, `type`, `sub_type`, `internal_ref`, `agent_id`, `auto_name_field`, `receipt_no`, `deal_ref`, `created_by_name`, `amount`, `notes`, `dateadded`, `dateupdated`, `is_active`, `activitytime`, `action`) VALUES
(1, 1000000, 1, 'GIS-BS-1', '248', 4, 'debit', 2, 20, 178, 186, '2536', 84, 'Maria', '123456', 'GIS-D-4', 'Admin S', '200.00', NULL, '2016-02-16 07:29:19', '2016-02-16 07:29:19', 1, '2016-02-16 06:29:20', 'insert');

-- --------------------------------------------------------

--
-- Table structure for table `crm_accounting_bankaccounts`
--

CREATE TABLE IF NOT EXISTS `crm_accounting_bankaccounts` (
`id` int(11) NOT NULL,
  `client_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `initial_amount` decimal(18,2) NOT NULL,
  `account_no` varchar(255) NOT NULL,
  `iban_no` varchar(255) NOT NULL,
  `branch_name` varchar(255) NOT NULL,
  `currency_id` varchar(255) NOT NULL,
  `swift_code` varchar(255) NOT NULL,
  `isDefault` tinyint(2) NOT NULL,
  `is_active` tinyint(2) NOT NULL DEFAULT '1',
  `dateadded` datetime NOT NULL,
  `dateupdated` datetime NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `crm_accounting_bankaccounts`
--

INSERT INTO `crm_accounting_bankaccounts` (`id`, `client_id`, `user_id`, `name`, `initial_amount`, `account_no`, `iban_no`, `branch_name`, `currency_id`, `swift_code`, `isDefault`, `is_active`, `dateadded`, `dateupdated`) VALUES
(1, 1000000, 1, 'NBD', '1000000.00', '1234567', '021589647857', 'Marina', '3', '5246', 1, 1, '2016-02-15 09:10:18', '2016-02-15 09:10:18');

-- --------------------------------------------------------

--
-- Table structure for table `crm_accounting_bankaccounts_history`
--

CREATE TABLE IF NOT EXISTS `crm_accounting_bankaccounts_history` (
`id` int(11) NOT NULL,
  `client_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `initial_amount` decimal(18,2) NOT NULL,
  `account_no` varchar(255) NOT NULL,
  `iban_no` varchar(255) NOT NULL,
  `branch_name` varchar(255) NOT NULL,
  `currency_id` varchar(255) NOT NULL,
  `swift_code` varchar(255) NOT NULL,
  `isDefault` tinyint(2) NOT NULL,
  `is_active` tinyint(2) NOT NULL,
  `dateadded` datetime NOT NULL,
  `dateupdated` datetime NOT NULL,
  `activitytime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `action` varchar(55) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `crm_accounting_bankaccounts_history`
--

INSERT INTO `crm_accounting_bankaccounts_history` (`id`, `client_id`, `user_id`, `name`, `initial_amount`, `account_no`, `iban_no`, `branch_name`, `currency_id`, `swift_code`, `isDefault`, `is_active`, `dateadded`, `dateupdated`, `activitytime`, `action`) VALUES
(1, 1000000, 1, 'NBD', '1000000000.00', '123456', '02158964785', 'Marina', '3', '5246', 1, 0, '2016-02-15 07:32:18', '2016-02-15 07:32:18', '2016-02-15 07:09:47', 'insert'),
(2, 1000000, 1, 'NBD', '0.00', '1234567', '021589647857', 'Marina', '3', '5246', 1, 0, '2016-02-15 09:09:46', '2016-02-15 09:09:46', '2016-02-15 08:09:46', 'update'),
(3, 1000000, 1, 'NBD', '1000000.00', '1234567', '021589647857', 'Marina', '3', '5246', 1, 0, '2016-02-15 09:10:18', '2016-02-15 09:10:18', '2016-02-15 08:10:18', 'update');

-- --------------------------------------------------------

--
-- Table structure for table `crm_accounting_parentcategory`
--

CREATE TABLE IF NOT EXISTS `crm_accounting_parentcategory` (
`id` int(11) NOT NULL,
  `parent_id` int(11) NOT NULL,
  `CategoryName` varchar(255) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `crm_accounting_parentcategory`
--

INSERT INTO `crm_accounting_parentcategory` (`id`, `parent_id`, `CategoryName`) VALUES
(1, 0, 'None'),
(2, 178, 'Commission'),
(3, 179, 'Expenses'),
(4, 164, 'Fees'),
(5, 180, 'Hardware'),
(6, 181, 'Marketing'),
(7, 182, 'Rent'),
(8, 183, 'Software'),
(9, 184, 'Staff'),
(10, 185, 'Staff Benefits');

-- --------------------------------------------------------

--
-- Table structure for table `crm_accounting_paymentmodes`
--

CREATE TABLE IF NOT EXISTS `crm_accounting_paymentmodes` (
`id` int(11) NOT NULL,
  `client_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `dropdown_name` varchar(255) NOT NULL,
  `option_title` varchar(255) NOT NULL,
  `screen_name` varchar(255) NOT NULL,
  `screen` int(11) NOT NULL,
  `dateadded` datetime NOT NULL,
  `dateupdated` datetime NOT NULL,
  `is_active` tinyint(2) NOT NULL DEFAULT '1'
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `crm_accounting_paymentmodes`
--

INSERT INTO `crm_accounting_paymentmodes` (`id`, `client_id`, `user_id`, `dropdown_name`, `option_title`, `screen_name`, `screen`, `dateadded`, `dateupdated`, `is_active`) VALUES
(1, 1000000, 1, 'payment_mode', 'Cash', 'Accounts', 0, '2016-02-14 00:00:00', '2016-02-14 00:00:00', 1),
(2, 1000000, 1, 'payment_mode', 'TT', 'Accounts', 0, '2016-02-14 12:06:13', '2016-02-14 12:06:13', 1);

-- --------------------------------------------------------

--
-- Table structure for table `crm_accounting_paymentmodes_history`
--

CREATE TABLE IF NOT EXISTS `crm_accounting_paymentmodes_history` (
`id` int(11) NOT NULL,
  `client_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `dropdown_name` varchar(255) NOT NULL,
  `option_title` varchar(255) NOT NULL,
  `screen_name` varchar(255) NOT NULL,
  `screen` int(11) NOT NULL,
  `dateadded` datetime NOT NULL,
  `dateupdated` datetime NOT NULL,
  `is_active` tinyint(2) NOT NULL DEFAULT '1',
  `action` varchar(255) NOT NULL,
  `activitytime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `crm_accounting_paymentmodes_history`
--

INSERT INTO `crm_accounting_paymentmodes_history` (`id`, `client_id`, `user_id`, `dropdown_name`, `option_title`, `screen_name`, `screen`, `dateadded`, `dateupdated`, `is_active`, `action`, `activitytime`) VALUES
(1, 1000000, 1, 'payment_mode', 'TT', 'Accounts', 0, '2016-02-14 00:00:00', '2016-02-14 00:00:00', 1, 'insert', '2016-02-14 11:02:07'),
(2, 1000000, 1, 'payment_mode', 'TTT', 'Accounts', 0, '2016-02-14 00:00:00', '2016-02-14 00:00:00', 1, 'update', '2016-02-14 11:02:07'),
(3, 1000000, 1, 'payment_mode', 'TT', 'Accounts', 0, '2016-02-14 00:00:00', '2016-02-14 00:00:00', 1, 'update', '2016-02-14 11:02:07'),
(4, 1000000, 1, 'payment_mode', 'TTT', 'Accounts', 0, '2016-02-14 00:00:00', '2016-02-14 00:00:00', 1, 'update', '2016-02-14 11:02:52'),
(5, 1000000, 1, 'payment_mode', 'TT', 'Accounts', 0, '2016-02-14 12:06:13', '2016-02-14 12:06:13', 1, 'update', '2016-02-14 11:06:13');

-- --------------------------------------------------------

--
-- Table structure for table `crm_accounting_trancategories`
--

CREATE TABLE IF NOT EXISTS `crm_accounting_trancategories` (
`id` int(11) NOT NULL,
  `client_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `category-selection` varchar(55) NOT NULL,
  `transaction` varchar(255) NOT NULL,
  `parent_id` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `dateadded` datetime NOT NULL,
  `dateupdated` datetime NOT NULL,
  `is_active` tinyint(4) NOT NULL DEFAULT '1'
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `crm_accounting_trancategories`
--

INSERT INTO `crm_accounting_trancategories` (`id`, `client_id`, `user_id`, `category-selection`, `transaction`, `parent_id`, `title`, `dateadded`, `dateupdated`, `is_active`) VALUES
(1, 1000000, 1, 'category', 'credit', 0, 'Commission', '2016-02-14 00:00:00', '2016-02-24 07:00:00', 1),
(2, 1000000, 1, 'sub-category', 'credit', 163, 'Staff Benifit', '2016-02-14 13:10:53', '2016-02-14 13:10:53', 1);

-- --------------------------------------------------------

--
-- Table structure for table `crm_accounting_trancategories_history`
--

CREATE TABLE IF NOT EXISTS `crm_accounting_trancategories_history` (
`id` int(11) NOT NULL,
  `client_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `category-selection` varchar(55) NOT NULL,
  `transaction` varchar(255) NOT NULL,
  `parent_id` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `dateadded` datetime NOT NULL,
  `dateupdated` datetime NOT NULL,
  `is_active` tinyint(4) NOT NULL DEFAULT '1',
  `activitytime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `action` varchar(255) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `crm_accounting_trancategories_history`
--

INSERT INTO `crm_accounting_trancategories_history` (`id`, `client_id`, `user_id`, `category-selection`, `transaction`, `parent_id`, `title`, `dateadded`, `dateupdated`, `is_active`, `activitytime`, `action`) VALUES
(1, 1000000, 1, 'category', 'credit', 0, 'Commission', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, '2016-02-14 12:07:19', 'insert'),
(2, 1000000, 1, 'sub-category', 'credit', 163, 'Staff Benifit', '2016-02-14 13:10:53', '2016-02-14 13:10:53', 1, '2016-02-14 12:10:53', 'insert');

-- --------------------------------------------------------

--
-- Table structure for table `crm_agents_pics`
--

CREATE TABLE IF NOT EXISTS `crm_agents_pics` (
`id` bigint(20) NOT NULL,
  `rand_key` varchar(44) NOT NULL,
  `title` text NOT NULL,
  `agent_id` int(11) NOT NULL,
  `created_date` date NOT NULL,
  `activitytime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `is_active` int(2) NOT NULL DEFAULT '1',
  `image` varchar(555) NOT NULL,
  `thumb` varchar(555) NOT NULL,
  `watermark_image` varchar(555) NOT NULL,
  `is_watermarked` int(2) NOT NULL DEFAULT '1',
  `position` int(11) NOT NULL,
  `created_by` int(11) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `crm_category`
--

CREATE TABLE IF NOT EXISTS `crm_category` (
`id` int(11) NOT NULL,
  `category` varchar(55) NOT NULL
) ENGINE=MyISAM AUTO_INCREMENT=20 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `crm_category`
--

INSERT INTO `crm_category` (`id`, `category`) VALUES
(1, 'Apartment'),
(2, 'Villa'),
(3, 'Office'),
(4, 'Retail'),
(5, 'Hotel apartment'),
(6, 'Warehouse'),
(7, 'Land Commercial'),
(8, 'Labour camp'),
(9, 'Residential Build'),
(10, 'Multiple Sale Units'),
(11, 'Land Residential'),
(12, 'Commercial Full Building'),
(13, 'Penthouse'),
(14, 'Duplex'),
(15, 'Loft apartment'),
(16, 'Townhouse'),
(17, 'Hotel'),
(18, 'Land Mixed Use'),
(19, 'Plot');

-- --------------------------------------------------------

--
-- Table structure for table `crm_city`
--

CREATE TABLE IF NOT EXISTS `crm_city` (
`id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `crm_city`
--

INSERT INTO `crm_city` (`id`, `name`) VALUES
(1, 'Dubai'),
(2, 'Abu Dhabi'),
(3, 'Sharjah'),
(4, 'Ajman'),
(5, 'Umm Al Quwain'),
(6, 'Ras Al Khaimah'),
(7, 'Fujairah');

-- --------------------------------------------------------

--
-- Table structure for table `crm_columns`
--

CREATE TABLE IF NOT EXISTS `crm_columns` (
`id` int(11) NOT NULL,
  `columns` varchar(3000) NOT NULL,
  `created_by` int(11) NOT NULL,
  `dateadded` date NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `crm_columns`
--

INSERT INTO `crm_columns` (`id`, `columns`, `created_by`, `dateadded`) VALUES
(1, '33,18,23,38,21,27,39,31,35,25,28,34', 1, '2015-12-15');

-- --------------------------------------------------------

--
-- Table structure for table `crm_contacts_documents`
--

CREATE TABLE IF NOT EXISTS `crm_contacts_documents` (
`id` int(11) NOT NULL,
  `document_name` varchar(255) NOT NULL,
  `title` varchar(255) DEFAULT NULL,
  `listing_id` int(11) NOT NULL,
  `rand_key` varchar(255) NOT NULL,
  `created_by` int(11) NOT NULL,
  `client_id` int(11) NOT NULL,
  `dateadded` date NOT NULL,
  `activitytime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `is_active` int(3) NOT NULL DEFAULT '1'
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `crm_contacts_documents`
--

INSERT INTO `crm_contacts_documents` (`id`, `document_name`, `title`, `listing_id`, `rand_key`, `created_by`, `client_id`, `dateadded`, `activitytime`, `is_active`) VALUES
(1, '1454144999786928020160202133604dbc8d1637607bca25d8dc0f1caf861a6.jpg', 'documentSale', 1, '14541449997869280', 1, 1743, '2016-02-02', '2016-02-02 12:36:04', 1),
(2, '1454144999786928020160202133743818a882d121a3b97d92ce1b99358a32a.jpg', 'Document Name', 1, '14541449997869280', 1, 1743, '2016-02-02', '2016-02-02 12:37:43', 1),
(3, '1454144999786928020160202133842e4122e7330f4f8938a849541482db0c6.jpg', 'documentSale', 1, '14541449997869280', 1, 1743, '2016-02-02', '2016-02-02 12:38:42', 1),
(4, '1454144999786928020160202133850630034d6b8731401d60aecbead89f3d6.jpg', 'documentSale', 1, '14541449997869280', 1, 1743, '2016-02-02', '2016-02-02 12:38:50', 1),
(5, '1454144999786928020160202133950765eb4b11e0af5eaceded7ab166d1d0d.jpg', 'documentSale', 1, '14541449997869280', 1, 1743, '2016-02-02', '2016-02-02 12:39:50', 1),
(6, '1454144999786928020160202134041242d4ab4432cb2e84d7475e70dbdfa5d.jpg', 'documentSale2', 1, '14541449997869280', 1, 1743, '2016-02-02', '2016-02-02 12:40:41', 1);

-- --------------------------------------------------------

--
-- Table structure for table `crm_contacts_notes`
--

CREATE TABLE IF NOT EXISTS `crm_contacts_notes` (
`id` int(11) NOT NULL,
  `created_by` int(11) NOT NULL,
  `notes` longtext NOT NULL,
  `created_date` datetime NOT NULL,
  `activitytime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `listing_id` int(11) NOT NULL,
  `rand_key` varchar(99) NOT NULL
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `crm_contacts_notes`
--

INSERT INTO `crm_contacts_notes` (`id`, `created_by`, `notes`, `created_date`, `activitytime`, `listing_id`, `rand_key`) VALUES
(1, 1, 'there is my first notes', '2016-02-02 12:38:14', '2016-02-02 11:38:14', 1, '');

-- --------------------------------------------------------

--
-- Table structure for table `crm_deals`
--

CREATE TABLE IF NOT EXISTS `crm_deals` (
`id` int(11) NOT NULL,
  `rand_key` varchar(33) NOT NULL,
  `client_id` int(11) DEFAULT NULL,
  `ref` varchar(33) NOT NULL,
  `type` int(5) NOT NULL COMMENT '1=rent,2=sale,3= not specified',
  `tenant_buyer_id` int(11) NOT NULL,
  `tenant_buyer_name` varchar(255) NOT NULL,
  `landlord_seller_id` int(11) NOT NULL,
  `landlord_seller_name` varchar(255) NOT NULL,
  `status` int(11) NOT NULL,
  `sub_status` int(11) NOT NULL,
  `agent_id` int(11) NOT NULL,
  `price` decimal(10,0) NOT NULL,
  `deposit` decimal(10,0) NOT NULL,
  `commission` decimal(10,0) NOT NULL,
  `cheques` varchar(255) DEFAULT NULL,
  `deal_date` date NOT NULL,
  `deal_estimated_date` date NOT NULL,
  `listings_id` int(11) NOT NULL,
  `listings_ref` varchar(255) NOT NULL,
  `listings_randkey` varchar(255) NOT NULL,
  `listings_unit` varchar(55) NOT NULL,
  `agent_1_id` int(11) DEFAULT NULL,
  `agent_1_commission_percentage` decimal(10,0) DEFAULT NULL,
  `agent_1_commission` decimal(10,0) DEFAULT NULL,
  `agent_2_id` int(11) DEFAULT NULL,
  `agent_2_commission_percentage` decimal(10,0) DEFAULT NULL,
  `agent_2_commission` decimal(10,0) DEFAULT NULL,
  `agent_3_id` int(11) DEFAULT NULL,
  `agent_3_commission_percentage` decimal(10,0) DEFAULT NULL,
  `agent_3_commission` decimal(10,0) DEFAULT NULL,
  `listings_beds` varchar(55) DEFAULT NULL,
  `listings_unit_type` varchar(55) DEFAULT NULL,
  `listings_street_no` varchar(55) DEFAULT NULL,
  `listings_floor_no` varchar(55) DEFAULT NULL,
  `renewal_date` date DEFAULT NULL,
  `remind_before` varchar(55) DEFAULT NULL,
  `listings_category_id` int(11) DEFAULT NULL,
  `region_id` int(11) DEFAULT NULL,
  `area_location_id` int(11) DEFAULT NULL,
  `sub_area_location_id` int(11) DEFAULT NULL,
  `notes` text,
  `add_info` varchar(255) DEFAULT NULL,
  `created_by` int(11) NOT NULL,
  `created_by_name` varchar(255) DEFAULT NULL,
  `dateadded` datetime NOT NULL,
  `dateupdated` datetime NOT NULL,
  `activitytime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `is_active` int(3) NOT NULL DEFAULT '1',
  `leads_id` int(11) NOT NULL,
  `leads_ref` varchar(255) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `crm_deals`
--

INSERT INTO `crm_deals` (`id`, `rand_key`, `client_id`, `ref`, `type`, `tenant_buyer_id`, `tenant_buyer_name`, `landlord_seller_id`, `landlord_seller_name`, `status`, `sub_status`, `agent_id`, `price`, `deposit`, `commission`, `cheques`, `deal_date`, `deal_estimated_date`, `listings_id`, `listings_ref`, `listings_randkey`, `listings_unit`, `agent_1_id`, `agent_1_commission_percentage`, `agent_1_commission`, `agent_2_id`, `agent_2_commission_percentage`, `agent_2_commission`, `agent_3_id`, `agent_3_commission_percentage`, `agent_3_commission`, `listings_beds`, `listings_unit_type`, `listings_street_no`, `listings_floor_no`, `renewal_date`, `remind_before`, `listings_category_id`, `region_id`, `area_location_id`, `sub_area_location_id`, `notes`, `add_info`, `created_by`, `created_by_name`, `dateadded`, `dateupdated`, `activitytime`, `is_active`, `leads_id`, `leads_ref`) VALUES
(1, '14525948223416757', 1743, 'GIS-D-1', 1, 1, 'Muhammad Shafiq', 48, '0', 1, 1, 1, '100000', '1000', '500', NULL, '2016-03-02', '0000-00-00', 1, 'GIS-R-0001', '2147483647', '1602', 1, '20', '100', 16, '30', '150', 65, '40', '200', '1', 'unittype', '2', '3', '0000-00-00', '7', 2, 1, NULL, NULL, 'This is notes', '', 1, NULL, '2015-12-30 00:00:00', '2015-12-30 00:00:00', '2016-03-21 06:47:12', 1, 0, ''),
(2, '14525948228916757', 1743, 'GIS-D-2', 1, 1, 'Muhammad Shafiq', 48, 'Nina manerba', 2, 2, 1, '1500000', '2000', '2000', NULL, '2016-03-01', '0000-00-00', 2, 'GIS-S-0002', '2147483647', 'jh', 1, '2', '40', 16, '3', '60', 65, '4', '80', '2', 'kh', '2', '3', '0000-00-00', '0', 1, 1, NULL, NULL, 'This is notes', '', 1, NULL, '2016-01-12 00:00:00', '2016-01-12 00:00:00', '2016-03-21 06:47:19', 1, 0, ''),
(3, '14532749087875514', 1743, 'GIS-D-3', 1, 1, 'Muhammad Shafiq', 48, 'Nina manerba', 2, 2, 1, '1500000', '1000', '500', NULL, '2016-03-20', '2016-03-13', 3, 'GIS-S-0003', '14503546605874820', '65fg', 16, '2', '10', 65, '1', '5', 1, '4', '20', '1', 'unittype', '2', '3', '0000-00-00', '1', 1, 1, 8238, NULL, 'there is my first notes', '', 1, 'admin', '2016-01-20 00:00:00', '2016-01-20 00:00:00', '2016-03-21 06:47:36', 1, 0, ''),
(4, '14543092611326858', 1743, 'GIS-D-4', 1, 2, 'Abdul Ali', 0, '', 1, 1, 84, '25000', '200', '1000', '2', '2016-03-09', '2016-04-15', 6, 'GIS-R-6', '14538733356211019', '1604', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2', 'utype', '2', '30', NULL, NULL, 1, 1, 15, 0, 'there is my first notes', NULL, 1, 'admin', '2016-02-01 00:00:00', '2016-02-01 00:00:00', '2016-03-21 06:47:43', 1, 0, 'GIS-L-3');

-- --------------------------------------------------------

--
-- Table structure for table `crm_events`
--

CREATE TABLE IF NOT EXISTS `crm_events` (
`id` int(11) NOT NULL,
  `title` varchar(555) NOT NULL,
  `start_date` datetime NOT NULL,
  `end_date` datetime NOT NULL,
  `description` varchar(555) NOT NULL,
  `event_type` varchar(255) NOT NULL,
  `listing_id` int(11) DEFAULT NULL,
  `listing_ref` varchar(255) DEFAULT NULL,
  `cal_id` int(11) DEFAULT NULL,
  `created_by` int(11) NOT NULL,
  `dateadded` datetime NOT NULL,
  `location` varchar(255) DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `crm_events`
--

INSERT INTO `crm_events` (`id`, `title`, `start_date`, `end_date`, `description`, `event_type`, `listing_id`, `listing_ref`, `cal_id`, `created_by`, `dateadded`, `location`) VALUES
(1, 'This is rough title', '2015-11-25 04:24:11', '2015-11-27 06:24:22', 'this is description for it', 'Meeting', 6, NULL, NULL, 0, '0000-00-00 00:00:00', NULL),
(2, 'test 2', '2015-11-26 03:00:00', '2015-11-28 04:00:00', 'test2 description', 'Viewing', NULL, NULL, NULL, 0, '0000-00-00 00:00:00', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `crm_features`
--

CREATE TABLE IF NOT EXISTS `crm_features` (
  `id` int(33) NOT NULL,
  `title` varchar(555) NOT NULL,
  `is_active` int(2) NOT NULL DEFAULT '1',
  `is_feature` int(2) NOT NULL DEFAULT '1'
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `crm_features`
--

INSERT INTO `crm_features` (`id`, `title`, `is_active`, `is_feature`) VALUES
(11, 'Balcony', 1, 1),
(12, 'Basement parking', 1, 1),
(13, 'BBQ area', 1, 1),
(35, 'Built in wardrobes', 1, 1),
(36, 'Central air conditioning', 1, 1),
(38, 'Carpets', 1, 1),
(39, 'Fully fitted kitchen', 1, 1),
(3, 'Covered parking', 1, 1),
(15, 'Fully furnished', 1, 1),
(40, 'Gazebo and outdoor entertaining area', 1, 1),
(16, 'Gymnasium', 1, 1),
(17, 'Jacuzzi', 1, 1),
(18, 'Kitchen white goods', 1, 1),
(45, 'Marble floors', 1, 1),
(23, 'On high floor', 1, 1),
(24, 'On low floor', 1, 1),
(25, 'Part furnished', 1, 1),
(37, 'Pets allowed', 1, 1),
(26, 'Private garage', 1, 1),
(27, 'Private garden', 1, 1),
(2, 'Private swimming pool', 1, 1),
(41, 'Professionally landscaped garden', 1, 1),
(28, 'Sauna', 1, 1),
(42, 'Shared swimming pool', 1, 1),
(43, 'Solid wood floors', 1, 1),
(29, 'Steam room', 1, 1),
(34, 'Study', 1, 1),
(44, 'Upgraded interior', 1, 1),
(32, 'View of gardens', 1, 1),
(31, 'View of sea/water', 1, 1),
(14, 'Communal gardens', 1, 1),
(48, 'Golf club and clubhous', 1, 1),
(19, 'Metro station', 1, 1),
(49, 'Mosque', 1, 1),
(50, 'Polo club and clubhous', 1, 1),
(21, 'Public park', 1, 1),
(5, 'Public parking', 1, 1),
(51, 'Public transport', 1, 1),
(52, 'Restaurants', 1, 1),
(10, 'Shopping mall', 1, 1),
(20, 'Shops', 1, 1),
(53, 'Squash courts', 1, 1),
(54, 'Tennis courts', 1, 1),
(33, 'Maids Room', 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `crm_groups`
--

CREATE TABLE IF NOT EXISTS `crm_groups` (
`id` int(11) NOT NULL,
  `client_id` int(11) NOT NULL,
  `name` varchar(22) NOT NULL,
  `description` mediumtext NOT NULL,
  `created_date` datetime NOT NULL,
  `dateupdated` datetime NOT NULL,
  `created_by` int(11) NOT NULL,
  `emirates_allowed` varchar(99) NOT NULL,
  `locations_allowed` varchar(99) NOT NULL,
  `user_ids` varchar(99) NOT NULL,
  `listings_allowed` varchar(11) DEFAULT NULL,
  `listings_sharing` varchar(11) NOT NULL,
  `user_count` int(9) NOT NULL,
  `is_active` bit(1) NOT NULL DEFAULT b'1'
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `crm_groups`
--

INSERT INTO `crm_groups` (`id`, `client_id`, `name`, `description`, `created_date`, `dateupdated`, `created_by`, `emirates_allowed`, `locations_allowed`, `user_ids`, `listings_allowed`, `listings_sharing`, `user_count`, `is_active`) VALUES
(1, 0, 'Agents', 'Test agents', '2013-03-29 00:00:00', '0000-00-00 00:00:00', 0, '1', '017,082', '2,9', '1,2', '1', 0, b'1'),
(2, 0, 'JBR', 'This is JBR agents', '2014-11-18 00:00:00', '0000-00-00 00:00:00', 1, '1', '019', '1,2', '', '', 3, b'1'),
(3, 0, 'Al bateen', 'Al bateen group', '2016-02-08 07:41:31', '0000-00-00 00:00:00', 1, '1', '08238,06032', '1', '1', '0', 0, b'1');

-- --------------------------------------------------------

--
-- Table structure for table `crm_leads`
--

CREATE TABLE IF NOT EXISTS `crm_leads` (
`id` bigint(20) NOT NULL,
  `rand_key` varchar(33) NOT NULL,
  `client_id` int(11) NOT NULL,
  `ref` varchar(22) NOT NULL,
  `auto` int(11) NOT NULL DEFAULT '0',
  `landlord_id` int(11) NOT NULL,
  `landlord_name` varchar(99) NOT NULL,
  `landlord_mobile` varchar(99) NOT NULL,
  `landlord_email` varchar(99) NOT NULL,
  `assigned_by_name` varchar(99) NOT NULL,
  `agent_id` varchar(22) NOT NULL,
  `date_of_enquiry` date NOT NULL,
  `type` int(11) NOT NULL COMMENT 'Tenant=1,Buyer=2,Landlord=3,Seller=4,Landlord+Seller=5,Not Specified=6',
  `status` varchar(11) NOT NULL,
  `sub_status` varchar(11) DEFAULT NULL,
  `source_of_lead` varchar(22) NOT NULL,
  `home_no` varchar(22) DEFAULT NULL,
  `notes` text,
  `first_name` varchar(255) DEFAULT NULL,
  `last_name` varchar(255) DEFAULT NULL,
  `listing_id_1` varchar(22) NOT NULL,
  `listing_id_1_ref` varchar(22) NOT NULL,
  `listing_id_2` varchar(22) NOT NULL,
  `listing_id_2_ref` varchar(22) NOT NULL,
  `listing_id_3` varchar(22) NOT NULL,
  `listing_id_3_ref` varchar(22) NOT NULL,
  `listing_id_4` varchar(22) NOT NULL,
  `listing_id_4_ref` varchar(22) NOT NULL,
  `agent_id_2` int(11) NOT NULL,
  `agent_id_3` int(11) NOT NULL,
  `agent_id_4` int(11) NOT NULL,
  `agent_id_5` int(11) NOT NULL,
  `property_req_1` longtext NOT NULL,
  `property_req_2` longtext NOT NULL,
  `property_req_3` longtext NOT NULL,
  `property_req_4` text NOT NULL,
  `property_req_1_data` longtext NOT NULL,
  `property_req_2_data` longtext NOT NULL,
  `property_req_3_data` longtext NOT NULL,
  `property_req_4_data` longtext NOT NULL,
  `created_by` int(11) NOT NULL,
  `dateadded` date NOT NULL,
  `dateupdated` date NOT NULL,
  `is_active` int(2) NOT NULL DEFAULT '1',
  `activitytime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `financial_situation` varchar(255) NOT NULL,
  `subsource_of_lead` int(11) DEFAULT NULL,
  `lead_priority` varchar(255) NOT NULL,
  `hot_lead` int(11) NOT NULL,
  `lead_by_agent` varchar(55) NOT NULL,
  `shared` varchar(25) NOT NULL,
  `leads_reminder_one` datetime NOT NULL,
  `leads_reminder_two` datetime NOT NULL
) ENGINE=MyISAM AUTO_INCREMENT=7 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `crm_leads`
--

INSERT INTO `crm_leads` (`id`, `rand_key`, `client_id`, `ref`, `auto`, `landlord_id`, `landlord_name`, `landlord_mobile`, `landlord_email`, `assigned_by_name`, `agent_id`, `date_of_enquiry`, `type`, `status`, `sub_status`, `source_of_lead`, `home_no`, `notes`, `first_name`, `last_name`, `listing_id_1`, `listing_id_1_ref`, `listing_id_2`, `listing_id_2_ref`, `listing_id_3`, `listing_id_3_ref`, `listing_id_4`, `listing_id_4_ref`, `agent_id_2`, `agent_id_3`, `agent_id_4`, `agent_id_5`, `property_req_1`, `property_req_2`, `property_req_3`, `property_req_4`, `property_req_1_data`, `property_req_2_data`, `property_req_3_data`, `property_req_4_data`, `created_by`, `dateadded`, `dateupdated`, `is_active`, `activitytime`, `financial_situation`, `subsource_of_lead`, `lead_priority`, `hot_lead`, `lead_by_agent`, `shared`, `leads_reminder_one`, `leads_reminder_two`) VALUES
(1, '14524953853090514', 1743, 'GIS-L-1', 0, 1, 'Muhammad Shafiq', '971 552493494', 'muhammad.royalhome@gmail.com', '', '1', '0000-00-00', 1, '2', '2', '7 days', NULL, NULL, NULL, NULL, '', '', '', '', '', '', '', '', 0, 0, 0, 0, '{"lead_req_id":"","lead_id":"0","category_id":"1","region_id":"1","area_location_id":"7420","area_location_id":"7420","sub_area_location_id":"9446","min_beds":"2","max_beds":"5","min_budget":"33445","max_budget":"345345","min_area":"122","max_area":"435","unit_type":"1","unit_no":"434","listing_id_1_ref":"","listing_id_1":""}', '', '', '', 'Tenant, Apartment, 2-5 beds, Type: 1, Unit: 434, Akoya Oxygen, Akoya Oxygen, Dubai, Price: 33445 - 345345', '', '', '', 1, '2016-01-11', '2016-01-11', 1, '2016-01-11 06:56:25', '', NULL, 'high', 1, '1', 'no', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(2, '1453538894880170', 1743, 'GIS-L-2', 0, 2, 'Abdul Ali', '971 552493424', 'muhammad.royalhome@gmail.com', 'Admin S', '1', '2023-01-20', 2, '1', '4', '7 days', NULL, NULL, NULL, NULL, '', '', '', '', '', '', '', '', 16, 18, 60, 0, '{"lead_req_id":"","lead_id":"0","category_id":"1","region_id":"1","area_location_id":"8845","area_location_id":"8845","sub_area_location_id":"8848","min_beds":"1","max_beds":"3","min_budget":"33445","max_budget":"455432","min_area":"344334","max_area":"435354","unit_type":"unittype","unit_no":"23","listing_id_1_ref":"","listing_id_1":""}', '', '', '', 'Buyer, Apartment, 1-3 beds, Type: unittype, Unit: 23, Bahia Residence, Acacia Avenues, Dubai, Price: 33445 - 455432', '', '', '', 1, '2016-01-23', '2016-01-23', 1, '2016-01-23 08:57:13', 'Cash', NULL, 'high', 1, '1', 'no', '2016-01-20 00:00:00', '2016-01-20 00:00:00'),
(3, '1453538894880170', 1743, 'GIS-L-3', 0, 2, 'Abdul Ali', '971 552493424', 'muhammad.royalhome@gmail.com', 'Admin S', '1', '2023-01-20', 2, '1', '4', '7 days', NULL, NULL, NULL, NULL, '', '', '', '', '', '', '', '', 16, 18, 60, 0, '{"lead_req_id":"","lead_id":"0","category_id":"1","region_id":"1","area_location_id":"8845","area_location_id":"8845","sub_area_location_id":"8848","min_beds":"1","max_beds":"3","min_budget":"33445","max_budget":"455432","min_area":"344334","max_area":"435354","unit_type":"unittype","unit_no":"23","listing_id_1_ref":"","listing_id_1":""}', '', '', '', 'Buyer, Apartment, 1-3 beds, Type: unittype, Unit: 23, Bahia Residence, Acacia Avenues, Dubai, Price: 33445 - 455432', '', '', '', 1, '2016-01-23', '2016-01-23', 1, '2016-01-23 08:57:28', 'Cash', NULL, 'high', 1, '1', 'no', '2016-01-20 00:00:00', '2016-01-20 00:00:00'),
(4, '14536276935546584', 1743, 'GIS-L-4', 0, 2, 'Abdul Ali', '971 552493424', 'muhammad.royalhome@gmail.com', 'Admin S', '1', '2025-01-20', 1, '1', '5', 'Abu Dhabi week', NULL, NULL, 'Abdul', 'Ali', '', '', '3', 'GIS-S-0003', '', '', '', '', 16, 65, 18, 19, '{"lead_req_id":"","lead_id":"0","category_id":"2","region_id":"1","area_location_id":"8845","area_location_id":"8845","sub_area_location_id":"8869","min_beds":"1","max_beds":"2","min_budget":"100","max_budget":"1000","min_area":"122","max_area":"150","unit_type":"unittype","unit_no":"123","listing_id_1_ref":"","listing_id_1":""}', '{"lead_req_id":"","lead_id":"0","category_id":"1","region_id":"1","area_location_id":"6032","area_location_id":"6032","sub_area_location_id":"6630","min_beds":"null","max_beds":"0","min_budget":"323232.00","max_budget":"0","min_area":"","max_area":"0","unit_type":"","unit_no":"123","listing_id_2_ref":"GIS-S-0003","listing_id_2":"3"}', '', '', 'Tenant, Villa, 1-2 beds, Type: unittype, Unit: 123, Cloud 9, Acacia Avenues, Dubai, Price: 100 - 1000', 'Tenant, Apartment, Unit: 123, Jasmine B, Akoya, Dubai, Min price: 323232.00', '', '', 1, '2016-01-24', '2016-01-24', 1, '2016-01-24 09:31:02', '', NULL, 'low', 1, '1', '1', '2016-01-25 00:00:00', '2016-01-25 00:00:00'),
(5, '14541449997869280', 1743, 'GIS-L-5', 0, 4, 'Maria Shafiq', '971 55024932344', 'muhammad.royalhome@gmail.com', 'admin', '29', '2016-01-30', 1, '2', NULL, 'Bayut.com', '049326954959', 'This is notes', 'Maria', 'Shafiq', '6', 'GIS-R-6', '', '', '', '', '', '', 0, 0, 0, 0, '{"lead_req_id":"undefined","lead_id":"6","category_id":"1","region_id":"1","area_location_id":"15","area_location_id":"15","sub_area_location_id":"0","min_beds":"2","max_beds":"undefined","min_budget":"4500000.00","max_budget":"undefined","min_area":"460","max_area":"undefined","unit_type":"utype","unit_no":"1604","listing_id_1_ref":"undefined","listing_id_1":"undefined"}', '', '', '', ' Apartment, Min 2 bed(s), Type: utype, Unit: 1604, Dubai Marina, Dubai', '', '', '', 1, '2016-01-30', '2016-01-30', 1, '2016-01-30 09:09:59', '', NULL, '', 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(6, '14541450928930425', 1743, 'GIS-L-6', 0, 5, 'Maria Shafiq', '971 55024932344', 'muhammad.royalhome@gmail.com', 'admin', '29', '2016-01-30', 1, '2', NULL, 'Bayut.com', '049326954959', 'This is notes', 'Maria', 'Shafiq', '6', 'GIS-R-6', '', '', '', '', '', '', 0, 0, 0, 0, '{"lead_req_id":"undefined","lead_id":"6","category_id":"1","region_id":"1","area_location_id":"15","area_location_id":"15","sub_area_location_id":"0","min_beds":"2","max_beds":"undefined","min_budget":"4500000.00","max_budget":"undefined","min_area":"460","max_area":"undefined","unit_type":"utype","unit_no":"1604","listing_id_1_ref":"undefined","listing_id_1":"undefined"}', '', '', '', ' Apartment, Min 2 bed(s), Type: utype, Unit: 1604, Dubai Marina, Dubai', '', '', '', 1, '2016-01-30', '2016-01-30', 1, '2016-01-30 09:11:32', '', NULL, '', 0, '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `crm_leads_details`
--

CREATE TABLE IF NOT EXISTS `crm_leads_details` (
`id` bigint(20) NOT NULL,
  `lead_req_id` int(11) NOT NULL,
  `lead_id` int(11) NOT NULL,
  `category_id` int(11) NOT NULL,
  `region_id` int(11) NOT NULL,
  `area_location_id` int(11) NOT NULL,
  `sub_area_location_id` int(11) NOT NULL,
  `min_beds` int(11) NOT NULL,
  `max_beds` int(11) NOT NULL,
  `min_budget` decimal(10,0) NOT NULL,
  `max_budget` decimal(10,0) NOT NULL,
  `min_area` varchar(22) NOT NULL,
  `max_area` varchar(22) NOT NULL,
  `unit_type` varchar(22) NOT NULL,
  `unit_no` varchar(222) NOT NULL,
  `is_active` int(11) NOT NULL DEFAULT '1',
  `type` int(11) NOT NULL COMMENT 'Tenant=1,Buyer=2,Landlord=3,Seller=4,Landlord+Seller=5,Not Specified=6'
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `crm_leads_details`
--

INSERT INTO `crm_leads_details` (`id`, `lead_req_id`, `lead_id`, `category_id`, `region_id`, `area_location_id`, `sub_area_location_id`, `min_beds`, `max_beds`, `min_budget`, `max_budget`, `min_area`, `max_area`, `unit_type`, `unit_no`, `is_active`, `type`) VALUES
(1, 0, 4, 2, 1, 8845, 8869, 1, 2, '100', '1000', '122', '150', 'unittype', '123', 1, 1),
(2, 0, 4, 1, 1, 6032, 6630, 0, 0, '323232', '0', '', '0', '', '123', 1, 1),
(3, 0, 6, 1, 1, 15, 0, 2, 0, '4500000', '0', '460', '', '', '1604', 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `crm_leads_notes`
--

CREATE TABLE IF NOT EXISTS `crm_leads_notes` (
`id` int(11) NOT NULL,
  `created_by` int(11) NOT NULL,
  `notes` longtext NOT NULL,
  `created_date` datetime NOT NULL,
  `activitytime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `lead_id` int(11) NOT NULL,
  `rand_key` varchar(99) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `crm_listings`
--

CREATE TABLE IF NOT EXISTS `crm_listings` (
`id` bigint(20) unsigned NOT NULL,
  `client_id` int(11) NOT NULL,
  `rand_key` varchar(255) NOT NULL,
  `type` int(3) NOT NULL DEFAULT '1' COMMENT '1=rent,2=sale',
  `ref` varchar(55) NOT NULL,
  `name` mediumtext NOT NULL,
  `description_demo` longtext NOT NULL,
  `description_count` int(11) NOT NULL,
  `beds` varchar(22) NOT NULL,
  `fitted` varchar(11) NOT NULL,
  `baths` int(11) NOT NULL DEFAULT '1',
  `unit` varchar(55) NOT NULL,
  `unit_type` varchar(22) NOT NULL,
  `size` int(11) NOT NULL,
  `plot_size` varchar(33) NOT NULL,
  `street_no` varchar(22) NOT NULL,
  `floor_no` varchar(22) NOT NULL,
  `parking` int(11) NOT NULL DEFAULT '0',
  `price` decimal(18,2) NOT NULL,
  `deposit` decimal(18,2) NOT NULL,
  `deposit_percentage` decimal(18,2) NOT NULL,
  `cheques` int(11) NOT NULL,
  `commission_percentage` decimal(18,2) NOT NULL,
  `commission` decimal(18,2) NOT NULL,
  `unit_size_price` varchar(555) NOT NULL,
  `frequency` varchar(22) DEFAULT NULL,
  `dateadded` datetime NOT NULL,
  `dateupdated` datetime NOT NULL,
  `category_id` int(11) NOT NULL,
  `region_id` int(11) NOT NULL,
  `area_location_id` int(11) NOT NULL,
  `sub_area_location_id` int(11) NOT NULL,
  `view_id` varchar(255) NOT NULL,
  `prop_furnish` int(6) NOT NULL,
  `landlord_id` int(11) NOT NULL,
  `landlord_name` varchar(255) NOT NULL,
  `photos` int(11) NOT NULL,
  `portals_count` int(11) NOT NULL,
  `portals_name` text NOT NULL,
  `othermedia_count` int(11) NOT NULL,
  `features_count` int(11) NOT NULL,
  `features_id` varchar(1024) NOT NULL,
  `area_iformation_data` text,
  `leads` varchar(55) NOT NULL,
  `viewings_count` int(11) NOT NULL,
  `add_info` varchar(255) NOT NULL,
  `agent_id` int(11) NOT NULL,
  `status` tinyint(4) NOT NULL,
  `managed` varchar(55) DEFAULT NULL,
  `exclusive` varchar(55) DEFAULT NULL,
  `shared` varchar(44) DEFAULT NULL,
  `created_by` int(11) NOT NULL,
  `updated_by` int(11) NOT NULL DEFAULT '0',
  `is_active` int(5) NOT NULL DEFAULT '1',
  `activitytime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `is_archive` int(5) NOT NULL DEFAULT '0',
  `lat` varchar(55) DEFAULT NULL,
  `lon` varchar(55) DEFAULT NULL,
  `loc_description` mediumtext NOT NULL,
  `cmp_description` varchar(999) NOT NULL,
  `other_languages` int(11) DEFAULT NULL,
  `other_title_1` varchar(999) DEFAULT NULL,
  `other_description_1` text,
  `other_title_2` varchar(999) DEFAULT NULL,
  `other_description_2` text,
  `featured` int(11) DEFAULT NULL,
  `refreshed` int(9) DEFAULT NULL,
  `description_id` int(11) DEFAULT NULL,
  `video_embed_code` varchar(255) DEFAULT NULL,
  `360_embed_code` varchar(255) DEFAULT NULL,
  `audio_embed_code` varchar(255) DEFAULT NULL,
  `virtual_tour_embed_code` varchar(255) DEFAULT NULL,
  `qr_code_link` varchar(255) NOT NULL,
  `pdf_brochure` varchar(255) DEFAULT NULL,
  `video_path` varchar(255) DEFAULT NULL,
  `video_path_upload` varchar(255) DEFAULT NULL,
  `price_1` decimal(18,2) DEFAULT NULL,
  `cheques_1` int(11) DEFAULT NULL,
  `price_2` decimal(18,2) DEFAULT NULL,
  `cheques_2` int(11) DEFAULT NULL,
  `price_3` decimal(18,2) DEFAULT NULL,
  `cheques_3` int(11) DEFAULT NULL,
  `price_4` decimal(18,2) DEFAULT NULL,
  `cheques_4` int(11) DEFAULT NULL,
  `prop_status` int(11) DEFAULT NULL,
  `agent_rent_sold` int(11) DEFAULT NULL,
  `source_of_listing` int(11) DEFAULT NULL,
  `flcheck` int(11) DEFAULT NULL,
  `dewa_no` varchar(255) DEFAULT NULL,
  `strno` varchar(255) DEFAULT NULL,
  `available_date` datetime DEFAULT NULL,
  `remind_me` int(11) DEFAULT NULL,
  `key_location` varchar(255) DEFAULT NULL,
  `tenanted` int(11) DEFAULT NULL,
  `amount` decimal(18,2) DEFAULT NULL,
  `amount_date` datetime DEFAULT NULL,
  `maintenance` varchar(255) DEFAULT NULL,
  `unit_size_price_2` decimal(18,2) DEFAULT NULL,
  `notes` varchar(999) DEFAULT NULL,
  `leads_notes` varchar(999) DEFAULT NULL,
  `document_name` varchar(999) DEFAULT NULL,
  `terminal` int(3) DEFAULT NULL,
  `furnished` int(3) DEFAULT NULL,
  `development_unit_id` int(11) DEFAULT NULL,
  `price_of_application` int(5) DEFAULT NULL COMMENT 'Tick this box if you would like the price for the property to be hidden. If ticked, Price on application will display on the PDF brochures and the HTML preview for this property and a zero value will be sent in the XML  feeds to the portals',
  `is_international` tinyint(4) DEFAULT '0',
  `overall_score` decimal(5,2) NOT NULL DEFAULT '0.00',
  `media_score` decimal(5,2) NOT NULL DEFAULT '0.00',
  `address_score` decimal(5,2) NOT NULL DEFAULT '0.00',
  `description_score` decimal(5,2) NOT NULL DEFAULT '0.00',
  `price_score` decimal(5,2) NOT NULL DEFAULT '0.00',
  `beds_baths_score` decimal(5,2) NOT NULL DEFAULT '0.00',
  `facilities_score` decimal(5,2) NOT NULL DEFAULT '0.00',
  `price_diff` decimal(5,2) NOT NULL DEFAULT '0.00'
) ENGINE=MyISAM AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `crm_listings`
--

INSERT INTO `crm_listings` (`id`, `client_id`, `rand_key`, `type`, `ref`, `name`, `description_demo`, `description_count`, `beds`, `fitted`, `baths`, `unit`, `unit_type`, `size`, `plot_size`, `street_no`, `floor_no`, `parking`, `price`, `deposit`, `deposit_percentage`, `cheques`, `commission_percentage`, `commission`, `unit_size_price`, `frequency`, `dateadded`, `dateupdated`, `category_id`, `region_id`, `area_location_id`, `sub_area_location_id`, `view_id`, `prop_furnish`, `landlord_id`, `landlord_name`, `photos`, `portals_count`, `portals_name`, `othermedia_count`, `features_count`, `features_id`, `area_iformation_data`, `leads`, `viewings_count`, `add_info`, `agent_id`, `status`, `managed`, `exclusive`, `shared`, `created_by`, `updated_by`, `is_active`, `activitytime`, `is_archive`, `lat`, `lon`, `loc_description`, `cmp_description`, `other_languages`, `other_title_1`, `other_description_1`, `other_title_2`, `other_description_2`, `featured`, `refreshed`, `description_id`, `video_embed_code`, `360_embed_code`, `audio_embed_code`, `virtual_tour_embed_code`, `qr_code_link`, `pdf_brochure`, `video_path`, `video_path_upload`, `price_1`, `cheques_1`, `price_2`, `cheques_2`, `price_3`, `cheques_3`, `price_4`, `cheques_4`, `prop_status`, `agent_rent_sold`, `source_of_listing`, `flcheck`, `dewa_no`, `strno`, `available_date`, `remind_me`, `key_location`, `tenanted`, `amount`, `amount_date`, `maintenance`, `unit_size_price_2`, `notes`, `leads_notes`, `document_name`, `terminal`, `furnished`, `development_unit_id`, `price_of_application`, `is_international`, `overall_score`, `media_score`, `address_score`, `description_score`, `price_score`, `beds_baths_score`, `facilities_score`, `price_diff`) VALUES
(1, 1743, '14503468808582988', 1, 'GIS-R-0001', 'this is title here for listing rentals', 'this is desc\r\n\r\nsubloc test\r\n\r\nsubloc test\r\n\r\nCall Admin S 12576 on +971 552493494 / +97143990990 or visit www.royalhome.ae for further details\r\n\r\nCompany name: Royal Home Real Estate\r\n\r\nRERA ORN: 2533 \r\n\r\nAddress: Office 09, Al Fattan Towers, JBR, Dubai \r\n\r\nOffice phone no: +97143990990\r\n\r\nOffice fax no: +97143996993\r\n\r\nPrimary email: property@royalhome.ae\r\n\r\nWebsite: www.royalhome.ae\r\n\r\nCompany Profile: Royal Home Real Estate provides full service to each and every clientele. We offer comprehensive properties for sales, rentals and Property Management Services. Our team is highly adept property consultants who are experts in every aspect of the real estate and have proficient know-how in identifying client needs.We offer full range of services in residential and commercial property transactions.Please call our sales office at +97143990990 and speak to one of our experts.', 126, '1', '', 2, '1602', 'unittype', 3223, '550', '2', '3', 2, '10000000.00', '300000.00', '3.00', 2, '2.00', '200000.00', '3102.70', '4', '2016-02-17 10:30:56', '2016-03-01 08:03:13', 1, 1, 6032, 0, 'Sea view', 0, 48, 'Nina manerba', 1, 7, '{dubizzle}{JustRentals}{JustProperty}{propertyfinder}{bayut}{GNproperty}{Zoopla}', 1, 3, '{16}{17}{45}', '', '0', 0, 'Available', 1, 2, '1', '1', '1', 1, 1, 1, '2016-03-01 07:03:13', 0, NULL, NULL, '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'http://youtube.com', '', '', '', '', '', '', '', '10000000.00', 2, '0.00', 0, '0.00', 0, '0.00', 0, 1, NULL, 0, 0, '', '', '0000-00-00 00:00:00', 1, 'Marina', NULL, '2000.00', '0000-00-00 00:00:00', '200', '3102.70', '', '', 'Document Name', NULL, NULL, NULL, NULL, NULL, '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00'),
(2, 1743, '14503532927417064', 2, 'GIS-S-0002', 'hlhjlhljkh', 'kkl\r\n\r\nCall Admin S 12576 on +971 552493494 / +97143990990 or visit www.royalhome.ae for further details\r\n\r\nCompany name: Royal Home Real Estate\r\n\r\nRERA ORN: 2533 \r\n\r\nAddress: Office 09, Al Fattan Towers, JBR, Dubai \r\n\r\nOffice phone no: +97143990990\r\n\r\nOffice fax no: +97143996993\r\n\r\nPrimary email: property@royalhome.ae\r\n\r\nWebsite: www.royalhome.ae\r\n\r\nCompany Profile: Royal Home Real Estate provides full service to each and every clientele. We offer comprehensive properties for sales, rentals and Property Management Services. Our team is highly adept property consultants who are experts in every aspect of the real estate and have proficient know-how in identifying client needs.We offer full range of services in residential and commercial property transactions.Please call our sales office at +97143990990 and speak to one of our experts.\r\n\r\nsubloc test\r\n\r\nsubloc test', 124, '2', '', 3, 'jh', 'kh', 550, '77', '255', '', 0, '555555.00', '11111.10', '2.00', 0, '2.00', '11111.10', '1010.10', NULL, '2016-02-02 07:59:56', '2016-03-02 12:04:30', 1, 1, 8845, 8869, '', 0, 48, 'Nina manerba', 1, 9, '{dubizzle}{JustRentals}{JustProperty}{propertyfinder}{bayut}{GNproperty}{Zoopla}{rightmove}{feed_1743}', 1, 2, '{16}{17}', '', '0', 0, 'Rented', 1, 2, '1', NULL, '1', 1, 1, 1, '2016-03-02 11:04:30', 1, NULL, NULL, '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'hkl', '', '', '', '', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 3, NULL, 7, 1, 'DEWA123', 'Str123', '2016-02-02 00:00:00', 1, 'Marina', 1, '2000.00', '2016-02-03 00:00:00', '200', '1010.10', 'THis is notes for sale', '', '', NULL, NULL, NULL, NULL, 0, '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00'),
(3, 1743, '14503546605874820', 2, 'GIS-S-0003', 'this is title here for listing rentals', 'subloc test\r\n\r\nsubloc test\r\n\r\nCall Admin S 12576 on +971 552493494 / +97143990990 or visit www.royalhome.ae for further details', 19, '', '', 0, '65fg', '', 3223, '', '255', '12', 0, '323232.00', '0.00', '0.00', 0, '0.00', '0.00', '100.29', NULL, '2016-02-02 08:50:00', '2016-02-02 08:50:00', 1, 1, 6032, 0, '', 0, 48, 'Nina manerba', 1, 9, '{dubizzle}{JustRentals}{JustProperty}{propertyfinder}{bayut}{GNproperty}{Zoopla}{rightmove}{feed_1743}', 0, 0, '', '', '1', 0, 'Rented', 1, 2, '1', NULL, '1', 1, 1, 1, '2016-03-16 11:42:02', 0, NULL, NULL, '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', '', '', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 3, NULL, 0, 0, 'DEWA123', '', '2016-02-05 00:00:00', 0, 'Marina', 1, '0.00', '2016-02-03 00:00:00', '200', '100.29', '', '', 'documentSale', NULL, NULL, NULL, NULL, 0, '70.00', '20.00', '42.00', '50.00', '50.00', '50.00', '50.00', '50.00'),
(4, 1743, '14503552057903480', 2, 'GIS-S-4', 'hdfgdfhg', '', 0, '2', '', 2, 'sdfa', 'unittype', 3223, '550', '255', '12', 2, '25554588.00', '511091.76', '2.00', 0, '2.00', '511091.76', '7928.82', NULL, '2015-12-17 13:27:41', '2015-12-17 13:27:41', 12, 1, 7420, 9686, '', 0, 48, 'Nina manerba', 0, 9, '{dubizzle}{JustRentals}{JustProperty}{propertyfinder}{bayut}{GNproperty}{Zoopla}{rightmove}{feed_1743}', 0, 0, '', NULL, '', 0, '', 1, 2, NULL, NULL, NULL, 1, 1, 1, '2016-03-02 11:05:30', 0, NULL, NULL, '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', '', '', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, 0, 0, '', '', '0000-00-00 00:00:00', 0, '', NULL, '0.00', '0000-00-00 00:00:00', '', '7928.82', '', '', '', NULL, NULL, NULL, NULL, 0, '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00'),
(5, 1743, '14518049792786538', 1, 'GIS-R-5', 'Shams I BR Duplex,Nice', 'JBR, Shams 1 tower 2 units Apartment 1 bedroom Fully Furnished, upgraded Middle floor, 2 Balcony Courtyard View, 1 Parking Available from January 2016 Annual Rent AED 120,000/2 cheques Deposit 10% and count is 209mm', 35, '3', '', 1, '705', '', 1100, '', '444', '', 1, '12000000.00', '120000.00', '1.00', 1, '1.00', '120000.00', '10909.09', '4', '2016-03-20 14:18:31', '2016-03-20 14:18:31', 14, 1, 19, 0, 'Courtyard', 0, 1, 'Muhammad Shafiq', 2, 7, '{dubizzle}{JustRentals}{JustProperty}{propertyfinder}{bayut}{GNproperty}{Zoopla}', 1, 4, '{16}{17}{18}{25}', '', '0', 0, 'Available', 1, 2, '1', '1', '1', 1, 1, 1, '2016-03-20 10:18:31', 0, NULL, NULL, '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'http://youtube.com', '', '', '', '', '', '', '', '12000000.00', 1, '0.00', 0, '0.00', 0, '0.00', 0, 1, NULL, NULL, NULL, 'DEWA123', 'Str123', '0000-00-00 00:00:00', NULL, '', NULL, '2000.00', '0000-00-00 00:00:00', '200', '10909.09', '', '', '', NULL, NULL, NULL, NULL, NULL, '74.43', '50.00', '66.00', '80.00', '75.00', '100.00', '75.00', '75.00'),
(6, 1743, '14538733356211019', 1, 'GIS-R-6', 'This is title for listing unito 1604 as test list.', 'Call Admin S 12576 on +971 552493494 / +97143990990 or visit www.royalhome.ae for further details\r\n\r\nCompany name: undefined\r\n\r\nRERA ORN: undefined \r\n\r\nAddress: undefined \r\n\r\nOffice phone no: undefined\r\n\r\nOffice fax no: undefined\r\n\r\nPrimary email: undefined\r\n\r\nWebsite: undefined\r\n\r\nCompany Profile: undefined', 39, '2', '', 2, '1604', 'utype', 460, '550', '444', '30', 0, '4500000.00', '450000.00', '10.00', 1, '2.00', '90000.00', '9782.61', '4', '2016-01-27 09:52:48', '2016-01-27 09:52:48', 1, 1, 15, 0, 'Full Marina View', 0, 2, 'Abdul Ali', 1, 9, '{dubizzle}{JustRentals}{JustProperty}{propertyfinder}{bayut}{GNproperty}{Zoopla}{rightmove}{feed_1743}', 1, 2, '{16}{17}', '', '', 0, 'Rented', 84, 2, '1', '1', '1', 1, 1, 1, '2016-03-16 08:53:11', 0, NULL, NULL, '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'http://youtube.com', '', '', '', '', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 3, NULL, 0, 0, 'DEWA123', 'Str123', '2016-01-27 00:00:00', 1, 'Marina', NULL, '2000.00', '2016-01-27 00:00:00', '200', '9782.61', 'Test 2 for same', '', 'Document Name', NULL, NULL, NULL, NULL, 0, '85.00', '50.00', '65.00', '80.00', '100.00', '100.00', '100.00', '50.00');

--
-- Triggers `crm_listings`
--
DELIMITER //
CREATE TRIGGER `crm_listings__ai_d` AFTER INSERT ON `crm_listings`
 FOR EACH ROW INSERT INTO crm_listings_versions_details SELECT 'insert', NULL, NOW(),'Id','NewValue', d.* 
    FROM crm_listings AS d WHERE d.id = NEW.id
//
DELIMITER ;
DELIMITER //
CREATE TRIGGER `crm_listings__au_d` BEFORE UPDATE ON `crm_listings`
 FOR EACH ROW BEGIN
        IF OLD.type != NEW.type
        THEN


        INSERT INTO crm_listings_versions_details SELECT 'update', NULL, NOW(), 'type', CONCAT(OLD.type, " to ", NEW.type), d.* FROM crm_listings AS d WHERE d.id = NEW.id;

      END IF; 

      IF OLD.name != NEW.name
        THEN


        INSERT INTO crm_listings_versions_details SELECT 'update', NULL, NOW(), 'name', CONCAT(OLD.name, " to ", NEW.name), d.* FROM crm_listings AS d WHERE d.id = NEW.id;

      END IF;

      IF OLD.description_count != NEW.description_count
        THEN


        INSERT INTO crm_listings_versions_details SELECT 'update', NULL, NOW(), 'description_count', CONCAT(OLD.description_count, " to ", NEW.description_count), d.* FROM crm_listings AS d WHERE d.id = NEW.id;

      END IF;

      IF OLD.beds != NEW.beds
        THEN


        INSERT INTO crm_listings_versions_details SELECT 'update', NULL, NOW(), 'beds', CONCAT(OLD.beds, " to ", NEW.beds),  d.* FROM crm_listings AS d WHERE d.id = NEW.id;

      END IF;


      IF OLD.fitted != NEW.fitted
        THEN


        INSERT INTO crm_listings_versions_details SELECT 'update', NULL, NOW(), 'fitted', CONCAT(OLD.fitted, " to ", NEW.fitted), d.* FROM crm_listings AS d WHERE d.id = NEW.id;

      END IF;

      IF OLD.baths != NEW.baths
        THEN


        INSERT INTO crm_listings_versions_details SELECT 'update', NULL, NOW(), 'baths',CONCAT(OLD.baths, " to ", NEW.baths), d.* FROM crm_listings AS d WHERE d.id = NEW.id;

      END IF;

      IF OLD.unit != NEW.unit
        THEN


        INSERT INTO crm_listings_versions_details SELECT 'update', NULL, NOW(), 'unit',CONCAT(OLD.unit, " to ", NEW.unit), d.* FROM crm_listings AS d WHERE d.id = NEW.id;

      END IF;

      IF OLD.unit_type != NEW.unit_type
        THEN


        INSERT INTO crm_listings_versions_details SELECT 'update', NULL, NOW(), 'unit_type',CONCAT(OLD.unit_type, " to ", NEW.unit_type), d.* FROM crm_listings AS d WHERE d.id = NEW.id;

      END IF;

      IF OLD.deposit != NEW.deposit
        THEN


        INSERT INTO crm_listings_versions_details SELECT 'update', NULL, NOW(), 'deposit',CONCAT(OLD.deposit, " to ", NEW.deposit), d.* FROM crm_listings AS d WHERE d.id = NEW.id;

      END IF;

      IF OLD.size != NEW.size
        THEN


        INSERT INTO crm_listings_versions_details SELECT 'update', NULL, NOW(), 'size',CONCAT(OLD.size, " to ", NEW.size), d.* FROM crm_listings AS d WHERE d.id = NEW.id;

      END IF;

      IF OLD.floor_no != NEW.floor_no
        THEN


        INSERT INTO crm_listings_versions_details SELECT 'update', NULL, NOW(), 'floor_no',CONCAT(OLD.floor_no, " to ", NEW.floor_no), d.* FROM crm_listings AS d WHERE d.id = NEW.id;

      END IF;

      IF OLD.parking != NEW.parking
        THEN


        INSERT INTO crm_listings_versions_details SELECT 'update', NULL, NOW(), 'parking',CONCAT(OLD.parking, " to ", NEW.parking), d.* FROM crm_listings AS d WHERE d.id = NEW.id;

      END IF;

      IF OLD.price != NEW.price
        THEN


        INSERT INTO crm_listings_versions_details SELECT 'update', NULL, NOW(), 'price',CONCAT(OLD.price, " to ", NEW.price), d.* FROM crm_listings AS d WHERE d.id = NEW.id;

      END IF;

      IF OLD.cheques != NEW.cheques
        THEN


        INSERT INTO crm_listings_versions_details SELECT 'update', NULL, NOW(), 'cheques',CONCAT(OLD.cheques, " to ", NEW.cheques), d.* FROM crm_listings AS d WHERE d.id = NEW.id;

      END IF;

      IF OLD.commission != NEW.commission
        THEN


        INSERT INTO crm_listings_versions_details SELECT 'update', NULL, NOW(), 'commission',CONCAT(OLD.commission, " to ", NEW.commission), d.* FROM crm_listings AS d WHERE d.id = NEW.id;

      END IF;

      IF OLD.unit_size_price != NEW.unit_size_price
        THEN


        INSERT INTO crm_listings_versions_details SELECT 'update', NULL, NOW(), 'unit_size_price',CONCAT(OLD.unit_size_price, " to ", NEW.unit_size_price), d.* FROM crm_listings AS d WHERE d.id = NEW.id;

      END IF;

      IF OLD.category_id != NEW.category_id
        THEN


        INSERT INTO crm_listings_versions_details SELECT 'update', NULL, NOW(), 'category_id',CONCAT(OLD.category_id, " to ", NEW.category_id), d.* FROM crm_listings AS d WHERE d.id = NEW.id;

      END IF;

      IF OLD.region_id != NEW.region_id
        THEN


        INSERT INTO crm_listings_versions_details SELECT 'update', NULL, NOW(), 'region_id',CONCAT(OLD.region_id, " to ", NEW.region_id), d.* FROM crm_listings AS d WHERE d.id = NEW.id;

      END IF;

      IF OLD.area_location_id != NEW.area_location_id
        THEN


        INSERT INTO crm_listings_versions_details SELECT 'update', NULL, NOW(), 'area_location_id',CONCAT(OLD.area_location_id, " to ", NEW.area_location_id), d.* FROM crm_listings AS d WHERE d.id = NEW.id;

      END IF;

      IF OLD.sub_area_location_id != NEW.sub_area_location_id
        THEN


        INSERT INTO crm_listings_versions_details SELECT 'update', NULL, NOW(), 'sub_area_location_id',CONCAT(OLD.sub_area_location_id, " to ", NEW.sub_area_location_id), d.* FROM crm_listings AS d WHERE d.id = NEW.id;

      END IF;

      IF OLD.view_id != NEW.view_id
        THEN


        INSERT INTO crm_listings_versions_details SELECT 'update', NULL, NOW(), 'view_id',CONCAT(OLD.view_id, " to ", NEW.view_id), d.* FROM crm_listings AS d WHERE d.id = NEW.id;

      END IF;

      IF OLD.landlord_name != NEW.landlord_name
        THEN


        INSERT INTO crm_listings_versions_details SELECT 'update', NULL, NOW(), 'landlord_name',CONCAT(OLD.landlord_name, " to ", NEW.landlord_name), d.* FROM crm_listings AS d WHERE d.id = NEW.id;

      END IF;

      IF OLD.photos != NEW.photos
        THEN


        INSERT INTO crm_listings_versions_details SELECT 'update', NULL, NOW(), 'photos',CONCAT(OLD.photos, " to ", NEW.photos), d.* FROM crm_listings AS d WHERE d.id = NEW.id;

      END IF;

      IF OLD.portals_count != NEW.portals_count
        THEN


        INSERT INTO crm_listings_versions_details SELECT 'update', NULL, NOW(), 'portals_count',CONCAT(OLD.portals_count, " to ", NEW.portals_count), d.* FROM crm_listings AS d WHERE d.id = NEW.id;

      END IF;

      IF OLD.othermedia_count != NEW.othermedia_count
        THEN


        INSERT INTO crm_listings_versions_details SELECT 'update', NULL, NOW(), 'othermedia_count',CONCAT(OLD.othermedia_count, " to ", NEW.othermedia_count), d.* FROM crm_listings AS d WHERE d.id = NEW.id;

      END IF;

      IF OLD.othermedia_count != NEW.othermedia_count
        THEN


        INSERT INTO crm_listings_versions_details SELECT 'update', NULL, NOW(), 'othermedia_count',CONCAT(OLD.othermedia_count, " to ", NEW.othermedia_count), d.* FROM crm_listings AS d WHERE d.id = NEW.id;

      END IF;
      IF OLD.features_count != NEW.features_count
        THEN


        INSERT INTO crm_listings_versions_details SELECT 'update', NULL, NOW(), 'features_count',CONCAT(OLD.features_count, " to ", NEW.features_count), d.* FROM crm_listings AS d WHERE d.id = NEW.id;

      END IF;


  END
//
DELIMITER ;
DELIMITER //
CREATE TRIGGER `crm_listings__bd` BEFORE DELETE ON `crm_listings`
 FOR EACH ROW INSERT INTO crm_listings_versions_details SELECT 'delete', NULL, NOW(),'Id','Delete', d.* 
    FROM crm_listings AS d WHERE d.id = OLD.id
//
DELIMITER ;

-- --------------------------------------------------------

--
-- Table structure for table `crm_listings_documents`
--

CREATE TABLE IF NOT EXISTS `crm_listings_documents` (
`id` int(11) NOT NULL,
  `document_name` varchar(255) NOT NULL,
  `title` varchar(255) DEFAULT NULL,
  `listing_id` int(11) NOT NULL,
  `rand_key` varchar(255) NOT NULL,
  `created_by` int(11) NOT NULL,
  `client_id` int(11) NOT NULL,
  `dateadded` date NOT NULL,
  `activitytime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `is_active` int(3) NOT NULL DEFAULT '1'
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `crm_listings_documents`
--

INSERT INTO `crm_listings_documents` (`id`, `document_name`, `title`, `listing_id`, `rand_key`, `created_by`, `client_id`, `dateadded`, `activitytime`, `is_active`) VALUES
(1, '14503546605874820201602020853460b7129dc98ada253d3d3cd3d3fa17754.jpg', 'documentSale2', 3, '14503546605874820', 1, 1743, '2016-02-02', '2016-02-02 07:53:46', 1),
(2, '1453873335621101920160313171119d367add22e1c85d7dab51401ad08297f.jpg', 'Document Name', 6, '14538733356211019', 1, 1000000, '2016-03-13', '2016-03-13 13:11:20', 1);

-- --------------------------------------------------------

--
-- Table structure for table `crm_listings_history`
--

CREATE TABLE IF NOT EXISTS `crm_listings_history` (
`id` bigint(20) unsigned NOT NULL,
  `client_id` int(11) NOT NULL,
  `rand_key` varchar(255) NOT NULL,
  `type` int(3) NOT NULL DEFAULT '1' COMMENT '1=rent,2=sale',
  `ref` varchar(55) NOT NULL,
  `name` mediumtext NOT NULL,
  `description_demo` longtext NOT NULL,
  `description_count` int(11) NOT NULL,
  `beds` varchar(22) NOT NULL,
  `fitted` varchar(11) NOT NULL,
  `baths` int(11) NOT NULL DEFAULT '1',
  `unit` varchar(55) NOT NULL,
  `unit_type` varchar(22) NOT NULL,
  `size` int(11) NOT NULL,
  `plot_size` varchar(33) NOT NULL,
  `street_no` varchar(22) NOT NULL,
  `floor_no` varchar(22) NOT NULL,
  `parking` int(11) NOT NULL DEFAULT '0',
  `price` decimal(18,2) NOT NULL,
  `deposit` decimal(18,2) NOT NULL,
  `deposit_percentage` decimal(18,2) NOT NULL,
  `cheques` int(11) NOT NULL,
  `commission_percentage` decimal(18,2) NOT NULL,
  `commission` decimal(18,2) NOT NULL,
  `unit_size_price` varchar(555) NOT NULL,
  `frequency` varchar(22) DEFAULT NULL,
  `dateadded` datetime NOT NULL,
  `dateupdated` datetime NOT NULL,
  `category_id` int(11) NOT NULL,
  `region_id` int(11) NOT NULL,
  `area_location_id` int(11) NOT NULL,
  `sub_area_location_id` int(11) NOT NULL,
  `view_id` varchar(255) NOT NULL,
  `prop_furnish` int(6) NOT NULL,
  `landlord_id` int(11) NOT NULL,
  `landlord_name` varchar(255) NOT NULL,
  `photos` int(11) NOT NULL,
  `portals_count` int(11) NOT NULL,
  `portals_name` text NOT NULL,
  `othermedia_count` int(11) NOT NULL,
  `features_count` int(11) NOT NULL,
  `features_id` varchar(1024) NOT NULL,
  `area_iformation_data` text,
  `leads` varchar(55) NOT NULL,
  `viewings_count` int(11) NOT NULL,
  `add_info` varchar(255) NOT NULL,
  `agent_id` int(11) NOT NULL,
  `status` tinyint(4) NOT NULL,
  `managed` varchar(55) DEFAULT NULL,
  `exclusive` varchar(55) DEFAULT NULL,
  `shared` varchar(44) DEFAULT NULL,
  `created_by` int(11) NOT NULL,
  `updated_by` int(11) NOT NULL DEFAULT '0',
  `is_active` int(5) NOT NULL DEFAULT '1',
  `activitytime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `is_archive` int(5) NOT NULL DEFAULT '0',
  `lat` varchar(55) DEFAULT NULL,
  `lon` varchar(55) DEFAULT NULL,
  `loc_description` mediumtext NOT NULL,
  `cmp_description` varchar(999) NOT NULL,
  `other_languages` int(11) DEFAULT NULL,
  `other_title_1` varchar(999) DEFAULT NULL,
  `other_description_1` text,
  `other_title_2` varchar(999) DEFAULT NULL,
  `other_description_2` text,
  `featured` int(11) DEFAULT NULL,
  `refreshed` int(9) DEFAULT NULL,
  `description_id` int(11) DEFAULT NULL,
  `video_embed_code` varchar(255) DEFAULT NULL,
  `360_embed_code` varchar(255) DEFAULT NULL,
  `audio_embed_code` varchar(255) DEFAULT NULL,
  `virtual_tour_embed_code` varchar(255) DEFAULT NULL,
  `qr_code_link` varchar(255) NOT NULL,
  `pdf_brochure` varchar(255) DEFAULT NULL,
  `video_path` varchar(255) DEFAULT NULL,
  `video_path_upload` varchar(255) DEFAULT NULL,
  `price_1` decimal(18,2) DEFAULT NULL,
  `cheques_1` int(11) DEFAULT NULL,
  `price_2` decimal(18,2) DEFAULT NULL,
  `cheques_2` int(11) DEFAULT NULL,
  `price_3` decimal(18,2) DEFAULT NULL,
  `cheques_3` int(11) DEFAULT NULL,
  `price_4` decimal(18,2) DEFAULT NULL,
  `cheques_4` int(11) DEFAULT NULL,
  `prop_status` int(11) DEFAULT NULL,
  `agent_rent_sold` int(11) DEFAULT NULL,
  `source_of_listing` int(11) DEFAULT NULL,
  `flcheck` int(11) DEFAULT NULL,
  `dewa_no` varchar(255) DEFAULT NULL,
  `strno` varchar(255) DEFAULT NULL,
  `available_date` datetime DEFAULT NULL,
  `remind_me` int(11) DEFAULT NULL,
  `key_location` varchar(255) DEFAULT NULL,
  `tenanted` int(11) DEFAULT NULL,
  `amount` decimal(18,2) DEFAULT NULL,
  `amount_date` datetime DEFAULT NULL,
  `maintenance` varchar(255) DEFAULT NULL,
  `unit_size_price_2` decimal(18,2) DEFAULT NULL,
  `notes` varchar(999) DEFAULT NULL,
  `leads_notes` varchar(999) DEFAULT NULL,
  `document_name` varchar(999) DEFAULT NULL,
  `terminal` int(3) DEFAULT NULL,
  `furnished` int(3) DEFAULT NULL,
  `development_unit_id` int(11) DEFAULT NULL,
  `price_of_application` int(5) DEFAULT NULL COMMENT 'Tick this box if you would like the price for the property to be hidden. If ticked, Price on application will display on the PDF brochures and the HTML preview for this property and a zero value will be sent in the XML  feeds to the portals',
  `is_international` tinyint(4) DEFAULT '0',
  `action` varchar(55) NOT NULL,
  `listing_id` int(11) NOT NULL,
  `overall_score` decimal(5,2) NOT NULL DEFAULT '0.00',
  `media_score` decimal(5,2) NOT NULL DEFAULT '0.00',
  `address_score` decimal(5,2) NOT NULL DEFAULT '0.00',
  `description_score` decimal(5,2) NOT NULL DEFAULT '0.00',
  `price_score` decimal(5,2) NOT NULL DEFAULT '0.00',
  `beds_baths_score` decimal(5,2) NOT NULL DEFAULT '0.00',
  `facilities_score` decimal(5,2) NOT NULL DEFAULT '0.00',
  `price_diff` decimal(5,2) NOT NULL DEFAULT '0.00'
) ENGINE=MyISAM AUTO_INCREMENT=11 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `crm_listings_history`
--

INSERT INTO `crm_listings_history` (`id`, `client_id`, `rand_key`, `type`, `ref`, `name`, `description_demo`, `description_count`, `beds`, `fitted`, `baths`, `unit`, `unit_type`, `size`, `plot_size`, `street_no`, `floor_no`, `parking`, `price`, `deposit`, `deposit_percentage`, `cheques`, `commission_percentage`, `commission`, `unit_size_price`, `frequency`, `dateadded`, `dateupdated`, `category_id`, `region_id`, `area_location_id`, `sub_area_location_id`, `view_id`, `prop_furnish`, `landlord_id`, `landlord_name`, `photos`, `portals_count`, `portals_name`, `othermedia_count`, `features_count`, `features_id`, `area_iformation_data`, `leads`, `viewings_count`, `add_info`, `agent_id`, `status`, `managed`, `exclusive`, `shared`, `created_by`, `updated_by`, `is_active`, `activitytime`, `is_archive`, `lat`, `lon`, `loc_description`, `cmp_description`, `other_languages`, `other_title_1`, `other_description_1`, `other_title_2`, `other_description_2`, `featured`, `refreshed`, `description_id`, `video_embed_code`, `360_embed_code`, `audio_embed_code`, `virtual_tour_embed_code`, `qr_code_link`, `pdf_brochure`, `video_path`, `video_path_upload`, `price_1`, `cheques_1`, `price_2`, `cheques_2`, `price_3`, `cheques_3`, `price_4`, `cheques_4`, `prop_status`, `agent_rent_sold`, `source_of_listing`, `flcheck`, `dewa_no`, `strno`, `available_date`, `remind_me`, `key_location`, `tenanted`, `amount`, `amount_date`, `maintenance`, `unit_size_price_2`, `notes`, `leads_notes`, `document_name`, `terminal`, `furnished`, `development_unit_id`, `price_of_application`, `is_international`, `action`, `listing_id`, `overall_score`, `media_score`, `address_score`, `description_score`, `price_score`, `beds_baths_score`, `facilities_score`, `price_diff`) VALUES
(5, 1743, '14518049792786538', 1, 'GIS-R-5', 'Shams I BR Apt', 'JBR, Shams 1 tower 2 units Apartment 1 bedroom Fully Furnished, upgraded Middle floor, 2 Balcony Courtyard View, 1 Parking Available from January 2016 Annual Rent AED 120,000/2 cheques Deposit 10% and count is 209mm', 35, '1', '', 2, '705', '', 1100, '', '', '', 1, '120000.00', '12000.00', '10.00', 1, '5.00', '6000.00', '109.09', '4', '2016-02-16 14:22:48', '2016-02-16 14:22:48', 1, 1, 19, 0, 'Courtyard', 0, 1, 'Muhammad Shafiq', 2, 8, '{dubizzle}{JustRentals}{JustProperty}{propertyfinder}{bayut}{GNproperty}{Zoopla}{rightmove}', 1, 3, '{17}{18}{25}', '', '0', 0, 'Available', 1, 2, '1', '1', '1', 1, 0, 1, '2016-02-16 13:22:48', 0, NULL, NULL, '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'http://youtube.com', '', '', '', '', '', '', '', '120000.00', 1, '0.00', 0, '0.00', 0, '0.00', 0, 1, NULL, 0, 0, 'DEWA123', 'Str123', '0000-00-00 00:00:00', 0, '', NULL, '2000.00', '0000-00-00 00:00:00', '200', '109.09', '', '', '', NULL, NULL, NULL, NULL, NULL, 'update', 5, '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00'),
(6, 1743, '14518049792786538', 1, 'GIS-R-5', 'Shams I BR Apt', 'JBR, Shams 1 tower 2 units Apartment 1 bedroom Fully Furnished, upgraded Middle floor, 2 Balcony Courtyard View, 1 Parking Available from January 2016 Annual Rent AED 120,000/2 cheques Deposit 10% and count is 209mm', 35, '1', '', 2, '705', '', 1100, '', '', '', 1, '120000.00', '12000.00', '10.00', 1, '5.00', '6000.00', '109.09', '4', '2016-02-16 14:29:22', '2016-02-16 14:29:22', 1, 1, 19, 0, 'Courtyard', 0, 1, 'Muhammad Shafiq', 2, 8, '{dubizzle}{JustRentals}{JustProperty}{propertyfinder}{bayut}{GNproperty}{Zoopla}{rightmove}', 1, 3, '{17}{18}{25}', '', '0', 0, 'Available', 1, 2, '1', '1', '1', 1, 0, 1, '2016-02-16 13:29:22', 0, NULL, NULL, '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'http://youtube.com', '', '', '', '', '', '', '', '120000.00', 1, '0.00', NULL, '0.00', NULL, '0.00', NULL, 1, NULL, 0, 0, 'DEWA123', 'Str123', '0000-00-00 00:00:00', 0, '', NULL, '2000.00', '0000-00-00 00:00:00', '200', '109.09', '', '', '', NULL, NULL, NULL, NULL, NULL, 'update', 5, '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00'),
(7, 1743, '14503468808582988', 1, 'GIS-R-0001', 'this is title here for listing rentals', 'this is desc\r\n\r\nsubloc test\r\n\r\nsubloc test\r\n\r\nCall Admin S 12576 on +971 552493494 / +97143990990 or visit www.royalhome.ae for further details\r\n\r\nCompany name: Royal Home Real Estate\r\n\r\nRERA ORN: 2533 \r\n\r\nAddress: Office 09, Al Fattan Towers, JBR, Dubai \r\n\r\nOffice phone no: +97143990990\r\n\r\nOffice fax no: +97143996993\r\n\r\nPrimary email: property@royalhome.ae\r\n\r\nWebsite: www.royalhome.ae\r\n\r\nCompany Profile: Royal Home Real Estate provides full service to each and every clientele. We offer comprehensive properties for sales, rentals and Property Management Services. Our team is highly adept property consultants who are experts in every aspect of the real estate and have proficient know-how in identifying client needs.We offer full range of services in residential and commercial property transactions.Please call our sales office at +97143990990 and speak to one of our experts.', 126, '1', '', 2, '1602', 'unittype', 3223, '550', '2', '3', 2, '10000000.00', '300000.00', '3.00', 2, '2.00', '200000.00', '3102.70', '4', '2016-02-17 10:30:56', '2016-02-17 10:30:56', 1, 1, 6032, 0, 'Sea view', 0, 48, 'Nina manerba', 1, 7, '{dubizzle}{JustRentals}{JustProperty}{propertyfinder}{bayut}{GNproperty}{Zoopla}', 1, 3, '{16}{17}{45}', '', '0', 0, 'Available', 1, 1, '1', '1', '1', 0, 1, 1, '2016-02-17 09:30:56', 0, NULL, NULL, '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'http://youtube.com', '', '', '', '', '', '', '', '10000000.00', 2, '0.00', 0, '0.00', 0, '0.00', 0, 1, NULL, 0, 0, '', '', '0000-00-00 00:00:00', 1, 'Marina', NULL, '2000.00', '0000-00-00 00:00:00', '200', '3102.70', '', '', 'Document Name', NULL, NULL, NULL, NULL, NULL, 'update', 1, '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00', '0.00'),
(8, 1743, '14518049792786538', 1, 'GIS-R-5', 'Shams I BR Apt', 'JBR, Shams 1 tower 2 units Apartment 1 bedroom Fully Furnished, upgraded Middle floor, 2 Balcony Courtyard View, 1 Parking Available from January 2016 Annual Rent AED 120,000/2 cheques Deposit 10% and count is 209mm', 35, '1', '', 2, '705', '', 1100, '', '444', '', 1, '120000.00', '12000.00', '10.00', 1, '5.00', '6000.00', '109.09', '4', '2016-03-01 12:14:33', '2016-03-01 12:14:33', 1, 1, 19, 0, 'Courtyard', 0, 1, 'Muhammad Shafiq', 2, 8, '{dubizzle}{JustRentals}{JustProperty}{propertyfinder}{bayut}{GNproperty}{Zoopla}{rightmove}', 1, 3, '{17}{18}{25}', '', '0', 0, 'Available', 1, 2, '1', '1', '1', 0, 1, 1, '2016-03-01 11:14:33', 0, NULL, NULL, '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'http://youtube.com', '', '', '', '', '', '', '', '120000.00', 1, '0.00', 0, '0.00', 0, '0.00', 0, 1, NULL, NULL, NULL, 'DEWA123', 'Str123', '0000-00-00 00:00:00', NULL, '', NULL, '2000.00', '0000-00-00 00:00:00', '200', '109.09', '', '', '', NULL, NULL, NULL, NULL, NULL, 'update', 5, '74.43', '50.00', '0.00', '80.00', '75.00', '100.00', '75.00', '75.00'),
(9, 1743, '14518049792786538', 1, 'GIS-R-5', 'Shams I BR Apt', 'JBR, Shams 1 tower 2 units Apartment 1 bedroom Fully Furnished, upgraded Middle floor, 2 Balcony Courtyard View, 1 Parking Available from January 2016 Annual Rent AED 120,000/2 cheques Deposit 10% and count is 209mm', 35, '1', '', 2, '705', '', 1100, '', '444', '', 1, '12000.00', '12000.00', '10.00', 1, '5.00', '6000.00', '109.09', '4', '2016-03-01 12:18:21', '2016-03-01 12:18:21', 1, 1, 19, 0, 'Courtyard', 0, 1, 'Muhammad Shafiq', 2, 8, '{dubizzle}{JustRentals}{JustProperty}{propertyfinder}{bayut}{GNproperty}{Zoopla}{rightmove}', 1, 3, '{17}{18}{25}', '', '0', 0, 'Available', 1, 2, '1', '1', '1', 0, 1, 1, '2016-03-12 07:46:02', 0, NULL, NULL, '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'http://youtube.com', '', '', '', '', '', '', '', '120000.00', 1, '0.00', NULL, '0.00', NULL, '0.00', NULL, 1, NULL, 0, NULL, 'DEWA123', 'Str123', '0000-00-00 00:00:00', 0, '', NULL, '2000.00', '0000-00-00 00:00:00', '200', '109.09', '', '', '', NULL, NULL, NULL, NULL, NULL, 'update', 5, '74.43', '50.00', '66.00', '80.00', '75.00', '100.00', '75.00', '75.00'),
(10, 1743, '14518049792786538', 1, 'GIS-R-5', 'Shams I BR Duplex,Nice', 'JBR, Shams 1 tower 2 units Apartment 1 bedroom Fully Furnished, upgraded Middle floor, 2 Balcony Courtyard View, 1 Parking Available from January 2016 Annual Rent AED 120,000/2 cheques Deposit 10% and count is 209mm', 35, '3', '', 1, '705', '', 1100, '', '444', '', 1, '12000000.00', '120000.00', '1.00', 1, '1.00', '120000.00', '10909.09', '4', '2016-03-20 14:18:31', '2016-03-20 14:18:31', 14, 1, 19, 0, 'Courtyard', 0, 1, 'Muhammad Shafiq', 2, 7, '{dubizzle}{JustRentals}{JustProperty}{propertyfinder}{bayut}{GNproperty}{Zoopla}', 1, 4, '{16}{17}{18}{25}', '', '0', 0, 'Available', 1, 2, '1', '1', '1', 0, 1, 1, '2016-03-20 10:18:31', 0, NULL, NULL, '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'http://youtube.com', '', '', '', '', '', '', '', '12000000.00', 1, '0.00', 0, '0.00', 0, '0.00', 0, 1, NULL, NULL, NULL, 'DEWA123', 'Str123', '0000-00-00 00:00:00', NULL, '', NULL, '2000.00', '0000-00-00 00:00:00', '200', '10909.09', '', '', '', NULL, NULL, NULL, NULL, NULL, 'update', 5, '74.43', '50.00', '66.00', '80.00', '75.00', '100.00', '75.00', '75.00');

-- --------------------------------------------------------

--
-- Table structure for table `crm_listings_images`
--

CREATE TABLE IF NOT EXISTS `crm_listings_images` (
`id` bigint(20) NOT NULL,
  `rand_key` varchar(555) NOT NULL,
  `title` text NOT NULL,
  `listing_id` bigint(44) NOT NULL,
  `listing_type` int(3) NOT NULL DEFAULT '1' COMMENT '1=rent,2=sale',
  `created_date` date NOT NULL,
  `activitytime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `is_active` int(2) NOT NULL DEFAULT '1',
  `image` varchar(999) NOT NULL,
  `thumb` varchar(999) NOT NULL,
  `watermark_image` varchar(999) NOT NULL,
  `is_watermarked` int(2) NOT NULL DEFAULT '1',
  `is_contactImage` int(3) NOT NULL,
  `position` int(11) NOT NULL,
  `created_by` int(11) NOT NULL DEFAULT '0',
  `image_type` varchar(55) DEFAULT NULL
) ENGINE=MyISAM AUTO_INCREMENT=13 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `crm_listings_images`
--

INSERT INTO `crm_listings_images` (`id`, `rand_key`, `title`, `listing_id`, `listing_type`, `created_date`, `activitytime`, `is_active`, `image`, `thumb`, `watermark_image`, `is_watermarked`, `is_contactImage`, `position`, `created_by`, `image_type`) VALUES
(1, '14518049792786538', '', 5, 1, '2016-02-11', '2016-02-11 12:45:11', 1, '14518049792786538-2016-02-11-13-45-10a27b2e316cff9945481b80f6ef84b89f-bd470ba7-f367-4ec1-a498-421e70c1ac5f.png', '14518049792786538-2016-02-11-13-45-10a27b2e316cff9945481b80f6ef84b89f-bd470ba7-f367-4ec1-a498-421e70c1ac5f.png', '14518049792786538-2016-02-11-13-45-10a27b2e316cff9945481b80f6ef84b89f-bd470ba7-f367-4ec1-a498-421e70c1ac5f.png', 1, 0, 0, 1, 'photos'),
(2, '14518049792786538', '', 5, 1, '2016-02-11', '2016-02-11 12:45:19', 1, '14518049792786538-2016-02-11-13-45-1957703d9e6b7a9bdb4ce1b2bc7bb24d96-4e99d94c-b65c-4f7b-9243-76cee65aaca9.png', '14518049792786538-2016-02-11-13-45-1957703d9e6b7a9bdb4ce1b2bc7bb24d96-4e99d94c-b65c-4f7b-9243-76cee65aaca9.png', '14518049792786538-2016-02-11-13-45-1957703d9e6b7a9bdb4ce1b2bc7bb24d96-4e99d94c-b65c-4f7b-9243-76cee65aaca9.png', 1, 0, 0, 1, 'photos'),
(3, '14518049792786538', '', 5, 1, '2016-02-11', '2016-02-11 12:45:27', 1, '14518049792786538-2016-02-11-13-45-2714c25dae686fd050009024972d938cda-9b400c90-ebe6-444a-a8f5-c6a06a8ce607.png', '14518049792786538-2016-02-11-13-45-2714c25dae686fd050009024972d938cda-9b400c90-ebe6-444a-a8f5-c6a06a8ce607.png', '14518049792786538-2016-02-11-13-45-2714c25dae686fd050009024972d938cda-9b400c90-ebe6-444a-a8f5-c6a06a8ce607.png', 1, 0, 0, 1, 'floor'),
(4, '14518049792786538', '', 5, 1, '2016-02-11', '2016-02-11 12:45:32', 1, '14518049792786538-2016-02-11-13-45-32f254b82e0dd1c06040cca3ae58225570-c7c306ef-4520-42a0-b93d-e9d9ff5d0865.png', '14518049792786538-2016-02-11-13-45-32f254b82e0dd1c06040cca3ae58225570-c7c306ef-4520-42a0-b93d-e9d9ff5d0865.png', '14518049792786538-2016-02-11-13-45-32f254b82e0dd1c06040cca3ae58225570-c7c306ef-4520-42a0-b93d-e9d9ff5d0865.png', 1, 0, 0, 1, 'floor'),
(5, '14518049792786538', '', 5, 1, '2016-02-11', '2016-02-11 12:45:47', 1, '14518049792786538-2016-02-11-13-45-47d3a9de7acfa58b2d03c811fe21bfb2d7-024b22ff-3c0e-4117-848d-3d160ad898ae.png', '14518049792786538-2016-02-11-13-45-47d3a9de7acfa58b2d03c811fe21bfb2d7-024b22ff-3c0e-4117-848d-3d160ad898ae.png', '14518049792786538-2016-02-11-13-45-47d3a9de7acfa58b2d03c811fe21bfb2d7-024b22ff-3c0e-4117-848d-3d160ad898ae.png', 1, 0, 0, 1, 'photos'),
(6, '14518049792786538', '', 5, 1, '2016-02-11', '2016-02-11 12:45:54', 1, '14518049792786538-2016-02-11-13-45-5407256ab07f195de5f6a51d9b7f081f2c-551a6a21-681a-40ad-b4cf-86fd6245c25a.png', '14518049792786538-2016-02-11-13-45-5407256ab07f195de5f6a51d9b7f081f2c-551a6a21-681a-40ad-b4cf-86fd6245c25a.png', '14518049792786538-2016-02-11-13-45-5407256ab07f195de5f6a51d9b7f081f2c-551a6a21-681a-40ad-b4cf-86fd6245c25a.png', 1, 0, 0, 1, 'floor'),
(7, '14518049792786538', '', 5, 1, '2016-02-11', '2016-02-11 12:46:34', 1, '14518049792786538-2016-02-11-13-46-3436d2cbb1e5779f26da3f499274b24ba9-0558aa2d-d368-48ed-8a33-f6a91650698f.png', '14518049792786538-2016-02-11-13-46-3436d2cbb1e5779f26da3f499274b24ba9-0558aa2d-d368-48ed-8a33-f6a91650698f.png', '14518049792786538-2016-02-11-13-46-3436d2cbb1e5779f26da3f499274b24ba9-0558aa2d-d368-48ed-8a33-f6a91650698f.png', 1, 0, 0, 1, 'photos'),
(8, '14518049792786538', '', 5, 1, '2016-02-11', '2016-02-11 12:48:22', 1, '14518049792786538-2016-02-11-13-48-2129e54ac7da3e282174a614f5184352d4-b17d4c39-fd2a-4eef-b987-6cd02ad5c385.png', '14518049792786538-2016-02-11-13-48-2129e54ac7da3e282174a614f5184352d4-b17d4c39-fd2a-4eef-b987-6cd02ad5c385.png', '14518049792786538-2016-02-11-13-48-2129e54ac7da3e282174a614f5184352d4-b17d4c39-fd2a-4eef-b987-6cd02ad5c385.png', 1, 0, 0, 1, 'photos'),
(9, '14551951832598011', '', 0, 2, '2016-02-11', '2016-02-11 12:53:18', 1, '14551951832598011-2016-02-11-13-53-18ab06e49492eec01c31f6c6260d09c681-068893dd-4835-4bab-85cb-00458ac10d12.png', '14551951832598011-2016-02-11-13-53-18ab06e49492eec01c31f6c6260d09c681-068893dd-4835-4bab-85cb-00458ac10d12.png', '14551951832598011-2016-02-11-13-53-18ab06e49492eec01c31f6c6260d09c681-068893dd-4835-4bab-85cb-00458ac10d12.png', 1, 0, 0, 1, 'photos'),
(10, '14551951832598011', '', 0, 2, '2016-02-11', '2016-02-11 12:53:20', 1, '14551951832598011-2016-02-11-13-53-2058991803930d4db97470de237a20f5c8-49ea56f5-fb92-425a-90ba-c5300daf2024.png', '14551951832598011-2016-02-11-13-53-2058991803930d4db97470de237a20f5c8-49ea56f5-fb92-425a-90ba-c5300daf2024.png', '14551951832598011-2016-02-11-13-53-2058991803930d4db97470de237a20f5c8-49ea56f5-fb92-425a-90ba-c5300daf2024.png', 1, 0, 0, 1, 'photos'),
(11, '14551951832598011', '', 0, 2, '2016-02-11', '2016-02-11 12:53:24', 1, '14551951832598011-2016-02-11-13-53-23c371d9b1d94ccbf90d237578189c7d6f-5e81b6b7-b50a-47fd-9703-4cd7e365d659.png', '14551951832598011-2016-02-11-13-53-23c371d9b1d94ccbf90d237578189c7d6f-5e81b6b7-b50a-47fd-9703-4cd7e365d659.png', '14551951832598011-2016-02-11-13-53-23c371d9b1d94ccbf90d237578189c7d6f-5e81b6b7-b50a-47fd-9703-4cd7e365d659.png', 1, 0, 0, 1, 'floor'),
(12, '14569160984899835', '', 0, 2, '2016-03-02', '2016-03-02 10:55:26', 1, '14569160984899835-2016-03-02-11-55-26f86c5e7aaeaef618beb38f79b4266379-71cb6035-727b-4d38-8ea7-0689607b1620.jpg', '14569160984899835-2016-03-02-11-55-26f86c5e7aaeaef618beb38f79b4266379-71cb6035-727b-4d38-8ea7-0689607b1620.jpg', '14569160984899835-2016-03-02-11-55-26f86c5e7aaeaef618beb38f79b4266379-71cb6035-727b-4d38-8ea7-0689607b1620.jpg', 1, 0, 0, 1, 'photos');

-- --------------------------------------------------------

--
-- Table structure for table `crm_listings_notes`
--

CREATE TABLE IF NOT EXISTS `crm_listings_notes` (
`id` int(11) NOT NULL,
  `created_by` int(11) NOT NULL,
  `notes` longtext NOT NULL,
  `created_date` datetime NOT NULL,
  `activitytime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `listing_id` int(11) NOT NULL,
  `rand_key` varchar(99) NOT NULL
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `crm_listings_notes`
--

INSERT INTO `crm_listings_notes` (`id`, `created_by`, `notes`, `created_date`, `activitytime`, `listing_id`, `rand_key`) VALUES
(1, 1, 'This is test notes for ref=R-6', '2016-01-27 09:20:27', '2016-01-27 08:53:26', 6, '14538733356211019'),
(2, 1, 'Test 2 for same', '2016-01-27 09:52:48', '2016-01-27 08:52:48', 6, '14538733356211019'),
(3, 1, 'THis is notes for sale', '2016-02-02 07:59:56', '2016-02-02 06:59:56', 2, '14503532927417064'),
(4, 1, 'this is another notes for ref 0003', '2016-02-02 08:11:12', '2016-02-02 07:11:12', 3, '14503546605874820');

-- --------------------------------------------------------

--
-- Table structure for table `crm_listings_versions`
--

CREATE TABLE IF NOT EXISTS `crm_listings_versions` (
  `action` varchar(8) DEFAULT 'insert',
`revision` int(6) NOT NULL,
  `dt_datetime` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `id` int(11) NOT NULL,
  `client_id` int(11) NOT NULL,
  `rand_key` varchar(255) NOT NULL,
  `type` int(3) NOT NULL DEFAULT '1' COMMENT '1=rent,2=sale',
  `ref` varchar(55) NOT NULL,
  `name` mediumtext NOT NULL,
  `description_demo` longtext NOT NULL,
  `description_count` int(11) NOT NULL,
  `beds` varchar(22) NOT NULL,
  `fitted` varchar(11) NOT NULL,
  `baths` int(11) NOT NULL DEFAULT '1',
  `unit` varchar(55) NOT NULL,
  `unit_type` varchar(22) NOT NULL,
  `size` int(11) NOT NULL,
  `plot_size` varchar(33) NOT NULL,
  `street_no` varchar(22) NOT NULL,
  `floor_no` varchar(22) NOT NULL,
  `parking` int(11) NOT NULL DEFAULT '0',
  `price` decimal(18,2) NOT NULL,
  `deposit` decimal(18,2) NOT NULL,
  `deposit_percentage` decimal(18,2) NOT NULL,
  `cheques` int(11) NOT NULL,
  `commission_percentage` decimal(18,2) NOT NULL,
  `commission` decimal(18,2) NOT NULL,
  `unit_size_price` varchar(555) NOT NULL,
  `frequency` varchar(22) DEFAULT NULL,
  `dateadded` datetime NOT NULL,
  `dateupdated` datetime NOT NULL,
  `category_id` int(11) NOT NULL,
  `region_id` int(11) NOT NULL,
  `area_location_id` int(11) NOT NULL,
  `sub_area_location_id` int(11) NOT NULL,
  `view_id` varchar(255) NOT NULL,
  `prop_furnish` int(6) NOT NULL,
  `landlord_id` int(11) NOT NULL,
  `landlord_name` varchar(255) NOT NULL,
  `photos` int(11) NOT NULL,
  `portals_count` int(11) NOT NULL,
  `portals_name` text NOT NULL,
  `othermedia_count` int(11) NOT NULL,
  `features_count` int(11) NOT NULL,
  `features_id` varchar(1024) NOT NULL,
  `area_iformation_data` text,
  `leads` varchar(55) NOT NULL,
  `viewings_count` int(11) NOT NULL,
  `add_info` varchar(255) NOT NULL,
  `agent_id` int(11) NOT NULL,
  `status` tinyint(4) NOT NULL,
  `managed` varchar(55) DEFAULT NULL,
  `exclusive` varchar(55) DEFAULT NULL,
  `shared` varchar(44) DEFAULT NULL,
  `created_by` int(11) NOT NULL,
  `updated_by` int(11) NOT NULL DEFAULT '0',
  `is_active` int(5) NOT NULL DEFAULT '1',
  `activitytime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `is_archive` int(5) NOT NULL DEFAULT '0',
  `lat` varchar(55) DEFAULT NULL,
  `lon` varchar(55) DEFAULT NULL,
  `loc_description` mediumtext NOT NULL,
  `cmp_description` varchar(999) NOT NULL,
  `other_languages` int(11) DEFAULT NULL,
  `other_title_1` varchar(999) DEFAULT NULL,
  `other_description_1` text,
  `other_title_2` varchar(999) DEFAULT NULL,
  `other_description_2` text,
  `featured` int(11) DEFAULT NULL,
  `refreshed` int(9) DEFAULT NULL,
  `description_id` int(11) DEFAULT NULL,
  `video_embed_code` varchar(255) DEFAULT NULL,
  `360_embed_code` varchar(255) DEFAULT NULL,
  `audio_embed_code` varchar(255) DEFAULT NULL,
  `virtual_tour_embed_code` varchar(255) DEFAULT NULL,
  `qr_code_link` varchar(255) NOT NULL,
  `pdf_brochure` varchar(255) DEFAULT NULL,
  `video_path` varchar(255) DEFAULT NULL,
  `video_path_upload` varchar(255) DEFAULT NULL,
  `price_1` decimal(18,2) DEFAULT NULL,
  `cheques_1` int(11) DEFAULT NULL,
  `price_2` decimal(18,2) DEFAULT NULL,
  `cheques_2` int(11) DEFAULT NULL,
  `price_3` decimal(18,2) DEFAULT NULL,
  `cheques_3` int(11) DEFAULT NULL,
  `price_4` decimal(18,2) DEFAULT NULL,
  `cheques_4` int(11) DEFAULT NULL,
  `prop_status` int(11) DEFAULT NULL,
  `agent_rent_sold` int(11) DEFAULT NULL,
  `source_of_listing` int(11) DEFAULT NULL,
  `flcheck` int(11) DEFAULT NULL,
  `dewa_no` varchar(255) DEFAULT NULL,
  `strno` varchar(255) DEFAULT NULL,
  `available_date` datetime DEFAULT NULL,
  `remind_me` int(11) DEFAULT NULL,
  `key_location` varchar(255) DEFAULT NULL,
  `tenanted` int(11) DEFAULT NULL,
  `amount` decimal(18,2) DEFAULT NULL,
  `amount_date` datetime DEFAULT NULL,
  `maintenance` varchar(255) DEFAULT NULL,
  `unit_size_price_2` decimal(18,2) DEFAULT NULL,
  `notes` varchar(999) DEFAULT NULL,
  `leads_notes` varchar(999) DEFAULT NULL,
  `document_name` varchar(999) DEFAULT NULL,
  `terminal` int(3) DEFAULT NULL,
  `furnished` int(3) DEFAULT NULL,
  `development_unit_id` int(11) DEFAULT NULL,
  `price_of_application` int(5) DEFAULT NULL COMMENT 'Tick this box if you would like the price for the property to be hidden. If ticked, Price on application will display on the PDF brochures and the HTML preview for this property and a zero value will be sent in the XML  feeds to the portals',
  `is_international` tinyint(4) DEFAULT '0',
  `overall_score` decimal(5,2) NOT NULL DEFAULT '0.00',
  `media_score` decimal(5,2) NOT NULL DEFAULT '0.00',
  `address_score` decimal(5,2) NOT NULL DEFAULT '0.00',
  `description_score` decimal(5,2) NOT NULL DEFAULT '0.00',
  `price_score` decimal(5,2) NOT NULL DEFAULT '0.00',
  `beds_baths_score` decimal(5,2) NOT NULL DEFAULT '0.00',
  `facilities_score` decimal(5,2) NOT NULL DEFAULT '0.00',
  `price_diff` decimal(5,2) NOT NULL DEFAULT '0.00'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `crm_listings_versions_details`
--

CREATE TABLE IF NOT EXISTS `crm_listings_versions_details` (
  `action` varchar(8) DEFAULT 'insert',
`revision` int(6) NOT NULL,
  `dt_datetime` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `action_field` varchar(55) NOT NULL DEFAULT 'id',
  `action_values` varchar(255) NOT NULL DEFAULT 'new value',
  `id` int(11) NOT NULL,
  `client_id` int(11) NOT NULL,
  `rand_key` varchar(255) NOT NULL,
  `type` int(3) NOT NULL DEFAULT '1' COMMENT '1=rent,2=sale',
  `ref` varchar(55) NOT NULL,
  `name` mediumtext NOT NULL,
  `description_demo` longtext NOT NULL,
  `description_count` int(11) NOT NULL,
  `beds` varchar(22) NOT NULL,
  `fitted` varchar(11) NOT NULL,
  `baths` int(11) NOT NULL DEFAULT '1',
  `unit` varchar(55) NOT NULL,
  `unit_type` varchar(22) NOT NULL,
  `size` int(11) NOT NULL,
  `plot_size` varchar(33) NOT NULL,
  `street_no` varchar(22) NOT NULL,
  `floor_no` varchar(22) NOT NULL,
  `parking` int(11) NOT NULL DEFAULT '0',
  `price` decimal(18,2) NOT NULL,
  `deposit` decimal(18,2) NOT NULL,
  `deposit_percentage` decimal(18,2) NOT NULL,
  `cheques` int(11) NOT NULL,
  `commission_percentage` decimal(18,2) NOT NULL,
  `commission` decimal(18,2) NOT NULL,
  `unit_size_price` varchar(555) NOT NULL,
  `frequency` varchar(22) DEFAULT NULL,
  `dateadded` datetime NOT NULL,
  `dateupdated` datetime NOT NULL,
  `category_id` int(11) NOT NULL,
  `region_id` int(11) NOT NULL,
  `area_location_id` int(11) NOT NULL,
  `sub_area_location_id` int(11) NOT NULL,
  `view_id` varchar(255) NOT NULL,
  `prop_furnish` int(6) NOT NULL,
  `landlord_id` int(11) NOT NULL,
  `landlord_name` varchar(255) NOT NULL,
  `photos` int(11) NOT NULL,
  `portals_count` int(11) NOT NULL,
  `portals_name` text NOT NULL,
  `othermedia_count` int(11) NOT NULL,
  `features_count` int(11) NOT NULL,
  `features_id` varchar(1024) NOT NULL,
  `area_iformation_data` text,
  `leads` varchar(55) NOT NULL,
  `viewings_count` int(11) NOT NULL,
  `add_info` varchar(255) NOT NULL,
  `agent_id` int(11) NOT NULL,
  `status` tinyint(4) NOT NULL,
  `managed` varchar(55) DEFAULT NULL,
  `exclusive` varchar(55) DEFAULT NULL,
  `shared` varchar(44) DEFAULT NULL,
  `created_by` int(11) NOT NULL,
  `updated_by` int(11) NOT NULL DEFAULT '0',
  `is_active` int(5) NOT NULL DEFAULT '1',
  `activitytime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `is_archive` int(5) NOT NULL DEFAULT '0',
  `lat` varchar(55) DEFAULT NULL,
  `lon` varchar(55) DEFAULT NULL,
  `loc_description` mediumtext NOT NULL,
  `cmp_description` varchar(999) NOT NULL,
  `other_languages` int(11) DEFAULT NULL,
  `other_title_1` varchar(999) DEFAULT NULL,
  `other_description_1` text,
  `other_title_2` varchar(999) DEFAULT NULL,
  `other_description_2` text,
  `featured` int(11) DEFAULT NULL,
  `refreshed` int(9) DEFAULT NULL,
  `description_id` int(11) DEFAULT NULL,
  `video_embed_code` varchar(255) DEFAULT NULL,
  `360_embed_code` varchar(255) DEFAULT NULL,
  `audio_embed_code` varchar(255) DEFAULT NULL,
  `virtual_tour_embed_code` varchar(255) DEFAULT NULL,
  `qr_code_link` varchar(255) NOT NULL,
  `pdf_brochure` varchar(255) DEFAULT NULL,
  `video_path` varchar(255) DEFAULT NULL,
  `video_path_upload` varchar(255) DEFAULT NULL,
  `price_1` decimal(18,2) DEFAULT NULL,
  `cheques_1` int(11) DEFAULT NULL,
  `price_2` decimal(18,2) DEFAULT NULL,
  `cheques_2` int(11) DEFAULT NULL,
  `price_3` decimal(18,2) DEFAULT NULL,
  `cheques_3` int(11) DEFAULT NULL,
  `price_4` decimal(18,2) DEFAULT NULL,
  `cheques_4` int(11) DEFAULT NULL,
  `prop_status` int(11) DEFAULT NULL,
  `agent_rent_sold` int(11) DEFAULT NULL,
  `source_of_listing` int(11) DEFAULT NULL,
  `flcheck` int(11) DEFAULT NULL,
  `dewa_no` varchar(255) DEFAULT NULL,
  `strno` varchar(255) DEFAULT NULL,
  `available_date` datetime DEFAULT NULL,
  `remind_me` int(11) DEFAULT NULL,
  `key_location` varchar(255) DEFAULT NULL,
  `tenanted` int(11) DEFAULT NULL,
  `amount` decimal(18,2) DEFAULT NULL,
  `amount_date` datetime DEFAULT NULL,
  `maintenance` varchar(255) DEFAULT NULL,
  `unit_size_price_2` decimal(18,2) DEFAULT NULL,
  `notes` varchar(999) DEFAULT NULL,
  `leads_notes` varchar(999) DEFAULT NULL,
  `document_name` varchar(999) DEFAULT NULL,
  `terminal` int(3) DEFAULT NULL,
  `furnished` int(3) DEFAULT NULL,
  `development_unit_id` int(11) DEFAULT NULL,
  `price_of_application` int(5) DEFAULT NULL COMMENT 'Tick this box if you would like the price for the property to be hidden. If ticked, Price on application will display on the PDF brochures and the HTML preview for this property and a zero value will be sent in the XML  feeds to the portals',
  `is_international` tinyint(4) DEFAULT '0',
  `overall_score` decimal(5,2) NOT NULL DEFAULT '0.00',
  `media_score` decimal(5,2) NOT NULL DEFAULT '0.00',
  `address_score` decimal(5,2) NOT NULL DEFAULT '0.00',
  `description_score` decimal(5,2) NOT NULL DEFAULT '0.00',
  `price_score` decimal(5,2) NOT NULL DEFAULT '0.00',
  `beds_baths_score` decimal(5,2) NOT NULL DEFAULT '0.00',
  `facilities_score` decimal(5,2) NOT NULL DEFAULT '0.00',
  `price_diff` decimal(5,2) NOT NULL DEFAULT '0.00'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `crm_listings_versions_details`
--

INSERT INTO `crm_listings_versions_details` (`action`, `revision`, `dt_datetime`, `action_field`, `action_values`, `id`, `client_id`, `rand_key`, `type`, `ref`, `name`, `description_demo`, `description_count`, `beds`, `fitted`, `baths`, `unit`, `unit_type`, `size`, `plot_size`, `street_no`, `floor_no`, `parking`, `price`, `deposit`, `deposit_percentage`, `cheques`, `commission_percentage`, `commission`, `unit_size_price`, `frequency`, `dateadded`, `dateupdated`, `category_id`, `region_id`, `area_location_id`, `sub_area_location_id`, `view_id`, `prop_furnish`, `landlord_id`, `landlord_name`, `photos`, `portals_count`, `portals_name`, `othermedia_count`, `features_count`, `features_id`, `area_iformation_data`, `leads`, `viewings_count`, `add_info`, `agent_id`, `status`, `managed`, `exclusive`, `shared`, `created_by`, `updated_by`, `is_active`, `activitytime`, `is_archive`, `lat`, `lon`, `loc_description`, `cmp_description`, `other_languages`, `other_title_1`, `other_description_1`, `other_title_2`, `other_description_2`, `featured`, `refreshed`, `description_id`, `video_embed_code`, `360_embed_code`, `audio_embed_code`, `virtual_tour_embed_code`, `qr_code_link`, `pdf_brochure`, `video_path`, `video_path_upload`, `price_1`, `cheques_1`, `price_2`, `cheques_2`, `price_3`, `cheques_3`, `price_4`, `cheques_4`, `prop_status`, `agent_rent_sold`, `source_of_listing`, `flcheck`, `dewa_no`, `strno`, `available_date`, `remind_me`, `key_location`, `tenanted`, `amount`, `amount_date`, `maintenance`, `unit_size_price_2`, `notes`, `leads_notes`, `document_name`, `terminal`, `furnished`, `development_unit_id`, `price_of_application`, `is_international`, `overall_score`, `media_score`, `address_score`, `description_score`, `price_score`, `beds_baths_score`, `facilities_score`, `price_diff`) VALUES
('update', 1, '2016-03-20 14:18:31', 'name', 'Shams I BR Apt,Nice to Shams I BR Duplex,Nice', 5, 1743, '14518049792786538', 1, 'GIS-R-5', 'Shams I BR Apt,Nice', 'JBR, Shams 1 tower 2 units Apartment 1 bedroom Fully Furnished, upgraded Middle floor, 2 Balcony Courtyard View, 1 Parking Available from January 2016 Annual Rent AED 120,000/2 cheques Deposit 10% and count is 209mm', 35, '2', '', 2, '705', '', 1100, '', '444', '', 1, '12000500.00', '12000.00', '10.00', 1, '5.00', '6000.00', '109.09', '4', '2016-03-01 12:18:21', '2016-03-01 12:18:21', 1, 1, 19, 0, 'Courtyard', 0, 1, 'Muhammad Shafiq', 2, 8, '{dubizzle}{JustRentals}{JustProperty}{propertyfinder}{bayut}{GNproperty}{Zoopla}{rightmove}', 1, 3, '{17}{18}{25}', '', '0', 0, 'Available', 1, 2, '1', '1', '1', 1, 1, 1, '2016-03-20 09:28:41', 0, NULL, NULL, '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'http://youtube.com', '', '', '', '', '', '', '', '120000.00', 1, '0.00', NULL, '0.00', NULL, '0.00', NULL, 1, NULL, 0, NULL, 'DEWA123', 'Str123', '0000-00-00 00:00:00', 0, '', NULL, '2000.00', '0000-00-00 00:00:00', '200', '109.09', '', '', '', NULL, NULL, NULL, NULL, NULL, '74.43', '50.00', '66.00', '80.00', '75.00', '100.00', '75.00', '75.00'),
('update', 2, '2016-03-20 14:18:31', 'beds', '2 to 3', 5, 1743, '14518049792786538', 1, 'GIS-R-5', 'Shams I BR Apt,Nice', 'JBR, Shams 1 tower 2 units Apartment 1 bedroom Fully Furnished, upgraded Middle floor, 2 Balcony Courtyard View, 1 Parking Available from January 2016 Annual Rent AED 120,000/2 cheques Deposit 10% and count is 209mm', 35, '2', '', 2, '705', '', 1100, '', '444', '', 1, '12000500.00', '12000.00', '10.00', 1, '5.00', '6000.00', '109.09', '4', '2016-03-01 12:18:21', '2016-03-01 12:18:21', 1, 1, 19, 0, 'Courtyard', 0, 1, 'Muhammad Shafiq', 2, 8, '{dubizzle}{JustRentals}{JustProperty}{propertyfinder}{bayut}{GNproperty}{Zoopla}{rightmove}', 1, 3, '{17}{18}{25}', '', '0', 0, 'Available', 1, 2, '1', '1', '1', 1, 1, 1, '2016-03-20 09:28:41', 0, NULL, NULL, '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'http://youtube.com', '', '', '', '', '', '', '', '120000.00', 1, '0.00', NULL, '0.00', NULL, '0.00', NULL, 1, NULL, 0, NULL, 'DEWA123', 'Str123', '0000-00-00 00:00:00', 0, '', NULL, '2000.00', '0000-00-00 00:00:00', '200', '109.09', '', '', '', NULL, NULL, NULL, NULL, NULL, '74.43', '50.00', '66.00', '80.00', '75.00', '100.00', '75.00', '75.00'),
('update', 3, '2016-03-20 14:18:31', 'baths', '2 to 1', 5, 1743, '14518049792786538', 1, 'GIS-R-5', 'Shams I BR Apt,Nice', 'JBR, Shams 1 tower 2 units Apartment 1 bedroom Fully Furnished, upgraded Middle floor, 2 Balcony Courtyard View, 1 Parking Available from January 2016 Annual Rent AED 120,000/2 cheques Deposit 10% and count is 209mm', 35, '2', '', 2, '705', '', 1100, '', '444', '', 1, '12000500.00', '12000.00', '10.00', 1, '5.00', '6000.00', '109.09', '4', '2016-03-01 12:18:21', '2016-03-01 12:18:21', 1, 1, 19, 0, 'Courtyard', 0, 1, 'Muhammad Shafiq', 2, 8, '{dubizzle}{JustRentals}{JustProperty}{propertyfinder}{bayut}{GNproperty}{Zoopla}{rightmove}', 1, 3, '{17}{18}{25}', '', '0', 0, 'Available', 1, 2, '1', '1', '1', 1, 1, 1, '2016-03-20 09:28:41', 0, NULL, NULL, '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'http://youtube.com', '', '', '', '', '', '', '', '120000.00', 1, '0.00', NULL, '0.00', NULL, '0.00', NULL, 1, NULL, 0, NULL, 'DEWA123', 'Str123', '0000-00-00 00:00:00', 0, '', NULL, '2000.00', '0000-00-00 00:00:00', '200', '109.09', '', '', '', NULL, NULL, NULL, NULL, NULL, '74.43', '50.00', '66.00', '80.00', '75.00', '100.00', '75.00', '75.00'),
('update', 4, '2016-03-20 14:18:31', 'deposit', '12000.00 to 120000.00', 5, 1743, '14518049792786538', 1, 'GIS-R-5', 'Shams I BR Apt,Nice', 'JBR, Shams 1 tower 2 units Apartment 1 bedroom Fully Furnished, upgraded Middle floor, 2 Balcony Courtyard View, 1 Parking Available from January 2016 Annual Rent AED 120,000/2 cheques Deposit 10% and count is 209mm', 35, '2', '', 2, '705', '', 1100, '', '444', '', 1, '12000500.00', '12000.00', '10.00', 1, '5.00', '6000.00', '109.09', '4', '2016-03-01 12:18:21', '2016-03-01 12:18:21', 1, 1, 19, 0, 'Courtyard', 0, 1, 'Muhammad Shafiq', 2, 8, '{dubizzle}{JustRentals}{JustProperty}{propertyfinder}{bayut}{GNproperty}{Zoopla}{rightmove}', 1, 3, '{17}{18}{25}', '', '0', 0, 'Available', 1, 2, '1', '1', '1', 1, 1, 1, '2016-03-20 09:28:41', 0, NULL, NULL, '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'http://youtube.com', '', '', '', '', '', '', '', '120000.00', 1, '0.00', NULL, '0.00', NULL, '0.00', NULL, 1, NULL, 0, NULL, 'DEWA123', 'Str123', '0000-00-00 00:00:00', 0, '', NULL, '2000.00', '0000-00-00 00:00:00', '200', '109.09', '', '', '', NULL, NULL, NULL, NULL, NULL, '74.43', '50.00', '66.00', '80.00', '75.00', '100.00', '75.00', '75.00'),
('update', 5, '2016-03-20 14:18:31', 'price', '12000500.00 to 12000000.00', 5, 1743, '14518049792786538', 1, 'GIS-R-5', 'Shams I BR Apt,Nice', 'JBR, Shams 1 tower 2 units Apartment 1 bedroom Fully Furnished, upgraded Middle floor, 2 Balcony Courtyard View, 1 Parking Available from January 2016 Annual Rent AED 120,000/2 cheques Deposit 10% and count is 209mm', 35, '2', '', 2, '705', '', 1100, '', '444', '', 1, '12000500.00', '12000.00', '10.00', 1, '5.00', '6000.00', '109.09', '4', '2016-03-01 12:18:21', '2016-03-01 12:18:21', 1, 1, 19, 0, 'Courtyard', 0, 1, 'Muhammad Shafiq', 2, 8, '{dubizzle}{JustRentals}{JustProperty}{propertyfinder}{bayut}{GNproperty}{Zoopla}{rightmove}', 1, 3, '{17}{18}{25}', '', '0', 0, 'Available', 1, 2, '1', '1', '1', 1, 1, 1, '2016-03-20 09:28:41', 0, NULL, NULL, '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'http://youtube.com', '', '', '', '', '', '', '', '120000.00', 1, '0.00', NULL, '0.00', NULL, '0.00', NULL, 1, NULL, 0, NULL, 'DEWA123', 'Str123', '0000-00-00 00:00:00', 0, '', NULL, '2000.00', '0000-00-00 00:00:00', '200', '109.09', '', '', '', NULL, NULL, NULL, NULL, NULL, '74.43', '50.00', '66.00', '80.00', '75.00', '100.00', '75.00', '75.00'),
('update', 6, '2016-03-20 14:18:31', 'commission', '6000.00 to 120000.00', 5, 1743, '14518049792786538', 1, 'GIS-R-5', 'Shams I BR Apt,Nice', 'JBR, Shams 1 tower 2 units Apartment 1 bedroom Fully Furnished, upgraded Middle floor, 2 Balcony Courtyard View, 1 Parking Available from January 2016 Annual Rent AED 120,000/2 cheques Deposit 10% and count is 209mm', 35, '2', '', 2, '705', '', 1100, '', '444', '', 1, '12000500.00', '12000.00', '10.00', 1, '5.00', '6000.00', '109.09', '4', '2016-03-01 12:18:21', '2016-03-01 12:18:21', 1, 1, 19, 0, 'Courtyard', 0, 1, 'Muhammad Shafiq', 2, 8, '{dubizzle}{JustRentals}{JustProperty}{propertyfinder}{bayut}{GNproperty}{Zoopla}{rightmove}', 1, 3, '{17}{18}{25}', '', '0', 0, 'Available', 1, 2, '1', '1', '1', 1, 1, 1, '2016-03-20 10:21:27', 0, NULL, NULL, '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'http://youtube.com', '', '', '', '', '', '', '', '120000.00', 1, '0.00', NULL, '0.00', NULL, '0.00', NULL, 1, NULL, 0, NULL, 'DEWA123', 'Str123', '0000-00-00 00:00:00', 0, '', NULL, '2000.00', '0000-00-00 00:00:00', '200', '109.09', '', '', '', NULL, NULL, NULL, NULL, NULL, '74.43', '50.00', '66.00', '80.00', '75.00', '100.00', '75.00', '75.00'),
('update', 7, '2016-03-20 14:18:31', 'unit_size', '109.09 to 10909.09', 5, 1743, '14518049792786538', 1, 'GIS-R-5', 'Shams I BR Apt,Nice', 'JBR, Shams 1 tower 2 units Apartment 1 bedroom Fully Furnished, upgraded Middle floor, 2 Balcony Courtyard View, 1 Parking Available from January 2016 Annual Rent AED 120,000/2 cheques Deposit 10% and count is 209mm', 35, '2', '', 2, '705', '', 1100, '', '444', '', 1, '12000500.00', '12000.00', '10.00', 1, '5.00', '6000.00', '109.09', '4', '2016-03-01 12:18:21', '2016-03-01 12:18:21', 1, 1, 19, 0, 'Courtyard', 0, 1, 'Muhammad Shafiq', 2, 8, '{dubizzle}{JustRentals}{JustProperty}{propertyfinder}{bayut}{GNproperty}{Zoopla}{rightmove}', 1, 3, '{17}{18}{25}', '', '0', 0, 'Available', 1, 2, '1', '1', '1', 1, 1, 1, '2016-03-20 10:21:22', 0, NULL, NULL, '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'http://youtube.com', '', '', '', '', '', '', '', '120000.00', 1, '0.00', NULL, '0.00', NULL, '0.00', NULL, 1, NULL, 0, NULL, 'DEWA123', 'Str123', '0000-00-00 00:00:00', 0, '', NULL, '2000.00', '0000-00-00 00:00:00', '200', '109.09', '', '', '', NULL, NULL, NULL, NULL, NULL, '74.43', '50.00', '66.00', '80.00', '75.00', '100.00', '75.00', '75.00'),
('update', 8, '2016-03-20 14:18:31', 'category', '1 to 14', 5, 1743, '14518049792786538', 1, 'GIS-R-5', 'Shams I BR Apt,Nice', 'JBR, Shams 1 tower 2 units Apartment 1 bedroom Fully Furnished, upgraded Middle floor, 2 Balcony Courtyard View, 1 Parking Available from January 2016 Annual Rent AED 120,000/2 cheques Deposit 10% and count is 209mm', 35, '2', '', 2, '705', '', 1100, '', '444', '', 1, '12000500.00', '12000.00', '10.00', 1, '5.00', '6000.00', '109.09', '4', '2016-03-01 12:18:21', '2016-03-01 12:18:21', 1, 1, 19, 0, 'Courtyard', 0, 1, 'Muhammad Shafiq', 2, 8, '{dubizzle}{JustRentals}{JustProperty}{propertyfinder}{bayut}{GNproperty}{Zoopla}{rightmove}', 1, 3, '{17}{18}{25}', '', '0', 0, 'Available', 1, 2, '1', '1', '1', 1, 1, 1, '2016-03-20 09:28:41', 0, NULL, NULL, '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'http://youtube.com', '', '', '', '', '', '', '', '120000.00', 1, '0.00', NULL, '0.00', NULL, '0.00', NULL, 1, NULL, 0, NULL, 'DEWA123', 'Str123', '0000-00-00 00:00:00', 0, '', NULL, '2000.00', '0000-00-00 00:00:00', '200', '109.09', '', '', '', NULL, NULL, NULL, NULL, NULL, '74.43', '50.00', '66.00', '80.00', '75.00', '100.00', '75.00', '75.00'),
('update', 9, '2016-03-20 14:18:31', 'portals_', '8 to 7', 5, 1743, '14518049792786538', 1, 'GIS-R-5', 'Shams I BR Apt,Nice', 'JBR, Shams 1 tower 2 units Apartment 1 bedroom Fully Furnished, upgraded Middle floor, 2 Balcony Courtyard View, 1 Parking Available from January 2016 Annual Rent AED 120,000/2 cheques Deposit 10% and count is 209mm', 35, '2', '', 2, '705', '', 1100, '', '444', '', 1, '12000500.00', '12000.00', '10.00', 1, '5.00', '6000.00', '109.09', '4', '2016-03-01 12:18:21', '2016-03-01 12:18:21', 1, 1, 19, 0, 'Courtyard', 0, 1, 'Muhammad Shafiq', 2, 8, '{dubizzle}{JustRentals}{JustProperty}{propertyfinder}{bayut}{GNproperty}{Zoopla}{rightmove}', 1, 3, '{17}{18}{25}', '', '0', 0, 'Available', 1, 2, '1', '1', '1', 1, 1, 1, '2016-03-20 09:28:41', 0, NULL, NULL, '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'http://youtube.com', '', '', '', '', '', '', '', '120000.00', 1, '0.00', NULL, '0.00', NULL, '0.00', NULL, 1, NULL, 0, NULL, 'DEWA123', 'Str123', '0000-00-00 00:00:00', 0, '', NULL, '2000.00', '0000-00-00 00:00:00', '200', '109.09', '', '', '', NULL, NULL, NULL, NULL, NULL, '74.43', '50.00', '66.00', '80.00', '75.00', '100.00', '75.00', '75.00'),
('update', 10, '2016-03-20 14:18:31', 'features', '3 to 4', 5, 1743, '14518049792786538', 1, 'GIS-R-5', 'Shams I BR Apt,Nice', 'JBR, Shams 1 tower 2 units Apartment 1 bedroom Fully Furnished, upgraded Middle floor, 2 Balcony Courtyard View, 1 Parking Available from January 2016 Annual Rent AED 120,000/2 cheques Deposit 10% and count is 209mm', 35, '2', '', 2, '705', '', 1100, '', '444', '', 1, '12000500.00', '12000.00', '10.00', 1, '5.00', '6000.00', '109.09', '4', '2016-03-01 12:18:21', '2016-03-01 12:18:21', 1, 1, 19, 0, 'Courtyard', 0, 1, 'Muhammad Shafiq', 2, 8, '{dubizzle}{JustRentals}{JustProperty}{propertyfinder}{bayut}{GNproperty}{Zoopla}{rightmove}', 1, 3, '{17}{18}{25}', '', '0', 0, 'Available', 1, 2, '1', '1', '1', 1, 1, 1, '2016-03-20 09:28:41', 0, NULL, NULL, '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'http://youtube.com', '', '', '', '', '', '', '', '120000.00', 1, '0.00', NULL, '0.00', NULL, '0.00', NULL, 1, NULL, 0, NULL, 'DEWA123', 'Str123', '0000-00-00 00:00:00', 0, '', NULL, '2000.00', '0000-00-00 00:00:00', '200', '109.09', '', '', '', NULL, NULL, NULL, NULL, NULL, '74.43', '50.00', '66.00', '80.00', '75.00', '100.00', '75.00', '75.00');

-- --------------------------------------------------------

--
-- Table structure for table `crm_location`
--

CREATE TABLE IF NOT EXISTS `crm_location` (
`id` int(22) NOT NULL,
  `loc_id` int(44) NOT NULL,
  `loc_name` varchar(44) NOT NULL,
  `city_id` int(11) NOT NULL DEFAULT '1',
  `lon` varchar(32) NOT NULL,
  `lat` varchar(32) NOT NULL
) ENGINE=MyISAM AUTO_INCREMENT=639 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `crm_location`
--

INSERT INTO `crm_location` (`id`, `loc_id`, `loc_name`, `city_id`, `lon`, `lat`) VALUES
(111, 3599, 'Al Ain Industrial Area', 8, '24.1910343170166', '55.76400375366211'),
(112, 3600, 'Al Buraymi', 8, '24.255924224853516', '55.80317306518555'),
(113, 3602, 'Al Hili', 8, '24.284725189208984', '55.77458572387695'),
(114, 9047, 'Al Jahili', 8, '24.2144832611084', '55.75276184082031'),
(115, 3603, 'Al Jimi', 8, '24.243005752563477', '55.73196792602539'),
(116, 3604, 'Al Khabisi', 8, '24.233091354370117', '55.69717025756836'),
(117, 3605, 'Al Maqam', 8, '24.18678092956543', '55.626747131347656'),
(118, 3606, 'Al Markhaniya', 8, '24.22549819946289', '55.66693115234375'),
(119, 9050, 'Al Mutarad', 8, '24.218475341796875', '55.74152755737305'),
(120, 3607, 'Al Sinaiya', 8, '24.17731475830078', '55.763824462890625'),
(121, 9053, 'Al Oyoun Village', 8, '24.207500457763672', '55.744720458984375'),
(122, 3608, 'Al Tawiya', 8, '24.207500457763672', '55.744720458984375'),
(123, 25233, 'Falaj Hazza', 8, '24.19270133972168', '55.726070404052734'),
(124, 3609, 'Tawam', 8, '24.195581436157227', '55.650569915771484'),
(125, 3601, 'Al Faqa', 8, '24.708473205566406', '55.61439895629883'),
(126, 3610, 'Zakher', 8, '24.12479019165039', '55.65747833251953'),
(127, 8238, 'Academic City', 1, '25.116680145263672', '55.40651321411133'),
(128, 8845, 'Acacia Avenues', 1, '25.111597061157227', '55.17812728881836'),
(129, 6032, 'Akoya', 1, '25.026464462280273', '55.252689361572266'),
(130, 7420, 'Akoya Oxygen', 1, '25.27113914489746', '55.3074836730957'),
(131, 25312, 'Al Awir', 1, '25.177072525024414', '55.5457649230957'),
(132, 5981, 'Al Barari', 1, '25.099422454833984', '55.312965393066406'),
(133, 17, 'Al Barsha', 1, '25.11005210876465', '55.20235061645508'),
(134, 82, 'Al Furjan', 1, '25.02261734008789', '55.149349212646484'),
(135, 4924, 'Al Garhoud', 1, '25.240028381347656', '55.35029983520508'),
(136, 7480, 'Al Hamriya', 1, '25.27113914489746', '55.3074836730957'),
(137, 9483, 'Al Jaddaf', 1, '25.2203369140625', '55.326019287109375'),
(138, 5790, 'Al Jafiliya', 1, '25.239179611206055', '55.285011291503906'),
(139, 7297, 'Al Karama', 1, '25.27113914489746', '55.3074836730957'),
(140, 5780, 'Al Khawaneej', 1, '25.232772827148438', '55.50810241699219'),
(141, 6119, 'Al Khail Heights', 1, '25.135150909423828', '55.23310852050781'),
(142, 5684, 'Al Mamzar', 1, '25.27113914489746', '55.3074836730957'),
(143, 6573, 'Al Mizhar', 1, '25.27113914489746', '55.3074836730957'),
(144, 75, 'Al Nahda', 1, '25.29397964477539', '55.372039794921875'),
(145, 9298, 'Al Nahda 2', 1, '25.292478561401367', '55.37739181518555'),
(146, 76, 'Al Quoz', 1, '25.133975982666016', '55.23709487915039'),
(147, 6297, 'Al Qusais', 1, '25.28024673461914', '55.37329864501953'),
(148, 6067, 'Al Rashidiya', 1, '25.227460861206055', '55.391441345214844'),
(149, 72, 'Al Rigga', 1, '25.26053237915039', '55.323116302490234'),
(150, 7147, 'Al Safa', 1, '25.170459747314453', '55.232730865478516'),
(151, 5773, 'Al Sufouh', 1, '25.108779907226562', '55.16379928588867'),
(152, 6000, 'Al Twar', 1, '25.262004852294922', '55.37934494018555'),
(153, 5715, 'Al Warqaa', 1, '25.19182014465332', '55.40816879272461'),
(154, 5695, 'Al Warsan', 1, '25.27113914489746', '55.3074836730957'),
(155, 5709, 'Al Wasl', 1, '25.197301864624023', '55.254920959472656'),
(156, 12, 'Arabian Ranches', 1, '25.052946090698242', '55.270572662353516'),
(157, 8851, 'Arjan', 1, '25.27113914489746', '55.3074836730957'),
(158, 18, 'Bur Dubai', 1, '25.26026725769043', '55.30363082885742'),
(159, 13, 'Business Bay', 1, '25.183515548706055', '55.26667022705078'),
(160, 44, 'Deira', 1, '25.27501678466797', '55.3077507019043'),
(161, 4940, 'Culture Village', 1, '25.226667404174805', '55.3386116027832'),
(162, 36, 'DIFC', 1, '25.217649459838867', '55.28208541870117'),
(163, 14, 'Discovery Gardens', 1, '25.046348571777344', '55.135746002197266'),
(164, 24, 'Downtown Dubai', 1, '25.195234298706055', '55.27875518798828'),
(165, 6378, 'Downtown Jebel Ali', 1, '25.028606414794922', '55.12668228149414'),
(166, 9406, 'Dubai Creek Club Residences', 1, '25.27113914489746', '55.3074836730957'),
(167, 74, 'Dubai Healthcare City', 1, '25.237688064575195', '55.3206672668457'),
(168, 5814, 'Dubai Industrial City', 1, '24.85361099243164', '55.064720153808594'),
(169, 8779, 'Dubai Hills Estate', 1, '25.06974983215332', '55.16840362548828'),
(170, 79, 'Dubai Internet City', 1, '25.092653274536133', '55.15894317626953'),
(171, 70, 'Dubai Investment Park', 1, '25.008182525634766', '55.1567497253418'),
(172, 15, 'Dubai Marina', 1, '25.081228256225586', '55.143272399902344'),
(173, 78, 'Dubai Media City', 1, '25.101125717163086', '55.168853759765625'),
(174, 5911, 'Dubai Maritime City', 1, '25.266645431518555', '55.265907287597656'),
(175, 9469, 'Dubai Pearl', 1, '25.098670959472656', '55.16046142578125'),
(176, 5889, 'Dubai World Central', 1, '24.89778709411621', '55.14310073852539'),
(177, 6006, 'Dubai Studio City', 1, '25.041397094726562', '55.25285339355469'),
(178, 5745, 'Dubai Waterfront', 1, '24.9508056640625', '55.04973220825195'),
(179, 33, 'Dubailand', 1, '25.080358505249023', '55.329036712646484'),
(180, 6008, 'DuBiotech', 1, '25.076051712036133', '55.23973083496094'),
(181, 5795, 'Emirates Golf Course', 1, '25.089786529541016', '55.160614013671875'),
(182, 26, 'Emirates Hills', 1, '25.07025718688965', '55.167118072509766'),
(183, 5680, 'Festival City', 1, '25.27113914489746', '55.3074836730957'),
(184, 31, 'Green Community', 1, '24.99979591369629', '55.16166687011719'),
(185, 20, 'Greens', 1, '25.092023849487305', '55.16976547241211'),
(186, 54, 'IMPZ', 1, '25.03485107421875', '55.18209457397461'),
(187, 19, 'JBR', 1, '25.077070236206055', '55.130767822265625'),
(188, 27, 'International City', 1, '25.16798210144043', '55.398990631103516'),
(189, 73, 'Jebel Ali', 1, '24.967655181884766', '55.09051513671875'),
(190, 30, 'Jumeirah', 1, '25.20125961303711', '55.240116119384766'),
(191, 42, 'Jumeirah Golf Estates', 1, '25.021900177001953', '55.20152282714844'),
(192, 4916, 'Jumeirah Heights', 1, '25.064603805541992', '55.14661407470703'),
(193, 39, 'Jumeirah Islands', 1, '25.0578670501709', '55.155487060546875'),
(194, 22, 'Jumeirah Lake Towers', 1, '25.078147888183594', '55.148277282714844'),
(195, 40, 'Jumeirah Park', 1, '25.050962448120117', '55.1501579284668'),
(196, 53, 'Jumeirah Village Circle', 1, '25.058746337890625', '55.209388732910156'),
(197, 5712, 'Jumeirah Village Triangle', 1, '25.04725456237793', '55.18992614746094'),
(198, 6342, 'Majan', 1, '25.09772491455078', '55.31850814819336'),
(199, 34, 'Lakes', 1, '25.08002471923828', '55.169647216796875'),
(200, 25, 'Meadows', 1, '25.06761360168457', '55.15741729736328'),
(201, 5904, 'Meydan City', 1, '25.15899085998535', '55.294029235839844'),
(202, 37, 'Mirdiff', 1, '25.2191219329834', '55.40937423706055'),
(203, 6132, 'Mohammad Bin Rashid City', 1, '25.168222427368164', '55.27696228027344'),
(204, 47, 'Motor City', 1, '25.045061111450195', '55.24320602416992'),
(205, 5777, 'Muhaisnah', 1, '25.2421817779541', '55.41670608520508'),
(206, 35, 'Other', 1, '25.27113914489746', '55.3074836730957'),
(207, 5986, 'Nad Al Sheba', 1, '25.143545150756836', '55.3475341796875'),
(208, 23, 'Old Town', 1, '25.19300651550293', '55.276893615722656'),
(209, 5979, 'Nad Al Hamar', 1, '25.186634063720703', '55.37123107910156'),
(210, 7980, 'Oud Al Muteena', 1, '25.27113914489746', '55.3074836730957'),
(211, 9554, 'Oud Metha', 1, '25.27113914489746', '55.3074836730957'),
(212, 5758, 'Palm Jebel Ali', 1, '25.006000518798828', '54.98830032348633'),
(213, 5809, 'Pearl Jumeirah Island', 1, '25.245105743408203', '55.257686614990234'),
(214, 16, 'Palm Jumeirah', 1, '25.113208770751953', '55.13893127441406'),
(215, 5951, 'Ras Al Khor', 1, '25.195619583129883', '55.34379959106445'),
(216, 6004, 'Reem', 1, '25.004728317260742', '55.30267333984375'),
(217, 38, 'Satwa', 1, '25.220674514770508', '55.275821685791016'),
(218, 28, 'Sheikh Zayed Road', 1, '25.062252044677734', '55.130672454833984'),
(219, 55, 'Silicon Oasis', 1, '25.119354248046875', '55.377960205078125'),
(220, 43, 'Sports City', 1, '25.041704177856445', '55.21949005126953'),
(221, 6384, 'Technology Park', 1, '24.8968505859375', '55.06077194213867'),
(222, 21, 'Springs', 1, '25.057973861694336', '55.16780471801758'),
(223, 8131, 'TechnoPark', 1, '25.27113914489746', '55.3074836730957'),
(224, 48, 'TECOM', 1, '25.097623825073242', '55.17546844482422'),
(225, 8065, 'The Lagoons', 1, '25.19489860534668', '55.35946273803711'),
(226, 41, 'The Gardens', 1, '25.044132232666016', '55.12668991088867'),
(227, 6036, 'The Hills', 1, '25.27113914489746', '55.3074836730957'),
(228, 7570, 'The Views', 1, '25.09084129333496', '55.1703987121582'),
(229, 4934, 'The World Islands', 1, '25.220783233642578', '55.159950256347656'),
(230, 8689, 'The Villa', 1, '25.087425231933594', '55.36137008666992'),
(231, 9205, 'Town Square', 1, '25.192800521850586', '55.277713775634766'),
(232, 29, 'Umm Suqueim', 1, '25.158849716186523', '55.2092170715332'),
(233, 6064, 'Umm Ramool', 1, '25.23150062561035', '55.36962890625'),
(234, 32, 'Victory Heights', 1, '25.04099464416504', '55.209388732910156'),
(235, 68, 'World Trade Centre', 1, '25.22806167602539', '55.288429260253906'),
(236, 6753, 'Zabeel Road', 1, '25.251277923583984', '55.30946731567383'),
(237, 9656, 'AbuDhabi-Al Ain (Highway)', 2, '24.46666717529297', '54.366668701171875'),
(238, 1458, 'Al Aryam', 2, '24.46666717529297', '54.366668701171875'),
(239, 1457, 'Airport Road', 2, '24.46666717529297', '54.366668701171875'),
(240, 3532, 'Al Badaa', 2, '24.46666717529297', '54.366668701171875'),
(241, 3533, 'Al Bahia', 2, '24.46666717529297', '54.366668701171875'),
(242, 3534, 'Al Baraha', 2, '24.46666717529297', '54.366668701171875'),
(243, 1459, 'Al Barza', 2, '24.46666717529297', '54.366668701171875'),
(244, 3535, 'Al Bateen', 2, '24.44778823852539', '54.35723876953125'),
(245, 8489, 'Al Bateen Al Ain', 2, '24.217594146728516', '55.641212463378906'),
(246, 3536, 'Al Dhafrah', 2, '24.46666717529297', '54.366668701171875'),
(247, 3537, 'Al Falah City', 2, '24.46666717529297', '54.366668701171875'),
(248, 3538, 'Al Ghadeer', 2, '24.84292984008789', '55.02702713012695'),
(249, 9620, 'Al Gurm West', 2, '24.422954559326172', '54.401947021484375'),
(250, 1460, 'Al Hosn', 2, '24.46666717529297', '54.366668701171875'),
(251, 3539, 'Al Hudayriat Island', 2, '24.46666717529297', '54.366668701171875'),
(252, 3531, 'Abu Dhabi Gate City', 2, '24.46666717529297', '54.366668701171875'),
(253, 3540, 'Al Ittihad Road', 2, '24.46666717529297', '54.366668701171875'),
(254, 3541, 'Al Karamah', 2, '24.46666717529297', '54.366668701171875'),
(255, 3542, 'Al Khaleej Al Arabi Street', 2, '24.417377471923828', '54.435306549072266'),
(256, 3543, 'Al Khalidiya', 2, '24.469396591186523', '54.3488883972168'),
(257, 3544, 'Al Maffraq', 2, '24.46666717529297', '54.366668701171875'),
(258, 1461, 'Al Maha', 2, '24.46666717529297', '54.366668701171875'),
(259, 8139, 'Al Maharba', 2, '24.46666717529297', '54.366668701171875'),
(260, 3545, 'Al Manaseer', 2, '24.206634521484375', '55.73396301269531'),
(261, 3546, 'Al Manhal', 2, '24.46666717529297', '54.366668701171875'),
(262, 3547, 'Al Maqtaa', 2, '24.404817581176758', '54.502445220947266'),
(263, 1462, 'Al Markaz', 2, '24.46666717529297', '54.366668701171875'),
(264, 3548, 'Al Markaziyah', 2, '24.46666717529297', '54.366668701171875'),
(265, 1463, 'Al Mina', 2, '24.46666717529297', '54.366668701171875'),
(266, 1464, 'Al Muneera', 2, '24.46666717529297', '54.366668701171875'),
(267, 9286, 'Al Muntazah', 2, '24.428682327270508', '54.45977020263672'),
(268, 3549, 'Al Mushrif', 2, '24.46666717529297', '54.366668701171875'),
(269, 3550, 'Al Nahda Abu Dhabi', 2, '24.46666717529297', '54.366668701171875'),
(270, 1465, 'Al Nahyan', 2, '24.466583251953125', '54.383331298828125'),
(271, 3551, 'Al Nahyan Camp', 2, '24.46666717529297', '54.366668701171875'),
(272, 3552, 'Al Najda Street', 2, '24.488086700439453', '54.37165832519531'),
(273, 5992, 'Al Nasr Street', 2, '24.483179092407227', '54.3538932800293'),
(274, 3553, 'Al Qurm', 2, '24.46666717529297', '54.366668701171875'),
(275, 1466, 'Al Raha', 2, '24.46666717529297', '54.366668701171875'),
(276, 3554, 'Al Raha Beach', 2, '24.52238655090332', '54.629173278808594'),
(277, 3555, 'Al Raha Gardens', 2, '24.435171127319336', '54.571502685546875'),
(278, 3556, 'Al Raha Golf Gardens', 2, '24.420183181762695', '54.5325927734375'),
(279, 3557, 'Al Rahba', 2, '24.46666717529297', '54.366668701171875'),
(280, 3558, 'Al Rawdah', 2, '24.46666717529297', '54.366668701171875'),
(281, 3559, 'Al Reef', 2, '24.45594024658203', '54.67290496826172'),
(282, 1467, 'Al Reef Villas', 2, '24.45594024658203', '54.67290496826172'),
(283, 1468, 'Al Reem', 2, '24.492950439453125', '54.40727996826172'),
(284, 1469, 'Al Rehhan', 2, '24.46666717529297', '54.366668701171875'),
(285, 3560, 'Al Reem Island', 2, '24.492950439453125', '54.40727996826172'),
(286, 3561, 'Al Ruwais', 2, '24.46666717529297', '54.366668701171875'),
(287, 3563, 'Al Shahama', 2, '24.46666717529297', '54.366668701171875'),
(288, 6675, 'Al Safarat District', 2, '24.421693801879883', '54.435035705566406'),
(289, 3562, 'Al Samha', 2, '24.46666717529297', '54.366668701171875'),
(290, 3564, 'Al Shamkha', 2, '24.46666717529297', '54.366668701171875'),
(291, 3568, 'Al Zaab', 2, '24.46666717529297', '54.366668701171875'),
(292, 3565, 'Al Sowwah', 2, '24.46666717529297', '54.366668701171875'),
(293, 3567, 'Al Wathba', 2, '24.46666717529297', '54.366668701171875'),
(294, 25378, 'Al Zahraa', 2, '24.441225051879883', '54.43731689453125'),
(295, 1470, 'Arabian Village', 2, '24.46666717529297', '54.366668701171875'),
(296, 8585, 'Bain Al Jessrain', 2, '24.46666717529297', '54.366668701171875'),
(297, 3569, 'Baniyas', 2, '24.46666717529297', '54.366668701171875'),
(298, 3570, 'Between Two Bridges', 2, '24.40367889404297', '54.49455642700195'),
(299, 3571, 'Building Materials City', 2, '24.46666717529297', '54.366668701171875'),
(300, 8342, 'Capital Centre', 2, '24.419418334960938', '54.43971252441406'),
(301, 1471, 'Capital Plaza', 2, '24.46666717529297', '54.366668701171875'),
(302, 3572, 'City Downtown', 2, '24.46666717529297', '54.366668701171875'),
(303, 1472, 'Corniche', 2, '24.4886417388916', '54.35040283203125'),
(304, 3574, 'Corniche Road', 2, '24.46666717529297', '54.366668701171875'),
(305, 3573, 'Corniche Area', 2, '24.46666717529297', '54.366668701171875'),
(306, 1473, 'Delma Street', 2, '24.46666717529297', '54.366668701171875'),
(307, 3576, 'Defence Street', 2, '24.46666717529297', '54.366668701171875'),
(308, 3577, 'Desert Village', 2, '24.46666717529297', '54.366668701171875'),
(309, 3578, 'Eastern Road', 2, '24.450199127197266', '54.39842987060547'),
(310, 3579, 'Electra Street', 2, '24.489809036254883', '54.3681755065918'),
(311, 8945, 'Firdous Street', 2, '24.50387191772461', '54.37175369262695'),
(312, 3580, 'Ghantoot', 2, '24.46666717529297', '54.366668701171875'),
(313, 3581, 'Grand Mosque District', 2, '24.46666717529297', '54.366668701171875'),
(314, 1474, 'Hamdan Street', 2, '24.481735229492188', '54.35194778442383'),
(315, 3582, 'Hydra Village', 2, '24.547353744506836', '54.699920654296875'),
(316, 1476, 'Khalifa City (all)', 2, '24.422649383544922', '54.57831954956055'),
(317, 1475, 'Khalidia', 2, '24.47089958190918', '54.35203552246094'),
(318, 3583, 'Jawazat Street', 2, '24.46666717529297', '54.366668701171875'),
(319, 1477, 'Khalifa City A', 2, '24.422649383544922', '54.57831954956055'),
(320, 1478, 'Khalifa City B', 2, '24.371490478515625', '54.63488006591797'),
(321, 3575, 'Danet Abu Dhabi', 2, '24.431007385253906', '54.43400573730469'),
(322, 1479, 'Khalifa City C', 2, '24.388532638549805', '54.606040954589844'),
(323, 3584, 'Khalifa Street', 2, '24.490236282348633', '54.358734130859375'),
(324, 8301, 'Liwa Street', 2, '24.489646911621094', '54.35803985595703'),
(325, 3585, 'Lulu Island', 2, '24.49976921081543', '54.34181213378906'),
(326, 3586, 'Madinat Zayed', 2, '24.482545852661133', '54.364200592041016'),
(327, 3587, 'Marina Village', 2, '24.476856231689453', '54.31304168701172'),
(328, 3588, 'Masdar City', 2, '24.429645538330078', '54.615997314453125'),
(329, 3589, 'Mohamed Bin Zayed City', 2, '24.334909439086914', '54.551151275634766'),
(330, 1480, 'Mbz', 2, '24.46666717529297', '54.366668701171875'),
(331, 3590, 'Muroor Area', 2, '24.46666717529297', '54.366668701171875'),
(332, 3591, 'Mussafah', 2, '24.3320369720459', '54.514644622802734'),
(333, 1481, 'Musaffah Industrial Area', 2, '24.46666717529297', '54.366668701171875'),
(334, 1483, 'New Khalifa City', 2, '24.46666717529297', '54.366668701171875'),
(335, 5678, 'Officers Club Area', 2, '24.46666717529297', '54.366668701171875'),
(336, 3592, 'Nurai Island', 2, '24.61421012878418', '54.477291107177734'),
(337, 3594, 'Salam Street', 2, '24.455263137817383', '54.403446197509766'),
(338, 3593, 'Saadiyat Island', 2, '24.53228759765625', '54.44546890258789'),
(339, 3595, 'Sas Al Nakhl', 2, '24.442174911499023', '54.517066955566406'),
(340, 3596, 'Tourist Club Area', 2, '24.499116897583008', '54.377410888671875'),
(341, 8110, 'World Trade Center', 2, '24.48745346069336', '54.35714340209961'),
(342, 3598, 'Zayed Military City', 2, '24.500598907470703', '54.88941192626953'),
(343, 3597, 'Yas Island', 2, '24.49309539794922', '54.61475372314453'),
(344, 7501, 'Zayed Sports City', 2, '24.415414810180664', '54.45614242553711'),
(345, 1484, 'Officers City', 2, '24.46666717529297', '54.366668701171875'),
(346, 1773, 'Abu Shagara', 3, '25.357521057128906', '55.39186477661133'),
(347, 9497, 'Al Badie', 3, '25.357521057128906', '55.39186477661133'),
(348, 8107, 'Al Blaida Area', 3, '25.357521057128906', '55.39186477661133'),
(349, 3626, 'Al Barashi', 3, '25.357521057128906', '55.39186477661133'),
(350, 3627, 'Al Butina', 3, '25.357521057128906', '55.39186477661133'),
(351, 1776, 'Al Ettihad Street', 3, '25.357521057128906', '55.39186477661133'),
(352, 6771, 'Al Faisht', 3, '25.382755279541016', '55.405792236328125'),
(353, 6768, 'Al Falaj', 3, '25.35784149169922', '55.43370819091797'),
(354, 1777, 'Al Ghafeyah Area', 3, '25.357521057128906', '55.39186477661133'),
(355, 6543, 'Al Gharayen', 3, '25.298778533935547', '55.52019119262695'),
(356, 9614, 'Al Gharb', 3, '25.356630325317383', '55.39371109008789'),
(357, 6783, 'Al Goaz', 3, '25.353759765625', '55.44395446777344'),
(358, 25671, 'AL Hazannah', 3, '', ''),
(359, 9787, 'Al Heerah', 3, '25.357521057128906', '55.39186477661133'),
(360, 3628, 'Al Jubail', 3, '25.357521057128906', '55.39186477661133'),
(361, 6750, 'Al Azra', 3, '25.370201110839844', '55.444541931152344'),
(362, 1779, 'Al Khaldeia Area', 3, '25.357521057128906', '55.39186477661133'),
(363, 3629, 'Al Khan', 3, '25.357521057128906', '55.39186477661133'),
(364, 1781, 'Al Khezamia', 3, '25.357521057128906', '55.39186477661133'),
(365, 3630, 'Al Majaz', 3, '25.357521057128906', '55.39186477661133'),
(366, 1784, 'Al Mareija', 3, '25.357521057128906', '55.39186477661133'),
(367, 1783, 'Al Mamzar - Sharjah', 3, '25.357521057128906', '55.39186477661133'),
(368, 8071, 'AL Mujarrah', 3, '25.365816116333008', '55.39158248901367'),
(369, 1785, 'Al Nahda Sharjah', 3, '25.357521057128906', '55.39186477661133'),
(370, 1789, 'Al Nujoom Islands', 3, '25.357521057128906', '55.39186477661133'),
(371, 1786, 'Al Naimiya Area', 3, '25.357521057128906', '55.39186477661133'),
(372, 1787, 'Al Nekhailat', 3, '25.357521057128906', '55.39186477661133'),
(373, 3631, 'Al Nouf', 3, '25.357521057128906', '55.39186477661133'),
(374, 1790, 'Al Qasbaa', 3, '25.357521057128906', '55.39186477661133'),
(375, 1791, 'Al Qasemiya', 3, '25.357521057128906', '55.39186477661133'),
(376, 3633, 'Al Ramla', 3, '25.357521057128906', '55.39186477661133'),
(377, 25633, 'Al Rahmaniya', 3, '', ''),
(378, 3634, 'Al Shahba', 3, '25.357521057128906', '55.39186477661133'),
(379, 1793, 'Al Riffa Area', 3, '25.335092544555664', '55.453548431396484'),
(380, 6774, 'Al Sharq', 3, '25.36903953552246', '55.39699935913086'),
(381, 1795, 'Al Taawon', 3, '25.308320999145508', '55.369384765625'),
(382, 1797, 'Cornich Al Buhaira', 3, '25.327503204345703', '55.37863540649414'),
(383, 1796, 'Al Wahda', 3, '25.319658279418945', '55.38575744628906'),
(384, 3637, 'Halwan', 3, '25.357521057128906', '55.39186477661133'),
(385, 1799, 'Hamriyah Free Zone', 3, '25.44333267211914', '55.55002975463867'),
(386, 3638, 'Maysaloon', 3, '25.357521057128906', '55.39186477661133'),
(387, 1802, 'Rolla Area', 3, '25.35692596435547', '55.38912582397461'),
(388, 3639, 'Muelih', 3, '25.357521057128906', '55.39186477661133'),
(389, 9572, 'Mughaider', 3, '25.331472396850586', '55.45242691040039'),
(390, 1803, 'Sharjah Airport Freezone (SAIF)', 3, '25.328458786010742', '55.51250457763672'),
(391, 1804, 'Sharjah Industrial Area', 3, '25.306142807006836', '55.433509826660156'),
(392, 8274, 'Tilal City', 3, '25.357521057128906', '55.39186477661133'),
(393, 3640, 'Wasit', 3, '25.357521057128906', '55.39186477661133'),
(394, 1805, 'Umm Khanoor', 3, '25.380430221557617', '55.432228088378906'),
(455, 3614, 'Musheiref', 6, '25.40302276611328', '55.491798400878906'),
(454, 3613, 'Muehat', 6, '25.40302276611328', '55.491798400878906'),
(453, 1835, 'Marmooka City', 6, '25.40302276611328', '55.491798400878906'),
(452, 3612, 'Manama', 6, '25.33061408996582', '56.02790069580078'),
(451, 1823, 'Al Ameera Village', 6, '25.40302276611328', '55.491798400878906'),
(450, 1833, 'Green City', 6, '25.40302276611328', '55.491798400878906'),
(449, 6264, 'Garden City', 6, '25.4043025970459', '55.50761413574219'),
(448, 1832, 'Emirates City', 6, '25.40302276611328', '55.491798400878906'),
(447, 1831, 'Corniche Ajman', 6, '25.40302276611328', '55.491798400878906'),
(446, 1830, 'Awali City', 6, '25.40302276611328', '55.491798400878906'),
(445, 8232, 'Al Zorah', 6, '25.40302276611328', '55.491798400878906'),
(444, 3611, 'Al Zahraa', 6, '25.40302276611328', '55.491798400878906'),
(443, 1828, 'Al Rumaila', 6, '25.40302276611328', '55.491798400878906'),
(442, 1827, 'Al Rashidiya', 6, '25.40302276611328', '55.491798400878906'),
(441, 1826, 'Al Naemiyah', 6, '25.384265899658203', '55.45044708251953'),
(440, 1825, 'Al Ittihad Village', 6, '25.40302276611328', '55.491798400878906'),
(439, 1824, 'Al Humaid City', 6, '25.40302276611328', '55.491798400878906'),
(438, 7246, 'Al Bustan', 6, '25.41246223449707', '55.44854736328125'),
(437, 1822, 'Ajman Uptown', 6, '25.40302276611328', '55.491798400878906'),
(436, 1821, 'Ajman Meadows', 6, '25.40302276611328', '55.491798400878906'),
(435, 1820, 'Ajman Marina', 6, '25.40302276611328', '55.491798400878906'),
(434, 1818, 'Ajman Downtown', 6, '25.40302276611328', '55.491798400878906'),
(433, 1819, 'Ajman Industrial Area', 6, '25.40302276611328', '55.491798400878906'),
(432, 1817, 'Ajman Corniche Road', 6, '25.40302276611328', '55.491798400878906'),
(431, 1343, 'Ajman Boulevard', 6, '25.40302276611328', '55.491798400878906'),
(430, 1816, 'Ain Ajman', 6, '25.40302276611328', '55.491798400878906'),
(456, 1839, 'Park View City', 6, '25.40302276611328', '55.491798400878906'),
(457, 1838, 'New Industrial Area', 6, '25.40302276611328', '55.491798400878906'),
(458, 6495, 'Sheikh Khalifa Bin Zayed', 6, '25.40302276611328', '55.491798400878906'),
(459, 3531, 'Abu Dhabi Gate City', 6, '24.46666717529297', '54.366668701171875'),
(460, 1458, 'Al Aryam', 6, '24.46666717529297', '54.366668701171875'),
(461, 9656, 'AbuDhabi-Al Ain (Highway)', 6, '24.46666717529297', '54.366668701171875'),
(462, 1457, 'Airport Road', 6, '24.46666717529297', '54.366668701171875'),
(463, 3532, 'Al Badaa', 6, '24.46666717529297', '54.366668701171875'),
(464, 3533, 'Al Bahia', 6, '24.46666717529297', '54.366668701171875'),
(465, 3534, 'Al Baraha', 6, '24.46666717529297', '54.366668701171875'),
(466, 8489, 'Al Bateen Al Ain', 6, '24.217594146728516', '55.641212463378906'),
(467, 1459, 'Al Barza', 6, '24.46666717529297', '54.366668701171875'),
(468, 3535, 'Al Bateen', 6, '24.44778823852539', '54.35723876953125'),
(469, 3536, 'Al Dhafrah', 6, '24.46666717529297', '54.366668701171875'),
(470, 3537, 'Al Falah City', 6, '24.46666717529297', '54.366668701171875'),
(471, 3538, 'Al Ghadeer', 6, '24.84292984008789', '55.02702713012695'),
(472, 3539, 'Al Hudayriat Island', 6, '24.46666717529297', '54.366668701171875'),
(473, 1460, 'Al Hosn', 6, '24.46666717529297', '54.366668701171875'),
(474, 9620, 'Al Gurm West', 6, '24.422954559326172', '54.401947021484375'),
(475, 3540, 'Al Ittihad Road', 6, '24.46666717529297', '54.366668701171875'),
(476, 3541, 'Al Karamah', 6, '24.46666717529297', '54.366668701171875'),
(477, 3542, 'Al Khaleej Al Arabi Street', 6, '24.417377471923828', '54.435306549072266'),
(478, 1461, 'Al Maha', 6, '24.46666717529297', '54.366668701171875'),
(479, 3543, 'Al Khalidiya', 6, '24.469396591186523', '54.3488883972168'),
(480, 3544, 'Al Maffraq', 6, '24.46666717529297', '54.366668701171875'),
(481, 8139, 'Al Maharba', 6, '24.46666717529297', '54.366668701171875'),
(482, 3545, 'Al Manaseer', 6, '24.206634521484375', '55.73396301269531'),
(483, 3546, 'Al Manhal', 6, '24.46666717529297', '54.366668701171875'),
(484, 3548, 'Al Markaziyah', 6, '24.46666717529297', '54.366668701171875'),
(485, 1462, 'Al Markaz', 6, '24.46666717529297', '54.366668701171875'),
(486, 3547, 'Al Maqtaa', 6, '24.404817581176758', '54.502445220947266'),
(487, 1463, 'Al Mina', 6, '24.46666717529297', '54.366668701171875'),
(488, 1464, 'Al Muneera', 6, '24.46666717529297', '54.366668701171875'),
(489, 9286, 'Al Muntazah', 6, '24.428682327270508', '54.45977020263672'),
(490, 1465, 'Al Nahyan', 6, '24.466583251953125', '54.383331298828125'),
(491, 3549, 'Al Mushrif', 6, '24.46666717529297', '54.366668701171875'),
(492, 3550, 'Al Nahda Abu Dhabi', 6, '24.46666717529297', '54.366668701171875'),
(493, 3551, 'Al Nahyan Camp', 6, '24.46666717529297', '54.366668701171875'),
(494, 3552, 'Al Najda Street', 6, '24.488086700439453', '54.37165832519531'),
(495, 5992, 'Al Nasr Street', 6, '24.483179092407227', '54.3538932800293'),
(496, 3553, 'Al Qurm', 6, '24.46666717529297', '54.366668701171875'),
(497, 3555, 'Al Raha Gardens', 6, '24.435171127319336', '54.571502685546875'),
(498, 1466, 'Al Raha', 6, '24.46666717529297', '54.366668701171875'),
(499, 3554, 'Al Raha Beach', 6, '24.52238655090332', '54.629173278808594'),
(500, 3556, 'Al Raha Golf Gardens', 6, '24.420183181762695', '54.5325927734375'),
(501, 3557, 'Al Rahba', 6, '24.46666717529297', '54.366668701171875'),
(502, 3558, 'Al Rawdah', 6, '24.46666717529297', '54.366668701171875'),
(503, 1468, 'Al Reem', 6, '24.492950439453125', '54.40727996826172'),
(504, 3559, 'Al Reef', 6, '24.45594024658203', '54.67290496826172'),
(505, 1467, 'Al Reef Villas', 6, '24.45594024658203', '54.67290496826172'),
(506, 3560, 'Al Reem Island', 6, '24.492950439453125', '54.40727996826172'),
(507, 1469, 'Al Rehhan', 6, '24.46666717529297', '54.366668701171875'),
(508, 3561, 'Al Ruwais', 6, '24.46666717529297', '54.366668701171875'),
(509, 3563, 'Al Shahama', 6, '24.46666717529297', '54.366668701171875'),
(510, 6675, 'Al Safarat District', 6, '24.421693801879883', '54.435035705566406'),
(511, 3562, 'Al Samha', 6, '24.46666717529297', '54.366668701171875'),
(512, 3564, 'Al Shamkha', 6, '24.46666717529297', '54.366668701171875'),
(513, 3565, 'Al Sowwah', 6, '24.46666717529297', '54.366668701171875'),
(514, 3567, 'Al Wathba', 6, '24.46666717529297', '54.366668701171875'),
(515, 1470, 'Arabian Village', 6, '24.46666717529297', '54.366668701171875'),
(516, 3568, 'Al Zaab', 6, '24.46666717529297', '54.366668701171875'),
(517, 25378, 'Al Zahraa', 6, '24.441225051879883', '54.43731689453125'),
(518, 8585, 'Bain Al Jessrain', 6, '24.46666717529297', '54.366668701171875'),
(519, 3569, 'Baniyas', 6, '24.46666717529297', '54.366668701171875'),
(520, 3570, 'Between Two Bridges', 6, '24.40367889404297', '54.49455642700195'),
(521, 1471, 'Capital Plaza', 6, '24.46666717529297', '54.366668701171875'),
(522, 3571, 'Building Materials City', 6, '24.46666717529297', '54.366668701171875'),
(523, 8342, 'Capital Centre', 6, '24.419418334960938', '54.43971252441406'),
(524, 3572, 'City Downtown', 6, '24.46666717529297', '54.366668701171875'),
(525, 1472, 'Corniche', 6, '24.4886417388916', '54.35040283203125'),
(526, 3573, 'Corniche Area', 6, '24.46666717529297', '54.366668701171875'),
(527, 3576, 'Defence Street', 6, '24.46666717529297', '54.366668701171875'),
(528, 3574, 'Corniche Road', 6, '24.46666717529297', '54.366668701171875'),
(529, 3575, 'Danet Abu Dhabi', 6, '24.431007385253906', '54.43400573730469'),
(530, 1473, 'Delma Street', 6, '24.46666717529297', '54.366668701171875'),
(531, 3577, 'Desert Village', 6, '24.46666717529297', '54.366668701171875'),
(532, 3578, 'Eastern Road', 6, '24.450199127197266', '54.39842987060547'),
(533, 3579, 'Electra Street', 6, '24.489809036254883', '54.3681755065918'),
(534, 3581, 'Grand Mosque District', 6, '24.46666717529297', '54.366668701171875'),
(535, 8945, 'Firdous Street', 6, '24.50387191772461', '54.37175369262695'),
(536, 3580, 'Ghantoot', 6, '24.46666717529297', '54.366668701171875'),
(537, 1474, 'Hamdan Street', 6, '24.481735229492188', '54.35194778442383'),
(538, 3582, 'Hydra Village', 6, '24.547353744506836', '54.699920654296875'),
(539, 3583, 'Jawazat Street', 6, '24.46666717529297', '54.366668701171875'),
(540, 1477, 'Khalifa City A', 6, '24.422649383544922', '54.57831954956055'),
(541, 1476, 'Khalifa City (all)', 6, '24.422649383544922', '54.57831954956055'),
(542, 1475, 'Khalidia', 6, '24.47089958190918', '54.35203552246094'),
(543, 1478, 'Khalifa City B', 6, '24.371490478515625', '54.63488006591797'),
(544, 1479, 'Khalifa City C', 6, '24.388532638549805', '54.606040954589844'),
(545, 3584, 'Khalifa Street', 6, '24.490236282348633', '54.358734130859375'),
(546, 3586, 'Madinat Zayed', 6, '24.482545852661133', '54.364200592041016'),
(547, 8301, 'Liwa Street', 6, '24.489646911621094', '54.35803985595703'),
(548, 3585, 'Lulu Island', 6, '24.49976921081543', '54.34181213378906'),
(549, 3587, 'Marina Village', 6, '24.476856231689453', '54.31304168701172'),
(550, 3588, 'Masdar City', 6, '24.429645538330078', '54.615997314453125'),
(551, 1480, 'Mbz', 6, '24.46666717529297', '54.366668701171875'),
(552, 1481, 'Musaffah Industrial Area', 6, '24.46666717529297', '54.366668701171875'),
(553, 3589, 'Mohamed Bin Zayed City', 6, '24.334909439086914', '54.551151275634766'),
(554, 3590, 'Muroor Area', 6, '24.46666717529297', '54.366668701171875'),
(555, 3591, 'Mussafah', 6, '24.3320369720459', '54.514644622802734'),
(556, 1483, 'New Khalifa City', 6, '24.46666717529297', '54.366668701171875'),
(557, 3592, 'Nurai Island', 6, '24.61421012878418', '54.477291107177734'),
(558, 3593, 'Saadiyat Island', 6, '24.53228759765625', '54.44546890258789'),
(559, 5678, 'Officers Club Area', 6, '24.46666717529297', '54.366668701171875'),
(560, 1484, 'Officers City', 6, '24.46666717529297', '54.366668701171875'),
(561, 3594, 'Salam Street', 6, '24.455263137817383', '54.403446197509766'),
(562, 3595, 'Sas Al Nakhl', 6, '24.442174911499023', '54.517066955566406'),
(563, 3596, 'Tourist Club Area', 6, '24.499116897583008', '54.377410888671875'),
(564, 3598, 'Zayed Military City', 6, '24.500598907470703', '54.88941192626953'),
(565, 8110, 'World Trade Center', 6, '24.48745346069336', '54.35714340209961'),
(566, 3597, 'Yas Island', 6, '24.49309539794922', '54.61475372314453'),
(567, 7501, 'Zayed Sports City', 6, '24.415414810180664', '54.45614242553711'),
(568, 1816, 'Ain Ajman', 4, '25.40302276611328', '55.491798400878906'),
(569, 1818, 'Ajman Downtown', 4, '25.40302276611328', '55.491798400878906'),
(570, 1343, 'Ajman Boulevard', 4, '25.40302276611328', '55.491798400878906'),
(571, 1819, 'Ajman Industrial Area', 4, '25.40302276611328', '55.491798400878906'),
(572, 1817, 'Ajman Corniche Road', 4, '25.40302276611328', '55.491798400878906'),
(573, 1822, 'Ajman Uptown', 4, '25.40302276611328', '55.491798400878906'),
(574, 7246, 'Al Bustan', 4, '25.41246223449707', '55.44854736328125'),
(575, 1820, 'Ajman Marina', 4, '25.40302276611328', '55.491798400878906'),
(576, 1821, 'Ajman Meadows', 4, '25.40302276611328', '55.491798400878906'),
(577, 1824, 'Al Humaid City', 4, '25.40302276611328', '55.491798400878906'),
(578, 1823, 'Al Ameera Village', 4, '25.40302276611328', '55.491798400878906'),
(579, 3611, 'Al Zahraa', 4, '25.40302276611328', '55.491798400878906'),
(580, 1826, 'Al Naemiyah', 4, '25.384265899658203', '55.45044708251953'),
(581, 1825, 'Al Ittihad Village', 4, '25.40302276611328', '55.491798400878906'),
(582, 1827, 'Al Rashidiya', 4, '25.40302276611328', '55.491798400878906'),
(583, 1828, 'Al Rumaila', 4, '25.40302276611328', '55.491798400878906'),
(584, 8232, 'Al Zorah', 4, '25.40302276611328', '55.491798400878906'),
(585, 1832, 'Emirates City', 4, '25.40302276611328', '55.491798400878906'),
(586, 1833, 'Green City', 4, '25.40302276611328', '55.491798400878906'),
(587, 1830, 'Awali City', 4, '25.40302276611328', '55.491798400878906'),
(588, 1831, 'Corniche Ajman', 4, '25.40302276611328', '55.491798400878906'),
(589, 6264, 'Garden City', 4, '25.4043025970459', '55.50761413574219'),
(590, 3612, 'Manama', 4, '25.33061408996582', '56.02790069580078'),
(591, 3614, 'Musheiref', 4, '25.40302276611328', '55.491798400878906'),
(592, 1838, 'New Industrial Area', 4, '25.40302276611328', '55.491798400878906'),
(593, 1835, 'Marmooka City', 4, '25.40302276611328', '55.491798400878906'),
(594, 3613, 'Muehat', 4, '25.40302276611328', '55.491798400878906'),
(595, 1839, 'Park View City', 4, '25.40302276611328', '55.491798400878906'),
(596, 6495, 'Sheikh Khalifa Bin Zayed', 4, '25.40302276611328', '55.491798400878906'),
(597, 1813, 'Emirates Modern Industrial', 5, '25.548791885375977', '55.68280029296875'),
(598, 1812, 'Al Salam City', 5, '25.513233184814453', '55.56908416748047'),
(599, 6333, 'Amwaj Resort', 5, '25.602367401123047', '55.57946014404297'),
(600, 1810, 'Khor Al Beidah', 5, '25.513233184814453', '55.56908416748047'),
(601, 1811, 'Umm Al Quwain Marina', 5, '25.525901794433594', '55.59627914428711'),
(602, 3641, 'White Bay', 5, '25.513233184814453', '55.56908416748047'),
(603, 9082, 'Al Dhaith', 5, '25.80069351196289', '55.976200103759766'),
(604, 1442, 'Al Hamra (all)', 5, '25.80069351196289', '55.976200103759766'),
(605, 1443, 'Al Marjan Island', 5, '25.682655334472656', '55.748878479003906'),
(606, 3615, 'Al Hamra Village', 5, '25.691869735717773', '55.785118103027344'),
(607, 6047, 'Al Qusaidat', 5, '25.760059356689453', '55.97623825073242'),
(608, 8507, 'Al Nakheel', 5, '25.79032325744629', '55.97553253173828'),
(609, 1444, 'Bab Al Bahr', 5, '25.80069351196289', '55.976200103759766'),
(610, 5994, 'Al Seer', 5, '25.798282623291016', '55.973453521728516'),
(611, 1445, 'Cove', 5, '25.80069351196289', '55.976200103759766'),
(612, 3616, 'Cornich Ras Al Khaima', 5, '25.80069351196289', '55.976200103759766'),
(613, 3617, 'Dana Island', 5, '24.598920822143555', '54.5156135559082'),
(614, 8716, 'Cove Rotana', 5, '25.737104415893555', '55.888187408447266'),
(615, 1446, 'Golf Apartments', 5, '25.80069351196289', '55.976200103759766'),
(616, 1447, 'Granada', 5, '25.80069351196289', '55.976200103759766'),
(617, 1448, 'Julfar', 5, '25.80069351196289', '55.976200103759766'),
(618, 1449, 'Julfar Office', 5, '25.80069351196289', '55.976200103759766'),
(619, 9653, 'Khuzam', 5, '25.80069351196289', '55.976200103759766'),
(620, 1450, 'Julfar Residential', 5, '25.80069351196289', '55.976200103759766'),
(621, 1451, 'Luxury B Villa', 5, '25.80069351196289', '55.976200103759766'),
(622, 1452, 'Luxury C Villa', 5, '25.80069351196289', '55.976200103759766'),
(623, 1453, 'Malibu', 5, '25.80069351196289', '55.976200103759766'),
(624, 1454, 'Marina Apartments', 5, '25.80069351196289', '55.976200103759766'),
(625, 3618, 'Mina Al Arab', 5, '25.723295211791992', '55.842132568359375'),
(626, 1455, 'Oceana Apartments', 5, '25.80069351196289', '55.976200103759766'),
(627, 3620, 'RAK Industrial And Technology Park', 5, '25.80069351196289', '55.976200103759766'),
(628, 3619, 'RAK Financial City', 5, '25.80069351196289', '55.976200103759766'),
(629, 3621, 'Ras Al Khaimah Creek', 5, '25.80069351196289', '55.976200103759766'),
(630, 3622, 'Ras Al Khaimah Gateway', 5, '25.80069351196289', '55.976200103759766'),
(631, 3623, 'Ras Al Khaimah Waterfront', 5, '25.80069351196289', '55.976200103759766'),
(632, 1456, 'Royal Breeze Villas', 5, '25.80069351196289', '55.976200103759766'),
(633, 3624, 'Saraya Islands', 5, '25.80069351196289', '55.976200103759766'),
(634, 8184, 'Sheikh Mohammed Bin Zayed Road', 5, '25.80069351196289', '55.976200103759766'),
(635, 3625, 'Yasmin Village', 5, '25.80069351196289', '55.976200103759766'),
(636, 1809, 'Corniche Al Fujairah', 7, '25.619253158569336', '56.273983001708984'),
(637, 1807, 'Downtown Fujairah', 7, '25.117387771606445', '56.352569580078125'),
(638, 1808, 'Sheikh Hamad Bin Abdullah St', 7, '25.117387771606445', '56.352569580078125');

-- --------------------------------------------------------

--
-- Table structure for table `crm_locations_text`
--

CREATE TABLE IF NOT EXISTS `crm_locations_text` (
`id` int(11) NOT NULL,
  `region_id` int(11) NOT NULL,
  `area_location_id` int(11) NOT NULL,
  `sub_area_location_id` int(11) NOT NULL,
  `description` longtext NOT NULL,
  `created_by` int(11) NOT NULL,
  `dateadded` datetime NOT NULL,
  `dateupdated` datetime NOT NULL,
  `client_id` int(11) NOT NULL,
  `listing_type` int(2) NOT NULL DEFAULT '1' COMMENT '1=rent,2=sale'
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `crm_locations_text`
--

INSERT INTO `crm_locations_text` (`id`, `region_id`, `area_location_id`, `sub_area_location_id`, `description`, `created_by`, `dateadded`, `dateupdated`, `client_id`, `listing_type`) VALUES
(1, 1, 7297, 0, 'dsdfaasf', 1, '2015-12-06 09:58:48', '2015-12-06 09:58:48', 0, 1),
(2, 1, 9483, 0, 'fsddff', 1, '2015-12-06 10:08:10', '2015-12-06 10:08:10', 0, 1),
(3, 1, 6032, 6630, 'subloc test', 1, '2015-12-06 10:13:07', '2015-12-06 10:13:07', 0, 1),
(4, 1, 4924, 0, 'This is text for al garhoud', 1, '2015-12-17 11:40:26', '2015-12-17 11:40:26', 0, 1);

-- --------------------------------------------------------

--
-- Table structure for table `crm_loginhistory`
--

CREATE TABLE IF NOT EXISTS `crm_loginhistory` (
`id` int(11) NOT NULL,
  `status` tinyint(4) NOT NULL COMMENT '0=login,1=logout',
  `activitytime` datetime NOT NULL,
  `user_id` int(11) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=22 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `crm_loginhistory`
--

INSERT INTO `crm_loginhistory` (`id`, `status`, `activitytime`, `user_id`) VALUES
(1, 0, '2016-03-10 11:58:09', 1),
(2, 0, '2016-03-10 15:00:11', 1),
(3, 0, '2016-03-13 14:49:24', 1),
(4, 0, '2016-03-13 15:15:48', 1),
(5, 0, '2016-03-13 15:36:32', 1),
(6, 0, '2016-03-14 10:13:29', 1),
(7, 0, '2016-03-14 10:24:34', 1),
(8, 0, '2016-03-14 14:38:41', 1),
(9, 0, '2016-03-15 10:42:23', 1),
(10, 0, '2016-03-16 11:07:55', 1),
(11, 0, '2016-03-16 12:23:09', 1),
(12, 0, '2016-03-17 10:53:18', 1),
(13, 0, '2016-03-17 17:39:57', 1),
(14, 0, '2016-03-19 11:33:58', 1),
(15, 0, '2016-03-19 14:07:31', 1),
(16, 0, '2016-03-20 10:03:58', 1),
(17, 0, '2016-03-20 14:17:02', 1),
(18, 0, '2016-03-20 17:19:56', 1),
(19, 0, '2016-03-20 17:25:51', 1),
(20, 0, '2016-03-21 10:30:58', 1),
(21, 0, '2016-03-21 15:31:40', 1);

-- --------------------------------------------------------

--
-- Table structure for table `crm_notices`
--

CREATE TABLE IF NOT EXISTS `crm_notices` (
`id` int(11) NOT NULL,
  `client_id` int(11) NOT NULL,
  `notice` text NOT NULL,
  `user_id` int(11) NOT NULL,
  `is_active` tinyint(4) NOT NULL DEFAULT '1',
  `dateadded` datetime DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `crm_notices`
--

INSERT INTO `crm_notices` (`id`, `client_id`, `notice`, `user_id`, `is_active`, `dateadded`) VALUES
(1, 1000000, '<p>first compay notice</p>', 1, 1, '2016-02-25 11:50:53'),
(2, 1000000, '<p>second try</p>', 1, 1, '2016-02-25 11:52:22'),
(3, 1000000, '<p>Third try</p>', 1, 1, '2016-02-25 11:53:23');

-- --------------------------------------------------------

--
-- Table structure for table `crm_notices_documents`
--

CREATE TABLE IF NOT EXISTS `crm_notices_documents` (
`id` int(11) NOT NULL,
  `client_id` int(11) DEFAULT NULL,
  `title` varchar(255) DEFAULT NULL,
  `file_name` varchar(255) DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  `dateadded` datetime DEFAULT NULL,
  `file_type` varchar(255) DEFAULT NULL,
  `file_size` varchar(255) DEFAULT NULL,
  `is_active` tinyint(4) NOT NULL DEFAULT '1'
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `crm_notices_documents`
--

INSERT INTO `crm_notices_documents` (`id`, `client_id`, `title`, `file_name`, `user_id`, `dateadded`, `file_type`, `file_size`, `is_active`) VALUES
(1, 1000000, 'test', '920c0b21-bc70-4d4f-95e8-b34a98a86905.jpg', 1, '2016-02-25 14:23:37', 'jpeg', '83.18', 1),
(2, 1000000, 'second', '03d4a052-acfc-44cf-8fbd-93ac104ad14f.jpg', 1, '2016-02-25 14:31:47', 'jpeg', '83.18', 1);

-- --------------------------------------------------------

--
-- Table structure for table `crm_owners`
--

CREATE TABLE IF NOT EXISTS `crm_owners` (
`id` int(20) NOT NULL,
  `rand_key` varchar(555) NOT NULL,
  `client_id` int(11) NOT NULL,
  `auto` int(3) DEFAULT NULL COMMENT '1=YES,0=No',
  `ref` varchar(222) NOT NULL,
  `title` varchar(555) DEFAULT NULL,
  `name` varchar(555) NOT NULL,
  `last_name` varchar(555) DEFAULT NULL,
  `gender` int(5) DEFAULT NULL,
  `mobile_no_new_ccode` varchar(33) DEFAULT NULL,
  `mobile_no_new` varchar(555) DEFAULT NULL,
  `mobile_no_new_ccode_2` varchar(33) DEFAULT NULL,
  `mobile_2` varchar(55) DEFAULT NULL,
  `mobile_no_new_ccode_3` varchar(33) DEFAULT NULL,
  `mobile_3` varchar(55) DEFAULT NULL,
  `c_code_phone_1` varchar(55) DEFAULT NULL,
  `phone` varchar(33) DEFAULT NULL,
  `c_code_phone_2` varchar(33) DEFAULT NULL,
  `phone_2` varchar(555) DEFAULT NULL,
  `c_code_phone_3` int(33) DEFAULT NULL,
  `phone_3` varchar(55) DEFAULT NULL,
  `email` varchar(555) DEFAULT NULL,
  `email_2` varchar(555) DEFAULT NULL,
  `email_3` varchar(33) DEFAULT NULL,
  `c_code_fax` varchar(555) DEFAULT NULL,
  `fax` varchar(22) DEFAULT NULL,
  `c_code_fax_2` varchar(33) DEFAULT NULL,
  `fax_2` varchar(22) DEFAULT NULL,
  `c_code_fax_3` varchar(33) DEFAULT NULL,
  `fax_3` varchar(555) DEFAULT NULL,
  `dateadded` date NOT NULL,
  `dateupdated` date NOT NULL,
  `created_by` int(11) NOT NULL,
  `agent_id` int(11) NOT NULL,
  `is_active` int(2) NOT NULL DEFAULT '1',
  `activitytime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `company` varchar(555) DEFAULT NULL,
  `address_line_1` varchar(555) DEFAULT NULL,
  `address_line_2` varchar(555) DEFAULT NULL,
  `address_city` varchar(555) DEFAULT NULL,
  `address_zip_po_box` varchar(22) DEFAULT NULL,
  `address2_zip_po_box` varchar(299) DEFAULT NULL,
  `address_state` varchar(22) DEFAULT NULL,
  `address_country` varchar(555) DEFAULT NULL,
  `assigned_to_id` int(11) NOT NULL,
  `notes` text,
  `contact_type` varchar(555) DEFAULT NULL COMMENT 'Tenant=1,Buyer=2,Landlord=3,Seller=4,Landlord+Seller=5,Representative of Tenant=6,Other=7',
  `is_subscribe` int(11) NOT NULL DEFAULT '1',
  `nationality_new` varchar(555) DEFAULT NULL,
  `nationality` varchar(255) DEFAULT NULL,
  `nationality_1` varchar(255) DEFAULT NULL,
  `dob` date DEFAULT NULL,
  `religion` varchar(555) DEFAULT NULL,
  `native_language` varchar(555) DEFAULT NULL,
  `language1` varchar(255) DEFAULT NULL,
  `second_language` varchar(255) DEFAULT NULL,
  `hobbies` varchar(999) DEFAULT NULL,
  `address` varchar(999) DEFAULT NULL,
  `address2` varchar(999) DEFAULT NULL,
  `designation` varchar(555) DEFAULT NULL,
  `website` varchar(555) DEFAULT NULL,
  `facebook` varchar(255) DEFAULT NULL,
  `twitter` varchar(555) DEFAULT NULL,
  `linkedin` varchar(555) DEFAULT NULL,
  `googleplus` varchar(999) DEFAULT NULL,
  `instagram` varchar(999) DEFAULT NULL,
  `wechat` varchar(999) DEFAULT NULL,
  `skype` varchar(555) DEFAULT NULL,
  `source_of_contact` varchar(555) DEFAULT NULL,
  `po_box` varchar(255) DEFAULT NULL,
  `address2_city` varchar(299) DEFAULT NULL,
  `address2_state` varchar(999) DEFAULT NULL,
  `address2_country` varchar(299) DEFAULT NULL,
  `address2_line_1` varchar(299) DEFAULT NULL,
  `address2_line_2` varchar(299) DEFAULT NULL,
  `address2_po_box` varchar(299) DEFAULT NULL
) ENGINE=MyISAM AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `crm_owners`
--

INSERT INTO `crm_owners` (`id`, `rand_key`, `client_id`, `auto`, `ref`, `title`, `name`, `last_name`, `gender`, `mobile_no_new_ccode`, `mobile_no_new`, `mobile_no_new_ccode_2`, `mobile_2`, `mobile_no_new_ccode_3`, `mobile_3`, `c_code_phone_1`, `phone`, `c_code_phone_2`, `phone_2`, `c_code_phone_3`, `phone_3`, `email`, `email_2`, `email_3`, `c_code_fax`, `fax`, `c_code_fax_2`, `fax_2`, `c_code_fax_3`, `fax_3`, `dateadded`, `dateupdated`, `created_by`, `agent_id`, `is_active`, `activitytime`, `company`, `address_line_1`, `address_line_2`, `address_city`, `address_zip_po_box`, `address2_zip_po_box`, `address_state`, `address_country`, `assigned_to_id`, `notes`, `contact_type`, `is_subscribe`, `nationality_new`, `nationality`, `nationality_1`, `dob`, `religion`, `native_language`, `language1`, `second_language`, `hobbies`, `address`, `address2`, `designation`, `website`, `facebook`, `twitter`, `linkedin`, `googleplus`, `instagram`, `wechat`, `skype`, `source_of_contact`, `po_box`, `address2_city`, `address2_state`, `address2_country`, `address2_line_1`, `address2_line_2`, `address2_po_box`) VALUES
(1, '14541449997869280', 1743, 1, 'GIS-O-1', 'Mr', 'Muhammad', 'Shafiq', 0, '971', '509569607', NULL, '', NULL, '', '971', '4344343', NULL, '', NULL, '', 'muhammad.royalhome@gmail.com', '', '', NULL, '', NULL, '', NULL, '', '2015-12-28', '2016-02-02', 1, 1, 1, '2015-12-28 12:59:21', '', '', '', '', '', NULL, '', '', 16, 'there is my first notes', '1', 1, '', '', '', '0000-00-00', '', '', '', '', '', '', '', '', '', '', '', '', NULL, NULL, NULL, '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(2, '14541449997869284', 1743, NULL, 'GIS-O-2', 'Mr', 'Abdul', 'Ali', 1, '971', '552493424', '971', '3444343', '971', '55286493', '971', '4344343', '971', '232367767', 971, '486592', 'muhammad.royalhome@gmail.com', 'engrshafiq@royalhome.ae', 'e@gmail.com', '971', '', '971', '', '971', '2649', '2016-01-10', '2016-01-10', 1, 1, 1, '2016-01-10 07:46:28', 'royalhome', 'dubai line1', 'dubai line 2', 'dubai', '3423', NULL, 'dubai', 'Albania', 16, 'there is my first notes', '2', 1, 'Uganda', 'Uganda', 'Albania', '0000-00-00', 'Islam', 'Arabic', 'Arabic', 'Armenian', 'Badminton, Fishing', 'P.O.Box:2342, \r\nDubai Line1, \r\nDubai Line 2, \r\nZip Code:3423, \r\nCity:Dubai, \r\nState:Dubai \r\nCountry:Albania \r\n', 'P.O.Box:123, \r\nAddress Work Line1, \r\nAddress Work Line2, \r\nZip Code:4567, \r\nCity:Dubai, \r\nState:Dubai \r\nCountry:American Samoa \r\n', 'Developer', 'royalhome.ae', 'facebook.com', 'twitter.com', 'linked.com', NULL, NULL, NULL, 'skypeid', '7 days', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(3, '14541449997869281', 1743, NULL, 'GIS-O-3', 'Mr', 'Muhammad', 'Aamir', 1, '971', '552494565', '971', '', '971', '', '971', '63598414', '971', '', 971, '', 'engrshafiq4@gmail.com', '', '', '971', '', '971', '', '971', '', '2016-01-25', '2016-01-25', 1, 1, 1, '2016-01-25 08:34:07', 'company here', 'dubai here', 'address line 2', 'dubai', '123432', NULL, 'dubia', 'Afghanistan', 40, 'notes here', '3', 1, 'Afghanistan', 'Afghanistan', 'Algeria', '2016-01-26', 'Tenrikyo', 'Bengali', 'Bengali', 'Arabic', 'Collecting Artwork, Crafts', 'P.O.Box:35628, \r\nDubai Here, \r\nAddress Line 2, \r\nZip Code:123432, \r\nCity:Dubai, \r\nState:Dubia \r\nCountry:Afghanistan \r\n', '                                    \r\n                                  ', 'developer', 'royalhome.ae', 'facebook.com', 'twitter.com', 'linkedin.com', NULL, NULL, NULL, 'skypejere', 'Arab Times', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(4, '14541449997869280', 1743, NULL, 'GIS-O-4', NULL, 'Maria', 'Shafiq', NULL, '971', '55024932344', NULL, NULL, NULL, NULL, '971', '049326954959', NULL, NULL, NULL, NULL, 'muhammad.royalhome@gmail.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2016-01-30', '2016-01-30', 1, 29, 1, '2016-01-30 09:09:59', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 40, 'This is notes', '1', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Bayut.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(5, '14541450928930425', 1743, NULL, 'GIS-O-5', NULL, 'Maria', 'Shafiq', NULL, '971', '55024932344', NULL, NULL, NULL, NULL, '971', '049326954959', NULL, NULL, NULL, NULL, 'muhammad.royalhome@gmail.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2016-01-30', '2016-01-30', 1, 29, 1, '2016-01-30 09:11:32', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 40, 'This is notes', '1', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Bayut.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `crm_pm_accounts`
--

CREATE TABLE IF NOT EXISTS `crm_pm_accounts` (
`id` bigint(20) NOT NULL,
  `ref` varchar(55) NOT NULL,
  `rand_key` varchar(255) NOT NULL,
  `leaseId` bigint(20) NOT NULL,
  `unitId` bigint(20) NOT NULL,
  `transactiontype` int(11) NOT NULL,
  `type` int(11) NOT NULL,
  `subtype` int(11) NOT NULL,
  `from` int(11) NOT NULL,
  `to` int(11) NOT NULL,
  `amount` decimal(18,2) NOT NULL,
  `mode` int(11) NOT NULL,
  `status` int(11) NOT NULL,
  `memo` varchar(256) NOT NULL,
  `activitytime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `dateupdated` datetime NOT NULL,
  `dateadded` datetime NOT NULL,
  `created_by` int(8) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `crm_pm_accounts`
--

INSERT INTO `crm_pm_accounts` (`id`, `ref`, `rand_key`, `leaseId`, `unitId`, `transactiontype`, `type`, `subtype`, `from`, `to`, `amount`, `mode`, `status`, `memo`, `activitytime`, `dateupdated`, `dateadded`, `created_by`) VALUES
(5, 'GIS-TR-0001', '14578555464016382', 8, 5, 1, 4, 4, 4, 1, '4990.00', 4, 1, 'Test%25252BMemo', '2016-03-20 10:06:36', '2016-03-13 09:35:52', '2016-03-13 08:03:00', 0);

-- --------------------------------------------------------

--
-- Table structure for table `crm_pm_accounts_notes`
--

CREATE TABLE IF NOT EXISTS `crm_pm_accounts_notes` (
`id` int(8) NOT NULL,
  `accountId` bigint(20) NOT NULL,
  `note` varchar(256) NOT NULL,
  `activitytime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `datecreated` datetime NOT NULL,
  `created_by` int(11) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `crm_pm_accounts_notes`
--

INSERT INTO `crm_pm_accounts_notes` (`id`, `accountId`, `note`, `activitytime`, `datecreated`, `created_by`) VALUES
(1, 5, 'Test Note, please ignore', '2016-03-13 09:34:49', '2016-03-13 10:34:49', 1),
(2, 5, 'What is dead may never die.', '2016-03-13 09:37:29', '2016-03-13 10:37:29', 1),
(3, 5, 'Winter is coming.', '2016-03-13 09:38:03', '2016-03-13 10:38:03', 1),
(4, 5, 'The Dornishman''s wife', '2016-03-20 07:05:16', '2016-03-20 08:05:16', 1);

-- --------------------------------------------------------

--
-- Table structure for table `crm_pm_landlords`
--

CREATE TABLE IF NOT EXISTS `crm_pm_landlords` (
`id` bigint(20) NOT NULL,
  `ref` varchar(55) NOT NULL,
  `rand_key` varchar(255) NOT NULL,
  `salutation` int(1) NOT NULL,
  `title` int(1) NOT NULL,
  `firstname` varchar(64) NOT NULL,
  `lastname` varchar(64) NOT NULL,
  `nationality` varchar(32) NOT NULL,
  `dob` date NOT NULL,
  `countrycode1` varchar(8) NOT NULL,
  `mobilenumber1` varchar(16) NOT NULL,
  `countrycode2` varchar(8) NOT NULL,
  `mobilenumber2` varchar(16) NOT NULL,
  `countrycode3` varchar(8) NOT NULL,
  `mobilenumber3` varchar(16) NOT NULL,
  `email` varchar(32) NOT NULL,
  `activitytime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `dateupdated` datetime NOT NULL,
  `dateadded` datetime NOT NULL,
  `created_by` int(8) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `crm_pm_landlords`
--

INSERT INTO `crm_pm_landlords` (`id`, `ref`, `rand_key`, `salutation`, `title`, `firstname`, `lastname`, `nationality`, `dob`, `countrycode1`, `mobilenumber1`, `countrycode2`, `mobilenumber2`, `countrycode3`, `mobilenumber3`, `email`, `activitytime`, `dateupdated`, `dateadded`, `created_by`) VALUES
(3, 'GIS-LA-0001', '14579494191092587', 1, 2, 'Oberyn', 'Martell', 'Antarctica', '2016-03-14', '971', '56484948', '971', '56484948', '', '', 'obmartell@sunspear.com', '2016-03-17 14:02:30', '2016-03-17 15:02:30', '0000-00-00 00:00:00', 0),
(4, 'GIS-LA-0002', '', 1, 3, 'Petyr', 'Baelish', 'Andorra', '2016-03-15', '1', '0505050', '376', '0500500', '', '', 'pbaelish@fingers.net', '2016-03-19 08:19:31', '2016-03-19 09:19:31', '0000-00-00 00:00:00', 0);

-- --------------------------------------------------------

--
-- Table structure for table `crm_pm_landlords_notes`
--

CREATE TABLE IF NOT EXISTS `crm_pm_landlords_notes` (
`id` int(8) NOT NULL,
  `landlordId` bigint(20) NOT NULL,
  `note` varchar(256) NOT NULL,
  `activitytime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `datecreated` datetime NOT NULL,
  `created_by` int(11) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `crm_pm_landlords_notes`
--

INSERT INTO `crm_pm_landlords_notes` (`id`, `landlordId`, `note`, `activitytime`, `datecreated`, `created_by`) VALUES
(1, 3, 'This is a note', '2016-03-15 10:27:16', '2016-03-15 11:27:16', 1),
(2, 3, 'This is a note as well.', '2016-03-15 10:27:47', '2016-03-15 11:27:47', 1),
(3, 3, 'Well, another note!', '2016-03-15 10:28:26', '2016-03-15 11:28:26', 1),
(5, 3, 'Another one!', '2016-03-15 10:29:29', '2016-03-15 11:29:29', 1),
(6, 4, 'Littlefinger', '2016-03-15 11:16:24', '2016-03-15 12:16:24', 1);

-- --------------------------------------------------------

--
-- Table structure for table `crm_pm_leases`
--

CREATE TABLE IF NOT EXISTS `crm_pm_leases` (
`id` bigint(20) unsigned NOT NULL,
  `client_id` int(11) NOT NULL,
  `rand_key` varchar(255) NOT NULL,
  `ref` varchar(55) NOT NULL,
  `unitId` varchar(55) NOT NULL,
  `tenantId` bigint(20) NOT NULL,
  `startdate` date NOT NULL,
  `enddate` date NOT NULL,
  `leaseamount` decimal(18,2) NOT NULL,
  `fees_percentage` decimal(18,2) NOT NULL,
  `fees_amount` decimal(18,2) NOT NULL,
  `deposit_percentage` decimal(18,2) NOT NULL,
  `deposit_amount` decimal(18,2) NOT NULL,
  `commission` decimal(18,2) NOT NULL,
  `paymentmode` int(11) NOT NULL,
  `paymentterm` int(11) NOT NULL,
  `cheques` int(11) NOT NULL,
  `sourcetenancy` int(11) NOT NULL,
  `depositheldby` int(11) NOT NULL,
  `ejaristatus` int(11) NOT NULL,
  `ejarinumber` int(11) NOT NULL,
  `reminder` int(11) NOT NULL,
  `created_by` int(11) NOT NULL,
  `activitytime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `dateadded` datetime NOT NULL,
  `dateupdated` datetime NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `crm_pm_leases`
--

INSERT INTO `crm_pm_leases` (`id`, `client_id`, `rand_key`, `ref`, `unitId`, `tenantId`, `startdate`, `enddate`, `leaseamount`, `fees_percentage`, `fees_amount`, `deposit_percentage`, `deposit_amount`, `commission`, `paymentmode`, `paymentterm`, `cheques`, `sourcetenancy`, `depositheldby`, `ejaristatus`, `ejarinumber`, `reminder`, `created_by`, `activitytime`, `dateadded`, `dateupdated`) VALUES
(8, 0, '', 'GIS-LE-0001', '8', 1, '2016-03-20', '2016-04-23', '15000.00', '2.00', '2000.00', '5.00', '5000.00', '2300.00', 1, 1, 4, 1, 2, 1, 567685, 3, 1, '2016-03-20 13:48:33', '2016-03-10 08:06:49', '2016-03-20 14:33:27'),
(9, 0, '', 'GIS-LE-0002', '8', 2, '2016-04-20', '2016-04-23', '5000.00', '2.00', '2500.00', '5.00', '5000.00', '3540.00', 1, 1, 3, 1, 1, 1, 4054522, 3, 1, '2016-03-20 13:28:38', '2016-03-20 14:28:38', '2016-03-20 14:28:38'),
(10, 0, '', 'GIS-LE-0003', '8', 3, '2016-03-19', '2016-03-20', '25000.00', '2.00', '25000.00', '5.00', '200.00', '25000.00', 2, 1, 2, 1, 1, 1, 505245, 1, 1, '2016-03-21 05:45:00', '2016-03-21 06:45:00', '2016-03-21 06:45:00');

-- --------------------------------------------------------

--
-- Table structure for table `crm_pm_lease_documents`
--

CREATE TABLE IF NOT EXISTS `crm_pm_lease_documents` (
`id` bigint(20) NOT NULL,
  `leaseId` int(11) NOT NULL,
  `filename` int(11) NOT NULL,
  `activitytime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `datecreated` datetime NOT NULL,
  `created_by` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `crm_pm_lease_notes`
--

CREATE TABLE IF NOT EXISTS `crm_pm_lease_notes` (
`id` int(8) NOT NULL,
  `leaseId` int(8) NOT NULL,
  `note` varchar(256) NOT NULL,
  `activitytime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `datecreated` datetime NOT NULL,
  `created_by` int(11) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `crm_pm_lease_notes`
--

INSERT INTO `crm_pm_lease_notes` (`id`, `leaseId`, `note`, `activitytime`, `datecreated`, `created_by`) VALUES
(7, 7, 'Tenant is moving on the 12th', '2016-03-06 09:29:46', '2016-03-06 13:26:00', 0),
(8, 7, 'Tenant moved in', '2016-03-06 09:29:50', '2016-03-06 13:26:01', 0),
(9, 7, 'Tenant requested a repainting of the bedroom', '2016-03-06 09:29:53', '2016-03-06 13:26:02', 0),
(10, 7, 'Tenant broke the chandelier', '2016-03-06 09:29:55', '2016-03-06 13:26:05', 0),
(11, 7, 'Tenant broke the chandelier', '2016-03-06 09:29:58', '2016-03-06 13:26:07', 0),
(12, 7, 'Tenant paid for the broken light', '2016-03-06 09:30:01', '2016-03-06 13:26:08', 0),
(13, 7, 'Tenant requesting for new faucet', '2016-03-06 09:30:05', '2016-03-06 13:26:15', 0),
(14, 7, 'Tenant broke the door', '2016-03-06 09:30:08', '2016-03-06 13:26:30', 0),
(15, 8, 'The quick brown fox jumps over the lazy dog.', '2016-03-10 07:08:51', '2016-03-10 08:08:51', 1),
(16, 8, 'The lazy dog sleeps as the quick brown fox jumps over it.', '2016-03-20 08:53:13', '2016-03-20 09:53:13', 1);

-- --------------------------------------------------------

--
-- Table structure for table `crm_pm_serviceproviders`
--

CREATE TABLE IF NOT EXISTS `crm_pm_serviceproviders` (
`id` int(11) unsigned NOT NULL,
  `ref` varchar(16) NOT NULL,
  `rand_key` int(11) NOT NULL,
  `serviceprovidername` varchar(128) NOT NULL,
  `type` int(11) NOT NULL,
  `subtypes` varchar(32) NOT NULL,
  `firstname` varchar(64) NOT NULL,
  `lastname` varchar(64) NOT NULL,
  `countrycode1` int(11) NOT NULL,
  `mobilenumber1` varchar(8) NOT NULL,
  `email` varchar(64) NOT NULL,
  `address` varchar(128) NOT NULL,
  `activitytime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `dateadded` datetime NOT NULL,
  `dateupdated` datetime NOT NULL,
  `created_by` int(11) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `crm_pm_serviceproviders`
--

INSERT INTO `crm_pm_serviceproviders` (`id`, `ref`, `rand_key`, `serviceprovidername`, `type`, `subtypes`, `firstname`, `lastname`, `countrycode1`, `mobilenumber1`, `email`, `address`, `activitytime`, `dateadded`, `dateupdated`, `created_by`) VALUES
(1, 'GIS-SP-0001', 0, 'Deco Farm', 1, '2', 'Karen', 'Paige', 971, '50464848', 'karen.paige@nelsonandmurdock.ae', 'Office 101, Amwaj 4, JBR', '2016-03-21 08:00:58', '2016-03-17 14:57:39', '2016-03-21 09:00:58', 0),
(2, 'GIS-SP-0002', 2147483647, 'Home Experts', 2, '3', 'Aemon', 'Targeryen', 971, '50464848', 'aemonthedemon@homeexperts.ae', 'Office 101, Amwaj 4, JBR', '2016-03-19 07:40:47', '2016-03-19 08:40:47', '2016-03-19 08:40:47', 1);

-- --------------------------------------------------------

--
-- Table structure for table `crm_pm_serviceproviders_notes`
--

CREATE TABLE IF NOT EXISTS `crm_pm_serviceproviders_notes` (
`id` int(8) NOT NULL,
  `serviceproviderId` bigint(20) NOT NULL,
  `note` varchar(256) NOT NULL,
  `activitytime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `datecreated` datetime NOT NULL,
  `created_by` int(11) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `crm_pm_serviceproviders_notes`
--

INSERT INTO `crm_pm_serviceproviders_notes` (`id`, `serviceproviderId`, `note`, `activitytime`, `datecreated`, `created_by`) VALUES
(1, 1, 'The Dornishman''s wife', '2016-03-20 07:09:00', '2016-03-20 08:09:00', 1),
(2, 1, 'was as fair as the sun', '2016-03-20 07:16:59', '2016-03-20 08:16:59', 1),
(3, 1, 'and it''s kiss was as warm as the spring', '2016-03-20 07:17:36', '2016-03-20 08:17:36', 1);

-- --------------------------------------------------------

--
-- Table structure for table `crm_pm_tenants`
--

CREATE TABLE IF NOT EXISTS `crm_pm_tenants` (
`id` bigint(20) NOT NULL,
  `ref` varchar(55) NOT NULL,
  `rand_key` varchar(255) NOT NULL,
  `salutation` int(1) NOT NULL,
  `title` int(1) NOT NULL,
  `firstname` varchar(64) NOT NULL,
  `lastname` varchar(64) NOT NULL,
  `nationality` varchar(32) NOT NULL,
  `dob` date NOT NULL,
  `countrycode1` varchar(8) NOT NULL,
  `mobilenumber1` varchar(16) NOT NULL,
  `countrycode2` varchar(8) NOT NULL,
  `mobilenumber2` varchar(16) NOT NULL,
  `countrycode3` varchar(8) NOT NULL,
  `mobilenumber3` varchar(16) NOT NULL,
  `email` varchar(128) NOT NULL,
  `activitytime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `dateupdated` datetime NOT NULL,
  `dateadded` datetime NOT NULL,
  `created_by` int(8) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `crm_pm_tenants`
--

INSERT INTO `crm_pm_tenants` (`id`, `ref`, `rand_key`, `salutation`, `title`, `firstname`, `lastname`, `nationality`, `dob`, `countrycode1`, `mobilenumber1`, `countrycode2`, `mobilenumber2`, `countrycode3`, `mobilenumber3`, `email`, `activitytime`, `dateupdated`, `dateadded`, `created_by`) VALUES
(1, 'GIS-LA-0001', '', 2, 1, 'Myrcella', 'Lannister', 'Bermuda', '2016-03-15', '213', '056050', '376', '056506506', '376', '211412', 'myrcella.baratheon@kingslanding.', '2016-03-19 08:19:55', '2016-03-19 09:19:55', '0000-00-00 00:00:00', 0),
(2, 'GIS-TE-0002', '', 1, 0, 'Foggy', 'Nelson', 'United States', '2016-03-20', '213', '0650650', '', '', '', '', 'foggy.nelson@nelsonandmurdock.com', '2016-03-20 13:18:12', '2016-03-20 14:18:12', '2016-03-20 14:18:12', 1),
(3, 'GIS-TE-0003', '', 1, 0, 'Matt', 'Murdock', 'American Samoa', '2016-03-21', '213', '0505050', '', '', '', '', '', '2016-03-21 05:32:51', '2016-03-21 06:32:51', '2016-03-21 06:32:51', 1);

-- --------------------------------------------------------

--
-- Table structure for table `crm_pm_units`
--

CREATE TABLE IF NOT EXISTS `crm_pm_units` (
`id` bigint(20) unsigned NOT NULL,
  `client_id` int(11) NOT NULL,
  `rand_key` varchar(255) NOT NULL,
  `type` int(3) NOT NULL DEFAULT '1' COMMENT '1=rent,2=sale',
  `ref` varchar(55) NOT NULL,
  `name` mediumtext NOT NULL,
  `description_demo` longtext NOT NULL,
  `description_count` int(11) NOT NULL,
  `beds` varchar(22) NOT NULL,
  `fitted` varchar(11) NOT NULL,
  `baths` int(11) NOT NULL DEFAULT '1',
  `unit` varchar(55) NOT NULL,
  `unit_type` varchar(22) NOT NULL,
  `size` int(11) NOT NULL,
  `plot_size` varchar(33) NOT NULL,
  `street_no` varchar(22) NOT NULL,
  `floor_no` varchar(22) NOT NULL,
  `parking` int(11) NOT NULL DEFAULT '0',
  `price` decimal(18,2) NOT NULL,
  `deposit` decimal(18,2) NOT NULL,
  `deposit_percentage` decimal(18,2) NOT NULL,
  `cheques` int(11) NOT NULL,
  `commission_percentage` decimal(18,2) NOT NULL,
  `commission` decimal(18,2) NOT NULL,
  `unit_size_price` varchar(555) NOT NULL,
  `frequency` varchar(22) DEFAULT NULL,
  `dateadded` datetime NOT NULL,
  `dateupdated` datetime NOT NULL,
  `category_id` int(11) NOT NULL,
  `region_id` int(11) NOT NULL,
  `area_location_id` int(11) NOT NULL,
  `sub_area_location_id` int(11) NOT NULL,
  `view_id` varchar(255) NOT NULL,
  `prop_furnish` int(6) NOT NULL,
  `landlordId` int(11) NOT NULL,
  `landlord_name` varchar(255) NOT NULL,
  `photos` int(11) NOT NULL,
  `portals_count` int(11) NOT NULL,
  `portals_name` text NOT NULL,
  `othermedia_count` int(11) NOT NULL,
  `features_count` int(11) NOT NULL,
  `features_id` varchar(1024) NOT NULL,
  `area_iformation_data` text,
  `leads` varchar(55) NOT NULL,
  `viewings_count` int(11) NOT NULL,
  `add_info` varchar(255) NOT NULL,
  `agent_id` int(11) NOT NULL,
  `status` int(11) NOT NULL,
  `managed` varchar(55) DEFAULT NULL,
  `exclusive` varchar(55) DEFAULT NULL,
  `shared` varchar(44) DEFAULT NULL,
  `created_by` int(11) NOT NULL,
  `is_active` int(5) NOT NULL DEFAULT '1',
  `activitytime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `is_archive` int(5) NOT NULL DEFAULT '0',
  `lat` varchar(55) DEFAULT NULL,
  `lon` varchar(55) DEFAULT NULL,
  `loc_description` mediumtext NOT NULL,
  `cmp_description` varchar(999) NOT NULL,
  `other_languages` int(11) DEFAULT NULL,
  `other_title_1` varchar(999) DEFAULT NULL,
  `other_description_1` text,
  `other_title_2` varchar(999) DEFAULT NULL,
  `other_description_2` text,
  `featured` int(11) DEFAULT NULL,
  `refreshed` int(9) DEFAULT NULL,
  `description_id` int(11) DEFAULT NULL,
  `video_embed_code` varchar(255) DEFAULT NULL,
  `360_embed_code` varchar(255) DEFAULT NULL,
  `audio_embed_code` varchar(255) DEFAULT NULL,
  `virtual_tour_embed_code` varchar(255) DEFAULT NULL,
  `qr_code_link` varchar(255) NOT NULL,
  `pdf_brochure` varchar(255) DEFAULT NULL,
  `video_path` varchar(255) DEFAULT NULL,
  `video_path_upload` varchar(255) DEFAULT NULL,
  `price_1` decimal(18,2) DEFAULT NULL,
  `cheques_1` int(11) DEFAULT NULL,
  `price_2` decimal(18,2) DEFAULT NULL,
  `cheques_2` int(11) DEFAULT NULL,
  `price_3` decimal(18,2) DEFAULT NULL,
  `cheques_3` int(11) DEFAULT NULL,
  `price_4` decimal(18,2) DEFAULT NULL,
  `cheques_4` int(11) DEFAULT NULL,
  `prop_status` int(11) DEFAULT NULL,
  `agent_rent_sold` int(11) DEFAULT NULL,
  `source_of_listing` int(11) DEFAULT NULL,
  `flcheck` int(11) DEFAULT NULL,
  `dewa_no` varchar(255) DEFAULT NULL,
  `strno` varchar(255) DEFAULT NULL,
  `available_date` datetime DEFAULT NULL,
  `remind_me` int(11) DEFAULT NULL,
  `key_location` varchar(255) DEFAULT NULL,
  `tenanted` int(11) DEFAULT NULL,
  `amount` decimal(18,2) DEFAULT NULL,
  `amount_date` datetime DEFAULT NULL,
  `maintenance` varchar(255) DEFAULT NULL,
  `unit_size_price_2` decimal(18,2) DEFAULT NULL,
  `notes` varchar(999) DEFAULT NULL,
  `leads_notes` varchar(999) DEFAULT NULL,
  `document_name` varchar(999) DEFAULT NULL,
  `terminal` int(3) DEFAULT NULL,
  `furnished` int(3) DEFAULT NULL,
  `development_unit_id` int(11) DEFAULT NULL,
  `price_of_application` int(5) DEFAULT NULL COMMENT 'Tick this box if you would like the price for the property to be hidden. If ticked, Price on application will display on the PDF brochures and the HTML preview for this property and a zero value will be sent in the XML  feeds to the portals',
  `guide_price` decimal(18,2) NOT NULL,
  `fee` decimal(18,2) NOT NULL
) ENGINE=MyISAM AUTO_INCREMENT=16 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `crm_pm_units`
--

INSERT INTO `crm_pm_units` (`id`, `client_id`, `rand_key`, `type`, `ref`, `name`, `description_demo`, `description_count`, `beds`, `fitted`, `baths`, `unit`, `unit_type`, `size`, `plot_size`, `street_no`, `floor_no`, `parking`, `price`, `deposit`, `deposit_percentage`, `cheques`, `commission_percentage`, `commission`, `unit_size_price`, `frequency`, `dateadded`, `dateupdated`, `category_id`, `region_id`, `area_location_id`, `sub_area_location_id`, `view_id`, `prop_furnish`, `landlordId`, `landlord_name`, `photos`, `portals_count`, `portals_name`, `othermedia_count`, `features_count`, `features_id`, `area_iformation_data`, `leads`, `viewings_count`, `add_info`, `agent_id`, `status`, `managed`, `exclusive`, `shared`, `created_by`, `is_active`, `activitytime`, `is_archive`, `lat`, `lon`, `loc_description`, `cmp_description`, `other_languages`, `other_title_1`, `other_description_1`, `other_title_2`, `other_description_2`, `featured`, `refreshed`, `description_id`, `video_embed_code`, `360_embed_code`, `audio_embed_code`, `virtual_tour_embed_code`, `qr_code_link`, `pdf_brochure`, `video_path`, `video_path_upload`, `price_1`, `cheques_1`, `price_2`, `cheques_2`, `price_3`, `cheques_3`, `price_4`, `cheques_4`, `prop_status`, `agent_rent_sold`, `source_of_listing`, `flcheck`, `dewa_no`, `strno`, `available_date`, `remind_me`, `key_location`, `tenanted`, `amount`, `amount_date`, `maintenance`, `unit_size_price_2`, `notes`, `leads_notes`, `document_name`, `terminal`, `furnished`, `development_unit_id`, `price_of_application`, `guide_price`, `fee`) VALUES
(1, 0, '1456733242239494', 1, 'GIS-PM-1', 'Test Title', 'Test Description', 0, '2', '', 1, '1001', '', 1200, '1500', '11', '40', 0, '0.00', '0.00', '0.00', 0, '500.00', '300.00', '', NULL, '2016-02-29 09:07:24', '2016-02-29 09:07:24', 1, 1, 19, 8588, 'Marina View', 1, 3, 'Muhammad Shafiq', 0, 0, '', 0, 0, '', NULL, '', 0, '', 0, 0, NULL, NULL, NULL, 1, 1, '2016-03-15 07:51:56', 0, NULL, NULL, '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 2, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0.00', '0.00'),
(2, 0, '14567334113439932', 1, 'GIS-PM-0001', 'Test Title', 'Test Description', 0, '2', '', 1, '1001', '', 1200, '1500', '11', '40', 0, '0.00', '0.00', '0.00', 0, '500.00', '300.00', '', NULL, '2016-02-29 09:10:13', '2016-02-29 09:10:13', 0, 1, 19, 8588, 'Marina View', 1, 0, '', 0, 0, '', 0, 0, '', NULL, '', 0, '', 0, 0, NULL, NULL, NULL, 1, 1, '2016-02-29 10:17:12', 0, NULL, NULL, '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0.00', '0.00'),
(3, 0, '14567334236837186', 1, 'GIS-PM-0002', 'Test Title', 'Test Description', 0, '2', '', 1, '1001', '', 1200, '1500', '11', '40', 0, '0.00', '0.00', '0.00', 0, '500.00', '300.00', '', NULL, '2016-02-29 09:10:25', '2016-02-29 09:10:25', 2, 1, 19, 8588, 'Marina View', 1, 3, '', 0, 0, '', 0, 0, '', NULL, '', 0, '', 0, 0, NULL, NULL, NULL, 1, 1, '2016-03-14 11:02:26', 0, NULL, NULL, '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0.00', '0.00'),
(4, 0, '14567334415064869', 1, 'GIS-PM-0004', 'Test Title', 'Test Description', 0, '2', '', 1, '1001', '', 1200, '1500', '11', '40', 0, '0.00', '0.00', '0.00', 0, '500.00', '300.00', '', NULL, '2016-02-29 09:10:43', '2016-02-29 09:10:43', 3, 1, 19, 8588, 'Marina View', 1, 3, '', 0, 0, '', 0, 0, '', NULL, '', 0, '', 0, 0, NULL, NULL, NULL, 1, 1, '2016-03-14 12:04:37', 0, NULL, NULL, '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 3, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0.00', '0.00'),
(5, 1743, '14565615595352945', 2, 'GIS-PM-0005', 'hdfgdfhg', '', 0, '2', '', 2, '504', 'unittype', 3223, '550', '2', '', 2, '25554588.00', '511091.76', '2.00', 0, '2.00', '511091.76', '7928.82', NULL, '2015-12-17 13:27:41', '2015-12-17 13:27:41', 12, 1, 7420, 9686, '', 0, 48, 'Nina manerba', 0, 9, '{dubizzle}{JustRentals}{JustProperty}{propertyfinder}{bayut}{GNproperty}{Zoopla}{rightmove}{feed_1743}', 0, 0, '', NULL, '', 0, '', 1, 1, NULL, NULL, NULL, 1, 1, '2016-03-03 13:53:13', 0, NULL, NULL, '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', '', '', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, 0, 0, '', '', '0000-00-00 00:00:00', 0, '', NULL, '0.00', '0000-00-00 00:00:00', '', '7928.82', '', '', '', NULL, NULL, NULL, NULL, '0.00', '0.00'),
(6, 0, '14569049124998235', 1, 'GIS-PM-0006', 'Test Title', 'Test Description', 0, '2', '', 1, '1001', '', 1200, '1500', '11', '40', 0, '0.00', '0.00', '0.00', 0, '0.00', '0.00', '', NULL, '2016-03-02 08:50:51', '2016-03-02 08:50:51', 4, 1, 19, 8588, 'Marina View', 1, 3, '', 0, 0, '', 0, 0, '', NULL, '', 0, '', 1, 0, NULL, NULL, NULL, 1, 1, '2016-03-14 12:04:39', 0, NULL, NULL, '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 3, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '300.00', '500.00'),
(7, 0, '14569051791197078', 1, 'GIS-PM-0007', 'Test Title', 'Test Description', 0, '2', '', 1, '1001', '', 1200, '1500', '11', '40', 0, '0.00', '0.00', '0.00', 0, '0.00', '0.00', '', NULL, '2016-03-02 08:53:30', '2016-03-02 08:53:30', 2, 1, 19, 8588, 'Marina View', 1, 0, '', 0, 0, '', 0, 0, '', NULL, '', 0, '', 1, 0, NULL, NULL, NULL, 1, 1, '2016-03-02 07:53:30', 0, NULL, NULL, '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '300.00', '500.00'),
(8, 1743, '14503532927417064', 2, 'GIS-PM-0008', '1BR Apartment in Cloud 9', 'rofile: Royal Home Real Estate provides full service to each and every clientele. We offer comprehensive properties for sales, rentals and Property Management Services. Our team is highly adept property consultants who are experts in every aspect of the real estate and have proficient know-how in identifying client needs.We offer full range of services in residential and commercial property transactions.Please call our sales office at +97143990990 and speak to one of our experts.', 124, '2', '', 0, '505', 'kh', 550, '', '', '', 0, '555555.00', '11111.10', '2.00', 0, '2.00', '11111.10', '1010.10', NULL, '2016-02-02 07:59:56', '2016-03-21 10:54:41', 1, 1, 8845, 9740, '', 0, 3, 'Nina manerba', 1, 9, '{dubizzle}{JustRentals}{JustProperty}{propertyfinder}{bayut}{GNproperty}{Zoopla}{rightmove}{feed_1743}', 1, 2, '{16}{17}', '', '0', 0, 'Rented', 1, 1, '1', NULL, '1', 0, 1, '2016-03-21 09:54:41', 0, NULL, NULL, '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'hkl', '', '', '', '', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 3, NULL, 7, 1, 'DEWA123', 'Str123', '2016-02-02 00:00:00', 1, 'Marina', 1, '2000.00', '2016-02-03 00:00:00', '200', '1010.10', 'THis is notes for sale', '', '', NULL, NULL, NULL, NULL, '0.00', '0.00'),
(9, 0, '', 1, 'GIS-LE-0001', '', '', 0, '', '', 1, '', '', 0, '', '', '', 0, '0.00', '0.00', '0.00', 0, '0.00', '0.00', '', NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 0, 0, 0, '', 0, 0, '', 0, 0, '', 0, 0, '', NULL, '', 0, '', 0, 0, NULL, NULL, NULL, 0, 1, '2016-03-03 12:54:31', 0, NULL, NULL, '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0.00', '0.00'),
(10, 0, '14575298448129889', 1, 'GIS-UN-0010', 'Test Title', 'Lorem ipsum dolor sit amet%2C consectetur adipiscing elit. In vel justo in sem facilisis commodo ut at diam. Praesent non ante erat. Nam consectetur ornare massa%2C ac varius est fermentum in. Cum sociis natoque penatibus et magnis dis parturient montes%2C nascetur ridiculus mus. Quisque non sodales mauris. Aliquam aliquet vitae orci blandit blandit. Praesent placerat enim leo%2C feugiat mollis nunc malesuada sit amet. Aliquam pellentesque tellus urna%2C vitae porttitor justo eleifend aliquam. Etiam ullamcorper id quam vel accumsan. Aenean in iaculis felis. Nulla facilisi. Mauris dignissim ac lectus eu tincidunt. Nam mollis dui eu eleifend sodales. Curabitur pharetra nibh sit amet convallis ultrices. Praesent metus felis%2C volutpat sed tortor sit amet%2C cursus aliquam ante. ', 0, '2', '', 1, '1001', '', 1200, '1500', '11', '40', 0, '0.00', '0.00', '0.00', 0, '0.00', '0.00', '', NULL, '2016-03-09 14:24:39', '2016-03-09 14:24:39', 0, 1, 19, 8588, 'Marina View', 1, 0, '', 0, 0, '', 0, 0, '', NULL, '', 0, '', 1, 0, NULL, NULL, NULL, 1, 1, '2016-03-09 13:24:39', 0, NULL, NULL, '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '300.00', '500.00'),
(11, 0, '14575298448129889', 1, 'GIS-UN-0011', 'Test Title', 'Lorem ipsum dolor sit amet%252C consectetur adipiscing elit. In vel justo in sem facilisis commodo ut at diam. Praesent non ante erat. Nam consectetur ornare massa%252C ac varius est fermentum in. Cum sociis natoque penatibus et magnis dis parturient montes%252C nascetur ridiculus mus. Quisque non sodales mauris. Aliquam aliquet vitae orci blandit blandit. Praesent placerat enim leo%252C feugiat mollis nunc malesuada sit amet. Aliquam pellentesque tellus urna%252C vitae porttitor justo eleifend aliquam. Etiam ullamcorper id quam vel accumsan. Aenean in iaculis felis. Nulla facilisi. Mauris dignissim ac lectus eu tincidunt. Nam mollis dui eu eleifend sodales. Curabitur pharetra nibh sit amet convallis ultrices. Praesent metus felis%252C volutpat sed tortor sit amet%252C cursus aliquam ante. ', 0, '2', '', 0, '1001', '', 1200, '500', '11', '40', 0, '0.00', '0.00', '0.00', 0, '0.00', '0.00', '', NULL, '2016-03-09 14:25:29', '2016-03-09 14:25:29', 1, 1, 19, 8588, 'Marina View', 1, 0, '', 0, 0, '', 0, 0, '', NULL, '', 0, '', 1, 0, NULL, NULL, NULL, 1, 1, '2016-03-09 13:25:29', 0, NULL, NULL, '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '20300.00', '5.00'),
(12, 0, '14576028821044767', 2, 'GIS-UN-0012', 'hdfgdfhg', '', 0, '2', '', 0, '504', '', 3223, '', '2', '', 0, '0.00', '0.00', '0.00', 0, '0.00', '0.00', '', NULL, '2016-03-10 10:41:31', '2016-03-10 10:41:31', 2, 1, 7420, 9686, '', 0, 0, '', 0, 0, '', 0, 0, '', NULL, '', 0, '', 0, 0, NULL, NULL, NULL, 1, 1, '2016-03-10 09:41:31', 0, NULL, NULL, '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0.00', '0.00'),
(13, 0, '14576028821044767', 2, 'GIS-UN-0013', 'hdfgdfhg', '', 0, '2', '', 0, '504', '', 3223, '', '2', '', 0, '0.00', '0.00', '0.00', 0, '0.00', '0.00', '', NULL, '2016-03-10 10:41:58', '2016-03-10 10:41:58', 2, 1, 7420, 9686, '', 0, 0, '', 0, 0, '', 0, 0, '', NULL, '', 0, '', 0, 0, NULL, NULL, NULL, 1, 1, '2016-03-10 09:41:58', 0, NULL, NULL, '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0.00', '0.00'),
(14, 0, '1458479257639277', 1, 'GIS-UN-0014', 'hlhjlhljkh', 'kkl\r\n\r\nCall Admin S 12576 on  971 552493494 /  97143990990 or visit www.royalhome.ae for further details\r\n\r\nCompany name: Royal Home Real Estate\r\n\r\nRERA ORN: 2533 \r\n\r\nAddress: Office 09, Al Fattan Towers, JBR, Dubai \r\n\r\nOffice phone no:  97143990990\r\n\r\nOffice fax no:  97143996993\r\n\r\nPrimary email: property@royalhome.ae\r\n\r\nWebsite: www.royalhome.ae\r\n\r\nCompany Profile: Royal Home Real Estate provides full service to each and every clientele. We offer comprehensive properties for sales, rentals and Property Management Services. Our team is highly adept property consultants who are experts in every aspect of the real estate and have proficient know-how in identifying client needs.We offer full range of services in residential and commercial property transactions.Please call our sales office at  97143990990 and speak to one of our experts.\r\n\r\nsubloc test\r\n\r\nsubloc test', 0, '2', '', 1, '2208', '', 550, '', '', '', 0, '0.00', '0.00', '0.00', 0, '0.00', '0.00', '', NULL, '2016-03-20 14:22:55', '2016-03-20 14:22:55', 1, 1, 19, 3008, '', 0, 0, '', 0, 0, '', 0, 0, '', NULL, '', 0, '', 0, 0, NULL, NULL, NULL, 1, 1, '2016-03-20 13:22:55', 0, NULL, NULL, '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 3, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0.00', '0.00');

-- --------------------------------------------------------

--
-- Table structure for table `crm_pm_units_images`
--

CREATE TABLE IF NOT EXISTS `crm_pm_units_images` (
`id` bigint(20) NOT NULL,
  `rand_key` varchar(512) NOT NULL,
  `unit_id` bigint(44) NOT NULL,
  `created_date` date NOT NULL,
  `activitytime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `is_active` int(2) NOT NULL DEFAULT '1',
  `image` varchar(999) NOT NULL,
  `thumb` varchar(999) NOT NULL,
  `watermark_image` varchar(999) NOT NULL,
  `is_watermarked` int(2) NOT NULL DEFAULT '1',
  `is_contactImage` int(3) NOT NULL,
  `position` int(11) NOT NULL,
  `created_by` int(11) NOT NULL DEFAULT '0'
) ENGINE=MyISAM AUTO_INCREMENT=9 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `crm_pm_units_images`
--

INSERT INTO `crm_pm_units_images` (`id`, `rand_key`, `unit_id`, `created_date`, `activitytime`, `is_active`, `image`, `thumb`, `watermark_image`, `is_watermarked`, `is_contactImage`, `position`, `created_by`) VALUES
(1, '1001', 0, '2016-02-27', '2016-02-27 08:16:12', 1, '22b256d5-4f7c-4a60-977b-ca42f22d9f2d.JPG', '22b256d5-4f7c-4a60-977b-ca42f22d9f2d.JPG', '22b256d5-4f7c-4a60-977b-ca42f22d9f2d.JPG', 1, 0, 0, 1),
(2, '', 0, '2016-02-27', '2016-02-27 08:16:47', 1, '693a06a8-1065-4f95-bd31-52e8c6707349.JPG', '693a06a8-1065-4f95-bd31-52e8c6707349.JPG', '693a06a8-1065-4f95-bd31-52e8c6707349.JPG', 1, 0, 0, 1),
(3, '', 0, '2016-02-27', '2016-02-27 08:18:52', 1, '1de3231b-d966-407e-9e85-32275e9afe4f.JPG', '1de3231b-d966-407e-9e85-32275e9afe4f.JPG', '1de3231b-d966-407e-9e85-32275e9afe4f.JPG', 1, 0, 0, 1),
(4, '', 0, '2016-02-27', '2016-02-27 08:19:40', 1, '414d7955-2b4c-471d-899c-b4de2e4dbe05.JPG', '414d7955-2b4c-471d-899c-b4de2e4dbe05.JPG', '414d7955-2b4c-471d-899c-b4de2e4dbe05.JPG', 1, 0, 0, 1),
(5, '14565615595352945', 0, '2016-02-27', '2016-02-27 08:21:49', 1, '359bcc47-0353-4295-bedf-c93971d1cbad.JPG', '359bcc47-0353-4295-bedf-c93971d1cbad.JPG', '359bcc47-0353-4295-bedf-c93971d1cbad.JPG', 1, 0, 0, 1),
(6, '14565615595352945', 0, '2016-02-27', '2016-02-27 08:26:10', 1, '1153cb87-e44d-4503-b4f2-cb52cdab1181.JPG', '1153cb87-e44d-4503-b4f2-cb52cdab1181.JPG', '1153cb87-e44d-4503-b4f2-cb52cdab1181.JPG', 1, 0, 0, 1),
(7, '14569198680587875', 0, '2016-03-02', '2016-03-02 11:58:32', 1, '342f013d-2d42-4d2c-9667-b77a9f978499.jpg', '342f013d-2d42-4d2c-9667-b77a9f978499.jpg', '342f013d-2d42-4d2c-9667-b77a9f978499.jpg', 1, 0, 0, 1),
(8, '14569205521743396', 0, '2016-03-02', '2016-03-02 12:14:56', 1, '72213dba-b575-4aa6-9fff-8c6d78e179d5.jpg', '72213dba-b575-4aa6-9fff-8c6d78e179d5.jpg', '72213dba-b575-4aa6-9fff-8c6d78e179d5.jpg', 1, 0, 0, 1);

-- --------------------------------------------------------

--
-- Table structure for table `crm_pm_units_notes`
--

CREATE TABLE IF NOT EXISTS `crm_pm_units_notes` (
`id` int(8) NOT NULL,
  `unitId` bigint(20) NOT NULL,
  `note` varchar(256) NOT NULL,
  `activitytime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `datecreated` datetime NOT NULL,
  `created_by` int(11) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `crm_pm_units_notes`
--

INSERT INTO `crm_pm_units_notes` (`id`, `unitId`, `note`, `activitytime`, `datecreated`, `created_by`) VALUES
(1, 8, 'The Dornishman''s wife', '2016-03-21 10:56:47', '2016-03-21 11:56:47', 1),
(2, 8, 'The Dornishman''s wife', '2016-03-21 10:57:26', '2016-03-21 11:57:26', 1),
(3, 8, 'is as fair as the sun', '2016-03-21 10:58:26', '2016-03-21 11:58:26', 1),
(4, 8, 'is it''s kisses are warmer than spring', '2016-03-21 10:59:17', '2016-03-21 11:59:17', 1),
(5, 8, 'The Dornishman''s blade', '2016-03-21 10:59:56', '2016-03-21 11:59:56', 1),
(6, 8, 'is made of black steel', '2016-03-21 11:01:52', '2016-03-21 12:01:52', 1),
(7, 8, 'and it''s kiss is a terrible thing.', '2016-03-21 11:03:01', '2016-03-21 12:03:01', 1);

-- --------------------------------------------------------

--
-- Table structure for table `crm_pm_workorders`
--

CREATE TABLE IF NOT EXISTS `crm_pm_workorders` (
`id` bigint(20) NOT NULL,
  `ref` varchar(55) NOT NULL,
  `rand_key` varchar(255) NOT NULL,
  `unitId` bigint(20) NOT NULL,
  `serviceproviderId` bigint(20) NOT NULL,
  `description` varchar(256) NOT NULL,
  `type` int(11) NOT NULL,
  `subtype` int(11) NOT NULL,
  `assignedto` int(11) NOT NULL,
  `status` int(11) NOT NULL,
  `startdate` date NOT NULL,
  `enddate` date NOT NULL,
  `cost` decimal(18,2) NOT NULL,
  `paidby` int(11) NOT NULL,
  `paymentstatus` int(11) NOT NULL,
  `priority` int(11) NOT NULL,
  `activitytime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `dateupdated` datetime NOT NULL,
  `dateadded` datetime NOT NULL,
  `created_by` int(8) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `crm_pm_workorders`
--

INSERT INTO `crm_pm_workorders` (`id`, `ref`, `rand_key`, `unitId`, `serviceproviderId`, `description`, `type`, `subtype`, `assignedto`, `status`, `startdate`, `enddate`, `cost`, `paidby`, `paymentstatus`, `priority`, `activitytime`, `dateupdated`, `dateadded`, `created_by`) VALUES
(3, 'GIS-WO-0001', '14575272251341558', 5, 1, 'Pellentesque nec arcu in felis facilisis cursus eget vel dolor. Quisque ac nisi ut diam suscipit tincidunt convallis at tortor. Maecenas dapibus quam sit amet dolor tristique venenatis. Etiam mattis, elit at molestie varius, dui diam pellentesque nisl, eu ', 1, 2, 0, 2, '2016-03-03', '0000-00-00', '5.00', 1, 2, 3, '2016-03-19 08:23:04', '2016-03-19 09:18:09', '2016-03-09 13:40:39', 1),
(4, 'GIS-WO-0002', '', 5, 2, 'Test+Description+11%3A52', 1, 2, 0, 1, '2016-03-12', '2016-03-12', '5000.00', 1, 1, 1, '2016-03-19 08:23:07', '2016-03-12 08:52:41', '2016-03-12 08:52:41', 1),
(5, 'GIS-WO-0003', '', 8, 1, 'Mauris lobortis diam ac tortor tempor ultricies. Curabitur nec sem eu urna efficitur viverra at et risus. Fusce tempor mauris justo, quis vehicula enim lacinia a. Duis interdum scelerisque nunc ut accumsan. Aliquam rutrum arcu non fringilla rutrum. Mauris ', 1, 2, 0, 3, '2016-03-22', '2016-04-02', '3000.00', 1, 2, 2, '2016-03-21 08:00:17', '2016-03-21 09:00:17', '2016-03-21 07:52:33', 1);

-- --------------------------------------------------------

--
-- Table structure for table `crm_pm_workorders_notes`
--

CREATE TABLE IF NOT EXISTS `crm_pm_workorders_notes` (
`id` int(8) NOT NULL,
  `workorderId` bigint(20) NOT NULL,
  `note` varchar(256) NOT NULL,
  `activitytime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `datecreated` datetime NOT NULL,
  `created_by` int(11) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `crm_pm_workorders_notes`
--

INSERT INTO `crm_pm_workorders_notes` (`id`, `workorderId`, `note`, `activitytime`, `datecreated`, `created_by`) VALUES
(1, 3, 'The quick brown fox jumps over the lazy dog.', '2016-03-10 07:48:33', '2016-03-10 08:48:33', 1),
(2, 3, '2The quick brown fox jumps over the lazy dog.', '2016-03-10 07:50:54', '2016-03-10 08:50:54', 1),
(3, 3, '3The quick brown fox jumps over the lazy dog.', '2016-03-10 07:51:16', '2016-03-10 08:51:16', 1),
(4, 3, '4The quick brown fox jumps over the lazy dog.', '2016-03-10 08:15:31', '2016-03-10 09:15:31', 1),
(5, 4, 'Test Note', '2016-03-12 07:53:00', '2016-03-12 08:53:00', 1),
(6, 3, 'A Lannister always pays his debts.', '2016-03-13 09:39:16', '2016-03-13 10:39:16', 1),
(7, 5, 'Test Note 123', '2016-03-21 10:40:47', '2016-03-21 11:40:47', 1);

-- --------------------------------------------------------

--
-- Table structure for table `crm_profile`
--

CREATE TABLE IF NOT EXISTS `crm_profile` (
`id` int(11) NOT NULL,
  `name` varchar(555) NOT NULL,
  `rand_key` varchar(255) NOT NULL,
  `trade_id` varchar(255) NOT NULL,
  `address` text NOT NULL,
  `phone_no` varchar(255) NOT NULL,
  `fax_no` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `web` varchar(255) NOT NULL,
  `description` text NOT NULL,
  `lat` varchar(55) DEFAULT NULL,
  `lon` varchar(55) DEFAULT NULL,
  `showAgentName` int(4) NOT NULL,
  `showAgentNum` int(4) NOT NULL,
  `xml_custom_email` int(11) NOT NULL,
  `xml_email` varchar(255) NOT NULL,
  `watermark` int(3) NOT NULL,
  `measuring_unit` varchar(255) NOT NULL,
  `sharing` int(4) DEFAULT NULL,
  `leads_sharing` int(4) DEFAULT NULL,
  `auto_lead_option` int(4) DEFAULT NULL,
  `sms_agents` int(4) DEFAULT NULL,
  `lead_escalation` int(4) DEFAULT NULL,
  `imap` varchar(255) DEFAULT NULL,
  `emailsLeads` varchar(255) DEFAULT NULL,
  `passwordemail` varchar(255) DEFAULT NULL,
  `port` varchar(255) DEFAULT NULL,
  `Active` int(4) DEFAULT NULL,
  `brochure_type` int(11) DEFAULT NULL,
  `email_temp_id` int(11) DEFAULT NULL,
  `poster_id` int(11) DEFAULT NULL,
  `apiKey-hid` varchar(255) DEFAULT NULL,
  `apiKey` varchar(255) DEFAULT NULL,
  `profile_logo` varchar(255) DEFAULT NULL,
  `profile_watermark` varchar(255) DEFAULT NULL,
  `is_active` int(4) DEFAULT NULL,
  `created_by` int(11) DEFAULT NULL,
  `dateadded` datetime DEFAULT NULL,
  `dateupdated` datetime DEFAULT NULL,
  `activitytime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `crm_profile`
--

INSERT INTO `crm_profile` (`id`, `name`, `rand_key`, `trade_id`, `address`, `phone_no`, `fax_no`, `email`, `web`, `description`, `lat`, `lon`, `showAgentName`, `showAgentNum`, `xml_custom_email`, `xml_email`, `watermark`, `measuring_unit`, `sharing`, `leads_sharing`, `auto_lead_option`, `sms_agents`, `lead_escalation`, `imap`, `emailsLeads`, `passwordemail`, `port`, `Active`, `brochure_type`, `email_temp_id`, `poster_id`, `apiKey-hid`, `apiKey`, `profile_logo`, `profile_watermark`, `is_active`, `created_by`, `dateadded`, `dateupdated`, `activitytime`) VALUES
(1, 'Royalhome', '14545019946098019', '2323', 'the dubai marina', '043990990', '04225226', 'listing@royalhome.ae', 'royalhome.ae', 'Royalhome realestate company profile here 1    ', '25.081228256225586', '55.143272399902344', 1, 1, 0, '', 1, 'SqFT', 0, 2, 0, 0, 0, 'royalhome.com', 'admin@gmail.com', 'qwewrw', '993', NULL, 3, 1, 2, '', '', '14545019946098019201602040841044b256e48ebbb3f8bfcbea30b0542f456.png', '14545019946098019201602040841044b256e48ebbb3f8bfcbea30b0542f456.png', 1, 1, '2016-02-03 00:00:00', '2016-02-04 08:41:04', '2016-04-24 08:58:13');

-- --------------------------------------------------------

--
-- Table structure for table `crm_savedsearch`
--

CREATE TABLE IF NOT EXISTS `crm_savedsearch` (
`id` int(11) NOT NULL,
  `savesearch_name` varchar(255) NOT NULL,
  `status` int(11) DEFAULT NULL,
  `share` int(11) DEFAULT NULL,
  `ref` varchar(255) DEFAULT NULL,
  `unit` varchar(255) DEFAULT NULL,
  `category_id` int(11) DEFAULT NULL,
  `region_id` int(11) DEFAULT NULL,
  `location_id` int(11) DEFAULT NULL,
  `subloc_id` int(11) DEFAULT NULL,
  `price` varchar(255) DEFAULT NULL,
  `agent` int(11) DEFAULT NULL,
  `minprice` varchar(255) DEFAULT NULL,
  `maxprice` varchar(255) DEFAULT NULL,
  `minarea` varchar(255) NOT NULL,
  `maxarea` varchar(255) DEFAULT NULL,
  `dateupdatedS` datetime DEFAULT NULL,
  `dateupdatedSto` datetime DEFAULT NULL,
  `dateaddedS` datetime DEFAULT NULL,
  `dateaddedSto` datetime DEFAULT NULL,
  `as_prop_status` int(11) DEFAULT NULL,
  `as_source_of_listing` varchar(255) DEFAULT NULL,
  `as_unit_type` varchar(255) DEFAULT NULL,
  `as_min_bua` varchar(255) DEFAULT NULL,
  `as_max_bua` varchar(255) DEFAULT NULL,
  `as_min_deposit` varchar(255) DEFAULT NULL,
  `as_max_deposit` varchar(255) DEFAULT NULL,
  `as_baths` int(11) DEFAULT NULL,
  `as_view` varchar(255) DEFAULT NULL,
  `as_available_date_from` datetime DEFAULT NULL,
  `as_available_date_to` datetime DEFAULT NULL,
  `flcheck` int(11) DEFAULT NULL,
  `created_by` int(11) NOT NULL,
  `dateadded` datetime NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `crm_savedsearch`
--

INSERT INTO `crm_savedsearch` (`id`, `savesearch_name`, `status`, `share`, `ref`, `unit`, `category_id`, `region_id`, `location_id`, `subloc_id`, `price`, `agent`, `minprice`, `maxprice`, `minarea`, `maxarea`, `dateupdatedS`, `dateupdatedSto`, `dateaddedS`, `dateaddedSto`, `as_prop_status`, `as_source_of_listing`, `as_unit_type`, `as_min_bua`, `as_max_bua`, `as_min_deposit`, `as_max_deposit`, `as_baths`, `as_view`, `as_available_date_from`, `as_available_date_to`, `flcheck`, `created_by`, `dateadded`) VALUES
(2, 'test-1-2016-01-17', 0, 0, ' Min 3 chars', '', 0, 0, 0, 0, '', 0, '', '', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, '', '', '', '', '', '', 0, '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 1, '2016-01-17 09:18:49'),
(3, 'test2-1-2016-01-17', 0, 0, ' Min 3 chars', '', 0, 0, 0, 0, '', 0, '', '', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, '', '', '', '', '', '', 0, '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 1, '2016-01-17 09:34:09'),
(4, 'shafi-1-2016-01-18', 0, 0, ' Min 3 chars', '', 0, 0, 0, 0, '', 0, '', '', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, '', '', '', '', '', '', 0, '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 1, '2016-01-18 10:19:27'),
(5, 'ttt-1-2016-01-18', 0, 0, ' Min 3 chars', '', 0, 0, 0, 0, '', 0, '', '', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, '', '', '', '', '', '', 0, '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 1, '2016-01-18 10:21:26'),
(7, 'ttt444543543-1-2016-01-18', 0, 0, '', '', 0, 0, 0, 0, '', 0, '', '', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, '', '', '', '', '', '', 0, '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 1, '2016-01-18 10:22:22');

-- --------------------------------------------------------

--
-- Table structure for table `crm_screens`
--

CREATE TABLE IF NOT EXISTS `crm_screens` (
`id` int(11) NOT NULL,
  `screen_name` varchar(255) NOT NULL,
  `is_active` bit(1) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `crm_screens`
--

INSERT INTO `crm_screens` (`id`, `screen_name`, `is_active`) VALUES
(1, 'Dashboard', b'1'),
(2, 'Rentals', b'1'),
(3, 'Sales', b'1'),
(4, 'Contacts', b'1'),
(5, 'Leads', b'1'),
(6, 'Deals', b'1'),
(7, 'Users', b'1'),
(8, 'Profile', b'1');

-- --------------------------------------------------------

--
-- Table structure for table `crm_subloc`
--

CREATE TABLE IF NOT EXISTS `crm_subloc` (
`id` int(22) NOT NULL,
  `loc_id` int(44) NOT NULL,
  `sub_loc_id` int(55) NOT NULL,
  `sub_sub_loc` varchar(33) NOT NULL
) ENGINE=MyISAM AUTO_INCREMENT=6810 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `crm_subloc`
--

INSERT INTO `crm_subloc` (`id`, `loc_id`, `sub_loc_id`, `sub_sub_loc`) VALUES
(2687, 8845, 8848, 'Bahia Residence'),
(2688, 8845, 8869, 'Cloud 9'),
(2689, 8845, 9740, 'Decora Villas'),
(2690, 6032, 6033, 'Akoya'),
(2691, 6032, 8456, 'Artesia'),
(2692, 6032, 6035, 'Brookfield 2'),
(2693, 6032, 7417, 'Akoya Park'),
(2694, 6032, 8459, 'Augusta'),
(2695, 6032, 6034, 'Brookfield 1'),
(2696, 6032, 6100, 'Brookfield 3'),
(2697, 6032, 6090, 'Golf Panorama'),
(2698, 6032, 6084, 'Golf Veduta Hotel Apartment'),
(2699, 6032, 6089, 'Golf Horizon'),
(2700, 6032, 6838, 'Golf Promenade'),
(2701, 6032, 6092, 'Golf Terrace'),
(2702, 6032, 6091, 'Golf Vista'),
(2703, 6032, 6630, 'Jasmine B'),
(2704, 6032, 6627, 'Long View'),
(2705, 6032, 6447, 'Jasmine A'),
(2706, 6032, 7819, 'LORETTO B'),
(2707, 6032, 7816, 'LORETTO A'),
(2708, 6032, 6633, 'Orchid A'),
(2709, 6032, 6456, 'Pelham'),
(2710, 6032, 6636, 'Orchid B'),
(2711, 6032, 6450, 'Phoenix'),
(2712, 6032, 6087, 'Queens Meadow'),
(2713, 6032, 6088, 'Picadilly Green'),
(2714, 6032, 25288, 'Richmond'),
(2715, 6032, 6261, 'Rockwood'),
(2716, 6032, 6624, 'Rochester'),
(2717, 6032, 6040, 'Silver Springs'),
(2718, 6032, 6453, 'Trinity'),
(2719, 6032, 6570, 'The Trump Estates'),
(2720, 7420, 9446, 'Akoya Oxygen'),
(2721, 6032, 6038, 'Trump International Golf Club'),
(2722, 6032, 6085, 'Whitefield'),
(2723, 7420, 9686, 'Odora'),
(2724, 7420, 9449, 'Vista Lux'),
(2725, 25312, 25315, 'Al Awir'),
(2726, 5981, 7042, 'Acacia'),
(2727, 5981, 7051, 'Dahlia'),
(2728, 5981, 9136, 'Desert Leaf 5'),
(2729, 5981, 25516, 'Jasmin Leaf 1'),
(2730, 5981, 25513, 'Jasmin Leaf 3'),
(2731, 5981, 25519, 'Jasmin Leaf 8'),
(2732, 5981, 25522, 'Jasmin Leaf 9'),
(2733, 5981, 5983, 'Jasmine Leaf'),
(2734, 5981, 6432, 'Seventh Heaven'),
(2735, 5981, 9029, 'Silk 4'),
(2736, 5981, 9091, 'The Nest'),
(2737, 5981, 6829, 'Wadi Al Safa'),
(2738, 5981, 6826, 'The Reserve'),
(2739, 5981, 6823, 'Ashjar'),
(2740, 5981, 7048, 'Camellia'),
(2741, 5981, 5982, 'Al Barari Villas'),
(2742, 5981, 7045, 'Bromellia'),
(2743, 17, 3447, 'Al Ansari'),
(2744, 17, 1841, 'Al Barsha 2'),
(2745, 17, 7261, 'Al Barsha Business Centre'),
(2746, 17, 1840, 'Al Barsha 1'),
(2747, 17, 5770, 'Al Barsha South'),
(2748, 17, 6895, 'Al Sayegh Building'),
(2749, 17, 1843, 'Al Shafar Building'),
(2750, 17, 6898, 'Al Shaya Building'),
(2751, 17, 5967, 'API Business Suites'),
(2752, 17, 5803, 'Auris Metro Central'),
(2753, 17, 5721, 'Barsha  Valley'),
(2754, 17, 8092, 'Barsha Business Square'),
(2755, 17, 1842, 'Al Barsha 3'),
(2756, 17, 5722, 'Barsha Horizon'),
(2757, 17, 9563, 'Al Attar Business Center'),
(2758, 17, 25653, 'Barsha South Villas'),
(2759, 17, 23801, 'Barsha Valley'),
(2760, 17, 6901, 'Bin Khalid Building'),
(2761, 17, 6904, 'Boutique Hotel Apartments'),
(2762, 17, 3471, 'Code'),
(2763, 17, 5799, 'Corp Hotel'),
(2764, 17, 2085, 'Dubai Biotech'),
(2765, 17, 5800, 'Dunes Hotel'),
(2766, 17, 8680, 'Dusseldorf Business Point'),
(2767, 17, 7471, 'Emerald Building'),
(2768, 17, 7477, 'Emerald Court'),
(2769, 17, 3477, 'Faraidooni'),
(2770, 17, 3012, 'Gold And Diamond Park'),
(2771, 17, 7012, 'Golden Sands'),
(2772, 17, 3128, 'Green Barsha Villas'),
(2773, 17, 6762, 'Hadia Tower'),
(2774, 17, 5955, 'Heritage Building'),
(2775, 17, 6651, 'La Fontana Di Trevi'),
(2776, 17, 5801, 'Marmara'),
(2777, 17, 7732, 'Montrose'),
(2778, 17, 3139, 'Murad'),
(2779, 17, 25677, 'Pinnacle Bldg'),
(2780, 17, 8935, 'Rasis Business Center'),
(2781, 17, 8089, 'Sama Building'),
(2782, 17, 5984, 'The Light Building'),
(2783, 17, 8336, 'Villa Lantana'),
(2784, 17, 8710, 'Yes Business Center'),
(2785, 17, 5751, 'Yes Business Centre'),
(2786, 17, 6186, 'Zumurud Bldg'),
(2787, 82, 23996, 'Almasa'),
(2788, 82, 5769, 'Al Furjan (all)'),
(2789, 82, 5669, 'Al Hejaz'),
(2790, 82, 5670, 'Almasa 1'),
(2791, 82, 5671, 'Almasa 2'),
(2792, 82, 6030, 'Avenue Residence'),
(2793, 82, 9560, 'Azizi Freesia'),
(2794, 82, 7714, 'Azizi Iris'),
(2795, 82, 7306, 'Azizi Liatris'),
(2796, 82, 25615, 'Azizi Daisy'),
(2797, 82, 7660, 'Azizi Orchid'),
(2798, 82, 25612, 'Azizi Tulip'),
(2799, 82, 7489, 'Azizi Residence'),
(2800, 82, 5673, 'Azizi Yasamine'),
(2801, 82, 6642, 'Dubai Style Townhouse'),
(2802, 82, 6044, 'Dubai Style Villas'),
(2803, 82, 5674, 'Feirouz 3'),
(2804, 82, 5667, 'East Village'),
(2805, 82, 3159, 'Masakin'),
(2806, 82, 25504, 'Murano Residences'),
(2807, 82, 5668, 'North Village'),
(2808, 82, 5672, 'Quortaj'),
(2809, 82, 7657, 'Azizi Feirouz'),
(2810, 82, 6444, 'Phase 1'),
(2811, 82, 5677, 'South Village'),
(2812, 82, 7144, 'The Dreamz'),
(2813, 82, 5675, 'Village Centre'),
(2814, 4924, 4925, 'Airport Road Area'),
(2815, 82, 5676, 'West Village'),
(2816, 7480, 7483, 'Al Wuheida'),
(2817, 9483, 9485, 'Al Jaddaf'),
(2818, 82, 24005, 'Yasamine'),
(2819, 9483, 9487, 'Couture Condominiums'),
(2820, 5790, 5791, 'Al Jafiliya'),
(2821, 5790, 25387, 'Chelsea Plaza Hotel'),
(2822, 7297, 7300, 'Al Abbas Building'),
(2823, 9483, 9489, 'Iris Amber Tower'),
(2824, 9483, 9744, 'Marriot Executive Apartments'),
(2825, 7297, 25597, 'Al Attar Centre'),
(2826, 7297, 25588, 'Al Khazna Centre'),
(2827, 7297, 25591, 'Al Kazim Building'),
(2828, 7297, 7528, 'Al Khaleej Building'),
(2829, 7297, 25603, 'Carrera Building'),
(2830, 7297, 25582, 'Green Building'),
(2831, 7297, 25594, 'Karama Centre'),
(2832, 7297, 25579, 'Red Building'),
(2833, 7297, 8241, 'Karama Shopping Center'),
(2834, 7297, 25600, 'Lulu Centre'),
(2835, 7297, 25585, 'Yellow Building'),
(2836, 6119, 6120, 'Al Khail Heights Building'),
(2837, 6119, 7201, 'Al Khail Heights Building 10A'),
(2838, 6119, 7210, 'Al Khail Heights Building 11B'),
(2839, 6119, 7204, 'Al Khail Heights Building 10B'),
(2840, 6119, 7207, 'Al Khail Heights Building 11A'),
(2841, 6119, 6907, 'Al Khail Heights Building 1A'),
(2842, 6119, 6910, 'Al Khail Heights Building 1B'),
(2843, 6119, 6913, 'Al Khail Heights Building 2A'),
(2844, 6119, 7162, 'Al Khail Heights Building 3B'),
(2845, 6119, 6916, 'Al Khail Heights Building 2B'),
(2846, 6119, 7159, 'Al Khail Heights Building 3A'),
(2847, 6119, 7165, 'Al Khail Heights Building 4A'),
(2848, 6119, 7168, 'Al Khail Heights Building 4B'),
(2849, 6119, 7171, 'Al Khail Heights Building 5A'),
(2850, 6119, 7180, 'Al Khail Heights Building 6B'),
(2851, 6119, 7174, 'Al Khail Heights Building 5B'),
(2852, 6119, 7177, 'Al Khail Heights Building 6A'),
(2853, 6119, 7183, 'Al Khail Heights Building 7A'),
(2854, 6119, 7186, 'Al Khail Heights Building 7B'),
(2855, 6119, 7189, 'Al Khail Heights Building 8A'),
(2856, 6119, 7198, 'Al Khail Heights Building 9B'),
(2857, 6119, 7192, 'Al Khail Heights Building 8B'),
(2858, 6119, 7195, 'Al Khail Heights Building 9A'),
(2859, 5780, 5781, 'Al Khawaneej 1'),
(2860, 5780, 5782, 'Al Khawaneej 2'),
(2861, 75, 6050, 'Al Nawras Hotel'),
(2862, 5684, 5685, 'The Square'),
(2863, 6573, 6576, 'Al Mizhar 1'),
(2864, 6573, 6579, 'Al Mizhar 2'),
(2865, 75, 1849, 'Al Shamsi Buillding'),
(2866, 75, 15656, 'Burj Building'),
(2867, 75, 7920, 'Emirates Stars Hotel Apartments'),
(2868, 75, 6765, 'Canary Building'),
(2869, 9298, 9301, 'Art 5'),
(2870, 76, 1850, 'Al Falasi Warehouse'),
(2871, 76, 1851, 'Al Khail Gate'),
(2872, 76, 3156, 'Al Quoz Business Centre'),
(2873, 76, 6018, 'Al Quoz 1'),
(2874, 76, 6019, 'Al Quoz 2'),
(2875, 76, 8134, 'Al Quoz 4'),
(2876, 76, 1852, 'Al Quoz Industrial District'),
(2877, 76, 1853, 'Al Sayyah Building'),
(2878, 76, 16040, 'Alserkal'),
(2879, 76, 23759, 'Al Shafar Investment'),
(2880, 76, 1854, 'Al Serkal Building'),
(2881, 76, 1855, 'Badiya Warehouse'),
(2882, 76, 9193, 'Camellia'),
(2883, 76, 16043, 'Dubai Euro Group'),
(2884, 76, 6020, 'Industrial Area 1'),
(2885, 76, 9196, 'Gardenia'),
(2886, 76, 16583, 'Focus Art Gallery'),
(2887, 76, 3144, 'Industrial Area 2'),
(2888, 76, 3145, 'Industrial Area 3'),
(2889, 76, 16502, 'Umm Al Sheif'),
(2890, 76, 6021, 'Industrial Area 4'),
(2891, 76, 16046, 'Lotus Plaza'),
(2892, 76, 9199, 'Magnolia'),
(2893, 76, 9202, 'Villosa'),
(2894, 6297, 6300, 'Al Qusais 1'),
(2895, 6297, 7240, 'Manazel Deira Building'),
(2896, 6297, 6303, 'Al Qusais 2'),
(2897, 6297, 6309, 'Al Qusais Industrial Area'),
(2898, 6297, 6306, 'Al Qusais 3'),
(2899, 72, 3124, 'Al Rigga'),
(2900, 5773, 6147, 'AK Residence'),
(2901, 7147, 7150, 'Al Safa 1'),
(2902, 7147, 7153, 'Al Safa 2'),
(2903, 5773, 3045, 'Acacia Avenues'),
(2904, 5773, 8617, 'Al Bahia 2'),
(2905, 5773, 5774, 'Al Sufouh 1'),
(2906, 5773, 8169, 'J Five'),
(2907, 5773, 5775, 'Al Sufouh 2'),
(2908, 5773, 5999, 'Hilliana Tower'),
(2909, 5773, 6423, 'Olgana Tower'),
(2910, 5773, 8049, 'J5'),
(2911, 6000, 6001, 'Al Twar 1'),
(2912, 5715, 5716, 'Al Warqaa 1'),
(2913, 6000, 6003, 'Al Twar 3'),
(2914, 6000, 6002, 'Al Twar 2'),
(2915, 5715, 5717, 'Al Warqaa 2'),
(2916, 5715, 5718, 'Al Warqaa 3'),
(2917, 5715, 5719, 'Al Warqaa 4'),
(2918, 5695, 5697, 'Al Warsan 2'),
(2919, 5715, 5720, 'Al Warqaa 5'),
(2920, 5695, 5696, 'Al Warsan 1'),
(2921, 5695, 5698, 'Al Warsan 3'),
(2922, 5695, 9790, 'Dubai Textile City'),
(2923, 5709, 7534, 'Al Manara'),
(2924, 5709, 5710, 'Al Wasl Road'),
(2925, 5709, 7537, 'Al Samaya Building'),
(2926, 12, 1865, 'Al Mahra'),
(2927, 12, 2589, 'Al Mahra 1'),
(2928, 12, 2591, 'Al Mahra 2'),
(2929, 12, 3191, 'Al Reem (all)'),
(2930, 12, 1867, 'Al Reem 2'),
(2931, 12, 1866, 'Al Reem 1'),
(2932, 12, 1868, 'Al Reem 3'),
(2933, 12, 25351, 'Al Reem 4'),
(2934, 12, 25354, 'Al Reem 5'),
(2935, 12, 5765, 'Alma 2'),
(2936, 12, 1869, 'Alma'),
(2937, 12, 6510, 'Alma 1'),
(2938, 12, 3192, 'Alvorada (all)'),
(2939, 12, 1870, 'Alvorada 1'),
(2940, 12, 1871, 'Alvorada 2'),
(2941, 12, 1872, 'Alvorada 3'),
(2942, 12, 1873, 'Alvorada 4'),
(2943, 12, 7234, 'Aseel Villas'),
(2944, 12, 1874, 'Avenida'),
(2945, 12, 8638, 'Azalea'),
(2946, 12, 5766, 'Casa'),
(2947, 12, 1875, 'Golf Homes'),
(2948, 12, 1876, 'Hattan'),
(2949, 12, 25357, 'Hattan 2'),
(2950, 12, 25363, 'Hattan 1'),
(2951, 12, 25360, 'Hattan 3'),
(2952, 12, 7645, 'La Avenida 2'),
(2953, 12, 6366, 'Lila Villas'),
(2954, 12, 5946, 'Mira'),
(2955, 12, 3246, 'Mirador (all)'),
(2956, 12, 1877, 'Mirador 1'),
(2957, 12, 1878, 'Mirador 2'),
(2958, 12, 3247, 'Mirador La Coleccion (all)'),
(2959, 12, 1879, 'Mirador La Coleccion 1'),
(2960, 12, 6101, 'Palma'),
(2961, 12, 1880, 'Mirador La Coleccion 2'),
(2962, 12, 3194, 'Palmera (all)'),
(2963, 12, 1881, 'Palmera 1'),
(2964, 12, 1883, 'Palmera 3'),
(2965, 12, 1882, 'Palmera 2'),
(2966, 12, 1884, 'Palmera 4'),
(2967, 12, 1885, 'Polo Homes'),
(2968, 12, 6441, 'Rasha Villas'),
(2969, 12, 6198, 'Rosa'),
(2970, 12, 3245, 'Saheel (all)'),
(2971, 12, 1886, 'Saheel 1'),
(2972, 12, 1887, 'Saheel 2'),
(2973, 12, 1888, 'Saheel 3'),
(2974, 12, 1889, 'Saheel 4'),
(2975, 12, 25366, 'Saheel 5'),
(2976, 12, 25372, 'Saheel 7'),
(2977, 12, 25369, 'Saheel 6'),
(2978, 12, 25375, 'Saheel 8'),
(2979, 12, 6820, 'Samara'),
(2980, 12, 3380, 'Savannah (all)'),
(2981, 12, 1890, 'Savannah 1'),
(2982, 12, 1891, 'Savannah 2'),
(2983, 12, 1892, 'Terranova'),
(2984, 12, 6489, 'Yasmin'),
(2985, 8851, 25767, 'Lincoln Park Tower'),
(2986, 18, 3446, 'Al Abra Building'),
(2987, 18, 1893, 'Al Abbas Building'),
(2988, 8851, 8854, 'The Light Commercial Tower'),
(2989, 18, 25215, 'Al Fahidi Street'),
(2990, 18, 5764, 'Al Jadaf'),
(2991, 18, 2716, 'Al Masood Building'),
(2992, 18, 6053, 'Al Kifaf Commercial Building'),
(2993, 18, 2715, 'Al Majid Building'),
(2994, 18, 3171, 'Al Mankhool'),
(2995, 18, 3454, 'Al Mina'),
(2996, 18, 7699, 'Al Raffa'),
(2997, 18, 5724, 'Al Raffa Building'),
(2998, 18, 1895, 'Al Refaa'),
(2999, 18, 1896, 'Al Sharafi Building'),
(3000, 18, 1897, 'Al Souk Al Kabeer'),
(3001, 18, 5723, 'ART Building'),
(3002, 18, 6023, 'AU Tower'),
(3003, 18, 3175, 'Bastikya'),
(3004, 18, 1898, 'Bin Hendi Tower'),
(3005, 18, 3013, 'Burjuman Business Centre'),
(3006, 18, 25558, 'BurJuman Residence'),
(3007, 18, 2016, 'Cascade Manor'),
(3008, 18, 2017, 'Cascade Ville'),
(3009, 18, 3014, 'Centrepoint Apartments'),
(3010, 18, 2717, 'City Apartments'),
(3011, 18, 2018, 'D1'),
(3012, 18, 2811, 'Desert Home Residence'),
(3013, 18, 8095, 'Golden Sand Building'),
(3014, 18, 2026, 'Estate'),
(3015, 18, 2019, 'Iris Amber'),
(3016, 18, 1899, 'Jauaan Salem Building'),
(3017, 18, 3172, 'Karama'),
(3018, 18, 17504, 'Khalid Bin Waleed'),
(3019, 18, 5730, 'Karama Gold Building'),
(3020, 18, 3176, 'Khalid Bin Waleed Street'),
(3021, 18, 9421, 'La Maison'),
(3022, 18, 25567, 'Liwa Building'),
(3023, 18, 25561, 'Manazel'),
(3024, 18, 2020, 'Lotus'),
(3025, 18, 25573, 'Mankhool Road'),
(3026, 18, 8122, 'Meena Bazar'),
(3027, 18, 5725, 'Musalla Mall'),
(3028, 18, 2021, 'Nastaran'),
(3029, 18, 2022, 'Noor'),
(3030, 18, 3157, 'Oud Metha'),
(3031, 18, 2023, 'Palazzo Versace'),
(3032, 18, 2015, 'Podium'),
(3033, 18, 2024, 'Rose'),
(3034, 18, 1900, 'Rose Building'),
(3035, 18, 2025, 'Santeview'),
(3036, 18, 3522, 'Spectrum'),
(3037, 18, 9827, 'Square'),
(3038, 18, 25564, 'Style Building'),
(3039, 18, 3164, 'Sultan Business Center'),
(3040, 18, 1901, 'Sun Shine 4'),
(3041, 18, 6022, 'The Business Center'),
(3042, 18, 2812, 'Wafi Residence'),
(3043, 18, 2027, 'Yas'),
(3044, 18, 2028, 'Yuvi Residence'),
(3045, 13, 9629, 'AG Tower'),
(3046, 13, 7321, 'Al Boraq'),
(3047, 13, 1907, 'Al Manara'),
(3048, 13, 6612, 'Al Shafar Building'),
(3049, 13, 6958, 'Allure Company'),
(3050, 13, 1908, 'Aspect'),
(3051, 13, 7252, 'ATRIA'),
(3052, 13, 8972, 'Bareeq Tower'),
(3053, 13, 1909, 'B2b'),
(3054, 13, 1996, 'Bay Gate'),
(3055, 13, 1910, 'Bay Residence'),
(3056, 13, 1911, 'Bay Square'),
(3057, 13, 6702, 'Bay Square Building 1'),
(3058, 13, 6729, 'Bay Square Building 10'),
(3059, 13, 6732, 'Bay Square Building 11'),
(3060, 13, 6738, 'Bay Square Building 13'),
(3061, 13, 6735, 'Bay Square Building 12'),
(3062, 13, 6705, 'Bay Square Building 2'),
(3063, 13, 6708, 'Bay Square Building 3'),
(3064, 13, 6711, 'Bay Square Building 4'),
(3065, 13, 6714, 'Bay Square Building 5'),
(3066, 13, 6717, 'Bay Square Building 6'),
(3067, 13, 6720, 'Bay Square Building 7'),
(3068, 13, 6723, 'Bay Square Building 8'),
(3069, 13, 9256, 'Bays Edge'),
(3070, 13, 6726, 'Bay Square Building 9'),
(3071, 13, 1912, 'Bayswater'),
(3072, 13, 1913, 'Binary'),
(3073, 13, 25779, 'Belhabb Tower'),
(3074, 13, 5883, 'Blue Bay Tower'),
(3075, 13, 1914, 'Boris Becker Business'),
(3076, 13, 10055, 'Bristol'),
(3077, 13, 8966, 'Bristol Tower 1'),
(3078, 13, 1915, 'Bristol Tower 2'),
(3079, 13, 1916, 'Burj Al Alam'),
(3080, 13, 10061, 'Burj Al Nujoom'),
(3081, 13, 6808, 'Burj Damac 4'),
(3082, 13, 6039, 'Burj Damac 5'),
(3083, 13, 7324, 'Burj Damac 6'),
(3084, 13, 5762, 'Burj Pacific'),
(3085, 13, 1918, 'Burlington'),
(3086, 13, 1919, 'Business'),
(3087, 13, 5998, 'Business Central'),
(3088, 13, 5945, 'Business Resident Centre'),
(3089, 13, 1920, 'Canada Business Centre'),
(3090, 13, 1921, 'Capital Bay'),
(3091, 13, 9716, 'Capital Bay Hotel Apartments'),
(3092, 13, 7636, 'Capital Bay Tower 1'),
(3093, 13, 7639, 'Capital Bay Tower 2'),
(3094, 13, 9002, 'Capital Bay Tower A'),
(3095, 13, 9008, 'Capital Bay Tower C'),
(3096, 13, 9005, 'Capital Bay Tower B'),
(3097, 13, 5726, 'Capital Golden'),
(3098, 13, 1923, 'Churchill Executive'),
(3099, 13, 1922, 'Centre Boulevard'),
(3100, 13, 1925, 'Citadel'),
(3101, 13, 1924, 'Churchill Residency'),
(3102, 13, 1926, 'Clayton Residency'),
(3103, 13, 3138, 'Commercial Villa'),
(3104, 13, 1927, 'Clover'),
(3105, 13, 1997, 'Corner'),
(3106, 13, 1928, 'Corporate Bay'),
(3107, 13, 1929, 'Court'),
(3108, 13, 1930, 'Crystal'),
(3109, 13, 5909, 'Damac Business Tower'),
(3110, 13, 8594, 'Damac Maison Canal Views'),
(3111, 13, 8591, 'Damac Maison Cour Jardin'),
(3112, 13, 6411, 'Damac Towers'),
(3113, 13, 7375, 'Damac Towers By Paramount'),
(3114, 13, 7327, 'Dancing Towers'),
(3115, 13, 8996, 'Danish Tower'),
(3116, 13, 1931, 'Dec Business'),
(3117, 13, 1932, 'Desert Dream'),
(3118, 13, 1933, 'Dream Bay'),
(3119, 13, 1934, 'Elite'),
(3120, 13, 7333, 'Emirates Park Tower 2'),
(3121, 13, 7330, 'Emirates Park Tower 1'),
(3122, 13, 1935, 'Empire Heights'),
(3123, 13, 7995, 'ENI Coral Tower'),
(3124, 13, 3130, 'Escape Tower'),
(3125, 13, 1936, 'Exchange'),
(3126, 13, 3474, 'Executive'),
(3127, 13, 3249, 'Executive (all)'),
(3128, 13, 1940, 'Executive A'),
(3129, 13, 1941, 'Executive B'),
(3130, 13, 1937, 'Executive Bay'),
(3131, 13, 1942, 'Executive C'),
(3132, 13, 1943, 'Executive D'),
(3133, 13, 1944, 'Executive E'),
(3134, 13, 1945, 'Executive F'),
(3135, 13, 3475, 'Executive G'),
(3136, 13, 1938, 'Executive Hotel & Office'),
(3137, 13, 1946, 'Executive H'),
(3138, 13, 1947, 'Executive I'),
(3139, 13, 1948, 'Executive J'),
(3140, 13, 1949, 'Executive K'),
(3141, 13, 1950, 'Executive L'),
(3142, 13, 1951, 'Executive M'),
(3143, 13, 1939, 'Executive Suites'),
(3144, 13, 9343, 'Executive Tower A'),
(3145, 13, 9340, 'Executive Tower B'),
(3146, 13, 9346, 'Executive Tower C'),
(3147, 13, 9349, 'Executive Tower D'),
(3148, 13, 9352, 'Executive Tower E'),
(3149, 13, 9355, 'Executive Tower F'),
(3150, 13, 9364, 'Executive Tower I'),
(3151, 13, 9358, 'Executive Tower G'),
(3152, 13, 9361, 'Executive Tower H'),
(3153, 13, 9367, 'Executive Tower J'),
(3154, 13, 9370, 'Executive Tower K'),
(3155, 13, 9373, 'Executive Tower L'),
(3156, 13, 9334, 'Executive Tower M'),
(3157, 13, 9337, 'Executive Towers'),
(3158, 13, 3476, 'Executive Villas'),
(3159, 13, 1952, 'Fairview Residency'),
(3160, 13, 8483, 'Falcon Tower'),
(3161, 13, 1953, 'Fgb'),
(3162, 13, 1954, 'Fifty One'),
(3163, 13, 6210, 'Fifty One Tower'),
(3164, 13, 1956, 'Fortune Bay'),
(3165, 13, 1955, 'Fortune Avenue'),
(3166, 13, 1998, 'Forum'),
(3167, 13, 1957, 'Gemini'),
(3168, 13, 8949, 'Global Bay View'),
(3169, 13, 1958, 'Green Emirates'),
(3170, 13, 1959, 'Grosvenor'),
(3171, 13, 1960, 'Hamilton'),
(3172, 13, 1961, 'Haz'),
(3173, 13, 3491, 'Hydra'),
(3174, 13, 7780, 'International Business Tower'),
(3175, 13, 1963, 'Iris Crystal'),
(3176, 13, 1962, 'Iris Bay'),
(3177, 13, 1964, 'Jumeirah Wave Business'),
(3178, 13, 6059, 'La Residence Tower 1'),
(3179, 13, 7336, 'La Residence Tower 2'),
(3180, 13, 1965, 'Lake Central'),
(3181, 13, 1999, 'Lotus'),
(3182, 13, 9041, 'Majestine Allure'),
(3183, 13, 3503, 'Lotus Residence B'),
(3184, 13, 3502, 'Lotus Residence A'),
(3185, 13, 5731, 'Manazel Al Safa'),
(3186, 13, 1966, 'Matex'),
(3187, 13, 6070, 'Mayfair Residency'),
(3188, 13, 5985, 'MBK Tower'),
(3189, 13, 1967, 'Mayfair'),
(3190, 13, 25339, 'Merano Tower'),
(3191, 13, 1968, 'Metropolis'),
(3192, 13, 1970, 'Michael Schumacher'),
(3193, 13, 1969, 'Michael Schumacher Business Avenu'),
(3194, 13, 9023, 'Millennium Tower (Bright Start To'),
(3195, 13, 1971, 'Moon Tower'),
(3196, 13, 10247, 'Moon'),
(3197, 13, 7339, 'Nadra Tower'),
(3198, 13, 25480, 'NAIA Breeze'),
(3199, 13, 1972, 'Niki Lauda'),
(3200, 13, 2952, 'O 14'),
(3201, 13, 8975, 'O14'),
(3202, 13, 5961, 'Oberoi Tower'),
(3203, 13, 1973, 'Octavian'),
(3204, 13, 6024, 'Omniyat Tower'),
(3205, 13, 1975, 'Ontario'),
(3206, 13, 1974, 'One Business Bay'),
(3207, 13, 1976, 'Opal'),
(3208, 13, 1977, 'Opus'),
(3209, 13, 1978, 'Oval'),
(3210, 13, 1979, 'Oxford'),
(3211, 13, 7525, 'Paramount Hotel & Residences'),
(3212, 13, 10205, 'Pad'),
(3213, 13, 6654, 'Paramount Tower'),
(3214, 13, 7903, 'Paramount Tower 1'),
(3215, 13, 7906, 'Paramount Tower 2'),
(3216, 13, 7909, 'Paramount Tower 3'),
(3217, 13, 1981, 'Park Lane'),
(3218, 13, 1980, 'Park Central'),
(3219, 13, 9590, 'Park Regis'),
(3220, 13, 2001, 'Peninsula'),
(3221, 13, 1982, 'Platinum'),
(3222, 13, 6117, 'Plaza Boutique'),
(3223, 13, 8978, 'Porsche Design Towers'),
(3224, 13, 1983, 'Polaris'),
(3225, 13, 1984, 'Prime'),
(3226, 13, 2002, 'Prism'),
(3227, 13, 6922, 'Prive'),
(3228, 13, 6031, 'RBC Tower'),
(3229, 13, 7342, 'Rawasi Tower'),
(3230, 13, 5686, 'Radisson Blu Hotel'),
(3231, 13, 1985, 'Regal'),
(3232, 13, 8074, 'Safeer Tower 1'),
(3233, 13, 1987, 'Sanctuary'),
(3234, 13, 8077, 'Safeer Tower 2'),
(3235, 13, 1986, 'Sami Business'),
(3236, 13, 1988, 'Santeville'),
(3237, 13, 1989, 'Scala'),
(3238, 13, 3252, 'Shobha Ivory (all)'),
(3239, 13, 1991, 'Silver'),
(3240, 13, 7366, 'Signature By Damac'),
(3241, 13, 25212, 'Silver Bay Tower'),
(3242, 13, 1990, 'Silver Star'),
(3243, 13, 25209, 'Silver Tower'),
(3244, 13, 7348, 'Singapore Tower'),
(3245, 13, 8981, 'Sky Tower 1'),
(3246, 13, 3518, 'Sky'),
(3247, 13, 1992, 'Skyscraper'),
(3248, 13, 8984, 'Sky Tower 2'),
(3249, 13, 10214, 'Sobha Ivory'),
(3250, 13, 3196, 'Sobha Ivory (all)'),
(3251, 13, 3521, 'Sobha Ivory 2'),
(3252, 13, 3520, 'Sobha Ivory 1'),
(3253, 13, 1993, 'Sobha Sapphire'),
(3254, 13, 10325, 'Starhill'),
(3255, 13, 3524, 'Starhill Towers & Gallery 1'),
(3256, 13, 8987, 'Starhill Towers & Gallery 2'),
(3257, 13, 8990, 'Symphony Tower'),
(3258, 13, 1994, 'Stratos Plaza'),
(3259, 13, 1995, 'Tamani Art'),
(3260, 13, 5755, 'Tamani Art Tower'),
(3261, 13, 2000, 'The Pad'),
(3262, 13, 6639, 'The Atria'),
(3263, 13, 8993, 'The Conclave'),
(3264, 13, 6015, 'The Cosmopolitan'),
(3265, 13, 7345, 'The Sky Villa'),
(3266, 13, 6046, 'The Vogue'),
(3267, 13, 3526, 'U-bora 1'),
(3268, 13, 7522, 'Tower 51'),
(3269, 13, 16895, 'U-bora'),
(3270, 13, 8247, 'U-bora Tower 2'),
(3271, 13, 8080, 'Ubora Tower 1'),
(3272, 13, 8083, 'Ubora Tower 2'),
(3273, 13, 2004, 'Vision'),
(3274, 13, 2003, 'Victory Bay'),
(3275, 13, 25782, 'Volante Tower'),
(3276, 13, 2005, 'Waters Edge'),
(3277, 13, 7351, 'West Bay Tower'),
(3278, 13, 10367, 'Westburry Square'),
(3279, 13, 6802, 'West Heights'),
(3280, 13, 2006, 'West Wharf'),
(3281, 13, 2007, 'Westburry Tower 1'),
(3282, 13, 25043, 'Westburry Tower 2'),
(3283, 13, 2008, 'Windsor Manor'),
(3284, 4940, 4941, 'Babil'),
(3285, 13, 2009, 'Xl'),
(3286, 4940, 4942, 'Cascade Manor'),
(3287, 4940, 4944, 'D1 Tower'),
(3288, 4940, 4943, 'Cascade Ville'),
(3289, 4940, 7977, 'Dubai Wharf'),
(3290, 4940, 4946, 'Iris Asmar'),
(3291, 4940, 4945, 'Iris Amber'),
(3292, 4940, 6027, 'Jaddaf Plot'),
(3293, 4940, 4947, 'La Mer Tower'),
(3294, 4940, 4948, 'Lotus Tower'),
(3295, 4940, 7225, 'Manazel Al Khor'),
(3296, 4940, 4949, 'Nastaran'),
(3297, 4940, 8522, 'Niloofar Tower'),
(3298, 4940, 4951, 'Palazzo Versace'),
(3299, 4940, 4950, 'Nur Tower'),
(3300, 4940, 4952, 'Podium Tower'),
(3301, 4940, 4953, 'Rhodi Residence'),
(3302, 4940, 4954, 'Rose Tower'),
(3303, 4940, 4958, 'Santeview 1'),
(3304, 4940, 4955, 'The Estate Tower'),
(3305, 4940, 4956, 'Yas'),
(3306, 4940, 4959, 'Santeview 2'),
(3307, 4940, 4957, 'Yuvi Residence'),
(3308, 44, 25552, 'Abu Baker Al Siddique Road'),
(3309, 44, 6552, 'Abu Hail'),
(3310, 44, 25218, 'Airport Free Zone'),
(3311, 44, 3068, 'Airport Road Building'),
(3312, 44, 2086, 'Al Badia Oasis'),
(3313, 44, 2087, 'Al Badia Residences'),
(3314, 44, 2088, 'Al Badia Village'),
(3315, 44, 6312, 'Al Baraha'),
(3316, 44, 2029, 'Al Buteen Plaza'),
(3317, 44, 3069, 'Al Fattan Plaza'),
(3318, 44, 3070, 'Al Jawhara'),
(3319, 44, 5797, 'Al Khabisi'),
(3320, 44, 3453, 'Al Meraikhi'),
(3321, 44, 2030, 'Al Maktoum Road'),
(3322, 44, 2031, 'Al Muraqqabat'),
(3323, 44, 9139, 'Al Murar'),
(3324, 44, 1856, 'Al Quds Street'),
(3325, 44, 1857, 'Al Qusais 1'),
(3326, 44, 1858, 'Al Qusais 2'),
(3327, 44, 1859, 'Al Qusais Industrial Area'),
(3328, 44, 2032, 'Al Ras'),
(3329, 44, 3134, 'Al Ras Building'),
(3330, 44, 2033, 'Al Reqqa Street'),
(3331, 44, 9076, 'Al Sabkha'),
(3332, 44, 25477, 'Al Serkal Building'),
(3333, 44, 5947, 'Al Shoala Building'),
(3334, 44, 8330, 'Alliance Business Centre'),
(3335, 44, 1860, 'Amman Street'),
(3336, 44, 1861, 'Baghdad Street'),
(3337, 44, 5798, 'Baniyas Road'),
(3338, 44, 9376, 'Capital Tower'),
(3339, 44, 1862, 'Beirout Street'),
(3340, 44, 25423, 'Creekside Residence'),
(3341, 44, 6357, 'Centurion Star Tower'),
(3342, 44, 5728, 'Deira Commercial Building'),
(3343, 44, 8010, 'Deira Islands'),
(3344, 44, 25510, 'Emaar Tower A'),
(3345, 44, 2034, 'Emaar'),
(3346, 44, 7354, 'Emaar Tower B'),
(3347, 44, 1863, 'Emirates Stars'),
(3348, 44, 6054, 'ETA Star House'),
(3349, 44, 9455, 'Fish Round About'),
(3350, 44, 5727, 'Gold Land Building'),
(3351, 44, 8555, 'Galadari Plaza'),
(3352, 44, 9322, 'Gold Souq'),
(3353, 44, 3489, 'Green Tower'),
(3354, 44, 3509, 'Muhaisnah'),
(3355, 44, 3071, 'Hor Al Anz'),
(3356, 44, 2089, 'Marsa Plaza'),
(3357, 44, 9068, 'Murshid Bazar'),
(3358, 44, 3154, 'Nadd Shamma'),
(3359, 44, 9824, 'Omniyat Square'),
(3360, 44, 2035, 'Naif'),
(3361, 44, 3072, 'Old Labour Office'),
(3362, 44, 2036, 'Port Saeed'),
(3363, 44, 1864, 'Rainbow Residence'),
(3364, 44, 8561, 'Rigga Road'),
(3365, 44, 7540, 'Riggat Al Buteen'),
(3366, 44, 9295, 'Taj Palace Hotel'),
(3367, 44, 8552, 'Salah Al Din Street'),
(3368, 44, 8546, 'The Galleria Residence'),
(3369, 44, 5729, 'The Square'),
(3370, 44, 2380, 'Transemirates Building'),
(3371, 44, 2037, 'Twin'),
(3372, 36, 8582, 'Al Saqr Business Tower'),
(3373, 36, 7510, 'Burj Daman'),
(3374, 36, 2038, 'Carrera'),
(3375, 36, 9662, 'Central Park Office Tower'),
(3376, 36, 9659, 'Central Park Residential Tower'),
(3377, 36, 6189, 'Central Park Tower'),
(3378, 36, 9011, 'Currency House Offices'),
(3379, 36, 2044, 'Daman'),
(3380, 36, 9014, 'Currency House Residences'),
(3381, 36, 3197, 'Emirates Financial (all)'),
(3382, 36, 3168, 'Emirates Financial North'),
(3383, 36, 9698, 'Emirates Financial North Tower'),
(3384, 36, 3169, 'Emirates Financial South'),
(3385, 36, 7285, 'ETA Star'),
(3386, 36, 2042, 'Gate 1'),
(3387, 36, 9701, 'Emirates Financial South Tower'),
(3388, 36, 3478, 'Gate 2'),
(3389, 36, 3479, 'Gate 3'),
(3390, 36, 3480, 'Gate 4'),
(3391, 36, 2040, 'Liberty House'),
(3392, 36, 2045, 'Index'),
(3393, 36, 2041, 'Limestone'),
(3394, 36, 7255, 'Murooj Rotana Building'),
(3395, 36, 3342, 'Park (all)'),
(3396, 36, 15194, 'Park 1'),
(3397, 36, 9692, 'Park Tower 1'),
(3398, 36, 15197, 'Park 2'),
(3399, 36, 9695, 'Park Tower 2'),
(3400, 36, 2039, 'Park Tower A'),
(3401, 36, 3062, 'Park Tower B'),
(3402, 36, 7486, 'Park Towers'),
(3403, 36, 25501, 'Park Towers Podium'),
(3404, 36, 3133, 'Ritz Carlton Residences'),
(3405, 36, 2043, 'Sky Gardens'),
(3406, 36, 3198, 'The Gate (all)'),
(3407, 36, 9491, 'World Trade Centre Residences'),
(3408, 14, 3183, 'Cactus (bldgs 230-263)'),
(3409, 14, 3179, 'Mediterranean (bldgs 38-107)'),
(3410, 14, 6600, 'Ibn Battuta Gate'),
(3411, 14, 3180, 'Contemporary (bldgs 108-137)'),
(3412, 14, 8432, 'Mediterranean Cluster'),
(3413, 14, 3182, 'Mesoamerican (bldgs 203-229)'),
(3414, 14, 3181, 'Mogul (bldgs 148-202)'),
(3415, 24, 2046, '18 Burj Dubai Boulevard'),
(3416, 24, 2047, '29 Boulevard (all)'),
(3417, 14, 3178, 'Zen Bldgs (1-37)'),
(3418, 24, 6354, '29 Boulevard Podium'),
(3419, 24, 5655, '29 Boulevard Tower 1'),
(3420, 24, 6051, '48 Burjgate'),
(3421, 24, 2048, '8 Boulevard Walk'),
(3422, 24, 5656, '29 Boulevard Tower 2'),
(3423, 24, 2064, 'Address Downtown Hotel'),
(3424, 24, 2065, 'Address Dubai Mall Hotel'),
(3425, 24, 2049, 'Al Saaha'),
(3426, 24, 1902, 'Armani Residences'),
(3427, 24, 2050, 'Armani Hotel Apartments'),
(3428, 24, 2051, 'Boulevard Central (all)'),
(3429, 24, 5754, 'Boulevard Central Podium'),
(3430, 24, 5657, 'Boulevard Central Tower 1'),
(3431, 24, 6681, 'Boulevard Crescent 1'),
(3432, 24, 7156, 'Boulevard Crescent 2'),
(3433, 24, 5658, 'Boulevard Central Tower 2'),
(3434, 24, 9017, 'Boulevard Heights Podium'),
(3435, 24, 7648, 'Boulevard Heights Tower 1'),
(3436, 24, 8437, 'Boulevard Heights Tower 2'),
(3437, 24, 2052, 'Boulevard Plaza'),
(3438, 24, 8052, 'Boulevard Plaza 1'),
(3439, 24, 8055, 'Boulevard Plaza 2'),
(3440, 24, 6408, 'Boulevard Point'),
(3441, 24, 1903, 'Burj Khalifa'),
(3442, 24, 14696, 'Burj Khalifa (all)'),
(3443, 24, 1917, 'Burj Al Nujoom'),
(3444, 24, 3021, 'Burj Park 1'),
(3445, 24, 3022, 'Burj Park 2'),
(3446, 24, 3023, 'Burj Park 4'),
(3447, 24, 1905, 'Burj Park 5'),
(3448, 24, 1904, 'Burj Park 3'),
(3449, 24, 3037, 'Burj Place 1'),
(3450, 24, 3321, 'Burj Place (all)'),
(3451, 24, 14708, 'Burj Residence 1'),
(3452, 24, 14735, 'Burj Residence 10'),
(3453, 24, 3038, 'Burj Place 2'),
(3454, 24, 14711, 'Burj Residence 2'),
(3455, 24, 14714, 'Burj Residence 3'),
(3456, 24, 3195, 'Burj Park (all)'),
(3457, 24, 14720, 'Burj Residence 5'),
(3458, 24, 14723, 'Burj Residence 6'),
(3459, 24, 14717, 'Burj Residence 4'),
(3460, 24, 14726, 'Burj Residence 7'),
(3461, 24, 14729, 'Burj Residence 8'),
(3462, 24, 14732, 'Burj Residence 9'),
(3463, 24, 1906, 'Burj Square'),
(3464, 24, 3199, 'Burj Views (all)'),
(3465, 24, 10583, 'Burj Residences (all)'),
(3466, 24, 3034, 'Burj Views A'),
(3467, 24, 3035, 'Burj Views B'),
(3468, 24, 3036, 'Burj Views C'),
(3469, 24, 5949, 'Burj Vista'),
(3470, 24, 6043, 'Burj Vista 1'),
(3471, 24, 5885, 'Burj Views Podium'),
(3472, 24, 5991, 'Burj Vista 2'),
(3473, 24, 5642, 'Burjside Boulevard'),
(3474, 24, 5643, 'Burjside Terrace'),
(3475, 24, 3469, 'Claren 1'),
(3476, 24, 3200, 'Claren (all)'),
(3477, 24, 9515, 'Business Tower'),
(3478, 24, 25438, 'Claren Tower Podium'),
(3479, 24, 5957, 'Cosmopolitan Building'),
(3480, 24, 6522, 'Damac Maison'),
(3481, 24, 8597, 'Damac Maison Dubai Mall Street'),
(3482, 24, 9121, 'Downtown Views'),
(3483, 24, 6348, 'Elite Downtown Residence'),
(3484, 24, 5977, 'Emaar Boulevard'),
(3485, 24, 10532, 'Emaar Business Square'),
(3486, 24, 2054, 'Emaar Square'),
(3487, 24, 9665, 'Emaar Square Bldg 1'),
(3488, 24, 9668, 'Emaar Square Bldg 2'),
(3489, 24, 9671, 'Emaar Square Bldg 3'),
(3490, 24, 3470, 'Claren 2'),
(3491, 24, 9674, 'Emaar Square Bldg 4'),
(3492, 24, 9680, 'Emaar Square Bldg 6'),
(3493, 24, 9569, 'Forte'),
(3494, 24, 6462, 'Fountain Views 1'),
(3495, 24, 9638, 'Forte 1'),
(3496, 24, 9641, 'Forte 2'),
(3497, 24, 6465, 'Fountain Views 2'),
(3498, 24, 3202, 'Lofts (all)'),
(3499, 24, 6468, 'Fountain Views 3'),
(3500, 24, 2055, 'Grand Boulevard'),
(3501, 24, 2056, 'Lofts Central'),
(3502, 24, 2053, 'Lofts East'),
(3503, 24, 2067, 'Lofts Podium'),
(3504, 24, 2068, 'Lofts West'),
(3505, 24, 2066, 'Mansion'),
(3506, 24, 7974, 'Maram Residence'),
(3507, 24, 2057, 'North Ridge'),
(3508, 24, 6847, 'Opera Grand'),
(3509, 24, 6104, 'Prive'),
(3510, 24, 8969, 'PrivÃ© Hotel Apartment'),
(3511, 24, 6405, 'Radisson Blu Hotel'),
(3512, 24, 25046, 'RP Heights'),
(3513, 24, 2058, 'South Ridge 1'),
(3514, 24, 3201, 'South Ridge (all)'),
(3515, 24, 2059, 'South Ridge 2'),
(3516, 24, 2060, 'South Ridge 3'),
(3517, 24, 2061, 'South Ridge 4'),
(3518, 24, 2062, 'South Ridge 5'),
(3519, 24, 2063, 'South Ridge 6'),
(3520, 24, 5661, 'Southridge Podium Villas'),
(3521, 24, 3523, 'Standpoint'),
(3522, 24, 25683, 'Standard Chartered Tower'),
(3523, 24, 5687, 'Standpoint A'),
(3524, 24, 5688, 'Standpoint B'),
(3525, 24, 5776, 'The Address Fountain View'),
(3526, 24, 5693, 'The Address BLVD'),
(3527, 24, 24902, 'The Address Sky View'),
(3528, 24, 5910, 'The Address Sky View Tower 1'),
(3529, 24, 7105, 'The Address Sky View Tower 2'),
(3530, 24, 6099, 'The Distinction'),
(3531, 24, 5874, 'The Ramada Hotel'),
(3532, 24, 3203, 'The Residences (all)'),
(3533, 24, 3024, 'The Residences 1'),
(3534, 24, 3033, 'The Residences 10'),
(3535, 24, 3025, 'The Residences 2'),
(3536, 24, 3026, 'The Residences 3'),
(3537, 24, 3027, 'The Residences 4'),
(3538, 24, 3028, 'The Residences 5'),
(3539, 24, 3029, 'The Residences 6'),
(3540, 24, 3030, 'The Residences 7'),
(3541, 24, 3031, 'The Residences 8'),
(3542, 24, 7915, 'The Sterling East'),
(3543, 24, 3032, 'The Residences 9'),
(3544, 24, 6062, 'The Signature'),
(3545, 24, 7726, 'The Sterling'),
(3546, 24, 7912, 'The Sterling West'),
(3547, 24, 6279, 'The Summit'),
(3548, 24, 6061, 'Upper Crest'),
(3549, 24, 6375, 'Vida Residence'),
(3550, 6378, 2079, 'Schon Residences'),
(3551, 6378, 6381, 'Suburbia'),
(3552, 9406, 25555, 'Creek Golf & Yacht Club'),
(3553, 9406, 9409, 'Creek Views Villa'),
(3554, 9406, 25606, 'Lake View Villas'),
(3555, 9406, 9415, 'Golf Course Views Villa'),
(3556, 9406, 9412, 'Lakes Views Villa'),
(3557, 74, 15653, 'Building 26'),
(3558, 74, 3105, 'Building 25'),
(3559, 74, 6174, 'Building 49'),
(3560, 74, 8713, 'Dubai Health Care City (DHCC)'),
(3561, 74, 8519, 'Hyatt Regency Creek Heights'),
(3562, 74, 6028, 'Ibn Sina Building'),
(3563, 24, 7498, 'Zafran'),
(3564, 74, 3104, 'Jumeirah Al Khor'),
(3565, 8779, 9124, 'Dubai Hills Grove'),
(3566, 8779, 9214, 'Acacia Park Heights'),
(3567, 8779, 9127, 'Dubai Hills View'),
(3568, 8779, 9757, 'Fairways'),
(3569, 8779, 9539, 'Maple'),
(3570, 8779, 6555, 'Mulberry At Park Heights'),
(3571, 5814, 6937, 'Base Metal Zone'),
(3572, 8779, 25465, 'Parkways'),
(3573, 5814, 6940, 'Chemical Zone'),
(3574, 5814, 5816, 'Dubai Industrial City'),
(3575, 5814, 5906, 'Dubai Spanish Villas'),
(3576, 5814, 6934, 'Food And Beverage Zone'),
(3577, 5814, 25689, 'Industrial Zone'),
(3578, 5814, 6943, 'Machinery & Mechanical Equipment '),
(3579, 5814, 6946, 'Mineral Products Zone'),
(3580, 5814, 6949, 'Sahara Living'),
(3581, 5814, 5815, 'Sahara Meadows'),
(3582, 79, 3110, '@1'),
(3583, 79, 3120, '@11'),
(3584, 79, 3119, '@10'),
(3585, 79, 3121, '@12'),
(3586, 79, 3122, '@13'),
(3587, 79, 3123, '@14'),
(3588, 79, 3111, '@2'),
(3589, 79, 3112, '@3'),
(3590, 79, 3113, '@4'),
(3591, 79, 3115, '@6'),
(3592, 79, 3114, '@5'),
(3593, 79, 3116, '@7'),
(3594, 79, 3117, '@8'),
(3595, 79, 3118, '@9'),
(3596, 70, 3101, 'Abyaar Business Center'),
(3597, 70, 15641, 'Annex Warehouse'),
(3598, 70, 8116, 'Ava Residences'),
(3599, 70, 25245, 'Centurion Residences'),
(3600, 70, 2090, 'Dubai Lagoon'),
(3601, 70, 2093, 'Ewan Residence'),
(3602, 70, 2091, 'Dunes Village'),
(3603, 70, 2092, 'European Business Center'),
(3604, 70, 2094, 'Falcon House'),
(3605, 70, 2095, 'Gateways Apartments'),
(3606, 70, 3102, 'Grand Stores Warehouses'),
(3607, 70, 6414, 'Laguna Centrale'),
(3608, 70, 8614, 'Lily Residences'),
(3609, 70, 5752, 'Lake Apartments'),
(3610, 70, 9501, 'Lotus Residence'),
(3611, 70, 5881, 'Phase 1'),
(3612, 70, 7591, 'North West Apartment'),
(3613, 70, 2099, 'Palisades'),
(3614, 70, 2096, 'Regent Business Park'),
(3615, 70, 5882, 'Phase 2'),
(3616, 70, 2097, 'Ritaj'),
(3617, 70, 9503, 'Rowan Residence'),
(3618, 70, 7393, 'Royal Estates'),
(3619, 70, 2098, 'Schon Business Park'),
(3620, 70, 9505, 'Winterberry Residence'),
(3621, 15, 2137, '23 Marina'),
(3622, 15, 2242, 'Address Dubai Marina'),
(3623, 15, 2138, 'Al Anbar'),
(3624, 15, 2139, 'Al Anbar Villas'),
(3625, 15, 2140, 'Al Areifi'),
(3626, 15, 2141, 'Al Duaa'),
(3627, 15, 25345, 'Al Dar Tower'),
(3628, 15, 2184, 'Al Fairooz Tower'),
(3629, 15, 2142, 'Al Fairooz Villas'),
(3630, 15, 2143, 'Al Fardan'),
(3631, 15, 3210, 'Al Fattan (all)'),
(3632, 15, 3448, 'Al Fattan 1'),
(3633, 15, 3449, 'Al Fattan 2'),
(3634, 15, 6516, 'Al Fattan Marine Plaza'),
(3635, 15, 10853, 'Al Habtoor'),
(3636, 15, 2144, 'Al Habtoor Business Tower'),
(3637, 15, 3126, 'Al Habtoor Residential'),
(3638, 15, 7708, 'Al Husn Marina'),
(3639, 15, 3451, 'Al Majara (all)'),
(3640, 15, 2146, 'Al Majara 2'),
(3641, 15, 2145, 'Al Majara 1'),
(3642, 15, 2147, 'Al Majara 3'),
(3643, 15, 2148, 'Al Majara 4'),
(3644, 15, 2149, 'Al Majara 5'),
(3645, 15, 25248, 'Al Majara 6'),
(3646, 15, 2150, 'Al Marjan Villas'),
(3647, 15, 2151, 'Al Mass'),
(3648, 15, 8280, 'Al Mass Villas'),
(3649, 15, 2152, 'Al Mesk'),
(3650, 15, 3255, 'Al Sahab (all)'),
(3651, 15, 2153, 'Al Mesk Villas'),
(3652, 15, 2154, 'Al Sahab 1'),
(3653, 15, 2155, 'Al Sahab 2'),
(3654, 15, 2156, 'Al Seef'),
(3655, 15, 6201, 'Al Shebani Residence'),
(3656, 15, 2158, 'Ary'),
(3657, 15, 3125, 'Ariyana'),
(3658, 15, 10898, 'Atessa'),
(3659, 15, 10901, 'Aurora'),
(3660, 15, 2159, 'Attessa Tower'),
(3661, 15, 2243, 'Atlantic'),
(3662, 15, 2160, 'Aurora Tower'),
(3663, 15, 2161, 'Avant'),
(3664, 15, 2954, 'Azure (all)'),
(3665, 15, 2162, 'Azure 1'),
(3666, 15, 2163, 'Azure 2'),
(3667, 15, 2164, 'Bay Central'),
(3668, 15, 5644, 'Bay Central East'),
(3669, 15, 2157, 'Al Yass'),
(3670, 15, 5645, 'Bay Central West'),
(3671, 15, 2244, 'Bayside'),
(3672, 15, 10919, 'Beauport'),
(3673, 15, 2165, 'Bayside Residence'),
(3674, 15, 2166, 'Beauport Tower'),
(3675, 15, 2167, 'Belvedere'),
(3676, 15, 2168, 'Blakely'),
(3677, 15, 2169, 'Bonaire'),
(3678, 15, 2170, 'Botanica'),
(3679, 15, 6811, 'Bunyan Tower'),
(3680, 15, 2171, 'Casa De Sol'),
(3681, 15, 2245, 'Cascades'),
(3682, 15, 2172, 'Casa Del Mar'),
(3683, 15, 6014, 'Cayan Tower'),
(3684, 15, 7513, 'Central Tower'),
(3685, 15, 7318, 'Centro Towers'),
(3686, 15, 25348, 'City Premiere Hotel Apartments'),
(3687, 15, 3465, 'Channel'),
(3688, 15, 6669, 'Continental Tower'),
(3689, 15, 2173, 'Damac Heights'),
(3690, 15, 7531, 'DAMAC Residenze By Fendi Casa'),
(3691, 15, 3265, 'Dec (all)'),
(3692, 15, 3472, 'Dec 1'),
(3693, 15, 2174, 'Dec 2'),
(3694, 15, 2175, 'Delphine'),
(3695, 15, 2176, 'Dorra Bay'),
(3696, 15, 10952, 'Dream'),
(3697, 15, 2177, 'Dream Tower'),
(3698, 15, 8175, 'Dream Tower 1'),
(3699, 15, 8178, 'Dream Tower 2'),
(3700, 15, 2178, 'Dubai Pearl'),
(3701, 15, 6077, 'Dusit Residence'),
(3702, 15, 2179, 'Eden Blue'),
(3703, 15, 3258, 'Emaar 6 (all)'),
(3704, 15, 2181, 'Emerald Residence'),
(3705, 15, 2182, 'Emirates Crown'),
(3706, 15, 2183, 'Fairfield'),
(3707, 15, 5962, 'Escan Tower'),
(3708, 15, 24581, 'Escon Tower'),
(3709, 15, 10973, 'Fairooz'),
(3710, 15, 7315, 'Gargash Tower'),
(3711, 15, 3262, 'Grosvenor House (all)'),
(3712, 15, 2958, 'Grosvenor House Hotel'),
(3713, 15, 2957, 'Grosvenor House Residence'),
(3714, 15, 3160, 'Gulf National'),
(3715, 15, 2180, 'Elite Residence'),
(3716, 15, 15800, 'Habtoor Residential'),
(3717, 15, 2185, 'Harbour Residences'),
(3718, 15, 2186, 'Horizon'),
(3719, 15, 2187, 'Infinity'),
(3720, 15, 25306, 'Intercontinental Hotel'),
(3721, 15, 8001, 'Jannah Place Dubai Marina'),
(3722, 15, 2188, 'Iris Blue'),
(3723, 15, 3214, 'Jewels (all)'),
(3724, 15, 2962, 'Jewels 2'),
(3725, 15, 2961, 'Jewels 1'),
(3726, 15, 2189, 'Kg'),
(3727, 15, 2192, 'La Riviera'),
(3728, 15, 2191, 'La Residencia Del Mar'),
(3729, 15, 2190, 'Kpm'),
(3730, 15, 2194, 'Light House'),
(3731, 15, 2193, 'Le Reve'),
(3732, 15, 2195, 'Mag 218'),
(3733, 15, 2196, 'Manchester'),
(3734, 15, 2197, 'Marina 101'),
(3735, 15, 11093, 'Marina'),
(3736, 15, 3162, 'Marina 23'),
(3737, 15, 2198, 'Marina Arcade'),
(3738, 15, 9259, 'Marina Bay Suites'),
(3739, 15, 2953, 'Marina Crown'),
(3740, 15, 2199, 'Marina Diamond 1'),
(3741, 15, 3257, 'Marina Diamond (all)'),
(3742, 15, 2201, 'Marina Diamond 3'),
(3743, 15, 2200, 'Marina Diamond 2'),
(3744, 15, 2202, 'Marina Diamond 4'),
(3745, 15, 2203, 'Marina Diamond 5'),
(3746, 15, 2204, 'Marina Diamond 6'),
(3747, 15, 25227, 'Marina Diamond 7'),
(3748, 15, 2205, 'Marina Dreams'),
(3749, 15, 7024, 'Marina Gate'),
(3750, 15, 7807, 'Marina Gate 1'),
(3751, 15, 7813, 'Marina Gate 3'),
(3752, 15, 2206, 'Marina Heights'),
(3753, 15, 9079, 'Marina Hotel Apartments'),
(3754, 15, 2207, 'Marina Mansions'),
(3755, 15, 2208, 'Marina Park'),
(3756, 15, 2209, 'Marina Pearl'),
(3757, 15, 2211, 'Marina Plaza'),
(3758, 15, 2210, 'Marina Pinnacle'),
(3759, 15, 6069, 'Marina First Tower'),
(3760, 15, 3206, 'Marina Promenade (all)'),
(3761, 15, 25179, 'Marina Promenade Attessa'),
(3762, 15, 25185, 'Marina Promenade Beauport'),
(3763, 15, 25182, 'Marina Promenade Aurora'),
(3764, 15, 7810, 'Marina Gate 2'),
(3765, 15, 25188, 'Marina Promenade Delphine'),
(3766, 15, 25191, 'Marina Promenade Paloma'),
(3767, 15, 11069, 'Marina Quay (all)'),
(3768, 15, 25194, 'Marina Promenade Shemara'),
(3769, 15, 2212, 'Marina Quay East'),
(3770, 15, 2213, 'Marina Quay North'),
(3771, 15, 2214, 'Marina Quay West'),
(3772, 15, 7039, 'Marina Quays'),
(3773, 15, 7036, 'Marina Quays Villas'),
(3774, 15, 11072, 'Marina Residence'),
(3775, 15, 2215, 'Marina Residences A'),
(3776, 15, 8893, 'Marina Residences B'),
(3777, 15, 2216, 'Marina Sail'),
(3778, 15, 3261, 'Marina Sky (all)'),
(3779, 15, 2955, 'Marina Sky 1'),
(3780, 15, 2956, 'Marina Sky 2'),
(3781, 15, 3177, 'Marina Sky 3'),
(3782, 15, 2217, 'Marina Square'),
(3783, 15, 2218, 'Marina Star'),
(3784, 15, 2220, 'Marina Terrace'),
(3785, 15, 2219, 'Marina Suites'),
(3786, 15, 2221, 'Marina Tower'),
(3787, 15, 3209, 'Marina View (all)'),
(3788, 15, 3504, 'Marina View 1'),
(3789, 15, 3505, 'Marina View 2'),
(3790, 15, 2222, 'Marina Walk'),
(3791, 15, 3260, 'Marina Wharf (all)'),
(3792, 15, 2223, 'Marina Wharf 1'),
(3793, 15, 2224, 'Marina Wharf 2'),
(3794, 15, 25713, 'Marina Wharf 3'),
(3795, 15, 3208, 'Marinascape (all)'),
(3796, 15, 6105, 'Marinascape Avant'),
(3797, 15, 6106, 'Marinascape Oceanic'),
(3798, 15, 8086, 'Marriott Harbour Hotel And Suites'),
(3799, 15, 2136, 'Murjan'),
(3800, 15, 5772, 'My Tower'),
(3801, 15, 7309, 'Nuran Marina Serviced Residences'),
(3802, 15, 6459, 'No.9'),
(3803, 15, 6162, 'Oasis Beach Tower'),
(3804, 15, 2227, 'Ocean Heights'),
(3805, 15, 2225, 'Oceanic'),
(3806, 15, 2228, 'Opal Marina'),
(3807, 15, 4933, 'Orra'),
(3808, 15, 11126, 'Paloma'),
(3809, 15, 2229, 'Paloma Tower'),
(3810, 15, 25170, 'Park Island Bonaire'),
(3811, 15, 2230, 'Panoramic'),
(3812, 15, 25167, 'Park Island Blakely'),
(3813, 15, 3211, 'Park Island (all)'),
(3814, 15, 25173, 'Park Island Fairfield'),
(3815, 15, 25176, 'Park Island Sanibel'),
(3816, 15, 2231, 'Pentominium'),
(3817, 15, 7507, 'Pier 7'),
(3818, 15, 2246, 'Point'),
(3819, 15, 2232, 'Pier 8'),
(3820, 15, 2233, 'Princess'),
(3821, 15, 11144, 'Residencia Del Mar'),
(3822, 15, 2235, 'Royal Oceanic'),
(3823, 15, 11159, 'Shemara'),
(3824, 15, 2237, 'Shemara Tower'),
(3825, 15, 2236, 'Sanibel'),
(3826, 15, 3213, 'Silverene (all)'),
(3827, 15, 2959, 'Silverene B'),
(3828, 15, 2960, 'Silverene A'),
(3829, 15, 2239, 'South'),
(3830, 15, 8286, 'Sparkle Tower 1'),
(3831, 15, 2238, 'Sky View'),
(3832, 15, 8289, 'Sparkle Tower 2'),
(3833, 15, 8292, 'Sparkle Tower 3'),
(3834, 15, 25492, 'Sparkle Towers'),
(3835, 15, 6666, 'Sukoon Tower'),
(3836, 15, 2240, 'Sulafa'),
(3837, 15, 25330, 'Stella Maris'),
(3838, 15, 2241, 'Supreme'),
(3839, 15, 2247, 'Summit'),
(3840, 15, 2965, 'Tamani Hotel'),
(3841, 15, 9734, 'The Address Dubai Marina'),
(3842, 15, 25665, 'The One Hotel'),
(3843, 15, 5892, 'TFG Marina Hotel'),
(3844, 15, 9683, 'The Radisson Blu Residence'),
(3845, 15, 2250, 'Time Place'),
(3846, 15, 2251, 'Torch'),
(3847, 15, 2253, 'Trident Grand Residence'),
(3848, 15, 2252, 'Trident Bayside'),
(3849, 15, 5886, 'Trident Oceanic'),
(3850, 15, 2255, 'Trident Waterfront'),
(3851, 15, 2248, 'Waterfront'),
(3852, 15, 2964, 'Waves A'),
(3853, 15, 3215, 'Waves (all)'),
(3854, 15, 2963, 'Waves B'),
(3855, 15, 2256, 'West'),
(3856, 15, 5771, 'West Avenue'),
(3857, 15, 7312, 'Wyndham Dubai Marina'),
(3858, 15, 2257, 'Westside Marina'),
(3859, 15, 2258, 'Yacht Bay'),
(3860, 15, 2249, 'Zen'),
(3861, 15, 2254, 'Trident Marinascape'),
(3862, 15, 3127, 'Zulekha'),
(3863, 5911, 8190, 'ANWA'),
(3864, 15, 2259, 'Zumurud'),
(3865, 5911, 5912, 'Dubai Maritime City'),
(3866, 5911, 6080, 'Jumeirah Waterfront'),
(3867, 78, 25627, '32 Villas TECOM'),
(3868, 78, 3135, 'Al Thuraya 1'),
(3869, 78, 3405, 'Al Thuraya (all)'),
(3870, 78, 3147, 'Al Shatha'),
(3871, 78, 3136, 'Al Thuraya 2'),
(3872, 78, 11243, 'Business Central A'),
(3873, 78, 11246, 'Business Central B'),
(3874, 78, 7087, 'Business Central Tower 1'),
(3875, 78, 7090, 'Business Central Tower 2'),
(3876, 78, 8872, 'Concord Tower'),
(3877, 78, 7258, 'Dubai Jewel Tower'),
(3878, 78, 25230, 'Cordoba Residence'),
(3879, 78, 5806, 'Fraser Suites'),
(3880, 5911, 6081, 'Paramount Hotel'),
(3881, 78, 15365, 'Gloria Hotel'),
(3882, 78, 2260, 'Media One'),
(3883, 9469, 9471, 'West Tower'),
(3884, 6006, 6007, 'Dubai Studio City'),
(3885, 6006, 9325, 'Glitz 1'),
(3886, 6006, 9331, 'Glitz 3'),
(3887, 5745, 9220, 'Badrah Building 1'),
(3888, 5745, 5746, 'Badrah'),
(3889, 5745, 9223, 'Badrah Building 2'),
(3890, 5745, 9226, 'Badrah Building 3'),
(3891, 5745, 9229, 'Badrah Building 4'),
(3892, 5745, 9232, 'Badrah Building 5'),
(3893, 5745, 9235, 'Badrah Building 6'),
(3894, 5745, 9238, 'Badrah Building 7'),
(3895, 5745, 9241, 'Badrah Building 8'),
(3896, 5745, 6363, 'Madinat Al Arab'),
(3897, 5745, 5964, 'Veneto Villas'),
(3898, 5889, 6594, 'Celestia'),
(3899, 6006, 9328, 'Glitz 2'),
(3900, 5889, 5890, 'Dubai World Central'),
(3901, 5889, 9536, 'MAG 5 Boulevard'),
(3902, 5889, 7057, 'Residential City'),
(3903, 5889, 6255, 'Tenora'),
(3904, 33, 9172, 'A Villas'),
(3905, 33, 5876, 'Abidos Hotel'),
(3906, 33, 16607, 'Acacia'),
(3907, 33, 15161, 'Aegean Villa'),
(3908, 33, 3059, 'Aegean Villa North'),
(3909, 33, 2106, 'Ajmal Sarah'),
(3910, 33, 6219, 'Al Baraha'),
(3911, 33, 15683, 'Al Barari (all)'),
(3912, 33, 10715, 'Al Mazaya Villas'),
(3913, 33, 6390, 'Al Rabia'),
(3914, 33, 7594, 'Al Ramth'),
(3915, 33, 7597, 'Al Thammam'),
(3916, 33, 7837, 'Al Thammam 16'),
(3917, 33, 7834, 'Al Thammam 61'),
(3918, 33, 3173, 'Al Waha Villas'),
(3919, 33, 9599, 'Aegean Villa South'),
(3920, 33, 7867, 'Aladdin Tower'),
(3921, 33, 9742, 'Aldea'),
(3922, 33, 7864, 'Ali Baba Tower'),
(3923, 33, 2378, 'Andalusia North'),
(3924, 33, 9602, 'Andalusia South'),
(3925, 33, 10721, 'Andalusian Villa'),
(3926, 33, 9465, 'Arabella Townhouses'),
(3927, 33, 3061, 'Aralia'),
(3928, 33, 2110, 'Arjan'),
(3929, 33, 2111, 'Asmaran'),
(3930, 33, 9175, 'B Villas'),
(3931, 33, 2113, 'Bellagio'),
(3932, 33, 2112, 'Bawadi'),
(3933, 33, 2114, 'Berlin Business'),
(3934, 33, 15686, 'Bromellia'),
(3935, 33, 2377, 'Almasah'),
(3936, 33, 3460, 'Butonia'),
(3937, 33, 2109, 'Arabian Crown'),
(3938, 33, 9178, 'C Villas'),
(3939, 33, 7861, 'Caesar Tower'),
(3940, 33, 15689, 'Camellia'),
(3941, 33, 2115, 'Cassia Park'),
(3942, 33, 2116, 'Cinderella'),
(3943, 33, 25656, 'City Of Arabia'),
(3944, 33, 2117, 'Cleopatra'),
(3945, 33, 2118, 'Desert Sun'),
(3946, 33, 9181, 'D Villas'),
(3947, 33, 17408, 'Dahlia'),
(3948, 33, 7555, 'Dubai LifeStyle City'),
(3949, 33, 7543, 'Dubai Taj Mahal'),
(3950, 33, 6276, 'Dubailand Residence Complex'),
(3951, 33, 2120, 'Durar Residence Complex'),
(3952, 33, 7870, 'Eye Park Tower 1'),
(3953, 33, 3055, 'Cordoba'),
(3954, 33, 7873, 'Eye Park Tower 2'),
(3955, 33, 3152, 'Detroit Office'),
(3956, 33, 2119, 'Diamond Business Center'),
(3957, 33, 7876, 'Eye Park Tower 3'),
(3958, 33, 7879, 'Eye Park Tower 4'),
(3959, 33, 7882, 'Eye Park Tower 5'),
(3960, 33, 7885, 'Eye Park Tower 6'),
(3961, 33, 3334, 'Falcon City (all)'),
(3962, 33, 7552, 'Falcon City Villas'),
(3963, 33, 2010, 'G Office'),
(3964, 33, 2121, 'Golf City'),
(3965, 33, 6486, 'Granada'),
(3966, 33, 3056, 'Grenada'),
(3967, 33, 7546, 'Hanging Gardens Of Babylon'),
(3968, 33, 25267, 'Hercules'),
(3969, 33, 5875, 'Indigo Valley'),
(3970, 33, 2011, 'I & M'),
(3971, 33, 15692, 'Jasmine'),
(3972, 33, 6859, 'La Fontana'),
(3973, 33, 25719, 'Layan Community'),
(3974, 33, 15695, 'Leaf 16'),
(3975, 33, 2132, 'Layan Villa'),
(3976, 33, 15698, 'Leaf 22'),
(3977, 33, 2122, 'Legends'),
(3978, 33, 15701, 'Leaf 28'),
(3979, 33, 2123, 'Lime Tree Valley'),
(3980, 33, 6058, 'Lincoln Park'),
(3981, 33, 2124, 'Liwan'),
(3982, 33, 6116, 'Living Legends'),
(3983, 33, 6345, 'Madison Residences'),
(3984, 33, 5887, 'Majan'),
(3985, 33, 2379, 'Mallorca'),
(3986, 33, 2125, 'Marbella'),
(3987, 33, 7858, 'Marco Polo'),
(3988, 33, 3506, 'Maysan 1'),
(3989, 33, 3507, 'Maysan 2'),
(3990, 33, 3508, 'Maysan 3'),
(3991, 33, 2107, 'Mazaya'),
(3992, 33, 2012, 'Metro'),
(3993, 33, 2126, 'Mizin'),
(3994, 33, 5968, 'Mudon'),
(3995, 33, 25270, 'Napoleon'),
(3996, 33, 9608, 'New World South'),
(3997, 33, 10787, 'New World Villa'),
(3998, 33, 3510, 'New World Villa North'),
(3999, 33, 7840, 'Pacific Village'),
(4000, 33, 2134, 'Palmarosa'),
(4001, 33, 10790, 'Park Avenue Residence'),
(4002, 33, 3058, 'Phoenix'),
(4003, 33, 7069, 'Platinum One'),
(4004, 33, 9495, 'Ponderosa'),
(4005, 33, 7849, 'Quantum Business Tower'),
(4006, 33, 25279, 'Queen Sheba'),
(4007, 33, 2128, 'Queue Point'),
(4008, 33, 7843, 'Rahat Villas'),
(4009, 33, 25276, 'Rapunzel'),
(4010, 33, 2129, 'Remraam'),
(4011, 33, 3516, 'Sanali'),
(4012, 33, 7831, 'Sanali Flamingo'),
(4013, 33, 10799, 'Sanali I'),
(4014, 33, 3517, 'Sanali Iconic'),
(4015, 33, 7828, 'Sanali Quantum'),
(4016, 33, 9605, 'Santa Fe South'),
(4017, 33, 15167, 'Santa Fe Villa'),
(4018, 33, 3060, 'Santa Fe Villa Northa'),
(4019, 33, 2130, 'Sebco Residences'),
(4020, 33, 25273, 'Shakespeare'),
(4021, 33, 7627, 'Siena Villa Drappo'),
(4022, 33, 25264, 'Sinbad'),
(4023, 33, 7855, 'Sindbad Tower'),
(4024, 33, 2131, 'Siraj'),
(4025, 33, 15131, 'Skycourt'),
(4026, 33, 7630, 'Skycourt Towers'),
(4027, 33, 7612, 'Skycourt Towers A'),
(4028, 33, 7615, 'Skycourt Towers B'),
(4029, 33, 7618, 'Skycourt Towers C'),
(4030, 33, 7621, 'Skycourt Towers D'),
(4031, 33, 7624, 'Skycourt Towers E'),
(4032, 33, 3519, 'Skycourt Towers F'),
(4033, 33, 7852, 'Snow White Tower'),
(4034, 33, 6076, 'Solitaire Cascades'),
(4035, 33, 7846, 'Sunrise Villas'),
(4036, 33, 2133, 'Teema'),
(4037, 33, 25157, 'The Centro'),
(4038, 33, 5767, 'The Reserve'),
(4039, 33, 6531, 'The Sustainable City'),
(4040, 33, 3204, 'The Villa (all)'),
(4041, 33, 8608, 'The Villa C1'),
(4042, 33, 7549, 'Town Of Venice'),
(4043, 33, 9026, 'Town Square'),
(4044, 33, 7825, 'Townhouses Community'),
(4045, 33, 3054, 'Valencia'),
(4046, 33, 2013, 'Wadi Walk'),
(4047, 33, 2135, 'Windsor'),
(4048, 33, 2014, 'Wings Of Arabia'),
(4049, 33, 9424, 'Zahra By Nshama'),
(4050, 33, 8384, 'Zen By Indigo'),
(4051, 33, 8387, 'Zen By Indigo - Aura'),
(4052, 33, 8390, 'Zen By Indigo - Bliss'),
(4053, 33, 8393, 'Zen By Indigo - Eternity'),
(4054, 33, 9418, 'Zen By Indigo - Harmony'),
(4055, 33, 8396, 'Zen By Indigo - Heaven'),
(4056, 33, 8399, 'Zen By Indigo - Nirvana'),
(4057, 33, 8402, 'Zen By Indigo - Serene'),
(4058, 33, 3530, 'Zenith Twin Tower'),
(4059, 6008, 9250, 'Cayan Cantara'),
(4060, 6008, 6009, 'DuBiotech'),
(4061, 5795, 5796, 'Emirates Golf Course Residences'),
(4062, 26, 2366, 'Al Hambra Villa'),
(4063, 26, 3439, 'Emirate Hills Villas (all)'),
(4064, 26, 2367, 'Montgomerie Maisonettes'),
(4065, 26, 2368, 'Park Lands'),
(4066, 26, 5711, 'Private Portfolio'),
(4067, 26, 11618, 'Section E'),
(4068, 26, 11621, 'Section H'),
(4069, 26, 11624, 'Section J'),
(4070, 26, 11627, 'Section L'),
(4071, 26, 11630, 'Section P'),
(4072, 26, 11633, 'Section R'),
(4073, 26, 11636, 'Section W'),
(4074, 26, 2369, 'Sector E'),
(4075, 26, 2370, 'Sector H'),
(4076, 26, 5706, 'Sector HT'),
(4077, 26, 2371, 'Sector J'),
(4078, 26, 2372, 'Sector L'),
(4079, 26, 2373, 'Sector P'),
(4080, 26, 2374, 'Sector R'),
(4081, 26, 5641, 'Sector S'),
(4082, 26, 5705, 'Sector V'),
(4083, 26, 2375, 'Sector W'),
(4084, 26, 2376, 'Signature Homes'),
(4085, 5680, 24023, 'Al Badia'),
(4086, 26, 9689, 'Signature Villas'),
(4087, 5680, 5681, 'Al Badia Residences'),
(4088, 5680, 7267, 'Al Badia Hill Side Village'),
(4089, 5680, 7264, 'Marsa Plaza'),
(4090, 5680, 6606, 'Festival Tower'),
(4091, 31, 7279, 'Bungalows'),
(4092, 31, 8160, 'Family Villas East'),
(4093, 31, 7567, 'Bungalows Area West'),
(4094, 31, 7564, 'Family Villas West'),
(4095, 31, 25453, 'Garden West Apartments'),
(4096, 31, 2381, 'Garden Apartments East'),
(4097, 31, 2384, 'Green Community East'),
(4098, 31, 2387, 'Lake Apartments'),
(4099, 31, 2385, 'Green Community West'),
(4100, 31, 7561, 'Luxury Villas Area West'),
(4101, 31, 8866, 'South West Apartments'),
(4102, 31, 7282, 'Luxury Villas East'),
(4103, 31, 2388, 'Terrace Apartments'),
(4104, 31, 7558, 'Townhouses Area West'),
(4105, 31, 8148, 'Townhouses Area East'),
(4106, 31, 25414, 'West Phase 3'),
(4107, 20, 2390, 'Al Alka 1'),
(4108, 20, 2389, 'Al Alka'),
(4109, 20, 2391, 'Al Alka 2'),
(4110, 20, 7288, 'Al Alka 4'),
(4111, 20, 2392, 'Al Alka 3'),
(4112, 20, 2393, 'Al Arta'),
(4113, 20, 2394, 'Al Arta 1'),
(4114, 20, 2395, 'Al Arta 2'),
(4115, 20, 2396, 'Al Arta 3'),
(4116, 20, 2398, 'Al Dhafra'),
(4117, 20, 2397, 'Al Arta 4'),
(4118, 20, 2399, 'Al Dhafra 1'),
(4119, 20, 2400, 'Al Dhafra 2'),
(4120, 20, 2402, 'Al Dhafra 4'),
(4121, 20, 2401, 'Al Dhafra 3'),
(4122, 20, 7675, 'Al Dhafrah 1'),
(4123, 20, 7678, 'AL Dhafrah 2'),
(4124, 20, 7684, 'Al Dhafrah 4'),
(4125, 20, 7681, 'Al Dhafrah 3'),
(4126, 20, 2403, 'Al Ghaf'),
(4127, 20, 2404, 'Al Ghaf 1'),
(4128, 20, 2406, 'Al Ghaf 3'),
(4129, 20, 2405, 'Al Ghaf 2'),
(4130, 20, 2407, 'Al Ghaf 4'),
(4131, 20, 2408, 'Al Ghozlan'),
(4132, 20, 2409, 'Al Ghozlan 1'),
(4133, 20, 2411, 'Al Ghozlan 3'),
(4134, 20, 2410, 'Al Ghozlan 2'),
(4135, 20, 2412, 'Al Ghozlan 4'),
(4136, 20, 2413, 'Al Jaz'),
(4137, 20, 2414, 'Al Jaz 1'),
(4138, 20, 2415, 'Al Jaz 2'),
(4139, 20, 2417, 'Al Jaz 4'),
(4140, 20, 3131, 'Al Nakheel'),
(4141, 20, 2416, 'Al Jaz 3'),
(4142, 20, 2418, 'Al Nakheel 1'),
(4143, 20, 2419, 'Al Nakheel 2'),
(4144, 20, 2420, 'Al Nakheel 3'),
(4145, 20, 2422, 'Al Samar'),
(4146, 20, 2423, 'Al Samar 1'),
(4147, 20, 2421, 'Al Nakheel 4'),
(4148, 20, 2424, 'Al Samar 2'),
(4149, 20, 2425, 'Al Samar 3'),
(4150, 20, 2426, 'Al Samar 4'),
(4151, 20, 2428, 'Al Sidir 1'),
(4152, 20, 2427, 'Al Sidir'),
(4153, 20, 2429, 'Al Sidir 2'),
(4154, 20, 2430, 'Al Sidir 3'),
(4155, 20, 2431, 'Al Sidir 4'),
(4156, 20, 2432, 'Al Thayal'),
(4157, 20, 5948, 'Al Thanyah 3'),
(4158, 20, 2433, 'Al Thayal 1'),
(4159, 20, 2434, 'Al Thayal 2'),
(4160, 20, 2435, 'Al Thayal 3');
INSERT INTO `crm_subloc` (`id`, `loc_id`, `sub_loc_id`, `sub_sub_loc`) VALUES
(4161, 20, 13511, 'Arno'),
(4162, 20, 2436, 'Al Thayal 4'),
(4163, 20, 13514, 'Arno B'),
(4164, 20, 2437, 'Canal Villas'),
(4165, 20, 13517, 'Fairways (all)'),
(4166, 20, 13523, 'Fairways North'),
(4167, 20, 13520, 'Fairways East'),
(4168, 20, 3243, 'Golf (all)'),
(4169, 20, 13526, 'Fairways West'),
(4170, 20, 3482, 'Golf 1'),
(4171, 20, 3484, 'Golf 3'),
(4172, 20, 3483, 'Golf 2'),
(4173, 20, 11825, 'Golf Villas'),
(4174, 20, 3295, 'Greens Low Rise (all)'),
(4175, 20, 13550, 'Links (all)'),
(4176, 20, 13541, 'Links Canal Apartments'),
(4177, 20, 13553, 'Links East'),
(4178, 20, 13556, 'Links West'),
(4179, 20, 11828, 'Links Golf Apartment'),
(4180, 20, 13544, 'Mosella Residences'),
(4181, 20, 5763, 'Skai Residency'),
(4182, 20, 13547, 'Tanaro'),
(4183, 20, 25200, 'The Onyx Tower 2'),
(4184, 20, 25197, 'The Onyx Tower 1'),
(4185, 20, 13559, 'Travo A'),
(4186, 20, 13562, 'Travo B'),
(4187, 20, 13565, 'Turia'),
(4188, 20, 2945, 'Turia B'),
(4189, 20, 2944, 'Turia A'),
(4190, 20, 13571, 'Una'),
(4191, 20, 3018, 'Views'),
(4192, 20, 14642, 'Views 1'),
(4193, 54, 11831, 'Beirut'),
(4194, 20, 15941, 'Views 2'),
(4195, 54, 7072, 'Beirut Towers'),
(4196, 54, 3217, 'Centrium (all)'),
(4197, 54, 11834, 'Centrium 1'),
(4198, 54, 11840, 'Centrium 3'),
(4199, 54, 11837, 'Centrium 2'),
(4200, 54, 7093, 'Centrium Tower 1'),
(4201, 54, 7015, 'Centrium Tower 2'),
(4202, 54, 7018, 'Centrium Tower 3'),
(4203, 54, 3218, 'Crescent (all)'),
(4204, 54, 7021, 'Centrium Tower 4'),
(4205, 54, 3099, 'Crescent 1'),
(4206, 54, 15596, 'Crescent 2'),
(4207, 54, 2440, 'Dana Gardens'),
(4208, 54, 7474, 'Ghaya Grand Hotel'),
(4209, 54, 5793, 'IMPZ'),
(4210, 54, 3373, 'Lago Vista (all)'),
(4211, 54, 2441, 'Lago Vista'),
(4212, 54, 3096, 'Lago Vista 1'),
(4213, 54, 3097, 'Lago Vista 2'),
(4214, 54, 3374, 'Lakeside (all)'),
(4215, 54, 3098, 'Lakeside 1'),
(4216, 54, 2442, 'Lakeside 2'),
(4217, 54, 7000, 'Lakeside Tower A'),
(4218, 54, 7003, 'Lakeside Tower B'),
(4219, 54, 7006, 'Lakeside Tower C'),
(4220, 54, 25498, 'Midtown'),
(4221, 54, 7009, 'Lakeside Tower D'),
(4222, 54, 2443, 'Oakwood Residency'),
(4223, 54, 6663, 'Qasr Sabah'),
(4224, 54, 2444, 'Ramada Residence'),
(4225, 54, 5870, 'The Crescent B'),
(4226, 54, 5869, 'The Crescent A'),
(4227, 54, 5871, 'The Crescent C'),
(4228, 27, 2445, 'Al Dana 1'),
(4229, 27, 2446, 'Al Dana 2'),
(4230, 27, 2448, 'Cbd'),
(4231, 27, 2447, 'Al Jawzaa'),
(4232, 27, 2449, 'China'),
(4233, 27, 2450, 'Desert Square'),
(4234, 27, 25405, 'Dragon Mart'),
(4235, 27, 2451, 'Dream Square'),
(4236, 27, 25411, 'Dragon Mart 2'),
(4237, 27, 25408, 'Dragon Mart 1'),
(4238, 27, 2452, 'Emirates Cluster'),
(4239, 27, 2453, 'England'),
(4240, 27, 8960, 'Fakhruddin Hotel Apartments By Au'),
(4241, 27, 2455, 'France'),
(4242, 27, 2454, 'Forbidden City'),
(4243, 27, 2456, 'Global Garden View'),
(4244, 27, 2457, 'Global Point'),
(4245, 27, 2458, 'Greece'),
(4246, 27, 2459, 'Indigo Optima'),
(4247, 27, 11909, 'Indigo Spectrum 2'),
(4248, 27, 2460, 'Indigo Spectrum 1'),
(4249, 27, 2461, 'Italy'),
(4250, 27, 2462, 'Karrawan 1'),
(4251, 27, 2463, 'Lady Ratan Manor'),
(4252, 27, 2465, 'Morocco'),
(4253, 27, 2464, 'Lake District'),
(4254, 27, 2466, 'Optima'),
(4255, 27, 2467, 'Persia'),
(4256, 27, 9190, 'Phase 3'),
(4257, 27, 7135, 'Prime Residence B'),
(4258, 27, 7132, 'Prime Residence A'),
(4259, 27, 2468, 'Prime Residency'),
(4260, 27, 2469, 'Ritz Residence'),
(4261, 27, 2470, 'Riviera Dreams'),
(4262, 27, 2472, 'Riviera Residence'),
(4263, 27, 2471, 'Riviera Lake View'),
(4264, 27, 8878, 'Royalex Apartments'),
(4265, 27, 2473, 'Rufi Gardens'),
(4266, 27, 7495, 'Rufi Prime View'),
(4267, 27, 2475, 'Sallal'),
(4268, 27, 2474, 'Russia'),
(4269, 27, 6156, 'SP Residence'),
(4270, 27, 2476, 'Spain'),
(4271, 27, 2477, 'Supreme Residency'),
(4272, 27, 6537, 'Trafalgar Central'),
(4273, 27, 2479, 'Trafalgar Executive'),
(4274, 27, 8963, 'Trafalgar Tower'),
(4275, 27, 2478, 'Toronto'),
(4276, 27, 2480, 'Universal Apartments'),
(4277, 27, 2481, 'Vancouver'),
(4278, 27, 6118, 'Warsan Village'),
(4279, 19, 6513, 'Al Fattan Hotel Apartment'),
(4280, 19, 6013, 'Al Bateen Residences & Hotel Towe'),
(4281, 19, 6177, 'Al Fattan Marine Tower'),
(4282, 19, 3222, 'Amwaj (all)'),
(4283, 19, 2504, 'Amwaj 1'),
(4284, 19, 2502, 'Amwaj 3'),
(4285, 19, 2503, 'Amwaj 2'),
(4286, 19, 2501, 'Amwaj 4'),
(4287, 19, 2500, 'Amwaj 5'),
(4288, 19, 3221, 'Bahar (all)'),
(4289, 19, 2498, 'Bahar 2'),
(4290, 19, 2497, 'Bahar 3'),
(4291, 19, 2499, 'Bahar 1'),
(4292, 19, 2496, 'Bahar 4'),
(4293, 19, 2495, 'Bahar 5'),
(4294, 19, 2494, 'Bahar 6'),
(4295, 19, 8588, 'JA Oasis Beach Tower'),
(4296, 19, 25224, 'Bahar 7'),
(4297, 19, 3220, 'Murjan (all)'),
(4298, 19, 2493, 'Murjan 1'),
(4299, 19, 2492, 'Murjan 2'),
(4300, 19, 2491, 'Murjan 3'),
(4301, 19, 2490, 'Murjan 4'),
(4302, 19, 2489, 'Murjan 5'),
(4303, 19, 2488, 'Murjan 6'),
(4304, 19, 9704, 'Ramada Plaza Hotel'),
(4305, 19, 3219, 'Rimal (all)'),
(4306, 19, 2993, 'Rimal 1'),
(4307, 19, 2994, 'Rimal 2'),
(4308, 19, 2995, 'Rimal 3'),
(4309, 19, 2996, 'Rimal 4'),
(4310, 19, 2997, 'Rimal 5'),
(4311, 19, 2998, 'Rimal 6'),
(4312, 19, 6060, 'Royal Beach Residence'),
(4313, 19, 2999, 'Sadaf 1'),
(4314, 19, 3000, 'Sadaf 10'),
(4315, 19, 3293, 'Sadaf (all)'),
(4316, 19, 3001, 'Sadaf 2'),
(4317, 19, 25221, 'Sadaf 3'),
(4318, 19, 3002, 'Sadaf 4'),
(4319, 19, 3003, 'Sadaf 5'),
(4320, 19, 3004, 'Sadaf 6'),
(4321, 19, 3005, 'Sadaf 7'),
(4322, 19, 3006, 'Sadaf 8'),
(4323, 19, 3007, 'Sadaf 9'),
(4324, 19, 3294, 'Shams (all)'),
(4325, 19, 3008, 'Shams 1'),
(4326, 19, 3009, 'Shams 2'),
(4327, 19, 3010, 'Shams 3'),
(4328, 19, 3011, 'Shams 4'),
(4329, 73, 8462, 'Al Muntazah Complex'),
(4330, 73, 2364, 'Amber Residence'),
(4331, 73, 3103, 'Business Centre'),
(4332, 73, 2069, 'Capital Square'),
(4333, 73, 2070, 'Celestial Heights'),
(4334, 73, 2071, 'Deyaar Business Park'),
(4335, 73, 2482, 'Deyaar Park'),
(4336, 73, 10598, 'Deyaar Park 3'),
(4337, 73, 10601, 'Deyaar Park A'),
(4338, 73, 2072, 'F-s'),
(4339, 73, 10604, 'Deyaar Park B'),
(4340, 73, 2073, 'Image Residence'),
(4341, 73, 2074, 'Integral'),
(4342, 73, 9775, 'Jebel Ali Freezone North'),
(4343, 73, 5683, 'JAFZA'),
(4344, 73, 9778, 'Jebel Ali Freezone South'),
(4345, 73, 8635, 'Jebel Ali Hills'),
(4346, 73, 5689, 'Jebel Ali Industrial 1'),
(4347, 73, 5690, 'Jebel Ali Industrial 2'),
(4348, 73, 5691, 'Jebel Ali Industrial 3'),
(4349, 73, 5692, 'Jebel Ali Industrial 4'),
(4350, 73, 9781, 'Jebel Ali Port'),
(4351, 73, 2075, 'Kpm 2'),
(4352, 73, 2076, 'Kpm 3'),
(4353, 73, 2077, 'Orion'),
(4354, 73, 2365, 'Residential City'),
(4355, 73, 2078, 'Rufi Royal Residence'),
(4356, 73, 10631, 'Schon Residences'),
(4357, 73, 2081, 'Signet'),
(4358, 73, 2080, 'Suburbia'),
(4359, 73, 2082, 'World Wide'),
(4360, 30, 15059, 'Acacia Avenues'),
(4361, 30, 3142, 'Al Fattan Villa'),
(4362, 30, 9313, 'City Walk'),
(4363, 30, 7783, 'Island 2'),
(4364, 30, 2483, 'Jumeirah 1'),
(4365, 30, 2484, 'Jumeirah 2'),
(4366, 30, 2485, 'Jumeirah 3'),
(4367, 30, 9118, 'Jumeirah Bay Island'),
(4368, 30, 2486, 'Mms'),
(4369, 30, 8830, 'Redwood Park'),
(4370, 30, 5891, 'Sunset Mall'),
(4371, 30, 3141, 'Splendour Villas'),
(4372, 30, 2487, 'Safa'),
(4373, 30, 8101, 'The Village'),
(4374, 42, 9587, 'Al Andalus'),
(4375, 42, 2505, 'Castellon'),
(4376, 42, 2506, 'Earth Residences'),
(4377, 42, 2507, 'Fireside'),
(4378, 42, 2508, 'Flame Tree Ridge'),
(4379, 42, 9440, 'Hacienda-Orange Lake'),
(4380, 42, 2509, 'Juniper Way'),
(4381, 42, 5788, 'Lime Tree Valley'),
(4382, 42, 5789, 'Olive Point'),
(4383, 42, 2510, 'Orange Lake'),
(4384, 42, 9434, 'Provencal-Orange Lake'),
(4385, 42, 8827, 'Redwood'),
(4386, 42, 8833, 'Redwood Avenue'),
(4387, 42, 9437, 'Riviera-Orange Lake'),
(4388, 42, 25384, 'Royal Golf Villas'),
(4389, 42, 2511, 'Sanctuary Falls'),
(4390, 42, 2512, 'Sienna Lakes'),
(4391, 42, 2513, 'Sundials'),
(4392, 42, 7378, 'Tarragona'),
(4393, 42, 9443, 'Tuscan-Orange Lake'),
(4394, 42, 2514, 'Valencia Grove'),
(4395, 42, 2515, 'Whispering Pines'),
(4396, 42, 6108, 'Wildflower'),
(4397, 4916, 5898, 'Cluster A'),
(4398, 4916, 5899, 'Cluster B'),
(4399, 4916, 5901, 'Cluster D'),
(4400, 4916, 5900, 'Cluster C'),
(4401, 4916, 5902, 'Cluster E'),
(4402, 4916, 5903, 'Cluster F'),
(4403, 4916, 4918, 'Frond B'),
(4404, 4916, 4919, 'Frond C'),
(4405, 4916, 4917, 'Frond A'),
(4406, 4916, 4920, 'Frond D'),
(4407, 4916, 8471, 'Jumeirah Heights Tower A'),
(4408, 4916, 8474, 'Jumeirah Heights Tower B'),
(4409, 4916, 8477, 'Jumeirah Heights Tower C'),
(4410, 4916, 8480, 'Jumeirah Heights Tower E'),
(4411, 4916, 4921, 'Loft Cluster'),
(4412, 4916, 21641, 'Loft Cluster East'),
(4413, 4916, 25285, 'Loft Cluster West'),
(4414, 39, 2516, 'Cluster 1-5'),
(4415, 39, 2517, 'Cluster 11-15'),
(4416, 39, 2518, 'Cluster 16-20'),
(4417, 39, 2519, 'Cluster 21-25'),
(4418, 39, 2520, 'Cluster 26-30'),
(4419, 39, 2521, 'Cluster 31-35'),
(4420, 39, 2522, 'Cluster 36-40'),
(4421, 39, 2523, 'Cluster 41-45'),
(4422, 39, 2524, 'Cluster 46-50'),
(4423, 39, 2525, 'Cluster 6-10'),
(4424, 39, 5792, 'Contemporary Cluster'),
(4425, 39, 2526, 'Costa Del Sol'),
(4426, 39, 12185, 'Entertainment Foyer'),
(4427, 39, 7971, 'Entertainment Foyer-Contemporary'),
(4428, 39, 7968, 'Entertainment Foyer-European'),
(4429, 39, 7962, 'Entertainment Foyer- Mediterranea'),
(4430, 39, 7965, 'Entertainment Foyer-Islamic'),
(4431, 39, 2527, 'Entertainment Foyer-Oasis'),
(4432, 39, 2528, 'European Cluster'),
(4433, 39, 7950, 'Garden Hall -Tropical'),
(4434, 39, 7959, 'Garden Hall- Contemporary'),
(4435, 39, 7953, 'Garden Hall- Islamic'),
(4436, 39, 7956, 'Garden Hall- European'),
(4437, 39, 6093, 'Garden Hall-Mediterranean'),
(4438, 39, 2529, 'Garden Hall-Oasis'),
(4439, 39, 12191, 'Garden Home'),
(4440, 39, 2530, 'Islamic Clusters'),
(4441, 39, 7492, 'Island Two'),
(4442, 39, 7947, 'Master View - Tropical'),
(4443, 39, 8540, 'Jumeirah Islands Townhouses'),
(4444, 39, 2531, 'Jumeirah Mansions'),
(4445, 39, 7938, 'Master View- Contemporary'),
(4446, 39, 7935, 'Master View- European'),
(4447, 39, 7932, 'Master View- Islamic'),
(4448, 39, 6207, 'Master View-Mediterranean'),
(4449, 39, 7941, 'Master View-Oasis'),
(4450, 39, 7944, 'Master View-The Mansions'),
(4451, 39, 2532, 'Mediterranean Clusters'),
(4452, 39, 2533, 'Oasis Clusters'),
(4453, 39, 25576, 'The Mansions'),
(4454, 39, 2534, 'Tropical Clusters'),
(4455, 22, 2537, 'Ag'),
(4456, 22, 2538, 'Al Saqran'),
(4457, 22, 3297, 'Al Seef (all)'),
(4458, 22, 2539, 'Al Seef 1'),
(4459, 22, 2540, 'Al Seef 2'),
(4460, 22, 2541, 'Al Seef 3'),
(4461, 22, 2542, 'Al Shera'),
(4462, 22, 2543, 'Al Waleed Paradise'),
(4463, 22, 2544, 'Almas'),
(4464, 22, 2535, 'Arch'),
(4465, 22, 3298, 'Armada (all)'),
(4466, 22, 3457, 'Armada 1'),
(4467, 22, 3458, 'Armada 2'),
(4468, 22, 3459, 'Armada 3'),
(4469, 22, 2545, 'Au'),
(4470, 22, 2546, 'Bonnington'),
(4471, 22, 6429, 'Bobyan Tower'),
(4472, 22, 2547, 'Concorde'),
(4473, 22, 2548, 'Corporate'),
(4474, 22, 2550, 'Dubai Arch'),
(4475, 22, 3224, 'Dubai Gate (all)'),
(4476, 22, 2549, 'Dome'),
(4477, 22, 2551, 'Dubai Gate 1'),
(4478, 22, 2552, 'Dubai Gate 2'),
(4479, 22, 9751, 'Fancy Rose'),
(4480, 22, 2553, 'Dubai Star'),
(4481, 22, 9754, 'Fancy Rose Apartment Building'),
(4482, 22, 2554, 'Fortune Executive'),
(4483, 22, 2555, 'Fortune Tower'),
(4484, 22, 2556, 'Global Lake View'),
(4485, 22, 6952, 'Gold Tower'),
(4486, 22, 2557, 'Goldcrest Executive'),
(4487, 22, 3225, 'Goldcrest Views (all)'),
(4488, 22, 2558, 'Goldcrest Views 1'),
(4489, 22, 2559, 'Goldcrest Views 2'),
(4490, 22, 3226, 'Green Lakes (all)'),
(4491, 22, 3486, 'Green Lakes 1'),
(4492, 22, 3487, 'Green Lakes 2'),
(4493, 22, 3488, 'Green Lakes 3'),
(4494, 22, 2561, 'Hds'),
(4495, 22, 2560, 'Hds Business Centre'),
(4496, 22, 3231, 'Icon (all)'),
(4497, 22, 3492, 'Icon 1'),
(4498, 22, 3493, 'Icon 2'),
(4499, 22, 2562, 'Indigo'),
(4500, 22, 5907, 'Indigo Icon'),
(4501, 22, 6159, 'J2 Tower'),
(4502, 22, 6072, 'Jewellery And Gemplex'),
(4503, 22, 3227, 'Jumeirah Bay (all)'),
(4504, 22, 14399, 'Jumeirah Bay 1'),
(4505, 22, 14396, 'Jumeirah Bay 2'),
(4506, 22, 14402, 'Jumeirah Bay 3'),
(4507, 22, 2583, 'Jumeirah Bay X1'),
(4508, 22, 2584, 'Jumeirah Bay X2'),
(4509, 22, 25755, 'Jumeirah Bay X2'),
(4510, 22, 3151, 'Jumeirah Bay X3'),
(4511, 22, 25758, 'Jumeirah Bay X3'),
(4512, 22, 3495, 'Jumeirah Business Center 1'),
(4513, 22, 3228, 'Jumeirah Business Center (all)'),
(4514, 22, 3496, 'Jumeirah Business Center 2'),
(4515, 22, 3497, 'Jumeirah Business Center 3'),
(4516, 22, 3498, 'Jumeirah Business Center 4'),
(4517, 22, 3499, 'Jumeirah Business Center 5'),
(4518, 22, 2536, 'Lago Vista'),
(4519, 22, 2563, 'Laguna'),
(4520, 22, 6609, 'Laguna Movenpick'),
(4521, 22, 3500, 'Lake City'),
(4522, 22, 2564, 'Lake Point'),
(4523, 22, 2565, 'Lake Shore'),
(4524, 22, 2566, 'Lake Terrace'),
(4525, 22, 2567, 'Lake View'),
(4526, 22, 2568, 'Lakeside Residence'),
(4527, 22, 2569, 'Liwa Heights'),
(4528, 22, 2570, 'Madina'),
(4529, 22, 2571, 'Mag 214'),
(4530, 22, 3223, 'Mazaya Business Avenue (all)'),
(4531, 22, 21368, 'Mazaya Business Avenue 2'),
(4532, 22, 21365, 'Mazaya Business Avenue 1'),
(4533, 22, 21371, 'Mazaya Business Avenue 3'),
(4534, 22, 3185, 'Mazaya Business Avenue AA1'),
(4535, 22, 3186, 'Mazaya Business Avenue BB1'),
(4536, 22, 2572, 'O2'),
(4537, 22, 3187, 'Mazaya Business Avenue BB2'),
(4538, 22, 8929, 'One JLT'),
(4539, 22, 2573, 'One Lake Plaza'),
(4540, 22, 2574, 'Palladium'),
(4541, 22, 2575, 'Platinum'),
(4542, 22, 9065, 'Pullman Jumeirah Lakes Towers Hot'),
(4543, 22, 6026, 'Red Diamond'),
(4544, 22, 2576, 'Reef'),
(4545, 22, 3299, 'Saba (all)'),
(4546, 22, 3513, 'Saba 1'),
(4547, 22, 3514, 'Saba 2'),
(4548, 22, 3515, 'Saba 3'),
(4549, 22, 6955, 'Silver Tower'),
(4550, 22, 2577, 'Swiss'),
(4551, 22, 2578, 'Tamweel'),
(4552, 22, 2579, 'Tiffany'),
(4553, 22, 3302, 'V (all)'),
(4554, 22, 2580, 'V1'),
(4555, 22, 2581, 'V3'),
(4556, 22, 2582, 'Vista Del Lago'),
(4557, 22, 5747, 'Vue De Lac'),
(4558, 22, 3300, 'Wind (all)'),
(4559, 22, 3527, 'Wind 1'),
(4560, 22, 3528, 'Wind 2'),
(4561, 22, 14390, 'X (all)'),
(4562, 40, 2585, 'Heritage'),
(4563, 40, 6889, 'Heritage Large'),
(4564, 40, 6892, 'Heritage Small'),
(4565, 40, 2586, 'Legacy'),
(4566, 40, 6109, 'Legacy Large'),
(4567, 40, 6150, 'Legacy Nova'),
(4568, 40, 6110, 'Legacy Small'),
(4569, 40, 6483, 'Nova Villa'),
(4570, 40, 2588, 'Regional'),
(4571, 40, 2587, 'Meditterranean'),
(4572, 40, 6111, 'Regional Large'),
(4573, 40, 6112, 'Regional Small'),
(4574, 53, 2590, '7 West Residences'),
(4575, 53, 2646, 'Abjar'),
(4576, 53, 7723, 'Aces Chateau'),
(4577, 53, 15530, 'Al Mahra (all)'),
(4578, 53, 15557, 'Al Khail'),
(4579, 53, 2647, 'Al Duaa Gardens'),
(4580, 53, 12431, 'Al Mahra 1'),
(4581, 53, 12440, 'Al Mahra 2'),
(4582, 53, 6258, 'Alfa Residence'),
(4583, 53, 2592, 'Angelica Residence'),
(4584, 53, 2648, 'Apex Suites'),
(4585, 53, 2649, 'Arabian'),
(4586, 53, 2708, 'Arabian Villas'),
(4587, 53, 5787, 'Ashai Tower'),
(4588, 53, 2650, 'Astoria Residence'),
(4589, 53, 5650, 'Autumn Apartments'),
(4590, 53, 9566, 'Bachour Villas'),
(4591, 53, 2651, 'Baynonah Business Centre'),
(4592, 53, 2593, 'Blue Ice'),
(4593, 53, 25236, 'Botanica'),
(4594, 53, 3365, 'Cadi (all)'),
(4595, 53, 2626, 'Cadi 1'),
(4596, 53, 2627, 'Cadi 2'),
(4597, 53, 2628, 'Cadi 3'),
(4598, 53, 2629, 'Cadi 4'),
(4599, 53, 2630, 'Cadi 5'),
(4600, 53, 2594, 'Cappadocia'),
(4601, 53, 25393, 'Casa Blanca Townhouses'),
(4602, 53, 9493, 'Casa Royale'),
(4603, 53, 2709, 'Celestica'),
(4604, 53, 2631, 'Centre Court'),
(4605, 53, 9596, 'Condor Castle Building'),
(4606, 53, 12632, 'Dana'),
(4607, 53, 6083, 'Dana Tower'),
(4608, 53, 2595, 'Desert Rose'),
(4609, 53, 3366, 'Diamond Arch (all)'),
(4610, 53, 2652, 'Diamond Arch 1'),
(4611, 53, 2653, 'Diamond Arch Ii'),
(4612, 53, 2654, 'Diamond Views'),
(4613, 53, 3367, 'Diamond Views (all)'),
(4614, 53, 2655, 'Diamond Views 1'),
(4615, 53, 2656, 'Diamond Views 2'),
(4616, 53, 2657, 'Diamond Views 3'),
(4617, 53, 2658, 'Diamond Views 4'),
(4618, 53, 2659, 'Diamond Views 5'),
(4619, 53, 5922, 'District 10'),
(4620, 53, 5923, 'District 11'),
(4621, 53, 5924, 'District 12'),
(4622, 53, 5925, 'District 13'),
(4623, 53, 5926, 'District 14'),
(4624, 53, 5927, 'District 15'),
(4625, 53, 5928, 'District 16'),
(4626, 53, 5929, 'District 17'),
(4627, 53, 5930, 'District 18'),
(4628, 53, 5931, 'District 19'),
(4629, 53, 5932, 'District 20'),
(4630, 53, 5933, 'District 21'),
(4631, 53, 5934, 'District 22'),
(4632, 53, 5935, 'District 23'),
(4633, 53, 5936, 'District 24'),
(4634, 53, 5937, 'District 25'),
(4635, 53, 5938, 'District 26'),
(4636, 53, 5939, 'District 27'),
(4637, 53, 5940, 'District 28'),
(4638, 53, 5941, 'District 29'),
(4639, 53, 5915, 'District 3'),
(4640, 53, 5942, 'District 30'),
(4641, 53, 5916, 'District 4'),
(4642, 53, 5917, 'District 5'),
(4643, 53, 5918, 'District 6'),
(4644, 53, 5919, 'District 7'),
(4645, 53, 5920, 'District 8'),
(4646, 53, 5921, 'District 9'),
(4647, 53, 2660, 'Dorna'),
(4648, 53, 2596, 'Dunes'),
(4649, 53, 2661, 'Eclipse'),
(4650, 53, 2632, 'Eden Residence 2'),
(4651, 53, 2710, 'El Matador'),
(4652, 53, 6853, 'Emirates Garden 1'),
(4653, 53, 6856, 'Emirates Garden 2'),
(4654, 53, 2662, 'Emirates Gardens'),
(4655, 53, 2663, 'Excellence Residence'),
(4656, 53, 2597, 'Fortunato'),
(4657, 53, 2711, 'Fairway Heights'),
(4658, 53, 25668, 'Florence 2'),
(4659, 53, 2664, 'Garden Heights'),
(4660, 53, 2598, 'Gardenia'),
(4661, 53, 6417, 'Gardenia 1'),
(4662, 53, 6420, 'Gardenia 2'),
(4663, 53, 2599, 'German Supreme'),
(4664, 53, 8319, 'Ghalia Constella'),
(4665, 53, 2665, 'Global Royal'),
(4666, 53, 2600, 'Golden Heights'),
(4667, 53, 9548, 'Grand Paradis I'),
(4668, 53, 9452, 'Grand Paradis II'),
(4669, 53, 2601, 'Green Court'),
(4670, 53, 9062, 'Habitat'),
(4671, 53, 6288, 'Hanover Square'),
(4672, 53, 2699, 'Heights Golden'),
(4673, 53, 25336, 'Hyati Residence'),
(4674, 53, 12473, 'Hydra Twin'),
(4675, 53, 7075, 'Hydra Twin Towers'),
(4676, 53, 12476, 'Imperial Residence'),
(4677, 53, 2603, 'Indigo Ville'),
(4678, 53, 7744, 'Indigo Ville 1'),
(4679, 53, 7747, 'Indigo Ville 2'),
(4680, 53, 7750, 'Indigo Ville 3'),
(4681, 53, 7753, 'Indigo Ville 4'),
(4682, 53, 7756, 'Indigo Ville 5'),
(4683, 53, 7759, 'Indigo Ville 6'),
(4684, 53, 7765, 'Indigo Ville 8'),
(4685, 53, 7762, 'Indigo Ville 7'),
(4686, 53, 6501, 'Iris Park'),
(4687, 53, 8579, 'Inner Circle'),
(4688, 53, 3368, 'Jehaan (all)'),
(4689, 53, 2666, 'Jehaan Residence 2'),
(4690, 53, 2667, 'Jehaan Residence 3'),
(4691, 53, 2668, 'Jehaan Residence 9'),
(4692, 53, 2669, 'Jehaan Residences'),
(4693, 53, 3369, 'Jouri (all)'),
(4694, 53, 2634, 'Jouri 2'),
(4695, 53, 2633, 'Jouri 1'),
(4696, 53, 2635, 'Jouri 3'),
(4697, 53, 2636, 'Jouri 4'),
(4698, 53, 2637, 'Jouri 5'),
(4699, 53, 2638, 'Jouri 6'),
(4700, 53, 2639, 'Jouri Residence'),
(4701, 53, 3370, 'Judi Palace (all)'),
(4702, 53, 2640, 'Judi Palace A'),
(4703, 53, 2641, 'Judi Palace B'),
(4704, 53, 2604, 'Jumeirah Suites'),
(4705, 53, 5768, 'Jumeirah Village (all)'),
(4706, 53, 25546, 'Jumeirah Village Circle Villas'),
(4707, 53, 3440, 'Jumeirah Village Triangle  (all)'),
(4708, 53, 12689, 'Jumeirah Wave'),
(4709, 53, 2670, 'Jumeirah Wave Tower'),
(4710, 53, 5786, 'Kensington Manor'),
(4711, 53, 2642, 'Knightsbridge Court'),
(4712, 53, 2643, 'La Riviera Estate'),
(4713, 53, 5872, 'Las Casas'),
(4714, 53, 3093, 'Lavander'),
(4715, 53, 25618, 'Lavender 1'),
(4716, 53, 25621, 'Lavender 2'),
(4717, 53, 3232, 'Lawns (all)'),
(4718, 53, 2700, 'Lawns 1'),
(4719, 53, 2701, 'Lawns 2'),
(4720, 53, 2702, 'Lawns 3'),
(4721, 53, 2703, 'Lawns 5'),
(4722, 53, 2605, 'Le Grand Chateau'),
(4723, 53, 3094, 'Le Residence'),
(4724, 53, 2671, 'Les Maisonettes'),
(4725, 53, 9707, 'Lilac Park'),
(4726, 53, 5997, 'Lotus Park'),
(4727, 53, 6549, 'Lolena Residence'),
(4728, 53, 5873, 'Lootah Development'),
(4729, 53, 2606, 'Magnolia 1'),
(4730, 53, 25300, 'Magnolia 2'),
(4731, 53, 2607, 'Maimoon Twin'),
(4732, 53, 2672, 'Mak Star'),
(4733, 53, 25704, 'Mangolia 1'),
(4734, 53, 25707, 'Mangolia 2'),
(4735, 53, 2704, 'Manhattan'),
(4736, 53, 2673, 'Maple 1'),
(4737, 53, 25624, 'Maple 2'),
(4738, 53, 7720, 'Marwa Homes'),
(4739, 53, 6759, 'Masaar Residence'),
(4740, 53, 2712, 'Mediterranean Type'),
(4741, 53, 2674, 'Metropolis Lofts'),
(4742, 53, 2608, 'Melissa Residence'),
(4743, 53, 2675, 'Mirabella'),
(4744, 53, 6868, 'Mirabella 1'),
(4745, 53, 6871, 'Mirabella 2'),
(4746, 53, 6877, 'Mirabella 4'),
(4747, 53, 6874, 'Mirabella 3'),
(4748, 53, 6880, 'Mirabella 5'),
(4749, 53, 6883, 'Mirabella 6'),
(4750, 53, 6886, 'Mirabella 7'),
(4751, 53, 2610, 'Mirage Residence'),
(4752, 53, 7054, 'Monte Carlo'),
(4753, 53, 2611, 'Mosaic'),
(4754, 53, 5975, 'Mulberry 1'),
(4755, 53, 2612, 'Mulberry Mansion'),
(4756, 53, 5976, 'Mulberry 2'),
(4757, 53, 6041, 'Mulberry Park'),
(4758, 53, 6699, 'Nakheel Townhouses'),
(4759, 53, 7519, 'Nakheel Villas'),
(4760, 53, 2613, 'Noora Residence'),
(4761, 53, 2614, 'Olgana Residence'),
(4762, 53, 2615, 'Orchid'),
(4763, 53, 8324, 'Oudah Tower'),
(4764, 53, 9400, 'Outer Circle'),
(4765, 53, 7138, 'Pacific Wave Residence'),
(4766, 53, 6597, 'Park Corner'),
(4767, 53, 2676, 'Park View'),
(4768, 53, 7291, 'Park Villas'),
(4769, 53, 2645, 'Parkvale Residences'),
(4770, 53, 2677, 'Pisa Residence'),
(4771, 53, 2622, 'Plaza'),
(4772, 53, 2678, 'Plaza Residences'),
(4773, 53, 12713, 'Plaza Residential'),
(4774, 53, 2679, 'Prime Business Centre'),
(4775, 53, 2680, 'Prudential'),
(4776, 53, 2681, 'Quattro'),
(4777, 53, 2682, 'Quattro Hotel & Business Park'),
(4778, 53, 2683, 'R&r'),
(4779, 53, 8558, 'Reef Residence'),
(4780, 53, 3095, 'Reflections'),
(4781, 53, 3371, 'Reliance (all)'),
(4782, 53, 2684, 'Reliance 12'),
(4783, 53, 2685, 'Reliance 2'),
(4784, 53, 2686, 'Reliance 6'),
(4785, 53, 2687, 'Reliance 7'),
(4786, 53, 2688, 'Reliance 8'),
(4787, 53, 2689, 'Rigel'),
(4788, 53, 6471, 'Rose 1'),
(4789, 53, 6474, 'Rose 2'),
(4790, 53, 2690, 'Rose Garden'),
(4791, 53, 2616, 'Rotating'),
(4792, 53, 2691, 'Rufi Lake View'),
(4793, 53, 2692, 'Sahara'),
(4794, 53, 2617, 'Rufi Downtown'),
(4795, 53, 9304, 'Sandoval Lane'),
(4796, 53, 2693, 'Sandoval Gardens'),
(4797, 53, 2644, 'Sariin'),
(4798, 53, 2618, 'Seasons Community'),
(4799, 53, 2694, 'Serena 2'),
(4800, 53, 2619, 'Serena Residence'),
(4801, 53, 2695, 'Serenity Lakes'),
(4802, 53, 5888, 'Shamal Terraces'),
(4803, 53, 25239, 'Signature Villas'),
(4804, 53, 2620, 'Silver Heights'),
(4805, 53, 3372, 'Silver Stallion (all)'),
(4806, 53, 2713, 'Silver Stallion S 1'),
(4807, 53, 2714, 'Silver Stallion S 2'),
(4808, 53, 12434, 'Silvertallion'),
(4809, 53, 2696, 'Sobha Daffodil'),
(4810, 53, 12608, 'Soraya 1'),
(4811, 53, 7078, 'Soraya Tower'),
(4812, 53, 7609, 'Spring'),
(4813, 53, 7099, 'Suites In The Skai'),
(4814, 53, 7606, 'Summer'),
(4815, 53, 2697, 'Sunrise Gardens'),
(4816, 53, 2698, 'Sunset Gardens'),
(4817, 53, 2705, 'Tulip Park'),
(4818, 53, 2706, 'Tuscan Residences'),
(4819, 53, 2707, 'U'),
(4820, 53, 2623, 'Valencia Park'),
(4821, 53, 6777, 'Vantage'),
(4822, 53, 25242, 'Viceroy JV'),
(4823, 53, 6796, 'Villa Myra'),
(4824, 53, 6799, 'Villa Pera'),
(4825, 53, 12539, 'Wave Business'),
(4826, 53, 2624, 'West End'),
(4827, 53, 6793, 'Westar Les Maisonettes'),
(4828, 53, 6790, 'Westar Les Castelets'),
(4829, 53, 2625, 'Westar La Residencia Del Sol'),
(4830, 53, 7600, 'Westar Terrace Garden'),
(4831, 53, 7603, 'Winter'),
(4832, 53, 7141, 'Zaya Hameni'),
(4833, 5712, 5969, 'Arabian Townhouse'),
(4834, 5712, 5970, 'Arabian Villas'),
(4835, 5712, 5913, 'District 1'),
(4836, 5712, 24344, 'Arabic'),
(4837, 5712, 5914, 'District 2'),
(4838, 5712, 7381, 'District 3B'),
(4839, 5712, 7426, 'District 4B'),
(4840, 5712, 25644, 'DISTRICT 5C'),
(4841, 5712, 25525, 'District 8U'),
(4842, 5712, 25456, 'District 8V'),
(4843, 5712, 25537, 'District 9E'),
(4844, 5712, 25764, 'District 9G'),
(4845, 5712, 25203, 'El Matador Tower'),
(4846, 5712, 5714, 'Green Park'),
(4847, 5712, 2602, 'Imperial Residence'),
(4848, 5712, 5713, 'Jumeirah Village Triangle'),
(4849, 5712, 7804, 'Magnolia Residence'),
(4850, 5712, 25206, 'Mangolia Residence'),
(4851, 5712, 5971, 'Mediterranean Townhouse'),
(4852, 5712, 24347, 'Mediterannean'),
(4853, 5712, 6153, 'Pacific Edmonton Elm'),
(4854, 5712, 5972, 'Mediterranean Villas'),
(4855, 5712, 25507, 'Park Inn Residence'),
(4856, 5712, 6094, 'Point Residencia'),
(4857, 5712, 25258, 'The Imperial Residence A'),
(4858, 5712, 25261, 'The Imperial Residence B'),
(4859, 34, 3338, 'Deema (all)'),
(4860, 34, 2902, 'Deema 2'),
(4861, 34, 2901, 'Deema 1'),
(4862, 34, 2903, 'Deema 3'),
(4863, 34, 2904, 'Deema 4'),
(4864, 34, 2905, 'Forat'),
(4865, 34, 13433, 'Ghadeer'),
(4866, 34, 2906, 'Ghadeer (all)'),
(4867, 34, 5636, 'Ghadeer 1'),
(4868, 34, 5637, 'Ghadeer 2'),
(4869, 34, 2907, 'Hattan 1'),
(4870, 34, 3339, 'Hattan (all)'),
(4871, 34, 2908, 'Hattan 2'),
(4872, 34, 2909, 'Hattan 3'),
(4873, 34, 13436, 'Hattan E1'),
(4874, 34, 13439, 'Hattan E2'),
(4875, 34, 17384, 'Hattan E3'),
(4876, 34, 13442, 'Hattan L1'),
(4877, 34, 13445, 'Hattan L2'),
(4878, 34, 2911, 'Maeen 1'),
(4879, 34, 3340, 'Maeen (all)'),
(4880, 34, 2912, 'Maeen 2'),
(4881, 34, 2913, 'Maeen 3'),
(4882, 34, 5704, 'Maeen 4'),
(4883, 34, 2914, 'Maeen 5'),
(4884, 34, 7423, 'The Lakes'),
(4885, 34, 15185, 'Zulal (all)'),
(4886, 34, 2915, 'Zulal 1'),
(4887, 34, 2917, 'Zulal 3'),
(4888, 34, 2916, 'Zulal 2'),
(4889, 34, 3341, 'Zulal 4'),
(4890, 6342, 6360, 'Al Rabia Tower'),
(4891, 25, 2720, 'Meadows 3'),
(4892, 25, 2718, 'Meadows 1'),
(4893, 25, 2719, 'Meadows 2'),
(4894, 25, 2721, 'Meadows 4'),
(4895, 25, 2722, 'Meadows 5'),
(4896, 25, 2724, 'Meadows 7'),
(4897, 25, 2723, 'Meadows 6'),
(4898, 25, 2725, 'Meadows 8'),
(4899, 25, 2726, 'Meadows 9'),
(4900, 5904, 6582, 'Polo Townhouse'),
(4901, 5904, 9748, 'Diamond Business Park'),
(4902, 5904, 7651, 'Derby Residences'),
(4903, 5904, 6213, 'Grand Views'),
(4904, 5904, 25151, 'Meydan Avenue'),
(4905, 5904, 9745, 'Meydan Business Park'),
(4906, 5904, 5905, 'Millennium Estates'),
(4907, 5904, 24887, 'Millennium Estate'),
(4908, 5904, 7102, 'Polo Residences'),
(4909, 5904, 5944, 'Sobha City'),
(4910, 37, 2727, 'Al Badiya'),
(4911, 37, 25474, 'Al Badi Complex'),
(4912, 37, 3452, 'Al Manal Compound'),
(4913, 37, 24404, 'Al Mizhar 1'),
(4914, 37, 24407, 'Al Mizhar 2'),
(4915, 37, 3455, 'Al Muhasinah'),
(4916, 37, 2728, 'Courtyard Apartments'),
(4917, 37, 8528, 'Garden Apartments'),
(4918, 37, 3063, 'Ghoroob'),
(4919, 37, 25459, 'Mirdif Tulip'),
(4920, 37, 3064, 'Shorooq'),
(4921, 37, 8686, 'Shorouq'),
(4922, 37, 2729, 'Uptown Mirdif'),
(4923, 6132, 8905, 'District One'),
(4924, 6132, 9738, 'District 11-Jade At The Fields'),
(4925, 6132, 6744, 'Dubai Hills Estate'),
(4926, 6132, 9626, 'Mediterranean'),
(4927, 6132, 6098, 'Meydan Sobha'),
(4928, 6132, 7822, 'Millenium Villas'),
(4929, 6132, 8004, 'Millennium Square'),
(4930, 6132, 6135, 'Mohammad Bin Rashid City'),
(4931, 6132, 25327, 'Viridian At The Fields'),
(4932, 6132, 6741, 'Park Heights'),
(4933, 6132, 8902, 'Sobha Hartland'),
(4934, 47, 25133, 'Abbey Crescent'),
(4935, 47, 8181, 'Apex Atrium'),
(4936, 47, 7216, 'Barton House 1'),
(4937, 47, 7213, 'Barton House 2'),
(4938, 47, 3350, 'Bennett House (all)'),
(4939, 47, 2730, 'Bennett House 1'),
(4940, 47, 2731, 'Bennett House 2'),
(4941, 47, 8145, 'Bungalow Area-motor City'),
(4942, 47, 2733, 'Claverton House 2'),
(4943, 47, 2732, 'Claverton House 1'),
(4944, 47, 3351, 'Claverton House (all)'),
(4945, 47, 2734, 'Control'),
(4946, 47, 7303, 'Daytona House'),
(4947, 47, 2735, 'Detroit House'),
(4948, 47, 3352, 'Dickens Circus (all)'),
(4949, 47, 2736, 'Dickens Circus 1'),
(4950, 47, 2737, 'Dickens Circus 2'),
(4951, 47, 2738, 'Dickens Circus 3'),
(4952, 47, 2739, 'Dickens House'),
(4953, 47, 2740, 'East Lands Park'),
(4954, 47, 3353, 'Fox Hill (all)'),
(4955, 47, 25142, 'Easton Court'),
(4956, 47, 8163, 'Family Villa'),
(4957, 47, 2741, 'Fox Hill 1'),
(4958, 47, 2743, 'Fox Hill 3'),
(4959, 47, 2742, 'Fox Hill 2'),
(4960, 47, 2744, 'Fox Hill 4'),
(4961, 47, 2745, 'Fox Hill 5'),
(4962, 47, 2746, 'Fox Hill 6'),
(4963, 47, 2747, 'Fox Hill 7'),
(4964, 47, 2748, 'Fox Hill 8'),
(4965, 47, 2749, 'Fox Hill 9'),
(4966, 47, 9142, 'Grandstand 1'),
(4967, 47, 3073, 'Green Community'),
(4968, 47, 8157, 'Luxury Villa'),
(4969, 47, 3354, 'Marlowe House (all)'),
(4970, 47, 2750, 'Marlowe House 1'),
(4971, 47, 2751, 'Marlowe House 2'),
(4972, 47, 6231, 'New Bridge Hills'),
(4973, 47, 6234, 'New Bridge Hills 1'),
(4974, 47, 6237, 'New Bridge Hills 2'),
(4975, 47, 6240, 'New Bridge Hills 3'),
(4976, 47, 6243, 'New Bridge Hills 4'),
(4977, 47, 3233, 'Norton Court (all)'),
(4978, 47, 2752, 'Norton Court 1'),
(4979, 47, 2753, 'Norton Court 2'),
(4980, 47, 2754, 'Norton Court 3'),
(4981, 47, 2755, 'Norton Court 4'),
(4982, 47, 3355, 'Regent House (all)'),
(4983, 47, 2756, 'Regent House 1'),
(4984, 47, 2757, 'Regent House 2'),
(4985, 47, 3190, 'Shakespeare Circus 3'),
(4986, 47, 3189, 'Shakespeare Circus 2'),
(4987, 47, 3441, 'Shakespeare Circus (all)'),
(4988, 47, 3188, 'Shakespeare Circus 1'),
(4989, 47, 15341, 'Sherlock Circus (all)'),
(4990, 47, 2759, 'Sherlock Circus 2'),
(4991, 47, 2758, 'Sherlock Circus 1'),
(4992, 47, 2761, 'Sherlock Court'),
(4993, 47, 2760, 'Sherlock Circus 3'),
(4994, 47, 2762, 'Sherlock House'),
(4995, 47, 2763, 'Sherlock House 1'),
(4996, 47, 3357, 'Sherlock House (all)'),
(4997, 47, 2765, 'Sherlock House 3'),
(4998, 47, 2764, 'Sherlock House 2'),
(4999, 47, 2766, 'Uptown Motorcity'),
(5000, 47, 8154, 'Terraced Apartments'),
(5001, 47, 8151, 'Townhouses'),
(5002, 47, 3358, 'Widcombe House (all)'),
(5003, 47, 25136, 'Weston Court'),
(5004, 47, 2767, 'Widcombe House 1'),
(5005, 47, 2768, 'Widcombe House 2'),
(5006, 47, 2769, 'Widcombe House 3'),
(5007, 47, 7237, 'Windsor Crescent'),
(5008, 47, 2770, 'Widcombe House 4'),
(5009, 5777, 5778, 'Muhaisnah 1'),
(5010, 5777, 5783, 'Muhaisnah 2'),
(5011, 5777, 5784, 'Muhaisnah 3'),
(5012, 5777, 5779, 'Sonapur'),
(5013, 5777, 5785, 'Muhaisnah 4'),
(5014, 5979, 5980, 'Nad Al Hamar'),
(5015, 5986, 5987, 'Nad Al Sheba 1'),
(5016, 5986, 5988, 'Nad Al Sheba 2'),
(5017, 5986, 5990, 'Nad Al Sheba 4'),
(5018, 23, 2771, 'Al Attareen'),
(5019, 5986, 5989, 'Nad Al Sheba 3'),
(5020, 23, 6074, 'Al Bahar Residences'),
(5021, 23, 3020, 'Al Saaha Offices'),
(5022, 23, 2772, 'Al Tajer Residence'),
(5023, 23, 3234, 'Kamoon (all)'),
(5024, 23, 4922, 'Burj Nujoom'),
(5025, 23, 2773, 'Kamoon 1'),
(5026, 23, 2774, 'Kamoon 2'),
(5027, 23, 2775, 'Kamoon 3'),
(5028, 23, 3309, 'Miska (all)'),
(5029, 23, 2776, 'Kamoon 4'),
(5030, 23, 2777, 'Miska 1'),
(5031, 23, 2778, 'Miska 2'),
(5032, 23, 2779, 'Miska 3'),
(5033, 23, 2781, 'Miska 5'),
(5034, 23, 2780, 'Miska 4'),
(5035, 23, 3310, 'Mystica (all)'),
(5036, 23, 2782, 'Mystica 1'),
(5037, 23, 2783, 'Mystica 2'),
(5038, 23, 2784, 'Mystica 3'),
(5039, 23, 2785, 'Reehan 1'),
(5040, 23, 3311, 'Reehan (all)'),
(5041, 23, 2787, 'Reehan 3'),
(5042, 23, 2786, 'Reehan 2'),
(5043, 23, 2788, 'Reehan 4'),
(5044, 23, 2790, 'Reehan 6'),
(5045, 23, 2789, 'Reehan 5'),
(5046, 23, 2791, 'Reehan 7'),
(5047, 23, 2792, 'Reehan 8'),
(5048, 23, 5647, 'Souk Al Bahar'),
(5049, 23, 2793, 'Yansoon 1'),
(5050, 23, 8098, 'The Old Town Island'),
(5051, 23, 2794, 'Yansoon 2'),
(5052, 23, 2795, 'Yansoon 3'),
(5053, 23, 2796, 'Yansoon 4'),
(5054, 23, 2797, 'Yansoon 5'),
(5055, 23, 2798, 'Yansoon 6'),
(5056, 23, 2799, 'Yansoon 7'),
(5057, 23, 2800, 'Yansoon 8'),
(5058, 23, 2801, 'Yansoon 9'),
(5059, 23, 3313, 'Zaafaran (all)'),
(5060, 23, 3312, 'Yansoon (all)'),
(5061, 23, 2802, 'Zaafaran 1'),
(5062, 23, 2803, 'Zaafaran 2'),
(5063, 23, 2804, 'Zaafaran 3'),
(5064, 23, 2805, 'Zaafaran 4'),
(5065, 23, 3314, 'Zanzebeel (all)'),
(5066, 23, 2806, 'Zaafaran 5'),
(5067, 23, 2807, 'Zanzebeel 1'),
(5068, 23, 2808, 'Zanzebeel 2'),
(5069, 23, 2809, 'Zanzebeel 3'),
(5070, 23, 2810, 'Zanzebeel 4'),
(5071, 35, 3501, 'Lake View'),
(5072, 7980, 7986, 'Oud Al Muteena'),
(5073, 7980, 7983, 'Villas Area'),
(5074, 9554, 25692, 'Al Nasr Plaza'),
(5075, 9554, 9557, 'Pyramid Centre'),
(5076, 9554, 25686, 'The Spectrum Building'),
(5077, 5758, 5761, 'Water Homes'),
(5078, 5758, 5759, 'Signature Villas'),
(5079, 5758, 7369, 'Waterfront'),
(5080, 16, 2813, 'Abu Keibal'),
(5081, 16, 2815, 'Al Anbara'),
(5082, 16, 2816, 'Al Basri'),
(5083, 16, 2817, 'Al Dabas'),
(5084, 16, 3163, 'Al Das'),
(5085, 16, 2818, 'Al Farood'),
(5086, 16, 2819, 'Al Fattan Palm Resort'),
(5087, 16, 2820, 'Al Habool'),
(5088, 16, 2814, 'Al Hallawi'),
(5089, 5758, 5760, 'Garden Homes'),
(5090, 16, 2821, 'Al Hamri'),
(5091, 16, 2822, 'Al Haseer'),
(5092, 16, 2823, 'Al Hatimi'),
(5093, 16, 2825, 'Al Khushkar'),
(5094, 16, 2827, 'Al Nabat'),
(5095, 16, 13172, 'Al Sarood'),
(5096, 16, 2828, 'Al Sarrood'),
(5097, 16, 2829, 'Al Sedaifa District'),
(5098, 16, 2830, 'Al Sefri'),
(5099, 16, 2831, 'Al Shahla'),
(5100, 16, 2826, 'Al Msalli'),
(5101, 16, 2824, 'Al Khudrawi'),
(5102, 16, 2832, 'Al Sultana'),
(5103, 16, 2833, 'Al Tamr'),
(5104, 16, 6372, 'Anantara North Residence'),
(5105, 16, 6049, 'Anantara Residences'),
(5106, 16, 6369, 'Anantara South Residence'),
(5107, 16, 2834, 'Ashoka Villas'),
(5108, 16, 6780, 'Atlantis The Palm'),
(5109, 16, 7633, 'Azure Residences'),
(5110, 16, 2835, 'Balqis Residence'),
(5111, 16, 2836, 'Canal Cove'),
(5112, 16, 5818, 'Canal Cove Frond A'),
(5113, 16, 5819, 'Canal Cove Frond B'),
(5114, 16, 5820, 'Canal Cove Frond C'),
(5115, 16, 5821, 'Canal Cove Frond D'),
(5116, 16, 5822, 'Canal Cove Frond E'),
(5117, 16, 5824, 'Canal Cove Frond G'),
(5118, 16, 5823, 'Canal Cove Frond F'),
(5119, 16, 5825, 'Canal Cove Frond H'),
(5120, 16, 5826, 'Canal Cove Frond I'),
(5121, 16, 5827, 'Canal Cove Frond J'),
(5122, 16, 5828, 'Canal Cove Frond K'),
(5123, 16, 5829, 'Canal Cove Frond L'),
(5124, 16, 5831, 'Canal Cove Frond N'),
(5125, 16, 5833, 'Canal Cove Frond P'),
(5126, 16, 5832, 'Canal Cove Frond O'),
(5127, 16, 2838, 'Central Rotunda'),
(5128, 16, 25462, 'Delano Dubai'),
(5129, 16, 5960, 'Club Vista Mare'),
(5130, 16, 5965, 'Dream Palm Residence'),
(5131, 16, 9280, 'Dukes Oceana'),
(5132, 16, 2839, 'Emerald Palace'),
(5133, 16, 3236, 'Fairmont Residence (all)'),
(5134, 16, 5830, 'Canal Cove Frond M'),
(5135, 16, 2991, 'Fairmont Residence North'),
(5136, 16, 2992, 'Fairmont Residence South'),
(5137, 16, 13211, 'Frond A'),
(5138, 16, 13214, 'Frond B'),
(5139, 16, 13217, 'Frond C'),
(5140, 16, 13220, 'Frond D'),
(5141, 16, 13223, 'Frond E'),
(5142, 16, 13226, 'Frond F'),
(5143, 16, 13229, 'Frond K'),
(5144, 16, 13232, 'Frond L'),
(5145, 16, 13235, 'Frond M'),
(5146, 16, 13238, 'Frond O'),
(5147, 16, 13241, 'Frond P'),
(5148, 16, 3235, 'Frond Villas (all)'),
(5149, 16, 13244, 'Garden Homes'),
(5150, 16, 2851, 'Garden Homes (all)'),
(5151, 16, 5834, 'Garden Homes Frond A'),
(5152, 16, 5835, 'Garden Homes Frond B'),
(5153, 16, 5836, 'Garden Homes Frond C'),
(5154, 16, 5837, 'Garden Homes Frond D'),
(5155, 16, 5839, 'Garden Homes Frond F'),
(5156, 16, 5838, 'Garden Homes Frond E'),
(5157, 16, 5840, 'Garden Homes Frond G'),
(5158, 16, 5841, 'Garden Homes Frond H'),
(5159, 16, 5842, 'Garden Homes Frond I'),
(5160, 16, 5843, 'Garden Homes Frond J'),
(5161, 16, 5844, 'Garden Homes Frond K'),
(5162, 16, 5845, 'Garden Homes Frond L'),
(5163, 16, 5846, 'Garden Homes Frond M'),
(5164, 16, 5847, 'Garden Homes Frond N'),
(5165, 16, 5848, 'Garden Homes Frond O'),
(5166, 16, 5849, 'Garden Homes Frond P'),
(5167, 16, 3237, 'Golden Mile (all)'),
(5168, 16, 2975, 'Golden Mile 1'),
(5169, 16, 2976, 'Golden Mile 2'),
(5170, 16, 2977, 'Golden Mile 3'),
(5171, 16, 2979, 'Golden Mile 5'),
(5172, 16, 2978, 'Golden Mile 4'),
(5173, 16, 2980, 'Golden Mile 6'),
(5174, 16, 2981, 'Golden Mile 7'),
(5175, 16, 2983, 'Golden Mile 9'),
(5176, 16, 2982, 'Golden Mile 8'),
(5177, 16, 5708, 'Grandeur Maurya Residence'),
(5178, 16, 2984, 'Golden Mile 10'),
(5179, 16, 5707, 'Grandeur Mughal Residence'),
(5180, 16, 2852, 'Grandeur Residence'),
(5181, 16, 2853, 'Jash Falqa'),
(5182, 16, 5640, 'Jash Hamad'),
(5183, 16, 5884, 'Jumeirah Zabeel Saray'),
(5184, 16, 3277, 'Kempinski (all)'),
(5185, 16, 3239, 'Marina Residence (all)'),
(5186, 16, 2854, 'Kempinski Hotel Emerald Palace'),
(5187, 16, 3238, 'Kingdom Of Sheba (all)'),
(5188, 16, 2985, 'Marina Residence 1'),
(5189, 16, 2986, 'Marina Residence 2'),
(5190, 16, 2989, 'Marina Residence 5'),
(5191, 16, 2987, 'Marina Residence 3'),
(5192, 16, 2988, 'Marina Residence 4'),
(5193, 16, 2990, 'Marina Residence 6'),
(5194, 16, 9584, 'Muraba Residences'),
(5195, 16, 13274, 'Nabat'),
(5196, 16, 3278, 'Oceana (all)'),
(5197, 16, 2858, 'Oceana Adriatic'),
(5198, 16, 2855, 'Kempinski Palm Residence'),
(5199, 16, 2859, 'Oceana Aegean'),
(5200, 16, 2860, 'Oceana Atlantic'),
(5201, 16, 2861, 'Oceana Baltic'),
(5202, 16, 2837, 'Oceana Caribbean'),
(5203, 16, 2857, 'Oceana Southern'),
(5204, 16, 2862, 'Oceana Pacific'),
(5205, 16, 2863, 'Palm Terrace'),
(5206, 16, 8298, 'Palm Tower'),
(5207, 16, 5648, 'Palm Views'),
(5208, 16, 7276, 'Palm Views East'),
(5209, 16, 7273, 'Palm Views West'),
(5210, 16, 5649, 'Palma Residences'),
(5211, 16, 9530, 'Serenia Residences'),
(5212, 16, 25396, 'Serenia Residences North'),
(5213, 16, 25399, 'Serenia Residences East'),
(5214, 16, 25402, 'Serenia Residences West'),
(5215, 16, 3241, 'Shoreline Apartments (all)'),
(5216, 16, 13301, 'Signature Villas'),
(5217, 16, 5850, 'Signature Villas Frond A'),
(5218, 16, 2864, 'Signature Villas (all)'),
(5219, 16, 5851, 'Signature Villas Frond B'),
(5220, 16, 5852, 'Signature Villas Frond C'),
(5221, 16, 5853, 'Signature Villas Frond D'),
(5222, 16, 5854, 'Signature Villas Frond E'),
(5223, 16, 5855, 'Signature Villas Frond F'),
(5224, 16, 5856, 'Signature Villas Frond G'),
(5225, 16, 5857, 'Signature Villas Frond H'),
(5226, 16, 5858, 'Signature Villas Frond I'),
(5227, 16, 5859, 'Signature Villas Frond J'),
(5228, 16, 5860, 'Signature Villas Frond K'),
(5229, 16, 5861, 'Signature Villas Frond L'),
(5230, 16, 5863, 'Signature Villas Frond N'),
(5231, 16, 5862, 'Signature Villas Frond M'),
(5232, 16, 5864, 'Signature Villas Frond O'),
(5233, 16, 6534, 'Sofitel Dubai The Palm'),
(5234, 16, 5865, 'Signature Villas Frond P'),
(5235, 16, 3280, 'Taj (all)'),
(5236, 16, 2865, 'Taj Exotica Resort&spa'),
(5237, 16, 2866, 'Taj Grandeur Residences'),
(5238, 16, 6672, 'The 8'),
(5239, 16, 6786, 'The Crescent'),
(5240, 16, 9551, 'The One'),
(5241, 16, 6591, 'The Palm Tower Residences'),
(5242, 16, 3279, 'Tiara (all)'),
(5243, 16, 2973, 'Tiara Amber'),
(5244, 16, 2968, 'Tiara Aquamarine'),
(5245, 16, 2969, 'Tiara Diamond'),
(5246, 16, 2971, 'Tiara Emerald'),
(5247, 16, 2868, 'Tiara Hotel'),
(5248, 16, 2970, 'Tiara Ruby'),
(5249, 16, 2974, 'Tiara Sapphire'),
(5250, 16, 2972, 'Tiara Tanzanite'),
(5251, 16, 8890, 'Viceroy Beach Villas'),
(5252, 16, 5966, 'Viceroy Hotel'),
(5253, 16, 8887, 'Viceroy Residence'),
(5254, 5809, 5810, 'Pearl Jumeirah Island'),
(5255, 5951, 5952, 'Ras Al Khor Industrial 1'),
(5256, 5951, 5953, 'Ras Al Khor Industrial 2'),
(5257, 6004, 7108, 'Mira 1'),
(5258, 5951, 5954, 'Ras Al Khor Industrial 3'),
(5259, 6004, 6005, 'Mira'),
(5260, 6004, 7111, 'Mira 2'),
(5261, 6004, 7114, 'Mira 3'),
(5262, 6004, 7117, 'Mira 4'),
(5263, 6004, 7231, 'Mira 5'),
(5264, 6004, 6540, 'Mira Oasis'),
(5265, 6004, 7120, 'Mira Oasis 1'),
(5266, 6004, 7126, 'Mira Oasis 3'),
(5267, 6004, 7123, 'Mira Oasis 2'),
(5268, 38, 6492, 'Al Bidaa'),
(5269, 38, 2869, 'Al Diyafa Street'),
(5270, 38, 3066, 'Al Hudaiba'),
(5271, 38, 3473, 'Dune Building'),
(5272, 38, 3065, 'Jafaliya'),
(5273, 38, 3067, 'Satwa Road'),
(5274, 28, 2871, 'Al Attar'),
(5275, 28, 2870, 'Al Attar Commercial'),
(5276, 28, 3043, 'Al Attar Business'),
(5277, 28, 3450, 'Al Hawai'),
(5278, 28, 6222, 'Al Manar Tower'),
(5279, 28, 6435, 'Al Maidoor Building'),
(5280, 28, 25145, 'Al Moosa Tower 1'),
(5281, 28, 25432, 'Al Murooj Rotana Hotel'),
(5282, 28, 25148, 'Al Moosa Tower 2'),
(5283, 28, 6558, 'Al Rostamani Tower A'),
(5284, 28, 6561, 'Al Rostamani Tower B'),
(5285, 28, 6071, 'Al Safa Tower'),
(5286, 28, 8250, 'Al Saqr Business Tower'),
(5287, 28, 2872, 'Al Sondos'),
(5288, 28, 6228, 'API Trio Towers'),
(5289, 28, 8434, 'Al Habtoor Residences'),
(5290, 28, 3456, 'Al Tayer'),
(5291, 28, 3174, 'Ascott Park Place'),
(5292, 28, 3039, 'Aspin'),
(5293, 28, 7918, 'Bldg 2020'),
(5294, 28, 5877, 'Blue Tower'),
(5295, 28, 9719, 'Brashy Building'),
(5296, 28, 6204, 'Burj Al Salam'),
(5297, 28, 2873, 'Capricorn'),
(5298, 28, 3466, 'Chelsea'),
(5299, 28, 3467, 'City 1'),
(5300, 28, 3468, 'City 2'),
(5301, 28, 6588, 'Conrad'),
(5302, 28, 3140, 'Ct'),
(5303, 28, 2874, 'Damas'),
(5304, 28, 9103, 'DIFC Trade Centre'),
(5305, 28, 3165, 'Dusit Hotel'),
(5306, 28, 6017, 'DNI Building'),
(5307, 28, 6925, 'DXB Tower'),
(5308, 28, 2875, 'Emaar Business Park'),
(5309, 28, 5878, 'Emirates Grand Hotel'),
(5310, 28, 2876, 'Emirates'),
(5311, 28, 8104, 'Emirates Tower'),
(5312, 28, 2877, 'Fairmont Hotel'),
(5313, 28, 3041, 'Falcon'),
(5314, 28, 25630, 'Four Points Hotel By Sheraton'),
(5315, 28, 3132, 'Ghaya Residence'),
(5316, 28, 8172, 'Grosvenor Commercial Tower'),
(5317, 28, 7360, 'H Office Tower'),
(5318, 28, 3148, 'Jumeirah Emirates'),
(5319, 28, 5732, 'Holiday Centre'),
(5320, 28, 6324, 'Latifa Tower'),
(5321, 28, 2878, 'Mall Of Emirates'),
(5322, 28, 3149, 'Manazel Al Safa'),
(5323, 28, 6696, 'Mazaya Centre'),
(5324, 28, 6291, 'Maze Tower'),
(5325, 28, 2879, 'Millennium Plaza'),
(5326, 28, 2880, 'Monarch'),
(5327, 28, 9020, 'Millennium Tower'),
(5328, 28, 2881, 'Nassima'),
(5329, 28, 6025, 'New Mazda Complex'),
(5330, 28, 2882, 'Oasis'),
(5331, 28, 6817, 'Oasis Centre'),
(5332, 28, 5866, 'Park Place Tower'),
(5333, 28, 3042, 'Rolex'),
(5334, 28, 3040, 'Sama'),
(5335, 28, 25282, 'Sheraton Grand Hotel'),
(5336, 28, 8549, 'Shangri-la'),
(5337, 28, 2883, 'Single Business'),
(5338, 28, 2884, 'Tecom'),
(5339, 28, 25638, 'Trade Center Hotel Apartments'),
(5340, 28, 2885, 'Toyota Building'),
(5341, 28, 8468, 'Union Tower'),
(5342, 28, 2886, 'World Trade Center-commercial'),
(5343, 28, 8333, 'White Crown Building'),
(5344, 28, 6747, 'World Trade Center Residence'),
(5345, 28, 3529, 'Zabeel'),
(5346, 55, 2261, 'Apricot'),
(5347, 55, 25770, 'Arabian Gates'),
(5348, 55, 2262, 'Atrium Gold'),
(5349, 55, 2264, 'Axis Residence 2'),
(5350, 55, 2263, 'Axis Residence 1'),
(5351, 55, 2265, 'Axis Residence 3'),
(5352, 55, 2266, 'Axis Residence 4'),
(5353, 55, 2267, 'Axis Residence 5'),
(5354, 55, 2268, 'Axis Residence 6'),
(5355, 55, 2269, 'Axis Residence 8'),
(5356, 55, 2270, 'Axis Residence 9'),
(5357, 55, 9527, 'Binghatti Apartments'),
(5358, 55, 3216, 'Axis Residences (all)'),
(5359, 55, 9262, 'Axis Silver'),
(5360, 55, 25716, 'Binghatti Views'),
(5361, 55, 2271, 'Cambridge Business Centre'),
(5362, 55, 2281, 'Cedre Villa'),
(5363, 55, 11348, 'Cedre Villas'),
(5364, 55, 2273, 'Cordoba Palace'),
(5365, 55, 2272, 'Coral Residence'),
(5366, 55, 6115, 'Donna Tower'),
(5367, 55, 6961, 'Donna Tower 1'),
(5368, 55, 2297, 'Dunes'),
(5369, 55, 6964, 'Donna Tower 2'),
(5370, 55, 6693, 'Executive Villa'),
(5371, 55, 16034, 'Head Quarter'),
(5372, 55, 5956, 'Intercontinental College Accommod'),
(5373, 55, 7516, 'Imperial Building'),
(5374, 55, 2274, 'It Plaza'),
(5375, 55, 2275, 'Jade Residence'),
(5376, 55, 7372, 'Le Presidium'),
(5377, 55, 2276, 'La Vista Residence'),
(5378, 55, 2277, 'Le Solarium'),
(5379, 55, 7642, 'Liwan Tower'),
(5380, 55, 9112, 'Mirage Residence'),
(5381, 55, 2278, 'Lynx Business'),
(5382, 55, 2279, 'Narcissus Building'),
(5383, 55, 8316, 'Nibras Tower'),
(5384, 55, 25749, 'Nova Tower'),
(5385, 55, 2280, 'Oasis High Park'),
(5386, 55, 8128, 'Oasis Star'),
(5387, 55, 15614, 'Palace'),
(5388, 55, 8860, 'Palace Tower 2'),
(5389, 55, 3100, 'Palace Tower 1'),
(5390, 55, 2282, 'Park Avenue'),
(5391, 55, 7066, 'Park Avenue Commercial Tower'),
(5392, 55, 7063, 'Park Avenue Residence'),
(5393, 55, 2283, 'Park Terrace'),
(5394, 55, 2284, 'Ruby Residence'),
(5395, 55, 8166, 'Platinum Residences'),
(5396, 55, 2286, 'Saima Heights'),
(5397, 55, 8007, 'Semmer Villas'),
(5398, 55, 2287, 'Sapphire'),
(5399, 55, 3184, 'Sevenam Crown'),
(5400, 55, 2288, 'Silicon Arch'),
(5401, 55, 6042, 'Silicon Avenue'),
(5402, 55, 6850, 'Silicon Gate 1'),
(5403, 55, 2289, 'Silicon Gates'),
(5404, 55, 2290, 'Silicon Gates 2'),
(5405, 55, 6525, 'Silicon Gates 3'),
(5406, 55, 2291, 'Silicon Heights'),
(5407, 55, 9726, 'Silicon Gates 4'),
(5408, 55, 2292, 'Silicon Heights 2'),
(5409, 55, 2285, 'Sit'),
(5410, 55, 2294, 'Silicon Star'),
(5411, 55, 2293, 'Silicon Residences'),
(5412, 55, 6171, 'SIT Tower'),
(5413, 55, 2295, 'Solarim Building'),
(5414, 55, 6073, 'SP Oasis'),
(5415, 55, 2296, 'Spring Oasis'),
(5416, 55, 2298, 'Springs'),
(5417, 55, 5736, 'Suntech'),
(5418, 55, 25489, 'The Blue Oasis'),
(5419, 55, 25549, 'The Domain'),
(5420, 55, 25333, 'The Icon Tower'),
(5421, 55, 9115, 'The White Palace'),
(5422, 55, 9130, 'Topaz Residence'),
(5423, 55, 6690, 'Twin Villa'),
(5424, 55, 6687, 'Townhouse Villa'),
(5425, 55, 2299, 'University View'),
(5426, 43, 6107, 'Arabian'),
(5427, 55, 2300, 'Vortex'),
(5428, 43, 6393, 'Arena Apartments'),
(5429, 43, 9217, 'Auris Fakhruddin Hotel Apartments'),
(5430, 43, 2302, 'Bangash Residence'),
(5431, 43, 6387, 'Bermuda Views'),
(5432, 43, 6789, 'Bloomingdale'),
(5433, 43, 2353, 'Bridge'),
(5434, 43, 2303, 'Calida'),
(5435, 43, 2304, 'Canal Residence'),
(5436, 43, 2305, 'Century'),
(5437, 43, 3343, 'Champions (all)'),
(5438, 43, 3461, 'Champions 1'),
(5439, 43, 3464, 'Champions 4'),
(5440, 43, 3462, 'Champions 2'),
(5441, 43, 3463, 'Champions 3'),
(5442, 43, 2306, 'Chapal Destiny'),
(5443, 43, 7741, 'Classic Soccer Tower'),
(5444, 43, 2307, 'Chess'),
(5445, 43, 2308, 'Coral Hotel Apartment'),
(5446, 43, 2309, 'Cricket'),
(5447, 43, 2354, 'Cube'),
(5448, 43, 2310, 'Crown Avenue'),
(5449, 43, 2311, 'Destiny'),
(5450, 43, 2355, 'Diamond'),
(5451, 43, 2312, 'Eagle Heights'),
(5452, 43, 2313, 'Eden Garden'),
(5453, 43, 3344, 'Elite (all)'),
(5454, 43, 2314, 'Elite Sports Residence 1'),
(5455, 43, 8626, 'Elite Sports Residence 10'),
(5456, 43, 2316, 'Elite Sports Residence 3'),
(5457, 43, 2315, 'Elite Sports Residence 2'),
(5458, 43, 2317, 'Elite Sports Residence 4'),
(5459, 43, 2301, 'Elite Sports Residence 5'),
(5460, 43, 2319, 'Elite Sports Residence 7'),
(5461, 43, 2318, 'Elite Sports Residence 6'),
(5462, 43, 6480, 'Elite Sports Residence 8'),
(5463, 43, 6684, 'Elite Sports Residence 9'),
(5464, 43, 5950, 'European'),
(5465, 43, 25019, 'European Building'),
(5466, 43, 2320, 'Frankfurt'),
(5467, 43, 2321, 'Gallery Villas'),
(5468, 43, 2322, 'Gateway'),
(5469, 43, 3345, 'German Sports (all)'),
(5470, 43, 2323, 'German Sports 1'),
(5471, 43, 3481, 'German Sports 2'),
(5472, 43, 2325, 'Global Golf Residence'),
(5473, 43, 2324, 'Giovanni Boutique Suites'),
(5474, 43, 3346, 'Global Golf (all)'),
(5475, 43, 2326, 'Global Golf Residence 2'),
(5476, 43, 2327, 'Golf'),
(5477, 43, 6216, 'Golden Tulip'),
(5478, 43, 3485, 'Golf View'),
(5479, 43, 8611, 'Grand Horizon 1'),
(5480, 43, 2328, 'Hamza'),
(5481, 43, 2329, 'Hub Canal'),
(5482, 43, 2330, 'Hub Canal 2'),
(5483, 43, 2331, 'Ice Hockey'),
(5484, 43, 2332, 'Kensington Royal'),
(5485, 43, 2333, 'Links View'),
(5486, 43, 25471, 'Lime Light Twin Tower'),
(5487, 43, 2357, 'Medalist'),
(5488, 43, 2356, 'Matrix'),
(5489, 43, 2334, 'Mediterranean'),
(5490, 43, 3347, 'Oasis (all)'),
(5491, 43, 3511, 'Oasis 1'),
(5492, 43, 3512, 'Oasis 2'),
(5493, 43, 8954, 'Oasis Tower 1'),
(5494, 43, 2335, 'Oliva Village'),
(5495, 43, 8957, 'Oasis Tower 2'),
(5496, 43, 3348, 'Olympic Park (all)'),
(5497, 43, 2336, 'Olympic Park 1'),
(5498, 43, 2337, 'Olympic Park 2'),
(5499, 43, 2338, 'Olympic Park 3'),
(5500, 43, 2339, 'Olympic Park 4'),
(5501, 43, 6180, 'Red Residence'),
(5502, 43, 2340, 'Park View'),
(5503, 43, 6192, 'Prime Villa'),
(5504, 43, 2341, 'Profile Residence'),
(5505, 43, 11534, 'Royal Residence'),
(5506, 43, 2342, 'Royal Residence 1'),
(5507, 43, 8244, 'Royal Residence 2'),
(5508, 43, 2343, 'Rufi Century'),
(5509, 43, 6129, 'Rufi Golf Greens'),
(5510, 43, 2345, 'Rufi Rose Gardens'),
(5511, 43, 2344, 'Rufi Park View'),
(5512, 43, 2346, 'Rufi Twin'),
(5513, 43, 6330, 'Rufi Water Front'),
(5514, 43, 2347, 'Shami Sports'),
(5515, 43, 2348, 'Soccer'),
(5516, 43, 2349, 'Spanish'),
(5517, 43, 2358, 'Spirit'),
(5518, 43, 2350, 'Sports One'),
(5519, 43, 2351, 'Stadium Point'),
(5520, 43, 2352, 'Tennis'),
(5521, 43, 6225, 'The Arena'),
(5522, 43, 3525, 'Twin'),
(5523, 43, 25321, 'UniEstate Sports Tower'),
(5524, 43, 2359, 'Universal'),
(5525, 43, 2360, 'Venetian'),
(5526, 43, 6165, 'Wimbledon Tower'),
(5527, 43, 2362, 'Zenith A2'),
(5528, 43, 3349, 'Zenith (all)'),
(5529, 43, 2361, 'Zenith A1'),
(5530, 43, 2363, 'Zenith A3'),
(5531, 21, 2919, 'Springs 10'),
(5532, 21, 2918, 'Springs 1'),
(5533, 21, 2920, 'Springs 11'),
(5534, 21, 2921, 'Springs 12'),
(5535, 21, 2922, 'Springs 14'),
(5536, 21, 7270, 'Springs 13'),
(5537, 21, 2923, 'Springs 15'),
(5538, 21, 2924, 'Springs 2'),
(5539, 21, 2925, 'Springs 3'),
(5540, 21, 2926, 'Springs 4'),
(5541, 21, 2927, 'Springs 5'),
(5542, 21, 2928, 'Springs 6'),
(5543, 21, 2929, 'Springs 7'),
(5544, 21, 2930, 'Springs 8'),
(5545, 21, 2931, 'Springs 9'),
(5546, 6384, 8719, 'Techno Park'),
(5547, 48, 6123, 'Al Fahad Tower 1'),
(5548, 48, 6126, 'Al Fahad Tower 2'),
(5549, 48, 6168, 'Al Hassani Tower'),
(5550, 48, 3079, 'Al Khatoom'),
(5551, 48, 8839, 'Al Meshal'),
(5552, 48, 9032, 'Al Noor 1'),
(5553, 48, 15440, 'Al Noor (all)'),
(5554, 48, 2888, 'Al Noor 2'),
(5555, 48, 3361, 'Al Noor Towers'),
(5556, 48, 3080, 'Al Saraya'),
(5557, 48, 2889, 'Al Shafar'),
(5558, 48, 2890, 'Al Shahed'),
(5559, 48, 15392, 'Al Shaiba'),
(5560, 48, 6249, 'Al Shaiba Tower 1'),
(5561, 48, 6246, 'Al Shaiba Tower'),
(5562, 48, 6252, 'Al Shaiba Tower 2'),
(5563, 48, 3081, 'Al Yassat'),
(5564, 48, 3078, 'Api'),
(5565, 48, 3082, 'Al-meer Building'),
(5566, 48, 3205, 'Api (all)'),
(5567, 48, 3083, 'Arenco'),
(5568, 48, 3362, 'Art (all)'),
(5569, 48, 3076, 'Art 2'),
(5570, 48, 25695, 'Art 3'),
(5571, 48, 3077, 'Art 4'),
(5572, 48, 5808, 'Auris Metro Central'),
(5573, 48, 5802, 'Auris Hotel'),
(5574, 48, 5804, 'Belle Vue Hotel'),
(5575, 48, 9769, 'Boutique 7 Hotel And Suites'),
(5576, 48, 3074, 'Carrefour Building'),
(5577, 48, 2891, 'Cayan Business Center'),
(5578, 48, 5805, 'Comfort Inn'),
(5579, 48, 2892, 'Concord'),
(5580, 48, 3143, 'Crown Plaza'),
(5581, 48, 2893, 'Crown Residence'),
(5582, 48, 8647, 'Crystal Blue Tower'),
(5583, 48, 5738, 'Dubai Pearl'),
(5584, 48, 5963, 'Damac Heights'),
(5585, 48, 5757, 'Euro Tower'),
(5586, 48, 2894, 'Executive Heights'),
(5587, 48, 5756, 'First Central Hotel Apartments'),
(5588, 48, 24473, 'First Central Tower'),
(5589, 48, 9593, 'Gloria Hotel Apartments'),
(5590, 48, 9802, 'Grand Belle Vue Hotel Apartment'),
(5591, 48, 6063, 'Grand Central Hotel'),
(5592, 48, 3360, 'Green View (all)'),
(5593, 48, 3084, 'Green View 1'),
(5594, 48, 3085, 'Green View 2'),
(5595, 48, 2895, 'Grosvenor Business'),
(5596, 48, 9283, 'Hawai Residence'),
(5597, 48, 9431, 'Hilliana Tower'),
(5598, 48, 9732, 'Home To Home Hotel Apartments'),
(5599, 48, 9815, 'I Rise Office'),
(5600, 48, 3161, 'I-rise'),
(5601, 48, 2896, 'Icon'),
(5602, 48, 13397, 'Ikon'),
(5603, 48, 15416, 'Leader'),
(5604, 48, 5879, 'Legacy Hotel'),
(5605, 48, 7729, 'Liwa Heights Tower'),
(5606, 48, 2897, 'Madison Residency'),
(5607, 48, 15419, 'Manhattan'),
(5608, 48, 5973, 'Metro Central Hotel Apartments'),
(5609, 48, 3086, 'National Bond Plaza'),
(5610, 48, 3091, 'Oasis Residence'),
(5611, 48, 2900, 'One'),
(5612, 48, 3363, 'Onyx (all)'),
(5613, 48, 13370, 'Onyx 1'),
(5614, 48, 13403, 'Onyx 2'),
(5615, 48, 9253, 'Onyx Business Hotel Tower 3'),
(5616, 48, 2887, 'Onyx Tower 1'),
(5617, 48, 7081, 'Onyx Tower 2'),
(5618, 48, 25483, 'Oryx Tower'),
(5619, 48, 8605, 'Phoenix Tower'),
(5620, 48, 3087, 'Rania Apartment'),
(5621, 48, 8836, 'Ramee Rose'),
(5622, 48, 8926, 'Rose 6 Building'),
(5623, 48, 3088, 'Row House'),
(5624, 48, 6029, 'Sheikha Noora Building'),
(5625, 48, 3090, 'Silicon Plaza'),
(5626, 48, 8348, 'Sky Central Hotel'),
(5627, 48, 2898, 'Smart Heights'),
(5628, 48, 8758, 'Stella Tower'),
(5629, 48, 6078, 'Tameem House'),
(5630, 48, 13409, 'Tecom 1'),
(5631, 48, 13412, 'Tecom 2'),
(5632, 48, 2899, 'Tecom Tower 1'),
(5633, 48, 7084, 'Tecom Tower 2'),
(5634, 48, 5750, 'Tecom Two Towers'),
(5635, 48, 15356, 'Tecom Twin Towers'),
(5636, 48, 9307, 'Time Crystal Hotel Apartments'),
(5637, 48, 3092, 'Warsan Building'),
(5638, 48, 6832, 'Time Oak'),
(5639, 48, 3089, 'Windsor Crescent'),
(5640, 48, 3075, 'Yassat Gloria Hotel Apartments'),
(5641, 6036, 6195, 'A1 Tower'),
(5642, 6036, 6273, 'A2 Tower'),
(5643, 6036, 6282, 'C1 Tower'),
(5644, 6036, 6285, 'C2 Tower'),
(5645, 6036, 6037, 'The Hills'),
(5646, 6036, 6402, 'Vida B2'),
(5647, 6036, 6399, 'Vida B1'),
(5648, 6036, 6805, 'Vida Hotel'),
(5649, 6036, 6294, 'VIDA Residence'),
(5650, 8065, 8454, 'Dubai Creek Residence Tower 3 Nor'),
(5651, 8065, 2101, 'Al Khayal');
INSERT INTO `crm_subloc` (`id`, `loc_id`, `sub_loc_id`, `sub_sub_loc`) VALUES
(5652, 8065, 2102, 'Al Laylak'),
(5653, 8065, 8068, 'Dubai Creek Harbour'),
(5654, 8065, 25417, 'Creekside 18'),
(5655, 8065, 8446, 'Dubai Creek Residence Tower 1 Nor'),
(5656, 8065, 8443, 'Dubai Creek Residence Tower 1 Sou'),
(5657, 8065, 8452, 'Dubai Creek Residence Tower 2 Nor'),
(5658, 8065, 8932, 'Dubai Creek Residence Tower 2 Sou'),
(5659, 8065, 8938, 'Dubai Creek Residence Tower 3 Sou'),
(5660, 8065, 2103, 'Phase 1'),
(5661, 8065, 2104, 'Phase 2'),
(5662, 8065, 2105, 'Phase 3'),
(5663, 7570, 2932, 'Arno'),
(5664, 7570, 7573, 'Arno A'),
(5665, 7570, 2933, 'Arno B'),
(5666, 7570, 3242, 'Fairways (all)'),
(5667, 7570, 2934, 'Fairways East'),
(5668, 7570, 2935, 'Fairways North'),
(5669, 7570, 2936, 'Fairways West'),
(5670, 7570, 7576, 'Golf Tower 1'),
(5671, 7570, 7693, 'Golf Tower 2'),
(5672, 7570, 7696, 'Golf Tower 3'),
(5673, 7570, 8734, 'Golf Towers'),
(5674, 7570, 8737, 'Golf Towers 2'),
(5675, 7570, 3244, 'Links (all)'),
(5676, 7570, 2438, 'Golf Villas'),
(5677, 7570, 2940, 'Links East'),
(5678, 7570, 2937, 'Links Canal Apartments'),
(5679, 7570, 8752, 'Links East Tower'),
(5680, 7570, 2439, 'Links Golf Apartment'),
(5681, 7570, 8728, 'Panorama At The Views'),
(5682, 7570, 8725, 'Mosela'),
(5683, 7570, 2938, 'Mosela Waterside Residences'),
(5684, 7570, 8304, 'Panorama At The Views Tower 1'),
(5685, 7570, 8307, 'Panorama At The Views Tower 2'),
(5686, 7570, 8313, 'Panorama At The Views Tower 4'),
(5687, 7570, 8310, 'Panorama At The Views Tower 3'),
(5688, 7570, 4932, 'Panorama Tower'),
(5689, 7570, 2939, 'Tanaro'),
(5690, 7570, 7588, 'The Links West Tower'),
(5691, 7570, 7585, 'The Links Villas'),
(5692, 7570, 3019, 'The Views 1'),
(5693, 7570, 8743, 'Travo'),
(5694, 7570, 3129, 'The Views 2'),
(5695, 7570, 2943, 'Travo B'),
(5696, 7570, 2942, 'Travo A'),
(5697, 7570, 8749, 'Travo Tower A'),
(5698, 7570, 8746, 'Travo Tower B'),
(5699, 7570, 8731, 'Turia'),
(5700, 7570, 7579, 'Turia Tower A'),
(5701, 7570, 7582, 'Turia Tower B'),
(5702, 7570, 2946, 'Una Riverside'),
(5703, 7570, 8722, 'Una Riverside Residence'),
(5704, 8689, 8704, 'Cordoba'),
(5705, 8689, 8707, 'Golf Tower 3'),
(5706, 8689, 8701, 'Granada'),
(5707, 8689, 8908, 'Hacienda'),
(5708, 8689, 8698, 'Mallorca'),
(5709, 8689, 8695, 'Marbella'),
(5710, 8689, 8692, 'Valencia'),
(5711, 4934, 4935, 'Coral Island'),
(5712, 4934, 4936, 'Germany Island'),
(5713, 4934, 4937, 'Jasmine Gardens'),
(5714, 4934, 6621, 'Lebanon World Islands'),
(5715, 4934, 4938, 'Oqyana'),
(5716, 4934, 5974, 'Pearl Island'),
(5717, 4934, 4939, 'Perseus - Rostov Island'),
(5718, 4934, 6396, 'The Heart Of Europe'),
(5719, 4934, 6426, 'The Mont Royal Hotel'),
(5720, 4934, 6103, 'Tropical Island'),
(5721, 9205, 9094, 'Hayat 1'),
(5722, 9205, 9097, 'Hayat 2'),
(5723, 9205, 25426, 'Jenna 1'),
(5724, 9205, 25528, 'Jenna 2'),
(5725, 9205, 25429, 'Jenna 11'),
(5726, 9205, 9391, 'Safi'),
(5727, 9205, 25531, 'Warda'),
(5728, 9205, 9274, 'Zahra 1'),
(5729, 9205, 9277, 'Zahra 2'),
(5730, 9205, 25534, 'Zahra Breeze'),
(5731, 9205, 9211, 'Zahra Apartments'),
(5732, 9205, 9208, 'Zahra Townhouses'),
(5733, 6064, 6065, 'Umm Ramool'),
(5734, 29, 3158, 'Al Manara'),
(5735, 29, 3153, 'Al Thanya'),
(5736, 29, 9730, 'Amber Residency'),
(5737, 29, 3044, 'Compound Villa'),
(5738, 29, 3150, 'Pavilions'),
(5739, 29, 3146, 'Umm Al Sheif'),
(5740, 29, 3331, 'Umm Sequeim (all)'),
(5741, 29, 2948, 'Umm Suqeim 2'),
(5742, 29, 2947, 'Umm Suqeim 1'),
(5743, 29, 2949, 'Umm Suqeim 3'),
(5744, 32, 7363, 'Bloomingdale Townhouses'),
(5745, 32, 3047, 'Calida'),
(5746, 32, 3048, 'Carmen'),
(5747, 32, 3049, 'Esmeralda'),
(5748, 32, 15089, 'Esmerelda'),
(5749, 32, 3050, 'Estella'),
(5750, 32, 7711, 'Fortuna Village'),
(5751, 32, 3053, 'Moon Vilas'),
(5752, 32, 3051, 'Morella'),
(5753, 32, 3046, 'Novelia'),
(5754, 32, 3052, 'Oliva'),
(5755, 32, 8683, 'Victory Heights(all)'),
(5756, 68, 7894, 'Jumeirah Living'),
(5757, 68, 7891, 'Luxury Homes'),
(5758, 68, 2950, 'World Trade Centre Residence'),
(5759, 68, 5895, 'World Trade Centre Residence A'),
(5760, 68, 5896, 'World Trade Centre Residence B'),
(5761, 68, 5897, 'World Trade Centre Residence C'),
(5762, 6753, 6756, 'Al Manzel'),
(5763, 6753, 7900, 'Zabeel 1'),
(5764, 6753, 7897, 'Zabeel Road'),
(5765, 3531, 4279, 'Mangrove Village'),
(5766, 3531, 4280, 'Seashore'),
(5767, 1457, 9713, 'Jannah Place'),
(5768, 1457, 7228, 'Al Dana Tower'),
(5769, 1457, 9109, 'Abu Dhabi Airports - Airport Area'),
(5770, 1457, 4281, 'Al Dhabi Building'),
(5771, 1457, 25710, 'Al Faiz Building'),
(5772, 1457, 4282, 'Al Fardan Building'),
(5773, 1457, 8262, 'Al Odaid Office Tower'),
(5774, 1457, 8259, 'Fotouh Al Khair'),
(5775, 1457, 4283, 'Al Taghreed Tower'),
(5776, 1457, 6976, 'Marks And Spencers Building'),
(5777, 1457, 4284, 'Owaida Tower'),
(5778, 1457, 8253, 'Rawda Building'),
(5779, 1457, 25318, 'Rawdhat'),
(5780, 1457, 9310, 'Rihab Tower'),
(5781, 1457, 5812, 'Rihan Heights'),
(5782, 1457, 8256, 'Sheikh Nahyan Bin Zayed Tower'),
(5783, 3532, 4285, 'Al Badaa'),
(5784, 3533, 4286, 'Al Bahia'),
(5785, 3534, 4287, 'Al Baraha'),
(5786, 3535, 4288, 'Al Bateen Airport'),
(5787, 3535, 9793, 'Al Bateen Complex'),
(5788, 3535, 4289, 'Al Bateen Villas'),
(5789, 3535, 7801, 'Al Ettihad Tower 1'),
(5790, 3535, 7798, 'Al Ettihad Tower 2'),
(5791, 3535, 7795, 'Al Ettihad Tower 3'),
(5792, 3535, 7792, 'Al Ettihad Tower 4'),
(5793, 3535, 7789, 'Al Ettihad Tower 5'),
(5794, 3535, 4290, 'Al Ettihad Towers'),
(5795, 3535, 24488, 'Al Marasy'),
(5796, 3535, 5867, 'Marasy'),
(5797, 3536, 4291, 'Al Dhafrah 1'),
(5798, 3536, 4292, 'Al Dhafrah 2'),
(5799, 3537, 4293, 'Al Falah City'),
(5800, 3538, 4294, 'Al Baraha Village'),
(5801, 3538, 4296, 'Al Khaleej Village'),
(5802, 3538, 4295, 'Al Buhayra Village'),
(5803, 3538, 8791, 'Al Sabeel'),
(5804, 3538, 4297, 'Al Khubaira Village'),
(5805, 3538, 8788, 'Al Waha'),
(5806, 3538, 4298, 'Falaj Village'),
(5807, 3538, 4299, 'Liwa Village'),
(5808, 3538, 4300, 'Liwa Village Villas'),
(5809, 9620, 9623, 'Al Gurm Resort'),
(5810, 3539, 4301, 'North Hudayriat'),
(5811, 3539, 4302, 'South Hudayriat'),
(5812, 3541, 7926, 'AD One Tower'),
(5813, 3540, 4303, 'Al Ittihad Road'),
(5814, 3541, 4304, 'Al Karamah'),
(5815, 3542, 8136, 'Al Bateen Park'),
(5816, 3542, 4305, 'Al Khaleej Al Arabi Street'),
(5817, 3542, 7243, 'Exhibition Centre'),
(5818, 3543, 4308, 'Al Ahlia Tower'),
(5819, 3543, 4322, 'Al Ain Tower'),
(5820, 3543, 6865, 'Al Aryam Tower'),
(5821, 3543, 4309, 'Al Hana Tower'),
(5822, 3543, 4306, 'Al Hosn'),
(5823, 3543, 4307, 'Al Istiqlal Street'),
(5824, 3541, 23081, 'Al Karama'),
(5825, 3543, 4310, 'Al Khubairah Tower'),
(5826, 3543, 4323, 'Al Safa Tower'),
(5827, 3543, 4311, 'Al Ras Al Akhdar'),
(5828, 3543, 4313, 'Al Waha Tower'),
(5829, 3543, 4312, 'Al Sawari Tower'),
(5830, 3543, 4314, 'Amwaj Tower'),
(5831, 3543, 4320, 'Crescent Tower 1'),
(5832, 3543, 4321, 'Crescent Tower 2'),
(5833, 3543, 4315, 'First Gulf Bank Building'),
(5834, 3543, 8899, 'Ghanada Tower'),
(5835, 3543, 4316, 'Khalidiya Palace Towers'),
(5836, 3543, 4324, 'Khalidiya Tower'),
(5837, 3543, 4326, 'Khalidiya Tower A'),
(5838, 3543, 4328, 'Khalidiya Village'),
(5839, 3543, 4327, 'Khalidiya Tower B'),
(5840, 3543, 9796, 'Manara Tower'),
(5841, 3543, 8537, 'Mermaid Building'),
(5842, 3543, 4325, 'Montazah Tower'),
(5843, 3543, 6973, 'Nakeel Tower'),
(5844, 3543, 4317, 'Park Tower'),
(5845, 3543, 9710, 'Pearl Plaza Tower'),
(5846, 3543, 4318, 'Sheikha Salama Building'),
(5847, 3543, 4319, 'The Crystal Tower'),
(5848, 3543, 9463, 'Shining Tower'),
(5849, 3544, 4329, 'Al Maffraq'),
(5850, 8139, 8142, 'Al Maharba'),
(5851, 3545, 4331, 'Al Manaseer'),
(5852, 3546, 4332, 'Al Manhal'),
(5853, 3547, 4333, 'Al Maqtaa'),
(5854, 3547, 5682, 'Al Maqtaa Village'),
(5855, 3547, 8896, 'Shangri La Residences'),
(5856, 3548, 4334, 'Capital Plaza'),
(5857, 1463, 25291, 'Jannah Burj Al Sarab'),
(5858, 3548, 7060, 'Sama Tower'),
(5859, 1463, 8755, 'Mina Road'),
(5860, 1463, 9458, 'Aryam Tower'),
(5861, 1463, 4335, 'Silver Wave Tower'),
(5862, 1464, 4927, 'Al Maha'),
(5863, 1464, 4928, 'Al Muneera Townhouses-Island'),
(5864, 1464, 4929, 'Al Muneera Townhouses-Mainland'),
(5865, 1464, 4930, 'Al Nada'),
(5866, 1464, 23678, 'Al Sana'),
(5867, 3549, 6967, 'Al Maha Complex'),
(5868, 3549, 4336, 'Al Musalla Area'),
(5869, 9286, 9289, 'Rawdhat'),
(5870, 3549, 25788, 'Al Yasat Compound'),
(5871, 3549, 4337, 'Mushrif Gardens'),
(5872, 3549, 8429, 'Mushrif Mall Area'),
(5873, 3549, 6931, 'Palm Oasis'),
(5874, 3549, 4338, 'Mushrif Heights'),
(5875, 3550, 4339, 'Al Nahda Abu Dhabi'),
(5876, 1465, 5959, 'Al Nahyan'),
(5877, 3551, 8941, 'Al Diar Sawa Hotel Apartments'),
(5878, 3551, 4340, 'Al Nahyan Camp'),
(5879, 1465, 9533, 'Al Sawa Palm Hotel Apartments'),
(5880, 3552, 8271, 'Al Masaood Tower'),
(5881, 3552, 9467, 'Al Nahel Tower'),
(5882, 3552, 8265, 'Sola Tower'),
(5883, 3552, 4341, 'Vision Twin Towers'),
(5884, 3552, 8268, 'Dhafir Tower'),
(5885, 3552, 7929, 'Zakher Time Residence'),
(5886, 5992, 5993, 'Al Nasr Street'),
(5887, 3553, 4343, 'Al Qurm Resort'),
(5888, 3553, 4342, 'Al Qurm Gardens'),
(5889, 3553, 4344, 'Al Qurm Street'),
(5890, 1466, 25251, 'Al Raha Mall'),
(5891, 1466, 8821, 'Building F'),
(5892, 3554, 8650, 'A Sana 2'),
(5893, 3554, 5646, 'Al Bandar'),
(5894, 1466, 9106, 'Qutuf'),
(5895, 3554, 4345, 'Al Barza'),
(5896, 3554, 4348, 'Al Dana'),
(5897, 3554, 4349, 'Al Lissaily'),
(5898, 3554, 22943, 'Al Maha'),
(5899, 3554, 6919, 'Al Hadeel'),
(5900, 3554, 4350, 'Al Maha (All)'),
(5901, 3554, 8773, 'Al Maha 1'),
(5902, 3554, 4346, 'Al Manara'),
(5903, 3554, 5638, 'Al Muneera'),
(5904, 3554, 8776, 'Al Maha 2'),
(5905, 3554, 4351, 'Al Muneera Townhouses-Island'),
(5906, 3554, 4353, 'Al Nada (All)'),
(5907, 3554, 4352, 'Al Muneera Townhouses-Mainland'),
(5908, 3554, 8653, 'Al Nada 1'),
(5909, 3554, 22934, 'Al Nada'),
(5910, 3554, 7357, 'Al Nada 2'),
(5911, 3554, 4347, 'Al Naseem Residences A'),
(5912, 3554, 8662, 'Al Naseem Residences C'),
(5913, 3554, 8659, 'Al Naseem Residences B'),
(5914, 3554, 22952, 'Al Naseem'),
(5915, 3554, 6079, 'Al Rahba (All)'),
(5916, 3554, 4355, 'Al Razeen'),
(5917, 3554, 5660, 'Al Rahba 2'),
(5918, 3554, 5659, 'Al Rahba 1'),
(5919, 3554, 4356, 'Al Rumaila'),
(5920, 3554, 22931, 'Al Sana'),
(5921, 3554, 4357, 'Al Seef'),
(5922, 3554, 8881, 'Al Sana 2'),
(5923, 3554, 4354, 'Al Sana 1'),
(5924, 3554, 4358, 'Al Shaleela'),
(5925, 3554, 4359, 'Al Thurayya'),
(5926, 3554, 9154, 'Al Zeina - Residential Tower A'),
(5927, 3554, 4926, 'Al Zeina'),
(5928, 3554, 4360, 'Al Zahiya'),
(5929, 3554, 9157, 'Al Zeina - Residential Tower B'),
(5930, 3554, 9160, 'Al Zeina - Residential Tower C'),
(5931, 3554, 9166, 'Al Zeina - Residential Tower E'),
(5932, 3554, 9169, 'Al Zeina - Residential Tower F'),
(5933, 3554, 9163, 'Al Zeina - Residential Tower D'),
(5934, 3554, 8674, 'Al Zeina Beachfront Villa'),
(5935, 3554, 8668, 'Al Zeina Podium Villas'),
(5936, 3554, 9542, 'Al Zeina Villas'),
(5937, 3554, 8671, 'Al Zeina Sky Villas'),
(5938, 3554, 8665, 'Al Zeina Townhouses'),
(5939, 3554, 4361, 'Beach Villas'),
(5940, 3554, 4362, 'Building A'),
(5941, 3554, 8794, 'Building A1'),
(5942, 3554, 4363, 'Building B'),
(5943, 3554, 8797, 'Building A2'),
(5944, 3554, 8800, 'Building B1'),
(5945, 3554, 8803, 'Building B2'),
(5946, 3554, 8809, 'Building C2'),
(5947, 3554, 4364, 'Building C'),
(5948, 3554, 8806, 'Building C1'),
(5949, 3554, 4365, 'Building D'),
(5950, 3554, 8884, 'Building D3'),
(5951, 3554, 8815, 'Building E2'),
(5952, 3554, 4366, 'Building E'),
(5953, 3554, 8812, 'Building E1'),
(5954, 3554, 8818, 'Building E3'),
(5955, 3554, 4368, 'Building G'),
(5956, 3554, 4370, 'Mira Residence 1'),
(5957, 3554, 4367, 'Building F'),
(5958, 3554, 4369, 'Khor Al Raha'),
(5959, 3554, 4371, 'Mira Residence 2'),
(5960, 3555, 4374, 'Al Mariah Community'),
(5961, 3554, 4373, 'Mira Residence 4'),
(5962, 3555, 4375, 'Al Tharwaniyah Community'),
(5963, 3554, 4372, 'Mira Residence 3'),
(5964, 3555, 8785, 'Al Ward'),
(5965, 3555, 4377, 'Khannour Community'),
(5966, 3555, 4378, 'Lehweih Community'),
(5967, 3555, 4376, 'Hemaim Community'),
(5968, 3555, 4379, 'Muzera Community'),
(5969, 3555, 4380, 'Qattouf Community'),
(5970, 3555, 4382, 'Sidra Community'),
(5971, 3555, 4383, 'Yasmin Community'),
(5972, 3555, 4381, 'Samra Community'),
(5973, 3556, 4384, 'Gardenia'),
(5974, 3556, 4385, 'Jouri'),
(5975, 3556, 4387, 'Lailak'),
(5976, 3556, 4388, 'Narjis'),
(5977, 3556, 4386, 'Khuzama'),
(5978, 3556, 4389, 'Orchid'),
(5979, 3557, 4390, 'Al Rahba'),
(5980, 3559, 4392, 'Al Reef Tower'),
(5981, 3559, 4923, 'Al Reef Downtown'),
(5982, 3558, 4391, 'Al Rawdah'),
(5983, 3559, 8449, 'Al Reef Villas'),
(5984, 3559, 4393, 'Amber Tower'),
(5985, 3559, 4395, 'Contemporary Style'),
(5986, 3559, 4396, 'Desert Style'),
(5987, 3559, 4394, 'Arabian Style'),
(5988, 3559, 8322, 'Hydra Village'),
(5989, 3559, 4397, 'Mediterranean Style'),
(5990, 1467, 9475, 'Contemporary Village'),
(5991, 1467, 9481, 'Arabian Village'),
(5992, 1467, 9473, 'Al Reef Downtown'),
(5993, 1467, 9479, 'Desert Village'),
(5994, 3560, 9151, 'A3 Tower'),
(5995, 3560, 4398, 'Addax Park Tower'),
(5996, 1467, 9477, 'Mediterranean Style'),
(5997, 3560, 4416, 'Horizon Towers'),
(5998, 3560, 4412, 'Addax Port Office Tower'),
(5999, 3560, 4399, 'Al Odaid Beach Residences'),
(6000, 3560, 4431, 'Al Maha Tower'),
(6001, 3560, 4440, 'Al Sharq Towers'),
(6002, 3560, 5996, 'Al Durrah Tower'),
(6003, 3560, 4448, 'Al Wifaq Tower'),
(6004, 3560, 9184, 'Amaya Tower 2'),
(6005, 3560, 4998, 'Amaya Towers'),
(6006, 3560, 9187, 'Amaya Tower 1'),
(6007, 3560, 4449, 'Amber Tower'),
(6008, 3560, 4450, 'Atlantis Towers'),
(6009, 3560, 4441, 'Bay Centre Marina-The Marinas'),
(6010, 3560, 6114, 'Bay View Tower'),
(6011, 3560, 4451, 'Aurora Towers'),
(6012, 3560, 4452, 'Beach Towers'),
(6013, 3560, 4413, 'Burooj Crystal'),
(6014, 3560, 4414, 'Burooj Terraces'),
(6015, 3560, 25254, 'C2 Tower'),
(6016, 3560, 4432, 'Burooj Views'),
(6017, 3560, 25257, 'C3 Tower'),
(6018, 3560, 25495, 'City Of Lights'),
(6019, 3560, 4454, 'Dari Towers'),
(6020, 3560, 4401, 'Creek Tower'),
(6021, 3560, 4453, 'Creek Towers'),
(6022, 3560, 4402, 'Dynasty Tower'),
(6023, 3560, 4455, 'Empire Tower'),
(6024, 3560, 22784, 'Falconcrest Tower'),
(6025, 3560, 4404, 'First Gulf Bank Tower'),
(6026, 3560, 4403, 'Falcon Crest Tower'),
(6027, 3560, 4415, 'Harbour Heights'),
(6028, 3560, 9145, 'Helix Tower'),
(6029, 3560, 9518, 'Hydra Avenue C4'),
(6030, 3560, 5737, 'Hydra Avenue'),
(6031, 3560, 22745, 'Hydra 55 Towers'),
(6032, 3560, 9521, 'Hydra Avenue C5'),
(6033, 3560, 4417, 'Hydra Avenue Towers'),
(6034, 3560, 4418, 'Hydra Corporate Towers'),
(6035, 3560, 9524, 'Hydra Avenue C6'),
(6036, 3560, 4405, 'Hydra Avenue Hotel Apartments'),
(6037, 3560, 4419, 'Hydra Executive Towers'),
(6038, 3560, 4420, 'Hydra Hollywood Tower'),
(6039, 3560, 4407, 'Hydra Platinum Tower'),
(6040, 3560, 4406, 'Hydra Heights'),
(6041, 3560, 4456, 'Hydra Square Tower'),
(6042, 3560, 22694, 'Infinity Tower'),
(6043, 3560, 4408, 'Juman Tower'),
(6044, 3560, 4457, 'Lilac Tower'),
(6045, 3560, 4421, 'Julfar Residence'),
(6046, 3560, 4458, 'Lime Tower'),
(6047, 3560, 8277, 'Mag 5 (b2 Tower)'),
(6048, 3560, 25701, 'Marina Bay By DAMAC'),
(6049, 3560, 4459, 'Mangrove Place'),
(6050, 3560, 22727, 'Marina Bay'),
(6051, 3560, 4422, 'Marina Bay-Najmat'),
(6052, 3560, 8875, 'Marina Bay-City Of Lights'),
(6053, 3560, 8761, 'Marina Heights 1'),
(6054, 3560, 4435, 'Marina Heights'),
(6055, 3560, 4434, 'Marina Blue Tower'),
(6056, 3560, 8764, 'Marina Heights 2'),
(6057, 3560, 4409, 'Marina Rise Tower'),
(6058, 3560, 9611, 'Marina Square'),
(6059, 3560, 6321, 'Marina Square Building 14'),
(6060, 3560, 4423, 'Marina Spirit'),
(6061, 3560, 6318, 'Marina Square Building 15'),
(6062, 3560, 6315, 'Marina Square Building 18'),
(6063, 3560, 25158, 'Meera Shams Tower 2'),
(6064, 3560, 7450, 'Najmat Abu Dhabi'),
(6065, 3560, 25154, 'Meera Shams Tower 1'),
(6066, 3560, 4424, 'Ocean Pearl'),
(6067, 3560, 4436, 'Ocean Terrace'),
(6068, 3560, 4425, 'Omega Towers'),
(6069, 3560, 4410, 'Onyx Tower'),
(6070, 3560, 4460, 'Oceanscape'),
(6071, 3560, 4437, 'Panoramic Heights'),
(6072, 3560, 4442, 'Pearl Bay'),
(6073, 3560, 4461, 'Reem Diamond'),
(6074, 3560, 4443, 'Residential Marina-The Marinas'),
(6075, 3560, 4438, 'RAK Tower'),
(6076, 3560, 4444, 'Resort Marina-The Marinas'),
(6077, 3560, 22661, 'Rresort Marina-The Marinas'),
(6078, 3560, 4426, 'Sedrawan Tower'),
(6079, 3560, 5744, 'Shams Abu Dhabi'),
(6080, 3560, 5813, 'Sea View Tower'),
(6081, 3560, 25662, 'Shams Gate District'),
(6082, 3560, 4427, 'Sigma Tower 1'),
(6083, 3560, 22712, 'Sigma Towers'),
(6084, 3560, 4428, 'Sky Garden'),
(6085, 3560, 9148, 'Sigma Tower 2'),
(6086, 3560, 4411, 'Sky Garden Residence'),
(6087, 3560, 4469, 'Sky Tower'),
(6088, 3560, 4470, 'Sun Tower'),
(6089, 3560, 4445, 'Solitaire Tower'),
(6090, 3560, 4429, 'Solaris Towers'),
(6091, 3560, 4430, 'Synergy Towers'),
(6092, 3560, 4433, 'Tamouh Tower'),
(6093, 3560, 4471, 'The ARC'),
(6094, 3560, 4439, 'Tala Tower'),
(6095, 3560, 4462, 'Tameer Towers'),
(6096, 3560, 4472, 'The Gate Tower 1'),
(6097, 3560, 4474, 'The Gate Tower 3'),
(6098, 3560, 9244, 'The Kite Residences - Aabar Prope'),
(6099, 3560, 4473, 'The Gate Tower 2'),
(6100, 3560, 7738, 'The Wave'),
(6101, 3560, 4446, 'The Wings'),
(6102, 3560, 4447, 'Time Tower'),
(6103, 3560, 4463, 'X1 Tower'),
(6104, 3560, 4464, 'X2 Tower'),
(6105, 3560, 4465, 'X3 Tower'),
(6106, 3560, 4466, 'Y5 Tower'),
(6107, 3560, 4467, 'Y6 Tower'),
(6108, 3560, 4468, 'Z7 Tower'),
(6109, 3561, 4475, 'Al Ruwais'),
(6110, 3561, 5748, 'Dubai Grand Hotel'),
(6111, 6675, 6678, 'Capital Gate'),
(6112, 3562, 4476, 'Al Samha'),
(6113, 3563, 4477, 'Al Shahama'),
(6114, 3563, 4478, 'New Shahama'),
(6115, 3564, 4479, 'Al Shamkha'),
(6116, 3565, 4480, 'Sowwah Square Tower 1'),
(6117, 3565, 4482, 'Sowwah Square Tower 3'),
(6118, 3565, 4481, 'Sowwah Square Tower 2'),
(6119, 3565, 4483, 'Sowwah Square Tower 4'),
(6120, 3567, 4488, 'Al Wathba Tower'),
(6121, 3568, 4489, 'Al Zaab'),
(6122, 3570, 25162, 'Binal Jesrain'),
(6123, 3569, 4490, 'Baniyas'),
(6124, 3570, 4491, 'Fairmont Villas'),
(6125, 3570, 25761, 'Urban Oasis Compound'),
(6126, 3571, 4493, 'BMC 7'),
(6127, 3571, 4492, 'BMC 16'),
(6128, 3571, 4494, 'Commercial District'),
(6129, 3571, 4495, 'Prestige Towers'),
(6130, 3571, 4496, 'Residential District'),
(6131, 8342, 8345, 'Capital Gate'),
(6132, 3572, 4497, 'Al Falah Street'),
(6133, 3572, 4498, 'Al Markaziya'),
(6134, 3572, 4499, 'Al Rahma Tower'),
(6135, 3572, 4501, 'Defense Road'),
(6136, 3572, 4500, 'Y Tower'),
(6137, 1472, 25776, 'Al Saqr Tower'),
(6138, 3573, 6988, 'Bel Ghailam'),
(6139, 3573, 8113, 'Burj Mohammed Bin Rashid At WTC'),
(6140, 3573, 6528, 'Etihad Towers'),
(6141, 3573, 5665, 'Khalidiya Centre'),
(6142, 3573, 5663, 'Khalidiya Palace Tower'),
(6143, 3573, 5664, 'Reem Tower'),
(6144, 3573, 8495, 'Meera Tower'),
(6145, 3573, 5662, 'Saheel Tower'),
(6146, 3573, 8525, 'Time Meera Residence'),
(6147, 3573, 8119, 'World Trade Center'),
(6148, 3573, 4502, 'Corniche Area'),
(6149, 3574, 4505, '3 Sails Tower'),
(6150, 3574, 4503, 'AL Diar Tower 1'),
(6151, 3574, 4504, 'AL Diar Tower 2'),
(6152, 3574, 4506, 'Al Souq Tower'),
(6153, 3574, 4507, 'Baynuna Tower 1'),
(6154, 3574, 4508, 'Baynuna Tower 2'),
(6155, 3574, 4509, 'Corniche Tower'),
(6156, 3574, 8911, 'Etihad Tower 1'),
(6157, 3574, 8914, 'Etihad Tower 2'),
(6158, 3574, 8917, 'Etihad Tower 3'),
(6159, 3574, 8920, 'Etihad Tower 4'),
(6160, 3574, 8923, 'Etihad Tower 5'),
(6161, 3574, 4510, 'Falcon Tower'),
(6162, 3574, 4511, 'Golden Beach Tower'),
(6163, 3574, 5811, 'Nation Tower A'),
(6164, 3574, 4512, 'Oryx Tower'),
(6165, 3574, 6985, 'Silver Tower'),
(6166, 3575, 25435, 'Al Dana Tower'),
(6167, 3575, 4513, 'Burj Al Jewn'),
(6168, 3575, 25722, 'Danat Abu Dhabi'),
(6169, 3575, 4515, 'Guardian Towers'),
(6170, 3575, 4516, 'Sorouh Tower'),
(6171, 1473, 25609, 'MF Villa'),
(6172, 3576, 4517, 'Defence Street'),
(6173, 3577, 4518, 'Desert Village'),
(6174, 3578, 25791, 'Al Dhabi Residence Complex'),
(6175, 3578, 6997, 'Al Qurm'),
(6176, 3578, 4519, 'East Corniche Road'),
(6177, 3575, 4514, 'Burj Al Yaqout'),
(6178, 3578, 9460, 'East Mangroves Complex'),
(6179, 3578, 25680, 'Eastern Mangroves Complex'),
(6180, 3578, 9507, 'Eastern Mangroves Hotel And Spa B'),
(6181, 3578, 9513, 'Eastern Mangroves Marina'),
(6182, 3578, 9509, 'Eastern Mangroves Suites By Janna'),
(6183, 3578, 5908, 'Khalifa Park'),
(6184, 3578, 6994, 'Mangrove One'),
(6185, 3578, 25309, 'Ministries Complex'),
(6186, 3578, 4520, 'Park Rotana'),
(6187, 3579, 25441, 'Al Manzel Hotel Apartment'),
(6188, 3579, 4522, 'Dhafir Tower'),
(6189, 3579, 4523, 'Electra Tower'),
(6190, 3578, 9511, 'Eastern Mangroves Promenade'),
(6191, 3579, 4524, 'Global Tower'),
(6192, 3579, 4525, 'Sama Tower'),
(6193, 3580, 4526, 'Ghantoot'),
(6194, 3581, 4527, 'Desert Village'),
(6195, 3581, 5694, 'Rihan Heights'),
(6196, 1474, 8623, 'Al Ghaith Tower'),
(6197, 1474, 4529, 'Dalma Residence'),
(6198, 3579, 4521, 'Arzana Tower'),
(6199, 1474, 4530, 'Emirates Tower'),
(6200, 1474, 4531, 'Golden Falcon Tower'),
(6201, 1474, 4528, 'Hamdan Tower'),
(6202, 1474, 4534, 'Liwa Centre Tower 1'),
(6203, 1474, 4535, 'Liwa Centre Tower 2'),
(6204, 1474, 4536, 'Liwa Centre Tower 3'),
(6205, 1474, 4532, 'Royal Tower'),
(6206, 1474, 4533, 'Vision Downtown'),
(6207, 3582, 5743, 'Hydra Avenue'),
(6208, 3582, 4537, 'Hydra Pavilion Tower'),
(6209, 3582, 4538, 'Hydra Premier Tower'),
(6210, 3582, 6016, 'Hydra Village'),
(6211, 3582, 8767, 'Zone 4'),
(6212, 3582, 8770, 'Zone 7'),
(6213, 3582, 25164, 'Zone 8'),
(6214, 3583, 4539, 'Al Mazroui Tower'),
(6215, 3583, 4540, 'Liwa Tower'),
(6216, 3583, 4541, 'Morjan Tower'),
(6217, 1475, 25728, 'Prestige'),
(6218, 1477, 8046, '18 Villas Complex'),
(6219, 1477, 8043, '34 Villas Project'),
(6220, 1477, 8040, 'Al Dhafrah Complex'),
(6221, 1477, 9722, 'Al Forsan Village'),
(6222, 1477, 8013, 'Al Rayyana'),
(6223, 1477, 6567, 'Al Rayanna'),
(6224, 1477, 4542, 'Complex 14'),
(6225, 1477, 4543, 'Complex 16'),
(6226, 1477, 4544, 'Complex 17'),
(6227, 1477, 4545, 'Complex 18'),
(6228, 1477, 4546, 'Complex 3'),
(6229, 1477, 4547, 'Complex 8'),
(6230, 1477, 4548, 'Golf Gardens'),
(6231, 1477, 25324, 'Khalifa City A'),
(6232, 1477, 8016, 'Villa Compound'),
(6233, 1477, 5666, 'Liwa Oasis Compound'),
(6234, 1478, 4549, 'Khalifa City B'),
(6235, 1479, 4550, 'Khalifa City C'),
(6236, 3584, 4551, 'Al Khaili Tower'),
(6237, 3584, 4552, 'Al Noor Tower'),
(6238, 3584, 7456, 'Emerald Tower'),
(6239, 3584, 7453, 'Galaxy Tower'),
(6240, 3584, 9425, 'Garden View Tower'),
(6241, 3584, 7465, 'Lulu Tower 1'),
(6242, 3584, 4553, 'Lafzaeyya Tower'),
(6243, 3584, 7468, 'Luxury Tower 2'),
(6244, 3584, 4554, 'The Blue Tower'),
(6245, 3585, 4555, 'Lulu Island'),
(6246, 3584, 7462, 'UBL Tower'),
(6247, 3586, 4556, 'Madinat Zayed'),
(6248, 3587, 25390, 'Marina Royale Compound'),
(6249, 3587, 4557, 'Marina Villas'),
(6250, 3587, 4558, 'Royal Marina Villas'),
(6251, 3588, 4559, 'Madinat Zayed'),
(6252, 3589, 4560, 'Jawaher Madinat MBZ'),
(6253, 3589, 4561, 'Mohamed Bin Zayed Centre'),
(6254, 3589, 4562, 'Palm Tower'),
(6255, 3589, 4563, 'Sahara Complex'),
(6256, 3590, 4570, 'Abu Dhabi Unversity Tower'),
(6257, 3590, 9100, 'Al Diar Palm Hotel Apartments'),
(6258, 3590, 4571, 'Al Falah Tower'),
(6259, 3590, 25752, 'Al Maqtaa 1'),
(6260, 3590, 5943, 'Al Murjan Tower'),
(6261, 3590, 25725, 'Al Muroor Tower'),
(6262, 3590, 25161, 'Al Rayhan Villas'),
(6263, 3590, 4572, 'Barclays Tower A'),
(6264, 3590, 4566, 'Chain Tower'),
(6265, 3590, 6970, 'Burooj Bin Ahmed'),
(6266, 3590, 6841, 'Dusit Thani'),
(6267, 3590, 25785, 'Emirates Compound'),
(6268, 3590, 4573, 'Guardian Tower'),
(6269, 3590, 4567, 'Habib Bank Tower'),
(6270, 3590, 4564, 'Hadbat Al Zafranah'),
(6271, 3590, 4568, 'Mafco Building'),
(6272, 3590, 25294, 'MBH Building'),
(6273, 3590, 4565, 'Al Nedal Tower'),
(6274, 3590, 8440, 'Muroor Area'),
(6275, 3590, 8441, 'Muroor Villas'),
(6276, 3590, 8543, 'Vision Links Hotel Apartment'),
(6277, 3590, 4569, 'Twin Tower'),
(6278, 3591, 8863, 'ICAD - Industrial City Of Abu Dha'),
(6279, 3591, 4575, 'M250'),
(6280, 3591, 4574, 'M246'),
(6281, 3591, 4576, 'M251'),
(6282, 3591, 4577, 'Mussafah Industrial Area'),
(6283, 3592, 5701, 'Beachfront Estate'),
(6284, 3592, 4578, 'Nurai Island'),
(6285, 3592, 25468, 'Nurai Resort'),
(6286, 3592, 5702, 'Seaside Estate'),
(6287, 3592, 5700, 'Water Villa'),
(6288, 1484, 6991, 'Mangrove Village'),
(6289, 5678, 5679, 'Hills Abu Dhabi'),
(6290, 3593, 4579, 'Al Saadiyat Avenue'),
(6291, 3593, 4581, 'Arabian Villas'),
(6292, 3593, 8056, 'Contemporary Villas'),
(6293, 3593, 8842, 'Hidd Al Saadiyat'),
(6294, 3593, 8999, 'Mamsha Al Saadiyat'),
(6295, 3593, 4580, 'Marina Al Saadiyat'),
(6296, 3593, 5699, 'Nurai'),
(6297, 3593, 8059, 'Mediterranean Villas'),
(6298, 3593, 9736, 'Park View'),
(6299, 3593, 5703, 'Saadiyat Beach'),
(6300, 3593, 25486, 'Saadiyat Beach Golf Views'),
(6301, 3593, 8603, 'Saadiyat Beach Residences'),
(6302, 3593, 9632, 'Saadiyat Beach Villas'),
(6303, 3593, 9581, 'Saadiyat Cultural District'),
(6304, 3593, 4582, 'Saadiyat Lagoons'),
(6305, 3593, 4584, 'Saadiyat Resort'),
(6306, 3593, 4583, 'Saadiyat Promenade'),
(6307, 3593, 25342, 'Soho Square Residences'),
(6308, 3593, 8062, 'St. Regis'),
(6309, 3593, 6477, 'St Regis'),
(6310, 3594, 4585, 'ADCP Building'),
(6311, 3594, 25303, 'Al Seef Village Mall'),
(6312, 3594, 4586, 'Bloom Gardens'),
(6313, 3594, 25773, 'Andalus Al Seef Resort & Spa'),
(6314, 3594, 9799, 'Nowailey Building'),
(6315, 3594, 8492, 'Salam HQ'),
(6316, 3595, 6564, 'Abu Dhabi Golf Club'),
(6317, 3595, 22232, 'Sas Al Nakheel'),
(6318, 3595, 4587, 'Sas Al Nakhl'),
(6319, 3596, 4589, 'Al Aryam Tower'),
(6320, 3596, 25737, 'Bay View Tower'),
(6321, 3596, 4590, 'Al Ryami Tower'),
(6322, 3596, 4591, 'Banana Building'),
(6323, 3596, 9578, 'Beach Rotana'),
(6324, 3596, 4592, 'Falahi Tower'),
(6325, 3596, 8951, 'Firdous Street'),
(6326, 3596, 4588, 'Mina Road'),
(6327, 3596, 8531, 'Noura Al Futtaim Building'),
(6328, 3596, 8534, 'Sahara Hotel Apartment'),
(6329, 3597, 7923, 'Ansam'),
(6330, 3596, 8620, 'Sahara Hotel Apartment 4'),
(6331, 3597, 25734, 'Yas West'),
(6332, 3597, 4593, 'Staybridge Suites'),
(6333, 3598, 4594, 'Zayed Military City Tower 1'),
(6334, 3598, 4595, 'Zayed Military City Tower 2'),
(6335, 3598, 4596, 'Zayed Military City Tower 3'),
(6336, 3598, 4597, 'Zayed Military City Tower 4'),
(6337, 3598, 4600, 'Zayed Military City Tower 7'),
(6338, 3598, 4598, 'Zayed Military City Tower 5'),
(6339, 3598, 4601, 'Zayed Military City Tower 8'),
(6340, 7501, 7504, 'Al Madina Al Riadiya'),
(6341, 3598, 4602, 'Zayed Military City Tower 9'),
(6342, 7501, 25743, 'Rihan Heights'),
(6343, 1816, 4617, 'Gold Crest Smart Tower'),
(6344, 1816, 4616, 'Ain Ajman Tower'),
(6345, 1817, 4618, 'Ajman Corniche Residences'),
(6346, 1818, 8632, 'Ajman Pearl'),
(6347, 1818, 4629, 'Al Jurf 1'),
(6348, 1818, 4630, 'Al Jurf 2'),
(6349, 1818, 4631, 'Al Jurf 3'),
(6350, 3598, 4599, 'Zayed Military City Tower 6'),
(6351, 1818, 4632, 'Al Khail Tower 1'),
(6352, 1818, 4633, 'Al Khail Tower 2'),
(6353, 1818, 4634, 'Al Khail Tower 3'),
(6354, 1818, 4635, 'Al Khor Towers'),
(6355, 1818, 4636, 'Al Nakheel'),
(6356, 1818, 4638, 'Al Rashidiya Towers'),
(6357, 1818, 4619, 'Atrium 360'),
(6358, 1818, 4620, 'Falaknaz Pride'),
(6359, 1818, 4640, 'Falcon Tower 2'),
(6360, 1818, 4639, 'Falcon Tower 1'),
(6361, 1818, 4641, 'Falcon Tower 3'),
(6362, 1818, 4642, 'Falcon Tower 4'),
(6363, 1818, 4644, 'Falcon Tower 6'),
(6364, 1818, 4643, 'Falcon Tower 5'),
(6365, 1818, 4645, 'Horizon Towers'),
(6366, 1818, 4646, 'Times Square'),
(6367, 1818, 4621, 'Tower A1'),
(6368, 1818, 4622, 'Tower A2'),
(6369, 1818, 4623, 'Tower A3'),
(6370, 1818, 4624, 'Tower B1'),
(6371, 1818, 4625, 'Tower B2'),
(6372, 1818, 4627, 'Tower C1'),
(6373, 1818, 4626, 'Tower B3'),
(6374, 1818, 4628, 'Tower C2'),
(6375, 1819, 4648, 'Ajman Industrial 2'),
(6376, 1819, 4647, 'Ajman Industrial 1'),
(6377, 1820, 4650, 'Marina Promonade'),
(6378, 1820, 4649, 'Marina Bay'),
(6379, 1821, 4651, 'Ajman Meadows'),
(6380, 1822, 4654, 'Acacia'),
(6381, 1822, 4652, 'Ajman Boulevard'),
(6382, 1822, 4653, 'Ajman One Tower 1'),
(6383, 1822, 8375, 'Ajman One Tower 10'),
(6384, 1822, 8378, 'Ajman One Tower 11'),
(6385, 1822, 8381, 'Ajman One Tower 12'),
(6386, 1822, 8351, 'Ajman One Tower 2'),
(6387, 1822, 8354, 'Ajman One Tower 3'),
(6388, 1822, 8357, 'Ajman One Tower 4'),
(6389, 1822, 8360, 'Ajman One Tower 5'),
(6390, 1822, 8363, 'Ajman One Tower 6'),
(6391, 1822, 8366, 'Ajman One Tower 7'),
(6392, 1822, 22034, 'Ajman One'),
(6393, 1822, 8372, 'Ajman One Tower 9'),
(6394, 1822, 8369, 'Ajman One Tower 8'),
(6395, 1822, 7390, 'Aqaar'),
(6396, 1822, 4655, 'Begonia'),
(6397, 1822, 4656, 'Camellia'),
(6398, 1822, 6615, 'Dahlia'),
(6399, 1822, 4657, 'Erica'),
(6400, 1822, 4658, 'Escape Villas'),
(6401, 1822, 8600, 'Jatropha'),
(6402, 1822, 6507, 'Kentia'),
(6403, 1822, 6504, 'VIP Villa'),
(6404, 1823, 4659, 'Al Ameera Village'),
(6405, 1824, 4660, 'Al Hadeel Tower'),
(6406, 7246, 7249, 'Orient Towers'),
(6407, 1824, 4661, 'Al Hilal Tower'),
(6408, 1824, 4669, 'Al Rashed 1'),
(6409, 1824, 4670, 'Al Rashed 2'),
(6410, 1824, 4671, 'Al Rashid 5'),
(6411, 1824, 4672, 'Al Rashid 6'),
(6412, 1824, 4673, 'Al Rashid 7'),
(6413, 1824, 4674, 'Al Rashid 8'),
(6414, 1824, 4675, 'Blossom Tower 1'),
(6415, 1824, 4676, 'Blossom Tower 2'),
(6416, 1824, 4662, 'Calthorpe Tower'),
(6417, 1824, 4663, 'Global Pearl Residence'),
(6418, 1824, 4677, 'Highfield Towers'),
(6419, 1824, 4664, 'Humaid Gate Tower'),
(6420, 1824, 4665, 'Infinity Tower'),
(6421, 1824, 4666, 'Royal Lake View'),
(6422, 1824, 4678, 'Savannah Heights Tower 1'),
(6423, 1824, 4679, 'Savannah Heights Tower 2'),
(6424, 1824, 4667, 'Springfield'),
(6425, 1824, 4668, 'Tricon Lake Front'),
(6426, 1826, 4681, 'Al Naemiya Tower 1'),
(6427, 1825, 4680, 'Al Ittihad Village'),
(6428, 1826, 4682, 'Al Naemiya Tower 2'),
(6429, 1826, 4683, 'Al Naemiya Tower 3'),
(6430, 1826, 4684, 'Rawan Building'),
(6431, 1827, 4685, 'Al Rashidiya'),
(6432, 1828, 4686, 'Al Rumaila'),
(6433, 3611, 25381, 'Al Zahraa'),
(6434, 8232, 8235, 'Golf Community'),
(6435, 3611, 4687, 'Al Zahraa'),
(6436, 1830, 4688, 'The Cavendish Tower'),
(6437, 1831, 4689, 'Corniche Ajman'),
(6438, 1832, 4690, 'Al Ajyaal Residency'),
(6439, 1832, 4691, 'Al Hambra Towers'),
(6440, 1832, 4692, 'Al Shalal Tower'),
(6441, 1832, 4693, 'Altitude Tower'),
(6442, 1832, 4694, 'Burj Al Furqan'),
(6443, 1832, 4695, 'Chapal The Glory'),
(6444, 1832, 4696, 'Chapal The Harmony'),
(6445, 1832, 4697, 'Chapal The Legacy'),
(6446, 1832, 4698, 'Chapal The Presidency'),
(6447, 1832, 4699, 'Chocolate Tower'),
(6448, 1832, 4700, 'Crimson Court'),
(6449, 1832, 4701, 'Crown Residencia'),
(6450, 1832, 4702, 'Crystal Residency'),
(6451, 1832, 4725, 'Emirates Lake Tower 2'),
(6452, 1832, 4724, 'Emirates Lake Tower 1'),
(6453, 1832, 4726, 'Emirates Pearls'),
(6454, 1832, 4703, 'ETA Star'),
(6455, 1832, 4704, 'Eye Tower'),
(6456, 1832, 4705, 'Fayrooz Tower'),
(6457, 1832, 4706, 'Fifth Avenue Ajman'),
(6458, 1832, 4707, 'Fortune Residency'),
(6459, 1832, 4727, 'Goldcrest Dreams 1'),
(6460, 1832, 4728, 'Goldcrest Dreams 2'),
(6461, 1832, 4729, 'Goldcrest Dreams 3'),
(6462, 1832, 4730, 'Goldcrest Dreams 4'),
(6463, 1832, 4731, 'Green Lake Tower 1'),
(6464, 1832, 4708, 'Golf Tower'),
(6465, 1832, 4732, 'Green Lake Tower 2'),
(6466, 1832, 4709, 'Kahraman Tower'),
(6467, 1832, 4710, 'Lake Signature'),
(6468, 1832, 4733, 'Lake View Tower 1'),
(6469, 1832, 4734, 'Lake View Tower 2'),
(6470, 1832, 4735, 'Lake View Tower 3'),
(6471, 1832, 4736, 'Lake View Tower 4'),
(6472, 1832, 4711, 'Lavender Tower'),
(6473, 1832, 4712, 'Lilies Tower'),
(6474, 1832, 7735, 'Majestic Towers'),
(6475, 1832, 4713, 'Money Tower'),
(6476, 1832, 4737, 'Paradise Lake Tower'),
(6477, 1832, 4715, 'Orbit Tower'),
(6478, 1832, 8405, 'Paradise Lakes Tower B2'),
(6479, 1832, 8408, 'Paradise Lakes Tower B3'),
(6480, 1832, 8411, 'Paradise Lakes Tower B4'),
(6481, 1832, 8414, 'Paradise Lakes Tower B5'),
(6482, 1832, 8417, 'Paradise Lakes Tower B6'),
(6483, 1832, 8420, 'Paradise Lakes Tower B7'),
(6484, 1832, 8423, 'Paradise Lakes Tower B8'),
(6485, 1832, 8426, 'Paradise Lakes Tower B9'),
(6486, 1832, 4714, 'Music Tower'),
(6487, 1832, 4716, 'Pearl Tower'),
(6488, 1832, 4739, 'Rainbow Tower 2'),
(6489, 1832, 4738, 'Rainbow Tower 1'),
(6490, 1832, 4740, 'Rainbow Tower 3'),
(6491, 1832, 4717, 'Rockland Residence'),
(6492, 1832, 4718, 'Royal Oasis'),
(6493, 1832, 4719, 'Sahara Tower'),
(6494, 1832, 4720, 'Savannah Tower'),
(6495, 1832, 4741, 'Shami Tower 1'),
(6496, 1832, 4742, 'Shami Tower 2'),
(6497, 1832, 4721, 'Tawakal Twin Towers'),
(6498, 1832, 4722, 'Unique Tower'),
(6499, 1832, 4723, 'Venice Tower'),
(6500, 6264, 6585, 'Almond Tower'),
(6501, 6264, 6267, 'Jasmine Towers'),
(6502, 1833, 4743, 'Meeza'),
(6503, 6264, 6270, 'Mandarin Tower'),
(6504, 1833, 4744, 'Nasa'),
(6505, 3612, 4745, 'Manama'),
(6506, 1835, 4746, 'Arc Tower'),
(6507, 1835, 4748, 'DIO Twin Tower'),
(6508, 1835, 4747, 'Burj Regent'),
(6509, 1835, 4749, 'Downtown Avenue'),
(6510, 1835, 4751, 'Global City Tower'),
(6511, 1835, 4750, 'Emerald Vista'),
(6512, 1835, 4752, 'Gold Tower'),
(6513, 1835, 4753, 'Konig Tower'),
(6514, 1835, 4754, 'Monarch Tower'),
(6515, 1835, 4755, 'Samaa Tower'),
(6516, 1835, 4756, 'Sat Lake Residency'),
(6517, 1835, 4758, 'Shami Garden Tower I'),
(6518, 1835, 4759, 'Shami Garden Tower II'),
(6519, 1835, 4757, 'Tulip Residence'),
(6520, 3613, 4760, 'Muehat'),
(6521, 3614, 4761, 'Musheiref'),
(6522, 1838, 4762, 'New Industrial Area'),
(6523, 1839, 4763, 'Century Tower 1'),
(6524, 1839, 4764, 'Century Tower 2'),
(6525, 1839, 4765, 'ICT Tower 1'),
(6526, 1839, 4766, 'ICT Tower 2'),
(6527, 6495, 6498, 'Sonya Tower'),
(6528, 1839, 4767, 'Park View Tower'),
(6529, 3599, 4603, 'Al Ain Industrial Area'),
(6530, 3600, 4604, 'Al Buraymi'),
(6531, 3601, 22178, 'Al Faqa'),
(6532, 3601, 4605, 'Al Faqa'),
(6533, 3602, 4606, 'Al Hilli'),
(6534, 3602, 4607, 'Beda Bint Soud'),
(6535, 3602, 9044, 'Hili Rayhaan By Rotana'),
(6536, 3603, 4608, 'Al Jimi'),
(6537, 3604, 4609, 'Al Khabisi'),
(6538, 3605, 4610, 'Al Maqam'),
(6539, 3606, 4611, 'Green Land Compound'),
(6540, 3606, 9071, 'Al Ain Ladies Club'),
(6541, 9050, 9059, 'Al Mutarad'),
(6542, 9053, 9056, 'Al Oyoun Village'),
(6543, 3607, 4612, 'Al Sinaiya'),
(6544, 3608, 4613, 'Al Tawiya'),
(6545, 3609, 4614, 'Tawam'),
(6546, 3610, 4615, 'Shaab Al Askar'),
(6547, 1809, 4768, 'Corniche Al Fujairah'),
(6548, 1807, 4769, 'Al Fanar 1'),
(6549, 1807, 4770, 'Al Fanar 2'),
(6550, 1808, 4771, 'Al Jaber Tower'),
(6551, 9082, 9088, 'Al Dhaith North'),
(6552, 9082, 9085, 'Al Dhaith South'),
(6553, 3615, 4776, 'Al Hamra Fort Hotel'),
(6554, 3615, 4772, 'Al Hamra Golf Resort'),
(6555, 3615, 8516, 'Al Hamra Marina'),
(6556, 3615, 4773, 'Al Hamra Lagoon'),
(6557, 3615, 4774, 'Al Hamra Residences'),
(6558, 3615, 4775, 'Al Hamra Views'),
(6559, 3615, 8498, 'Al Hamra Village'),
(6560, 3615, 8199, 'Al Hamra Village Townhouses'),
(6561, 3615, 7387, 'Bayti Townhomes'),
(6562, 3615, 8205, 'Duplexes'),
(6563, 3615, 6844, 'Falcon Island'),
(6564, 3615, 4777, 'Golf Apartments'),
(6565, 3615, 4780, 'Marina Apartments'),
(6566, 3615, 4778, 'Oceana Apartments'),
(6567, 3615, 23222, 'Royal Breeze'),
(6568, 3615, 7989, 'Royal Breeze 1'),
(6569, 3615, 4779, 'Royal Breeze 2'),
(6570, 3615, 8223, 'Royal Breeze 5'),
(6571, 3615, 7992, 'Royal Breeze 3'),
(6572, 3615, 8220, 'Royal Breeze 4'),
(6573, 3615, 8202, 'Royal Breeze Townhouses'),
(6574, 1443, 8196, 'Al Marjan Island Resort & Spa'),
(6575, 1443, 4782, 'Amwaj'),
(6576, 1443, 8501, 'Bab Al Bahr'),
(6577, 1443, 4781, 'Blue Mirage'),
(6578, 3615, 8208, 'Palace Hotel'),
(6579, 1443, 4787, 'Flamingo'),
(6580, 1443, 4786, 'Global Sea View'),
(6581, 1443, 4791, 'Marbella Bay'),
(6582, 1443, 4783, 'Kahraman'),
(6583, 1443, 4784, 'Marmar'),
(6584, 1443, 8504, 'Marjan Island Plot'),
(6585, 1443, 4792, 'Pacific Bora Bora'),
(6586, 1443, 4793, 'Pacific Polynesia'),
(6587, 1443, 4794, 'Pacific Samoa'),
(6588, 1443, 4795, 'Pacific Tonga'),
(6589, 1443, 4788, 'Santorini'),
(6590, 1443, 4789, 'Starfish'),
(6591, 1443, 4790, 'Terrapin'),
(6592, 8507, 8510, 'Julfar Towers'),
(6593, 1443, 4785, 'Yakout'),
(6594, 6047, 6048, 'Al Qusaidat'),
(6595, 5994, 5995, 'Al Seer'),
(6596, 1444, 6095, 'Amwaj'),
(6597, 1444, 6057, 'Fayrouz'),
(6598, 1444, 6056, 'Kahraman'),
(6599, 1444, 6096, 'Marmar'),
(6600, 1444, 6055, 'Yakout'),
(6601, 3616, 4796, 'Cornich Ras Al Khaima'),
(6602, 3617, 4797, 'Dana Island'),
(6603, 1448, 4798, 'Julfar'),
(6604, 3618, 4800, 'Granada'),
(6605, 3618, 4799, 'Bermuda'),
(6606, 3618, 8513, 'Lagoon'),
(6607, 3618, 25076, 'Lagoon B10'),
(6608, 3618, 25037, 'Lagoon B1'),
(6609, 3618, 25079, 'Lagoon B11'),
(6610, 3618, 25082, 'Lagoon B12'),
(6611, 3618, 25085, 'Lagoon B13'),
(6612, 3618, 25088, 'Lagoon B14'),
(6613, 3618, 25091, 'Lagoon B15'),
(6614, 3618, 25094, 'Lagoon B16'),
(6615, 3618, 25097, 'Lagoon B17'),
(6616, 3618, 25100, 'Lagoon B18'),
(6617, 3618, 8295, 'Flamingo Villas'),
(6618, 3618, 25103, 'Lagoon B19'),
(6619, 3618, 25040, 'Lagoon B2'),
(6620, 3618, 25106, 'Lagoon B20'),
(6621, 3618, 25109, 'Lagoon B20A'),
(6622, 3618, 25112, 'Lagoon B20B'),
(6623, 3618, 25121, 'Lagoon B21A'),
(6624, 3618, 25124, 'Lagoon B22'),
(6625, 3618, 25115, 'Lagoon B21'),
(6626, 3618, 25118, 'Lagoon B21B'),
(6627, 3618, 25130, 'Lagoon B24'),
(6628, 3618, 25127, 'Lagoon B23'),
(6629, 3618, 25055, 'Lagoon B3'),
(6630, 3618, 25058, 'Lagoon B4'),
(6631, 3618, 25061, 'Lagoon B4'),
(6632, 3618, 25034, 'Lagoon B5'),
(6633, 3618, 25064, 'Lagoon B6'),
(6634, 3618, 25067, 'Lagoon B7'),
(6635, 3618, 25070, 'Lagoon B8'),
(6636, 3618, 25073, 'Lagoon B9'),
(6637, 3618, 25049, 'Lagoon Building 1'),
(6638, 3618, 25052, 'Lagoon Building 2'),
(6639, 3618, 8226, 'Lagoon Walk'),
(6640, 3618, 4801, 'Malibu'),
(6641, 3618, 4802, 'Marbella'),
(6642, 3618, 4803, 'The Beachfront'),
(6643, 3620, 4805, 'RAK Industrial And Technology Par'),
(6644, 3619, 4804, 'Commercial Centre'),
(6645, 3621, 4806, 'Julfar Commercial Tower'),
(6646, 3621, 4807, 'Julfar Residence Tower'),
(6647, 3622, 4808, 'Ras Al Khaimah Gateway'),
(6648, 3623, 4809, 'The Cove'),
(6649, 3624, 4810, 'Al Marsa'),
(6650, 3624, 4811, 'Al Sahab'),
(6651, 3624, 4813, 'Saraya Village'),
(6652, 3624, 4812, 'Al Wahat'),
(6653, 8184, 8187, 'The Cove Rotana'),
(6654, 3625, 4814, 'Terrace Apartments'),
(6655, 3625, 4815, 'Yasmin Tower'),
(6656, 1773, 8629, 'Al Kharag'),
(6657, 1773, 4816, 'Freish Al Siyabi Building'),
(6658, 1773, 4817, 'Khalfan Al Fandi Building'),
(6659, 3626, 4818, 'Al Barashi Villas'),
(6660, 9497, 9499, 'Al Barashi'),
(6661, 3626, 23339, 'Al Brashi'),
(6662, 3627, 4819, 'Al Butina'),
(6663, 1776, 4820, 'Al Ettihad Street'),
(6664, 1777, 4821, 'Al Ghafeyah Area'),
(6665, 9614, 9617, 'Al Musalla'),
(6666, 25671, 25674, 'AL Hazannah'),
(6667, 9787, 25746, 'Sharqan'),
(6668, 9787, 9772, 'Al Qadsiya'),
(6669, 3628, 4822, 'Al Jubail'),
(6670, 1779, 4823, 'Al Khaldeia Area'),
(6671, 3629, 4824, 'Al Anwar Tower'),
(6672, 3629, 9319, 'Al Bandary Twin Tower'),
(6673, 3629, 4825, 'Al Burj Tower'),
(6674, 3629, 4826, 'Al Dana Tower'),
(6675, 3629, 4827, 'Al Ghazal Tower'),
(6676, 3629, 6102, 'Al Ghanem Business Centre'),
(6677, 3629, 4828, 'Al Hilal Tower'),
(6678, 3629, 4829, 'Al Kanana Building'),
(6679, 3629, 4830, 'Al Khan Lagoon Tower'),
(6680, 3629, 9247, 'Al Khan Street'),
(6681, 3629, 4886, 'Al Marwa Tower 3'),
(6682, 3629, 4884, 'Al Marwa Tower 1'),
(6683, 3629, 4885, 'Al Marwa Tower 2'),
(6684, 3629, 4831, 'Al Rund Tower'),
(6685, 3629, 4832, 'Al Shahd Tower'),
(6686, 3629, 4833, 'Al Sondos Tower'),
(6687, 3629, 4839, 'Al Taawoon Tower 1'),
(6688, 3629, 6141, 'Al Taawoon Tower 2'),
(6689, 3629, 4841, 'Al Taawoon Tower 3'),
(6690, 3629, 8229, 'Asas Tower'),
(6691, 3629, 4834, 'Beach Tower'),
(6692, 3629, 6438, 'Beach Tower 2'),
(6693, 3629, 4835, 'Beach Towers'),
(6694, 3629, 4836, 'Narjes Tower'),
(6695, 3629, 4837, 'Palm Tower'),
(6696, 3629, 4842, 'Rose Tower 1'),
(6697, 3629, 4838, 'Style Tower'),
(6698, 3629, 4843, 'Rose Tower 2'),
(6699, 1781, 4844, 'Al Khezamia'),
(6700, 3630, 4845, 'Al Dorra Tower'),
(6701, 3630, 8283, 'Al Ferasa Tower'),
(6702, 3630, 4846, 'Al Maha Tower'),
(6703, 3630, 9644, 'Al Majaz 1'),
(6704, 3630, 9647, 'Al Majaz 2'),
(6705, 3630, 8193, 'Al Mohannad Tower'),
(6706, 3630, 9650, 'Al Majaz 3'),
(6707, 3630, 4847, 'Al Safyia Building'),
(6708, 3630, 4849, 'Capital Tower'),
(6709, 3630, 4848, 'Al Yasmin Tower'),
(6710, 3630, 4850, 'Copmas Tower'),
(6711, 3630, 4854, 'Dar Al Majaz'),
(6712, 3630, 4852, 'Emirates Sails Tower'),
(6713, 3630, 4851, 'Eissal Al Youssifi Towers'),
(6714, 3630, 4855, 'Palm Tower 1'),
(6715, 3630, 8125, 'Lamya Towers'),
(6716, 3630, 4856, 'Palm Tower 2'),
(6717, 3630, 4857, 'Palm Tower 3'),
(6718, 1783, 9316, 'Al Manazel'),
(6719, 3630, 4853, 'Saeed Al Ghafli Building'),
(6720, 1783, 4858, 'Magestic Tower'),
(6721, 1784, 4859, 'Al Mareija'),
(6722, 1785, 4860, 'Al Ahlam Tower'),
(6723, 1785, 6603, 'Al Canay Building'),
(6724, 1785, 4861, 'Al Nada Tower'),
(6725, 1785, 4862, 'Al Nahda Complex'),
(6726, 1785, 4863, 'Al Zain Tower'),
(6727, 1785, 4864, 'Aliya Tower'),
(6728, 1785, 25659, 'Golden Sands Tower'),
(6729, 1785, 4865, 'Gulf Pearl Tower'),
(6730, 1785, 4866, 'Lootah Tower'),
(6731, 1785, 4868, 'Moon Tower 1'),
(6732, 1785, 4869, 'Moon Tower 2'),
(6733, 1785, 4867, 'Orchid Tower'),
(6734, 1785, 8570, 'Sahara Tower 2'),
(6735, 1785, 8465, 'Ramada Hotel'),
(6736, 1785, 8564, 'Sahara Tower 1'),
(6737, 1785, 8567, 'Sahara Tower 3'),
(6738, 1785, 8573, 'Sahara Tower 4'),
(6739, 1785, 8576, 'Sahara Tower 5'),
(6740, 1785, 4870, 'Sharjah Gate'),
(6741, 1786, 4871, 'Al Naimiya Area'),
(6742, 1787, 4872, 'Al Nekhailat'),
(6743, 3631, 4873, 'Al Nouf'),
(6744, 1789, 4874, 'Blue Bay'),
(6745, 1790, 6519, 'Al Nesr Tower'),
(6746, 1790, 7219, 'Al Noor Tower'),
(6747, 1790, 4875, 'Al Shahid Tower'),
(6748, 1790, 4876, 'Queen Tower'),
(6749, 1791, 9394, 'Afamia Tower'),
(6750, 1791, 6082, 'Al Mahatah'),
(6751, 1791, 4878, 'Sunlight Tower'),
(6752, 1791, 4877, 'Lotus Tower'),
(6753, 3633, 4879, 'Al Ramla East'),
(6754, 25633, 25636, 'Al Rahmaniya 1'),
(6755, 3633, 4880, 'Al Ramla West'),
(6756, 3634, 4881, 'Al Shahba'),
(6757, 1795, 6546, 'Al Hafeet Tower'),
(6758, 1795, 25731, 'Al Thuraya Tower'),
(6759, 1795, 9728, 'Al Saad Residence Tower'),
(6760, 1795, 6814, 'Asas Tower'),
(6761, 1795, 7096, 'Al Waha Residence Tower'),
(6762, 1795, 9397, 'Manazil Tower 3'),
(6763, 1795, 4882, 'Majestic Tower'),
(6764, 1796, 4484, 'Al Dana Tower'),
(6765, 1796, 4486, 'Al Wahda City Towers'),
(6766, 1796, 6982, 'Al Wahda Commercial'),
(6767, 1796, 6979, 'Al Wahda Residential'),
(6768, 1796, 4883, 'Capital Tower'),
(6769, 1796, 4487, 'Al Wahda Street'),
(6770, 1796, 4485, 'Grand Millennium Al Wahda Hotel'),
(6771, 1797, 23537, 'Al Marwa Tower 1'),
(6772, 1797, 23540, 'Al Marwa Tower 2'),
(6773, 1797, 23543, 'Al Marwa Tower 3'),
(6774, 1797, 9292, 'Blue Tower'),
(6775, 1797, 4887, 'Canal Star Tower'),
(6776, 1797, 4888, 'Jawahar Tower'),
(6777, 3637, 4889, 'Halwan'),
(6778, 1799, 4890, 'Hamriyah Free Zone'),
(6779, 3638, 4891, 'Maysaloon'),
(6780, 3639, 6113, 'Al Zahia'),
(6781, 3639, 4892, 'Muelih'),
(6782, 9572, 9575, 'Al Darari'),
(6783, 1803, 4894, 'Sharjah Airport Freezone (SAIF)'),
(6784, 1804, 4895, 'Industrial Area 1'),
(6785, 1804, 4896, 'Industrial Area 10'),
(6786, 1804, 4897, 'Industrial Area 13'),
(6787, 1804, 4898, 'Industrial Area 2'),
(6788, 1804, 4900, 'Industrial Area 4'),
(6789, 1804, 4899, 'Industrial Area 3'),
(6790, 1804, 4902, 'Industrial Area 6'),
(6791, 1804, 4901, 'Industrial Area 5'),
(6792, 1804, 4903, 'Industrial Area 7'),
(6793, 1802, 4893, 'Rolla Square'),
(6794, 1804, 4904, 'Industrial Area 8'),
(6795, 1804, 4905, 'Industrial Area 9'),
(6796, 1805, 4906, 'Umm Khanoor'),
(6797, 3640, 4907, 'Wasit'),
(6798, 3640, 25297, 'Al Yash'),
(6799, 1812, 4908, 'Al Naseem'),
(6800, 1812, 4909, 'Al Rawda'),
(6801, 1812, 4910, 'Al Waha'),
(6802, 6333, 6336, 'Morjan Tower'),
(6803, 6333, 6339, 'Dana Tower'),
(6804, 1810, 4912, 'Khor Al Beidah'),
(6805, 1813, 4911, 'Emirates Modern Industrial'),
(6806, 1811, 4913, 'Magellan'),
(6807, 1811, 4914, 'Mistral'),
(6808, 3641, 7888, 'Amwaj Resort'),
(6809, 3641, 4915, 'White Bay');

-- --------------------------------------------------------

--
-- Table structure for table `crm_sub_status`
--

CREATE TABLE IF NOT EXISTS `crm_sub_status` (
`id` int(11) NOT NULL,
  `sub_status` varchar(33) NOT NULL
) ENGINE=MyISAM AUTO_INCREMENT=9 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `crm_sub_status`
--

INSERT INTO `crm_sub_status` (`id`, `sub_status`) VALUES
(1, 'In progress'),
(2, 'Successful'),
(3, 'Unsuccessful'),
(4, 'Not yet contacted'),
(5, 'Called no reply'),
(6, 'Follow up'),
(7, 'Viewing arranged'),
(8, 'Not Specified');

-- --------------------------------------------------------

--
-- Table structure for table `crm_terminals_viewings`
--

CREATE TABLE IF NOT EXISTS `crm_terminals_viewings` (
`id` int(11) NOT NULL,
  `listing_type` int(4) NOT NULL DEFAULT '1' COMMENT '1=rent,2=sale',
  `listing_id` int(11) DEFAULT NULL,
  `listing_ref` varchar(55) DEFAULT NULL,
  `viewing_landlord_id` int(11) DEFAULT NULL,
  `starttime` date DEFAULT NULL,
  `viewing_status` int(5) DEFAULT NULL,
  `viewing_agent_id` int(11) DEFAULT NULL,
  `viewing_req_agent_id` int(11) DEFAULT NULL,
  `viewing_lead_id` int(11) DEFAULT NULL,
  `viewing_lead_ref` varchar(55) DEFAULT NULL,
  `viewing_landlord` varchar(99) DEFAULT NULL,
  `created_by` int(11) NOT NULL,
  `dateadded` date NOT NULL,
  `dateupdated` date NOT NULL,
  `viewing_notes` text NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `crm_terminals_viewings`
--

INSERT INTO `crm_terminals_viewings` (`id`, `listing_type`, `listing_id`, `listing_ref`, `viewing_landlord_id`, `starttime`, `viewing_status`, `viewing_agent_id`, `viewing_req_agent_id`, `viewing_lead_id`, `viewing_lead_ref`, `viewing_landlord`, `created_by`, `dateadded`, `dateupdated`, `viewing_notes`) VALUES
(1, 1, 2, 'GIS-R-0001', 48, '0000-00-00', 1, 1, 16, 525, 'RH-L-1286', 'shafiq', 1, '2015-12-14', '2015-12-14', ''),
(2, 1, 2, 'GIS-R-0001', 48, '2015-12-31', 3, 16, 19, 525, 'RH-L-1286', 'shafiq3', 1, '2015-12-14', '2015-12-14', ''),
(3, 1, 1, 'GIS-R-0001', 48, '2015-12-06', 1, 1, 0, 0, '', 'shafiq', 1, '2015-12-17', '2015-12-17', 'this is notes');

-- --------------------------------------------------------

--
-- Table structure for table `crm_todo`
--

CREATE TABLE IF NOT EXISTS `crm_todo` (
`id` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `ref` varchar(255) NOT NULL,
  `dateadded` datetime NOT NULL,
  `priority` int(5) NOT NULL,
  `due_date` datetime NOT NULL,
  `assigned_by` int(11) DEFAULT NULL,
  `notes` text NOT NULL,
  `assigned_to_id` int(11) DEFAULT NULL,
  `listings_id` int(11) NOT NULL,
  `listings_ref` varchar(255) NOT NULL,
  `status` int(11) NOT NULL,
  `lead_id` int(11) NOT NULL,
  `lead_ref` varchar(255) NOT NULL,
  `created_by` int(11) NOT NULL,
  `screenname` varchar(255) DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `crm_todo`
--

INSERT INTO `crm_todo` (`id`, `title`, `ref`, `dateadded`, `priority`, `due_date`, `assigned_by`, `notes`, `assigned_to_id`, `listings_id`, `listings_ref`, `status`, `lead_id`, `lead_ref`, `created_by`, `screenname`) VALUES
(1, 'todo title', 'RH-S-3433', '2016-01-19 09:37:01', 0, '2016-01-14 00:00:00', NULL, 'This is notes', NULL, 6, 'GIS-R-0001', 1, 0, '', 1, NULL),
(2, 'todo title 28jan', '', '2016-01-28 11:29:03', 3, '2016-01-28 00:00:00', NULL, 'there is my first notes on 28jan', 16, 6, 'GIS-R-6', 1, 0, '', 1, NULL),
(3, 'Calendar_todo', 'GIS-TODO-3', '2016-03-21 12:18:03', 3, '2016-03-01 00:00:00', 1, 'This is test', 1, 0, '', 2, 0, '', 1, 'calendar_todo'),
(4, '', 'GIS-TODO-4', '2016-03-21 12:28:10', 3, '1970-01-01 00:00:00', 1, '', 1, 0, '', 1, 0, '', 1, 'calendar_todo');

-- --------------------------------------------------------

--
-- Table structure for table `crm_users`
--

CREATE TABLE IF NOT EXISTS `crm_users` (
`id` int(11) NOT NULL,
  `rand_key` varchar(255) NOT NULL,
  `client_id` int(11) NOT NULL,
  `first_name` varchar(255) NOT NULL,
  `last_name` varchar(255) NOT NULL,
  `mobile_no_new_ccode` varchar(255) NOT NULL,
  `mobile_no_new` varchar(255) NOT NULL,
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `act_pw` varchar(255) NOT NULL,
  `created_by` int(11) NOT NULL,
  `created_date` date NOT NULL,
  `activitytime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `email` varchar(255) NOT NULL,
  `job_title` varchar(555) NOT NULL,
  `office_no` varchar(255) NOT NULL,
  `rera` varchar(22) NOT NULL,
  `is_active` bit(1) NOT NULL COMMENT 'either it it deleted or not',
  `status` int(5) NOT NULL COMMENT 'either published or not',
  `disable_publish` bit(1) NOT NULL,
  `disable_excel` bit(1) NOT NULL,
  `disable_sharing` tinyint(4) NOT NULL,
  `is_sms` bit(1) NOT NULL,
  `landlord_details` bit(1) NOT NULL,
  `delete_permissions` bit(1) NOT NULL,
  `edit_listings` bit(1) NOT NULL,
  `access` int(11) NOT NULL COMMENT '1=super admin,2=admin,3=agent,4=manager',
  `profile` text,
  `experience` varchar(255) DEFAULT NULL,
  `languages` varchar(255) DEFAULT NULL,
  `assignedusers` varchar(255) NOT NULL,
  `users_quota` smallint(55) NOT NULL,
  `photo_agent` varchar(255) DEFAULT NULL,
  `photo_agent2` varchar(255) DEFAULT NULL,
  `blocked` varchar(255) DEFAULT NULL COMMENT 'locked screens,select1values',
  `readonly` varchar(255) DEFAULT NULL COMMENT 'read only screens,select2values',
  `editable` varchar(255) DEFAULT NULL COMMENT 'unlocked screens,select3values',
  `co_not_user_id` varchar(255) DEFAULT NULL COMMENT 'Do not share with,select1uservalues',
  `co_user_id` varchar(255) DEFAULT NULL COMMENT 'share with,select2uservalues',
  `access_timings_details` varchar(555) DEFAULT NULL,
  `access_days` varchar(555) DEFAULT NULL,
  `access_timings` varchar(555) DEFAULT NULL,
  `imap` varchar(255) DEFAULT NULL,
  `emailsLeads` varchar(255) DEFAULT NULL,
  `passwordemail` varchar(255) DEFAULT NULL,
  `connect_status` varchar(255) DEFAULT NULL,
  `email_user_id` varchar(255) DEFAULT NULL,
  `email_client_id` varchar(255) DEFAULT NULL,
  `port` varchar(255) DEFAULT NULL,
  `target` decimal(18,2) NOT NULL
) ENGINE=MyISAM AUTO_INCREMENT=85 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `crm_users`
--

INSERT INTO `crm_users` (`id`, `rand_key`, `client_id`, `first_name`, `last_name`, `mobile_no_new_ccode`, `mobile_no_new`, `username`, `password`, `act_pw`, `created_by`, `created_date`, `activitytime`, `email`, `job_title`, `office_no`, `rera`, `is_active`, `status`, `disable_publish`, `disable_excel`, `disable_sharing`, `is_sms`, `landlord_details`, `delete_permissions`, `edit_listings`, `access`, `profile`, `experience`, `languages`, `assignedusers`, `users_quota`, `photo_agent`, `photo_agent2`, `blocked`, `readonly`, `editable`, `co_not_user_id`, `co_user_id`, `access_timings_details`, `access_days`, `access_timings`, `imap`, `emailsLeads`, `passwordemail`, `connect_status`, `email_user_id`, `email_client_id`, `port`, `target`) VALUES
(1, '1454931184767256', 1, 'Admin', 'S', '971', '505930026', 'admin', '21232f297a57a5a743894a0e4a801fc3', '', 1, '2016-02-09', '2013-03-09 20:18:45', 'admin@royalhome.ae', 'Listing Coordinator', '97143990990', '12576', b'1', 1, b'1', b'1', 0, b'1', b'1', b'1', b'1', 1, NULL, '2', '', '0', 5, '1454931184767256ba697ce1-652f-4077-8099-e8cd274911b2.jpg', '', 'Leads,', 'Dashboard,', 'Users,Sales,Rentals,Profile,Deals,Contacts,', '', '1,', 'SUN,MON,TUE,WED,THU,FRI,SAT', 'sun,mon,tue,wed,thu,fri,sat', '1-9', '', '', '', '', '1', '1000000', NULL, '10000.00'),
(84, '1454931184767236', 1, 'Maria', 'Ali', '971', '552493494', 'admin_crm', '110f15b30e13b11b39bf852525696374', 'iamherYES12*', 1, '2016-02-08', '2016-02-08 11:38:49', 'engrshafiq4@gmail.com', 'Listing Coordinator', '97143990990', '11574', b'1', 1, b'1', b'1', 0, b'1', b'1', b'1', b'1', 3, NULL, '3', NULL, '', 0, '', '', 'Leads,', 'Dashboard,', 'Users,Sales,Rentals,Profile,Deals,Contacts,', '', '1,', '01 Hrs-09 Hrs | SUN,MON,TUE,WED,THU,FRI,SAT', 'sun,mon,tue,wed,thu,fri,sat', '1-9', '', '', '', '0', '0', '0', '993', '5000.00');

-- --------------------------------------------------------

--
-- Table structure for table `crm_viewings_notes`
--

CREATE TABLE IF NOT EXISTS `crm_viewings_notes` (
`id` int(11) NOT NULL,
  `notes` text,
  `created_by` int(11) NOT NULL,
  `dateadded` datetime NOT NULL,
  `activitytime` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' ON UPDATE CURRENT_TIMESTAMP,
  `listing_id` int(11) NOT NULL,
  `listing_type` int(5) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `crm_viewings_notes`
--

INSERT INTO `crm_viewings_notes` (`id`, `notes`, `created_by`, `dateadded`, `activitytime`, `listing_id`, `listing_type`) VALUES
(2, 'fddgsfdgsfd', 1, '2015-12-14 00:00:00', '0000-00-00 00:00:00', 2, 1),
(3, 'sdadssd', 1, '2015-12-14 00:00:00', '0000-00-00 00:00:00', 2, 1),
(4, 'this is third', 1, '2015-12-15 00:00:00', '0000-00-00 00:00:00', 2, 1),
(5, 'This is fourth', 1, '2015-12-15 00:00:00', '0000-00-00 00:00:00', 2, 1);

-- --------------------------------------------------------

--
-- Table structure for table `events`
--

CREATE TABLE IF NOT EXISTS `events` (
`event_id` int(11) NOT NULL,
  `event_type` varchar(55) DEFAULT NULL,
  `start_date` datetime NOT NULL,
  `end_date` datetime NOT NULL,
  `event_name` varchar(255) NOT NULL,
  `location` varchar(255) DEFAULT NULL,
  `description` text,
  `userId` varchar(255) DEFAULT NULL,
  `created_by` int(11) NOT NULL COMMENT 'logedin user',
  `updated_by` tinyint(4) NOT NULL,
  `dateadded` datetime NOT NULL,
  `dateupdated` datetime NOT NULL,
  `emails` varchar(255) DEFAULT NULL COMMENT 'invitation emails',
  `day_ends_on` varchar(55) DEFAULT NULL,
  `day_of_week` varchar(55) DEFAULT NULL,
  `days_of_week` varchar(55) DEFAULT NULL,
  `hdn_repeat` varchar(55) DEFAULT NULL,
  `month_ends_on` varchar(55) DEFAULT NULL,
  `pack_agent_id` varchar(55) DEFAULT NULL,
  `repeat_type` varchar(55) DEFAULT NULL,
  `repeatd` varchar(55) DEFAULT NULL,
  `repeatm` varchar(55) DEFAULT NULL,
  `repeatw` varchar(55) DEFAULT NULL,
  `repeaty` varchar(55) DEFAULT NULL,
  `repstart_date` varchar(55) DEFAULT NULL,
  `week_ends_on` varchar(55) DEFAULT NULL,
  `year_ends_on` varchar(55) DEFAULT NULL,
  `listings_id` int(11) DEFAULT NULL,
  `leads_id` int(11) DEFAULT NULL,
  `deals_id` int(11) DEFAULT NULL,
  `listing_ref` varchar(55) DEFAULT NULL,
  `lead_ref` varchar(55) DEFAULT NULL,
  `deal_ref` varchar(55) DEFAULT NULL,
  `is_active` tinyint(4) NOT NULL DEFAULT '1',
  `userColor` varchar(55) DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `events`
--

INSERT INTO `events` (`event_id`, `event_type`, `start_date`, `end_date`, `event_name`, `location`, `description`, `userId`, `created_by`, `updated_by`, `dateadded`, `dateupdated`, `emails`, `day_ends_on`, `day_of_week`, `days_of_week`, `hdn_repeat`, `month_ends_on`, `pack_agent_id`, `repeat_type`, `repeatd`, `repeatm`, `repeatw`, `repeaty`, `repstart_date`, `week_ends_on`, `year_ends_on`, `listings_id`, `leads_id`, `deals_id`, `listing_ref`, `lead_ref`, `deal_ref`, `is_active`, `userColor`) VALUES
(1, NULL, '2016-02-03 06:00:00', '2016-02-09 07:00:00', 'Cross, 3km', NULL, NULL, '0', 0, 0, '2016-03-06 16:06:39', '2016-03-06 16:06:39', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL),
(2, NULL, '2016-02-02 00:00:00', '2016-02-15 00:00:00', 'Conquer the world!', NULL, NULL, '0', 0, 0, '2016-03-06 16:06:39', '2016-03-06 16:06:39', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL),
(3, NULL, '2016-02-03 06:00:00', '2016-02-15 00:00:00', 'Visit a dentist', NULL, NULL, '0', 0, 0, '2016-03-06 16:06:39', '2016-03-06 16:06:39', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL),
(4, NULL, '2016-02-03 06:00:00', '2016-02-15 00:00:00', 'Cross, 3km', NULL, NULL, '0', 0, 0, '2016-03-06 16:06:39', '2016-03-06 16:06:39', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL),
(5, NULL, '2016-02-03 06:00:00', '2016-02-15 00:00:00', 'Cross, 4km', NULL, NULL, '0', 0, 0, '2016-03-06 16:06:39', '2016-03-06 16:06:39', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL),
(6, NULL, '2016-02-03 06:00:00', '2016-02-15 00:00:00', 'Free time', NULL, NULL, '0', 0, 0, '2016-03-06 16:06:39', '2016-03-06 16:06:39', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL),
(7, NULL, '2016-02-01 04:00:00', '2016-03-02 04:05:00', 'New event', NULL, NULL, '0', 0, 0, '2016-03-06 16:06:39', '2016-03-07 14:48:33', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL),
(8, NULL, '2016-02-08 04:05:00', '2016-03-08 04:05:00', 'Renevation', NULL, NULL, '0', 0, 0, '2016-03-06 16:06:39', '2016-03-06 16:06:39', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL),
(9, NULL, '2016-03-12 04:00:00', '2016-03-12 04:05:00', 'New event', NULL, NULL, '0', 0, 0, '2016-03-06 16:06:39', '2016-03-06 16:06:39', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL),
(10, 'Viewing', '2016-03-10 11:57:15', '2016-03-10 11:20:00', 'New event-Shafiq1', 'Marina Dubai', 'yes description here1', '84', 1, 1, '2016-03-07 13:22:26', '2016-03-09 10:51:20', 'engrshafiq4@gmail.com', '', '1', '7', NULL, '', '84', 'day', NULL, '1', '1', '1', '', '', '', 0, 0, 0, '', '', '', 1, NULL),
(11, '', '2016-03-10 11:57:00', '2016-03-31 12:05:00', 'shafiq-new-test', 'JBR', 'This is for JBR', '1', 1, 1, '2016-03-09 11:09:59', '2016-03-09 11:24:06', 'muhammad.royalhome@gmail.com', '', '1', '7', NULL, '', '84', 'week', NULL, '1', NULL, '1', '', '', '', 0, 0, 0, '', '', '', 1, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `homeservices`
--

CREATE TABLE IF NOT EXISTS `homeservices` (
`id` int(10) unsigned NOT NULL,
  `company_name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `region_id` int(11) NOT NULL,
  `area_location_id` int(11) NOT NULL,
  `sub_area_location_id` int(11) NOT NULL,
  `company_email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `company_phone` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `company_fax` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `company_website` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `company_license` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `lat` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `lon` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `user_id` int(11) NOT NULL,
  `status` tinyint(4) NOT NULL,
  `is_active` tinyint(4) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `homeservices`
--

INSERT INTO `homeservices` (`id`, `company_name`, `region_id`, `area_location_id`, `sub_area_location_id`, `company_email`, `company_phone`, `company_fax`, `company_website`, `company_license`, `lat`, `lon`, `user_id`, `status`, `is_active`, `created_at`, `updated_at`) VALUES
(1, 'DECO-FURN', 1, 15, 2146, 'deco@gmail.com', '042012563', '0425989633', 'http://deco.com', '1234563', '25.081228256225586', '55.143272399902344', 1, 1, 1, '2016-04-19 20:00:00', '2016-04-20 05:27:00'),
(2, 'AnOther Company', 1, 17, 3447, 'abc@gmail.com', '04288569', '04526358', 'http://abc.com', '4856', '25.11005210876465', '55.20235061645508', 1, 1, 1, '2016-04-19 20:00:00', '2016-04-20 05:27:00');

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE IF NOT EXISTS `migrations` (
  `migration` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`migration`, `batch`) VALUES
('2014_10_12_000000_create_users_table', 1),
('2014_10_12_100000_create_password_resets_table', 1),
('2016_04_12_104719_create_social_accounts_table', 1),
('2016_04_13_084048_create_mortgages_table', 1),
('2016_04_20_072544_create_HomeServices_table', 1);

-- --------------------------------------------------------

--
-- Table structure for table `mortgages`
--

CREATE TABLE IF NOT EXISTS `mortgages` (
`id` int(10) unsigned NOT NULL,
  `bank_name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `min_salary` decimal(9,2) NOT NULL,
  `down_payment` decimal(9,2) NOT NULL,
  `monthly_payment` decimal(9,2) NOT NULL,
  `rate_percentage` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `rate_status` tinyint(4) NOT NULL,
  `loan_type` tinyint(4) NOT NULL,
  `user_id` int(11) NOT NULL,
  `status` tinyint(4) NOT NULL,
  `is_active` tinyint(4) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE IF NOT EXISTS `password_resets` (
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `social_accounts`
--

CREATE TABLE IF NOT EXISTS `social_accounts` (
`id` int(10) unsigned NOT NULL,
  `user_id` int(11) NOT NULL,
  `provider_user_id` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `provider` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE IF NOT EXISTS `users` (
`id` int(10) unsigned NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `facebook_id` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `avatar` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `crm_accounting_balancesheet`
--
ALTER TABLE `crm_accounting_balancesheet`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `crm_accounting_balancesheet_history`
--
ALTER TABLE `crm_accounting_balancesheet_history`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `crm_accounting_bankaccounts`
--
ALTER TABLE `crm_accounting_bankaccounts`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `crm_accounting_bankaccounts_history`
--
ALTER TABLE `crm_accounting_bankaccounts_history`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `crm_accounting_parentcategory`
--
ALTER TABLE `crm_accounting_parentcategory`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `crm_accounting_paymentmodes`
--
ALTER TABLE `crm_accounting_paymentmodes`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `crm_accounting_paymentmodes_history`
--
ALTER TABLE `crm_accounting_paymentmodes_history`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `crm_accounting_trancategories`
--
ALTER TABLE `crm_accounting_trancategories`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `crm_accounting_trancategories_history`
--
ALTER TABLE `crm_accounting_trancategories_history`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `crm_agents_pics`
--
ALTER TABLE `crm_agents_pics`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `crm_category`
--
ALTER TABLE `crm_category`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `crm_city`
--
ALTER TABLE `crm_city`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `crm_columns`
--
ALTER TABLE `crm_columns`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `crm_contacts_documents`
--
ALTER TABLE `crm_contacts_documents`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `crm_contacts_notes`
--
ALTER TABLE `crm_contacts_notes`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `crm_deals`
--
ALTER TABLE `crm_deals`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `crm_events`
--
ALTER TABLE `crm_events`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `crm_groups`
--
ALTER TABLE `crm_groups`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `crm_leads`
--
ALTER TABLE `crm_leads`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `crm_leads_details`
--
ALTER TABLE `crm_leads_details`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `crm_leads_notes`
--
ALTER TABLE `crm_leads_notes`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `crm_listings`
--
ALTER TABLE `crm_listings`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `crm_listings_documents`
--
ALTER TABLE `crm_listings_documents`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `crm_listings_history`
--
ALTER TABLE `crm_listings_history`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `crm_listings_images`
--
ALTER TABLE `crm_listings_images`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `crm_listings_notes`
--
ALTER TABLE `crm_listings_notes`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `crm_listings_versions`
--
ALTER TABLE `crm_listings_versions`
 ADD PRIMARY KEY (`id`,`revision`);

--
-- Indexes for table `crm_listings_versions_details`
--
ALTER TABLE `crm_listings_versions_details`
 ADD PRIMARY KEY (`id`,`revision`);

--
-- Indexes for table `crm_location`
--
ALTER TABLE `crm_location`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `crm_locations_text`
--
ALTER TABLE `crm_locations_text`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `crm_loginhistory`
--
ALTER TABLE `crm_loginhistory`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `crm_notices`
--
ALTER TABLE `crm_notices`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `crm_notices_documents`
--
ALTER TABLE `crm_notices_documents`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `crm_owners`
--
ALTER TABLE `crm_owners`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `crm_pm_accounts`
--
ALTER TABLE `crm_pm_accounts`
 ADD UNIQUE KEY `id` (`id`);

--
-- Indexes for table `crm_pm_accounts_notes`
--
ALTER TABLE `crm_pm_accounts_notes`
 ADD UNIQUE KEY `id` (`id`);

--
-- Indexes for table `crm_pm_landlords`
--
ALTER TABLE `crm_pm_landlords`
 ADD UNIQUE KEY `id` (`id`);

--
-- Indexes for table `crm_pm_landlords_notes`
--
ALTER TABLE `crm_pm_landlords_notes`
 ADD UNIQUE KEY `id` (`id`);

--
-- Indexes for table `crm_pm_leases`
--
ALTER TABLE `crm_pm_leases`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `crm_pm_lease_documents`
--
ALTER TABLE `crm_pm_lease_documents`
 ADD UNIQUE KEY `id` (`id`);

--
-- Indexes for table `crm_pm_lease_notes`
--
ALTER TABLE `crm_pm_lease_notes`
 ADD UNIQUE KEY `id` (`id`);

--
-- Indexes for table `crm_pm_serviceproviders`
--
ALTER TABLE `crm_pm_serviceproviders`
 ADD PRIMARY KEY (`id`), ADD UNIQUE KEY `id` (`id`);

--
-- Indexes for table `crm_pm_serviceproviders_notes`
--
ALTER TABLE `crm_pm_serviceproviders_notes`
 ADD UNIQUE KEY `id` (`id`);

--
-- Indexes for table `crm_pm_tenants`
--
ALTER TABLE `crm_pm_tenants`
 ADD UNIQUE KEY `id` (`id`);

--
-- Indexes for table `crm_pm_units`
--
ALTER TABLE `crm_pm_units`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `crm_pm_units_images`
--
ALTER TABLE `crm_pm_units_images`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `crm_pm_units_notes`
--
ALTER TABLE `crm_pm_units_notes`
 ADD UNIQUE KEY `id` (`id`);

--
-- Indexes for table `crm_pm_workorders`
--
ALTER TABLE `crm_pm_workorders`
 ADD UNIQUE KEY `id` (`id`);

--
-- Indexes for table `crm_pm_workorders_notes`
--
ALTER TABLE `crm_pm_workorders_notes`
 ADD UNIQUE KEY `id` (`id`);

--
-- Indexes for table `crm_profile`
--
ALTER TABLE `crm_profile`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `crm_savedsearch`
--
ALTER TABLE `crm_savedsearch`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `crm_screens`
--
ALTER TABLE `crm_screens`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `crm_subloc`
--
ALTER TABLE `crm_subloc`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `crm_sub_status`
--
ALTER TABLE `crm_sub_status`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `crm_terminals_viewings`
--
ALTER TABLE `crm_terminals_viewings`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `crm_todo`
--
ALTER TABLE `crm_todo`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `crm_users`
--
ALTER TABLE `crm_users`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `crm_viewings_notes`
--
ALTER TABLE `crm_viewings_notes`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `events`
--
ALTER TABLE `events`
 ADD PRIMARY KEY (`event_id`);

--
-- Indexes for table `homeservices`
--
ALTER TABLE `homeservices`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `mortgages`
--
ALTER TABLE `mortgages`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
 ADD KEY `password_resets_email_index` (`email`), ADD KEY `password_resets_token_index` (`token`);

--
-- Indexes for table `social_accounts`
--
ALTER TABLE `social_accounts`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
 ADD PRIMARY KEY (`id`), ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `crm_accounting_balancesheet`
--
ALTER TABLE `crm_accounting_balancesheet`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `crm_accounting_balancesheet_history`
--
ALTER TABLE `crm_accounting_balancesheet_history`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `crm_accounting_bankaccounts`
--
ALTER TABLE `crm_accounting_bankaccounts`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `crm_accounting_bankaccounts_history`
--
ALTER TABLE `crm_accounting_bankaccounts_history`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `crm_accounting_parentcategory`
--
ALTER TABLE `crm_accounting_parentcategory`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=11;
--
-- AUTO_INCREMENT for table `crm_accounting_paymentmodes`
--
ALTER TABLE `crm_accounting_paymentmodes`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `crm_accounting_paymentmodes_history`
--
ALTER TABLE `crm_accounting_paymentmodes_history`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `crm_accounting_trancategories`
--
ALTER TABLE `crm_accounting_trancategories`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `crm_accounting_trancategories_history`
--
ALTER TABLE `crm_accounting_trancategories_history`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `crm_agents_pics`
--
ALTER TABLE `crm_agents_pics`
MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `crm_category`
--
ALTER TABLE `crm_category`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=20;
--
-- AUTO_INCREMENT for table `crm_city`
--
ALTER TABLE `crm_city`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=8;
--
-- AUTO_INCREMENT for table `crm_columns`
--
ALTER TABLE `crm_columns`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `crm_contacts_documents`
--
ALTER TABLE `crm_contacts_documents`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT for table `crm_contacts_notes`
--
ALTER TABLE `crm_contacts_notes`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `crm_deals`
--
ALTER TABLE `crm_deals`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `crm_events`
--
ALTER TABLE `crm_events`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `crm_groups`
--
ALTER TABLE `crm_groups`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `crm_leads`
--
ALTER TABLE `crm_leads`
MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT for table `crm_leads_details`
--
ALTER TABLE `crm_leads_details`
MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `crm_leads_notes`
--
ALTER TABLE `crm_leads_notes`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `crm_listings`
--
ALTER TABLE `crm_listings`
MODIFY `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT for table `crm_listings_documents`
--
ALTER TABLE `crm_listings_documents`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `crm_listings_history`
--
ALTER TABLE `crm_listings_history`
MODIFY `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=11;
--
-- AUTO_INCREMENT for table `crm_listings_images`
--
ALTER TABLE `crm_listings_images`
MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=13;
--
-- AUTO_INCREMENT for table `crm_listings_notes`
--
ALTER TABLE `crm_listings_notes`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `crm_listings_versions`
--
ALTER TABLE `crm_listings_versions`
MODIFY `revision` int(6) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `crm_listings_versions_details`
--
ALTER TABLE `crm_listings_versions_details`
MODIFY `revision` int(6) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `crm_location`
--
ALTER TABLE `crm_location`
MODIFY `id` int(22) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=639;
--
-- AUTO_INCREMENT for table `crm_locations_text`
--
ALTER TABLE `crm_locations_text`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `crm_loginhistory`
--
ALTER TABLE `crm_loginhistory`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=22;
--
-- AUTO_INCREMENT for table `crm_notices`
--
ALTER TABLE `crm_notices`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `crm_notices_documents`
--
ALTER TABLE `crm_notices_documents`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `crm_owners`
--
ALTER TABLE `crm_owners`
MODIFY `id` int(20) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `crm_pm_accounts`
--
ALTER TABLE `crm_pm_accounts`
MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `crm_pm_accounts_notes`
--
ALTER TABLE `crm_pm_accounts_notes`
MODIFY `id` int(8) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `crm_pm_landlords`
--
ALTER TABLE `crm_pm_landlords`
MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `crm_pm_landlords_notes`
--
ALTER TABLE `crm_pm_landlords_notes`
MODIFY `id` int(8) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT for table `crm_pm_leases`
--
ALTER TABLE `crm_pm_leases`
MODIFY `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=11;
--
-- AUTO_INCREMENT for table `crm_pm_lease_documents`
--
ALTER TABLE `crm_pm_lease_documents`
MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `crm_pm_lease_notes`
--
ALTER TABLE `crm_pm_lease_notes`
MODIFY `id` int(8) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=17;
--
-- AUTO_INCREMENT for table `crm_pm_serviceproviders`
--
ALTER TABLE `crm_pm_serviceproviders`
MODIFY `id` int(11) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `crm_pm_serviceproviders_notes`
--
ALTER TABLE `crm_pm_serviceproviders_notes`
MODIFY `id` int(8) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `crm_pm_tenants`
--
ALTER TABLE `crm_pm_tenants`
MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `crm_pm_units`
--
ALTER TABLE `crm_pm_units`
MODIFY `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=16;
--
-- AUTO_INCREMENT for table `crm_pm_units_images`
--
ALTER TABLE `crm_pm_units_images`
MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=9;
--
-- AUTO_INCREMENT for table `crm_pm_units_notes`
--
ALTER TABLE `crm_pm_units_notes`
MODIFY `id` int(8) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=8;
--
-- AUTO_INCREMENT for table `crm_pm_workorders`
--
ALTER TABLE `crm_pm_workorders`
MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `crm_pm_workorders_notes`
--
ALTER TABLE `crm_pm_workorders_notes`
MODIFY `id` int(8) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=8;
--
-- AUTO_INCREMENT for table `crm_profile`
--
ALTER TABLE `crm_profile`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `crm_savedsearch`
--
ALTER TABLE `crm_savedsearch`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=8;
--
-- AUTO_INCREMENT for table `crm_screens`
--
ALTER TABLE `crm_screens`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=9;
--
-- AUTO_INCREMENT for table `crm_subloc`
--
ALTER TABLE `crm_subloc`
MODIFY `id` int(22) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=6810;
--
-- AUTO_INCREMENT for table `crm_sub_status`
--
ALTER TABLE `crm_sub_status`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=9;
--
-- AUTO_INCREMENT for table `crm_terminals_viewings`
--
ALTER TABLE `crm_terminals_viewings`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `crm_todo`
--
ALTER TABLE `crm_todo`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `crm_users`
--
ALTER TABLE `crm_users`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=85;
--
-- AUTO_INCREMENT for table `crm_viewings_notes`
--
ALTER TABLE `crm_viewings_notes`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `events`
--
ALTER TABLE `events`
MODIFY `event_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=12;
--
-- AUTO_INCREMENT for table `homeservices`
--
ALTER TABLE `homeservices`
MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `mortgages`
--
ALTER TABLE `mortgages`
MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `social_accounts`
--
ALTER TABLE `social_accounts`
MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
