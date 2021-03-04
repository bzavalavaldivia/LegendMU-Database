-- --------------------------------------------------------
-- Host:                         127.0.0.1
-- Server version:               10.3.23-MariaDB - mariadb.org binary distribution
-- Server OS:                    Win64
-- HeidiSQL Version:             11.0.0.5919
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;


-- Dumping database structure for database_login
DROP DATABASE IF EXISTS `database_login`;
CREATE DATABASE IF NOT EXISTS `database_login` /*!40100 DEFAULT CHARACTER SET latin1 */;
USE `database_login`;

-- Dumping structure for table database_login.accounts
DROP TABLE IF EXISTS `accounts`;
CREATE TABLE IF NOT EXISTS `accounts` (
  `guid` int(11) NOT NULL,
  `blocked` tinyint(4) DEFAULT NULL,
  `security_code` varchar(255) DEFAULT NULL,
  `golden_channel` bigint(20) DEFAULT NULL,
  `facebook_status` tinyint(4) DEFAULT NULL,
  `secured` tinyint(4) DEFAULT NULL,
  `account` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`guid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Data exporting was unselected.

-- Dumping structure for table database_login.accounts_allowed
DROP TABLE IF EXISTS `accounts_allowed`;
CREATE TABLE IF NOT EXISTS `accounts_allowed` (
  `account_id` int(11) NOT NULL,
  `guid` int(11) DEFAULT NULL,
  `server` smallint(6) DEFAULT NULL,
  PRIMARY KEY (`account_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Data exporting was unselected.

-- Dumping structure for table database_login.accounts_banned
DROP TABLE IF EXISTS `accounts_banned`;
CREATE TABLE IF NOT EXISTS `accounts_banned` (
  `account_id` int(11) NOT NULL,
  `guid` int(11) DEFAULT NULL,
  `unban_date` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`account_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Data exporting was unselected.

-- Dumping structure for table database_login.accounts_disconnect
DROP TABLE IF EXISTS `accounts_disconnect`;
CREATE TABLE IF NOT EXISTS `accounts_disconnect` (
  `account_id` int(11) NOT NULL,
  `server` smallint(6) DEFAULT NULL,
  `masive` tinyint(4) DEFAULT NULL,
  PRIMARY KEY (`account_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Data exporting was unselected.

-- Dumping structure for table database_login.accounts_security
DROP TABLE IF EXISTS `accounts_security`;
CREATE TABLE IF NOT EXISTS `accounts_security` (
  `account_id` int(11) NOT NULL,
  `account` varchar(255) DEFAULT NULL,
  `ip` varchar(16) DEFAULT NULL,
  `mac` varchar(50) DEFAULT NULL,
  `disk_serial` int(11) DEFAULT NULL,
  PRIMARY KEY (`account_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Data exporting was unselected.

-- Dumping structure for table database_login.accounts_status
DROP TABLE IF EXISTS `accounts_status`;
CREATE TABLE IF NOT EXISTS `accounts_status` (
  `account_id` int(11) NOT NULL,
  `server_group` smallint(6) DEFAULT NULL,
  `current_server` smallint(6) DEFAULT NULL,
  `start_server` smallint(6) DEFAULT NULL,
  `dest_server` smallint(6) DEFAULT NULL,
  `dest_world` smallint(6) DEFAULT NULL,
  `dest_x` smallint(6) DEFAULT NULL,
  `dest_y` smallint(6) DEFAULT NULL,
  `warp_time` int(11) DEFAULT NULL,
  `warp_auth_1` int(11) DEFAULT NULL,
  `warp_auth_2` int(11) DEFAULT NULL,
  `warp_auth_3` int(11) DEFAULT NULL,
  `warp_auth_4` int(11) DEFAULT NULL,
  `last_ip` varchar(16) CHARACTER SET latin1 COLLATE latin1_general_ci DEFAULT NULL,
  `last_mac` varchar(50) CHARACTER SET latin1 COLLATE latin1_general_ci DEFAULT NULL,
  `last_online` varchar(255) CHARACTER SET latin1 COLLATE latin1_general_ci DEFAULT NULL,
  `online` tinyint(4) DEFAULT NULL,
  `disk_serial` int(11) DEFAULT NULL,
  `type` tinyint(4) DEFAULT NULL,
  PRIMARY KEY (`account_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Data exporting was unselected.

-- Dumping structure for table database_login.accounts_validation
DROP TABLE IF EXISTS `accounts_validation`;
CREATE TABLE IF NOT EXISTS `accounts_validation` (
  `account_id` int(11) NOT NULL,
  `disk_serial` int(11) DEFAULT NULL,
  PRIMARY KEY (`account_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Data exporting was unselected.

-- Dumping structure for table database_login.accounts_warning
DROP TABLE IF EXISTS `accounts_warning`;
CREATE TABLE IF NOT EXISTS `accounts_warning` (
  `account_id` int(11) NOT NULL,
  `disk_serial` int(11) DEFAULT NULL,
  `block_date` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`account_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Data exporting was unselected.

-- Dumping structure for table database_login.block_diskserial
DROP TABLE IF EXISTS `block_diskserial`;
CREATE TABLE IF NOT EXISTS `block_diskserial` (
  `disk_serial` int(11) NOT NULL,
  `comment` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`disk_serial`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Data exporting was unselected.

-- Dumping structure for table database_login.block_ip
DROP TABLE IF EXISTS `block_ip`;
CREATE TABLE IF NOT EXISTS `block_ip` (
  `ip` varchar(16) NOT NULL,
  `comment` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`ip`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Data exporting was unselected.

-- Dumping structure for table database_login.block_mac
DROP TABLE IF EXISTS `block_mac`;
CREATE TABLE IF NOT EXISTS `block_mac` (
  `mac` varchar(50) NOT NULL,
  `comment` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`mac`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Data exporting was unselected.

-- Dumping structure for table database_login.character_notification
DROP TABLE IF EXISTS `character_notification`;
CREATE TABLE IF NOT EXISTS `character_notification` (
  `server_group` smallint(6) NOT NULL,
  `char_name` varchar(45) DEFAULT NULL,
  `facebook_id` varchar(45) DEFAULT NULL,
  `notification_id` varchar(45) DEFAULT NULL,
  `notification_data` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`server_group`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Data exporting was unselected.

-- Dumping structure for table database_login.item_serial
DROP TABLE IF EXISTS `item_serial`;
CREATE TABLE IF NOT EXISTS `item_serial` (
  `server` smallint(6) NOT NULL,
  `serial` int(11) DEFAULT NULL,
  `serial_shop` int(11) DEFAULT NULL,
  PRIMARY KEY (`server`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Data exporting was unselected.

-- Dumping structure for table database_login.master_pc
DROP TABLE IF EXISTS `master_pc`;
CREATE TABLE IF NOT EXISTS `master_pc` (
  `disk_serial` int(11) NOT NULL,
  `mac` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`disk_serial`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Data exporting was unselected.

-- Dumping structure for table database_login.server_list
DROP TABLE IF EXISTS `server_list`;
CREATE TABLE IF NOT EXISTS `server_list` (
  `server` smallint(6) NOT NULL,
  `code` smallint(6) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `port` smallint(6) DEFAULT NULL,
  `ip` varchar(16) DEFAULT NULL,
  `flag` tinyint(4) DEFAULT NULL,
  `online` tinyint(4) DEFAULT NULL,
  `default_world` smallint(6) DEFAULT NULL,
  `default_x` smallint(6) DEFAULT NULL,
  `default_y` smallint(6) DEFAULT NULL,
  `type` tinyint(4) DEFAULT NULL,
  PRIMARY KEY (`server`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Data exporting was unselected.

-- Dumping structure for table database_login.world_server
DROP TABLE IF EXISTS `world_server`;
CREATE TABLE IF NOT EXISTS `world_server` (
  `server` smallint(6) NOT NULL,
  `world` smallint(6) DEFAULT NULL,
  PRIMARY KEY (`server`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Data exporting was unselected.

/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IF(@OLD_FOREIGN_KEY_CHECKS IS NULL, 1, @OLD_FOREIGN_KEY_CHECKS) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
