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


-- Dumping database structure for database_characters
DROP DATABASE IF EXISTS `database_characters`;
CREATE DATABASE IF NOT EXISTS `database_characters` /*!40100 DEFAULT CHARACTER SET utf8 */;
USE `database_characters`;

-- Dumping structure for table database_characters.account_buff
DROP TABLE IF EXISTS `account_buff`;
CREATE TABLE IF NOT EXISTS `account_buff` (
  `account_id` int(11) unsigned NOT NULL,
  `buff` smallint(6) unsigned NOT NULL,
  `effect_1` tinyint(4) unsigned DEFAULT NULL,
  `value_1` int(11) DEFAULT NULL,
  `effect_2` tinyint(4) unsigned DEFAULT NULL,
  `value_2` int(11) DEFAULT NULL,
  `effect_3` tinyint(4) unsigned DEFAULT NULL,
  `value_3` int(11) DEFAULT NULL,
  `duration` bigint(20) DEFAULT NULL,
  `flags` tinyint(4) unsigned DEFAULT NULL,
  PRIMARY KEY (`account_id`,`buff`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

-- Data exporting was unselected.

-- Dumping structure for table database_characters.account_cash_shop_gift
DROP TABLE IF EXISTS `account_cash_shop_gift`;
CREATE TABLE IF NOT EXISTS `account_cash_shop_gift` (
  `account_id` int(11) unsigned DEFAULT NULL,
  `product` int(11) unsigned DEFAULT NULL,
  `option` int(11) unsigned DEFAULT NULL,
  `serial` int(11) unsigned DEFAULT NULL,
  `serial_cash_shop` int(11) unsigned DEFAULT NULL,
  `server` smallint(6) unsigned DEFAULT NULL,
  `date` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

-- Data exporting was unselected.

-- Dumping structure for table database_characters.account_cash_shop_item
DROP TABLE IF EXISTS `account_cash_shop_item`;
CREATE TABLE IF NOT EXISTS `account_cash_shop_item` (
  `account_id` int(11) unsigned DEFAULT NULL,
  `product` int(11) unsigned DEFAULT NULL,
  `option` int(11) unsigned DEFAULT NULL,
  `serial` int(11) unsigned DEFAULT NULL,
  `serial_cash_shop` int(11) unsigned DEFAULT NULL,
  `server` smallint(6) unsigned DEFAULT NULL,
  `gift` tinyint(4) unsigned DEFAULT NULL,
  `date` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

-- Data exporting was unselected.

-- Dumping structure for table database_characters.account_data
DROP TABLE IF EXISTS `account_data`;
CREATE TABLE IF NOT EXISTS `account_data` (
  `account_id` int(11) unsigned NOT NULL,
  `vip_status` int(11) DEFAULT NULL,
  `vip_duration` bigint(20) DEFAULT NULL,
  `expanded_warehouse` tinyint(4) unsigned DEFAULT NULL,
  `expanded_warehouse_time` bigint(20) DEFAULT NULL,
  `special_character` smallint(6) unsigned DEFAULT NULL,
  `credits` int(11) unsigned DEFAULT NULL,
  `web_credits` int(11) unsigned DEFAULT NULL,
  `current_character` int(11) unsigned DEFAULT NULL,
  `current_type` tinyint(4) unsigned DEFAULT NULL,
  `current_ip` varchar(16) DEFAULT NULL,
  `current_mac` varchar(50) DEFAULT NULL,
  `current_diskserial` int(11) unsigned DEFAULT NULL,
  `current_server` smallint(6) unsigned DEFAULT NULL,
  `cash_shop_discount_wc` tinyint(4) unsigned DEFAULT NULL,
  `cash_shop_discount_gp` tinyint(4) unsigned DEFAULT NULL,
  `cash_shop_discount_date` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`account_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

-- Data exporting was unselected.

-- Dumping structure for table database_characters.account_warehouse
DROP TABLE IF EXISTS `account_warehouse`;
CREATE TABLE IF NOT EXISTS `account_warehouse` (
  `account_id` int(11) unsigned NOT NULL,
  `money` int(11) unsigned DEFAULT NULL,
  `password` smallint(6) unsigned DEFAULT NULL,
  PRIMARY KEY (`account_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

-- Data exporting was unselected.

-- Dumping structure for table database_characters.arka_war_data
DROP TABLE IF EXISTS `arka_war_data`;
CREATE TABLE IF NOT EXISTS `arka_war_data` (
  `id` tinyint(4) unsigned NOT NULL,
  `guild` int(11) unsigned NOT NULL,
  `attribute` tinyint(4) unsigned DEFAULT NULL,
  PRIMARY KEY (`id`,`guild`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

-- Data exporting was unselected.

-- Dumping structure for table database_characters.castle_siege_data
DROP TABLE IF EXISTS `castle_siege_data`;
CREATE TABLE IF NOT EXISTS `castle_siege_data` (
  `owner` int(11) unsigned NOT NULL,
  `status` tinyint(4) unsigned DEFAULT NULL,
  `tax_hunt` int(11) DEFAULT NULL,
  `tax_chaos` tinyint(4) unsigned DEFAULT NULL,
  `tax_store` tinyint(4) unsigned DEFAULT NULL,
  `hunt_allowed` tinyint(4) DEFAULT NULL,
  `money` bigint(20) unsigned DEFAULT NULL,
  PRIMARY KEY (`owner`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

-- Data exporting was unselected.

-- Dumping structure for table database_characters.castle_siege_guild
DROP TABLE IF EXISTS `castle_siege_guild`;
CREATE TABLE IF NOT EXISTS `castle_siege_guild` (
  `guild` int(11) unsigned NOT NULL,
  `side` tinyint(4) unsigned NOT NULL,
  `score` int(11) DEFAULT NULL,
  PRIMARY KEY (`guild`,`side`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

-- Data exporting was unselected.

-- Dumping structure for table database_characters.castle_siege_npc
DROP TABLE IF EXISTS `castle_siege_npc`;
CREATE TABLE IF NOT EXISTS `castle_siege_npc` (
  `npc` smallint(6) unsigned NOT NULL,
  `id` tinyint(4) unsigned DEFAULT NULL,
  `defense_level` tinyint(4) unsigned DEFAULT NULL,
  `regen_level` tinyint(4) unsigned DEFAULT NULL,
  `life_level` tinyint(4) unsigned DEFAULT NULL,
  `life` int(11) DEFAULT NULL,
  PRIMARY KEY (`npc`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

-- Data exporting was unselected.

-- Dumping structure for table database_characters.castle_siege_registered_guild
DROP TABLE IF EXISTS `castle_siege_registered_guild`;
CREATE TABLE IF NOT EXISTS `castle_siege_registered_guild` (
  `guild` int(11) unsigned NOT NULL,
  `marks` int(11) unsigned DEFAULT NULL,
  `register_id` int(11) unsigned DEFAULT NULL,
  `level` smallint(6) unsigned DEFAULT NULL,
  `level_master` smallint(6) unsigned DEFAULT NULL,
  PRIMARY KEY (`guild`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

-- Data exporting was unselected.

-- Dumping structure for table database_characters.chaos_castle_survival_hall_of_fame
DROP TABLE IF EXISTS `chaos_castle_survival_hall_of_fame`;
CREATE TABLE IF NOT EXISTS `chaos_castle_survival_hall_of_fame` (
  `char_id` int(11) unsigned NOT NULL,
  `char_name` varchar(255) DEFAULT NULL,
  `score` int(11) DEFAULT NULL,
  PRIMARY KEY (`char_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

-- Data exporting was unselected.

-- Dumping structure for table database_characters.chaos_castle_survival_ranking
DROP TABLE IF EXISTS `chaos_castle_survival_ranking`;
CREATE TABLE IF NOT EXISTS `chaos_castle_survival_ranking` (
  `char_id` int(11) unsigned NOT NULL,
  `score` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`char_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

-- Data exporting was unselected.

-- Dumping structure for table database_characters.character_buff
DROP TABLE IF EXISTS `character_buff`;
CREATE TABLE IF NOT EXISTS `character_buff` (
  `char_id` int(11) unsigned NOT NULL,
  `buff` smallint(6) unsigned NOT NULL,
  `effect_1` tinyint(4) unsigned DEFAULT NULL,
  `value_1` int(11) DEFAULT NULL,
  `effect_2` tinyint(4) unsigned DEFAULT NULL,
  `value_2` int(11) DEFAULT NULL,
  `effect_3` tinyint(4) unsigned DEFAULT NULL,
  `value_3` int(11) DEFAULT NULL,
  `duration` bigint(20) DEFAULT NULL,
  `flags` tinyint(4) unsigned DEFAULT NULL,
  PRIMARY KEY (`char_id`,`buff`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

-- Data exporting was unselected.

-- Dumping structure for table database_characters.character_chat_block
DROP TABLE IF EXISTS `character_chat_block`;
CREATE TABLE IF NOT EXISTS `character_chat_block` (
  `char_id` int(11) unsigned NOT NULL,
  `blocked` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`char_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

-- Data exporting was unselected.

-- Dumping structure for table database_characters.character_date
DROP TABLE IF EXISTS `character_date`;
CREATE TABLE IF NOT EXISTS `character_date` (
  `char_id` int(11) unsigned NOT NULL,
  `id` int(11) unsigned NOT NULL,
  `date` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`char_id`,`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

-- Data exporting was unselected.

-- Dumping structure for table database_characters.character_deleted
DROP TABLE IF EXISTS `character_deleted`;
CREATE TABLE IF NOT EXISTS `character_deleted` (
  `account_id` int(11) unsigned NOT NULL,
  `char_id` int(11) unsigned NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`account_id`,`char_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

-- Data exporting was unselected.

-- Dumping structure for table database_characters.character_event_count
DROP TABLE IF EXISTS `character_event_count`;
CREATE TABLE IF NOT EXISTS `character_event_count` (
  `char_id` int(11) unsigned NOT NULL,
  `event_id` tinyint(4) unsigned NOT NULL,
  `count` tinyint(4) unsigned DEFAULT NULL,
  `day` tinyint(4) unsigned NOT NULL,
  PRIMARY KEY (`char_id`,`event_id`,`day`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

-- Data exporting was unselected.

-- Dumping structure for table database_characters.character_friend
DROP TABLE IF EXISTS `character_friend`;
CREATE TABLE IF NOT EXISTS `character_friend` (
  `char_id` int(11) unsigned NOT NULL,
  `friend_name` varchar(255) NOT NULL,
  PRIMARY KEY (`char_id`,`friend_name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

-- Data exporting was unselected.

-- Dumping structure for table database_characters.character_gameoption
DROP TABLE IF EXISTS `character_gameoption`;
CREATE TABLE IF NOT EXISTS `character_gameoption` (
  `char_id` int(11) unsigned NOT NULL,
  `game_option` tinyint(4) unsigned DEFAULT NULL,
  `chat_window` tinyint(4) unsigned DEFAULT NULL,
  `q_key` tinyint(4) unsigned DEFAULT NULL,
  `w_key` tinyint(4) unsigned DEFAULT NULL,
  `e_key` tinyint(4) unsigned DEFAULT NULL,
  `r_key` tinyint(4) unsigned DEFAULT NULL,
  `qwer_level` int(11) DEFAULT NULL,
  `skill_bind_0` smallint(6) unsigned DEFAULT NULL,
  `skill_bind_1` smallint(6) unsigned DEFAULT NULL,
  `skill_bind_2` smallint(6) unsigned DEFAULT NULL,
  `skill_bind_3` smallint(6) unsigned DEFAULT NULL,
  `skill_bind_4` smallint(6) unsigned DEFAULT NULL,
  `skill_bind_5` smallint(6) unsigned DEFAULT NULL,
  `skill_bind_6` smallint(6) unsigned DEFAULT NULL,
  `skill_bind_7` smallint(6) unsigned DEFAULT NULL,
  `skill_bind_8` smallint(6) unsigned DEFAULT NULL,
  `skill_bind_9` smallint(6) unsigned DEFAULT NULL,
  `extra_data` bigint(20) unsigned DEFAULT NULL,
  `change_skin` tinyint(4) unsigned DEFAULT NULL,
  `additional_options` smallint(6) unsigned DEFAULT NULL,
  `button_bind_1` tinyint(4) unsigned DEFAULT NULL,
  `button_bind_2` tinyint(4) unsigned DEFAULT NULL,
  `button_bind_3` tinyint(4) unsigned DEFAULT NULL,
  `button_bind_4` tinyint(4) unsigned DEFAULT NULL,
  `button_bind_5` tinyint(4) unsigned DEFAULT NULL,
  PRIMARY KEY (`char_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

-- Data exporting was unselected.

-- Dumping structure for table database_characters.character_gens
DROP TABLE IF EXISTS `character_gens`;
CREATE TABLE IF NOT EXISTS `character_gens` (
  `char_id` int(11) unsigned NOT NULL,
  `family` tinyint(4) unsigned NOT NULL,
  `level` tinyint(4) unsigned DEFAULT NULL,
  `contribution` int(11) DEFAULT NULL,
  `reward_date` bigint(20) DEFAULT NULL,
  `join_date` bigint(20) DEFAULT NULL,
  `left_date` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`char_id`,`family`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

-- Data exporting was unselected.

-- Dumping structure for table database_characters.character_gens_kill
DROP TABLE IF EXISTS `character_gens_kill`;
CREATE TABLE IF NOT EXISTS `character_gens_kill` (
  `char_id` int(11) unsigned DEFAULT NULL,
  `killed_id` int(11) unsigned DEFAULT NULL,
  `count` int(11) unsigned DEFAULT NULL,
  `date` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

-- Data exporting was unselected.

-- Dumping structure for table database_characters.character_helper
DROP TABLE IF EXISTS `character_helper`;
CREATE TABLE IF NOT EXISTS `character_helper` (
  `char_id` int(11) unsigned NOT NULL,
  `option_flag_1` int(11) unsigned DEFAULT NULL,
  `option_flag_2` int(11) unsigned DEFAULT NULL,
  `item_pick_flag` tinyint(4) unsigned DEFAULT NULL,
  `hunting_range` tinyint(4) unsigned DEFAULT NULL,
  `item_pick_range` tinyint(4) unsigned DEFAULT NULL,
  `distance` smallint(6) unsigned DEFAULT NULL,
  `attack_skill_1` smallint(6) unsigned DEFAULT NULL,
  `attack_sec_skill_1` smallint(6) unsigned DEFAULT NULL,
  `attack_sec_skill_2` smallint(6) unsigned DEFAULT NULL,
  `attack_sec_delay_1` smallint(6) unsigned DEFAULT NULL,
  `attack_sec_delay_2` smallint(6) unsigned DEFAULT NULL,
  `buff_skill_1` smallint(6) unsigned DEFAULT NULL,
  `buff_skill_2` smallint(6) unsigned DEFAULT NULL,
  `buff_skill_3` smallint(6) unsigned DEFAULT NULL,
  `time_space_casting` smallint(6) unsigned DEFAULT NULL,
  `percent_autopot` tinyint(4) unsigned DEFAULT NULL,
  `percent_autoheal` tinyint(4) unsigned DEFAULT NULL,
  `percent_partyheal` tinyint(4) unsigned DEFAULT NULL,
  `percent_drainlife` tinyint(4) unsigned DEFAULT NULL,
  `item_list` smallint(6) unsigned DEFAULT NULL,
  `buff_item_1` smallint(6) unsigned DEFAULT NULL,
  `buff_item_2` smallint(6) unsigned DEFAULT NULL,
  `buff_item_3` smallint(6) unsigned DEFAULT NULL,
  PRIMARY KEY (`char_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

-- Data exporting was unselected.

-- Dumping structure for table database_characters.character_hunting_record
DROP TABLE IF EXISTS `character_hunting_record`;
CREATE TABLE IF NOT EXISTS `character_hunting_record` (
  `char_id` int(11) unsigned NOT NULL,
  `world` smallint(6) unsigned NOT NULL,
  `year` smallint(6) unsigned DEFAULT NULL,
  `month` tinyint(4) unsigned DEFAULT NULL,
  `day` tinyint(4) unsigned DEFAULT NULL,
  `level` int(11) unsigned DEFAULT NULL,
  `duration` int(11) unsigned DEFAULT NULL,
  `damage` bigint(20) unsigned DEFAULT NULL,
  `elemental_damage` bigint(20) unsigned DEFAULT NULL,
  `healing` int(11) unsigned DEFAULT NULL,
  `killed_count` int(11) unsigned DEFAULT NULL,
  `earned_experience` bigint(20) unsigned DEFAULT NULL,
  PRIMARY KEY (`char_id`,`world`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

-- Data exporting was unselected.

-- Dumping structure for table database_characters.character_info
DROP TABLE IF EXISTS `character_info`;
CREATE TABLE IF NOT EXISTS `character_info` (
  `guid` int(11) unsigned NOT NULL,
  `account_id` int(11) unsigned DEFAULT NULL,
  `authority` tinyint(4) unsigned DEFAULT NULL,
  `race` tinyint(4) unsigned DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `slot` tinyint(4) DEFAULT NULL,
  `level` smallint(6) DEFAULT NULL,
  `level_master` smallint(6) DEFAULT NULL,
  `level_majestic` smallint(6) DEFAULT NULL,
  `experience` bigint(20) DEFAULT NULL,
  `experience_master` bigint(20) DEFAULT NULL,
  `experience_majestic` bigint(20) DEFAULT NULL,
  `points` int(11) DEFAULT NULL,
  `points_master` int(11) DEFAULT NULL,
  `points_majestic` int(11) DEFAULT NULL,
  `strength` int(11) unsigned DEFAULT NULL,
  `agility` int(11) unsigned DEFAULT NULL,
  `vitality` int(11) unsigned DEFAULT NULL,
  `energy` int(11) unsigned DEFAULT NULL,
  `leadership` int(11) unsigned DEFAULT NULL,
  `world` smallint(6) unsigned DEFAULT NULL,
  `world_x` smallint(6) DEFAULT NULL,
  `world_y` smallint(6) DEFAULT NULL,
  `direction` tinyint(4) unsigned DEFAULT NULL,
  `money` int(11) unsigned DEFAULT NULL,
  `life` int(11) DEFAULT NULL,
  `mana` int(11) DEFAULT NULL,
  `shield` int(11) DEFAULT NULL,
  `stamina` int(11) DEFAULT NULL,
  `add_fruit_points` int(11) DEFAULT NULL,
  `dec_fruit_points` int(11) DEFAULT NULL,
  `expanded_inventory` tinyint(4) unsigned DEFAULT NULL,
  `mute_time` bigint(20) DEFAULT NULL,
  `admin_flags` int(11) unsigned DEFAULT NULL,
  `pk_level` tinyint(4) unsigned DEFAULT NULL,
  `pk_count` int(11) DEFAULT NULL,
  `pk_points` int(11) DEFAULT NULL,
  `first_time` tinyint(4) unsigned DEFAULT NULL,
  `santa_claus_gift` bigint(20) DEFAULT NULL,
  `personal_store_name` varchar(255) DEFAULT NULL,
  `personal_store_open` tinyint(4) DEFAULT NULL,
  `goblin_points` int(11) unsigned DEFAULT NULL,
  `last_use` bigint(20) DEFAULT NULL,
  `kick_time` bigint(20) DEFAULT NULL,
  `post_count` int(11) DEFAULT NULL,
  `post_day` tinyint(4) unsigned DEFAULT NULL,
  `post_month` tinyint(4) unsigned DEFAULT NULL,
  `ruud_money` int(11) unsigned DEFAULT NULL,
  `hunting_log_visible` tinyint(4) unsigned DEFAULT NULL,
  `create_date` bigint(20) DEFAULT NULL,
  `online` tinyint(4) DEFAULT NULL,
  `server_code` smallint(6) unsigned DEFAULT NULL,
  PRIMARY KEY (`guid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

-- Data exporting was unselected.

-- Dumping structure for table database_characters.character_item_delay
DROP TABLE IF EXISTS `character_item_delay`;
CREATE TABLE IF NOT EXISTS `character_item_delay` (
  `char_id` int(11) unsigned DEFAULT NULL,
  `item` smallint(6) unsigned DEFAULT NULL,
  `date` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

-- Data exporting was unselected.

-- Dumping structure for table database_characters.character_jewel_bingo
DROP TABLE IF EXISTS `character_jewel_bingo`;
CREATE TABLE IF NOT EXISTS `character_jewel_bingo` (
  `char_id` int(11) unsigned NOT NULL,
  `state` tinyint(4) unsigned DEFAULT NULL,
  `box` tinyint(4) unsigned DEFAULT NULL,
  `count` tinyint(4) unsigned DEFAULT NULL,
  `jewel` tinyint(4) unsigned DEFAULT NULL,
  `score1` int(11) DEFAULT NULL,
  `score2` int(11) DEFAULT NULL,
  `score3` int(11) DEFAULT NULL,
  `date` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`char_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

-- Data exporting was unselected.

-- Dumping structure for table database_characters.character_jewel_bingo_grid
DROP TABLE IF EXISTS `character_jewel_bingo_grid`;
CREATE TABLE IF NOT EXISTS `character_jewel_bingo_grid` (
  `char_id` int(11) unsigned NOT NULL,
  `type` tinyint(4) unsigned DEFAULT NULL,
  `slot` tinyint(4) unsigned DEFAULT NULL,
  `value` tinyint(4) unsigned DEFAULT NULL,
  PRIMARY KEY (`char_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

-- Data exporting was unselected.

-- Dumping structure for table database_characters.character_kick
DROP TABLE IF EXISTS `character_kick`;
CREATE TABLE IF NOT EXISTS `character_kick` (
  `char_id` int(11) unsigned NOT NULL,
  `character_name` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`char_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

-- Data exporting was unselected.

-- Dumping structure for table database_characters.character_labyrinth
DROP TABLE IF EXISTS `character_labyrinth`;
CREATE TABLE IF NOT EXISTS `character_labyrinth` (
  `char_id` int(11) unsigned NOT NULL,
  `stage` tinyint(4) unsigned DEFAULT NULL,
  `id` tinyint(4) unsigned DEFAULT NULL,
  `level` smallint(6) unsigned DEFAULT NULL,
  `status` tinyint(4) unsigned DEFAULT NULL,
  `killed_monsters` int(11) DEFAULT NULL,
  `earned_experience` bigint(20) DEFAULT NULL,
  `completed_missions` int(11) DEFAULT NULL,
  `date` bigint(20) DEFAULT NULL,
  `goblin_state` tinyint(4) unsigned DEFAULT NULL,
  `day_first` tinyint(4) unsigned DEFAULT NULL,
  PRIMARY KEY (`char_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

-- Data exporting was unselected.

-- Dumping structure for table database_characters.character_labyrinth_level
DROP TABLE IF EXISTS `character_labyrinth_level`;
CREATE TABLE IF NOT EXISTS `character_labyrinth_level` (
  `char_id` int(11) unsigned NOT NULL,
  `level` smallint(6) unsigned DEFAULT NULL,
  `amount` int(11) DEFAULT NULL,
  PRIMARY KEY (`char_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

-- Data exporting was unselected.

-- Dumping structure for table database_characters.character_labyrinth_zone
DROP TABLE IF EXISTS `character_labyrinth_zone`;
CREATE TABLE IF NOT EXISTS `character_labyrinth_zone` (
  `char_id` int(11) unsigned NOT NULL,
  `idx` tinyint(4) unsigned NOT NULL,
  `subidx` tinyint(4) unsigned NOT NULL,
  `mission_id_1` tinyint(4) unsigned DEFAULT NULL,
  `mission_id_2` tinyint(4) unsigned DEFAULT NULL,
  `mission_id_3` tinyint(4) unsigned DEFAULT NULL,
  `mission_id_4` tinyint(4) unsigned DEFAULT NULL,
  `mission_id_5` tinyint(4) unsigned DEFAULT NULL,
  `mission_count_1` int(11) DEFAULT NULL,
  `mission_count_2` int(11) DEFAULT NULL,
  `mission_count_3` int(11) DEFAULT NULL,
  `mission_count_4` int(11) DEFAULT NULL,
  `mission_count_5` int(11) DEFAULT NULL,
  PRIMARY KEY (`char_id`,`idx`,`subidx`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

-- Data exporting was unselected.

-- Dumping structure for table database_characters.character_mail
DROP TABLE IF EXISTS `character_mail`;
CREATE TABLE IF NOT EXISTS `character_mail` (
  `id` int(11) unsigned NOT NULL,
  `char_id` int(11) unsigned DEFAULT NULL,
  `from_id` varchar(255) DEFAULT NULL,
  `subject` varchar(255) DEFAULT NULL,
  `message` varchar(255) DEFAULT NULL,
  `direction` tinyint(4) unsigned DEFAULT NULL,
  `action` tinyint(4) unsigned DEFAULT NULL,
  `photo` varchar(255) DEFAULT NULL,
  `window_guid` int(11) unsigned DEFAULT NULL,
  `date` bigint(20) DEFAULT NULL,
  `opened` tinyint(4) unsigned DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

-- Data exporting was unselected.

-- Dumping structure for table database_characters.character_majestic_stats
DROP TABLE IF EXISTS `character_majestic_stats`;
CREATE TABLE IF NOT EXISTS `character_majestic_stats` (
  `char_id` int(11) unsigned NOT NULL,
  `id` tinyint(4) unsigned NOT NULL,
  `level` smallint(6) unsigned DEFAULT NULL,
  PRIMARY KEY (`char_id`,`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

-- Data exporting was unselected.

-- Dumping structure for table database_characters.character_majestic_tree
DROP TABLE IF EXISTS `character_majestic_tree`;
CREATE TABLE IF NOT EXISTS `character_majestic_tree` (
  `char_id` int(11) unsigned NOT NULL,
  `type` tinyint(4) unsigned DEFAULT NULL,
  `section` tinyint(4) unsigned DEFAULT NULL,
  `id` smallint(6) unsigned NOT NULL,
  `level` tinyint(4) unsigned DEFAULT NULL,
  PRIMARY KEY (`char_id`,`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

-- Data exporting was unselected.

-- Dumping structure for table database_characters.character_mini_bomb
DROP TABLE IF EXISTS `character_mini_bomb`;
CREATE TABLE IF NOT EXISTS `character_mini_bomb` (
  `char_id` int(11) unsigned NOT NULL,
  `state` tinyint(4) unsigned DEFAULT NULL,
  `score` smallint(6) unsigned DEFAULT NULL,
  `total_score` int(11) DEFAULT NULL,
  `cdate` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`char_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

-- Data exporting was unselected.

-- Dumping structure for table database_characters.character_mini_bomb_grid
DROP TABLE IF EXISTS `character_mini_bomb_grid`;
CREATE TABLE IF NOT EXISTS `character_mini_bomb_grid` (
  `char_id` int(11) unsigned NOT NULL,
  `cell` tinyint(4) unsigned DEFAULT NULL,
  `value` tinyint(4) unsigned DEFAULT NULL,
  `status` tinyint(4) unsigned DEFAULT NULL,
  PRIMARY KEY (`char_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

-- Data exporting was unselected.

-- Dumping structure for table database_characters.character_monster_soul
DROP TABLE IF EXISTS `character_monster_soul`;
CREATE TABLE IF NOT EXISTS `character_monster_soul` (
  `char_id` int(11) unsigned NOT NULL,
  `type` int(11) unsigned DEFAULT NULL,
  `id` int(11) unsigned NOT NULL,
  `amount` int(11) DEFAULT NULL,
  PRIMARY KEY (`char_id`,`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

-- Data exporting was unselected.

-- Dumping structure for table database_characters.character_mu_roomy
DROP TABLE IF EXISTS `character_mu_roomy`;
CREATE TABLE IF NOT EXISTS `character_mu_roomy` (
  `char_id` int(11) unsigned NOT NULL,
  `playing` tinyint(4) unsigned DEFAULT NULL,
  `type` tinyint(4) unsigned DEFAULT NULL,
  `score` smallint(6) unsigned DEFAULT NULL,
  `card_count` tinyint(4) unsigned DEFAULT NULL,
  `special_card_count` tinyint(4) unsigned DEFAULT NULL,
  `date` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`char_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

-- Data exporting was unselected.

-- Dumping structure for table database_characters.character_mu_roomy_deck
DROP TABLE IF EXISTS `character_mu_roomy_deck`;
CREATE TABLE IF NOT EXISTS `character_mu_roomy_deck` (
  `char_id` int(11) unsigned DEFAULT NULL,
  `type` tinyint(4) unsigned DEFAULT NULL,
  `slot` tinyint(4) unsigned DEFAULT NULL,
  `color` tinyint(4) unsigned DEFAULT NULL,
  `number` tinyint(4) unsigned DEFAULT NULL,
  `state` tinyint(4) unsigned DEFAULT NULL,
  `play_slot` tinyint(4) unsigned DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

-- Data exporting was unselected.

-- Dumping structure for table database_characters.character_numeric_baseball
DROP TABLE IF EXISTS `character_numeric_baseball`;
CREATE TABLE IF NOT EXISTS `character_numeric_baseball` (
  `char_id` int(11) unsigned NOT NULL,
  `state` tinyint(4) unsigned DEFAULT NULL,
  `score` int(11) DEFAULT NULL,
  `number_1` tinyint(4) unsigned DEFAULT NULL,
  `number_2` tinyint(4) unsigned DEFAULT NULL,
  `number_3` tinyint(4) unsigned DEFAULT NULL,
  `numbers` varchar(255) DEFAULT NULL,
  `strikes` varchar(255) DEFAULT NULL,
  `balls` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`char_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

-- Data exporting was unselected.

-- Dumping structure for table database_characters.character_quest_evo
DROP TABLE IF EXISTS `character_quest_evo`;
CREATE TABLE IF NOT EXISTS `character_quest_evo` (
  `char_id` int(11) unsigned NOT NULL,
  `id` tinyint(4) unsigned NOT NULL,
  `state` tinyint(4) unsigned DEFAULT NULL,
  `kill_count_1` int(11) DEFAULT NULL,
  `kill_count_2` int(11) DEFAULT NULL,
  `kill_count_3` int(11) DEFAULT NULL,
  `kill_count_4` int(11) DEFAULT NULL,
  `kill_count_5` int(11) DEFAULT NULL,
  PRIMARY KEY (`char_id`,`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

-- Data exporting was unselected.

-- Dumping structure for table database_characters.character_quest_guided
DROP TABLE IF EXISTS `character_quest_guided`;
CREATE TABLE IF NOT EXISTS `character_quest_guided` (
  `char_id` int(11) unsigned NOT NULL,
  `quest` smallint(6) unsigned NOT NULL,
  `count` int(11) DEFAULT NULL,
  `state` tinyint(4) unsigned DEFAULT NULL,
  `date` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`char_id`,`quest`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

-- Data exporting was unselected.

-- Dumping structure for table database_characters.character_quest_mu
DROP TABLE IF EXISTS `character_quest_mu`;
CREATE TABLE IF NOT EXISTS `character_quest_mu` (
  `char_id` int(11) unsigned NOT NULL,
  `quest_id` smallint(6) unsigned NOT NULL,
  `state` tinyint(4) unsigned DEFAULT NULL,
  `objective` smallint(6) unsigned DEFAULT NULL,
  `date` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`char_id`,`quest_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

-- Data exporting was unselected.

-- Dumping structure for table database_characters.character_restriction
DROP TABLE IF EXISTS `character_restriction`;
CREATE TABLE IF NOT EXISTS `character_restriction` (
  `char_id` int(11) unsigned NOT NULL,
  `restriction` int(11) unsigned DEFAULT NULL,
  `time` bigint(20) DEFAULT NULL,
  `admin_name` varchar(255) DEFAULT NULL,
  `reason` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`char_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

-- Data exporting was unselected.

-- Dumping structure for table database_characters.character_score
DROP TABLE IF EXISTS `character_score`;
CREATE TABLE IF NOT EXISTS `character_score` (
  `char_id` int(11) unsigned NOT NULL,
  `type` tinyint(4) unsigned DEFAULT NULL,
  `level` int(11) DEFAULT NULL,
  `score` int(11) DEFAULT NULL,
  PRIMARY KEY (`char_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

-- Data exporting was unselected.

-- Dumping structure for table database_characters.character_skill
DROP TABLE IF EXISTS `character_skill`;
CREATE TABLE IF NOT EXISTS `character_skill` (
  `char_id` int(11) unsigned NOT NULL,
  `type` tinyint(4) unsigned DEFAULT NULL,
  `skill` smallint(6) unsigned NOT NULL,
  `skill_level` tinyint(4) unsigned DEFAULT NULL,
  PRIMARY KEY (`char_id`,`skill`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

-- Data exporting was unselected.

-- Dumping structure for table database_characters.character_statistics
DROP TABLE IF EXISTS `character_statistics`;
CREATE TABLE IF NOT EXISTS `character_statistics` (
  `char_id` int(11) unsigned NOT NULL,
  `statistic_id` int(11) unsigned NOT NULL,
  `count` bigint(20) unsigned DEFAULT NULL,
  PRIMARY KEY (`char_id`,`statistic_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

-- Data exporting was unselected.

-- Dumping structure for table database_characters.character_warp_favorite_list
DROP TABLE IF EXISTS `character_warp_favorite_list`;
CREATE TABLE IF NOT EXISTS `character_warp_favorite_list` (
  `char_id` int(11) unsigned NOT NULL,
  `slot` tinyint(4) unsigned DEFAULT NULL,
  `data` smallint(6) unsigned DEFAULT NULL,
  `warp_id` smallint(6) unsigned DEFAULT NULL,
  PRIMARY KEY (`char_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

-- Data exporting was unselected.

-- Dumping structure for table database_characters.crywolf_data
DROP TABLE IF EXISTS `crywolf_data`;
CREATE TABLE IF NOT EXISTS `crywolf_data` (
  `state` tinyint(4) unsigned NOT NULL,
  PRIMARY KEY (`state`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

-- Data exporting was unselected.

-- Dumping structure for table database_characters.event_arka_war_kill
DROP TABLE IF EXISTS `event_arka_war_kill`;
CREATE TABLE IF NOT EXISTS `event_arka_war_kill` (
  `char_id` int(11) unsigned DEFAULT NULL,
  `char_name` varchar(255) DEFAULT NULL,
  `char_rank` tinyint(4) unsigned DEFAULT NULL,
  `player_data_01` varchar(255) DEFAULT NULL,
  `guild_id_01` int(11) unsigned DEFAULT NULL,
  `guild_name_01` varchar(255) DEFAULT NULL,
  `killer_id` int(11) unsigned DEFAULT NULL,
  `killer_name` varchar(255) DEFAULT NULL,
  `killer_rank` tinyint(4) unsigned DEFAULT NULL,
  `player_data_02` varchar(255) DEFAULT NULL,
  `guild_id_02` int(11) unsigned DEFAULT NULL,
  `guild_name_02` varchar(255) DEFAULT NULL,
  `world` smallint(6) unsigned DEFAULT NULL,
  `world_x` smallint(6) DEFAULT NULL,
  `world_y` smallint(6) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

-- Data exporting was unselected.

-- Dumping structure for table database_characters.event_arka_war_ranking
DROP TABLE IF EXISTS `event_arka_war_ranking`;
CREATE TABLE IF NOT EXISTS `event_arka_war_ranking` (
  `guild_id_01` int(11) unsigned DEFAULT NULL,
  `guild_name_01` varchar(255) DEFAULT NULL,
  `guild_id_02` int(11) unsigned DEFAULT NULL,
  `guild_name_02` varchar(255) DEFAULT NULL,
  `character_count` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

-- Data exporting was unselected.

-- Dumping structure for table database_characters.event_castle_siege_kill
DROP TABLE IF EXISTS `event_castle_siege_kill`;
CREATE TABLE IF NOT EXISTS `event_castle_siege_kill` (
  `char_id` int(11) unsigned DEFAULT NULL,
  `char_name` varchar(255) DEFAULT NULL,
  `char_rank` tinyint(4) unsigned DEFAULT NULL,
  `state` tinyint(4) unsigned DEFAULT NULL,
  `player_data_01` varchar(255) DEFAULT NULL,
  `guild_id_01` int(11) unsigned DEFAULT NULL,
  `guild_name_01` varchar(255) DEFAULT NULL,
  `killer_id` int(11) unsigned DEFAULT NULL,
  `killer_name` varchar(255) DEFAULT NULL,
  `killer_rank` tinyint(4) unsigned DEFAULT NULL,
  `player_data_02` varchar(255) DEFAULT NULL,
  `guild_id_02` int(11) unsigned DEFAULT NULL,
  `guild_name_02` varchar(255) DEFAULT NULL,
  `world` smallint(6) unsigned DEFAULT NULL,
  `world_x` smallint(6) DEFAULT NULL,
  `world_y` smallint(6) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

-- Data exporting was unselected.

-- Dumping structure for table database_characters.event_castle_siege_ranking
DROP TABLE IF EXISTS `event_castle_siege_ranking`;
CREATE TABLE IF NOT EXISTS `event_castle_siege_ranking` (
  `guild_id` int(11) unsigned NOT NULL,
  `guild_name` varchar(255) DEFAULT NULL,
  `character_count` int(11) DEFAULT NULL,
  PRIMARY KEY (`guild_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

-- Data exporting was unselected.

-- Dumping structure for table database_characters.event_castle_siege_time
DROP TABLE IF EXISTS `event_castle_siege_time`;
CREATE TABLE IF NOT EXISTS `event_castle_siege_time` (
  `char_id` int(11) unsigned DEFAULT NULL,
  `char_name` varchar(255) DEFAULT NULL,
  `char_rank` tinyint(4) unsigned DEFAULT NULL,
  `player_data` varchar(255) DEFAULT NULL,
  `guild_id` int(11) unsigned DEFAULT NULL,
  `guild_name` varchar(255) DEFAULT NULL,
  `type` tinyint(4) unsigned DEFAULT NULL,
  `time` int(11) unsigned DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

-- Data exporting was unselected.

-- Dumping structure for table database_characters.event_dungeon_instance
DROP TABLE IF EXISTS `event_dungeon_instance`;
CREATE TABLE IF NOT EXISTS `event_dungeon_instance` (
  `char_id` int(11) unsigned NOT NULL,
  `id` tinyint(4) unsigned DEFAULT NULL,
  `time` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`char_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

-- Data exporting was unselected.

-- Dumping structure for table database_characters.event_jewel_bingo_ranking
DROP TABLE IF EXISTS `event_jewel_bingo_ranking`;
CREATE TABLE IF NOT EXISTS `event_jewel_bingo_ranking` (
  `char_id` int(11) unsigned NOT NULL,
  `type` tinyint(4) unsigned DEFAULT NULL,
  `score1` int(11) DEFAULT NULL,
  `score2` int(11) DEFAULT NULL,
  `score3` int(11) DEFAULT NULL,
  PRIMARY KEY (`char_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

-- Data exporting was unselected.

-- Dumping structure for table database_characters.event_labyrinth_league
DROP TABLE IF EXISTS `event_labyrinth_league`;
CREATE TABLE IF NOT EXISTS `event_labyrinth_league` (
  `category` tinyint(4) unsigned NOT NULL,
  `char_id` int(11) unsigned NOT NULL,
  `char_name` varchar(255) DEFAULT NULL,
  `char_class` tinyint(4) unsigned DEFAULT NULL,
  `score` int(11) DEFAULT NULL,
  `league_score` int(11) DEFAULT NULL,
  `time` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`char_id`,`category`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

-- Data exporting was unselected.

-- Dumping structure for table database_characters.event_labyrinth_schedule
DROP TABLE IF EXISTS `event_labyrinth_schedule`;
CREATE TABLE IF NOT EXISTS `event_labyrinth_schedule` (
  `server` smallint(6) unsigned NOT NULL,
  `state` tinyint(4) unsigned DEFAULT NULL,
  `start_date` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`server`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

-- Data exporting was unselected.

-- Dumping structure for table database_characters.event_mini_bomb_ranking
DROP TABLE IF EXISTS `event_mini_bomb_ranking`;
CREATE TABLE IF NOT EXISTS `event_mini_bomb_ranking` (
  `char_id` int(11) unsigned NOT NULL,
  `state` tinyint(4) unsigned DEFAULT NULL,
  `score` smallint(6) unsigned DEFAULT NULL,
  `bombs_founded` tinyint(4) unsigned DEFAULT NULL,
  `bombs_failed` tinyint(4) unsigned DEFAULT NULL,
  PRIMARY KEY (`char_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

-- Data exporting was unselected.

-- Dumping structure for table database_characters.event_mu_roomy_ranking
DROP TABLE IF EXISTS `event_mu_roomy_ranking`;
CREATE TABLE IF NOT EXISTS `event_mu_roomy_ranking` (
  `char_id` int(11) unsigned NOT NULL,
  `type` tinyint(4) unsigned DEFAULT NULL,
  `score` smallint(6) unsigned DEFAULT NULL,
  `remain_card` tinyint(4) unsigned DEFAULT NULL,
  `remain_special_card` tinyint(4) unsigned DEFAULT NULL,
  PRIMARY KEY (`char_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

-- Data exporting was unselected.

-- Dumping structure for table database_characters.event_numeric_baseball_ranking
DROP TABLE IF EXISTS `event_numeric_baseball_ranking`;
CREATE TABLE IF NOT EXISTS `event_numeric_baseball_ranking` (
  `char_id` int(11) unsigned NOT NULL,
  `score` int(11) DEFAULT NULL,
  PRIMARY KEY (`char_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

-- Data exporting was unselected.

-- Dumping structure for table database_characters.event_race_ranking
DROP TABLE IF EXISTS `event_race_ranking`;
CREATE TABLE IF NOT EXISTS `event_race_ranking` (
  `char_id` int(11) unsigned NOT NULL,
  `race` varchar(255) NOT NULL,
  `start` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`char_id`,`race`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

-- Data exporting was unselected.

-- Dumping structure for table database_characters.event_ranking
DROP TABLE IF EXISTS `event_ranking`;
CREATE TABLE IF NOT EXISTS `event_ranking` (
  `event_id` tinyint(4) unsigned NOT NULL,
  `event_ground` tinyint(4) unsigned DEFAULT NULL,
  `char_id` int(11) unsigned NOT NULL,
  `score` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`event_id`,`char_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

-- Data exporting was unselected.

-- Dumping structure for table database_characters.event_ranking_labyrinth
DROP TABLE IF EXISTS `event_ranking_labyrinth`;
CREATE TABLE IF NOT EXISTS `event_ranking_labyrinth` (
  `char_id` int(11) unsigned NOT NULL,
  `level` smallint(6) unsigned DEFAULT NULL,
  `stage` tinyint(4) unsigned DEFAULT NULL,
  `index` tinyint(4) unsigned DEFAULT NULL,
  `killed_monsters` int(11) DEFAULT NULL,
  `earned_experience` bigint(20) DEFAULT NULL,
  `completed_missions` int(11) DEFAULT NULL,
  `score` int(11) DEFAULT NULL,
  PRIMARY KEY (`char_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

-- Data exporting was unselected.

-- Dumping structure for table database_characters.event_scramble_ranking
DROP TABLE IF EXISTS `event_scramble_ranking`;
CREATE TABLE IF NOT EXISTS `event_scramble_ranking` (
  `char_id` int(11) unsigned NOT NULL,
  `word` varchar(255) DEFAULT NULL,
  `shuffle_word` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`char_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

-- Data exporting was unselected.

-- Dumping structure for table database_characters.event_stage
DROP TABLE IF EXISTS `event_stage`;
CREATE TABLE IF NOT EXISTS `event_stage` (
  `event_id` tinyint(4) unsigned NOT NULL,
  `stage` tinyint(4) unsigned DEFAULT NULL,
  PRIMARY KEY (`event_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

-- Data exporting was unselected.

-- Dumping structure for table database_characters.gen_ranking
DROP TABLE IF EXISTS `gen_ranking`;
CREATE TABLE IF NOT EXISTS `gen_ranking` (
  `family` tinyint(4) unsigned NOT NULL,
  `level` tinyint(4) unsigned DEFAULT NULL,
  `type` tinyint(4) unsigned DEFAULT NULL,
  `score` int(11) DEFAULT NULL,
  `ranking` int(11) DEFAULT NULL,
  `char_id` int(11) unsigned NOT NULL,
  PRIMARY KEY (`family`,`char_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

-- Data exporting was unselected.

-- Dumping structure for table database_characters.guild_list
DROP TABLE IF EXISTS `guild_list`;
CREATE TABLE IF NOT EXISTS `guild_list` (
  `guid` int(11) unsigned NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `emblem` varchar(255) DEFAULT NULL,
  `hostil` int(11) unsigned DEFAULT NULL,
  `alliance` int(11) unsigned DEFAULT NULL,
  `notice` varchar(255) DEFAULT NULL,
  `score` int(11) DEFAULT NULL,
  PRIMARY KEY (`guid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

-- Data exporting was unselected.

-- Dumping structure for table database_characters.guild_matching
DROP TABLE IF EXISTS `guild_matching`;
CREATE TABLE IF NOT EXISTS `guild_matching` (
  `guild_id` int(11) unsigned NOT NULL,
  `text` varchar(255) DEFAULT NULL,
  `interest_type` tinyint(4) unsigned DEFAULT NULL,
  `level_range` tinyint(4) unsigned DEFAULT NULL,
  `class_type` smallint(6) unsigned DEFAULT NULL,
  `board_number` int(11) unsigned DEFAULT NULL,
  PRIMARY KEY (`guild_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

-- Data exporting was unselected.

-- Dumping structure for table database_characters.guild_members
DROP TABLE IF EXISTS `guild_members`;
CREATE TABLE IF NOT EXISTS `guild_members` (
  `guild_id` int(11) unsigned NOT NULL,
  `char_id` int(11) unsigned NOT NULL,
  `id` tinyint(4) unsigned DEFAULT NULL,
  `ranking` tinyint(4) unsigned DEFAULT NULL,
  PRIMARY KEY (`guild_id`,`char_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

-- Data exporting was unselected.

-- Dumping structure for table database_characters.guild_score
DROP TABLE IF EXISTS `guild_score`;
CREATE TABLE IF NOT EXISTS `guild_score` (
  `guild_id` int(11) unsigned NOT NULL,
  `score` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`guild_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

-- Data exporting was unselected.

-- Dumping structure for table database_characters.item_data
DROP TABLE IF EXISTS `item_data`;
CREATE TABLE IF NOT EXISTS `item_data` (
  `id` int(11) unsigned NOT NULL,
  `box` tinyint(4) unsigned NOT NULL,
  `slot` int(11) unsigned NOT NULL,
  `entry` smallint(6) unsigned DEFAULT NULL,
  `server` smallint(6) unsigned DEFAULT NULL,
  `serial` int(11) unsigned DEFAULT NULL,
  `serial_cash_shop` int(11) unsigned DEFAULT NULL,
  `level` tinyint(4) unsigned DEFAULT NULL,
  `durability` tinyint(4) unsigned DEFAULT NULL,
  `durability_state` int(11) DEFAULT NULL,
  `skill` tinyint(4) unsigned DEFAULT NULL,
  `luck` tinyint(4) unsigned DEFAULT NULL,
  `option` tinyint(4) unsigned DEFAULT NULL,
  `excellent` tinyint(4) unsigned DEFAULT NULL,
  `ancient` tinyint(4) unsigned DEFAULT NULL,
  `option_380` tinyint(4) unsigned DEFAULT NULL,
  `harmony` tinyint(4) unsigned DEFAULT NULL,
  `socket_1` smallint(6) unsigned DEFAULT NULL,
  `socket_2` smallint(6) unsigned DEFAULT NULL,
  `socket_3` smallint(6) unsigned DEFAULT NULL,
  `socket_4` smallint(6) unsigned DEFAULT NULL,
  `socket_5` smallint(6) unsigned DEFAULT NULL,
  `socket_bonus` tinyint(4) unsigned DEFAULT NULL,
  `locked` tinyint(4) unsigned DEFAULT NULL,
  `data_1` int(11) DEFAULT NULL,
  `data_2` int(11) DEFAULT NULL,
  `data_3` int(11) DEFAULT NULL,
  `personal_store_price` int(11) unsigned DEFAULT NULL,
  `personal_store_job` smallint(6) unsigned DEFAULT NULL,
  `personal_store_jos` smallint(6) unsigned DEFAULT NULL,
  `personal_store_joc` smallint(6) unsigned DEFAULT NULL,
  `expire_date` bigint(20) DEFAULT NULL,
  `flags` int(11) unsigned DEFAULT NULL,
  PRIMARY KEY (`id`,`box`,`slot`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

-- Data exporting was unselected.

-- Dumping structure for table database_characters.item_data_test
DROP TABLE IF EXISTS `item_data_test`;
CREATE TABLE IF NOT EXISTS `item_data_test` (
  `id` int(10) unsigned NOT NULL,
  `box` tinyint(3) unsigned NOT NULL,
  `slot` int(10) unsigned NOT NULL,
  `entry` smallint(5) unsigned NOT NULL,
  `server` smallint(5) unsigned NOT NULL,
  `serial` int(10) unsigned NOT NULL,
  `serial_cash_shop` int(10) unsigned NOT NULL,
  `level` tinyint(3) unsigned NOT NULL,
  `durability` tinyint(3) unsigned NOT NULL,
  `durability_state` int(11) NOT NULL DEFAULT 0,
  `skill` tinyint(3) unsigned NOT NULL,
  `luck` tinyint(3) unsigned NOT NULL,
  `option` tinyint(3) unsigned NOT NULL,
  `excellent` tinyint(3) unsigned NOT NULL,
  `ancient` tinyint(3) unsigned NOT NULL,
  `option_380` tinyint(3) unsigned NOT NULL,
  `harmony` tinyint(3) unsigned NOT NULL,
  `socket_1` smallint(5) unsigned NOT NULL,
  `socket_2` smallint(5) unsigned NOT NULL,
  `socket_3` smallint(5) unsigned NOT NULL,
  `socket_4` smallint(5) unsigned NOT NULL,
  `socket_5` smallint(5) unsigned NOT NULL,
  `socket_bonus` tinyint(3) unsigned NOT NULL,
  `locked` tinyint(3) unsigned NOT NULL,
  `data_1` int(11) NOT NULL DEFAULT 0,
  `data_2` int(11) NOT NULL DEFAULT 0,
  `data_3` int(11) NOT NULL DEFAULT 0,
  `personal_store_price` int(10) unsigned NOT NULL,
  `personal_store_job` smallint(5) unsigned NOT NULL,
  `personal_store_jos` smallint(5) unsigned NOT NULL,
  `personal_store_joc` smallint(5) unsigned NOT NULL,
  `expire_date` bigint(20) NOT NULL DEFAULT 0,
  `flags` int(10) unsigned NOT NULL,
  PRIMARY KEY (`id`,`box`,`slot`) USING BTREE,
  UNIQUE KEY `DupeInv` (`server`,`serial`,`serial_cash_shop`) USING BTREE,
  KEY `id` (`id`) USING BTREE,
  KEY `box` (`box`) USING BTREE,
  KEY `slot` (`slot`) USING BTREE,
  KEY `idx_id_and_box` (`id`,`box`) USING BTREE,
  KEY `idx_id_and_box_and_slot` (`id`,`box`,`slot`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

-- Data exporting was unselected.

-- Dumping structure for table database_characters.item_pentagram_data
DROP TABLE IF EXISTS `item_pentagram_data`;
CREATE TABLE IF NOT EXISTS `item_pentagram_data` (
  `id` int(11) unsigned DEFAULT NULL,
  `type` tinyint(4) unsigned DEFAULT NULL,
  `index` tinyint(4) unsigned DEFAULT NULL,
  `attribute` tinyint(4) unsigned DEFAULT NULL,
  `item_type` tinyint(4) unsigned DEFAULT NULL,
  `item_index` smallint(6) unsigned DEFAULT NULL,
  `item_level` tinyint(4) unsigned DEFAULT NULL,
  `option_index_rank_1` tinyint(4) unsigned DEFAULT NULL,
  `option_level_rank_1` tinyint(4) unsigned DEFAULT NULL,
  `option_index_rank_2` tinyint(4) unsigned DEFAULT NULL,
  `option_level_rank_2` tinyint(4) unsigned DEFAULT NULL,
  `option_index_rank_3` tinyint(4) unsigned DEFAULT NULL,
  `option_level_rank_3` tinyint(4) unsigned DEFAULT NULL,
  `option_index_rank_4` tinyint(4) unsigned DEFAULT NULL,
  `option_level_rank_4` tinyint(4) unsigned DEFAULT NULL,
  `option_index_rank_5` tinyint(4) unsigned DEFAULT NULL,
  `option_level_rank_5` tinyint(4) unsigned DEFAULT NULL,
  `serial_server` smallint(6) unsigned DEFAULT NULL,
  `serial` int(11) unsigned DEFAULT NULL,
  `flags` int(11) unsigned DEFAULT NULL,
  `data_1` int(11) DEFAULT NULL,
  `data_2` int(11) DEFAULT NULL,
  `data_3` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

-- Data exporting was unselected.

-- Dumping structure for table database_characters.item_recovery
DROP TABLE IF EXISTS `item_recovery`;
CREATE TABLE IF NOT EXISTS `item_recovery` (
  `char_id` int(11) unsigned NOT NULL,
  `item` smallint(6) unsigned NOT NULL,
  `level` tinyint(4) unsigned DEFAULT NULL,
  `durability` tinyint(4) unsigned DEFAULT NULL,
  `skill` tinyint(4) unsigned DEFAULT NULL,
  `luck` tinyint(4) unsigned DEFAULT NULL,
  `option` tinyint(4) unsigned DEFAULT NULL,
  `excellent` tinyint(4) unsigned DEFAULT NULL,
  `ancient` tinyint(4) unsigned DEFAULT NULL,
  `harmony` tinyint(4) unsigned DEFAULT NULL,
  `option_380` tinyint(4) unsigned DEFAULT NULL,
  `socket_1` smallint(6) unsigned DEFAULT NULL,
  `socket_2` smallint(6) unsigned DEFAULT NULL,
  `socket_3` smallint(6) unsigned DEFAULT NULL,
  `socket_4` smallint(6) unsigned DEFAULT NULL,
  `socket_5` smallint(6) unsigned DEFAULT NULL,
  `socket_bonus` tinyint(4) unsigned DEFAULT NULL,
  `data_1` int(11) DEFAULT NULL,
  `data_2` int(11) DEFAULT NULL,
  `data_3` int(11) DEFAULT NULL,
  `serial_server` smallint(6) unsigned DEFAULT NULL,
  `serial` int(11) unsigned DEFAULT NULL,
  `serial_cash_shop` int(11) unsigned DEFAULT NULL,
  `flags` int(11) unsigned DEFAULT NULL,
  `id` int(11) unsigned DEFAULT NULL,
  PRIMARY KEY (`char_id`,`item`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

-- Data exporting was unselected.

-- Dumping structure for table database_characters.monster_respawn
DROP TABLE IF EXISTS `monster_respawn`;
CREATE TABLE IF NOT EXISTS `monster_respawn` (
  `server` smallint(6) unsigned NOT NULL,
  `guid` smallint(6) unsigned NOT NULL,
  `date` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`server`,`guid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

-- Data exporting was unselected.

-- Dumping structure for table database_characters.party
DROP TABLE IF EXISTS `party`;
CREATE TABLE IF NOT EXISTS `party` (
  `guid` smallint(6) unsigned NOT NULL,
  `server` smallint(6) unsigned DEFAULT NULL,
  PRIMARY KEY (`guid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

-- Data exporting was unselected.

-- Dumping structure for table database_characters.party_member
DROP TABLE IF EXISTS `party_member`;
CREATE TABLE IF NOT EXISTS `party_member` (
  `server` smallint(6) unsigned DEFAULT NULL,
  `party` smallint(6) unsigned DEFAULT NULL,
  `member` int(11) unsigned DEFAULT NULL,
  `position` tinyint(4) unsigned DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

-- Data exporting was unselected.

-- Dumping structure for table database_characters.serial_check
DROP TABLE IF EXISTS `serial_check`;
CREATE TABLE IF NOT EXISTS `serial_check` (
  `server` smallint(6) unsigned NOT NULL,
  `serial` int(11) unsigned NOT NULL,
  `type` tinyint(4) unsigned DEFAULT NULL,
  `account_id` int(11) unsigned DEFAULT NULL,
  `ip` varchar(16) DEFAULT NULL,
  `mac` varchar(50) DEFAULT NULL,
  `disk_serial` int(11) unsigned DEFAULT NULL,
  PRIMARY KEY (`serial`,`server`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

-- Data exporting was unselected.

-- Dumping structure for table database_characters.server_signal
DROP TABLE IF EXISTS `server_signal`;
CREATE TABLE IF NOT EXISTS `server_signal` (
  `id` int(11) unsigned NOT NULL,
  `server` smallint(6) unsigned DEFAULT NULL,
  `signal` smallint(6) unsigned DEFAULT NULL,
  `data_1` int(11) DEFAULT NULL,
  `data_2` int(11) DEFAULT NULL,
  `data_3` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

-- Data exporting was unselected.

-- Dumping structure for table database_characters.tormented_square_survival_hall_of_fame
DROP TABLE IF EXISTS `tormented_square_survival_hall_of_fame`;
CREATE TABLE IF NOT EXISTS `tormented_square_survival_hall_of_fame` (
  `char_id_1` int(11) unsigned NOT NULL,
  `char_name_1` varchar(255) DEFAULT NULL,
  `char_id_2` int(11) unsigned DEFAULT NULL,
  `char_name_2` varchar(255) DEFAULT NULL,
  `score` int(11) DEFAULT NULL,
  PRIMARY KEY (`char_id_1`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

-- Data exporting was unselected.

-- Dumping structure for table database_characters.tormented_square_survival_ranking
DROP TABLE IF EXISTS `tormented_square_survival_ranking`;
CREATE TABLE IF NOT EXISTS `tormented_square_survival_ranking` (
  `type` tinyint(4) unsigned DEFAULT NULL,
  `ranking` int(11) DEFAULT NULL,
  `char_id_1` int(11) unsigned DEFAULT NULL,
  `char_name_1` varchar(255) DEFAULT NULL,
  `char_id_2` int(11) unsigned DEFAULT NULL,
  `char_name_2` varchar(255) DEFAULT NULL,
  `score` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

-- Data exporting was unselected.

-- Dumping structure for table database_characters.tormented_square_survival_team
DROP TABLE IF EXISTS `tormented_square_survival_team`;
CREATE TABLE IF NOT EXISTS `tormented_square_survival_team` (
  `char_id_1` int(11) unsigned DEFAULT NULL,
  `char_id_2` int(11) unsigned DEFAULT NULL,
  `score` int(11) DEFAULT NULL,
  `type` tinyint(4) unsigned DEFAULT NULL,
  `enter_count` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

-- Data exporting was unselected.

/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IF(@OLD_FOREIGN_KEY_CHECKS IS NULL, 1, @OLD_FOREIGN_KEY_CHECKS) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
