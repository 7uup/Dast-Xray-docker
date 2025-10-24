/*
 Navicat Premium Data Transfer

 Source Server         : localhost
 Source Server Type    : MySQL
 Source Server Version : 90200 (9.2.0)
 Source Host           : 127.0.0.1:3306
 Source Schema         : xray_db

 Target Server Type    : MySQL
 Target Server Version : 90200 (9.2.0)
 File Encoding         : 65001

 Date: 24/10/2025 13:31:24
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

CREATE DATABASE IF NOT EXISTS `xray_db` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `xray_db`;


-- ----------------------------
-- Table structure for apisecret
-- ----------------------------
DROP TABLE IF EXISTS `apisecret`;
CREATE TABLE `apisecret` (
  `id` varchar(255) NOT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `apiSecret` varchar(255) DEFAULT NULL,
  `status` int DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;



-- ----------------------------
-- Table structure for task_report
-- ----------------------------
DROP TABLE IF EXISTS `task_report`;
CREATE TABLE `task_report` (
  `id` int NOT NULL AUTO_INCREMENT,
  `task_id` int NOT NULL,
  `report_path` varchar(512) NOT NULL,
  `create_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `status` int DEFAULT NULL,
  `source` int DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `url` varchar(255) DEFAULT NULL,
  `groupId` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  KEY `idx_task_id` (`task_id`) USING BTREE
) ENGINE=MyISAM AUTO_INCREMENT=96 DEFAULT CHARSET=utf8mb3 ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of task_report
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for tasks
-- ----------------------------
DROP TABLE IF EXISTS `tasks`;
CREATE TABLE `tasks` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `name` varchar(100) DEFAULT NULL,
  `url` varchar(255) DEFAULT NULL,
  `status` varchar(20) DEFAULT NULL,
  `xyport` varchar(255) DEFAULT NULL,
  `crawlerid` varchar(255) DEFAULT NULL,
  `createuser` varchar(255) DEFAULT NULL,
  `createtime` datetime DEFAULT NULL,
  `format` varchar(255) DEFAULT NULL,
  `source` int DEFAULT NULL,
  `groupId` varchar(255) DEFAULT NULL,
  `webhookid` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=MyISAM AUTO_INCREMENT=123656895 DEFAULT CHARSET=utf8mb3 ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of tasks
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for toolsetting
-- ----------------------------
DROP TABLE IF EXISTS `toolsetting`;
CREATE TABLE `toolsetting` (
  `id` int NOT NULL,
  `chromepath` varchar(255) DEFAULT NULL,
  `xraypath` varchar(255) DEFAULT NULL,
  `crawlergopath` varchar(255) DEFAULT NULL,
  `radpath` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb3 ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of toolsetting
-- ----------------------------
BEGIN;
INSERT INTO `toolsetting` (`id`, `chromepath`, `xraypath`, `crawlergopath`, `radpath`) VALUES (1, '/usr/bin/chromium', '/app/xray/xray', '/app/xray/crawlergo', NULL);
COMMIT;

-- ----------------------------
-- Table structure for user
-- ----------------------------
DROP TABLE IF EXISTS `user`;
CREATE TABLE `user` (
  `id` int NOT NULL,
  `username` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- ----------------------------
-- Records of user
-- ----------------------------
BEGIN;
INSERT INTO `user` (`id`, `username`, `password`) VALUES (1, 'admin', 'f5866c4a4d6014ecced47960c2e3d07f');
COMMIT;

-- ----------------------------
-- Table structure for webhook
-- ----------------------------
DROP TABLE IF EXISTS `webhook`;
CREATE TABLE `webhook` (
  `id` varchar(255) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `webhookurl` varchar(255) DEFAULT NULL,
  `secret` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- ----------------------------
-- Records of webhook
-- ----------------------------
BEGIN;
COMMIT;

SET FOREIGN_KEY_CHECKS = 1;
