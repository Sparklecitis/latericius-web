-- phpMyAdmin SQL Dump
-- version 4.7.7
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Aug 26, 2018 at 11:18 AM
-- Server version: 10.1.31-MariaDB-cll-lve
-- PHP Version: 5.6.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `richggby_temp`
--

-- --------------------------------------------------------

--
-- Table structure for table `ec_anti_email_spam`
--

CREATE TABLE `ec_anti_email_spam` (
  `ID` int(11) NOT NULL,
  `USER_ID` int(11) NOT NULL,
  `TIME` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `ec_anti_horde`
--

CREATE TABLE `ec_anti_horde` (
  `ID` int(11) NOT NULL,
  `ITEM_ID` int(11) NOT NULL,
  `USER_ID` int(11) NOT NULL,
  `LIMIT_Q` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `ec_avatar`
--

CREATE TABLE `ec_avatar` (
  `USER_ID` int(11) NOT NULL,
  `BODY_ITEM_ID` int(11) NOT NULL,
  `FACE_ITEM_ID` int(11) NOT NULL,
  `HEAD_ITEM_ID` int(11) NOT NULL,
  `TOOL_ITEM_ID` int(11) NOT NULL,
  `MASK_ITEM_ID` int(11) NOT NULL DEFAULT '-1',
  `EYES_ITEM_ID` int(11) NOT NULL DEFAULT '0',
  `HAIR_ITEM_ID` int(11) NOT NULL DEFAULT '0',
  `HEAD_2_ITEM_ID` int(11) NOT NULL DEFAULT '0',
  `SHIRT_ITEM_ID` int(11) NOT NULL DEFAULT '0',
  `TROU_ITEM_ID` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `ec_ban_logs`
--

CREATE TABLE `ec_ban_logs` (
  `ID` int(11) NOT NULL,
  `MOD_ID` int(11) NOT NULL,
  `USER_ID` int(11) NOT NULL,
  `LENGTH` int(10) NOT NULL,
  `REASON` varchar(999) NOT NULL,
  `START_TIME` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `ec_crate`
--

CREATE TABLE `ec_crate` (
  `ID` int(11) NOT NULL,
  `ITEM_ID` int(11) NOT NULL,
  `USER_ID` int(11) NOT NULL,
  `SERIAL` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `ec_forums`
--

CREATE TABLE `ec_forums` (
  `ID` int(11) NOT NULL,
  `NAME` varchar(255) NOT NULL,
  `DESCRIPTION` varchar(999) NOT NULL,
  `THREADS` int(11) NOT NULL,
  `POSTS` int(11) NOT NULL,
  `LAST_USER` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `ec_forum_posts`
--

CREATE TABLE `ec_forum_posts` (
  `ID` int(11) NOT NULL,
  `BODY` varchar(2000) NOT NULL,
  `TABLE_ID` int(11) NOT NULL,
  `THREAD_ID` int(11) NOT NULL,
  `USER_ID` int(11) NOT NULL,
  `TIME` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `ec_forum_threads`
--

CREATE TABLE `ec_forum_threads` (
  `ID` int(11) NOT NULL,
  `TITLE` varchar(30) NOT NULL DEFAULT 'NONE',
  `BODY` varchar(2000) NOT NULL DEFAULT 'NONE',
  `USER_ID` int(11) NOT NULL,
  `LOCKED` enum('YES','NO') NOT NULL DEFAULT 'NO',
  `PINNED` enum('YES','NO') NOT NULL DEFAULT 'NO',
  `TABLE_ID` int(11) NOT NULL,
  `TIME` int(11) NOT NULL,
  `LAST_TIME` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `ec_friends`
--

CREATE TABLE `ec_friends` (
  `ID` int(11) NOT NULL,
  `SENDER_ID` int(11) NOT NULL,
  `RECEIVE_ID` int(11) NOT NULL,
  `PENDING` enum('YES','NO') NOT NULL,
  `ACCEPTED` enum('YES','NO') NOT NULL,
  `DECLINED` enum('YES','NO') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `ec_items`
--

CREATE TABLE `ec_items` (
  `ID` int(11) NOT NULL,
  `NAME` varchar(75) NOT NULL DEFAULT 'HAT.NAME.NEW',
  `DESCRIPTION` varchar(1000) NOT NULL DEFAULT 'HAT.DESCRIPTION.NEW',
  `GOLD_PRICE` int(11) NOT NULL,
  `SILVER_PRICE` int(11) NOT NULL,
  `OFFSALE` enum('YES','NO') NOT NULL DEFAULT 'NO',
  `PREVIEW_IMG_URL` varchar(1000) NOT NULL DEFAULT '../EpicClubRebootMisc/IMGS/MAIN/Hat_Error.png',
  `AVATAR_IMG_URL` varchar(1000) NOT NULL DEFAULT '../EpicClubRebootMisc/IMGS/MAIN/Template_Blank.png',
  `RARE` enum('YES','NO') NOT NULL DEFAULT 'NO',
  `STOCK` int(11) NOT NULL DEFAULT '-1',
  `ORIGINAL_STOCK` int(11) NOT NULL DEFAULT '-1',
  `SALES` int(11) NOT NULL,
  `TIME` int(11) NOT NULL DEFAULT '1500000000',
  `LAYER` enum('BODY','FACE','HEAD','TOOL','MASK','EYES','HAIR','HEAD_2','SHIRT','TROU') NOT NULL DEFAULT 'HEAD'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `ec_item_comments`
--

CREATE TABLE `ec_item_comments` (
  `ID` int(11) NOT NULL,
  `ITEM_ID` int(11) NOT NULL,
  `USER_ID` int(11) NOT NULL,
  `COMMENT` varchar(255) NOT NULL,
  `TIME` int(11) NOT NULL,
  `LIKES` int(11) NOT NULL DEFAULT '0',
  `DISLIKES` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `ec_membership`
--

CREATE TABLE `ec_membership` (
  `ID` int(11) NOT NULL,
  `USER_ID` int(11) NOT NULL,
  `START_TIME` int(11) NOT NULL,
  `END_TIME` int(11) NOT NULL,
  `ACTIVE` enum('YES','NO') NOT NULL,
  `TYPE` enum('VIP','MEGA_VIP') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `ec_messages`
--

CREATE TABLE `ec_messages` (
  `ID` int(11) NOT NULL,
  `SENDER_ID` int(11) NOT NULL,
  `RECEIVE_ID` int(11) NOT NULL,
  `TITLE` varchar(30) NOT NULL,
  `BODY` varchar(2000) NOT NULL,
  `PAST_TEXT` varchar(8000) NOT NULL,
  `TIME` int(11) NOT NULL,
  `SEEN` enum('YES','NO') NOT NULL DEFAULT 'NO'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `ec_mod_logs`
--

CREATE TABLE `ec_mod_logs` (
  `ID` int(11) NOT NULL,
  `MOD_ID` int(11) NOT NULL,
  `USER_ID` int(11) NOT NULL,
  `ACTION` varchar(255) NOT NULL,
  `TIME` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `ec_mod_uploads`
--

CREATE TABLE `ec_mod_uploads` (
  `ID` int(11) NOT NULL,
  `AVATAR_IMG_URL` varchar(255) NOT NULL,
  `PREVIEW_IMG_URL` varchar(255) NOT NULL,
  `PENDING` enum('YES','NO') NOT NULL,
  `USER_ID` int(11) NOT NULL,
  `RARE` enum('YES','NO') NOT NULL,
  `STOCK` int(11) NOT NULL,
  `GOLD_PRICE` int(11) NOT NULL,
  `SILVER_PRICE` int(11) NOT NULL,
  `NAME` varchar(255) NOT NULL,
  `DESCRIPTION` varchar(100) NOT NULL,
  `TIME` int(11) NOT NULL,
  `LAYER` enum('BODY','FACE','MASK','HEAD','TOOL','HAIR','EYES','SHIRT','TROU','HEAD_2') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `ec_recent_events`
--

CREATE TABLE `ec_recent_events` (
  `ID` int(11) NOT NULL,
  `USER_ID` int(11) NOT NULL,
  `STATUS` varchar(255) NOT NULL,
  `TIME` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `ec_reports`
--

CREATE TABLE `ec_reports` (
  `ID` int(11) NOT NULL,
  `REPORTER_ID` int(11) NOT NULL,
  `REASON` varchar(500) NOT NULL,
  `VICTIM_ID` varchar(65) NOT NULL,
  `SEEN` enum('YES','NO') NOT NULL,
  `TIME` int(11) NOT NULL,
  `MOD_SEEN_ID` int(11) NOT NULL,
  `MOD_NOTE` varchar(500) NOT NULL DEFAULT 'no action',
  `TYPE` enum('FORUM','USER') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `ec_reselling`
--

CREATE TABLE `ec_reselling` (
  `ID` int(11) NOT NULL,
  `USER_ID` int(11) NOT NULL,
  `ITEM_ID` int(11) NOT NULL,
  `SERIAL` int(11) NOT NULL,
  `PRICE` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `ec_trades`
--

CREATE TABLE `ec_trades` (
  `ID` int(11) NOT NULL,
  `TRADE_INFO` varchar(2000) NOT NULL,
  `SENDER_ID` int(11) NOT NULL,
  `RECEIVER_ID` int(11) NOT NULL,
  `STATUS` enum('PENDING','ACCEPTED','DECLINED') NOT NULL DEFAULT 'PENDING',
  `MONEY_SENDING` int(11) NOT NULL,
  `MONEY_REQUEST` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `ec_users`
--

CREATE TABLE `ec_users` (
  `ID` int(11) NOT NULL,
  `USERNAME` varchar(20) NOT NULL,
  `PASSWORD` varchar(999) NOT NULL,
  `EMAIL` varchar(255) NOT NULL,
  `GENDER` enum('M','F') NOT NULL,
  `GOLD` int(11) NOT NULL DEFAULT '0',
  `SILVER` int(11) NOT NULL DEFAULT '20',
  `POWER` enum('FOUNDER','CO-FOUNDER','ADMIN','MODERATOR','MEMBER') NOT NULL DEFAULT 'MEMBER',
  `VIP` enum('NONE','VIP','MEGA_VIP') NOT NULL DEFAULT 'NONE',
  `BANNED` enum('YES','NO') NOT NULL DEFAULT 'NO',
  `BANNED_TILL` int(11) NOT NULL,
  `JOINED` int(11) NOT NULL,
  `FORUM_POSTS` int(11) NOT NULL,
  `FORUM_SIG` varchar(255) NOT NULL,
  `LAST_ONLINE` int(11) NOT NULL,
  `AVATAR_IMG_URL` varchar(255) NOT NULL DEFAULT 'imgs/default_avatar.png/',
  `IP` varchar(35) NOT NULL DEFAULT '0.0.0.0',
  `VERIFIED` enum('YES','NO') NOT NULL DEFAULT 'NO',
  `BIO` varchar(999) NOT NULL DEFAULT 'Hi, I''m new here!',
  `STATUS` varchar(255) NOT NULL,
  `UNI_STRING` varchar(255) NOT NULL,
  `DAILY_COINS` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `ec_user_assets`
--

CREATE TABLE `ec_user_assets` (
  `ID` int(11) NOT NULL,
  `NAME` varchar(50) NOT NULL,
  `DESCRIPTION` varchar(500) NOT NULL,
  `CREATOR_ID` int(11) NOT NULL,
  `TIME_UPLOADED` varchar(500) NOT NULL,
  `SILVER_PRICE` int(11) NOT NULL,
  `AVATAR_IMG` varchar(500) NOT NULL,
  `STATUS` enum('ACCEPTED','PENDING','DECLINED') NOT NULL,
  `TYPE` varchar(10) NOT NULL,
  `STARS` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `site_settings`
--

CREATE TABLE `site_settings` (
  `ID` int(11) NOT NULL,
  `URL` varchar(999) NOT NULL DEFAULT 'localhost'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `temp`
--

CREATE TABLE `temp` (
  `ID` int(11) NOT NULL,
  `IP` varchar(999) NOT NULL,
  `LOC` varchar(999) NOT NULL,
  `COUNTRY` varchar(999) NOT NULL,
  `PHONE` varchar(999) NOT NULL,
  `STATE` varchar(999) NOT NULL,
  `CITY` varchar(999) NOT NULL,
  `TIME` varchar(1000) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `ec_anti_email_spam`
--
ALTER TABLE `ec_anti_email_spam`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `ec_anti_horde`
--
ALTER TABLE `ec_anti_horde`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `ec_avatar`
--
ALTER TABLE `ec_avatar`
  ADD PRIMARY KEY (`USER_ID`);

--
-- Indexes for table `ec_ban_logs`
--
ALTER TABLE `ec_ban_logs`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `ec_crate`
--
ALTER TABLE `ec_crate`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `ec_forums`
--
ALTER TABLE `ec_forums`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `ec_forum_posts`
--
ALTER TABLE `ec_forum_posts`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `ec_forum_threads`
--
ALTER TABLE `ec_forum_threads`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `ec_friends`
--
ALTER TABLE `ec_friends`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `ec_items`
--
ALTER TABLE `ec_items`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `ec_item_comments`
--
ALTER TABLE `ec_item_comments`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `ec_membership`
--
ALTER TABLE `ec_membership`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `ec_messages`
--
ALTER TABLE `ec_messages`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `ec_mod_logs`
--
ALTER TABLE `ec_mod_logs`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `ec_mod_uploads`
--
ALTER TABLE `ec_mod_uploads`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `ec_recent_events`
--
ALTER TABLE `ec_recent_events`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `ec_reports`
--
ALTER TABLE `ec_reports`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `ec_reselling`
--
ALTER TABLE `ec_reselling`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `ec_trades`
--
ALTER TABLE `ec_trades`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `ec_users`
--
ALTER TABLE `ec_users`
  ADD PRIMARY KEY (`ID`),
  ADD UNIQUE KEY `USERNAME` (`USERNAME`);

--
-- Indexes for table `ec_user_assets`
--
ALTER TABLE `ec_user_assets`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `site_settings`
--
ALTER TABLE `site_settings`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `temp`
--
ALTER TABLE `temp`
  ADD PRIMARY KEY (`ID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `ec_anti_email_spam`
--
ALTER TABLE `ec_anti_email_spam`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `ec_anti_horde`
--
ALTER TABLE `ec_anti_horde`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `ec_ban_logs`
--
ALTER TABLE `ec_ban_logs`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `ec_crate`
--
ALTER TABLE `ec_crate`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `ec_forums`
--
ALTER TABLE `ec_forums`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `ec_forum_posts`
--
ALTER TABLE `ec_forum_posts`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `ec_forum_threads`
--
ALTER TABLE `ec_forum_threads`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `ec_friends`
--
ALTER TABLE `ec_friends`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `ec_items`
--
ALTER TABLE `ec_items`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `ec_item_comments`
--
ALTER TABLE `ec_item_comments`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `ec_membership`
--
ALTER TABLE `ec_membership`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `ec_messages`
--
ALTER TABLE `ec_messages`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `ec_mod_logs`
--
ALTER TABLE `ec_mod_logs`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `ec_mod_uploads`
--
ALTER TABLE `ec_mod_uploads`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `ec_recent_events`
--
ALTER TABLE `ec_recent_events`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `ec_reports`
--
ALTER TABLE `ec_reports`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `ec_reselling`
--
ALTER TABLE `ec_reselling`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `ec_trades`
--
ALTER TABLE `ec_trades`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `ec_users`
--
ALTER TABLE `ec_users`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `ec_user_assets`
--
ALTER TABLE `ec_user_assets`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `site_settings`
--
ALTER TABLE `site_settings`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `temp`
--
ALTER TABLE `temp`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
