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

 Date: 23/11/2018 15:07:38
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for wc_category
-- ----------------------------
DROP TABLE IF EXISTS `wc_category`;
CREATE TABLE `wc_category`  (
  `category_id` bigint(32) NOT NULL AUTO_INCREMENT COMMENT 'id',
  `category_name` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `update_time` datetime DEFAULT NULL COMMENT '修改时间',
  `creation_time` datetime DEFAULT NULL COMMENT '创建时间',
  `is_show` tinyint(14) NOT NULL COMMENT '是否显示',
  PRIMARY KEY (`category_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 10002 CHARACTER SET = utf8 COLLATE = utf8_unicode_ci COMMENT = '兴趣类---新闻' ROW_FORMAT = Compact;

-- ----------------------------
-- Records of wc_category
-- ----------------------------
INSERT INTO `wc_category` VALUES (10001, '旅游', '2018-11-19 09:37:07', '2018-11-19 09:37:07', 1);

-- ----------------------------
-- Table structure for wc_feedback
-- ----------------------------
DROP TABLE IF EXISTS `wc_feedback`;
CREATE TABLE `wc_feedback`  (
  `feedback_id` bigint(11) NOT NULL AUTO_INCREMENT,
  `user_id` varchar(0) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL COMMENT '反馈人id',
  `creation_time` datetime NOT NULL COMMENT '创建时间',
  `update_time` datetime DEFAULT NULL COMMENT '修改时间',
  `content` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL COMMENT '反馈内容部分',
  `state` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '反馈处理状态',
  PRIMARY KEY (`feedback_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_unicode_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Table structure for wc_follow
-- ----------------------------
DROP TABLE IF EXISTS `wc_follow`;
CREATE TABLE `wc_follow`  (
  `follow_id` bigint(11) NOT NULL AUTO_INCREMENT,
  `user_id` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL COMMENT '用户id',
  `followed_user` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL COMMENT '被关注人的用户id',
  `status` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL COMMENT '关注状态:是否取消关注等',
  `creation_time` datetime NOT NULL COMMENT '关注时间',
  `update_time` datetime DEFAULT NULL COMMENT '修改时间',
  PRIMARY KEY (`follow_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_unicode_ci COMMENT = '关注关系表' ROW_FORMAT = Compact;

-- ----------------------------
-- Table structure for wc_forum
-- ----------------------------
DROP TABLE IF EXISTS `wc_forum`;
CREATE TABLE `wc_forum`  (
  `forum_id` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL COMMENT '论坛id',
  `forum_title` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL COMMENT '论坛标题',
  `publisher_user_id` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL COMMENT '论坛发布人',
  `creation_time` datetime NOT NULL COMMENT '发布时间',
  `update_time` datetime DEFAULT NULL COMMENT '修改时间',
  `is_show` tinyint(4) NOT NULL COMMENT '是否发布',
  `read_num` int(11) NOT NULL COMMENT '阅读量',
  `comment_num` int(11) NOT NULL COMMENT '评论数',
  PRIMARY KEY (`forum_id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_unicode_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Table structure for wc_moments
-- ----------------------------
DROP TABLE IF EXISTS `wc_moments`;
CREATE TABLE `wc_moments`  (
  `moments_id` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL DEFAULT '' COMMENT '说说id',
  `moments_title` varchar(140) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL COMMENT '说说标题',
  `publisher_user_id` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL COMMENT '说说发布人',
  `creation_time` datetime NOT NULL COMMENT '发布时间',
  `is_show` tinyint(4) NOT NULL COMMENT '是否发布',
  `moments_image` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '说说图',
  PRIMARY KEY (`moments_id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_unicode_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of wc_moments
-- ----------------------------
INSERT INTO `wc_moments` VALUES ('2018112311245829795', '今天天气真好啊，发张图大家看看', '2018111514554801539', '2018-11-23 11:24:58', 1, 'https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1543548249&di=74b243a26a5d8aac750843dfd39e8cf3&imgtype=jpg&er=1&src=http%3A%2F%2Fs14.sinaimg.cn%2Fmw690%2F002ZriB0zy72JzMLZz7dd%26amp%3B690');
INSERT INTO `wc_moments` VALUES ('2018112312415908495', '哈哈哈，试一下新效果', '2018111514554801539', '2018-11-23 12:41:59', 1, 'https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1543548249&di=74b243a26a5d8aac750843dfd39e8cf3&imgtype=jpg&er=1&src=http%3A%2F%2Fs14.sinaimg.cn%2Fmw690%2F002ZriB0zy72JzMLZz7dd%26amp%3B690');
INSERT INTO `wc_moments` VALUES ('2018112312430700179', '好想哭啊，我为什么叫阿凡达', '2018112209485799882', '2018-11-23 12:43:07', 1, 'https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1543548249&di=74b243a26a5d8aac750843dfd39e8cf3&imgtype=jpg&er=1&src=http%3A%2F%2Fs14.sinaimg.cn%2Fmw690%2F002ZriB0zy72JzMLZz7dd%26amp%3B690');
INSERT INTO `wc_moments` VALUES ('2018112314211383132', '你好啊', 'stri32323ng', '2018-11-23 14:21:13', 1, 'string');
INSERT INTO `wc_moments` VALUES ('2018112314251974121', '你好啊', 'stri32323ng', '2018-11-23 14:25:19', 1, 'string');
INSERT INTO `wc_moments` VALUES ('2018112314585520524', '你好啊', 'stri32323ng', '2018-11-23 14:58:55', 1, 'string');

-- ----------------------------
-- Table structure for wc_news
-- ----------------------------
DROP TABLE IF EXISTS `wc_news`;
CREATE TABLE `wc_news`  (
  `news_id` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL DEFAULT '' COMMENT '新闻id',
  `news_title` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL COMMENT '新闻标题',
  `publisher_user_id` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL COMMENT '新闻发布人',
  `creation_time` datetime NOT NULL COMMENT '发布时间',
  `update_time` datetime DEFAULT NULL COMMENT '修改时间',
  `is_show` tinyint(4) DEFAULT NULL COMMENT '是否发布',
  `news_link` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL COMMENT '新闻链接',
  `read_num` int(11) NOT NULL COMMENT '阅读量',
  `news_image` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '新闻列表图',
  `comment_num` int(11) DEFAULT NULL COMMENT '评论数',
  `category` bigint(255) DEFAULT NULL COMMENT '所属分类',
  PRIMARY KEY (`news_id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_unicode_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of wc_news
-- ----------------------------
INSERT INTO `wc_news` VALUES ('2018111916441291963', '2019元旦放假通知及放假时间表，公考的你该怎么利用时间复习呢', '2018111514554801539', '2018-11-19 16:44:12', '2018-11-19 16:44:12', 1, 'https://baijiahao.baidu.com/s?id=1617532454827530300&wfr=spider&for=pc', 0, 'https://ss0.bdstatic.com/94oJfD_bAAcT8t7mm9GUKT-xh_/timg?image&quality=100&size=b4000_4000&sec=1542617032&di=a99f93cc83540a34127ce2de3ebbab36&src=http://www.hbnews.net/epaper/hbrb/html/2013/08/16/01/images/8.jpg', 0, 10001);

-- ----------------------------
-- Table structure for wc_read
-- ----------------------------
DROP TABLE IF EXISTS `wc_read`;
CREATE TABLE `wc_read`  (
  `read_id` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `dynamic_id` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL COMMENT '该动态id',
  `dynamic_type` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL COMMENT '该动态类别 新闻、话题、说说',
  `reader_id` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '阅读用户id',
  `reader_equipment` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '阅读的设备id',
  `creation_time` datetime NOT NULL COMMENT '阅读时间',
  PRIMARY KEY (`read_id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_unicode_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of wc_read
-- ----------------------------
INSERT INTO `wc_read` VALUES ('R201811211110441503', '2018111916441291963', 'NEWS', '2018111514554801539', NULL, '2018-11-21 11:10:44');
INSERT INTO `wc_read` VALUES ('R201811211111032274', '2018111916441291963', 'NEWS', NULL, '18844157372', '2018-11-21 11:11:03');

-- ----------------------------
-- Table structure for wc_reply
-- ----------------------------
DROP TABLE IF EXISTS `wc_reply`;
CREATE TABLE `wc_reply`  (
  `reply_id` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL COMMENT '回复id',
  `reply_parent_id` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '回复父id',
  `dynamic_id` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL COMMENT '该动态主id',
  `reply_parent_user_id` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '被回复人的userId',
  `dynamic_user_id` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL COMMENT '该条回复的userId',
  `reply_content` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL COMMENT '回复内容',
  `creation_time` datetime NOT NULL COMMENT '回复时间',
  `is_show` tinyint(4) NOT NULL COMMENT '是否显示',
  `dynamic_type` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL COMMENT '该动态类别 新闻、话题、说说',
  `second_dynamic_id` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL COMMENT '所属一级评论',
  PRIMARY KEY (`reply_id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_unicode_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of wc_reply
-- ----------------------------
INSERT INTO `wc_reply` VALUES ('RP201811211650186103', NULL, '2018111916441291963', NULL, '2018111514554801539', '说的真好', '2018-11-21 16:50:18', 1, 'NEWS', 'RP201811211650186103');
INSERT INTO `wc_reply` VALUES ('RP201811221007028470', NULL, '2018111916441291963', NULL, '2018112209485799882', '说的真好+1', '2018-11-22 10:07:02', 1, 'NEWS', 'RP201811221007028470');
INSERT INTO `wc_reply` VALUES ('RP201811221105508699', NULL, '2018111916441291963', NULL, '2018112209485799882', '说的真好+2', '2018-11-22 11:05:50', 1, 'NEWS', 'RP201811221105508699');
INSERT INTO `wc_reply` VALUES ('RP201811221408501569', 'RP201811211650186103', '2018111916441291963', '2018111514554801539', '2018112209485799882', '说的哪里好了？', '2018-11-22 14:08:50', 1, 'NEWS', 'RP201811211650186103');
INSERT INTO `wc_reply` VALUES ('RP201811221514597422', 'RP201811221408501569', '2018111916441291963', '2018112209485799882', '2018111514554801539', '我说错了吗？', '2018-11-22 15:14:59', 1, 'NEWS', 'RP201811211650186103');
INSERT INTO `wc_reply` VALUES ('RP201811221538107123', NULL, '2018111916441291963', NULL, '2018111514554801539', '好棒啊', '2018-11-22 15:38:10', 1, 'NEWS', 'RP201811221538107123');

-- ----------------------------
-- Table structure for wc_sms
-- ----------------------------
DROP TABLE IF EXISTS `wc_sms`;
CREATE TABLE `wc_sms`  (
  `sms_id` bigint(11) NOT NULL AUTO_INCREMENT COMMENT '短信id',
  `sms_type` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL COMMENT '发送类型',
  `sms_phone` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL COMMENT '发送手机号',
  `sms_content` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL COMMENT '发送的内容',
  `creation_time` datetime NOT NULL COMMENT '短信发送时间',
  PRIMARY KEY (`sms_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_unicode_ci COMMENT = '短信表' ROW_FORMAT = Compact;

-- ----------------------------
-- Table structure for wc_user
-- ----------------------------
DROP TABLE IF EXISTS `wc_user`;
CREATE TABLE `wc_user`  (
  `user_id` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `user_name` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `signature` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '个性签名',
  `gender` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `head_avatar` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '头像',
  `password` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `phone` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `city` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '江苏 苏州',
  `age` int(10) DEFAULT NULL,
  `background_wall` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '背景墙',
  `creation_time` datetime DEFAULT NULL COMMENT '创建时间',
  `update_time` datetime DEFAULT NULL COMMENT '修改时间',
  `visitor_num` int(11) DEFAULT NULL COMMENT '空间访问量',
  PRIMARY KEY (`user_id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_unicode_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of wc_user
-- ----------------------------
INSERT INTO `wc_user` VALUES ('2018111514554801539', '安德拉', '你若安好便是晴天', '男', 'http://img4.duitang.com/uploads/item/201407/16/20140716132526_TcyTY.thumb.600_0.jpeg', '123456', '18844157372', '江苏 苏州', NULL, 'http://image.biaobaiju.com/uploads/20180918/15/1537256494-ZnSKMzEoBI.jpeg', '2018-11-15 14:55:48', '2018-11-15 14:55:48', NULL);
INSERT INTO `wc_user` VALUES ('2018112209485799882', '阿凡达', '阿拉上海宁', '男', 'string', '$2a$10$.Ehdm124nBWnhhPxpHMGjuFyN/xtHRAG0NQnA13D10BDsvok38xke', '18844157373', '江苏无锡', 99, 'string', '2018-11-22 09:48:59', '2018-11-22 09:48:59', NULL);

-- ----------------------------
-- Table structure for wc_visitor
-- ----------------------------
DROP TABLE IF EXISTS `wc_visitor`;
CREATE TABLE `wc_visitor`  (
  `visitor_id` varchar(10) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `creation_time` datetime NOT NULL COMMENT '访问时间',
  `user_id` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL COMMENT '访客id',
  `visitors_uesr` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL COMMENT '被访问的id',
  PRIMARY KEY (`visitor_id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_unicode_ci COMMENT = '访客记录表  group by' ROW_FORMAT = Compact;

SET FOREIGN_KEY_CHECKS = 1;
