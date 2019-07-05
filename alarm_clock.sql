/*
 Navicat Premium Data Transfer

 Source Server         : 127.0.0.1
 Source Server Type    : MySQL
 Source Server Version : 50515
 Source Host           : localhost:3306
 Source Schema         : we_chat

 Target Server Type    : MySQL
 Target Server Version : 50515
 File Encoding         : 65001

 Date: 05/07/2019 17:48:55
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for alarm_clock
-- ----------------------------
DROP TABLE IF EXISTS `alarm_clock`;
CREATE TABLE `alarm_clock`  (
  `clock_id` varchar(20) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL COMMENT '闹钟id',
  `equipment_id` varchar(20) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL COMMENT '设备号',
  `clock_theme` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '闹钟主题',
  `many` int(255) NOT NULL COMMENT '闹钟次数',
  `music` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL COMMENT '音乐',
  `is_open` tinyint(4) NOT NULL DEFAULT 1 COMMENT '是否开启',
  `is_shock` tinyint(4) NOT NULL DEFAULT 1 COMMENT '是否震动',
  `frequency` varchar(10) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL COMMENT '闹钟响起频率（每天、节假日、自定义..）',
  `custom_day` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '自定义开启日期（周一、周二...）',
  `hours` int(255) NOT NULL,
  `minutes` int(255) NOT NULL,
  `seconds` int(255) NOT NULL,
  PRIMARY KEY (`clock_id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_unicode_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of alarm_clock
-- ----------------------------
INSERT INTO `alarm_clock` VALUES ('C201907051154522934', '211212123223', '第一次设置', 3, '月亮代表我的心', 1, 1, 'EVERYDAY', NULL, 8, 59, 0);
INSERT INTO `alarm_clock` VALUES ('C201907051210259545', '211212123223', '第二次设置', 3, '月亮代表我的心', 1, 1, 'EVERYDAY', NULL, 8, 59, 0);
INSERT INTO `alarm_clock` VALUES ('C201907051215130144', '211212123223', '第二次设置', 3, '月亮代表我的心', 1, 1, 'CUSTOM', '', 8, 59, 59);
INSERT INTO `alarm_clock` VALUES ('C201907051217321631', '211212123223', '第二次设置', 3, '月亮代表我的心', 1, 1, 'CUSTOM', '星期一，星期二，星期三', 8, 59, 59);

SET FOREIGN_KEY_CHECKS = 1;
