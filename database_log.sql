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


-- Dumping database structure for database_log
DROP DATABASE IF EXISTS `database_log`;
CREATE DATABASE IF NOT EXISTS `database_log` /*!40100 DEFAULT CHARACTER SET utf8 */;
USE `database_log`;

-- Dumping structure for table database_log.antihack
DROP TABLE IF EXISTS `antihack`;
CREATE TABLE IF NOT EXISTS `antihack` (
  `server` smallint(6) unsigned DEFAULT NULL,
  `account_id` int(11) unsigned DEFAULT NULL,
  `account` varchar(255) DEFAULT NULL,
  `char_id` int(11) unsigned DEFAULT NULL,
  `char_name` varchar(255) DEFAULT NULL,
  `player_data` varchar(255) DEFAULT NULL,
  `player_location` varchar(255) DEFAULT NULL,
  `type` tinyint(4) unsigned DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

-- Data exporting was unselected.

-- Dumping structure for table database_log.item_bag_serial
DROP TABLE IF EXISTS `item_bag_serial`;
CREATE TABLE IF NOT EXISTS `item_bag_serial` (
  `serial` int(11) unsigned DEFAULT NULL,
  `server` smallint(6) unsigned DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `level` tinyint(4) unsigned DEFAULT NULL,
  `account_id` int(11) unsigned DEFAULT NULL,
  `account` varchar(255) DEFAULT NULL,
  `char_id` int(11) unsigned DEFAULT NULL,
  `char_name` varchar(255) DEFAULT NULL,
  `world` smallint(6) unsigned DEFAULT NULL,
  `world_x` smallint(6) DEFAULT NULL,
  `world_y` smallint(6) DEFAULT NULL,
  `instance` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

-- Data exporting was unselected.

-- Dumping structure for table database_log.log_boss_kill
DROP TABLE IF EXISTS `log_boss_kill`;
CREATE TABLE IF NOT EXISTS `log_boss_kill` (
  `boss_index` smallint(6) unsigned DEFAULT NULL,
  `boss_name` varchar(255) DEFAULT NULL,
  `boss_id` tinyint(4) unsigned DEFAULT NULL,
  `character_id` int(11) unsigned DEFAULT NULL,
  `character_name` varchar(255) DEFAULT NULL,
  `damage` bigint(20) DEFAULT NULL,
  `damage_reflect` bigint(20) DEFAULT NULL,
  `damage_debuff` bigint(20) DEFAULT NULL,
  `damage_elemental` bigint(20) DEFAULT NULL,
  `server` smallint(6) unsigned DEFAULT NULL,
  `first_hit` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

-- Data exporting was unselected.

-- Dumping structure for table database_log.log_cash_shop
DROP TABLE IF EXISTS `log_cash_shop`;
CREATE TABLE IF NOT EXISTS `log_cash_shop` (
  `server_id` smallint(6) unsigned DEFAULT NULL,
  `account_id` int(11) unsigned DEFAULT NULL,
  `account` varchar(255) DEFAULT NULL,
  `char_id` int(11) unsigned DEFAULT NULL,
  `char_name` varchar(255) DEFAULT NULL,
  `player_data` varchar(255) DEFAULT NULL,
  `dest_char` varchar(255) DEFAULT NULL,
  `package_id` int(11) unsigned DEFAULT NULL,
  `product_id` int(11) unsigned DEFAULT NULL,
  `option_id` int(11) unsigned DEFAULT NULL,
  `product_name` varchar(255) DEFAULT NULL,
  `price_type` tinyint(4) unsigned DEFAULT NULL,
  `price` int(11) unsigned DEFAULT NULL,
  `gift` tinyint(4) unsigned DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

-- Data exporting was unselected.

-- Dumping structure for table database_log.log_errtel_pentagram
DROP TABLE IF EXISTS `log_errtel_pentagram`;
CREATE TABLE IF NOT EXISTS `log_errtel_pentagram` (
  `server` smallint(6) unsigned DEFAULT NULL,
  `account_id` int(11) unsigned DEFAULT NULL,
  `account` varchar(255) DEFAULT NULL,
  `char_id` int(11) unsigned DEFAULT NULL,
  `char_name` varchar(255) DEFAULT NULL,
  `player_data` varchar(255) DEFAULT NULL,
  `type` tinyint(4) unsigned DEFAULT NULL,
  `blessing_spirit` tinyint(4) unsigned DEFAULT NULL,
  `result` tinyint(4) unsigned DEFAULT NULL,
  `pentagram_data` varchar(255) DEFAULT NULL,
  `errtel_data` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

-- Data exporting was unselected.

-- Dumping structure for table database_log.log_item_buy
DROP TABLE IF EXISTS `log_item_buy`;
CREATE TABLE IF NOT EXISTS `log_item_buy` (
  `server` smallint(6) unsigned DEFAULT NULL,
  `account_id` int(11) unsigned DEFAULT NULL,
  `account` varchar(255) DEFAULT NULL,
  `char_id` int(11) unsigned DEFAULT NULL,
  `char_name` varchar(255) DEFAULT NULL,
  `player_data` varchar(255) DEFAULT NULL,
  `item_data` varchar(255) DEFAULT NULL,
  `comment` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

-- Data exporting was unselected.

-- Dumping structure for table database_log.log_item_create
DROP TABLE IF EXISTS `log_item_create`;
CREATE TABLE IF NOT EXISTS `log_item_create` (
  `account_id` int(11) unsigned DEFAULT NULL,
  `account` varchar(255) DEFAULT NULL,
  `char_id` int(11) unsigned DEFAULT NULL,
  `char_name` varchar(255) DEFAULT NULL,
  `interface_id` varchar(255) DEFAULT NULL,
  `world` smallint(6) unsigned DEFAULT NULL,
  `world_x` smallint(6) DEFAULT NULL,
  `world_y` smallint(6) DEFAULT NULL,
  `server` smallint(6) unsigned DEFAULT NULL,
  `serial` int(11) unsigned DEFAULT NULL,
  `serial_shop` int(11) unsigned DEFAULT NULL,
  `item` smallint(6) unsigned DEFAULT NULL,
  `level` tinyint(4) unsigned DEFAULT NULL,
  `item_data` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

-- Data exporting was unselected.

-- Dumping structure for table database_log.log_item_drop
DROP TABLE IF EXISTS `log_item_drop`;
CREATE TABLE IF NOT EXISTS `log_item_drop` (
  `server` smallint(6) unsigned DEFAULT NULL,
  `account_id` int(11) unsigned DEFAULT NULL,
  `account` varchar(255) DEFAULT NULL,
  `char_id` int(11) unsigned DEFAULT NULL,
  `char_name` varchar(255) DEFAULT NULL,
  `player_data` varchar(255) DEFAULT NULL,
  `item_data` varchar(255) DEFAULT NULL,
  `comment` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

-- Data exporting was unselected.

-- Dumping structure for table database_log.log_item_loot
DROP TABLE IF EXISTS `log_item_loot`;
CREATE TABLE IF NOT EXISTS `log_item_loot` (
  `server` smallint(6) unsigned DEFAULT NULL,
  `account_id` int(11) unsigned DEFAULT NULL,
  `account` varchar(255) DEFAULT NULL,
  `char_id` int(11) unsigned DEFAULT NULL,
  `char_name` varchar(255) DEFAULT NULL,
  `player_data` varchar(255) DEFAULT NULL,
  `item_data` varchar(255) DEFAULT NULL,
  `comment` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

-- Data exporting was unselected.

-- Dumping structure for table database_log.log_item_sell
DROP TABLE IF EXISTS `log_item_sell`;
CREATE TABLE IF NOT EXISTS `log_item_sell` (
  `server` smallint(6) unsigned DEFAULT NULL,
  `account_id` int(11) unsigned DEFAULT NULL,
  `account` varchar(255) DEFAULT NULL,
  `char_id` int(11) unsigned DEFAULT NULL,
  `char_name` varchar(255) DEFAULT NULL,
  `player_data` varchar(255) DEFAULT NULL,
  `item_data` varchar(255) DEFAULT NULL,
  `comment` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

-- Data exporting was unselected.

-- Dumping structure for table database_log.log_jewel_drop
DROP TABLE IF EXISTS `log_jewel_drop`;
CREATE TABLE IF NOT EXISTS `log_jewel_drop` (
  `char_id` int(11) unsigned DEFAULT NULL,
  `account_id` int(11) unsigned DEFAULT NULL,
  `jewel_type` tinyint(4) unsigned DEFAULT NULL,
  `jewel_index` smallint(6) unsigned DEFAULT NULL,
  `jewel_name` varchar(255) DEFAULT NULL,
  `world` smallint(6) unsigned DEFAULT NULL,
  `x` smallint(6) DEFAULT NULL,
  `y` smallint(6) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

-- Data exporting was unselected.

-- Dumping structure for table database_log.log_jewel_mix
DROP TABLE IF EXISTS `log_jewel_mix`;
CREATE TABLE IF NOT EXISTS `log_jewel_mix` (
  `char_id` int(11) unsigned DEFAULT NULL,
  `char_name` varchar(255) DEFAULT NULL,
  `server` smallint(6) unsigned DEFAULT NULL,
  `mix_type` tinyint(4) unsigned DEFAULT NULL,
  `mix_id` tinyint(4) unsigned DEFAULT NULL,
  `mix_level` tinyint(4) unsigned DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

-- Data exporting was unselected.

-- Dumping structure for table database_log.log_level_up
DROP TABLE IF EXISTS `log_level_up`;
CREATE TABLE IF NOT EXISTS `log_level_up` (
  `char_id` int(11) unsigned DEFAULT NULL,
  `char_name` varchar(255) DEFAULT NULL,
  `level_normal` smallint(6) unsigned DEFAULT NULL,
  `level_master` smallint(6) unsigned DEFAULT NULL,
  `level_majestic` smallint(6) unsigned DEFAULT NULL,
  `world` smallint(6) unsigned DEFAULT NULL,
  `world_x` smallint(6) DEFAULT NULL,
  `world_y` smallint(6) DEFAULT NULL,
  `event_ground` tinyint(4) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

-- Data exporting was unselected.

-- Dumping structure for table database_log.log_mix
DROP TABLE IF EXISTS `log_mix`;
CREATE TABLE IF NOT EXISTS `log_mix` (
  `server` smallint(6) unsigned DEFAULT NULL,
  `account_id` int(11) unsigned DEFAULT NULL,
  `account` varchar(255) DEFAULT NULL,
  `char_id` int(11) unsigned DEFAULT NULL,
  `char_name` varchar(255) DEFAULT NULL,
  `player_data` varchar(255) DEFAULT NULL,
  `mix_id` smallint(6) unsigned DEFAULT NULL,
  `mix_name` varchar(255) DEFAULT NULL,
  `rate` int(11) DEFAULT NULL,
  `cost` int(11) unsigned DEFAULT NULL,
  `result` tinyint(4) unsigned DEFAULT NULL,
  `item_data_before` varchar(255) DEFAULT NULL,
  `item_data_after` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

-- Data exporting was unselected.

-- Dumping structure for table database_log.log_personal_store
DROP TABLE IF EXISTS `log_personal_store`;
CREATE TABLE IF NOT EXISTS `log_personal_store` (
  `server` smallint(6) unsigned DEFAULT NULL,
  `account_id_01` int(11) unsigned DEFAULT NULL,
  `account_01` varchar(255) DEFAULT NULL,
  `char_id_01` int(11) unsigned DEFAULT NULL,
  `char_name_01` varchar(255) DEFAULT NULL,
  `player_data_01` varchar(255) DEFAULT NULL,
  `account_id_02` int(11) unsigned DEFAULT NULL,
  `account_02` varchar(255) DEFAULT NULL,
  `char_id_02` int(11) unsigned DEFAULT NULL,
  `char_name_02` varchar(255) DEFAULT NULL,
  `player_data_02` varchar(255) DEFAULT NULL,
  `offstore` tinyint(4) unsigned DEFAULT NULL,
  `item_data` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

-- Data exporting was unselected.

-- Dumping structure for table database_log.log_pvp
DROP TABLE IF EXISTS `log_pvp`;
CREATE TABLE IF NOT EXISTS `log_pvp` (
  `char_id_1` int(11) unsigned DEFAULT NULL,
  `char_name_1` varchar(255) DEFAULT NULL,
  `char_class_1` tinyint(4) unsigned DEFAULT NULL,
  `char_stat_1` varchar(255) DEFAULT NULL,
  `char_set_1` varchar(255) DEFAULT NULL,
  `char_id_2` int(11) unsigned DEFAULT NULL,
  `char_name_2` varchar(255) DEFAULT NULL,
  `char_class_2` tinyint(4) unsigned DEFAULT NULL,
  `char_stat_2` varchar(255) DEFAULT NULL,
  `char_set_2` varchar(255) DEFAULT NULL,
  `skill` smallint(5) unsigned DEFAULT NULL,
  `hp_damage` int(11) DEFAULT NULL,
  `sd_damage` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

-- Data exporting was unselected.

-- Dumping structure for table database_log.log_trade
DROP TABLE IF EXISTS `log_trade`;
CREATE TABLE IF NOT EXISTS `log_trade` (
  `server` smallint(6) unsigned DEFAULT NULL,
  `account_id_01` int(11) unsigned DEFAULT NULL,
  `account_01` varchar(255) DEFAULT NULL,
  `char_id_01` int(11) unsigned DEFAULT NULL,
  `char_name_01` varchar(255) DEFAULT NULL,
  `player_data_01` varchar(255) DEFAULT NULL,
  `account_id_02` int(11) unsigned DEFAULT NULL,
  `account_02` varchar(255) DEFAULT NULL,
  `char_id_02` int(11) unsigned DEFAULT NULL,
  `char_name_02` varchar(255) DEFAULT NULL,
  `player_data_02` varchar(255) DEFAULT NULL,
  `money` int(11) unsigned DEFAULT NULL,
  `item_data` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

-- Data exporting was unselected.

-- Dumping structure for table database_log.mix_recovery
DROP TABLE IF EXISTS `mix_recovery`;
CREATE TABLE IF NOT EXISTS `mix_recovery` (
  `server` smallint(6) unsigned DEFAULT NULL,
  `account_id` int(11) unsigned DEFAULT NULL,
  `account` varchar(255) DEFAULT NULL,
  `char_id` int(11) unsigned DEFAULT NULL,
  `char_name` varchar(255) DEFAULT NULL,
  `player_data` varchar(255) DEFAULT NULL,
  `type` tinyint(4) unsigned DEFAULT NULL,
  `item_data` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

-- Data exporting was unselected.

-- Dumping structure for table database_log.reward_dungeon
DROP TABLE IF EXISTS `reward_dungeon`;
CREATE TABLE IF NOT EXISTS `reward_dungeon` (
  `server` smallint(6) unsigned DEFAULT NULL,
  `account_id` int(11) unsigned DEFAULT NULL,
  `account` varchar(255) DEFAULT NULL,
  `char_id` int(11) unsigned DEFAULT NULL,
  `char_name` varchar(255) DEFAULT NULL,
  `player_data` varchar(255) DEFAULT NULL,
  `type` tinyint(4) unsigned DEFAULT NULL,
  `item_data` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

-- Data exporting was unselected.

-- Dumping structure for table database_log.reward_labyrinth_of_dimensions
DROP TABLE IF EXISTS `reward_labyrinth_of_dimensions`;
CREATE TABLE IF NOT EXISTS `reward_labyrinth_of_dimensions` (
  `server` smallint(6) unsigned DEFAULT NULL,
  `char_id` int(11) unsigned DEFAULT NULL,
  `char_name` varchar(255) DEFAULT NULL,
  `category` tinyint(4) unsigned DEFAULT NULL,
  `rank` int(11) DEFAULT NULL,
  `item_data` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

-- Data exporting was unselected.

/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IF(@OLD_FOREIGN_KEY_CHECKS IS NULL, 1, @OLD_FOREIGN_KEY_CHECKS) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
