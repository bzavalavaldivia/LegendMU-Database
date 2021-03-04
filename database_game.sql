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


-- Dumping database structure for database_game
DROP DATABASE IF EXISTS `database_game`;
CREATE DATABASE IF NOT EXISTS `database_game` /*!40100 DEFAULT CHARACTER SET latin1 */;
USE `database_game`;

-- Dumping structure for table database_game.account_buff
DROP TABLE IF EXISTS `account_buff`;
CREATE TABLE IF NOT EXISTS `account_buff` (
  `id` int(11) NOT NULL,
  `account_id` int(11) DEFAULT NULL,
  `buff` int(11) DEFAULT NULL,
  `effect_1` int(11) DEFAULT NULL,
  `value_1` int(11) DEFAULT NULL,
  `effect_2` int(11) DEFAULT NULL,
  `value_2` int(11) DEFAULT NULL,
  `effect_3` int(11) DEFAULT NULL,
  `value_3` int(11) DEFAULT NULL,
  `duration` int(11) DEFAULT NULL,
  `flags` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `account_id` (`account_id`),
  CONSTRAINT `account_buff_ibfk_1` FOREIGN KEY (`account_id`) REFERENCES `account_data` (`account_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Data exporting was unselected.

-- Dumping structure for table database_game.account_cash_shop_item
DROP TABLE IF EXISTS `account_cash_shop_item`;
CREATE TABLE IF NOT EXISTS `account_cash_shop_item` (
  `id` int(11) NOT NULL,
  `account_id` int(11) DEFAULT NULL,
  `product` int(11) DEFAULT NULL,
  `option` int(11) DEFAULT NULL,
  `serial` varchar(45) DEFAULT NULL,
  `serial_cash_shop` varchar(45) DEFAULT NULL,
  `server` int(11) DEFAULT NULL,
  `gift` int(11) DEFAULT NULL,
  `date` datetime(6) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `account_id` (`account_id`),
  CONSTRAINT `account_cash_shop_item_ibfk_1` FOREIGN KEY (`account_id`) REFERENCES `account_data` (`account_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Data exporting was unselected.

-- Dumping structure for table database_game.account_data
DROP TABLE IF EXISTS `account_data`;
CREATE TABLE IF NOT EXISTS `account_data` (
  `account_id` int(11) NOT NULL,
  `vip_status` int(11) DEFAULT NULL,
  `vip_duration` int(11) DEFAULT NULL,
  `expanded_warehouse` int(11) DEFAULT NULL,
  `expanded_warehouse_time` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `special_character` int(11) DEFAULT NULL,
  `credits` int(11) DEFAULT NULL,
  `web_credits` int(11) DEFAULT NULL,
  `current_character` int(11) DEFAULT NULL,
  `current_type` int(11) DEFAULT NULL,
  `current_ip` varchar(45) DEFAULT NULL,
  `current_mac` varchar(45) DEFAULT NULL,
  `current_diskserial` varchar(45) DEFAULT NULL,
  `current_server` int(11) DEFAULT NULL,
  PRIMARY KEY (`account_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Data exporting was unselected.

-- Dumping structure for table database_game.account_warehouse
DROP TABLE IF EXISTS `account_warehouse`;
CREATE TABLE IF NOT EXISTS `account_warehouse` (
  `id` int(11) NOT NULL,
  `account_id` int(11) DEFAULT NULL,
  `money` int(11) DEFAULT NULL,
  `password` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `account_id` (`account_id`),
  CONSTRAINT `account_warehouse_ibfk_1` FOREIGN KEY (`account_id`) REFERENCES `account_data` (`account_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Data exporting was unselected.

-- Dumping structure for table database_game.arka_war_data
DROP TABLE IF EXISTS `arka_war_data`;
CREATE TABLE IF NOT EXISTS `arka_war_data` (
  `id` int(11) NOT NULL,
  `guild` int(11) DEFAULT NULL,
  `attribute` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Data exporting was unselected.

-- Dumping structure for table database_game.buff_template
DROP TABLE IF EXISTS `buff_template`;
CREATE TABLE IF NOT EXISTS `buff_template` (
  `buff` smallint(5) unsigned NOT NULL,
  `group` smallint(5) unsigned DEFAULT NULL,
  `item_type` tinyint(3) unsigned DEFAULT NULL,
  `item_index` smallint(5) unsigned DEFAULT NULL,
  `name` text DEFAULT NULL,
  `description` text DEFAULT NULL,
  `send` tinyint(4) DEFAULT NULL,
  `debuff` tinyint(4) DEFAULT NULL,
  `effect_1` tinyint(3) unsigned DEFAULT NULL,
  `value_1` float DEFAULT NULL,
  `effect_2` tinyint(3) unsigned DEFAULT NULL,
  `value_2` float DEFAULT NULL,
  `duration` int(10) unsigned DEFAULT NULL,
  PRIMARY KEY (`buff`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Data exporting was unselected.

-- Dumping structure for table database_game.cash_shop_category
DROP TABLE IF EXISTS `cash_shop_category`;
CREATE TABLE IF NOT EXISTS `cash_shop_category` (
  `id` smallint(5) unsigned NOT NULL,
  `name` text DEFAULT NULL,
  `parent` tinyint(3) unsigned DEFAULT NULL,
  `main` tinyint(3) unsigned DEFAULT NULL,
  `disabled` tinyint(3) unsigned NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Data exporting was unselected.

-- Dumping structure for table database_game.cash_shop_package
DROP TABLE IF EXISTS `cash_shop_package`;
CREATE TABLE IF NOT EXISTS `cash_shop_package` (
  `package` int(10) unsigned NOT NULL,
  `category` int(10) unsigned DEFAULT NULL,
  `position` tinyint(3) unsigned DEFAULT NULL,
  `name` text DEFAULT NULL,
  `description` text DEFAULT NULL,
  `display_item` smallint(5) unsigned DEFAULT NULL,
  `flags` int(10) unsigned DEFAULT NULL,
  `price_type` tinyint(3) unsigned DEFAULT NULL,
  `start_date` bigint(20) DEFAULT NULL,
  `end_date` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`package`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Data exporting was unselected.

-- Dumping structure for table database_game.cash_shop_product
DROP TABLE IF EXISTS `cash_shop_product`;
CREATE TABLE IF NOT EXISTS `cash_shop_product` (
  `product` int(10) unsigned NOT NULL,
  `package` int(10) unsigned DEFAULT NULL,
  `option` int(10) unsigned DEFAULT NULL,
  `name` text DEFAULT NULL,
  `price` int(10) unsigned DEFAULT NULL,
  `buy_type` tinyint(3) unsigned DEFAULT NULL,
  `use_type` tinyint(3) unsigned DEFAULT NULL,
  `flags` int(10) unsigned DEFAULT NULL,
  `duration` bigint(20) DEFAULT NULL,
  `item_type` tinyint(3) unsigned DEFAULT NULL,
  `item_index` smallint(5) unsigned DEFAULT NULL,
  `item_durability` int(11) DEFAULT NULL,
  `item_skill` tinyint(3) unsigned DEFAULT NULL,
  `item_luck` tinyint(3) unsigned DEFAULT NULL,
  `item_option` tinyint(3) unsigned DEFAULT NULL,
  `item_excellent` tinyint(3) unsigned DEFAULT NULL,
  `item_ancient` tinyint(3) unsigned DEFAULT NULL,
  `count` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Data exporting was unselected.

-- Dumping structure for table database_game.castle_siege_data
DROP TABLE IF EXISTS `castle_siege_data`;
CREATE TABLE IF NOT EXISTS `castle_siege_data` (
  `id` int(11) NOT NULL,
  `owner` int(11) DEFAULT NULL,
  `status` int(11) DEFAULT NULL,
  `tax_hunt` int(11) DEFAULT NULL,
  `tax_chaos` int(11) DEFAULT NULL,
  `tax_store` int(11) DEFAULT NULL,
  `hunt_allowed` int(11) DEFAULT NULL,
  `money` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Data exporting was unselected.

-- Dumping structure for table database_game.castle_siege_guild
DROP TABLE IF EXISTS `castle_siege_guild`;
CREATE TABLE IF NOT EXISTS `castle_siege_guild` (
  `id` int(11) NOT NULL,
  `guild` int(11) DEFAULT NULL,
  `side` int(11) DEFAULT NULL,
  `score` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Data exporting was unselected.

-- Dumping structure for table database_game.castle_siege_npc
DROP TABLE IF EXISTS `castle_siege_npc`;
CREATE TABLE IF NOT EXISTS `castle_siege_npc` (
  `npc_id` int(11) NOT NULL,
  `npc` int(11) DEFAULT NULL,
  `id` int(11) DEFAULT NULL,
  `defense_level` int(11) DEFAULT NULL,
  `regen_level` int(11) DEFAULT NULL,
  `life_level` int(11) DEFAULT NULL,
  `life` int(11) DEFAULT NULL,
  PRIMARY KEY (`npc_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Data exporting was unselected.

-- Dumping structure for table database_game.castle_siege_registered_guild
DROP TABLE IF EXISTS `castle_siege_registered_guild`;
CREATE TABLE IF NOT EXISTS `castle_siege_registered_guild` (
  `register_id` int(11) NOT NULL,
  `guild` int(11) DEFAULT NULL,
  `marks` int(11) DEFAULT NULL,
  PRIMARY KEY (`register_id`),
  KEY `guild` (`guild`),
  CONSTRAINT `castle_siege_registered_guild_ibfk_1` FOREIGN KEY (`guild`) REFERENCES `guild_list` (`guild_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Data exporting was unselected.

-- Dumping structure for table database_game.character_base
DROP TABLE IF EXISTS `character_base`;
CREATE TABLE IF NOT EXISTS `character_base` (
  `race` tinyint(3) unsigned NOT NULL,
  `stat_strength` int(10) unsigned DEFAULT NULL,
  `stat_agility` int(10) unsigned DEFAULT NULL,
  `stat_vitality` int(10) unsigned DEFAULT NULL,
  `stat_energy` int(10) unsigned DEFAULT NULL,
  `stat_leadership` int(10) unsigned DEFAULT NULL,
  `life` int(11) DEFAULT NULL,
  `mana` int(11) DEFAULT NULL,
  `level_to_life` float DEFAULT NULL,
  `level_to_mana` float DEFAULT NULL,
  `vitality_to_life` float DEFAULT NULL,
  `energy_to_mana` float DEFAULT NULL,
  `world` smallint(5) unsigned DEFAULT NULL,
  `level` smallint(6) DEFAULT NULL,
  `points` int(11) DEFAULT NULL,
  `recovery_life` float DEFAULT NULL,
  `recovery_mana` float DEFAULT NULL,
  `recovery_shield` float DEFAULT NULL,
  `recovery_stamina` float DEFAULT NULL,
  `level_up_points` int(10) unsigned DEFAULT NULL,
  `plus_level_up_points` int(10) unsigned DEFAULT NULL,
  `master_level_up_points` int(10) unsigned DEFAULT NULL,
  `majestic_level_up_points` int(10) unsigned DEFAULT NULL,
  PRIMARY KEY (`race`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Data exporting was unselected.

-- Dumping structure for table database_game.character_bonus
DROP TABLE IF EXISTS `character_bonus`;
CREATE TABLE IF NOT EXISTS `character_bonus` (
  `server` smallint(5) unsigned NOT NULL,
  `level_min` smallint(6) DEFAULT NULL,
  `level_max` smallint(6) DEFAULT NULL,
  `experience_rate` smallint(6) DEFAULT NULL,
  `drop_rate` smallint(6) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Data exporting was unselected.

-- Dumping structure for table database_game.character_buff
DROP TABLE IF EXISTS `character_buff`;
CREATE TABLE IF NOT EXISTS `character_buff` (
  `id` int(11) NOT NULL,
  `char_id` int(11) DEFAULT NULL,
  `character_buff` int(11) DEFAULT NULL,
  `effect_1` int(11) DEFAULT NULL,
  `value_1` int(11) DEFAULT NULL,
  `effect_2` int(11) DEFAULT NULL,
  `value_2` int(11) DEFAULT NULL,
  `effect_3` int(11) DEFAULT NULL,
  `value_3` int(11) DEFAULT NULL,
  `duration` int(11) DEFAULT NULL,
  `flags` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `char_id` (`char_id`),
  CONSTRAINT `character_buff_ibfk_1` FOREIGN KEY (`char_id`) REFERENCES `character_info` (`guid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Data exporting was unselected.

-- Dumping structure for table database_game.character_chat_block
DROP TABLE IF EXISTS `character_chat_block`;
CREATE TABLE IF NOT EXISTS `character_chat_block` (
  `id` int(11) NOT NULL,
  `char_id` int(11) DEFAULT NULL,
  `blocked` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `char_id` (`char_id`),
  CONSTRAINT `character_chat_block_ibfk_1` FOREIGN KEY (`char_id`) REFERENCES `character_info` (`guid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Data exporting was unselected.

-- Dumping structure for table database_game.character_date
DROP TABLE IF EXISTS `character_date`;
CREATE TABLE IF NOT EXISTS `character_date` (
  `id` int(11) NOT NULL,
  `char_id` int(11) DEFAULT NULL,
  `date` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `char_id` (`char_id`),
  CONSTRAINT `character_date_ibfk_1` FOREIGN KEY (`char_id`) REFERENCES `character_info` (`guid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Data exporting was unselected.

-- Dumping structure for table database_game.character_deleted
DROP TABLE IF EXISTS `character_deleted`;
CREATE TABLE IF NOT EXISTS `character_deleted` (
  `id` int(11) NOT NULL,
  `account_id` int(11) DEFAULT NULL,
  `char_id` int(11) DEFAULT NULL,
  `name` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `account_id` (`account_id`),
  KEY `char_id` (`char_id`),
  CONSTRAINT `character_deleted_ibfk_1` FOREIGN KEY (`account_id`) REFERENCES `account_data` (`account_id`),
  CONSTRAINT `character_deleted_ibfk_2` FOREIGN KEY (`char_id`) REFERENCES `character_info` (`guid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Data exporting was unselected.

-- Dumping structure for table database_game.character_event_count
DROP TABLE IF EXISTS `character_event_count`;
CREATE TABLE IF NOT EXISTS `character_event_count` (
  `id` int(11) NOT NULL,
  `char_id` int(11) DEFAULT NULL,
  `event_id` int(11) DEFAULT NULL,
  `count` varchar(45) DEFAULT NULL,
  `day` datetime(6) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `char_id` (`char_id`),
  CONSTRAINT `character_event_count_ibfk_1` FOREIGN KEY (`char_id`) REFERENCES `character_info` (`guid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Data exporting was unselected.

-- Dumping structure for table database_game.character_experience_adjust
DROP TABLE IF EXISTS `character_experience_adjust`;
CREATE TABLE IF NOT EXISTS `character_experience_adjust` (
  `level_min` smallint(6) DEFAULT NULL,
  `level_max` smallint(6) DEFAULT NULL,
  `experience_rate` smallint(6) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Data exporting was unselected.

-- Dumping structure for table database_game.character_experience_bonus
DROP TABLE IF EXISTS `character_experience_bonus`;
CREATE TABLE IF NOT EXISTS `character_experience_bonus` (
  `race_1` tinyint(3) unsigned NOT NULL,
  `race_2` tinyint(3) unsigned DEFAULT NULL,
  `race_3` tinyint(3) unsigned DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Data exporting was unselected.

-- Dumping structure for table database_game.character_experience_table
DROP TABLE IF EXISTS `character_experience_table`;
CREATE TABLE IF NOT EXISTS `character_experience_table` (
  `level_min` smallint(6) DEFAULT NULL,
  `level_max` smallint(6) DEFAULT NULL,
  `experience_rate` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Data exporting was unselected.

-- Dumping structure for table database_game.character_formula
DROP TABLE IF EXISTS `character_formula`;
CREATE TABLE IF NOT EXISTS `character_formula` (
  `type` tinyint(3) unsigned NOT NULL,
  `class` tinyint(3) unsigned DEFAULT NULL,
  `level_mul` float DEFAULT NULL,
  `level_div` float DEFAULT NULL,
  `stat_strength_mul` float DEFAULT NULL,
  `stat_strength_div` float DEFAULT NULL,
  `stat_agility_mul` float DEFAULT NULL,
  `stat_agility_div` float DEFAULT NULL,
  `stat_vitality_mul` float DEFAULT NULL,
  `stat_vitality_div` float DEFAULT NULL,
  `stat_energy_mul` float DEFAULT NULL,
  `stat_energy_div` float DEFAULT NULL,
  `stat_leadership_mul` float DEFAULT NULL,
  `stat_leadership_div` float DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Data exporting was unselected.

-- Dumping structure for table database_game.character_friend
DROP TABLE IF EXISTS `character_friend`;
CREATE TABLE IF NOT EXISTS `character_friend` (
  `id` int(11) NOT NULL,
  `char_id` int(11) DEFAULT NULL,
  `friend_name` varchar(45) DEFAULT NULL,
  `server_code` int(11) DEFAULT NULL,
  `online` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `char_id` (`char_id`),
  CONSTRAINT `character_friend_ibfk_1` FOREIGN KEY (`char_id`) REFERENCES `character_info` (`guid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Data exporting was unselected.

-- Dumping structure for table database_game.character_gameoption
DROP TABLE IF EXISTS `character_gameoption`;
CREATE TABLE IF NOT EXISTS `character_gameoption` (
  `id` int(11) NOT NULL,
  `char_id` int(11) DEFAULT NULL,
  `game_option` int(11) DEFAULT NULL,
  `chat_window` int(11) DEFAULT NULL,
  `q_key` int(11) DEFAULT NULL,
  `w_key` int(11) DEFAULT NULL,
  `e_key` int(11) DEFAULT NULL,
  `r_key` int(11) DEFAULT NULL,
  `qwer_level` int(11) DEFAULT NULL,
  `skill_bind_0` int(11) DEFAULT NULL,
  `skill_bind_1` int(11) DEFAULT NULL,
  `skill_bind_2` int(11) DEFAULT NULL,
  `skill_bind_3` int(11) DEFAULT NULL,
  `skill_bind_4` int(11) DEFAULT NULL,
  `skill_bind_5` int(11) DEFAULT NULL,
  `skill_bind_6` int(11) DEFAULT NULL,
  `skill_bind_7` int(11) DEFAULT NULL,
  `skill_bind_8` int(11) DEFAULT NULL,
  `skill_bind_9` int(11) DEFAULT NULL,
  `extra_data` int(11) DEFAULT NULL,
  `change_skin` int(11) DEFAULT NULL,
  `additional_options` int(11) DEFAULT NULL,
  `button_bind_1` int(11) DEFAULT NULL,
  `button_bind_2` int(11) DEFAULT NULL,
  `button_bind_3` int(11) DEFAULT NULL,
  `button_bind_4` int(11) DEFAULT NULL,
  `button_bind_5` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `char_id` (`char_id`),
  CONSTRAINT `character_gameoption_ibfk_1` FOREIGN KEY (`char_id`) REFERENCES `character_info` (`guid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Data exporting was unselected.

-- Dumping structure for table database_game.character_gens
DROP TABLE IF EXISTS `character_gens`;
CREATE TABLE IF NOT EXISTS `character_gens` (
  `id` int(11) NOT NULL,
  `char_id` int(11) DEFAULT NULL,
  `family` int(11) DEFAULT NULL,
  `level` int(11) DEFAULT NULL,
  `contribution` int(11) DEFAULT NULL,
  `reward_date` datetime(6) DEFAULT NULL,
  `join_date` datetime(6) DEFAULT NULL,
  `left_date` datetime(6) DEFAULT NULL,
  `ranking` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `char_id` (`char_id`),
  CONSTRAINT `character_gens_ibfk_1` FOREIGN KEY (`char_id`) REFERENCES `character_info` (`guid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Data exporting was unselected.

-- Dumping structure for table database_game.character_gens_kill
DROP TABLE IF EXISTS `character_gens_kill`;
CREATE TABLE IF NOT EXISTS `character_gens_kill` (
  `id` int(11) NOT NULL,
  `char_id` int(11) DEFAULT NULL,
  `killed_id` int(11) DEFAULT NULL,
  `count` int(11) DEFAULT NULL,
  `date` datetime(6) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `char_id` (`char_id`),
  CONSTRAINT `character_gens_kill_ibfk_1` FOREIGN KEY (`char_id`) REFERENCES `character_info` (`guid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Data exporting was unselected.

-- Dumping structure for table database_game.character_helper
DROP TABLE IF EXISTS `character_helper`;
CREATE TABLE IF NOT EXISTS `character_helper` (
  `race` tinyint(3) unsigned NOT NULL,
  `stage` int(11) DEFAULT NULL,
  `duration` int(10) unsigned DEFAULT NULL,
  `cost` int(10) unsigned DEFAULT NULL,
  `cost_interval` int(10) unsigned DEFAULT NULL,
  `next_stage` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Data exporting was unselected.

-- Dumping structure for table database_game.character_hunting_record
DROP TABLE IF EXISTS `character_hunting_record`;
CREATE TABLE IF NOT EXISTS `character_hunting_record` (
  `id` int(11) NOT NULL,
  `char_id` int(11) DEFAULT NULL,
  `world` int(11) DEFAULT NULL,
  `year` int(11) DEFAULT NULL,
  `month` int(11) DEFAULT NULL,
  `day` int(11) DEFAULT NULL,
  `level` int(11) DEFAULT NULL,
  `duration` int(11) DEFAULT NULL,
  `damage` int(11) DEFAULT NULL,
  `elemental_damage` int(11) DEFAULT NULL,
  `healing` int(11) DEFAULT NULL,
  `killed_count` int(11) DEFAULT NULL,
  `earned_experience` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `char_id` (`char_id`),
  CONSTRAINT `character_hunting_record_ibfk_1` FOREIGN KEY (`char_id`) REFERENCES `character_info` (`guid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Data exporting was unselected.

-- Dumping structure for table database_game.character_info
DROP TABLE IF EXISTS `character_info`;
CREATE TABLE IF NOT EXISTS `character_info` (
  `guid` int(11) NOT NULL,
  `slot` int(11) DEFAULT NULL,
  `authority` int(11) DEFAULT NULL,
  `race` int(11) DEFAULT NULL,
  `name` varchar(45) DEFAULT NULL,
  `level` int(11) DEFAULT NULL,
  `level_master` int(11) DEFAULT NULL,
  `experience` int(11) DEFAULT NULL,
  `experience_master` int(11) DEFAULT NULL,
  `points` int(11) DEFAULT NULL,
  `points_master` int(11) DEFAULT NULL,
  `strength` int(11) DEFAULT NULL,
  `agility` int(11) DEFAULT NULL,
  `vitality` int(11) DEFAULT NULL,
  `energy` int(11) DEFAULT NULL,
  `leadership` int(11) DEFAULT NULL,
  `world` int(11) DEFAULT NULL,
  `world_x` int(11) DEFAULT NULL,
  `world_y` int(11) DEFAULT NULL,
  `direction` int(11) DEFAULT NULL,
  `money` int(11) DEFAULT NULL,
  `life` int(11) DEFAULT NULL,
  `mana` int(11) DEFAULT NULL,
  `shield` int(11) DEFAULT NULL,
  `stamina` int(11) DEFAULT NULL,
  `add_fruit_points` int(11) DEFAULT NULL,
  `dec_fruit_points` int(11) DEFAULT NULL,
  `expanded_inventory` int(11) DEFAULT NULL,
  `mute_time` datetime(6) DEFAULT NULL,
  `admin_flags` int(11) DEFAULT NULL,
  `pk_level` int(11) DEFAULT NULL,
  `pk_count` int(11) DEFAULT NULL,
  `pk_points` int(11) DEFAULT NULL,
  `first_time` datetime(6) DEFAULT NULL,
  `santa_claus_gift` int(11) DEFAULT NULL,
  `personal_store_name` varchar(45) DEFAULT NULL,
  `goblin_points` int(11) DEFAULT NULL,
  `kick_time` datetime(6) DEFAULT NULL,
  `account_id` int(11) DEFAULT NULL,
  `post_count` int(11) DEFAULT NULL,
  `post_day` int(11) DEFAULT NULL,
  `post_month` int(11) DEFAULT NULL,
  `ruud_money` int(11) DEFAULT NULL,
  `level_majestic` int(11) DEFAULT NULL,
  `experience_majestic` int(11) DEFAULT NULL,
  `points_majestic` int(11) DEFAULT NULL,
  `create_date` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `hunting_log_visible` int(11) DEFAULT NULL,
  `personal_store_open` int(11) DEFAULT NULL,
  PRIMARY KEY (`guid`),
  KEY `account_id` (`account_id`),
  CONSTRAINT `character_info_ibfk_1` FOREIGN KEY (`account_id`) REFERENCES `account_data` (`account_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Data exporting was unselected.

-- Dumping structure for table database_game.character_item
DROP TABLE IF EXISTS `character_item`;
CREATE TABLE IF NOT EXISTS `character_item` (
  `race` tinyint(3) unsigned NOT NULL,
  `slot` tinyint(3) unsigned DEFAULT NULL,
  `type` tinyint(3) unsigned DEFAULT NULL,
  `index` smallint(5) unsigned DEFAULT NULL,
  `level` tinyint(3) unsigned DEFAULT NULL,
  `durability` tinyint(3) unsigned DEFAULT NULL,
  `skill` tinyint(3) unsigned DEFAULT NULL,
  `luck` tinyint(3) unsigned DEFAULT NULL,
  `option` tinyint(3) unsigned DEFAULT NULL,
  `excellent` tinyint(3) unsigned DEFAULT NULL,
  `ancient` tinyint(3) unsigned DEFAULT NULL,
  `duration` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Data exporting was unselected.

-- Dumping structure for table database_game.character_item_delay
DROP TABLE IF EXISTS `character_item_delay`;
CREATE TABLE IF NOT EXISTS `character_item_delay` (
  `id` int(11) NOT NULL,
  `char_id` int(11) DEFAULT NULL,
  `item` int(11) DEFAULT NULL,
  `date` datetime(6) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `char_id` (`char_id`),
  CONSTRAINT `character_item_delay_ibfk_1` FOREIGN KEY (`char_id`) REFERENCES `character_info` (`guid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Data exporting was unselected.

-- Dumping structure for table database_game.character_jewel_bingo
DROP TABLE IF EXISTS `character_jewel_bingo`;
CREATE TABLE IF NOT EXISTS `character_jewel_bingo` (
  `id` int(11) NOT NULL,
  `char_id` int(11) DEFAULT NULL,
  `state` varchar(45) DEFAULT NULL,
  `box` varchar(45) DEFAULT NULL,
  `count` varchar(45) DEFAULT NULL,
  `score1` varchar(45) DEFAULT NULL,
  `score2` varchar(45) DEFAULT NULL,
  `score3` varchar(45) DEFAULT NULL,
  `date` datetime(6) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `char_id` (`char_id`),
  CONSTRAINT `character_jewel_bingo_ibfk_1` FOREIGN KEY (`char_id`) REFERENCES `character_info` (`guid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Data exporting was unselected.

-- Dumping structure for table database_game.character_jewel_bingo_grid
DROP TABLE IF EXISTS `character_jewel_bingo_grid`;
CREATE TABLE IF NOT EXISTS `character_jewel_bingo_grid` (
  `id` int(11) NOT NULL,
  `char_id` int(11) DEFAULT NULL,
  `type` varchar(45) DEFAULT NULL,
  `slot` varchar(45) DEFAULT NULL,
  `value` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `char_id` (`char_id`),
  CONSTRAINT `character_jewel_bingo_grid_ibfk_1` FOREIGN KEY (`char_id`) REFERENCES `character_info` (`guid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Data exporting was unselected.

-- Dumping structure for table database_game.character_kick
DROP TABLE IF EXISTS `character_kick`;
CREATE TABLE IF NOT EXISTS `character_kick` (
  `id` int(11) NOT NULL,
  `char_id` int(11) DEFAULT NULL,
  `character_name` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `char_id` (`char_id`),
  CONSTRAINT `character_kick_ibfk_1` FOREIGN KEY (`char_id`) REFERENCES `character_info` (`guid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Data exporting was unselected.

-- Dumping structure for table database_game.character_labyrinth
DROP TABLE IF EXISTS `character_labyrinth`;
CREATE TABLE IF NOT EXISTS `character_labyrinth` (
  `id` int(11) NOT NULL,
  `char_id` int(11) DEFAULT NULL,
  `stage` int(11) DEFAULT NULL,
  `level` int(11) DEFAULT NULL,
  `status` int(11) DEFAULT NULL,
  `killed_monsters` int(11) DEFAULT NULL,
  `earned_experience` int(11) DEFAULT NULL,
  `completed_missions` int(11) DEFAULT NULL,
  `date` datetime(6) DEFAULT NULL,
  `goblin_state` int(11) DEFAULT NULL,
  `day_first` datetime(6) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `char_id` (`char_id`),
  CONSTRAINT `character_labyrinth_ibfk_1` FOREIGN KEY (`char_id`) REFERENCES `character_info` (`guid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Data exporting was unselected.

-- Dumping structure for table database_game.character_labyrinth_level
DROP TABLE IF EXISTS `character_labyrinth_level`;
CREATE TABLE IF NOT EXISTS `character_labyrinth_level` (
  `id` int(11) NOT NULL,
  `char_id` int(11) DEFAULT NULL,
  `level` int(11) DEFAULT NULL,
  `amount` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `char_id` (`char_id`),
  CONSTRAINT `character_labyrinth_level_ibfk_1` FOREIGN KEY (`char_id`) REFERENCES `character_info` (`guid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Data exporting was unselected.

-- Dumping structure for table database_game.character_labyrinth_zone
DROP TABLE IF EXISTS `character_labyrinth_zone`;
CREATE TABLE IF NOT EXISTS `character_labyrinth_zone` (
  `id` int(11) NOT NULL,
  `char_id` int(11) DEFAULT NULL,
  `idx` int(11) DEFAULT NULL,
  `subidx` int(11) DEFAULT NULL,
  `mission_id_1` int(11) DEFAULT NULL,
  `mission_id_2` int(11) DEFAULT NULL,
  `mission_id_3` int(11) DEFAULT NULL,
  `mission_id_4` int(11) DEFAULT NULL,
  `mission_id_5` int(11) DEFAULT NULL,
  `mission_count_1` int(11) DEFAULT NULL,
  `mission_count_2` int(11) DEFAULT NULL,
  `mission_count_3` int(11) DEFAULT NULL,
  `mission_count_4` int(11) DEFAULT NULL,
  `mission_count_5` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `char_id` (`char_id`),
  CONSTRAINT `character_labyrinth_zone_ibfk_1` FOREIGN KEY (`char_id`) REFERENCES `character_info` (`guid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Data exporting was unselected.

-- Dumping structure for table database_game.character_mail
DROP TABLE IF EXISTS `character_mail`;
CREATE TABLE IF NOT EXISTS `character_mail` (
  `id` int(11) NOT NULL,
  `char_id` int(11) DEFAULT NULL,
  `subject` varchar(45) DEFAULT NULL,
  `message` varchar(45) DEFAULT NULL,
  `direction` varchar(45) DEFAULT NULL,
  `action` int(11) DEFAULT NULL,
  `photo` int(11) DEFAULT NULL,
  `window_guid` int(11) DEFAULT NULL,
  `date` datetime(6) DEFAULT NULL,
  `opened` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `char_id` (`char_id`),
  CONSTRAINT `character_mail_ibfk_1` FOREIGN KEY (`char_id`) REFERENCES `character_info` (`guid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Data exporting was unselected.

-- Dumping structure for table database_game.character_majestic_stats
DROP TABLE IF EXISTS `character_majestic_stats`;
CREATE TABLE IF NOT EXISTS `character_majestic_stats` (
  `stats_id` int(11) NOT NULL,
  `char_id` int(11) DEFAULT NULL,
  `id` int(11) DEFAULT NULL,
  `level` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`stats_id`),
  KEY `char_id` (`char_id`),
  CONSTRAINT `character_majestic_stats_ibfk_1` FOREIGN KEY (`char_id`) REFERENCES `character_info` (`guid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Data exporting was unselected.

-- Dumping structure for table database_game.character_majestic_tree
DROP TABLE IF EXISTS `character_majestic_tree`;
CREATE TABLE IF NOT EXISTS `character_majestic_tree` (
  `idm` int(11) NOT NULL,
  `char_id` int(11) DEFAULT NULL,
  `type` varchar(45) DEFAULT NULL,
  `section` varchar(45) DEFAULT NULL,
  `id` int(11) DEFAULT NULL,
  `level` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`idm`),
  KEY `char_id` (`char_id`),
  CONSTRAINT `character_majestic_tree_ibfk_1` FOREIGN KEY (`char_id`) REFERENCES `character_info` (`guid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Data exporting was unselected.

-- Dumping structure for table database_game.character_max_level_reward
DROP TABLE IF EXISTS `character_max_level_reward`;
CREATE TABLE IF NOT EXISTS `character_max_level_reward` (
  `class` tinyint(3) unsigned NOT NULL,
  `max_level` smallint(6) DEFAULT NULL,
  `type` tinyint(3) unsigned DEFAULT NULL,
  `index` smallint(5) unsigned DEFAULT NULL,
  `level` tinyint(3) unsigned DEFAULT NULL,
  `durability` tinyint(3) unsigned DEFAULT NULL,
  `skill` tinyint(3) unsigned DEFAULT NULL,
  `luck` tinyint(3) unsigned DEFAULT NULL,
  `option` tinyint(3) unsigned DEFAULT NULL,
  `excellent` tinyint(3) unsigned DEFAULT NULL,
  `ancient` tinyint(3) unsigned DEFAULT NULL,
  `harmony` tinyint(3) unsigned DEFAULT NULL,
  `option_380` tinyint(3) unsigned DEFAULT NULL,
  `socket_1` smallint(5) unsigned DEFAULT NULL,
  `socket_2` smallint(5) unsigned DEFAULT NULL,
  `socket_3` smallint(5) unsigned DEFAULT NULL,
  `socket_4` smallint(5) unsigned DEFAULT NULL,
  `socket_5` smallint(5) unsigned DEFAULT NULL,
  `socket_bonus` tinyint(3) unsigned DEFAULT NULL,
  `flags` int(10) unsigned DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Data exporting was unselected.

-- Dumping structure for table database_game.character_mini_bomb
DROP TABLE IF EXISTS `character_mini_bomb`;
CREATE TABLE IF NOT EXISTS `character_mini_bomb` (
  `id` int(11) NOT NULL,
  `char_id` int(11) DEFAULT NULL,
  `state` varchar(45) DEFAULT NULL,
  `score` varchar(45) DEFAULT NULL,
  `total_score` varchar(45) DEFAULT NULL,
  `cdate` datetime(6) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `char_id` (`char_id`),
  CONSTRAINT `character_mini_bomb_ibfk_1` FOREIGN KEY (`char_id`) REFERENCES `character_info` (`guid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Data exporting was unselected.

-- Dumping structure for table database_game.character_mini_bomb_grid
DROP TABLE IF EXISTS `character_mini_bomb_grid`;
CREATE TABLE IF NOT EXISTS `character_mini_bomb_grid` (
  `id` int(11) NOT NULL,
  `char_id` int(11) DEFAULT NULL,
  `cell` varchar(45) DEFAULT NULL,
  `value` varchar(45) DEFAULT NULL,
  `status` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `char_id` (`char_id`),
  CONSTRAINT `character_mini_bomb_grid_ibfk_1` FOREIGN KEY (`char_id`) REFERENCES `character_info` (`guid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Data exporting was unselected.

-- Dumping structure for table database_game.character_monster_soul
DROP TABLE IF EXISTS `character_monster_soul`;
CREATE TABLE IF NOT EXISTS `character_monster_soul` (
  `soul_id` int(11) NOT NULL,
  `char_id` int(11) DEFAULT NULL,
  `type` varchar(45) DEFAULT NULL,
  `id` int(11) NOT NULL,
  `amount` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `char_id` (`char_id`),
  CONSTRAINT `character_monster_soul_ibfk_1` FOREIGN KEY (`char_id`) REFERENCES `character_info` (`guid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Data exporting was unselected.

-- Dumping structure for table database_game.character_mu_roomy
DROP TABLE IF EXISTS `character_mu_roomy`;
CREATE TABLE IF NOT EXISTS `character_mu_roomy` (
  `id` int(11) NOT NULL,
  `char_id` int(11) DEFAULT NULL,
  `playing` int(11) DEFAULT NULL,
  `type` varchar(45) DEFAULT NULL,
  `score` varchar(45) DEFAULT NULL,
  `card_count` varchar(45) DEFAULT NULL,
  `special_card_count` int(11) DEFAULT NULL,
  `date` datetime(6) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `char_id` (`char_id`),
  CONSTRAINT `character_mu_roomy_ibfk_1` FOREIGN KEY (`char_id`) REFERENCES `character_info` (`guid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Data exporting was unselected.

-- Dumping structure for table database_game.character_mu_roomy_deck
DROP TABLE IF EXISTS `character_mu_roomy_deck`;
CREATE TABLE IF NOT EXISTS `character_mu_roomy_deck` (
  `id` int(11) NOT NULL,
  `char_id` int(11) DEFAULT NULL,
  `type` varchar(45) DEFAULT NULL,
  `slot` varchar(45) DEFAULT NULL,
  `color` varchar(45) DEFAULT NULL,
  `number` varchar(45) DEFAULT NULL,
  `state` varchar(45) DEFAULT NULL,
  `play_slot` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `char_id` (`char_id`),
  CONSTRAINT `character_mu_roomy_deck_ibfk_1` FOREIGN KEY (`char_id`) REFERENCES `character_info` (`guid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Data exporting was unselected.

-- Dumping structure for table database_game.character_numeric_baseball
DROP TABLE IF EXISTS `character_numeric_baseball`;
CREATE TABLE IF NOT EXISTS `character_numeric_baseball` (
  `id` int(11) NOT NULL,
  `char_id` int(11) DEFAULT NULL,
  `state` varchar(45) DEFAULT NULL,
  `score` varchar(45) DEFAULT NULL,
  `number_1` varchar(45) DEFAULT NULL,
  `number_2` varchar(45) DEFAULT NULL,
  `number_3` varchar(45) DEFAULT NULL,
  `numbers` varchar(45) DEFAULT NULL,
  `strikes` varchar(45) DEFAULT NULL,
  `balls` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `char_id` (`char_id`),
  CONSTRAINT `character_numeric_baseball_ibfk_1` FOREIGN KEY (`char_id`) REFERENCES `character_info` (`guid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Data exporting was unselected.

-- Dumping structure for table database_game.character_quest_evo
DROP TABLE IF EXISTS `character_quest_evo`;
CREATE TABLE IF NOT EXISTS `character_quest_evo` (
  `id` int(11) NOT NULL,
  `char_id` int(11) DEFAULT NULL,
  `state` int(11) DEFAULT NULL,
  `kill_count_1` int(11) DEFAULT NULL,
  `kill_count_2` int(11) DEFAULT NULL,
  `kill_count_3` int(11) DEFAULT NULL,
  `kill_count_4` int(11) DEFAULT NULL,
  `kill_count_5` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `char_id` (`char_id`),
  CONSTRAINT `character_quest_evo_ibfk_1` FOREIGN KEY (`char_id`) REFERENCES `character_info` (`guid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Data exporting was unselected.

-- Dumping structure for table database_game.character_quest_guided
DROP TABLE IF EXISTS `character_quest_guided`;
CREATE TABLE IF NOT EXISTS `character_quest_guided` (
  `id` int(11) NOT NULL,
  `char_id` int(11) DEFAULT NULL,
  `quest` varchar(45) DEFAULT NULL,
  `count` varchar(45) DEFAULT NULL,
  `state` varchar(45) DEFAULT NULL,
  `date` datetime(6) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `char_id` (`char_id`),
  CONSTRAINT `character_quest_guided_ibfk_1` FOREIGN KEY (`char_id`) REFERENCES `character_info` (`guid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Data exporting was unselected.

-- Dumping structure for table database_game.character_quest_mu
DROP TABLE IF EXISTS `character_quest_mu`;
CREATE TABLE IF NOT EXISTS `character_quest_mu` (
  `id` int(11) NOT NULL,
  `char_id` int(11) DEFAULT NULL,
  `quest_id` int(11) DEFAULT NULL,
  `state` varchar(45) DEFAULT NULL,
  `objective` varchar(45) DEFAULT NULL,
  `date` datetime(6) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `char_id` (`char_id`),
  CONSTRAINT `character_quest_mu_ibfk_1` FOREIGN KEY (`char_id`) REFERENCES `character_info` (`guid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Data exporting was unselected.

-- Dumping structure for table database_game.character_restriction
DROP TABLE IF EXISTS `character_restriction`;
CREATE TABLE IF NOT EXISTS `character_restriction` (
  `id` int(11) NOT NULL,
  `char_id` int(11) DEFAULT NULL,
  `restriction` int(11) DEFAULT NULL,
  `time` datetime(6) DEFAULT NULL,
  `admin_name` varchar(45) DEFAULT NULL,
  `reason` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `char_id` (`char_id`),
  CONSTRAINT `character_restriction_ibfk_1` FOREIGN KEY (`char_id`) REFERENCES `character_info` (`guid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Data exporting was unselected.

-- Dumping structure for table database_game.character_score
DROP TABLE IF EXISTS `character_score`;
CREATE TABLE IF NOT EXISTS `character_score` (
  `id` int(11) NOT NULL,
  `char_id` int(11) DEFAULT NULL,
  `type` int(11) DEFAULT NULL,
  `level` int(11) DEFAULT NULL,
  `score` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `char_id` (`char_id`),
  CONSTRAINT `character_score_ibfk_1` FOREIGN KEY (`char_id`) REFERENCES `character_info` (`guid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Data exporting was unselected.

-- Dumping structure for table database_game.character_skill
DROP TABLE IF EXISTS `character_skill`;
CREATE TABLE IF NOT EXISTS `character_skill` (
  `race` tinyint(3) unsigned NOT NULL,
  `skill` smallint(5) unsigned DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Data exporting was unselected.

-- Dumping structure for table database_game.character_specialization
DROP TABLE IF EXISTS `character_specialization`;
CREATE TABLE IF NOT EXISTS `character_specialization` (
  `race` tinyint(3) unsigned NOT NULL,
  `stat` tinyint(3) unsigned DEFAULT NULL,
  `required_stat` tinyint(3) unsigned DEFAULT NULL,
  `required_stat_min` int(11) DEFAULT NULL,
  `required_stat_max` int(11) DEFAULT NULL,
  `percent_min` tinyint(3) unsigned DEFAULT NULL,
  `percent_max` tinyint(3) unsigned DEFAULT NULL,
  `required_stat_limit` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Data exporting was unselected.

-- Dumping structure for table database_game.character_statistics
DROP TABLE IF EXISTS `character_statistics`;
CREATE TABLE IF NOT EXISTS `character_statistics` (
  `statistic_id` int(11) NOT NULL,
  `char_id` int(11) DEFAULT NULL,
  `count` int(11) DEFAULT NULL,
  PRIMARY KEY (`statistic_id`),
  KEY `char_id` (`char_id`),
  CONSTRAINT `character_statistics_ibfk_1` FOREIGN KEY (`char_id`) REFERENCES `character_info` (`guid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Data exporting was unselected.

-- Dumping structure for table database_game.character_stat_fruit
DROP TABLE IF EXISTS `character_stat_fruit`;
CREATE TABLE IF NOT EXISTS `character_stat_fruit` (
  `race` tinyint(3) unsigned NOT NULL,
  `min_level` smallint(6) DEFAULT NULL,
  `max_level` smallint(6) DEFAULT NULL,
  `total_add_points` smallint(5) unsigned DEFAULT NULL,
  `total_minus_points` smallint(5) unsigned DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Data exporting was unselected.

-- Dumping structure for table database_game.character_warp_favorite_list
DROP TABLE IF EXISTS `character_warp_favorite_list`;
CREATE TABLE IF NOT EXISTS `character_warp_favorite_list` (
  `id` int(11) NOT NULL,
  `char_id` int(11) DEFAULT NULL,
  `slot` varchar(45) DEFAULT NULL,
  `data` datetime(6) DEFAULT NULL,
  `warp_id` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `char_id` (`char_id`),
  CONSTRAINT `character_warp_favorite_list_ibfk_1` FOREIGN KEY (`char_id`) REFERENCES `character_info` (`guid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Data exporting was unselected.

-- Dumping structure for table database_game.cheat_scan_whitelist
DROP TABLE IF EXISTS `cheat_scan_whitelist`;
CREATE TABLE IF NOT EXISTS `cheat_scan_whitelist` (
  `name` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Data exporting was unselected.

-- Dumping structure for table database_game.crywolf_data
DROP TABLE IF EXISTS `crywolf_data`;
CREATE TABLE IF NOT EXISTS `crywolf_data` (
  `id` int(11) NOT NULL,
  `state` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Data exporting was unselected.

-- Dumping structure for table database_game.event_arka_war_kill
DROP TABLE IF EXISTS `event_arka_war_kill`;
CREATE TABLE IF NOT EXISTS `event_arka_war_kill` (
  `id` int(11) NOT NULL,
  `char_id` int(11) DEFAULT NULL,
  `char_name` varchar(45) DEFAULT NULL,
  `char_rank` int(11) DEFAULT NULL,
  `player_data_01` int(11) DEFAULT NULL,
  `guild_id_01` int(11) DEFAULT NULL,
  `guild_name_01` int(11) DEFAULT NULL,
  `killer_id` int(11) DEFAULT NULL,
  `killer_name` int(11) DEFAULT NULL,
  `killer_rank` int(11) DEFAULT NULL,
  `player_data_02` int(11) DEFAULT NULL,
  `guild_id_02` int(11) DEFAULT NULL,
  `guild_name_02` int(11) DEFAULT NULL,
  `world` int(11) DEFAULT NULL,
  `world_x` int(11) DEFAULT NULL,
  `world_y` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `char_id` (`char_id`),
  CONSTRAINT `event_arka_war_kill_ibfk_1` FOREIGN KEY (`char_id`) REFERENCES `character_info` (`guid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Data exporting was unselected.

-- Dumping structure for table database_game.event_arka_war_ranking
DROP TABLE IF EXISTS `event_arka_war_ranking`;
CREATE TABLE IF NOT EXISTS `event_arka_war_ranking` (
  `id` int(11) NOT NULL,
  `guild_id_01` int(11) DEFAULT NULL,
  `guild_name_01` varchar(45) DEFAULT NULL,
  `guild_id_02` int(11) DEFAULT NULL,
  `guild_name_02` varchar(45) DEFAULT NULL,
  `character_count` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `guild_id_01` (`guild_id_01`),
  KEY `guild_id_02` (`guild_id_02`),
  CONSTRAINT `event_arka_war_ranking_ibfk_1` FOREIGN KEY (`guild_id_01`) REFERENCES `guild_list` (`guild_id`),
  CONSTRAINT `event_arka_war_ranking_ibfk_2` FOREIGN KEY (`guild_id_02`) REFERENCES `guild_list` (`guild_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Data exporting was unselected.

-- Dumping structure for table database_game.event_castle_siege_kill
DROP TABLE IF EXISTS `event_castle_siege_kill`;
CREATE TABLE IF NOT EXISTS `event_castle_siege_kill` (
  `id` int(11) NOT NULL,
  `char_id` int(11) DEFAULT NULL,
  `char_name` varchar(45) DEFAULT NULL,
  `char_rank` int(11) DEFAULT NULL,
  `state` varchar(45) DEFAULT NULL,
  `player_data_01` int(11) DEFAULT NULL,
  `guild_id_01` int(11) DEFAULT NULL,
  `guild_name_01` int(11) DEFAULT NULL,
  `killer_id` int(11) DEFAULT NULL,
  `killer_name` int(11) DEFAULT NULL,
  `killer_rank` int(11) DEFAULT NULL,
  `player_data_02` int(11) DEFAULT NULL,
  `guild_id_02` int(11) DEFAULT NULL,
  `guild_name_02` int(11) DEFAULT NULL,
  `world` int(11) DEFAULT NULL,
  `world_x` int(11) DEFAULT NULL,
  `world_y` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `char_id` (`char_id`),
  CONSTRAINT `event_castle_siege_kill_ibfk_1` FOREIGN KEY (`char_id`) REFERENCES `character_info` (`guid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Data exporting was unselected.

-- Dumping structure for table database_game.event_castle_siege_ranking
DROP TABLE IF EXISTS `event_castle_siege_ranking`;
CREATE TABLE IF NOT EXISTS `event_castle_siege_ranking` (
  `id` int(11) NOT NULL,
  `guild_id` int(11) DEFAULT NULL,
  `guild_name` varchar(45) DEFAULT NULL,
  `character_count` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `guild_id` (`guild_id`),
  CONSTRAINT `event_castle_siege_ranking_ibfk_1` FOREIGN KEY (`guild_id`) REFERENCES `guild_list` (`guild_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Data exporting was unselected.

-- Dumping structure for table database_game.event_castle_siege_time
DROP TABLE IF EXISTS `event_castle_siege_time`;
CREATE TABLE IF NOT EXISTS `event_castle_siege_time` (
  `id` int(11) NOT NULL,
  `char_id` int(11) DEFAULT NULL,
  `char_name` varchar(45) DEFAULT NULL,
  `char_rank` int(11) DEFAULT NULL,
  `player_data` int(11) DEFAULT NULL,
  `guild_id` int(11) DEFAULT NULL,
  `guild_name` varchar(45) DEFAULT NULL,
  `type` varchar(45) DEFAULT NULL,
  `time` datetime(6) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `char_id` (`char_id`),
  KEY `guild_id` (`guild_id`),
  CONSTRAINT `event_castle_siege_time_ibfk_1` FOREIGN KEY (`char_id`) REFERENCES `character_info` (`guid`),
  CONSTRAINT `event_castle_siege_time_ibfk_2` FOREIGN KEY (`guild_id`) REFERENCES `guild_list` (`guild_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Data exporting was unselected.

-- Dumping structure for table database_game.event_contribution_reward
DROP TABLE IF EXISTS `event_contribution_reward`;
CREATE TABLE IF NOT EXISTS `event_contribution_reward` (
  `event_id` tinyint(3) unsigned NOT NULL,
  `event_ground` tinyint(3) unsigned DEFAULT NULL,
  `contribution_min` int(11) DEFAULT NULL,
  `contribution_max` int(11) DEFAULT NULL,
  `reward_box` smallint(5) unsigned DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Data exporting was unselected.

-- Dumping structure for table database_game.event_devil_square_ranking
DROP TABLE IF EXISTS `event_devil_square_ranking`;
CREATE TABLE IF NOT EXISTS `event_devil_square_ranking` (
  `ground` tinyint(3) unsigned NOT NULL,
  `position` tinyint(3) unsigned NOT NULL,
  `experience` int(11) DEFAULT NULL,
  `zen` int(10) unsigned DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Data exporting was unselected.

-- Dumping structure for table database_game.event_doppelganger_level
DROP TABLE IF EXISTS `event_doppelganger_level`;
CREATE TABLE IF NOT EXISTS `event_doppelganger_level` (
  `guid` int(10) unsigned NOT NULL,
  `level_min` smallint(6) DEFAULT NULL,
  `level_max` smallint(6) DEFAULT NULL,
  `experience` int(11) DEFAULT NULL,
  `larva_rate` smallint(5) unsigned DEFAULT NULL,
  `larva_count` int(11) DEFAULT NULL,
  `silver_chest_item_bag` text DEFAULT NULL,
  `golden_chest_item_bag` text DEFAULT NULL,
  PRIMARY KEY (`guid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Data exporting was unselected.

-- Dumping structure for table database_game.event_doppelganger_monster_settings
DROP TABLE IF EXISTS `event_doppelganger_monster_settings`;
CREATE TABLE IF NOT EXISTS `event_doppelganger_monster_settings` (
  `monster` smallint(5) unsigned NOT NULL,
  `level` smallint(6) DEFAULT NULL,
  `life` int(11) DEFAULT NULL,
  `attack_min` int(11) DEFAULT NULL,
  `attack_max` int(11) DEFAULT NULL,
  `attack_rate` int(11) DEFAULT NULL,
  `defense` int(11) DEFAULT NULL,
  `defense_rate` int(11) DEFAULT NULL,
  `item_bag` text DEFAULT NULL,
  PRIMARY KEY (`monster`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Data exporting was unselected.

-- Dumping structure for table database_game.event_dungeon
DROP TABLE IF EXISTS `event_dungeon`;
CREATE TABLE IF NOT EXISTS `event_dungeon` (
  `id` tinyint(3) unsigned NOT NULL,
  `world` smallint(5) unsigned DEFAULT NULL,
  `flags` int(10) unsigned DEFAULT NULL,
  `gate` smallint(5) unsigned DEFAULT NULL,
  `main_chest_x` smallint(6) DEFAULT NULL,
  `main_chest_y` smallint(6) DEFAULT NULL,
  `chest1_x` smallint(6) DEFAULT NULL,
  `chest1_y` smallint(6) DEFAULT NULL,
  `chest2_x` smallint(6) DEFAULT NULL,
  `chest2_y` smallint(6) DEFAULT NULL,
  `chest3_x` smallint(6) DEFAULT NULL,
  `chest3_y` smallint(6) DEFAULT NULL,
  `chest4_x` smallint(6) DEFAULT NULL,
  `chest4_y` smallint(6) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Data exporting was unselected.

-- Dumping structure for table database_game.event_dungeon_instance
DROP TABLE IF EXISTS `event_dungeon_instance`;
CREATE TABLE IF NOT EXISTS `event_dungeon_instance` (
  `dg_id` int(11) NOT NULL,
  `char_id` int(11) DEFAULT NULL,
  `id` varchar(45) DEFAULT NULL,
  `time` datetime(6) DEFAULT NULL,
  PRIMARY KEY (`dg_id`),
  KEY `char_id` (`char_id`),
  CONSTRAINT `event_dungeon_instance_ibfk_1` FOREIGN KEY (`char_id`) REFERENCES `character_info` (`guid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Data exporting was unselected.

-- Dumping structure for table database_game.event_dungeon_level
DROP TABLE IF EXISTS `event_dungeon_level`;
CREATE TABLE IF NOT EXISTS `event_dungeon_level` (
  `id` smallint(5) unsigned NOT NULL,
  `min_level` smallint(6) DEFAULT NULL,
  `max_level` smallint(6) DEFAULT NULL,
  `level` float DEFAULT NULL,
  `hp` float DEFAULT NULL,
  `damage` float DEFAULT NULL,
  `defense` float DEFAULT NULL,
  `attack_success` float DEFAULT NULL,
  `defense_success` float DEFAULT NULL,
  `elemental_damage` float DEFAULT NULL,
  `elemental_defense` float DEFAULT NULL,
  `elemental_attack_success` float DEFAULT NULL,
  `elemental_defense_success` float DEFAULT NULL,
  `item_bag` text DEFAULT NULL,
  `item_bag_boss` text DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Data exporting was unselected.

-- Dumping structure for table database_game.event_enter_count
DROP TABLE IF EXISTS `event_enter_count`;
CREATE TABLE IF NOT EXISTS `event_enter_count` (
  `event_id` tinyint(3) unsigned NOT NULL,
  `count` tinyint(3) unsigned DEFAULT NULL,
  PRIMARY KEY (`event_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Data exporting was unselected.

-- Dumping structure for table database_game.event_imperial_fortress_level
DROP TABLE IF EXISTS `event_imperial_fortress_level`;
CREATE TABLE IF NOT EXISTS `event_imperial_fortress_level` (
  `guid` int(10) unsigned NOT NULL,
  `level_min` smallint(6) DEFAULT NULL,
  `level_max` smallint(6) DEFAULT NULL,
  `experience` int(11) DEFAULT NULL,
  PRIMARY KEY (`guid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Data exporting was unselected.

-- Dumping structure for table database_game.event_imperial_fortress_monster_settings
DROP TABLE IF EXISTS `event_imperial_fortress_monster_settings`;
CREATE TABLE IF NOT EXISTS `event_imperial_fortress_monster_settings` (
  `level` int(10) unsigned NOT NULL,
  `monster_id` smallint(5) unsigned DEFAULT NULL,
  `monster_level` smallint(5) unsigned DEFAULT NULL,
  `monster_life` int(11) DEFAULT NULL,
  `monster_mana` int(11) DEFAULT NULL,
  `monster_shield` int(11) DEFAULT NULL,
  `monster_stamina` int(11) DEFAULT NULL,
  `monster_attack_min` int(11) DEFAULT NULL,
  `monster_attack_max` int(11) DEFAULT NULL,
  `monster_attack_rate` int(11) DEFAULT NULL,
  `monster_defense` int(11) DEFAULT NULL,
  `monster_defense_rate` int(11) DEFAULT NULL,
  `monster_item_bag` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Data exporting was unselected.

-- Dumping structure for table database_game.event_imperial_fortress_trap
DROP TABLE IF EXISTS `event_imperial_fortress_trap`;
CREATE TABLE IF NOT EXISTS `event_imperial_fortress_trap` (
  `day` tinyint(3) unsigned NOT NULL,
  `x1` smallint(6) DEFAULT NULL,
  `y1` smallint(6) DEFAULT NULL,
  `x2` smallint(6) DEFAULT NULL,
  `y2` smallint(6) DEFAULT NULL,
  `damage` float DEFAULT NULL,
  `element` tinyint(3) unsigned DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Data exporting was unselected.

-- Dumping structure for table database_game.event_invasion_data
DROP TABLE IF EXISTS `event_invasion_data`;
CREATE TABLE IF NOT EXISTS `event_invasion_data` (
  `invasion` int(10) unsigned NOT NULL,
  `name` text DEFAULT NULL,
  `on_notify` text DEFAULT NULL,
  `on_start` text DEFAULT NULL,
  `on_end` text DEFAULT NULL,
  `on_timeout` text DEFAULT NULL,
  `on_kill_boss` text DEFAULT NULL,
  PRIMARY KEY (`invasion`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Data exporting was unselected.

-- Dumping structure for table database_game.event_invasion_group
DROP TABLE IF EXISTS `event_invasion_group`;
CREATE TABLE IF NOT EXISTS `event_invasion_group` (
  `invasion` int(10) unsigned NOT NULL,
  `group` int(10) unsigned NOT NULL,
  `id` int(10) unsigned DEFAULT NULL,
  `rate` tinyint(3) unsigned DEFAULT NULL,
  `flag` int(10) unsigned DEFAULT NULL,
  `world` smallint(5) unsigned DEFAULT NULL,
  `x1` smallint(6) DEFAULT NULL,
  `y1` smallint(6) DEFAULT NULL,
  `x2` smallint(6) DEFAULT NULL,
  `y2` smallint(6) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Data exporting was unselected.

-- Dumping structure for table database_game.event_jewel_bingo_ranking
DROP TABLE IF EXISTS `event_jewel_bingo_ranking`;
CREATE TABLE IF NOT EXISTS `event_jewel_bingo_ranking` (
  `id` int(11) NOT NULL,
  `char_id` int(11) DEFAULT NULL,
  `type` varchar(45) DEFAULT NULL,
  `score1` varchar(45) DEFAULT NULL,
  `score2` varchar(45) DEFAULT NULL,
  `score3` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `char_id` (`char_id`),
  CONSTRAINT `event_jewel_bingo_ranking_ibfk_1` FOREIGN KEY (`char_id`) REFERENCES `character_info` (`guid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Data exporting was unselected.

-- Dumping structure for table database_game.event_jewel_bingo_reward
DROP TABLE IF EXISTS `event_jewel_bingo_reward`;
CREATE TABLE IF NOT EXISTS `event_jewel_bingo_reward` (
  `type` tinyint(3) unsigned NOT NULL,
  `score_min` int(11) DEFAULT NULL,
  `score_max` int(11) DEFAULT NULL,
  `item` smallint(5) unsigned DEFAULT NULL,
  `level` tinyint(3) unsigned DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Data exporting was unselected.

-- Dumping structure for table database_game.event_labyrinth_area
DROP TABLE IF EXISTS `event_labyrinth_area`;
CREATE TABLE IF NOT EXISTS `event_labyrinth_area` (
  `index` tinyint(3) unsigned NOT NULL,
  `stage` tinyint(3) unsigned DEFAULT NULL,
  `row_count` tinyint(3) unsigned DEFAULT NULL,
  `column_count` tinyint(3) unsigned DEFAULT NULL,
  PRIMARY KEY (`index`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Data exporting was unselected.

-- Dumping structure for table database_game.event_labyrinth_area_data
DROP TABLE IF EXISTS `event_labyrinth_area_data`;
CREATE TABLE IF NOT EXISTS `event_labyrinth_area_data` (
  `area_index` tinyint(3) unsigned NOT NULL,
  `sub_index` tinyint(3) unsigned DEFAULT NULL,
  `index` tinyint(3) unsigned DEFAULT NULL,
  `world_index` tinyint(3) unsigned DEFAULT NULL,
  `area_type` tinyint(3) unsigned DEFAULT NULL,
  `mission_id` tinyint(3) unsigned DEFAULT NULL,
  `gate_1` tinyint(3) unsigned DEFAULT NULL,
  `gate_2` tinyint(3) unsigned DEFAULT NULL,
  `gate_3` tinyint(3) unsigned DEFAULT NULL,
  `gate_4` tinyint(3) unsigned DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Data exporting was unselected.

-- Dumping structure for table database_game.event_labyrinth_info
DROP TABLE IF EXISTS `event_labyrinth_info`;
CREATE TABLE IF NOT EXISTS `event_labyrinth_info` (
  `index` tinyint(3) unsigned NOT NULL,
  `world` smallint(5) unsigned NOT NULL,
  `x1` smallint(6) DEFAULT NULL,
  `y1` smallint(6) DEFAULT NULL,
  `x2` smallint(6) DEFAULT NULL,
  `y2` smallint(6) DEFAULT NULL,
  PRIMARY KEY (`index`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Data exporting was unselected.

-- Dumping structure for table database_game.event_labyrinth_league
DROP TABLE IF EXISTS `event_labyrinth_league`;
CREATE TABLE IF NOT EXISTS `event_labyrinth_league` (
  `id` int(11) NOT NULL,
  `category` varchar(45) DEFAULT NULL,
  `char_id` int(11) DEFAULT NULL,
  `char_name` varchar(45) DEFAULT NULL,
  `char_class` varchar(45) DEFAULT NULL,
  `score` varchar(45) DEFAULT NULL,
  `league_score` varchar(45) DEFAULT NULL,
  `time` datetime(6) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `char_id` (`char_id`),
  CONSTRAINT `event_labyrinth_league_ibfk_1` FOREIGN KEY (`char_id`) REFERENCES `character_info` (`guid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Data exporting was unselected.

-- Dumping structure for table database_game.event_labyrinth_level
DROP TABLE IF EXISTS `event_labyrinth_level`;
CREATE TABLE IF NOT EXISTS `event_labyrinth_level` (
  `id` smallint(5) unsigned NOT NULL,
  `level` int(11) DEFAULT NULL,
  `first_score` int(11) DEFAULT NULL,
  `score` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Data exporting was unselected.

-- Dumping structure for table database_game.event_labyrinth_mission
DROP TABLE IF EXISTS `event_labyrinth_mission`;
CREATE TABLE IF NOT EXISTS `event_labyrinth_mission` (
  `area_type` tinyint(3) unsigned NOT NULL,
  `index` tinyint(3) unsigned NOT NULL,
  `mission_type_1` tinyint(3) unsigned DEFAULT NULL,
  `mission_value_1` int(11) DEFAULT NULL,
  `mission_type_2` tinyint(3) unsigned DEFAULT NULL,
  `mission_value_2` int(11) DEFAULT NULL,
  `mission_type_3` tinyint(3) unsigned DEFAULT NULL,
  `mission_value_3` int(11) DEFAULT NULL,
  `mission_type_4` tinyint(3) unsigned DEFAULT NULL,
  `mission_value_4` int(11) DEFAULT NULL,
  `mission_type_5` tinyint(3) unsigned DEFAULT NULL,
  `mission_value_5` int(11) DEFAULT NULL,
  `mission_type_6` tinyint(3) unsigned DEFAULT NULL,
  `mission_value_6` int(11) DEFAULT NULL,
  `monster_1` smallint(5) unsigned DEFAULT NULL,
  `count_1` int(11) DEFAULT NULL,
  `monster_2` smallint(5) unsigned DEFAULT NULL,
  `count_2` int(11) DEFAULT NULL,
  `monster_3` smallint(5) unsigned DEFAULT NULL,
  `count_3` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Data exporting was unselected.

-- Dumping structure for table database_game.event_labyrinth_monster
DROP TABLE IF EXISTS `event_labyrinth_monster`;
CREATE TABLE IF NOT EXISTS `event_labyrinth_monster` (
  `id` smallint(5) unsigned NOT NULL,
  `level` float DEFAULT NULL,
  `hp` float DEFAULT NULL,
  `damage` float DEFAULT NULL,
  `defense` float DEFAULT NULL,
  `attack_success_rate` float DEFAULT NULL,
  `defense_success_rate` float DEFAULT NULL,
  `elemental_damage` float DEFAULT NULL,
  `elemental_defense` float DEFAULT NULL,
  `elemental_attack_success_rate` float DEFAULT NULL,
  `elemental_defense_success_rate` float DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Data exporting was unselected.

-- Dumping structure for table database_game.event_labyrinth_reward
DROP TABLE IF EXISTS `event_labyrinth_reward`;
CREATE TABLE IF NOT EXISTS `event_labyrinth_reward` (
  `category` tinyint(3) unsigned NOT NULL,
  `rank` tinyint(3) unsigned DEFAULT NULL,
  `class` tinyint(3) unsigned DEFAULT NULL,
  `type` tinyint(3) unsigned DEFAULT NULL,
  `index` smallint(5) unsigned DEFAULT NULL,
  `level` tinyint(3) unsigned DEFAULT NULL,
  `durability` tinyint(3) unsigned DEFAULT NULL,
  `skill` tinyint(3) unsigned DEFAULT NULL,
  `luck` tinyint(3) unsigned DEFAULT NULL,
  `option` tinyint(3) unsigned DEFAULT NULL,
  `excellent` tinyint(3) unsigned DEFAULT NULL,
  `ancient` tinyint(3) unsigned DEFAULT NULL,
  `db_flags` int(10) unsigned DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Data exporting was unselected.

-- Dumping structure for table database_game.event_labyrinth_schedule
DROP TABLE IF EXISTS `event_labyrinth_schedule`;
CREATE TABLE IF NOT EXISTS `event_labyrinth_schedule` (
  `id` int(11) NOT NULL,
  `server` varchar(45) DEFAULT NULL,
  `state` varchar(45) DEFAULT NULL,
  `start_date` datetime(6) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Data exporting was unselected.

-- Dumping structure for table database_game.event_level
DROP TABLE IF EXISTS `event_level`;
CREATE TABLE IF NOT EXISTS `event_level` (
  `id` tinyint(3) unsigned NOT NULL,
  `ground` tinyint(3) unsigned DEFAULT NULL,
  `normal_level_min` smallint(6) DEFAULT NULL,
  `normal_level_max` smallint(6) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Data exporting was unselected.

-- Dumping structure for table database_game.event_manager
DROP TABLE IF EXISTS `event_manager`;
CREATE TABLE IF NOT EXISTS `event_manager` (
  `server` smallint(5) unsigned NOT NULL,
  `event_id` tinyint(3) unsigned DEFAULT NULL,
  `invasion` int(10) unsigned DEFAULT NULL,
  `duration` int(10) unsigned DEFAULT NULL,
  `notify_time` int(10) unsigned DEFAULT NULL,
  `hour` tinyint(3) unsigned DEFAULT NULL,
  `minute` tinyint(3) unsigned DEFAULT NULL,
  `day_of_week` tinyint(3) unsigned DEFAULT NULL,
  `day_of_month` tinyint(3) unsigned DEFAULT NULL,
  `season_event` tinyint(3) unsigned DEFAULT NULL,
  `exclusive_server` smallint(6) NOT NULL DEFAULT -1
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Data exporting was unselected.

-- Dumping structure for table database_game.event_mini_bomb_ranking
DROP TABLE IF EXISTS `event_mini_bomb_ranking`;
CREATE TABLE IF NOT EXISTS `event_mini_bomb_ranking` (
  `id` int(11) NOT NULL,
  `char_id` int(11) DEFAULT NULL,
  `state` varchar(45) DEFAULT NULL,
  `score` varchar(45) DEFAULT NULL,
  `bombs_founded` int(11) DEFAULT NULL,
  `bombs_failed` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `char_id` (`char_id`),
  CONSTRAINT `event_mini_bomb_ranking_ibfk_1` FOREIGN KEY (`char_id`) REFERENCES `character_info` (`guid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Data exporting was unselected.

-- Dumping structure for table database_game.event_mini_bomb_reward
DROP TABLE IF EXISTS `event_mini_bomb_reward`;
CREATE TABLE IF NOT EXISTS `event_mini_bomb_reward` (
  `score_min` smallint(5) unsigned NOT NULL,
  `score_max` smallint(5) unsigned DEFAULT NULL,
  `item` smallint(5) unsigned DEFAULT NULL,
  `level` tinyint(3) unsigned DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Data exporting was unselected.

-- Dumping structure for table database_game.event_mu_roomy_ranking
DROP TABLE IF EXISTS `event_mu_roomy_ranking`;
CREATE TABLE IF NOT EXISTS `event_mu_roomy_ranking` (
  `id` int(11) NOT NULL,
  `char_id` int(11) DEFAULT NULL,
  `type` varchar(45) DEFAULT NULL,
  `score` varchar(45) DEFAULT NULL,
  `remain_card` int(11) DEFAULT NULL,
  `remain_special_card` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `char_id` (`char_id`),
  CONSTRAINT `event_mu_roomy_ranking_ibfk_1` FOREIGN KEY (`char_id`) REFERENCES `character_info` (`guid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Data exporting was unselected.

-- Dumping structure for table database_game.event_mu_roomy_reward
DROP TABLE IF EXISTS `event_mu_roomy_reward`;
CREATE TABLE IF NOT EXISTS `event_mu_roomy_reward` (
  `type` tinyint(3) unsigned NOT NULL,
  `score_min` smallint(5) unsigned DEFAULT NULL,
  `score_max` smallint(5) unsigned DEFAULT NULL,
  `item` smallint(5) unsigned DEFAULT NULL,
  `level` tinyint(3) unsigned DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Data exporting was unselected.

-- Dumping structure for table database_game.event_numeric_baseball_ranking
DROP TABLE IF EXISTS `event_numeric_baseball_ranking`;
CREATE TABLE IF NOT EXISTS `event_numeric_baseball_ranking` (
  `id` int(11) NOT NULL,
  `char_id` int(11) DEFAULT NULL,
  `score` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `char_id` (`char_id`),
  CONSTRAINT `event_numeric_baseball_ranking_ibfk_1` FOREIGN KEY (`char_id`) REFERENCES `character_info` (`guid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Data exporting was unselected.

-- Dumping structure for table database_game.event_numeric_baseball_reward
DROP TABLE IF EXISTS `event_numeric_baseball_reward`;
CREATE TABLE IF NOT EXISTS `event_numeric_baseball_reward` (
  `score_min` int(11) NOT NULL,
  `score_max` int(11) NOT NULL,
  `item` smallint(5) unsigned DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Data exporting was unselected.

-- Dumping structure for table database_game.event_race_ranking
DROP TABLE IF EXISTS `event_race_ranking`;
CREATE TABLE IF NOT EXISTS `event_race_ranking` (
  `id` int(11) NOT NULL,
  `char_id` int(11) DEFAULT NULL,
  `race` varchar(45) DEFAULT NULL,
  `start` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `char_id` (`char_id`),
  CONSTRAINT `event_race_ranking_ibfk_1` FOREIGN KEY (`char_id`) REFERENCES `character_info` (`guid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Data exporting was unselected.

-- Dumping structure for table database_game.event_ranking
DROP TABLE IF EXISTS `event_ranking`;
CREATE TABLE IF NOT EXISTS `event_ranking` (
  `event_id` int(11) NOT NULL,
  `event_ground` int(11) DEFAULT NULL,
  `char_id` int(11) DEFAULT NULL,
  `score` int(11) DEFAULT NULL,
  PRIMARY KEY (`event_id`),
  KEY `char_id` (`char_id`),
  CONSTRAINT `event_ranking_ibfk_1` FOREIGN KEY (`char_id`) REFERENCES `character_info` (`guid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Data exporting was unselected.

-- Dumping structure for table database_game.event_ranking_labyrinth
DROP TABLE IF EXISTS `event_ranking_labyrinth`;
CREATE TABLE IF NOT EXISTS `event_ranking_labyrinth` (
  `id` int(11) NOT NULL,
  `char_id` int(11) DEFAULT NULL,
  `level` int(11) DEFAULT NULL,
  `stage` int(11) DEFAULT NULL,
  `index` varchar(45) DEFAULT NULL,
  `killed_monsters` int(11) DEFAULT NULL,
  `earned_experience` int(11) DEFAULT NULL,
  `completed_missions` int(11) DEFAULT NULL,
  `score` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `char_id` (`char_id`),
  CONSTRAINT `event_ranking_labyrinth_ibfk_1` FOREIGN KEY (`char_id`) REFERENCES `character_info` (`guid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Data exporting was unselected.

-- Dumping structure for table database_game.event_scramble_ranking
DROP TABLE IF EXISTS `event_scramble_ranking`;
CREATE TABLE IF NOT EXISTS `event_scramble_ranking` (
  `id` int(11) NOT NULL,
  `char_id` int(11) DEFAULT NULL,
  `word` varchar(45) DEFAULT NULL,
  `shuffle_word` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `char_id` (`char_id`),
  CONSTRAINT `event_scramble_ranking_ibfk_1` FOREIGN KEY (`char_id`) REFERENCES `character_info` (`guid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Data exporting was unselected.

-- Dumping structure for table database_game.event_season_manager
DROP TABLE IF EXISTS `event_season_manager`;
CREATE TABLE IF NOT EXISTS `event_season_manager` (
  `event` tinyint(3) unsigned NOT NULL,
  `name` text DEFAULT NULL,
  `start_date` bigint(20) unsigned DEFAULT NULL,
  `end_date` bigint(20) unsigned DEFAULT NULL,
  `ocurrence` int(10) unsigned DEFAULT NULL,
  `duration` int(10) unsigned DEFAULT NULL,
  `start_message` text DEFAULT NULL,
  `end_message` text DEFAULT NULL,
  PRIMARY KEY (`event`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Data exporting was unselected.

-- Dumping structure for table database_game.event_tormented_square_ranking
DROP TABLE IF EXISTS `event_tormented_square_ranking`;
CREATE TABLE IF NOT EXISTS `event_tormented_square_ranking` (
  `ground` tinyint(3) unsigned NOT NULL,
  `rank` tinyint(3) unsigned NOT NULL,
  `reward` smallint(5) unsigned NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Data exporting was unselected.

-- Dumping structure for table database_game.event_tormented_square_stage
DROP TABLE IF EXISTS `event_tormented_square_stage`;
CREATE TABLE IF NOT EXISTS `event_tormented_square_stage` (
  `ground` tinyint(3) unsigned NOT NULL,
  `stage` tinyint(3) unsigned NOT NULL,
  `standby` int(11) NOT NULL,
  `duration` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Data exporting was unselected.

-- Dumping structure for table database_game.evomon
DROP TABLE IF EXISTS `evomon`;
CREATE TABLE IF NOT EXISTS `evomon` (
  `id` tinyint(3) unsigned NOT NULL,
  `monster` smallint(5) unsigned DEFAULT NULL,
  `level` tinyint(3) unsigned DEFAULT NULL,
  `life` int(11) DEFAULT NULL,
  `attack_damage_min` int(11) DEFAULT NULL,
  `attack_damage_max` int(11) DEFAULT NULL,
  `attack_success_rate` int(11) DEFAULT NULL,
  `defense` int(11) DEFAULT NULL,
  `defense_success_rate` int(11) DEFAULT NULL,
  `next_id` tinyint(3) unsigned DEFAULT NULL,
  `next_id_rate` smallint(5) unsigned DEFAULT NULL,
  `special_rate` smallint(5) unsigned DEFAULT NULL,
  `special_monster` smallint(5) unsigned DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Data exporting was unselected.

-- Dumping structure for table database_game.evomon_reward
DROP TABLE IF EXISTS `evomon_reward`;
CREATE TABLE IF NOT EXISTS `evomon_reward` (
  `score_min` int(10) unsigned NOT NULL,
  `score_max` int(11) NOT NULL,
  `reward_type` tinyint(3) unsigned DEFAULT NULL,
  `reward_index` smallint(5) unsigned DEFAULT NULL,
  `reward_count` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Data exporting was unselected.

-- Dumping structure for table database_game.experience_majestic
DROP TABLE IF EXISTS `experience_majestic`;
CREATE TABLE IF NOT EXISTS `experience_majestic` (
  `level` smallint(5) unsigned NOT NULL,
  `experience` bigint(20) NOT NULL,
  `accumulated_experience` bigint(20) NOT NULL,
  PRIMARY KEY (`level`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Data exporting was unselected.

-- Dumping structure for table database_game.experience_master
DROP TABLE IF EXISTS `experience_master`;
CREATE TABLE IF NOT EXISTS `experience_master` (
  `level` smallint(5) unsigned NOT NULL,
  `experience` bigint(20) NOT NULL,
  `accumulated_experience` bigint(20) NOT NULL,
  PRIMARY KEY (`level`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Data exporting was unselected.

-- Dumping structure for table database_game.experience_normal
DROP TABLE IF EXISTS `experience_normal`;
CREATE TABLE IF NOT EXISTS `experience_normal` (
  `level` smallint(5) unsigned NOT NULL,
  `experience` bigint(20) NOT NULL,
  `accumulated_experience` bigint(20) NOT NULL,
  PRIMARY KEY (`level`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Data exporting was unselected.

-- Dumping structure for table database_game.filter_text
DROP TABLE IF EXISTS `filter_text`;
CREATE TABLE IF NOT EXISTS `filter_text` (
  `word` text NOT NULL,
  `flags` tinyint(3) unsigned NOT NULL,
  `action` tinyint(3) unsigned NOT NULL,
  `replace` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Data exporting was unselected.

-- Dumping structure for table database_game.formula_data
DROP TABLE IF EXISTS `formula_data`;
CREATE TABLE IF NOT EXISTS `formula_data` (
  `type` tinyint(3) unsigned NOT NULL,
  `id` smallint(5) unsigned NOT NULL,
  `formula` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Data exporting was unselected.

-- Dumping structure for table database_game.gate_template
DROP TABLE IF EXISTS `gate_template`;
CREATE TABLE IF NOT EXISTS `gate_template` (
  `id` smallint(5) unsigned NOT NULL,
  `flag` tinyint(3) unsigned DEFAULT NULL,
  `world` smallint(5) unsigned DEFAULT NULL,
  `x1` smallint(6) DEFAULT NULL,
  `y1` smallint(6) DEFAULT NULL,
  `x2` smallint(6) DEFAULT NULL,
  `y2` smallint(6) DEFAULT NULL,
  `target_id` smallint(5) unsigned DEFAULT NULL,
  `direction` tinyint(3) unsigned NOT NULL,
  `min_level` smallint(6) DEFAULT NULL,
  `description` text DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Data exporting was unselected.

-- Dumping structure for table database_game.gen_kill_point
DROP TABLE IF EXISTS `gen_kill_point`;
CREATE TABLE IF NOT EXISTS `gen_kill_point` (
  `type` tinyint(3) unsigned NOT NULL,
  `min` smallint(6) DEFAULT NULL,
  `max` smallint(6) DEFAULT NULL,
  `points_add_1` int(11) DEFAULT NULL,
  `points_add_2` int(11) DEFAULT NULL,
  `points_add_3` int(11) DEFAULT NULL,
  `points_add_4` int(11) DEFAULT NULL,
  `points_add_5` int(11) DEFAULT NULL,
  `points_dec_1` int(11) DEFAULT NULL,
  `points_dec_2` int(11) DEFAULT NULL,
  `points_dec_3` int(11) DEFAULT NULL,
  `points_dec_4` int(11) DEFAULT NULL,
  `points_dec_5` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Data exporting was unselected.

-- Dumping structure for table database_game.gen_ranking
DROP TABLE IF EXISTS `gen_ranking`;
CREATE TABLE IF NOT EXISTS `gen_ranking` (
  `family` tinyint(3) unsigned NOT NULL,
  `level` tinyint(3) unsigned NOT NULL,
  `type` tinyint(3) unsigned NOT NULL,
  `value` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Data exporting was unselected.

-- Dumping structure for table database_game.gen_reward
DROP TABLE IF EXISTS `gen_reward`;
CREATE TABLE IF NOT EXISTS `gen_reward` (
  `family` tinyint(3) unsigned NOT NULL,
  `level` tinyint(3) unsigned NOT NULL,
  `type` tinyint(3) unsigned NOT NULL,
  `reward_type` int(10) unsigned DEFAULT NULL,
  `reward_index` int(10) unsigned DEFAULT NULL,
  `reward_level` int(10) unsigned DEFAULT NULL,
  `reward_count` int(10) unsigned DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Data exporting was unselected.

-- Dumping structure for table database_game.goblin_points_data
DROP TABLE IF EXISTS `goblin_points_data`;
CREATE TABLE IF NOT EXISTS `goblin_points_data` (
  `monster_level_min` smallint(6) NOT NULL,
  `monster_level_max` smallint(6) NOT NULL,
  `player_level_min` smallint(6) NOT NULL,
  `player_level_max` smallint(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Data exporting was unselected.

-- Dumping structure for table database_game.guild_list
DROP TABLE IF EXISTS `guild_list`;
CREATE TABLE IF NOT EXISTS `guild_list` (
  `guild_id` int(11) NOT NULL,
  `guid` int(11) DEFAULT NULL,
  `name` varchar(45) DEFAULT NULL,
  `emblem` varbinary(32) DEFAULT NULL,
  `notice` varchar(45) DEFAULT NULL,
  `alliance` int(11) DEFAULT NULL,
  `hostil` int(11) DEFAULT NULL,
  `score` int(11) DEFAULT NULL,
  PRIMARY KEY (`guild_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Data exporting was unselected.

-- Dumping structure for table database_game.guild_matching
DROP TABLE IF EXISTS `guild_matching`;
CREATE TABLE IF NOT EXISTS `guild_matching` (
  `id` int(11) NOT NULL,
  `guild_id` int(11) DEFAULT NULL,
  `text` varchar(45) DEFAULT NULL,
  `interest_type` int(11) DEFAULT NULL,
  `level_range` int(11) DEFAULT NULL,
  `class_type` int(11) DEFAULT NULL,
  `board_number` int(11) DEFAULT NULL,
  `level` int(11) DEFAULT NULL,
  `level_master` int(11) DEFAULT NULL,
  `race` int(11) DEFAULT NULL,
  `family` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Data exporting was unselected.

-- Dumping structure for table database_game.guild_members
DROP TABLE IF EXISTS `guild_members`;
CREATE TABLE IF NOT EXISTS `guild_members` (
  `id` int(11) NOT NULL,
  `char_id` int(11) DEFAULT NULL,
  `guild_id` int(11) DEFAULT NULL,
  `ranking` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `char_id` (`char_id`),
  KEY `guild_id` (`guild_id`),
  CONSTRAINT `guild_members_ibfk_1` FOREIGN KEY (`char_id`) REFERENCES `character_info` (`guid`),
  CONSTRAINT `guild_members_ibfk_2` FOREIGN KEY (`guild_id`) REFERENCES `guild_list` (`guild_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Data exporting was unselected.

-- Dumping structure for table database_game.guild_score
DROP TABLE IF EXISTS `guild_score`;
CREATE TABLE IF NOT EXISTS `guild_score` (
  `id` int(11) NOT NULL,
  `guild_id` int(11) DEFAULT NULL,
  `score` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `guild_id` (`guild_id`),
  CONSTRAINT `guild_score_ibfk_1` FOREIGN KEY (`guild_id`) REFERENCES `guild_list` (`guild_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Data exporting was unselected.

-- Dumping structure for table database_game.item_data
DROP TABLE IF EXISTS `item_data`;
CREATE TABLE IF NOT EXISTS `item_data` (
  `id` int(11) NOT NULL,
  `box` int(11) DEFAULT NULL,
  `slot` int(11) DEFAULT NULL,
  `entry` int(11) DEFAULT NULL,
  `server` int(11) DEFAULT NULL,
  `serial` int(11) DEFAULT NULL,
  `serial_cash_shop` int(11) DEFAULT NULL,
  `level` int(11) DEFAULT NULL,
  `durability` int(11) DEFAULT NULL,
  `durability_state` int(11) DEFAULT NULL,
  `skill` int(11) DEFAULT NULL,
  `luck` int(11) DEFAULT NULL,
  `option` int(11) DEFAULT NULL,
  `excellent` int(11) DEFAULT NULL,
  `ancient` int(11) DEFAULT NULL,
  `option_380` int(11) DEFAULT NULL,
  `harmony` int(11) DEFAULT NULL,
  `socket_1` int(11) DEFAULT NULL,
  `socket_2` int(11) DEFAULT NULL,
  `socket_3` int(11) DEFAULT NULL,
  `socket_4` int(11) DEFAULT NULL,
  `socket_5` int(11) DEFAULT NULL,
  `socket_bonus` int(11) DEFAULT NULL,
  `locked` int(11) DEFAULT NULL,
  `data_1` int(11) DEFAULT NULL,
  `data_2` int(11) DEFAULT NULL,
  `data_3` int(11) DEFAULT NULL,
  `personal_store_price` int(11) DEFAULT NULL,
  `personal_store_job` int(11) DEFAULT NULL,
  `personal_store_jos` int(11) DEFAULT NULL,
  `expire_date` datetime(6) DEFAULT NULL,
  `flags` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Data exporting was unselected.

-- Dumping structure for table database_game.item_pentagram_data
DROP TABLE IF EXISTS `item_pentagram_data`;
CREATE TABLE IF NOT EXISTS `item_pentagram_data` (
  `id` int(11) NOT NULL,
  `type` int(11) DEFAULT NULL,
  `index` int(11) DEFAULT NULL,
  `attribute` int(11) DEFAULT NULL,
  `tem_type` int(11) DEFAULT NULL,
  `item_index` int(11) DEFAULT NULL,
  `item_level` int(11) DEFAULT NULL,
  `option_index_rank_1` int(11) DEFAULT NULL,
  `option_level_rank_1` int(11) DEFAULT NULL,
  `option_index_rank_2` int(11) DEFAULT NULL,
  `option_level_rank_2` int(11) DEFAULT NULL,
  `option_index_rank_3` int(11) DEFAULT NULL,
  `option_level_rank_3` int(11) DEFAULT NULL,
  `option_index_rank_4` int(11) DEFAULT NULL,
  `option_level_rank_4` int(11) DEFAULT NULL,
  `option_index_rank_5` int(11) DEFAULT NULL,
  `option_level_rank_5` int(11) DEFAULT NULL,
  `serial_server` varchar(45) DEFAULT NULL,
  `serial` varchar(45) DEFAULT NULL,
  `flags` int(11) DEFAULT NULL,
  `data_1` int(11) DEFAULT NULL,
  `data_2` int(11) DEFAULT NULL,
  `data_3` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Data exporting was unselected.

-- Dumping structure for table database_game.item_recovery
DROP TABLE IF EXISTS `item_recovery`;
CREATE TABLE IF NOT EXISTS `item_recovery` (
  `id` int(11) NOT NULL,
  `char_id` int(11) DEFAULT NULL,
  `item` int(11) DEFAULT NULL,
  `level` int(11) DEFAULT NULL,
  `durability` int(11) DEFAULT NULL,
  `skill` int(11) DEFAULT NULL,
  `luck` int(11) DEFAULT NULL,
  `option` int(11) DEFAULT NULL,
  `excellent` int(11) DEFAULT NULL,
  `ancient` int(11) DEFAULT NULL,
  `option_380` int(11) DEFAULT NULL,
  `harmony` int(11) DEFAULT NULL,
  `socket_1` int(11) DEFAULT NULL,
  `socket_2` int(11) DEFAULT NULL,
  `socket_3` int(11) DEFAULT NULL,
  `socket_4` int(11) DEFAULT NULL,
  `socket_5` int(11) DEFAULT NULL,
  `socket_bonus` int(11) DEFAULT NULL,
  `data_1` int(11) DEFAULT NULL,
  `data_2` int(11) DEFAULT NULL,
  `data_3` int(11) DEFAULT NULL,
  `serial_server` int(11) DEFAULT NULL,
  `serial` int(11) DEFAULT NULL,
  `serial_cash_shop` int(11) DEFAULT NULL,
  `flags` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `char_id` (`char_id`),
  CONSTRAINT `item_recovery_ibfk_1` FOREIGN KEY (`char_id`) REFERENCES `character_info` (`guid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Data exporting was unselected.

-- Dumping structure for table database_game.misc_non_pk_time
DROP TABLE IF EXISTS `misc_non_pk_time`;
CREATE TABLE IF NOT EXISTS `misc_non_pk_time` (
  `server` smallint(5) unsigned NOT NULL,
  `start_hour` tinyint(3) unsigned DEFAULT NULL,
  `start_minute` tinyint(3) unsigned DEFAULT NULL,
  `end_hour` tinyint(3) unsigned DEFAULT NULL,
  `end_minute` tinyint(3) unsigned DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Data exporting was unselected.

-- Dumping structure for table database_game.monster
DROP TABLE IF EXISTS `monster`;
CREATE TABLE IF NOT EXISTS `monster` (
  `server` smallint(5) unsigned NOT NULL,
  `guid` smallint(5) unsigned NOT NULL,
  `id` smallint(5) unsigned NOT NULL,
  `type` tinyint(3) unsigned NOT NULL DEFAULT 0,
  `name` varchar(32) DEFAULT NULL,
  `world` smallint(5) unsigned NOT NULL,
  `x1` smallint(6) NOT NULL,
  `y1` smallint(6) NOT NULL,
  `x2` smallint(6) NOT NULL,
  `y2` smallint(6) NOT NULL,
  `direction` tinyint(4) NOT NULL,
  `spawn_delay` int(10) unsigned NOT NULL DEFAULT 0,
  `spawn_distance` tinyint(3) unsigned DEFAULT NULL,
  `respawn_time_min` int(10) unsigned DEFAULT NULL,
  `respawn_time_max` int(10) unsigned DEFAULT NULL,
  `respawn_id` int(10) unsigned DEFAULT NULL,
  `move_distance` tinyint(4) NOT NULL DEFAULT 0,
  `npc_function` text DEFAULT NULL,
  `item_bag` text DEFAULT NULL,
  `script_name` text DEFAULT NULL,
  `elemental_attribute` tinyint(3) unsigned NOT NULL DEFAULT 0,
  `disabled` tinyint(4) NOT NULL DEFAULT 0,
  PRIMARY KEY (`guid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Data exporting was unselected.

-- Dumping structure for table database_game.monster_respawn
DROP TABLE IF EXISTS `monster_respawn`;
CREATE TABLE IF NOT EXISTS `monster_respawn` (
  `id` int(11) NOT NULL,
  `server` int(11) DEFAULT NULL,
  `guid` int(11) DEFAULT NULL,
  `date` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Data exporting was unselected.

-- Dumping structure for table database_game.monster_respawn_location
DROP TABLE IF EXISTS `monster_respawn_location`;
CREATE TABLE IF NOT EXISTS `monster_respawn_location` (
  `server` smallint(5) unsigned NOT NULL,
  `group` int(10) unsigned DEFAULT NULL,
  `world` smallint(5) unsigned DEFAULT NULL,
  `x1` smallint(6) DEFAULT NULL,
  `y1` smallint(6) DEFAULT NULL,
  `x2` smallint(6) DEFAULT NULL,
  `y2` smallint(6) DEFAULT NULL,
  `direction` tinyint(4) DEFAULT NULL,
  `instance` int(11) DEFAULT NULL,
  `rate` tinyint(3) unsigned DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Data exporting was unselected.

-- Dumping structure for table database_game.monster_template
DROP TABLE IF EXISTS `monster_template`;
CREATE TABLE IF NOT EXISTS `monster_template` (
  `id` smallint(5) unsigned NOT NULL,
  `name` varchar(32) DEFAULT NULL,
  `model` smallint(5) unsigned DEFAULT NULL,
  `size` float DEFAULT NULL,
  `type` tinyint(3) unsigned DEFAULT NULL,
  `min_level` smallint(6) DEFAULT NULL,
  `max_level` smallint(6) DEFAULT NULL,
  `life` int(11) DEFAULT NULL,
  `mana` int(11) DEFAULT NULL,
  `shield` int(11) DEFAULT NULL,
  `stamina` int(11) DEFAULT NULL,
  `attack_min_damage` int(11) DEFAULT NULL,
  `attack_max_damage` int(11) DEFAULT NULL,
  `magic_min_damage` int(11) DEFAULT NULL,
  `magic_max_damage` int(11) DEFAULT NULL,
  `critical_damage_rate` int(11) DEFAULT NULL,
  `critical_damage_add` int(11) DEFAULT NULL,
  `excellent_damage_rate` int(11) DEFAULT NULL,
  `excellent_damage_add` int(11) DEFAULT NULL,
  `attack_success` int(11) DEFAULT NULL,
  `defense` int(11) DEFAULT NULL,
  `defense_magic` int(11) DEFAULT NULL,
  `defense_success` int(11) DEFAULT NULL,
  `move_range` int(10) unsigned DEFAULT NULL,
  `move_speed` int(10) unsigned DEFAULT NULL,
  `attack_range` int(10) unsigned DEFAULT NULL,
  `attack_speed` int(11) DEFAULT NULL,
  `view_range` int(10) unsigned DEFAULT NULL,
  `resistance_ice` tinyint(3) unsigned DEFAULT NULL,
  `resistance_poison` tinyint(3) unsigned DEFAULT NULL,
  `resistance_lightning` tinyint(3) unsigned DEFAULT NULL,
  `resistance_fire` tinyint(3) unsigned DEFAULT NULL,
  `resistance_earth` tinyint(3) unsigned DEFAULT NULL,
  `resistance_wind` tinyint(3) unsigned DEFAULT NULL,
  `resistance_water` tinyint(3) unsigned DEFAULT NULL,
  `respawn_time_min` int(10) unsigned DEFAULT NULL,
  `respawn_time_max` int(10) unsigned DEFAULT NULL,
  `item_rate` int(11) DEFAULT NULL,
  `zen_rate` int(11) DEFAULT NULL,
  `item_max_level` int(11) DEFAULT NULL,
  `regen_power_life` float DEFAULT NULL,
  `regen_time_life` int(10) unsigned DEFAULT NULL,
  `regen_power_mana` float DEFAULT NULL,
  `regen_time_mana` int(10) unsigned DEFAULT NULL,
  `regen_power_shield` float DEFAULT NULL,
  `regen_time_shield` int(10) unsigned DEFAULT NULL,
  `regen_power_stamina` float DEFAULT NULL,
  `regen_time_stamina` int(10) unsigned DEFAULT NULL,
  `faction` tinyint(3) unsigned DEFAULT NULL,
  `faction_level` tinyint(3) unsigned DEFAULT NULL,
  `script_name` text DEFAULT NULL,
  `elemental_attribute` tinyint(3) unsigned DEFAULT NULL,
  `elemental_pattern` int(11) DEFAULT NULL,
  `elemental_defense` int(11) DEFAULT NULL,
  `elemental_damage_min` int(11) DEFAULT NULL,
  `elemental_damage_max` int(11) DEFAULT NULL,
  `elemental_attack_rate` int(11) DEFAULT NULL,
  `elemental_defense_rate` int(11) DEFAULT NULL,
  `radiance_immune` tinyint(3) unsigned DEFAULT NULL,
  `debuff_resistance` int(11) DEFAULT NULL,
  `debuff_defense` int(11) DEFAULT NULL,
  `critical_damage_resistance` tinyint(3) unsigned DEFAULT NULL,
  `excellent_damage_resistance` tinyint(3) unsigned DEFAULT NULL,
  `damage_absorb` tinyint(3) unsigned DEFAULT NULL,
  `elite` tinyint(4) DEFAULT NULL,
  `disabled` tinyint(4) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COMMENT='			';

-- Data exporting was unselected.

-- Dumping structure for table database_game.notice
DROP TABLE IF EXISTS `notice`;
CREATE TABLE IF NOT EXISTS `notice` (
  `server` smallint(5) unsigned NOT NULL,
  `notice` text DEFAULT NULL,
  `type` tinyint(3) unsigned DEFAULT NULL,
  `world` smallint(5) unsigned DEFAULT NULL,
  `flag` tinyint(3) unsigned DEFAULT NULL,
  `time` int(10) unsigned DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Data exporting was unselected.

-- Dumping structure for table database_game.party
DROP TABLE IF EXISTS `party`;
CREATE TABLE IF NOT EXISTS `party` (
  `id` int(11) NOT NULL,
  `guid` int(11) DEFAULT NULL,
  `server` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Data exporting was unselected.

-- Dumping structure for table database_game.party_member
DROP TABLE IF EXISTS `party_member`;
CREATE TABLE IF NOT EXISTS `party_member` (
  `id` int(11) NOT NULL,
  `char_id` int(11) DEFAULT NULL,
  `server` int(11) DEFAULT NULL,
  `party` int(11) DEFAULT NULL,
  `member` int(11) DEFAULT NULL,
  `position` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `char_id` (`char_id`),
  CONSTRAINT `party_member_ibfk_1` FOREIGN KEY (`char_id`) REFERENCES `character_info` (`guid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Data exporting was unselected.

-- Dumping structure for table database_game.quest_mu
DROP TABLE IF EXISTS `quest_mu`;
CREATE TABLE IF NOT EXISTS `quest_mu` (
  `ID` smallint(5) unsigned NOT NULL,
  `Name` text DEFAULT NULL,
  `Server` tinyint(3) unsigned DEFAULT NULL,
  `Day` tinyint(3) unsigned DEFAULT NULL,
  `TemplateType1` tinyint(3) unsigned DEFAULT NULL,
  `Chapter` tinyint(3) unsigned DEFAULT NULL,
  `Category` tinyint(3) unsigned DEFAULT NULL,
  `Importance` tinyint(3) unsigned DEFAULT NULL,
  `StartType` tinyint(3) unsigned DEFAULT NULL,
  `StartSubType` smallint(5) unsigned DEFAULT NULL,
  `LevelMin` smallint(5) unsigned DEFAULT NULL,
  `LevelMax` smallint(5) unsigned DEFAULT NULL,
  `RepeatCycle` tinyint(4) DEFAULT NULL,
  `PrecedenceQuest` smallint(6) DEFAULT NULL,
  `StartItemType` tinyint(4) DEFAULT NULL,
  `StartItemIndex` smallint(6) DEFAULT NULL,
  `CheckGens` tinyint(4) DEFAULT NULL,
  `Zen` int(11) DEFAULT NULL,
  `DarkWizard` tinyint(3) unsigned DEFAULT NULL,
  `DarkKnight` tinyint(3) unsigned DEFAULT NULL,
  `FairyElf` tinyint(3) unsigned DEFAULT NULL,
  `MagicGladiator` tinyint(3) unsigned DEFAULT NULL,
  `DarkLord` tinyint(3) unsigned DEFAULT NULL,
  `Summoner` tinyint(3) unsigned DEFAULT NULL,
  `RageFighter` tinyint(3) unsigned DEFAULT NULL,
  `GrowLancer` tinyint(3) unsigned DEFAULT NULL,
  `RuneWizard` tinyint(3) unsigned DEFAULT NULL,
  `Slayer` tinyint(3) unsigned DEFAULT NULL,
  `GunCrusher` tinyint(3) unsigned DEFAULT NULL,
  `AddClass1` tinyint(3) unsigned DEFAULT NULL,
  `TemplateType2` tinyint(3) unsigned DEFAULT NULL,
  `ObjectiveType` tinyint(3) unsigned DEFAULT NULL,
  `ObjectiveMainType` smallint(6) DEFAULT NULL,
  `ObjectiveMainSubType` smallint(6) DEFAULT NULL,
  `TargetNumber` smallint(6) DEFAULT NULL,
  `TargetMaxLevel` smallint(6) DEFAULT NULL,
  `DropRate` smallint(6) DEFAULT NULL,
  `GateID` smallint(5) unsigned DEFAULT NULL,
  `MapID` smallint(5) unsigned DEFAULT NULL,
  `X` tinyint(3) unsigned DEFAULT NULL,
  `Y` tinyint(3) unsigned DEFAULT NULL,
  `RewardExperience` int(11) DEFAULT NULL,
  `RewardZen` int(11) DEFAULT NULL,
  `RewardGensPoints` tinyint(3) unsigned DEFAULT NULL,
  `quest_mucol` varchar(45) DEFAULT NULL,
  `RewardItemType01` tinyint(4) DEFAULT NULL,
  `RewardItemIndex01` smallint(6) DEFAULT NULL,
  `RewardItemCount01` smallint(6) DEFAULT NULL,
  `RewardItemType02` tinyint(4) DEFAULT NULL,
  `RewardItemIndex02` smallint(6) DEFAULT NULL,
  `RewardItemCount02` smallint(6) DEFAULT NULL,
  `RewardItemType03` tinyint(4) DEFAULT NULL,
  `RewardItemIndex03` smallint(6) DEFAULT NULL,
  `RewardItemCount03` smallint(6) DEFAULT NULL,
  `RewardType` smallint(6) DEFAULT NULL,
  `RewardSubType` smallint(6) DEFAULT NULL,
  `RewardNumber` smallint(6) DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Data exporting was unselected.

-- Dumping structure for table database_game.serial_check
DROP TABLE IF EXISTS `serial_check`;
CREATE TABLE IF NOT EXISTS `serial_check` (
  `id` int(11) NOT NULL,
  `server` int(11) DEFAULT NULL,
  `serial` int(11) DEFAULT NULL,
  `type` int(11) DEFAULT NULL,
  `account_id` int(11) DEFAULT NULL,
  `ip` varchar(45) DEFAULT NULL,
  `mac` varchar(45) DEFAULT NULL,
  `disk_serial` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Data exporting was unselected.

-- Dumping structure for table database_game.server_signal
DROP TABLE IF EXISTS `server_signal`;
CREATE TABLE IF NOT EXISTS `server_signal` (
  `id` int(11) NOT NULL,
  `server` int(11) DEFAULT NULL,
  `signal` int(11) DEFAULT NULL,
  `data_1` int(11) DEFAULT NULL,
  `data_2` int(11) DEFAULT NULL,
  `data_3` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Data exporting was unselected.

/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IF(@OLD_FOREIGN_KEY_CHECKS IS NULL, 1, @OLD_FOREIGN_KEY_CHECKS) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
