-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Sep 06, 2023 at 03:12 PM
-- Server version: 5.7.42-cll-lve
-- PHP Version: 8.1.16

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `infoxtec_zohodb`
--

-- --------------------------------------------------------

--
-- Table structure for table `auth_group`
--

CREATE TABLE `auth_group` (
  `id` int(11) NOT NULL,
  `name` varchar(150) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `auth_group_permissions`
--

CREATE TABLE `auth_group_permissions` (
  `id` bigint(20) NOT NULL,
  `group_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `auth_permission`
--

CREATE TABLE `auth_permission` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `content_type_id` int(11) NOT NULL,
  `codename` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `auth_permission`
--

INSERT INTO `auth_permission` (`id`, `name`, `content_type_id`, `codename`) VALUES
(1, 'Can add log entry', 1, 'add_logentry'),
(2, 'Can change log entry', 1, 'change_logentry'),
(3, 'Can delete log entry', 1, 'delete_logentry'),
(4, 'Can view log entry', 1, 'view_logentry'),
(5, 'Can add permission', 2, 'add_permission'),
(6, 'Can change permission', 2, 'change_permission'),
(7, 'Can delete permission', 2, 'delete_permission'),
(8, 'Can view permission', 2, 'view_permission'),
(9, 'Can add group', 3, 'add_group'),
(10, 'Can change group', 3, 'change_group'),
(11, 'Can delete group', 3, 'delete_group'),
(12, 'Can view group', 3, 'view_group'),
(13, 'Can add user', 4, 'add_user'),
(14, 'Can change user', 4, 'change_user'),
(15, 'Can delete user', 4, 'delete_user'),
(16, 'Can view user', 4, 'view_user'),
(17, 'Can add content type', 5, 'add_contenttype'),
(18, 'Can change content type', 5, 'change_contenttype'),
(19, 'Can delete content type', 5, 'delete_contenttype'),
(20, 'Can view content type', 5, 'view_contenttype'),
(21, 'Can add session', 6, 'add_session'),
(22, 'Can change session', 6, 'change_session'),
(23, 'Can delete session', 6, 'delete_session'),
(24, 'Can view session', 6, 'view_session'),
(25, 'Can add add item', 7, 'add_additem'),
(26, 'Can change add item', 7, 'change_additem'),
(27, 'Can delete add item', 7, 'delete_additem'),
(28, 'Can view add item', 7, 'view_additem'),
(29, 'Can add chart_of_ account', 8, 'add_chart_of_account'),
(30, 'Can change chart_of_ account', 8, 'change_chart_of_account'),
(31, 'Can delete chart_of_ account', 8, 'delete_chart_of_account'),
(32, 'Can view chart_of_ account', 8, 'view_chart_of_account'),
(33, 'Can add company_details', 9, 'add_company_details'),
(34, 'Can change company_details', 9, 'change_company_details'),
(35, 'Can delete company_details', 9, 'delete_company_details'),
(36, 'Can view company_details', 9, 'view_company_details'),
(37, 'Can add customer', 10, 'add_customer'),
(38, 'Can change customer', 10, 'change_customer'),
(39, 'Can delete customer', 10, 'delete_customer'),
(40, 'Can view customer', 10, 'view_customer'),
(41, 'Can add invoice', 11, 'add_invoice'),
(42, 'Can change invoice', 11, 'change_invoice'),
(43, 'Can delete invoice', 11, 'delete_invoice'),
(44, 'Can view invoice', 11, 'view_invoice'),
(45, 'Can add payment', 12, 'add_payment'),
(46, 'Can change payment', 12, 'change_payment'),
(47, 'Can delete payment', 12, 'delete_payment'),
(48, 'Can view payment', 12, 'view_payment'),
(49, 'Can add payment_terms', 13, 'add_payment_terms'),
(50, 'Can change payment_terms', 13, 'change_payment_terms'),
(51, 'Can delete payment_terms', 13, 'delete_payment_terms'),
(52, 'Can view payment_terms', 13, 'view_payment_terms'),
(53, 'Can add payments_recur', 14, 'add_payments_recur'),
(54, 'Can change payments_recur', 14, 'change_payments_recur'),
(55, 'Can delete payments_recur', 14, 'delete_payments_recur'),
(56, 'Can view payments_recur', 14, 'view_payments_recur'),
(57, 'Can add pricelist', 15, 'add_pricelist'),
(58, 'Can change pricelist', 15, 'change_pricelist'),
(59, 'Can delete pricelist', 15, 'delete_pricelist'),
(60, 'Can view pricelist', 15, 'view_pricelist'),
(61, 'Can add project', 16, 'add_project'),
(62, 'Can change project', 16, 'change_project'),
(63, 'Can delete project', 16, 'delete_project'),
(64, 'Can view project', 16, 'view_project'),
(65, 'Can add project1', 17, 'add_project1'),
(66, 'Can change project1', 17, 'change_project1'),
(67, 'Can delete project1', 17, 'delete_project1'),
(68, 'Can view project1', 17, 'view_project1'),
(69, 'Can add purchase', 18, 'add_purchase'),
(70, 'Can change purchase', 18, 'change_purchase'),
(71, 'Can delete purchase', 18, 'delete_purchase'),
(72, 'Can view purchase', 18, 'view_purchase'),
(73, 'Can add purchase_ order', 19, 'add_purchase_order'),
(74, 'Can change purchase_ order', 19, 'change_purchase_order'),
(75, 'Can delete purchase_ order', 19, 'delete_purchase_order'),
(76, 'Can view purchase_ order', 19, 'view_purchase_order'),
(77, 'Can add recurring_bills', 20, 'add_recurring_bills'),
(78, 'Can change recurring_bills', 20, 'change_recurring_bills'),
(79, 'Can delete recurring_bills', 20, 'delete_recurring_bills'),
(80, 'Can view recurring_bills', 20, 'view_recurring_bills'),
(81, 'Can add repeat_every', 21, 'add_repeat_every'),
(82, 'Can change repeat_every', 21, 'change_repeat_every'),
(83, 'Can delete repeat_every', 21, 'delete_repeat_every'),
(84, 'Can view repeat_every', 21, 'view_repeat_every'),
(85, 'Can add retainer invoice', 22, 'add_retainerinvoice'),
(86, 'Can change retainer invoice', 22, 'change_retainerinvoice'),
(87, 'Can delete retainer invoice', 22, 'delete_retainerinvoice'),
(88, 'Can view retainer invoice', 22, 'view_retainerinvoice'),
(89, 'Can add sales', 23, 'add_sales'),
(90, 'Can change sales', 23, 'change_sales'),
(91, 'Can delete sales', 23, 'delete_sales'),
(92, 'Can view sales', 23, 'view_sales'),
(93, 'Can add unit', 24, 'add_unit'),
(94, 'Can change unit', 24, 'change_unit'),
(95, 'Can delete unit', 24, 'delete_unit'),
(96, 'Can view unit', 24, 'view_unit'),
(97, 'Can add vendor_table', 25, 'add_vendor_table'),
(98, 'Can change vendor_table', 25, 'change_vendor_table'),
(99, 'Can delete vendor_table', 25, 'delete_vendor_table'),
(100, 'Can view vendor_table', 25, 'view_vendor_table'),
(101, 'Can add usernamez', 26, 'add_usernamez'),
(102, 'Can change usernamez', 26, 'change_usernamez'),
(103, 'Can delete usernamez', 26, 'delete_usernamez'),
(104, 'Can view usernamez', 26, 'view_usernamez'),
(105, 'Can add usercreate', 27, 'add_usercreate'),
(106, 'Can change usercreate', 27, 'change_usercreate'),
(107, 'Can delete usercreate', 27, 'delete_usercreate'),
(108, 'Can view usercreate', 27, 'view_usercreate'),
(109, 'Can add task', 28, 'add_task'),
(110, 'Can change task', 28, 'change_task'),
(111, 'Can delete task', 28, 'delete_task'),
(112, 'Can view task', 28, 'view_task'),
(113, 'Can add sample_table', 29, 'add_sample_table'),
(114, 'Can change sample_table', 29, 'change_sample_table'),
(115, 'Can delete sample_table', 29, 'delete_sample_table'),
(116, 'Can view sample_table', 29, 'view_sample_table'),
(117, 'Can add sales order', 30, 'add_salesorder'),
(118, 'Can change sales order', 30, 'change_salesorder'),
(119, 'Can delete sales order', 30, 'delete_salesorder'),
(120, 'Can view sales order', 30, 'view_salesorder'),
(121, 'Can add sales_item', 31, 'add_sales_item'),
(122, 'Can change sales_item', 31, 'change_sales_item'),
(123, 'Can delete sales_item', 31, 'delete_sales_item'),
(124, 'Can view sales_item', 31, 'view_sales_item'),
(125, 'Can add retaineritems', 32, 'add_retaineritems'),
(126, 'Can change retaineritems', 32, 'change_retaineritems'),
(127, 'Can delete retaineritems', 32, 'delete_retaineritems'),
(128, 'Can view retaineritems', 32, 'view_retaineritems'),
(129, 'Can add remarks_table', 33, 'add_remarks_table'),
(130, 'Can change remarks_table', 33, 'change_remarks_table'),
(131, 'Can delete remarks_table', 33, 'delete_remarks_table'),
(132, 'Can view remarks_table', 33, 'view_remarks_table'),
(133, 'Can add recurring_invoice', 34, 'add_recurring_invoice'),
(134, 'Can change recurring_invoice', 34, 'change_recurring_invoice'),
(135, 'Can delete recurring_invoice', 34, 'delete_recurring_invoice'),
(136, 'Can view recurring_invoice', 34, 'view_recurring_invoice'),
(137, 'Can add recurring_bills_items', 35, 'add_recurring_bills_items'),
(138, 'Can change recurring_bills_items', 35, 'change_recurring_bills_items'),
(139, 'Can delete recurring_bills_items', 35, 'delete_recurring_bills_items'),
(140, 'Can view recurring_bills_items', 35, 'view_recurring_bills_items'),
(141, 'Can add recur_itemtable', 36, 'add_recur_itemtable'),
(142, 'Can change recur_itemtable', 36, 'change_recur_itemtable'),
(143, 'Can delete recur_itemtable', 36, 'delete_recur_itemtable'),
(144, 'Can view recur_itemtable', 36, 'view_recur_itemtable'),
(145, 'Can add purchase_ order_items', 37, 'add_purchase_order_items'),
(146, 'Can change purchase_ order_items', 37, 'change_purchase_order_items'),
(147, 'Can delete purchase_ order_items', 37, 'delete_purchase_order_items'),
(148, 'Can view purchase_ order_items', 37, 'view_purchase_order_items'),
(149, 'Can add payment_made_items', 38, 'add_payment_made_items'),
(150, 'Can change payment_made_items', 38, 'change_payment_made_items'),
(151, 'Can delete payment_made_items', 38, 'delete_payment_made_items'),
(152, 'Can view payment_made_items', 38, 'view_payment_made_items'),
(153, 'Can add payment_item', 39, 'add_payment_item'),
(154, 'Can change payment_item', 39, 'change_payment_item'),
(155, 'Can delete payment_item', 39, 'delete_payment_item'),
(156, 'Can view payment_item', 39, 'view_payment_item'),
(157, 'Can add mail_table', 40, 'add_mail_table'),
(158, 'Can change mail_table', 40, 'change_mail_table'),
(159, 'Can delete mail_table', 40, 'delete_mail_table'),
(160, 'Can view mail_table', 40, 'view_mail_table'),
(161, 'Can add invoice_item', 41, 'add_invoice_item'),
(162, 'Can change invoice_item', 41, 'change_invoice_item'),
(163, 'Can delete invoice_item', 41, 'delete_invoice_item'),
(164, 'Can view invoice_item', 41, 'view_invoice_item'),
(165, 'Can add history', 42, 'add_history'),
(166, 'Can change history', 42, 'change_history'),
(167, 'Can delete history', 42, 'delete_history'),
(168, 'Can view history', 42, 'view_history'),
(169, 'Can add expense', 43, 'add_expense'),
(170, 'Can change expense', 43, 'change_expense'),
(171, 'Can delete expense', 43, 'delete_expense'),
(172, 'Can view expense', 43, 'view_expense'),
(173, 'Can add estimates', 44, 'add_estimates'),
(174, 'Can change estimates', 44, 'change_estimates'),
(175, 'Can delete estimates', 44, 'delete_estimates'),
(176, 'Can view estimates', 44, 'view_estimates'),
(177, 'Can add estimate items', 45, 'add_estimateitems'),
(178, 'Can change estimate items', 45, 'change_estimateitems'),
(179, 'Can delete estimate items', 45, 'delete_estimateitems'),
(180, 'Can view estimate items', 45, 'view_estimateitems'),
(181, 'Can add doc_upload_table', 46, 'add_doc_upload_table'),
(182, 'Can change doc_upload_table', 46, 'change_doc_upload_table'),
(183, 'Can delete doc_upload_table', 46, 'delete_doc_upload_table'),
(184, 'Can view doc_upload_table', 46, 'view_doc_upload_table'),
(185, 'Can add delivery chellan', 47, 'add_deliverychellan'),
(186, 'Can change delivery chellan', 47, 'change_deliverychellan'),
(187, 'Can delete delivery chellan', 47, 'delete_deliverychellan'),
(188, 'Can view delivery chellan', 47, 'view_deliverychellan'),
(189, 'Can add contact_person_table', 48, 'add_contact_person_table'),
(190, 'Can change contact_person_table', 48, 'change_contact_person_table'),
(191, 'Can delete contact_person_table', 48, 'delete_contact_person_table'),
(192, 'Can view contact_person_table', 48, 'view_contact_person_table'),
(193, 'Can add comments_table', 49, 'add_comments_table'),
(194, 'Can change comments_table', 49, 'change_comments_table'),
(195, 'Can delete comments_table', 49, 'delete_comments_table'),
(196, 'Can view comments_table', 49, 'view_comments_table'),
(197, 'Can add comment', 50, 'add_comment'),
(198, 'Can change comment', 50, 'change_comment'),
(199, 'Can delete comment', 50, 'delete_comment'),
(200, 'Can view comment', 50, 'view_comment'),
(201, 'Can add chart_of_ account_ upload', 51, 'add_chart_of_account_upload'),
(202, 'Can change chart_of_ account_ upload', 51, 'change_chart_of_account_upload'),
(203, 'Can delete chart_of_ account_ upload', 51, 'delete_chart_of_account_upload'),
(204, 'Can view chart_of_ account_ upload', 51, 'view_chart_of_account_upload'),
(205, 'Can add challan items', 52, 'add_challanitems'),
(206, 'Can change challan items', 52, 'change_challanitems'),
(207, 'Can delete challan items', 52, 'delete_challanitems'),
(208, 'Can view challan items', 52, 'view_challanitems'),
(209, 'Can add banking', 53, 'add_banking'),
(210, 'Can change banking', 53, 'change_banking'),
(211, 'Can delete banking', 53, 'delete_banking'),
(212, 'Can view banking', 53, 'view_banking'),
(213, 'Can add bank', 54, 'add_bank'),
(214, 'Can change bank', 54, 'change_bank'),
(215, 'Can delete bank', 54, 'delete_bank'),
(216, 'Can view bank', 54, 'view_bank'),
(217, 'Can add account', 55, 'add_account'),
(218, 'Can change account', 55, 'change_account'),
(219, 'Can delete account', 55, 'delete_account'),
(220, 'Can view account', 55, 'view_account'),
(221, 'Can add comments_item', 56, 'add_comments_item'),
(222, 'Can change comments_item', 56, 'change_comments_item'),
(223, 'Can delete comments_item', 56, 'delete_comments_item'),
(224, 'Can view comments_item', 56, 'view_comments_item'),
(225, 'Can add payment_made_item', 57, 'add_payment_made_item'),
(226, 'Can change payment_made_item', 57, 'change_payment_made_item'),
(227, 'Can delete payment_made_item', 57, 'delete_payment_made_item'),
(228, 'Can view payment_made_item', 57, 'view_payment_made_item'),
(229, 'Can add method', 58, 'add_method'),
(230, 'Can change method', 58, 'change_method'),
(231, 'Can delete method', 58, 'delete_method'),
(232, 'Can view method', 58, 'view_method'),
(233, 'Can add payment_made', 59, 'add_payment_made'),
(234, 'Can change payment_made', 59, 'change_payment_made'),
(235, 'Can delete payment_made', 59, 'delete_payment_made'),
(236, 'Can view payment_made', 59, 'view_payment_made'),
(237, 'Can add bankdetails', 60, 'add_bankdetails'),
(238, 'Can change bankdetails', 60, 'change_bankdetails'),
(239, 'Can delete bankdetails', 60, 'delete_bankdetails'),
(240, 'Can view bankdetails', 60, 'view_bankdetails'),
(241, 'Can add payroll', 61, 'add_payroll'),
(242, 'Can change payroll', 61, 'change_payroll'),
(243, 'Can delete payroll', 61, 'delete_payroll'),
(244, 'Can view payroll', 61, 'view_payroll'),
(245, 'Can add commentmodel', 62, 'add_commentmodel'),
(246, 'Can change commentmodel', 62, 'change_commentmodel'),
(247, 'Can delete commentmodel', 62, 'delete_commentmodel'),
(248, 'Can view commentmodel', 62, 'view_commentmodel'),
(249, 'Can add expense e', 63, 'add_expensee'),
(250, 'Can change expense e', 63, 'change_expensee'),
(251, 'Can delete expense e', 63, 'delete_expensee'),
(252, 'Can view expense e', 63, 'view_expensee'),
(253, 'Can add attach e', 64, 'add_attache'),
(254, 'Can change attach e', 64, 'change_attache'),
(255, 'Can delete attach e', 64, 'delete_attache'),
(256, 'Can view attach e', 64, 'view_attache'),
(257, 'Can add vendor_table e', 65, 'add_vendor_tablee'),
(258, 'Can change vendor_table e', 65, 'change_vendor_tablee'),
(259, 'Can delete vendor_table e', 65, 'delete_vendor_tablee'),
(260, 'Can view vendor_table e', 65, 'view_vendor_tablee'),
(261, 'Can add account e', 66, 'add_accounte'),
(262, 'Can change account e', 66, 'change_accounte'),
(263, 'Can delete account e', 66, 'delete_accounte'),
(264, 'Can view account e', 66, 'view_accounte'),
(265, 'Can add addcustomer e', 67, 'add_addcustomere'),
(266, 'Can change addcustomer e', 67, 'change_addcustomere'),
(267, 'Can delete addcustomer e', 67, 'delete_addcustomere'),
(268, 'Can view addcustomer e', 67, 'view_addcustomere'),
(269, 'Can add payrollfiles', 68, 'add_payrollfiles'),
(270, 'Can change payrollfiles', 68, 'change_payrollfiles'),
(271, 'Can delete payrollfiles', 68, 'delete_payrollfiles'),
(272, 'Can view payrollfiles', 68, 'view_payrollfiles'),
(273, 'Can add estimate_comments', 69, 'add_estimate_comments'),
(274, 'Can change estimate_comments', 69, 'change_estimate_comments'),
(275, 'Can delete estimate_comments', 69, 'delete_estimate_comments'),
(276, 'Can view estimate_comments', 69, 'view_estimate_comments'),
(277, 'Can add credits_doc_upload_table', 70, 'add_credits_doc_upload_table'),
(278, 'Can change credits_doc_upload_table', 70, 'change_credits_doc_upload_table'),
(279, 'Can delete credits_doc_upload_table', 70, 'delete_credits_doc_upload_table'),
(280, 'Can view credits_doc_upload_table', 70, 'view_credits_doc_upload_table'),
(281, 'Can add credits_comments_table', 71, 'add_credits_comments_table'),
(282, 'Can change credits_comments_table', 71, 'change_credits_comments_table'),
(283, 'Can delete credits_comments_table', 71, 'delete_credits_comments_table'),
(284, 'Can view credits_comments_table', 71, 'view_credits_comments_table'),
(285, 'Can add vendor_ credits', 72, 'add_vendor_credits'),
(286, 'Can change vendor_ credits', 72, 'change_vendor_credits'),
(287, 'Can delete vendor_ credits', 72, 'delete_vendor_credits'),
(288, 'Can view vendor_ credits', 72, 'view_vendor_credits'),
(289, 'Can add credits_mail_table', 73, 'add_credits_mail_table'),
(290, 'Can change credits_mail_table', 73, 'change_credits_mail_table'),
(291, 'Can delete credits_mail_table', 73, 'delete_credits_mail_table'),
(292, 'Can view credits_mail_table', 73, 'view_credits_mail_table'),
(293, 'Can add vendor_invoice_item', 74, 'add_vendor_invoice_item'),
(294, 'Can change vendor_invoice_item', 74, 'change_vendor_invoice_item'),
(295, 'Can delete vendor_invoice_item', 74, 'delete_vendor_invoice_item'),
(296, 'Can view vendor_invoice_item', 74, 'view_vendor_invoice_item'),
(297, 'Can add purchase bill items', 75, 'add_purchasebillitems'),
(298, 'Can change purchase bill items', 75, 'change_purchasebillitems'),
(299, 'Can delete purchase bill items', 75, 'delete_purchasebillitems'),
(300, 'Can view purchase bill items', 75, 'view_purchasebillitems'),
(301, 'Can add purchase bills', 76, 'add_purchasebills'),
(302, 'Can change purchase bills', 76, 'change_purchasebills'),
(303, 'Can delete purchase bills', 76, 'delete_purchasebills'),
(304, 'Can view purchase bills', 76, 'view_purchasebills'),
(305, 'Can add payment_terms e', 77, 'add_payment_termse'),
(306, 'Can change payment_terms e', 77, 'change_payment_termse'),
(307, 'Can delete payment_terms e', 77, 'delete_payment_termse'),
(308, 'Can view payment_terms e', 77, 'view_payment_termse'),
(309, 'Can add customer_contact_person_table', 78, 'add_customer_contact_person_table'),
(310, 'Can change customer_contact_person_table', 78, 'change_customer_contact_person_table'),
(311, 'Can delete customer_contact_person_table', 78, 'delete_customer_contact_person_table'),
(312, 'Can view customer_contact_person_table', 78, 'view_customer_contact_person_table'),
(313, 'Can add customer_comments_table', 79, 'add_customer_comments_table'),
(314, 'Can change customer_comments_table', 79, 'change_customer_comments_table'),
(315, 'Can delete customer_comments_table', 79, 'delete_customer_comments_table'),
(316, 'Can view customer_comments_table', 79, 'view_customer_comments_table'),
(317, 'Can add customer_doc_upload_table', 80, 'add_customer_doc_upload_table'),
(318, 'Can change customer_doc_upload_table', 80, 'change_customer_doc_upload_table'),
(319, 'Can delete customer_doc_upload_table', 80, 'delete_customer_doc_upload_table'),
(320, 'Can view customer_doc_upload_table', 80, 'view_customer_doc_upload_table'),
(321, 'Can add customer_mail_table', 81, 'add_customer_mail_table'),
(322, 'Can change customer_mail_table', 81, 'change_customer_mail_table'),
(323, 'Can delete customer_mail_table', 81, 'delete_customer_mail_table'),
(324, 'Can view customer_mail_table', 81, 'view_customer_mail_table'),
(325, 'Can add transactions', 82, 'add_transactions'),
(326, 'Can change transactions', 82, 'change_transactions'),
(327, 'Can delete transactions', 82, 'delete_transactions'),
(328, 'Can view transactions', 82, 'view_transactions'),
(329, 'Can add bankcreation', 83, 'add_bankcreation'),
(330, 'Can change bankcreation', 83, 'change_bankcreation'),
(331, 'Can delete bankcreation', 83, 'delete_bankcreation'),
(332, 'Can view bankcreation', 83, 'view_bankcreation'),
(333, 'Can add vendor_ credits_ bills_items_bills', 84, 'add_vendor_credits_bills_items_bills'),
(334, 'Can change vendor_ credits_ bills_items_bills', 84, 'change_vendor_credits_bills_items_bills'),
(335, 'Can delete vendor_ credits_ bills_items_bills', 84, 'delete_vendor_credits_bills_items_bills'),
(336, 'Can view vendor_ credits_ bills_items_bills', 84, 'view_vendor_credits_bills_items_bills'),
(337, 'Can add vendor_ credits_ bills', 85, 'add_vendor_credits_bills'),
(338, 'Can change vendor_ credits_ bills', 85, 'change_vendor_credits_bills'),
(339, 'Can delete vendor_ credits_ bills', 85, 'delete_vendor_credits_bills'),
(340, 'Can view vendor_ credits_ bills', 85, 'view_vendor_credits_bills');

-- --------------------------------------------------------

--
-- Table structure for table `auth_user`
--

CREATE TABLE `auth_user` (
  `id` int(11) NOT NULL,
  `password` varchar(128) NOT NULL,
  `last_login` datetime(6) DEFAULT NULL,
  `is_superuser` tinyint(1) NOT NULL,
  `username` varchar(150) NOT NULL,
  `first_name` varchar(150) NOT NULL,
  `last_name` varchar(150) NOT NULL,
  `email` varchar(254) NOT NULL,
  `is_staff` tinyint(1) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `date_joined` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `auth_user`
--

INSERT INTO `auth_user` (`id`, `password`, `last_login`, `is_superuser`, `username`, `first_name`, `last_name`, `email`, `is_staff`, `is_active`, `date_joined`) VALUES
(1, 'pbkdf2_sha256$260000$QI9AHjLecXtTqhuXd0c93J$IvNKfSI9HSMSbYhpYlgBxsX0NoL9vxJWxqTonrRQ3UU=', '2023-06-13 08:03:47.065210', 0, 'namedummy171@gmail.com', 'Name1', 'Name', 'namedummy171@gmail.com', 0, 1, '2023-05-09 14:00:18.483566'),
(2, 'pbkdf2_sha256$260000$j0ZrA7SDyYFgsIsC8jaVfC$g+ixhvobBCl8kzl8v160vz01JnnxtejhUEGSbcNWwEc=', '2023-07-21 10:59:22.721463', 0, 'alen123', 'Alen', 'Antony', 'alenantony32@gmail.com', 0, 1, '2023-05-09 15:17:30.201127'),
(3, 'pbkdf2_sha256$260000$ZJroD3A5JsSxF8824pqsfV$Sp0I1THI0GWpWYXfalYAz/Q0/Y99uEMW2+lSv4RyJnE=', '2023-08-03 03:42:31.559017', 0, 'aq', 'Ashiq', 'Mohd', 'aq@gmail.com', 0, 1, '2023-05-10 04:39:27.008209'),
(4, 'pbkdf2_sha256$260000$4fg3xn5Ot9vZdfcmqkFoMY$sSWz8jHZoSxtvui+TWHHSq9miwT0rlHAapgvOiVw3X0=', '2023-09-04 10:02:49.095650', 0, 'user@gmail.com', 'User', 'Sdfasf', 'user@gmail.com', 0, 1, '2023-05-10 10:53:33.912606'),
(5, 'pbkdf2_sha256$260000$iWTaxKmbx0UlBinBkuOu1p$aIYanflOE5lUXDKAAqi+ceofAvSIQxiXlnhX9tDEW+M=', NULL, 0, 'ABB', 'ABB', 'Company', 'abb123@gmail.com', 0, 1, '2023-05-11 08:49:16.917105'),
(6, 'pbkdf2_sha256$260000$6WklSdWyAeBe6sP1sal82h$Djq5clMjnGL0Dr+EHZFgUxJXoUEwgEKEq/dpZpmC8Bo=', NULL, 0, 'HARITHA', 'HARITHA', 'COMPANY', 'haritha123@gmail.com', 0, 1, '2023-05-11 09:45:43.880607'),
(7, 'pbkdf2_sha256$260000$vYszvkWXxLfCWfTPa3Atl4$keevQF3mbw2ACIJhIE7lbAehm2rp9XB7OCXNMKWPv1c=', '2023-05-11 11:20:48.628062', 0, 'saiju', 'Saiju', 'Sunny', 'saijusunny1301@gmail.com', 0, 1, '2023-05-11 11:20:37.925158'),
(8, 'pbkdf2_sha256$260000$fOhipLYNM37RtOXdT4B4F5$VKQhzc0z/FInOplVOzDNeYnWLOvCUf2YqMKIpvNvG9Y=', NULL, 0, 'clown', 'Saiju', 'Sunny', 'saijusunny1301@gmail.com', 0, 1, '2023-05-11 11:37:20.264888'),
(9, 'pbkdf2_sha256$260000$HmdL4J4xriYI6TL4DfKxmt$d9kg37fZTKmkR4iypiTuJaEv34KfBSmMoURSpl94EpM=', NULL, 0, 'saibu', 'Saibu', 'Sunny', 'saijuinfox@gmail.com', 0, 1, '2023-05-11 11:39:17.139422'),
(10, 'pbkdf2_sha256$260000$anNn16xCWDZUaosENgqJG5$pWVYfdX5NAj5HJM2xMsUtmy5trM8HOha/y/FW+cX/vI=', '2023-05-11 11:41:47.492472', 0, 'saiees', 'Lissy', 'Sunny', 'saijuinfozign@gmail.com', 0, 1, '2023-05-11 11:41:34.355713'),
(11, 'pbkdf2_sha256$260000$bMGM613wlkulxl1kw3awoP$NtOtZPLABDYy1Ms7eUE2/I64RvOBAb0c+x7lDHhlgoY=', '2023-05-11 11:46:36.799074', 0, 'raman', 'Saiju', 'Sunny', 'saiju@gmail.com', 0, 1, '2023-05-11 11:46:24.790232'),
(12, 'pbkdf2_sha256$260000$zs2fUMXTcxKo4AUf3YBwZU$EnEo9rNWSqfF83rVsFxOUXBmLvjrdASRpo4+lE3Crcg=', '2023-05-11 11:49:49.523220', 0, 'SJS', 'SJS', 'COMPANY', 'hsharitha24@gmail,com', 0, 1, '2023-05-11 11:49:27.379520'),
(13, 'pbkdf2_sha256$260000$Spam5fB1SGVmYqCq2m9BYi$oD7TMRK5m2F6wS1X6bP2PpiIYCFcxZ0W4TrCTmd8cIk=', '2023-05-12 05:46:40.162936', 0, 'Primestar', 'Primestar', 'Allmart', 'primestar@gmail.com', 0, 1, '2023-05-12 05:46:14.110410'),
(14, 'pbkdf2_sha256$260000$eSXeChdey27C7zIRNEu58I$9S+c/fs+gWoGPQwJtCKLHBMYFE/9c0xXzS9wjaBN5UE=', '2023-09-06 07:06:19.447342', 0, 'aambro', 'Aambro', 'Pvt Ltd', 'aambro99@gmail.com', 0, 1, '2023-05-15 04:44:52.044985'),
(15, 'pbkdf2_sha256$260000$qJY8t9XKj6Wd20aBjTAZLF$NZjLIhJxqB/gqz6KCVv4VlXh2WTdu9iX8RzJc3NeEvY=', '2023-05-17 07:17:11.992441', 0, 'a', 'A', 'A', 'ashiqva@gmail.com', 0, 1, '2023-05-15 06:02:47.968750'),
(16, 'pbkdf2_sha256$260000$NjUDFWDbK0TbyURZg38tvp$xtlR/j1f6LASwtQJyQO3RPcDjqfWTWAGMwyAE1spjfY=', '2023-08-26 05:24:39.851653', 0, 'radha', 'Radha', 'Devi', 'radha@gmail.com', 0, 1, '2023-05-17 09:44:21.968169'),
(17, 'pbkdf2_sha256$260000$FSk8eaFqHiZxC7ZSsGvixK$2ErIT5LX8tlcl11gjQvAASvy98NogACyHK9HgxadTLs=', '2023-09-04 11:01:42.926090', 0, 'minu', 'Shahabas', 'Tb', 'minu27theparambil@gmail.com', 0, 1, '2023-05-18 07:04:17.735103'),
(18, 'pbkdf2_sha256$260000$jALLxMFqpWOCP8JdnPy4ml$TAgZznRkEAwT4syBOYbci+gmyb1L7StEdq58+Hw1/Fk=', '2023-09-01 07:59:20.938364', 0, 'JISHNU', 'JISHNU', 'PRASAD', 'jishnupb098@gmail.com', 0, 1, '2023-05-24 07:48:58.457679'),
(19, 'pbkdf2_sha256$260000$xK8v9nwPiixtfownoUA2Hu$sxZ49WQ4j6Wery7h3o4TV+RO7ZEJ5Vjpg9oiUz5Qx7s=', '2023-05-25 09:28:16.300538', 0, 'niithya', 'Nithya', 'N', 'test@mail.com', 0, 1, '2023-05-24 11:22:30.346185'),
(20, 'pbkdf2_sha256$260000$0BVJuTONKPiYvCTHoUGbxW$pOT7PcbCGYAYzSP7x9vW/uKjfMiKTl+1movTm6YPDgA=', '2023-05-24 11:40:10.839189', 0, 'prime star', 'Prime Star', 'Private Limited', 'primestar123@gmail.com', 0, 1, '2023-05-24 11:37:52.382371'),
(21, 'pbkdf2_sha256$260000$Oq0tWjPPrLgloOy1TaOos6$FLlyZON2nY8gsy+eB7uz0QQ0vlbzo/YM2cwe17xr8h4=', '2023-07-29 06:17:43.626708', 0, 'Anazash', 'Muhammed', 'Anas', 'anazash88@gmail.com', 0, 1, '2023-05-26 04:32:48.219224'),
(22, 'pbkdf2_sha256$260000$6GDoWgM3U1Z0uARWy7Ry5Y$7nZTuztxOmExRIml3UjFkgw7k7waAAJWA3/RYLttygw=', '2023-06-07 06:39:33.152533', 0, 'test', 'Renu', 'D', 'test@mail.com', 0, 1, '2023-06-06 11:54:18.200918'),
(23, 'pbkdf2_sha256$260000$twmDWQGy6XVYvgmWALjpBu$RWZeOmWmNB8QyytsBFipIPF8M0GDnsfL8+Ppp2JtVkI=', '2023-09-06 10:14:26.412358', 0, 'tes', 'Nithya', 'V', 'test@mail.com', 0, 1, '2023-06-26 10:33:08.840555'),
(24, 'pbkdf2_sha256$260000$sMtJgGBLQgH16WtrjCDKry$HgjEeHKTfylyzMTEs1T7opeKqSvV0x2teeRCc2iK4kA=', NULL, 0, 'jaseela', 'Jaseela', 'Jabbar', 'jaseelajabbar1996@gmail.com', 0, 1, '2023-07-06 09:38:45.552914'),
(25, 'pbkdf2_sha256$260000$21eRudKncU70XT1cx2c1kH$yS3HQwUB6Oft6R5QCdzbnDicmrX5jc10EUVuw+ZKkVM=', '2023-09-06 11:06:50.040358', 0, 'ABCD', 'ABCD', 'ABCE', 'A@gmail.com', 0, 1, '2023-07-06 09:40:35.274476'),
(26, 'pbkdf2_sha256$260000$XBO8DodujzojcrTk7lwfIK$dNPlkIZsnsciT0xyROxp6TZCZhIvzPQc0ktx0HDLBJw=', '2023-08-23 10:55:02.485720', 0, 'amal', 'Amal', 'Davis', 'amald416@gmail.com', 0, 1, '2023-07-10 09:33:58.583367'),
(27, 'pbkdf2_sha256$260000$aRXFGIb6K3Bc0KMLPR2CiA$zbhEL7YV3zmudikd3YRVwYD3jn1uC7a7tAnSqRFqOmA=', '2023-08-22 08:12:49.835561', 0, 'user111', 'Zz', 'Zz', 'xyz@gmail.com', 0, 1, '2023-07-14 05:51:06.163007'),
(28, 'pbkdf2_sha256$260000$OtYd27AdTTMAGJRtgD5VZV$GTybNnhKvHpdvOJmk4HcoMjHH17G5Nk1CKZjTjlD3MY=', '2023-07-15 08:00:20.495375', 0, 'testing', 'Testing', 'Testing', 'amalcs0006@gmail.com', 0, 1, '2023-07-15 08:00:10.982309'),
(29, 'pbkdf2_sha256$260000$BbnIuG3Z0IerTAoHLFta3w$yVB8OB+L0mgW9fDCx1eoFGw6TkRcoVgAwwp/KdNWMEY=', '2023-07-15 08:53:30.885282', 0, 'ashiqva', 'Ashiq', 'Va', 'ash@gmail.com', 0, 1, '2023-07-15 08:53:17.091608'),
(30, 'pbkdf2_sha256$260000$BD6DtztvniYaNyVrMw0PjN$4/FO7v4qIE29NERD3m6uCmc7SKx5QjaIqcHDQAg+3+U=', '2023-07-15 11:58:33.508591', 0, 'q', 'Q', 'Q', 'q@gmail.com', 0, 1, '2023-07-15 11:58:27.909780'),
(31, 'pbkdf2_sha256$260000$TMHvj1lbc2vCDe9ZjXv5CD$5FkJ9KF2Rfmn2rh6uiG+gmox7ayKJVAK/n0Apa4+uq0=', '2023-07-17 11:44:43.757177', 0, 'nikki', 'Nikki', 'Nikki', 'nikki@gmail.com', 0, 1, '2023-07-17 10:48:55.171539'),
(32, 'pbkdf2_sha256$260000$LZ1QPGwu5ITmC4Td2mBWCK$BoguSMFXoI/7e+tgjzCK4TbnadyHzkkEhsKP/riCm9k=', '2023-08-22 06:30:12.851953', 0, 'maya', 'Maya', 'Maya', 'maya@gmail.com', 0, 1, '2023-07-18 09:27:45.363670'),
(33, 'pbkdf2_sha256$260000$chPH7mlXaqO6k0s704VLn5$CQWJFDM0QJ5tSZx++l0wbEzuRnc6ocRk14K9Reic6qM=', '2023-09-04 06:05:44.269747', 0, 'kausalliya', 'Kausalliya', 'R', 'kausalliya16@gmail.com', 0, 1, '2023-07-21 09:13:17.444340'),
(34, 'pbkdf2_sha256$260000$71GRlrDygFkhrcmcGukWNG$1hHSBndOK/ijpbcohV1PVDazUbU6eIRjbau0/NjVLU8=', '2023-08-31 09:34:56.146018', 0, 'Keerthana', 'Keerthana', 'Krishnan', 'keerthanavadath@gmail.com', 0, 1, '2023-07-21 12:08:06.759401'),
(35, 'pbkdf2_sha256$260000$HPcdDI6R7foYPZdJM8636b$lh+SYMg2Puh3dfYqfzGmEN3MXNVETLHll/OJMsUJu+4=', '2023-09-06 10:48:54.961422', 0, 'abin', 'Abin', 'Pj', 'ajayjayathilakan0@gmail.com', 0, 1, '2023-07-24 12:08:27.991861'),
(36, 'pbkdf2_sha256$260000$4PzKf7AqzCwANQ0XT9ms4A$f3LJ9eq/YaaGHzEihMOw6dxzczAmE+pUeoCF8VuXwWM=', '2023-07-31 06:37:29.505025', 0, 'mirna', 'Mirna', 'Kk', 'mirnafalak@gmail.com', 0, 1, '2023-07-29 11:12:34.608972'),
(37, 'pbkdf2_sha256$260000$EQ0PJwe8kGtO2EfMQJQ350$SdocXbFe/Gjqo/FyB15hMFVu3rtYYtdZ8AAmHvlE5cQ=', '2023-08-11 10:38:08.870975', 0, 'nasneen', 'Nasneen ', 'O M', 'nasneen.nazam@gmail.com', 0, 1, '2023-08-01 13:42:36.742391'),
(38, 'pbkdf2_sha256$260000$rWsiViS0dYca8WMB0jXcSC$SElbBk+62X1ZtMrOfaQapDFgqOCif6yyzwQWqZYx54Q=', '2023-09-06 03:59:17.072359', 0, 'reshna', 'Reshna', 'T', 'reshnasuresh567@gmail.com', 0, 1, '2023-08-04 13:51:32.172208'),
(39, 'pbkdf2_sha256$260000$IkznJZlntt3Su6929ZAScC$7/+f52qI1cbjOlgX8/CIcDhuUT/ZEkWVBvv+ld38oms=', NULL, 0, 'ABC ', 'ABC ', 'Pvt Ltd', 'abc123@gmail.com', 0, 1, '2023-08-07 07:10:01.969027'),
(40, 'pbkdf2_sha256$260000$DbfhAzZLpJ6PiaJsIpJpWh$gwUlfyz7uUsMzBuouaW0iwUYpCTZNELkAMN7ZjIXsl8=', '2023-08-07 07:15:29.034652', 0, '123 Ltd', '123 ', 'Ltd', '123df@gmail.com', 0, 1, '2023-08-07 07:15:04.960798'),
(41, 'pbkdf2_sha256$260000$JCmFoAuITMk9YKPJkiTIuI$5C0HNOtI8qRUiUwG2DVnLNe+Hb0mXqKhO+gobHt6PN0=', '2023-08-16 14:33:43.821525', 0, 'haripriya', 'Haripriya', 'B', 'haripriyabnair120@gmail.com', 0, 1, '2023-08-10 11:03:11.139688'),
(42, 'pbkdf2_sha256$260000$JOVeTnJciMmefAoV93J6r1$5GQhRGkvBh4wSfM48JvW/vZdic9qV0fqhcBMhjvnb7E=', '2023-08-10 11:30:45.404727', 0, 'lal', 'Bbb', 'B', 'abinjayathilakan0@gmail.com', 0, 1, '2023-08-10 11:08:42.429019'),
(43, 'pbkdf2_sha256$260000$SeYMDLmQ3TMUgBvTH9GPhx$vowVydGfnWRymlvUy70Kb+h7fsFJyeY115rMEdNk8nM=', '2023-08-17 06:19:39.279135', 0, 'hari', 'Haripriya', 'B', 'haripriyabnair120@gmail.com', 0, 1, '2023-08-12 03:40:51.068177'),
(44, 'pbkdf2_sha256$260000$FdmwSMIOsFodOhRvUV8RBB$S7dxaOw00iBHIEWVuluYim7MByXGbysOuIYGkpfrYak=', '2023-08-25 15:12:58.089304', 0, 'Alex123', 'Alex', 'Jhonson', 'alex@gmail.com', 0, 1, '2023-08-14 04:34:37.557796'),
(45, 'pbkdf2_sha256$260000$8C1QQjRuInKFC3X5Ipfwxo$IQM0dzCK3f1MoaKW1YEcu1xuUrb8141R0L2XL03QA4A=', '2023-08-14 09:53:49.332377', 0, 'krish', 'Krishnan ', 'Kutty', 'krish@gmail.com', 0, 1, '2023-08-14 09:53:32.277724'),
(46, 'pbkdf2_sha256$260000$TKrQiIwPmxbJJ772ficwK6$DQSTtpTIXP5n5VMAaO9VxDpjjaqRCj+nzcFKKohjry0=', NULL, 0, 'gr', 'Dfgh', 'Fghjk', 'gr@gmail.com', 0, 1, '2023-08-14 12:11:24.066033'),
(47, 'pbkdf2_sha256$260000$QtatiTSzWSDJtwCUCmMNL9$8MFF5oIk+Mr3o5LnxsaBgiTwtpUHLxJyU2d4ql8m1vI=', NULL, 0, 'xyz', 'Aaaa', 'Aaa', 'ajayjayathilakan0@gmail.com', 0, 1, '2023-08-16 07:54:04.508454'),
(48, 'pbkdf2_sha256$260000$ne05cW5KE7npXacZ7DpfJC$EmTyPgg48BzdruKaVfQPGgrvL1bLOzG/FHZExqter6E=', '2023-09-04 04:52:57.507686', 0, 'jiya', 'Jiya', 'S', 'jiya@gmail.com', 0, 1, '2023-08-18 05:31:51.779026'),
(49, 'pbkdf2_sha256$260000$qa7giZv61xhfcbfVlrIM3L$jO5St4xBjEkqH8TS0PRiI7suGDeGOaxVW0dTXsEo1EY=', '2023-08-18 06:52:28.880480', 0, 'balan', 'Balakrishnan', 'Nair', 'balan@gmail.com', 0, 1, '2023-08-18 06:52:01.862867'),
(50, 'pbkdf2_sha256$260000$ufjvTwlPnnYDMaP7QdbvuR$QNxg/yBz4S/Jo8r2+uzRQhk/E9V9p3Nlq4hUFkTWhag=', '2023-09-04 12:35:08.189876', 0, 'ARJU', 'ARJUN', 'VINOD', 'kannanarjun72@gmail.com', 0, 1, '2023-08-18 08:30:42.692841'),
(51, 'pbkdf2_sha256$260000$vf3BY4E5zKBCGxzUILKRwo$vwrOhrfqdqft3ht2FonS00aKau0fq7/4eLxIlocC2h4=', '2023-08-18 11:30:16.423352', 0, 'harry', 'Harry', 'Potter', 'harry@gmail.com', 0, 1, '2023-08-18 11:29:55.691288'),
(52, 'pbkdf2_sha256$260000$c6pcaf1WgDE1AJqMgPB8jr$i8kf2A6SL3r0Yh/W6+2NyPozjlglsTxUwE70G3BZuLM=', '2023-08-18 12:48:05.673729', 0, 'nakul', 'Nakul', 'R', 'nakul@gmail.com', 0, 1, '2023-08-18 12:47:46.329534'),
(53, 'pbkdf2_sha256$260000$N0bXkx6TbTHG9xpAdqT8A5$BkxRgborkc3mtEOPp5iBo6Va6XRrjLgc+jmK4qA+Zwo=', '2023-08-19 05:23:10.218330', 0, 'vijaya', 'Vijayamma', 'B', 'viya@gmail.com', 0, 1, '2023-08-19 05:22:48.265265'),
(54, 'pbkdf2_sha256$260000$huePUUjxFNXharEXYJm6m1$v88gs0iij+AHWRXz2JBdoTx16bTyeoOzJVkddjMUGRA=', '2023-08-21 17:46:09.945363', 0, 'hani12', 'Hani', 'Kk', 'hani@gmail.com', 0, 1, '2023-08-21 17:44:52.965181'),
(55, 'pbkdf2_sha256$260000$rn84jTMJ56EwZ8jOYWNd8e$Og7qAJ3jAkaMi8oyDE2h9GPJuD5K8x85DJWo7Yr7pp4=', NULL, 0, 'kausalliya1', 'Kausalliya', 'R', 'kausalliya16@gmail.com', 0, 1, '2023-08-22 08:06:41.652021'),
(56, 'pbkdf2_sha256$260000$C1Zpq0otwmhN9J96xlQfey$4b3StzYLvccMsDhoLgvsQrgyBt6oDCcgPjbas5fOOjo=', '2023-09-05 14:24:28.561381', 0, 'reena12', 'REENA', 'NM', 'Reena@gmail.com', 0, 1, '2023-09-04 06:48:31.015117');

-- --------------------------------------------------------

--
-- Table structure for table `auth_user_groups`
--

CREATE TABLE `auth_user_groups` (
  `id` bigint(20) NOT NULL,
  `user_id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `auth_user_user_permissions`
--

CREATE TABLE `auth_user_user_permissions` (
  `id` bigint(20) NOT NULL,
  `user_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `django_admin_log`
--

CREATE TABLE `django_admin_log` (
  `id` int(11) NOT NULL,
  `action_time` datetime(6) NOT NULL,
  `object_id` longtext,
  `object_repr` varchar(200) NOT NULL,
  `action_flag` smallint(5) UNSIGNED NOT NULL,
  `change_message` longtext NOT NULL,
  `content_type_id` int(11) DEFAULT NULL,
  `user_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `django_content_type`
--

CREATE TABLE `django_content_type` (
  `id` int(11) NOT NULL,
  `app_label` varchar(100) NOT NULL,
  `model` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `django_content_type`
--

INSERT INTO `django_content_type` (`id`, `app_label`, `model`) VALUES
(1, 'admin', 'logentry'),
(3, 'auth', 'group'),
(2, 'auth', 'permission'),
(4, 'auth', 'user'),
(5, 'contenttypes', 'contenttype'),
(6, 'sessions', 'session'),
(55, 'zohoapp', 'account'),
(66, 'zohoapp', 'accounte'),
(67, 'zohoapp', 'addcustomere'),
(7, 'zohoapp', 'additem'),
(64, 'zohoapp', 'attache'),
(54, 'zohoapp', 'bank'),
(83, 'zohoapp', 'bankcreation'),
(60, 'zohoapp', 'bankdetails'),
(53, 'zohoapp', 'banking'),
(52, 'zohoapp', 'challanitems'),
(8, 'zohoapp', 'chart_of_account'),
(51, 'zohoapp', 'chart_of_account_upload'),
(50, 'zohoapp', 'comment'),
(62, 'zohoapp', 'commentmodel'),
(56, 'zohoapp', 'comments_item'),
(49, 'zohoapp', 'comments_table'),
(9, 'zohoapp', 'company_details'),
(48, 'zohoapp', 'contact_person_table'),
(71, 'zohoapp', 'credits_comments_table'),
(70, 'zohoapp', 'credits_doc_upload_table'),
(73, 'zohoapp', 'credits_mail_table'),
(10, 'zohoapp', 'customer'),
(79, 'zohoapp', 'customer_comments_table'),
(78, 'zohoapp', 'customer_contact_person_table'),
(80, 'zohoapp', 'customer_doc_upload_table'),
(81, 'zohoapp', 'customer_mail_table'),
(47, 'zohoapp', 'deliverychellan'),
(46, 'zohoapp', 'doc_upload_table'),
(45, 'zohoapp', 'estimateitems'),
(44, 'zohoapp', 'estimates'),
(69, 'zohoapp', 'estimate_comments'),
(43, 'zohoapp', 'expense'),
(63, 'zohoapp', 'expensee'),
(42, 'zohoapp', 'history'),
(11, 'zohoapp', 'invoice'),
(41, 'zohoapp', 'invoice_item'),
(40, 'zohoapp', 'mail_table'),
(58, 'zohoapp', 'method'),
(12, 'zohoapp', 'payment'),
(14, 'zohoapp', 'payments_recur'),
(39, 'zohoapp', 'payment_item'),
(59, 'zohoapp', 'payment_made'),
(57, 'zohoapp', 'payment_made_item'),
(38, 'zohoapp', 'payment_made_items'),
(13, 'zohoapp', 'payment_terms'),
(77, 'zohoapp', 'payment_termse'),
(61, 'zohoapp', 'payroll'),
(68, 'zohoapp', 'payrollfiles'),
(15, 'zohoapp', 'pricelist'),
(16, 'zohoapp', 'project'),
(17, 'zohoapp', 'project1'),
(18, 'zohoapp', 'purchase'),
(75, 'zohoapp', 'purchasebillitems'),
(76, 'zohoapp', 'purchasebills'),
(19, 'zohoapp', 'purchase_order'),
(37, 'zohoapp', 'purchase_order_items'),
(20, 'zohoapp', 'recurring_bills'),
(35, 'zohoapp', 'recurring_bills_items'),
(34, 'zohoapp', 'recurring_invoice'),
(36, 'zohoapp', 'recur_itemtable'),
(33, 'zohoapp', 'remarks_table'),
(21, 'zohoapp', 'repeat_every'),
(22, 'zohoapp', 'retainerinvoice'),
(32, 'zohoapp', 'retaineritems'),
(23, 'zohoapp', 'sales'),
(30, 'zohoapp', 'salesorder'),
(31, 'zohoapp', 'sales_item'),
(29, 'zohoapp', 'sample_table'),
(28, 'zohoapp', 'task'),
(82, 'zohoapp', 'transactions'),
(24, 'zohoapp', 'unit'),
(27, 'zohoapp', 'usercreate'),
(26, 'zohoapp', 'usernamez'),
(72, 'zohoapp', 'vendor_credits'),
(85, 'zohoapp', 'vendor_credits_bills'),
(84, 'zohoapp', 'vendor_credits_bills_items_bills'),
(74, 'zohoapp', 'vendor_invoice_item'),
(25, 'zohoapp', 'vendor_table'),
(65, 'zohoapp', 'vendor_tablee');

-- --------------------------------------------------------

--
-- Table structure for table `django_migrations`
--

CREATE TABLE `django_migrations` (
  `id` bigint(20) NOT NULL,
  `app` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `applied` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `django_migrations`
--

INSERT INTO `django_migrations` (`id`, `app`, `name`, `applied`) VALUES
(1, 'contenttypes', '0001_initial', '2023-07-24 08:40:04.641449'),
(2, 'auth', '0001_initial', '2023-07-24 08:40:06.722702'),
(3, 'admin', '0001_initial', '2023-07-24 08:40:07.322715'),
(4, 'admin', '0002_logentry_remove_auto_add', '2023-07-24 08:40:07.331428'),
(5, 'admin', '0003_logentry_add_action_flag_choices', '2023-07-24 08:40:07.337768'),
(6, 'contenttypes', '0002_remove_content_type_name', '2023-07-24 08:40:07.391285'),
(7, 'auth', '0002_alter_permission_name_max_length', '2023-07-24 08:40:07.399571'),
(8, 'auth', '0003_alter_user_email_max_length', '2023-07-24 08:40:07.410923'),
(9, 'auth', '0004_alter_user_username_opts', '2023-07-24 08:40:07.417702'),
(10, 'auth', '0005_alter_user_last_login_null', '2023-07-24 08:40:07.427100'),
(11, 'auth', '0006_require_contenttypes_0002', '2023-07-24 08:40:07.461517'),
(12, 'auth', '0007_alter_validators_add_error_messages', '2023-07-24 08:40:07.469808'),
(13, 'auth', '0008_alter_user_username_max_length', '2023-07-24 08:40:07.477483'),
(14, 'auth', '0009_alter_user_last_name_max_length', '2023-07-24 08:40:07.484688'),
(15, 'auth', '0010_alter_group_name_max_length', '2023-07-24 08:40:07.492230'),
(16, 'auth', '0011_update_proxy_permissions', '2023-07-24 08:40:07.498634'),
(17, 'auth', '0012_alter_user_first_name_max_length', '2023-07-24 08:40:07.505884'),
(18, 'sessions', '0001_initial', '2023-07-24 08:40:07.756195'),
(19, 'zohoapp', '0001_initial', '2023-07-24 08:40:53.432688'),
(20, 'zohoapp', '0002_auto_20230715_0626', '2023-07-24 08:40:53.989756'),
(21, 'zohoapp', '0003_chart_of_account_create_status', '2023-07-24 08:40:54.226384'),
(22, 'zohoapp', '0004_alter_purchase_order_items_tax', '2023-07-24 08:40:54.371990'),
(23, 'zohoapp', '0005_alter_purchase_account_type', '2023-07-24 08:40:54.429279'),
(24, 'zohoapp', '0006_retainerinvoice_user', '2023-07-24 08:40:54.655867'),
(25, 'zohoapp', '0007_auto_20230722_1301', '2023-07-24 08:40:55.133870'),
(26, 'zohoapp', '0008_auto_20230724_1311', '2023-07-24 13:11:55.509318'),
(27, 'zohoapp', '0009_method_payment_made', '2023-07-26 04:47:00.309223'),
(28, 'zohoapp', '0010_bankdetails_commentmodel_payroll', '2023-08-01 12:27:02.891116'),
(29, 'zohoapp', '0011_auto_20230802_0548', '2023-08-02 05:48:45.121869'),
(30, 'zohoapp', '0012_alter_task_billable', '2023-08-02 11:13:18.661140'),
(31, 'zohoapp', '0013_accounte_addcustomere_attache_expensee_vendor_tablee', '2023-08-04 11:37:00.097125'),
(32, 'zohoapp', '0014_auto_20230807_0806', '2023-08-07 08:06:19.000919'),
(33, 'zohoapp', '0015_auto_20230808_0702', '2023-08-08 07:02:51.209089'),
(34, 'zohoapp', '0016_usernamez', '2023-08-08 07:17:57.967784'),
(35, 'zohoapp', '0017_auto_20230809_0804', '2023-08-09 08:04:44.766738'),
(36, 'zohoapp', '0018_auto_20230810_1000', '2023-08-10 10:00:50.844502'),
(37, 'zohoapp', '0019_credits_comments_table_credits_doc_upload_table_credits_mail_table_vendor_credits_vendor_invoice_ite', '2023-08-10 10:47:40.456169'),
(38, 'zohoapp', '0020_auto_20230811_0745', '2023-08-11 07:45:26.055899'),
(39, 'zohoapp', '0021_purchasebillitems_purchasebills', '2023-08-16 11:42:29.805439'),
(40, 'zohoapp', '0022_auto_20230817_0450', '2023-08-17 04:50:56.013457'),
(41, 'zohoapp', '0023_auto_20230817_0833', '2023-08-17 08:34:06.639636'),
(42, 'zohoapp', '0024_auto_20230818_0432', '2023-08-18 04:32:48.000194'),
(43, 'zohoapp', '0025_customer_comments_table_customer_doc_upload_table_customer_mail_table', '2023-08-22 06:55:45.490982'),
(44, 'zohoapp', '0026_purchasebills_vendor_gst_no', '2023-08-22 08:49:21.854138'),
(45, 'zohoapp', '0027_auto_20230822_1055', '2023-08-22 10:55:28.348989'),
(46, 'zohoapp', '0028_auto_20230824_0958', '2023-08-24 09:58:55.483854'),
(47, 'zohoapp', '0002_auto_20230902_1029', '2023-09-02 10:30:32.153446'),
(48, 'zohoapp', '0003_auto_20230904_0438', '2023-09-04 04:39:30.319401'),
(49, 'zohoapp', '0004_bankcreation_transactions', '2023-09-04 06:21:39.198987'),
(50, 'zohoapp', '0005_alter_bankcreation_status', '2023-09-06 03:53:40.374510'),
(51, 'zohoapp', '0006_auto_20230906_0708', '2023-09-06 07:08:42.102249');

-- --------------------------------------------------------

--
-- Table structure for table `django_session`
--

CREATE TABLE `django_session` (
  `session_key` varchar(40) NOT NULL,
  `session_data` longtext NOT NULL,
  `expire_date` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `django_session`
--

INSERT INTO `django_session` (`session_key`, `session_data`, `expire_date`) VALUES
('11mku9mnhvhdpwpyd0lmhzg8secw1inm', '.eJxVjDEPgjAQRv9LZ0NazracowmjcXImV3qXEoESkEXjfxcTBl3f9973Ug2tj9SsC89NF9VJlV4dfmGg9s7jd3nmlGmaip0U9UBdf51vmzXSwJccuT_v9t9FoiVtvQEbykCgvam4deKDgK0cI3kDiHJEzV4sgqksRKtRxEnAUrceJbJV7w-U2TjX:1qYMVN:oyPMTdFjZLmYND3_Og5idORe87UHCpiqIaZMZPWr4_E', '2023-09-05 08:12:49.885096'),
('1igb4rek7gt65rlzs0q3q5iqeczp480i', '.eJxVjDEPgjAQRv9LZ0N6taXgaMJonJzJXe-aEoESkEXjfxcTBl3f9973Ui2uj9Sui8xtx-qkbKUOv5Aw3GX8Ls-cMk5TsZOiGbDrr_Nts0Yc5JJZ-vNu_10kXNLWa7SRLFA0YH0ZokYnwDWbUNlwBAJTs3YsaJxENh6QyVsCDqEkb0r1_gC-Tjng:1qXJw3:AsK8OTdanmVSmq20sxyEcXgGAwq_J91xMmTuuxlQ6LE', '2023-09-02 11:16:03.866977'),
('1ny1jchbd2uoy5yww2mhoym3ag0dxuug', '.eJxVjDEPgjAQRv9LZ0Na6HmtowmjcXImV3qXEoESkEXjfxcTBl3f9973Ug2tj9SsC89NF9VJGasOvzBQe-fxuzxzyjRNxU6KeqCuv863zRpp4EuO3J93--8i0ZK2vgVTOh08WUEroA1SEASWEHXpKwOiyWGFXssROXoIJB4dRwIThVm9P6NpOa8:1qd8tE:jjhU0cEUQvshYx6iTrv6bfRhWkmu-JdSESEL_BXm4O4', '2023-09-18 12:41:12.052021'),
('2l2qh09g1rbemyt26x91obdqao8oes2p', '.eJxVjLsOgkAQRf9la0NgdpZhLU0sjZU1GXZms0ReAWk0_ruYUGh77jn3ZWpeH6leF53rVszRODSHX9hwuOvwXZ5jGnmasp1k557b7jrfNmvgXi-jaHfa7b-LxEvaeiB0krtciKvCBhJ0WkAkSxqJXeGDNp6BSTGCRiy1ChYDgADmvhTz_gCdYzkU:1qY8xe:Ll7UBepmh27cCMMNaG9I4CylbAQAnEEU9Dp0TX93mFQ', '2023-09-04 17:45:06.823082'),
('2ntcnfiyielfo38zc64blftyma1dzugv', '.eJxVjDEPgjAQRv9LZ0Na6HmtowmjcXImV3qXEoESkEXjfxcTBl3f9973Ug2tj9SsC89NF9VJGasOvzBQe-fxuzxzyjRNxU6KeqCuv863zRpp4EuO3J93--8i0ZK2vgVTOh08WUEroA1SEASWEHXpKwOiyWGFXssROXoIJB4dRwIThVm9P6NpOa8:1qd92L:LH56r9VgSLXxejs7GeKfCz-L_KK8zU1054WXvNeiJeQ', '2023-09-18 12:50:37.892086'),
('3rbzz39pp3twkm2w1m80f9bel5bj1yna', '.eJxVjLEOgjAURf-lsyHUFl7raMJonJyb99rXlAiUgCwa_92aMOhwl3PPvS_hcHskt628uD6Ik1AgDr-Q0N95-jbPnDLOc7WTqhuxH67LrVgTjnzJgYfzbv9dJFxT2SNGCWgJ0IM-Bo2mRKkYdU2KkINuCDhaI2vf6hCtbY2VDJoaaUzD4v0B0Zw5sg:1qQpf3:XVNn0R1Bh_SRY9aSUufIsQaVy5Vh13trkAjvaxs0ErE', '2023-08-15 13:43:41.878968'),
('3sydl4c7rybimk0cdkw909vi55u0pitb', '.eJxVjDEPgjAQRv9LZ0N6VeDO0cTRODk316OXEoESkEXjfxcTBl3f9973Mp6XR_LLHCffNuZoAM3uFwaWexy-yzOnzONYbKQ499x21-m2WgP38ZKb2J02--8i8ZzW3lUaDrUSEaqCcKCSUbQEhwRq91BCZaUSCWBrJ9YiNiSxdhGcDUjm_QGkgTi4:1qUL1M:4_tWoJf6gdM13p62xUO_UkzfkjymUowiloVpct2tCKA', '2023-08-25 05:49:12.916533'),
('4493vavzgms84g8cr7rgh7ovzsqxyej5', '.eJxVjDEPgjAQRv9LZ0PKceVSRxNH4-Tc9NprSgRKQBaN_11MGHR933vfSzm_PrJbF5ldF9VRQa0Ov5B9uMv4XZ4lFz9N1U6q8-C7_jrfNmv0g1xKlP60238X2S9565nIRgGhpk0aEyEBGcAGLVsykTRqjoCtCUBaMDQkgesEqCFYAVbvD4CcOFA:1qPPGN:p8e4Bd60brGONu03K0tUanxP6KrcDORNSW3nVIU6CEQ', '2023-08-11 15:20:19.769654'),
('4am7hvhko4f3xivkq1z689hwbrl33kc0', '.eJxVjL0OgjAURt-lsyGl9OfiaOJonJyb29vblAiUgCwa311MGHQ93znfS3hcH9mvC8--i-IotDj8soB05_E7PEsuOE3VTqrzgF1_nW-bNeLAlxK5P-3230XGJW-9cspAG7RRYFkiJuDYajaNjtxQpDo5yWCDc2RljUgKZQBIYBNH0o14fwCB4jl1:1qd6Px:-OZO1vfnyv0pWiNGHsgIbWDEMj7PGvneDJfVwACgy5o', '2023-09-18 10:02:49.497843'),
('5f023ty09dumkoih0hizd8yr1s936y39', '.eJxVjL0OgjAURt-lsyH9L9fRhNE4OTe3tzUlAiUgi8Z3tyYMup7vnO_FPG6P7Lc1Lb6P7Mi0YodfGJDuafouz5ILznOzk6YbsR8uy7VaE47pXGIaTrv9d5FxzbXnxkIbpREajFOgwGgZAldBGK4DgQrEK-JSKwkO7U2QJU3gqAUCG9n7A1oYN5Y:1qWWM7:lcwB-HGFCqcr5Wrf_7KNLPlw-naRb9XCPogj82sHVnI', '2023-08-31 06:19:39.324455'),
('5v63bscgjwvqnwvir5oa12s4etx5mvvr', '.eJxVjDEPgjAQRv9LZ0M46PVaRxNG4-TcXO2REoESkEXjfxcTBl3f9973Up7XR_LrIrPvojqqCtXhFwa-3WX8Ls-cMk9TsZOiGbjrL_N1s0Ye5Jyj9Kfd_rtIvKSt1xgMQBUAa0ZEKmtydckcyVoxrCnGoKl0rjUMSBZMBdgG0BLICFj1_gBzITfw:1qNuPy:z3swdXBPqZC2ZC5-eWX-eSBdPxERzhQgqFRlmcIxDWo', '2023-08-07 12:12:02.461180'),
('697znp0e6nofi5a2heb0qrcylt5yzt8a', '.eJxVjL0OgjAURt-lsyGlf7d1NHE0Ts7NbW-bEoESkEXju4sJg67nO-d7MY_ro_h1SbPviB1ZC-zwCwPGexq_y7OWitPU7KQ5D9j11_m2WSMO6VIp9afd_rsouJStdwYigLVGE1dIWjg0AtCaxAGFAsNtcJayzUFzHlvJDUmJSoeQXdLA3h-A7Thm:1qd7Kx:KDEyx0ZuiOaO5JIeGjel8TMp0Nces2gpoHs7H-r2nFU', '2023-09-18 11:01:43.089055'),
('6w2y55vzpzu9dbeddlrtc0hzr70tldxd', '.eJxVjDEPgjAQRv9LZ0M46PVaRxNG4-TcXO2REoESkEXjfxcTBl3f9973Up7XR_LrIrPvojqqCtXhFwa-3WX8Ls-cMk9TsZOiGbjrL_N1s0Ye5Jyj9Kfd_rtIvKSt1xgMQBUAa0ZEKmtydckcyVoxrCnGoKl0rjUMSBZMBdgG0BLICFj1_gBzITfw:1qZRLs:VvHD0ouK33NvukI-e-ejj3sm-W25WB7mIpzUghJ0__w', '2023-09-08 07:35:28.686464'),
('77fc4ctph5bfyks9zkpvo96pkgqvx6pa', '.eJxVjLkOwjAQBf_FNYps45MSKSWioo52vWs5IpcS0oD4d4KUAtp5M-8lGlgfpVkXnpuWxElYJw6_ECHdefguz7GMME3VTqq6h7a7zrfNGqDny0jcnXf776LAUrbeJZ8ByTiHyMfsk80BkwmelI5WEiotUWXSZKMMKmiDnhNH65KxBkm8P8lLOaY:1qdWyi:L6otHKX_iTuGUu1bwOIyW06QCJysXFv68lF7Chmf4ws', '2023-09-19 14:24:28.699227'),
('7j7jp7bjs6j9rg7vdqpvgt82535t09wq', '.eJxVjDEPgjAQRv9LZ0PKceVSRxNH4-Tc9NprSgRKQBaN_11MGHR933vfSzm_PrJbF5ldF9VRQa0Ov5B9uMv4XZ4lFz9N1U6q8-C7_jrfNmv0g1xKlP60238X2S9565nIRgGhpk0aEyEBGcAGLVsykTRqjoCtCUBaMDQkgesEqCFYAVbvD4CcOFA:1qPdGp:Ru6E5hmOVLY2upG9GP_FBDkI7EXzgD8vzLwKXO05N6I', '2023-08-12 06:17:43.749271'),
('7t3m3tsmlm76743wxdh0j0tt4qq2ynwc', '.eJxVjL0OgjAURt-lsyGlf7d1NHE0Ts7NbW-bEoESkEXju4sJg67nO-d7MY_ro_h1SbPviB1ZC-zwCwPGexq_y7OWitPU7KQ5D9j11_m2WSMO6VIp9afd_rsouJStdwYigLVGE1dIWjg0AtCaxAGFAsNtcJayzUFzHlvJDUmJSoeQXdLA3h-A7Thm:1qNv5h:hhUevUV_6oO3ASBuf5QVOn0DNvohKaq644H2AxlQLKQ', '2023-08-07 12:55:09.242616'),
('7w054zmsd7et7081xw2bafxjehj53ly2', '.eJxVjD0PwiAURf8Ls2mQjwKOJh2NkzN5Dx6hsS1NaxeN_11MOuh4zz33vpiH7ZH9ttLi-8hOTEh2-IUI4U7Tt3mWXGCem5003Qj9cF1u1ZpgpEuJNJx3--8iw5rrPmlOoIzjwkqhgtDBGaORjEWJiM66cJTBgkiOgCdK0Cpqa4o6krSKvT-iPDmF:1qdpYI:RxS2CNriSCb8kLsHHa5ONVpVZUrY0TLyMd7REBtv07g', '2023-09-20 10:14:26.465324'),
('atuemh5ilhaxmaitr671411h59mtz6ko', '.eJxVjLkOwjAQBf_FNYps45MSKSWioo52vWs5IpcS0oD4d4KUAtp5M-8lGlgfpVkXnpuWxElYJw6_ECHdefguz7GMME3VTqq6h7a7zrfNGqDny0jcnXf776LAUrbeJZ8ByTiHyMfsk80BkwmelI5WEiotUWXSZKMMKmiDnhNH65KxBkm8P8lLOaY:1qdUX3:WE0gsKz3lMtE7Wkg1cALCKyZ3R6CpK1JxRZxU7sWI9w', '2023-09-19 11:47:45.559173'),
('auax9ulej3u668doiee8hfgl919roxj7', '.eJxVjL0OgjAURt-lsyH9L9fRhNE4OTe3tzUlAiUgi8Z3tyYMup7vnO_FPG6P7Lc1Lb6P7Mi0YodfGJDuafouz5ILznOzk6YbsR8uy7VaE47pXGIaTrv9d5FxzbXnxkIbpREajFOgwGgZAldBGK4DgQrEK-JSKwkO7U2QJU3gqAUCG9n7A1oYN5Y:1qWW0n:15aAYK4L7nisVFAfstlButUHmJSXIycVs_49jffvxXw', '2023-08-31 05:57:37.056216'),
('bgijg5zo4zufkrp4pt2s7lzjvwdrj9de', '.eJxVjD0PgjAURf9LZ0OetLTU0cTRODmT19dLSuQrIIvG_y4kDLqec-59q4qXZ6qWGVPVRHVS2qrDLwwsD_SbeQ1p4HHMdpJdOm7a23Rfq547XIeI9rzXfxeJ57TuvTDKXFPEMRIXRCaX0jqysL5g1LURbwAikkCOtSN42XTQIsFDfb6rATmP:1qQMX3:OEKGAJPnmkACsYySAOVJOxZSLAHF7C38HL2Q-QVB2cc', '2023-08-14 06:37:29.552609'),
('csav3ks8t5jljc7j3o1eakshfm9n8t3l', '.eJxVjDEPgjAQRv9LZ0N6taXgaMJonJzJXe-aEoESkEXjfxcTBl3f9973Ui2uj9Sui8xtx-qkbKUOv5Aw3GX8Ls-cMk5TsZOiGbDrr_Nts0Yc5JJZ-vNu_10kXNLWa7SRLFA0YH0ZokYnwDWbUNlwBAJTs3YsaJxENh6QyVsCDqEkb0r1_gC-Tjng:1qXF7Q:faMiKuioPTMCPN_n6TXKRFri0UIWnzByCceAHMY0BFw', '2023-09-02 06:07:28.199338'),
('cwyra96jes3r2rip16enr9nbft743yrt', '.eJxVjLEOgjAURf-lsyGtpX3F0YTRODk3r32vKREoAVk0_ruYMOh67jn3JTyuj-zXhWffkTgJrcXhFwaMdx6_y7PkgtNU7aRqB-z663zbrBEHvhTi_rzbfxcZl7z1EkxKZMFpKUMCC4aDaag-kkqKk4sBlKmjJIpGRZsUOgsykGUOrgEW7w-spTmv:1qUODg:kwEblBUWJRQ63-5CwZ_L4dt7u-vV6oVt5A4tKCpDVCw', '2023-08-25 09:14:08.580082'),
('d93tlaybpfuh7haxyiarellvmynspr67', '.eJxVjDEPgjAQRv9LZ0Na6HmtowmjcXImV3qXEoESkEXjfxcTBl3f9973Ug2tj9SsC89NF9VJGasOvzBQe-fxuzxzyjRNxU6KeqCuv863zRpp4EuO3J93--8i0ZK2vgVTOh08WUEroA1SEASWEHXpKwOiyWGFXssROXoIJB4dRwIThVm9P6NpOa8:1qYJdr:QS2iO2ShbN8wb4QBEKJYm51_2PlPKkI7ceXqUGgrEDw', '2023-09-05 05:09:23.277413'),
('de2n7zuncmkkf036898y53y89w76sxie', '.eJxVjLEOgjAURf-lsyEtr6XF0cTRODk3r32vKREoAVk0_ruYMOh67jn3JTyuj-zXhWffkTgK0OLwCwPGO4_f5VlywWmqdlKdB-z663zbrBEHvhTi_rTbfxcZl7z1gVXQrSKKAeqarYMmtZKtMcYCEkCdFGkCFZEkqRSlo4CNQ83Gokbx_gC1JTm4:1qR69E:o0mlqFmZLPTyoCg4aMszaDA9lFEud2FmNyYXMCTau_Q', '2023-08-16 07:19:56.751461'),
('f60kd8nilxk0rsrxrzu16htexaxei7vk', '.eJxVjDEPgjAQRv9LZ0N6taXgaMJonJzJXe-aEoESkEXjfxcTBl3f9973Ui2uj9Sui8xtx-qkbKUOv5Aw3GX8Ls-cMk5TsZOiGbDrr_Nts0Yc5JJZ-vNu_10kXNLWa7SRLFA0YH0ZokYnwDWbUNlwBAJTs3YsaJxENh6QyVsCDqEkb0r1_gC-Tjng:1qXEEC:NbKhIeYRmvkmzotYMNY6DX16-3womJJxaGGhujrO_wI', '2023-09-02 05:10:24.372164'),
('fo13rln2jyrqotiuc5371la7q161p3l1', '.eJxVjLEOwiAURf-F2TTw4KE4mjgaJ2fyeNDQ2JamtYvGfxeTDrqee859CU_rI_t1SbPvojgKlGL3CwPxPY3f5VlyoWlqNtKcB-r663yr1khDupSY-tNm_11kWnLtDUKUYJAZDgAWrQWMrIzUhpQDrVCr4PYcTOtCTOx0S2gTQiVBUiveH28vOJM:1qbYxa:D6phQ_qS0BO1-HTnE__A9-L4o1JTguvZ5YGiMYEA7xQ', '2023-09-14 04:07:10.834939'),
('fojztw4k7nf8mo6tmaqoeu0xek2mnizx', '.eJxVjL0OgjAURt-lsyFt6a-jiaNxcm7ubW9TIlACsmh8dzFh0PV853wvFmB9lLAuNIcusSNr2eGXIcQ7jd_hWUuFaWp20pwH6PrrfNusEQa61ET9abf_LgosZeuN17pNXENWZLM3SmIrjIBoHHcye6etwYxCU8IEglsVnY5IlNEZBZK9P3BGORU:1qRALA:f55_P1xZNMyuJMyn2f5IYUf4TCFYCEvIFNQdDTr1Yag', '2023-08-16 11:48:32.903453'),
('fwl8vjzgwaalmvh0wqrqclp1jaluykxg', '.eJxVjL0KwjAURt8ls5T83YQ4Co7FyTnc3BtJsW1KaxfFd7dCB13Pd873EhHXR4nrkufYsTgKA-LwCxPSPY_f5VlLxWlqdtKcB-z6y3zdrBGH3FbO_Wm3_y4KLmXrE6KS3hjS1twouCQVQWbtmZ0PWjpFwbMHsKilzpYUAkgTtA1GerLi_QGWATgI:1qOYcS:50wIByshjRwx8m2T9jnUfftciSGgTLiSe0fbhRIkWN0', '2023-08-09 07:07:36.145305'),
('fwz3g6uqn5rz02m7gcvw268cpdg61779', '.eJxVjLEOwjAMBf8lM6qonUSUEYkRMTFHduwoFW1TtXQB8e8UqQOs9-7eywRaHjkss06hFXM0DszuFzLFuw7f5VlyoXGsNlKde2q763RbrYF6vRTR7rTZfxeZ5rz24JUcg4viwEbvpeGUPJJapAQHS6JYi0NriSPvESjViMJ1ZAfagHl_AMKyOds:1qWytZ:3BRUDDilrSUSv0QXirBlwIxIcJV1BtMGlyfedmNbB7M', '2023-09-01 12:48:05.720686'),
('g4t7vqn1wsfkgrpk3s81oamxi04yfsh1', '.eJxVjLEOgjAURf-lsyHUFl7raMJonJyb99rXlAiUgCwa_92aMOhwl3PPvS_hcHskt628uD6Ik1AgDr-Q0N95-jbPnDLOc7WTqhuxH67LrVgTjnzJgYfzbv9dJFxT2SNGCWgJ0IM-Bo2mRKkYdU2KkINuCDhaI2vf6hCtbY2VDJoaaUzD4v0B0Zw5sg:1qQqXR:XM_a3JXNCttZIWSqu9X7T-H6CZlE19pyamzR7mM6BzU', '2023-08-15 14:39:53.204139'),
('gucn44vhg7z9oeaj7kkbn5b9k2d7i6jg', '.eJxVjDEPgjAQRv9LZ0NoOejhaOJonJzJXXtNiUAJyKLxv1sTBl3f9973Uh1tj9htqyxd79VR6UYdfiGTu8v0XZ4pJprnYifFeaR-uC63bE00yiV5GU67_XcRaY2596IFjfV1IGCGBtsSBG1bOmZXeQxUBqo0MiA1YCtkh2DRGAo15Uq9P73oOao:1qZlmp:TxBcFOXiwyP3jkJki7t-XGCz8yKQwGqsG3fvy8NruiI', '2023-09-09 05:24:39.899828'),
('gujacd60jjloob5r4flknj5lufzf4bdr', '.eJxVjDEPgjAQRv9LZ0N6taXgaMJonJzJXe-aEoESkEXjfxcTBl3f9973Ui2uj9Sui8xtx-qkbKUOv5Aw3GX8Ls-cMk5TsZOiGbDrr_Nts0Yc5JJZ-vNu_10kXNLWa7SRLFA0YH0ZokYnwDWbUNlwBAJTs3YsaJxENh6QyVsCDqEkb0r1_gC-Tjng:1qXLJd:GWUbMc-YGUebTNi7D8Z3oSvzFIFOmHumBggDq7peoyU', '2023-09-02 12:44:29.486893'),
('h5sodk5dql2zr1m2ukuj5iuye9651llf', '.eJxVjLEOgjAURf-lsyEtr6XF0cTRODk3r32vKREoAVk0_ruYMOh67jn3JTyuj-zXhWffkTgK0OLwCwPGO4_f5VlywWmqdlKdB-z663zbrBEHvhTi_rTbfxcZl7z1gVXQrSKKAeqarYMmtZKtMcYCEkCdFGkCFZEkqRSlo4CNQ83Gokbx_gC1JTm4:1qR62e:6HA1UCnkdtNnFZme4FBgCqX3EhX3zpdrbYWSXkKILHA', '2023-08-16 07:13:08.047069'),
('hcfr6m5cphazw11iniq9lwqvvp34mz6m', '.eJxVjDEPgjAQRv9LZ0N6taXgaMJonJzJXe-aEoESkEXjfxcTBl3f9973Ui2uj9Sui8xtx-qkbKUOv5Aw3GX8Ls-cMk5TsZOiGbDrr_Nts0Yc5JJZ-vNu_10kXNLWa7SRLFA0YH0ZokYnwDWbUNlwBAJTs3YsaJxENh6QyVsCDqEkb0r1_gC-Tjng:1qbzhN:Vqxx7dW7CqwYE97SHXeRyZQD416MxXGLHlTY6NC4iNU', '2023-09-15 08:40:13.580615'),
('idudc1pjwle28qdfvhshwmemhvfg6wrs', '.eJxVjDEPgjAQRv9LZ0PKceVSRxNH4-Tc9NprSgRKQBaN_11MGHR933vfSzm_PrJbF5ldF9VRQa0Ov5B9uMv4XZ4lFz9N1U6q8-C7_jrfNmv0g1xKlP60238X2S9565nIRgGhpk0aEyEBGcAGLVsykTRqjoCtCUBaMDQkgesEqCFYAVbvD4CcOFA:1qPPGO:cgN8QxwsXYVI4Zj-ir3if4WWYFcBDfj91XWPuSKw2as', '2023-08-11 15:20:20.263051'),
('ikkq9tfkjupvs9hwjq56gfnbkbxkl815', '.eJxVjDEPgjAQRv9LZ0Na6HmtowmjcXImV3qXEoESkEXjfxcTBl3f9973Ug2tj9SsC89NF9VJGasOvzBQe-fxuzxzyjRNxU6KeqCuv863zRpp4EuO3J93--8i0ZK2vgVTOh08WUEroA1SEASWEHXpKwOiyWGFXssROXoIJB4dRwIThVm9P6NpOa8:1qdmcG:gw0U_mn_2vzgD_cy5wLHwU3bVGscC5u-nFUqWNJrqgI', '2023-09-20 07:06:20.297960'),
('it6nuwalz31gmlhaq6qc89b0fabhtj1m', '.eJxVjL0OgjAURt-lsyH9pb2OJo7Gyblpby8pESgBWTS-uzVh0PV85zsv5sP2yH5bafF9YkemBTv8whjwTtN3eZZcwjw3O2nOY-iH63Kr1hRGupREw2m3_xI5rLn-I6IiaThEnWoDeFKdFmidJdcZ4gZk1OhA6hYFka2EsAVKBhQYTuz9Ab-QOYA:1qUhvz:tZ6tALETGbe5fftPC5qBk2bauelqqthIsBXmv-N2iBA', '2023-08-26 06:17:11.766251'),
('iv648d9cwugm71k1gvoq94ppnycprr7a', '.eJxVjL0OgjAURt-lsyFQb_8cTRiNk3Nze3ubEoESkEXju4sJg67nO-d7CY_rI_t14dl3UZyEVOLwCwPSncfv8iy54DRVO6naAbv-Ot82a8SBLyVyf97tv4uMS976BEGCTcAS09HUFFydLJtUq6CdxgBsG0WRlEVN0iWMBA6VaQgwEEvx_gDDEDox:1qdqN0:6tkqlBBuzmFi4cw6pdOCR3ESyYob-wvrfAvMh8U9Lv0', '2023-09-20 11:06:50.252138'),
('kqo2bvunn9jc89fbl1ap5t73jna62dby', '.eJxVjLEOgjAURf-lsyEtr6XF0cTRODk3r32vKREoAVk0_ruYMOh67jn3JTyuj-zXhWffkTgK0OLwCwPGO4_f5VlywWmqdlKdB-z663zbrBEHvhTi_rTbfxcZl7z1gVXQrSKKAeqarYMmtZKtMcYCEkCdFGkCFZEkqRSlo4CNQ83Gokbx_gC1JTm4:1qSI2L:9bscsLwjdWp9oQz__7Tes72ezKAp6hK3InJI-MERHmE', '2023-08-19 14:13:45.758370'),
('kr9xhifbatwst07qjn4x22vgp8j697v2', '.eJxVjDEPgjAQRv9LZ0N6VeDO0cTRODk316OXEoESkEXjfxcTBl3f9973Mp6XR_LLHCffNuZoAM3uFwaWexy-yzOnzONYbKQ499x21-m2WgP38ZKb2J02--8i8ZzW3lUaDrUSEaqCcKCSUbQEhwRq91BCZaUSCWBrJ9YiNiSxdhGcDUjm_QGkgTi4:1qXxls:4Lg2l-Bb1a06FMp21554nIDKfiiybRmy2ao7-DBiQno', '2023-09-04 05:48:12.661462'),
('m1vn6anpg92f02zjin9gkcmufrr4svj5', '.eJxVjD0PwiAURf8Ls2mQjwKOJh2NkzN5Dx6hsS1NaxeN_11MOuh4zz33vpiH7ZH9ttLi-8hOTEh2-IUI4U7Tt3mWXGCem5003Qj9cF1u1ZpgpEuJNJx3--8iw5rrPmlOoIzjwkqhgtDBGaORjEWJiM66cJTBgkiOgCdK0Cpqa4o6krSKvT-iPDmF:1qdonE:rLbvCX7jEha5Pn_eT5whW89eoO5P0TsK-f9SGr4sujs', '2023-09-20 09:25:48.736744'),
('o2fi1ak1xxc5zg0q1mzo8093qmg6nc4s', '.eJxVjD0PwiAURf8Ls2mQjwKOJh2NkzN5Dx6hsS1NaxeN_11MOuh4zz33vpiH7ZH9ttLi-8hOTEh2-IUI4U7Tt3mWXGCem5003Qj9cF1u1ZpgpEuJNJx3--8iw5rrPmlOoIzjwkqhgtDBGaORjEWJiM66cJTBgkiOgCdK0Cpqa4o6krSKvT-iPDmF:1qQlew:ln3beHxN0b7QnDGrdtchrQEr_vTi0lbZk2jkynt1uD0', '2023-08-15 09:27:18.307505'),
('o3cepp2vny8wzo07476ojsoqkz38tsts', '.eJxVjL0OgjAURt-lsyFt6a-jiaNxcm7ubW9TIlACsmh8dzFh0PV853wvFmB9lLAuNIcusSNr2eGXIcQ7jd_hWUuFaWp20pwH6PrrfNusEQa61ET9abf_LgosZeuN17pNXENWZLM3SmIrjIBoHHcye6etwYxCU8IEglsVnY5IlNEZBZK9P3BGORU:1qQoQI:dI0d4KOa4Snh1NNYaxKJLy4LojG7cGjqbtjRZV0zHxQ', '2023-08-15 12:24:22.848676'),
('p4z63lmswbhq0ktv0wbdodce81uritgg', '.eJxVjLEOgjAURf-lsyEtr6XF0cTRODk3r32vKREoAVk0_ruYMOh67jn3JTyuj-zXhWffkTgK0OLwCwPGO4_f5VlywWmqdlKdB-z663zbrBEHvhTi_rTbfxcZl7z1gVXQrSKKAeqarYMmtZKtMcYCEkCdFGkCFZEkqRSlo4CNQ83Gokbx_gC1JTm4:1qPgar:BIn5nUl_U6LxMOUZCJP69wBd_KW0Mil3T17dByzCfaE', '2023-08-12 09:50:37.070410'),
('piugwmzv8q3tcs65ywu8su0e9s18p3ew', '.eJxVjLEOgjAURf-lsyEtr6XF0cTRODk3r32vKREoAVk0_ruYMOh67jn3JTyuj-zXhWffkTgK0OLwCwPGO4_f5VlywWmqdlKdB-z663zbrBEHvhTi_rTbfxcZl7z1gVXQrSKKAeqarYMmtZKtMcYCEkCdFGkCFZEkqRSlo4CNQ83Gokbx_gC1JTm4:1qSvqo:2Sz1GcLzgpREQOazARpFrQmR9b9ZpaL9y_pnBuQLWuE', '2023-08-21 08:44:30.840694'),
('pkvfgz40mwnxa3wpj2nn89o7epfuh992', '.eJxVjD0PgkAQRP_L1YYc98lamlgaK2uyd7uXIwJHQBqN_11MKLSbvHkzL9Hi-sjtuvDcdiSOwlhx-IUB453Hb_MsueA0VTupzgN2_XW-bdaIA18KcX_a7b-LjEve9oQOwFFjQ-1ASXCgtWm8BG0TJfYamAMqJcmTCm6L0ETpY22TrrVh8f4AjIk4lQ:1qVUGj:KkQq_83OqJomDvCCMaZEFj6M0MLHdKuyV8mt5Sn-S6M', '2023-08-28 09:53:49.519160'),
('q7xre6m1x0o8ykg2q6nh3wi2e4dpv1cq', '.eJxVjLEOgjAURf-lsyGtfbTU0YTRODk3r6-vKREoAVk0_ruYMOh67jn3JTyuj-zXhWffRXESAOLwCwPSncfv8iy54DRVO6naAbv-Ot82a8SBLyVyf97tv4uMS976aM3RKgeqYUkhOYZGx6QkM0pNxiZKXJtIWiYCZ6VLpGoGS8guRGPF-wO0nTnj:1qZYUc:_4VxuD3Z8lOS7XAu42uqWUDgaRXPMr-eYe9Ana6abOg', '2023-09-08 15:12:58.215425'),
('rf1wbhuxztqih1f4xkpegwa9rtfg4fa2', '.eJxVjLEOgjAURf-lsyEtr6XF0cTRODk3r32vKREoAVk0_ruYMOh67jn3JTyuj-zXhWffkTgK0OLwCwPGO4_f5VlywWmqdlKdB-z663zbrBEHvhTi_rTbfxcZl7z1gVXQrSKKAeqarYMmtZKtMcYCEkCdFGkCFZEkqRSlo4CNQ83Gokbx_gC1JTm4:1qbe4m:lD15oEugh7O2kLVwziVb8DMt__lw__Eev0eCLDj8_SE', '2023-09-14 09:34:56.192805'),
('t7l51xlr2290nlhk6gcrtdq9qt3wiv5a', '.eJxVjL0OgjAURt-lsyH9pb2OJo7Gyblpby8pESgBWTS-uzVh0PV85zsv5sP2yH5bafF9YkemBTv8whjwTtN3eZZcwjw3O2nOY-iH63Kr1hRGupREw2m3_xI5rLn-I6IiaThEnWoDeFKdFmidJdcZ4gZk1OhA6hYFka2EsAVKBhQYTuz9Ab-QOYA:1qU4f8:iINIdMW9NfNM_F574SFBD-6VgyacKd8dp6Bvor7BJtc', '2023-08-24 12:21:10.809649'),
('tr9g308mtti3omqfuplhozsmrs5relih', '.eJxVjL0OgjAURt-lsyH9pb2OJo7Gyblpby8pESgBWTS-uzVh0PV85zsv5sP2yH5bafF9YkemBTv8whjwTtN3eZZcwjw3O2nOY-iH63Kr1hRGupREw2m3_xI5rLn-I6IiaThEnWoDeFKdFmidJdcZ4gZk1OhA6hYFka2EsAVKBhQYTuz9Ab-QOYA:1qWHai:J7XY44e44mO9dPoaSsEyoGBx5_J46zfaswJ8NlLqcHg', '2023-08-30 14:33:44.064679'),
('uc2u6k325mhv5tlic7cricaeina5ghmk', '.eJxVjDEPgjAQRv9LZ0N6VeDO0cTRODk316OXEoESkEXjfxcTBl3f9973Mp6XR_LLHCffNuZoAM3uFwaWexy-yzOnzONYbKQ499x21-m2WgP38ZKb2J02--8i8ZzW3lUaDrUSEaqCcKCSUbQEhwRq91BCZaUSCWBrJ9YiNiSxdhGcDUjm_QGkgTi4:1qbz3p:pxmaJ322ls2QLhFnwZTgq1-zljoRkvo8jokun54FTxM', '2023-09-15 07:59:21.202403'),
('uiqc0zx4u5llsm2z503nq00wto2og9h4', '.eJxVjLEOgjAURf-lsyHwKK-to4mjcXJuXtvXlAiUgCwa_92aMOh6zrn3JSxtj2S3lRfbB3EUgOLwCx35O09f88wp0zxXO6nOI_XDdbmVaqKRLznwcNrrv4tEayp7lBEDtlJHIOMbVYdYI4PuOHqFhgC4ICqiIa1aMBEkaAoyaNk558X7A6BYORQ:1qYlVu:XNgfHiJYJon0eP7BuEFqSbTIXvrchlrhTcxx0JoogDM', '2023-09-06 10:55:02.579824'),
('uxydwnpr6cm31u7yfcqklsa8i8y0rx1w', '.eJxVjDEPgjAQRv9LZ0N6taXgaMJonJzJXe-aEoESkEXjfxcTBl3f9973Ui2uj9Sui8xtx-qkbKUOv5Aw3GX8Ls-cMk5TsZOiGbDrr_Nts0Yc5JJZ-vNu_10kXNLWa7SRLFA0YH0ZokYnwDWbUNlwBAJTs3YsaJxENh6QyVsCDqEkb0r1_gC-Tjng:1qd1a5:U_8cIkQJnFiYo6ijzPmHoF7bjz1azFL1Wu6wAbnw-WI', '2023-09-18 04:52:57.780883'),
('vikle8vcrhanz5asvyol1ypglzkvxy3l', '.eJxVjL0OgjAURt-lsyH9pb2OJo7Gyblpby8pESgBWTS-uzVh0PV85zsv5sP2yH5bafF9YkemBTv8whjwTtN3eZZcwjw3O2nOY-iH63Kr1hRGupREw2m3_xI5rLn-I6IiaThEnWoDeFKdFmidJdcZ4gZk1OhA6hYFka2EsAVKBhQYTuz9Ab-QOYA:1qUfV1:uAOkYZwbmkIu3IREh6fdAitnda6N02HkzOOkwX6_RAY', '2023-08-26 03:41:11.307541'),
('vphm810kdzdx3cpobns5i19pzkc6u83j', '.eJxVjDEPgjAQRv9LZ0Na6HmtowmjcXImV3qXEoESkEXjfxcTBl3f9973Ug2tj9SsC89NF9VJGasOvzBQe-fxuzxzyjRNxU6KeqCuv863zRpp4EuO3J93--8i0ZK2vgVTOh08WUEroA1SEASWEHXpKwOiyWGFXssROXoIJB4dRwIThVm9P6NpOa8:1qZRUC:aoKiy8WomGlBuiCB1kiwtSGfF0LsPwyV1nbHFWWhK2k', '2023-09-08 07:44:04.551808'),
('vpy77a9um83efjqaxx52mqd5bljc4fvb', '.eJxVjL0OgjAURt-lsyH9pb2OJo7Gyblpby8pESgBWTS-uzVh0PV85zsv5sP2yH5bafF9YkemBTv8whjwTtN3eZZcwjw3O2nOY-iH63Kr1hRGupREw2m3_xI5rLn-I6IiaThEnWoDeFKdFmidJdcZ4gZk1OhA6hYFka2EsAVKBhQYTuz9Ab-QOYA:1qUfHG:yW08Syl2_xXYrsXg1BHhqqUVTOB76jkpmErWMSQLrz8', '2023-08-26 03:26:58.945333'),
('wmlt627x6r70m8w8ug97615v18p2c7oi', '.eJxVjLsOwjAQBP_FNYr8PBtKpJSIito6505yRBJHCWlA_DtGSgHNFrOz-xIRt0eO28pL7EmchNXi8AsTdneevs2z5ILz3OykaUfsh-tyq9aEI18K8XDe7b-LjGuue_IQHBAaZGkRA3iZSCUZDNc8uqBQBwCnLGnXWWsUMahqorTgPIj3B5PtODU:1qU3sL:wwfyUL98RfhHXkhqRq8-IeWfzoV4vQZKNrC6dpqN7Jw', '2023-08-24 11:30:45.462338'),
('wp22yn5hmosquz955gfwtkdnjc9jfqmk', '.eJxVjD0PwiAURf8Ls2mQjwKOJh2NkzN5Dx6hsS1NaxeN_11MOuh4zz33vpiH7ZH9ttLi-8hOTEh2-IUI4U7Tt3mWXGCem5003Qj9cF1u1ZpgpEuJNJx3--8iw5rrPmlOoIzjwkqhgtDBGaORjEWJiM66cJTBgkiOgCdK0Cpqa4o6krSKvT-iPDmF:1qc2BK:2hX6D6VCT9e8aIftL5e3e_84h_z1TYP28IvCutgHKfU', '2023-09-15 11:19:18.399728'),
('wup3ndb8bt5nzwlqow1ugnhkjrhmqw13', '.eJxVjL0OgjAURt-lsyH9pb2OJo7Gyblpby8pESgBWTS-uzVh0PV85zsv5sP2yH5bafF9YkemBTv8whjwTtN3eZZcwjw3O2nOY-iH63Kr1hRGupREw2m3_xI5rLn-I6IiaThEnWoDeFKdFmidJdcZ4gZk1OhA6hYFka2EsAVKBhQYTuz9Ab-QOYA:1qU3S5:7lZD0oFsReLrYBCLjmYM0K1aWbvhzMC4CTnjRH71rh8', '2023-08-24 11:03:37.557913'),
('wy3qtxqruj8kd114qu368i25iw00mr1a', '.eJxVjDEPgjAQRv9LZ0N6taXgaMJonJzJXe-aEoESkEXjfxcTBl3f9973Ui2uj9Sui8xtx-qkbKUOv5Aw3GX8Ls-cMk5TsZOiGbDrr_Nts0Yc5JJZ-vNu_10kXNLWa7SRLFA0YH0ZokYnwDWbUNlwBAJTs3YsaJxENh6QyVsCDqEkb0r1_gC-Tjng:1qWs5e:2Dv_HTpwGdn_zPglrpXOwoMIRk8Ud4cDC0iLjT-dqa4', '2023-09-01 05:32:06.587983'),
('ya8i20qg2h7imujvxa00hauwo8znv6sn', '.eJxVjLEOgjAURf-lsyHUFl7raMJonJyb99rXlAiUgCwa_92aMOhwl3PPvS_hcHskt628uD6Ik1AgDr-Q0N95-jbPnDLOc7WTqhuxH67LrVgTjnzJgYfzbv9dJFxT2SNGCWgJ0IM-Bo2mRKkYdU2KkINuCDhaI2vf6hCtbY2VDJoaaUzD4v0B0Zw5sg:1qUPWy:hhDLQRev_oKGsovGI9BMEh08gW6BdlgYpIiWSHTdpzk', '2023-08-25 10:38:08.916694'),
('zo5qfbnfls4aw7jeeviv829xnv370na2', '.eJxVjLEOgjAURf-lsyGtpX3F0YTRODk3r32vKREoAVk0_ruYMOh67jn3JTyuj-zXhWffkTgJrcXhFwaMdx6_y7PkgtNU7aRqB-z663zbrBEHvhTi_rzbfxcZl7z1EkxKZMFpKUMCC4aDaag-kkqKk4sBlKmjJIpGRZsUOgsykGUOrgEW7w-spTmv:1qd2iX:8SPIwa49hP7AcNA4_qxdT8C-30YA-EcaTNxIAgXsuxw', '2023-09-18 06:05:45.136521'),
('zzduidpdrjwkkqj0i3hwm7i1uzgmsiwt', '.eJxVjLkOwjAQBf_FNYps45MSKSWioo52vWs5IpcS0oD4d4KUAtp5M-8lGlgfpVkXnpuWxElYJw6_ECHdefguz7GMME3VTqq6h7a7zrfNGqDny0jcnXf776LAUrbeJZ8ByTiHyMfsk80BkwmelI5WEiotUWXSZKMMKmiDnhNH65KxBkm8P8lLOaY:1qd7ab:iP8byOyKFQDk5anHxOODQra648MBlKZDY6cs8SwQ4VI', '2023-09-18 11:17:53.089508');

-- --------------------------------------------------------

--
-- Table structure for table `zohoapp_account`
--

CREATE TABLE `zohoapp_account` (
  `id` bigint(20) NOT NULL,
  `accountType` varchar(255) NOT NULL,
  `accountName` varchar(255) NOT NULL,
  `accountCode` varchar(255) NOT NULL,
  `description` longtext NOT NULL,
  `user_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `zohoapp_account`
--

INSERT INTO `zohoapp_account` (`id`, `accountType`, `accountName`, `accountCode`, `description`, `user_id`) VALUES
(1, 'marketing', 'sales ac', '859658', 'good', NULL),
(2, 'Accounts Receivable ', 'abbbb', '', '', 26),
(3, 'Accounts Receivable ', 'nom', '', '', 26),
(4, 'Long Term Liability', 'nom', '', '', 26),
(5, 'Other Current Asset', 'rrrt', '', '', 4),
(6, 'Accounts Payable ', 'payable1', '', '', 4);

-- --------------------------------------------------------

--
-- Table structure for table `zohoapp_accounte`
--

CREATE TABLE `zohoapp_accounte` (
  `id` bigint(20) NOT NULL,
  `description` longtext,
  `user_id` int(11) DEFAULT NULL,
  `account_code` varchar(255) DEFAULT NULL,
  `account_name` varchar(255) DEFAULT NULL,
  `account_type` varchar(255) DEFAULT NULL,
  `attachment` varchar(100) DEFAULT NULL,
  `bank_account_no` varchar(255) DEFAULT NULL,
  `create_status` varchar(255) DEFAULT NULL,
  `credit_no` varchar(255) DEFAULT NULL,
  `currency` varchar(255) DEFAULT NULL,
  `parent_account` varchar(255) DEFAULT NULL,
  `status` varchar(255) DEFAULT NULL,
  `sub_account` varchar(255) DEFAULT NULL,
  `watchlist` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `zohoapp_accounte`
--

INSERT INTO `zohoapp_accounte` (`id`, `description`, `user_id`, `account_code`, `account_name`, `account_type`, `attachment`, `bank_account_no`, `create_status`, `credit_no`, `currency`, `parent_account`, `status`, `sub_account`, `watchlist`) VALUES
(1, 'new', 38, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(2, 'sdfgh', 38, '2345', 'newww', 'Other Current Asset', '', NULL, NULL, NULL, NULL, NULL, 'active', NULL, 'on'),
(3, 'new', 38, '12345', 'newww', 'Cash', '', NULL, NULL, NULL, 'INR', NULL, 'active', NULL, 'on'),
(4, 'dffdfg', 38, '2345', 'newww', 'Other Current Asset', '', NULL, NULL, NULL, NULL, NULL, 'active', NULL, 'on');

-- --------------------------------------------------------

--
-- Table structure for table `zohoapp_addcustomere`
--

CREATE TABLE `zohoapp_addcustomere` (
  `id` bigint(20) NOT NULL,
  `customer_name` varchar(100) DEFAULT NULL,
  `customerType` varchar(100) DEFAULT NULL,
  `companyName` varchar(100) DEFAULT NULL,
  `customerEmail` varchar(100) DEFAULT NULL,
  `customerWorkPhone` varchar(100) DEFAULT NULL,
  `customerMobile` varchar(100) DEFAULT NULL,
  `skype` varchar(100) DEFAULT NULL,
  `designation` varchar(100) DEFAULT NULL,
  `department` varchar(100) DEFAULT NULL,
  `website` varchar(100) DEFAULT NULL,
  `GSTTreatment` varchar(100) DEFAULT NULL,
  `placeofsupply` varchar(100) DEFAULT NULL,
  `Taxpreference` varchar(100) DEFAULT NULL,
  `currency` varchar(100) DEFAULT NULL,
  `OpeningBalance` varchar(100) DEFAULT NULL,
  `PaymentTerms` varchar(100) DEFAULT NULL,
  `PriceList` varchar(100) DEFAULT NULL,
  `PortalLanguage` varchar(100) DEFAULT NULL,
  `Facebook` varchar(100) DEFAULT NULL,
  `Twitter` varchar(100) DEFAULT NULL,
  `Attention` varchar(100) DEFAULT NULL,
  `country` varchar(100) DEFAULT NULL,
  `Address1` varchar(100) DEFAULT NULL,
  `Address2` varchar(100) DEFAULT NULL,
  `city` varchar(100) DEFAULT NULL,
  `state` varchar(100) DEFAULT NULL,
  `zipcode` varchar(100) DEFAULT NULL,
  `phone1` varchar(100) DEFAULT NULL,
  `fax` varchar(100) DEFAULT NULL,
  `CPsalutation` varchar(100) DEFAULT NULL,
  `Firstname` varchar(100) DEFAULT NULL,
  `Lastname` varchar(100) DEFAULT NULL,
  `CPemail` varchar(100) DEFAULT NULL,
  `CPphone` varchar(100) DEFAULT NULL,
  `CPmobile` varchar(100) DEFAULT NULL,
  `CPskype` varchar(100) DEFAULT NULL,
  `CPdesignation` varchar(100) DEFAULT NULL,
  `CPdepartment` varchar(100) DEFAULT NULL,
  `user_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `zohoapp_addcustomere`
--

INSERT INTO `zohoapp_addcustomere` (`id`, `customer_name`, `customerType`, `companyName`, `customerEmail`, `customerWorkPhone`, `customerMobile`, `skype`, `designation`, `department`, `website`, `GSTTreatment`, `placeofsupply`, `Taxpreference`, `currency`, `OpeningBalance`, `PaymentTerms`, `PriceList`, `PortalLanguage`, `Facebook`, `Twitter`, `Attention`, `country`, `Address1`, `Address2`, `city`, `state`, `zipcode`, `phone1`, `fax`, `CPsalutation`, `Firstname`, `Lastname`, `CPemail`, `CPphone`, `CPmobile`, `CPskype`, `CPdesignation`, `CPdepartment`, `user_id`) VALUES
(1, 'Mr. cncnc nn', 'Individual', '', '', '', '', '', '', '', '', 'value', 'Nill', 'Tax-exempt', '', '', '15', NULL, NULL, '', '', NULL, NULL, '', '', '', '', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 38);

-- --------------------------------------------------------

--
-- Table structure for table `zohoapp_additem`
--

CREATE TABLE `zohoapp_additem` (
  `id` bigint(20) NOT NULL,
  `type` longtext NOT NULL,
  `Name` longtext NOT NULL,
  `hsn` int(11) DEFAULT NULL,
  `date` datetime(6) NOT NULL,
  `s_desc` longtext NOT NULL,
  `p_desc` longtext NOT NULL,
  `creat` varchar(255) NOT NULL,
  `s_price` varchar(255) NOT NULL,
  `p_price` longtext NOT NULL,
  `interstate` varchar(255) NOT NULL,
  `intrastate` varchar(255) NOT NULL,
  `satus` longtext NOT NULL,
  `tax` longtext,
  `invacc` longtext,
  `stock` int(11) DEFAULT NULL,
  `purchase_id` bigint(20) NOT NULL,
  `sales_id` bigint(20) NOT NULL,
  `unit_id` bigint(20) NOT NULL,
  `user_id` int(11) NOT NULL,
  `rate` int(11) DEFAULT NULL,
  `status_stock` longtext NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `zohoapp_additem`
--

INSERT INTO `zohoapp_additem` (`id`, `type`, `Name`, `hsn`, `date`, `s_desc`, `p_desc`, `creat`, `s_price`, `p_price`, `interstate`, `intrastate`, `satus`, `tax`, `invacc`, `stock`, `purchase_id`, `sales_id`, `unit_id`, `user_id`, `rate`, `status_stock`) VALUES
(9, 'Goods', 'sugar', 908765, '2023-07-29 08:10:30.145538', 'bnkhgugh', 'vhgfjgjdhcc', 'Created byKeerthana', '7865', '6000', 'IGST5[5%]', 'GST5[5%]', 'Active', 'taxable', 'inventory assets', 987, 35, 1, 4, 34, 90, 'Active'),
(11, 'Goods', 'baribe doll', 170112, '2023-07-29 12:10:15.938709', 'vcbfb', 'gfdf', 'Created bykausalliya', '420', '500', 'IGST5[5%]', 'GST5[5%]', 'Inactive', 'taxable', 'inventory assets', 50, 30, 2, 1, 33, NULL, 'active'),
(13, 'Goods', 'table', NULL, '2023-07-31 09:42:36.827414', 'fddx', 'zxfdz', 'Created by kausalliya', '554', '5654', '0', '0', 'active', NULL, NULL, NULL, 13, 1, 2, 33, NULL, 'active'),
(16, 'Goods', 'tab', 998877, '2023-07-31 18:43:04.931209', 'bnkhgugh', 'hjk', 'Created byKeerthana', '12345', '1234', 'none', 'none', 'Active', 'no-taxable', NULL, 908, 8, 1, 1, 34, NULL, 'active'),
(18, 'Goods', 'Dry fruits', 564245, '2023-08-02 07:22:20.851103', 'sales items', 'purchase items', 'Created byaambro', '1200', '900', 'IGST0[0%]', 'GST18[18%]', 'Active', 'taxable', 'inventory assets', 9, 2, 6, 1, 14, 1200, 'Active'),
(21, 'Goods', 'hair products', 907565, '2023-08-07 05:27:11.259618', 'vgdf ', 'fdgh', 'Created byaambro', '1200', '900', 'IGST0[0%]', 'GST12[12%]', 'Active', 'taxable', 'Choose..', 0, 3, 4, 12, 14, 0, ''),
(22, 'Goods', 'pen', 36067, '2023-08-07 09:25:23.521645', 'selling cola ', 'purchasing ', 'Created byaambro', '150', '80', 'IGST0[0%]', 'GST12[12%]', 'Active', 'taxable', 'Choose..', 0, 5, 1, 1, 14, 0, ''),
(23, 'Goods', 'ggggg', NULL, '2023-08-10 10:10:28.695816', 'asdasdadas', 'sdsaxsd', 'Created byradha', '25000', '15000', 'none', 'none', 'active', NULL, NULL, NULL, 2, 1, 1, 16, NULL, 'active'),
(24, 'Goods', 'dddd', NULL, '2023-08-10 10:59:11.373707', 'dd', 'xx', 'Created by radha', '30000', '20000', '0', '0', 'active', NULL, NULL, NULL, 2, 1, 1, 16, NULL, 'active'),
(25, 'Goods', 'Jaseela Jabbar', 987456, '2023-08-16 09:35:29.862754', 'vgbhnjkml', 'tsdyfu', 'Created byABCD', '215623', '4555', 'none', 'none', 'Active', 'no-taxable', 'Choose..', 0, 11, 2, 15, 25, 0, '0'),
(26, 'Goods', 'pen', NULL, '2023-08-17 05:15:25.901934', 'sef', 'sdf', 'Created byuser@gmail.com', '500', '550', 'IGST5[5%]', 'GST5[5%]', 'active', NULL, NULL, NULL, 1, 1, 12, 4, NULL, 'active'),
(27, 'Goods', 'book', NULL, '2023-08-17 05:15:58.565804', 'sef', 'sdf', 'Created byuser@gmail.com', '1500', '1550', 'IGST5[5%]', 'GST5[5%]', 'active', NULL, NULL, NULL, 1, 1, 12, 4, NULL, 'active'),
(28, 'Goods', 'box', NULL, '2023-08-17 07:20:36.212233', 'gdfg', 'dfgd', 'Created by user@gmail.com', '345', '', 'IGST5[5%]', 'GST5[5%]', 'active', NULL, NULL, NULL, 5, 2, 4, 4, NULL, 'active'),
(29, 'Goods', 'keyboard', NULL, '2023-08-19 15:55:04.294922', '', '', 'Created by JISHNU', '1000', '1000', '', '', 'active', NULL, NULL, NULL, 17, 3, 11, 18, NULL, 'active'),
(30, 'Goods', 'Earings', NULL, '2023-08-21 06:34:17.381020', 'a', 'a', 'Created byminu', '5000', '5000', 'none', 'none', 'active', NULL, NULL, NULL, 3, 1, 1, 17, NULL, 'active'),
(31, 'Services', 'Item 1', 908978, '2023-08-21 07:21:32.267064', 'def', 'fde', 'Created bytes', '1000', '1000', 'none', 'none', 'Active', 'no-taxable', 'Choose..', 0, 1, 1, 3, 23, 0, '0'),
(32, 'Goods', 'sss', NULL, '2023-08-22 07:45:49.070377', 'xxxx', 'ssss', 'Created by maya', '22222', '1111', '0', '0', 'active', NULL, NULL, NULL, 6, 2, 1, 32, NULL, 'active'),
(33, 'Goods', 'dd', NULL, '2023-08-22 07:47:14.665088', 'sss', 'ssss', 'Created by maya', '20000', '10000', '0', '0', 'active', NULL, NULL, NULL, 2, 2, 1, 32, NULL, 'active'),
(34, 'Goods', 'ss', NULL, '2023-08-22 08:08:08.379676', 'ssss', 'dddd', 'Created by radha', '4000', '2000', '0', '0', 'active', NULL, NULL, NULL, 17, 6, 1, 16, NULL, 'active'),
(35, 'Goods', 'xx', NULL, '2023-08-22 08:10:01.216482', 'xxx', 'xxxx', 'Created by radha', '2222', '1111', '0', '0', 'active', NULL, NULL, NULL, 15, 5, 2, 16, NULL, 'active'),
(36, 'Goods', 'Item 1', NULL, '2023-08-23 10:03:05.364372', 'gdfg', 'hfgh', 'Created bytes', '25000', '250000', 'none', 'none', 'active', NULL, NULL, NULL, 35, 1, 4, 23, NULL, 'active'),
(37, 'Goods', 'Item 2', NULL, '2023-08-23 12:37:14.069797', 'rwe', 'fds', 'Created bytes', '25000', '25000', 'none', 'none', 'active', NULL, NULL, NULL, 8, 3, 5, 23, NULL, 'active'),
(38, 'Services', 'Item 3', NULL, '2023-08-23 12:42:45.559837', 'hfgh', 'hgfhdg', 'Created bytes', '4000', '4000', 'none', 'none', 'active', NULL, NULL, NULL, 7, 3, 14, 23, NULL, 'active'),
(39, 'Services', 'htgt', NULL, '2023-08-23 12:44:16.474837', 'jhg', 'jhg', 'Created bytes', '1000', '1000', 'none', 'none', 'active', NULL, NULL, NULL, 30, 1, 7, 23, NULL, 'active'),
(40, 'Goods', 'Pen', NULL, '2023-08-23 15:04:47.667434', 'nil', 'nil', 'Created byAlex123', '50', '55', 'IGST5[5%]', 'GST5[5%]', 'active', NULL, NULL, NULL, 1, 6, 2, 44, NULL, 'active'),
(43, 'Goods', 'text', NULL, '2023-08-26 05:25:49.480569', 'cccc', 'dddd', 'Created by radha', '3400', '1400', '0', '0', 'active', NULL, NULL, NULL, 11, 5, 1, 16, NULL, 'active'),
(44, 'Goods', 'dosa maker', 456766, '2023-08-26 09:46:16.130629', 'selling charges', 'purchasing charges', 'Created byaambro', '1200', '900', 'IGST0[0%]', 'GST12[12%]', 'Active', 'taxable', 'inventory assets', 900, 7, 4, 12, 14, 1200, 'Active'),
(45, 'Goods', 'Dosa pan', 453455, '2023-08-26 09:47:35.750786', 'being sales cost', 'purchase cost', 'Created byaambro', '1200', '900', 'IGST0[0%]', 'GST12[12%]', 'Active', 'taxable', 'inventory assets', 900, 30, 1, 12, 14, 1200, 'Active'),
(46, 'Goods', 'DRY FRUITS', 746436, '2023-08-26 09:55:47.638882', 'any', 'any', 'Created byARJU', '300', '87', 'none', 'none', 'Active', 'no-taxable', 'Choose..', 0, 30, 1, 1, 50, 0, '0'),
(48, 'Goods', 'powder items', 789898, '2023-08-30 09:22:10.729441', 'sales cost', 'purchase cost', 'Created byaambro', '400', '200', 'IGST0[0%]', 'GST12[12%]', 'Active', 'taxable', 'inventory assets', 600, 30, 1, 1, 14, 400, 'Active'),
(49, 'Goods', 'Mat', NULL, '2023-08-31 09:07:13.510338', 'sales cost', 'purchase cost', 'Created by aambro', '900', '400', '', '', 'active', NULL, NULL, NULL, 14, 4, 12, 14, NULL, 'active'),
(50, 'Goods', 'spoon', NULL, '2023-09-01 08:58:53.069266', 'Sales price', 'purchase price', 'Created by aambro', '400', '300', '', '', 'active', NULL, NULL, NULL, 13, 2, 12, 14, NULL, 'active'),
(51, 'Services', 'Pen', NULL, '2023-09-01 11:06:20.234390', 'zxdcfgvhbjn', 'fghjk', 'Created byjiya', '30000', '29000', 'IGST0[0%]', 'GST0[0%]', 'active', NULL, NULL, NULL, 7, 4, 1, 48, NULL, 'active'),
(52, 'Goods', 'charging tab', 345645, '2023-09-02 10:44:52.756662', 'sales cost', 'purchase cost', 'Created byaambro', '1200', '900', 'IGST0[0%]', 'GST12[12%]', 'Active', 'taxable', 'inventory assets', 800, 32, 4, 12, 14, 1200, 'Active'),
(53, 'Goods', 'wallpaper', 567878, '2023-09-04 06:50:34.105836', 'sales cost', 'purchase cost', 'Created byaambro', '500', '500', 'IGST0[0%]', 'GST12[12%]', 'Active', 'taxable', 'Choose..', 0, 1, 1, 12, 14, 0, '0'),
(54, 'Goods', 'marker', 123456, '2023-09-04 09:13:59.769917', 'sales cost', 'purchase cost', 'Created byaambro', '400', '200', 'IGST0[0%]', 'GST0[0%]', 'Active', 'taxable', 'Choose..', 0, 30, 1, 1, 14, 0, '0');

-- --------------------------------------------------------

--
-- Table structure for table `zohoapp_attache`
--

CREATE TABLE `zohoapp_attache` (
  `id` bigint(20) NOT NULL,
  `attachment` varchar(100) DEFAULT NULL,
  `expense_id` bigint(20) DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `zohoapp_bank`
--

CREATE TABLE `zohoapp_bank` (
  `id` bigint(20) NOT NULL,
  `acc_type` varchar(220) DEFAULT NULL,
  `bank_name` varchar(220) DEFAULT NULL,
  `user_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `zohoapp_bankcreation`
--

CREATE TABLE `zohoapp_bankcreation` (
  `id` bigint(20) NOT NULL,
  `name` varchar(220) DEFAULT NULL,
  `branch` varchar(220) DEFAULT NULL,
  `ac_no` varchar(220) DEFAULT NULL,
  `ifsc` varchar(220) DEFAULT NULL,
  `opn_bal` double DEFAULT NULL,
  `bal_type` varchar(220) DEFAULT NULL,
  `date` date DEFAULT NULL,
  `document` varchar(100) DEFAULT NULL,
  `status` longtext NOT NULL,
  `user_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `zohoapp_bankcreation`
--

INSERT INTO `zohoapp_bankcreation` (`id`, `name`, `branch`, `ac_no`, `ifsc`, `opn_bal`, `bal_type`, `date`, `document`, `status`, `user_id`) VALUES
(3, 'SBI', 'kochi', '123456789076567', 'SBI067EG', -120000, 'Debit', '2023-08-01', '', 'active', 14),
(4, 'FEDERAL BANK', 'kollam', '4567543456768754', 'FBIO0129', -70000, 'Debit', '2023-09-01', '', 'active', 14),
(5, 'ICICICI', 'parippally', '5646788686576', 'ICIO0125', 76000, 'Credit', '2023-09-01', '', 'active', 14),
(6, 'icic', 'ktd', '1234567', 'wfgh', -3000, 'Debit', '2023-09-04', '', 'Inactive', 38),
(7, 'Axix', 'kollam', '456789098667866', 'AXZ3001', 8900, 'Debit', '2023-09-01', '', 'Inactive', 14),
(8, 'axis', 'ktd', '123456789012345', 'dfghjk3456', -3000, 'Credit', '2023-09-06', '', 'Active', 38),
(9, 'UCO Bank', 'kochi', '234567566789876', 'UCO0986', -70000, 'Credit', '2023-09-01', '', 'Active', 14);

-- --------------------------------------------------------

--
-- Table structure for table `zohoapp_bankdetails`
--

CREATE TABLE `zohoapp_bankdetails` (
  `id` bigint(20) NOT NULL,
  `acc_no` bigint(20) NOT NULL,
  `IFSC` varchar(100) NOT NULL,
  `bank_name` varchar(100) NOT NULL,
  `branch` varchar(100) NOT NULL,
  `transaction_type` varchar(100) NOT NULL,
  `payroll_id` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `zohoapp_bankdetails`
--

INSERT INTO `zohoapp_bankdetails` (`id`, `acc_no`, `IFSC`, `bank_name`, `branch`, `transaction_type`, `payroll_id`) VALUES
(2, 2147483647, 'SBI689009', 'SBI', 'Kakkanad', 'Cash', 2),
(6, 444445555566666, 'HDFC54T7Y', 'HDFC Bank', 'Kakkanad', 'Cash', 6),
(8, 123456786543234, 'HDFC54T7Y', 'HDFC Bank', 'Kakkanad', 'Cash', 9);

-- --------------------------------------------------------

--
-- Table structure for table `zohoapp_banking`
--

CREATE TABLE `zohoapp_banking` (
  `id` bigint(20) NOT NULL,
  `name` varchar(220) DEFAULT NULL,
  `alias` varchar(220) DEFAULT NULL,
  `acc_type` varchar(220) DEFAULT NULL,
  `ac_holder` varchar(220) DEFAULT NULL,
  `ac_no` varchar(220) DEFAULT NULL,
  `ifsc` varchar(220) DEFAULT NULL,
  `swift_code` varchar(220) DEFAULT NULL,
  `bnk_name` varchar(220) DEFAULT NULL,
  `bnk_branch` varchar(220) DEFAULT NULL,
  `chq_book` varchar(220) DEFAULT NULL,
  `chq_print` varchar(220) DEFAULT NULL,
  `chq_config` varchar(220) DEFAULT NULL,
  `mail_name` varchar(220) DEFAULT NULL,
  `mail_addr` longtext,
  `mail_country` varchar(220) DEFAULT NULL,
  `mail_state` varchar(220) DEFAULT NULL,
  `mail_pin` varchar(220) DEFAULT NULL,
  `bd_bnk_det` longtext,
  `bd_pan_no` varchar(220) DEFAULT NULL,
  `bd_reg_typ` varchar(220) DEFAULT NULL,
  `bd_gst_no` varchar(220) DEFAULT NULL,
  `bd_gst_det` varchar(220) DEFAULT NULL,
  `opening_bal` int(11) DEFAULT NULL,
  `opening_blnc_type` varchar(220) DEFAULT NULL,
  `user_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `zohoapp_banking`
--

INSERT INTO `zohoapp_banking` (`id`, `name`, `alias`, `acc_type`, `ac_holder`, `ac_no`, `ifsc`, `swift_code`, `bnk_name`, `bnk_branch`, `chq_book`, `chq_print`, `chq_config`, `mail_name`, `mail_addr`, `mail_country`, `mail_state`, `mail_pin`, `bd_bnk_det`, `bd_pan_no`, `bd_reg_typ`, `bd_gst_no`, `bd_gst_det`, `opening_bal`, `opening_blnc_type`, `user_id`) VALUES
(1, ' DAVIS', 'nil', NULL, 'amal', '4552147888', 'ihs2356b', '1bagtyn', 'ORIENTAL BANK OF COMMERCE', 'kochi', 'Yes', 'Yes', 'Yes', 'ROSILINT DAVIS', 'PELLISSERY HOUSE AMMADAM P O', 'IN', 'Kerala', '680563', 'bank', '455200', 'Composition', '488hgait545', 'Yes', 4566, 'Cr', 26),
(2, 'SBI', '', 'Bank', 'Sreehari', '2345678990979', 'FBIO0125', '', 'STATE BANK OF INDIA', 'kottiyam', 'No', 'No', 'No', '', '', 'IN', 'select state', '', '', '', 'Regular', '', 'No', 0, 'Cr', 14),
(3, 'Amal', '', 'Bank', 'Amal', '2345678999976', 'FBIO0185', '', 'FEDERAL BANK LTD', 'punalur', 'No', 'No', 'No', '', '', 'IN', 'select state', '', '', '', 'Regular', '', 'No', 0, 'Cr', 14),
(4, 'ICICI Bank', '', 'Bank', 'Sreehari', '2345678890976', 'ICIO0125', '', 'ICICI BANK LTD', '', 'No', 'No', 'No', '', '', '', '', '', '', '', 'Regular', '', '', 0, '', 14),
(5, 'Sreehari', '', 'Bank', 'Sreehari', '2345678890976', 'ICIO0125', '', 'ICICI BANK LTD', '', 'No', 'No', 'No', '', '', '', '', '', '', '', 'Regular', '', '', 0, '', 14),
(6, 'ROSILINT DAVIS', 'nil', 'Bank', 'amal', '4552147888', 'ihs2356b', '1bagtyn', 'RESERVE BANK OF INDIA', 'kochi', 'Yes', 'Yes', 'Yes', 'ROSILINT DAVIS', 'PELLISSERY HOUSE AMMADAM P O', 'India', 'KERALA', '680563', 'IDBI BANK', '455200', 'Composition', '488hgait545', 'all details', 233333, '', 26),
(7, 'Anas', '', 'Bank', 'Anas', '2345678790976', 'FBIO0722', '', 'FEDERAL BANK LTD', 'kottiyam', 'No', 'No', 'No', 'Anas villa', 'ghiu', 'India', 'kerala', '897567', 'no', 'ABCTY1296F', 'Consumer', 'nill', 'nill', 0, '', 14),
(8, 'Anas', '', 'Bank', 'Anas', '2345678790976', 'FBIO0722', 'nill', 'FEDERAL BANK LTD', 'kottiyam', 'No', 'No', 'No', 'Anas villa', 'ghiu', 'India', 'kerala', '897567', 'no', 'ABCTY1296F', 'Consumer', 'nill', 'nill', 0, '', 14),
(9, 'Anas', 'nill', 'Bank', 'Anas', '2345678790976', 'FBIO0722', 'nill', 'FEDERAL BANK LTD', 'kottiyam', 'No', 'No', 'No', 'Anas villa', 'ghiu', 'India', 'kerala', '897567', 'no', 'ABCTY1296F', 'Consumer', 'nill', 'nill', 0, '', 14),
(10, 'sruthi', '', 'Bank', 'sruthi', '2345678990876', 'HDFC57T7Y', '', 'HDFC BANK LTD', '', 'No', 'No', 'No', '', '', '', '', '', '', '', 'Regular', '', '', 0, '', 14),
(11, 'Siji', '', 'Bank', 'siji', '453578752574354', 'DCX4564F', '', 'BANK OF INDIA', '', 'No', 'No', 'No', '', '', '', '', '', '', '', 'Regular', '', '', 0, '', 14),
(12, 'zdcv', 'cf', 'Bank', 'xzfvs', '453254235', 'afsdf3333', 'sadf', 'PUNJAB AND SIND BANK', 'fdssdf', 'Yes', 'Yes', 'Yes', 'PEPSI', 'ertgdsfgsdgsdg', 'IN', 'Kerala', '4564645', 'sdfgsdfg', 'FCSDN6543E', 'Consumer', '', 'Yes', 10001, 'Dr', 3);

-- --------------------------------------------------------

--
-- Table structure for table `zohoapp_challanitems`
--

CREATE TABLE `zohoapp_challanitems` (
  `id` bigint(20) NOT NULL,
  `item_name` varchar(100) DEFAULT NULL,
  `quantity` int(11) DEFAULT NULL,
  `rate` double DEFAULT NULL,
  `discount` double DEFAULT NULL,
  `tax_percentage` int(11) DEFAULT NULL,
  `amount` double DEFAULT NULL,
  `chellan_id` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `zohoapp_challanitems`
--

INSERT INTO `zohoapp_challanitems` (`id`, `item_name`, `quantity`, `rate`, `discount`, `tax_percentage`, `amount`, `chellan_id`) VALUES
(1, 'Select Items', 0, 0, 0, 0, 0, 1);

-- --------------------------------------------------------

--
-- Table structure for table `zohoapp_chart_of_account`
--

CREATE TABLE `zohoapp_chart_of_account` (
  `id` bigint(20) NOT NULL,
  `account_type` varchar(255) DEFAULT NULL,
  `account_name` varchar(255) DEFAULT NULL,
  `credit_no` varchar(255) DEFAULT NULL,
  `sub_account` varchar(255) DEFAULT NULL,
  `parent_account` varchar(255) DEFAULT NULL,
  `bank_account_no` varchar(255) DEFAULT NULL,
  `currency` varchar(255) DEFAULT NULL,
  `account_code` varchar(255) DEFAULT NULL,
  `description` longtext,
  `watchlist` varchar(255) DEFAULT NULL,
  `attachment` varchar(100) DEFAULT NULL,
  `status` varchar(255) DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  `create_status` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `zohoapp_chart_of_account`
--

INSERT INTO `zohoapp_chart_of_account` (`id`, `account_type`, `account_name`, `credit_no`, `sub_account`, `parent_account`, `bank_account_no`, `currency`, `account_code`, `description`, `watchlist`, `attachment`, `status`, `user_id`, `create_status`) VALUES
(1, 'Accounts Payable', 'Accounts Payable', '', '', '', '', '', '', 'This is an account of all the money which you owe to others like a pending bill payment to a vendor,etc.', '', '', 'active', 33, 'default'),
(2, 'Accounts Receivable', 'Accounts Receivable', '', '', '', '', '', '', 'The money that customers owe you becomes the accounts receivable. A good example of this is a payment expected from an invoice sent to your customer.', '', '', 'active', 33, 'default'),
(3, 'Expense', 'Advertising and Marketing', '', '', '', '', '', '', 'Your expenses on promotional, marketing and advertising activities like banners, web-adds, trade shows, etc. are recorded in advertising and marketing account.', '', '', 'active', 33, 'default'),
(4, 'Other Current Assets', 'Advance Tax', '', '', '', '', '', '', 'Any tax which is paid in advance is recorded into the advance tax account. This advance tax payment could be a quarterly, half yearly or yearly payment', '', '', 'active', 33, 'default'),
(5, 'Expense', 'Automobile Expense', '', '', '', '', '', '', 'Transportation related expenses like fuel charges and maintenance charges for automobiles, are included to the automobile expense account.', '', '', 'active', 33, 'default'),
(6, 'Expense', 'Bad Debt', '', '', '', '', '', '', 'Any amount which is lost and is unrecoverable is recorded into the bad debt account.', '', '', 'active', 33, 'default'),
(7, 'Expense', 'Bank Fees and Charges', '', '', '', '', '', '', ' Any bank fees levied is recorded into the bank fees and charges account. A bank account maintenance fee, transaction charges, a late payment fee are some examples.', '', '', 'active', 33, 'default'),
(8, 'Expense', 'Consultant Expense', '', '', '', '', '', '', 'Charges for availing the services of a consultant is recorded as a consultant expenses. The fees paid to a soft skills consultant to impart personality development training for your employees is a good example.', '', '', 'active', 33, 'default'),
(9, 'Cost Of Goods Sold', 'Cost of Goods Sold', '', '', '', '', '', '', 'An expense account which tracks the value of the goods sold.', '', '', 'active', 33, 'default'),
(10, 'Expense', 'Credit Card Charges', '', '', '', '', '', '', ' Service fees for transactions , balance transfer fees, annual credit fees and other charges levied on a credit card are recorded into the credit card account.', '', '', 'active', 33, 'default'),
(11, 'Expense', 'Depreciation Expense', '', '', '', '', '', '', 'Any depreciation in value of your assets can be captured as a depreciation expense.', '', '', 'active', 33, 'default'),
(12, 'Income', 'Discount', '', '', '', '', '', '', 'Any reduction on your selling price as a discount can be recorded into the discount account.', '', '', 'active', 33, 'default'),
(13, 'Equity', 'Drawings', '', '', '', '', '', '', 'The money withdrawn from a business by its owner can be tracked with this account.', '', '', 'active', 33, 'default'),
(14, 'Other Current Assets', 'Employee Advance', '', '', '', '', '', '', 'Money paid out to an employee in advance can be tracked here till it\'s repaid or shown to be spent for company purposes', '', '', 'active', 33, 'default'),
(15, 'Other Current Liability', 'Employee Reimbursements', '', '', '', '', '', '', 'This account can be used to track the reimbursements that are due to be paid out to employees.', '', '', 'active', 33, 'default'),
(16, 'Other Expense', 'Exchange Gain or Loss', '', '', '', '', '', '', 'Changing the conversion rate can result in a gain or a loss. You can record this into the exchange gain or loss account.', '', '', 'active', 33, 'default'),
(17, 'Fixed Asset', 'Furniture and Equipment', '', '', '', '', '', '', 'Purchases of furniture and equipment for your office that can be used for a long period of time usually exceeding one year can be tracked with this account.', '', '', 'active', 33, 'default'),
(18, 'Income', 'General Income', '', '', '', '', '', '', 'A general category of account where you can record any income which cannot be recorded into any other category', '', '', 'active', 33, 'default'),
(19, 'Income', 'Interest Income', '', '', '', '', '', '', 'A percentage of your balances and deposits are given as interest to you by your banks and financial institutions. This interest is recorded into the interest income account.', '', '', 'active', 33, 'default'),
(20, 'Stock', 'Inventory Asset', '', '', '', '', '', '', 'An account which tracks the value of goods in your inventory.', '', '', 'active', 33, 'default'),
(21, 'Expense', 'IT and Internet Expenses', '', '', '', '', '', '', 'Money spent on your IT infrastructure and usage like internet connection, purchasing computer equipment etc is recorded as an IT and Computer Expense', '', '', 'active', 33, 'default'),
(22, 'Expense', 'Janitorial Expense', '', '', '', '', '', '', 'All your janitorial and cleaning expenses are recorded into the janitorial expenses account.', '', '', 'active', 33, 'default'),
(23, 'Income', 'Late Fee Income', '', '', '', '', '', '', 'Any late fee income is recorded into the late fee income account. The late fee is levied when the payment for an invoice is not received by the due date', '', '', 'active', 33, 'default'),
(24, 'Expense', 'Lodging', '', '', '', '', '', '', 'Any expense related to putting up at motels etc while on business travel can be entered here.', '', '', 'active', 33, 'default'),
(25, 'Expense', 'Meals and Entertainment', '', '', '', '', '', '', 'Expenses on food and entertainment are recorded into this account.', '', '', 'active', 33, 'default'),
(26, 'Expense', 'Office Supplies', '', '', '', '', '', '', 'All expenses on purchasing office supplies like stationery are recorded into the office supplies account.', '', '', 'active', 33, 'default'),
(27, 'Other Current Liability', 'Opening Balance Adjustments', '', '', '', '', '', '', 'This account will hold the difference in the debits and credits entered during the opening balance.', '', '', 'active', 33, 'default'),
(28, 'Equity', 'Opening Balance Offset', '', '', '', '', '', '', 'This is an account where you can record the balance from your previous years earning or the amount set aside for some activities. It is like a buffer account for your funds.', '', '', 'active', 33, 'default'),
(29, 'Income', 'Other Charges', '', '', '', '', '', '', 'Miscellaneous charges like adjustments made to the invoice can be recorded in this account.', '', '', 'active', 33, 'default'),
(30, 'Expense', 'Other Expenses', '', '', '', '', '', '', ' Any minor expense on activities unrelated to primary business operations is recorded under the other expense account.', '', '', 'active', 33, 'default'),
(31, 'Equity', 'Owner\'s Equity', '', '', '', '', '', '', 'The owners rights to the assets of a company can be quantified in the owner\'s equity account.', '', '', 'active', 33, 'default'),
(32, 'Cash', 'Petty Cash', '', '', '', '', '', '', 'It is a small amount of cash that is used to pay your minor or casual expenses rather than writing a check.', '', '', 'active', 33, 'default'),
(33, 'Expense', 'Postage', '', '', '', '', '', '', 'Your expenses on ground mails, shipping and air mails can be recorded under the postage account.', '', '', 'active', 33, 'default'),
(34, 'Other Current Assets', 'Prepaid Expenses', '', '', '', '', '', '', 'An asset account that reports amounts paid in advance while purchasing goods or services from a vendor.', '', '', 'active', 33, 'default'),
(35, 'Expense', 'Printing and Stationery', '', '', '', '', '', '', ' Expenses incurred by the organization towards printing and stationery.', '', '', 'active', 33, 'default'),
(36, 'Expense', 'Rent Expense', '', '', '', '', '', '', 'The rent paid for your office or any space related to your business can be recorded as a rental expense.', '', '', 'active', 33, 'default'),
(37, 'Expense', 'Repairs and Maintenance', '', '', '', '', '', '', 'The costs involved in maintenance and repair of assets is recorded under this account.', '', '', 'active', 33, 'default'),
(38, 'Equity', 'Retained Earnings', '', '', '', '', '', '', 'The earnings of your company which are not distributed among the share holders is accounted as retained earnings.', '', '', 'active', 33, 'default'),
(39, 'Expense', 'Salaries and Employee Wages', '', '', '', '', '', '', 'Salaries for your employees and the wages paid to workers are recorded under the salaries and wages account.', '', '', 'active', 33, 'default'),
(40, 'Income', 'Sales', '', '', '', '', '', '', ' The income from the sales in your business is recorded under the sales account.', '', '', 'active', 33, 'default'),
(41, 'Income', 'Shipping Charge', '', '', '', '', '', '', 'Shipping charges made to the invoice will be recorded in this account.', '', '', 'active', 33, 'default'),
(42, 'Other Liability', 'Tag Adjustments', '', '', '', '', '', '', ' This adjustment account tracks the transfers between different reporting tags.', '', '', 'active', 33, 'default'),
(43, 'Other Current Liability', 'Tax Payable', '', '', '', '', '', '', 'The amount of money which you owe to your tax authority is recorded under the tax payable account. This amount is a sum of your outstanding in taxes and the tax charged on sales.', '', '', 'active', 33, 'default'),
(44, 'Expense', 'Telephone Expense', '', '', '', '', '', '', 'The expenses on your telephone, mobile and fax usage are accounted as telephone expenses.', '', '', 'active', 33, 'default'),
(45, 'Expense', 'Travel Expense', '', '', '', '', '', '', ' Expenses on business travels like hotel bookings, flight charges, etc. are recorded as travel expenses.', '', '', 'active', 33, 'default'),
(46, 'Expense', 'Uncategorized', '', '', '', '', '', '', 'This account can be used to temporarily track expenses that are yet to be identified and classified into a particular category.', '', '', 'active', 33, 'default'),
(47, 'Cash', 'Undeposited Funds', '', '', '', '', '', '', 'Record funds received by your company yet to be deposited in a bank as undeposited funds and group them as a current asset in your balance sheet.', '', '', 'active', 33, 'default'),
(48, 'Other Current Liability', 'Unearned Revenue', '', '', '', '', '', '', 'A liability account that reports amounts received in advance of providing goods or services. When the goods or services are provided, this account balance is decreased and a revenue account is increased.', '', '', 'active', 33, 'default'),
(49, 'Equity', 'Capital Stock', '', '', '', '', '', '', ' An equity account that tracks the capital introduced when a business is operated through a company or corporation.', '', '', 'active', 33, 'default'),
(50, 'Long Term Liability', 'Construction Loans', '', '', '', '', '', '', 'An expense account that tracks the amount you repay for construction loans.', '', '', 'active', 33, 'default'),
(51, 'Expense', 'Contract Assets', '', '', '', '', '', '', 'An asset account to track the amount that you receive from your customers while you\'re yet to complete rendering the services.', '', '', 'active', 33, 'default'),
(52, 'Expense', 'Depreciation And Amortisation', '', '', '', '', '', '', 'An expense account that is used to track the depreciation of tangible assets and intangible assets, which is amortization.', '', '', 'active', 33, 'default'),
(53, 'Equity', 'Distributions', '', '', '', '', '', '', 'An equity account that tracks the payment of stock, cash or physical products to its shareholders.', '', '', 'active', 33, 'default'),
(54, 'Equity', 'Dividends Paid', '', '', '', '', '', '', 'An equity account to track the dividends paid when a corporation declares dividend on its common stock.', '', '', 'active', 33, 'default'),
(55, 'Other Current Liability', 'GST Payable', '', '', '', '', '', '', '', '', '', 'active', 33, 'default'),
(56, 'Other Current Liability', 'Output CGST', '', 'on', 'GST Payable', '', '', '', '', '', '', 'active', 33, 'default'),
(57, 'Other Current Liability', 'Output IGST', '', 'on', 'GST Payable', '', '', '', '', '', '', 'active', 33, 'default'),
(58, 'Other Current Liability', 'Output SGST', '', 'on', 'GST Payable', '', '', '', '', '', '', 'active', 33, 'default'),
(59, 'Equity', 'Investments', '', '', '', '', '', '', 'An equity account used to track the amount that you invest.', '', '', 'active', 33, 'default'),
(60, 'Cost Of Goods Sold', 'Job Costing', '', '', '', '', '', '', 'An expense account to track the costs that you incur in performing a job or a task.', '', '', 'active', 33, 'default'),
(61, 'Cost Of Goods Sold', 'Labor', '', '', '', '', '', '', 'An expense account that tracks the amount that you pay as labor.', '', '', 'active', 33, 'default'),
(62, 'Cost Of Goods Sold', 'Materials', '', '', '', '', '', '', 'An expense account that tracks the amount you use in purchasing materials.', '', '', 'active', 33, 'default'),
(63, 'Expense', 'Merchandise', '', '', '', '', '', '', 'An expense account to track the amount spent on purchasing merchandise.', '', '', 'active', 33, 'default'),
(64, 'Long Term Liability', 'Mortgages', '', '', '', '', '', '', 'An expense account that tracks the amounts you pay for the mortgage loan.', '', '', 'active', 33, 'default'),
(65, 'Expense', 'Raw Materials And Consumables', '', '', '', '', '', '', 'An expense account to track the amount spent on purchasing raw materials and consumables.', '', '', 'active', 33, 'default'),
(66, 'Other Current Assets', 'Reverse Charge Tax Input but not due', '', '', '', '', '', '', 'The amount of tax payable for your reverse charge purchases can be tracked here.', '', '', 'active', 33, 'default'),
(67, 'Other Current Assets', 'Sales to Customers (Cash)', '', '', '', '', '', '', '', '', '', 'active', 33, 'default'),
(68, 'Cost Of Goods Sold', 'Subcontractor', '', '', '', '', '', '', ' An expense account to track the amount that you pay subcontractors who provide service to you.', '', '', 'active', 33, 'default'),
(69, 'Other Current Assets', 'GST TCS Receivable', '', '', '', '', '', '', '', '', '', 'active', 33, 'default'),
(70, 'Other Current Assets', 'GST TDS Receivable', '', '', '', '', '', '', '', '', '', 'active', 33, 'default'),
(71, 'Other Current Assets', 'Input Tax Credits', '', '', '', '', '', '', '', '', '', 'active', 33, 'default'),
(72, 'Other Current Assets', 'Input CGST', '', 'on', 'Input Tax Credits', '', '', '', '', '', '', 'active', 33, 'default'),
(73, 'Other Current Assets', 'Input IGST', '', 'on', 'Input Tax Credits', '', '', '', '', '', '', 'active', 33, 'default'),
(74, 'Other Current Assets', 'Input SGST', '', 'on', 'Input Tax Credits', '', '', '', '', '', '', 'active', 33, 'default'),
(75, 'Other Current Liability', 'TDS Payable', '', '', '', '', '', '', '', '', '', 'active', 33, 'default'),
(76, 'Other Current Assets', 'TDS Receivable', '', '', '', '', '', '', '', '', '', 'active', 33, 'default'),
(77, 'Expense', 'Transportation Expense', '', '', '', '', '', '', 'An expense account to track the amount spent on transporting goods or providing services.', '', '', 'active', 33, 'default'),
(78, 'Expence', 'expence1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, 4, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `zohoapp_chart_of_account_upload`
--

CREATE TABLE `zohoapp_chart_of_account_upload` (
  `id` bigint(20) NOT NULL,
  `account_type` varchar(255) DEFAULT NULL,
  `account_name` varchar(255) DEFAULT NULL,
  `title` varchar(255) DEFAULT NULL,
  `description` longtext,
  `document` varchar(100) NOT NULL,
  `account_id` bigint(20) DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `zohoapp_comment`
--

CREATE TABLE `zohoapp_comment` (
  `id` bigint(20) NOT NULL,
  `profile_name` varchar(255) NOT NULL,
  `comment` varchar(255) NOT NULL,
  `expense_id` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `zohoapp_commentmodel`
--

CREATE TABLE `zohoapp_commentmodel` (
  `id` bigint(20) NOT NULL,
  `comment` varchar(300) NOT NULL,
  `payroll_id` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `zohoapp_commentmodel`
--

INSERT INTO `zohoapp_commentmodel` (`id`, `comment`, `payroll_id`) VALUES
(5, '', 2),
(8, 'New  employee', 6),
(10, 'new employee', 9);

-- --------------------------------------------------------

--
-- Table structure for table `zohoapp_comments_item`
--

CREATE TABLE `zohoapp_comments_item` (
  `id` bigint(20) NOT NULL,
  `content` longtext,
  `item_id` bigint(20) DEFAULT NULL,
  `user_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `zohoapp_comments_item`
--

INSERT INTO `zohoapp_comments_item` (`id`, `content`, `item_id`, `user_id`) VALUES
(11, 'ok', 9, 34),
(14, 'remider', 21, 14),
(15, 'good', 9, 34),
(16, 'good', 9, 34),
(17, 'add', 22, 14),
(18, 'add', 22, 14),
(19, 'stock completed', 22, 14),
(20, 'fi;le', 22, 14),
(21, 'good', 9, 34),
(22, 'good', 9, 34),
(23, 'good', 9, 34),
(24, '', 9, 34),
(25, 'in hand', 22, 14);

-- --------------------------------------------------------

--
-- Table structure for table `zohoapp_comments_table`
--

CREATE TABLE `zohoapp_comments_table` (
  `id` bigint(20) NOT NULL,
  `comment` longtext NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `vendor_id` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `zohoapp_company_details`
--

CREATE TABLE `zohoapp_company_details` (
  `id` bigint(20) NOT NULL,
  `contact_number` varchar(100) DEFAULT NULL,
  `company_name` varchar(100) DEFAULT NULL,
  `address` varchar(100) DEFAULT NULL,
  `city` varchar(100) DEFAULT NULL,
  `state` varchar(100) DEFAULT NULL,
  `pincode` int(11) DEFAULT NULL,
  `company_email` varchar(255) DEFAULT NULL,
  `business_name` varchar(255) DEFAULT NULL,
  `company_type` varchar(255) DEFAULT NULL,
  `industry_type` varchar(255) DEFAULT NULL,
  `profile_pic` varchar(100) DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `zohoapp_company_details`
--

INSERT INTO `zohoapp_company_details` (`id`, `contact_number`, `company_name`, `address`, `city`, `state`, `pincode`, `company_email`, `business_name`, `company_type`, `industry_type`, `profile_pic`, `user_id`) VALUES
(1, '65342114', 'Altos Tech', NULL, 'None', 'Kerala', 682312, 'None', 'None', 'None', NULL, 'image/patient/avatar-12_Gp0k8Pp_lowoTMI.png', 1),
(2, '7902801967', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', 2),
(3, '1234', 'BHARATH', NULL, 'NoPALAKKADne', 'Kerala', 789665, 'bharath@gmail.com', 'None', 'None', NULL, '', 3),
(4, '1234567898', 'ABCD Company', NULL, 'new city', 'Kerala', 685585, 'abcd@gmail.com', 'ABCD', 'ffsgfs', NULL, 'image/patient/JobsNow-Online_Job_Portal_-_Google_Chrome_17-07-2023_17_01_06.png', 4),
(5, '2575702784', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', 5),
(6, '99985634572', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', 6),
(7, '+918281808492', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', 7),
(8, '+918281808492', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', 8),
(9, '8848937577', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', 9),
(10, '9544833774', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', 10),
(11, '+918281808492', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', 11),
(12, '9995798365', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', 12),
(13, '7356144326', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', 13),
(14, '7345672098', 'Aambro Pvt Ltd.', NULL, 'Trivandrum', 'Kerala', 691578, 'aambro99@gmail.com', 'aambro', 'industrial', NULL, 'image/patient/Screenshot_1021.png', 14),
(15, '123456', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', 15),
(16, '9961665433', 'mayflower', NULL, 'None', 'Kerala', 688562, 'None', 'None', 'None', NULL, '', 16),
(17, '9526860373', 'Heaven', NULL, 'None', 'Kerala', 57665786, 'None', 'None', 'None', NULL, '', 17),
(18, '8590481445', 'Altos tech', NULL, 'Kochi', 'Kerala', 6733077, 'altos@gmail.com', 'Altos', 'I T', NULL, '', 18),
(19, '12345', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', 19),
(20, '7856432567', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', 20),
(21, '9048289199', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', 21),
(22, '2342342345', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', 22),
(23, '123123', 'Ronex Pvt Ltd.', NULL, 'None', 'Kerala', 111111, 'None', 'None', 'None', NULL, '', 23),
(24, '9526620250', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', 24),
(25, '9526620250', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', 25),
(26, '7025306368', 'Nonealtos', NULL, 'kochiNone', 'Nonkeralae', 680563, 'Noamal2gmail/.comne', 'Nonedevelopmet', 'Noneit solution', NULL, 'image/patient/task3.PNG', 26),
(27, '11111111', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', 27),
(28, '8574968574', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', 28),
(29, '9087654447', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', 29),
(30, '111111', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', 30),
(31, '9961665432', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', 31),
(32, '9961665488', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', 32),
(33, '07902514506', 'Altos', NULL, 'None', 'None', 68858, 'Kavi@gmail.com', 'None', 'None', NULL, '', 33),
(34, '9526897622', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', 34),
(35, '08943735902', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', 35),
(36, '09946844013', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', 36),
(37, '8139838232', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', 37),
(38, '7034000911', 'New', NULL, 'None', 'Kerala ', 123456, 'None', 'None', 'None', NULL, '', 38),
(39, '9996567853', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', 39),
(40, '9076544567', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', 40),
(41, '9188755408', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', 41),
(42, '08943735902', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', 42),
(43, '9188755408', 'Noneabc', NULL, 'None', 'None', 456567, 'None', 'None', 'None', NULL, '', 43),
(44, '7412589632', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', 44),
(45, '9009900990', 'Noneabc', NULL, 'kottayam', 'kerala', 686767, 'Noneabc@gmail.com', 'krish', 'Noneindividual', NULL, '', 45),
(46, '8909090989', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', 46),
(47, '897635902', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', 47),
(48, '9090098909', 'Noneabc', NULL, 'None', 'None', 899009, 'None', 'None', 'None', NULL, '', 48),
(49, '9009788767', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', 49),
(50, '8921986803', 'NEW', NULL, 'None', 'None', 673000, 'None', 'None', 'None', NULL, '', 50),
(51, '8989987887', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', 51),
(52, '7898566787', 'Noneabc', NULL, 'None', 'None', 345665, 'None', 'None', 'None', NULL, '', 52),
(53, '9078876778', 'autoa', NULL, 'None', 'None', 900989, 'None', 'None', 'None', NULL, '', 53),
(54, '919496830853', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', 54),
(55, '07902514506', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', 55),
(56, '', 'KSV', NULL, 'None', 'None', 1234, 'None', 'None', 'None', NULL, '', 56);

-- --------------------------------------------------------

--
-- Table structure for table `zohoapp_contact_person_table`
--

CREATE TABLE `zohoapp_contact_person_table` (
  `id` bigint(20) NOT NULL,
  `salutation` varchar(25) NOT NULL,
  `first_name` varchar(50) NOT NULL,
  `last_name` varchar(50) NOT NULL,
  `email` varchar(200) NOT NULL,
  `work_phone` varchar(50) NOT NULL,
  `mobile` varchar(50) NOT NULL,
  `skype_number` varchar(50) NOT NULL,
  `designation` varchar(50) NOT NULL,
  `department` varchar(50) NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `vendor_id` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `zohoapp_contact_person_table`
--

INSERT INTO `zohoapp_contact_person_table` (`id`, `salutation`, `first_name`, `last_name`, `email`, `work_phone`, `mobile`, `skype_number`, `designation`, `department`, `user_id`, `vendor_id`) VALUES
(1, 'Mr', '', '', '', '', '', '', '', '', 14, 4),
(2, 'Mr', '', '', '', '', '', '', '', '', 14, 5),
(3, 'Mr', '', '', '', '', '', '', '', '', 14, 8),
(4, 'Mr', '', '', '', '', '', '', '', '', 14, 11),
(5, 'Mr', '', '', '', '', '', '', '', '', 25, 17),
(6, 'Mr', '', '', '', '', '', '', '', '', 25, 35),
(7, 'Mr', '', '', '', '', '', '', '', '', 14, 36),
(8, 'Mr', '', '', '', '', '', '', '', '', 14, 39),
(9, 'Mr', '', '', '', '', '', '', '', '', 14, 40);

-- --------------------------------------------------------

--
-- Table structure for table `zohoapp_credits_comments_table`
--

CREATE TABLE `zohoapp_credits_comments_table` (
  `id` bigint(20) NOT NULL,
  `comment` longtext NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `vendor_id` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `zohoapp_credits_doc_upload_table`
--

CREATE TABLE `zohoapp_credits_doc_upload_table` (
  `id` bigint(20) NOT NULL,
  `title` longtext NOT NULL,
  `document` varchar(100) NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `vendor_id` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `zohoapp_credits_mail_table`
--

CREATE TABLE `zohoapp_credits_mail_table` (
  `id` bigint(20) NOT NULL,
  `mail_from` longtext NOT NULL,
  `mail_to` longtext NOT NULL,
  `subject` longtext NOT NULL,
  `content` longtext NOT NULL,
  `mail_date` datetime(6) NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `vendor_id` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `zohoapp_customer`
--

CREATE TABLE `zohoapp_customer` (
  `id` bigint(20) NOT NULL,
  `customerName` varchar(100) DEFAULT NULL,
  `customerType` varchar(100) DEFAULT NULL,
  `companyName` varchar(100) DEFAULT NULL,
  `customerEmail` varchar(100) DEFAULT NULL,
  `customerWorkPhone` varchar(100) DEFAULT NULL,
  `customerMobile` varchar(100) DEFAULT NULL,
  `skype` varchar(100) DEFAULT NULL,
  `designation` varchar(100) DEFAULT NULL,
  `department` varchar(100) DEFAULT NULL,
  `website` varchar(100) DEFAULT NULL,
  `GSTTreatment` varchar(100) DEFAULT NULL,
  `GSTIN` varchar(100) DEFAULT NULL,
  `placeofsupply` varchar(100) DEFAULT NULL,
  `Taxpreference` varchar(100) DEFAULT NULL,
  `currency` varchar(100) DEFAULT NULL,
  `OpeningBalance` int(11) DEFAULT NULL,
  `PaymentTerms` varchar(100) DEFAULT NULL,
  `PriceList` varchar(100) DEFAULT NULL,
  `PortalLanguage` varchar(100) DEFAULT NULL,
  `Facebook` varchar(100) DEFAULT NULL,
  `Twitter` varchar(100) DEFAULT NULL,
  `Attention` varchar(100) DEFAULT NULL,
  `country` varchar(100) DEFAULT NULL,
  `Address1` varchar(100) DEFAULT NULL,
  `Address2` varchar(100) DEFAULT NULL,
  `city` varchar(100) DEFAULT NULL,
  `state` varchar(100) DEFAULT NULL,
  `zipcode` varchar(100) DEFAULT NULL,
  `phone1` varchar(100) DEFAULT NULL,
  `fax` varchar(100) DEFAULT NULL,
  `remark` varchar(100) DEFAULT NULL,
  `pan_no` varchar(100) DEFAULT NULL,
  `user_id` int(11) NOT NULL,
  `Fname` varchar(100) DEFAULT NULL,
  `Lname` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `zohoapp_customer`
--

INSERT INTO `zohoapp_customer` (`id`, `customerName`, `customerType`, `companyName`, `customerEmail`, `customerWorkPhone`, `customerMobile`, `skype`, `designation`, `department`, `website`, `GSTTreatment`, `GSTIN`, `placeofsupply`, `Taxpreference`, `currency`, `OpeningBalance`, `PaymentTerms`, `PriceList`, `PortalLanguage`, `Facebook`, `Twitter`, `Attention`, `country`, `Address1`, `Address2`, `city`, `state`, `zipcode`, `phone1`, `fax`, `remark`, `pan_no`, `user_id`, `Fname`, `Lname`) VALUES
(2, 'Mr. devika N', 'Individual', 'TEAVTN', 'devika@gmail.com', '5202514506', '', '', '', '', '', 'Unregistered Business-not Registered under GST', NULL, '[KL] Kerala', 'Tax-exempt', '', 200, '15', NULL, NULL, '', '', NULL, NULL, 'Chalikkadavu Bridge', 'Chalikkadavu Bridge', 'Muvattupuzha', 'Kerala', '686673', '', '', NULL, NULL, 33, NULL, NULL),
(4, 'Mrs.priya krishna', 'Business', 'heaven', 'minu@gmail.com', '765675', '65668678', '', '', NULL, '', 'value', NULL, 'volvo', 'Taxable', 'value', 3243342, '1', 'select', 'select', '', '', '', 'value', ' ', '    ', '', '', '', '', '', '', '', 17, NULL, NULL),
(5, 'ROSILINT DAVIS', NULL, 'altos', 'akhilakd5299@gmail.com', '23655488', '7025306368', 'aml', 'deve', NULL, 'https://chat.openai.com/', 'Registered Business-Composition Business that is registered under the Composition scheme\r\n          ', NULL, 'volvo', 'Tax Exempt', 'volvo', 2300000, '2', 'Price Book1 [3]5% Markdowm', 'ENGLISH', 'nknk', 'jubugh', 'mo', 'volvo', 'PELLISSERY HOUSE AMMADAM P O', 'PELLISSERY HOUSE AMMADAM P O', 'THRISSUR', 'KERALA', '680563', '7025306368', '648522', '', '', 26, NULL, NULL),
(7, 'akhilDAVIS', NULL, 'inter', 'akhilakd5299@gmail.com', '04872277117', '8075955676', '', '', NULL, 'https://chat.openai.com/', 'Registered Business-Composition Business that is registered under the Composition scheme\r\n          ', NULL, '[UK]-Utharakhand', 'Taxable', 'volvo', 2300000, '2', 'Price Book1 [3]5% Markdowm', 'ENGLISH', 'nknk', 'jubugh', 'mo', 'volvo', 'PELLISSERY HOUSE AMMADAM P O', 'PELLISSERY HOUSE AMMADAM P O', 'THRISSUR', 'KERALA', '680563', '7025306368', '648522', '', '', 26, NULL, NULL),
(10, 'noelabc', 'Business', 'sss', 'xyzz@gmail.com', NULL, NULL, '', '', '', 'sss', 'Registered Business - Regular', '2fgsf45gd545', 'volvo', 'Taxable', 'volvo', 12, '2', '1', 'ENGLISH', 'dsa', 'asdasd', 'dfsdfs', 'volvo', 'abcdef', 'abcdef', 'dfssd', 'kerala', '68777', '06777777777', '7777', '', '', 27, NULL, NULL),
(11, 'Mr.manju M', NULL, 'infox', 'manju@gmail.com', NULL, NULL, '', '', '', 'www.manju.com', 'Registered Business - Composition', 'ABCTY1234D', 'audi', 'Taxable', 'volvo', 500, '1', '1', 'ENGLISH', '', '', 'hai', 'volvo', 'Chalikkadavu Bridge', 'Chalikkadavu Bridge', 'Muvattupuzha', 'Kerala', '686673', '07902514506', '', '', '', 33, NULL, NULL),
(12, 'Mrtttt Nrrrf', 'Individual', 'venu Digitals', 'venu@gmail.com', '0485-9638585', '7788554466', '', '', '', 'www.venu.in', 'Unregistered Business-not Registered under GST', 'null', '[HR]-Haryana', 'Taxable', 'volvo', 0, '1 ', '1', 'ENGLISH', 'venu123', 'venu.in', 'nill', 'volvo', ' venu villa', 'kollam', 'kollam', 'kerala', '123', '9995678853', 'venu.in', '', 'AQWSE1234R', 14, 'tttt', 'Nrrrf'),
(13, 'Mr.Venu Gopal', 'Individual', 'venu Digitals', 'venu@gmail.com', NULL, NULL, '', '', '', 'www.venu.in', 'Special Economic Zone (SEZ)', '32AADFV4535F1Z1', '[HR]-Haryana', 'Taxable', 'volvo', 0, '1', '1', 'ENGLISH', 'venu123', 'venu.in', 'nill', 'volvo', ' venu villa', 'kollam', 'kollam', 'kerala', '123', '9995678853', 'venu.in', 'hr', 'accounting', 14, NULL, NULL),
(14, 'kausalliya R', NULL, 'altos technologies', 'kausalliya16@gmail.com', '', '07902514506', '', '', NULL, 'www.kausalliya.com', 'Unregistered Business-not Registered under GST', NULL, '[KA]-Karnataka', 'Taxable', 'value', 500, '1', 'select', 'ENGLISH', '', '', '', 'value', ' ', '    ', '', '', '', '', '', '', '', 33, NULL, NULL),
(15, 'Mr.Dhyan ds', 'Business', 'dhyanaa', 'dyannn@gmail.com', '2275155', '9961665467', NULL, NULL, NULL, '', 'Registered Business-Regular Business that is registered under GST', NULL, 'Kerala', 'Taxable', 'value', 30000, '1', 'Price Book1 [3]5% Markdowm', 'ENGLISH', '', '', '', 'value', ' ', '    ', '', '', '', '', '', '', '', 16, NULL, NULL),
(16, 'Jaseela Jabbar', NULL, 'hjk', '', '9526620250', '', NULL, NULL, NULL, '', 'value', NULL, 'value', NULL, 'volvo', 546, '3', 'Price Book0 [69% Markup]', 'select', '', '', '', 'value', ' ', '    ', '', '', '', '', '', '', '', 25, NULL, NULL),
(17, 'Mrs. sumayya hgggnn', 'Individual', 'sdf', '123@gmail.com', '123456789', '123456789', 'sdfdsd', 'sfs', 'dgdfg', 'erwr', 'Registered Business-Regular Business that is registered under GST', NULL, '[JK] Jammu and Kashmir', 'Taxable', 'INR', 3453, '90', NULL, NULL, 'ewtew', 'erw', NULL, NULL, 'thodupuzha', 'thodupuzha', 'new city', 'Kerala', '43r345', '123456789', '325', NULL, NULL, 4, NULL, NULL),
(18, 'Mr. Athira Babu', 'Business', 'AJ Fashion', 'aj123@gmail.com', '2575703', '9996567856', 'nill', 'nill', 'nill', 'www.aj.in', 'Unregistered Business-not Registered under GST', NULL, '[LD] Lakshadweep', 'Tax-exempt', 'INR', 0, '30', NULL, NULL, 'www.aj.in', 'www.aj12.in', NULL, NULL, '', '', '', '', '', '', '', NULL, NULL, 14, NULL, NULL),
(19, 'Mr. anil sdf', 'Individual', 'dfg', '123@gmail.com', '123456789', '123456789', 'sdf', 'sfs', 'sdfds', 'sdf', 'Registered Business-Regular Business that is registered under GST', NULL, '[JK] Jammu and Kashmir', 'Taxable', 'INR', 23423, '15', NULL, NULL, 'dff', 'sdf', NULL, NULL, 'thodupuzha', 'thodupuzha', 'new city', 'Kerala', '43r345', '', '', NULL, NULL, 4, NULL, NULL),
(21, 'Mr. hhh hhh', 'Business', 'hhh', 'hhgmail.com', '2276566', '9961667899', '', '', '', '', 'Registered Business-Regular Business that is registered under GST', NULL, 'Karnataka', 'Tax-exempt', 'INR', 50000, '15', NULL, NULL, '', '', NULL, NULL, '', '', '', '', '', '', '', NULL, NULL, 16, NULL, NULL),
(22, 'Mrs. meena kumari', 'Business', 'mmm', 'kumari@gmail.com', '2276889', '9747653421', '', '', '', '', 'Registered Business-Regular Business that is registered under GST', NULL, 'Kerala', 'Tax-exempt', 'INR', 550000, '15', NULL, NULL, '', '', NULL, NULL, '', '', '', '', '', '', '', NULL, NULL, 16, NULL, NULL),
(23, 'Mr. Seema Har', 'Individual', 'abcd', 'seem@gmail.com', '', '', '', '', '', '', 'Consumer- A customer who is a regular Consumer', NULL, '[AD] Andhra Predhesh', 'Taxable', 'INR', 780000, '45', NULL, NULL, '', '', NULL, NULL, 'abcd', 'xyz', 'PY', 'Kerala', '234567', '2345678901', '', NULL, NULL, 23, NULL, NULL),
(24, 'Mr. honey fbfgb', 'Individual', 'fgbf', '123@gmail.com', '123456789', '123456789', 'dfd', 'dfg', 'dfg', 'dfg', 'Registered Business-Regular Business that is registered under GST', NULL, '[KL] Kerala', 'Taxable', 'INR', 423535, '45', NULL, NULL, 'rgd', 'drg', NULL, NULL, 'thodupuzha', 'thodupuzha', 'new city', 'Kerala', '43r345', '', '', NULL, NULL, 4, NULL, NULL),
(25, 'Mr. Krithika Raghav', 'Business', 'Krithi Fashion', 'krithi@gmail.com', '2574599', '9995796534', 'nill', 'nill', 'nill', 'www.krithi.in', 'Registered Business-Composition Business that is registered under the Composition scheme in GST', NULL, '[KL] Kerala', 'Taxable', 'INR', 0, '30', NULL, NULL, 'www.krithi.in', 'www.krithi.in', NULL, NULL, 'Krithi fashion', 'Thrissur ', 'Thrissur', 'Kerala', '698765', '9995764534', '', NULL, NULL, 14, NULL, NULL),
(26, 'Mr. Nandu Jaykumar', 'Business', 'aambro production', 'aambro@gmail.com', '2575702', '9995798356', 'nill', 'nill', 'nill', 'www.nandu.in', 'Unregistered Business-not Registered under GST', NULL, '[KL] Kerala', 'Taxable', 'INR', 0, '90', NULL, NULL, 'www.nandu.in', 'www.nandu.in', NULL, NULL, 'aambro production kochi', 'kochi ', 'kochi', 'Kerala', '', '', '', NULL, NULL, 14, NULL, NULL),
(27, 'Mr. Dhayan M', 'Business', 'dhanaya trdAES', 'dha@gmail.com', '2276555', '9961665678', '', '', '', '', 'Registered Business-Regular Business that is registered under GST', NULL, 'Kerala', 'Taxable', 'INR', 30000, '15', NULL, NULL, '', '', NULL, NULL, '', '', '', '', '', '', '', NULL, NULL, 32, NULL, NULL),
(33, 'MrSruthy Sree', 'Business', 'Sruthysree Fashion', 'sruthysree@gmail.com', NULL, NULL, '', '', '', 'www.srythy.in', 'Unregistered Business-not Registered under GST', 'null', '[KL]-Kerala', 'Taxable', 'Indian Rupee', 80000, '2', 'PriceBook1 [ 70% Markdown ]', 'ENGLISH', 'venu123', 'venu.in', 'nill', 'India', 'Sruthysree motors\r\nbuilding kollam', 'kollam ', 'kollam', 'kerala', '9877', '9995798365', '5667764', 'being customrr', 'AFDRT4323H', 14, NULL, NULL),
(34, 'Mr. mmmxxx vv', 'Business', 'cx', 'vc@gmail.com', '', '', '', '', '', '', 'Registered Business-Regular Business that is registered under GST', NULL, 'Karnataka', 'Taxable', 'INR', 2222, '15', NULL, NULL, '', '', NULL, NULL, '', '', '', '', '', '', '', NULL, NULL, 16, NULL, NULL),
(35, 'Mr. zz zz', 'Business', 'zz', 'zz@gmail.com', '', '', '', '', '', '', 'Registered Business-Regular Business that is registered under GST', NULL, '[GA] Goa', 'Taxable', 'INR', 30000, '15', NULL, NULL, '', '', NULL, NULL, '', '', '', '', '', '', '', NULL, NULL, 16, NULL, NULL),
(37, 'Mr. bb bbb', 'Business', 'bb', 'bb@gmail.com', '', '', '', '', '', '', 'Registered Business-Regular Business that is registered under GST', NULL, '[AD] Andhra Predhesh', NULL, 'INR', 300000, '15', NULL, NULL, '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', NULL, NULL, 16, NULL, NULL),
(38, 'Ms anu sree', NULL, 'hjk', 's@gmail.com', '0478-5892020', '9988774455', '', '', '', 'cc.com', 'Registered Business-Regular Business that is registered under GST', '29APPCK7465F1Z1', '[HR]-Haryana', 'Tax Exempt', 'Indian Rupee', 2147483647, '3', 'PriceBook1 [ 70% Markdown ]', 'ENGLISH', 'XC.COM', 'DR.COM', '', 'India', '', '', '', '', '', '', '', '', 'ASEDF1234G', 25, NULL, NULL),
(39, 'Mr Souparnika Dev', 'Business', 'SS Company', 'souparnika@gmail.com', '0474-2575702', '9995797854', '', '', '', 'www.ss.in', 'Unregistered Business-not Registered under GST', 'null', '[KL]-Kerala', 'Taxable', 'Indian Rupee', 8900, '1', 'PriceBook0 [ 68% Markup ]', 'ENGLISH', 'ss123.in', 'ss1232.in', 'nill', 'India', 'ss company nilayil \r\nbuilding', '', 'kollam', 'kerala', '453567', '9995678765', '1434543', 'being ygftuu', 'AFDRT4327A', 14, NULL, NULL),
(40, 'Mr. ww qq', 'Business', 'wq', 'wq@gmail.com', '', '', '', '', '', '', 'Registered Business-Regular Business that is registered under GST', NULL, 'Goa', 'Tax-exempt', 'INR', 23000, '15', NULL, NULL, '', '', NULL, NULL, '', '', '', '', '', '', '', NULL, NULL, 16, NULL, NULL),
(41, 'Mr. ytu ytu', 'Business', 'ytu', 'ytu@gmail.com', '', '', '', '', '', '', 'Overseas- Persons with who you do import or exports of supplies outside india', NULL, 'Kerala', 'Tax-exempt', 'INR', 34000, '15', NULL, NULL, '', '', NULL, NULL, '', '', '', '', '', '', '', NULL, NULL, 16, NULL, NULL),
(42, 'Mr. qa qa', 'Business', 'qaqa', 'qa@gmail.com', '', '', '', '', '', '', 'Registered Business-Regular Business that is registered under GST', NULL, 'Goa', 'Taxable', 'INR', 230000, '15', NULL, NULL, '', '', NULL, NULL, '', '', '', '', '', '', '', NULL, NULL, 16, NULL, NULL),
(43, 'Dr. we we', 'Business', 'we', 'we@gmail.com', '', '', '', '', '', '', 'Registered Business-Regular Business that is registered under GST', NULL, 'Kerala', 'Tax-exempt', 'INR', 23000, '15', NULL, NULL, '', '', NULL, NULL, '', '', '', '', '', '', '', NULL, NULL, 16, NULL, NULL),
(44, 'Ms. maria DAVIS', 'Business', 'pot', 'akhilakd5299@gmail.com', '7025306368', '7025306368', '4262565', 'python', 'python', 'facilezone.com', 'Registered Business-Regular Business that is registered under GST', NULL, '[KA] Karnataka', 'Taxable', 'INR', 78000, '30', NULL, NULL, 'facilezone.com', 'facilezone.com', NULL, NULL, 'PELLISSERY HOUSE AMMADAM P O', 'PELLISSERY HOUSE AMMADAM P O', 'THRISSUR', 'Kerala', '680563', '07025306368', '46262', NULL, NULL, 26, NULL, NULL),
(45, 'Mr Hari U', 'Business', 'hu', 'hu@gmail.com', '', '1234567890', '', '', '', 'www.hu.com', 'Unregistered Business-not Registered under GST', 'null', '[JK]-Jammu And Kashmir', 'Tax Exempt', 'Indian Rupee', 50000, '1', 'PriceBook0 [ 68% Markup ]', 'ENGLISH', '', '', '', 'India', '', '', '', '', '', '', '', '', 'WERFD3434R', 23, NULL, NULL),
(46, 'Mrs Deepa Nair', 'Individual', 'Deeps', 'deepa@gmail.com', '5465-7687678', '9847408638', '', '', '', 'bangles.com', 'Registered Business-Composition Business that is registered under the Composition scheme in GST', '567576578678', '[HP]-Himachal Pradesh', NULL, 'Indian Rupee', 466554, '1', 'PriceBook0 [ 68% Markup ]', 'ENGLISH', '', '', '', 'India', '', '', '', '', '', '', '', '', '56786876879', 17, NULL, NULL),
(47, 'Mr. Sam j', 'Individual', 'tcs', 'tcs@gmail.com', '8745123698', '9632587411', '', '', '', '', 'Unregistered Business', NULL, '[KL] Kerala', 'Taxable', 'INR', 50000, '15', NULL, NULL, '', '', NULL, NULL, 'Kochi', 'Kochi', 'Kochi', 'Kerala', '686101', '7412589635', '', NULL, NULL, 44, NULL, NULL),
(48, 'Mr Saritha lal', 'Individual', 'lal production', 'sarithalal@gmail.com', '0474-2575704', '9995789064', 'nill', 'nill', 'nill', 'www.lal.in', 'Unregistered Business-not Registered under GST', 'null', '[KL]-Kerala', 'Taxable', 'Indian Rupee', 0, '1', 'PriceBook0 [ 68% Markup ]', 'ENGLISH', 'lalsaritha.in', 'lal@gmail.com', 'tdyghuuh', 'India', 'y6rhuh fyuiuih', 'fthhuhvgv', 'kollam', 'kerala', '676788', '9996789065', '5678656', 'gghkhjhn khlhhk', 'AFDRT4327F', 14, NULL, NULL),
(49, 'Mr Gayathri Suresh', 'Business', 'GG Company', 'gayathri@gmail.com', '0474-2575702', '9995798365', '', '', '', 'www.gayathri.in', 'Unregistered Business-not Registered under GST', 'null', '[KL]-Kerala', 'Taxable', 'Indian Rupee', 0, '1', 'PriceBook1 [ 70% Markdown ]', 'ENGLISH', 'rose123.in', 'rose.in', 'yuiiooji', 'India', 'tfhijioji ftuh \r\nyghjk', 'uyijkn  fyuj', 'kollam', 'kerala', '', '', '', '', 'AFDRT4327G', 14, NULL, NULL),
(50, 'Mr fty yy', NULL, 'hjk', 's@gmail.com', '3256-8965656', '9988556622', '', '', '', 'cc.com', 'Registered Business-Regular Business that is registered under GST', '29APPCK7465F1Z1', '[JK]-Jammu And Kashmir', 'Tax Exempt', 'Indian Rupee', 633333, '4', 'PriceBook1 [ 70% Markdown ]', 'ENGLISH', 'XC.COM', 'DR.COM', '', 'India', '', '', '', '', '', '', '', '', 'AQWSE1234R', 25, 'fty', 'yy'),
(51, 'Mr shyn david', 'Business', 'ss motors', 'shyn@gmail.com', '0474-2575702', '9995798365', '', '', '', 'www.shyn.in', 'Unregistered Business-not Registered under GST', 'null', '[KL]-Kerala', 'Taxable', 'Indian Rupee', 8000, '1', 'PriceBook0 [ 68% Markup ]', 'ENGLISH', 'shyn.in', 'shyn.in', '', 'India', '', '', '', '', '', '', '', '', 'AFDRT4323G', 14, 'shyn', 'david'),
(52, 'Mr Rithik krishna', NULL, 'Richu', 'richukrish@gmail.com', '5465-7687678', '7658453245', '', '', '', 'Richusss', 'Registered Business-Composition Business that is registered under the Composition scheme in GST', '567576578678', 'volvo', NULL, 'Indian Rupee', 120000, '5', 'PriceBook0 [ 68% Markup ]', NULL, '', '', '', 'India', '', '', '', '', '', '', '', '', '56786876879', 17, 'Rithik', 'krishna'),
(53, 'Mr Druv Bala', 'Business', 'Druv Motors', 'druv@gmail.com', '0474-2575702', '9995798565', '', '', '', 'www.venu.in', 'Unregistered Business-not Registered under GST', 'null', '[KL]-Kerala', 'Taxable', 'Indian Rupee', 0, '1', 'PriceBook0 [ 68% Markup ]', 'ENGLISH', 'druv123.in', 'druv.in', '', 'India', '', '', '', '', '', '', '', '', 'AFDRT4327i', 14, 'Druv', 'Bala'),
(54, 'Mr Anand  Shekar', 'Business', 'Altos', 'anand@gmail.com', '0474-2576902', '9995798354', '', '', '', 'www.anand.in', 'Unregistered Business-not Registered under GST', 'null', '[KL]-Kerala', 'Taxable', 'Indian Rupee', 9000, '1', 'PriceBook0 [ 68% Markup ]', 'ENGLISH', 'anandaltos.in', 'altos.in', '', 'India', '', '', '', '', '', '', '', '', 'AFDRT4327F', 14, 'Anand ', 'Shekar'),
(55, 'Mr shamnad Sahir', 'Individual', 'Rajakumari', 'rajakumari@gmail.com', '0474-2575702', '9995798365', '', '', '', 'www.rajakumari', 'Unregistered Business-not Registered under GST', 'null', '[LA]-Ladakh', 'Taxable', 'Indian Rupee', 0, '3', 'PriceBook0 [ 68% Markup ]', 'ENGLISH', 'rajakumari.in', 'rajakumari.in', '', 'India', '', '', '', '', '', '', '', '', 'AFDRT4327A', 14, 'shamnad', 'Sahir'),
(56, 'Mr sabu mon', 'Business', 'ss motors', 'ss123@gmail.com', '0474-2575678', '9995798354', 'nill', 'nill', '', 'www.sabumon.in', 'Registered Business-Composition Business that is registered under the Composition scheme in GST', '32AADFV4536F1Z1', '[LA]-Ladakh', 'Taxable', 'Indian Rupee', 0, '1 ', 'PriceBook0 [ 68% Markup ]', 'ENGLISH', 'sabumon.in', 'sabumon.in', 'iukojhkf', 'India', 'bjkljklk jhkuilflk', 'hjjkfnkljn', '', '', '', '', '', '', 'AFDRT4323A', 14, 'sabu', 'mon'),
(57, 'Mr. jishnu prasad', 'Business', '', '', '', '', '', '', '', NULL, 'Unregistered Business-not Registered under GST', '', '[AD] Andhra Predhesh', 'Tax-exempt', '', 1213213, 'net 15 1', NULL, NULL, '', '', NULL, '', ',,,', ',,,', '', '', '', '', '', NULL, '', 18, NULL, NULL),
(58, 'Mr. wewe wewqe', 'Individual', '', '', '', '', '', '', '', NULL, 'Registered Business-Regular Business that is registered under GST', '', 'Nill', 'Tax-exempt', '', 3223, 'net 15 1', NULL, NULL, '', '', NULL, '', ',,,', ',,,', '', '', '', '', '', NULL, '', 18, NULL, NULL),
(59, 'Mr Soji lal', 'Business', 'sojo motors', 'sojo@gmail.com', '0474-2575702', '9995795656', '', '', '', 'www.soji.in', 'Registered Business-Composition Business that is registered under the Composition scheme in GST', '32AAPCK6778G1Z1', '[KL]-Kerala', 'Taxable', 'Indian Rupee', 0, 'due end of month ', 'PriceBook0 [ 68% Markup ]', 'ENGLISH', 'sojosoji.in', 'sojo.in', 'fhhjh hu', 'India', '', '', '', '', '', '', '', '', 'AFDRT4327F', 14, 'Soji', 'lal'),
(60, 'Mr. aa bb', 'Individual', '', 'aa@gmail.com', '', '', '', '', '', NULL, 'value', '', 'Nill', 'Tax-exempt', '', 12345, 'net 15 1', NULL, NULL, '', '', NULL, '', ',,,', ',,,', '', '', '', '', '', NULL, '', 18, NULL, NULL),
(61, 'Mr. asdf qwerty', 'Individual', '', 'asdf@gmail.com', '', '', '', '', '', NULL, 'value', '', 'Nill', 'Tax-exempt', '', 21213, 'net 15 1', NULL, NULL, '', '', NULL, '', ',,,', ',,,', '', '', '', '', '', NULL, '', 18, NULL, NULL),
(62, 'Mr. Jayalal Mohan', 'Business', 'JM Company', 'jm123@gmail.com', '2575702', '9995797887', 'nill', 'nill', 'nill', NULL, 'Registered Business-Composition Business that is registered under the Composition scheme in GST', '29ADCPM5465Z1F1', '[KL] Kerala', 'Taxable', 'INR', 0, 'net 15 1', NULL, NULL, 'www.jm.in', 'www.jm.in', NULL, '', 'fdhj,,,', 'fdhj,,,', '', '', '', '2575702', '', NULL, 'APPCKF4567Z1', 14, NULL, NULL),
(63, 'Ms. chinnu s', 'Individual', 'abc', 'chinnu@gmail.com', '7887676565', '', '', '', '', '', 'Registered Business-Regular Business that is registered under GST', NULL, '[GJ] Gujarat', 'Tax-exempt', 'INR', 100, 'net 3 9', NULL, NULL, '', '', NULL, NULL, '', '', '', '', '', '', '', NULL, NULL, 48, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `zohoapp_customer_comments_table`
--

CREATE TABLE `zohoapp_customer_comments_table` (
  `id` bigint(20) NOT NULL,
  `comment` longtext NOT NULL,
  `customr_id` bigint(20) DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `zohoapp_customer_contact_person_table`
--

CREATE TABLE `zohoapp_customer_contact_person_table` (
  `id` bigint(20) NOT NULL,
  `CPsalutation` varchar(100) DEFAULT NULL,
  `Firstname` varchar(100) DEFAULT NULL,
  `Lastname` varchar(100) DEFAULT NULL,
  `CPemail` varchar(100) DEFAULT NULL,
  `CPphone` varchar(100) DEFAULT NULL,
  `CPmobile` varchar(100) DEFAULT NULL,
  `CPskype` varchar(100) DEFAULT NULL,
  `CPdesignation` varchar(100) DEFAULT NULL,
  `CPdepartment` varchar(100) DEFAULT NULL,
  `Customr_id` bigint(20) DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `zohoapp_customer_contact_person_table`
--

INSERT INTO `zohoapp_customer_contact_person_table` (`id`, `CPsalutation`, `Firstname`, `Lastname`, `CPemail`, `CPphone`, `CPmobile`, `CPskype`, `CPdesignation`, `CPdepartment`, `Customr_id`, `user_id`) VALUES
(1, 'Mr', 'Suthy', 'Sree', 'sruthysree@gmail.com', '0845-2567808', '', '', '', '', 33, 14),
(2, 'Mr', '', '', '', '', '', '', '', '', 38, 25),
(3, 'Mr', 'ss company', 'ss motors', 'ss123@gmail.com', '0474-2576705', '', '', '', '', 39, 14),
(4, 'Mr', '', '', '', '', '', '', '', '', 45, 23),
(5, 'Mr', '', '', '', '', '', '', '', '', 46, 17),
(6, 'Mr', 'lal', 'sree', 'lalsree@gmail.com', '1234-2576790', '', '', '', '', 48, 14),
(7, 'Mr', 'sreeja', 'ravi', 'sree@gmail.com', '1234-2575705', '9995786576', '', '', '', 49, 14),
(8, 'Mr', '', '', '', '', '', '', '', '', 50, 25),
(9, 'Mr', '', '', '', '', '', '', '', '', 51, 14),
(10, 'Mr', '', '', '', '', '', '', '', '', 52, 17),
(11, 'Mr', '', '', '', '', '', '', '', '', 53, 14),
(12, 'Mr', '', '', '', '', '', '', '', '', 54, 14),
(13, 'Mr', '', '', '', '', '', '', '', '', 55, 14),
(15, 'Mr', '', '', '', '', '', '', '', '', 56, 14),
(18, 'Mr', '', '', '', '', '', '', '', '', 59, 14);

-- --------------------------------------------------------

--
-- Table structure for table `zohoapp_customer_doc_upload_table`
--

CREATE TABLE `zohoapp_customer_doc_upload_table` (
  `id` bigint(20) NOT NULL,
  `title` longtext NOT NULL,
  `document` varchar(100) NOT NULL,
  `customr_id` bigint(20) DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `zohoapp_customer_mail_table`
--

CREATE TABLE `zohoapp_customer_mail_table` (
  `id` bigint(20) NOT NULL,
  `mail_from` longtext NOT NULL,
  `mail_to` longtext NOT NULL,
  `subject` longtext NOT NULL,
  `content` longtext NOT NULL,
  `mail_date` datetime(6) NOT NULL,
  `customr_id` bigint(20) DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `zohoapp_deliverychellan`
--

CREATE TABLE `zohoapp_deliverychellan` (
  `id` bigint(20) NOT NULL,
  `customer_name` varchar(100) DEFAULT NULL,
  `customer_mailid` varchar(100) DEFAULT NULL,
  `chellan_no` varchar(100) DEFAULT NULL,
  `reference` varchar(100) DEFAULT NULL,
  `chellan_date` date DEFAULT NULL,
  `chellan_type` varchar(100) DEFAULT NULL,
  `sub_total` double DEFAULT NULL,
  `igst` double DEFAULT NULL,
  `sgst` double DEFAULT NULL,
  `cgst` double DEFAULT NULL,
  `tax_amount` double DEFAULT NULL,
  `shipping_charge` double DEFAULT NULL,
  `adjustment` double DEFAULT NULL,
  `total` double DEFAULT NULL,
  `status` varchar(100) DEFAULT NULL,
  `customer_notes` varchar(250) DEFAULT NULL,
  `terms_conditions` varchar(250) DEFAULT NULL,
  `attachment` varchar(100) DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `zohoapp_deliverychellan`
--

INSERT INTO `zohoapp_deliverychellan` (`id`, `customer_name`, `customer_mailid`, `chellan_no`, `reference`, `chellan_date`, `chellan_type`, `sub_total`, `igst`, `sgst`, `cgst`, `tax_amount`, `shipping_charge`, `adjustment`, `total`, `status`, `customer_notes`, `terms_conditions`, `attachment`, `user_id`) VALUES
(1, 'Mr. fs dsg', 'da@gmail.com', '1', '1', '2023-08-02', 'Challan type', 0, 0, 0, 0, 0, 0, 0, 0, 'Send', 'asdf', 'sadf', '', 3);

-- --------------------------------------------------------

--
-- Table structure for table `zohoapp_doc_upload_table`
--

CREATE TABLE `zohoapp_doc_upload_table` (
  `id` bigint(20) NOT NULL,
  `title` longtext NOT NULL,
  `document` varchar(100) NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `vendor_id` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `zohoapp_estimateitems`
--

CREATE TABLE `zohoapp_estimateitems` (
  `id` bigint(20) NOT NULL,
  `item_name` varchar(100) DEFAULT NULL,
  `quantity` int(11) DEFAULT NULL,
  `rate` double DEFAULT NULL,
  `discount` double DEFAULT NULL,
  `tax_percentage` int(11) DEFAULT NULL,
  `amount` double DEFAULT NULL,
  `estimate_id` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `zohoapp_estimateitems`
--

INSERT INTO `zohoapp_estimateitems` (`id`, `item_name`, `quantity`, `rate`, `discount`, `tax_percentage`, `amount`, `estimate_id`) VALUES
(1, 'Light', 7, 1500, 0, 5, 10500, 1),
(2, 'Select Items', 0, 0, 0, 0, 0, 2),
(4, 'Select Items', 2, 28, 0, 3, 56, 5),
(5, 'ggggg', 3, 15000, 0, 3, 45000, 3),
(8, 'ggggg', 2, 15000, 0, 3, 30000, 6),
(9, 'Dry fruits', 4, 900, 100, 5, 3500, 7),
(10, 'Light', 7, 1500, 0, 12, 10500, 8),
(11, 'Dry fruits', 8, 900, 0, 12, 7200, 9),
(12, 'ggggg', 1, 15000, 0, 3, 15000, 10),
(14, 'sss', 1, 1111, 0, 3, 1111, 12),
(15, 'ggggg', 1, 15000, 0, 3, 15000, 11),
(17, 'ggggg', 2, 15000, 0, 12, 30000, 13),
(18, 'Earings', 10, 5000, 50, 12, 49950, 14),
(19, 'keyboard', 2, 1000, 0, 3, 2000, 15);

-- --------------------------------------------------------

--
-- Table structure for table `zohoapp_estimates`
--

CREATE TABLE `zohoapp_estimates` (
  `id` bigint(20) NOT NULL,
  `customer_name` varchar(100) DEFAULT NULL,
  `estimate_no` varchar(100) DEFAULT NULL,
  `reference` varchar(100) DEFAULT NULL,
  `estimate_date` date DEFAULT NULL,
  `expiry_date` date DEFAULT NULL,
  `sub_total` double DEFAULT NULL,
  `igst` double DEFAULT NULL,
  `sgst` double DEFAULT NULL,
  `cgst` double DEFAULT NULL,
  `tax_amount` double DEFAULT NULL,
  `shipping_charge` double DEFAULT NULL,
  `adjustment` double DEFAULT NULL,
  `total` double DEFAULT NULL,
  `status` varchar(100) DEFAULT NULL,
  `customer_notes` varchar(250) DEFAULT NULL,
  `terms_conditions` varchar(250) DEFAULT NULL,
  `attachment` varchar(100) DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  `customer_id` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `zohoapp_estimates`
--

INSERT INTO `zohoapp_estimates` (`id`, `customer_name`, `estimate_no`, `reference`, `estimate_date`, `expiry_date`, `sub_total`, `igst`, `sgst`, `cgst`, `tax_amount`, `shipping_charge`, `adjustment`, `total`, `status`, `customer_notes`, `terms_conditions`, `attachment`, `user_id`, `customer_id`) VALUES
(1, 'Mr. Ganga Lakshmi', '1', '1', '2023-08-01', '2023-08-01', 10500, 525, 0, 0, 525, 0, 0, 11025, 'Draft', '', '', '', 14, NULL),
(2, 'Mr. fs dsg', '2', '3', '2023-08-02', '2023-08-02', 0, 0, 0, 0, 0, 0, 0, 0, 'Sent', 'asd', 'asd', '', 3, NULL),
(3, 'Mr.Dhyan ds', 'EST-3', '3', '2023-08-10', '2023-08-10', 45000, 0, 675, 675, 1350, 0, 0, 46350, 'Draft', '', 'ggggggggggg', '', 16, 15),
(4, 'Jaseela Jabbar', 'EST-4', '', '2023-08-16', '2023-08-16', 0, 0, 0, 0, 0, 0, 0, 0, 'Draft', '', '', '', 25, 16),
(5, 'Jaseela Jabbar', 'EST-4', '', '2023-08-16', '2023-08-16', 56, 1.68, 0, 0, 1.68, 0, 0, 57.68, 'Sent', '', '', '', 25, 16),
(6, 'Mrs. meena kumari', 'EST-6', '6', '2023-08-18', '2023-08-18', 30000, 900, 0, 0, 900, 0, 0, 30900, 'Draft', '', 'bbbbbbb', '', 16, 22),
(7, 'Mr.Venu Gopal', 'EST-2', '2', '2023-08-10', '2023-08-21', 3500, 180, 0, 0, 180, 0, 0, 3680, 'Draft', '', '', '', 14, 13),
(8, 'Mr. Krithika Raghav', 'EST-2', '2', '2023-08-21', '2023-08-21', 10500, 1260, 0, 0, 1260, 0, 0, 11760, 'Draft', '', '', '', 14, 25),
(9, 'Mr.Venu Gopal', 'EST-3', '3', '2023-08-21', '2023-08-21', 7200, 864, 0, 0, 864, 0, 0, 8064, 'Sent', '', '', 'image/Screenshot_1293.png', 14, 13),
(10, 'Mr.Dhyan ds', 'EST-10', '11', '2023-08-22', '2023-08-22', 15000, 0, 225, 225, 450, 0, 0, 15450, 'Draft', '', 'ssss', '', 16, 15),
(11, 'Mr.Dhyan ds', 'EST-11', '12', '2023-08-22', '2023-08-25', 15000, 0, 225, 225, 450, 0, 0, 15450, 'Draft', '', 'sss', '', 16, 15),
(12, 'Mr. Dhayan M', 'EST-12', '', '2023-08-22', '2023-08-22', 1111, 33.33, 0, 0, 33.33, 0, 0, 1144.33, 'Sent', '', 'sssss', '', 32, 27),
(13, 'Dr. we we', 'EST-13', '14', '2023-08-23', '2023-08-23', 30000, 0, 1800, 1800, 3600, 0, 0, 33600, 'Draft', '', 'ssssssssssssssss', '', 16, 43),
(14, 'Mrs.priya krishna', 'EST-14', '6576', '2023-08-25', '2023-08-25', 49950, 6000, 0, 0, 6000, 199, 120, 55950, 'Sent', 'jgjkh', 'ghjk', '', 17, 4),
(15, 'Mr. asdf qwerty', 'EST-15', '', '2023-09-25', '2023-09-02', 2000, 60, 0, 0, 60, 0, 0, 2060, 'Sent', '', '', '', 18, 61);

-- --------------------------------------------------------

--
-- Table structure for table `zohoapp_estimate_comments`
--

CREATE TABLE `zohoapp_estimate_comments` (
  `id` bigint(20) NOT NULL,
  `comments` varchar(500) DEFAULT NULL,
  `estimate_id` bigint(20) DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `zohoapp_estimate_comments`
--

INSERT INTO `zohoapp_estimate_comments` (`id`, `comments`, `estimate_id`, `user_id`) VALUES
(1, 'estmate  .........................................................', 6, 16);

-- --------------------------------------------------------

--
-- Table structure for table `zohoapp_expense`
--

CREATE TABLE `zohoapp_expense` (
  `id` bigint(20) NOT NULL,
  `profile_name` varchar(255) NOT NULL,
  `repeat_every` varchar(50) NOT NULL,
  `start_date` date NOT NULL,
  `ends_on` varchar(255) DEFAULT NULL,
  `expense_account` varchar(255) NOT NULL,
  `expense_type` varchar(50) NOT NULL,
  `goods_label` varchar(255) NOT NULL,
  `amount` decimal(10,2) NOT NULL,
  `currency` varchar(10) NOT NULL,
  `paidthrough` varchar(50) NOT NULL,
  `gst` varchar(255) NOT NULL,
  `destination` varchar(255) NOT NULL,
  `tax` varchar(255) NOT NULL,
  `notes` varchar(255) NOT NULL,
  `customername` varchar(255) NOT NULL,
  `vendor_id` bigint(20) NOT NULL,
  `activation_tag` varchar(255) NOT NULL,
  `comments` longtext,
  `document` varchar(100) DEFAULT NULL,
  `status` varchar(255) NOT NULL,
  `title` varchar(255) NOT NULL,
  `user_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `zohoapp_expense`
--

INSERT INTO `zohoapp_expense` (`id`, `profile_name`, `repeat_every`, `start_date`, `ends_on`, `expense_account`, `expense_type`, `goods_label`, `amount`, `currency`, `paidthrough`, `gst`, `destination`, `tax`, `notes`, `customername`, `vendor_id`, `activation_tag`, `comments`, `document`, `status`, `title`, `user_id`) VALUES
(1, 'Rent', '2 Weeks', '2023-07-01', '2023-07-14', 'sales ac', 'goods', '567898', 2000.00, 'INR', 'Due on Receipt', 'Unregistered Business-not Registered under GST', '[KL]-Kerala', 'GST12[12%]', 'ftghijj', 'Mr. devika N', 1, 'active', NULL, '', '', '', NULL),
(2, 'Rent', 'Month', '2023-07-01', '2023-07-31', 'Expense', 'goods', '657787', 56000.00, 'INR', 'Due on Receipt', 'Registered Business-Regular Business that is registered under GST', '[KL]-Kerala', 'GST0[3%]', 'fghgj fygyhj', 'amal DAVIS', 5, 'active', NULL, '', '', '', NULL),
(3, 'exp', 'Year', '2023-07-01', 'Never expire', 'Equity', 'services', '', 600.00, 'INR', 'Due on Receipt', 'Unregistered Business-not Registered under GST', '[KL]-Kerala', 'GST0[0%]', 'ftghijj', 'amal DAVIS', 4, 'active', NULL, '', '', '', NULL),
(4, 'IJUHYGT', '2 Weeks', '2023-08-17', '2023-08-24', 'Credit Card', 'services', '', 76543.00, 'INR', 'NET 45', 'Unregistered Business-not Registered under GST', '[HP]-Himachal Pradesh', 'GST0[0%]', 'JHGFD', 'Mr. Ganga Lakshmi', 17, 'active', NULL, '', '', '', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `zohoapp_expensee`
--

CREATE TABLE `zohoapp_expensee` (
  `id` bigint(20) NOT NULL,
  `amount` longtext,
  `currency` longtext,
  `expense_type` longtext,
  `paid` longtext,
  `notes` longtext,
  `hsn_code` longtext,
  `gst_treatment` longtext,
  `destination_of_supply` longtext,
  `reverse_charge` longtext,
  `tax` longtext,
  `invoice` longtext,
  `reporting_tags` longtext,
  `date` date DEFAULT NULL,
  `sac` longtext,
  `taxamt` longtext,
  `image` varchar(100) DEFAULT NULL,
  `customer_name_id` bigint(20) DEFAULT NULL,
  `expense_account` varchar(100) DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  `vendor_id` bigint(20) DEFAULT NULL,
  `company_id` bigint(20) DEFAULT NULL,
  `gstin` longtext
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `zohoapp_expensee`
--

INSERT INTO `zohoapp_expensee` (`id`, `amount`, `currency`, `expense_type`, `paid`, `notes`, `hsn_code`, `gst_treatment`, `destination_of_supply`, `reverse_charge`, `tax`, `invoice`, `reporting_tags`, `date`, `sac`, `taxamt`, `image`, `customer_name_id`, `expense_account`, `user_id`, `vendor_id`, `company_id`, `gstin`) VALUES
(5, '700', 'INR', 'goods', 'Petty Cash', 'Being petty cash exp', '3456589', 'unregistered Business', 'Kerala (KL)', NULL, 'GST12[12%]', '1', NULL, '2023-08-03', '', 'False', '', 18, 'Prepaid Expenses', 14, 21, 14, ''),
(6, '9000', 'INR', 'service', 'Employee Advance', 'gfgkkjl', '', 'unregistered Business', 'Kerala (KL)', NULL, 'GST5[5%]', '2', NULL, '2023-08-10', '76778', 'False', '', 18, 'Accounts Receivable', 14, 21, 14, ''),
(10, '7800', 'INR', 'goods', 'Petty Cash', 'Being exp', '453587', 'unregistered Business', 'Kerala (KL)', NULL, 'GST5[5%]', 'invoice3', NULL, '2023-08-11', '', 'False', '', 18, 'Accounts Receivable', 14, 19, 14, ''),
(11, '6800', 'INR', 'service', 'Strip Clearing Acccount', 'bdghnm', '', 'Registered Business - Composition', 'Kerala (KL)', NULL, 'GST18[18%]', '5', NULL, '2023-08-03', '675678', 'False', '', 25, 'Advertising and Marketing', 14, 26, 14, '32AABHF3454F1Z1'),
(12, '600', 'INR', 'service', 'Advance tax', 'efds', '', 'unregistered Business', 'Kerala (KL)', 'True', 'IGST5[5%]', 'df', NULL, '2023-08-25', '859268', 'False', 'expense_image/abin_t1.JPG', 11, 'Accounts Receivable', 33, 2, 33, '');

-- --------------------------------------------------------

--
-- Table structure for table `zohoapp_history`
--

CREATE TABLE `zohoapp_history` (
  `id` bigint(20) NOT NULL,
  `date` datetime(6) NOT NULL,
  `message` varchar(255) NOT NULL,
  `p_id` bigint(20) NOT NULL,
  `user_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `zohoapp_invoice`
--

CREATE TABLE `zohoapp_invoice` (
  `id` bigint(20) NOT NULL,
  `invoice_no` longtext NOT NULL,
  `order_no` int(11) NOT NULL,
  `inv_date` date NOT NULL,
  `due_date` date NOT NULL,
  `igst` longtext NOT NULL,
  `cgst` longtext NOT NULL,
  `sgst` longtext NOT NULL,
  `t_tax` double NOT NULL,
  `subtotal` double NOT NULL,
  `grandtotal` double NOT NULL,
  `cxnote` longtext NOT NULL,
  `file` varchar(100) NOT NULL,
  `terms_condition` longtext NOT NULL,
  `status` longtext NOT NULL,
  `customer_id` bigint(20) NOT NULL,
  `terms_id` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `zohoapp_invoice`
--

INSERT INTO `zohoapp_invoice` (`id`, `invoice_no`, `order_no`, `inv_date`, `due_date`, `igst`, `cgst`, `sgst`, `t_tax`, `subtotal`, `grandtotal`, `cxnote`, `file`, `terms_condition`, `status`, `customer_id`, `terms_id`) VALUES
(4, 'INV-0006', 6, '2023-09-01', '2023-09-13', '1296.00', '0.00', '0.00', 1296, 7200, 8496, '', '/static/images/alt.jpg', '', 'Save As Draft', 25, 1),
(7, 'INV-002', 8990, '2023-09-06', '2023-09-12', '48.00', '0.00', '0.00', 48, 400, 448, '', '/static/images/alt.jpg', '', 'Save and Send', 19, 5),
(8, 'INV-003', 8990, '2023-09-05', '2023-09-06', '15.00', '0.00', '0.00', 15, 300, 315, '', '/static/images/alt.jpg', '', 'Save and Send', 10, 3),
(9, 'INV-00022', 22, '2023-09-01', '2023-09-30', '5940.00', '0.00', '0.00', 5940, 49500, 55440, '', '/static/images/alt.jpg', '', 'Save As Draft', 23, 3),
(10, 'INV-0008', 8, '2023-09-01', '2023-09-30', '7020.00', '0.00', '0.00', 7020, 39000, 46020, '', '/static/images/alt.jpg', '', 'Save As Draft', 24, 1),
(11, 'INV-0009', 9, '2023-09-01', '2023-09-30', '225.00', '0.00', '0.00', 225, 4500, 4725, '', '/static/images/alt.jpg', '', 'Save As Draft', 25, 3),
(12, 'INV-00011', 11, '2023-09-01', '2023-09-01', '240.00', '0.00', '0.00', 240, 2000, 2240, '', '/static/images/alt.jpg', '', 'Save As Draft', 25, 1),
(13, 'INV-00010', 7, '2023-09-01', '2023-09-07', '2016.00', '0.00', '0.00', 2016, 7200, 9216, '', '/static/images/alt.jpg', '', 'Save As Draft', 23, 1);

-- --------------------------------------------------------

--
-- Table structure for table `zohoapp_invoice_item`
--

CREATE TABLE `zohoapp_invoice_item` (
  `id` bigint(20) NOT NULL,
  `product` longtext NOT NULL,
  `quantity` int(11) NOT NULL,
  `hsn` longtext NOT NULL,
  `tax` int(11) NOT NULL,
  `total` double NOT NULL,
  `desc` longtext NOT NULL,
  `rate` longtext NOT NULL,
  `inv_id` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `zohoapp_invoice_item`
--

INSERT INTO `zohoapp_invoice_item` (`id`, `product`, `quantity`, `hsn`, `tax`, `total`, `desc`, `rate`, `inv_id`) VALUES
(4, 'charging tab', 6, '', 18, 7200, 'fggh', '1200', 4),
(7, 'Item 1', 1, '123456', 12, 400, 'dergg', '400', 7),
(8, 'keyboard', 1, '123456', 5, 300, 'zxdcfgvhbjn', '300', 8),
(9, 'wallpaper', 55, '567898', 12, 49500, 'pricelist', '900', 9),
(10, 'wallpaper', 78, '567898', 18, 39000, 'refifsegh', '500', 10),
(11, 'wallpaper', 9, '567898', 5, 4500, 'register', '500', 11),
(12, 'marker', 5, '123456', 12, 2000, 'rtgrst', '400', 12),
(13, 'sugar', 8, '654321', 28, 7200, 'refifsegh', '900', 13);

-- --------------------------------------------------------

--
-- Table structure for table `zohoapp_mail_table`
--

CREATE TABLE `zohoapp_mail_table` (
  `id` bigint(20) NOT NULL,
  `mail_from` longtext NOT NULL,
  `mail_to` longtext NOT NULL,
  `subject` longtext NOT NULL,
  `content` longtext NOT NULL,
  `mail_date` datetime(6) NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `vendor_id` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `zohoapp_method`
--

CREATE TABLE `zohoapp_method` (
  `id` bigint(20) NOT NULL,
  `option` longtext NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `zohoapp_method`
--

INSERT INTO `zohoapp_method` (`id`, `option`) VALUES
(1, 'card'),
(2, 'others'),
(3, 'Bank'),
(4, 'credit card');

-- --------------------------------------------------------

--
-- Table structure for table `zohoapp_payment`
--

CREATE TABLE `zohoapp_payment` (
  `id` bigint(20) NOT NULL,
  `term` longtext NOT NULL,
  `days` longtext NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `zohoapp_payments_recur`
--

CREATE TABLE `zohoapp_payments_recur` (
  `id` bigint(20) NOT NULL,
  `Terms` varchar(100) DEFAULT NULL,
  `Days` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `zohoapp_payments_recur`
--

INSERT INTO `zohoapp_payments_recur` (`id`, `Terms`, `Days`) VALUES
(1, 'Net10', 10),
(2, 'Net 30', 30),
(3, 'Net12', 11);

-- --------------------------------------------------------

--
-- Table structure for table `zohoapp_payment_item`
--

CREATE TABLE `zohoapp_payment_item` (
  `id` bigint(20) NOT NULL,
  `reference` longtext,
  `payment` longtext,
  `date` date DEFAULT NULL,
  `cash` longtext,
  `amount` int(11) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `balance` int(11) DEFAULT NULL,
  `current_balance` int(11) DEFAULT NULL,
  `vendor_id` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `zohoapp_payment_made`
--

CREATE TABLE `zohoapp_payment_made` (
  `id` bigint(20) NOT NULL,
  `reference` longtext,
  `date` date DEFAULT NULL,
  `amount` int(11) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `balance` int(11) DEFAULT NULL,
  `current_balance` int(11) DEFAULT NULL,
  `gst` longtext,
  `cash_id` bigint(20) DEFAULT NULL,
  `payment_id` bigint(20) DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  `vendor_id` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `zohoapp_payment_made`
--

INSERT INTO `zohoapp_payment_made` (`id`, `reference`, `date`, `amount`, `email`, `balance`, `current_balance`, `gst`, `cash_id`, `payment_id`, `user_id`, `vendor_id`) VALUES
(2, '2', '2023-07-12', 11, 'ajayjayathilakan0@gmail.com', 11, 0, 'unregistered Business', 2, 1, NULL, 7),
(5, '2', '2023-07-01', 1000, 'hareesh@gmail.com', 70000, 69000, 'Registered Business-Composition Business that is registered under the Composition scheme in GST', 5, 3, NULL, 8),
(6, '3', '2023-08-02', 7000, 'faizal@gmail.com', 8000, 1000, 'Registered Business-Composition Business that is registered under the Composition scheme in GST', 10, 3, NULL, 11);

-- --------------------------------------------------------

--
-- Table structure for table `zohoapp_payment_made_item`
--

CREATE TABLE `zohoapp_payment_made_item` (
  `id` bigint(20) NOT NULL,
  `reference` longtext,
  `payment` longtext,
  `date` date DEFAULT NULL,
  `amount` int(11) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `balance` int(11) DEFAULT NULL,
  `current_balance` int(11) DEFAULT NULL,
  `gst` longtext,
  `cash_id` bigint(20) DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  `vendor_id` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `zohoapp_payment_made_item`
--

INSERT INTO `zohoapp_payment_made_item` (`id`, `reference`, `payment`, `date`, `amount`, `email`, `balance`, `current_balance`, `gst`, `cash_id`, `user_id`, `vendor_id`) VALUES
(1, 'undefined', 'Cheque', '2023-07-19', 665, 'ramu@gmail.com', 5000, 4335, 'unregistered Business', 1, NULL, 2),
(2, '3', 'Cheque', '2023-07-22', 5000, 'devan@gmail.com', 50000, 45000, 'Unregistered Business-not Registered under GST', 2, NULL, 4),
(3, '5', 'Card', '2023-07-22', 256, 'anasash9048@gmail.com', 6256, 6000, 'unregistered Business', 2, NULL, 3);

-- --------------------------------------------------------

--
-- Table structure for table `zohoapp_payment_terms`
--

CREATE TABLE `zohoapp_payment_terms` (
  `id` bigint(20) NOT NULL,
  `Terms` varchar(100) DEFAULT NULL,
  `Days` int(11) DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `zohoapp_payment_terms`
--

INSERT INTO `zohoapp_payment_terms` (`id`, `Terms`, `Days`, `user_id`) VALUES
(1, 'net 15', 15, NULL),
(2, 'due end of month', 60, NULL),
(3, 'net 30', 30, NULL),
(4, 'net', 20, NULL),
(5, 'Net 80', 80, NULL),
(6, 'Net 90', 90, NULL),
(7, 'Net 10', 10, NULL),
(8, 'net 2', 2, NULL),
(9, 'net 3', 3, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `zohoapp_payment_termse`
--

CREATE TABLE `zohoapp_payment_termse` (
  `id` bigint(20) NOT NULL,
  `Terms` varchar(100) DEFAULT NULL,
  `Days` int(11) DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `zohoapp_payroll`
--

CREATE TABLE `zohoapp_payroll` (
  `id` bigint(20) NOT NULL,
  `first_name` varchar(100) NOT NULL,
  `alias` varchar(100) NOT NULL,
  `image` varchar(100) DEFAULT NULL,
  `joindate` date NOT NULL,
  `salary_type` varchar(100) NOT NULL,
  `salary` int(11) DEFAULT NULL,
  `emp_number` varchar(100) DEFAULT NULL,
  `designation` varchar(100) NOT NULL,
  `location` varchar(100) NOT NULL,
  `gender` varchar(100) NOT NULL,
  `dob` date NOT NULL,
  `blood` varchar(10) NOT NULL,
  `parent` varchar(100) NOT NULL,
  `spouse_name` varchar(100) NOT NULL,
  `address` varchar(250) NOT NULL,
  `Phone` bigint(20) NOT NULL,
  `email` varchar(255) DEFAULT NULL,
  `ITN` int(11) DEFAULT NULL,
  `Aadhar` varchar(250) NOT NULL,
  `UAN` int(11) DEFAULT NULL,
  `PFN` int(11) DEFAULT NULL,
  `PRAN` int(11) DEFAULT NULL,
  `status` varchar(200) NOT NULL,
  `isTDS` varchar(200) DEFAULT NULL,
  `TDS` int(11) DEFAULT NULL,
  `emergency_phone` bigint(20) DEFAULT NULL,
  `last_name` varchar(100) DEFAULT NULL,
  `permanent_address` varchar(250) DEFAULT NULL,
  `title` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `zohoapp_payroll`
--

INSERT INTO `zohoapp_payroll` (`id`, `first_name`, `alias`, `image`, `joindate`, `salary_type`, `salary`, `emp_number`, `designation`, `location`, `gender`, `dob`, `blood`, `parent`, `spouse_name`, `address`, `Phone`, `email`, `ITN`, `Aadhar`, `UAN`, `PFN`, `PRAN`, `status`, `isTDS`, `TDS`, `emergency_phone`, `last_name`, `permanent_address`, `title`) VALUES
(2, 'Sujatha', 'nill', 'image/Screenshot_1175.png', '2023-08-02', 'Fixed', 40000, '456746', 'Project Manager', 'Ernakulam', 'Female', '1961-06-08', 'O +ve', 'Ramdas', 'nill', 'Sujatha Bhavan kalluvila Kochi', 2147483647, 'sujatha@mail.com', 2147483647, '2147483647', 5377533, 765315778, 7654367, 'Active', 'Percentage', 6, NULL, NULL, NULL, NULL),
(6, 'Sreya', 'Nill', 'image/Screenshot_55_ZHh8v8q.png', '2023-08-01', 'Fixed', 16500, 'FG4539', 'Accountant', 'Malappuram', 'Female', '1978-02-08', 'A-', 'Shiju Raju', 'Nill', 'ZY Villa Ernakulamkerala', 9995646785, 'sreya@gmail.com', 2147483647, '4444 5555 6666', 2147483647, 65424567, 65544456, 'Inactive', 'No', 0, 8975432476, 'Nair', 'SS Bhavan NedugolamMalappuram Kerala', 'Mrs'),
(7, 'Nasneen', 'Nas', 'image/img.png', '2023-08-03', 'Fixed', 20000, 'DFG234', 'Developer', 'Kozhikkode', 'Female', '1999-11-11', 'AB+', 'Parent', 'Spouse', 'nazam house ,thikkodi thikkodi post , 673529kozhikkode', 9874563210, 'nazneen@gmail.com', 8888, '1234 1234 1234', 1111, 1111, 1111, 'Inactive', 'No', 0, 9874563210, 'O M', 'nazam house ,thikkodi thikkodi post , 673529kozhikkode', 'Mrs'),
(9, 'Raja', 'Nill', 'image/Screenshot_203.png', '2023-08-01', 'Fixed', 30000, 'FG4535', 'Accountant', 'Kochi', 'Female', '1995-06-07', 'A-', 'Sreerajesh', 'Nill', 'SS Bhavan kochi', 9995643457, 'sree1623@gmail.com', 5663566, '4534 6433 3344', 2147483647, 453666444, 7654368, 'Active', 'Percentage', 4000, 7534234567, 'Sree', 'SS Bhavan kochi', 'Ms'),
(10, 'Harijith', 'Nill', 'image/Screenshot_56.png', '2023-08-04', 'Fixed', 40000, 'FG4534', 'Project Manager', 'Kollam', 'Male', '1981-09-16', 'O-', 'Hareendran', 'Nill', 'Haritha Bhavan kalluvathukkal kollam', 9996754567, 'harijith@gmail.com', 2147483647, '4534 6433 3346', 2147483647, 2147483647, 76564445, 'Inactive', 'Percentage', 2, 7453556643, 'H S', 'Haritha Bhavankalluvathukkal kollam', 'Mr');

-- --------------------------------------------------------

--
-- Table structure for table `zohoapp_payrollfiles`
--

CREATE TABLE `zohoapp_payrollfiles` (
  `id` bigint(20) NOT NULL,
  `attachment` varchar(100) DEFAULT NULL,
  `payroll_id` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `zohoapp_payrollfiles`
--

INSERT INTO `zohoapp_payrollfiles` (`id`, `attachment`, `payroll_id`) VALUES
(2, 'doc/Screenshot_1177_1_3DMUBoX.png', 2),
(10, 'doc/Screenshot_52.png', 6),
(11, 'doc/Screenshot_45.png', 6),
(12, 'doc/Screenshot_51_yq2OXkk.png', 7);

-- --------------------------------------------------------

--
-- Table structure for table `zohoapp_pricelist`
--

CREATE TABLE `zohoapp_pricelist` (
  `id` bigint(20) NOT NULL,
  `name` varchar(255) NOT NULL,
  `types` varchar(255) NOT NULL,
  `tax` varchar(255) NOT NULL,
  `description` varchar(255) NOT NULL,
  `mark` varchar(255) NOT NULL,
  `percentage` int(11) NOT NULL,
  `roundoff` varchar(255) NOT NULL,
  `currency` varchar(255) NOT NULL,
  `status` longtext NOT NULL,
  `itemtable_id` bigint(20) DEFAULT NULL,
  `user_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `zohoapp_pricelist`
--

INSERT INTO `zohoapp_pricelist` (`id`, `name`, `types`, `tax`, `description`, `mark`, `percentage`, `roundoff`, `currency`, `status`, `itemtable_id`, `user_id`) VALUES
(1, 'price01', 'sales', 'mark', 'sales ', 'Markdown', 5, 'Never Mind', 'INR', 'active', NULL, 14);

-- --------------------------------------------------------

--
-- Table structure for table `zohoapp_project`
--

CREATE TABLE `zohoapp_project` (
  `id` bigint(20) NOT NULL,
  `name` varchar(100) NOT NULL,
  `description` longtext NOT NULL,
  `active` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `zohoapp_project1`
--

CREATE TABLE `zohoapp_project1` (
  `id` bigint(20) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `desc` varchar(255) DEFAULT NULL,
  `billing` varchar(255) DEFAULT NULL,
  `rateperhour` varchar(255) DEFAULT NULL,
  `budget` varchar(255) DEFAULT NULL,
  `active` tinyint(1) NOT NULL,
  `comment` varchar(255) DEFAULT NULL,
  `c_name_id` bigint(20) DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `zohoapp_project1`
--

INSERT INTO `zohoapp_project1` (`id`, `name`, `desc`, `billing`, `rateperhour`, `budget`, `active`, `comment`, `c_name_id`, `user_id`) VALUES
(4, 'PEPSI', 'erfregv', 'Based on staff hours', '', 'Total project hours', 0, NULL, 4, 3),
(7, 'zip books', 'accounting software', 'Based on staff hours', '', 'Hours per staff', 0, 'continue\npresent work', 12, 14),
(8, 'vyapar', 'accounting software', 'Based on project hours', '4000', 'Total project hours', 1, 'processing work', 14, 14),
(9, 'Zipbooks', 'accounting software latest ', 'Based on project hours', '70000', 'Total project hours', 1, NULL, 14, 14),
(10, 'Xpill Zoho', 'marketing software', 'Fixed cost for project', '70000', 'Total budget cost', 1, NULL, 13, 14),
(11, 'kausalliya R', '324', 'Based on project hours', '500', 'Total project hours', 1, NULL, 5, 33),
(12, 'kausalliya R', '324', 'Based on project hours', '900', 'Total budget cost', 1, NULL, 2, 33),
(13, 'Z1 SOFTWARE', 'marketing software', 'Fixed cost for project', '8000', 'Total budget cost', 1, NULL, 11, 14),
(14, 'karthi', '324', 'Based on project hours', '600', 'Total project hours', 1, NULL, 2, 33),
(16, 'Z1 Accounting ', 'accounting software', 'Fixed cost for project', '75800', 'Total budget cost', 1, NULL, 14, 14);

-- --------------------------------------------------------

--
-- Table structure for table `zohoapp_purchase`
--

CREATE TABLE `zohoapp_purchase` (
  `id` bigint(20) NOT NULL,
  `Account_type` varchar(255) NOT NULL,
  `Account_name` longtext NOT NULL,
  `Acount_code` longtext NOT NULL,
  `Account_desc` longtext NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `zohoapp_purchase`
--

INSERT INTO `zohoapp_purchase` (`id`, `Account_type`, `Account_name`, `Acount_code`, `Account_desc`) VALUES
(1, 'EXPENCES', 'Advertising & Markting', '', 'Advertsing Exp'),
(2, 'EXPENCES', 'Debit Charge', '', 'Debited Exp'),
(3, 'EXPENCES', 'Labour Charge', '', 'Labour Exp'),
(4, 'EXPENCES', 'Raw Meterials', '', 'Raw Meterials Exp'),
(5, 'EXPENCES', 'Automobile Expense', '', 'Automobile Expense'),
(6, 'EXPENCES', 'Bad Debt', '', 'Bad Debt'),
(7, 'EXPENCES', 'Bank Fees and Charges', '', 'Bank Fees and Charges'),
(8, 'EXPENCES', 'Consultant Expense', '', 'Consultant Expense'),
(9, 'EXPENCES', 'Credit card Charges', '', 'Credit card Charges'),
(10, 'EXPENCES', 'Depreciation Charges', '', 'Depreciation Charges'),
(11, 'EXPENCES', 'IT and Internet Expense', '', 'IT and Internet Expense'),
(12, 'EXPENCES', 'Janitorial Expense', '', 'Janitorial Expense'),
(13, 'EXPENCES', 'Lodging', '', 'Lodging'),
(14, 'EXPENCES', 'Meals and Entertinment', '', 'Meals and Entertinment'),
(15, 'EXPENCES', 'Office Supplies', '', 'Office Supplies'),
(16, 'EXPENCES', 'Other Expenses', '', 'Other Expenses'),
(17, 'EXPENCES', 'Postage', '', 'Postage'),
(18, 'EXPENCES', 'Printing and sationary', '', 'Printing and sationary'),
(19, 'EXPENCES', 'Rent Expenses', '', 'Rent Expenses'),
(20, 'EXPENCES', 'Repair and maintenance', '', 'Repair and maintenance'),
(21, 'EXPENCES', 'Salaries and Employee wages', '', 'Salaries and Employee wages'),
(22, 'EXPENCES', 'Telephonic Expenses', '', 'Telephonic Expenses'),
(23, 'EXPENCES', 'Travel Expenses', '', 'Travel Expenses'),
(24, 'EXPENCES', 'Uncategorized', '', 'Uncategorized'),
(25, 'EXPENCES', 'Contract Assets', '', 'Contract Assets'),
(26, 'EXPENCES', 'Depreciation and Amoritisation', '', 'Depreciation and Amoritisation'),
(27, 'EXPENCES', 'Merchandise', '', 'Merchandise'),
(28, 'EXPENCES', 'Raw material and Consumables', '', 'Raw material and Consumables'),
(29, 'EXPENCES', 'Transportation Expenses', '', 'Transportation Expenses'),
(30, 'Cost Of Goods Sold', 'Cost Of Goods Sold', '', 'Cost Of Goods Sold'),
(31, 'Cost Of Goods Sold', 'Job Costing', '', 'Job Costing'),
(32, 'Cost Of Goods Sold', 'Labour', '', 'Labour'),
(33, 'Cost Of Goods Sold', 'Materials', '', 'Materials'),
(34, 'Cost Of Goods Sold', 'Subcontractor', '', 'Subcontractor'),
(35, 'Fixed Asset', 'Furniture and Equipment', '', 'Furniture and Equipment');

-- --------------------------------------------------------

--
-- Table structure for table `zohoapp_purchasebillitems`
--

CREATE TABLE `zohoapp_purchasebillitems` (
  `id` bigint(20) NOT NULL,
  `item_name` varchar(100) DEFAULT NULL,
  `account` varchar(100) DEFAULT NULL,
  `quantity` int(11) DEFAULT NULL,
  `rate` double DEFAULT NULL,
  `tax_percentage` int(11) DEFAULT NULL,
  `amount` double DEFAULT NULL,
  `purchase_bill_id` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `zohoapp_purchasebillitems`
--

INSERT INTO `zohoapp_purchasebillitems` (`id`, `item_name`, `account`, `quantity`, `rate`, `tax_percentage`, `amount`, `purchase_bill_id`) VALUES
(5, 'book', 'Accounts Payable', 9, 1550, 5, 13950, 1),
(6, 'pen', 'TDS Receivable', 10, 550, 28, 5500, 1),
(7, 'pen', 'GST TCS Receivable', 13, 550, 5, 7150, 3),
(8, 'Dry fruits', 'Accounts Payable', 8, 900, 12, 7200, 4),
(9, 'Dry fruits', 'Accounts Payable', 8, 900, 12, 7200, 4),
(14, 'book', 'Accounts Receivable', 19, 1550, 5, 29450, 5),
(15, 'book', 'TDS Receivable', 16, 1550, 5, 24800, 5),
(20, 'Dry fruits', 'Accounts Payable', 4, 900, 5, 3600, 8),
(21, 'hair products', 'Accounts Payable', 12, 900, 18, 10800, 8),
(25, 'Dry fruits', 'Accounts Payable', 3, 900, 12, 2700, 6),
(26, 'Dry fruits', 'Accounts Payable', 3, 900, 12, 2700, 6),
(27, 'Dry fruits', 'Select Account', 9, 900, 12, 8100, 9),
(32, 'hair products', 'Accounts Payable', 3, 900, 18, 2700, 11),
(33, 'hair products', 'Accounts Payable', 3, 900, 18, 2700, 11),
(34, 'Dry fruits', 'Accounts Payable', 88, 900, 28, 79200, 12),
(36, 'hair products', 'Accounts Receivable', 6, 900, 12, 5400, 13),
(37, 'hair products', 'Accounts Payable', 6, 900, 12, 5400, 13),
(38, 'book', 'Input IGST', 7, 1550, 5, 10850, 14),
(39, 'book', 'Sales to Customers(Cash)', 8, 1550, 5, 12400, 15),
(40, 'book', 'Input SGST', 15, 1550, 18, 23250, 16),
(41, 'pen', 'Accounts Payable', 4, 80, 5, 320, 17),
(43, 'Pen', 'Accounts Payable', 10, 55, 3, 550, 18),
(44, 'Dry fruits', 'Accounts Receivable', 6, 900, 12, 5400, 19),
(45, 'powder items', 'Accounts Receivable', 89, 200, 12, 17800, 20),
(46, 'Dosa pan', 'Accounts Payable', 8, 900, 12, 7200, 20),
(47, 'Select Items', 'Select Account', 0, 0, 0, 0, 21),
(48, 'Pen', 'Input IGST', 1, 29000, 3, 29000, 22);

-- --------------------------------------------------------

--
-- Table structure for table `zohoapp_purchasebills`
--

CREATE TABLE `zohoapp_purchasebills` (
  `id` bigint(20) NOT NULL,
  `customer_name` varchar(100) DEFAULT NULL,
  `customer_email` varchar(100) DEFAULT NULL,
  `place_of_supply` varchar(100) DEFAULT NULL,
  `vendor_name` varchar(100) DEFAULT NULL,
  `vendor_email` varchar(100) DEFAULT NULL,
  `source_of_supply` varchar(100) DEFAULT NULL,
  `bill_no` varchar(100) DEFAULT NULL,
  `order_number` varchar(100) DEFAULT NULL,
  `bill_date` date DEFAULT NULL,
  `due_date` date DEFAULT NULL,
  `payment_terms` varchar(100) DEFAULT NULL,
  `sub_total` double DEFAULT NULL,
  `igst` double DEFAULT NULL,
  `sgst` double DEFAULT NULL,
  `cgst` double DEFAULT NULL,
  `tax_amount` double DEFAULT NULL,
  `shipping_charge` double DEFAULT NULL,
  `discount` double DEFAULT NULL,
  `total` double DEFAULT NULL,
  `status` varchar(100) DEFAULT NULL,
  `attachment` varchar(100) DEFAULT NULL,
  `comments` varchar(100) DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  `vendor_gst_no` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `zohoapp_purchasebills`
--

INSERT INTO `zohoapp_purchasebills` (`id`, `customer_name`, `customer_email`, `place_of_supply`, `vendor_name`, `vendor_email`, `source_of_supply`, `bill_no`, `order_number`, `bill_date`, `due_date`, `payment_terms`, `sub_total`, `igst`, `sgst`, `cgst`, `tax_amount`, `shipping_charge`, `discount`, `total`, `status`, `attachment`, `comments`, `user_id`, `vendor_gst_no`) VALUES
(1, 'Mrs. sumayya hgggnn', '123@gmail.com', '[JK] Jammu and Kashmir', 'Mr. haris dvsvds', 'aa@gmail.com', '[KL] Kerala', 'Bill-001', '2314', '2023-08-17', '2023-09-16', '30', 19450, 2237.5, 0, 0, 2237.5, 12, 122, 21687.5, 'Draft', 'image/ALTOS_CORE_-_Google_Chrome_17-06-2023_22_55_13.png', 'cemmented', 4, NULL),
(3, 'Mrs. sumayya hgggnn', '123@gmail.com', '[JK] Jammu and Kashmir', 'haris dvsvds', 'aa@gmail.com', '[KL] Kerala', 'Bill-002', '24234', '2023-08-17', '2023-09-16', '30', 7150, 357.5, 0, 0, 357.5, 0, 0, 7507.5, 'Draft', '', NULL, 4, NULL),
(4, 'Mr.Venu Gopal', 'aj123@gmail.com', '[LD] Lakshadweep', 'Mr. Roja joyson', 'Roja@gmail.com', '[KL] Kerala', 'Bill-001', '1', '2023-08-02', '2023-09-01', '30', 14400, 1728, 0, 0, 1728, 800, 0, 16928, 'Draft', '', 'print\r\nsave\r\n', 14, NULL),
(5, 'Mr. anil sdf', '123@gmail.com', '[JK] Jammu and Kashmir', 'haris dvsvds', 'aa@gmail.com', '[KL] Kerala', 'Bill-004', '3534', '2023-08-19', '2023-09-18', '30', 54250, 2712.5, 0, 0, 2712.5, 100, 200, 56862.5, 'Draft', '', NULL, 4, NULL),
(6, 'Mr. Athira Babu', 'aj123@gmail.com', '[LD] Lakshadweep', 'Roja joyson', 'Roja@gmail.com', '[KL] Kerala', 'Bill-006', '6', '2023-08-01', '2023-08-31', '30', 5400, 648, 0, 0, 648, 0, 0, 6048, 'Draft', '', NULL, 14, NULL),
(8, 'Mr. Athira Babu', 'aj123@gmail.com', '[LD] Lakshadweep', 'Roja joyson', 'Roja@gmail.com', '[KL] Kerala', 'Bill-005', '7', '2023-08-01', '2023-08-31', '30', 14400, 2124, 0, 0, 2124, 100, 524, 16100, 'Draft', '', 'dsg', 14, NULL),
(9, 'Mr. Krithika Raghav', 'krithi@gmail.com', '[KL] Kerala', 'Devika Menon', 'devika@gmail.com', '[KL] Kerala', 'Bill-002', '2', '2023-08-01', '2023-08-03', 'Net 80', 8100, 0, 486, 486, 972, 0, 0, 9072, 'Draft', '', NULL, 14, NULL),
(11, 'Mr. Krithika Raghav', 'krithi@gmail.com', '[KL] Kerala', 'Devika Menon', 'devika@gmail.com', '[KL] Kerala', 'Bill-0011', '12', '2023-08-21', '2023-09-05', '15', 5400, 0, 486, 486, 972, 0, 0, 6372, 'Draft', '', NULL, 14, NULL),
(12, 'Mr. Nandu Jaykumar', 'aambro@gmail.com', '[KL] Kerala', 'Mr. Fazil Rahuman', 'fazil@gmail.com', '[KL] Kerala', 'Bill-0012', '12', '2023-08-21', '2023-09-20', '30', 79200, 0, 11088, 11088, 22176, 0, 0, 101376, 'Draft', '', NULL, 14, NULL),
(13, 'Mr. Krithika Raghav', 'krithi@gmail.com', '[KL] Kerala', 'Fazil Rahuman', 'fazil@gmail.com', '[KL] Kerala', 'Bill-0013', '13', '2023-08-22', '2023-08-22', '0', 10800, 0, 648, 648, 1296, 100, 148, 12096, 'Draft', '', NULL, 14, NULL),
(14, 'Mr. honey fbfgb', '123@gmail.com', '[KL] Kerala', 'haris dvsvds', 'aa@gmail.com', '[KL] Kerala', 'Bill-006', '3352', '2023-08-22', '2023-09-06', '15', 10850, 0, 271.25, 271.25, 542.5, 34, 435, 10991.5, 'Draft', '', NULL, 4, NULL),
(15, 'Mrs. sumayya hgggnn', '123@gmail.com', '[JK] Jammu and Kashmir', 'asha dff', 'ea@gmail.com', '[KL] Kerala', 'Bill-0015', '545645', '2023-08-22', '2023-11-10', '80', 12400, 620, 0, 0, 620, 0, 0, 13020, 'Draft', '', NULL, 4, NULL),
(16, 'Mr. anil sdf', '123@gmail.com', '[JK] Jammu and Kashmir', 'Mrs. neethu fjhg', 'ea@gmail.com', '[KL] Kerala', 'Bill-0016', '43535', '2023-08-22', '2023-09-06', '15', 23250, 4185, 0, 0, 4185, 23, 12, 27446, 'Save', '', NULL, 4, 'undefined'),
(17, 'Mr. Athira Babu', 'aj123@gmail.com', '[LD] Lakshadweep', 'faizal rahman', 'faizal@gmail.com', '[KL]-Kerala', 'Bill-0014', '14', '2023-08-22', '2023-09-21', '30', 320, 16, 0, 0, 16, 0, 0, 336, 'Save', '', NULL, 14, 'undefined'),
(18, 'Mr. Sam j', 'tcs@gmail.com', '[KL] Kerala', 'Alex Jhonson', 'tvs@gmail.com', '[KL] Kerala', 'Bill-001', '001', '2023-08-25', '2023-09-09', '15', 550, 0, 8.25, 8.25, 16.5, 100, 66.5, 600, 'Draft', 'image/210714-sony-xperia-1-iii-malaysia-08.jpg', '', 44, NULL),
(19, 'Mr Soji lal', 'sojo@gmail.com', '[KL]-Kerala', 'Jiji Hari', 'jijihari@gmail.com', '[KL]-Kerala', 'Bill-0019', '10', '2023-09-01', '2023-09-01', '0', 5400, 0, 324, 324, 648, 100, 0, 6148, 'Draft', '', NULL, 14, NULL),
(20, 'Mr Soji lal', 'sojo@gmail.com', '[KL]-Kerala', 'Jiji Hari', 'jijihari@gmail.com', '[KL]-Kerala', 'Bill-0020', '23', '2023-09-01', '2023-09-01', '0', 25000, 0, 1500, 1500, 3000, 0, 0, 28000, 'Draft', '', NULL, 14, NULL),
(21, 'Ms. chinnu s', 'chinnu@gmail.com', '[GJ] Gujarat', 'Select Vendor', 'haritha@gmail.com', '[KL] Kerala', 'Bill-001', '4', '2023-09-01', '2023-09-26', '', 0, 0, 0, 0, 0, 0, 0, 0, 'Save', '', NULL, 48, '29ASDFG1234Z1S2'),
(22, 'Ms. chinnu s', 'chinnu@gmail.com', '[GJ] Gujarat', 'Ms. hari b', 'hari@gmail.com', '[KA] Karnataka', 'Bill-0022', '2', '2023-09-01', '2023-09-15', '', 29000, 870, 0, 0, 870, 1, 1, 29870, 'Save', '', NULL, 48, '29ASDER1234D3D6');

-- --------------------------------------------------------

--
-- Table structure for table `zohoapp_purchase_order`
--

CREATE TABLE `zohoapp_purchase_order` (
  `id` bigint(20) NOT NULL,
  `vendor_name` varchar(100) DEFAULT NULL,
  `vendor_mail` varchar(100) DEFAULT NULL,
  `vendor_gst_traet` varchar(100) DEFAULT NULL,
  `vendor_gst_no` varchar(100) DEFAULT NULL,
  `Org_name` varchar(100) DEFAULT NULL,
  `Org_address` varchar(100) DEFAULT NULL,
  `Org_gst` varchar(100) DEFAULT NULL,
  `Org_street` varchar(100) DEFAULT NULL,
  `Org_state` varchar(100) DEFAULT NULL,
  `Org_city` varchar(100) DEFAULT NULL,
  `typ` varchar(100) DEFAULT NULL,
  `Org_mail` varchar(100) DEFAULT NULL,
  `customer_name` varchar(100) DEFAULT NULL,
  `customer_mail` varchar(100) DEFAULT NULL,
  `customer_address` varchar(100) DEFAULT NULL,
  `customer_street` varchar(100) DEFAULT NULL,
  `customer_state` varchar(100) DEFAULT NULL,
  `customer_city` varchar(100) DEFAULT NULL,
  `Pur_no` varchar(100) DEFAULT NULL,
  `source_supply` varchar(100) DEFAULT NULL,
  `ref` varchar(100) DEFAULT NULL,
  `Ord_date` date DEFAULT NULL,
  `exp_date` date DEFAULT NULL,
  `payment_terms` varchar(100) DEFAULT NULL,
  `sub_total` double DEFAULT NULL,
  `igst` double DEFAULT NULL,
  `cgst` double DEFAULT NULL,
  `sgst` double DEFAULT NULL,
  `tax_amount` double DEFAULT NULL,
  `shipping_charge` double DEFAULT NULL,
  `grand_total` double DEFAULT NULL,
  `note` varchar(255) DEFAULT NULL,
  `document` varchar(100) DEFAULT NULL,
  `comments` varchar(255) DEFAULT NULL,
  `term` varchar(255) DEFAULT NULL,
  `status` varchar(255) NOT NULL,
  `company_id` bigint(20) DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `zohoapp_purchase_order`
--

INSERT INTO `zohoapp_purchase_order` (`id`, `vendor_name`, `vendor_mail`, `vendor_gst_traet`, `vendor_gst_no`, `Org_name`, `Org_address`, `Org_gst`, `Org_street`, `Org_state`, `Org_city`, `typ`, `Org_mail`, `customer_name`, `customer_mail`, `customer_address`, `customer_street`, `customer_state`, `customer_city`, `Pur_no`, `source_supply`, `ref`, `Ord_date`, `exp_date`, `payment_terms`, `sub_total`, `igst`, `cgst`, `sgst`, `tax_amount`, `shipping_charge`, `grand_total`, `note`, `document`, `comments`, `term`, `status`, `company_id`, `user_id`) VALUES
(1, 'ramu M 2', ' ramu@gmail.com', ' unregistered Business', ' cx', '', '', '', '', '', '', NULL, '', '', '', '', '', '', '', 'PO-s', '[KL] Kerala', 'sdfds', '2023-07-14', '2023-07-24', '3 net 30 30', 776, 0, 19.4, 19.4, 38.8, 0, 814.8, '', '', NULL, '', 'Draft', 33, 33),
(2, 'Amal Devan 4', '', '', '', '', '', '', '', '', '', 'Customer', '', 'Mr. fs dsg ', 'da@gmail.com', 'HOTEL GAZALA,PALAKKAD,Kerala,678001', 'HOTEL GAZALA,PALAKKAD,Kerala,678001', 'Kerala', 'PALAKKAD', 'PO-', '[KL] Kerala', 'SXS3333SDCDS', '2023-07-27', '2023-07-27', '3 net 30 30', 19800, 0, 495, 495, 990, 0, 20790, '', '', NULL, '', 'Draft', 3, 3);

-- --------------------------------------------------------

--
-- Table structure for table `zohoapp_purchase_order_items`
--

CREATE TABLE `zohoapp_purchase_order_items` (
  `id` bigint(20) NOT NULL,
  `item` varchar(100) DEFAULT NULL,
  `account` varchar(100) DEFAULT NULL,
  `quantity` int(11) DEFAULT NULL,
  `rate` double DEFAULT NULL,
  `tax` varchar(100) DEFAULT NULL,
  `discount` double DEFAULT NULL,
  `amount` double DEFAULT NULL,
  `PO_id` bigint(20) DEFAULT NULL,
  `company_id` bigint(20) DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `zohoapp_purchase_order_items`
--

INSERT INTO `zohoapp_purchase_order_items` (`id`, `item`, `account`, `quantity`, `rate`, `tax`, `discount`, `amount`, `PO_id`, `company_id`, `user_id`) VALUES
(1, 'book', 'Accounts Payable', 2, 244, '5', 0, 488, 1, 33, 33),
(2, 'book', 'Accounts Payable', 2, 244, '5', 200, 288, 1, 33, 33),
(3, 'barbie dolls', 'GST TCS Receivable', 100, 100, '5', 100, 9900, 2, 3, 3),
(4, 'barbie dolls', 'GST TCS Receivable', 100, 100, '5', 100, 9900, 2, 3, 3);

-- --------------------------------------------------------

--
-- Table structure for table `zohoapp_recurring_bills`
--

CREATE TABLE `zohoapp_recurring_bills` (
  `id` bigint(20) NOT NULL,
  `profile_name` varchar(100) DEFAULT NULL,
  `source_supply` varchar(100) DEFAULT NULL,
  `vendor_name` varchar(100) DEFAULT NULL,
  `customer_name` varchar(100) DEFAULT NULL,
  `repeat_every` varchar(100) DEFAULT NULL,
  `start_date` date DEFAULT NULL,
  `end_date` date DEFAULT NULL,
  `payment_terms` varchar(100) DEFAULT NULL,
  `sub_total` double DEFAULT NULL,
  `igst` double DEFAULT NULL,
  `cgst` double DEFAULT NULL,
  `sgst` double DEFAULT NULL,
  `tax_amount` double DEFAULT NULL,
  `shipping_charge` double DEFAULT NULL,
  `adjustment` double DEFAULT NULL,
  `grand_total` double DEFAULT NULL,
  `note` varchar(255) DEFAULT NULL,
  `document` varchar(100) DEFAULT NULL,
  `comments` varchar(255) DEFAULT NULL,
  `company_id` bigint(20) DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  `vendor_gst_number` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `zohoapp_recurring_bills`
--

INSERT INTO `zohoapp_recurring_bills` (`id`, `profile_name`, `source_supply`, `vendor_name`, `customer_name`, `repeat_every`, `start_date`, `end_date`, `payment_terms`, `sub_total`, `igst`, `cgst`, `sgst`, `tax_amount`, `shipping_charge`, `adjustment`, `grand_total`, `note`, `document`, `comments`, `company_id`, `user_id`, `vendor_gst_number`) VALUES
(2, 'kaw', '[JH] Jharkhand', '2 ramu M', '2 Mr. devika N', '1 Week', '2023-07-24', '2023-07-24', '15', 21709, 2572.46, NULL, NULL, 2572.46, 0, NULL, 24281.46, '', '', NULL, 33, 33, NULL),
(3, 'kaw', '[JH] Jharkhand', '2 ramu M', '2 Mr. devika N', '1 Week', '2023-07-24', '2023-07-24', '15', 21669, 2569.06, NULL, NULL, 2569.06, 0, NULL, 24238.06, '', '', 'as', 33, 33, NULL),
(4, 'ffff', '[GA] Goa', '7 sindhu vv', '6 Ms. dd dd', '1 Week', '2023-08-02', '2023-07-29', '60', 900, 108, NULL, NULL, 108, 10, NULL, 1018, 'gg', '', NULL, 35, 35, NULL),
(5, 'Rosilint', '[KL] Kerala', '9 ROSILINT DAVIS 9', '8 amal DAVIS', '1 Month', '2023-06-30', '2023-07-14', '45', 16, 0.48, NULL, NULL, 0.48, 4, NULL, 23.48, 'nothing', 'doc/recurring_bills/amal_work_acceptance.docx', NULL, 26, 26, NULL),
(6, 'Rosilint', '[JH] Jharkhand', '10 akhil DAVIS 10', '7 akhilDAVIS', '1 Month', '2023-07-25', '2023-07-30', '45', 41298, 11563.44, NULL, NULL, 11563.44, 2, NULL, 52875.44, 'nil', 'doc/recurring_bills/amal_work_acceptance_9ToyEZL.docx', 'ok', 26, 26, NULL),
(7, 'eretrr', '[KL] Kerala', '18 haris dvsvds', '19 Mr. anil sdf', '1 Week', '2023-08-17', '2023-08-19', '30', 15256, NULL, 930, 930, NULL, 0, NULL, 17116, '', '', 'commmented', 4, 4, NULL),
(8, 'eretrr', '[JH] Jharkhand', '18 haris dvsvds', '17 Mrs. sumayya hgggnn', '1 Week', '2023-08-17', NULL, 'recpt', 13378, 668.9000000000001, NULL, NULL, 668.9000000000001, 0, NULL, 14046.9, '', '', NULL, 4, 4, NULL),
(9, 'Sample', '[KA] Karnataka', '22 Ravi Das', '23 Mr. Seema Har', '2 Weeks', '2023-07-31', '2023-08-12', '15', 1400, 70, NULL, NULL, 70, 100, NULL, 1570, 'note1', '', NULL, 23, 23, NULL),
(10, 'Invoice', '[KL] Kerala', '36 Jiji Hari', '55 Mr shamnad Sahir', '1 Week', '2023-09-01', '2023-09-30', '15', 53900, NULL, 3234, 3234, NULL, 0, NULL, 60368, '', '', NULL, 14, 14, NULL),
(11, 'invoice 4', '[MP] Madhya Predesh', '36 Jiji Hari', '62 Mr. Jayalal Mohan', '1 Week', '2023-09-01', NULL, 'recpt', 2400, 120, NULL, NULL, 120, 0, NULL, 2520, '', '', NULL, 14, 14, NULL),
(12, 'Hari', '[KL] Kerala', '38 hari b', '63 Ms. chinnu s', '2 Months', '2023-09-04', '2023-09-05', '15', 29998, NULL, NULL, NULL, NULL, 1, NULL, 29999, '', '', NULL, 48, 48, ' 29ASDER1234D3D6'),
(13, 'invoice 7', '[KL] Kerala', '39 Abhiram Varma', '62 Mr. Jayalal Mohan', '1 Month', '2023-09-01', '2023-09-30', '30', 3100, NULL, 77.5, 77.5, NULL, 100, NULL, 3355, '', '', NULL, 14, 14, ' 32AAPCK6755G1Z1');

-- --------------------------------------------------------

--
-- Table structure for table `zohoapp_recurring_bills_items`
--

CREATE TABLE `zohoapp_recurring_bills_items` (
  `id` bigint(20) NOT NULL,
  `item` varchar(100) DEFAULT NULL,
  `account` varchar(100) DEFAULT NULL,
  `quantity` int(11) DEFAULT NULL,
  `rate` double DEFAULT NULL,
  `tax` double DEFAULT NULL,
  `discount` double DEFAULT NULL,
  `amount` double DEFAULT NULL,
  `company_id` bigint(20) DEFAULT NULL,
  `recur_bills_id` bigint(20) DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `zohoapp_recurring_bills_items`
--

INSERT INTO `zohoapp_recurring_bills_items` (`id`, `item`, `account`, `quantity`, `rate`, `tax`, `discount`, `amount`, `company_id`, `recur_bills_id`, `user_id`) VALUES
(2, 'mobile', 'Prepaid Expences', 1, 21243, 12, 20, 21223, 33, 3, 33),
(3, 'book', 'Accounts Payable', 2, 233, 5, 20, 446, 33, 3, 33),
(4, 'lap', 'Reverse Charge Input Tax but not Due', 1, 1000, 12, 100, 900, 35, 4, 35),
(5, 'wed', 'GST TDS Receivable', 2, 23, 3, 30, 16, 26, 5, 26),
(6, 'wed', 'Sales to Customers(Cash)', 12, 3444, 28, 30, 41298, 26, 6, 26),
(7, 'pen', 'Accounts Receivable', 11, 500, 12, 122, 5378, 4, 7, 4),
(8, 'book', 'Accounts Receivable', 20, 500, 12, 122, 9878, 4, 7, 4),
(9, 'book', 'TDS Receivable', 9, 1500, 5, 122, 13378, 4, 8, 4),
(10, 'Item 1', 'Input SGST', 2, 1000, 5, 600, 1400, 23, 9, 23),
(11, 'Dry fruits', 'Accounts Receivable', 45, 1200, 12, 100, 53900, 14, 10, 14),
(12, 'charging tab', 'Accounts Payable', 2, 1200, 5, 0, 2400, 14, 11, 14),
(13, 'Pen', 'Input IGST', 1, 30000, 0, 2, 29998, 48, 12, 48),
(14, 'powder items', 'Input CGST', 8, 400, 5, 100, 3100, 14, 13, 14);

-- --------------------------------------------------------

--
-- Table structure for table `zohoapp_recurring_invoice`
--

CREATE TABLE `zohoapp_recurring_invoice` (
  `id` bigint(20) NOT NULL,
  `cname` varchar(255) NOT NULL,
  `p_supply` varchar(255) NOT NULL,
  `entry_type` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `order_num` varchar(255) NOT NULL,
  `every` varchar(255) NOT NULL,
  `start` date NOT NULL,
  `end` date NOT NULL,
  `terms` varchar(255) NOT NULL,
  `cust_note` longtext NOT NULL,
  `conditions` longtext NOT NULL,
  `sub_total` double DEFAULT NULL,
  `igst` double DEFAULT NULL,
  `sgst` double DEFAULT NULL,
  `cgst` double DEFAULT NULL,
  `tax_amount` double DEFAULT NULL,
  `shipping_charge` double DEFAULT NULL,
  `adjustment` double DEFAULT NULL,
  `total` double DEFAULT NULL,
  `cust_name_id` bigint(20) DEFAULT NULL,
  `items_id` bigint(20) DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  `cadrs` varchar(255) DEFAULT NULL,
  `cemail` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `zohoapp_recurring_invoice`
--

INSERT INTO `zohoapp_recurring_invoice` (`id`, `cname`, `p_supply`, `entry_type`, `name`, `order_num`, `every`, `start`, `end`, `terms`, `cust_note`, `conditions`, `sub_total`, `igst`, `sgst`, `cgst`, `tax_amount`, `shipping_charge`, `adjustment`, `total`, `cust_name_id`, `items_id`, `user_id`, `cadrs`, `cemail`) VALUES
(1, 'Mr. devika N', 'kerala', 'invoice', 'kavi', '324', '3 months', '2023-07-15', '2023-07-24', 'Net 45', '', '', 35078, 6183.72, 0, 0, 6183.72, 0, 0, 41261.72, NULL, NULL, 33, NULL, NULL),
(2, 'Mrs.priya krishna', 'kerala', 'bill', 'priya', 'AA100', '1day', '2023-07-24', '2023-07-27', 'Net10', 'testing', 'testing', 8963, 1232, 0, 0, 1232, 10, 10, 10215, NULL, NULL, 17, NULL, NULL),
(3, 'Mr. Athira Babu', 'kerala', 'bill', 'RC 01', '1', '6 month', '2023-08-01', '2023-08-21', 'Net 30', '', '', 3500, 432, 0, 0, 432, 100, 0, 4032, NULL, NULL, 14, NULL, NULL),
(4, 'Mrs.priya krishna', 'Kerala', 'invoice', 'Shankar', 'AA100', '2months', '2023-08-17', '2023-08-30', 'Net12', 'testing', 'testing', 49950, 0, 3000, 3000, 6000, 100, 100, 56150, NULL, NULL, 17, NULL, NULL),
(6, 'Mrs.priya krishna', '[JH]-Jharkand', 'bill', 'greeshma', 'HY653', '1day', '2023-09-12', '2023-09-29', 'Net 30', 'hj', 'lkj', 59935, 2935, 0, 0, 2935, 56, 67, 62993, NULL, NULL, 17, ' 65668678', 'minu@gmail.com'),
(7, 'Mr. Krithika Raghav', 'Kerala', 'invoice', 'Invoice 07', '7', 'Month', '2023-09-01', '2023-09-30', 'Net 30', '', '', 1700, 0, 58, 58, 116, 100, -16, 1900, NULL, NULL, 14, 'Krithi fashion9995796534', 'krithi@gmail.com'),
(8, 'Mr. Krithika Raghav', 'Ladakh', 'invoice', 'invoice', '6', '2 weeks', '2023-09-01', '2023-09-05', 'Net10', '', '', 3400, 75, 0, 0, 75, 100, 0, 3575, NULL, NULL, 14, 'Krithi fashion9995796534', 'krithi@gmail.com'),
(9, 'Mr. Krithika Raghav', 'Kerala', 'invoice', 'invoice 9', '9', '2 years', '2023-08-04', '2023-09-30', 'Net 30', '', '', 4000, 0, 360, 360, 720, 0, 0, 4720, NULL, NULL, 14, 'Krithi fashion9995796534', 'krithi@gmail.com'),
(10, 'Mrs. meena kumari', 'Karnataka', 'invoice', 'jansi', '1232', '2months', '2023-08-01', '2023-09-30', 'Net 45', 'assd', 'addd', 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, 56, 'asdd', 'ssdd@gmail.com'),
(11, 'Mrs. meena kumari', 'Karnataka', 'invoice', 'jansi', '1232', '2months', '2023-08-01', '2023-09-30', 'Net 45', 'assd', 'addd', 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, 56, 'asdd', 'ssdd@gmail.com'),
(12, 'Mrs. meena kumari', 'Karnataka', 'invoice', 'jansi', '1232', '2months', '2023-08-01', '2023-09-30', 'Net 45', 'assd', 'addd', 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, 56, 'asdd', 'ssdd@gmail.com');

-- --------------------------------------------------------

--
-- Table structure for table `zohoapp_recur_itemtable`
--

CREATE TABLE `zohoapp_recur_itemtable` (
  `id` bigint(20) NOT NULL,
  `iname` varchar(255) NOT NULL,
  `quantity` double DEFAULT NULL,
  `rate` double DEFAULT NULL,
  `discount` double DEFAULT NULL,
  `tax` double DEFAULT NULL,
  `amt` double DEFAULT NULL,
  `ri_id` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `zohoapp_recur_itemtable`
--

INSERT INTO `zohoapp_recur_itemtable` (`id`, `iname`, `quantity`, `rate`, `discount`, `tax`, `amt`, `ri_id`) VALUES
(1, 'Dry fruits', 4, 900, 100, 12, 3500, 3),
(2, 'Earings', 10, 5000, 50, 12, 49950, 4),
(5, 'charging tab', 2, 900, 100, 12, 1700, 7),
(6, 'wallpaper', 7, 500, 100, 5, 3400, 8),
(7, 'wallpaper', 8, 500, 0, 18, 4000, 9),
(8, 'sugar', 0, 0, 0, 0, 0, 10),
(9, 'sugar', 0, 0, 0, 0, 0, 11),
(10, 'sugar', 0, 0, 0, 0, 0, 12);

-- --------------------------------------------------------

--
-- Table structure for table `zohoapp_remarks_table`
--

CREATE TABLE `zohoapp_remarks_table` (
  `id` bigint(20) NOT NULL,
  `remarks` varchar(500) NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `vendor_id` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `zohoapp_remarks_table`
--

INSERT INTO `zohoapp_remarks_table` (`id`, `remarks`, `user_id`, `vendor_id`) VALUES
(1, '', 14, 4),
(2, '', 14, 5),
(3, '', 14, 8),
(4, '', 14, 11),
(5, '', 25, 17),
(6, '', 25, 35),
(7, '', 14, 36),
(8, '', 14, 39),
(9, '', 14, 40);

-- --------------------------------------------------------

--
-- Table structure for table `zohoapp_repeat_every`
--

CREATE TABLE `zohoapp_repeat_every` (
  `id` bigint(20) NOT NULL,
  `Terms` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `zohoapp_repeat_every`
--

INSERT INTO `zohoapp_repeat_every` (`id`, `Terms`) VALUES
(1, '1day'),
(2, 'ok'),
(3, '6 month'),
(4, '2months'),
(5, 'Month');

-- --------------------------------------------------------

--
-- Table structure for table `zohoapp_retainerinvoice`
--

CREATE TABLE `zohoapp_retainerinvoice` (
  `id` bigint(20) NOT NULL,
  `retainer_invoice_number` varchar(255) NOT NULL,
  `refrences` varchar(255) NOT NULL,
  `retainer_invoice_date` date NOT NULL,
  `total_amount` varchar(100) NOT NULL,
  `customer_notes` longtext NOT NULL,
  `terms_and_conditions` longtext NOT NULL,
  `is_draft` tinyint(1) NOT NULL,
  `is_sent` tinyint(1) NOT NULL,
  `customer_name_id` bigint(20) NOT NULL,
  `user_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `zohoapp_retainerinvoice`
--

INSERT INTO `zohoapp_retainerinvoice` (`id`, `retainer_invoice_number`, `refrences`, `retainer_invoice_date`, `total_amount`, `customer_notes`, `terms_and_conditions`, `is_draft`, `is_sent`, `customer_name_id`, `user_id`) VALUES
(1, 'RET-00001', '11', '2023-08-02', '222222.00', 'sadf', 'asdfsa', 0, 0, 4, 3),
(2, 'RET-00002', '123', '2023-09-05', '1233.00', 'asssd', 'zddd', 1, 0, 22, 56);

-- --------------------------------------------------------

--
-- Table structure for table `zohoapp_retaineritems`
--

CREATE TABLE `zohoapp_retaineritems` (
  `id` bigint(20) NOT NULL,
  `description` longtext NOT NULL,
  `amount` varchar(100) NOT NULL,
  `retainer_id` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `zohoapp_retaineritems`
--

INSERT INTO `zohoapp_retaineritems` (`id`, `description`, `amount`, `retainer_id`) VALUES
(1, 'goods', '111111', 1),
(3, '1111', '111111', 1),
(4, 'asd', '1233', 2);

-- --------------------------------------------------------

--
-- Table structure for table `zohoapp_sales`
--

CREATE TABLE `zohoapp_sales` (
  `id` bigint(20) NOT NULL,
  `Account_type` longtext NOT NULL,
  `Account_name` longtext NOT NULL,
  `Acount_code` longtext NOT NULL,
  `Account_desc` longtext NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `zohoapp_sales`
--

INSERT INTO `zohoapp_sales` (`id`, `Account_type`, `Account_name`, `Acount_code`, `Account_desc`) VALUES
(1, 'INCOME', 'General Income', '', 'salesincome'),
(2, 'INCOME', 'Intrest Income', '', 'salesincome'),
(3, 'INCOME', 'Late fee Income', '', 'salesincome'),
(4, 'INCOME', 'Discount Income', '', 'salesincome'),
(5, 'INCOME', 'Other Charges', '', 'salesincome'),
(6, 'INCOME', 'Shipping Charge', '', 'salesincome');

-- --------------------------------------------------------

--
-- Table structure for table `zohoapp_salesorder`
--

CREATE TABLE `zohoapp_salesorder` (
  `id` bigint(20) NOT NULL,
  `sales_no` varchar(255) DEFAULT NULL,
  `reference` varchar(255) DEFAULT NULL,
  `sales_date` date DEFAULT NULL,
  `ship_date` date DEFAULT NULL,
  `sos` longtext,
  `igst` longtext,
  `cgst` longtext,
  `sgst` longtext,
  `t_tax` double DEFAULT NULL,
  `subtotal` double DEFAULT NULL,
  `grandtotal` double DEFAULT NULL,
  `cxnote` longtext,
  `file` varchar(100) DEFAULT NULL,
  `terms_condition` longtext,
  `status` longtext,
  `customer_id` bigint(20) DEFAULT NULL,
  `terms_id` bigint(20) DEFAULT NULL,
  `sh_charge` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `zohoapp_salesorder`
--

INSERT INTO `zohoapp_salesorder` (`id`, `sales_no`, `reference`, `sales_date`, `ship_date`, `sos`, `igst`, `cgst`, `sgst`, `t_tax`, `subtotal`, `grandtotal`, `cxnote`, `file`, `terms_condition`, `status`, `customer_id`, `terms_id`, `sh_charge`) VALUES
(1, 'SO-01', '1', '2023-08-18', '2023-08-31', '[KL] Kerala', '0.00', '171.00', '171.00', 342, 1900, 2342, '', '/static/images/alt.jpg', '', 'draft', 59, 3, '100'),
(2, 'SO-02', '2', '2023-08-01', '2023-08-31', '[LA] Ladakh', '1920.00', '0.00', '0.00', 1920, 16000, 18020, '', '/static/images/alt.jpg', '', 'draft', 24, 7, '100'),
(3, 'SO-03', '4', '2023-09-01', '2023-09-15', '[KL] Kerala', '0.00', '486.00', '486.00', 972, 5400, 6472, '', '/static/images/alt.jpg', '', 'draft', 25, 9, '100'),
(4, 'SO-04', '5', '2023-09-01', '2023-09-15', '[KA] Karnataka', '414.00', '0.00', '0.00', 414, 2300, 2714, '', '/static/images/alt.jpg', '', 'draft', 62, 1, '0'),
(5, 'SO-05', '5', '2023-09-01', '2023-09-14', '[KL] Kerala', '0.00', '138.00', '138.00', 276, 2300, 2576, 'hjdjj', '/static/images/alt.jpg', 'gyuhijk ugu', 'draft', 24, 2, '0'),
(6, 'SO-07', '7', '2023-09-01', '2023-09-30', '[KL] Kerala', '0.00', '531.00', '531.00', 1062, 5900, 7062, '', '/static/images/alt.jpg', '', 'draft', 25, 3, '100');

-- --------------------------------------------------------

--
-- Table structure for table `zohoapp_sales_item`
--

CREATE TABLE `zohoapp_sales_item` (
  `id` bigint(20) NOT NULL,
  `product` longtext,
  `quantity` int(11) DEFAULT NULL,
  `hsn` longtext,
  `tax` int(11) DEFAULT NULL,
  `total` double DEFAULT NULL,
  `desc` longtext,
  `rate` longtext,
  `sale_id` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `zohoapp_sales_item`
--

INSERT INTO `zohoapp_sales_item` (`id`, `product`, `quantity`, `hsn`, `tax`, `total`, `desc`, `rate`, `sale_id`) VALUES
(1, 'powder items', 5, NULL, 18, 1900, '100', '400', 1),
(2, 'Mat', 9, NULL, 12, 8000, '100', '900', 2),
(3, 'Mat', 9, NULL, 12, 8000, '100', '900', 2),
(6, 'powder items', 7, NULL, 18, 2700, '100', '400', 3),
(7, 'powder items', 7, NULL, 18, 2700, '100', '400', 3),
(8, 'spoon', 6, NULL, 18, 2300, '100', '400', 4),
(9, 'charging tab', 2, NULL, 12, 2300, '100', '1200', 5),
(10, 'charging tab', 5, NULL, 18, 5900, '100', '1200', 6);

-- --------------------------------------------------------

--
-- Table structure for table `zohoapp_sample_table`
--

CREATE TABLE `zohoapp_sample_table` (
  `id` bigint(20) NOT NULL,
  `item_name` varchar(255) NOT NULL,
  `price` int(11) NOT NULL,
  `cust_rate` double NOT NULL,
  `pl_id` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `zohoapp_sample_table`
--

INSERT INTO `zohoapp_sample_table` (`id`, `item_name`, `price`, `cust_rate`, `pl_id`) VALUES
(1, 'sugar', 6000, 0, 1),
(2, 'item3', 1234, 0, 1),
(3, 'baribe doll', 500, 0, 1),
(4, 'table', 5654, 0, 1),
(5, 'obj', 8923, 0, 1),
(6, 'chair', 1000, 0, 1),
(7, 'tab', 1234, 0, 1),
(8, 'Light', 1500, 0, 1);

-- --------------------------------------------------------

--
-- Table structure for table `zohoapp_task`
--

CREATE TABLE `zohoapp_task` (
  `id` bigint(20) NOT NULL,
  `taskname` varchar(255) DEFAULT NULL,
  `taskdes` varchar(255) DEFAULT NULL,
  `taskrph` varchar(255) DEFAULT NULL,
  `billable` varchar(255) DEFAULT NULL,
  `c_name_id` bigint(20) DEFAULT NULL,
  `proj_id` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `zohoapp_task`
--

INSERT INTO `zohoapp_task` (`id`, `taskname`, `taskdes`, `taskrph`, `billable`, `c_name_id`, `proj_id`) VALUES
(5, '', '', '', 'Billed', NULL, 4),
(10, 'Journal', 'modulewise', '600', 'Billed', NULL, 7),
(11, 'modules', 'modules categorised', '800', 'Not Billed', NULL, 7),
(12, 'home', 'page design', '500', 'Not Billed', NULL, 7),
(13, 'home', 'home design', '', 'Billed', NULL, 8),
(14, 'images', 'image design', '', 'Not Billed', NULL, 8),
(15, 'home', '', '', 'Not Billed', NULL, 9),
(16, 'home', 'home design', '', 'Billed', NULL, 10),
(17, 't1', 'dv', '', 'Billed', NULL, 11),
(18, 't1', 'dv', '', 'Billed', NULL, 12),
(19, 'home', 'home design', '', 'Not Billed', NULL, 13),
(20, 't1', 'ertreg', '', 'Billed', NULL, 14);

-- --------------------------------------------------------

--
-- Table structure for table `zohoapp_transactions`
--

CREATE TABLE `zohoapp_transactions` (
  `id` bigint(20) NOT NULL,
  `fromB` varchar(220) DEFAULT NULL,
  `toB` varchar(220) DEFAULT NULL,
  `amount` double DEFAULT NULL,
  `date` date DEFAULT NULL,
  `description` varchar(220) DEFAULT NULL,
  `type` varchar(220) DEFAULT NULL,
  `adjtype` varchar(220) DEFAULT NULL,
  `adjacname` varchar(220) DEFAULT NULL,
  `bank_id` bigint(20) DEFAULT NULL,
  `user_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `zohoapp_transactions`
--

INSERT INTO `zohoapp_transactions` (`id`, `fromB`, `toB`, `amount`, `date`, `description`, `type`, `adjtype`, `adjacname`, `bank_id`, `user_id`) VALUES
(5, '3', 'Cash', -700, '2023-09-04', '', 'Bank To Cash Transfer', '', '', 3, 14),
(6, 'Cash', '3', 9000, '2023-08-29', '', 'Cash To Bank Transfer', '', '', 3, 14),
(7, 'SBI', 'FEDERAL BANK', -8900, '2023-09-01', '', 'Bank To Bank Transfer', '', '', 3, 14),
(8, 'SBI', 'FEDERAL BANK', 8900, '2023-09-01', '', 'Bank To Bank Transfer', '', '', 4, 14),
(9, NULL, '', 12000, '2023-09-04', '', 'Adjust Bank Balance', 'Increase Balance', '3', 3, 14),
(10, '6', 'Cash', -3000, '2023-09-06', '', 'Bank To Cash Transfer', '', '', 6, 38),
(11, 'Cash', '6', 7000, '2023-09-06', '', 'Cash To Bank Transfer', '', '', 6, 38),
(12, 'icic', 'axis', -100, '2023-09-06', '', 'Bank To Bank Transfer', '', '', 6, 38),
(13, 'icic', 'axis', 100, '2023-09-06', '', 'Bank To Bank Transfer', '', '', 8, 38);

-- --------------------------------------------------------

--
-- Table structure for table `zohoapp_unit`
--

CREATE TABLE `zohoapp_unit` (
  `id` bigint(20) NOT NULL,
  `unit` longtext NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `zohoapp_unit`
--

INSERT INTO `zohoapp_unit` (`id`, `unit`) VALUES
(1, 'BOX'),
(2, 'UNIT'),
(3, 'LITRE'),
(4, 'DOZEN'),
(5, 'GRAMS'),
(6, 'KILOGRAMS'),
(7, 'METERS'),
(8, 'TABLETS'),
(9, 'PIECES'),
(10, 'PAIRS'),
(11, 'unit'),
(12, 'Nos'),
(13, 'Bundle'),
(14, 'farenheat'),
(15, 'kl');

-- --------------------------------------------------------

--
-- Table structure for table `zohoapp_usercreate`
--

CREATE TABLE `zohoapp_usercreate` (
  `id` bigint(20) NOT NULL,
  `usernamezz` varchar(255) DEFAULT NULL,
  `emailzz` varchar(255) DEFAULT NULL,
  `projnn_id` bigint(20) DEFAULT NULL,
  `userss_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `zohoapp_usercreate`
--

INSERT INTO `zohoapp_usercreate` (`id`, `usernamezz`, `emailzz`, `projnn_id`, `userss_id`) VALUES
(1, 'user1', 'sdfd@gmail.com', NULL, NULL),
(2, 'user2', 'gfdfgd@gmail.com', NULL, NULL),
(3, 'Sabin', 'sabin@gmail.com', NULL, NULL),
(4, 'neethu', 'neethu@gmail.com', NULL, NULL),
(5, 'nithya', 'nithya@gmail.com', NULL, NULL),
(6, 'nayana', 'nayana@gmail.com', NULL, NULL),
(8, 'babu', 'babu@gmail.com', NULL, NULL),
(9, 'kavi', 'kavi@gmail.com', NULL, NULL),
(10, 'ravi', 'ravi@gmail.com', NULL, NULL),
(11, 'manu', 'manu@gmail.com', NULL, NULL),
(13, 'Sreehari', 'sreehari123@gmail.com', NULL, NULL),
(14, 'surya', 'surya@gmail.com', NULL, NULL),
(15, 'User-4', 'abc@gmail.com', NULL, NULL),
(16, 'altos1', 'sdfd@gmail.com', NULL, NULL),
(17, 'chinnu', 'chinnu@gmail.com', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `zohoapp_usernamez`
--

CREATE TABLE `zohoapp_usernamez` (
  `id` bigint(20) NOT NULL,
  `usernamez` varchar(255) DEFAULT NULL,
  `emailz` varchar(255) DEFAULT NULL,
  `projn_id` bigint(20) DEFAULT NULL,
  `users_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `zohoapp_usernamez`
--

INSERT INTO `zohoapp_usernamez` (`id`, `usernamez`, `emailz`, `projn_id`, `users_id`) VALUES
(1, 'Sabin', 'sabin@gmail.com', 8, NULL),
(2, 'nithya', 'sabin@gmail.com', 8, NULL),
(3, 'neethu', 'neethu@gmail.com', 9, NULL),
(4, 'Sabin', 'sabin@gmail.com', 9, NULL),
(5, 'neethu', 'neethu@gmail.com', 10, NULL),
(6, 'nayana', 'nithya@gmail.com', 10, NULL),
(7, 'Sabin', 'sabin@gmail.com', 11, NULL),
(8, 'nayana', 'sdfd@gmail.com', 11, NULL),
(9, 'nayana', 'kavi@gmail.com', 12, NULL),
(10, 'Sreehari', '', 13, NULL),
(11, 'surya', '', 13, NULL),
(12, 'nithya', '', 14, NULL),
(13, 'surya', '', 14, NULL),
(21, 'surya', 'surya@gmail.com', 16, NULL),
(22, 'chinnu', 'chinnu@gmail.com', 16, NULL),
(23, 'Sreehari', 'sreehari123@gmail.com', 16, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `zohoapp_vendor_credits`
--

CREATE TABLE `zohoapp_vendor_credits` (
  `id` bigint(20) NOT NULL,
  `company_name` varchar(150) NOT NULL,
  `vendor_email` varchar(250) NOT NULL,
  `gst_treatment` varchar(100) NOT NULL,
  `source_supply` varchar(100) NOT NULL,
  `baddress` varchar(300) NOT NULL,
  `credit_note` varchar(100) DEFAULT NULL,
  `order_no` varchar(100) DEFAULT NULL,
  `adjustment` varchar(100) DEFAULT NULL,
  `vendor_date` date NOT NULL,
  `igst` longtext NOT NULL,
  `cgst` longtext NOT NULL,
  `sgst` longtext NOT NULL,
  `t_tax` double NOT NULL,
  `subtotal` double NOT NULL,
  `grandtotal` double NOT NULL,
  `cxnote` longtext NOT NULL,
  `file` varchar(100) NOT NULL,
  `status` longtext NOT NULL,
  `user_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `zohoapp_vendor_credits`
--

INSERT INTO `zohoapp_vendor_credits` (`id`, `company_name`, `vendor_email`, `gst_treatment`, `source_supply`, `baddress`, `credit_note`, `order_no`, `adjustment`, `vendor_date`, `igst`, `cgst`, `sgst`, `t_tax`, `subtotal`, `grandtotal`, `cxnote`, `file`, `status`, `user_id`) VALUES
(2, 'Hareesh Construction', 'hareesh@gmail.com', 'Registered Business-Composition Business that is registered under the Composition scheme in GST', '[KL]-Kerala', 'Kongad', 'DUS-0005', '5373937422', '-0.80', '2023-08-31', '0', '9.9', '9.9', 19.8, 140, 159, '', '/static/images/alt.jpg', 'Save and Send', 42),
(3, 'Devan ', 'devan@gmail.com', 'Unregistered Business-not Registered under GST', '[KL]-Kerala', 'Mundur', 'DUS-0001', '4375116435', '-148.80', '2023-08-18', '0', '329.4', '329.4', 658.8, 5490, 6000, '', 'documents/default_rKDJlx4.png', 'Save and Send', 42);

-- --------------------------------------------------------

--
-- Table structure for table `zohoapp_vendor_credits_bills`
--

CREATE TABLE `zohoapp_vendor_credits_bills` (
  `id` bigint(20) NOT NULL,
  `vendor_name` varchar(100) DEFAULT NULL,
  `source_supply` varchar(100) DEFAULT NULL,
  `gst_number` varchar(150) DEFAULT NULL,
  `vendor_email` varchar(250) NOT NULL,
  `gst_treatment` varchar(100) NOT NULL,
  `credit_note` varchar(100) DEFAULT NULL,
  `order_no` varchar(100) DEFAULT NULL,
  `vendor_date` date DEFAULT NULL,
  `address` varchar(100) DEFAULT NULL,
  `sub_total` double DEFAULT NULL,
  `igst` double DEFAULT NULL,
  `cgst` double DEFAULT NULL,
  `sgst` double DEFAULT NULL,
  `tax_amount` double DEFAULT NULL,
  `adjustment` double DEFAULT NULL,
  `grand_total` double DEFAULT NULL,
  `note` varchar(255) DEFAULT NULL,
  `document` varchar(100) DEFAULT NULL,
  `comments` varchar(255) DEFAULT NULL,
  `company_id` bigint(20) DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `zohoapp_vendor_credits_bills`
--

INSERT INTO `zohoapp_vendor_credits_bills` (`id`, `vendor_name`, `source_supply`, `gst_number`, `vendor_email`, `gst_treatment`, `credit_note`, `order_no`, `vendor_date`, `address`, `sub_total`, `igst`, `cgst`, `sgst`, `tax_amount`, `adjustment`, `grand_total`, `note`, `document`, `comments`, `company_id`, `user_id`) VALUES
(1, 'Nikhila Vimal 5', '[JH] Jharkhand', ' ABC1234', 'ajayjayathilakan0@gmail.com', ' Registered Business-Composition Business that is registered under the Composition scheme in GST', 'DUS-5656', '5373937422', '2023-09-26', 'PADMA NIVAS THEKKEKARA', 1090, 54.5, 0, 0, 54.5, 0, 1144.5, '', '', 'hi', 35, 35),
(2, 'Anas Aas 3', '[KL] Kerala', ' ABC1234', 'ajayjayathilakan0@gmail.com', ' Registered Business - Regular', 'DUS-5656', '4444444444', '2023-09-20', ' STAMFORD BRIDGE', 45540, 0, 1138.5, 1138.5, 2277, 0, 47817, 'ff', '', NULL, 25, 25);

-- --------------------------------------------------------

--
-- Table structure for table `zohoapp_vendor_credits_bills_items_bills`
--

CREATE TABLE `zohoapp_vendor_credits_bills_items_bills` (
  `id` bigint(20) NOT NULL,
  `item` varchar(100) DEFAULT NULL,
  `hsn` varchar(100) DEFAULT NULL,
  `quantity` int(11) DEFAULT NULL,
  `rate` double DEFAULT NULL,
  `tax` double DEFAULT NULL,
  `discount` double DEFAULT NULL,
  `amount` double DEFAULT NULL,
  `company_id` bigint(20) DEFAULT NULL,
  `recur_bills_id` bigint(20) DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `zohoapp_vendor_credits_bills_items_bills`
--

INSERT INTO `zohoapp_vendor_credits_bills_items_bills` (`id`, `item`, `hsn`, `quantity`, `rate`, `tax`, `discount`, `amount`, `company_id`, `recur_bills_id`, `user_id`) VALUES
(1, 'Earings', '345678', 10, 110, 5, 10, 1090, 35, 1, 35),
(2, 'Dry fruits', '345678', 10, 4555, 5, 10, 45540, 25, 2, 25);

-- --------------------------------------------------------

--
-- Table structure for table `zohoapp_vendor_invoice_item`
--

CREATE TABLE `zohoapp_vendor_invoice_item` (
  `id` bigint(20) NOT NULL,
  `product` longtext NOT NULL,
  `quantity` int(11) NOT NULL,
  `hsn` longtext NOT NULL,
  `tax` int(11) NOT NULL,
  `total` double NOT NULL,
  `discount` longtext NOT NULL,
  `rate` longtext NOT NULL,
  `inv_id` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `zohoapp_vendor_invoice_item`
--

INSERT INTO `zohoapp_vendor_invoice_item` (`id`, `product`, `quantity`, `hsn`, `tax`, `total`, `discount`, `rate`, `inv_id`) VALUES
(6, 'Dry fruits', 10, '', 12, 90, '10', '10.00', 2),
(7, 'tab', 10, '', 18, 50, '50', '10.00', 2),
(11, 'table', 10, '345678', 12, 990, '10', '100.00', 3),
(12, 'baribe doll', 10, '235433', 12, 4500, '500', '500.00', 3);

-- --------------------------------------------------------

--
-- Table structure for table `zohoapp_vendor_table`
--

CREATE TABLE `zohoapp_vendor_table` (
  `id` bigint(20) NOT NULL,
  `salutation` varchar(25) NOT NULL,
  `first_name` varchar(50) NOT NULL,
  `last_name` varchar(50) NOT NULL,
  `company_name` varchar(150) NOT NULL,
  `vendor_display_name` varchar(150) NOT NULL,
  `vendor_email` varchar(250) NOT NULL,
  `vendor_wphone` varchar(50) NOT NULL,
  `vendor_mphone` varchar(50) NOT NULL,
  `skype_number` varchar(50) NOT NULL,
  `designation` varchar(50) NOT NULL,
  `department` varchar(50) NOT NULL,
  `website` varchar(250) NOT NULL,
  `gst_treatment` varchar(100) NOT NULL,
  `gst_number` varchar(50) DEFAULT NULL,
  `pan_number` varchar(50) DEFAULT NULL,
  `source_supply` varchar(100) NOT NULL,
  `currency` varchar(50) NOT NULL,
  `opening_bal` varchar(100) NOT NULL,
  `payment_terms` varchar(100) NOT NULL,
  `battention` varchar(100) NOT NULL,
  `bcountry` varchar(100) NOT NULL,
  `baddress` varchar(300) NOT NULL,
  `bcity` varchar(100) NOT NULL,
  `bstate` varchar(100) NOT NULL,
  `bzip` varchar(100) NOT NULL,
  `bphone` varchar(100) NOT NULL,
  `bfax` varchar(100) NOT NULL,
  `sattention` varchar(100) NOT NULL,
  `scountry` varchar(100) NOT NULL,
  `saddress` varchar(300) NOT NULL,
  `scity` varchar(100) NOT NULL,
  `sstate` varchar(100) NOT NULL,
  `szip` varchar(100) NOT NULL,
  `sphone` varchar(100) NOT NULL,
  `sfax` varchar(100) NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `opening_bal_type` varchar(100) DEFAULT NULL,
  `status` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `zohoapp_vendor_table`
--

INSERT INTO `zohoapp_vendor_table` (`id`, `salutation`, `first_name`, `last_name`, `company_name`, `vendor_display_name`, `vendor_email`, `vendor_wphone`, `vendor_mphone`, `skype_number`, `designation`, `department`, `website`, `gst_treatment`, `gst_number`, `pan_number`, `source_supply`, `currency`, `opening_bal`, `payment_terms`, `battention`, `bcountry`, `baddress`, `bcity`, `bstate`, `bzip`, `bphone`, `bfax`, `sattention`, `scountry`, `saddress`, `scity`, `sstate`, `szip`, `sphone`, `sfax`, `user_id`, `opening_bal_type`, `status`) VALUES
(1, 'Mr.', 'Deva', 'Bala', 'Bala Constructions', 'Mr. Deva Bala', 'Bala123@gmail.com', '2567890', '9996789826', '', '', '', 'www.bala.in', 'unregistered Business', '', 'APPCK4567F', '[KA] Karnataka', 'INR', '5000', '30', '', '', 'FHJHVB', '', '', '', '', '', '', '', '', '', '', '', '', '', 14, NULL, NULL),
(2, 'Mr.', 'ramu', 'M', 'altos technologies', 'Mr. ramu M', 'ramu@gmail.com', '5262514506', '', '', 'tester', 'python', 'www.ramu.com', 'unregistered Business', '', 'ABCTY1234D', '[TN] Tamil Nadu', 'INR', '5000', 'net 15 1', '', 'India', 'Chalikkadavu Bridge', 'Muvattupuzha', 'Kerala', '686673', '', '', '', 'India', 'Chalikkadavu Bridge', 'Muvattupuzha', 'Kerala', '686673', '', '', 33, NULL, NULL),
(3, 'Mr.', 'Anas', 'Aas', 'None', 'Mr. Anas Aas', 'anasash9048@gmail.com', '8589011404', '8589011404', '44', 'fab', 'cvaebt', 'www.fg.com', 'unregistered Business', '', 'EHHPA0222G', '[JK] Jammu and Kashmir', 'INR', '6256', '45', '', 'India', 'kerala,idukki 685259', 'FRE', '', '673525', '08589011404', '52585', '', 'India', 'kerala,idukki 685259', '', '', '', '', '', 21, NULL, NULL),
(4, 'Mr', 'Amal', 'Devan', 'Devan ', 'Mr Amal Devan', 'devan@gmail.com', '2575702', '9995794678', '', '', '', 'www.devan.in', 'Unregistered Business-not Registered under GST', 'null', 'AFDRT4328G', '[KL]-Kerala', 'Indian Rupee', '50000', 'Due on Receipt', '', 'India', '', '', '', '', '', '', '', 'India', '', '', '', '', '', '', 14, NULL, NULL),
(5, 'Mr', 'Nikhila', 'Vimal', 'Nikhila Ltd', 'Mr Nikhila Vimal', 'nikhila@gmail.com', '2567895', '9995798456', '', '', '', 'www.nikhila.in', 'Registered Business-Regular Business that is registered under GST', '32AAPCK6855G1Z1', 'AFDRT4323H', '[KL]-Kerala', 'Indian Rupee', '60000', 'Due on Receipt', '', 'India', '', '', '', '', '', '', '', 'India', '', '', '', '', '', '', 14, NULL, NULL),
(6, 'Mrs.', 'abcd', 'zz', 'abc', 'Mrs. abcd zz', 'ajayjayathilakan0@gmail.com', '8943735902', '', '4235454', '545454', 'jr', 'www.abc.com', 'Demed Exports', '123APK4567', 'DGH55HH55', '[KA] Karnataka', 'INR', '150', '', '', 'India', 'PADMA NIVAS THEKKEKARA', 'Palakkad', 'Kerala', '678592', '08943735902', '4', '', 'India', 'PADMA NIVAS THEKKEKARA', 'Palakkad', 'Kerala', '678592', '08943735902', '4', 35, NULL, NULL),
(7, 'Miss', 'sindhu', 'vv', 'sin vv', 'Miss sindhu vv', 'ajayjayathilakan0@gmail.com', '8943735902', '8943735902', '', '', '', '', 'unregistered Business', '', '', '[KL] Kerala', '', '11', '15', '', 'India', 'PADMA NIVAS THEKKEKARA', 'Palakkad', 'Kerala', '678592', '', '', '', 'India', 'PADMA NIVAS THEKKEKARA', 'Palakkad', 'Kerala', '678592', '', '', 35, NULL, NULL),
(8, 'Mr', 'Hareesh ', 'Ragunadh', 'Hareesh Construction', 'Mr Hareesh Ragunadh', 'hareesh@gmail.com', '2576790', '9995795678', '', '', '', 'www.hareesh.in', 'Registered Business-Composition Business that is registered under the Composition scheme in GST', '32AAPCK6758G1Z1', 'AFDRT4927H', '[KL]-Kerala', 'Indian Rupee', '70000', 'Due on Receipt', '', 'India', '', '', '', '', '', '', '', 'India', '', '', '', '', '', '', 14, NULL, NULL),
(9, 'Mr.', 'ROSILINT', 'DAVIS', 'inter', 'Mr. ROSILINT DAVIS', 'akhilakd5299@gmail.com', '0487227711', '7025306368', 'amal', 'developer', 'python', 'https://facilezone.com/add_recurring_bills', 'Special Economic Zone (SEZ)', '22AAAAA0000A1Z5', 'ABCTY1234D', '[KL] Kerala', 'INR', '201154', '45', '', 'India', 'PELLISSERY HOUSE AMMADAM P O', 'THRISSUR', 'Kerala', '680563', '7025306368', '654441561', '', 'India', 'PELLISSERY HOUSE AMMADAM P O', 'THRISSUR', 'Kerala', '680563', '7025306368', '654441561', 26, NULL, NULL),
(10, 'Mrs.', 'akhil', 'DAVIS', 'teri', 'Mrs. akhil DAVIS', 'akhilakd5299@gmail.com', '0487227711', '7025306368', 'akhil', 'sss', 'wed', 'https://chat.openai.com/?model=text-davinci-002-render-sha', 'Demed Exports', '22AAAAA0000A1Z5', 'ABCTY1234D', '[GA] Goa', 'INR', '', '15', '', 'India', 'PELLISSERY HOUSE AMMADAM P O', 'THRISSUR', 'Kerala', '680563', '', '', '', 'India', 'PELLISSERY HOUSE AMMADAM P O', 'THRISSUR', 'Kerala', '680563', '', '', 26, NULL, NULL),
(11, 'Mr', 'faizal', 'rahman', 'faizal manufactures', 'Mr faizal rahman', 'faizal@gmail.com', '2567890', '9995678945', '', '', '', 'www.faizal.in', 'Registered Business-Composition Business that is registered under the Composition scheme in GST', '32AAPCK6775G1Z1', 'AFDRT4327D', '[KL]-Kerala', 'Indian Rupee', '8000', 'Due on Receipt', '', 'India', '', '', '', '', '', '', '', 'India', '', '', '', '', '', '', 14, NULL, NULL),
(12, 'Mrs.', 'venu', 'kr', 'opp', 'Mrs. venu kr', 'akhilakd5299@gmail.com', '0487227711', '7025306368', 'venu', 'aa', 'aa', 'https://facilezone.com/add_recurring_bills', 'Registered Business - Regular', '22AAAAA0000A1Z5', 'ABCTY1234D', '[KL] Kerala', 'INR', '21000', '45', '', 'India', 'PELLISSERY HOUSE AMMADAM P O', 'THRISSUR', 'Kerala', '680563', '04872277117', '58', '', 'India', 'PELLISSERY HOUSE AMMADAM P O', 'THRISSUR', 'Kerala', '680563', '', '', 26, NULL, NULL),
(13, 'Mrs.', 'venu', 'kr', 'opp', 'Mrs. venu kr', 'akhilakd5299@gmail.com', '0487227711', '7025306368', 'venu', 'aa', 'aa', 'https://facilezone.com/add_recurring_bills', 'Registered Business - Regular', '22AAAAA0000A1Z5', 'ABCTY1234D', '[KL] Kerala', 'INR', '21000', '45', '', 'India', 'PELLISSERY HOUSE AMMADAM P O', 'THRISSUR', 'Kerala', '680563', '04872277117', '584848', '', 'India', 'PELLISSERY HOUSE AMMADAM P O', 'THRISSUR', 'Kerala', '680563', '', '', 26, NULL, NULL),
(14, 'Mr.', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'Nill', '', '', '15', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 23, NULL, NULL),
(15, 'Ms', 'john\\\\\\', 'pj', 'john vendor', 'Ms john\\\\\\ pj', 'ajayjayathilakan0@gmail.com', '08943735902', '08943735902', '', '', '', 'www.mgyfntdbsv', 'Registered Business-Composition Business that is registered under the Composition scheme in GST', 'GST123456789', 'ABCD333', '[JH]-Jharkand', 'Indian Rupee', '1000', 'NET 30', '', 'India', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 42, NULL, NULL),
(16, 'Dr', 'Abin', 'Mundur', 'TT Groups', 'Dr Abin Mundur', 'ajayjayathilakan0@gmail.com', '08943735902', '08943735902', '', '', '', 'www.kfc', 'Registered Business-Composition Business that is registered under the Composition scheme in GST', 'MBC56432', 'DUSSP1111', '[LA]-Ladakh', 'Indian Rupee', '', 'Due on Receipt', '', 'India', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 42, NULL, NULL),
(17, 'Mr', 'Jaseela', 'Jabbar', 'hhhhhhhhhhhhh', 'Mr Jaseela Jabbar', 'j@gmail.com', '8956325', '9526620250', '', '', '', 'www.gf.com', 'Unregistered Business-not Registered under GST', 'null', 'AQWSE1234R', '[LA]-Ladakh', 'Indian Rupee', '65432', 'Due on Receipt', '', 'India', '', '', '', '', '', '', '', 'India', '', '', '', '', '', '', 25, NULL, NULL),
(18, 'Mr.', 'haris', 'dvsvds', 'qwdd', 'Mr. haris dvsvds', 'aa@gmail.com', '123456789', '123456789', 'rher4435', 'gfsdf', 'sdgs', 'fefe', 'Registered Business - Regular', '', '35252', '[KL] Kerala', 'INR', '3534646', '45', '', 'India', 'thodupuzha', 'new city', 'Kerala', '', '123456789', '342', '', 'India', 'thodupuzha', 'new city', 'Kerala', '', '123456789', '342', 4, NULL, NULL),
(19, 'Mr.', 'Roja', 'joyson', 'RJ Models', 'Mr. Roja joyson', 'Roja@gmail.com', '2576590', '9995678565', 'nill', 'nill', 'nill', 'www.roja.in', 'unregistered Business', '', 'APPGH5645F', '[KL] Kerala', 'INR', '9000', '15', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 14, NULL, NULL),
(20, 'Mr.', 'new', 't', 'hjhjxd', 'Mr. new t', '', '', '', '', '', '', '', 'Registered Business - Composition', '123456789hhbjnb', '', 'Nill', '', '', '15', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 38, NULL, NULL),
(21, 'Mr.', 'Devika', 'Menon', 'Devika Digitals', 'Mr. Devika Menon', 'devika@gmail.com', '2575702', '9995794567', 'nill', 'nill', 'nill', 'www.devika.in', 'unregistered Business', '', 'APPCK5646F', '[KL] Kerala', 'INR', '9000', '15', '', 'india', 'DEvika Building Palaz', 'Ernakulam', 'Kerala', '567864', '99953456743', '', '', 'india', 'DEvika Building Palaz', 'Ernakulam', 'Kerala', '567864', '99953456743', '', 14, NULL, NULL),
(22, 'Mr.', 'Ravi', 'Das', 'Kite', 'Mr. Ravi Das', 'das@gmail.com', '5656565656', '5656565656', '', '', '', 'www.das.com', 'Registered Business - Composition', '37AADCS0472N2Z0', 'AQSWD2323E', '[JH] Jharkhand', 'INR', '350000', '60', '', 'India', 'A1 St', 'LOI', 'Jharkhand', '567678', '5645342312', '', '', 'India', 'A1 St', 'LOI', 'Jharkhand', '567678', '5645342312', '', 23, NULL, NULL),
(23, 'Mr.', 'Fazil', 'Rahuman', 'Fazil Motors', 'Mr. Fazil Rahuman', 'fazil@gmail.com', '2575703', '9995678765', 'nill', 'nill', 'nill', 'www.fazil.in', 'unregistered Business', '', 'APPCKH7578G', '[KL] Kerala', 'INR', '0', '15', '', 'india', 'Fazil motors parippally', 'kollam', 'Kerala', '', '9995678945', '', '', '', '', '', '', '', '', '', 14, NULL, NULL),
(24, 'Mr.', 'resh', 't', '', 'Mr. resh t', '', '', '', '', '', '', '', 'Special Economic Zone (SEZ)', '123456789', '', 'Nill', '', '', '15', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 38, NULL, NULL),
(25, 'Miss', 'ann', 'j', '', 'Mr. ann j', '', '', '', '', '', '', '', 'Special Economic Zone (SEZ)', '2345678', '', 'Nill', '', '', '15', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 38, NULL, NULL),
(26, 'Mr.', 'Aparna', 'Das', 'Aparna Designs', 'Mr. Aparna Das', 'aparna@gmail.com', '2557802', '9995798354', 'nill', 'nill', 'nill', 'www.aparna.in', 'Registered Business - Composition', '32AABHF3454F1Z1', 'APPKT5645F', '[KL] Kerala', 'INR', '9000', '15', '', 'india', 'Aparna Design NH Road', 'kollam', 'Kerala', '691578', '8956343423', '', '', 'india', 'Aparna Design NH Road', 'kollam', 'Kerala', '691578', '8956343423', '', 14, NULL, NULL),
(27, 'Miss', 'tt', 'tt', 'tt', 'Miss tt tt', 'tt@gmail.com', '', '', '', '', '', '', 'unregistered Business', '', 'APPCK7465F', '[KL] Kerala', 'INR', '22222', 'net 15 1', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 32, NULL, NULL),
(28, 'Mr.', 'dd', 'dd', 'dddd', 'Mr. dd dd', 'dd@gmail.com', '', '', '', '', '', '', 'unregistered Business', '', 'APPCK7465F', '[KL] Kerala', 'INR', '33333', 'net 15 1', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 32, NULL, NULL),
(29, 'Mr.', 'nn', 'mm', 'nn', 'Mr. nn mm', 'nn@gmail.com', '', '', '', '', '', '', 'unregistered Business', '', 'AHHXD2134F', '[BR] Bihar', 'INR', '66666', '15', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 16, NULL, NULL),
(30, 'Mr.', 'gg', 'ggg', 'ggg', 'Mr. gg ggg', 'gg@gmail.com', '', '', '', '', '', '', 'unregistered Business', '', 'APPCK7654F', '[KL] Kerala', 'INR', '55555', '15', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 16, NULL, NULL),
(31, 'Mr.', 'asha', 'dff', 'er', 'Mr. asha dff', 'ea@gmail.com', '123456789', '123456789', 'rewr', 'wqq', 'werwqer', 'awera', 'Registered Business - Composition', '12324234', '34242', '[KL] Kerala', 'INR', '4234235', '15', '', 'India', 'thodupuzha', 'new city', 'Kerala', '', '', '', '', 'India', 'thodupuzha', 'new city', 'Kerala', '', '', '', 4, NULL, NULL),
(32, 'Mr.', 'zz', 'zz', 'zz', 'Mr. zz zz', 'zz@gmail.com', '', '', '', '', '', '', 'unregistered Business', '', 'APPCK2345F', '[KA] Karnataka', 'INR', '23000', '15', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 16, NULL, NULL),
(33, 'Mrs.', 'neethu', 'fjhg', 'hgh', 'Mrs. neethu fjhg', '123@gmail.com', '123456789', '123456789', 'ewr', 'erwr', 'fdg', 'fwe', 'Registered Business - Regular', '43535', '35345', '[KA] Karnataka', '', '453543', '15', '', 'India', 'thodupuzha', 'new city', 'Kerala', '', '', '', '', 'India', 'thodupuzha', 'new city', 'Kerala', '', '', '', 4, NULL, NULL),
(34, 'Mr.', 'Alex', 'Jhonson', 'tvs', 'Mr. Alex Jhonson', 'tvs@gmail.com', '7894561233', '7412589633', '', '', '', 'www.tvs.com', 'unregistered Business', '', 'ASDFG1236G', '[KL] Kerala', 'INR', '50000', '15', '', 'India', 'Kochi', 'Kochi', 'Kerala', '', '8745641233', '', '', 'India', 'Kochi', 'Kochi', 'Kerala', '', '8745641233', '', 44, NULL, NULL),
(35, 'Mr', 'Jaseela', 'Jabbar', 'hhhhhhhhhhhhh', 'Mr Jaseela Jabbar', 'j@gmail.com', '2596363', '9988556633', '', '', '', 'www.gf.com', 'Unregistered Business-not Registered under GST', 'null', 'AQWSE1234R', '[HP]-Himachal Pradesh', 'Indian Rupee', '999', 'NET 45', '', 'India', '', '', '', '', '', '', '', 'India', '', '', '', '', '', '', 25, NULL, NULL),
(36, 'Mr', 'Jiji', 'Hari', 'JH Digitals', 'Mr Jiji Hari', 'jijihari@gmail.com', '2575702', '9995678976', '', '', '', 'www.jijihari.in', 'Registered Business-Composition Business that is registered under the Composition scheme in GST', '32AAPCK6756G1Z1', 'AFDRT4623H', '[KL]-Kerala', 'Indian Rupee', '0', 'Due on Receipt', '', 'India', '', '', '', '', '', '', '', 'India', '', '', '', '', '', '', 14, NULL, NULL),
(37, 'Ms.', 'haritha', 's', 'abc', 'Ms. haritha s', 'haritha@gmail.com', '9188755408', '', '', '', '', '', 'Registered Business - Regular', '29ASDFG1234Z1S2', '', '[KL] Kerala', '', '', '15', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 48, NULL, NULL),
(38, 'Mr.', 'hari', 'b', 'abc', 'Ms. hari b', 'hari@gmail.com', '8998767876', '', '', '', '', '', 'Registered Business - Regular', '29ASDER1234D3D6', '', '[KA] Karnataka', '', '', '15', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 48, NULL, NULL),
(39, 'Mr', 'Abhiram', 'Varma', 'Abhi Fashion', 'Mr Abhiram Varma', 'abhiram@gmail.com', '2576702', '9995789076', '', '', '', 'www.abhiram.in', 'Registered Business-Composition Business that is registered under the Composition scheme in GST', '32AAPCK6755G1Z1', 'AFDRT4323F', '[KL]-Kerala', 'Indian Rupee', '6000', 'NET 30', '', 'India', '', '', '', '', '', '', '', 'India', '', '', '', '', '', '', 14, 'credit', 'Active'),
(40, 'Mr', 'Krithika', 'Karthik', 'KK Fashion', 'Mr Krithika Karthik', 'kk123@gmail.com', '2575605', '9995786754', '', '', '', 'www.krithakrithi.in', 'Registered Business-Composition Business that is registered under the Composition scheme in GST', '32AAPCK6785G1Z1', 'AFDRT4327S', '[KL]-Kerala', 'Indian Rupee', '9000', 'Due on Receipt', '', 'India', '', '', '', '', '', '', '', 'India', '', '', '', '', '', '', 14, 'credit', 'Active');

-- --------------------------------------------------------

--
-- Table structure for table `zohoapp_vendor_tablee`
--

CREATE TABLE `zohoapp_vendor_tablee` (
  `id` bigint(20) NOT NULL,
  `salutation` varchar(25) DEFAULT NULL,
  `first_name` varchar(50) DEFAULT NULL,
  `last_name` varchar(50) DEFAULT NULL,
  `company_name` varchar(150) DEFAULT NULL,
  `vendor_display_name` varchar(150) DEFAULT NULL,
  `vendor_email` varchar(250) DEFAULT NULL,
  `vendor_wphone` varchar(50) DEFAULT NULL,
  `vendor_mphone` varchar(50) DEFAULT NULL,
  `skype_number` varchar(50) DEFAULT NULL,
  `designation` varchar(50) DEFAULT NULL,
  `department` varchar(50) DEFAULT NULL,
  `website` varchar(250) DEFAULT NULL,
  `gst_treatment` varchar(100) DEFAULT NULL,
  `gst_number` varchar(50) DEFAULT NULL,
  `pan_number` varchar(50) DEFAULT NULL,
  `source_supply` varchar(100) DEFAULT NULL,
  `currency` varchar(50) DEFAULT NULL,
  `opening_bal` varchar(100) DEFAULT NULL,
  `payment_terms` varchar(100) DEFAULT NULL,
  `battention` varchar(100) DEFAULT NULL,
  `bcountry` varchar(100) DEFAULT NULL,
  `baddress` varchar(300) DEFAULT NULL,
  `bcity` varchar(100) DEFAULT NULL,
  `bstate` varchar(100) DEFAULT NULL,
  `bzip` varchar(100) DEFAULT NULL,
  `bphone` varchar(100) DEFAULT NULL,
  `bfax` varchar(100) DEFAULT NULL,
  `sattention` varchar(100) DEFAULT NULL,
  `scountry` varchar(100) DEFAULT NULL,
  `saddress` varchar(300) DEFAULT NULL,
  `scity` varchar(100) DEFAULT NULL,
  `sstate` varchar(100) DEFAULT NULL,
  `szip` varchar(100) DEFAULT NULL,
  `sphone` varchar(100) DEFAULT NULL,
  `sfax` varchar(100) DEFAULT NULL,
  `user_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `zohoapp_vendor_tablee`
--

INSERT INTO `zohoapp_vendor_tablee` (`id`, `salutation`, `first_name`, `last_name`, `company_name`, `vendor_display_name`, `vendor_email`, `vendor_wphone`, `vendor_mphone`, `skype_number`, `designation`, `department`, `website`, `gst_treatment`, `gst_number`, `pan_number`, `source_supply`, `currency`, `opening_bal`, `payment_terms`, `battention`, `bcountry`, `baddress`, `bcity`, `bstate`, `bzip`, `bphone`, `bfax`, `sattention`, `scountry`, `saddress`, `scity`, `sstate`, `szip`, `sphone`, `sfax`, `user_id`) VALUES
(1, 'Miss', 'reshna', 'suresh', '', 'Miss reshna suresh', '', '', '', '', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 38),
(2, 'Mr.', 'resh', 't', '', 'Mr. resh t', '', '', '', '', '', '', '', 'Demed Exports', '', '', 'Nill', '', '', '15', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 38),
(3, 'Mr.', 'Avani', 'Sreeraj', 'Avani Motors', 'Mr. Avani Sreeraj', 'avani@gmail.com', '2575702', '9995756789', 'nill', 'nill', 'nill', 'www.avani.in', 'unregistered Business', '', 'APGHVH4545F', '[KL] Kerala', 'INR', '50000', '15', '', 'india', 'kollam', 'kollam', 'Kerala', '691576', '9995674534', '', '', 'india', 'kollam', 'kollam', 'Kerala', '691576', '9995674534', '', 14);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `auth_group`
--
ALTER TABLE `auth_group`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `name` (`name`);

--
-- Indexes for table `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_group_permissions_group_id_permission_id_0cd325b0_uniq` (`group_id`,`permission_id`),
  ADD KEY `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` (`permission_id`);

--
-- Indexes for table `auth_permission`
--
ALTER TABLE `auth_permission`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_permission_content_type_id_codename_01ab375a_uniq` (`content_type_id`,`codename`);

--
-- Indexes for table `auth_user`
--
ALTER TABLE `auth_user`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `username` (`username`);

--
-- Indexes for table `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_user_groups_user_id_group_id_94350c0c_uniq` (`user_id`,`group_id`),
  ADD KEY `auth_user_groups_group_id_97559544_fk_auth_group_id` (`group_id`);

--
-- Indexes for table `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_user_user_permissions_user_id_permission_id_14a6b632_uniq` (`user_id`,`permission_id`),
  ADD KEY `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` (`permission_id`);

--
-- Indexes for table `django_admin_log`
--
ALTER TABLE `django_admin_log`
  ADD PRIMARY KEY (`id`),
  ADD KEY `django_admin_log_content_type_id_c4bce8eb_fk_django_co` (`content_type_id`),
  ADD KEY `django_admin_log_user_id_c564eba6_fk_auth_user_id` (`user_id`);

--
-- Indexes for table `django_content_type`
--
ALTER TABLE `django_content_type`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `django_content_type_app_label_model_76bd3d3b_uniq` (`app_label`,`model`);

--
-- Indexes for table `django_migrations`
--
ALTER TABLE `django_migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `django_session`
--
ALTER TABLE `django_session`
  ADD PRIMARY KEY (`session_key`),
  ADD KEY `django_session_expire_date_a5c62663` (`expire_date`);

--
-- Indexes for table `zohoapp_account`
--
ALTER TABLE `zohoapp_account`
  ADD PRIMARY KEY (`id`),
  ADD KEY `zohoapp_account_user_id_a8f0a224_fk_auth_user_id` (`user_id`);

--
-- Indexes for table `zohoapp_accounte`
--
ALTER TABLE `zohoapp_accounte`
  ADD PRIMARY KEY (`id`),
  ADD KEY `zohoapp_accounte_user_id_ecd7e3ba_fk_auth_user_id` (`user_id`);

--
-- Indexes for table `zohoapp_addcustomere`
--
ALTER TABLE `zohoapp_addcustomere`
  ADD PRIMARY KEY (`id`),
  ADD KEY `zohoapp_addcustomere_user_id_ec098b9f_fk_auth_user_id` (`user_id`);

--
-- Indexes for table `zohoapp_additem`
--
ALTER TABLE `zohoapp_additem`
  ADD PRIMARY KEY (`id`),
  ADD KEY `zohoapp_additem_purchase_id_d23b162b_fk_zohoapp_purchase_id` (`purchase_id`),
  ADD KEY `zohoapp_additem_sales_id_03cb7295_fk_zohoapp_sales_id` (`sales_id`),
  ADD KEY `zohoapp_additem_unit_id_a111ed1a_fk_zohoapp_unit_id` (`unit_id`),
  ADD KEY `zohoapp_additem_user_id_a82f8ea4_fk_auth_user_id` (`user_id`);

--
-- Indexes for table `zohoapp_attache`
--
ALTER TABLE `zohoapp_attache`
  ADD PRIMARY KEY (`id`),
  ADD KEY `zohoapp_attache_expense_id_410471a7_fk_zohoapp_expensee_id` (`expense_id`),
  ADD KEY `zohoapp_attache_user_id_ca77a1b4_fk_auth_user_id` (`user_id`);

--
-- Indexes for table `zohoapp_bank`
--
ALTER TABLE `zohoapp_bank`
  ADD PRIMARY KEY (`id`),
  ADD KEY `zohoapp_bank_user_id_643a32f6_fk_auth_user_id` (`user_id`);

--
-- Indexes for table `zohoapp_bankcreation`
--
ALTER TABLE `zohoapp_bankcreation`
  ADD PRIMARY KEY (`id`),
  ADD KEY `zohoapp_bankcreation_user_id_40d11ee3_fk_auth_user_id` (`user_id`);

--
-- Indexes for table `zohoapp_bankdetails`
--
ALTER TABLE `zohoapp_bankdetails`
  ADD PRIMARY KEY (`id`),
  ADD KEY `zohoapp_bankdetails_payroll_id_76971e2b_fk_zohoapp_payroll_id` (`payroll_id`);

--
-- Indexes for table `zohoapp_banking`
--
ALTER TABLE `zohoapp_banking`
  ADD PRIMARY KEY (`id`),
  ADD KEY `zohoapp_banking_user_id_56334a28_fk_auth_user_id` (`user_id`);

--
-- Indexes for table `zohoapp_challanitems`
--
ALTER TABLE `zohoapp_challanitems`
  ADD PRIMARY KEY (`id`),
  ADD KEY `zohoapp_challanitems_chellan_id_95bdd2cc_fk_zohoapp_d` (`chellan_id`);

--
-- Indexes for table `zohoapp_chart_of_account`
--
ALTER TABLE `zohoapp_chart_of_account`
  ADD PRIMARY KEY (`id`),
  ADD KEY `zohoapp_chart_of_account_user_id_8b6ea36b_fk_auth_user_id` (`user_id`);

--
-- Indexes for table `zohoapp_chart_of_account_upload`
--
ALTER TABLE `zohoapp_chart_of_account_upload`
  ADD PRIMARY KEY (`id`),
  ADD KEY `zohoapp_chart_of_acc_account_id_8d503d18_fk_zohoapp_c` (`account_id`),
  ADD KEY `zohoapp_chart_of_account_upload_user_id_adc672e0_fk_auth_user_id` (`user_id`);

--
-- Indexes for table `zohoapp_comment`
--
ALTER TABLE `zohoapp_comment`
  ADD PRIMARY KEY (`id`),
  ADD KEY `zohoapp_comment_expense_id_7a313a70_fk_zohoapp_expense_id` (`expense_id`);

--
-- Indexes for table `zohoapp_commentmodel`
--
ALTER TABLE `zohoapp_commentmodel`
  ADD PRIMARY KEY (`id`),
  ADD KEY `zohoapp_commentmodel_payroll_id_e203b98f_fk_zohoapp_payroll_id` (`payroll_id`);

--
-- Indexes for table `zohoapp_comments_item`
--
ALTER TABLE `zohoapp_comments_item`
  ADD PRIMARY KEY (`id`),
  ADD KEY `zohoapp_comments_item_item_id_df0e0f8b_fk_zohoapp_additem_id` (`item_id`),
  ADD KEY `zohoapp_comments_item_user_id_6cf8b81d_fk_auth_user_id` (`user_id`);

--
-- Indexes for table `zohoapp_comments_table`
--
ALTER TABLE `zohoapp_comments_table`
  ADD PRIMARY KEY (`id`),
  ADD KEY `zohoapp_comments_table_user_id_cbf604ef_fk_auth_user_id` (`user_id`),
  ADD KEY `zohoapp_comments_tab_vendor_id_8fb574eb_fk_zohoapp_v` (`vendor_id`);

--
-- Indexes for table `zohoapp_company_details`
--
ALTER TABLE `zohoapp_company_details`
  ADD PRIMARY KEY (`id`),
  ADD KEY `zohoapp_company_details_user_id_baa7d11b_fk_auth_user_id` (`user_id`);

--
-- Indexes for table `zohoapp_contact_person_table`
--
ALTER TABLE `zohoapp_contact_person_table`
  ADD PRIMARY KEY (`id`),
  ADD KEY `zohoapp_contact_person_table_user_id_d80576bb_fk_auth_user_id` (`user_id`),
  ADD KEY `zohoapp_contact_pers_vendor_id_0d8205e2_fk_zohoapp_v` (`vendor_id`);

--
-- Indexes for table `zohoapp_credits_comments_table`
--
ALTER TABLE `zohoapp_credits_comments_table`
  ADD PRIMARY KEY (`id`),
  ADD KEY `zohoapp_credits_comments_table_user_id_4c2e83a1_fk_auth_user_id` (`user_id`),
  ADD KEY `zohoapp_credits_comm_vendor_id_4c82d043_fk_zohoapp_v` (`vendor_id`);

--
-- Indexes for table `zohoapp_credits_doc_upload_table`
--
ALTER TABLE `zohoapp_credits_doc_upload_table`
  ADD PRIMARY KEY (`id`),
  ADD KEY `zohoapp_credits_doc__user_id_470b6a94_fk_auth_user` (`user_id`),
  ADD KEY `zohoapp_credits_doc__vendor_id_2c60677f_fk_zohoapp_v` (`vendor_id`);

--
-- Indexes for table `zohoapp_credits_mail_table`
--
ALTER TABLE `zohoapp_credits_mail_table`
  ADD PRIMARY KEY (`id`),
  ADD KEY `zohoapp_credits_mail_table_user_id_ee633584_fk_auth_user_id` (`user_id`),
  ADD KEY `zohoapp_credits_mail_vendor_id_1e89492a_fk_zohoapp_v` (`vendor_id`);

--
-- Indexes for table `zohoapp_customer`
--
ALTER TABLE `zohoapp_customer`
  ADD PRIMARY KEY (`id`),
  ADD KEY `zohoapp_customer_user_id_3f99e967_fk_auth_user_id` (`user_id`);

--
-- Indexes for table `zohoapp_customer_comments_table`
--
ALTER TABLE `zohoapp_customer_comments_table`
  ADD PRIMARY KEY (`id`),
  ADD KEY `zohoapp_customer_com_customr_id_0509e70c_fk_zohoapp_c` (`customr_id`),
  ADD KEY `zohoapp_customer_comments_table_user_id_b445ef19_fk_auth_user_id` (`user_id`);

--
-- Indexes for table `zohoapp_customer_contact_person_table`
--
ALTER TABLE `zohoapp_customer_contact_person_table`
  ADD PRIMARY KEY (`id`),
  ADD KEY `zohoapp_customer_con_Customr_id_b49dc8ce_fk_zohoapp_c` (`Customr_id`),
  ADD KEY `zohoapp_customer_con_user_id_c26ccad9_fk_auth_user` (`user_id`);

--
-- Indexes for table `zohoapp_customer_doc_upload_table`
--
ALTER TABLE `zohoapp_customer_doc_upload_table`
  ADD PRIMARY KEY (`id`),
  ADD KEY `zohoapp_customer_doc_customr_id_00aa9ccf_fk_zohoapp_c` (`customr_id`),
  ADD KEY `zohoapp_customer_doc_user_id_8716f49f_fk_auth_user` (`user_id`);

--
-- Indexes for table `zohoapp_customer_mail_table`
--
ALTER TABLE `zohoapp_customer_mail_table`
  ADD PRIMARY KEY (`id`),
  ADD KEY `zohoapp_customer_mai_customr_id_eb536124_fk_zohoapp_c` (`customr_id`),
  ADD KEY `zohoapp_customer_mail_table_user_id_09c8c4ba_fk_auth_user_id` (`user_id`);

--
-- Indexes for table `zohoapp_deliverychellan`
--
ALTER TABLE `zohoapp_deliverychellan`
  ADD PRIMARY KEY (`id`),
  ADD KEY `zohoapp_deliverychellan_user_id_4ab9c41a_fk_auth_user_id` (`user_id`);

--
-- Indexes for table `zohoapp_doc_upload_table`
--
ALTER TABLE `zohoapp_doc_upload_table`
  ADD PRIMARY KEY (`id`),
  ADD KEY `zohoapp_doc_upload_table_user_id_4885edd6_fk_auth_user_id` (`user_id`),
  ADD KEY `zohoapp_doc_upload_t_vendor_id_68db74c3_fk_zohoapp_v` (`vendor_id`);

--
-- Indexes for table `zohoapp_estimateitems`
--
ALTER TABLE `zohoapp_estimateitems`
  ADD PRIMARY KEY (`id`),
  ADD KEY `zohoapp_estimateitem_estimate_id_a425c6aa_fk_zohoapp_e` (`estimate_id`);

--
-- Indexes for table `zohoapp_estimates`
--
ALTER TABLE `zohoapp_estimates`
  ADD PRIMARY KEY (`id`),
  ADD KEY `zohoapp_estimates_user_id_cd8e0786_fk_auth_user_id` (`user_id`),
  ADD KEY `zohoapp_estimates_customer_id_de0d8731_fk_zohoapp_customer_id` (`customer_id`);

--
-- Indexes for table `zohoapp_estimate_comments`
--
ALTER TABLE `zohoapp_estimate_comments`
  ADD PRIMARY KEY (`id`),
  ADD KEY `zohoapp_estimate_com_estimate_id_2364b07b_fk_zohoapp_e` (`estimate_id`),
  ADD KEY `zohoapp_estimate_comments_user_id_c6a3e7fa_fk_auth_user_id` (`user_id`);

--
-- Indexes for table `zohoapp_expense`
--
ALTER TABLE `zohoapp_expense`
  ADD PRIMARY KEY (`id`),
  ADD KEY `zohoapp_expense_vendor_id_81726754_fk_zohoapp_vendor_table_id` (`vendor_id`),
  ADD KEY `zohoapp_expense_user_id_86bec691_fk_auth_user_id` (`user_id`);

--
-- Indexes for table `zohoapp_expensee`
--
ALTER TABLE `zohoapp_expensee`
  ADD PRIMARY KEY (`id`),
  ADD KEY `zohoapp_expensee_company_id_f2a0cfb0_fk_zohoapp_c` (`company_id`),
  ADD KEY `zohoapp_expensee_user_id_684816ee_fk_auth_user_id` (`user_id`),
  ADD KEY `zohoapp_expensee_customer_name_id_9b1d1f6f_fk_zohoapp_c` (`customer_name_id`),
  ADD KEY `zohoapp_expensee_vendor_id_67b4c540_fk_zohoapp_vendor_table_id` (`vendor_id`);

--
-- Indexes for table `zohoapp_history`
--
ALTER TABLE `zohoapp_history`
  ADD PRIMARY KEY (`id`),
  ADD KEY `zohoapp_history_p_id_aa17fcf0_fk_zohoapp_additem_id` (`p_id`),
  ADD KEY `zohoapp_history_user_id_c771876f_fk_auth_user_id` (`user_id`);

--
-- Indexes for table `zohoapp_invoice`
--
ALTER TABLE `zohoapp_invoice`
  ADD PRIMARY KEY (`id`),
  ADD KEY `zohoapp_invoice_terms_id_7456cbf6_fk_zohoapp_payment_terms_id` (`terms_id`),
  ADD KEY `zohoapp_invoice_customer_id_e73368cf_fk_zohoapp_customer_id` (`customer_id`);

--
-- Indexes for table `zohoapp_invoice_item`
--
ALTER TABLE `zohoapp_invoice_item`
  ADD PRIMARY KEY (`id`),
  ADD KEY `zohoapp_invoice_item_inv_id_a602a8f7_fk_zohoapp_invoice_id` (`inv_id`);

--
-- Indexes for table `zohoapp_mail_table`
--
ALTER TABLE `zohoapp_mail_table`
  ADD PRIMARY KEY (`id`),
  ADD KEY `zohoapp_mail_table_user_id_3511a19d_fk_auth_user_id` (`user_id`),
  ADD KEY `zohoapp_mail_table_vendor_id_57eec60d_fk_zohoapp_vendor_table_id` (`vendor_id`);

--
-- Indexes for table `zohoapp_method`
--
ALTER TABLE `zohoapp_method`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `zohoapp_payment`
--
ALTER TABLE `zohoapp_payment`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `zohoapp_payments_recur`
--
ALTER TABLE `zohoapp_payments_recur`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `zohoapp_payment_item`
--
ALTER TABLE `zohoapp_payment_item`
  ADD PRIMARY KEY (`id`),
  ADD KEY `zohoapp_payment_item_vendor_id_1f13747c_fk_zohoapp_v` (`vendor_id`);

--
-- Indexes for table `zohoapp_payment_made`
--
ALTER TABLE `zohoapp_payment_made`
  ADD PRIMARY KEY (`id`),
  ADD KEY `zohoapp_payment_made_cash_id_ce980ed1_fk_zohoapp_banking_id` (`cash_id`),
  ADD KEY `zohoapp_payment_made_payment_id_25f17721_fk_zohoapp_method_id` (`payment_id`),
  ADD KEY `zohoapp_payment_made_user_id_01582d41_fk_auth_user_id` (`user_id`),
  ADD KEY `zohoapp_payment_made_vendor_id_ec3b4229_fk_zohoapp_v` (`vendor_id`);

--
-- Indexes for table `zohoapp_payment_made_item`
--
ALTER TABLE `zohoapp_payment_made_item`
  ADD PRIMARY KEY (`id`),
  ADD KEY `zohoapp_payment_made_item_cash_id_014bd0a9_fk_zohoapp_banking_id` (`cash_id`),
  ADD KEY `zohoapp_payment_made_item_user_id_8e9cb65a_fk_auth_user_id` (`user_id`),
  ADD KEY `zohoapp_payment_made_vendor_id_454ead0d_fk_zohoapp_v` (`vendor_id`);

--
-- Indexes for table `zohoapp_payment_terms`
--
ALTER TABLE `zohoapp_payment_terms`
  ADD PRIMARY KEY (`id`),
  ADD KEY `zohoapp_payment_terms_user_id_7484602e_fk_auth_user_id` (`user_id`);

--
-- Indexes for table `zohoapp_payment_termse`
--
ALTER TABLE `zohoapp_payment_termse`
  ADD PRIMARY KEY (`id`),
  ADD KEY `zohoapp_payment_termse_user_id_ba90974a_fk_auth_user_id` (`user_id`);

--
-- Indexes for table `zohoapp_payroll`
--
ALTER TABLE `zohoapp_payroll`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `zohoapp_payrollfiles`
--
ALTER TABLE `zohoapp_payrollfiles`
  ADD PRIMARY KEY (`id`),
  ADD KEY `zohoapp_payrollfiles_payroll_id_15f6f031_fk_zohoapp_payroll_id` (`payroll_id`);

--
-- Indexes for table `zohoapp_pricelist`
--
ALTER TABLE `zohoapp_pricelist`
  ADD PRIMARY KEY (`id`),
  ADD KEY `zohoapp_pricelist_itemtable_id_dd9439ee_fk_zohoapp_additem_id` (`itemtable_id`),
  ADD KEY `zohoapp_pricelist_user_id_5565b21a_fk_auth_user_id` (`user_id`);

--
-- Indexes for table `zohoapp_project`
--
ALTER TABLE `zohoapp_project`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `zohoapp_project1`
--
ALTER TABLE `zohoapp_project1`
  ADD PRIMARY KEY (`id`),
  ADD KEY `zohoapp_project1_c_name_id_d0fc51df_fk_zohoapp_customer_id` (`c_name_id`),
  ADD KEY `zohoapp_project1_user_id_ee581bc9_fk_auth_user_id` (`user_id`);

--
-- Indexes for table `zohoapp_purchase`
--
ALTER TABLE `zohoapp_purchase`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `zohoapp_purchasebillitems`
--
ALTER TABLE `zohoapp_purchasebillitems`
  ADD PRIMARY KEY (`id`),
  ADD KEY `zohoapp_purchasebill_purchase_bill_id_4b070432_fk_zohoapp_p` (`purchase_bill_id`);

--
-- Indexes for table `zohoapp_purchasebills`
--
ALTER TABLE `zohoapp_purchasebills`
  ADD PRIMARY KEY (`id`),
  ADD KEY `zohoapp_purchasebills_user_id_1cc213a5_fk_auth_user_id` (`user_id`);

--
-- Indexes for table `zohoapp_purchase_order`
--
ALTER TABLE `zohoapp_purchase_order`
  ADD PRIMARY KEY (`id`),
  ADD KEY `zohoapp_purchase_ord_company_id_a0b70c55_fk_zohoapp_c` (`company_id`),
  ADD KEY `zohoapp_purchase_order_user_id_bb9d8b64_fk_auth_user_id` (`user_id`);

--
-- Indexes for table `zohoapp_purchase_order_items`
--
ALTER TABLE `zohoapp_purchase_order_items`
  ADD PRIMARY KEY (`id`),
  ADD KEY `zohoapp_purchase_ord_PO_id_16b6e309_fk_zohoapp_p` (`PO_id`),
  ADD KEY `zohoapp_purchase_ord_company_id_f99c81c5_fk_zohoapp_c` (`company_id`),
  ADD KEY `zohoapp_purchase_order_items_user_id_eef0b25a_fk_auth_user_id` (`user_id`);

--
-- Indexes for table `zohoapp_recurring_bills`
--
ALTER TABLE `zohoapp_recurring_bills`
  ADD PRIMARY KEY (`id`),
  ADD KEY `zohoapp_recurring_bi_company_id_4c655eb9_fk_zohoapp_c` (`company_id`),
  ADD KEY `zohoapp_recurring_bills_user_id_f8e27ae5_fk_auth_user_id` (`user_id`);

--
-- Indexes for table `zohoapp_recurring_bills_items`
--
ALTER TABLE `zohoapp_recurring_bills_items`
  ADD PRIMARY KEY (`id`),
  ADD KEY `zohoapp_recurring_bi_company_id_f5ffb0cd_fk_zohoapp_c` (`company_id`),
  ADD KEY `zohoapp_recurring_bi_recur_bills_id_281870ff_fk_zohoapp_r` (`recur_bills_id`),
  ADD KEY `zohoapp_recurring_bills_items_user_id_e609a5d0_fk_auth_user_id` (`user_id`);

--
-- Indexes for table `zohoapp_recurring_invoice`
--
ALTER TABLE `zohoapp_recurring_invoice`
  ADD PRIMARY KEY (`id`),
  ADD KEY `zohoapp_recurring_in_cust_name_id_d4adb4a5_fk_zohoapp_c` (`cust_name_id`),
  ADD KEY `zohoapp_recurring_in_items_id_4304cb23_fk_zohoapp_a` (`items_id`),
  ADD KEY `zohoapp_recurring_invoice_user_id_6662bf41_fk_auth_user_id` (`user_id`);

--
-- Indexes for table `zohoapp_recur_itemtable`
--
ALTER TABLE `zohoapp_recur_itemtable`
  ADD PRIMARY KEY (`id`),
  ADD KEY `zohoapp_recur_itemta_ri_id_d03624f6_fk_zohoapp_r` (`ri_id`);

--
-- Indexes for table `zohoapp_remarks_table`
--
ALTER TABLE `zohoapp_remarks_table`
  ADD PRIMARY KEY (`id`),
  ADD KEY `zohoapp_remarks_table_user_id_e800b444_fk_auth_user_id` (`user_id`),
  ADD KEY `zohoapp_remarks_tabl_vendor_id_4ed58d2b_fk_zohoapp_v` (`vendor_id`);

--
-- Indexes for table `zohoapp_repeat_every`
--
ALTER TABLE `zohoapp_repeat_every`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `zohoapp_retainerinvoice`
--
ALTER TABLE `zohoapp_retainerinvoice`
  ADD PRIMARY KEY (`id`),
  ADD KEY `zohoapp_retainerinvo_customer_name_id_92fe88c3_fk_zohoapp_c` (`customer_name_id`),
  ADD KEY `zohoapp_retainerinvoice_user_id_4b64b67a_fk_auth_user_id` (`user_id`);

--
-- Indexes for table `zohoapp_retaineritems`
--
ALTER TABLE `zohoapp_retaineritems`
  ADD PRIMARY KEY (`id`),
  ADD KEY `zohoapp_retaineritem_retainer_id_4edf9019_fk_zohoapp_r` (`retainer_id`);

--
-- Indexes for table `zohoapp_sales`
--
ALTER TABLE `zohoapp_sales`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `zohoapp_salesorder`
--
ALTER TABLE `zohoapp_salesorder`
  ADD PRIMARY KEY (`id`),
  ADD KEY `zohoapp_salesorder_customer_id_52d5dc9a_fk_zohoapp_customer_id` (`customer_id`),
  ADD KEY `zohoapp_salesorder_terms_id_d1a5d4b7_fk_zohoapp_payment_terms_id` (`terms_id`);

--
-- Indexes for table `zohoapp_sales_item`
--
ALTER TABLE `zohoapp_sales_item`
  ADD PRIMARY KEY (`id`),
  ADD KEY `zohoapp_sales_item_sale_id_cfc317c8_fk_zohoapp_salesorder_id` (`sale_id`);

--
-- Indexes for table `zohoapp_sample_table`
--
ALTER TABLE `zohoapp_sample_table`
  ADD PRIMARY KEY (`id`),
  ADD KEY `zohoapp_sample_table_pl_id_bd6b31ee_fk_zohoapp_pricelist_id` (`pl_id`);

--
-- Indexes for table `zohoapp_task`
--
ALTER TABLE `zohoapp_task`
  ADD PRIMARY KEY (`id`),
  ADD KEY `zohoapp_task_c_name_id_ead0b606_fk_zohoapp_customer_id` (`c_name_id`),
  ADD KEY `zohoapp_task_proj_id_4fc84d50_fk_zohoapp_project1_id` (`proj_id`);

--
-- Indexes for table `zohoapp_transactions`
--
ALTER TABLE `zohoapp_transactions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `zohoapp_transactions_bank_id_638c1260_fk_zohoapp_bankcreation_id` (`bank_id`),
  ADD KEY `zohoapp_transactions_user_id_07539e51_fk_auth_user_id` (`user_id`);

--
-- Indexes for table `zohoapp_unit`
--
ALTER TABLE `zohoapp_unit`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `zohoapp_usercreate`
--
ALTER TABLE `zohoapp_usercreate`
  ADD PRIMARY KEY (`id`),
  ADD KEY `zohoapp_usercreate_projnn_id_1af066fb_fk_zohoapp_project1_id` (`projnn_id`),
  ADD KEY `zohoapp_usercreate_userss_id_14bf68dd_fk_auth_user_id` (`userss_id`);

--
-- Indexes for table `zohoapp_usernamez`
--
ALTER TABLE `zohoapp_usernamez`
  ADD PRIMARY KEY (`id`),
  ADD KEY `zohoapp_usernamez_projn_id_acef311a_fk_zohoapp_project1_id` (`projn_id`),
  ADD KEY `zohoapp_usernamez_users_id_2f04c1cd_fk_auth_user_id` (`users_id`);

--
-- Indexes for table `zohoapp_vendor_credits`
--
ALTER TABLE `zohoapp_vendor_credits`
  ADD PRIMARY KEY (`id`),
  ADD KEY `zohoapp_vendor_credits_user_id_cb22f223_fk_auth_user_id` (`user_id`);

--
-- Indexes for table `zohoapp_vendor_credits_bills`
--
ALTER TABLE `zohoapp_vendor_credits_bills`
  ADD PRIMARY KEY (`id`),
  ADD KEY `zohoapp_vendor_credi_company_id_fd4da6ea_fk_zohoapp_c` (`company_id`),
  ADD KEY `zohoapp_vendor_credits_bills_user_id_239730f7_fk_auth_user_id` (`user_id`);

--
-- Indexes for table `zohoapp_vendor_credits_bills_items_bills`
--
ALTER TABLE `zohoapp_vendor_credits_bills_items_bills`
  ADD PRIMARY KEY (`id`),
  ADD KEY `zohoapp_vendor_credi_company_id_4594718c_fk_zohoapp_c` (`company_id`),
  ADD KEY `zohoapp_vendor_credi_recur_bills_id_c4709655_fk_zohoapp_v` (`recur_bills_id`),
  ADD KEY `zohoapp_vendor_credi_user_id_47f46704_fk_auth_user` (`user_id`);

--
-- Indexes for table `zohoapp_vendor_invoice_item`
--
ALTER TABLE `zohoapp_vendor_invoice_item`
  ADD PRIMARY KEY (`id`),
  ADD KEY `zohoapp_vendor_invoi_inv_id_a77f1304_fk_zohoapp_v` (`inv_id`);

--
-- Indexes for table `zohoapp_vendor_table`
--
ALTER TABLE `zohoapp_vendor_table`
  ADD PRIMARY KEY (`id`),
  ADD KEY `zohoapp_vendor_table_user_id_1e8037b0_fk_auth_user_id` (`user_id`);

--
-- Indexes for table `zohoapp_vendor_tablee`
--
ALTER TABLE `zohoapp_vendor_tablee`
  ADD PRIMARY KEY (`id`),
  ADD KEY `zohoapp_vendor_tablee_user_id_059b7e19_fk_auth_user_id` (`user_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `auth_group`
--
ALTER TABLE `auth_group`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `auth_permission`
--
ALTER TABLE `auth_permission`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=341;

--
-- AUTO_INCREMENT for table `auth_user`
--
ALTER TABLE `auth_user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=57;

--
-- AUTO_INCREMENT for table `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `django_admin_log`
--
ALTER TABLE `django_admin_log`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `django_content_type`
--
ALTER TABLE `django_content_type`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=86;

--
-- AUTO_INCREMENT for table `django_migrations`
--
ALTER TABLE `django_migrations`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=52;

--
-- AUTO_INCREMENT for table `zohoapp_account`
--
ALTER TABLE `zohoapp_account`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `zohoapp_accounte`
--
ALTER TABLE `zohoapp_accounte`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `zohoapp_addcustomere`
--
ALTER TABLE `zohoapp_addcustomere`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `zohoapp_additem`
--
ALTER TABLE `zohoapp_additem`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=55;

--
-- AUTO_INCREMENT for table `zohoapp_attache`
--
ALTER TABLE `zohoapp_attache`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `zohoapp_bank`
--
ALTER TABLE `zohoapp_bank`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `zohoapp_bankcreation`
--
ALTER TABLE `zohoapp_bankcreation`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `zohoapp_bankdetails`
--
ALTER TABLE `zohoapp_bankdetails`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `zohoapp_banking`
--
ALTER TABLE `zohoapp_banking`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `zohoapp_challanitems`
--
ALTER TABLE `zohoapp_challanitems`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `zohoapp_chart_of_account`
--
ALTER TABLE `zohoapp_chart_of_account`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=79;

--
-- AUTO_INCREMENT for table `zohoapp_chart_of_account_upload`
--
ALTER TABLE `zohoapp_chart_of_account_upload`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `zohoapp_comment`
--
ALTER TABLE `zohoapp_comment`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `zohoapp_commentmodel`
--
ALTER TABLE `zohoapp_commentmodel`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `zohoapp_comments_item`
--
ALTER TABLE `zohoapp_comments_item`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT for table `zohoapp_comments_table`
--
ALTER TABLE `zohoapp_comments_table`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `zohoapp_company_details`
--
ALTER TABLE `zohoapp_company_details`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=57;

--
-- AUTO_INCREMENT for table `zohoapp_contact_person_table`
--
ALTER TABLE `zohoapp_contact_person_table`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `zohoapp_credits_comments_table`
--
ALTER TABLE `zohoapp_credits_comments_table`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `zohoapp_credits_doc_upload_table`
--
ALTER TABLE `zohoapp_credits_doc_upload_table`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `zohoapp_credits_mail_table`
--
ALTER TABLE `zohoapp_credits_mail_table`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `zohoapp_customer`
--
ALTER TABLE `zohoapp_customer`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=64;

--
-- AUTO_INCREMENT for table `zohoapp_customer_comments_table`
--
ALTER TABLE `zohoapp_customer_comments_table`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `zohoapp_customer_contact_person_table`
--
ALTER TABLE `zohoapp_customer_contact_person_table`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `zohoapp_customer_doc_upload_table`
--
ALTER TABLE `zohoapp_customer_doc_upload_table`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `zohoapp_customer_mail_table`
--
ALTER TABLE `zohoapp_customer_mail_table`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `zohoapp_deliverychellan`
--
ALTER TABLE `zohoapp_deliverychellan`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `zohoapp_doc_upload_table`
--
ALTER TABLE `zohoapp_doc_upload_table`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `zohoapp_estimateitems`
--
ALTER TABLE `zohoapp_estimateitems`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `zohoapp_estimates`
--
ALTER TABLE `zohoapp_estimates`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `zohoapp_estimate_comments`
--
ALTER TABLE `zohoapp_estimate_comments`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `zohoapp_expense`
--
ALTER TABLE `zohoapp_expense`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `zohoapp_expensee`
--
ALTER TABLE `zohoapp_expensee`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `zohoapp_history`
--
ALTER TABLE `zohoapp_history`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `zohoapp_invoice`
--
ALTER TABLE `zohoapp_invoice`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `zohoapp_invoice_item`
--
ALTER TABLE `zohoapp_invoice_item`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `zohoapp_mail_table`
--
ALTER TABLE `zohoapp_mail_table`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `zohoapp_method`
--
ALTER TABLE `zohoapp_method`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `zohoapp_payment`
--
ALTER TABLE `zohoapp_payment`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `zohoapp_payments_recur`
--
ALTER TABLE `zohoapp_payments_recur`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `zohoapp_payment_item`
--
ALTER TABLE `zohoapp_payment_item`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `zohoapp_payment_made`
--
ALTER TABLE `zohoapp_payment_made`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `zohoapp_payment_made_item`
--
ALTER TABLE `zohoapp_payment_made_item`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `zohoapp_payment_terms`
--
ALTER TABLE `zohoapp_payment_terms`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `zohoapp_payment_termse`
--
ALTER TABLE `zohoapp_payment_termse`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `zohoapp_payroll`
--
ALTER TABLE `zohoapp_payroll`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `zohoapp_payrollfiles`
--
ALTER TABLE `zohoapp_payrollfiles`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `zohoapp_pricelist`
--
ALTER TABLE `zohoapp_pricelist`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `zohoapp_project`
--
ALTER TABLE `zohoapp_project`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `zohoapp_project1`
--
ALTER TABLE `zohoapp_project1`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `zohoapp_purchase`
--
ALTER TABLE `zohoapp_purchase`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=36;

--
-- AUTO_INCREMENT for table `zohoapp_purchasebillitems`
--
ALTER TABLE `zohoapp_purchasebillitems`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=49;

--
-- AUTO_INCREMENT for table `zohoapp_purchasebills`
--
ALTER TABLE `zohoapp_purchasebills`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT for table `zohoapp_purchase_order`
--
ALTER TABLE `zohoapp_purchase_order`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `zohoapp_purchase_order_items`
--
ALTER TABLE `zohoapp_purchase_order_items`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `zohoapp_recurring_bills`
--
ALTER TABLE `zohoapp_recurring_bills`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `zohoapp_recurring_bills_items`
--
ALTER TABLE `zohoapp_recurring_bills_items`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `zohoapp_recurring_invoice`
--
ALTER TABLE `zohoapp_recurring_invoice`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `zohoapp_recur_itemtable`
--
ALTER TABLE `zohoapp_recur_itemtable`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `zohoapp_remarks_table`
--
ALTER TABLE `zohoapp_remarks_table`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `zohoapp_repeat_every`
--
ALTER TABLE `zohoapp_repeat_every`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `zohoapp_retainerinvoice`
--
ALTER TABLE `zohoapp_retainerinvoice`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `zohoapp_retaineritems`
--
ALTER TABLE `zohoapp_retaineritems`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `zohoapp_sales`
--
ALTER TABLE `zohoapp_sales`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `zohoapp_salesorder`
--
ALTER TABLE `zohoapp_salesorder`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `zohoapp_sales_item`
--
ALTER TABLE `zohoapp_sales_item`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `zohoapp_sample_table`
--
ALTER TABLE `zohoapp_sample_table`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `zohoapp_task`
--
ALTER TABLE `zohoapp_task`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `zohoapp_transactions`
--
ALTER TABLE `zohoapp_transactions`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `zohoapp_unit`
--
ALTER TABLE `zohoapp_unit`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `zohoapp_usercreate`
--
ALTER TABLE `zohoapp_usercreate`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `zohoapp_usernamez`
--
ALTER TABLE `zohoapp_usernamez`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT for table `zohoapp_vendor_credits`
--
ALTER TABLE `zohoapp_vendor_credits`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `zohoapp_vendor_credits_bills`
--
ALTER TABLE `zohoapp_vendor_credits_bills`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `zohoapp_vendor_credits_bills_items_bills`
--
ALTER TABLE `zohoapp_vendor_credits_bills_items_bills`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `zohoapp_vendor_invoice_item`
--
ALTER TABLE `zohoapp_vendor_invoice_item`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `zohoapp_vendor_table`
--
ALTER TABLE `zohoapp_vendor_table`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=41;

--
-- AUTO_INCREMENT for table `zohoapp_vendor_tablee`
--
ALTER TABLE `zohoapp_vendor_tablee`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  ADD CONSTRAINT `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  ADD CONSTRAINT `auth_group_permissions_group_id_b120cbf9_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`);

--
-- Constraints for table `auth_permission`
--
ALTER TABLE `auth_permission`
  ADD CONSTRAINT `auth_permission_content_type_id_2f476e4b_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`);

--
-- Constraints for table `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  ADD CONSTRAINT `auth_user_groups_group_id_97559544_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`),
  ADD CONSTRAINT `auth_user_groups_user_id_6a12ed8b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Constraints for table `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  ADD CONSTRAINT `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  ADD CONSTRAINT `auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Constraints for table `django_admin_log`
--
ALTER TABLE `django_admin_log`
  ADD CONSTRAINT `django_admin_log_content_type_id_c4bce8eb_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`),
  ADD CONSTRAINT `django_admin_log_user_id_c564eba6_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Constraints for table `zohoapp_account`
--
ALTER TABLE `zohoapp_account`
  ADD CONSTRAINT `zohoapp_account_user_id_a8f0a224_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Constraints for table `zohoapp_accounte`
--
ALTER TABLE `zohoapp_accounte`
  ADD CONSTRAINT `zohoapp_accounte_user_id_ecd7e3ba_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Constraints for table `zohoapp_addcustomere`
--
ALTER TABLE `zohoapp_addcustomere`
  ADD CONSTRAINT `zohoapp_addcustomere_user_id_ec098b9f_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Constraints for table `zohoapp_additem`
--
ALTER TABLE `zohoapp_additem`
  ADD CONSTRAINT `zohoapp_additem_purchase_id_d23b162b_fk_zohoapp_purchase_id` FOREIGN KEY (`purchase_id`) REFERENCES `zohoapp_purchase` (`id`),
  ADD CONSTRAINT `zohoapp_additem_sales_id_03cb7295_fk_zohoapp_sales_id` FOREIGN KEY (`sales_id`) REFERENCES `zohoapp_sales` (`id`),
  ADD CONSTRAINT `zohoapp_additem_unit_id_a111ed1a_fk_zohoapp_unit_id` FOREIGN KEY (`unit_id`) REFERENCES `zohoapp_unit` (`id`),
  ADD CONSTRAINT `zohoapp_additem_user_id_a82f8ea4_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Constraints for table `zohoapp_attache`
--
ALTER TABLE `zohoapp_attache`
  ADD CONSTRAINT `zohoapp_attache_expense_id_410471a7_fk_zohoapp_expensee_id` FOREIGN KEY (`expense_id`) REFERENCES `zohoapp_expensee` (`id`),
  ADD CONSTRAINT `zohoapp_attache_user_id_ca77a1b4_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Constraints for table `zohoapp_bank`
--
ALTER TABLE `zohoapp_bank`
  ADD CONSTRAINT `zohoapp_bank_user_id_643a32f6_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Constraints for table `zohoapp_bankcreation`
--
ALTER TABLE `zohoapp_bankcreation`
  ADD CONSTRAINT `zohoapp_bankcreation_user_id_40d11ee3_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Constraints for table `zohoapp_bankdetails`
--
ALTER TABLE `zohoapp_bankdetails`
  ADD CONSTRAINT `zohoapp_bankdetails_payroll_id_76971e2b_fk_zohoapp_payroll_id` FOREIGN KEY (`payroll_id`) REFERENCES `zohoapp_payroll` (`id`);

--
-- Constraints for table `zohoapp_banking`
--
ALTER TABLE `zohoapp_banking`
  ADD CONSTRAINT `zohoapp_banking_user_id_56334a28_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Constraints for table `zohoapp_challanitems`
--
ALTER TABLE `zohoapp_challanitems`
  ADD CONSTRAINT `zohoapp_challanitems_chellan_id_95bdd2cc_fk_zohoapp_d` FOREIGN KEY (`chellan_id`) REFERENCES `zohoapp_deliverychellan` (`id`);

--
-- Constraints for table `zohoapp_chart_of_account`
--
ALTER TABLE `zohoapp_chart_of_account`
  ADD CONSTRAINT `zohoapp_chart_of_account_user_id_8b6ea36b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Constraints for table `zohoapp_chart_of_account_upload`
--
ALTER TABLE `zohoapp_chart_of_account_upload`
  ADD CONSTRAINT `zohoapp_chart_of_acc_account_id_8d503d18_fk_zohoapp_c` FOREIGN KEY (`account_id`) REFERENCES `zohoapp_chart_of_account` (`id`),
  ADD CONSTRAINT `zohoapp_chart_of_account_upload_user_id_adc672e0_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Constraints for table `zohoapp_comment`
--
ALTER TABLE `zohoapp_comment`
  ADD CONSTRAINT `zohoapp_comment_expense_id_7a313a70_fk_zohoapp_expense_id` FOREIGN KEY (`expense_id`) REFERENCES `zohoapp_expense` (`id`);

--
-- Constraints for table `zohoapp_commentmodel`
--
ALTER TABLE `zohoapp_commentmodel`
  ADD CONSTRAINT `zohoapp_commentmodel_payroll_id_e203b98f_fk_zohoapp_payroll_id` FOREIGN KEY (`payroll_id`) REFERENCES `zohoapp_payroll` (`id`);

--
-- Constraints for table `zohoapp_comments_item`
--
ALTER TABLE `zohoapp_comments_item`
  ADD CONSTRAINT `zohoapp_comments_item_item_id_df0e0f8b_fk_zohoapp_additem_id` FOREIGN KEY (`item_id`) REFERENCES `zohoapp_additem` (`id`),
  ADD CONSTRAINT `zohoapp_comments_item_user_id_6cf8b81d_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Constraints for table `zohoapp_comments_table`
--
ALTER TABLE `zohoapp_comments_table`
  ADD CONSTRAINT `zohoapp_comments_tab_vendor_id_8fb574eb_fk_zohoapp_v` FOREIGN KEY (`vendor_id`) REFERENCES `zohoapp_vendor_table` (`id`),
  ADD CONSTRAINT `zohoapp_comments_table_user_id_cbf604ef_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Constraints for table `zohoapp_company_details`
--
ALTER TABLE `zohoapp_company_details`
  ADD CONSTRAINT `zohoapp_company_details_user_id_baa7d11b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Constraints for table `zohoapp_contact_person_table`
--
ALTER TABLE `zohoapp_contact_person_table`
  ADD CONSTRAINT `zohoapp_contact_pers_vendor_id_0d8205e2_fk_zohoapp_v` FOREIGN KEY (`vendor_id`) REFERENCES `zohoapp_vendor_table` (`id`),
  ADD CONSTRAINT `zohoapp_contact_person_table_user_id_d80576bb_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Constraints for table `zohoapp_credits_comments_table`
--
ALTER TABLE `zohoapp_credits_comments_table`
  ADD CONSTRAINT `zohoapp_credits_comm_vendor_id_4c82d043_fk_zohoapp_v` FOREIGN KEY (`vendor_id`) REFERENCES `zohoapp_vendor_credits_bills` (`id`),
  ADD CONSTRAINT `zohoapp_credits_comments_table_user_id_4c2e83a1_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Constraints for table `zohoapp_credits_doc_upload_table`
--
ALTER TABLE `zohoapp_credits_doc_upload_table`
  ADD CONSTRAINT `zohoapp_credits_doc__user_id_470b6a94_fk_auth_user` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`),
  ADD CONSTRAINT `zohoapp_credits_doc__vendor_id_2c60677f_fk_zohoapp_v` FOREIGN KEY (`vendor_id`) REFERENCES `zohoapp_vendor_credits_bills` (`id`);

--
-- Constraints for table `zohoapp_credits_mail_table`
--
ALTER TABLE `zohoapp_credits_mail_table`
  ADD CONSTRAINT `zohoapp_credits_mail_table_user_id_ee633584_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`),
  ADD CONSTRAINT `zohoapp_credits_mail_vendor_id_1e89492a_fk_zohoapp_v` FOREIGN KEY (`vendor_id`) REFERENCES `zohoapp_vendor_credits_bills` (`id`);

--
-- Constraints for table `zohoapp_customer`
--
ALTER TABLE `zohoapp_customer`
  ADD CONSTRAINT `zohoapp_customer_user_id_3f99e967_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Constraints for table `zohoapp_customer_comments_table`
--
ALTER TABLE `zohoapp_customer_comments_table`
  ADD CONSTRAINT `zohoapp_customer_com_customr_id_0509e70c_fk_zohoapp_c` FOREIGN KEY (`customr_id`) REFERENCES `zohoapp_customer` (`id`),
  ADD CONSTRAINT `zohoapp_customer_comments_table_user_id_b445ef19_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Constraints for table `zohoapp_customer_contact_person_table`
--
ALTER TABLE `zohoapp_customer_contact_person_table`
  ADD CONSTRAINT `zohoapp_customer_con_Customr_id_b49dc8ce_fk_zohoapp_c` FOREIGN KEY (`Customr_id`) REFERENCES `zohoapp_customer` (`id`),
  ADD CONSTRAINT `zohoapp_customer_con_user_id_c26ccad9_fk_auth_user` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Constraints for table `zohoapp_customer_doc_upload_table`
--
ALTER TABLE `zohoapp_customer_doc_upload_table`
  ADD CONSTRAINT `zohoapp_customer_doc_customr_id_00aa9ccf_fk_zohoapp_c` FOREIGN KEY (`customr_id`) REFERENCES `zohoapp_customer` (`id`),
  ADD CONSTRAINT `zohoapp_customer_doc_user_id_8716f49f_fk_auth_user` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Constraints for table `zohoapp_customer_mail_table`
--
ALTER TABLE `zohoapp_customer_mail_table`
  ADD CONSTRAINT `zohoapp_customer_mai_customr_id_eb536124_fk_zohoapp_c` FOREIGN KEY (`customr_id`) REFERENCES `zohoapp_customer` (`id`),
  ADD CONSTRAINT `zohoapp_customer_mail_table_user_id_09c8c4ba_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Constraints for table `zohoapp_deliverychellan`
--
ALTER TABLE `zohoapp_deliverychellan`
  ADD CONSTRAINT `zohoapp_deliverychellan_user_id_4ab9c41a_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Constraints for table `zohoapp_doc_upload_table`
--
ALTER TABLE `zohoapp_doc_upload_table`
  ADD CONSTRAINT `zohoapp_doc_upload_t_vendor_id_68db74c3_fk_zohoapp_v` FOREIGN KEY (`vendor_id`) REFERENCES `zohoapp_vendor_table` (`id`),
  ADD CONSTRAINT `zohoapp_doc_upload_table_user_id_4885edd6_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Constraints for table `zohoapp_estimateitems`
--
ALTER TABLE `zohoapp_estimateitems`
  ADD CONSTRAINT `zohoapp_estimateitem_estimate_id_a425c6aa_fk_zohoapp_e` FOREIGN KEY (`estimate_id`) REFERENCES `zohoapp_estimates` (`id`);

--
-- Constraints for table `zohoapp_estimates`
--
ALTER TABLE `zohoapp_estimates`
  ADD CONSTRAINT `zohoapp_estimates_customer_id_de0d8731_fk_zohoapp_customer_id` FOREIGN KEY (`customer_id`) REFERENCES `zohoapp_customer` (`id`),
  ADD CONSTRAINT `zohoapp_estimates_user_id_cd8e0786_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Constraints for table `zohoapp_estimate_comments`
--
ALTER TABLE `zohoapp_estimate_comments`
  ADD CONSTRAINT `zohoapp_estimate_com_estimate_id_2364b07b_fk_zohoapp_e` FOREIGN KEY (`estimate_id`) REFERENCES `zohoapp_estimates` (`id`),
  ADD CONSTRAINT `zohoapp_estimate_comments_user_id_c6a3e7fa_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Constraints for table `zohoapp_expense`
--
ALTER TABLE `zohoapp_expense`
  ADD CONSTRAINT `zohoapp_expense_user_id_86bec691_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`),
  ADD CONSTRAINT `zohoapp_expense_vendor_id_81726754_fk_zohoapp_vendor_table_id` FOREIGN KEY (`vendor_id`) REFERENCES `zohoapp_vendor_table` (`id`);

--
-- Constraints for table `zohoapp_expensee`
--
ALTER TABLE `zohoapp_expensee`
  ADD CONSTRAINT `zohoapp_expensee_company_id_f2a0cfb0_fk_zohoapp_c` FOREIGN KEY (`company_id`) REFERENCES `zohoapp_company_details` (`id`),
  ADD CONSTRAINT `zohoapp_expensee_customer_name_id_9b1d1f6f_fk_zohoapp_c` FOREIGN KEY (`customer_name_id`) REFERENCES `zohoapp_customer` (`id`),
  ADD CONSTRAINT `zohoapp_expensee_user_id_684816ee_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`),
  ADD CONSTRAINT `zohoapp_expensee_vendor_id_67b4c540_fk_zohoapp_vendor_table_id` FOREIGN KEY (`vendor_id`) REFERENCES `zohoapp_vendor_table` (`id`);

--
-- Constraints for table `zohoapp_history`
--
ALTER TABLE `zohoapp_history`
  ADD CONSTRAINT `zohoapp_history_p_id_aa17fcf0_fk_zohoapp_additem_id` FOREIGN KEY (`p_id`) REFERENCES `zohoapp_additem` (`id`),
  ADD CONSTRAINT `zohoapp_history_user_id_c771876f_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Constraints for table `zohoapp_invoice`
--
ALTER TABLE `zohoapp_invoice`
  ADD CONSTRAINT `zohoapp_invoice_customer_id_e73368cf_fk_zohoapp_customer_id` FOREIGN KEY (`customer_id`) REFERENCES `zohoapp_customer` (`id`),
  ADD CONSTRAINT `zohoapp_invoice_terms_id_7456cbf6_fk_zohoapp_payment_terms_id` FOREIGN KEY (`terms_id`) REFERENCES `zohoapp_payment_terms` (`id`);

--
-- Constraints for table `zohoapp_invoice_item`
--
ALTER TABLE `zohoapp_invoice_item`
  ADD CONSTRAINT `zohoapp_invoice_item_inv_id_a602a8f7_fk_zohoapp_invoice_id` FOREIGN KEY (`inv_id`) REFERENCES `zohoapp_invoice` (`id`);

--
-- Constraints for table `zohoapp_mail_table`
--
ALTER TABLE `zohoapp_mail_table`
  ADD CONSTRAINT `zohoapp_mail_table_user_id_3511a19d_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`),
  ADD CONSTRAINT `zohoapp_mail_table_vendor_id_57eec60d_fk_zohoapp_vendor_table_id` FOREIGN KEY (`vendor_id`) REFERENCES `zohoapp_vendor_table` (`id`);

--
-- Constraints for table `zohoapp_payment_item`
--
ALTER TABLE `zohoapp_payment_item`
  ADD CONSTRAINT `zohoapp_payment_item_vendor_id_1f13747c_fk_zohoapp_v` FOREIGN KEY (`vendor_id`) REFERENCES `zohoapp_vendor_table` (`id`);

--
-- Constraints for table `zohoapp_payment_made`
--
ALTER TABLE `zohoapp_payment_made`
  ADD CONSTRAINT `zohoapp_payment_made_cash_id_ce980ed1_fk_zohoapp_banking_id` FOREIGN KEY (`cash_id`) REFERENCES `zohoapp_banking` (`id`),
  ADD CONSTRAINT `zohoapp_payment_made_payment_id_25f17721_fk_zohoapp_method_id` FOREIGN KEY (`payment_id`) REFERENCES `zohoapp_method` (`id`),
  ADD CONSTRAINT `zohoapp_payment_made_user_id_01582d41_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`),
  ADD CONSTRAINT `zohoapp_payment_made_vendor_id_ec3b4229_fk_zohoapp_v` FOREIGN KEY (`vendor_id`) REFERENCES `zohoapp_vendor_table` (`id`);

--
-- Constraints for table `zohoapp_payment_made_item`
--
ALTER TABLE `zohoapp_payment_made_item`
  ADD CONSTRAINT `zohoapp_payment_made_item_cash_id_014bd0a9_fk_zohoapp_banking_id` FOREIGN KEY (`cash_id`) REFERENCES `zohoapp_banking` (`id`),
  ADD CONSTRAINT `zohoapp_payment_made_item_user_id_8e9cb65a_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`),
  ADD CONSTRAINT `zohoapp_payment_made_vendor_id_454ead0d_fk_zohoapp_v` FOREIGN KEY (`vendor_id`) REFERENCES `zohoapp_vendor_table` (`id`);

--
-- Constraints for table `zohoapp_payment_terms`
--
ALTER TABLE `zohoapp_payment_terms`
  ADD CONSTRAINT `zohoapp_payment_terms_user_id_7484602e_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Constraints for table `zohoapp_payment_termse`
--
ALTER TABLE `zohoapp_payment_termse`
  ADD CONSTRAINT `zohoapp_payment_termse_user_id_ba90974a_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Constraints for table `zohoapp_payrollfiles`
--
ALTER TABLE `zohoapp_payrollfiles`
  ADD CONSTRAINT `zohoapp_payrollfiles_payroll_id_15f6f031_fk_zohoapp_payroll_id` FOREIGN KEY (`payroll_id`) REFERENCES `zohoapp_payroll` (`id`);

--
-- Constraints for table `zohoapp_pricelist`
--
ALTER TABLE `zohoapp_pricelist`
  ADD CONSTRAINT `zohoapp_pricelist_itemtable_id_dd9439ee_fk_zohoapp_additem_id` FOREIGN KEY (`itemtable_id`) REFERENCES `zohoapp_additem` (`id`),
  ADD CONSTRAINT `zohoapp_pricelist_user_id_5565b21a_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Constraints for table `zohoapp_project1`
--
ALTER TABLE `zohoapp_project1`
  ADD CONSTRAINT `zohoapp_project1_c_name_id_d0fc51df_fk_zohoapp_customer_id` FOREIGN KEY (`c_name_id`) REFERENCES `zohoapp_customer` (`id`),
  ADD CONSTRAINT `zohoapp_project1_user_id_ee581bc9_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Constraints for table `zohoapp_purchasebillitems`
--
ALTER TABLE `zohoapp_purchasebillitems`
  ADD CONSTRAINT `zohoapp_purchasebill_purchase_bill_id_4b070432_fk_zohoapp_p` FOREIGN KEY (`purchase_bill_id`) REFERENCES `zohoapp_purchasebills` (`id`);

--
-- Constraints for table `zohoapp_purchasebills`
--
ALTER TABLE `zohoapp_purchasebills`
  ADD CONSTRAINT `zohoapp_purchasebills_user_id_1cc213a5_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Constraints for table `zohoapp_purchase_order`
--
ALTER TABLE `zohoapp_purchase_order`
  ADD CONSTRAINT `zohoapp_purchase_ord_company_id_a0b70c55_fk_zohoapp_c` FOREIGN KEY (`company_id`) REFERENCES `zohoapp_company_details` (`id`),
  ADD CONSTRAINT `zohoapp_purchase_order_user_id_bb9d8b64_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Constraints for table `zohoapp_purchase_order_items`
--
ALTER TABLE `zohoapp_purchase_order_items`
  ADD CONSTRAINT `zohoapp_purchase_ord_PO_id_16b6e309_fk_zohoapp_p` FOREIGN KEY (`PO_id`) REFERENCES `zohoapp_purchase_order` (`id`),
  ADD CONSTRAINT `zohoapp_purchase_ord_company_id_f99c81c5_fk_zohoapp_c` FOREIGN KEY (`company_id`) REFERENCES `zohoapp_company_details` (`id`),
  ADD CONSTRAINT `zohoapp_purchase_order_items_user_id_eef0b25a_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Constraints for table `zohoapp_recurring_bills`
--
ALTER TABLE `zohoapp_recurring_bills`
  ADD CONSTRAINT `zohoapp_recurring_bi_company_id_4c655eb9_fk_zohoapp_c` FOREIGN KEY (`company_id`) REFERENCES `zohoapp_company_details` (`id`),
  ADD CONSTRAINT `zohoapp_recurring_bills_user_id_f8e27ae5_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Constraints for table `zohoapp_recurring_bills_items`
--
ALTER TABLE `zohoapp_recurring_bills_items`
  ADD CONSTRAINT `zohoapp_recurring_bi_company_id_f5ffb0cd_fk_zohoapp_c` FOREIGN KEY (`company_id`) REFERENCES `zohoapp_company_details` (`id`),
  ADD CONSTRAINT `zohoapp_recurring_bi_recur_bills_id_281870ff_fk_zohoapp_r` FOREIGN KEY (`recur_bills_id`) REFERENCES `zohoapp_recurring_bills` (`id`),
  ADD CONSTRAINT `zohoapp_recurring_bills_items_user_id_e609a5d0_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Constraints for table `zohoapp_recurring_invoice`
--
ALTER TABLE `zohoapp_recurring_invoice`
  ADD CONSTRAINT `zohoapp_recurring_in_cust_name_id_d4adb4a5_fk_zohoapp_c` FOREIGN KEY (`cust_name_id`) REFERENCES `zohoapp_customer` (`id`),
  ADD CONSTRAINT `zohoapp_recurring_in_items_id_4304cb23_fk_zohoapp_a` FOREIGN KEY (`items_id`) REFERENCES `zohoapp_additem` (`id`),
  ADD CONSTRAINT `zohoapp_recurring_invoice_user_id_6662bf41_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Constraints for table `zohoapp_recur_itemtable`
--
ALTER TABLE `zohoapp_recur_itemtable`
  ADD CONSTRAINT `zohoapp_recur_itemta_ri_id_d03624f6_fk_zohoapp_r` FOREIGN KEY (`ri_id`) REFERENCES `zohoapp_recurring_invoice` (`id`);

--
-- Constraints for table `zohoapp_remarks_table`
--
ALTER TABLE `zohoapp_remarks_table`
  ADD CONSTRAINT `zohoapp_remarks_tabl_vendor_id_4ed58d2b_fk_zohoapp_v` FOREIGN KEY (`vendor_id`) REFERENCES `zohoapp_vendor_table` (`id`),
  ADD CONSTRAINT `zohoapp_remarks_table_user_id_e800b444_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Constraints for table `zohoapp_retainerinvoice`
--
ALTER TABLE `zohoapp_retainerinvoice`
  ADD CONSTRAINT `zohoapp_retainerinvo_customer_name_id_92fe88c3_fk_zohoapp_c` FOREIGN KEY (`customer_name_id`) REFERENCES `zohoapp_customer` (`id`),
  ADD CONSTRAINT `zohoapp_retainerinvoice_user_id_4b64b67a_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Constraints for table `zohoapp_retaineritems`
--
ALTER TABLE `zohoapp_retaineritems`
  ADD CONSTRAINT `zohoapp_retaineritem_retainer_id_4edf9019_fk_zohoapp_r` FOREIGN KEY (`retainer_id`) REFERENCES `zohoapp_retainerinvoice` (`id`);

--
-- Constraints for table `zohoapp_salesorder`
--
ALTER TABLE `zohoapp_salesorder`
  ADD CONSTRAINT `zohoapp_salesorder_customer_id_52d5dc9a_fk_zohoapp_customer_id` FOREIGN KEY (`customer_id`) REFERENCES `zohoapp_customer` (`id`),
  ADD CONSTRAINT `zohoapp_salesorder_terms_id_d1a5d4b7_fk_zohoapp_payment_terms_id` FOREIGN KEY (`terms_id`) REFERENCES `zohoapp_payment_terms` (`id`);

--
-- Constraints for table `zohoapp_sales_item`
--
ALTER TABLE `zohoapp_sales_item`
  ADD CONSTRAINT `zohoapp_sales_item_sale_id_cfc317c8_fk_zohoapp_salesorder_id` FOREIGN KEY (`sale_id`) REFERENCES `zohoapp_salesorder` (`id`);

--
-- Constraints for table `zohoapp_sample_table`
--
ALTER TABLE `zohoapp_sample_table`
  ADD CONSTRAINT `zohoapp_sample_table_pl_id_bd6b31ee_fk_zohoapp_pricelist_id` FOREIGN KEY (`pl_id`) REFERENCES `zohoapp_pricelist` (`id`);

--
-- Constraints for table `zohoapp_task`
--
ALTER TABLE `zohoapp_task`
  ADD CONSTRAINT `zohoapp_task_c_name_id_ead0b606_fk_zohoapp_customer_id` FOREIGN KEY (`c_name_id`) REFERENCES `zohoapp_customer` (`id`),
  ADD CONSTRAINT `zohoapp_task_proj_id_4fc84d50_fk_zohoapp_project1_id` FOREIGN KEY (`proj_id`) REFERENCES `zohoapp_project1` (`id`);

--
-- Constraints for table `zohoapp_transactions`
--
ALTER TABLE `zohoapp_transactions`
  ADD CONSTRAINT `zohoapp_transactions_bank_id_638c1260_fk_zohoapp_bankcreation_id` FOREIGN KEY (`bank_id`) REFERENCES `zohoapp_bankcreation` (`id`),
  ADD CONSTRAINT `zohoapp_transactions_user_id_07539e51_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Constraints for table `zohoapp_usercreate`
--
ALTER TABLE `zohoapp_usercreate`
  ADD CONSTRAINT `zohoapp_usercreate_projnn_id_1af066fb_fk_zohoapp_project1_id` FOREIGN KEY (`projnn_id`) REFERENCES `zohoapp_project1` (`id`),
  ADD CONSTRAINT `zohoapp_usercreate_userss_id_14bf68dd_fk_auth_user_id` FOREIGN KEY (`userss_id`) REFERENCES `auth_user` (`id`);

--
-- Constraints for table `zohoapp_usernamez`
--
ALTER TABLE `zohoapp_usernamez`
  ADD CONSTRAINT `zohoapp_usernamez_projn_id_acef311a_fk_zohoapp_project1_id` FOREIGN KEY (`projn_id`) REFERENCES `zohoapp_project1` (`id`),
  ADD CONSTRAINT `zohoapp_usernamez_users_id_2f04c1cd_fk_auth_user_id` FOREIGN KEY (`users_id`) REFERENCES `auth_user` (`id`);

--
-- Constraints for table `zohoapp_vendor_credits`
--
ALTER TABLE `zohoapp_vendor_credits`
  ADD CONSTRAINT `zohoapp_vendor_credits_user_id_cb22f223_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Constraints for table `zohoapp_vendor_credits_bills`
--
ALTER TABLE `zohoapp_vendor_credits_bills`
  ADD CONSTRAINT `zohoapp_vendor_credi_company_id_fd4da6ea_fk_zohoapp_c` FOREIGN KEY (`company_id`) REFERENCES `zohoapp_company_details` (`id`),
  ADD CONSTRAINT `zohoapp_vendor_credits_bills_user_id_239730f7_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Constraints for table `zohoapp_vendor_credits_bills_items_bills`
--
ALTER TABLE `zohoapp_vendor_credits_bills_items_bills`
  ADD CONSTRAINT `zohoapp_vendor_credi_company_id_4594718c_fk_zohoapp_c` FOREIGN KEY (`company_id`) REFERENCES `zohoapp_company_details` (`id`),
  ADD CONSTRAINT `zohoapp_vendor_credi_recur_bills_id_c4709655_fk_zohoapp_v` FOREIGN KEY (`recur_bills_id`) REFERENCES `zohoapp_vendor_credits_bills` (`id`),
  ADD CONSTRAINT `zohoapp_vendor_credi_user_id_47f46704_fk_auth_user` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Constraints for table `zohoapp_vendor_invoice_item`
--
ALTER TABLE `zohoapp_vendor_invoice_item`
  ADD CONSTRAINT `zohoapp_vendor_invoi_inv_id_a77f1304_fk_zohoapp_v` FOREIGN KEY (`inv_id`) REFERENCES `zohoapp_vendor_credits` (`id`);

--
-- Constraints for table `zohoapp_vendor_table`
--
ALTER TABLE `zohoapp_vendor_table`
  ADD CONSTRAINT `zohoapp_vendor_table_user_id_1e8037b0_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Constraints for table `zohoapp_vendor_tablee`
--
ALTER TABLE `zohoapp_vendor_tablee`
  ADD CONSTRAINT `zohoapp_vendor_tablee_user_id_059b7e19_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
