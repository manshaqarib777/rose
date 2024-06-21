-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Jun 10, 2024 at 02:47 PM
-- Server version: 8.0.30
-- PHP Version: 8.1.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `video_chat_laravel`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin_settings`
--

CREATE TABLE `admin_settings` (
  `id` int UNSIGNED NOT NULL,
  `title` varchar(255) NOT NULL,
  `description` text NOT NULL,
  `keywords` varchar(255) NOT NULL,
  `update_length` int UNSIGNED NOT NULL COMMENT 'The max length of updates',
  `status_page` enum('0','1') NOT NULL DEFAULT '1' COMMENT '0 Offline, 1 Online',
  `email_verification` enum('0','1') NOT NULL COMMENT '0 Off, 1 On',
  `email_no_reply` varchar(200) NOT NULL,
  `email_admin` varchar(200) NOT NULL,
  `captcha` enum('on','off') NOT NULL DEFAULT 'on',
  `file_size_allowed` int UNSIGNED NOT NULL COMMENT 'Size in Bytes',
  `google_analytics` text NOT NULL,
  `paypal_account` varchar(200) NOT NULL,
  `twitter` varchar(200) NOT NULL,
  `facebook` varchar(200) NOT NULL,
  `pinterest` varchar(200) NOT NULL,
  `instagram` varchar(200) NOT NULL,
  `google_adsense` text NOT NULL,
  `currency_symbol` char(10) NOT NULL,
  `currency_code` varchar(20) NOT NULL,
  `min_subscription_amount` int UNSIGNED NOT NULL,
  `payment_gateway` enum('PayPal','Stripe') NOT NULL DEFAULT 'PayPal',
  `min_width_height_image` varchar(100) NOT NULL,
  `fee_commission` int UNSIGNED NOT NULL,
  `max_subscription_amount` int UNSIGNED NOT NULL,
  `date_format` varchar(200) NOT NULL,
  `link_privacy` varchar(200) NOT NULL,
  `link_terms` varchar(200) NOT NULL,
  `currency_position` varchar(100) NOT NULL DEFAULT 'left',
  `facebook_login` enum('on','off') NOT NULL DEFAULT 'off',
  `amount_min_withdrawal` int UNSIGNED NOT NULL,
  `youtube` varchar(200) NOT NULL,
  `github` varchar(200) NOT NULL,
  `comment_length` int UNSIGNED NOT NULL,
  `days_process_withdrawals` int UNSIGNED NOT NULL,
  `google_login` enum('on','off') NOT NULL DEFAULT 'off',
  `number_posts_show` tinyint UNSIGNED NOT NULL,
  `number_comments_show` tinyint UNSIGNED NOT NULL,
  `registration_active` enum('0','1') NOT NULL DEFAULT '1' COMMENT '0 No, 1 Yes',
  `account_verification` enum('0','1') NOT NULL DEFAULT '1' COMMENT '0 No, 1 Yes',
  `logo` varchar(100) NOT NULL,
  `logo_2` varchar(100) NOT NULL,
  `favicon` varchar(100) NOT NULL,
  `home_index` varchar(100) NOT NULL,
  `bg_gradient` varchar(100) NOT NULL,
  `img_1` varchar(100) NOT NULL,
  `img_2` varchar(100) NOT NULL,
  `img_3` varchar(100) NOT NULL,
  `img_4` varchar(100) NOT NULL,
  `avatar` varchar(100) NOT NULL,
  `show_counter` enum('on','off') NOT NULL DEFAULT 'on',
  `color_default` varchar(100) NOT NULL,
  `decimal_format` enum('comma','dot') NOT NULL DEFAULT 'dot',
  `version` varchar(5) NOT NULL,
  `link_cookies` varchar(200) NOT NULL,
  `story_length` int UNSIGNED NOT NULL,
  `maintenance_mode` enum('on','off') NOT NULL DEFAULT 'off',
  `company` varchar(100) NOT NULL,
  `country` varchar(255) NOT NULL,
  `address` varchar(100) NOT NULL,
  `city` varchar(100) NOT NULL,
  `zip` varchar(100) NOT NULL,
  `vat` varchar(100) NOT NULL,
  `widget_creators_featured` enum('on','off') NOT NULL DEFAULT 'on',
  `home_style` int UNSIGNED NOT NULL,
  `file_size_allowed_verify_account` int UNSIGNED NOT NULL,
  `payout_method_paypal` enum('on','off') NOT NULL DEFAULT 'on',
  `payout_method_bank` enum('on','off') NOT NULL DEFAULT 'on',
  `min_tip_amount` int UNSIGNED NOT NULL,
  `max_tip_amount` int UNSIGNED NOT NULL,
  `min_ppv_amount` int UNSIGNED NOT NULL,
  `max_ppv_amount` int UNSIGNED NOT NULL,
  `min_deposits_amount` int UNSIGNED NOT NULL,
  `max_deposits_amount` int UNSIGNED NOT NULL,
  `button_style` enum('rounded','normal') NOT NULL DEFAULT 'rounded',
  `twitter_login` enum('on','off') NOT NULL DEFAULT 'off',
  `hide_admin_profile` enum('on','off') NOT NULL DEFAULT 'off',
  `requests_verify_account` enum('on','off') NOT NULL DEFAULT 'on',
  `navbar_background_color` varchar(30) NOT NULL,
  `navbar_text_color` varchar(30) NOT NULL,
  `footer_background_color` varchar(30) NOT NULL,
  `footer_text_color` varchar(30) NOT NULL,
  `preloading` enum('on','off') NOT NULL DEFAULT 'off',
  `preloading_image` varchar(100) NOT NULL,
  `watermark` enum('on','off') NOT NULL DEFAULT 'on',
  `earnings_simulator` enum('on','off') NOT NULL DEFAULT 'on',
  `custom_css` text NOT NULL,
  `custom_js` text NOT NULL,
  `alert_adult` enum('on','off') NOT NULL DEFAULT 'off',
  `genders` varchar(250) NOT NULL,
  `cover_default` varchar(100) NOT NULL,
  `who_can_see_content` enum('all','users') NOT NULL DEFAULT 'all',
  `users_can_edit_post` enum('on','off') NOT NULL DEFAULT 'on',
  `disable_wallet` enum('on','off') NOT NULL DEFAULT 'on',
  `disable_banner_cookies` enum('on','off') NOT NULL DEFAULT 'off',
  `wallet_format` enum('real_money','credits','points','tokens') NOT NULL DEFAULT 'real_money',
  `maximum_files_post` int UNSIGNED NOT NULL DEFAULT '5',
  `maximum_files_msg` int UNSIGNED NOT NULL DEFAULT '5',
  `announcement` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `announcement_show` varchar(100) NOT NULL,
  `announcement_cookie` varchar(20) NOT NULL,
  `limit_categories` int UNSIGNED NOT NULL DEFAULT '3',
  `captcha_contact` enum('on','off') NOT NULL DEFAULT 'on',
  `disable_tips` enum('on','off') NOT NULL DEFAULT 'off',
  `payout_method_payoneer` enum('on','off') NOT NULL DEFAULT 'off',
  `payout_method_zelle` enum('on','off') NOT NULL DEFAULT 'off',
  `type_announcement` char(10) NOT NULL DEFAULT 'primary',
  `referral_system` enum('on','off') NOT NULL DEFAULT 'off',
  `auto_approve_post` enum('on','off') NOT NULL DEFAULT 'on',
  `watermark_on_videos` enum('on','off') NOT NULL DEFAULT 'on',
  `percentage_referred` int UNSIGNED NOT NULL DEFAULT '5',
  `referral_transaction_limit` char(10) NOT NULL DEFAULT '1',
  `video_encoding` enum('on','off') NOT NULL DEFAULT 'off',
  `live_streaming_status` enum('on','off') NOT NULL DEFAULT 'off',
  `live_streaming_minimum_price` int UNSIGNED NOT NULL DEFAULT '5',
  `live_streaming_max_price` int UNSIGNED NOT NULL DEFAULT '100',
  `agora_app_id` varchar(200) NOT NULL,
  `tiktok` varchar(200) NOT NULL,
  `snapchat` varchar(200) NOT NULL,
  `limit_live_streaming_paid` int UNSIGNED NOT NULL,
  `limit_live_streaming_free` int UNSIGNED NOT NULL,
  `live_streaming_free` enum('0','1') NOT NULL DEFAULT '0',
  `type_withdrawals` char(50) NOT NULL DEFAULT 'custom',
  `shop` tinyint(1) NOT NULL DEFAULT '0',
  `min_price_product` int UNSIGNED NOT NULL DEFAULT '5',
  `max_price_product` int UNSIGNED NOT NULL DEFAULT '100',
  `digital_product_sale` tinyint(1) NOT NULL DEFAULT '0',
  `custom_content` tinyint(1) NOT NULL DEFAULT '0',
  `tax_on_wallet` tinyint(1) NOT NULL DEFAULT '1',
  `stripe_connect` tinyint UNSIGNED NOT NULL DEFAULT '0',
  `stripe_connect_countries` longtext NOT NULL,
  `physical_products` tinyint(1) NOT NULL DEFAULT '0',
  `disable_login_register_email` tinyint(1) NOT NULL DEFAULT '0',
  `disable_contact` tinyint(1) NOT NULL DEFAULT '0',
  `specific_day_payment_withdrawals` int UNSIGNED NOT NULL,
  `disable_new_post_notification` tinyint(1) NOT NULL DEFAULT '0',
  `disable_search_creators` tinyint(1) NOT NULL DEFAULT '0',
  `search_creators_genders` tinyint(1) NOT NULL DEFAULT '0',
  `generate_qr_code` tinyint(1) NOT NULL DEFAULT '0',
  `autofollow_admin` tinyint(1) NOT NULL DEFAULT '0',
  `allow_zip_files` tinyint(1) NOT NULL DEFAULT '1',
  `reddit` varchar(200) NOT NULL,
  `telegram` varchar(200) NOT NULL,
  `linkedin` varchar(200) NOT NULL,
  `push_notification_status` tinyint(1) NOT NULL DEFAULT '0',
  `onesignal_appid` varchar(150) NOT NULL,
  `onesignal_restapi` varchar(150) NOT NULL,
  `status_pwa` tinyint(1) NOT NULL DEFAULT '1',
  `zip_verification_creator` tinyint(1) NOT NULL DEFAULT '1',
  `amount_max_withdrawal` int UNSIGNED NOT NULL,
  `story_status` tinyint(1) NOT NULL DEFAULT '0',
  `story_image` tinyint(1) NOT NULL DEFAULT '1',
  `story_text` tinyint(1) NOT NULL DEFAULT '1',
  `story_max_videos_length` int UNSIGNED NOT NULL DEFAULT '30',
  `payout_method_western_union` enum('on','off') NOT NULL DEFAULT 'off',
  `payout_method_crypto` enum('on','off') NOT NULL DEFAULT 'off',
  `threads` varchar(200) NOT NULL,
  `watermak_video` varchar(100) NOT NULL,
  `coconut_key` varchar(255) NOT NULL,
  `encoding_method` varchar(255) NOT NULL DEFAULT 'ffmpeg',
  `allow_scheduled_posts` tinyint(1) DEFAULT '0',
  `google_tag_manager_head` text NOT NULL,
  `google_tag_manager_body` text NOT NULL,
  `live_streaming_private` enum('on','off') NOT NULL DEFAULT 'off',
  `live_streaming_minimum_price_private` decimal(10,2) DEFAULT NULL,
  `live_streaming_max_price_private` decimal(10,2) DEFAULT NULL,
  `limit_live_streaming_private` int UNSIGNED NOT NULL,
  `show_address_company_footer` tinyint(1) DEFAULT '0',
  `watermark_position` varchar(50) NOT NULL DEFAULT 'center',
  `coconut_region` varchar(100) NOT NULL DEFAULT 'Virginia',
  `payout_method_mercadopago` enum('on','off') NOT NULL DEFAULT 'off',
  `theme` enum('light','dark') CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL DEFAULT 'dark',
  `allow_creators_deactivate_profile` tinyint(1) NOT NULL DEFAULT '0',
  `allow_epub_files` tinyint(1) NOT NULL DEFAULT '0',
  `gifts` tinyint(1) NOT NULL DEFAULT '0',
  `disable_free_post` tinyint(1) NOT NULL DEFAULT '0',
  `disable_explore_section` tinyint(1) NOT NULL DEFAULT '0',
  `disable_creators_section` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb3;

--
-- Dumping data for table `admin_settings`
--

INSERT INTO `admin_settings` (`id`, `title`, `description`, `keywords`, `update_length`, `status_page`, `email_verification`, `email_no_reply`, `email_admin`, `captcha`, `file_size_allowed`, `google_analytics`, `paypal_account`, `twitter`, `facebook`, `pinterest`, `instagram`, `google_adsense`, `currency_symbol`, `currency_code`, `min_subscription_amount`, `payment_gateway`, `min_width_height_image`, `fee_commission`, `max_subscription_amount`, `date_format`, `link_privacy`, `link_terms`, `currency_position`, `facebook_login`, `amount_min_withdrawal`, `youtube`, `github`, `comment_length`, `days_process_withdrawals`, `google_login`, `number_posts_show`, `number_comments_show`, `registration_active`, `account_verification`, `logo`, `logo_2`, `favicon`, `home_index`, `bg_gradient`, `img_1`, `img_2`, `img_3`, `img_4`, `avatar`, `show_counter`, `color_default`, `decimal_format`, `version`, `link_cookies`, `story_length`, `maintenance_mode`, `company`, `country`, `address`, `city`, `zip`, `vat`, `widget_creators_featured`, `home_style`, `file_size_allowed_verify_account`, `payout_method_paypal`, `payout_method_bank`, `min_tip_amount`, `max_tip_amount`, `min_ppv_amount`, `max_ppv_amount`, `min_deposits_amount`, `max_deposits_amount`, `button_style`, `twitter_login`, `hide_admin_profile`, `requests_verify_account`, `navbar_background_color`, `navbar_text_color`, `footer_background_color`, `footer_text_color`, `preloading`, `preloading_image`, `watermark`, `earnings_simulator`, `custom_css`, `custom_js`, `alert_adult`, `genders`, `cover_default`, `who_can_see_content`, `users_can_edit_post`, `disable_wallet`, `disable_banner_cookies`, `wallet_format`, `maximum_files_post`, `maximum_files_msg`, `announcement`, `announcement_show`, `announcement_cookie`, `limit_categories`, `captcha_contact`, `disable_tips`, `payout_method_payoneer`, `payout_method_zelle`, `type_announcement`, `referral_system`, `auto_approve_post`, `watermark_on_videos`, `percentage_referred`, `referral_transaction_limit`, `video_encoding`, `live_streaming_status`, `live_streaming_minimum_price`, `live_streaming_max_price`, `agora_app_id`, `tiktok`, `snapchat`, `limit_live_streaming_paid`, `limit_live_streaming_free`, `live_streaming_free`, `type_withdrawals`, `shop`, `min_price_product`, `max_price_product`, `digital_product_sale`, `custom_content`, `tax_on_wallet`, `stripe_connect`, `stripe_connect_countries`, `physical_products`, `disable_login_register_email`, `disable_contact`, `specific_day_payment_withdrawals`, `disable_new_post_notification`, `disable_search_creators`, `search_creators_genders`, `generate_qr_code`, `autofollow_admin`, `allow_zip_files`, `reddit`, `telegram`, `linkedin`, `push_notification_status`, `onesignal_appid`, `onesignal_restapi`, `status_pwa`, `zip_verification_creator`, `amount_max_withdrawal`, `story_status`, `story_image`, `story_text`, `story_max_videos_length`, `payout_method_western_union`, `payout_method_crypto`, `threads`, `watermak_video`, `coconut_key`, `encoding_method`, `allow_scheduled_posts`, `google_tag_manager_head`, `google_tag_manager_body`, `live_streaming_private`, `live_streaming_minimum_price_private`, `live_streaming_max_price_private`, `limit_live_streaming_private`, `show_address_company_footer`, `watermark_position`, `coconut_region`, `payout_method_mercadopago`, `theme`, `allow_creators_deactivate_profile`, `allow_epub_files`, `gifts`, `disable_free_post`, `disable_explore_section`, `disable_creators_section`) VALUES
(1, 'Yo-fans', 'Elevate your brand with strategic marketing. Connect authentically, leverage digital platforms, and captivate your audience for sustainment', 'donations,support,creators,Creaty,subscription', 250, '1', '', 'no-reply@rose-trip.com', 'rosetrip123456@gmail.com', 'off', 307200, '', 'paypal@yo-fans.com', '', '', '', '', '', '$', 'USD', 2, 'PayPal', '400', 20, 100, 'M d, Y', 'https://rose-trip.com/p/privacy', 'https://rose-trip.com/p/terms-of-service', 'left', '', 50, '', '', 150, 15, 'on', 5, 2, '1', '1', 'logo-1718011473.png', 'logo_2-1718011473.png', 'favicon-1701469341.png', 'home_index-1704561371.png', 'background-1703273292.jpg', 'image_index_1-1703272603.png', 'image_index_2-1703272603.png', 'image_index_3-1703272603.png', 'image_index_4-1703272603.png', 'default.jpg', 'off', '#ff0066', 'dot', '5.5', 'https://yousite.com/p/cookies', 500, 'off', 'hyper core LLC', 'United States', '1309 Coffeen Avenue STE 1200 Sheridan', 'Wyoming', '82801', '36-4981849', 'on', 0, 1024, 'on', 'on', 5, 500, 5, 100, 5, 1000, 'rounded', '', 'off', 'on', '#ffffff', '#3a3a3a', '#ffffff', '#5f5f5f', 'off', '', 'on', 'on', '', '', 'on', 'male,female', '', 'all', 'on', 'off', 'off', 'real_money', 5, 5, '', '', '', 3, 'on', 'off', 'off', 'off', 'primary', 'on', 'on', 'on', 5, '1', 'off', 'on', 5, 100, '195404c88e8c424fb229dd3b25b79e6d', '', '', 300, 20, '1', 'custom', 1, 5, 100, 1, 1, 1, 0, '', 1, 0, 0, 0, 0, 0, 1, 1, 0, 1, '', '', '', 1, '43c343d9-0934-4222-a099-aa920048705b', 'MmZiM2QxMTItZTZhNi00ZDA0LTgxYjItMmE4ZWE5MWVmNDQ1', 0, 1, 0, 1, 1, 1, 30, 'off', 'off', '', 'watermak-video.png', 'k-650a7458567fcaa7431ff5040e97387b', 'ffmpeg', 1, '', '', 'on', 5.00, 30.00, 60, 1, 'center', 'Virginia', 'off', 'dark', 0, 0, 1, 0, 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `advertisings`
--

CREATE TABLE `advertisings` (
  `id` bigint UNSIGNED NOT NULL,
  `title` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `url` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(150) COLLATE utf8mb4_unicode_ci NOT NULL,
  `clicks` int UNSIGNED NOT NULL,
  `impressions` int UNSIGNED NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '1',
  `expired_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `advertisings`
--

INSERT INTO `advertisings` (`id`, `title`, `description`, `url`, `image`, `clicks`, `impressions`, `status`, `expired_at`, `created_at`, `updated_at`) VALUES
(1, 'yo-live.com', 'Live Cam Shows, FREE Chat with Webcam Girls, Fun', 'https://yo-live.com/', '1701972824-IXtKQfNoHhdeoUCQA7RVGAn8HCFK1MwG.png', 82, 251, 1, '2024-12-07 18:08:33', '2023-12-07 18:08:33', '2024-06-10 04:06:28'),
(2, 'cherish dating app', 'The easiest premium global chat app to make friends and find connections', 'https://play.google.com/store/apps/details?id=bnb.App_kor_cherish_bnb', '1701972814-NGU8PMN71Usvo6F6VEj8apjjXfkfoOG1.png', 82, 249, 1, '2024-12-07 18:08:55', '2023-12-07 18:08:55', '2024-06-10 04:03:47');

-- --------------------------------------------------------

--
-- Table structure for table `ad_click_impressions`
--

CREATE TABLE `ad_click_impressions` (
  `id` bigint UNSIGNED NOT NULL,
  `advertisings_id` bigint UNSIGNED NOT NULL,
  `type` char(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ip` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `ad_click_impressions`
--

INSERT INTO `ad_click_impressions` (`id`, `advertisings_id`, `type`, `ip`, `created_at`, `updated_at`) VALUES
(1, 1, 'impression', '175.194.96.167', '2023-12-07 18:15:05', '2023-12-07 18:15:05'),
(2, 2, 'impression', '175.194.96.167', '2023-12-07 18:22:55', '2023-12-07 18:22:55'),
(3, 1, 'click', '175.194.96.167', '2023-12-07 18:55:40', '2023-12-07 18:55:40'),
(4, 1, 'impression', '50.21.188.50', '2023-12-07 23:24:48', '2023-12-07 23:24:48'),
(5, 2, 'impression', '211.216.8.80', '2023-12-08 15:04:45', '2023-12-08 15:04:45'),
(6, 2, 'impression', '118.235.15.126', '2023-12-08 15:06:04', '2023-12-08 15:06:04'),
(7, 1, 'impression', '118.235.15.126', '2023-12-08 15:07:03', '2023-12-08 15:07:03'),
(8, 1, 'impression', '211.216.8.80', '2023-12-08 15:11:51', '2023-12-08 15:11:51'),
(9, 1, 'impression', '5.188.62.21', '2023-12-08 19:01:45', '2023-12-08 19:01:45'),
(10, 2, 'impression', '5.188.62.140', '2023-12-08 20:36:03', '2023-12-08 20:36:03'),
(11, 1, 'impression', '5.188.62.140', '2023-12-08 20:36:38', '2023-12-08 20:36:38'),
(12, 2, 'impression', '5.188.62.21', '2023-12-08 20:50:59', '2023-12-08 20:50:59'),
(13, 2, 'impression', '5.188.62.76', '2023-12-08 20:56:44', '2023-12-08 20:56:44'),
(14, 2, 'impression', '44.203.91.18', '2023-12-08 21:01:13', '2023-12-08 21:01:13'),
(15, 1, 'impression', '44.203.91.18', '2023-12-08 21:02:01', '2023-12-08 21:02:01'),
(16, 1, 'impression', '5.188.62.76', '2023-12-08 21:05:20', '2023-12-08 21:05:20'),
(17, 2, 'impression', '3.248.202.69', '2023-12-08 22:18:45', '2023-12-08 22:18:45'),
(18, 1, 'impression', '3.81.172.31', '2023-12-09 00:51:17', '2023-12-09 00:51:17'),
(19, 1, 'impression', '54.173.157.97', '2023-12-09 01:17:41', '2023-12-09 01:17:41'),
(20, 1, 'impression', '50.21.188.120', '2023-12-09 01:30:59', '2023-12-09 01:30:59'),
(21, 2, 'impression', '44.211.157.230', '2023-12-09 05:02:23', '2023-12-09 05:02:23'),
(22, 1, 'impression', '44.211.157.230', '2023-12-09 05:03:05', '2023-12-09 05:03:05'),
(23, 2, 'impression', '202.47.32.59', '2023-12-09 11:20:04', '2023-12-09 11:20:04'),
(24, 1, 'impression', '202.47.32.59', '2023-12-09 11:20:44', '2023-12-09 11:20:44'),
(25, 1, 'impression', '3.235.183.18', '2023-12-09 20:33:19', '2023-12-09 20:33:19'),
(26, 2, 'impression', '54.173.157.97', '2023-12-10 02:17:14', '2023-12-10 02:17:14'),
(27, 1, 'impression', '50.21.188.83', '2023-12-10 22:36:51', '2023-12-10 22:36:51'),
(28, 2, 'impression', '66.249.65.195', '2023-12-11 10:37:30', '2023-12-11 10:37:30'),
(29, 2, 'impression', '121.164.206.166', '2023-12-11 12:44:45', '2023-12-11 12:44:45'),
(30, 1, 'impression', '121.164.206.166', '2023-12-11 14:02:59', '2023-12-11 14:02:59'),
(31, 2, 'impression', '103.172.167.67', '2023-12-11 15:24:28', '2023-12-11 15:24:28'),
(32, 1, 'impression', '103.172.167.67', '2023-12-11 15:24:36', '2023-12-11 15:24:36'),
(33, 1, 'impression', '34.206.58.19', '2023-12-11 16:40:09', '2023-12-11 16:40:09'),
(34, 2, 'impression', '34.206.58.19', '2023-12-11 16:40:10', '2023-12-11 16:40:10'),
(35, 1, 'click', '34.206.58.19', '2023-12-11 16:40:14', '2023-12-11 16:40:14'),
(36, 1, 'impression', '51.222.253.15', '2023-12-12 06:02:52', '2023-12-12 06:02:52'),
(37, 1, 'impression', '51.15.128.186', '2023-12-12 19:08:54', '2023-12-12 19:08:54'),
(38, 1, 'impression', '66.249.64.129', '2023-12-13 13:05:54', '2023-12-13 13:05:54'),
(39, 1, 'impression', '180.70.246.169', '2023-12-14 06:47:40', '2023-12-14 06:47:40'),
(40, 2, 'impression', '66.249.64.130', '2023-12-14 10:16:59', '2023-12-14 10:16:59'),
(41, 1, 'click', '66.249.64.109', '2023-12-14 10:17:00', '2023-12-14 10:17:00'),
(42, 1, 'impression', '221.155.251.104', '2023-12-14 12:50:48', '2023-12-14 12:50:48'),
(43, 2, 'impression', '221.155.251.104', '2023-12-14 12:51:19', '2023-12-14 12:51:19'),
(44, 1, 'impression', '50.21.188.45', '2023-12-14 17:33:43', '2023-12-14 17:33:43'),
(45, 2, 'impression', '104.167.222.126', '2023-12-15 13:08:41', '2023-12-15 13:08:41'),
(46, 2, 'impression', '74.208.2.165', '2023-12-15 23:31:16', '2023-12-15 23:31:16'),
(47, 1, 'impression', '51.222.253.3', '2023-12-16 08:09:17', '2023-12-16 08:09:17'),
(48, 2, 'impression', '51.222.253.8', '2023-12-16 16:20:41', '2023-12-16 16:20:41'),
(49, 1, 'impression', '18.234.245.22', '2023-12-16 17:31:13', '2023-12-16 17:31:13'),
(50, 2, 'impression', '18.234.245.22', '2023-12-16 17:32:07', '2023-12-16 17:32:07'),
(51, 2, 'impression', '23.20.205.139', '2023-12-16 18:44:13', '2023-12-16 18:44:13'),
(52, 1, 'impression', '23.20.205.139', '2023-12-16 18:44:49', '2023-12-16 18:44:49'),
(53, 2, 'impression', '54.237.245.103', '2023-12-16 19:18:20', '2023-12-16 19:18:20'),
(54, 1, 'impression', '54.237.245.103', '2023-12-16 19:18:57', '2023-12-16 19:18:57'),
(55, 2, 'impression', '54.198.181.10', '2023-12-16 19:56:45', '2023-12-16 19:56:45'),
(56, 1, 'impression', '66.249.66.35', '2023-12-16 21:03:03', '2023-12-16 21:03:03'),
(57, 1, 'impression', '74.208.2.218', '2023-12-16 23:34:22', '2023-12-16 23:34:22'),
(58, 2, 'impression', '52.90.196.158', '2023-12-17 00:05:55', '2023-12-17 00:05:55'),
(59, 1, 'impression', '52.90.196.158', '2023-12-17 00:06:34', '2023-12-17 00:06:34'),
(60, 1, 'impression', '54.198.181.10', '2023-12-17 17:19:52', '2023-12-17 17:19:52'),
(61, 2, 'impression', '3.84.129.243', '2023-12-18 01:10:21', '2023-12-18 01:10:21'),
(62, 1, 'impression', '3.84.129.243', '2023-12-18 01:11:13', '2023-12-18 01:11:13'),
(63, 2, 'impression', '198.251.73.17', '2023-12-18 02:03:11', '2023-12-18 02:03:11'),
(64, 2, 'impression', '66.249.66.201', '2023-12-18 12:05:01', '2023-12-18 12:05:01'),
(65, 2, 'click', '66.249.72.3', '2023-12-18 13:16:09', '2023-12-18 13:16:09'),
(66, 1, 'impression', '52.91.208.54', '2023-12-18 13:18:39', '2023-12-18 13:18:39'),
(67, 2, 'impression', '51.222.253.15', '2023-12-18 17:21:04', '2023-12-18 17:21:04'),
(68, 2, 'impression', '51.222.253.1', '2023-12-18 18:14:42', '2023-12-18 18:14:42'),
(69, 1, 'impression', '66.249.72.2', '2023-12-18 21:04:41', '2023-12-18 21:04:41'),
(70, 2, 'impression', '52.167.144.214', '2023-12-19 00:18:44', '2023-12-19 00:18:44'),
(71, 2, 'impression', '66.249.72.2', '2023-12-19 01:21:33', '2023-12-19 01:21:33'),
(72, 2, 'impression', '198.251.73.94', '2023-12-19 02:49:48', '2023-12-19 02:49:48'),
(73, 1, 'impression', '103.45.247.30', '2023-12-19 11:59:48', '2023-12-19 11:59:48'),
(74, 2, 'impression', '103.45.247.30', '2023-12-19 11:59:49', '2023-12-19 11:59:49'),
(75, 1, 'click', '103.45.247.30', '2023-12-19 11:59:49', '2023-12-19 11:59:49'),
(76, 2, 'click', '103.45.247.30', '2023-12-19 11:59:50', '2023-12-19 11:59:50'),
(77, 1, 'impression', '54.152.205.131', '2023-12-19 12:04:36', '2023-12-19 12:04:36'),
(78, 1, 'impression', '174.129.191.76', '2023-12-19 14:19:56', '2023-12-19 14:19:56'),
(79, 2, 'impression', '174.129.191.76', '2023-12-19 14:20:40', '2023-12-19 14:20:40'),
(80, 2, 'impression', '18.234.38.199', '2023-12-19 15:07:46', '2023-12-19 15:07:46'),
(81, 1, 'impression', '54.159.21.79', '2023-12-19 15:42:26', '2023-12-19 15:42:26'),
(82, 2, 'impression', '54.159.21.79', '2023-12-19 15:43:13', '2023-12-19 15:43:13'),
(83, 1, 'impression', '119.13.72.103', '2023-12-19 15:51:31', '2023-12-19 15:51:31'),
(84, 2, 'impression', '52.90.72.96', '2023-12-19 20:13:14', '2023-12-19 20:13:14'),
(85, 2, 'impression', '52.90.43.97', '2023-12-19 20:29:52', '2023-12-19 20:29:52'),
(86, 1, 'impression', '54.156.63.80', '2023-12-19 23:54:57', '2023-12-19 23:54:57'),
(87, 2, 'impression', '54.156.63.80', '2023-12-19 23:55:42', '2023-12-19 23:55:42'),
(88, 1, 'impression', '66.249.64.130', '2023-12-20 00:03:03', '2023-12-20 00:03:03'),
(89, 2, 'impression', '54.198.193.239', '2023-12-20 02:14:41', '2023-12-20 02:14:41'),
(90, 1, 'impression', '54.198.193.239', '2023-12-20 02:15:20', '2023-12-20 02:15:20'),
(91, 1, 'impression', '34.204.78.11', '2023-12-20 06:03:42', '2023-12-20 06:03:42'),
(92, 2, 'impression', '34.204.78.11', '2023-12-20 06:04:14', '2023-12-20 06:04:14'),
(93, 1, 'impression', '52.167.144.176', '2023-12-20 07:22:07', '2023-12-20 07:22:07'),
(94, 1, 'impression', '66.249.64.110', '2023-12-20 10:43:34', '2023-12-20 10:43:34'),
(95, 1, 'impression', '52.90.72.96', '2023-12-20 12:05:32', '2023-12-20 12:05:32'),
(96, 2, 'impression', '51.222.253.13', '2023-12-20 17:12:16', '2023-12-20 17:12:16'),
(97, 2, 'impression', '51.222.253.11', '2023-12-20 18:02:31', '2023-12-20 18:02:31'),
(98, 2, 'click', '51.222.253.14', '2023-12-20 21:03:09', '2023-12-20 21:03:09'),
(99, 2, 'impression', '54.152.205.131', '2023-12-20 21:44:51', '2023-12-20 21:44:51'),
(100, 1, 'impression', '52.90.43.97', '2023-12-20 23:12:58', '2023-12-20 23:12:58'),
(101, 2, 'impression', '74.208.2.131', '2023-12-20 23:31:02', '2023-12-20 23:31:02'),
(102, 1, 'impression', '66.249.64.96', '2023-12-20 23:36:43', '2023-12-20 23:36:43'),
(103, 2, 'click', '51.222.253.5', '2023-12-21 03:20:53', '2023-12-21 03:20:53'),
(104, 1, 'impression', '47.128.111.103', '2023-12-22 01:37:53', '2023-12-22 01:37:53'),
(105, 1, 'impression', '202.47.33.15', '2023-12-22 14:46:02', '2023-12-22 14:46:02'),
(106, 2, 'impression', '202.47.33.15', '2023-12-22 14:46:25', '2023-12-22 14:46:25'),
(107, 2, 'impression', '221.151.210.25', '2023-12-22 19:14:45', '2023-12-22 19:14:45'),
(108, 1, 'impression', '221.151.210.25', '2023-12-22 19:28:14', '2023-12-22 19:28:14'),
(109, 2, 'impression', '54.91.61.176', '2023-12-22 20:53:57', '2023-12-22 20:53:57'),
(110, 1, 'impression', '54.91.61.176', '2023-12-22 20:54:43', '2023-12-22 20:54:43'),
(111, 2, 'impression', '18.223.136.241', '2023-12-22 22:58:04', '2023-12-22 22:58:04'),
(112, 2, 'impression', '3.90.47.152', '2023-12-23 00:13:22', '2023-12-23 00:13:22'),
(113, 1, 'impression', '3.89.190.3', '2023-12-23 01:14:44', '2023-12-23 01:14:44'),
(114, 2, 'impression', '54.162.62.147', '2023-12-23 03:04:52', '2023-12-23 03:04:52'),
(115, 1, 'impression', '54.162.62.147', '2023-12-23 03:04:55', '2023-12-23 03:04:55'),
(116, 2, 'impression', '3.89.190.3', '2023-12-23 03:42:04', '2023-12-23 03:42:04'),
(117, 2, 'impression', '3.80.168.72', '2023-12-23 12:56:36', '2023-12-23 12:56:36'),
(118, 1, 'impression', '3.80.168.72', '2023-12-23 12:57:16', '2023-12-23 12:57:16'),
(119, 1, 'impression', '66.249.65.196', '2023-12-23 15:12:39', '2023-12-23 15:12:39'),
(120, 2, 'impression', '47.128.119.239', '2023-12-23 17:09:16', '2023-12-23 17:09:16'),
(121, 2, 'impression', '3.81.107.130', '2023-12-23 20:36:13', '2023-12-23 20:36:13'),
(122, 1, 'impression', '3.81.107.130', '2023-12-23 20:36:49', '2023-12-23 20:36:49'),
(123, 1, 'click', '47.128.46.190', '2023-12-24 01:19:22', '2023-12-24 01:19:22'),
(124, 1, 'impression', '18.223.136.241', '2023-12-24 02:26:38', '2023-12-24 02:26:38'),
(125, 2, 'impression', '47.128.124.22', '2023-12-24 03:23:41', '2023-12-24 03:23:41'),
(126, 2, 'impression', '47.128.57.118', '2023-12-24 04:00:28', '2023-12-24 04:00:28'),
(127, 1, 'click', '66.249.65.195', '2023-12-24 06:17:34', '2023-12-24 06:17:34'),
(128, 2, 'impression', '3.81.102.174', '2023-12-24 06:17:37', '2023-12-24 06:17:37'),
(129, 2, 'impression', '66.249.73.200', '2023-12-24 06:18:02', '2023-12-24 06:18:02'),
(130, 1, 'impression', '3.81.102.174', '2023-12-24 06:18:16', '2023-12-24 06:18:16'),
(131, 1, 'impression', '221.151.210.116', '2024-01-06 16:58:37', '2024-01-06 16:58:37'),
(132, 2, 'impression', '221.151.210.116', '2024-01-06 16:58:56', '2024-01-06 16:58:56'),
(133, 1, 'impression', '5.188.62.174', '2024-01-06 17:28:27', '2024-01-06 17:28:27'),
(134, 2, 'click', '47.128.117.48', '2024-01-06 20:02:51', '2024-01-06 20:02:51'),
(135, 1, 'click', '47.128.117.104', '2024-01-07 12:20:36', '2024-01-07 12:20:36'),
(136, 2, 'impression', '5.188.62.174', '2024-01-07 18:20:33', '2024-01-07 18:20:33'),
(137, 1, 'impression', '47.128.56.107', '2024-01-07 19:08:03', '2024-01-07 19:08:03'),
(138, 1, 'click', '216.244.66.238', '2024-01-08 04:55:43', '2024-01-08 04:55:43'),
(139, 2, 'impression', '216.244.66.238', '2024-01-08 05:48:15', '2024-01-08 05:48:15'),
(140, 2, 'impression', '51.222.253.7', '2024-01-08 07:58:28', '2024-01-08 07:58:28'),
(141, 1, 'impression', '51.222.253.7', '2024-01-08 18:35:41', '2024-01-08 18:35:41'),
(142, 1, 'impression', '78.138.117.191', '2024-01-08 18:41:05', '2024-01-08 18:41:05'),
(143, 2, 'impression', '78.138.117.191', '2024-01-08 18:43:11', '2024-01-08 18:43:11'),
(144, 1, 'click', '78.138.117.191', '2024-01-08 18:44:10', '2024-01-08 18:44:10'),
(145, 2, 'click', '78.138.117.191', '2024-01-08 18:50:28', '2024-01-08 18:50:28'),
(146, 2, 'impression', '51.222.253.18', '2024-01-08 23:01:30', '2024-01-08 23:01:30'),
(147, 1, 'impression', '185.191.171.17', '2024-01-09 05:41:08', '2024-01-09 05:41:08'),
(148, 2, 'click', '47.128.117.106', '2024-01-11 03:07:33', '2024-01-11 03:07:33'),
(149, 2, 'click', '66.249.77.199', '2024-01-11 03:28:53', '2024-01-11 03:28:53'),
(150, 1, 'impression', '1.254.179.100', '2024-01-11 18:47:53', '2024-01-11 18:47:53'),
(151, 2, 'impression', '210.95.148.48', '2024-01-12 13:48:56', '2024-01-12 13:48:56'),
(152, 1, 'impression', '210.95.148.48', '2024-01-12 13:49:12', '2024-01-12 13:49:12'),
(153, 1, 'impression', '216.244.66.238', '2024-01-12 13:49:26', '2024-01-12 13:49:26'),
(154, 2, 'click', '216.244.66.238', '2024-01-13 04:25:24', '2024-01-13 04:25:24'),
(155, 1, 'impression', '3.238.51.229', '2024-01-13 09:04:30', '2024-01-13 09:04:30'),
(156, 2, 'impression', '3.238.51.229', '2024-01-13 09:05:17', '2024-01-13 09:05:17'),
(157, 2, 'impression', '123.108.94.224', '2024-01-13 10:18:50', '2024-01-13 10:18:50'),
(158, 1, 'impression', '85.208.96.202', '2024-01-13 21:27:30', '2024-01-13 21:27:30'),
(159, 1, 'impression', '18.216.232.99', '2024-01-14 03:08:05', '2024-01-14 03:08:05'),
(160, 1, 'click', '47.128.34.54', '2024-01-14 03:26:02', '2024-01-14 03:26:02'),
(161, 2, 'impression', '50.21.188.54', '2024-01-14 09:55:49', '2024-01-14 09:55:49'),
(162, 2, 'impression', '66.249.69.1', '2024-01-14 10:17:08', '2024-01-14 10:17:08'),
(163, 2, 'click', '47.128.21.107', '2024-01-14 23:05:32', '2024-01-14 23:05:32'),
(164, 1, 'impression', '66.249.69.14', '2024-01-15 10:17:13', '2024-01-15 10:17:13'),
(165, 2, 'impression', '185.204.0.106', '2024-01-16 03:10:44', '2024-01-16 03:10:44'),
(166, 1, 'impression', '51.222.253.13', '2024-01-16 04:26:35', '2024-01-16 04:26:35'),
(167, 2, 'impression', '66.249.64.109', '2024-01-16 04:46:27', '2024-01-16 04:46:27'),
(168, 1, 'impression', '51.222.253.4', '2024-01-16 05:33:26', '2024-01-16 05:33:26'),
(169, 2, 'impression', '50.21.188.20', '2024-01-16 14:41:47', '2024-01-16 14:41:47'),
(170, 2, 'impression', '221.155.251.113', '2024-01-17 22:44:14', '2024-01-17 22:44:14'),
(171, 1, 'impression', '221.155.251.113', '2024-01-17 23:22:56', '2024-01-17 23:22:56'),
(172, 2, 'impression', '119.155.186.18', '2024-01-18 05:39:10', '2024-01-18 05:39:10'),
(173, 1, 'impression', '119.155.186.18', '2024-01-18 05:39:36', '2024-01-18 05:39:36'),
(174, 1, 'impression', '74.208.2.177', '2024-01-18 17:11:04', '2024-01-18 17:11:04'),
(175, 2, 'impression', '221.155.251.52', '2024-01-18 18:53:19', '2024-01-18 18:53:19'),
(176, 1, 'impression', '154.28.229.78', '2024-01-19 07:36:28', '2024-01-19 07:36:28'),
(177, 2, 'click', '47.128.116.57', '2024-01-19 15:13:22', '2024-01-19 15:13:22'),
(178, 2, 'impression', '185.191.171.7', '2024-01-19 16:57:10', '2024-01-19 16:57:10'),
(179, 1, 'impression', '221.155.251.52', '2024-01-19 19:23:01', '2024-01-19 19:23:01'),
(180, 1, 'impression', '198.251.73.119', '2024-01-20 05:14:58', '2024-01-20 05:14:58'),
(181, 2, 'impression', '13.52.230.85', '2024-01-20 23:34:27', '2024-01-20 23:34:27'),
(182, 1, 'impression', '172.59.137.30', '2024-01-21 06:35:25', '2024-01-21 06:35:25'),
(183, 2, 'impression', '172.59.137.30', '2024-01-21 06:35:47', '2024-01-21 06:35:47'),
(184, 1, 'impression', '108.65.29.29', '2024-01-21 07:01:04', '2024-01-21 07:01:04'),
(185, 2, 'impression', '51.222.253.2', '2024-01-21 08:12:49', '2024-01-21 08:12:49'),
(186, 1, 'click', '47.128.115.194', '2024-01-21 15:18:37', '2024-01-21 15:18:37'),
(187, 2, 'impression', '3.236.59.57', '2024-01-21 18:50:42', '2024-01-21 18:50:42'),
(188, 1, 'impression', '3.236.59.57', '2024-01-21 18:51:20', '2024-01-21 18:51:20'),
(189, 2, 'impression', '18.216.143.114', '2024-01-21 18:51:52', '2024-01-21 18:51:52'),
(190, 2, 'impression', '45.51.98.216', '2024-01-21 19:31:05', '2024-01-21 19:31:05'),
(191, 1, 'impression', '198.251.73.46', '2024-01-21 21:38:25', '2024-01-21 21:38:25'),
(192, 1, 'impression', '18.216.143.114', '2024-01-21 22:02:48', '2024-01-21 22:02:48'),
(193, 2, 'impression', '18.220.33.21', '2024-01-22 00:54:34', '2024-01-22 00:54:34'),
(194, 1, 'impression', '18.220.33.21', '2024-01-22 00:55:00', '2024-01-22 00:55:00'),
(195, 2, 'impression', '75.109.45.199', '2024-01-22 02:14:24', '2024-01-22 02:14:24'),
(196, 1, 'impression', '75.109.45.199', '2024-01-22 02:15:15', '2024-01-22 02:15:15'),
(197, 2, 'impression', '44.222.121.202', '2024-01-22 04:30:55', '2024-01-22 04:30:55'),
(198, 1, 'impression', '44.222.121.202', '2024-01-22 04:31:33', '2024-01-22 04:31:33'),
(199, 2, 'impression', '101.44.248.158', '2024-01-22 06:43:33', '2024-01-22 06:43:33'),
(200, 1, 'impression', '172.56.197.167', '2024-01-22 15:35:18', '2024-01-22 15:35:18'),
(201, 2, 'impression', '70.173.10.254', '2024-01-22 16:09:03', '2024-01-22 16:09:03'),
(202, 2, 'impression', '24.255.190.44', '2024-01-22 17:08:03', '2024-01-22 17:08:03'),
(203, 1, 'impression', '172.58.180.12', '2024-01-22 18:24:15', '2024-01-22 18:24:15'),
(204, 1, 'impression', '172.58.180.196', '2024-01-22 18:26:22', '2024-01-22 18:26:22'),
(205, 2, 'click', '47.128.52.22', '2024-01-22 23:33:10', '2024-01-22 23:33:10'),
(206, 2, 'impression', '66.249.64.104', '2024-01-23 04:46:36', '2024-01-23 04:46:36'),
(207, 2, 'impression', '14.42.100.92', '2024-01-23 18:25:40', '2024-01-23 18:25:40'),
(208, 1, 'impression', '14.42.100.92', '2024-01-23 18:30:38', '2024-01-23 18:30:38'),
(209, 1, 'impression', '94.225.161.13', '2024-01-23 18:37:06', '2024-01-23 18:37:06'),
(210, 2, 'impression', '94.225.161.13', '2024-01-23 18:37:16', '2024-01-23 18:37:16'),
(211, 1, 'impression', '18.217.88.147', '2024-01-23 21:52:45', '2024-01-23 21:52:45'),
(212, 2, 'impression', '18.217.88.147', '2024-01-23 21:53:19', '2024-01-23 21:53:19'),
(213, 1, 'impression', '18.222.105.145', '2024-01-23 22:09:22', '2024-01-23 22:09:22'),
(214, 2, 'impression', '101.44.250.63', '2024-01-23 23:02:24', '2024-01-23 23:02:24'),
(215, 1, 'impression', '44.220.63.47', '2024-01-24 00:18:41', '2024-01-24 00:18:41'),
(216, 2, 'impression', '44.220.63.47', '2024-01-24 00:19:24', '2024-01-24 00:19:24'),
(217, 2, 'click', '101.44.248.136', '2024-01-24 01:21:24', '2024-01-24 01:21:24'),
(218, 2, 'impression', '101.44.248.181', '2024-01-24 02:31:51', '2024-01-24 02:31:51'),
(219, 1, 'impression', '3.236.72.180', '2024-01-24 02:49:07', '2024-01-24 02:49:07'),
(220, 2, 'impression', '3.236.72.180', '2024-01-24 02:49:56', '2024-01-24 02:49:56'),
(221, 1, 'impression', '185.191.171.6', '2024-01-24 09:10:07', '2024-01-24 09:10:07'),
(222, 1, 'impression', '159.203.42.126', '2024-01-24 14:17:30', '2024-01-24 14:17:30'),
(223, 2, 'impression', '89.155.238.55', '2024-01-24 16:18:14', '2024-01-24 16:18:14'),
(224, 2, 'impression', '52.167.144.145', '2024-01-24 17:16:29', '2024-01-24 17:16:29'),
(225, 1, 'impression', '14.98.236.19', '2024-01-24 17:24:52', '2024-01-24 17:24:52'),
(226, 1, 'impression', '51.39.196.78', '2024-01-24 18:15:24', '2024-01-24 18:15:24'),
(227, 2, 'impression', '93.147.243.106', '2024-01-24 19:56:24', '2024-01-24 19:56:24'),
(228, 1, 'impression', '185.61.223.99', '2024-01-24 20:37:57', '2024-01-24 20:37:57'),
(229, 2, 'impression', '185.61.223.99', '2024-01-24 20:39:52', '2024-01-24 20:39:52'),
(230, 1, 'click', '185.61.223.99', '2024-01-24 20:40:14', '2024-01-24 20:40:14'),
(231, 2, 'click', '185.61.223.99', '2024-01-24 20:44:27', '2024-01-24 20:44:27'),
(232, 2, 'impression', '52.167.144.190', '2024-01-25 00:58:27', '2024-01-25 00:58:27'),
(233, 2, 'impression', '199.115.195.119', '2024-01-25 15:04:14', '2024-01-25 15:04:14'),
(234, 1, 'impression', '107.15.25.152', '2024-01-25 18:54:25', '2024-01-25 18:54:25'),
(235, 1, 'impression', '103.90.162.236', '2024-01-25 22:23:23', '2024-01-25 22:23:23'),
(236, 2, 'impression', '141.164.192.73', '2024-01-25 22:43:44', '2024-01-25 22:43:44'),
(237, 1, 'impression', '141.164.192.73', '2024-01-25 22:44:21', '2024-01-25 22:44:21'),
(238, 2, 'impression', '3.81.22.151', '2024-01-25 23:26:13', '2024-01-25 23:26:13'),
(239, 1, 'impression', '71.185.75.183', '2024-01-26 03:02:59', '2024-01-26 03:02:59'),
(240, 1, 'click', '71.185.75.183', '2024-01-26 03:03:37', '2024-01-26 03:03:37'),
(241, 1, 'impression', '98.25.16.101', '2024-01-26 04:02:27', '2024-01-26 04:02:27'),
(242, 1, 'impression', '136.32.203.203', '2024-01-26 04:07:59', '2024-01-26 04:07:59'),
(243, 1, 'click', '136.32.203.203', '2024-01-26 04:10:25', '2024-01-26 04:10:25'),
(244, 2, 'impression', '84.133.222.179', '2024-01-26 09:16:11', '2024-01-26 09:16:11'),
(245, 2, 'impression', '51.222.253.19', '2024-01-26 11:06:00', '2024-01-26 11:06:00'),
(246, 2, 'impression', '52.167.144.226', '2024-01-26 11:24:54', '2024-01-26 11:24:54'),
(247, 2, 'click', '47.128.125.5', '2024-01-27 15:25:54', '2024-01-27 15:25:54'),
(248, 2, 'impression', '220.117.247.164', '2024-01-27 17:19:07', '2024-01-27 17:19:07'),
(249, 1, 'impression', '220.117.247.164', '2024-01-27 17:19:32', '2024-01-27 17:19:32'),
(250, 1, 'impression', '51.222.253.9', '2024-01-28 01:09:12', '2024-01-28 01:09:12'),
(251, 2, 'impression', '66.249.64.196', '2024-01-28 11:51:06', '2024-01-28 11:51:06'),
(252, 1, 'impression', '5.78.96.180', '2024-01-28 16:17:47', '2024-01-28 16:17:47'),
(253, 1, 'impression', '3.20.239.5', '2024-01-29 04:06:23', '2024-01-29 04:06:23'),
(254, 2, 'impression', '3.20.239.5', '2024-01-29 04:07:04', '2024-01-29 04:07:04'),
(255, 2, 'impression', '3.16.37.251', '2024-01-29 04:18:59', '2024-01-29 04:18:59'),
(256, 2, 'impression', '174.236.40.60', '2024-01-29 04:50:10', '2024-01-29 04:50:10'),
(257, 1, 'impression', '174.236.40.60', '2024-01-29 04:50:29', '2024-01-29 04:50:29'),
(258, 1, 'impression', '51.222.253.1', '2024-01-29 04:56:51', '2024-01-29 04:56:51'),
(259, 1, 'impression', '45.30.129.220', '2024-01-29 05:08:54', '2024-01-29 05:08:54'),
(260, 1, 'impression', '75.233.167.246', '2024-01-29 05:11:45', '2024-01-29 05:11:45'),
(261, 1, 'impression', '185.191.171.9', '2024-01-29 07:54:22', '2024-01-29 07:54:22'),
(262, 1, 'click', '5.161.107.71', '2024-01-29 22:49:25', '2024-01-29 22:49:25'),
(263, 2, 'impression', '51.222.253.9', '2024-01-29 23:39:47', '2024-01-29 23:39:47'),
(264, 2, 'impression', '50.21.188.99', '2024-01-30 03:18:52', '2024-01-30 03:18:52'),
(265, 2, 'impression', '89.38.227.62', '2024-01-30 09:44:13', '2024-01-30 09:44:13'),
(266, 1, 'impression', '89.38.227.62', '2024-01-30 09:50:18', '2024-01-30 09:50:18'),
(267, 1, 'impression', '175.194.84.209', '2024-01-30 09:56:35', '2024-01-30 09:56:35'),
(268, 1, 'impression', '146.70.100.6', '2024-01-30 10:53:56', '2024-01-30 10:53:56'),
(269, 2, 'impression', '47.128.16.191', '2024-01-30 19:22:34', '2024-01-30 19:22:34'),
(270, 2, 'impression', '142.93.167.247', '2024-01-31 00:36:20', '2024-01-31 00:36:20'),
(271, 1, 'impression', '3.141.197.109', '2024-01-31 19:10:54', '2024-01-31 19:10:54'),
(272, 2, 'impression', '175.194.84.209', '2024-02-01 06:48:46', '2024-02-01 06:48:46'),
(273, 2, 'click', '66.249.64.129', '2024-02-01 07:31:05', '2024-02-01 07:31:05'),
(274, 2, 'impression', '197.211.61.143', '2024-02-01 08:29:19', '2024-02-01 08:29:19'),
(275, 1, 'impression', '197.211.61.143', '2024-02-01 08:30:13', '2024-02-01 08:30:13'),
(276, 2, 'impression', '15.207.103.159', '2024-02-01 10:43:59', '2024-02-01 10:43:59'),
(277, 2, 'impression', '101.44.249.50', '2024-02-01 17:25:08', '2024-02-01 17:25:08'),
(278, 1, 'impression', '47.128.34.222', '2024-02-01 21:17:24', '2024-02-01 21:17:24'),
(279, 2, 'impression', '101.44.248.49', '2024-02-01 21:26:40', '2024-02-01 21:26:40'),
(280, 1, 'impression', '3.110.226.29', '2024-02-01 23:37:32', '2024-02-01 23:37:32'),
(281, 2, 'impression', '3.110.226.29', '2024-02-01 23:37:52', '2024-02-01 23:37:52'),
(282, 1, 'impression', '60.54.209.92', '2024-02-02 13:11:54', '2024-02-02 13:11:54'),
(283, 1, 'impression', '190.92.215.37', '2024-02-02 15:25:22', '2024-02-02 15:25:22'),
(284, 1, 'impression', '3.224.220.101', '2024-02-02 16:37:09', '2024-02-02 16:37:09'),
(285, 2, 'impression', '3.224.220.101', '2024-02-02 16:37:33', '2024-02-02 16:37:33'),
(286, 1, 'impression', '52.70.240.171', '2024-02-02 16:40:49', '2024-02-02 16:40:49'),
(287, 2, 'impression', '52.70.240.171', '2024-02-02 16:41:57', '2024-02-02 16:41:57'),
(288, 1, 'impression', '101.44.250.151', '2024-02-02 17:29:35', '2024-02-02 17:29:35'),
(289, 1, 'impression', '47.128.62.85', '2024-02-02 20:35:49', '2024-02-02 20:35:49'),
(290, 2, 'impression', '23.22.35.162', '2024-02-03 04:58:53', '2024-02-03 04:58:53'),
(291, 1, 'impression', '23.22.35.162', '2024-02-03 06:07:57', '2024-02-03 06:07:57'),
(292, 2, 'impression', '185.191.171.10', '2024-02-03 13:00:26', '2024-02-03 13:00:26'),
(293, 2, 'impression', '85.208.96.204', '2024-02-03 19:50:02', '2024-02-03 19:50:02'),
(294, 1, 'impression', '185.191.171.7', '2024-02-03 22:27:32', '2024-02-03 22:27:32'),
(295, 1, 'click', '101.44.251.177', '2024-02-03 23:24:05', '2024-02-03 23:24:05'),
(296, 2, 'click', '52.70.240.171', '2024-02-04 18:39:00', '2024-02-04 18:39:00'),
(297, 1, 'click', '52.70.240.171', '2024-02-04 18:45:56', '2024-02-04 18:45:56'),
(298, 2, 'impression', '157.55.39.48', '2024-02-05 00:03:42', '2024-02-05 00:03:42'),
(299, 2, 'impression', '47.128.28.43', '2024-02-05 15:10:19', '2024-02-05 15:10:19'),
(300, 1, 'impression', '52.167.144.228', '2024-02-05 21:20:43', '2024-02-05 21:20:43'),
(301, 1, 'impression', '51.222.253.16', '2024-02-06 03:26:38', '2024-02-06 03:26:38'),
(302, 1, 'click', '47.128.42.12', '2024-02-07 07:35:22', '2024-02-07 07:35:22'),
(303, 1, 'impression', '51.222.253.5', '2024-02-07 20:49:53', '2024-02-07 20:49:53'),
(304, 2, 'click', '185.191.171.17', '2024-02-08 19:11:05', '2024-02-08 19:11:05'),
(305, 2, 'impression', '185.191.171.6', '2024-02-08 20:17:04', '2024-02-08 20:17:04'),
(306, 1, 'click', '85.208.96.212', '2024-02-09 01:35:41', '2024-02-09 01:35:41'),
(307, 1, 'impression', '52.14.54.45', '2024-02-09 18:14:41', '2024-02-09 18:14:41'),
(308, 2, 'impression', '52.14.54.45', '2024-02-09 18:15:13', '2024-02-09 18:15:13'),
(309, 1, 'impression', '51.222.253.10', '2024-02-10 17:21:57', '2024-02-10 17:21:57'),
(310, 1, 'impression', '3.19.53.140', '2024-02-10 20:08:30', '2024-02-10 20:08:30'),
(311, 2, 'impression', '3.22.100.104', '2024-02-11 09:05:30', '2024-02-11 09:05:30'),
(312, 1, 'impression', '3.22.100.104', '2024-02-11 09:06:07', '2024-02-11 09:06:07'),
(313, 1, 'impression', '18.216.244.27', '2024-02-11 13:42:27', '2024-02-11 13:42:27'),
(314, 2, 'impression', '18.216.244.27', '2024-02-11 17:43:29', '2024-02-11 17:43:29'),
(315, 2, 'impression', '52.15.91.85', '2024-02-11 19:33:14', '2024-02-11 19:33:14'),
(316, 1, 'click', '3.224.220.101', '2024-02-11 23:16:14', '2024-02-11 23:16:14'),
(317, 2, 'click', '3.224.220.101', '2024-02-12 02:33:14', '2024-02-12 02:33:14'),
(318, 1, 'impression', '52.15.91.85', '2024-02-12 04:27:32', '2024-02-12 04:27:32'),
(319, 2, 'impression', '18.223.169.235', '2024-02-12 05:14:19', '2024-02-12 05:14:19'),
(320, 2, 'impression', '3.19.53.140', '2024-02-12 06:42:00', '2024-02-12 06:42:00'),
(321, 1, 'impression', '18.223.169.235', '2024-02-12 10:28:15', '2024-02-12 10:28:15'),
(322, 1, 'impression', '3.22.234.218', '2024-02-12 14:39:21', '2024-02-12 14:39:21'),
(323, 2, 'impression', '121.141.10.80', '2024-02-13 04:00:30', '2024-02-13 04:00:30'),
(324, 1, 'impression', '88.99.240.224', '2024-02-14 06:44:24', '2024-02-14 06:44:24'),
(325, 1, 'click', '88.99.240.224', '2024-02-14 07:18:08', '2024-02-14 07:18:08'),
(326, 2, 'impression', '88.99.240.224', '2024-02-14 08:26:59', '2024-02-14 08:26:59'),
(327, 2, 'click', '88.99.240.224', '2024-02-14 08:54:11', '2024-02-14 08:54:11'),
(328, 2, 'impression', '118.235.2.38', '2024-02-16 03:10:04', '2024-02-16 03:10:04'),
(329, 1, 'click', '47.128.56.254', '2024-02-16 14:57:35', '2024-02-16 14:57:35'),
(330, 1, 'impression', '175.194.96.173', '2024-02-16 21:33:19', '2024-02-16 21:33:19'),
(331, 1, 'impression', '18.223.114.110', '2024-02-16 22:33:44', '2024-02-16 22:33:44'),
(332, 1, 'impression', '51.222.253.2', '2024-02-17 01:44:20', '2024-02-17 01:44:20'),
(333, 2, 'impression', '34.77.36.244', '2024-02-17 04:28:58', '2024-02-17 04:28:58'),
(334, 1, 'impression', '34.77.36.244', '2024-02-17 04:29:27', '2024-02-17 04:29:27'),
(335, 2, 'click', '34.77.36.244', '2024-02-17 04:29:59', '2024-02-17 04:29:59'),
(336, 1, 'click', '34.77.36.244', '2024-02-17 04:30:42', '2024-02-17 04:30:42'),
(337, 1, 'click', '66.249.64.110', '2024-02-17 04:43:58', '2024-02-17 04:43:58'),
(338, 1, 'impression', '44.222.115.184', '2024-02-17 09:00:21', '2024-02-17 09:00:21'),
(339, 2, 'impression', '44.222.115.184', '2024-02-17 09:01:00', '2024-02-17 09:01:00'),
(340, 1, 'impression', '85.208.96.193', '2024-02-17 14:41:46', '2024-02-17 14:41:46'),
(341, 2, 'impression', '51.222.253.10', '2024-02-17 16:22:59', '2024-02-17 16:22:59'),
(342, 2, 'impression', '47.128.127.133', '2024-02-17 20:44:55', '2024-02-17 20:44:55'),
(343, 1, 'click', '66.249.72.136', '2024-02-19 04:32:34', '2024-02-19 04:32:34'),
(344, 1, 'impression', '66.249.72.134', '2024-02-19 06:31:33', '2024-02-19 06:31:33'),
(345, 1, 'impression', '159.65.24.22', '2024-02-19 07:22:45', '2024-02-19 07:22:45'),
(346, 1, 'impression', '47.128.122.241', '2024-02-19 07:25:07', '2024-02-19 07:25:07'),
(347, 2, 'impression', '185.191.171.16', '2024-02-19 18:38:48', '2024-02-19 18:38:48'),
(348, 2, 'impression', '85.208.96.211', '2024-02-20 05:36:10', '2024-02-20 05:36:10'),
(349, 2, 'impression', '49.204.190.21', '2024-02-20 05:56:34', '2024-02-20 05:56:34'),
(350, 1, 'impression', '195.191.219.133', '2024-02-21 03:05:46', '2024-02-21 03:05:46'),
(351, 2, 'impression', '178.150.14.250', '2024-02-21 08:36:57', '2024-02-21 08:36:57'),
(352, 2, 'click', '95.91.111.25', '2024-02-21 15:33:00', '2024-02-21 15:33:00'),
(353, 1, 'impression', '95.91.111.25', '2024-02-21 15:33:49', '2024-02-21 15:33:49'),
(354, 1, 'impression', '47.128.28.17', '2024-02-21 22:24:34', '2024-02-21 22:24:34'),
(355, 2, 'impression', '47.128.24.85', '2024-02-21 23:11:23', '2024-02-21 23:11:23'),
(356, 1, 'impression', '135.181.213.220', '2024-02-22 05:39:07', '2024-02-22 05:39:07'),
(357, 1, 'click', '135.181.213.220', '2024-02-22 05:40:42', '2024-02-22 05:40:42'),
(358, 2, 'impression', '175.194.96.173', '2024-02-22 09:21:25', '2024-02-22 09:21:25'),
(359, 2, 'click', '66.249.64.131', '2024-02-22 15:45:28', '2024-02-22 15:45:28'),
(360, 2, 'impression', '47.128.117.105', '2024-02-22 21:43:24', '2024-02-22 21:43:24'),
(361, 1, 'impression', '50.21.188.109', '2024-02-23 10:19:59', '2024-02-23 10:19:59'),
(362, 2, 'click', '47.128.112.117', '2024-02-23 18:14:01', '2024-02-23 18:14:01'),
(363, 1, 'click', '51.222.253.3', '2024-02-23 18:53:47', '2024-02-23 18:53:47'),
(364, 2, 'impression', '47.128.29.177', '2024-02-24 00:43:36', '2024-02-24 00:43:36'),
(365, 1, 'impression', '47.128.38.187', '2024-02-24 03:54:24', '2024-02-24 03:54:24'),
(366, 2, 'impression', '47.128.39.35', '2024-02-24 12:22:50', '2024-02-24 12:22:50'),
(367, 1, 'impression', '47.128.57.84', '2024-02-24 20:46:05', '2024-02-24 20:46:05'),
(368, 2, 'impression', '47.128.45.162', '2024-02-25 06:14:38', '2024-02-25 06:14:38'),
(369, 2, 'impression', '47.128.127.191', '2024-02-25 09:36:33', '2024-02-25 09:36:33'),
(370, 1, 'impression', '47.128.99.16', '2024-02-25 13:08:37', '2024-02-25 13:08:37'),
(371, 1, 'click', '47.128.111.206', '2024-02-25 21:23:43', '2024-02-25 21:23:43'),
(372, 1, 'click', '47.128.125.113', '2024-02-26 09:04:31', '2024-02-26 09:04:31'),
(373, 2, 'impression', '47.128.46.40', '2024-02-26 18:31:39', '2024-02-26 18:31:39'),
(374, 2, 'impression', '47.128.126.144', '2024-02-26 19:04:21', '2024-02-26 19:04:21'),
(375, 1, 'impression', '51.222.253.18', '2024-02-27 02:33:56', '2024-02-27 02:33:56'),
(376, 1, 'impression', '118.235.25.6', '2024-02-27 05:56:56', '2024-02-27 05:56:56'),
(377, 1, 'click', '118.235.25.6', '2024-02-27 05:57:19', '2024-02-27 05:57:19'),
(378, 2, 'impression', '66.249.64.131', '2024-02-27 11:42:53', '2024-02-27 11:42:53'),
(379, 1, 'impression', '47.128.119.168', '2024-02-27 19:37:16', '2024-02-27 19:37:16'),
(380, 2, 'click', '47.128.34.210', '2024-02-27 20:18:03', '2024-02-27 20:18:03'),
(381, 1, 'impression', '51.222.253.8', '2024-02-27 21:29:38', '2024-02-27 21:29:38'),
(382, 2, 'impression', '51.222.253.14', '2024-02-27 22:50:23', '2024-02-27 22:50:23'),
(383, 2, 'impression', '66.249.64.110', '2024-02-28 00:13:05', '2024-02-28 00:13:05'),
(384, 2, 'impression', '47.128.57.47', '2024-02-28 15:04:14', '2024-02-28 15:04:14'),
(385, 1, 'impression', '47.128.20.14', '2024-02-29 23:37:49', '2024-02-29 23:37:49'),
(386, 1, 'impression', '198.251.73.101', '2024-03-01 03:45:29', '2024-03-01 03:45:29'),
(387, 1, 'impression', '47.128.18.181', '2024-03-01 07:28:46', '2024-03-01 07:28:46'),
(388, 1, 'impression', '85.208.96.201', '2024-03-01 09:16:43', '2024-03-01 09:16:43'),
(389, 1, 'impression', '47.104.227.193', '2024-03-02 05:49:37', '2024-03-02 05:49:37'),
(390, 1, 'click', '47.104.227.193', '2024-03-02 05:49:41', '2024-03-02 05:49:41'),
(391, 2, 'impression', '47.128.41.137', '2024-03-02 07:39:47', '2024-03-02 07:39:47'),
(392, 2, 'click', '47.128.50.213', '2024-03-02 19:34:59', '2024-03-02 19:34:59'),
(393, 1, 'click', '47.128.96.22', '2024-03-03 09:20:21', '2024-03-03 09:20:21'),
(394, 1, 'impression', '47.128.59.107', '2024-03-03 12:34:55', '2024-03-03 12:34:55'),
(395, 2, 'impression', '85.208.96.201', '2024-03-04 06:44:24', '2024-03-04 06:44:24'),
(396, 1, 'click', '23.22.35.162', '2024-03-04 09:10:01', '2024-03-04 09:10:01'),
(397, 1, 'impression', '66.249.64.109', '2024-03-06 03:23:54', '2024-03-06 03:23:54'),
(398, 2, 'impression', '66.249.68.33', '2024-03-06 13:46:32', '2024-03-06 13:46:32'),
(399, 2, 'click', '47.128.121.42', '2024-03-07 15:02:09', '2024-03-07 15:02:09'),
(400, 1, 'click', '51.222.253.9', '2024-03-07 22:17:42', '2024-03-07 22:17:42'),
(401, 1, 'impression', '66.249.74.134', '2024-03-07 23:49:51', '2024-03-07 23:49:51'),
(402, 1, 'impression', '51.222.253.19', '2024-03-08 01:15:19', '2024-03-08 01:15:19'),
(403, 2, 'impression', '47.128.110.51', '2024-03-08 21:11:20', '2024-03-08 21:11:20'),
(404, 1, 'click', '47.128.60.146', '2024-03-09 09:43:52', '2024-03-09 09:43:52'),
(405, 1, 'click', '47.128.33.190', '2024-03-09 19:11:04', '2024-03-09 19:11:04'),
(406, 2, 'impression', '47.128.45.81', '2024-03-10 14:59:59', '2024-03-10 14:59:59'),
(407, 2, 'click', '47.128.25.251', '2024-03-10 20:16:46', '2024-03-10 20:16:46'),
(408, 2, 'impression', '51.222.253.4', '2024-03-11 07:42:15', '2024-03-11 07:42:15'),
(409, 2, 'click', '66.249.75.226', '2024-03-11 23:09:21', '2024-03-11 23:09:21'),
(410, 2, 'impression', '66.249.72.228', '2024-03-11 23:22:11', '2024-03-11 23:22:11'),
(411, 2, 'click', '185.191.171.4', '2024-03-12 07:15:25', '2024-03-12 07:15:25'),
(412, 2, 'impression', '185.191.171.8', '2024-03-12 10:23:34', '2024-03-12 10:23:34'),
(413, 1, 'click', '185.191.171.6', '2024-03-12 10:35:21', '2024-03-12 10:35:21'),
(414, 2, 'impression', '85.208.96.198', '2024-03-12 12:51:00', '2024-03-12 12:51:00'),
(415, 1, 'impression', '54.196.53.185', '2024-03-12 13:40:18', '2024-03-12 13:40:18'),
(416, 2, 'impression', '54.196.53.185', '2024-03-12 13:40:54', '2024-03-12 13:40:54'),
(417, 2, 'impression', '66.249.64.129', '2024-03-12 23:28:49', '2024-03-12 23:28:49'),
(418, 1, 'impression', '221.155.251.3', '2024-03-14 15:43:03', '2024-03-14 15:43:03'),
(419, 1, 'impression', '211.117.24.132', '2024-03-14 15:43:05', '2024-03-14 15:43:05'),
(420, 2, 'impression', '185.191.171.17', '2024-03-14 20:44:52', '2024-03-14 20:44:52'),
(421, 1, 'impression', '159.203.140.106', '2024-03-14 23:20:21', '2024-03-14 23:20:21'),
(422, 2, 'click', '47.128.113.207', '2024-03-14 23:37:51', '2024-03-14 23:37:51'),
(423, 1, 'click', '47.128.18.255', '2024-03-15 07:42:35', '2024-03-15 07:42:35'),
(424, 2, 'impression', '54.94.111.215', '2024-03-15 07:43:00', '2024-03-15 07:43:00'),
(425, 1, 'impression', '15.229.248.229', '2024-03-15 12:56:25', '2024-03-15 12:56:25'),
(426, 2, 'impression', '18.231.137.143', '2024-03-15 14:22:52', '2024-03-15 14:22:52'),
(427, 1, 'impression', '54.176.204.24', '2024-03-15 15:28:18', '2024-03-15 15:28:18'),
(428, 2, 'impression', '167.71.96.24', '2024-03-16 13:48:26', '2024-03-16 13:48:26'),
(429, 2, 'impression', '159.203.80.96', '2024-03-16 13:52:08', '2024-03-16 13:52:08'),
(430, 2, 'impression', '15.229.248.229', '2024-03-16 22:52:48', '2024-03-16 22:52:48'),
(431, 1, 'click', '47.128.62.121', '2024-03-17 15:02:48', '2024-03-17 15:02:48'),
(432, 1, 'impression', '34.233.119.117', '2024-03-17 15:48:44', '2024-03-17 15:48:44'),
(433, 2, 'impression', '34.233.119.117', '2024-03-17 15:49:09', '2024-03-17 15:49:09'),
(434, 2, 'impression', '49.13.117.37', '2024-03-17 20:08:43', '2024-03-17 20:08:43'),
(435, 1, 'impression', '51.222.253.6', '2024-03-17 20:58:09', '2024-03-17 20:58:09'),
(436, 2, 'click', '144.126.209.76', '2024-03-17 23:54:50', '2024-03-17 23:54:50'),
(437, 2, 'click', '47.128.127.232', '2024-03-19 15:04:52', '2024-03-19 15:04:52'),
(438, 1, 'impression', '51.222.253.20', '2024-03-19 23:19:08', '2024-03-19 23:19:08'),
(439, 2, 'impression', '5.188.62.26', '2024-03-20 08:01:25', '2024-03-20 08:01:25'),
(440, 2, 'impression', '221.151.210.85', '2024-03-20 17:39:49', '2024-03-20 17:39:49'),
(441, 1, 'impression', '221.151.210.85', '2024-03-20 17:40:33', '2024-03-20 17:40:33'),
(442, 2, 'click', '51.222.253.16', '2024-03-22 00:56:37', '2024-03-22 00:56:37'),
(443, 2, 'impression', '178.62.82.141', '2024-03-22 18:19:16', '2024-03-22 18:19:16'),
(444, 1, 'impression', '85.208.96.196', '2024-03-22 23:03:02', '2024-03-22 23:03:02'),
(445, 2, 'click', '47.128.42.218', '2024-03-23 15:17:21', '2024-03-23 15:17:21'),
(446, 2, 'impression', '3.17.65.94', '2024-03-24 00:06:27', '2024-03-24 00:06:27'),
(447, 1, 'impression', '3.17.65.94', '2024-03-24 00:07:03', '2024-03-24 00:07:03'),
(448, 1, 'impression', '47.128.39.117', '2024-03-24 15:04:50', '2024-03-24 15:04:50'),
(449, 2, 'impression', '40.77.167.32', '2024-03-25 13:24:15', '2024-03-25 13:24:15'),
(450, 1, 'impression', '47.128.63.7', '2024-03-26 07:21:28', '2024-03-26 07:21:28'),
(451, 1, 'impression', '18.223.112.207', '2024-03-26 09:43:04', '2024-03-26 09:43:04'),
(452, 2, 'impression', '18.223.112.207', '2024-03-26 09:43:44', '2024-03-26 09:43:44'),
(453, 2, 'impression', '51.222.253.6', '2024-03-26 14:30:28', '2024-03-26 14:30:28'),
(454, 1, 'click', '47.128.63.213', '2024-03-26 15:28:26', '2024-03-26 15:28:26'),
(455, 2, 'click', '51.222.253.12', '2024-03-26 18:31:15', '2024-03-26 18:31:15'),
(456, 2, 'click', '47.128.61.142', '2024-03-26 19:28:51', '2024-03-26 19:28:51'),
(457, 2, 'click', '51.222.253.4', '2024-03-27 03:31:50', '2024-03-27 03:31:50'),
(458, 1, 'impression', '47.128.113.233', '2024-03-28 00:40:34', '2024-03-28 00:40:34'),
(459, 2, 'click', '47.128.22.109', '2024-03-28 12:11:40', '2024-03-28 12:11:40'),
(460, 1, 'impression', '47.128.34.231', '2024-03-28 12:26:19', '2024-03-28 12:26:19'),
(461, 1, 'impression', '66.249.64.131', '2024-03-28 14:18:20', '2024-03-28 14:18:20'),
(462, 1, 'click', '51.222.253.17', '2024-03-28 23:06:14', '2024-03-28 23:06:14'),
(463, 2, 'impression', '66.249.64.96', '2024-03-29 00:20:02', '2024-03-29 00:20:02'),
(464, 2, 'impression', '182.213.254.46', '2024-03-29 07:23:30', '2024-03-29 07:23:30'),
(465, 1, 'impression', '182.213.254.46', '2024-03-29 07:23:37', '2024-03-29 07:23:37'),
(466, 2, 'impression', '47.128.98.176', '2024-03-29 19:10:20', '2024-03-29 19:10:20'),
(467, 1, 'impression', '47.128.58.179', '2024-03-30 07:08:46', '2024-03-30 07:08:46'),
(468, 1, 'click', '47.128.116.109', '2024-03-30 11:19:19', '2024-03-30 11:19:19'),
(469, 1, 'click', '51.222.253.4', '2024-03-30 14:15:45', '2024-03-30 14:15:45'),
(470, 2, 'click', '101.44.248.121', '2024-03-30 21:30:28', '2024-03-30 21:30:28'),
(471, 2, 'click', '47.128.58.229', '2024-03-31 15:07:11', '2024-03-31 15:07:11'),
(472, 1, 'click', '47.128.31.33', '2024-04-01 06:55:43', '2024-04-01 06:55:43'),
(473, 2, 'click', '101.44.250.49', '2024-04-02 01:40:12', '2024-04-02 01:40:12'),
(474, 1, 'impression', '52.167.144.171', '2024-04-02 02:11:05', '2024-04-02 02:11:05'),
(475, 2, 'impression', '47.128.122.35', '2024-04-02 23:43:43', '2024-04-02 23:43:43'),
(476, 1, 'click', '47.128.34.164', '2024-04-03 03:21:44', '2024-04-03 03:21:44'),
(477, 2, 'impression', '3.227.252.209', '2024-04-03 19:43:55', '2024-04-03 19:43:55'),
(478, 1, 'impression', '3.227.252.209', '2024-04-03 19:44:30', '2024-04-03 19:44:30'),
(479, 1, 'impression', '50.21.188.73', '2024-04-03 20:00:30', '2024-04-03 20:00:30'),
(480, 2, 'impression', '54.89.45.37', '2024-04-03 23:09:37', '2024-04-03 23:09:37'),
(481, 2, 'click', '101.44.248.183', '2024-04-03 23:39:48', '2024-04-03 23:39:48'),
(482, 2, 'click', '47.128.116.103', '2024-04-04 03:26:26', '2024-04-04 03:26:26'),
(483, 2, 'click', '101.44.251.78', '2024-04-04 16:02:46', '2024-04-04 16:02:46'),
(484, 1, 'click', '47.128.55.111', '2024-04-05 09:27:32', '2024-04-05 09:27:32'),
(485, 2, 'impression', '66.249.72.3', '2024-04-05 12:34:03', '2024-04-05 12:34:03'),
(486, 2, 'impression', '40.77.167.143', '2024-04-07 02:18:21', '2024-04-07 02:18:21'),
(487, 2, 'impression', '47.128.96.56', '2024-04-07 06:46:03', '2024-04-07 06:46:03'),
(488, 1, 'click', '47.128.122.149', '2024-04-07 09:01:49', '2024-04-07 09:01:49'),
(489, 2, 'click', '101.44.249.73', '2024-04-07 19:54:26', '2024-04-07 19:54:26'),
(490, 2, 'click', '47.128.23.113', '2024-04-08 03:50:54', '2024-04-08 03:50:54'),
(491, 1, 'impression', '5.188.62.26', '2024-04-08 13:40:14', '2024-04-08 13:40:14'),
(492, 1, 'impression', '34.227.193.171', '2024-04-09 02:04:37', '2024-04-09 02:04:37'),
(493, 2, 'impression', '34.227.193.171', '2024-04-09 02:05:23', '2024-04-09 02:05:23'),
(494, 1, 'impression', '52.167.144.184', '2024-04-09 08:21:42', '2024-04-09 08:21:42'),
(495, 1, 'click', '47.128.36.133', '2024-04-09 15:08:45', '2024-04-09 15:08:45'),
(496, 2, 'impression', '85.208.96.206', '2024-04-10 00:48:20', '2024-04-10 00:48:20'),
(497, 2, 'click', '23.22.35.162', '2024-04-10 03:36:41', '2024-04-10 03:36:41'),
(498, 1, 'impression', '185.191.171.3', '2024-04-10 04:45:29', '2024-04-10 04:45:29'),
(499, 1, 'impression', '44.203.160.151', '2024-04-10 13:07:52', '2024-04-10 13:07:52'),
(500, 2, 'impression', '44.203.160.151', '2024-04-10 13:08:18', '2024-04-10 13:08:18'),
(501, 2, 'impression', '85.208.96.207', '2024-04-10 13:11:36', '2024-04-10 13:11:36'),
(502, 1, 'impression', '51.222.253.11', '2024-04-10 22:50:53', '2024-04-10 22:50:53'),
(503, 1, 'click', '47.128.57.33', '2024-04-11 15:18:17', '2024-04-11 15:18:17'),
(504, 2, 'impression', '85.208.96.202', '2024-04-12 13:14:27', '2024-04-12 13:14:27'),
(505, 2, 'click', '85.208.96.196', '2024-04-12 15:43:56', '2024-04-12 15:43:56'),
(506, 2, 'click', '47.128.114.209', '2024-04-12 15:47:04', '2024-04-12 15:47:04'),
(507, 1, 'click', '85.208.96.211', '2024-04-12 17:55:01', '2024-04-12 17:55:01'),
(508, 1, 'click', '47.128.124.143', '2024-04-13 15:43:58', '2024-04-13 15:43:58'),
(509, 1, 'click', '47.128.126.40', '2024-04-15 10:05:50', '2024-04-15 10:05:50'),
(510, 2, 'click', '47.128.24.101', '2024-04-16 03:09:54', '2024-04-16 03:09:54'),
(511, 2, 'impression', '49.12.0.1', '2024-04-17 03:32:13', '2024-04-17 03:32:13'),
(512, 2, 'impression', '34.77.203.34', '2024-04-17 05:00:53', '2024-04-17 05:00:53'),
(513, 2, 'click', '34.77.203.34', '2024-04-17 05:01:38', '2024-04-17 05:01:38'),
(514, 1, 'click', '47.128.122.245', '2024-04-17 08:05:23', '2024-04-17 08:05:23'),
(515, 2, 'impression', '66.249.66.79', '2024-04-17 16:15:50', '2024-04-17 16:15:50'),
(516, 1, 'impression', '207.46.13.126', '2024-04-17 19:21:09', '2024-04-17 19:21:09'),
(517, 1, 'impression', '103.70.86.29', '2024-04-17 22:08:23', '2024-04-17 22:08:23'),
(518, 2, 'impression', '103.70.86.29', '2024-04-17 22:09:08', '2024-04-17 22:09:08'),
(519, 1, 'click', '103.70.86.29', '2024-04-17 22:10:01', '2024-04-17 22:10:01'),
(520, 1, 'impression', '157.55.39.10', '2024-04-18 04:59:48', '2024-04-18 04:59:48'),
(521, 2, 'impression', '157.55.39.58', '2024-04-18 18:08:47', '2024-04-18 18:08:47'),
(522, 1, 'impression', '157.55.39.7', '2024-04-19 01:45:51', '2024-04-19 01:45:51'),
(523, 1, 'click', '47.128.126.5', '2024-04-19 15:34:02', '2024-04-19 15:34:02'),
(524, 2, 'impression', '51.222.253.5', '2024-04-19 21:48:12', '2024-04-19 21:48:12'),
(525, 2, 'impression', '47.128.42.1', '2024-04-20 01:20:34', '2024-04-20 01:20:34'),
(526, 2, 'impression', '157.55.39.204', '2024-04-20 01:51:32', '2024-04-20 01:51:32'),
(527, 2, 'click', '47.128.45.114', '2024-04-20 15:32:48', '2024-04-20 15:32:48'),
(528, 1, 'impression', '85.208.96.203', '2024-04-20 18:50:53', '2024-04-20 18:50:53'),
(529, 1, 'impression', '47.128.124.254', '2024-04-20 19:34:33', '2024-04-20 19:34:33'),
(530, 2, 'impression', '52.167.144.188', '2024-04-20 22:54:35', '2024-04-20 22:54:35'),
(531, 2, 'impression', '157.55.39.57', '2024-04-21 04:09:51', '2024-04-21 04:09:51'),
(532, 2, 'impression', '35.180.152.44', '2024-04-21 14:59:04', '2024-04-21 14:59:04'),
(533, 1, 'impression', '35.180.152.44', '2024-04-21 14:59:44', '2024-04-21 14:59:44'),
(534, 1, 'click', '47.128.16.11', '2024-04-21 15:36:29', '2024-04-21 15:36:29'),
(535, 1, 'impression', '157.55.39.15', '2024-04-22 03:44:58', '2024-04-22 03:44:58'),
(536, 1, 'click', '66.249.72.3', '2024-04-22 07:05:21', '2024-04-22 07:05:21'),
(537, 1, 'impression', '157.55.39.53', '2024-04-23 04:12:49', '2024-04-23 04:12:49'),
(538, 1, 'click', '47.128.63.127', '2024-04-23 15:00:36', '2024-04-23 15:00:36'),
(539, 1, 'impression', '207.46.13.6', '2024-04-23 17:15:59', '2024-04-23 17:15:59'),
(540, 2, 'click', '47.128.125.124', '2024-04-23 20:24:28', '2024-04-23 20:24:28'),
(541, 1, 'impression', '46.101.80.192', '2024-04-24 22:34:07', '2024-04-24 22:34:07'),
(542, 2, 'impression', '47.128.116.234', '2024-04-25 01:45:28', '2024-04-25 01:45:28'),
(543, 1, 'click', '47.128.51.22', '2024-04-25 15:35:09', '2024-04-25 15:35:09'),
(544, 1, 'impression', '207.46.13.130', '2024-04-25 17:06:00', '2024-04-25 17:06:00'),
(545, 2, 'impression', '157.55.39.15', '2024-04-26 06:59:28', '2024-04-26 06:59:28'),
(546, 1, 'impression', '157.55.39.48', '2024-04-26 16:08:35', '2024-04-26 16:08:35'),
(547, 1, 'click', '47.128.50.216', '2024-04-27 15:27:11', '2024-04-27 15:27:11'),
(548, 2, 'click', '47.128.53.227', '2024-04-27 20:18:27', '2024-04-27 20:18:27'),
(549, 1, 'impression', '207.46.13.14', '2024-04-28 07:22:14', '2024-04-28 07:22:14'),
(550, 2, 'impression', '198.251.73.46', '2024-04-29 13:04:50', '2024-04-29 13:04:50'),
(551, 1, 'impression', '74.208.2.229', '2024-04-29 13:37:14', '2024-04-29 13:37:14'),
(552, 1, 'click', '47.128.127.146', '2024-04-29 15:31:33', '2024-04-29 15:31:33'),
(553, 2, 'impression', '47.128.29.53', '2024-04-30 18:43:47', '2024-04-30 18:43:47'),
(554, 2, 'impression', '47.128.125.138', '2024-04-30 18:44:10', '2024-04-30 18:44:10'),
(555, 1, 'impression', '34.228.191.189', '2024-04-30 22:21:59', '2024-04-30 22:21:59'),
(556, 1, 'click', '47.128.48.81', '2024-05-01 05:13:17', '2024-05-01 05:13:17'),
(557, 2, 'impression', '47.128.127.42', '2024-05-01 11:08:47', '2024-05-01 11:08:47'),
(558, 2, 'impression', '47.128.117.153', '2024-05-01 15:40:07', '2024-05-01 15:40:07'),
(559, 2, 'click', '47.128.29.104', '2024-05-01 20:35:06', '2024-05-01 20:35:06'),
(560, 1, 'impression', '18.118.78.51', '2024-05-01 20:37:44', '2024-05-01 20:37:44'),
(561, 1, 'impression', '18.222.237.181', '2024-05-01 23:33:55', '2024-05-01 23:33:55'),
(562, 1, 'click', '47.128.120.86', '2024-05-03 15:08:26', '2024-05-03 15:08:26'),
(563, 2, 'impression', '18.222.237.181', '2024-05-03 19:30:52', '2024-05-03 19:30:52'),
(564, 1, 'click', '47.128.117.190', '2024-05-05 11:14:43', '2024-05-05 11:14:43'),
(565, 2, 'click', '47.128.61.10', '2024-05-05 21:39:16', '2024-05-05 21:39:16'),
(566, 1, 'click', '47.128.57.190', '2024-05-06 20:45:20', '2024-05-06 20:45:20'),
(567, 2, 'click', '101.44.161.254', '2024-05-08 21:20:56', '2024-05-08 21:20:56'),
(568, 2, 'impression', '85.208.96.199', '2024-05-08 22:04:08', '2024-05-08 22:04:08'),
(569, 2, 'impression', '185.191.171.14', '2024-05-09 06:35:38', '2024-05-09 06:35:38'),
(570, 1, 'click', '47.128.115.56', '2024-05-09 15:39:41', '2024-05-09 15:39:41'),
(571, 2, 'click', '124.243.148.115', '2024-05-10 15:33:57', '2024-05-10 15:33:57'),
(572, 2, 'click', '47.128.34.228', '2024-05-10 15:47:20', '2024-05-10 15:47:20'),
(573, 2, 'click', '110.238.109.69', '2024-05-10 20:41:43', '2024-05-10 20:41:43'),
(574, 1, 'click', '47.128.122.76', '2024-05-11 03:19:03', '2024-05-11 03:19:03'),
(575, 1, 'impression', '101.44.163.112', '2024-05-11 04:53:00', '2024-05-11 04:53:00'),
(576, 1, 'impression', '3.239.66.136', '2024-05-11 08:49:28', '2024-05-11 08:49:28'),
(577, 1, 'click', '3.239.66.136', '2024-05-11 08:49:29', '2024-05-11 08:49:29'),
(578, 2, 'impression', '3.239.66.136', '2024-05-11 08:49:31', '2024-05-11 08:49:31'),
(579, 2, 'click', '3.239.66.136', '2024-05-11 08:49:35', '2024-05-11 08:49:35'),
(580, 2, 'impression', '217.182.175.120', '2024-05-11 11:35:40', '2024-05-11 11:35:40'),
(581, 2, 'click', '217.182.175.120', '2024-05-11 11:35:43', '2024-05-11 11:35:43'),
(582, 1, 'impression', '178.151.245.174', '2024-05-11 11:37:31', '2024-05-11 11:37:31'),
(583, 1, 'impression', '91.137.27.194', '2024-05-12 04:58:14', '2024-05-12 04:58:14'),
(584, 1, 'click', '91.137.27.194', '2024-05-12 04:59:09', '2024-05-12 04:59:09'),
(585, 1, 'click', '47.128.57.20', '2024-05-12 21:12:17', '2024-05-12 21:12:17'),
(586, 2, 'click', '47.128.125.116', '2024-05-13 18:54:10', '2024-05-13 18:54:10'),
(587, 2, 'click', '47.128.17.196', '2024-05-13 23:02:41', '2024-05-13 23:02:41'),
(588, 2, 'click', '159.138.108.54', '2024-05-14 07:58:07', '2024-05-14 07:58:07'),
(589, 2, 'click', '85.208.96.201', '2024-05-14 08:25:24', '2024-05-14 08:25:24'),
(590, 2, 'click', '40.77.167.79', '2024-05-14 16:46:27', '2024-05-14 16:46:27'),
(591, 1, 'click', '47.128.56.237', '2024-05-15 15:45:46', '2024-05-15 15:45:46'),
(592, 2, 'impression', '180.70.246.169', '2024-05-15 15:54:43', '2024-05-15 15:54:43'),
(593, 2, 'impression', '52.23.174.216', '2024-05-15 16:07:45', '2024-05-15 16:07:45'),
(594, 1, 'impression', '52.23.174.216', '2024-05-15 16:08:06', '2024-05-15 16:08:06'),
(595, 1, 'click', '180.70.246.169', '2024-05-15 16:57:37', '2024-05-15 16:57:37'),
(596, 2, 'impression', '54.90.106.118', '2024-05-15 18:18:40', '2024-05-15 18:18:40'),
(597, 1, 'impression', '61.75.33.42', '2024-05-16 02:17:19', '2024-05-16 02:17:19');
INSERT INTO `ad_click_impressions` (`id`, `advertisings_id`, `type`, `ip`, `created_at`, `updated_at`) VALUES
(598, 2, 'impression', '61.75.33.42', '2024-05-16 02:20:24', '2024-05-16 02:20:24'),
(599, 1, 'impression', '1.255.2.199', '2024-05-16 03:57:58', '2024-05-16 03:57:58'),
(600, 2, 'impression', '146.190.62.192', '2024-05-16 05:58:26', '2024-05-16 05:58:26'),
(601, 1, 'impression', '59.9.34.2', '2024-05-16 19:03:23', '2024-05-16 19:03:23'),
(602, 2, 'impression', '85.208.96.200', '2024-05-17 03:24:13', '2024-05-17 03:24:13'),
(603, 1, 'click', '47.128.27.47', '2024-05-17 03:51:48', '2024-05-17 03:51:48'),
(604, 2, 'click', '190.92.204.233', '2024-05-18 02:27:23', '2024-05-18 02:27:23'),
(605, 2, 'click', '47.128.112.86', '2024-05-18 03:45:51', '2024-05-18 03:45:51'),
(606, 2, 'impression', '47.128.45.104', '2024-05-18 07:13:37', '2024-05-18 07:13:37'),
(607, 2, 'click', '47.128.31.212', '2024-05-18 22:29:23', '2024-05-18 22:29:23'),
(608, 1, 'click', '47.128.34.38', '2024-05-19 03:42:19', '2024-05-19 03:42:19'),
(609, 1, 'impression', '52.167.144.231', '2024-05-20 01:13:21', '2024-05-20 01:13:21'),
(610, 2, 'impression', '112.133.49.102', '2024-05-20 13:00:38', '2024-05-20 13:00:38'),
(611, 1, 'impression', '112.133.49.102', '2024-05-20 13:04:47', '2024-05-20 13:04:47'),
(612, 2, 'click', '110.238.105.11', '2024-05-21 06:58:08', '2024-05-21 06:58:08'),
(613, 1, 'click', '47.128.56.30', '2024-05-21 07:09:18', '2024-05-21 07:09:18'),
(614, 1, 'impression', '66.249.66.79', '2024-05-21 08:05:10', '2024-05-21 08:05:10'),
(615, 2, 'impression', '59.9.34.2', '2024-05-21 11:05:06', '2024-05-21 11:05:06'),
(616, 1, 'impression', '47.128.24.239', '2024-05-21 15:16:27', '2024-05-21 15:16:27'),
(617, 2, 'click', '47.128.124.208', '2024-05-22 03:39:02', '2024-05-22 03:39:02'),
(618, 2, 'impression', '54.235.17.69', '2024-05-22 03:40:54', '2024-05-22 03:40:54'),
(619, 1, 'impression', '54.235.17.69', '2024-05-22 03:40:57', '2024-05-22 03:40:57'),
(620, 2, 'click', '54.235.17.69', '2024-05-22 03:40:58', '2024-05-22 03:40:58'),
(621, 1, 'click', '54.235.17.69', '2024-05-22 03:41:04', '2024-05-22 03:41:04'),
(622, 1, 'impression', '116.71.58.176', '2024-05-22 05:13:02', '2024-05-22 05:13:02'),
(623, 2, 'impression', '116.71.58.176', '2024-05-22 05:13:51', '2024-05-22 05:13:51'),
(624, 2, 'impression', '103.103.99.37', '2024-05-22 07:20:22', '2024-05-22 07:20:22'),
(625, 2, 'click', '119.13.100.213', '2024-05-22 12:37:54', '2024-05-22 12:37:54'),
(626, 2, 'click', '119.13.107.145', '2024-05-23 08:24:06', '2024-05-23 08:24:06'),
(627, 1, 'click', '47.128.97.15', '2024-05-23 14:57:24', '2024-05-23 14:57:24'),
(628, 2, 'impression', '119.156.185.124', '2024-05-24 04:03:00', '2024-05-24 04:03:00'),
(629, 2, 'impression', '121.164.206.28', '2024-05-24 09:16:05', '2024-05-24 09:16:05'),
(630, 2, 'impression', '93.190.138.197', '2024-05-24 13:43:47', '2024-05-24 13:43:47'),
(631, 1, 'impression', '217.182.175.125', '2024-05-27 12:50:38', '2024-05-27 12:50:38'),
(632, 1, 'impression', '69.160.160.58', '2024-05-27 13:32:10', '2024-05-27 13:32:10'),
(633, 1, 'click', '178.151.245.174', '2024-05-27 17:36:32', '2024-05-27 17:36:32'),
(634, 2, 'impression', '178.151.245.174', '2024-05-27 17:37:53', '2024-05-27 17:37:53'),
(635, 2, 'click', '37.57.218.243', '2024-05-27 22:22:55', '2024-05-27 22:22:55'),
(636, 1, 'impression', '37.57.218.243', '2024-05-27 22:24:43', '2024-05-27 22:24:43'),
(637, 2, 'impression', '37.57.218.243', '2024-05-27 22:25:13', '2024-05-27 22:25:13'),
(638, 1, 'impression', '66.249.71.141', '2024-05-30 05:09:08', '2024-05-30 05:09:08'),
(639, 1, 'click', '66.249.71.141', '2024-05-30 09:34:35', '2024-05-30 09:34:35'),
(640, 1, 'click', '66.249.68.3', '2024-05-30 10:16:18', '2024-05-30 10:16:18'),
(641, 1, 'impression', '66.249.68.3', '2024-05-30 12:07:30', '2024-05-30 12:07:30'),
(642, 2, 'impression', '66.249.66.6', '2024-05-30 14:37:01', '2024-05-30 14:37:01'),
(643, 1, 'impression', '66.249.66.6', '2024-05-30 16:38:51', '2024-05-30 16:38:51'),
(644, 2, 'click', '66.249.66.7', '2024-05-30 17:37:27', '2024-05-30 17:37:27'),
(645, 1, 'impression', '66.249.66.5', '2024-05-30 18:17:49', '2024-05-30 18:17:49'),
(646, 1, 'impression', '66.249.66.8', '2024-05-31 08:48:44', '2024-05-31 08:48:44'),
(647, 2, 'impression', '66.249.77.97', '2024-05-31 12:16:26', '2024-05-31 12:16:26'),
(648, 1, 'impression', '66.249.77.97', '2024-06-01 03:58:56', '2024-06-01 03:58:56'),
(649, 1, 'impression', '66.249.66.7', '2024-06-01 16:39:44', '2024-06-01 16:39:44'),
(650, 2, 'click', '66.249.66.8', '2024-06-02 01:11:45', '2024-06-02 01:11:45'),
(651, 2, 'impression', '34.64.82.71', '2024-06-02 12:55:57', '2024-06-02 12:55:57'),
(652, 1, 'impression', '34.64.82.68', '2024-06-02 14:53:11', '2024-06-02 14:53:11'),
(653, 2, 'impression', '34.64.82.64', '2024-06-04 13:23:26', '2024-06-04 13:23:26'),
(654, 2, 'impression', '34.64.82.70', '2024-06-05 01:46:46', '2024-06-05 01:46:46'),
(655, 1, 'click', '34.64.82.66', '2024-06-05 03:16:54', '2024-06-05 03:16:54'),
(656, 2, 'click', '34.64.82.77', '2024-06-05 20:27:39', '2024-06-05 20:27:39'),
(657, 1, 'impression', '121.164.206.28', '2024-06-05 20:59:24', '2024-06-05 20:59:24'),
(658, 1, 'impression', '34.64.82.70', '2024-06-06 03:48:30', '2024-06-06 03:48:30'),
(659, 1, 'impression', '34.64.82.64', '2024-06-06 06:03:41', '2024-06-06 06:03:41'),
(660, 2, 'click', '34.64.82.73', '2024-06-06 19:37:22', '2024-06-06 19:37:22'),
(661, 1, 'click', '34.64.82.69', '2024-06-07 03:55:56', '2024-06-07 03:55:56'),
(662, 2, 'click', '34.64.82.68', '2024-06-07 04:40:55', '2024-06-07 04:40:55'),
(663, 2, 'impression', '127.0.0.1', '2024-06-10 04:03:47', '2024-06-10 04:03:47'),
(664, 1, 'impression', '127.0.0.1', '2024-06-10 04:06:28', '2024-06-10 04:06:28');

-- --------------------------------------------------------

--
-- Table structure for table `blogs`
--

CREATE TABLE `blogs` (
  `id` int NOT NULL,
  `title` varchar(255) NOT NULL,
  `slug` varchar(200) NOT NULL,
  `image` varchar(255) NOT NULL,
  `content` text NOT NULL,
  `tags` varchar(255) NOT NULL,
  `user_id` int UNSIGNED NOT NULL,
  `date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 ROW_FORMAT=COMPACT;

-- --------------------------------------------------------

--
-- Table structure for table `bookmarks`
--

CREATE TABLE `bookmarks` (
  `id` int UNSIGNED NOT NULL,
  `user_id` int UNSIGNED NOT NULL,
  `updates_id` int UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `bookmarks`
--

INSERT INTO `bookmarks` (`id`, `user_id`, `updates_id`, `created_at`, `updated_at`) VALUES
(1, 27, 6, '2024-05-16 04:09:57', '2024-05-16 04:09:57');

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` int UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `slug` varchar(200) NOT NULL,
  `description` text NOT NULL,
  `keywords` varchar(255) NOT NULL,
  `mode` enum('on','off') NOT NULL DEFAULT 'on',
  `image` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `name`, `slug`, `description`, `keywords`, `mode`, `image`) VALUES
(1, 'Artist', 'artist', '', '', 'on', 'artist-By4bfBlXy75qPKK99RgC5MN9g8lUTWo8.jpg'),
(2, 'Designer', 'designer', '', '', 'on', 'designer-SP7jB58pOuQW7Wz3Tf2v32OOZrU6zgxh.jpg'),
(3, 'Drawing and Painting', 'drawing-and-painting', '', '', 'on', 'drawing-and-painting-sRKBmjTngYwmwZ5PZ2OIPr2K2MS5WT2Q.jpg'),
(4, 'Developer', 'developer', '', '', 'on', 'developer-fpZjQGTE9TCtNIkE3K7XmOyoFHsrcI7Q.jpg'),
(5, 'Animation', 'animation', 'Category Animation', 'animate, animation', 'on', 'animation-N600Gsc1uJffH9Jsdjo9kYpq3TKl7E9x.jpg'),
(7, 'Photography', 'photography', '', '', 'on', 'photography-Q8AA4mr4v3Y7AkNEj9dU46oHjTJqAWcO.jpg'),
(8, 'Video and Film', 'video-and-film', '', '', 'on', 'video-and-film-F4BHush4GW0y9WzMrxWCJXEoKMcZWZeZ.jpg'),
(9, 'Podcasts', 'podcasts', '', '', 'on', 'podcasts-ubacYB2BVCgzu79lqOXp9Zfa2jtjwgFE.jpg'),
(10, 'Others', 'others', '', '', 'on', 'others-PplPsJxWsOu7ex6qWqWdQtMhYDufxM2k.jpg'),
(12, 'Writing', 'writing', '', '', 'on', 'writing-Q5b6A8vlTiE4W1pokW1sR1TGxJigTLAv.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `comments`
--

CREATE TABLE `comments` (
  `id` int UNSIGNED NOT NULL,
  `updates_id` int UNSIGNED NOT NULL,
  `user_id` int UNSIGNED NOT NULL,
  `reply` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `status` enum('0','1') NOT NULL DEFAULT '1' COMMENT '0 Trash, 1 Active'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

-- --------------------------------------------------------

--
-- Table structure for table `comments_likes`
--

CREATE TABLE `comments_likes` (
  `id` int UNSIGNED NOT NULL,
  `user_id` int UNSIGNED NOT NULL,
  `comments_id` int UNSIGNED NOT NULL,
  `replies_id` bigint UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `conversations`
--

CREATE TABLE `conversations` (
  `id` int UNSIGNED NOT NULL,
  `user_1` int NOT NULL,
  `user_2` int NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `countries`
--

CREATE TABLE `countries` (
  `id` int NOT NULL,
  `country_code` varchar(2) NOT NULL DEFAULT '',
  `country_name` varchar(100) NOT NULL DEFAULT ''
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb3;

--
-- Dumping data for table `countries`
--

INSERT INTO `countries` (`id`, `country_code`, `country_name`) VALUES
(1, 'US', 'United States'),
(2, 'CA', 'Canada'),
(3, 'AF', 'Afghanistan'),
(4, 'AL', 'Albania'),
(5, 'DZ', 'Algeria'),
(6, 'DS', 'American Samoa'),
(7, 'AD', 'Andorra'),
(8, 'AO', 'Angola'),
(9, 'AI', 'Anguilla'),
(10, 'AQ', 'Antarctica'),
(11, 'AG', 'Antigua and/or Barbuda'),
(12, 'AR', 'Argentina'),
(13, 'AM', 'Armenia'),
(14, 'AW', 'Aruba'),
(15, 'AU', 'Australia'),
(16, 'AT', 'Austria'),
(17, 'AZ', 'Azerbaijan'),
(18, 'BS', 'Bahamas'),
(19, 'BH', 'Bahrain'),
(20, 'BD', 'Bangladesh'),
(21, 'BB', 'Barbados'),
(22, 'BY', 'Belarus'),
(23, 'BE', 'Belgium'),
(24, 'BZ', 'Belize'),
(25, 'BJ', 'Benin'),
(26, 'BM', 'Bermuda'),
(27, 'BT', 'Bhutan'),
(28, 'BO', 'Bolivia'),
(29, 'BA', 'Bosnia and Herzegovina'),
(30, 'BW', 'Botswana'),
(31, 'BV', 'Bouvet Island'),
(32, 'BR', 'Brazil'),
(33, 'IO', 'British lndian Ocean Territory'),
(34, 'BN', 'Brunei Darussalam'),
(35, 'BG', 'Bulgaria'),
(36, 'BF', 'Burkina Faso'),
(37, 'BI', 'Burundi'),
(38, 'KH', 'Cambodia'),
(39, 'CM', 'Cameroon'),
(40, 'CV', 'Cape Verde'),
(41, 'KY', 'Cayman Islands'),
(42, 'CF', 'Central African Republic'),
(43, 'TD', 'Chad'),
(44, 'CL', 'Chile'),
(45, 'CN', 'China'),
(46, 'CX', 'Christmas Island'),
(47, 'CC', 'Cocos (Keeling) Islands'),
(48, 'CO', 'Colombia'),
(49, 'KM', 'Comoros'),
(50, 'CG', 'Congo'),
(51, 'CK', 'Cook Islands'),
(52, 'CR', 'Costa Rica'),
(53, 'HR', 'Croatia (Hrvatska)'),
(54, 'CU', 'Cuba'),
(55, 'CY', 'Cyprus'),
(56, 'CZ', 'Czech Republic'),
(57, 'DK', 'Denmark'),
(58, 'DJ', 'Djibouti'),
(59, 'DM', 'Dominica'),
(60, 'DO', 'Dominican Republic'),
(61, 'TP', 'East Timor'),
(62, 'EC', 'Ecuador'),
(63, 'EG', 'Egypt'),
(64, 'SV', 'El Salvador'),
(65, 'GQ', 'Equatorial Guinea'),
(66, 'ER', 'Eritrea'),
(67, 'EE', 'Estonia'),
(68, 'ET', 'Ethiopia'),
(69, 'FK', 'Falkland Islands (Malvinas)'),
(70, 'FO', 'Faroe Islands'),
(71, 'FJ', 'Fiji'),
(72, 'FI', 'Finland'),
(73, 'FR', 'France'),
(74, 'FX', 'France, Metropolitan'),
(75, 'GF', 'French Guiana'),
(76, 'PF', 'French Polynesia'),
(77, 'TF', 'French Southern Territories'),
(78, 'GA', 'Gabon'),
(79, 'GM', 'Gambia'),
(80, 'GE', 'Georgia'),
(81, 'DE', 'Germany'),
(82, 'GH', 'Ghana'),
(83, 'GI', 'Gibraltar'),
(84, 'GR', 'Greece'),
(85, 'GL', 'Greenland'),
(86, 'GD', 'Grenada'),
(87, 'GP', 'Guadeloupe'),
(88, 'GU', 'Guam'),
(89, 'GT', 'Guatemala'),
(90, 'GN', 'Guinea'),
(91, 'GW', 'Guinea-Bissau'),
(92, 'GY', 'Guyana'),
(93, 'HT', 'Haiti'),
(94, 'HM', 'Heard and Mc Donald Islands'),
(95, 'HN', 'Honduras'),
(96, 'HK', 'Hong Kong'),
(97, 'HU', 'Hungary'),
(98, 'IS', 'Iceland'),
(99, 'IN', 'India'),
(100, 'ID', 'Indonesia'),
(101, 'IR', 'Iran (Islamic Republic of)'),
(102, 'IQ', 'Iraq'),
(103, 'IE', 'Ireland'),
(104, 'IL', 'Israel'),
(105, 'IT', 'Italy'),
(106, 'CI', 'Ivory Coast'),
(107, 'JM', 'Jamaica'),
(108, 'JP', 'Japan'),
(109, 'JO', 'Jordan'),
(110, 'KZ', 'Kazakhstan'),
(111, 'KE', 'Kenya'),
(112, 'KI', 'Kiribati'),
(113, 'KP', 'Korea, Democratic People\'s Republic of'),
(114, 'KR', 'Korea, Republic of'),
(115, 'XK', 'Kosovo'),
(116, 'KW', 'Kuwait'),
(117, 'KG', 'Kyrgyzstan'),
(118, 'LA', 'Lao People\'s Democratic Republic'),
(119, 'LV', 'Latvia'),
(120, 'LB', 'Lebanon'),
(121, 'LS', 'Lesotho'),
(122, 'LR', 'Liberia'),
(123, 'LY', 'Libyan Arab Jamahiriya'),
(124, 'LI', 'Liechtenstein'),
(125, 'LT', 'Lithuania'),
(126, 'LU', 'Luxembourg'),
(127, 'MO', 'Macau'),
(128, 'MK', 'Macedonia'),
(129, 'MG', 'Madagascar'),
(130, 'MW', 'Malawi'),
(131, 'MY', 'Malaysia'),
(132, 'MV', 'Maldives'),
(133, 'ML', 'Mali'),
(134, 'MT', 'Malta'),
(135, 'MH', 'Marshall Islands'),
(136, 'MQ', 'Martinique'),
(137, 'MR', 'Mauritania'),
(138, 'MU', 'Mauritius'),
(139, 'TY', 'Mayotte'),
(140, 'MX', 'Mexico'),
(141, 'FM', 'Micronesia, Federated States of'),
(142, 'MD', 'Moldova, Republic of'),
(143, 'MC', 'Monaco'),
(144, 'MN', 'Mongolia'),
(145, 'ME', 'Montenegro'),
(146, 'MS', 'Montserrat'),
(147, 'MA', 'Morocco'),
(148, 'MZ', 'Mozambique'),
(149, 'MM', 'Myanmar'),
(150, 'NA', 'Namibia'),
(151, 'NR', 'Nauru'),
(152, 'NP', 'Nepal'),
(153, 'NL', 'Netherlands'),
(154, 'AN', 'Netherlands Antilles'),
(155, 'NC', 'New Caledonia'),
(156, 'NZ', 'New Zealand'),
(157, 'NI', 'Nicaragua'),
(158, 'NE', 'Niger'),
(159, 'NG', 'Nigeria'),
(160, 'NU', 'Niue'),
(161, 'NF', 'Norfork Island'),
(162, 'MP', 'Northern Mariana Islands'),
(163, 'NO', 'Norway'),
(164, 'OM', 'Oman'),
(165, 'PK', 'Pakistan'),
(166, 'PW', 'Palau'),
(167, 'PA', 'Panama'),
(168, 'PG', 'Papua New Guinea'),
(169, 'PY', 'Paraguay'),
(170, 'PE', 'Peru'),
(171, 'PH', 'Philippines'),
(172, 'PN', 'Pitcairn'),
(173, 'PL', 'Poland'),
(174, 'PT', 'Portugal'),
(175, 'PR', 'Puerto Rico'),
(176, 'QA', 'Qatar'),
(177, 'RE', 'Reunion'),
(178, 'RO', 'Romania'),
(179, 'RU', 'Russian Federation'),
(180, 'RW', 'Rwanda'),
(181, 'KN', 'Saint Kitts and Nevis'),
(182, 'LC', 'Saint Lucia'),
(183, 'VC', 'Saint Vincent and the Grenadines'),
(184, 'WS', 'Samoa'),
(185, 'SM', 'San Marino'),
(186, 'ST', 'Sao Tome and Principe'),
(187, 'SA', 'Saudi Arabia'),
(188, 'SN', 'Senegal'),
(189, 'RS', 'Serbia'),
(190, 'SC', 'Seychelles'),
(191, 'SL', 'Sierra Leone'),
(192, 'SG', 'Singapore'),
(193, 'SK', 'Slovakia'),
(194, 'SI', 'Slovenia'),
(195, 'SB', 'Solomon Islands'),
(196, 'SO', 'Somalia'),
(197, 'ZA', 'South Africa'),
(198, 'GS', 'South Georgia South Sandwich Islands'),
(199, 'ES', 'Spain'),
(200, 'LK', 'Sri Lanka'),
(201, 'SH', 'St. Helena'),
(202, 'PM', 'St. Pierre and Miquelon'),
(203, 'SD', 'Sudan'),
(204, 'SR', 'Suriname'),
(205, 'SJ', 'Svalbarn and Jan Mayen Islands'),
(206, 'SZ', 'Swaziland'),
(207, 'SE', 'Sweden'),
(208, 'CH', 'Switzerland'),
(209, 'SY', 'Syrian Arab Republic'),
(210, 'TW', 'Taiwan'),
(211, 'TJ', 'Tajikistan'),
(212, 'TZ', 'Tanzania, United Republic of'),
(213, 'TH', 'Thailand'),
(214, 'TG', 'Togo'),
(215, 'TK', 'Tokelau'),
(216, 'TO', 'Tonga'),
(217, 'TT', 'Trinidad and Tobago'),
(218, 'TN', 'Tunisia'),
(219, 'TR', 'Turkey'),
(220, 'TM', 'Turkmenistan'),
(221, 'TC', 'Turks and Caicos Islands'),
(222, 'TV', 'Tuvalu'),
(223, 'UG', 'Uganda'),
(224, 'UA', 'Ukraine'),
(225, 'AE', 'United Arab Emirates'),
(226, 'GB', 'United Kingdom'),
(227, 'UM', 'United States minor outlying islands'),
(228, 'UY', 'Uruguay'),
(229, 'UZ', 'Uzbekistan'),
(230, 'VU', 'Vanuatu'),
(231, 'VA', 'Vatican City State'),
(232, 'VE', 'Venezuela'),
(233, 'VN', 'Vietnam'),
(234, 'VG', 'Virgin Islands (British)'),
(235, 'VI', 'Virgin Islands (U.S.)'),
(236, 'WF', 'Wallis and Futuna Islands'),
(237, 'EH', 'Western Sahara'),
(238, 'YE', 'Yemen'),
(239, 'YU', 'Yugoslavia'),
(240, 'ZR', 'Zaire'),
(241, 'ZM', 'Zambia'),
(242, 'ZW', 'Zimbabwe');

-- --------------------------------------------------------

--
-- Table structure for table `deposits`
--

CREATE TABLE `deposits` (
  `id` int UNSIGNED NOT NULL,
  `user_id` int UNSIGNED NOT NULL,
  `txn_id` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `amount` int UNSIGNED NOT NULL,
  `payment_gateway` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `status` enum('active','pending') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'active',
  `screenshot_transfer` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `percentage_applied` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `transaction_fee` double(10,2) NOT NULL,
  `taxes` text COLLATE utf8mb4_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint UNSIGNED NOT NULL,
  `uuid` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `gifts`
--

CREATE TABLE `gifts` (
  `id` bigint UNSIGNED NOT NULL,
  `image` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `price` decimal(10,2) NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `jobs`
--

CREATE TABLE `jobs` (
  `id` bigint UNSIGNED NOT NULL,
  `queue` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `attempts` tinyint UNSIGNED NOT NULL,
  `reserved_at` int UNSIGNED DEFAULT NULL,
  `available_at` int UNSIGNED NOT NULL,
  `created_at` int UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `jobs`
--

INSERT INTO `jobs` (`id`, `queue`, `payload`, `attempts`, `reserved_at`, `available_at`, `created_at`) VALUES
(235647, 'default', '{\"uuid\":\"ac1994fe-a7a6-4ddc-bf2f-2699c8946cfa\",\"displayName\":\"App\\\\Notifications\\\\AdminVerificationPending\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"failOnTimeout\":false,\"backoff\":null,\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"Illuminate\\\\Notifications\\\\SendQueuedNotifications\",\"command\":\"O:48:\\\"Illuminate\\\\Notifications\\\\SendQueuedNotifications\\\":3:{s:11:\\\"notifiables\\\";O:29:\\\"Illuminate\\\\Support\\\\Collection\\\":2:{s:8:\\\"\\u0000*\\u0000items\\\";a:1:{i:0;O:44:\\\"Illuminate\\\\Notifications\\\\AnonymousNotifiable\\\":1:{s:6:\\\"routes\\\";a:1:{s:4:\\\"mail\\\";s:24:\\\"rosetrip123456@gmail.com\\\";}}}s:28:\\\"\\u0000*\\u0000escapeWhenCastingToString\\\";b:0;}s:12:\\\"notification\\\";O:42:\\\"App\\\\Notifications\\\\AdminVerificationPending\\\":2:{s:4:\\\"data\\\";O:45:\\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\\":5:{s:5:\\\"class\\\";s:31:\\\"App\\\\Models\\\\VerificationRequests\\\";s:2:\\\"id\\\";i:1;s:9:\\\"relations\\\";a:0:{}s:10:\\\"connection\\\";s:5:\\\"mysql\\\";s:15:\\\"collectionClass\\\";N;}s:2:\\\"id\\\";s:36:\\\"a219740e-b915-4f25-bd88-bb7dba2f1691\\\";}s:8:\\\"channels\\\";a:1:{i:0;s:4:\\\"mail\\\";}}\"}}', 0, NULL, 1718007810, 1718007810),
(235648, 'default', '{\"uuid\":\"d82be872-57af-4dd5-84e2-f2c6271faadc\",\"displayName\":\"App\\\\Notifications\\\\AdminVerificationPending\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"failOnTimeout\":false,\"backoff\":null,\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"Illuminate\\\\Notifications\\\\SendQueuedNotifications\",\"command\":\"O:48:\\\"Illuminate\\\\Notifications\\\\SendQueuedNotifications\\\":3:{s:11:\\\"notifiables\\\";O:29:\\\"Illuminate\\\\Support\\\\Collection\\\":2:{s:8:\\\"\\u0000*\\u0000items\\\";a:1:{i:0;O:44:\\\"Illuminate\\\\Notifications\\\\AnonymousNotifiable\\\":1:{s:6:\\\"routes\\\";a:1:{s:4:\\\"mail\\\";s:24:\\\"rosetrip123456@gmail.com\\\";}}}s:28:\\\"\\u0000*\\u0000escapeWhenCastingToString\\\";b:0;}s:12:\\\"notification\\\";O:42:\\\"App\\\\Notifications\\\\AdminVerificationPending\\\":2:{s:4:\\\"data\\\";O:45:\\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\\":5:{s:5:\\\"class\\\";s:31:\\\"App\\\\Models\\\\VerificationRequests\\\";s:2:\\\"id\\\";i:2;s:9:\\\"relations\\\";a:0:{}s:10:\\\"connection\\\";s:5:\\\"mysql\\\";s:15:\\\"collectionClass\\\";N;}s:2:\\\"id\\\";s:36:\\\"fbb79b2d-3754-435a-bbd2-28fd392f03ec\\\";}s:8:\\\"channels\\\";a:1:{i:0;s:4:\\\"mail\\\";}}\"}}', 0, NULL, 1718012478, 1718012478);

-- --------------------------------------------------------

--
-- Table structure for table `languages`
--

CREATE TABLE `languages` (
  `id` int UNSIGNED NOT NULL,
  `name` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abbreviation` varchar(32) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `languages`
--

INSERT INTO `languages` (`id`, `name`, `abbreviation`) VALUES
(1, 'English', 'en'),
(2, 'Español', 'es'),
(3, '한국어', 'ko'),
(4, 'แบบไทย', 'th'),
(5, '日本語', 'ja');

-- --------------------------------------------------------

--
-- Table structure for table `likes`
--

CREATE TABLE `likes` (
  `id` int UNSIGNED NOT NULL,
  `user_id` int UNSIGNED NOT NULL,
  `updates_id` int UNSIGNED NOT NULL,
  `status` enum('0','1') CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL DEFAULT '1' COMMENT '0 trash, 1 active',
  `date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `live_comments`
--

CREATE TABLE `live_comments` (
  `id` bigint UNSIGNED NOT NULL,
  `user_id` int UNSIGNED NOT NULL,
  `live_streamings_id` int UNSIGNED NOT NULL,
  `comment` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `joined` int UNSIGNED NOT NULL DEFAULT '1',
  `tip` enum('0','1') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `earnings` decimal(10,2) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `gift_id` int UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `live_comments`
--

INSERT INTO `live_comments` (`id`, `user_id`, `live_streamings_id`, `comment`, `joined`, `tip`, `earnings`, `created_at`, `updated_at`, `gift_id`) VALUES
(1, 7, 2, '', 1, '0', 0.00, '2023-12-08 15:12:06', '2023-12-08 15:12:06', NULL),
(2, 1, 2, 'give tip', 0, '0', 0.00, '2023-12-08 15:12:28', '2023-12-08 15:12:28', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `live_likes`
--

CREATE TABLE `live_likes` (
  `id` bigint UNSIGNED NOT NULL,
  `user_id` int UNSIGNED NOT NULL,
  `live_streamings_id` int UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `live_online_users`
--

CREATE TABLE `live_online_users` (
  `id` bigint UNSIGNED NOT NULL,
  `user_id` int UNSIGNED NOT NULL,
  `live_streamings_id` int UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `live_online_users`
--

INSERT INTO `live_online_users` (`id`, `user_id`, `live_streamings_id`, `created_at`, `updated_at`) VALUES
(1, 7, 2, '2023-12-08 15:12:06', '2023-12-08 15:17:50');

-- --------------------------------------------------------

--
-- Table structure for table `live_streamings`
--

CREATE TABLE `live_streamings` (
  `id` bigint UNSIGNED NOT NULL,
  `type` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'normal',
  `user_id` int UNSIGNED NOT NULL,
  `buyer_id` int UNSIGNED DEFAULT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `channel` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `minutes` int UNSIGNED NOT NULL,
  `price` int UNSIGNED NOT NULL,
  `status` enum('0','1') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `joined_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `ends_at` timestamp NULL DEFAULT NULL,
  `availability` char(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'all_pay',
  `token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `livestream_image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `live_streamings`
--

INSERT INTO `live_streamings` (`id`, `type`, `user_id`, `buyer_id`, `name`, `channel`, `minutes`, `price`, `status`, `joined_at`, `created_at`, `updated_at`, `ends_at`, `availability`, `token`, `livestream_image`) VALUES
(6, 'normal', 31, NULL, 'let\'s do something else', 'live_NeV0a_31', 0, 0, '0', NULL, '2024-06-10 07:50:15', '2024-06-10 07:51:04', NULL, 'everyone_free', NULL, '3166670487f17ee1718027399wyecckvlfnemdqgbzczn.jpg'),
(9, 'normal', 31, NULL, 'what the fuck', 'live_ybez4_31', 0, 0, '0', NULL, '2024-06-10 08:13:53', '2024-06-10 08:13:53', NULL, 'everyone_free', NULL, '316667095ca53b21718028636mbg3xov582lwp8d2ajt7.jpg'),
(12, 'normal', 31, NULL, 'moye moye', 'live_KJEA9_31', 0, 0, '0', NULL, '2024-06-10 08:22:26', '2024-06-10 08:24:06', NULL, 'everyone_free', NULL, '3166670c18777f21718029336swhi2zhcd8xlpyx6qg51.jpg'),
(15, 'normal', 31, NULL, 'photo4', 'live_raUq3_31', 0, 0, '0', NULL, '2024-06-10 08:35:55', '2024-06-10 08:35:55', NULL, 'everyone_free', NULL, '3166670f4bb12821718030155nrdk1xpu9ofg35t4taep.jpg'),
(16, 'normal', 31, NULL, 'photo9', 'live_kqe7R_31', 0, 0, '0', NULL, '2024-06-10 08:39:16', '2024-06-10 08:39:16', NULL, 'everyone_free', NULL, '31666710148b5261718030356t5q1rz54i3lbaak0a9nr.jpg'),
(17, 'normal', 31, NULL, 'photo4', 'live_ZQq3b_31', 0, 0, '0', NULL, '2024-06-10 08:44:53', '2024-06-10 08:44:53', NULL, 'everyone_free', NULL, '3166671165265a11718030693pwa71ps2vbmfk1ta4uqp.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `live_streaming_private_requests`
--

CREATE TABLE `live_streaming_private_requests` (
  `id` bigint UNSIGNED NOT NULL,
  `transaction_id` bigint UNSIGNED NOT NULL,
  `user_id` int UNSIGNED NOT NULL,
  `creator_id` int UNSIGNED NOT NULL,
  `minutes` int UNSIGNED NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `login_sessions`
--

CREATE TABLE `login_sessions` (
  `id` bigint UNSIGNED NOT NULL,
  `user_id` bigint UNSIGNED NOT NULL,
  `ip` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `device` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `device_type` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `browser` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `platform` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `country` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `login_sessions`
--

INSERT INTO `login_sessions` (`id`, `user_id`, `ip`, `device`, `device_type`, `browser`, `platform`, `country`, `created_at`, `updated_at`) VALUES
(1, 2, '175.194.96.167', 'WebKit', 'desktop', 'Chrome 119.0.0.0', 'Windows 10.0', 'Korea, Republic of', '2023-12-07 18:23:03', '2023-12-07 18:23:03'),
(2, 1, '175.194.96.167', 'WebKit', 'desktop', 'Chrome 119.0.0.0', 'Windows 10.0', NULL, '2023-12-07 18:25:43', '2023-12-07 18:48:03'),
(7, 7, '211.216.8.80', 'iPhone', 'phone', 'Safari 16.6', 'iOS 16_6_1', 'Korea, Republic of', '2023-12-08 14:58:21', '2023-12-22 11:14:44'),
(8, 1, '221.155.251.104', 'WebKit', 'phone', 'Chrome 120.0.0.0', 'AndroidOS 10', NULL, '2023-12-08 15:06:04', '2024-01-27 17:21:46'),
(9, 1, '121.141.10.80', 'WebKit', 'desktop', 'Chrome 120.0.0.0', 'Windows 10.0', NULL, '2023-12-11 12:44:45', '2024-02-13 04:00:30'),
(10, 8, '39.62.15.165', 'WebKit', 'desktop', 'Chrome 120.0.0.0', 'Windows 10.0', 'Pakistan', '2023-12-12 18:03:33', '2023-12-12 18:03:33'),
(11, 9, '221.155.251.104', 'WebKit', 'desktop', 'Chrome 120.0.0.0', 'Linux ', 'Korea, Republic of', '2023-12-14 12:57:12', '2023-12-14 12:57:12'),
(12, 10, '213.232.235.104', '0', 'desktop', 'Firefox 102.0', 'Linux ', 'Moldova, Republic of', '2023-12-22 03:14:22', '2023-12-22 03:14:22'),
(13, 11, '202.47.33.15', 'WebKit', 'phone', 'Chrome 120.0.0.0', 'AndroidOS 10', 'Pakistan', '2023-12-22 14:47:18', '2023-12-22 14:47:18'),
(14, 12, '210.95.148.48', 'WebKit', 'phone', 'Chrome 120.0.6099.210', 'AndroidOS 13', 'Korea, Republic of', '2024-01-12 13:48:07', '2024-01-12 13:48:07'),
(15, 13, '123.108.94.224', 'WebKit', 'phone', 'Chrome 120.0.0.0', 'AndroidOS 10', 'Pakistan', '2024-01-13 10:17:27', '2024-01-13 10:17:27'),
(16, 14, '223.123.9.200', 'WebKit', 'phone', 'Chrome 111.0.0.0', 'AndroidOS 10', 'Pakistan', '2024-01-14 19:47:12', '2024-01-14 19:47:12'),
(17, 15, '119.155.186.18', 'WebKit', 'phone', 'Chrome 94.0.4606.85', 'AndroidOS 11', 'Pakistan', '2024-01-18 05:35:44', '2024-01-18 05:39:04'),
(18, 16, '172.59.137.30', 'WebKit', 'phone', 'Chrome 120.0.0.0', 'AndroidOS 10', 'United States', '2024-01-21 06:35:03', '2024-01-21 06:35:03'),
(19, 17, '75.109.45.199', 'iPhone', 'phone', 'Chrome 120.0.6099.119', 'iOS 16_6', 'United States', '2024-01-22 02:15:14', '2024-01-22 02:15:14'),
(20, 18, '157.49.243.239', 'WebKit', 'desktop', 'Chrome 120.0.0.0', 'Windows 10.0', 'India', '2024-01-22 02:26:00', '2024-01-22 02:26:00'),
(21, 19, '129.205.113.181', 'WebKit', 'desktop', 'Chrome 120.0.0.0', 'Windows 10.0', 'Nigeria', '2024-01-22 12:38:52', '2024-01-22 12:38:52'),
(22, 20, '72.129.154.58', 'iPhone', 'phone', 'Safari 16.6', 'iOS 16_6', 'United States', '2024-01-22 16:50:07', '2024-01-22 16:50:07'),
(23, 21, '220.117.247.164', 'iPhone', 'phone', 'Chrome 117.0.5938.108', 'iOS 17_2', 'Korea, Republic of', '2024-01-27 17:18:48', '2024-01-27 17:18:48'),
(24, 22, '89.38.227.62', 'WebKit', 'phone', 'Chrome 94.0.4606.85', 'AndroidOS 11', 'United States', '2024-01-30 09:43:46', '2024-01-30 09:43:46'),
(25, 1, '118.235.2.38', 'WebKit', 'phone', 'Chrome 121.0.0.0', 'AndroidOS 10', NULL, '2024-01-31 08:48:42', '2024-02-16 03:10:03'),
(26, 1, '175.194.96.173', 'WebKit', 'desktop', 'Chrome 121.0.0.0', 'Windows 10.0', NULL, '2024-02-01 06:48:46', '2024-02-22 09:21:25'),
(27, 23, '197.211.61.143', 'WebKit', 'phone', 'Chrome 102.0.0.0', 'AndroidOS 11', 'Nigeria', '2024-02-01 08:28:12', '2024-02-01 08:28:12'),
(28, 24, '223.123.105.179', 'WebKit', 'phone', 'Chrome 70.0.3538.110', 'AndroidOS 8.1.0', 'Pakistan', '2024-02-05 15:43:30', '2024-02-05 15:43:30'),
(29, 25, '119.148.29.254', 'WebKit', 'phone', 'Chrome 121.0.0.0', 'AndroidOS 10', 'Bangladesh', '2024-02-24 17:23:33', '2024-02-24 17:23:33'),
(30, 1, '221.155.251.104', 'WebKit', 'phone', 'Chrome 122.0.0.0', 'AndroidOS 10', NULL, '2024-03-01 16:29:44', '2024-03-04 02:25:47'),
(31, 1, '221.151.210.85', 'WebKit', 'desktop', 'Chrome 122.0.0.0', 'Windows 10.0', NULL, '2024-03-20 17:39:48', '2024-03-20 17:39:48'),
(32, 1, '121.164.206.166', 'WebKit', 'desktop', 'Chrome 123.0.0.0', 'Windows 10.0', NULL, '2024-03-28 02:38:51', '2024-03-28 02:38:51'),
(33, 26, '37.221.65.103', '0', 'desktop', 'Firefox 102.0', 'Windows 10.0', 'Moldova, Republic of', '2024-04-20 20:32:19', '2024-04-20 20:32:19'),
(34, 1, '121.164.206.28', 'WebKit', 'desktop', 'Chrome 124.0.0.0', 'Windows 10.0', NULL, '2024-05-15 15:54:43', '2024-05-24 09:16:05'),
(35, 27, '61.75.33.42', 'WebKit', 'desktop', 'Chrome 122.0.0.0', 'Windows 10.0', 'Korea, Republic of', '2024-05-16 03:27:04', '2024-05-16 03:27:04'),
(36, 28, '85.114.47.206', 'WebKit', 'desktop', 'Chrome 120.0.0.0', 'Windows 10.0', 'Croatia (Hrvatska)', '2024-06-02 22:33:55', '2024-06-02 22:33:55'),
(37, 1, '127.0.0.1', 'WebKit', 'desktop', 'Chrome 125.0.0.0', 'Windows 10.0', NULL, '2024-06-05 20:59:23', '2024-06-10 07:48:23'),
(38, 29, '45.33.134.4', 'WebKit', 'desktop', 'Chrome 120.0.0.0', 'Windows 10.0', 'United States', '2024-06-06 17:05:41', '2024-06-06 17:05:41'),
(39, 30, '127.0.0.1', 'WebKit', 'desktop', 'Chrome 125.0.0.0', 'Windows 10.0', NULL, '2024-06-10 02:14:05', '2024-06-10 02:14:05'),
(40, 31, '127.0.0.1', 'WebKit', 'desktop', 'Chrome 125.0.0.0', 'Windows 10.0', NULL, '2024-06-10 03:34:26', '2024-06-10 03:34:26');

-- --------------------------------------------------------

--
-- Table structure for table `media`
--

CREATE TABLE `media` (
  `id` bigint UNSIGNED NOT NULL,
  `updates_id` int UNSIGNED NOT NULL,
  `user_id` int UNSIGNED NOT NULL,
  `type` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `width` varchar(5) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `height` varchar(5) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `img_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `video` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `encoded` enum('yes','no') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'no',
  `video_poster` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `duration_video` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `quality_video` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `video_embed` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `music` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `file` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `file_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `file_size` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `bytes` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `mime` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` enum('active','pending') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'active',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `job_id` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `media`
--

INSERT INTO `media` (`id`, `updates_id`, `user_id`, `type`, `image`, `width`, `height`, `img_type`, `video`, `encoded`, `video_poster`, `duration_video`, `quality_video`, `video_embed`, `music`, `file`, `file_name`, `file_size`, `bytes`, `mime`, `token`, `status`, `created_at`, `updated_at`, `job_id`) VALUES
(2, 2, 1, 'image', '165720b8dd1cf317019728778fapo02mnwcf9lstfyb2.jpg', '1280', '720', '', '', 'no', NULL, NULL, NULL, '', '', '', '', '', NULL, NULL, 'sw7Cp9wPgHtWzEax7iv99wRlDSuqvbqMRQ5Xy1vc2Skc3U5WvDyi08zHvapv8QAo8r7Zq5jnwoH85pxyIhpdAOcPAgyjpBngtuPwuCX4SpzSAVN9AX1D7vwGSNZkGiC4OJReVEt6VVWT8QwaJitVIZ65720b8e05a821701972878', 'active', '2023-12-07 18:14:38', '2023-12-07 18:14:39', NULL),
(3, 3, 2, 'video', '', NULL, NULL, '', '2657214aa1fbe91701975210ir4ab4yi6dtpxsd5b5dm.mp4', 'no', '', NULL, NULL, '', '', '', '', '', NULL, NULL, 'CkoN8cP9YBnK7NHjRtOWEcHwcZGdMIy12ZFOj4t8d2JpPabj1YmiIFFMgYJ3u4CtVVquHCXZb3r4lhspkQoIPDEx7FJDyoNWFWvJGgXGjIXPWxBSv6g0zTWOMaZz0P7xRinuhfvIV4BHBjBcl9Up6h657214aa218621701975210', 'active', '2023-12-07 18:53:30', '2023-12-07 18:54:10', NULL),
(6, 6, 1, 'image', '16585e487490641703273607h3smh0bn5sseemgmz9ui.jpg', '4000', '2667', '', '', 'no', NULL, NULL, NULL, '', '', '', '', '', NULL, NULL, 'kZAkMRNdixwn8ppoSrXUtj1e7RXAWJZMQuWtLH538GdeQZ0wImuH5EsnrX3cj1q0mDnDwQwLHb2KWxavfZXLRfdbBFP5my6kFGctzuBUf9MHTayvbHARgVBeFoTkbi2DPRUM4Zkt6KtlpIkLFgSGnf6585e489275fd1703273609', 'active', '2023-12-22 19:33:29', '2023-12-22 19:33:31', NULL),
(7, 7, 12, 'image', '1265b005a0d196517060345924idb2nvwxhjixmotksnw.jpg', '406', '720', '', '', 'no', NULL, NULL, NULL, '', '', '', '', '', NULL, NULL, 'zC70llhDEmry8JQQrLjrg9wjPrt7Ct6EFex1LXNlukZnVgvCgSPym9kWj5lUwKJBCH7TrhUqkWivzFZpceODtuAZ0kddaRkMN7IqM4VvhmQPM3MLtkVkrl1vhB5BITgyRt4V21gM9xGDtVmLXVpLzU65b005a0dcc6d1706034592', 'active', '2024-01-23 18:29:52', '2024-01-23 18:30:11', NULL),
(8, 8, 2, 'image', '265b0067629ba317060348065qkmnm6n3x9tpy6wcscz.jpg', '760', '1352', '', '', 'no', NULL, NULL, NULL, '', '', '', '', '', NULL, NULL, 'AfPw373S7rEsLg1aYDEVSOAj321BjQEwiJYy2g8Z3J7Fu7SU51qjJENUxpgmL32FvbDDJcFfJnZ062gGbNlwEDbKfvru1Hl09voBvfstrprd8zDl6emgmNXYAf6v411O2jGODi4tnb9lVjyttvEfrX65b0067639ea61706034806', 'active', '2024-01-23 18:33:26', '2024-01-23 18:33:32', NULL),
(9, 9, 2, 'image', '265b0068328af71706034819zmn470cqy8sqzbzjfg6s.jpg', '760', '1140', '', '', 'no', NULL, NULL, NULL, '', '', '', '', '', NULL, NULL, 'U6iyho2dnA13RcB3FryndYw9WzNwSaQemc0pQev1d6xBcUtAxRIbVQy0DGhKy64OQ0JEUOcaqe0WeYZuXZD7d0VyGDIhmrSO9yrHbInwmUntAo59W3TaEYR4OuuhYyOHyFzn4oZmLmNqwyvV6IwwbU65b00683321ad1706034819', 'active', '2024-01-23 18:33:39', '2024-01-23 18:33:42', NULL),
(10, 10, 2, 'image', '265b006a92d4051706034857zod7tk0unyksulp7np7j.jpg', '760', '1352', '', '', 'no', NULL, NULL, NULL, '', '', '', '', '', NULL, NULL, '3YMydLdigONH9L9fsVe8W2lkAMNq40OsURb92IQh9z8aUdjnzVdkB2xoDO88IJZruKsWXBrtrlOVo5H6ImlH446OhCycu6VABpnjDhCjReW6nrwS1W1F6lnUEI0Bw0bwlFcuhkrZGyOZPUBh0KabAg65b006a936e2b1706034857', 'active', '2024-01-23 18:34:17', '2024-01-23 18:34:19', NULL),
(11, 11, 2, 'image', '265b006b0c5e621706034864mbdyjybibuveu4fpbbxc.jpg', '760', '1352', '', '', 'no', NULL, NULL, NULL, '', '', '', '', '', NULL, NULL, 'GK59YCdoSUlTZ78vzNBZSEjNO7heRP4LCbW3NMWQyt2iihcQDD4SA5rWoA0QVqrLGW6zAlfEiXhywHCq8UUKbKGZG30VqduM4KK5FUCy39vDnykSdPExg0UHxDbNsM8XH7v0gGgHlIi1lyTaBDOuxz65b006b0cf83c1706034864', 'active', '2024-01-23 18:34:24', '2024-01-23 18:34:27', NULL),
(12, 12, 2, 'image', '265b006b9c088d1706034873zoqc71rqcsnxzpqlkcnv.jpg', '760', '1140', '', '', 'no', NULL, NULL, NULL, '', '', '', '', '', NULL, NULL, '6esWwTuwYIhcKVFCpbnhmiNcrOe03TMtpmzrYgm8ppTcixiJq7YXojbR6ay0sIUcbJSqleUV31ewdrTTXo0DEVvUDrv2dvnaYAaPlWwiaS37Il6kTzSw8Y6TbiAyZG4tHH0o7wFuRUqmNjg3a288yP65b006b9ce4761706034873', 'active', '2024-01-23 18:34:33', '2024-01-23 18:34:37', NULL),
(13, 13, 2, 'image', '265b006c582d721706034885wpefr7eq4cdp7zieonkf.jpg', '760', '1140', '', '', 'no', NULL, NULL, NULL, '', '', '', '', '', NULL, NULL, 'zJcPvvTRdZJTlmvqZVZNfWlruSjvF8ziBY4mVSQR0FL2iOtgHJ9oqOcIndml1Taj1WlzFcnC4V7Euq48Nn0ubtPWkiZB7VR11UiBSlbKvq32gX89U5Tsw2mRIY2w8Qjhx1R62VjGf3DggsNnK1R57M65b006c58a5651706034885', 'active', '2024-01-23 18:34:45', '2024-01-23 18:34:48', NULL),
(14, 14, 2, 'image', '265b006ccda4801706034892rzgafnc4vwk6xg98p54k.jpg', '760', '1137', '', '', 'no', NULL, NULL, NULL, '', '', '', '', '', NULL, NULL, 'VdpRS4tG9J5fvI3iv9SoGnVFD6FujuHTXQFY5cVn65asHfB7GOU0YushG5CGI7Fj9F2cDZozXwpvUsmMG2ZUa8o1JdyYu8SSwa0sFOALTdN4MLw6EUeNp8SlSa73jZi9oRrdOdDGvwxfq1Lyixxrwa65b006cce1fec1706034892', 'active', '2024-01-23 18:34:52', '2024-01-23 18:34:55', NULL),
(15, 15, 2, 'image', '265b006d2dc2321706034898pbvnibc1lv694wa17s9k.jpg', '760', '1140', '', '', 'no', NULL, NULL, NULL, '', '', '', '', '', NULL, NULL, 'N3SG1VnpDdOFQBjKW4aQjAEUuihAFFw0ORw3d25ypS5LjOd1eObdUVyAsxBIGc1L8DFj1moN7SBS7wzVw3u8zn7fs6pNH2js8i6w7Zrt6ENcMZcdOwJZZS9OIUM0S6zI7HfzlrOrTtzTilY5Yp1RI065b006d2e82c91706034898', 'active', '2024-01-23 18:34:59', '2024-01-23 18:35:01', NULL),
(16, 16, 2, 'image', '265b006da11c591706034906igj1al5jpkzk2iblfnt8.jpg', '760', '1140', '', '', 'no', NULL, NULL, NULL, '', '', '', '', '', NULL, NULL, 'sut9GyPr2JgXGlR1w07bNS1IoU8un7dMM22bnNhnByZlzehsg1IoGLDAB98f2cwRRS7AyzMsWmpEUvAlpncgiKsBcI9X7JSCKavEFyXWqJV2P47wBmV1cXLIz0uQSHjOWZbSrYq6aF98yWP295VDbL65b006da195371706034906', 'active', '2024-01-23 18:35:06', '2024-01-23 18:35:07', NULL),
(17, 17, 2, 'image', '265b006e349ab11706034915kmcm5dbjdmvuglp0j8su.jpg', '768', '1152', '', '', 'no', NULL, NULL, NULL, '', '', '', '', '', NULL, NULL, 'tyPmlb23U6BoyTc9CXIt7ZNltjASFZDFqJ2ZEEy5YLOLfueWgrl96HhE8yeZd9GrTLyoows9vEQHyysMPLGsyo7WDIoKx3VIOg4UlFnU0Oh4D0RjrUa0rTFpmmdsZKGuP2T7DmPb2zr4TENfcdvOpR65b006e3537a51706034915', 'active', '2024-01-23 18:35:15', '2024-01-23 18:35:17', NULL),
(18, 18, 2, 'image', '265b006e9011721706034921s6mzpo6ifk7rmbrmyoum.jpg', '760', '1140', '', '', 'no', NULL, NULL, NULL, '', '', '', '', '', NULL, NULL, 'ZFlzt51BIal0OK1ON4SVeyuUZgWHUPYpwXjMRC5BhqLIKDviFgjuy0d1RycEEAcST2KF6DfzEb43exmclMhKIfWfB2WhWW8hHqK0LrzNsstLQzfIlKVj9Fd7aoYCwVx4hsrTQqvaEvs8oxy8i45L1V65b006e9096131706034921', 'active', '2024-01-23 18:35:21', '2024-01-23 18:35:23', NULL),
(19, 19, 2, 'image', '265b006f63f29517060349341ajgacxfncav4lkdeywk.jpg', '760', '1140', '', '', 'no', NULL, NULL, NULL, '', '', '', '', '', NULL, NULL, 'OmC4o0zDyZzW8TzZjTOOqhShviG6E7NWGN2QTkxLo4oZiRQp81Ep33QuysqX71SbQEyCVTPYSxnuVfbSX5Yfjh6VEF5ObfVveqP8YBbjjlJBPYOmyRSkZ335rswcZfi9E8ObQlgEZ47BI1v0CUed1465b006f6463211706034934', 'active', '2024-01-23 18:35:34', '2024-01-23 18:35:36', NULL),
(20, 20, 2, 'image', '265b0074cbb3eb1706035020k3uoo7b1xiyjob28ict9.png', '490', '700', '', '', 'no', NULL, NULL, NULL, '', '', '', '', '', NULL, NULL, '0qNExsi7fjxs9TatgIjhoscRak4DEl8JKzphg5GpvNyaiqSvGwcDPSmvoM27ZEw0m5ADEZmi4h6CpqtHRYiTfvJ0JnM2D7R0d5XZFKUOSldRHopXoAepOUHCHOQSRoh9tFyEmw1ffnkiIfElixtQOJ65b0074cc97251706035020', 'active', '2024-01-23 18:37:00', '2024-01-23 18:37:05', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `media_messages`
--

CREATE TABLE `media_messages` (
  `id` bigint UNSIGNED NOT NULL,
  `messages_id` int UNSIGNED NOT NULL,
  `type` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `file` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `width` varchar(5) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `height` varchar(5) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `video_poster` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `duration_video` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `quality_video` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `file_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `file_size` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` enum('active','pending') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'active',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `encoded` enum('yes','no') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'no',
  `job_id` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `media_products`
--

CREATE TABLE `media_products` (
  `id` bigint UNSIGNED NOT NULL,
  `products_id` int UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `media_products`
--

INSERT INTO `media_products` (`id`, `products_id`, `name`, `created_at`, `updated_at`) VALUES
(1, 1, '2657afa658537a1702558309yr98tjabyfrpdc7qlcqc.jpg', '2023-12-14 12:53:28', '2023-12-14 12:53:28');

-- --------------------------------------------------------

--
-- Table structure for table `media_stories`
--

CREATE TABLE `media_stories` (
  `id` bigint UNSIGNED NOT NULL,
  `stories_id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `video_length` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `video_poster` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `text` text COLLATE utf8mb4_unicode_ci,
  `font_color` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '#ffffff',
  `font` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'Arial',
  `status` tinyint(1) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `job_id` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `media_stories`
--

INSERT INTO `media_stories` (`id`, `stories_id`, `name`, `type`, `video_length`, `video_poster`, `text`, `font_color`, `font`, `status`, `created_at`, `updated_at`, `job_id`) VALUES
(1, 1, '316666f1d603c0a1718022614c026higalgq1uniu6pcw.png', 'photo', '', '', NULL, '#ffffff', 'Arial', 1, '2024-06-10 06:30:18', '2024-06-10 06:30:36', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `media_welcome_messages`
--

CREATE TABLE `media_welcome_messages` (
  `id` bigint UNSIGNED NOT NULL,
  `creator_id` int UNSIGNED NOT NULL,
  `type` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `file` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `width` varchar(5) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `height` varchar(5) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `video_poster` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `duration_video` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `quality_video` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `file_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `file_size` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `file_size_bytes` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `mime_type` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `encoded` enum('yes','no') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'no',
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'active',
  `job_id` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `messages`
--

CREATE TABLE `messages` (
  `id` int UNSIGNED NOT NULL,
  `conversations_id` int UNSIGNED NOT NULL,
  `from_user_id` int UNSIGNED NOT NULL,
  `to_user_id` int UNSIGNED NOT NULL,
  `message` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `attach_file` varchar(100) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `status` enum('new','readed') NOT NULL DEFAULT 'new',
  `remove_from` enum('0','1') NOT NULL DEFAULT '1' COMMENT '0 Delete, 1 Active',
  `file` varchar(150) NOT NULL,
  `original_name` varchar(255) NOT NULL,
  `format` varchar(10) NOT NULL,
  `size` varchar(50) NOT NULL,
  `price` decimal(10,2) NOT NULL,
  `tip` enum('yes','no') NOT NULL DEFAULT 'no',
  `tip_amount` int UNSIGNED NOT NULL,
  `mode` enum('active','pending') NOT NULL DEFAULT 'active',
  `gift_id` int UNSIGNED DEFAULT NULL,
  `gift_amount` decimal(10,2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

--
-- Dumping data for table `messages`
--

INSERT INTO `messages` (`id`, `conversations_id`, `from_user_id`, `to_user_id`, `message`, `attach_file`, `created_at`, `updated_at`, `status`, `remove_from`, `file`, `original_name`, `format`, `size`, `price`, `tip`, `tip_amount`, `mode`, `gift_id`, `gift_amount`) VALUES
(1, 0, 9, 2, 'hi', '', '2023-12-14 13:00:31', '2023-12-14 13:00:31', 'readed', '1', '', '', '', '', 0.00, 'no', 0, 'active', NULL, 0.00),
(2, 0, 9, 2, 'hi', '', '2023-12-14 13:01:59', '2023-12-14 13:01:59', 'readed', '1', '', '', '', '', 0.00, 'no', 0, 'active', NULL, 0.00),
(3, 0, 9, 2, '구매후 매세지', '', '2023-12-14 13:02:19', '2023-12-14 13:02:19', 'readed', '1', '', '', '', '', 0.00, 'no', 0, 'active', NULL, 0.00),
(4, 0, 2, 9, 'hi', '', '2023-12-14 13:03:43', '2023-12-14 13:03:43', 'new', '1', '', '', '', '', 0.00, 'no', 0, 'active', NULL, 0.00),
(5, 0, 1, 2, 'hey', '', '2023-12-14 13:08:49', '2023-12-14 13:08:49', 'readed', '1', '', '', '', '', 0.00, 'no', 0, 'active', NULL, 0.00);

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `migration` varchar(255) COLLATE utf8mb3_unicode_ci NOT NULL,
  `batch` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `notifications`
--

CREATE TABLE `notifications` (
  `id` int UNSIGNED NOT NULL,
  `destination` int UNSIGNED NOT NULL,
  `author` int UNSIGNED NOT NULL,
  `target` int UNSIGNED NOT NULL,
  `type` int UNSIGNED NOT NULL COMMENT '1 Subscribed, 2  Like, 3 reply, 4 Like Comment',
  `status` enum('0','1') NOT NULL DEFAULT '0' COMMENT '0 unseen, 1 seen',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

--
-- Dumping data for table `notifications`
--

INSERT INTO `notifications` (`id`, `destination`, `author`, `target`, `type`, `status`, `created_at`) VALUES
(1, 2, 9, 2, 1, '1', '2023-12-14 13:00:24'),
(2, 2, 9, 1, 15, '1', '2023-12-14 13:01:39'),
(3, 1, 1, 4, 20, '1', '2023-12-15 15:31:41'),
(4, 2, 13, 2, 1, '1', '2024-01-13 10:19:54'),
(5, 2, 15, 2, 1, '1', '2024-01-18 05:39:36'),
(6, 2, 16, 2, 1, '1', '2024-01-21 06:36:03'),
(7, 2, 17, 2, 1, '1', '2024-01-22 02:15:24'),
(8, 2, 21, 2, 1, '0', '2024-01-27 17:19:57'),
(9, 2, 22, 2, 1, '0', '2024-01-30 09:52:05'),
(10, 1, 22, 1, 1, '1', '2024-01-30 09:55:34'),
(11, 30, 30, 30, 18, '0', '2024-06-10 03:21:22'),
(12, 31, 31, 31, 18, '1', '2024-06-10 04:07:37'),
(13, 1, 31, 1, 1, '0', '2024-06-10 06:24:49');

-- --------------------------------------------------------

--
-- Table structure for table `pages`
--

CREATE TABLE `pages` (
  `id` int UNSIGNED NOT NULL,
  `title` varchar(150) NOT NULL,
  `content` mediumtext,
  `slug` varchar(100) NOT NULL,
  `description` text NOT NULL,
  `keywords` varchar(255) NOT NULL,
  `lang` char(10) NOT NULL DEFAULT 'es',
  `access` varchar(50) NOT NULL DEFAULT 'all'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

--
-- Dumping data for table `pages`
--

INSERT INTO `pages` (`id`, `title`, `content`, `slug`, `description`, `keywords`, `lang`, `access`) VALUES
(2, 'Terms of Service', '<p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets<br />\r\n<br />\r\nLorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets<br />\r\n<br />\r\nLorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets<br />\r\n<br />\r\nLorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets</p>', 'terms-of-service', 'Terms of Service of Sponzy', 'terms, Terms of Service', 'en', 'all'),
(3, 'Privacy', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets \n\n<br/><br/>\nLorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.', 'privacy', '', '', 'en', 'all'),
(5, 'About us', '<p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets<br />\r\n<br />\r\nLorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.</p>\r\n', 'about', '', '', 'en', 'all'),
(8, 'How it works', '<p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.</p>', 'how-it-works', '', '', 'en', 'all'),
(9, 'Cookies Policy', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets\r\n\r\nLorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets\r\n\r\nLorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets\r\n\r\nLorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets', 'cookies', 'Page Cookies Policy', 'cookies, policy', 'en', 'all');

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `id` int UNSIGNED NOT NULL,
  `token` varchar(150) NOT NULL,
  `email` varchar(255) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

--
-- Dumping data for table `password_resets`
--

INSERT INTO `password_resets` (`id`, `token`, `email`, `created_at`) VALUES
(1, '$2y$10$oRklrSSU1mMcsXG/eFs/fuIdGzKS1RHU6XmGVRAYiL1BgK7rrmZgi', 'horasni1982@gmail.com', '2024-06-02 22:34:23'),
(2, '$2y$10$wR1iHBXHy9abexvwTUTNteozYwy4X/BV0iB3jbr3DXq9SXJBKfl6e', 'harrischristy4282@yahoo.com', '2024-06-06 17:06:31');

-- --------------------------------------------------------

--
-- Table structure for table `payment_gateways`
--

CREATE TABLE `payment_gateways` (
  `id` int UNSIGNED NOT NULL,
  `name` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `enabled` enum('1','0') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '1',
  `sandbox` enum('true','false') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'true',
  `fee` decimal(3,1) NOT NULL,
  `fee_cents` decimal(6,2) NOT NULL,
  `email` varchar(80) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `key` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `key_secret` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `bank_info` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `recurrent` enum('yes','no') COLLATE utf8mb4_unicode_ci NOT NULL,
  `logo` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `webhook_secret` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `subscription` enum('yes','no') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'yes',
  `ccbill_accnum` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ccbill_subacc` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ccbill_flexid` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ccbill_salt` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ccbill_subacc_subscriptions` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `project_id` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `project_secret` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `ccbill_datalink_username` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `ccbill_datalink_password` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `ccbill_skip_subaccount_cancellations` tinyint(1) NOT NULL DEFAULT '0',
  `allow_payments_alipay` tinyint(1) NOT NULL DEFAULT '0',
  `crypto_currency` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `payment_gateways`
--

INSERT INTO `payment_gateways` (`id`, `name`, `type`, `enabled`, `sandbox`, `fee`, `fee_cents`, `email`, `token`, `key`, `key_secret`, `bank_info`, `recurrent`, `logo`, `webhook_secret`, `subscription`, `ccbill_accnum`, `ccbill_subacc`, `ccbill_flexid`, `ccbill_salt`, `ccbill_subacc_subscriptions`, `project_id`, `project_secret`, `ccbill_datalink_username`, `ccbill_datalink_password`, `ccbill_skip_subaccount_cancellations`, `allow_payments_alipay`, `crypto_currency`) VALUES
(1, 'PayPal', 'normal', '1', 'false', 5.4, 0.30, '', '02bGGfD9bHevK3eJN06CdDvFSTXsTrTG44yGdAONeN1R37jqnLY1PuNF0mJRoFnsEygyf28yePSCA1eR0alQk4BX89kGG9Rlha2D2KX55TpDFNR5o774OshrkHSZLOFo2fAhHzcWKnwsYDFKgwuaRg', 'AfHE5yVoPQmJWIp--LCyc0B3mxVEf6XQjS1jRPEe4EQDEQDoSV5jZ6L07aC933hXvRr4IOh-FMN_OutF', 'EEyOGnwJhepT-IkzaDDkHntXWhNjVN2d84zSnJIeoCgQHFlpPrEWA70Ku6er8AtLU_70FIk1QP4OrevN', '', 'yes', 'paypal.png', '4LF67821VP1060943', 'yes', '', '', '', '', '', NULL, NULL, NULL, NULL, 0, 0, NULL),
(2, 'Stripe', 'card', '1', 'false', 2.9, 0.30, '', 'asfQSGRvYzS1P0X745krAAyHeU7ZbTpHbYKnxI2abQsBUi48EpeAu5lFAU2iBmsUWO5tpgAn9zzussI4Cce5ZcANIAmfBz0bNR9g3UfR4cserhkJwZwPsETiXiZuCixXVDHhCItuXTPXXSA6KITEoT', 'pk_live_Le9j4vz7pR5pEqFXxTgmGMmN00jJ41ZdpL', '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', '', 'yes', 'stripe.png', 'https://us-central1-teach-me-e4cae.cloudfunctions.net/stripeWebhook', 'yes', '', '', '', '', '', NULL, NULL, NULL, NULL, 0, 0, NULL),
(3, 'Bank', 'bank', '1', 'false', 0.0, 4.15, '', 'MUXRUWEuhBulbgDGUS4PbTCCjlUGr4VcGb59RU2rRWtgCHstntxq2eOeeDvIHKUwxj5z2njJ6DUGfmt0PzFnEWuspasmCserf705dJeQcVttZtHugTlBMlzt0Uf6K4DjVmGVtyZuPzXakjrFGVLYRd', '', '', 'Here are the USD account details for hyper core LLC.\r\nWise\r\nAccount holder: hyper core LLC\r\nACH and Wire routing number: 026073150\r\nAccount number: 822000874250\r\nAccount type: Checking\r\nSWIFT/BIC: CMFGUS33\r\nWise\'s address: 30 W. 26th Street, Sixth Floor\r\nNew York NY 10010\r\nUnited States', 'no', '', '', 'no', '', '', '', '', '', NULL, NULL, NULL, NULL, 0, 0, NULL),
(4, 'CCBill', 'card', '0', 'true', 0.0, 0.00, '', 'zYYFZRjTfypGTPg0TCgWK8SKdLjGEMuNGMYedjl1D0hgmSPDS0UUduCNqkYL609NWH6ru6qdaBGFIzxeL85HwEtIOBfEQRC16qIQZ1zkTM1wbcC4fe2Wxpom6g8zmoOR1ppFN6MbPFHUJQur434Nzg', '', '', '', 'yes', '', '', 'yes', '', '', '', '', '', NULL, NULL, NULL, NULL, 0, 0, NULL),
(5, 'Paystack', 'card', '0', 'true', 0.0, 0.00, '', '4w2JnfBSvoZKLiVRzHRWu3pzkgsFslVZBn8Z4mmwzVJ5KVfiFZN9kTgfFEVu90E1wPN8TnaXhtmYKwkzZ0p6HGUo1S5yVXisVxlD2PIOcm6v096akLbMAgjxiXCdFlCALkZXqi4pfrwxpYd7BGFk8c', '', '', '', 'yes', '', '', 'yes', '', '', '', '', '', NULL, NULL, NULL, NULL, 0, 0, NULL),
(6, 'Coinpayments', 'normal', '0', 'true', 0.0, 0.00, '', 'nzfADI4PgRHRn8m3r7UrR0arnfT9u1rDOQL5SKGbqPjDOZGDZA35NX3y0lQBAdmIyGVS58Rr9OtebfpGNpiXROq1G1DJNqq6xoD04fLKWTaAS2Xh3CZvECa1OfH5cchJ2P6kEl167Caax2XyAwwjGl', '', '', '', 'no', 'coinpayments.png', '', 'no', '', '', '', '', '', NULL, NULL, NULL, NULL, 0, 0, NULL),
(7, 'Mercadopago', 'normal', '0', 'true', 0.0, 0.00, '', 'UmqNKk1EzDyjGgJxAswkhzL8bSdHusZh8RxF4hqzCEf52qdMOAMzMCchsKrLZgPcuTry6AZLLG7DUGwlpXVVpv1CajJbiV3j4EvPqbbIkBCoOptrDWZY1nRJhMc39v6NDOKFo9TjHQdnwU5pZSSReW', '', '', '', 'no', 'mercadopago.png', '', 'no', '', '', '', '', '', NULL, NULL, NULL, NULL, 0, 0, NULL),
(8, 'Flutterwave', 'normal', '0', 'true', 0.0, 0.00, '', 'jMF4RWTW14dfJxlusZ22jGeCLdc8i3416CNiw2ny4l8kGBILQDTrhLtCsDxmb1MfBQA6xGh5BhQBrOXCUBB8lQMZrCaJQykG3Nxbv0ADFUSJiNewq7kbSkxyR3rCbbVjhBYMtWt6dpJTB78CafpA6T', '', '', '', 'no', 'flutterwave.png', '', 'no', '', '', '', '', '', NULL, NULL, NULL, NULL, 0, 0, NULL),
(9, 'Mollie', 'normal', '0', 'true', 0.0, 0.00, '', 'EqvhQZimw0L3zWQ35AV93iDOqgQnkXV9cqLnIvgsnz2zRLpjeZUv5JnC3QzTjtctYuVmzuo06N31tLCRPFJNkomdh7Rhk2zxe68GzgWsL1hc6YEM5V5W6JVnqwQfAzNGZkY6ZRFKmZCMbFQXOF3WkR', '', '', '', 'no', 'mollie.png', '', 'no', '', '', '', '', '', NULL, NULL, NULL, NULL, 0, 0, NULL),
(10, 'Razorpay', 'normal', '0', 'true', 0.0, 0.00, '', 'PsNqGq2rlLjo4AaTTsJpxshttwFFrLXjaKcwwQeG2r8aekDoETl9OG1cqND9PluycCfXazyzUiLo7ZFWs2tBWYwOpGcM8i5ID93Kr7Y6l79XrBcST56QONVpEcAuLRs36Z2t1Q1MBlR315c6vSpAFX', '', '', '', 'no', 'razorpay.png', '', 'no', '', '', '', '', '', NULL, NULL, NULL, NULL, 0, 0, NULL),
(11, 'Coinbase', 'normal', '0', 'true', 0.0, 0.00, '', 'sjuRSAj4VdjaBx2bcdXgDbvTdpiHJF40CNsX5vqw4VaaaohvDS48Oc30N6DAxIxChfd2qWQ99q6e11E90OOKwmo0RbXUv3fdpPksWMvJUkm8i7F5ajbsy0LbjqyidUBqJP0BG6H3NkidnbhtfcDF45', '', '', '', 'no', 'coinbase.png', '', 'no', '', '', '', '', '', NULL, NULL, NULL, NULL, 0, 0, NULL),
(12, 'NowPayments', 'normal', '0', 'true', 0.0, 0.00, '', '4DPdFIbqqPqI8XjseCCV1RRVwVuuQx6WtYdHIkMDtxgUKCQaS9Mqww4WUwa6fIxn7NN9ediLstZyIYQQIIt9l6rUANRSzrUVt86J5FopCkZHvysC8CMRBS3LOnKDbNHiUmVh91CkmvjiwCrFApfrtH', '', '', '', 'no', 'nowpayments.png', '', 'no', '', '', '', '', '', NULL, NULL, NULL, NULL, 0, 0, NULL),
(13, 'Cardinity', 'card', '0', 'true', 0.0, 0.00, '', '0DBObWPPA7adVNLvhRC1YwZBANmK4i0PBREfPzyuG0IdJn1qP0X5jkIPsMNCAXh3plFI8IRXm0onNNjPPWnCqoOP89ZCG3ycIYLwX9x6kxYBW8vci5BGFgCG3BTGI7ytEkLnxz9BuJV1N9XfhDexPd', '', '', '', 'yes', '', '', 'yes', '', '', '', '', '', NULL, NULL, NULL, NULL, 0, 0, NULL),
(14, 'Binance', 'normal', '0', 'true', 0.0, 0.00, '', 'XLoZRs9886BYe4VCxP1KtbYDE1Eg8pianqdxW13o4ANaJCghavCA13iCnzNVRiezngPmxPa6uGqAQHuqtRg5U64RViLPaIKt3eaBDPuuUzcT37CUtZEsmrQgUQUWKyESevRRFlXfNB0UZ8JSqH29vz', '', '', '', 'no', 'binance.png', '', 'no', '', '', '', '', '', NULL, NULL, NULL, NULL, 0, 0, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `pay_per_views`
--

CREATE TABLE `pay_per_views` (
  `id` int UNSIGNED NOT NULL,
  `user_id` int UNSIGNED NOT NULL,
  `updates_id` int UNSIGNED NOT NULL,
  `messages_id` int UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `plans`
--

CREATE TABLE `plans` (
  `id` bigint UNSIGNED NOT NULL,
  `user_id` int UNSIGNED NOT NULL,
  `name` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `price` decimal(10,2) NOT NULL,
  `interval` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `paystack` varchar(150) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` enum('0','1') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `plans`
--

INSERT INTO `plans` (`id`, `user_id`, `name`, `price`, `interval`, `paystack`, `status`, `created_at`, `updated_at`) VALUES
(1, 2, 'user_2', 0.00, 'monthly', '', '1', '2023-12-14 13:00:24', '2023-12-14 13:00:24'),
(2, 1, 'user_1', 0.00, 'monthly', '', '1', '2024-01-30 09:55:33', '2024-01-30 09:55:33');

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` bigint UNSIGNED NOT NULL,
  `user_id` int UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` char(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'digital',
  `price` decimal(10,2) NOT NULL,
  `delivery_time` int UNSIGNED NOT NULL,
  `country_free_shipping` char(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tags` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `file` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `mime` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `extension` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `size` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` enum('0','1') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `shipping_fee` decimal(10,2) NOT NULL,
  `quantity` int UNSIGNED NOT NULL,
  `box_contents` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `category` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `user_id`, `name`, `type`, `price`, `delivery_time`, `country_free_shipping`, `tags`, `description`, `file`, `mime`, `extension`, `size`, `status`, `created_at`, `updated_at`, `shipping_fee`, `quantity`, `box_contents`, `category`) VALUES
(1, 2, 'a6 brake pad', 'digital', 60.00, 0, '', 'brake pad', 'brake pad brake pad', '2657afab23903317025583862yp9aifxfoqlzgisuuco.jpg', 'image/jpeg', 'jpg', '1.5MB', '1', '2023-12-14 12:53:28', '2023-12-14 12:53:28', 0.00, 0, '', '1');

-- --------------------------------------------------------

--
-- Table structure for table `purchases`
--

CREATE TABLE `purchases` (
  `id` bigint UNSIGNED NOT NULL,
  `transactions_id` int UNSIGNED NOT NULL,
  `user_id` int UNSIGNED NOT NULL,
  `products_id` int UNSIGNED NOT NULL,
  `delivery_status` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'delivered',
  `description_custom_content` longtext COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `address` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `city` varchar(150) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `zip` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone` char(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `expired_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `purchases`
--

INSERT INTO `purchases` (`id`, `transactions_id`, `user_id`, `products_id`, `delivery_status`, `description_custom_content`, `created_at`, `updated_at`, `address`, `city`, `zip`, `phone`, `expired_at`) VALUES
(1, 1, 9, 1, 'delivered', NULL, '2023-12-14 13:01:39', '2023-12-14 13:01:39', NULL, NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `referrals`
--

CREATE TABLE `referrals` (
  `id` bigint UNSIGNED NOT NULL,
  `user_id` int UNSIGNED NOT NULL,
  `referred_by` int UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `referral_transactions`
--

CREATE TABLE `referral_transactions` (
  `id` bigint UNSIGNED NOT NULL,
  `transactions_id` int UNSIGNED DEFAULT NULL,
  `referrals_id` int UNSIGNED NOT NULL,
  `user_id` int UNSIGNED NOT NULL,
  `referred_by` int UNSIGNED NOT NULL,
  `earnings` double(10,2) NOT NULL,
  `type` char(25) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `replies`
--

CREATE TABLE `replies` (
  `id` bigint UNSIGNED NOT NULL,
  `user_id` bigint UNSIGNED NOT NULL,
  `updates_id` bigint UNSIGNED NOT NULL,
  `comments_id` bigint UNSIGNED NOT NULL,
  `reply` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `reports`
--

CREATE TABLE `reports` (
  `id` int UNSIGNED NOT NULL,
  `user_id` int UNSIGNED NOT NULL,
  `report_id` int UNSIGNED NOT NULL,
  `type` varchar(100) NOT NULL,
  `reason` varchar(100) NOT NULL,
  `message` text,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

-- --------------------------------------------------------

--
-- Table structure for table `reserved`
--

CREATE TABLE `reserved` (
  `id` int UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

--
-- Dumping data for table `reserved`
--

INSERT INTO `reserved` (`id`, `name`) VALUES
(14, 'account'),
(31, 'api'),
(2, 'app'),
(49, 'artisan'),
(47, 'blog'),
(30, 'bootstrap'),
(34, 'categories'),
(36, 'collections'),
(29, 'comment'),
(42, 'config'),
(25, 'contact'),
(45, 'core'),
(46, 'cpanel'),
(32, 'creators'),
(37, 'dashboard'),
(41, 'database'),
(50, 'explore'),
(35, 'featured'),
(1, 'fuck'),
(9, 'goods'),
(52, 'home'),
(11, 'jobs'),
(21, 'join'),
(53, 'lang'),
(16, 'latest'),
(20, 'login'),
(33, 'logout'),
(27, 'members'),
(13, 'messages'),
(19, 'notifications'),
(48, 'offline'),
(15, 'popular'),
(6, 'porn'),
(12, 'projects'),
(3, 'public'),
(23, 'register'),
(40, 'resources'),
(39, 'routes'),
(17, 'search'),
(7, 'sex'),
(51, 'shop'),
(26, 'signup'),
(44, 'storage'),
(8, 'tags'),
(38, 'tests'),
(24, 'upgrade'),
(28, 'upload'),
(4, 'vendor'),
(5, 'xxx');

-- --------------------------------------------------------

--
-- Table structure for table `restrictions`
--

CREATE TABLE `restrictions` (
  `id` bigint UNSIGNED NOT NULL,
  `user_id` int UNSIGNED NOT NULL,
  `user_restricted` int UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `sessions`
--

CREATE TABLE `sessions` (
  `id` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint UNSIGNED DEFAULT NULL,
  `ip_address` varchar(45) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_agent` text COLLATE utf8mb4_unicode_ci,
  `payload` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `last_activity` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `shop_categories`
--

CREATE TABLE `shop_categories` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `shop_categories`
--

INSERT INTO `shop_categories` (`id`, `name`, `slug`) VALUES
(1, 'digital content', 'digital-content'),
(2, 'goods', 'goods'),
(3, 'media', 'media');

-- --------------------------------------------------------

--
-- Table structure for table `states`
--

CREATE TABLE `states` (
  `id` bigint UNSIGNED NOT NULL,
  `countries_id` int UNSIGNED NOT NULL,
  `name` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL,
  `code` char(10) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `stories`
--

CREATE TABLE `stories` (
  `id` bigint UNSIGNED NOT NULL,
  `user_id` bigint UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'active',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `stories`
--

INSERT INTO `stories` (`id`, `user_id`, `title`, `status`, `created_at`, `updated_at`) VALUES
(1, 31, 'keya mala', 'active', '2024-06-10 06:30:36', '2024-06-10 06:30:36');

-- --------------------------------------------------------

--
-- Table structure for table `story_backgrounds`
--

CREATE TABLE `story_backgrounds` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `story_backgrounds`
--

INSERT INTO `story_backgrounds` (`id`, `name`) VALUES
(1, '01.jpg'),
(2, '02.png'),
(3, '03.jpg'),
(4, '04.jpg'),
(5, '05.jpg'),
(6, '06.png'),
(7, '07.jpg'),
(8, '08.png'),
(9, '09.jpg'),
(10, '10.png'),
(11, '11.jpg'),
(12, '12.jpg'),
(13, '13.jpg'),
(14, '14.jpg'),
(15, '15.png');

-- --------------------------------------------------------

--
-- Table structure for table `story_fonts`
--

CREATE TABLE `story_fonts` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `story_views`
--

CREATE TABLE `story_views` (
  `id` bigint UNSIGNED NOT NULL,
  `user_id` bigint UNSIGNED NOT NULL,
  `media_stories_id` bigint UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `stripe_state_tokens`
--

CREATE TABLE `stripe_state_tokens` (
  `id` bigint UNSIGNED NOT NULL,
  `user_id` bigint UNSIGNED NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `subscriptions`
--

CREATE TABLE `subscriptions` (
  `id` bigint UNSIGNED NOT NULL,
  `creator_id` bigint UNSIGNED NOT NULL,
  `user_id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `stripe_id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `stripe_status` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `stripe_price` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `quantity` int DEFAULT NULL,
  `trial_ends_at` timestamp NULL DEFAULT NULL,
  `ends_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT NULL,
  `last_payment` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `free` enum('yes','no') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'no',
  `subscription_id` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `cancelled` enum('yes','no') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'no',
  `rebill_wallet` enum('on','off') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'off',
  `interval` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'monthly',
  `taxes` text COLLATE utf8mb4_unicode_ci,
  `payment_id` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `subscriptions`
--

INSERT INTO `subscriptions` (`id`, `creator_id`, `user_id`, `name`, `stripe_id`, `stripe_status`, `stripe_price`, `quantity`, `trial_ends_at`, `ends_at`, `created_at`, `updated_at`, `last_payment`, `free`, `subscription_id`, `cancelled`, `rebill_wallet`, `interval`, `taxes`, `payment_id`) VALUES
(1, 2, 9, '', '', '', 'user_2', NULL, NULL, NULL, '2023-12-14 13:00:24', '2023-12-14 13:00:24', NULL, 'yes', '', 'no', 'off', 'monthly', NULL, NULL),
(2, 2, 13, '', '', '', 'user_2', NULL, NULL, NULL, '2024-01-13 10:19:54', '2024-01-13 10:19:54', NULL, 'yes', '', 'no', 'off', 'monthly', NULL, NULL),
(3, 2, 15, '', '', '', 'user_2', NULL, NULL, NULL, '2024-01-18 05:39:35', '2024-01-18 05:39:35', NULL, 'yes', '', 'no', 'off', 'monthly', NULL, NULL),
(4, 2, 16, '', '', '', 'user_2', NULL, NULL, NULL, '2024-01-21 06:36:03', '2024-01-21 06:36:03', NULL, 'yes', '', 'no', 'off', 'monthly', NULL, NULL),
(5, 2, 17, '', '', '', 'user_2', NULL, NULL, NULL, '2024-01-22 02:15:24', '2024-01-22 02:15:24', NULL, 'yes', '', 'no', 'off', 'monthly', NULL, NULL),
(6, 2, 21, '', '', '', 'user_2', NULL, NULL, NULL, '2024-01-27 17:19:56', '2024-01-27 17:19:56', NULL, 'yes', '', 'no', 'off', 'monthly', NULL, NULL),
(7, 2, 22, '', '', '', 'user_2', NULL, NULL, NULL, '2024-01-30 09:52:04', '2024-01-30 09:52:04', NULL, 'yes', '', 'no', 'off', 'monthly', NULL, NULL),
(8, 1, 22, '', '', '', 'user_1', NULL, NULL, NULL, '2024-01-30 09:55:33', '2024-01-30 09:55:33', NULL, 'yes', '', 'no', 'off', 'monthly', NULL, NULL),
(9, 1, 31, '', '', '', 'user_1', NULL, NULL, NULL, '2024-06-10 06:24:35', '2024-06-10 06:24:35', NULL, 'yes', '', 'no', 'off', 'monthly', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `subscription_deleteds`
--

CREATE TABLE `subscription_deleteds` (
  `id` bigint UNSIGNED NOT NULL,
  `creator_id` bigint UNSIGNED NOT NULL,
  `user_id` bigint UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `subscription_items`
--

CREATE TABLE `subscription_items` (
  `id` bigint UNSIGNED NOT NULL,
  `subscription_id` bigint UNSIGNED NOT NULL,
  `stripe_id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `stripe_product` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `stripe_price` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `quantity` int DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tax_rates`
--

CREATE TABLE `tax_rates` (
  `id` int UNSIGNED NOT NULL,
  `name` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` tinyint(1) NOT NULL DEFAULT '1',
  `percentage` decimal(5,2) NOT NULL,
  `country` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `state` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `iso_state` char(10) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `stripe_id` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` enum('0','1') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `transactions`
--

CREATE TABLE `transactions` (
  `id` int UNSIGNED NOT NULL,
  `txn_id` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` int UNSIGNED NOT NULL,
  `subscriptions_id` int UNSIGNED NOT NULL,
  `subscribed` int UNSIGNED NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `earning_net_user` decimal(10,2) NOT NULL,
  `earning_net_admin` decimal(10,2) NOT NULL,
  `payment_gateway` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `approved` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '1' COMMENT '0 Pending, 1 Success, 2 Canceled',
  `amount` float NOT NULL,
  `type` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'subscription',
  `percentage_applied` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `referred_commission` int UNSIGNED NOT NULL,
  `taxes` text COLLATE utf8mb4_unicode_ci,
  `direct_payment` tinyint(1) NOT NULL DEFAULT '0',
  `gift_id` int UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `transactions`
--

INSERT INTO `transactions` (`id`, `txn_id`, `user_id`, `subscriptions_id`, `subscribed`, `created_at`, `earning_net_user`, `earning_net_admin`, `payment_gateway`, `approved`, `amount`, `type`, `percentage_applied`, `referred_commission`, `taxes`, `direct_payment`, `gift_id`) VALUES
(1, 'purchase_7IXD0BrQqHxVJExYA1jQbRnHE', 9, 0, 2, '2023-12-14 13:01:39', 48.00, 12.00, 'Wallet', '1', 60, 'purchase', '20%', 0, '', 0, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `two_factor_codes`
--

CREATE TABLE `two_factor_codes` (
  `id` bigint UNSIGNED NOT NULL,
  `user_id` int UNSIGNED NOT NULL,
  `code` varchar(25) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `updates`
--

CREATE TABLE `updates` (
  `id` int NOT NULL,
  `title` varchar(150) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` int UNSIGNED NOT NULL,
  `date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `token_id` varchar(255) NOT NULL,
  `locked` enum('yes','no') NOT NULL DEFAULT 'no',
  `fixed_post` enum('0','1') NOT NULL DEFAULT '0',
  `price` decimal(10,2) NOT NULL,
  `status` char(20) NOT NULL DEFAULT 'active',
  `video_views` bigint UNSIGNED NOT NULL,
  `ip` varchar(200) DEFAULT NULL,
  `scheduled_date` timestamp NULL DEFAULT NULL,
  `schedule` tinyint(1) NOT NULL DEFAULT '0',
  `editing` tinyint(1) NOT NULL DEFAULT '0',
  `can_media_edit` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

--
-- Dumping data for table `updates`
--

INSERT INTO `updates` (`id`, `title`, `description`, `user_id`, `date`, `token_id`, `locked`, `fixed_post`, `price`, `status`, `video_views`, `ip`, `scheduled_date`, `schedule`, `editing`, `can_media_edit`) VALUES
(2, NULL, 'app', 1, '2023-12-07 18:14:39', 'aY7oOPLt1weoXUxJhPUmMyWEioeXkd1xMA3dBJUFBoyeJP45XKx4lxFs9QpzptQlOgsRPyWVCpmGpByYHDURa7Agdd2mCCOn46Y9y96oVgTnX5mUa3g2mTWVLoYnHrLUKCQGLFF5sG5s1GPvTlwl5L', 'no', '0', 0.00, 'active', 0, '175.194.96.167', '0000-00-00 00:00:00', 0, 0, 0),
(3, NULL, 'snow', 2, '2023-12-07 18:54:10', 'lk9Vfl7MHi3xzMx1lLDJPgXJ0A1H1JNAnaqVYclI5sjj1mgKWAhPPiSobD69DmVKl5vlMNMvA8RfDEhXHMb0Bc5v8cRigWbXGuvpbQULVGvHKvL2WbnuG45NGeWrDddaoYAyhIzchHOnbsug2rgfc8', 'yes', '0', 0.00, 'active', 4, '175.194.96.167', '0000-00-00 00:00:00', 0, 0, 0),
(6, NULL, 'lingerie', 1, '2023-12-22 19:33:31', 'sxS6ik3qfUm6vD0o35OTZ6l4s0s9cqjW3OgbBzNnd2YPCTqGOs2R9f9cysAX6oijbDfblZxKyq8cGFbWHZ2aaKi9KTqHLRKtvySup2cSaPltfHGNeuGW7foUME1Ls1b2g01RsbKfyKQNVytmnXFcl3', 'no', '0', 0.00, 'active', 0, '221.151.210.25', '0000-00-00 00:00:00', 0, 0, 0),
(7, NULL, '.', 12, '2024-01-23 18:30:11', 'eEkrDSYnq8f2Bq3z83DfcaJUgzYTXujtZniQvOkSV86KCOtp82PsDKosicDPN4BkZIlcEkBE4dZgWGCvBFPzD2nOMOKa4h0jPpqFnfptso6u7x14ozLqrmOyCmUYQ30wTiBIR05aorvlsWlZSNhqW8', 'yes', '0', 0.00, 'active', 0, '14.42.100.92', '0000-00-00 00:00:00', 0, 0, 0),
(8, NULL, '.', 2, '2024-01-23 18:33:32', 'Arw5eKmoOtnW6jBSjuCZunQpY3HHUS6BYlECqlhpWk1l8k5vayUZbjSJfItC0dNibsFleExnL8Gwd2Ozni8I5qV1xbwqGvbA2dVAKZm53MHBTE8YqADPNt9x5K4RaT8ZIHU7daHJ0AXUHkwM2EshOp', 'no', '0', 0.00, 'active', 0, '14.42.100.92', '0000-00-00 00:00:00', 0, 0, 0),
(9, NULL, '.', 2, '2024-01-23 18:33:42', '3wHY1GbJzqPwZQzZGvun5Qg1rtiY8ZzES9WqSWVKVMbmG6AJQaJSsxdITimCkCvh8QvdMoXs1UrCIkaItNhWPNzqRBbAYDIwaIVD3JuECGCqL9B4lgYJWTaahBi486m4f1PYfo9YcgmfPNmbRD5IdF', 'no', '0', 0.00, 'active', 0, '14.42.100.92', '0000-00-00 00:00:00', 0, 0, 0),
(10, NULL, '.', 2, '2024-01-23 18:34:19', 'MvPn4nfbArQo6ynh3o5Ri1SB8GrN0kcUAh6yKkvzif6W2PFLSMuKijqwzOrLyHa9g4EGVsCQLFuQseYdjiO6bDxJZvbhIuyDYIPR1VLqmvFE0XtukVHMGZuVYWM3pG88TUQWPv7hrj3brg4rFZkDXk', 'no', '0', 0.00, 'active', 0, '14.42.100.92', '0000-00-00 00:00:00', 0, 0, 0),
(11, NULL, '.', 2, '2024-01-23 18:34:27', 'MsFFID9LB0J17XHZEmdphXzTwZu4Ys3p9rp8asKOUmDkD1BiEg9EA2kbVH8bShBPWshWQPLZAbQQfB1v7PP3JHfEIJZlcd5fayOdmqMNLgRlbxL0X2KrOlUvSg91azxiKiQKDaXdSpgxgs3FANBh0O', 'no', '0', 0.00, 'active', 0, '14.42.100.92', '0000-00-00 00:00:00', 0, 0, 0),
(12, NULL, '.', 2, '2024-01-23 18:34:37', 'gdFNEMu8Nb5MU8fAkD3ZS6mr9EAgEJkCpSNQDw5ZpnUNV86QpTXDXW1xKpD6Agvj056kx60Kfy2t9THLFE0l86iaSJwsVWCXl74fyR6rVzlFkPSvheR0dZSkRfncF8DXjiVgWhEKIGlnK0Fdil1jbH', 'no', '0', 0.00, 'active', 0, '14.42.100.92', '0000-00-00 00:00:00', 0, 0, 0),
(13, NULL, '.', 2, '2024-01-23 18:34:48', '0N0AeqCTNNovd7ZQ9hl6cZpRuM85SRSztFriRW4xSeFbYY4kcV5L6QftUdOZiBcD9RON1AzaOoRgPFE27MFqCgkGicOnTRf5mLfXilDYHht7yLDPY9NUdXQHV9ihj7tIka4r0RN2WxNsrO8ZSHUrbr', 'no', '0', 0.00, 'active', 0, '14.42.100.92', '0000-00-00 00:00:00', 0, 0, 0),
(14, NULL, '.', 2, '2024-01-23 18:34:54', 'cQhmweQlR4pt7stT7RgmGMtFihyGjhdMQUod9CTpS2tUE4a0tGPpq2BpUXA3zdMFVp84MGFlUzYs01IIZsIjnkIuMlcuFrot7UCUZveGglCrMz54ubIPisKSLrGWJ4F3bIvoy1KL4pO7Tnx8esxemA', 'no', '0', 0.00, 'active', 0, '14.42.100.92', '0000-00-00 00:00:00', 0, 0, 0),
(15, NULL, '.', 2, '2024-01-23 18:35:01', 'Wwla4UX34a4F6Ax63anJlfx0xqi2ISOZx1iYSJ1Yatzfl6Ygl4p2nwHs91bGtXPEaj1JBlXzc1jcLBB8pMqzdWmKev5xH0cyXJSzqHthIyE5pDz6jcsQrvJdlGgZvaq0n70l2Z0zZSXBXO3ASTHUAl', 'no', '0', 0.00, 'active', 0, '14.42.100.92', '0000-00-00 00:00:00', 0, 0, 0),
(16, NULL, '.', 2, '2024-01-23 18:35:07', 'GRa8lK5iM1x0xYxMIX1DVdLzew5uowwxo3KcPPm3WS8E8jPtHEdMI3W4b4LAbMX1v3voLVEZJzyPQ7YNqYFVC1n9IqIk3uEFd07iAAUR9LS1ELDpdYrqtara5mIvQbZzvosxYfWk1rjGav23gFNROF', 'no', '0', 0.00, 'active', 0, '14.42.100.92', '0000-00-00 00:00:00', 0, 0, 0),
(17, NULL, '.', 2, '2024-01-23 18:35:17', 'doDptPuZtZtJ1NsPMAnqXYX8BaesnlL6d5OvjaSot3x2fNbZn3x3M3Gl3Wnwq8JXw1KAVkt96dZP5ZiqtfBtQvhjTcSbj0PXrPRQOEdEayNji450j8Oc7eNoYZCy79EEkM3LtlsJ2XNh1BvAf5xxJy', 'no', '0', 0.00, 'active', 0, '14.42.100.92', '0000-00-00 00:00:00', 0, 0, 0),
(18, NULL, '.', 2, '2024-01-23 18:35:23', 'cpdg3zjKUdKE4WqmDNB3xVZH62nNh7mbueVRtuHIfi8P4CROrJAobcxQ01ZCchRA7Y3yIa1XUhd86M9jXDGLKfTC1lL8I0s1xJS3ZjPANVQl2pUSya6ja3jPFuGB4MawLyCd50crylIfAPQZuJBzDc', 'no', '0', 0.00, 'active', 0, '14.42.100.92', '0000-00-00 00:00:00', 0, 0, 0),
(19, NULL, '.', 2, '2024-01-23 18:35:36', 'mTyQtcP5bQATxjngO18fLaKvDnOcfDFfU698l3S2wFCOs4Nb2fiIgoyVGlQ6x3MOWpU39kv64TXWJeWd49HNG5A4i9s3h0OF4jK269BkyLoxZgrQE8m2dPndNWJIEHvzYHiUNmtwlF5T5U2pzWvPLr', 'no', '0', 0.00, 'active', 0, '14.42.100.92', '0000-00-00 00:00:00', 0, 0, 0),
(20, NULL, '...', 2, '2024-01-23 18:37:05', '8QKw7DD68AUFDd2AQDGx0EGWg3Fp7pq7RQ4kSKHwhTvESUrrqPnxFEkhScud7P8KBiKKsOJFPBPndHLkrZovWdunjxLO24r769ldDDteAThRlmtiZNNGCZa1x25umSOdXUdVC3hxCONs82bXKt6gy6', 'yes', '0', 0.00, 'active', 0, '14.42.100.92', '0000-00-00 00:00:00', 0, 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int UNSIGNED NOT NULL,
  `name` varchar(150) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `username` varchar(50) NOT NULL,
  `countries_id` char(25) NOT NULL,
  `password` char(60) NOT NULL,
  `email` varchar(255) NOT NULL,
  `date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `avatar` varchar(70) NOT NULL,
  `cover` varchar(70) NOT NULL,
  `status` varchar(200) NOT NULL DEFAULT 'active',
  `role` enum('normal','admin') NOT NULL DEFAULT 'normal',
  `permission` enum('all','none') NOT NULL DEFAULT 'none',
  `remember_token` varchar(100) NOT NULL,
  `token` varchar(80) NOT NULL,
  `confirmation_code` varchar(125) NOT NULL,
  `paypal_account` varchar(200) NOT NULL,
  `payment_gateway` varchar(50) NOT NULL,
  `bank` text NOT NULL,
  `featured` enum('yes','no') NOT NULL DEFAULT 'no',
  `featured_date` timestamp NULL DEFAULT NULL,
  `about` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `story` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `profession` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `oauth_uid` varchar(255) NOT NULL,
  `oauth_provider` varchar(255) NOT NULL,
  `categories_id` varchar(255) NOT NULL,
  `website` varchar(200) NOT NULL,
  `stripe_id` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL,
  `pm_type` varchar(255) DEFAULT NULL,
  `pm_last_four` varchar(4) DEFAULT NULL,
  `trial_ends_at` timestamp NULL DEFAULT NULL,
  `price` decimal(10,2) NOT NULL,
  `balance` decimal(10,2) NOT NULL,
  `verified_id` enum('yes','no','reject') DEFAULT 'no',
  `address` varchar(200) NOT NULL,
  `city` varchar(150) NOT NULL,
  `zip` varchar(50) NOT NULL,
  `facebook` varchar(200) NOT NULL,
  `twitter` varchar(200) NOT NULL,
  `instagram` varchar(200) NOT NULL,
  `youtube` varchar(200) NOT NULL,
  `pinterest` varchar(200) NOT NULL,
  `github` varchar(200) NOT NULL,
  `last_seen` timestamp NULL DEFAULT NULL,
  `email_new_subscriber` enum('yes','no') NOT NULL DEFAULT 'yes',
  `plan` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `notify_new_subscriber` enum('yes','no') NOT NULL DEFAULT 'yes',
  `notify_liked_post` enum('yes','no') NOT NULL DEFAULT 'yes',
  `notify_commented_post` enum('yes','no') NOT NULL DEFAULT 'yes',
  `company` varchar(50) NOT NULL,
  `post_locked` enum('yes','no') NOT NULL DEFAULT 'yes',
  `ip` varchar(40) NOT NULL,
  `dark_mode` enum('on','off') CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL DEFAULT 'on',
  `gender` varchar(50) NOT NULL,
  `birthdate` varchar(30) NOT NULL,
  `allow_download_files` enum('no','yes') NOT NULL DEFAULT 'no',
  `language` varchar(10) NOT NULL,
  `free_subscription` enum('yes','no') NOT NULL DEFAULT 'no',
  `wallet` decimal(10,2) NOT NULL,
  `tiktok` varchar(200) NOT NULL,
  `snapchat` varchar(200) NOT NULL,
  `paystack_plan` varchar(100) NOT NULL,
  `paystack_authorization_code` varchar(100) NOT NULL,
  `paystack_last4` int UNSIGNED NOT NULL,
  `paystack_exp` varchar(50) NOT NULL,
  `paystack_card_brand` varchar(25) NOT NULL,
  `notify_new_tip` enum('yes','no') NOT NULL DEFAULT 'yes',
  `hide_profile` enum('yes','no') NOT NULL DEFAULT 'no',
  `hide_last_seen` enum('yes','no') NOT NULL DEFAULT 'no',
  `last_login` varchar(250) NOT NULL,
  `hide_count_subscribers` enum('yes','no') NOT NULL DEFAULT 'no',
  `hide_my_country` enum('yes','no') NOT NULL DEFAULT 'no',
  `show_my_birthdate` enum('yes','no') NOT NULL DEFAULT 'no',
  `notify_new_post` enum('yes','no') NOT NULL DEFAULT 'yes',
  `notify_email_new_post` enum('yes','no') NOT NULL DEFAULT 'yes',
  `custom_fee` int UNSIGNED NOT NULL,
  `hide_name` enum('yes','no') NOT NULL DEFAULT 'no',
  `birthdate_changed` enum('yes','no') NOT NULL DEFAULT 'no',
  `email_new_tip` enum('yes','no') NOT NULL DEFAULT 'yes',
  `email_new_ppv` enum('yes','no') NOT NULL DEFAULT 'yes',
  `notify_new_ppv` enum('yes','no') NOT NULL DEFAULT 'yes',
  `active_status_online` enum('yes','no') NOT NULL DEFAULT 'yes',
  `payoneer_account` varchar(200) NOT NULL,
  `zelle_account` varchar(200) NOT NULL,
  `notify_liked_comment` enum('yes','no') NOT NULL DEFAULT 'yes',
  `permissions` text NOT NULL,
  `blocked_countries` text NOT NULL,
  `two_factor_auth` enum('yes','no') NOT NULL DEFAULT 'no',
  `notify_live_streaming` enum('yes','no') NOT NULL DEFAULT 'yes',
  `notify_mentions` enum('yes','no') NOT NULL DEFAULT 'yes',
  `stripe_connect_id` varchar(255) DEFAULT NULL,
  `completed_stripe_onboarding` tinyint(1) NOT NULL DEFAULT '0',
  `device_token` varchar(255) DEFAULT NULL,
  `telegram` varchar(200) NOT NULL,
  `vk` varchar(200) NOT NULL,
  `twitch` varchar(200) NOT NULL,
  `discord` varchar(200) NOT NULL,
  `reddit` varchar(200) NOT NULL,
  `spotify` varchar(200) NOT NULL,
  `posts_privacy` tinyint(1) NOT NULL DEFAULT '1',
  `document_id` varchar(100) NOT NULL,
  `crypto_wallet` varchar(255) NOT NULL,
  `threads` varchar(200) NOT NULL,
  `allow_live_streaming_private` enum('on','off') NOT NULL DEFAULT 'off',
  `price_live_streaming_private` decimal(10,2) DEFAULT NULL,
  `allow_dm` tinyint(1) NOT NULL DEFAULT '1',
  `welcome_message_new_subs` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `send_welcome_message` tinyint(1) NOT NULL DEFAULT '0',
  `price_welcome_message` decimal(10,2) DEFAULT NULL,
  `alias_mp` varchar(100) NOT NULL,
  `cvu` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `username`, `countries_id`, `password`, `email`, `date`, `avatar`, `cover`, `status`, `role`, `permission`, `remember_token`, `token`, `confirmation_code`, `paypal_account`, `payment_gateway`, `bank`, `featured`, `featured_date`, `about`, `story`, `profession`, `oauth_uid`, `oauth_provider`, `categories_id`, `website`, `stripe_id`, `pm_type`, `pm_last_four`, `trial_ends_at`, `price`, `balance`, `verified_id`, `address`, `city`, `zip`, `facebook`, `twitter`, `instagram`, `youtube`, `pinterest`, `github`, `last_seen`, `email_new_subscriber`, `plan`, `notify_new_subscriber`, `notify_liked_post`, `notify_commented_post`, `company`, `post_locked`, `ip`, `dark_mode`, `gender`, `birthdate`, `allow_download_files`, `language`, `free_subscription`, `wallet`, `tiktok`, `snapchat`, `paystack_plan`, `paystack_authorization_code`, `paystack_last4`, `paystack_exp`, `paystack_card_brand`, `notify_new_tip`, `hide_profile`, `hide_last_seen`, `last_login`, `hide_count_subscribers`, `hide_my_country`, `show_my_birthdate`, `notify_new_post`, `notify_email_new_post`, `custom_fee`, `hide_name`, `birthdate_changed`, `email_new_tip`, `email_new_ppv`, `notify_new_ppv`, `active_status_online`, `payoneer_account`, `zelle_account`, `notify_liked_comment`, `permissions`, `blocked_countries`, `two_factor_auth`, `notify_live_streaming`, `notify_mentions`, `stripe_connect_id`, `completed_stripe_onboarding`, `device_token`, `telegram`, `vk`, `twitch`, `discord`, `reddit`, `spotify`, `posts_privacy`, `document_id`, `crypto_wallet`, `threads`, `allow_live_streaming_private`, `price_live_streaming_private`, `allow_dm`, `welcome_message_new_subs`, `send_welcome_message`, `price_welcome_message`, `alias_mp`, `cvu`) VALUES
(1, 'Admin', 'Admin', '1', '$2y$10$U3BsZ5Xx/MpiZLl2N54t8OP0h1EdWOQEDuzO/tAVwKM4AF/nAn9Tu', 'admin@example.com', '2021-03-13 08:01:01', 'admin-11701972758n7184gfws0.png', 'admin-11701972763xzpav04vrr.png', 'active', 'admin', 'all', 'ElhKRu6wjQuDhT5OCdfOqgZJZ268xVxUaWGJFa92CvBg7ahKm80ALlQ85Mwz', 'Wy4VkAl2dxHb9WHoXjTowSGPXFPnEQHca6RBe2yeqqmRafs0hSbCEobhNkZZAbCDIru60ceLzAAOI3fj', '', '', '', '', 'yes', '2019-02-21 03:25:00', '', 'Welcome to my page. If you like my content, please consider support. Any donation will be well received. Thank you for your support!', '', '', '', '', '', NULL, NULL, NULL, NULL, 0.00, 0.00, 'yes', '', '', '', '', 'https://twitter.com/yofans777', '', '', '', '', '2024-06-10 07:48:23', 'yes', 'user_1', 'yes', 'yes', 'yes', '', '', '', 'off', '', '01/18/2004', 'no', 'en', 'yes', 0.00, '', '', '', '', 0, '', '', 'yes', 'no', 'no', '', 'no', 'no', 'no', 'yes', 'no', 0, 'no', 'yes', 'yes', 'yes', 'yes', 'yes', '', '', 'yes', 'full_access', '', 'no', 'yes', 'yes', NULL, 0, NULL, '', '', '', '', '', '', 1, '', '', '', 'off', NULL, 1, '', 0, NULL, '', ''),
(2, 'Jongs', 'jongs2', '114', '', 'b7124796@gmail.com', '2023-12-07 18:23:03', 'jonghwan2-21701973435rmloxpzc84.png', 'jonghwan2-21701973460mugokomdmz.png', 'active', 'normal', 'none', '', 'yw8TarHSOAHc2YzvOJsMO1uL0AvuBxYxrrjFLoLSIGyBhtbqgjvZHfX2Z1jp4TyISkJr4Z19GjC', '', '', '', '', 'no', NULL, '', '나의 페이지에 온것을 환영합니다. 내 콘텐츠가 마음에 드신다면 지원을 고려해 보세요. 귀하의 지원에 감사드립니다!', '', '113415259143854427759', 'google', '', '', NULL, NULL, NULL, NULL, 0.00, 48.00, 'yes', '', '', '', '', '', '', '', '', '', '2024-01-23 18:40:17', 'yes', 'user_2', 'yes', 'yes', 'yes', '', 'yes', '175.194.96.167', 'off', 'female', '09/18/2004', 'no', 'ko', 'yes', 0.00, '', '', '', '', 0, '', '', 'yes', 'no', 'no', '', 'no', 'no', 'no', 'yes', 'yes', 0, 'yes', 'yes', 'yes', 'yes', 'yes', 'yes', '', '', 'yes', '', '', 'no', 'yes', 'yes', NULL, 0, NULL, '', '', '', '', '', '', 1, '', '', '', 'off', NULL, 1, '', 0, NULL, '', ''),
(7, 'fire', 'fire', '114', '$2y$10$a5iUjRNfW5K/MQ2BKyMADupjI41FmsJOhwkZtl.ztPa9jsjVYRVwe', 'majoyramos12@gmail.com', '2023-12-08 14:58:21', 'fi7-71702047597rdadsgokj8.jpeg', 'fi7-71702047723a6pgqrz7be.jpeg', 'active', 'normal', 'none', '', 'qu9hWrzqfvVGSdyhWhhLhbVtcM49aEu7Vgskbs1H4ksEoM2LeXoZm7MECc7MJEaRx8J8nQROJaK', '', '', '', '', 'no', NULL, '', 'Welcome to my page. If you like my content, please consider support. Thank you for your support!', '', '', '', '', '', NULL, NULL, NULL, NULL, 0.00, 0.00, 'yes', '', '', '', '', '', '', '', '', '', '2023-12-22 11:17:03', 'yes', 'user_7', 'yes', 'yes', 'yes', '', 'yes', '211.216.8.80', 'off', 'female', '11/12/1987', 'no', 'en', 'no', 0.00, '', '', '', '', 0, '', '', 'yes', 'no', 'no', '', 'no', 'no', 'no', 'yes', 'yes', 0, 'yes', 'yes', 'yes', 'yes', 'yes', 'yes', '', '', 'yes', '', '', 'no', 'yes', 'yes', NULL, 0, NULL, '', '', '', '', '', '', 1, '', '', '', 'off', NULL, 1, '', 0, NULL, '', ''),
(8, 'Abdul Qadir', 'abdul8', '165', '', 'abdulqadiry22@gmail.com', '2023-12-12 18:03:33', '1702404213109897305928548923967.jpg', '', 'active', 'normal', 'none', '', 'e4vj9WN5EmKrqCP5ss9cfPROWSoRXV4UHRweidwSGa5cURoXdgbRBJJkyRNc1ShwJnR7Vd50VHZ', '', '', '', '', 'no', NULL, '', 'Welcome to my page. If you like my content, please consider support. Thank you for your support!', '', '109897305928548923967', 'google', '', '', NULL, NULL, NULL, NULL, 0.00, 0.00, 'no', '', '', '', '', '', '', '', '', '', '2023-12-12 18:06:19', 'yes', '', 'yes', 'yes', 'yes', '', 'yes', '39.62.15.165', 'off', '', '', 'no', 'en', 'no', 0.00, '', '', '', '', 0, '', '', 'yes', 'no', 'no', '', 'no', 'no', 'no', 'yes', 'yes', 0, 'yes', 'no', 'yes', 'yes', 'yes', 'yes', '', '', 'yes', '', '', 'no', 'yes', 'yes', NULL, 0, NULL, '', '', '', '', '', '', 1, '', '', '', 'off', NULL, 1, '', 0, NULL, '', ''),
(9, '이종환', '9-mld', '114', '', 'a7124796@gmail.com', '2023-12-14 12:57:12', '1702558632101492154567763949813.jpg', '9-mld-91702558682oobjirteja.jpg', 'active', 'normal', 'none', '', 'aTILcRg2migHNx19WG2uK7RstuY9FmhSOp5SCqa8G8CbE2bR9uDP93XcVHKuGMxkXnAzTPYOrGA', '', '', '', '', 'no', NULL, '', '나의 페이지에 온것을 환영합니다. 내 콘텐츠가 마음에 드신다면 지원을 고려해 보세요. 귀하의 지원에 감사드립니다!', '', '101492154567763949813', 'google', '', '', NULL, NULL, NULL, NULL, 0.00, 0.00, 'yes', '', '', '', '', '', '', '', '', '', '2023-12-14 13:03:16', 'yes', '', 'yes', 'yes', 'yes', '', 'yes', '221.155.251.104', 'off', '', '', 'no', 'ko', 'yes', 940.00, '', '', '', '', 0, '', '', 'yes', 'no', 'no', '', 'no', 'no', 'no', 'yes', 'yes', 0, 'yes', 'no', 'yes', 'yes', 'yes', 'yes', '', '', 'yes', '', '', 'no', 'yes', 'yes', NULL, 0, NULL, '', '', '', '', '', '', 1, '', '', '', 'off', NULL, 1, '', 0, NULL, '', ''),
(10, 'Yamileth', 'yamileth10', '142', '$2y$10$/xbmFkpDAXhYClHnctb0/OARfpk51Udy2xDLB9DtVk4bGPjb92GF2', 'oxjssz.dbtmqcq@tonetics.biz', '2023-12-22 03:14:22', 'default.jpg', '', 'active', 'normal', 'none', '', 'uCNAd14pr3lzONfdf1QhACxL0M54hfCqyynDQykt7fe9Db2xUkHafCYEhRcHiugI8zduiUuI4d3', '', '', '', '', 'no', NULL, '', 'Welcome to my page. If you like my content, please consider support. Thank you for your support!', '', '', '', '', '', NULL, NULL, NULL, NULL, 0.00, 0.00, 'no', '', '', '', '', '', '', '', '', '', NULL, 'yes', '', 'yes', 'yes', 'yes', '', 'yes', '213.232.235.104', 'off', '', '', 'no', 'en', 'no', 0.00, '', '', '', '', 0, '', '', 'yes', 'no', 'no', '', 'no', 'no', 'no', 'yes', 'yes', 0, 'yes', 'no', 'yes', 'yes', 'yes', 'yes', '', '', 'yes', '', '', 'no', 'yes', 'yes', NULL, 0, NULL, '', '', '', '', '', '', 1, '', '', '', 'off', NULL, 1, '', 0, NULL, '', ''),
(11, 'MK Rehman', 'MKR', '165', '', 'mkaleemurrehman553@gmail.com', '2023-12-22 14:47:18', 'mkr-111703256725s1e7qvfvf9.png', 'mkr-111703256924nnovckzkdd.jpg', 'active', 'normal', 'none', '', 'Lx0NSCWztz38YEG9DsCCRCjh94xdKyR5OCkkJ21iO93lXEciRmBJhDNNzLoV91T4LO9kAYYYmsW', '', '', '', '', 'no', NULL, '', 'Welcome to my page. If you like my content, please consider support. Thank you for your support!', 'Banker', '111248510317209569060', 'google', '', '', NULL, NULL, NULL, NULL, 0.00, 0.00, 'no', 'Gulshan e Iqbal', 'Karachi', '75800', '', '', '', '', '', '', '2023-12-22 15:06:30', 'yes', 'user_11', 'yes', 'yes', 'yes', 'MKRehman', 'yes', '202.47.33.15', 'off', 'male', '06/27/1988', 'no', 'en', 'no', 0.00, '', '', '', '', 0, '', '', 'yes', 'no', 'no', '', 'no', 'no', 'no', 'yes', 'yes', 0, 'yes', 'yes', 'yes', 'yes', 'yes', 'yes', '', '', 'yes', '', '', 'no', 'yes', 'yes', NULL, 0, NULL, '', '', '', '', '', '', 1, '', '', '', 'off', NULL, 1, '', 0, NULL, '', ''),
(12, '백승럭', '12-be0', '114', '$2y$10$vfuDpJHmxy/t0Y76cea0wun1VS08OjpqkY4WpUUSzJsDb11CBswJq', 'seoungsuk82@gmail.com', '2024-01-12 13:48:07', 'default.jpg', '', 'active', 'normal', 'none', '', 'c0ybtck1UFWnA3KZHEe7yArhSVNURCUWiqDF3fPedGZ9vll52v02zLpoL75h4gfusCixSGrMbOt', '', '', '', '', 'no', NULL, '', '나의 페이지에 온것을 환영합니다. 내 콘텐츠가 마음에 드신다면 지원을 고려해 보세요. 귀하의 지원에 감사드립니다!', '', '', '', '', '', NULL, NULL, NULL, NULL, 0.00, 0.00, 'yes', '', '', '', '', '', '', '', '', '', '2024-01-23 18:31:19', 'yes', '', 'yes', 'yes', 'yes', '', 'yes', '210.95.148.48', 'off', '', '', 'no', 'ko', 'no', 0.00, '', '', '', '', 0, '', '', 'yes', 'no', 'no', '', 'no', 'no', 'no', 'yes', 'yes', 0, 'yes', 'no', 'yes', 'yes', 'yes', 'yes', '', '', 'yes', '', '', 'no', 'yes', 'yes', NULL, 0, NULL, '', '', '', '', '', '', 1, '', '', '', 'off', NULL, 1, '', 0, NULL, '', ''),
(13, 'Asif Nazir', 'asif13', '165', '', 'asifchattha2015@gmail.com', '2024-01-13 10:17:27', '1705141047111444126560429500489.jpg', '', 'active', 'normal', 'none', '', 'p6AfIMa8ahyOD1RIDWQGb3L4etlAatNwqWhJomXl9RjxJUoR01ytIuXacftZCKlwZV6tLinONE4', '', '', '', '', 'no', NULL, '', 'Welcome to my page. If you like my content, please consider support. Thank you for your support!', '', '111444126560429500489', 'google', '', '', NULL, NULL, NULL, NULL, 0.00, 0.00, 'no', '', '', '', '', '', '', '', '', '', '2024-01-13 10:26:11', 'yes', '', 'yes', 'yes', 'yes', '', 'yes', '123.108.94.224', 'off', '', '', 'no', 'en', 'no', 0.00, '', '', '', '', 0, '', '', 'yes', 'no', 'no', '', 'no', 'no', 'no', 'yes', 'yes', 0, 'yes', 'no', 'yes', 'yes', 'yes', 'yes', '', '', 'yes', '', '', 'no', 'yes', 'yes', NULL, 0, NULL, '', '', '', '', '', '', 1, '', '', '', 'off', NULL, 1, '', 0, NULL, '', ''),
(14, 'Zubiar Ahmad', 'zubiar14', '165', '', 'ahmadzubiar573@gmail.com', '2024-01-14 19:47:12', '1705261632115743107017132088461.jpg', '', 'active', 'normal', 'none', '', 'YEGyvkdBPldfne16HljbdGqD3lj0AH9LfHLzXenNzDxUqdzNnyEtonk4S6SZvAWjI0actkxCMiW', '', '', '', '', 'no', NULL, '', 'Welcome to my page. If you like my content, please consider support. Thank you for your support!', '', '115743107017132088461', 'google', '', '', NULL, NULL, NULL, NULL, 0.00, 0.00, 'no', '', '', '', '', '', '', '', '', '', '2024-01-14 19:47:29', 'yes', '', 'yes', 'yes', 'yes', '', 'yes', '223.123.9.200', 'off', '', '', 'no', 'en', 'no', 0.00, '', '', '', '', 0, '', '', 'yes', 'no', 'no', '', 'no', 'no', 'no', 'yes', 'yes', 0, 'yes', 'no', 'yes', 'yes', 'yes', 'yes', '', '', 'yes', '', '', 'no', 'yes', 'yes', NULL, 0, NULL, '', '', '', '', '', '', 1, '', '', '', 'off', NULL, 1, '', 0, NULL, '', ''),
(15, 'Shakoor Ali', 'shakoor15', '165', '$2y$10$YZzVGrzMQmSp1jAyB882suJ9H4UTL3KzV8h9kQKB786E.IbTNl9te', 'alishakoorsehrosehro@gmail.com', '2024-01-18 05:35:44', 'shakoor15-151705556307hkfhwrqiri.jpg', 'shakoor15-151705556295htmnuhlxbj.jpg', 'active', 'normal', 'none', '3Y4QXXCDSa3kKXXkW082vMkA3hcyFdMetZY0Tx1IFsbGC3AEDhNlkynlODwB', 'yYWW1DBeevTVovNp2I2r1iNm9vnLYScPBbpqBUiHkvkFOUFOGU7yMX3EE3VBGLf5JRfrKdqlhu1', '', '', '', '', 'no', NULL, '', 'Welcome to my page. If you like my content, please consider support. Thank you for your support!', 'Designer', '', '', '', '', NULL, NULL, NULL, NULL, 0.00, 0.00, 'no', '', '', '', '', '', '', '', '', '', '2024-01-18 05:40:44', 'yes', 'user_15', 'yes', 'yes', 'yes', '', 'yes', '119.155.186.18', 'off', '', '01/14/1999', 'no', 'en', 'no', 0.00, '', '', '', '', 0, '', '', 'yes', 'no', 'no', '', 'no', 'no', 'no', 'yes', 'yes', 0, 'yes', 'yes', 'yes', 'yes', 'yes', 'yes', '', '', 'yes', '', '', 'no', 'yes', 'yes', NULL, 0, NULL, '', '', '', '', '', '', 1, '', '', '', 'off', NULL, 1, '', 0, NULL, '', ''),
(16, 'Butchtheorignal', 'butchtheorignal16', '1', '', 'butchtheoriginal@gmail.com', '2024-01-21 06:35:03', '1705818902108193362401345336631.jpg', '', 'active', 'normal', 'none', '', 'rZ92PzzjNHm4zI5mCbFHlWmACoqCKzqzP4Zo2x6aK8lvMMeABlrIArsQuVyAdgkNrdb3g6V0MAx', '', '', '', '', 'no', NULL, '', 'Welcome to my page. If you like my content, please consider support. Thank you for your support!', '', '108193362401345336631', 'google', '', '', NULL, NULL, NULL, NULL, 0.00, 0.00, 'yes', '', '', '', '', '', '', '', '', '', '2024-01-21 06:37:05', 'yes', '', 'yes', 'yes', 'yes', '', 'yes', '172.59.137.30', 'off', '', '', 'no', 'en', 'no', 0.00, '', '', '', '', 0, '', '', 'yes', 'no', 'no', '', 'no', 'no', 'no', 'yes', 'yes', 0, 'yes', 'no', 'yes', 'yes', 'yes', 'yes', '', '', 'yes', '', '', 'no', 'yes', 'yes', NULL, 0, NULL, '', '', '', '', '', '', 1, '', '', '', 'off', NULL, 1, '', 0, NULL, '', ''),
(17, 'Jacob adams', 'jacob17', '1', '$2y$10$J.33O3XhVt5nLzoznTndK.acilrlTSTUb41fy2ltzQUAYAmAgmH5C', 'dev.gamerr@outlook.com', '2024-01-22 02:15:14', 'default.jpg', '', 'active', 'normal', 'none', '', 'fL9gZXOxCbjMYuOzEso9fu8WmYNOoMlwEWRZCqnUKvMZnpO3e6201LBE56jWtrUyK8suWSRAluA', '', '', '', '', 'no', NULL, '', 'Welcome to my page. If you like my content, please consider support. Thank you for your support!', '', '', '', '', '', NULL, NULL, NULL, NULL, 0.00, 0.00, 'yes', '', '', '', '', '', '', '', '', '', '2024-01-22 02:17:52', 'yes', '', 'yes', 'yes', 'yes', '', 'yes', '75.109.45.199', 'off', '', '', 'no', 'en', 'no', 0.00, '', '', '', '', 0, '', '', 'yes', 'no', 'no', '', 'no', 'no', 'no', 'yes', 'yes', 0, 'yes', 'no', 'yes', 'yes', 'yes', 'yes', '', '', 'yes', '', '', 'no', 'yes', 'yes', NULL, 0, NULL, '', '', '', '', '', '', 1, '', '', '', 'off', NULL, 1, '', 0, NULL, '', ''),
(18, 'Vrs Arun', 'vrs18', '99', '', 'arunvsa21@gmail.com', '2024-01-22 02:26:00', '1705890360113875994094710862809.jpg', '', 'active', 'normal', 'none', '', '7Y9YJRF3LF6teow90NvuG5DknjVFcxxNmH2bwoNWhMgl7aCSZJzT2msKxEsQfneVLIQIfNw6swr', '', '', '', '', 'no', NULL, '', 'Welcome to my page. If you like my content, please consider support. Thank you for your support!', '', '113875994094710862809', 'google', '', '', NULL, NULL, NULL, NULL, 0.00, 0.00, 'yes', '', '', '', '', '', '', '', '', '', '2024-01-22 02:27:07', 'yes', '', 'yes', 'yes', 'yes', '', 'yes', '157.49.243.239', 'off', '', '', 'no', 'en', 'no', 0.00, '', '', '', '', 0, '', '', 'yes', 'no', 'no', '', 'no', 'no', 'no', 'yes', 'yes', 0, 'yes', 'no', 'yes', 'yes', 'yes', 'yes', '', '', 'yes', '', '', 'no', 'yes', 'yes', NULL, 0, NULL, '', '', '', '', '', '', 1, '', '', '', 'off', NULL, 1, '', 0, NULL, '', ''),
(19, 'Chacha Diamond', 'chacha19', '159', '', 'chachadiamond20@gmail.com', '2024-01-22 12:38:52', '1705927132117465727108796862745.jpg', '', 'active', 'normal', 'none', '', '7sEuAepKO6bLUI96ujXpSurXiCnGcsp9fiXFo8ov4EE2j1hlvTe7L1QG3LsSrdvOZ2zCtjISqek', '', '', '', '', 'no', NULL, '', 'Welcome to my page. If you like my content, please consider support. Thank you for your support!', '', '117465727108796862745', 'google', '', '', NULL, NULL, NULL, NULL, 0.00, 0.00, 'yes', '', '', '', '', '', '', '', '', '', '2024-01-22 12:51:22', 'yes', '', 'yes', 'yes', 'yes', '', 'yes', '129.205.113.181', 'off', '', '', 'no', 'en', 'no', 0.00, '', '', '', '', 0, '', '', 'yes', 'no', 'no', '', 'no', 'no', 'no', 'yes', 'yes', 0, 'yes', 'no', 'yes', 'yes', 'yes', 'yes', '', '', 'yes', '', '', 'no', 'yes', 'yes', NULL, 0, NULL, '', '', '', '', '', '', 1, '', '', '', 'off', NULL, 1, '', 0, NULL, '', ''),
(20, 'Jennifer Binish', 'jennifer20', '1', '$2y$10$DH8ZZrlvCX4UGXAAu5rCRO6VK56xn3vjencVZ36XLtiwa1isBuu3.', 'jengirl542@gmail.com', '2024-01-22 16:50:07', 'default.jpg', '', 'active', 'normal', 'none', '', 'JO11dvRX35romECwU75vBpJ82ZtvdMKkcmezPkPVLk35sPe7yHGJKaVDqXrKNg8J1IRYtR4WBJZ', '', '', '', '', 'no', NULL, '', 'Welcome to my page. If you like my content, please consider support. Thank you for your support!', '', '', '', '', '', NULL, NULL, NULL, NULL, 0.00, 0.00, 'yes', '', '', '', '', '', '', '', '', '', '2024-01-22 16:50:23', 'yes', '', 'yes', 'yes', 'yes', '', 'yes', '72.129.154.58', 'off', '', '', 'no', 'en', 'no', 0.00, '', '', '', '', 0, '', '', 'yes', 'no', 'no', '', 'no', 'no', 'no', 'yes', 'yes', 0, 'yes', 'no', 'yes', 'yes', 'yes', 'yes', '', '', 'yes', '', '', 'no', 'yes', 'yes', NULL, 0, NULL, '', '', '', '', '', '', 1, '', '', '', 'off', NULL, 1, '', 0, NULL, '', ''),
(21, 'Pinky dom', 'pinky21', '114', '$2y$10$lFEejEQ50MbfbM4WVRkme.Mu/Jrq9wn1AieVxe7Pgwq7JvCsQYvsG', 'zzhz549@gmail.com', '2024-01-27 17:18:17', 'default.jpg', '', 'active', 'normal', 'none', '', '4aY3LwFDjvXtKoNfsr8I2TxypvHQxU28p4qUVZsRaNOIOHv3nGDLMVd5PvO5AzM4WjhcK8MBBXe', '', '', '', '', 'no', NULL, '', 'Welcome to my page. If you like my content, please consider support. Thank you for your support!', '', '', '', '', '', NULL, NULL, NULL, NULL, 0.00, 0.00, 'yes', '', '', '', '', '', '', '', '', '', '2024-01-27 17:20:17', 'yes', '', 'yes', 'yes', 'yes', '', 'yes', '220.117.247.164', 'off', '', '', 'no', 'en', 'no', 0.00, '', '', '', '', 0, '', '', 'yes', 'no', 'no', '', 'no', 'no', 'no', 'yes', 'yes', 0, 'yes', 'no', 'yes', 'yes', 'yes', 'yes', '', '', 'yes', '', '', 'no', 'yes', 'yes', NULL, 0, NULL, '', '', '', '', '', '', 1, '', '', '', 'off', NULL, 1, '', 0, NULL, '', ''),
(22, 'Emmanuel Charles', 'emmanuel22', '159', '$2y$10$4CeOgUrosmiGrEyvIN7eU.N5Bs3DUkP3dxDeIRdj/rHtNdomwbopK', 'charlesofemottoh@gmail.com', '2024-01-30 09:40:35', 'emmanuel22-221706608004kvbrot8s6w.jpg', '', 'active', 'normal', 'none', '', 'DM9WMhtcUOj6Qohl4PvHySRmqVH5THpRn9L24eN0lqFqJ4x8m2xCzuK1ld7Xi3ywh473xYCobmK', '', '', '', '', 'no', NULL, '', 'Welcome to my page. If you like my content, please consider support. Thank you for your support!', '', '', '', '', '', NULL, NULL, NULL, NULL, 0.00, 0.00, 'no', 'Obol lopon', 'Ugep', '', '', '', '', '', '', '', '2024-01-30 10:58:31', 'yes', 'user_22', 'yes', 'yes', 'yes', 'Selar', 'yes', '89.38.227.62', 'off', 'male', '01/02/2005', 'no', 'en', 'no', 0.00, '', '', '', '', 0, '', '', 'yes', 'no', 'no', '', 'no', 'no', 'no', 'yes', 'yes', 0, 'yes', 'yes', 'yes', 'yes', 'yes', 'yes', '', '', 'yes', '', '', 'no', 'yes', 'yes', NULL, 0, NULL, '', '', '', '', '', '', 1, '', '', '', 'off', NULL, 1, '', 0, NULL, '', ''),
(23, 'Hammed ramon', 'hammed23', '159', '$2y$10$3GeQQ10VlOfUvN1TrFUsquLSKKER4DbAYPWUTfx8PeGJLUN7SkL.u', 'arrahmanhammed01@gmail.com', '2024-02-01 08:27:11', 'default.jpg', '', 'active', 'normal', 'none', '', 'LNnkmEjme2e748UmoCi0AsGfMdovRGa5J9E6icxsZ8a8YN16VfxMjm4ZPmC0PA4iLjnAodd5Ftp', '', '', '', '', 'no', NULL, '', 'Welcome to my page. If you like my content, please consider support. Thank you for your support!', '', '', '', '', '', NULL, NULL, NULL, NULL, 0.00, 0.00, 'no', '', '', '', '', '', '', '', '', '', '2024-02-01 09:23:44', 'yes', '', 'yes', 'yes', 'yes', '', 'yes', '197.211.61.143', 'off', '', '', 'no', 'en', 'no', 0.00, '', '', '', '', 0, '', '', 'yes', 'no', 'no', '', 'no', 'no', 'no', 'yes', 'yes', 0, 'yes', 'no', 'yes', 'yes', 'yes', 'yes', '', '', 'yes', '', '', 'no', 'yes', 'yes', NULL, 0, NULL, '', '', '', '', '', '', 1, '', '', '', 'off', NULL, 1, '', 0, NULL, '', ''),
(24, 'Abdul aziz', 'abdul24', '165', '$2y$10$5IrvXHrIFXoAgjR2CUJ7ZeuWeId43OPNj8Mq3Oqz8NfpDRjZkZ/Ci', 'abdulazizq276@gmail.com', '2024-02-05 15:40:04', 'default.jpg', '', 'active', 'normal', 'none', '', 'iFCJjW3TcHwBMo0TCvVpmIXdi1tcNiedd3MaFpfvuyPZX9s5hjC7mW5cdRQL0McsVWej7Y6I1EK', '', '', '', '', 'no', NULL, '', 'Welcome to my page. If you like my content, please consider support. Thank you for your support!', '', '', '', '', '', NULL, NULL, NULL, NULL, 0.00, 0.00, 'no', '', '', '', '', '', '', '', '', '', '2024-02-05 15:45:16', 'yes', '', 'yes', 'yes', 'yes', '', 'yes', '223.123.105.179', 'off', '', '', 'no', 'en', 'no', 0.00, '', '', '', '', 0, '', '', 'yes', 'no', 'no', '', 'no', 'no', 'no', 'yes', 'yes', 0, 'yes', 'no', 'yes', 'yes', 'yes', 'yes', '', '', 'yes', '', '', 'no', 'yes', 'yes', NULL, 0, NULL, '', '', '', '', '', '', 1, '', '', '', 'off', NULL, 1, '', 0, NULL, '', ''),
(25, 'Rafat Khan', 'rafat25', '20', '', 'ragarkhan26@gmail.com', '2024-02-24 17:23:33', '1708795413105571411844147011623.jpg', 'rafat25-251708795997zyoalnpjxg.jpg', 'active', 'normal', 'none', '', 'akvKQ1rflNnVQeCpQuz5StWrhmvXjCOBnDmBrA8ZP76gM4XmMxOke8jWlIrRUGNGmtLvC9oONIM', '', '', '', '', 'no', NULL, '', 'Welcome to my page. If you like my content, please consider support. Thank you for your support!', 'Student', '105571411844147011623', 'google', '', '', NULL, NULL, NULL, NULL, 0.00, 0.00, 'no', 'Village - Katoli , Post Office - Shotokhali , Police Station - Shalikha , District - Magura', 'Magura', '7620', '', '', '', '', '', '', '2024-02-24 17:55:25', 'yes', 'user_25', 'yes', 'yes', 'yes', 'Yo.fan/programer1', 'yes', '119.148.29.254', 'off', 'male', '11/12/2003', 'no', 'en', 'no', 0.00, '', '', '', '', 0, '', '', 'yes', 'no', 'no', '', 'no', 'no', 'no', 'yes', 'yes', 0, 'no', 'yes', 'yes', 'yes', 'yes', 'yes', '', '', 'yes', '', '', 'no', 'yes', 'yes', NULL, 0, NULL, '', '', '', '', '', '', 1, '', '', '', 'off', NULL, 1, '', 0, NULL, '', ''),
(26, 'Brayden', 'brayden26', '142', '$2y$10$LyzoN1YOn27hqmasbXwT6OC3YfC9OZq8fJPE1AiLkCRhTMhpHz/pK', 'qwtmttbqcd.p@sandcress.xyz', '2024-04-20 20:32:19', 'default.jpg', '', 'active', 'normal', 'none', '', 'dzTfytUwJJCR1CnkNr9ijOttAkpHvMyj9qT27LGQ2VBIwYy02E3gfmU2XbBIDZrNARzngV2uvDg', '', '', '', '', 'no', NULL, '', 'Welcome to my page. If you like my content, please consider support. Thank you for your support!', '', '', '', '', '', NULL, NULL, NULL, NULL, 0.00, 0.00, 'no', '', '', '', '', '', '', '', '', '', NULL, 'yes', '', 'yes', 'yes', 'yes', '', 'yes', '37.221.65.103', 'off', '', '', 'no', 'en', 'no', 0.00, '', '', '', '', 0, '', '', 'yes', 'no', 'no', '', 'no', 'no', 'no', 'yes', 'yes', 0, 'yes', 'no', 'yes', 'yes', 'yes', 'yes', '', '', 'yes', '', '', 'no', 'yes', 'yes', NULL, 0, NULL, '', '', '', '', '', '', 1, '', '', '', 'off', NULL, 1, '', 0, NULL, '', ''),
(27, '이철승', '27-bKN', '114', '', 'zkfmxktm01@gmail.com', '2024-05-16 03:27:03', '1715830023102224909726008984288.jpg', '', 'active', 'normal', 'none', '', 'auf9kCoT7PfkxBMRs6JTx3sOVqcWeLt9xQxTPkWKCXDNl2u76S9ALiHlvr3hAxf3tWZwtbbab5Y', '', '', '', '', 'no', NULL, '', '나의 페이지에 온것을 환영합니다. 내 콘텐츠가 마음에 드신다면 지원을 고려해 보세요. 귀하의 지원에 감사드립니다!', '', '102224909726008984288', 'google', '', '', NULL, NULL, NULL, NULL, 0.00, 0.00, 'yes', '', '', '', '', '', '', '', '', '', '2024-05-17 02:18:59', 'yes', '', 'yes', 'yes', 'yes', '', 'yes', '61.75.33.42', 'on', '', '', 'no', 'ko', 'no', 0.00, '', '', '', '', 0, '', '', 'yes', 'no', 'no', '', 'no', 'no', 'no', 'yes', 'yes', 0, 'yes', 'no', 'yes', 'yes', 'yes', 'yes', '', '', 'yes', '', '', 'no', 'yes', 'yes', NULL, 0, NULL, '', '', '', '', '', '', 1, '', '', '', 'off', NULL, 1, '', 0, NULL, '', ''),
(28, 'QgAGHqlMYJRUk', 'qgaghqlmyjruk28', '53', '$2y$10$0Zyecs..MkDBthvG9yzOjeAYyo/L6mzbxu.kGNXx6bo.q/lJ2kdIy', 'horasni1982@gmail.com', '2024-06-02 22:33:55', 'default.jpg', '', 'active', 'normal', 'none', '', 'WZ8ifnku1kaWvqRaRJGlzl2qYTNSrI499ETupt2ngANjlKcMvom55R1v1kcP5KXueFgYcoRidsz', '', '', '', '', 'no', NULL, '', 'Welcome to my page. If you like my content, please consider support. Thank you for your support!', '', '', '', '', '', NULL, NULL, NULL, NULL, 0.00, 0.00, 'no', '', '', '', '', '', '', '', '', '', '2024-06-02 22:34:07', 'yes', '', 'yes', 'yes', 'yes', '', 'yes', '85.114.47.206', 'off', '', '', 'no', 'en', 'no', 0.00, '', '', '', '', 0, '', '', 'yes', 'no', 'no', '', 'no', 'no', 'no', 'yes', 'yes', 0, 'yes', 'no', 'yes', 'yes', 'yes', 'yes', '', '', 'yes', '', '', 'no', 'yes', 'yes', NULL, 0, NULL, '', '', '', '', '', '', 1, '', '', '', 'off', NULL, 1, '', 0, NULL, '', ''),
(29, 'dirKghRHmIXa', 'dirkghrhmixa29', '1', '$2y$10$PNLD7Q0R0ozCwu37N2JzTuwEjD1SXH6GJ3tdMOdgWmC6mjjDVrram', 'harrischristy4282@yahoo.com', '2024-06-06 17:05:41', 'default.jpg', '', 'active', 'normal', 'none', '', 'Vx3V4gpwOO2iDBT0jjBKwEOkRxmF1HcUW1WtsawxpLdp8nsB71zKXaXylb4kUb8YQga4Kz05QpU', '', '', '', '', 'no', NULL, '', 'Welcome to my page. If you like my content, please consider support. Thank you for your support!', '', '', '', '', '', NULL, NULL, NULL, NULL, 0.00, 0.00, 'no', '', '', '', '', '', '', '', '', '', '2024-06-06 17:05:54', 'yes', '', 'yes', 'yes', 'yes', '', 'yes', '45.33.134.4', 'off', '', '', 'no', 'en', 'no', 0.00, '', '', '', '', 0, '', '', 'yes', 'no', 'no', '', 'no', 'no', 'no', 'yes', 'yes', 0, 'yes', 'no', 'yes', 'yes', 'yes', 'yes', '', '', 'yes', '', '', 'no', 'yes', 'yes', NULL, 0, NULL, '', '', '', '', '', '', 1, '', '', '', 'off', NULL, 1, '', 0, NULL, '', ''),
(30, 'sunny', 'sunny30', '38', '$2y$10$cmBb1gJD./gUUMmympYfVe/4iGr3J6EZ5t/KMNLYgbRXYqdGYqNdS', 'sunny@gmail.com', '2024-06-10 02:14:05', 'sunny30-301718007764clmvesmlsj.jpg', 'sunny30-301718007748iyqc0gfiym.jpeg', 'active', 'normal', 'none', '', 'jyP99o8128NvAl0T9KTdktjsGKixr9v9g8ueyL4NGll5tYtsLFMBuVqBmZWMGApE4twMQ74TCiS', '', '', '', '', 'no', NULL, '', 'Welcome to my page. If you like my content, please consider support. Thank you for your support!', 'dd32e2w', '', '', '', '', NULL, NULL, NULL, NULL, 0.00, 0.00, 'yes', 'eeds', 'edse', '1212', '', '', '', '', '', '', '2024-06-10 02:57:04', 'yes', 'user_30', 'yes', 'yes', 'yes', 'dd', 'yes', '127.0.0.1', 'on', 'female', '06/05/2006', 'no', 'en', 'no', 0.00, '', '', '', '', 0, '', '', 'yes', 'no', 'no', '', 'no', 'no', 'no', 'yes', 'yes', 0, 'yes', 'yes', 'yes', 'yes', 'yes', 'yes', '', '', 'yes', '', '', 'no', 'yes', 'yes', NULL, 0, NULL, '', '', '', '', '', '', 1, '', '', '', 'off', NULL, 1, '', 0, NULL, '', ''),
(31, 'danial', 'danial31', '99', '$2y$10$p/iCTeOVq9qTbUPkARRIluojXKaYlMAuIyX8J7PmLJ.K8h6J0Wbd.', 'danial@gmail.com', '2024-06-10 03:34:26', 'danial31-311718012440juz1fsphhg.jpeg', 'danial31-3117180124063bljjlya1z.png', 'active', 'normal', 'none', '', '8eCO6uLSNf41qnIFLAB28YY7ZEDkFtwo9P374D0mgRn21CocvRi8eW9IhjoQFo3jBVR8SGEzXro', '', '', '', '', 'no', NULL, '', 'Welcome to my page. If you like my content, please consider support. Thank you for your support!', 'video maker', '', '', '5,1', '', NULL, NULL, NULL, NULL, 0.00, 0.00, 'yes', 'kolikata', 'harbal', '322', '', '', '', '', '', '', '2024-06-10 08:45:32', 'yes', 'user_31', 'yes', 'yes', 'yes', 'doenst not', 'yes', '127.0.0.1', 'on', 'female', '05/29/2006', 'no', 'en', 'no', 0.00, '', '', '', '', 0, '', '', 'yes', 'no', 'no', '', 'no', 'no', 'no', 'yes', 'yes', 0, 'yes', 'yes', 'yes', 'yes', 'yes', 'yes', '', '', 'yes', '', '', 'no', 'yes', 'yes', NULL, 0, NULL, '', '', '', '', '', '', 1, '', '', '', 'off', NULL, 1, '', 0, NULL, '', '');

-- --------------------------------------------------------

--
-- Table structure for table `user_devices`
--

CREATE TABLE `user_devices` (
  `id` bigint UNSIGNED NOT NULL,
  `user_id` bigint UNSIGNED NOT NULL,
  `player_id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `device_type` char(5) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `user_devices`
--

INSERT INTO `user_devices` (`id`, `user_id`, `player_id`, `device_type`, `created_at`, `updated_at`) VALUES
(14, 1, 'dc1ceda6-322d-4b8e-85ba-c04140a8a060', '5', '2023-12-11 12:44:48', '2023-12-11 12:44:48'),
(25, 1, '83f857c7-1b9d-42dc-a35a-66c0918ec793', '5', '2023-12-14 13:25:26', '2023-12-14 13:25:26'),
(31, 13, '7a8db6e6-7b9b-47c9-9ec5-2036d8acf9a8', '5', '2024-01-13 10:21:56', '2024-01-13 10:21:56'),
(32, 15, '09e63074-3e07-475a-8e9a-36445eaa2c34', '5', '2024-01-18 05:36:06', '2024-01-18 05:36:06'),
(38, 18, '0f272819-778b-4e9c-8841-674ae66f1596', '5', '2024-01-22 02:27:09', '2024-01-22 02:27:09'),
(43, 23, '64995df6-e356-49c5-8992-7c2199946e9b', '5', '2024-02-01 08:28:49', '2024-02-01 08:28:49'),
(47, 1, '67c5db45-1d72-4a92-89ab-d01583d2d335', '5', '2024-05-21 11:05:08', '2024-05-21 11:05:08');

-- --------------------------------------------------------

--
-- Table structure for table `verification_requests`
--

CREATE TABLE `verification_requests` (
  `id` int UNSIGNED NOT NULL,
  `user_id` int UNSIGNED NOT NULL,
  `address` varchar(200) NOT NULL,
  `city` varchar(150) NOT NULL,
  `zip` varchar(50) NOT NULL,
  `image` varchar(100) NOT NULL,
  `image_reverse` varchar(100) DEFAULT NULL,
  `image_selfie` varchar(100) DEFAULT NULL,
  `status` enum('pending','approved') NOT NULL DEFAULT 'pending',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `form_w9` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

--
-- Dumping data for table `verification_requests`
--

INSERT INTO `verification_requests` (`id`, `user_id`, `address`, `city`, `zip`, `image`, `image_reverse`, `image_selfie`, `status`, `created_at`, `form_w9`) VALUES
(1, 30, 'eeds', 'edse', '1212', '301718007807ohw5ebqwyorrluekxxewbu8badputc0ums3wclwr.png', 'reverse-301718007809qophqucxlddfwvezbp6rftxatoblhafinxhs4hfi.png', 'selfie-301718007809ue5eg2oe7stgbmuxrtaygeelpnxcadp5jhyl55pk.png', 'approved', '2024-06-10 02:23:29', ''),
(2, 31, 'kolikata', 'harbal', '322', '311718012474rf8omh1tp6antsuzifgct2rijixownn845phvyit.png', 'reverse-311718012476ai4zlityk0p9jpnnnleeu7ohima7vsbmgpcgfubw.png', 'selfie-311718012477k8umhr4atl36z6wch3rikxyf9vhrnorszhudnpml.png', 'approved', '2024-06-10 03:41:18', '');

-- --------------------------------------------------------

--
-- Table structure for table `video_views`
--

CREATE TABLE `video_views` (
  `id` bigint UNSIGNED NOT NULL,
  `user_id` bigint UNSIGNED NOT NULL,
  `updates_id` bigint UNSIGNED NOT NULL,
  `ip` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `video_views`
--

INSERT INTO `video_views` (`id`, `user_id`, `updates_id`, `ip`, `created_at`, `updated_at`) VALUES
(1, 1, 3, '221.155.251.104', '2023-12-14 13:09:20', '2023-12-14 13:09:20'),
(2, 7, 5, '211.216.8.80', '2023-12-22 11:15:09', '2023-12-22 11:15:09'),
(3, 0, 5, '202.47.33.15', '2023-12-22 14:46:33', '2023-12-22 14:46:33'),
(4, 15, 3, '119.155.186.18', '2024-01-18 05:39:45', '2024-01-18 05:39:45'),
(5, 17, 3, '75.109.45.199', '2024-01-22 02:15:30', '2024-01-22 02:15:30'),
(6, 22, 3, '89.38.227.62', '2024-01-30 09:52:28', '2024-01-30 09:52:28');

-- --------------------------------------------------------

--
-- Table structure for table `withdrawals`
--

CREATE TABLE `withdrawals` (
  `id` int UNSIGNED NOT NULL,
  `user_id` int UNSIGNED NOT NULL,
  `status` enum('pending','paid') NOT NULL DEFAULT 'pending',
  `amount` varchar(50) NOT NULL,
  `date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `gateway` varchar(100) NOT NULL,
  `account` text NOT NULL,
  `estimated_payment` timestamp NULL DEFAULT NULL,
  `date_paid` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `txn_id` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin_settings`
--
ALTER TABLE `admin_settings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `advertisings`
--
ALTER TABLE `advertisings`
  ADD PRIMARY KEY (`id`),
  ADD KEY `clicks` (`clicks`),
  ADD KEY `impressions` (`impressions`),
  ADD KEY `expired_at` (`expired_at`);

--
-- Indexes for table `ad_click_impressions`
--
ALTER TABLE `ad_click_impressions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `advertisings_id` (`advertisings_id`),
  ADD KEY `type` (`type`),
  ADD KEY `ip` (`ip`);

--
-- Indexes for table `blogs`
--
ALTER TABLE `blogs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `tags` (`tags`),
  ADD KEY `slug` (`slug`);

--
-- Indexes for table `bookmarks`
--
ALTER TABLE `bookmarks`
  ADD PRIMARY KEY (`id`),
  ADD KEY `bookmarks_user_id_index` (`user_id`),
  ADD KEY `bookmarks_updates_id_index` (`updates_id`);

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`),
  ADD KEY `slug` (`slug`);

--
-- Indexes for table `comments`
--
ALTER TABLE `comments`
  ADD PRIMARY KEY (`id`),
  ADD KEY `post` (`updates_id`,`user_id`,`status`);

--
-- Indexes for table `comments_likes`
--
ALTER TABLE `comments_likes`
  ADD PRIMARY KEY (`id`),
  ADD KEY `comments_likes_user_id_index` (`user_id`),
  ADD KEY `comments_likes_comments_id_index` (`comments_id`),
  ADD KEY `comments_likes_replies_id_index` (`replies_id`);

--
-- Indexes for table `conversations`
--
ALTER TABLE `conversations`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_1` (`user_1`,`user_2`);

--
-- Indexes for table `countries`
--
ALTER TABLE `countries`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `deposits`
--
ALTER TABLE `deposits`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `jobs`
--
ALTER TABLE `jobs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `jobs_queue_index` (`queue`);

--
-- Indexes for table `languages`
--
ALTER TABLE `languages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `likes`
--
ALTER TABLE `likes`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_usr` (`user_id`,`updates_id`,`status`);

--
-- Indexes for table `live_comments`
--
ALTER TABLE `live_comments`
  ADD PRIMARY KEY (`id`),
  ADD KEY `live_comments_user_id_index` (`user_id`),
  ADD KEY `live_comments_live_streamings_id_index` (`live_streamings_id`),
  ADD KEY `gift_id` (`gift_id`);

--
-- Indexes for table `live_likes`
--
ALTER TABLE `live_likes`
  ADD PRIMARY KEY (`id`),
  ADD KEY `live_likes_user_id_index` (`user_id`),
  ADD KEY `live_likes_live_streamings_id_index` (`live_streamings_id`);

--
-- Indexes for table `live_online_users`
--
ALTER TABLE `live_online_users`
  ADD PRIMARY KEY (`id`),
  ADD KEY `live_online_users_user_id_index` (`user_id`),
  ADD KEY `live_online_users_live_streamings_id_index` (`live_streamings_id`);

--
-- Indexes for table `live_streamings`
--
ALTER TABLE `live_streamings`
  ADD PRIMARY KEY (`id`),
  ADD KEY `live_streamings_user_id_index` (`user_id`),
  ADD KEY `type` (`type`),
  ADD KEY `buyer_id` (`buyer_id`),
  ADD KEY `minutes` (`minutes`),
  ADD KEY `joined_at` (`joined_at`),
  ADD KEY `token` (`token`),
  ADD KEY `updated_at` (`updated_at`);

--
-- Indexes for table `live_streaming_private_requests`
--
ALTER TABLE `live_streaming_private_requests`
  ADD PRIMARY KEY (`id`),
  ADD KEY `transaction_id` (`transaction_id`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `creator_id` (`creator_id`),
  ADD KEY `minutes` (`minutes`);

--
-- Indexes for table `login_sessions`
--
ALTER TABLE `login_sessions`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `media`
--
ALTER TABLE `media`
  ADD PRIMARY KEY (`id`),
  ADD KEY `media_updates_id_index` (`updates_id`),
  ADD KEY `media_user_id_index` (`user_id`),
  ADD KEY `media_type_index` (`type`),
  ADD KEY `media_token_index` (`token`),
  ADD KEY `media_encoded_index` (`encoded`),
  ADD KEY `job_id` (`job_id`);

--
-- Indexes for table `media_messages`
--
ALTER TABLE `media_messages`
  ADD PRIMARY KEY (`id`),
  ADD KEY `media_messages_messages_id_index` (`messages_id`),
  ADD KEY `media_messages_type_index` (`type`),
  ADD KEY `media_messages_token_index` (`token`),
  ADD KEY `media_messages_encoded_index` (`encoded`),
  ADD KEY `job_id` (`job_id`);

--
-- Indexes for table `media_products`
--
ALTER TABLE `media_products`
  ADD PRIMARY KEY (`id`),
  ADD KEY `media_products_products_id_index` (`products_id`);

--
-- Indexes for table `media_stories`
--
ALTER TABLE `media_stories`
  ADD PRIMARY KEY (`id`),
  ADD KEY `media_stories_stories_id_index` (`stories_id`),
  ADD KEY `media_stories_name_index` (`name`),
  ADD KEY `media_stories_type_index` (`type`),
  ADD KEY `job_id` (`job_id`);

--
-- Indexes for table `media_welcome_messages`
--
ALTER TABLE `media_welcome_messages`
  ADD PRIMARY KEY (`id`),
  ADD KEY `media_welcome_messages_creator_id_index` (`creator_id`),
  ADD KEY `media_welcome_messages_type_index` (`type`),
  ADD KEY `media_welcome_messages_encoded_index` (`encoded`),
  ADD KEY `media_welcome_messages_token_index` (`token`),
  ADD KEY `job_id` (`job_id`);

--
-- Indexes for table `messages`
--
ALTER TABLE `messages`
  ADD PRIMARY KEY (`id`),
  ADD KEY `remove_from` (`remove_from`),
  ADD KEY `conversation_id` (`conversations_id`),
  ADD KEY `from_user_id` (`from_user_id`),
  ADD KEY `to_user_id` (`to_user_id`),
  ADD KEY `status` (`status`),
  ADD KEY `mode` (`mode`),
  ADD KEY `gift_id` (`gift_id`);

--
-- Indexes for table `notifications`
--
ALTER TABLE `notifications`
  ADD PRIMARY KEY (`id`),
  ADD KEY `destination` (`destination`),
  ADD KEY `author` (`author`),
  ADD KEY `target` (`target`),
  ADD KEY `status` (`status`);

--
-- Indexes for table `pages`
--
ALTER TABLE `pages`
  ADD PRIMARY KEY (`id`),
  ADD KEY `slug` (`slug`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_hash` (`token`),
  ADD KEY `email` (`email`);

--
-- Indexes for table `payment_gateways`
--
ALTER TABLE `payment_gateways`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pay_per_views`
--
ALTER TABLE `pay_per_views`
  ADD PRIMARY KEY (`id`),
  ADD KEY `pay_per_views_user_id_index` (`user_id`),
  ADD KEY `pay_per_views_updates_id_index` (`updates_id`),
  ADD KEY `pay_per_views_messages_id_index` (`messages_id`);

--
-- Indexes for table `plans`
--
ALTER TABLE `plans`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `plans_name_unique` (`name`),
  ADD KEY `plans_user_id_index` (`user_id`),
  ADD KEY `plans_paystack_index` (`paystack`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`),
  ADD KEY `products_user_id_index` (`user_id`);

--
-- Indexes for table `purchases`
--
ALTER TABLE `purchases`
  ADD PRIMARY KEY (`id`),
  ADD KEY `purchases_transactions_id_index` (`transactions_id`),
  ADD KEY `purchases_user_id_index` (`user_id`),
  ADD KEY `purchases_products_id_index` (`products_id`),
  ADD KEY `expired_at` (`expired_at`);

--
-- Indexes for table `referrals`
--
ALTER TABLE `referrals`
  ADD PRIMARY KEY (`id`),
  ADD KEY `referrals_user_id_index` (`user_id`),
  ADD KEY `referrals_referred_by_index` (`referred_by`);

--
-- Indexes for table `referral_transactions`
--
ALTER TABLE `referral_transactions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `referral_transactions_referrals_id_index` (`referrals_id`),
  ADD KEY `referral_transactions_user_id_index` (`user_id`),
  ADD KEY `referral_transactions_referred_by_index` (`referred_by`),
  ADD KEY `referral_transactions_transactions_id_index` (`transactions_id`);

--
-- Indexes for table `replies`
--
ALTER TABLE `replies`
  ADD PRIMARY KEY (`id`),
  ADD KEY `replies_user_id_index` (`user_id`),
  ADD KEY `replies_updates_id_index` (`updates_id`),
  ADD KEY `replies_comments_id_index` (`comments_id`);

--
-- Indexes for table `reports`
--
ALTER TABLE `reports`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user` (`user_id`,`report_id`);

--
-- Indexes for table `reserved`
--
ALTER TABLE `reserved`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `name` (`name`) USING BTREE;

--
-- Indexes for table `restrictions`
--
ALTER TABLE `restrictions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `restrictions_user_id_index` (`user_id`),
  ADD KEY `restrictions_user_restricted_index` (`user_restricted`);

--
-- Indexes for table `sessions`
--
ALTER TABLE `sessions`
  ADD UNIQUE KEY `sessions_id_unique` (`id`);

--
-- Indexes for table `shop_categories`
--
ALTER TABLE `shop_categories`
  ADD PRIMARY KEY (`id`),
  ADD KEY `shop_categories_slug_index` (`slug`);

--
-- Indexes for table `states`
--
ALTER TABLE `states`
  ADD PRIMARY KEY (`id`),
  ADD KEY `states_countries_id_index` (`countries_id`),
  ADD KEY `name` (`name`),
  ADD KEY `code` (`code`);

--
-- Indexes for table `stories`
--
ALTER TABLE `stories`
  ADD PRIMARY KEY (`id`),
  ADD KEY `stories_user_id_index` (`user_id`),
  ADD KEY `stories_status_index` (`status`);

--
-- Indexes for table `story_backgrounds`
--
ALTER TABLE `story_backgrounds`
  ADD PRIMARY KEY (`id`),
  ADD KEY `story_backgrounds_name_index` (`name`);

--
-- Indexes for table `story_fonts`
--
ALTER TABLE `story_fonts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `story_views`
--
ALTER TABLE `story_views`
  ADD PRIMARY KEY (`id`),
  ADD KEY `story_views_user_id_index` (`user_id`),
  ADD KEY `story_views_media_stories_id_index` (`media_stories_id`);

--
-- Indexes for table `stripe_state_tokens`
--
ALTER TABLE `stripe_state_tokens`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `subscriptions`
--
ALTER TABLE `subscriptions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `last_payment` (`last_payment`(191)),
  ADD KEY `payment_id` (`payment_id`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `stripe_status` (`stripe_status`),
  ADD KEY `stripe_id` (`stripe_id`),
  ADD KEY `stripe_price` (`stripe_price`),
  ADD KEY `free` (`free`),
  ADD KEY `creator_id` (`creator_id`),
  ADD KEY `rebill_wallet` (`rebill_wallet`),
  ADD KEY `cancelled` (`cancelled`);

--
-- Indexes for table `subscription_deleteds`
--
ALTER TABLE `subscription_deleteds`
  ADD PRIMARY KEY (`id`),
  ADD KEY `subscription_deleteds_creator_id_index` (`creator_id`),
  ADD KEY `subscription_deleteds_user_id_index` (`user_id`);

--
-- Indexes for table `subscription_items`
--
ALTER TABLE `subscription_items`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `subscription_id` (`subscription_id`);

--
-- Indexes for table `tax_rates`
--
ALTER TABLE `tax_rates`
  ADD PRIMARY KEY (`id`),
  ADD KEY `name` (`name`),
  ADD KEY `type` (`type`);

--
-- Indexes for table `transactions`
--
ALTER TABLE `transactions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `subscriber` (`subscriptions_id`),
  ADD KEY `subscribed` (`subscribed`),
  ADD KEY `earning_net_user` (`earning_net_user`),
  ADD KEY `earning_net_admin` (`earning_net_admin`),
  ADD KEY `created_at` (`created_at`),
  ADD KEY `amount` (`amount`),
  ADD KEY `approved` (`approved`),
  ADD KEY `gift_id` (`gift_id`);

--
-- Indexes for table `two_factor_codes`
--
ALTER TABLE `two_factor_codes`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `updates`
--
ALTER TABLE `updates`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `token_id` (`token_id`),
  ADD KEY `video_views` (`video_views`),
  ADD KEY `status` (`status`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `can_media_edit` (`can_media_edit`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `email` (`email`),
  ADD KEY `role` (`role`),
  ADD KEY `permission` (`permission`),
  ADD KEY `categories_id` (`categories_id`),
  ADD KEY `stripe_id` (`stripe_id`(191)),
  ADD KEY `users_blocked_countries_index` (`blocked_countries`(1024)),
  ADD KEY `username` (`username`),
  ADD KEY `status` (`status`),
  ADD KEY `permissions` (`permissions`(1024)),
  ADD KEY `countries_id` (`countries_id`);

--
-- Indexes for table `user_devices`
--
ALTER TABLE `user_devices`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `user_devices_player_id_unique` (`player_id`);

--
-- Indexes for table `verification_requests`
--
ALTER TABLE `verification_requests`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_id` (`user_id`);

--
-- Indexes for table `video_views`
--
ALTER TABLE `video_views`
  ADD PRIMARY KEY (`id`),
  ADD KEY `video_views_user_id_index` (`user_id`),
  ADD KEY `video_views_updates_id_index` (`updates_id`),
  ADD KEY `video_views_ip_index` (`ip`);

--
-- Indexes for table `withdrawals`
--
ALTER TABLE `withdrawals`
  ADD PRIMARY KEY (`id`),
  ADD KEY `campaings_id` (`user_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin_settings`
--
ALTER TABLE `admin_settings`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `advertisings`
--
ALTER TABLE `advertisings`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `ad_click_impressions`
--
ALTER TABLE `ad_click_impressions`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=665;

--
-- AUTO_INCREMENT for table `blogs`
--
ALTER TABLE `blogs`
  MODIFY `id` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `bookmarks`
--
ALTER TABLE `bookmarks`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `comments`
--
ALTER TABLE `comments`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `comments_likes`
--
ALTER TABLE `comments_likes`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `conversations`
--
ALTER TABLE `conversations`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `countries`
--
ALTER TABLE `countries`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=243;

--
-- AUTO_INCREMENT for table `deposits`
--
ALTER TABLE `deposits`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `jobs`
--
ALTER TABLE `jobs`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=235649;

--
-- AUTO_INCREMENT for table `languages`
--
ALTER TABLE `languages`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `likes`
--
ALTER TABLE `likes`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `live_comments`
--
ALTER TABLE `live_comments`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `live_likes`
--
ALTER TABLE `live_likes`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `live_online_users`
--
ALTER TABLE `live_online_users`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `live_streamings`
--
ALTER TABLE `live_streamings`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `live_streaming_private_requests`
--
ALTER TABLE `live_streaming_private_requests`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `login_sessions`
--
ALTER TABLE `login_sessions`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=41;

--
-- AUTO_INCREMENT for table `media`
--
ALTER TABLE `media`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `media_messages`
--
ALTER TABLE `media_messages`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `media_products`
--
ALTER TABLE `media_products`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `media_stories`
--
ALTER TABLE `media_stories`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `media_welcome_messages`
--
ALTER TABLE `media_welcome_messages`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `messages`
--
ALTER TABLE `messages`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `notifications`
--
ALTER TABLE `notifications`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `pages`
--
ALTER TABLE `pages`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `password_resets`
--
ALTER TABLE `password_resets`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `payment_gateways`
--
ALTER TABLE `payment_gateways`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `pay_per_views`
--
ALTER TABLE `pay_per_views`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `plans`
--
ALTER TABLE `plans`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `purchases`
--
ALTER TABLE `purchases`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `referrals`
--
ALTER TABLE `referrals`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `referral_transactions`
--
ALTER TABLE `referral_transactions`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `replies`
--
ALTER TABLE `replies`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `reports`
--
ALTER TABLE `reports`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `reserved`
--
ALTER TABLE `reserved`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=54;

--
-- AUTO_INCREMENT for table `restrictions`
--
ALTER TABLE `restrictions`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `shop_categories`
--
ALTER TABLE `shop_categories`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `states`
--
ALTER TABLE `states`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `stories`
--
ALTER TABLE `stories`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `story_backgrounds`
--
ALTER TABLE `story_backgrounds`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `story_fonts`
--
ALTER TABLE `story_fonts`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `story_views`
--
ALTER TABLE `story_views`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `stripe_state_tokens`
--
ALTER TABLE `stripe_state_tokens`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `subscriptions`
--
ALTER TABLE `subscriptions`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `subscription_deleteds`
--
ALTER TABLE `subscription_deleteds`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `subscription_items`
--
ALTER TABLE `subscription_items`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tax_rates`
--
ALTER TABLE `tax_rates`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `transactions`
--
ALTER TABLE `transactions`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `two_factor_codes`
--
ALTER TABLE `two_factor_codes`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `updates`
--
ALTER TABLE `updates`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=32;

--
-- AUTO_INCREMENT for table `user_devices`
--
ALTER TABLE `user_devices`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=48;

--
-- AUTO_INCREMENT for table `verification_requests`
--
ALTER TABLE `verification_requests`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `video_views`
--
ALTER TABLE `video_views`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `withdrawals`
--
ALTER TABLE `withdrawals`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
