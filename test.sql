create database test;

use test;
/*
Navicat MySQL Data Transfer

Source Server         : 本机
Source Server Version : 50724
Source Host           : localhost:3306
Source Database       : test

Target Server Type    : MYSQL
Target Server Version : 50724
File Encoding         : 65001

Date: 2023-03-01 23:27:38
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for address
-- ----------------------------
DROP TABLE IF EXISTS `address`;
CREATE TABLE `address` (
  `address_id` bigint(255) NOT NULL AUTO_INCREMENT,
  `user_id` bigint(255) NOT NULL,
  `user_name` varchar(255) NOT NULL,
  `phone` varchar(11) NOT NULL,
  `province` varchar(255) NOT NULL,
  `city` varchar(255) NOT NULL,
  `region` varchar(255) NOT NULL,
  `detail` varchar(255) NOT NULL,
  `is_deleted` int(1) NOT NULL DEFAULT '0',
  `is_default` bit(1) NOT NULL DEFAULT b'1',
  PRIMARY KEY (`address_id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of address
-- ----------------------------
INSERT INTO `address` VALUES ('1', '12', '1', '1', '1', '1', '1', '1', '0', '\0');
INSERT INTO `address` VALUES ('2', '12', '谭成余', '18100000000', '重庆', '重庆', '南岸区', '南坪', '0', '');
INSERT INTO `address` VALUES ('3', '12', '22222', '123123', '123123', '123123', '12312312', '1231212312', '0', '');
INSERT INTO `address` VALUES ('4', '12', '1231213', '123123123', '1231231', '2312312', '312312', '12312321', '0', '');
INSERT INTO `address` VALUES ('5', '12', '123', '123', '12312312', '123121', '23123', 'qwdwdqwdqww', '0', '');
INSERT INTO `address` VALUES ('6', '1', '龚博', '110120130', '重庆', '重庆', '沙坪坝', '养老院', '0', '');

-- ----------------------------
-- Table structure for carousel
-- ----------------------------
DROP TABLE IF EXISTS `carousel`;
CREATE TABLE `carousel` (
  `carousel_id` bigint(255) NOT NULL AUTO_INCREMENT,
  `url` varchar(255) NOT NULL,
  PRIMARY KEY (`carousel_id`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of carousel
-- ----------------------------
INSERT INTO `carousel` VALUES ('7', '/picture/3fd0cc686e68404b9ea85482d72342b5.jpg');
INSERT INTO `carousel` VALUES ('8', '/picture/6977df8f4be04669b55d9f7511758059.jpg');
INSERT INTO `carousel` VALUES ('9', '/picture/d0a6869efc2a453985fbdf892826870d.jpg');
INSERT INTO `carousel` VALUES ('10', '/picture/b230f4f0474947028190d0adbdfb8641.jpg');
INSERT INTO `carousel` VALUES ('11', '/picture/8db56c42e07a4c2bbad88c234a358513.jpg');

-- ----------------------------
-- Table structure for cart
-- ----------------------------
DROP TABLE IF EXISTS `cart`;
CREATE TABLE `cart` (
  `cart_id` bigint(255) NOT NULL AUTO_INCREMENT,
  `user_id` bigint(255) NOT NULL,
  `goods_id` bigint(255) NOT NULL,
  `goods_num` int(255) NOT NULL,
  `create_time` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `is_deleted` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`cart_id`)
) ENGINE=InnoDB AUTO_INCREMENT=128 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of cart
-- ----------------------------
INSERT INTO `cart` VALUES ('114', '1', '10201', '1', '2023-02-27 17:32:39', '1');
INSERT INTO `cart` VALUES ('115', '1', '10004', '1', '2023-02-27 17:34:44', '1');
INSERT INTO `cart` VALUES ('116', '1', '10713', '16', '2023-02-27 19:09:37', '1');
INSERT INTO `cart` VALUES ('117', '12', '10004', '10', '2023-02-27 19:11:20', '1');
INSERT INTO `cart` VALUES ('118', '12', '10713', '1', '2023-02-27 19:11:38', '1');
INSERT INTO `cart` VALUES ('119', '1', '10004', '1', '2023-02-27 19:17:40', '1');
INSERT INTO `cart` VALUES ('120', '12', '10201', '4', '2023-02-27 19:18:08', '1');
INSERT INTO `cart` VALUES ('121', '12', '10004', '2', '2023-02-27 19:20:09', '0');
INSERT INTO `cart` VALUES ('122', '12', '10201', '1', '2023-02-27 21:13:42', '1');
INSERT INTO `cart` VALUES ('123', '12', '10713', '7', '2023-02-27 21:24:29', '0');
INSERT INTO `cart` VALUES ('124', '1', '10201', '3', '2023-02-27 22:36:05', '0');
INSERT INTO `cart` VALUES ('125', '1', '10715', '5', '2023-02-28 17:51:04', '0');
INSERT INTO `cart` VALUES ('126', '1', '10723', '4', '2023-02-28 17:51:08', '0');
INSERT INTO `cart` VALUES ('127', '1', '10736', '26', '2023-02-28 18:34:13', '0');

-- ----------------------------
-- Table structure for fen_lei
-- ----------------------------
DROP TABLE IF EXISTS `fen_lei`;
CREATE TABLE `fen_lei` (
  `id` bigint(255) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of fen_lei
-- ----------------------------
INSERT INTO `fen_lei` VALUES ('1', '手机');
INSERT INTO `fen_lei` VALUES ('2', '平板');
INSERT INTO `fen_lei` VALUES ('3', '电脑');

-- ----------------------------
-- Table structure for goods
-- ----------------------------
DROP TABLE IF EXISTS `goods`;
CREATE TABLE `goods` (
  `goods_id` bigint(255) NOT NULL AUTO_INCREMENT,
  `goods_name` varchar(255) NOT NULL,
  `goods_info` varchar(255) NOT NULL DEFAULT 'fuck',
  `goods_image` varchar(255) NOT NULL,
  `goods_num` bigint(255) NOT NULL DEFAULT '0',
  `goods_price` double(255,2) NOT NULL,
  `is_deleted` int(1) DEFAULT '0',
  `is_new` int(1) NOT NULL DEFAULT '0',
  `zhe_kou_lv` double NOT NULL,
  `zhe_kou_time_start` datetime DEFAULT CURRENT_TIMESTAMP,
  `zhe_kou_time_stop` datetime DEFAULT CURRENT_TIMESTAMP,
  `fl_id` bigint(20) NOT NULL,
  PRIMARY KEY (`goods_id`)
) ENGINE=InnoDB AUTO_INCREMENT=10828 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of goods
-- ----------------------------
INSERT INTO `goods` VALUES ('10003', 'fuck111', '滋润型 400ml', '/picture/logo.jpg', '6', '1.12', '0', '1', '0.2', '2023-02-07 00:00:00', '2023-03-01 00:00:00', '1');
INSERT INTO `goods` VALUES ('10004', '无印良品 MUJI 柔和洁面泡沫', '125g', '/picture/3da0d748d70d40a4ba99f0f4b3dd8f44.jpg', '1', '2.00', '0', '1', '0', '2023-03-01 19:02:47', null, '2');
INSERT INTO `goods` VALUES ('10201', '迪奥（Dior）烈艳蓝金唇膏滋润999# 3.5g 经典正红色', '(口红 保湿滋润 气质显白 不挑皮) （新老包装随机）', '/picture/1c8b67b75c2642bdaa577dd6d4a17c6f.jpg', '4', '999999999.00', '0', '1', '0', '2023-03-01 19:02:47', null, '3');
INSERT INTO `goods` VALUES ('10713', '荣耀20 李现同款 4800万超广角AI四摄 3200W美颜自拍', '麒麟Kirin980全网通版8GB+128GB 蓝水翡翠 全面屏手机', '/picture/45f62e91098740de920b5f87829c20a5.jpg', '661', '1.00', '0', '1', '0', '2023-03-01 19:02:47', null, '1');
INSERT INTO `goods` VALUES ('10715', '123', '123', '/picture/壁纸.jpg', '1', '123.00', '0', '1', '0', '2023-03-01 19:02:47', null, '2');
INSERT INTO `goods` VALUES ('10716', '1', '1', '/picture/壁纸.jpg', '1', '1.00', '0', '0', '0', '2023-03-01 19:02:47', null, '3');
INSERT INTO `goods` VALUES ('10717', '2', 'fuck', '1', '3', '4.00', '1', '1', '0', '2023-03-01 19:02:47', null, '1');
INSERT INTO `goods` VALUES ('10718', '2', 'fuck', '1', '3', '4.00', '1', '0', '0', '2023-03-01 19:02:47', null, '2');
INSERT INTO `goods` VALUES ('10719', '2', 'fuck', '1', '3', '4.00', '1', '0', '0', '2023-03-01 19:02:47', null, '3');
INSERT INTO `goods` VALUES ('10720', '12312', '12312', '/picture/壁纸.jpg', '1', '11.00', '0', '1', '0', '2023-03-01 19:02:47', null, '1');
INSERT INTO `goods` VALUES ('10721', '12312', '12312', '/picture/壁纸.jpg', '1', '11.00', '0', '0', '0', '2023-03-01 19:02:47', null, '2');
INSERT INTO `goods` VALUES ('10722', '龚博dashabi', '1', '/picture/D:/Temp/04eb0c841205497ea138bbf322923eed..jpg', '1', '1.00', '1', '0', '0', '2023-03-01 19:02:47', null, '3');
INSERT INTO `goods` VALUES ('10723', '龚博dashabi', '1', '/picture/ecbfeb91950944d4a481faf2a0fc013c.jpg', '1', '1.00', '0', '0', '0', '2023-03-01 19:02:47', null, '0');
INSERT INTO `goods` VALUES ('10724', '测试', '12312', '/picture/3493c40f965d4dcc8406297e7f5a8d19.jpg', '1', '1231.00', '0', '0', '0', '2023-03-01 19:02:47', null, '0');
INSERT INTO `goods` VALUES ('10725', '测试', '12312', '/picture/3493c40f965d4dcc8406297e7f5a8d19.jpg', '1', '1231.00', '0', '0', '0', '2023-03-01 19:02:47', null, '0');
INSERT INTO `goods` VALUES ('10726', '测试', '12312', '/picture/3493c40f965d4dcc8406297e7f5a8d19.jpg', '1', '1.00', '0', '0', '0', '2023-03-01 19:02:47', null, '0');
INSERT INTO `goods` VALUES ('10727', '测试', '12312', '/picture/3493c40f965d4dcc8406297e7f5a8d19.jpg', '1', '2.00', '0', '0', '0', '2023-03-01 19:02:47', null, '0');
INSERT INTO `goods` VALUES ('10728', '测试', '12312', '/picture/3493c40f965d4dcc8406297e7f5a8d19.jpg', '1', '3.00', '0', '0', '0', '2023-03-01 19:02:47', null, '0');
INSERT INTO `goods` VALUES ('10729', '测试', '12312', '/picture/3493c40f965d4dcc8406297e7f5a8d19.jpg', '1', '3123.00', '0', '0', '0', '2023-03-01 19:02:47', null, '0');
INSERT INTO `goods` VALUES ('10730', '测试', '12312', '/picture/d2098fd4ef444fba90c7365d33b95dda.jpg', '1', '122.00', '0', '0', '0', '2023-03-01 19:02:47', null, '0');
INSERT INTO `goods` VALUES ('10731', '测试', '12312', '/picture/d2098fd4ef444fba90c7365d33b95dda.jpg', '1', '0.50', '0', '0', '0', '2023-03-01 19:02:47', null, '0');
INSERT INTO `goods` VALUES ('10732', '测试', '12312', '/picture/d2098fd4ef444fba90c7365d33b95dda.jpg', '1', '0.50', '0', '0', '0', '2023-03-01 19:02:47', null, '0');
INSERT INTO `goods` VALUES ('10733', '测试', '12312', '/picture/d2098fd4ef444fba90c7365d33b95dda.jpg', '1', '0.50', '0', '0', '0', '2023-03-01 19:02:47', null, '0');
INSERT INTO `goods` VALUES ('10734', '测试', '12312', '/picture/d2098fd4ef444fba90c7365d33b95dda.jpg', '1', '0.50', '0', '0', '0', '2023-03-01 19:02:47', null, '0');
INSERT INTO `goods` VALUES ('10735', '测试', '12312', '/picture/d2098fd4ef444fba90c7365d33b95dda.jpg', '1', '0.50', '0', '0', '0', '2023-03-01 19:02:47', null, '0');
INSERT INTO `goods` VALUES ('10736', '测试', '12312', '/picture/d2098fd4ef444fba90c7365d33b95dda.jpg', '1', '0.52', '0', '0', '0', '2023-03-01 19:02:47', null, '0');
INSERT INTO `goods` VALUES ('10737', '测试', '1', '/picture/d2098fd4ef444fba90c7365d33b95dda.jpg', '1', '0.52', '0', '0', '0', '2023-03-01 19:02:47', null, '0');
INSERT INTO `goods` VALUES ('10738', '测试123', '1', '/picture/d2098fd4ef444fba90c7365d33b95dda.jpg', '1', '0.52', '0', '0', '0', '2023-03-01 19:02:47', null, '0');
INSERT INTO `goods` VALUES ('10739', '哈哈啊哈', '123213', '/picture/c1e832f9af714b308554b1d515536a09.png', '123', '9999.00', '0', '0', '0', '2023-03-01 19:02:47', null, '0');
INSERT INTO `goods` VALUES ('10740', '哈哈啊哈', '123213', '/picture/c1e832f9af714b308554b1d515536a09.png', '123', '12.00', '0', '0', '0', '2023-03-01 19:02:47', null, '0');
INSERT INTO `goods` VALUES ('10741', '哈哈啊哈', '123213', '/picture/c1e832f9af714b308554b1d515536a09.png', '123', '32.00', '0', '0', '0', '2023-03-01 19:02:47', null, '0');
INSERT INTO `goods` VALUES ('10742', '哈哈啊哈', '123213', '/picture/c1e832f9af714b308554b1d515536a09.png', '123', '55.00', '0', '0', '0', '2023-03-01 19:02:47', null, '0');
INSERT INTO `goods` VALUES ('10743', '哈哈啊哈123', '123213', '/picture/c1e832f9af714b308554b1d515536a09.png', '123', '55.00', '0', '0', '0', '2023-03-01 19:02:47', null, '0');
INSERT INTO `goods` VALUES ('10744', '哈哈啊哈123', '123213', '/picture/c1e832f9af714b308554b1d515536a09.png', '123', '55.00', '0', '0', '0', '2023-03-01 19:02:47', null, '0');
INSERT INTO `goods` VALUES ('10745', '哈哈啊哈123', '123213', '/picture/c1e832f9af714b308554b1d515536a09.png', '123', '551.00', '0', '0', '0', '2023-03-01 19:02:47', null, '0');
INSERT INTO `goods` VALUES ('10746', '哈哈啊哈123', '123213', '/picture/c1e832f9af714b308554b1d515536a09.png', '123', '123.00', '0', '0', '0', '2023-03-01 19:02:47', null, '0');
INSERT INTO `goods` VALUES ('10747', '哈哈啊哈123', '123213', '/picture/c1e832f9af714b308554b1d515536a09.png', '123', '12312.00', '0', '0', '0', '2023-03-01 19:02:47', null, '0');
INSERT INTO `goods` VALUES ('10748', '哈哈啊哈123', '123213', '/picture/c1e832f9af714b308554b1d515536a09.png', '123', '12312232.00', '0', '0', '0', '2023-03-01 19:02:47', null, '0');
INSERT INTO `goods` VALUES ('10749', '哈哈啊哈123', '123213', '/picture/c1e832f9af714b308554b1d515536a09.png', '123', '123123.00', '0', '0', '0', '2023-03-01 19:02:47', null, '0');
INSERT INTO `goods` VALUES ('10750', '哈哈啊哈123', '123213', '/picture/c1e832f9af714b308554b1d515536a09.png', '123', '123123.00', '0', '0', '0', '2023-03-01 19:02:47', null, '0');
INSERT INTO `goods` VALUES ('10751', '哈哈啊哈123', '123213', '/picture/c1e832f9af714b308554b1d515536a09.png', '123', '123123.00', '0', '0', '0', '2023-03-01 19:02:47', null, '0');
INSERT INTO `goods` VALUES ('10752', '哈哈啊哈123', '123213', '/picture/c1e832f9af714b308554b1d515536a09.png', '123', '111.00', '0', '0', '0', '2023-03-01 19:02:47', null, '0');
INSERT INTO `goods` VALUES ('10753', '哈哈啊哈123', '123213', '/picture/c1e832f9af714b308554b1d515536a09.png', '123', '222.00', '0', '0', '0', '2023-03-01 19:02:47', null, '0');
INSERT INTO `goods` VALUES ('10754', '哈哈啊哈123', '123213', '/picture/c1e832f9af714b308554b1d515536a09.png', '123', '333.00', '0', '0', '0', '2023-03-01 19:02:47', null, '0');
INSERT INTO `goods` VALUES ('10755', '哈哈啊哈123', '123213', '/picture/c1e832f9af714b308554b1d515536a09.png', '123', '4444.00', '0', '0', '0', '2023-03-01 19:02:47', null, '0');
INSERT INTO `goods` VALUES ('10756', '哈哈啊哈123', '123213', '/picture/c1e832f9af714b308554b1d515536a09.png', '123', '111.00', '0', '0', '0', '2023-03-01 19:02:47', null, '0');
INSERT INTO `goods` VALUES ('10757', '哈哈啊哈123', '123213', '/picture/c1e832f9af714b308554b1d515536a09.png', '123', '2222.00', '0', '0', '0', '2023-03-01 19:02:47', null, '0');
INSERT INTO `goods` VALUES ('10758', '哈哈啊哈123', '111', '/picture/b764642315d24f278eb451e36f1bafdf.png', '123', '22.00', '0', '0', '0', '2023-03-01 19:02:47', null, '0');
INSERT INTO `goods` VALUES ('10759', '哈哈啊哈123', '111', '/picture/b764642315d24f278eb451e36f1bafdf.png', '123', '2254.00', '0', '0', '0', '2023-03-01 19:02:47', null, '0');
INSERT INTO `goods` VALUES ('10760', '哈哈啊哈123', '111', '/picture/b764642315d24f278eb451e36f1bafdf.png', '123', '225411.00', '0', '0', '0', '2023-03-01 19:02:47', null, '0');
INSERT INTO `goods` VALUES ('10761', '哈哈啊哈123', '111', '/picture/b764642315d24f278eb451e36f1bafdf.png', '123', '225411.00', '0', '0', '0', '2023-03-01 19:02:47', null, '0');
INSERT INTO `goods` VALUES ('10762', '哈哈啊哈123', '111', '/picture/b764642315d24f278eb451e36f1bafdf.png', '123', '225411.00', '0', '0', '0', '2023-03-01 19:02:47', null, '0');
INSERT INTO `goods` VALUES ('10763', '哈哈啊哈123', '111', '/picture/b764642315d24f278eb451e36f1bafdf.png', '123', '225411.00', '0', '0', '0', '2023-03-01 19:02:47', null, '0');
INSERT INTO `goods` VALUES ('10764', '哈哈啊哈123', '111', '/picture/b764642315d24f278eb451e36f1bafdf.png', '123', '225411.00', '0', '0', '0', '2023-03-01 19:02:47', null, '0');
INSERT INTO `goods` VALUES ('10765', '哈哈啊哈123', '111', '/picture/b764642315d24f278eb451e36f1bafdf.png', '123', '225411.00', '0', '0', '0', '2023-03-01 19:02:47', null, '0');
INSERT INTO `goods` VALUES ('10766', '哈哈啊哈123', '111', '/picture/b764642315d24f278eb451e36f1bafdf.png', '123', '225411.00', '0', '0', '0', '2023-03-01 19:02:47', null, '0');
INSERT INTO `goods` VALUES ('10767', '哈哈啊哈123', '111', '/picture/b764642315d24f278eb451e36f1bafdf.png', '123', '225411.00', '0', '0', '0', '2023-03-01 19:02:47', null, '0');
INSERT INTO `goods` VALUES ('10768', '哈哈啊哈123', '111', '/picture/b764642315d24f278eb451e36f1bafdf.png', '123', '225411.00', '0', '0', '0', '2023-03-01 19:02:47', null, '0');
INSERT INTO `goods` VALUES ('10769', '哈哈啊哈123', '111', '/picture/b764642315d24f278eb451e36f1bafdf.png', '123', '225411.00', '0', '0', '0', '2023-03-01 19:02:47', null, '0');
INSERT INTO `goods` VALUES ('10770', '哈哈啊哈123', '111', '/picture/b764642315d24f278eb451e36f1bafdf.png', '123', '225411.00', '0', '0', '0', '2023-03-01 19:02:47', null, '0');
INSERT INTO `goods` VALUES ('10771', '哈哈啊哈123', '111', '/picture/b764642315d24f278eb451e36f1bafdf.png', '123', '225411.00', '0', '0', '0', '2023-03-01 19:02:47', null, '0');
INSERT INTO `goods` VALUES ('10772', '哈哈啊哈123', '111', '/picture/b764642315d24f278eb451e36f1bafdf.png', '123', '225411.00', '0', '0', '0', '2023-03-01 19:02:47', null, '0');
INSERT INTO `goods` VALUES ('10773', '哈哈啊哈123', '111', '/picture/b764642315d24f278eb451e36f1bafdf.png', '123', '225411.00', '0', '0', '0', '2023-03-01 19:02:47', null, '0');
INSERT INTO `goods` VALUES ('10774', '哈哈啊哈123', '111', '/picture/b764642315d24f278eb451e36f1bafdf.png', '123', '225411.00', '0', '0', '0', '2023-03-01 19:02:47', null, '0');
INSERT INTO `goods` VALUES ('10775', '哈哈啊哈123', '111', '/picture/b764642315d24f278eb451e36f1bafdf.png', '123', '225411.00', '0', '0', '0', '2023-03-01 19:02:47', null, '0');
INSERT INTO `goods` VALUES ('10776', '哈哈啊哈123', '111', '/picture/b764642315d24f278eb451e36f1bafdf.png', '123', '225411.00', '0', '0', '0', '2023-03-01 19:02:47', null, '0');
INSERT INTO `goods` VALUES ('10777', '哈哈啊哈123', '111', '/picture/b764642315d24f278eb451e36f1bafdf.png', '123', '225411.00', '0', '0', '0', '2023-03-01 19:02:47', null, '0');
INSERT INTO `goods` VALUES ('10778', '哈哈啊哈123', '111', '/picture/b764642315d24f278eb451e36f1bafdf.png', '123', '225411.00', '0', '0', '0', '2023-03-01 19:02:47', null, '0');
INSERT INTO `goods` VALUES ('10779', '哈哈啊哈123', '111', '/picture/b764642315d24f278eb451e36f1bafdf.png', '123', '225411.00', '0', '0', '0', '2023-03-01 19:02:47', null, '0');
INSERT INTO `goods` VALUES ('10780', '哈哈啊哈123', '111', '/picture/b764642315d24f278eb451e36f1bafdf.png', '123', '225411.00', '0', '0', '0', '2023-03-01 19:02:47', null, '0');
INSERT INTO `goods` VALUES ('10781', '哈哈啊哈123', '111', '/picture/b764642315d24f278eb451e36f1bafdf.png', '123', '225411.00', '0', '0', '0', '2023-03-01 19:02:47', null, '0');
INSERT INTO `goods` VALUES ('10782', '哈哈啊哈123', '111', '/picture/b764642315d24f278eb451e36f1bafdf.png', '123', '225411.00', '0', '0', '0', '2023-03-01 19:02:47', null, '0');
INSERT INTO `goods` VALUES ('10783', '哈哈啊哈123', '111', '/picture/b764642315d24f278eb451e36f1bafdf.png', '123', '225411.00', '0', '0', '0', '2023-03-01 19:02:47', null, '0');
INSERT INTO `goods` VALUES ('10784', '哈哈啊哈123', '111', '/picture/b764642315d24f278eb451e36f1bafdf.png', '123', '225411.00', '0', '0', '0', '2023-03-01 19:02:47', null, '0');
INSERT INTO `goods` VALUES ('10785', '哈哈啊哈123', '111', '/picture/b764642315d24f278eb451e36f1bafdf.png', '123', '225411.00', '0', '0', '0', '2023-03-01 19:02:47', null, '0');
INSERT INTO `goods` VALUES ('10786', '哈哈啊哈123', '111', '/picture/b764642315d24f278eb451e36f1bafdf.png', '123', '225411.00', '0', '0', '0', '2023-03-01 19:02:47', null, '0');
INSERT INTO `goods` VALUES ('10787', '哈哈啊哈123', '111', '/picture/b764642315d24f278eb451e36f1bafdf.png', '123', '225411.00', '0', '0', '0', '2023-03-01 19:02:47', null, '0');
INSERT INTO `goods` VALUES ('10788', '哈哈啊哈123', '111', '/picture/b764642315d24f278eb451e36f1bafdf.png', '123', '225411.00', '0', '0', '0', '2023-03-01 19:02:47', null, '0');
INSERT INTO `goods` VALUES ('10789', '哈哈啊哈123', '111', '/picture/b764642315d24f278eb451e36f1bafdf.png', '123', '225411.00', '0', '0', '0', '2023-03-01 19:02:47', null, '0');
INSERT INTO `goods` VALUES ('10790', '哈哈啊哈123', '111', '/picture/b764642315d24f278eb451e36f1bafdf.png', '123', '225411.00', '0', '0', '0', '2023-03-01 19:02:47', null, '0');
INSERT INTO `goods` VALUES ('10791', '哈哈啊哈123', '111', '/picture/b764642315d24f278eb451e36f1bafdf.png', '123', '225411.00', '0', '0', '0', '2023-03-01 19:02:47', null, '0');
INSERT INTO `goods` VALUES ('10792', '哈哈啊哈123', '111', '/picture/b764642315d24f278eb451e36f1bafdf.png', '123', '225411.00', '0', '0', '0', '2023-03-01 19:02:47', null, '0');
INSERT INTO `goods` VALUES ('10793', '哈哈啊哈123', '111', '/picture/b764642315d24f278eb451e36f1bafdf.png', '123', '225411.00', '0', '0', '0', '2023-03-01 19:02:47', null, '0');
INSERT INTO `goods` VALUES ('10794', '哈哈啊哈123', '111', '/picture/b764642315d24f278eb451e36f1bafdf.png', '123', '225411.00', '0', '0', '0', '2023-03-01 19:02:47', null, '0');
INSERT INTO `goods` VALUES ('10795', '哈哈啊哈123', '111', '/picture/b764642315d24f278eb451e36f1bafdf.png', '123', '225411.00', '0', '0', '0', '2023-03-01 19:02:47', null, '0');
INSERT INTO `goods` VALUES ('10796', '哈哈啊哈123', '111', '/picture/b764642315d24f278eb451e36f1bafdf.png', '123', '225411.00', '0', '0', '0', '2023-03-01 19:02:47', null, '0');
INSERT INTO `goods` VALUES ('10797', '哈哈啊哈123', '111', '/picture/b764642315d24f278eb451e36f1bafdf.png', '123', '225411.00', '0', '0', '0', '2023-03-01 19:02:47', null, '0');
INSERT INTO `goods` VALUES ('10798', '哈哈啊哈123', '111', '/picture/b764642315d24f278eb451e36f1bafdf.png', '123', '225411.00', '0', '0', '0', '2023-03-01 19:02:47', null, '0');
INSERT INTO `goods` VALUES ('10799', '哈哈啊哈123', '111', '/picture/b764642315d24f278eb451e36f1bafdf.png', '123', '225411.00', '0', '0', '0', '2023-03-01 19:02:47', null, '0');
INSERT INTO `goods` VALUES ('10800', '哈哈啊哈123', '111', '/picture/b764642315d24f278eb451e36f1bafdf.png', '123', '225411.00', '0', '0', '0', '2023-03-01 19:02:47', null, '0');
INSERT INTO `goods` VALUES ('10801', '哈哈啊哈123', '111', '/picture/b764642315d24f278eb451e36f1bafdf.png', '123', '225411.00', '0', '0', '0', '2023-03-01 19:02:47', null, '0');
INSERT INTO `goods` VALUES ('10802', '哈哈啊哈123', '111', '/picture/b764642315d24f278eb451e36f1bafdf.png', '123', '225411.00', '0', '0', '0', '2023-03-01 19:02:47', null, '0');
INSERT INTO `goods` VALUES ('10803', '哈哈啊哈123', '111', '/picture/b764642315d24f278eb451e36f1bafdf.png', '123', '225411.00', '0', '0', '0', '2023-03-01 19:02:47', null, '0');
INSERT INTO `goods` VALUES ('10804', '哈哈啊哈123', '111', '/picture/b764642315d24f278eb451e36f1bafdf.png', '123', '225411.00', '0', '0', '0', '2023-03-01 19:02:47', null, '0');
INSERT INTO `goods` VALUES ('10805', '哈哈啊哈123', '111', '/picture/b764642315d24f278eb451e36f1bafdf.png', '123', '225411.00', '0', '0', '0', '2023-03-01 19:02:47', null, '0');
INSERT INTO `goods` VALUES ('10806', '哈哈啊哈123', '111', '/picture/b764642315d24f278eb451e36f1bafdf.png', '123', '225411.00', '0', '0', '0', '2023-03-01 19:02:47', null, '0');
INSERT INTO `goods` VALUES ('10807', '哈哈啊哈123', '111', '/picture/b764642315d24f278eb451e36f1bafdf.png', '123', '225411.00', '0', '0', '0', '2023-03-01 19:02:47', null, '0');
INSERT INTO `goods` VALUES ('10808', '哈哈啊哈123', '111', '/picture/b764642315d24f278eb451e36f1bafdf.png', '123', '225411.00', '0', '0', '0', '2023-03-01 19:02:47', null, '0');
INSERT INTO `goods` VALUES ('10809', '哈哈啊哈123', '111', '/picture/b764642315d24f278eb451e36f1bafdf.png', '123', '225411.00', '0', '0', '0', '2023-03-01 19:02:47', null, '0');
INSERT INTO `goods` VALUES ('10810', '哈哈啊哈123', '111', '/picture/b764642315d24f278eb451e36f1bafdf.png', '123', '0.01', '0', '0', '0', '2023-03-01 19:02:47', null, '0');
INSERT INTO `goods` VALUES ('10811', '哈哈啊哈123', '111', '/picture/b764642315d24f278eb451e36f1bafdf.png', '123', '0.01', '0', '0', '0', '2023-03-01 19:02:47', null, '0');
INSERT INTO `goods` VALUES ('10812', '哈哈啊哈123', '111', '/picture/b764642315d24f278eb451e36f1bafdf.png', '123', '0.01', '0', '0', '0', '2023-03-01 19:02:47', null, '0');
INSERT INTO `goods` VALUES ('10813', '哈哈啊哈123', '111', '/picture/b764642315d24f278eb451e36f1bafdf.png', '123', '0.01', '0', '0', '0', '2023-03-01 19:02:47', null, '0');
INSERT INTO `goods` VALUES ('10814', '哈哈啊哈123', '111', '/picture/b764642315d24f278eb451e36f1bafdf.png', '123', '0.01', '0', '0', '0', '2023-03-01 19:02:47', null, '0');
INSERT INTO `goods` VALUES ('10815', '哈哈啊哈123', '111', '/picture/b764642315d24f278eb451e36f1bafdf.png', '123', '0.02', '0', '0', '0', '2023-03-01 19:02:47', null, '0');
INSERT INTO `goods` VALUES ('10816', '哈哈啊哈123', '111', '/picture/b764642315d24f278eb451e36f1bafdf.png', '123', '0.02', '0', '0', '0', '2023-03-01 19:02:47', null, '0');
INSERT INTO `goods` VALUES ('10817', '哈哈啊哈123', '111', '/picture/b764642315d24f278eb451e36f1bafdf.png', '123', '0.02', '0', '0', '0', '2023-03-01 19:02:47', null, '0');
INSERT INTO `goods` VALUES ('10818', '哈哈啊哈123', '111', '/picture/b764642315d24f278eb451e36f1bafdf.png', '123', '0.02', '0', '0', '0', '2023-03-01 19:02:47', null, '0');
INSERT INTO `goods` VALUES ('10819', '哈哈啊哈123', '111', '/picture/b764642315d24f278eb451e36f1bafdf.png', '123', '0.02', '0', '0', '0', '2023-03-01 19:02:47', null, '0');
INSERT INTO `goods` VALUES ('10820', '哈哈啊哈123', '111', '/picture/b764642315d24f278eb451e36f1bafdf.png', '123', '0.02', '0', '0', '0', '2023-03-01 19:02:47', null, '0');
INSERT INTO `goods` VALUES ('10821', '哈哈啊哈123', '111', '/picture/b764642315d24f278eb451e36f1bafdf.png', '123', '0.03', '0', '0', '0', '2023-03-01 19:02:47', null, '0');
INSERT INTO `goods` VALUES ('10822', '哈哈啊哈123', '111', '/picture/b764642315d24f278eb451e36f1bafdf.png', '123', '0.03', '0', '0', '0', '2023-03-01 19:02:47', null, '0');
INSERT INTO `goods` VALUES ('10823', '哈哈啊哈123', '111', '/picture/b764642315d24f278eb451e36f1bafdf.png', '123', '0.03', '0', '0', '0', '2023-03-01 19:02:47', null, '0');
INSERT INTO `goods` VALUES ('10824', '哈哈啊哈123', '111', '/picture/b764642315d24f278eb451e36f1bafdf.png', '123', '0.03', '0', '0', '0', '2023-03-01 19:02:47', null, '0');
INSERT INTO `goods` VALUES ('10825', '哈哈啊哈123', '111', '/picture/b764642315d24f278eb451e36f1bafdf.png', '123', '0.03', '0', '0', '0', '2023-03-01 19:02:47', null, '0');
INSERT INTO `goods` VALUES ('10826', '哈哈啊哈123', '111', '/picture/b764642315d24f278eb451e36f1bafdf.png', '123', '0.03', '0', '0', '0', '2023-03-01 19:02:47', null, '0');
INSERT INTO `goods` VALUES ('10827', '哈哈啊哈123', '111', '/picture/b764642315d24f278eb451e36f1bafdf.png', '123', '0.03', '0', '0', '0', '2023-03-01 19:02:47', null, '0');

-- ----------------------------
-- Table structure for logs
-- ----------------------------
DROP TABLE IF EXISTS `logs`;
CREATE TABLE `logs` (
  `log_id` bigint(255) NOT NULL AUTO_INCREMENT,
  `addr` varchar(255) NOT NULL,
  `browser` varchar(255) NOT NULL,
  `is_deleted` int(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`log_id`)
) ENGINE=InnoDB AUTO_INCREMENT=625 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of logs
-- ----------------------------
INSERT INTO `logs` VALUES ('1', '192.168.1.177', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/110.0.0.0 Safari/537.36 Edg/110.0.1587.56', '0');
INSERT INTO `logs` VALUES ('2', '192.168.1.177', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/110.0.0.0 Safari/537.36 Edg/110.0.1587.56', '0');
INSERT INTO `logs` VALUES ('3', '192.168.1.187', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/110.0.0.0 Safari/537.36', '0');
INSERT INTO `logs` VALUES ('4', '192.168.1.177', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/110.0.0.0 Safari/537.36 Edg/110.0.1587.56', '0');
INSERT INTO `logs` VALUES ('5', '192.168.1.177', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/110.0.0.0 Safari/537.36 Edg/110.0.1587.56', '0');
INSERT INTO `logs` VALUES ('6', '192.168.1.177', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/110.0.0.0 Safari/537.36 Edg/110.0.1587.56', '0');
INSERT INTO `logs` VALUES ('7', '192.168.1.177', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/110.0.0.0 Safari/537.36 Edg/110.0.1587.56', '0');
INSERT INTO `logs` VALUES ('8', '192.168.1.177', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/110.0.0.0 Safari/537.36 Edg/110.0.1587.56', '0');
INSERT INTO `logs` VALUES ('9', '192.168.1.177', 'Mozilla/5.0 (iPhone; CPU iPhone OS 13_2_3 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/13.0.3 Mobile/15E148 Safari/604.1 Edg/110.0.0.0', '0');
INSERT INTO `logs` VALUES ('10', '192.168.1.177', 'Mozilla/5.0 (iPhone; CPU iPhone OS 13_2_3 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/13.0.3 Mobile/15E148 Safari/604.1 Edg/110.0.0.0', '0');
INSERT INTO `logs` VALUES ('11', '192.168.1.177', 'Mozilla/5.0 (iPhone; CPU iPhone OS 13_2_3 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/13.0.3 Mobile/15E148 Safari/604.1 Edg/110.0.0.0', '0');
INSERT INTO `logs` VALUES ('12', '192.168.1.177', 'Mozilla/5.0 (iPhone; CPU iPhone OS 13_2_3 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/13.0.3 Mobile/15E148 Safari/604.1 Edg/110.0.0.0', '0');
INSERT INTO `logs` VALUES ('13', '192.168.1.177', 'Mozilla/5.0 (iPhone; CPU iPhone OS 13_2_3 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/13.0.3 Mobile/15E148 Safari/604.1 Edg/110.0.0.0', '0');
INSERT INTO `logs` VALUES ('14', '192.168.1.177', 'Mozilla/5.0 (iPhone; CPU iPhone OS 13_2_3 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/13.0.3 Mobile/15E148 Safari/604.1 Edg/110.0.0.0', '0');
INSERT INTO `logs` VALUES ('15', '192.168.1.177', 'Mozilla/5.0 (iPhone; CPU iPhone OS 13_2_3 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/13.0.3 Mobile/15E148 Safari/604.1 Edg/110.0.0.0', '0');
INSERT INTO `logs` VALUES ('16', '192.168.1.177', 'Mozilla/5.0 (iPhone; CPU iPhone OS 13_2_3 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/13.0.3 Mobile/15E148 Safari/604.1 Edg/110.0.0.0', '0');
INSERT INTO `logs` VALUES ('17', '192.168.1.187', 'Mozilla/5.0 (iPhone; CPU iPhone OS 13_2_3 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/13.0.3 Mobile/15E148 Safari/604.1 Edg/110.0.0.0', '0');
INSERT INTO `logs` VALUES ('18', '192.168.1.187', 'Mozilla/5.0 (iPhone; CPU iPhone OS 13_2_3 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/13.0.3 Mobile/15E148 Safari/604.1 Edg/110.0.0.0', '0');
INSERT INTO `logs` VALUES ('19', '192.168.1.177', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/110.0.0.0 Safari/537.36 Edg/110.0.1587.56', '0');
INSERT INTO `logs` VALUES ('20', '192.168.1.187', 'Mozilla/5.0 (iPhone; CPU iPhone OS 13_2_3 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/13.0.3 Mobile/15E148 Safari/604.1 Edg/110.0.0.0', '0');
INSERT INTO `logs` VALUES ('21', '192.168.1.177', 'Mozilla/5.0 (iPhone; CPU iPhone OS 13_2_3 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/13.0.3 Mobile/15E148 Safari/604.1 Edg/110.0.0.0', '0');
INSERT INTO `logs` VALUES ('22', '192.168.1.177', 'Mozilla/5.0 (iPhone; CPU iPhone OS 13_2_3 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/13.0.3 Mobile/15E148 Safari/604.1 Edg/110.0.0.0', '0');
INSERT INTO `logs` VALUES ('23', '192.168.1.177', 'Mozilla/5.0 (iPhone; CPU iPhone OS 13_2_3 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/13.0.3 Mobile/15E148 Safari/604.1 Edg/110.0.0.0', '0');
INSERT INTO `logs` VALUES ('24', '192.168.1.177', 'Mozilla/5.0 (iPhone; CPU iPhone OS 13_2_3 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/13.0.3 Mobile/15E148 Safari/604.1 Edg/110.0.0.0', '0');
INSERT INTO `logs` VALUES ('25', '192.168.1.177', 'Mozilla/5.0 (iPhone; CPU iPhone OS 13_2_3 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/13.0.3 Mobile/15E148 Safari/604.1 Edg/110.0.0.0', '0');
INSERT INTO `logs` VALUES ('26', '192.168.1.177', 'Mozilla/5.0 (iPhone; CPU iPhone OS 13_2_3 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/13.0.3 Mobile/15E148 Safari/604.1 Edg/110.0.0.0', '0');
INSERT INTO `logs` VALUES ('27', '192.168.1.177', 'Mozilla/5.0 (iPhone; CPU iPhone OS 13_2_3 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/13.0.3 Mobile/15E148 Safari/604.1 Edg/110.0.0.0', '0');
INSERT INTO `logs` VALUES ('28', '192.168.1.177', 'Mozilla/5.0 (iPhone; CPU iPhone OS 13_2_3 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/13.0.3 Mobile/15E148 Safari/604.1 Edg/110.0.0.0', '0');
INSERT INTO `logs` VALUES ('29', '192.168.1.177', 'Mozilla/5.0 (iPhone; CPU iPhone OS 13_2_3 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/13.0.3 Mobile/15E148 Safari/604.1 Edg/110.0.0.0', '0');
INSERT INTO `logs` VALUES ('30', '192.168.1.177', 'Mozilla/5.0 (iPhone; CPU iPhone OS 13_2_3 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/13.0.3 Mobile/15E148 Safari/604.1 Edg/110.0.0.0', '0');
INSERT INTO `logs` VALUES ('31', '192.168.1.177', 'Mozilla/5.0 (iPhone; CPU iPhone OS 13_2_3 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/13.0.3 Mobile/15E148 Safari/604.1 Edg/110.0.0.0', '0');
INSERT INTO `logs` VALUES ('32', '192.168.1.177', 'Mozilla/5.0 (iPhone; CPU iPhone OS 13_2_3 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/13.0.3 Mobile/15E148 Safari/604.1 Edg/110.0.0.0', '0');
INSERT INTO `logs` VALUES ('33', '192.168.1.177', 'Mozilla/5.0 (iPhone; CPU iPhone OS 13_2_3 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/13.0.3 Mobile/15E148 Safari/604.1 Edg/110.0.0.0', '0');
INSERT INTO `logs` VALUES ('34', '192.168.1.177', 'Mozilla/5.0 (iPhone; CPU iPhone OS 13_2_3 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/13.0.3 Mobile/15E148 Safari/604.1 Edg/110.0.0.0', '0');
INSERT INTO `logs` VALUES ('35', '192.168.1.177', 'Mozilla/5.0 (iPhone; CPU iPhone OS 13_2_3 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/13.0.3 Mobile/15E148 Safari/604.1 Edg/110.0.0.0', '0');
INSERT INTO `logs` VALUES ('36', '192.168.1.177', 'Mozilla/5.0 (iPhone; CPU iPhone OS 13_2_3 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/13.0.3 Mobile/15E148 Safari/604.1 Edg/110.0.0.0', '0');
INSERT INTO `logs` VALUES ('37', '192.168.1.177', 'Mozilla/5.0 (iPhone; CPU iPhone OS 13_2_3 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/13.0.3 Mobile/15E148 Safari/604.1 Edg/110.0.0.0', '0');
INSERT INTO `logs` VALUES ('38', '192.168.1.187', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/110.0.0.0 Safari/537.36', '0');
INSERT INTO `logs` VALUES ('39', '192.168.1.177', 'Mozilla/5.0 (iPhone; CPU iPhone OS 13_2_3 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/13.0.3 Mobile/15E148 Safari/604.1 Edg/110.0.0.0', '0');
INSERT INTO `logs` VALUES ('40', '192.168.1.177', 'Mozilla/5.0 (iPhone; CPU iPhone OS 13_2_3 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/13.0.3 Mobile/15E148 Safari/604.1 Edg/110.0.0.0', '0');
INSERT INTO `logs` VALUES ('41', '192.168.1.187', 'Mozilla/5.0 (iPhone; CPU iPhone OS 13_2_3 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/13.0.3 Mobile/15E148 Safari/604.1', '0');
INSERT INTO `logs` VALUES ('42', '192.168.1.177', 'Mozilla/5.0 (iPhone; CPU iPhone OS 13_2_3 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/13.0.3 Mobile/15E148 Safari/604.1 Edg/110.0.0.0', '0');
INSERT INTO `logs` VALUES ('43', '192.168.1.187', 'Mozilla/5.0 (iPhone; CPU iPhone OS 13_2_3 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/13.0.3 Mobile/15E148 Safari/604.1', '0');
INSERT INTO `logs` VALUES ('44', '192.168.1.187', 'Mozilla/5.0 (iPhone; CPU iPhone OS 13_2_3 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/13.0.3 Mobile/15E148 Safari/604.1', '0');
INSERT INTO `logs` VALUES ('45', '192.168.1.187', 'Mozilla/5.0 (iPhone; CPU iPhone OS 13_2_3 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/13.0.3 Mobile/15E148 Safari/604.1', '0');
INSERT INTO `logs` VALUES ('46', '192.168.1.177', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.87 Safari/537.36 SE 2.X MetaSr 1.0', '0');
INSERT INTO `logs` VALUES ('47', '192.168.1.177', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.87 Safari/537.36 SE 2.X MetaSr 1.0', '0');
INSERT INTO `logs` VALUES ('48', '192.168.1.177', 'Mozilla/5.0 (iPhone; CPU iPhone OS 13_2_3 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/13.0.3 Mobile/15E148 Safari/604.1', '0');
INSERT INTO `logs` VALUES ('49', '192.168.1.177', 'Mozilla/5.0 (iPhone; CPU iPhone OS 13_2_3 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/13.0.3 Mobile/15E148 Safari/604.1', '0');
INSERT INTO `logs` VALUES ('50', '192.168.1.187', 'Mozilla/5.0 (iPhone; CPU iPhone OS 13_2_3 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/13.0.3 Mobile/15E148 Safari/604.1', '0');
INSERT INTO `logs` VALUES ('51', '192.168.1.177', 'Mozilla/5.0 (iPhone; CPU iPhone OS 13_2_3 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/13.0.3 Mobile/15E148 Safari/604.1', '0');
INSERT INTO `logs` VALUES ('52', '192.168.1.187', 'Mozilla/5.0 (iPhone; CPU iPhone OS 13_2_3 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/13.0.3 Mobile/15E148 Safari/604.1', '0');
INSERT INTO `logs` VALUES ('53', '192.168.1.187', 'Mozilla/5.0 (iPhone; CPU iPhone OS 13_2_3 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/13.0.3 Mobile/15E148 Safari/604.1', '0');
INSERT INTO `logs` VALUES ('54', '192.168.1.187', 'Mozilla/5.0 (iPhone; CPU iPhone OS 13_2_3 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/13.0.3 Mobile/15E148 Safari/604.1', '0');
INSERT INTO `logs` VALUES ('55', '192.168.1.187', 'Mozilla/5.0 (iPhone; CPU iPhone OS 13_2_3 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/13.0.3 Mobile/15E148 Safari/604.1', '0');
INSERT INTO `logs` VALUES ('56', '192.168.1.187', 'Mozilla/5.0 (iPhone; CPU iPhone OS 13_2_3 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/13.0.3 Mobile/15E148 Safari/604.1', '0');
INSERT INTO `logs` VALUES ('57', '192.168.1.187', 'Mozilla/5.0 (iPhone; CPU iPhone OS 13_2_3 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/13.0.3 Mobile/15E148 Safari/604.1', '0');
INSERT INTO `logs` VALUES ('58', '192.168.1.187', 'Mozilla/5.0 (iPhone; CPU iPhone OS 13_2_3 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/13.0.3 Mobile/15E148 Safari/604.1', '0');
INSERT INTO `logs` VALUES ('59', '192.168.1.187', 'Mozilla/5.0 (iPhone; CPU iPhone OS 13_2_3 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/13.0.3 Mobile/15E148 Safari/604.1', '0');
INSERT INTO `logs` VALUES ('60', '192.168.1.187', 'Mozilla/5.0 (iPhone; CPU iPhone OS 13_2_3 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/13.0.3 Mobile/15E148 Safari/604.1', '0');
INSERT INTO `logs` VALUES ('61', '192.168.1.187', 'Mozilla/5.0 (iPhone; CPU iPhone OS 13_2_3 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/13.0.3 Mobile/15E148 Safari/604.1', '0');
INSERT INTO `logs` VALUES ('62', '192.168.1.177', 'Mozilla/5.0 (iPhone; CPU iPhone OS 13_2_3 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/13.0.3 Mobile/15E148 Safari/604.1 Edg/110.0.0.0', '0');
INSERT INTO `logs` VALUES ('63', '192.168.1.177', 'Mozilla/5.0 (iPhone; CPU iPhone OS 13_2_3 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/13.0.3 Mobile/15E148 Safari/604.1', '0');
INSERT INTO `logs` VALUES ('64', '192.168.1.187', 'Mozilla/5.0 (iPhone; CPU iPhone OS 13_2_3 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/13.0.3 Mobile/15E148 Safari/604.1', '0');
INSERT INTO `logs` VALUES ('65', '192.168.1.187', 'Mozilla/5.0 (iPhone; CPU iPhone OS 13_2_3 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/13.0.3 Mobile/15E148 Safari/604.1', '0');
INSERT INTO `logs` VALUES ('66', '192.168.1.187', 'Mozilla/5.0 (iPhone; CPU iPhone OS 13_2_3 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/13.0.3 Mobile/15E148 Safari/604.1', '0');
INSERT INTO `logs` VALUES ('67', '192.168.1.177', 'Mozilla/5.0 (iPhone; CPU iPhone OS 13_2_3 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/13.0.3 Mobile/15E148 Safari/604.1', '0');
INSERT INTO `logs` VALUES ('68', '192.168.1.187', 'Mozilla/5.0 (iPhone; CPU iPhone OS 13_2_3 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/13.0.3 Mobile/15E148 Safari/604.1', '0');
INSERT INTO `logs` VALUES ('69', '192.168.1.187', 'Mozilla/5.0 (iPhone; CPU iPhone OS 13_2_3 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/13.0.3 Mobile/15E148 Safari/604.1', '0');
INSERT INTO `logs` VALUES ('70', '192.168.1.187', 'Mozilla/5.0 (iPhone; CPU iPhone OS 13_2_3 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/13.0.3 Mobile/15E148 Safari/604.1', '0');
INSERT INTO `logs` VALUES ('71', '192.168.1.187', 'Mozilla/5.0 (iPhone; CPU iPhone OS 13_2_3 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/13.0.3 Mobile/15E148 Safari/604.1', '0');
INSERT INTO `logs` VALUES ('72', '192.168.1.187', 'Mozilla/5.0 (iPhone; CPU iPhone OS 13_2_3 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/13.0.3 Mobile/15E148 Safari/604.1', '0');
INSERT INTO `logs` VALUES ('73', '192.168.1.187', 'Mozilla/5.0 (iPhone; CPU iPhone OS 13_2_3 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/13.0.3 Mobile/15E148 Safari/604.1', '0');
INSERT INTO `logs` VALUES ('74', '192.168.1.187', 'Mozilla/5.0 (iPhone; CPU iPhone OS 13_2_3 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/13.0.3 Mobile/15E148 Safari/604.1', '0');
INSERT INTO `logs` VALUES ('75', '192.168.1.187', 'Mozilla/5.0 (iPhone; CPU iPhone OS 13_2_3 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/13.0.3 Mobile/15E148 Safari/604.1', '0');
INSERT INTO `logs` VALUES ('76', '192.168.1.187', 'Mozilla/5.0 (iPhone; CPU iPhone OS 13_2_3 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/13.0.3 Mobile/15E148 Safari/604.1', '0');
INSERT INTO `logs` VALUES ('77', '192.168.1.187', 'Mozilla/5.0 (iPhone; CPU iPhone OS 13_2_3 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/13.0.3 Mobile/15E148 Safari/604.1', '0');
INSERT INTO `logs` VALUES ('78', '192.168.1.187', 'Mozilla/5.0 (iPhone; CPU iPhone OS 13_2_3 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/13.0.3 Mobile/15E148 Safari/604.1', '0');
INSERT INTO `logs` VALUES ('79', '192.168.1.187', 'Mozilla/5.0 (iPhone; CPU iPhone OS 13_2_3 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/13.0.3 Mobile/15E148 Safari/604.1', '0');
INSERT INTO `logs` VALUES ('80', '192.168.1.187', 'Mozilla/5.0 (iPhone; CPU iPhone OS 13_2_3 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/13.0.3 Mobile/15E148 Safari/604.1', '0');
INSERT INTO `logs` VALUES ('81', '192.168.1.187', 'Mozilla/5.0 (iPhone; CPU iPhone OS 13_2_3 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/13.0.3 Mobile/15E148 Safari/604.1', '0');
INSERT INTO `logs` VALUES ('82', '192.168.1.187', 'Mozilla/5.0 (iPhone; CPU iPhone OS 13_2_3 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/13.0.3 Mobile/15E148 Safari/604.1', '0');
INSERT INTO `logs` VALUES ('83', '192.168.1.187', 'Mozilla/5.0 (iPhone; CPU iPhone OS 13_2_3 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/13.0.3 Mobile/15E148 Safari/604.1', '0');
INSERT INTO `logs` VALUES ('84', '192.168.1.187', 'Mozilla/5.0 (iPhone; CPU iPhone OS 13_2_3 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/13.0.3 Mobile/15E148 Safari/604.1', '0');
INSERT INTO `logs` VALUES ('85', '192.168.1.187', 'Mozilla/5.0 (iPhone; CPU iPhone OS 13_2_3 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/13.0.3 Mobile/15E148 Safari/604.1', '0');
INSERT INTO `logs` VALUES ('86', '192.168.1.187', 'Mozilla/5.0 (iPhone; CPU iPhone OS 13_2_3 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/13.0.3 Mobile/15E148 Safari/604.1', '0');
INSERT INTO `logs` VALUES ('87', '192.168.1.187', 'Mozilla/5.0 (iPhone; CPU iPhone OS 13_2_3 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/13.0.3 Mobile/15E148 Safari/604.1', '0');
INSERT INTO `logs` VALUES ('88', '192.168.1.177', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/110.0.0.0 Safari/537.36 Edg/110.0.1587.56', '0');
INSERT INTO `logs` VALUES ('89', '192.168.1.177', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/110.0.0.0 Safari/537.36 Edg/110.0.1587.56', '0');
INSERT INTO `logs` VALUES ('90', '192.168.1.187', 'Mozilla/5.0 (iPhone; CPU iPhone OS 13_2_3 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/13.0.3 Mobile/15E148 Safari/604.1', '0');
INSERT INTO `logs` VALUES ('91', '192.168.1.187', 'Mozilla/5.0 (iPhone; CPU iPhone OS 13_2_3 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/13.0.3 Mobile/15E148 Safari/604.1', '0');
INSERT INTO `logs` VALUES ('92', '192.168.1.177', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/110.0.0.0 Safari/537.36 Edg/110.0.1587.56', '0');
INSERT INTO `logs` VALUES ('93', '192.168.1.177', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/110.0.0.0 Safari/537.36 Edg/110.0.1587.56', '0');
INSERT INTO `logs` VALUES ('94', '192.168.1.187', 'Mozilla/5.0 (iPhone; CPU iPhone OS 13_2_3 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/13.0.3 Mobile/15E148 Safari/604.1', '0');
INSERT INTO `logs` VALUES ('95', '192.168.1.187', 'Mozilla/5.0 (iPhone; CPU iPhone OS 13_2_3 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/13.0.3 Mobile/15E148 Safari/604.1', '0');
INSERT INTO `logs` VALUES ('96', '192.168.1.187', 'Mozilla/5.0 (iPhone; CPU iPhone OS 13_2_3 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/13.0.3 Mobile/15E148 Safari/604.1', '0');
INSERT INTO `logs` VALUES ('97', '192.168.1.187', 'Mozilla/5.0 (iPhone; CPU iPhone OS 13_2_3 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/13.0.3 Mobile/15E148 Safari/604.1', '0');
INSERT INTO `logs` VALUES ('98', '192.168.1.187', 'Mozilla/5.0 (iPhone; CPU iPhone OS 13_2_3 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/13.0.3 Mobile/15E148 Safari/604.1', '0');
INSERT INTO `logs` VALUES ('99', '192.168.1.187', 'Mozilla/5.0 (iPhone; CPU iPhone OS 13_2_3 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/13.0.3 Mobile/15E148 Safari/604.1', '0');
INSERT INTO `logs` VALUES ('100', '192.168.1.187', 'Mozilla/5.0 (iPhone; CPU iPhone OS 13_2_3 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/13.0.3 Mobile/15E148 Safari/604.1', '0');
INSERT INTO `logs` VALUES ('101', '192.168.1.187', 'Mozilla/5.0 (iPhone; CPU iPhone OS 13_2_3 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/13.0.3 Mobile/15E148 Safari/604.1', '0');
INSERT INTO `logs` VALUES ('102', '192.168.1.187', 'Mozilla/5.0 (iPhone; CPU iPhone OS 13_2_3 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/13.0.3 Mobile/15E148 Safari/604.1', '0');
INSERT INTO `logs` VALUES ('103', '192.168.1.187', 'Mozilla/5.0 (iPhone; CPU iPhone OS 13_2_3 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/13.0.3 Mobile/15E148 Safari/604.1', '0');
INSERT INTO `logs` VALUES ('104', '192.168.1.187', 'Mozilla/5.0 (iPhone; CPU iPhone OS 13_2_3 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/13.0.3 Mobile/15E148 Safari/604.1', '0');
INSERT INTO `logs` VALUES ('105', '192.168.1.187', 'Mozilla/5.0 (iPhone; CPU iPhone OS 13_2_3 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/13.0.3 Mobile/15E148 Safari/604.1', '0');
INSERT INTO `logs` VALUES ('106', '192.168.1.187', 'Mozilla/5.0 (iPhone; CPU iPhone OS 13_2_3 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/13.0.3 Mobile/15E148 Safari/604.1', '0');
INSERT INTO `logs` VALUES ('107', '192.168.1.187', 'Mozilla/5.0 (iPhone; CPU iPhone OS 13_2_3 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/13.0.3 Mobile/15E148 Safari/604.1', '0');
INSERT INTO `logs` VALUES ('108', '192.168.1.187', 'Mozilla/5.0 (iPhone; CPU iPhone OS 13_2_3 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/13.0.3 Mobile/15E148 Safari/604.1', '0');
INSERT INTO `logs` VALUES ('109', '192.168.1.187', 'Mozilla/5.0 (iPhone; CPU iPhone OS 13_2_3 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/13.0.3 Mobile/15E148 Safari/604.1', '0');
INSERT INTO `logs` VALUES ('110', '192.168.1.177', 'Mozilla/5.0 (iPhone; CPU iPhone OS 13_2_3 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/13.0.3 Mobile/15E148 Safari/604.1 Edg/110.0.0.0', '0');
INSERT INTO `logs` VALUES ('111', '192.168.1.187', 'Mozilla/5.0 (iPhone; CPU iPhone OS 13_2_3 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/13.0.3 Mobile/15E148 Safari/604.1', '0');
INSERT INTO `logs` VALUES ('112', '192.168.1.187', 'Mozilla/5.0 (iPhone; CPU iPhone OS 13_2_3 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/13.0.3 Mobile/15E148 Safari/604.1', '0');
INSERT INTO `logs` VALUES ('113', '192.168.1.177', 'Mozilla/5.0 (iPhone; CPU iPhone OS 13_2_3 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/13.0.3 Mobile/15E148 Safari/604.1 Edg/110.0.0.0', '0');
INSERT INTO `logs` VALUES ('114', '192.168.1.187', 'Mozilla/5.0 (iPhone; CPU iPhone OS 13_2_3 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/13.0.3 Mobile/15E148 Safari/604.1', '0');
INSERT INTO `logs` VALUES ('115', '192.168.1.187', 'Mozilla/5.0 (iPhone; CPU iPhone OS 13_2_3 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/13.0.3 Mobile/15E148 Safari/604.1', '0');
INSERT INTO `logs` VALUES ('116', '192.168.1.187', 'Mozilla/5.0 (iPhone; CPU iPhone OS 13_2_3 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/13.0.3 Mobile/15E148 Safari/604.1', '0');
INSERT INTO `logs` VALUES ('117', '192.168.1.187', 'Mozilla/5.0 (iPhone; CPU iPhone OS 13_2_3 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/13.0.3 Mobile/15E148 Safari/604.1', '0');
INSERT INTO `logs` VALUES ('118', '192.168.1.187', 'Mozilla/5.0 (iPhone; CPU iPhone OS 13_2_3 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/13.0.3 Mobile/15E148 Safari/604.1', '0');
INSERT INTO `logs` VALUES ('119', '192.168.1.187', 'Mozilla/5.0 (iPhone; CPU iPhone OS 13_2_3 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/13.0.3 Mobile/15E148 Safari/604.1', '0');
INSERT INTO `logs` VALUES ('120', '192.168.1.187', 'Mozilla/5.0 (iPhone; CPU iPhone OS 13_2_3 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/13.0.3 Mobile/15E148 Safari/604.1', '0');
INSERT INTO `logs` VALUES ('121', '192.168.1.187', 'Mozilla/5.0 (iPhone; CPU iPhone OS 13_2_3 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/13.0.3 Mobile/15E148 Safari/604.1', '0');
INSERT INTO `logs` VALUES ('122', '192.168.1.187', 'Mozilla/5.0 (iPhone; CPU iPhone OS 13_2_3 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/13.0.3 Mobile/15E148 Safari/604.1', '0');
INSERT INTO `logs` VALUES ('123', '192.168.1.187', 'Mozilla/5.0 (iPhone; CPU iPhone OS 13_2_3 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/13.0.3 Mobile/15E148 Safari/604.1', '0');
INSERT INTO `logs` VALUES ('124', '192.168.1.187', 'Mozilla/5.0 (iPhone; CPU iPhone OS 13_2_3 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/13.0.3 Mobile/15E148 Safari/604.1', '0');
INSERT INTO `logs` VALUES ('125', '192.168.1.187', 'Mozilla/5.0 (iPhone; CPU iPhone OS 13_2_3 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/13.0.3 Mobile/15E148 Safari/604.1', '0');
INSERT INTO `logs` VALUES ('126', '192.168.1.187', 'Mozilla/5.0 (iPhone; CPU iPhone OS 13_2_3 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/13.0.3 Mobile/15E148 Safari/604.1', '0');
INSERT INTO `logs` VALUES ('127', '192.168.1.177', 'Mozilla/5.0 (iPhone; CPU iPhone OS 13_2_3 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/13.0.3 Mobile/15E148 Safari/604.1 Edg/110.0.0.0', '0');
INSERT INTO `logs` VALUES ('128', '192.168.1.177', 'Mozilla/5.0 (iPhone; CPU iPhone OS 13_2_3 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/13.0.3 Mobile/15E148 Safari/604.1 Edg/110.0.0.0', '0');
INSERT INTO `logs` VALUES ('129', '192.168.1.187', 'Mozilla/5.0 (iPhone; CPU iPhone OS 13_2_3 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/13.0.3 Mobile/15E148 Safari/604.1', '0');
INSERT INTO `logs` VALUES ('130', '192.168.1.187', 'Mozilla/5.0 (iPhone; CPU iPhone OS 13_2_3 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/13.0.3 Mobile/15E148 Safari/604.1', '0');
INSERT INTO `logs` VALUES ('131', '192.168.1.177', 'Mozilla/5.0 (iPhone; CPU iPhone OS 13_2_3 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/13.0.3 Mobile/15E148 Safari/604.1 Edg/110.0.0.0', '0');
INSERT INTO `logs` VALUES ('132', '192.168.1.187', 'Mozilla/5.0 (iPhone; CPU iPhone OS 13_2_3 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/13.0.3 Mobile/15E148 Safari/604.1', '0');
INSERT INTO `logs` VALUES ('133', '192.168.1.187', 'Mozilla/5.0 (iPhone; CPU iPhone OS 13_2_3 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/13.0.3 Mobile/15E148 Safari/604.1', '0');
INSERT INTO `logs` VALUES ('134', '192.168.1.187', 'Mozilla/5.0 (iPhone; CPU iPhone OS 13_2_3 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/13.0.3 Mobile/15E148 Safari/604.1', '0');
INSERT INTO `logs` VALUES ('135', '192.168.1.187', 'Mozilla/5.0 (iPhone; CPU iPhone OS 13_2_3 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/13.0.3 Mobile/15E148 Safari/604.1', '0');
INSERT INTO `logs` VALUES ('136', '192.168.1.187', 'Mozilla/5.0 (iPhone; CPU iPhone OS 13_2_3 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/13.0.3 Mobile/15E148 Safari/604.1', '0');
INSERT INTO `logs` VALUES ('137', '192.168.1.187', 'Mozilla/5.0 (iPhone; CPU iPhone OS 13_2_3 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/13.0.3 Mobile/15E148 Safari/604.1', '0');
INSERT INTO `logs` VALUES ('138', '192.168.1.187', 'Mozilla/5.0 (iPhone; CPU iPhone OS 13_2_3 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/13.0.3 Mobile/15E148 Safari/604.1', '0');
INSERT INTO `logs` VALUES ('139', '192.168.1.187', 'Mozilla/5.0 (iPhone; CPU iPhone OS 13_2_3 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/13.0.3 Mobile/15E148 Safari/604.1', '0');
INSERT INTO `logs` VALUES ('140', '192.168.1.187', 'Mozilla/5.0 (iPhone; CPU iPhone OS 13_2_3 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/13.0.3 Mobile/15E148 Safari/604.1', '0');
INSERT INTO `logs` VALUES ('141', '192.168.1.187', 'Mozilla/5.0 (iPhone; CPU iPhone OS 13_2_3 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/13.0.3 Mobile/15E148 Safari/604.1', '0');
INSERT INTO `logs` VALUES ('142', '192.168.1.187', 'Mozilla/5.0 (iPhone; CPU iPhone OS 13_2_3 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/13.0.3 Mobile/15E148 Safari/604.1', '0');
INSERT INTO `logs` VALUES ('143', '192.168.1.187', 'Mozilla/5.0 (iPhone; CPU iPhone OS 13_2_3 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/13.0.3 Mobile/15E148 Safari/604.1', '0');
INSERT INTO `logs` VALUES ('144', '192.168.1.177', 'Mozilla/5.0 (iPhone; CPU iPhone OS 13_2_3 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/13.0.3 Mobile/15E148 Safari/604.1 Edg/110.0.0.0', '0');
INSERT INTO `logs` VALUES ('145', '192.168.1.187', 'Mozilla/5.0 (iPhone; CPU iPhone OS 13_2_3 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/13.0.3 Mobile/15E148 Safari/604.1', '0');
INSERT INTO `logs` VALUES ('146', '192.168.1.187', 'Mozilla/5.0 (iPhone; CPU iPhone OS 13_2_3 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/13.0.3 Mobile/15E148 Safari/604.1', '0');
INSERT INTO `logs` VALUES ('147', '192.168.1.187', 'Mozilla/5.0 (iPhone; CPU iPhone OS 13_2_3 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/13.0.3 Mobile/15E148 Safari/604.1', '0');
INSERT INTO `logs` VALUES ('148', '192.168.1.177', 'Mozilla/5.0 (iPhone; CPU iPhone OS 13_2_3 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/13.0.3 Mobile/15E148 Safari/604.1 Edg/110.0.0.0', '0');
INSERT INTO `logs` VALUES ('149', '192.168.1.187', 'Mozilla/5.0 (iPhone; CPU iPhone OS 13_2_3 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/13.0.3 Mobile/15E148 Safari/604.1', '0');
INSERT INTO `logs` VALUES ('150', '192.168.1.187', 'Mozilla/5.0 (iPhone; CPU iPhone OS 13_2_3 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/13.0.3 Mobile/15E148 Safari/604.1', '0');
INSERT INTO `logs` VALUES ('151', '192.168.1.187', 'Mozilla/5.0 (iPhone; CPU iPhone OS 13_2_3 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/13.0.3 Mobile/15E148 Safari/604.1', '0');
INSERT INTO `logs` VALUES ('152', '192.168.1.187', 'Mozilla/5.0 (iPhone; CPU iPhone OS 13_2_3 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/13.0.3 Mobile/15E148 Safari/604.1', '0');
INSERT INTO `logs` VALUES ('153', '192.168.1.187', 'Mozilla/5.0 (iPhone; CPU iPhone OS 13_2_3 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/13.0.3 Mobile/15E148 Safari/604.1', '0');
INSERT INTO `logs` VALUES ('154', '192.168.1.187', 'Mozilla/5.0 (iPhone; CPU iPhone OS 13_2_3 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/13.0.3 Mobile/15E148 Safari/604.1', '0');
INSERT INTO `logs` VALUES ('155', '192.168.1.187', 'Mozilla/5.0 (iPhone; CPU iPhone OS 13_2_3 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/13.0.3 Mobile/15E148 Safari/604.1', '0');
INSERT INTO `logs` VALUES ('156', '192.168.1.187', 'Mozilla/5.0 (iPhone; CPU iPhone OS 13_2_3 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/13.0.3 Mobile/15E148 Safari/604.1', '0');
INSERT INTO `logs` VALUES ('157', '192.168.1.187', 'Mozilla/5.0 (iPhone; CPU iPhone OS 13_2_3 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/13.0.3 Mobile/15E148 Safari/604.1', '0');
INSERT INTO `logs` VALUES ('158', '192.168.1.187', 'Mozilla/5.0 (iPhone; CPU iPhone OS 13_2_3 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/13.0.3 Mobile/15E148 Safari/604.1', '0');
INSERT INTO `logs` VALUES ('159', '192.168.1.187', 'Mozilla/5.0 (iPhone; CPU iPhone OS 13_2_3 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/13.0.3 Mobile/15E148 Safari/604.1', '0');
INSERT INTO `logs` VALUES ('160', '192.168.1.177', 'Mozilla/5.0 (iPhone; CPU iPhone OS 13_2_3 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/13.0.3 Mobile/15E148 Safari/604.1 Edg/110.0.0.0', '0');
INSERT INTO `logs` VALUES ('161', '192.168.1.187', 'Mozilla/5.0 (iPhone; CPU iPhone OS 13_2_3 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/13.0.3 Mobile/15E148 Safari/604.1', '0');
INSERT INTO `logs` VALUES ('162', '192.168.1.187', 'Mozilla/5.0 (iPhone; CPU iPhone OS 13_2_3 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/13.0.3 Mobile/15E148 Safari/604.1', '0');
INSERT INTO `logs` VALUES ('163', '192.168.1.177', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/110.0.0.0 Safari/537.36 Edg/110.0.1587.56', '0');
INSERT INTO `logs` VALUES ('164', '192.168.1.177', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/110.0.0.0 Safari/537.36 Edg/110.0.1587.56', '0');
INSERT INTO `logs` VALUES ('165', '192.168.1.177', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/110.0.0.0 Safari/537.36 Edg/110.0.1587.56', '0');
INSERT INTO `logs` VALUES ('166', '192.168.1.177', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/110.0.0.0 Safari/537.36 Edg/110.0.1587.56', '0');
INSERT INTO `logs` VALUES ('167', '192.168.1.187', 'Mozilla/5.0 (iPhone; CPU iPhone OS 13_2_3 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/13.0.3 Mobile/15E148 Safari/604.1', '0');
INSERT INTO `logs` VALUES ('168', '192.168.1.177', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/110.0.0.0 Safari/537.36 Edg/110.0.1587.56', '0');
INSERT INTO `logs` VALUES ('169', '192.168.1.177', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/110.0.0.0 Safari/537.36 Edg/110.0.1587.56', '0');
INSERT INTO `logs` VALUES ('170', '192.168.1.187', 'Mozilla/5.0 (iPhone; CPU iPhone OS 13_2_3 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/13.0.3 Mobile/15E148 Safari/604.1', '0');
INSERT INTO `logs` VALUES ('171', '192.168.1.187', 'Mozilla/5.0 (iPhone; CPU iPhone OS 13_2_3 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/13.0.3 Mobile/15E148 Safari/604.1', '0');
INSERT INTO `logs` VALUES ('172', '192.168.1.187', 'Mozilla/5.0 (iPhone; CPU iPhone OS 13_2_3 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/13.0.3 Mobile/15E148 Safari/604.1', '0');
INSERT INTO `logs` VALUES ('173', '192.168.1.187', 'Mozilla/5.0 (iPhone; CPU iPhone OS 13_2_3 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/13.0.3 Mobile/15E148 Safari/604.1', '0');
INSERT INTO `logs` VALUES ('174', '192.168.1.177', 'Mozilla/5.0 (iPhone; CPU iPhone OS 13_2_3 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/13.0.3 Mobile/15E148 Safari/604.1 Edg/110.0.0.0', '0');
INSERT INTO `logs` VALUES ('175', '192.168.1.177', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/110.0.0.0 Safari/537.36 Edg/110.0.1587.56', '0');
INSERT INTO `logs` VALUES ('176', '192.168.1.177', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/110.0.0.0 Safari/537.36 Edg/110.0.1587.56', '0');
INSERT INTO `logs` VALUES ('177', '192.168.1.177', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/110.0.0.0 Safari/537.36 Edg/110.0.1587.56', '0');
INSERT INTO `logs` VALUES ('178', '192.168.1.187', 'Mozilla/5.0 (iPhone; CPU iPhone OS 13_2_3 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/13.0.3 Mobile/15E148 Safari/604.1', '0');
INSERT INTO `logs` VALUES ('179', '192.168.1.187', 'Mozilla/5.0 (iPhone; CPU iPhone OS 13_2_3 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/13.0.3 Mobile/15E148 Safari/604.1', '0');
INSERT INTO `logs` VALUES ('180', '192.168.1.177', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/110.0.0.0 Safari/537.36 Edg/110.0.1587.56', '0');
INSERT INTO `logs` VALUES ('181', '192.168.1.187', 'Mozilla/5.0 (iPhone; CPU iPhone OS 13_2_3 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/13.0.3 Mobile/15E148 Safari/604.1', '0');
INSERT INTO `logs` VALUES ('182', '192.168.1.177', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/110.0.0.0 Safari/537.36 Edg/110.0.1587.56', '0');
INSERT INTO `logs` VALUES ('183', '192.168.1.177', 'Mozilla/5.0 (iPhone; CPU iPhone OS 13_2_3 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/13.0.3 Mobile/15E148 Safari/604.1 Edg/110.0.0.0', '0');
INSERT INTO `logs` VALUES ('184', '192.168.1.187', 'Mozilla/5.0 (iPhone; CPU iPhone OS 13_2_3 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/13.0.3 Mobile/15E148 Safari/604.1', '0');
INSERT INTO `logs` VALUES ('185', '192.168.1.177', 'Mozilla/5.0 (iPhone; CPU iPhone OS 13_2_3 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/13.0.3 Mobile/15E148 Safari/604.1 Edg/110.0.0.0', '0');
INSERT INTO `logs` VALUES ('186', '192.168.1.177', 'Mozilla/5.0 (iPhone; CPU iPhone OS 13_2_3 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/13.0.3 Mobile/15E148 Safari/604.1 Edg/110.0.0.0', '0');
INSERT INTO `logs` VALUES ('187', '192.168.1.177', 'Mozilla/5.0 (iPhone; CPU iPhone OS 13_2_3 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/13.0.3 Mobile/15E148 Safari/604.1 Edg/110.0.0.0', '0');
INSERT INTO `logs` VALUES ('188', '192.168.1.177', 'Mozilla/5.0 (iPhone; CPU iPhone OS 13_2_3 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/13.0.3 Mobile/15E148 Safari/604.1 Edg/110.0.0.0', '0');
INSERT INTO `logs` VALUES ('189', '192.168.1.177', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/110.0.0.0 Safari/537.36 Edg/110.0.1587.56', '0');
INSERT INTO `logs` VALUES ('190', '192.168.1.187', 'Mozilla/5.0 (iPhone; CPU iPhone OS 13_2_3 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/13.0.3 Mobile/15E148 Safari/604.1', '0');
INSERT INTO `logs` VALUES ('191', '192.168.1.187', 'Mozilla/5.0 (iPhone; CPU iPhone OS 13_2_3 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/13.0.3 Mobile/15E148 Safari/604.1', '0');
INSERT INTO `logs` VALUES ('192', '192.168.1.187', 'Mozilla/5.0 (iPhone; CPU iPhone OS 13_2_3 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/13.0.3 Mobile/15E148 Safari/604.1', '0');
INSERT INTO `logs` VALUES ('193', '192.168.1.187', 'Mozilla/5.0 (iPhone; CPU iPhone OS 13_2_3 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/13.0.3 Mobile/15E148 Safari/604.1', '0');
INSERT INTO `logs` VALUES ('194', '192.168.1.187', 'Mozilla/5.0 (iPhone; CPU iPhone OS 13_2_3 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/13.0.3 Mobile/15E148 Safari/604.1', '0');
INSERT INTO `logs` VALUES ('195', '192.168.1.187', 'Mozilla/5.0 (iPhone; CPU iPhone OS 13_2_3 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/13.0.3 Mobile/15E148 Safari/604.1', '0');
INSERT INTO `logs` VALUES ('196', '192.168.1.187', 'Mozilla/5.0 (iPhone; CPU iPhone OS 13_2_3 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/13.0.3 Mobile/15E148 Safari/604.1', '0');
INSERT INTO `logs` VALUES ('197', '192.168.1.187', 'Mozilla/5.0 (iPhone; CPU iPhone OS 13_2_3 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/13.0.3 Mobile/15E148 Safari/604.1', '0');
INSERT INTO `logs` VALUES ('198', '192.168.1.187', 'Mozilla/5.0 (iPhone; CPU iPhone OS 13_2_3 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/13.0.3 Mobile/15E148 Safari/604.1', '0');
INSERT INTO `logs` VALUES ('199', '192.168.1.187', 'Mozilla/5.0 (iPhone; CPU iPhone OS 13_2_3 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/13.0.3 Mobile/15E148 Safari/604.1', '0');
INSERT INTO `logs` VALUES ('200', '192.168.1.187', 'Mozilla/5.0 (iPhone; CPU iPhone OS 13_2_3 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/13.0.3 Mobile/15E148 Safari/604.1', '0');
INSERT INTO `logs` VALUES ('201', '192.168.1.187', 'Mozilla/5.0 (iPhone; CPU iPhone OS 13_2_3 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/13.0.3 Mobile/15E148 Safari/604.1', '0');
INSERT INTO `logs` VALUES ('202', '192.168.1.187', 'Mozilla/5.0 (iPhone; CPU iPhone OS 13_2_3 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/13.0.3 Mobile/15E148 Safari/604.1', '0');
INSERT INTO `logs` VALUES ('203', '192.168.1.187', 'Mozilla/5.0 (iPhone; CPU iPhone OS 13_2_3 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/13.0.3 Mobile/15E148 Safari/604.1', '0');
INSERT INTO `logs` VALUES ('204', '192.168.1.177', 'Mozilla/5.0 (iPhone; CPU iPhone OS 13_2_3 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/13.0.3 Mobile/15E148 Safari/604.1 Edg/110.0.0.0', '0');
INSERT INTO `logs` VALUES ('205', '192.168.1.177', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/110.0.0.0 Safari/537.36 Edg/110.0.1587.56', '0');
INSERT INTO `logs` VALUES ('206', '192.168.1.177', 'Mozilla/5.0 (iPhone; CPU iPhone OS 13_2_3 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/13.0.3 Mobile/15E148 Safari/604.1 Edg/110.0.0.0', '0');
INSERT INTO `logs` VALUES ('207', '192.168.1.177', 'Mozilla/5.0 (iPhone; CPU iPhone OS 13_2_3 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/13.0.3 Mobile/15E148 Safari/604.1 Edg/110.0.0.0', '0');
INSERT INTO `logs` VALUES ('208', '192.168.1.177', 'Mozilla/5.0 (iPhone; CPU iPhone OS 13_2_3 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/13.0.3 Mobile/15E148 Safari/604.1 Edg/110.0.0.0', '0');
INSERT INTO `logs` VALUES ('209', '192.168.1.177', 'Mozilla/5.0 (iPhone; CPU iPhone OS 13_2_3 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/13.0.3 Mobile/15E148 Safari/604.1 Edg/110.0.0.0', '0');
INSERT INTO `logs` VALUES ('210', '192.168.1.177', 'Mozilla/5.0 (iPhone; CPU iPhone OS 13_2_3 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/13.0.3 Mobile/15E148 Safari/604.1 Edg/110.0.0.0', '0');
INSERT INTO `logs` VALUES ('211', '192.168.1.177', 'Mozilla/5.0 (iPhone; CPU iPhone OS 13_2_3 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/13.0.3 Mobile/15E148 Safari/604.1 Edg/110.0.0.0', '0');
INSERT INTO `logs` VALUES ('212', '192.168.1.177', 'Mozilla/5.0 (iPhone; CPU iPhone OS 13_2_3 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/13.0.3 Mobile/15E148 Safari/604.1 Edg/110.0.0.0', '0');
INSERT INTO `logs` VALUES ('213', '192.168.1.177', 'Mozilla/5.0 (iPhone; CPU iPhone OS 13_2_3 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/13.0.3 Mobile/15E148 Safari/604.1 Edg/110.0.0.0', '0');
INSERT INTO `logs` VALUES ('214', '192.168.1.177', 'Mozilla/5.0 (iPhone; CPU iPhone OS 13_2_3 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/13.0.3 Mobile/15E148 Safari/604.1 Edg/110.0.0.0', '0');
INSERT INTO `logs` VALUES ('215', '192.168.1.177', 'Mozilla/5.0 (iPhone; CPU iPhone OS 13_2_3 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/13.0.3 Mobile/15E148 Safari/604.1 Edg/110.0.0.0', '0');
INSERT INTO `logs` VALUES ('216', '192.168.1.177', 'Mozilla/5.0 (iPhone; CPU iPhone OS 13_2_3 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/13.0.3 Mobile/15E148 Safari/604.1 Edg/110.0.0.0', '0');
INSERT INTO `logs` VALUES ('217', '192.168.1.177', 'Mozilla/5.0 (iPhone; CPU iPhone OS 13_2_3 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/13.0.3 Mobile/15E148 Safari/604.1 Edg/110.0.0.0', '0');
INSERT INTO `logs` VALUES ('218', '192.168.1.177', 'Mozilla/5.0 (iPhone; CPU iPhone OS 13_2_3 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/13.0.3 Mobile/15E148 Safari/604.1 Edg/110.0.0.0', '0');
INSERT INTO `logs` VALUES ('219', '192.168.1.177', 'Mozilla/5.0 (iPhone; CPU iPhone OS 13_2_3 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/13.0.3 Mobile/15E148 Safari/604.1 Edg/110.0.0.0', '0');
INSERT INTO `logs` VALUES ('220', '192.168.1.177', 'Mozilla/5.0 (iPhone; CPU iPhone OS 13_2_3 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/13.0.3 Mobile/15E148 Safari/604.1 Edg/110.0.0.0', '0');
INSERT INTO `logs` VALUES ('221', '192.168.1.177', 'Mozilla/5.0 (iPhone; CPU iPhone OS 13_2_3 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/13.0.3 Mobile/15E148 Safari/604.1 Edg/110.0.0.0', '0');
INSERT INTO `logs` VALUES ('222', '192.168.1.177', 'Mozilla/5.0 (iPhone; CPU iPhone OS 13_2_3 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/13.0.3 Mobile/15E148 Safari/604.1 Edg/110.0.0.0', '0');
INSERT INTO `logs` VALUES ('223', '192.168.1.177', 'Mozilla/5.0 (iPhone; CPU iPhone OS 13_2_3 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/13.0.3 Mobile/15E148 Safari/604.1 Edg/110.0.0.0', '0');
INSERT INTO `logs` VALUES ('224', '192.168.1.177', 'Mozilla/5.0 (iPhone; CPU iPhone OS 13_2_3 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/13.0.3 Mobile/15E148 Safari/604.1 Edg/110.0.0.0', '0');
INSERT INTO `logs` VALUES ('225', '192.168.1.177', 'Mozilla/5.0 (iPhone; CPU iPhone OS 13_2_3 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/13.0.3 Mobile/15E148 Safari/604.1 Edg/110.0.0.0', '0');
INSERT INTO `logs` VALUES ('226', '192.168.1.177', 'Mozilla/5.0 (iPhone; CPU iPhone OS 13_2_3 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/13.0.3 Mobile/15E148 Safari/604.1 Edg/110.0.0.0', '0');
INSERT INTO `logs` VALUES ('227', '192.168.1.177', 'Mozilla/5.0 (iPhone; CPU iPhone OS 13_2_3 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/13.0.3 Mobile/15E148 Safari/604.1 Edg/110.0.0.0', '0');
INSERT INTO `logs` VALUES ('228', '192.168.1.177', 'Mozilla/5.0 (iPhone; CPU iPhone OS 13_2_3 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/13.0.3 Mobile/15E148 Safari/604.1 Edg/110.0.0.0', '0');
INSERT INTO `logs` VALUES ('229', '192.168.1.177', 'Mozilla/5.0 (iPhone; CPU iPhone OS 13_2_3 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/13.0.3 Mobile/15E148 Safari/604.1 Edg/110.0.0.0', '0');
INSERT INTO `logs` VALUES ('230', '192.168.1.177', 'Mozilla/5.0 (iPhone; CPU iPhone OS 13_2_3 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/13.0.3 Mobile/15E148 Safari/604.1 Edg/110.0.0.0', '0');
INSERT INTO `logs` VALUES ('231', '192.168.1.177', 'Mozilla/5.0 (iPhone; CPU iPhone OS 13_2_3 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/13.0.3 Mobile/15E148 Safari/604.1 Edg/110.0.0.0', '0');
INSERT INTO `logs` VALUES ('232', '192.168.1.177', 'Mozilla/5.0 (iPhone; CPU iPhone OS 13_2_3 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/13.0.3 Mobile/15E148 Safari/604.1 Edg/110.0.0.0', '0');
INSERT INTO `logs` VALUES ('233', '192.168.1.177', 'Mozilla/5.0 (iPhone; CPU iPhone OS 13_2_3 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/13.0.3 Mobile/15E148 Safari/604.1 Edg/110.0.0.0', '0');
INSERT INTO `logs` VALUES ('234', '192.168.1.177', 'Mozilla/5.0 (iPhone; CPU iPhone OS 13_2_3 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/13.0.3 Mobile/15E148 Safari/604.1 Edg/110.0.0.0', '0');
INSERT INTO `logs` VALUES ('235', '192.168.1.177', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/110.0.0.0 Safari/537.36 Edg/110.0.1587.56', '0');
INSERT INTO `logs` VALUES ('236', '192.168.1.177', 'Mozilla/5.0 (iPhone; CPU iPhone OS 13_2_3 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/13.0.3 Mobile/15E148 Safari/604.1 Edg/110.0.0.0', '0');
INSERT INTO `logs` VALUES ('237', '192.168.1.177', 'Mozilla/5.0 (iPhone; CPU iPhone OS 13_2_3 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/13.0.3 Mobile/15E148 Safari/604.1 Edg/110.0.0.0', '0');
INSERT INTO `logs` VALUES ('238', '192.168.1.177', 'Mozilla/5.0 (iPhone; CPU iPhone OS 13_2_3 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/13.0.3 Mobile/15E148 Safari/604.1 Edg/110.0.0.0', '0');
INSERT INTO `logs` VALUES ('239', '192.168.1.177', 'Mozilla/5.0 (iPhone; CPU iPhone OS 13_2_3 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/13.0.3 Mobile/15E148 Safari/604.1 Edg/110.0.0.0', '0');
INSERT INTO `logs` VALUES ('240', '192.168.1.177', 'Mozilla/5.0 (iPhone; CPU iPhone OS 13_2_3 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/13.0.3 Mobile/15E148 Safari/604.1 Edg/110.0.0.0', '0');
INSERT INTO `logs` VALUES ('241', '192.168.1.177', 'Mozilla/5.0 (iPhone; CPU iPhone OS 13_2_3 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/13.0.3 Mobile/15E148 Safari/604.1 Edg/110.0.0.0', '0');
INSERT INTO `logs` VALUES ('242', '192.168.1.177', 'Mozilla/5.0 (iPhone; CPU iPhone OS 13_2_3 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/13.0.3 Mobile/15E148 Safari/604.1 Edg/110.0.0.0', '0');
INSERT INTO `logs` VALUES ('243', '192.168.1.177', 'Mozilla/5.0 (iPhone; CPU iPhone OS 13_2_3 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/13.0.3 Mobile/15E148 Safari/604.1 Edg/110.0.0.0', '0');
INSERT INTO `logs` VALUES ('244', '192.168.1.177', 'Mozilla/5.0 (iPhone; CPU iPhone OS 13_2_3 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/13.0.3 Mobile/15E148 Safari/604.1 Edg/110.0.0.0', '0');
INSERT INTO `logs` VALUES ('245', '192.168.1.177', 'Mozilla/5.0 (iPhone; CPU iPhone OS 13_2_3 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/13.0.3 Mobile/15E148 Safari/604.1 Edg/110.0.0.0', '0');
INSERT INTO `logs` VALUES ('246', '192.168.1.177', 'Mozilla/5.0 (iPhone; CPU iPhone OS 13_2_3 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/13.0.3 Mobile/15E148 Safari/604.1 Edg/110.0.0.0', '0');
INSERT INTO `logs` VALUES ('247', '192.168.1.177', 'Mozilla/5.0 (iPhone; CPU iPhone OS 13_2_3 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/13.0.3 Mobile/15E148 Safari/604.1 Edg/110.0.0.0', '0');
INSERT INTO `logs` VALUES ('248', '192.168.1.177', 'Mozilla/5.0 (iPhone; CPU iPhone OS 13_2_3 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/13.0.3 Mobile/15E148 Safari/604.1 Edg/110.0.0.0', '0');
INSERT INTO `logs` VALUES ('249', '192.168.1.177', 'Mozilla/5.0 (iPhone; CPU iPhone OS 13_2_3 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/13.0.3 Mobile/15E148 Safari/604.1 Edg/110.0.0.0', '0');
INSERT INTO `logs` VALUES ('250', '192.168.1.177', 'Mozilla/5.0 (iPhone; CPU iPhone OS 13_2_3 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/13.0.3 Mobile/15E148 Safari/604.1 Edg/110.0.0.0', '0');
INSERT INTO `logs` VALUES ('251', '192.168.1.177', 'Mozilla/5.0 (iPhone; CPU iPhone OS 13_2_3 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/13.0.3 Mobile/15E148 Safari/604.1 Edg/110.0.0.0', '0');
INSERT INTO `logs` VALUES ('252', '192.168.1.177', 'Mozilla/5.0 (iPhone; CPU iPhone OS 13_2_3 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/13.0.3 Mobile/15E148 Safari/604.1 Edg/110.0.0.0', '0');
INSERT INTO `logs` VALUES ('253', '192.168.1.177', 'Mozilla/5.0 (iPhone; CPU iPhone OS 13_2_3 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/13.0.3 Mobile/15E148 Safari/604.1 Edg/110.0.0.0', '0');
INSERT INTO `logs` VALUES ('254', '192.168.1.177', 'Mozilla/5.0 (iPhone; CPU iPhone OS 13_2_3 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/13.0.3 Mobile/15E148 Safari/604.1 Edg/110.0.0.0', '0');
INSERT INTO `logs` VALUES ('255', '192.168.1.177', 'Mozilla/5.0 (iPhone; CPU iPhone OS 13_2_3 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/13.0.3 Mobile/15E148 Safari/604.1 Edg/110.0.0.0', '0');
INSERT INTO `logs` VALUES ('256', '192.168.1.177', 'Mozilla/5.0 (iPhone; CPU iPhone OS 13_2_3 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/13.0.3 Mobile/15E148 Safari/604.1 Edg/110.0.0.0', '0');
INSERT INTO `logs` VALUES ('257', '192.168.1.177', 'Mozilla/5.0 (iPhone; CPU iPhone OS 13_2_3 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/13.0.3 Mobile/15E148 Safari/604.1 Edg/110.0.0.0', '0');
INSERT INTO `logs` VALUES ('258', '192.168.1.177', 'Mozilla/5.0 (iPhone; CPU iPhone OS 13_2_3 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/13.0.3 Mobile/15E148 Safari/604.1 Edg/110.0.0.0', '0');
INSERT INTO `logs` VALUES ('259', '192.168.1.177', 'Mozilla/5.0 (iPhone; CPU iPhone OS 13_2_3 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/13.0.3 Mobile/15E148 Safari/604.1 Edg/110.0.0.0', '0');
INSERT INTO `logs` VALUES ('260', '192.168.1.177', 'Mozilla/5.0 (iPhone; CPU iPhone OS 13_2_3 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/13.0.3 Mobile/15E148 Safari/604.1 Edg/110.0.0.0', '0');
INSERT INTO `logs` VALUES ('261', '192.168.1.177', 'Mozilla/5.0 (iPhone; CPU iPhone OS 13_2_3 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/13.0.3 Mobile/15E148 Safari/604.1 Edg/110.0.0.0', '0');
INSERT INTO `logs` VALUES ('262', '192.168.1.177', 'Mozilla/5.0 (iPhone; CPU iPhone OS 13_2_3 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/13.0.3 Mobile/15E148 Safari/604.1 Edg/110.0.0.0', '0');
INSERT INTO `logs` VALUES ('263', '192.168.1.177', 'Mozilla/5.0 (iPhone; CPU iPhone OS 13_2_3 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/13.0.3 Mobile/15E148 Safari/604.1 Edg/110.0.0.0', '0');
INSERT INTO `logs` VALUES ('264', '192.168.1.177', 'Mozilla/5.0 (iPhone; CPU iPhone OS 13_2_3 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/13.0.3 Mobile/15E148 Safari/604.1 Edg/110.0.0.0', '0');
INSERT INTO `logs` VALUES ('265', '192.168.1.177', 'Mozilla/5.0 (iPhone; CPU iPhone OS 13_2_3 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/13.0.3 Mobile/15E148 Safari/604.1 Edg/110.0.0.0', '0');
INSERT INTO `logs` VALUES ('266', '192.168.1.177', 'Mozilla/5.0 (iPhone; CPU iPhone OS 13_2_3 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/13.0.3 Mobile/15E148 Safari/604.1 Edg/110.0.0.0', '0');
INSERT INTO `logs` VALUES ('267', '192.168.1.177', 'Mozilla/5.0 (iPhone; CPU iPhone OS 13_2_3 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/13.0.3 Mobile/15E148 Safari/604.1 Edg/110.0.0.0', '0');
INSERT INTO `logs` VALUES ('268', '192.168.1.177', 'Mozilla/5.0 (iPhone; CPU iPhone OS 13_2_3 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/13.0.3 Mobile/15E148 Safari/604.1 Edg/110.0.0.0', '0');
INSERT INTO `logs` VALUES ('269', '192.168.1.177', 'Mozilla/5.0 (iPhone; CPU iPhone OS 13_2_3 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/13.0.3 Mobile/15E148 Safari/604.1 Edg/110.0.0.0', '0');
INSERT INTO `logs` VALUES ('270', '192.168.1.177', 'Mozilla/5.0 (iPhone; CPU iPhone OS 13_2_3 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/13.0.3 Mobile/15E148 Safari/604.1 Edg/110.0.0.0', '0');
INSERT INTO `logs` VALUES ('271', '192.168.1.177', 'Mozilla/5.0 (iPhone; CPU iPhone OS 13_2_3 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/13.0.3 Mobile/15E148 Safari/604.1 Edg/110.0.0.0', '0');
INSERT INTO `logs` VALUES ('272', '192.168.1.177', 'Mozilla/5.0 (iPhone; CPU iPhone OS 13_2_3 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/13.0.3 Mobile/15E148 Safari/604.1 Edg/110.0.0.0', '0');
INSERT INTO `logs` VALUES ('273', '192.168.1.177', 'Mozilla/5.0 (iPhone; CPU iPhone OS 13_2_3 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/13.0.3 Mobile/15E148 Safari/604.1 Edg/110.0.0.0', '0');
INSERT INTO `logs` VALUES ('274', '192.168.1.177', 'Mozilla/5.0 (iPhone; CPU iPhone OS 13_2_3 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/13.0.3 Mobile/15E148 Safari/604.1 Edg/110.0.0.0', '0');
INSERT INTO `logs` VALUES ('275', '192.168.1.177', 'Mozilla/5.0 (iPhone; CPU iPhone OS 13_2_3 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/13.0.3 Mobile/15E148 Safari/604.1 Edg/110.0.0.0', '0');
INSERT INTO `logs` VALUES ('276', '192.168.1.177', 'Mozilla/5.0 (iPhone; CPU iPhone OS 13_2_3 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/13.0.3 Mobile/15E148 Safari/604.1 Edg/110.0.0.0', '0');
INSERT INTO `logs` VALUES ('277', '192.168.1.177', 'Mozilla/5.0 (iPhone; CPU iPhone OS 13_2_3 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/13.0.3 Mobile/15E148 Safari/604.1 Edg/110.0.0.0', '0');
INSERT INTO `logs` VALUES ('278', '192.168.1.177', 'Mozilla/5.0 (iPhone; CPU iPhone OS 13_2_3 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/13.0.3 Mobile/15E148 Safari/604.1 Edg/110.0.0.0', '0');
INSERT INTO `logs` VALUES ('279', '192.168.1.177', 'Mozilla/5.0 (iPhone; CPU iPhone OS 13_2_3 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/13.0.3 Mobile/15E148 Safari/604.1 Edg/110.0.0.0', '0');
INSERT INTO `logs` VALUES ('280', '192.168.1.177', 'Mozilla/5.0 (iPhone; CPU iPhone OS 13_2_3 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/13.0.3 Mobile/15E148 Safari/604.1 Edg/110.0.0.0', '0');
INSERT INTO `logs` VALUES ('281', '192.168.1.177', 'Mozilla/5.0 (iPhone; CPU iPhone OS 13_2_3 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/13.0.3 Mobile/15E148 Safari/604.1 Edg/110.0.0.0', '0');
INSERT INTO `logs` VALUES ('282', '192.168.1.177', 'Mozilla/5.0 (iPhone; CPU iPhone OS 13_2_3 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/13.0.3 Mobile/15E148 Safari/604.1 Edg/110.0.0.0', '0');
INSERT INTO `logs` VALUES ('283', '192.168.1.177', 'Mozilla/5.0 (iPhone; CPU iPhone OS 13_2_3 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/13.0.3 Mobile/15E148 Safari/604.1 Edg/110.0.0.0', '0');
INSERT INTO `logs` VALUES ('284', '192.168.1.177', 'Mozilla/5.0 (iPhone; CPU iPhone OS 13_2_3 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/13.0.3 Mobile/15E148 Safari/604.1 Edg/110.0.0.0', '0');
INSERT INTO `logs` VALUES ('285', '192.168.1.177', 'Mozilla/5.0 (iPhone; CPU iPhone OS 13_2_3 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/13.0.3 Mobile/15E148 Safari/604.1 Edg/110.0.0.0', '0');
INSERT INTO `logs` VALUES ('286', '192.168.1.177', 'Mozilla/5.0 (iPhone; CPU iPhone OS 13_2_3 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/13.0.3 Mobile/15E148 Safari/604.1 Edg/110.0.0.0', '0');
INSERT INTO `logs` VALUES ('287', '192.168.1.177', 'Mozilla/5.0 (iPhone; CPU iPhone OS 13_2_3 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/13.0.3 Mobile/15E148 Safari/604.1 Edg/110.0.0.0', '0');
INSERT INTO `logs` VALUES ('288', '192.168.1.177', 'Mozilla/5.0 (iPhone; CPU iPhone OS 13_2_3 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/13.0.3 Mobile/15E148 Safari/604.1 Edg/110.0.0.0', '0');
INSERT INTO `logs` VALUES ('289', '192.168.1.177', 'Mozilla/5.0 (iPhone; CPU iPhone OS 13_2_3 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/13.0.3 Mobile/15E148 Safari/604.1 Edg/110.0.0.0', '0');
INSERT INTO `logs` VALUES ('290', '192.168.1.177', 'Mozilla/5.0 (iPhone; CPU iPhone OS 13_2_3 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/13.0.3 Mobile/15E148 Safari/604.1 Edg/110.0.0.0', '0');
INSERT INTO `logs` VALUES ('291', '192.168.1.177', 'Mozilla/5.0 (iPhone; CPU iPhone OS 13_2_3 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/13.0.3 Mobile/15E148 Safari/604.1 Edg/110.0.0.0', '0');
INSERT INTO `logs` VALUES ('292', '192.168.1.177', 'Mozilla/5.0 (iPhone; CPU iPhone OS 13_2_3 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/13.0.3 Mobile/15E148 Safari/604.1 Edg/110.0.0.0', '0');
INSERT INTO `logs` VALUES ('293', '192.168.1.187', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/110.0.0.0 Safari/537.36 Edg/110.0.1587.57', '0');
INSERT INTO `logs` VALUES ('294', '192.168.1.187', 'Mozilla/5.0 (iPhone; CPU iPhone OS 13_2_3 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/13.0.3 Mobile/15E148 Safari/604.1 Edg/110.0.0.0', '0');
INSERT INTO `logs` VALUES ('295', '192.168.1.187', 'Mozilla/5.0 (iPhone; CPU iPhone OS 13_2_3 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/13.0.3 Mobile/15E148 Safari/604.1 Edg/110.0.0.0', '0');
INSERT INTO `logs` VALUES ('296', '192.168.1.187', 'Mozilla/5.0 (iPhone; CPU iPhone OS 13_2_3 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/13.0.3 Mobile/15E148 Safari/604.1 Edg/110.0.0.0', '0');
INSERT INTO `logs` VALUES ('297', '192.168.1.187', 'Mozilla/5.0 (iPhone; CPU iPhone OS 13_2_3 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/13.0.3 Mobile/15E148 Safari/604.1 Edg/110.0.0.0', '0');
INSERT INTO `logs` VALUES ('298', '192.168.1.187', 'Mozilla/5.0 (iPhone; CPU iPhone OS 13_2_3 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/13.0.3 Mobile/15E148 Safari/604.1 Edg/110.0.0.0', '0');
INSERT INTO `logs` VALUES ('299', '192.168.1.187', 'Mozilla/5.0 (iPhone; CPU iPhone OS 13_2_3 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/13.0.3 Mobile/15E148 Safari/604.1 Edg/110.0.0.0', '0');
INSERT INTO `logs` VALUES ('300', '192.168.1.187', 'Mozilla/5.0 (iPhone; CPU iPhone OS 13_2_3 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/13.0.3 Mobile/15E148 Safari/604.1 Edg/110.0.0.0', '0');
INSERT INTO `logs` VALUES ('301', '192.168.1.187', 'Mozilla/5.0 (iPhone; CPU iPhone OS 13_2_3 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/13.0.3 Mobile/15E148 Safari/604.1 Edg/110.0.0.0', '0');
INSERT INTO `logs` VALUES ('302', '192.168.1.187', 'Mozilla/5.0 (iPhone; CPU iPhone OS 13_2_3 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/13.0.3 Mobile/15E148 Safari/604.1 Edg/110.0.0.0', '0');
INSERT INTO `logs` VALUES ('303', '192.168.1.187', 'Mozilla/5.0 (iPhone; CPU iPhone OS 13_2_3 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/13.0.3 Mobile/15E148 Safari/604.1 Edg/110.0.0.0', '0');
INSERT INTO `logs` VALUES ('304', '192.168.1.187', 'Mozilla/5.0 (iPhone; CPU iPhone OS 13_2_3 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/13.0.3 Mobile/15E148 Safari/604.1 Edg/110.0.0.0', '0');
INSERT INTO `logs` VALUES ('305', '192.168.1.187', 'Mozilla/5.0 (iPhone; CPU iPhone OS 13_2_3 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/13.0.3 Mobile/15E148 Safari/604.1 Edg/110.0.0.0', '0');
INSERT INTO `logs` VALUES ('306', '192.168.1.187', 'Mozilla/5.0 (iPhone; CPU iPhone OS 13_2_3 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/13.0.3 Mobile/15E148 Safari/604.1 Edg/110.0.0.0', '0');
INSERT INTO `logs` VALUES ('307', '192.168.1.187', 'Mozilla/5.0 (iPhone; CPU iPhone OS 13_2_3 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/13.0.3 Mobile/15E148 Safari/604.1 Edg/110.0.0.0', '0');
INSERT INTO `logs` VALUES ('308', '192.168.1.187', 'Mozilla/5.0 (iPhone; CPU iPhone OS 13_2_3 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/13.0.3 Mobile/15E148 Safari/604.1 Edg/110.0.0.0', '0');
INSERT INTO `logs` VALUES ('309', '192.168.1.187', 'Mozilla/5.0 (iPhone; CPU iPhone OS 13_2_3 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/13.0.3 Mobile/15E148 Safari/604.1 Edg/110.0.0.0', '0');
INSERT INTO `logs` VALUES ('310', '192.168.1.177', 'Mozilla/5.0 (iPhone; CPU iPhone OS 13_2_3 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/13.0.3 Mobile/15E148 Safari/604.1 Edg/110.0.0.0', '0');
INSERT INTO `logs` VALUES ('311', '192.168.1.177', 'Mozilla/5.0 (iPhone; CPU iPhone OS 13_2_3 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/13.0.3 Mobile/15E148 Safari/604.1 Edg/110.0.0.0', '0');
INSERT INTO `logs` VALUES ('312', '192.168.1.177', 'Mozilla/5.0 (iPhone; CPU iPhone OS 13_2_3 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/13.0.3 Mobile/15E148 Safari/604.1 Edg/110.0.0.0', '0');
INSERT INTO `logs` VALUES ('313', '192.168.1.187', 'Mozilla/5.0 (iPhone; CPU iPhone OS 13_2_3 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/13.0.3 Mobile/15E148 Safari/604.1 Edg/110.0.0.0', '0');
INSERT INTO `logs` VALUES ('314', '192.168.1.187', 'Mozilla/5.0 (iPhone; CPU iPhone OS 13_2_3 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/13.0.3 Mobile/15E148 Safari/604.1 Edg/110.0.0.0', '0');
INSERT INTO `logs` VALUES ('315', '192.168.1.187', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/110.0.0.0 Safari/537.36 Edg/110.0.1587.57', '0');
INSERT INTO `logs` VALUES ('316', '192.168.1.187', 'Mozilla/5.0 (iPhone; CPU iPhone OS 13_2_3 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/13.0.3 Mobile/15E148 Safari/604.1 Edg/110.0.0.0', '0');
INSERT INTO `logs` VALUES ('317', '192.168.1.187', 'Mozilla/5.0 (iPhone; CPU iPhone OS 13_2_3 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/13.0.3 Mobile/15E148 Safari/604.1 Edg/110.0.0.0', '0');
INSERT INTO `logs` VALUES ('318', '192.168.1.187', 'Mozilla/5.0 (iPhone; CPU iPhone OS 13_2_3 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/13.0.3 Mobile/15E148 Safari/604.1 Edg/110.0.0.0', '0');
INSERT INTO `logs` VALUES ('319', '192.168.1.187', 'Mozilla/5.0 (iPhone; CPU iPhone OS 13_2_3 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/13.0.3 Mobile/15E148 Safari/604.1 Edg/110.0.0.0', '0');
INSERT INTO `logs` VALUES ('320', '192.168.1.187', 'Mozilla/5.0 (iPhone; CPU iPhone OS 13_2_3 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/13.0.3 Mobile/15E148 Safari/604.1 Edg/110.0.0.0', '0');
INSERT INTO `logs` VALUES ('321', '192.168.1.177', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/110.0.0.0 Safari/537.36 Edg/110.0.1587.56', '0');
INSERT INTO `logs` VALUES ('322', '192.168.1.177', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/110.0.0.0 Safari/537.36 Edg/110.0.1587.56', '0');
INSERT INTO `logs` VALUES ('323', '192.168.1.177', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/110.0.0.0 Safari/537.36 Edg/110.0.1587.56', '0');
INSERT INTO `logs` VALUES ('324', '192.168.1.177', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/110.0.0.0 Safari/537.36 Edg/110.0.1587.56', '0');
INSERT INTO `logs` VALUES ('325', '192.168.1.177', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/110.0.0.0 Safari/537.36 Edg/110.0.1587.56', '0');
INSERT INTO `logs` VALUES ('326', '192.168.1.177', 'Mozilla/5.0 (iPhone; CPU iPhone OS 13_2_3 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/13.0.3 Mobile/15E148 Safari/604.1 Edg/110.0.0.0', '0');
INSERT INTO `logs` VALUES ('327', '192.168.1.177', 'Mozilla/5.0 (iPhone; CPU iPhone OS 13_2_3 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/13.0.3 Mobile/15E148 Safari/604.1 Edg/110.0.0.0', '0');
INSERT INTO `logs` VALUES ('328', '192.168.1.177', 'Mozilla/5.0 (iPhone; CPU iPhone OS 13_2_3 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/13.0.3 Mobile/15E148 Safari/604.1 Edg/110.0.0.0', '0');
INSERT INTO `logs` VALUES ('329', '192.168.1.177', 'Mozilla/5.0 (iPhone; CPU iPhone OS 13_2_3 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/13.0.3 Mobile/15E148 Safari/604.1 Edg/110.0.0.0', '0');
INSERT INTO `logs` VALUES ('330', '192.168.1.177', 'Mozilla/5.0 (iPhone; CPU iPhone OS 13_2_3 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/13.0.3 Mobile/15E148 Safari/604.1 Edg/110.0.0.0', '0');
INSERT INTO `logs` VALUES ('331', '192.168.1.177', 'Mozilla/5.0 (iPhone; CPU iPhone OS 13_2_3 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/13.0.3 Mobile/15E148 Safari/604.1 Edg/110.0.0.0', '0');
INSERT INTO `logs` VALUES ('332', '192.168.1.177', 'Mozilla/5.0 (iPhone; CPU iPhone OS 13_2_3 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/13.0.3 Mobile/15E148 Safari/604.1 Edg/110.0.0.0', '0');
INSERT INTO `logs` VALUES ('333', '192.168.1.177', 'Mozilla/5.0 (iPhone; CPU iPhone OS 13_2_3 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/13.0.3 Mobile/15E148 Safari/604.1 Edg/110.0.0.0', '0');
INSERT INTO `logs` VALUES ('334', '192.168.1.177', 'Mozilla/5.0 (iPhone; CPU iPhone OS 13_2_3 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/13.0.3 Mobile/15E148 Safari/604.1 Edg/110.0.0.0', '0');
INSERT INTO `logs` VALUES ('335', '192.168.1.177', 'Mozilla/5.0 (iPhone; CPU iPhone OS 13_2_3 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/13.0.3 Mobile/15E148 Safari/604.1 Edg/110.0.0.0', '0');
INSERT INTO `logs` VALUES ('336', '192.168.1.177', 'Mozilla/5.0 (iPhone; CPU iPhone OS 13_2_3 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/13.0.3 Mobile/15E148 Safari/604.1 Edg/110.0.0.0', '0');
INSERT INTO `logs` VALUES ('337', '192.168.1.177', 'Mozilla/5.0 (iPhone; CPU iPhone OS 13_2_3 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/13.0.3 Mobile/15E148 Safari/604.1 Edg/110.0.0.0', '0');
INSERT INTO `logs` VALUES ('338', '192.168.1.177', 'Mozilla/5.0 (iPhone; CPU iPhone OS 13_2_3 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/13.0.3 Mobile/15E148 Safari/604.1 Edg/110.0.0.0', '0');
INSERT INTO `logs` VALUES ('339', '192.168.1.177', 'Mozilla/5.0 (iPhone; CPU iPhone OS 13_2_3 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/13.0.3 Mobile/15E148 Safari/604.1 Edg/110.0.0.0', '0');
INSERT INTO `logs` VALUES ('340', '192.168.1.177', 'Mozilla/5.0 (iPhone; CPU iPhone OS 13_2_3 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/13.0.3 Mobile/15E148 Safari/604.1 Edg/110.0.0.0', '0');
INSERT INTO `logs` VALUES ('341', '192.168.1.177', 'Mozilla/5.0 (iPhone; CPU iPhone OS 13_2_3 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/13.0.3 Mobile/15E148 Safari/604.1 Edg/110.0.0.0', '0');
INSERT INTO `logs` VALUES ('342', '192.168.1.177', 'Mozilla/5.0 (iPhone; CPU iPhone OS 13_2_3 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/13.0.3 Mobile/15E148 Safari/604.1 Edg/110.0.0.0', '0');
INSERT INTO `logs` VALUES ('343', '192.168.1.177', 'Mozilla/5.0 (iPhone; CPU iPhone OS 13_2_3 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/13.0.3 Mobile/15E148 Safari/604.1 Edg/110.0.0.0', '0');
INSERT INTO `logs` VALUES ('344', '192.168.1.177', 'Mozilla/5.0 (iPhone; CPU iPhone OS 13_2_3 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/13.0.3 Mobile/15E148 Safari/604.1 Edg/110.0.0.0', '0');
INSERT INTO `logs` VALUES ('345', '192.168.1.177', 'Mozilla/5.0 (iPhone; CPU iPhone OS 13_2_3 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/13.0.3 Mobile/15E148 Safari/604.1 Edg/110.0.0.0', '0');
INSERT INTO `logs` VALUES ('346', '192.168.1.177', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/110.0.0.0 Safari/537.36 Edg/110.0.1587.56', '0');
INSERT INTO `logs` VALUES ('347', '192.168.1.177', 'Mozilla/5.0 (iPhone; CPU iPhone OS 13_2_3 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/13.0.3 Mobile/15E148 Safari/604.1 Edg/110.0.0.0', '0');
INSERT INTO `logs` VALUES ('348', '192.168.1.177', 'Mozilla/5.0 (iPhone; CPU iPhone OS 13_2_3 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/13.0.3 Mobile/15E148 Safari/604.1 Edg/110.0.0.0', '0');
INSERT INTO `logs` VALUES ('349', '192.168.1.177', 'Mozilla/5.0 (iPhone; CPU iPhone OS 13_2_3 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/13.0.3 Mobile/15E148 Safari/604.1 Edg/110.0.0.0', '0');
INSERT INTO `logs` VALUES ('350', '192.168.1.177', 'Mozilla/5.0 (iPhone; CPU iPhone OS 13_2_3 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/13.0.3 Mobile/15E148 Safari/604.1 Edg/110.0.0.0', '0');
INSERT INTO `logs` VALUES ('351', '192.168.1.177', 'Mozilla/5.0 (iPhone; CPU iPhone OS 13_2_3 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/13.0.3 Mobile/15E148 Safari/604.1 Edg/110.0.0.0', '0');
INSERT INTO `logs` VALUES ('352', '192.168.1.177', 'Mozilla/5.0 (iPhone; CPU iPhone OS 13_2_3 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/13.0.3 Mobile/15E148 Safari/604.1 Edg/110.0.0.0', '0');
INSERT INTO `logs` VALUES ('353', '192.168.1.177', 'Mozilla/5.0 (iPhone; CPU iPhone OS 13_2_3 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/13.0.3 Mobile/15E148 Safari/604.1 Edg/110.0.0.0', '0');
INSERT INTO `logs` VALUES ('354', '192.168.1.177', 'Mozilla/5.0 (iPhone; CPU iPhone OS 13_2_3 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/13.0.3 Mobile/15E148 Safari/604.1 Edg/110.0.0.0', '0');
INSERT INTO `logs` VALUES ('355', '192.168.1.177', 'Mozilla/5.0 (iPhone; CPU iPhone OS 13_2_3 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/13.0.3 Mobile/15E148 Safari/604.1 Edg/110.0.0.0', '0');
INSERT INTO `logs` VALUES ('356', '192.168.1.177', 'Mozilla/5.0 (iPhone; CPU iPhone OS 13_2_3 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/13.0.3 Mobile/15E148 Safari/604.1 Edg/110.0.0.0', '0');
INSERT INTO `logs` VALUES ('357', '192.168.1.177', 'Mozilla/5.0 (iPhone; CPU iPhone OS 13_2_3 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/13.0.3 Mobile/15E148 Safari/604.1 Edg/110.0.0.0', '0');
INSERT INTO `logs` VALUES ('358', '192.168.1.177', 'Mozilla/5.0 (iPhone; CPU iPhone OS 13_2_3 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/13.0.3 Mobile/15E148 Safari/604.1 Edg/110.0.0.0', '0');
INSERT INTO `logs` VALUES ('359', '192.168.1.177', 'Mozilla/5.0 (iPhone; CPU iPhone OS 13_2_3 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/13.0.3 Mobile/15E148 Safari/604.1 Edg/110.0.0.0', '0');
INSERT INTO `logs` VALUES ('360', '192.168.1.177', 'Mozilla/5.0 (iPhone; CPU iPhone OS 13_2_3 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/13.0.3 Mobile/15E148 Safari/604.1 Edg/110.0.0.0', '0');
INSERT INTO `logs` VALUES ('361', '192.168.1.177', 'Mozilla/5.0 (iPhone; CPU iPhone OS 13_2_3 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/13.0.3 Mobile/15E148 Safari/604.1 Edg/110.0.0.0', '0');
INSERT INTO `logs` VALUES ('362', '192.168.1.177', 'Mozilla/5.0 (iPhone; CPU iPhone OS 13_2_3 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/13.0.3 Mobile/15E148 Safari/604.1 Edg/110.0.0.0', '0');
INSERT INTO `logs` VALUES ('363', '192.168.1.177', 'Mozilla/5.0 (iPhone; CPU iPhone OS 13_2_3 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/13.0.3 Mobile/15E148 Safari/604.1 Edg/110.0.0.0', '0');
INSERT INTO `logs` VALUES ('364', '192.168.1.177', 'Mozilla/5.0 (iPhone; CPU iPhone OS 13_2_3 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/13.0.3 Mobile/15E148 Safari/604.1 Edg/110.0.0.0', '0');
INSERT INTO `logs` VALUES ('365', '192.168.1.177', 'Mozilla/5.0 (iPhone; CPU iPhone OS 13_2_3 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/13.0.3 Mobile/15E148 Safari/604.1 Edg/110.0.0.0', '0');
INSERT INTO `logs` VALUES ('366', '192.168.1.177', 'Mozilla/5.0 (iPhone; CPU iPhone OS 13_2_3 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/13.0.3 Mobile/15E148 Safari/604.1 Edg/110.0.0.0', '0');
INSERT INTO `logs` VALUES ('367', '192.168.1.177', 'Mozilla/5.0 (iPhone; CPU iPhone OS 13_2_3 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/13.0.3 Mobile/15E148 Safari/604.1 Edg/110.0.0.0', '0');
INSERT INTO `logs` VALUES ('368', '192.168.1.177', 'Mozilla/5.0 (iPhone; CPU iPhone OS 13_2_3 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/13.0.3 Mobile/15E148 Safari/604.1 Edg/110.0.0.0', '0');
INSERT INTO `logs` VALUES ('369', '192.168.1.177', 'Mozilla/5.0 (iPhone; CPU iPhone OS 13_2_3 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/13.0.3 Mobile/15E148 Safari/604.1 Edg/110.0.0.0', '0');
INSERT INTO `logs` VALUES ('370', '192.168.1.177', 'Mozilla/5.0 (iPhone; CPU iPhone OS 13_2_3 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/13.0.3 Mobile/15E148 Safari/604.1 Edg/110.0.0.0', '0');
INSERT INTO `logs` VALUES ('371', '192.168.1.177', 'Mozilla/5.0 (iPhone; CPU iPhone OS 13_2_3 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/13.0.3 Mobile/15E148 Safari/604.1 Edg/110.0.0.0', '0');
INSERT INTO `logs` VALUES ('372', '192.168.1.187', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/110.0.0.0 Safari/537.36 Edg/110.0.1587.57', '0');
INSERT INTO `logs` VALUES ('373', '192.168.1.177', 'Mozilla/5.0 (iPhone; CPU iPhone OS 13_2_3 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/13.0.3 Mobile/15E148 Safari/604.1 Edg/110.0.0.0', '0');
INSERT INTO `logs` VALUES ('374', '192.168.1.177', 'Mozilla/5.0 (iPhone; CPU iPhone OS 13_2_3 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/13.0.3 Mobile/15E148 Safari/604.1 Edg/110.0.0.0', '0');
INSERT INTO `logs` VALUES ('375', '192.168.1.177', 'Mozilla/5.0 (iPhone; CPU iPhone OS 13_2_3 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/13.0.3 Mobile/15E148 Safari/604.1 Edg/110.0.0.0', '0');
INSERT INTO `logs` VALUES ('376', '192.168.1.177', 'Mozilla/5.0 (iPhone; CPU iPhone OS 13_2_3 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/13.0.3 Mobile/15E148 Safari/604.1 Edg/110.0.0.0', '0');
INSERT INTO `logs` VALUES ('377', '192.168.1.177', 'Mozilla/5.0 (iPhone; CPU iPhone OS 13_2_3 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/13.0.3 Mobile/15E148 Safari/604.1 Edg/110.0.0.0', '0');
INSERT INTO `logs` VALUES ('378', '192.168.1.177', 'Mozilla/5.0 (iPhone; CPU iPhone OS 13_2_3 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/13.0.3 Mobile/15E148 Safari/604.1 Edg/110.0.0.0', '0');
INSERT INTO `logs` VALUES ('379', '192.168.1.177', 'Mozilla/5.0 (iPhone; CPU iPhone OS 13_2_3 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/13.0.3 Mobile/15E148 Safari/604.1 Edg/110.0.0.0', '0');
INSERT INTO `logs` VALUES ('380', '192.168.1.177', 'Mozilla/5.0 (iPhone; CPU iPhone OS 13_2_3 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/13.0.3 Mobile/15E148 Safari/604.1 Edg/110.0.0.0', '0');
INSERT INTO `logs` VALUES ('381', '192.168.1.177', 'Mozilla/5.0 (iPhone; CPU iPhone OS 13_2_3 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/13.0.3 Mobile/15E148 Safari/604.1 Edg/110.0.0.0', '0');
INSERT INTO `logs` VALUES ('382', '192.168.1.177', 'Mozilla/5.0 (iPhone; CPU iPhone OS 13_2_3 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/13.0.3 Mobile/15E148 Safari/604.1 Edg/110.0.0.0', '0');
INSERT INTO `logs` VALUES ('383', '192.168.1.177', 'Mozilla/5.0 (iPhone; CPU iPhone OS 13_2_3 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/13.0.3 Mobile/15E148 Safari/604.1 Edg/110.0.0.0', '0');
INSERT INTO `logs` VALUES ('384', '192.168.1.177', 'Mozilla/5.0 (iPhone; CPU iPhone OS 13_2_3 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/13.0.3 Mobile/15E148 Safari/604.1 Edg/110.0.0.0', '0');
INSERT INTO `logs` VALUES ('385', '192.168.1.177', 'Mozilla/5.0 (iPhone; CPU iPhone OS 13_2_3 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/13.0.3 Mobile/15E148 Safari/604.1 Edg/110.0.0.0', '0');
INSERT INTO `logs` VALUES ('386', '192.168.1.177', 'Mozilla/5.0 (iPhone; CPU iPhone OS 13_2_3 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/13.0.3 Mobile/15E148 Safari/604.1 Edg/110.0.0.0', '0');
INSERT INTO `logs` VALUES ('387', '192.168.1.177', 'Mozilla/5.0 (iPhone; CPU iPhone OS 13_2_3 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/13.0.3 Mobile/15E148 Safari/604.1 Edg/110.0.0.0', '0');
INSERT INTO `logs` VALUES ('388', '192.168.1.177', 'Mozilla/5.0 (iPhone; CPU iPhone OS 13_2_3 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/13.0.3 Mobile/15E148 Safari/604.1 Edg/110.0.0.0', '0');
INSERT INTO `logs` VALUES ('389', '192.168.1.177', 'Mozilla/5.0 (iPhone; CPU iPhone OS 13_2_3 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/13.0.3 Mobile/15E148 Safari/604.1 Edg/110.0.0.0', '0');
INSERT INTO `logs` VALUES ('390', '192.168.1.177', 'Mozilla/5.0 (iPhone; CPU iPhone OS 13_2_3 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/13.0.3 Mobile/15E148 Safari/604.1 Edg/110.0.0.0', '0');
INSERT INTO `logs` VALUES ('391', '192.168.1.177', 'Mozilla/5.0 (iPhone; CPU iPhone OS 13_2_3 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/13.0.3 Mobile/15E148 Safari/604.1 Edg/110.0.0.0', '0');
INSERT INTO `logs` VALUES ('392', '192.168.1.177', 'Mozilla/5.0 (iPhone; CPU iPhone OS 13_2_3 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/13.0.3 Mobile/15E148 Safari/604.1 Edg/110.0.0.0', '0');
INSERT INTO `logs` VALUES ('393', '192.168.1.177', 'Mozilla/5.0 (iPhone; CPU iPhone OS 13_2_3 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/13.0.3 Mobile/15E148 Safari/604.1 Edg/110.0.0.0', '0');
INSERT INTO `logs` VALUES ('394', '192.168.1.177', 'Mozilla/5.0 (iPhone; CPU iPhone OS 13_2_3 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/13.0.3 Mobile/15E148 Safari/604.1 Edg/110.0.0.0', '0');
INSERT INTO `logs` VALUES ('395', '192.168.1.177', 'Mozilla/5.0 (iPhone; CPU iPhone OS 13_2_3 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/13.0.3 Mobile/15E148 Safari/604.1 Edg/110.0.0.0', '0');
INSERT INTO `logs` VALUES ('396', '192.168.1.177', 'Mozilla/5.0 (iPhone; CPU iPhone OS 13_2_3 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/13.0.3 Mobile/15E148 Safari/604.1 Edg/110.0.0.0', '0');
INSERT INTO `logs` VALUES ('397', '192.168.1.177', 'Mozilla/5.0 (iPhone; CPU iPhone OS 13_2_3 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/13.0.3 Mobile/15E148 Safari/604.1 Edg/110.0.0.0', '0');
INSERT INTO `logs` VALUES ('398', '192.168.1.177', 'Mozilla/5.0 (iPhone; CPU iPhone OS 13_2_3 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/13.0.3 Mobile/15E148 Safari/604.1 Edg/110.0.0.0', '0');
INSERT INTO `logs` VALUES ('399', '192.168.1.177', 'Mozilla/5.0 (iPhone; CPU iPhone OS 13_2_3 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/13.0.3 Mobile/15E148 Safari/604.1 Edg/110.0.0.0', '0');
INSERT INTO `logs` VALUES ('400', '192.168.1.177', 'Mozilla/5.0 (iPhone; CPU iPhone OS 13_2_3 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/13.0.3 Mobile/15E148 Safari/604.1 Edg/110.0.0.0', '0');
INSERT INTO `logs` VALUES ('401', '192.168.1.177', 'Mozilla/5.0 (iPhone; CPU iPhone OS 13_2_3 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/13.0.3 Mobile/15E148 Safari/604.1 Edg/110.0.0.0', '0');
INSERT INTO `logs` VALUES ('402', '192.168.1.177', 'Mozilla/5.0 (iPhone; CPU iPhone OS 13_2_3 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/13.0.3 Mobile/15E148 Safari/604.1 Edg/110.0.0.0', '0');
INSERT INTO `logs` VALUES ('403', '192.168.1.177', 'Mozilla/5.0 (iPhone; CPU iPhone OS 13_2_3 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/13.0.3 Mobile/15E148 Safari/604.1 Edg/110.0.0.0', '0');
INSERT INTO `logs` VALUES ('404', '192.168.1.177', 'Mozilla/5.0 (iPhone; CPU iPhone OS 13_2_3 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/13.0.3 Mobile/15E148 Safari/604.1 Edg/110.0.0.0', '0');
INSERT INTO `logs` VALUES ('405', '192.168.1.177', 'Mozilla/5.0 (iPhone; CPU iPhone OS 13_2_3 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/13.0.3 Mobile/15E148 Safari/604.1 Edg/110.0.0.0', '0');
INSERT INTO `logs` VALUES ('406', '192.168.1.177', 'Mozilla/5.0 (iPhone; CPU iPhone OS 13_2_3 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/13.0.3 Mobile/15E148 Safari/604.1 Edg/110.0.0.0', '0');
INSERT INTO `logs` VALUES ('407', '192.168.1.177', 'Mozilla/5.0 (iPhone; CPU iPhone OS 13_2_3 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/13.0.3 Mobile/15E148 Safari/604.1 Edg/110.0.0.0', '0');
INSERT INTO `logs` VALUES ('408', '192.168.1.177', 'Mozilla/5.0 (iPhone; CPU iPhone OS 13_2_3 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/13.0.3 Mobile/15E148 Safari/604.1 Edg/110.0.0.0', '0');
INSERT INTO `logs` VALUES ('409', '192.168.1.177', 'Mozilla/5.0 (iPhone; CPU iPhone OS 13_2_3 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/13.0.3 Mobile/15E148 Safari/604.1 Edg/110.0.0.0', '0');
INSERT INTO `logs` VALUES ('410', '192.168.1.177', 'Mozilla/5.0 (iPhone; CPU iPhone OS 13_2_3 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/13.0.3 Mobile/15E148 Safari/604.1 Edg/110.0.0.0', '0');
INSERT INTO `logs` VALUES ('411', '192.168.1.177', 'Mozilla/5.0 (iPhone; CPU iPhone OS 13_2_3 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/13.0.3 Mobile/15E148 Safari/604.1 Edg/110.0.0.0', '0');
INSERT INTO `logs` VALUES ('412', '192.168.1.177', 'Mozilla/5.0 (iPhone; CPU iPhone OS 13_2_3 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/13.0.3 Mobile/15E148 Safari/604.1 Edg/110.0.0.0', '0');
INSERT INTO `logs` VALUES ('413', '192.168.1.177', 'Mozilla/5.0 (iPhone; CPU iPhone OS 13_2_3 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/13.0.3 Mobile/15E148 Safari/604.1 Edg/110.0.0.0', '0');
INSERT INTO `logs` VALUES ('414', '192.168.1.177', 'Mozilla/5.0 (iPhone; CPU iPhone OS 13_2_3 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/13.0.3 Mobile/15E148 Safari/604.1 Edg/110.0.0.0', '0');
INSERT INTO `logs` VALUES ('415', '192.168.1.177', 'Mozilla/5.0 (iPhone; CPU iPhone OS 13_2_3 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/13.0.3 Mobile/15E148 Safari/604.1 Edg/110.0.0.0', '0');
INSERT INTO `logs` VALUES ('416', '192.168.1.177', 'Mozilla/5.0 (iPhone; CPU iPhone OS 13_2_3 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/13.0.3 Mobile/15E148 Safari/604.1 Edg/110.0.0.0', '0');
INSERT INTO `logs` VALUES ('417', '192.168.1.177', 'Mozilla/5.0 (iPhone; CPU iPhone OS 13_2_3 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/13.0.3 Mobile/15E148 Safari/604.1 Edg/110.0.0.0', '0');
INSERT INTO `logs` VALUES ('418', '192.168.1.177', 'Mozilla/5.0 (iPhone; CPU iPhone OS 13_2_3 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/13.0.3 Mobile/15E148 Safari/604.1 Edg/110.0.0.0', '0');
INSERT INTO `logs` VALUES ('419', '192.168.1.177', 'Mozilla/5.0 (iPhone; CPU iPhone OS 13_2_3 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/13.0.3 Mobile/15E148 Safari/604.1 Edg/110.0.0.0', '0');
INSERT INTO `logs` VALUES ('420', '192.168.1.177', 'Mozilla/5.0 (iPhone; CPU iPhone OS 13_2_3 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/13.0.3 Mobile/15E148 Safari/604.1 Edg/110.0.0.0', '0');
INSERT INTO `logs` VALUES ('421', '192.168.1.177', 'Mozilla/5.0 (iPhone; CPU iPhone OS 13_2_3 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/13.0.3 Mobile/15E148 Safari/604.1 Edg/110.0.0.0', '0');
INSERT INTO `logs` VALUES ('422', '192.168.1.177', 'Mozilla/5.0 (iPhone; CPU iPhone OS 13_2_3 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/13.0.3 Mobile/15E148 Safari/604.1 Edg/110.0.0.0', '0');
INSERT INTO `logs` VALUES ('423', '192.168.1.177', 'Mozilla/5.0 (iPhone; CPU iPhone OS 13_2_3 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/13.0.3 Mobile/15E148 Safari/604.1 Edg/110.0.0.0', '0');
INSERT INTO `logs` VALUES ('424', '192.168.1.177', 'Mozilla/5.0 (iPhone; CPU iPhone OS 13_2_3 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/13.0.3 Mobile/15E148 Safari/604.1 Edg/110.0.0.0', '0');
INSERT INTO `logs` VALUES ('425', '192.168.1.177', 'Mozilla/5.0 (iPhone; CPU iPhone OS 13_2_3 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/13.0.3 Mobile/15E148 Safari/604.1 Edg/110.0.0.0', '0');
INSERT INTO `logs` VALUES ('426', '192.168.1.177', 'Mozilla/5.0 (iPhone; CPU iPhone OS 13_2_3 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/13.0.3 Mobile/15E148 Safari/604.1 Edg/110.0.0.0', '0');
INSERT INTO `logs` VALUES ('427', '192.168.1.177', 'Mozilla/5.0 (iPhone; CPU iPhone OS 13_2_3 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/13.0.3 Mobile/15E148 Safari/604.1 Edg/110.0.0.0', '0');
INSERT INTO `logs` VALUES ('428', '192.168.1.177', 'Mozilla/5.0 (iPhone; CPU iPhone OS 13_2_3 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/13.0.3 Mobile/15E148 Safari/604.1 Edg/110.0.0.0', '0');
INSERT INTO `logs` VALUES ('429', '192.168.1.177', 'Mozilla/5.0 (iPhone; CPU iPhone OS 13_2_3 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/13.0.3 Mobile/15E148 Safari/604.1 Edg/110.0.0.0', '0');
INSERT INTO `logs` VALUES ('430', '192.168.1.177', 'Mozilla/5.0 (iPhone; CPU iPhone OS 13_2_3 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/13.0.3 Mobile/15E148 Safari/604.1 Edg/110.0.0.0', '0');
INSERT INTO `logs` VALUES ('431', '192.168.1.177', 'Mozilla/5.0 (iPhone; CPU iPhone OS 13_2_3 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/13.0.3 Mobile/15E148 Safari/604.1 Edg/110.0.0.0', '0');
INSERT INTO `logs` VALUES ('432', '192.168.1.177', 'Mozilla/5.0 (iPhone; CPU iPhone OS 13_2_3 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/13.0.3 Mobile/15E148 Safari/604.1 Edg/110.0.0.0', '0');
INSERT INTO `logs` VALUES ('433', '192.168.1.177', 'Mozilla/5.0 (iPhone; CPU iPhone OS 13_2_3 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/13.0.3 Mobile/15E148 Safari/604.1 Edg/110.0.0.0', '0');
INSERT INTO `logs` VALUES ('434', '192.168.1.177', 'Mozilla/5.0 (iPhone; CPU iPhone OS 13_2_3 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/13.0.3 Mobile/15E148 Safari/604.1 Edg/110.0.0.0', '0');
INSERT INTO `logs` VALUES ('435', '192.168.1.177', 'Mozilla/5.0 (iPhone; CPU iPhone OS 13_2_3 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/13.0.3 Mobile/15E148 Safari/604.1 Edg/110.0.0.0', '0');
INSERT INTO `logs` VALUES ('436', '192.168.1.177', 'Mozilla/5.0 (iPhone; CPU iPhone OS 13_2_3 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/13.0.3 Mobile/15E148 Safari/604.1 Edg/110.0.0.0', '0');
INSERT INTO `logs` VALUES ('437', '192.168.1.177', 'Mozilla/5.0 (iPhone; CPU iPhone OS 13_2_3 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/13.0.3 Mobile/15E148 Safari/604.1 Edg/110.0.0.0', '0');
INSERT INTO `logs` VALUES ('438', '192.168.1.177', 'Mozilla/5.0 (iPhone; CPU iPhone OS 13_2_3 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/13.0.3 Mobile/15E148 Safari/604.1 Edg/110.0.0.0', '0');
INSERT INTO `logs` VALUES ('439', '192.168.1.177', 'Mozilla/5.0 (iPhone; CPU iPhone OS 13_2_3 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/13.0.3 Mobile/15E148 Safari/604.1 Edg/110.0.0.0', '0');
INSERT INTO `logs` VALUES ('440', '192.168.1.177', 'Mozilla/5.0 (iPhone; CPU iPhone OS 13_2_3 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/13.0.3 Mobile/15E148 Safari/604.1 Edg/110.0.0.0', '0');
INSERT INTO `logs` VALUES ('441', '192.168.1.187', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:109.0) Gecko/20100101 Firefox/110.0', '0');
INSERT INTO `logs` VALUES ('442', '192.168.1.187', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/110.0.0.0 Safari/537.36', '0');
INSERT INTO `logs` VALUES ('443', '192.168.1.187', 'Mozilla/5.0 (iPhone; CPU iPhone OS 13_2_3 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/13.0.3 Mobile/15E148 Safari/604.1', '0');
INSERT INTO `logs` VALUES ('444', '192.168.1.187', 'Mozilla/5.0 (iPhone; CPU iPhone OS 13_2_3 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/13.0.3 Mobile/15E148 Safari/604.1', '0');
INSERT INTO `logs` VALUES ('445', '192.168.1.187', 'Mozilla/5.0 (iPhone; CPU iPhone OS 13_2_3 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/13.0.3 Mobile/15E148 Safari/604.1', '0');
INSERT INTO `logs` VALUES ('446', '192.168.1.187', 'Mozilla/5.0 (iPhone; CPU iPhone OS 13_2_3 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/13.0.3 Mobile/15E148 Safari/604.1', '0');
INSERT INTO `logs` VALUES ('447', '192.168.1.187', 'Mozilla/5.0 (iPhone; CPU iPhone OS 13_2_3 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/13.0.3 Mobile/15E148 Safari/604.1', '0');
INSERT INTO `logs` VALUES ('448', '192.168.1.187', 'Mozilla/5.0 (iPhone; CPU iPhone OS 13_2_3 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/13.0.3 Mobile/15E148 Safari/604.1', '0');
INSERT INTO `logs` VALUES ('449', '192.168.1.187', 'Mozilla/5.0 (iPhone; CPU iPhone OS 13_2_3 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/13.0.3 Mobile/15E148 Safari/604.1', '0');
INSERT INTO `logs` VALUES ('450', '192.168.1.177', 'Mozilla/5.0 (iPhone; CPU iPhone OS 13_2_3 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/13.0.3 Mobile/15E148 Safari/604.1 Edg/110.0.0.0', '0');
INSERT INTO `logs` VALUES ('451', '192.168.1.177', 'Mozilla/5.0 (iPhone; CPU iPhone OS 13_2_3 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/13.0.3 Mobile/15E148 Safari/604.1 Edg/110.0.0.0', '0');
INSERT INTO `logs` VALUES ('452', '192.168.1.177', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/110.0.0.0 Safari/537.36 Edg/110.0.1587.56', '0');
INSERT INTO `logs` VALUES ('453', '192.168.1.177', 'Mozilla/5.0 (iPhone; CPU iPhone OS 13_2_3 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/13.0.3 Mobile/15E148 Safari/604.1 Edg/110.0.0.0', '0');
INSERT INTO `logs` VALUES ('454', '192.168.1.177', 'Mozilla/5.0 (iPhone; CPU iPhone OS 13_2_3 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/13.0.3 Mobile/15E148 Safari/604.1 Edg/110.0.0.0', '0');
INSERT INTO `logs` VALUES ('455', '192.168.1.177', 'Mozilla/5.0 (iPhone; CPU iPhone OS 13_2_3 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/13.0.3 Mobile/15E148 Safari/604.1 Edg/110.0.0.0', '0');
INSERT INTO `logs` VALUES ('456', '192.168.1.177', 'Mozilla/5.0 (iPhone; CPU iPhone OS 13_2_3 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/13.0.3 Mobile/15E148 Safari/604.1 Edg/110.0.0.0', '0');
INSERT INTO `logs` VALUES ('457', '192.168.1.177', 'Mozilla/5.0 (iPhone; CPU iPhone OS 13_2_3 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/13.0.3 Mobile/15E148 Safari/604.1 Edg/110.0.0.0', '0');
INSERT INTO `logs` VALUES ('458', '192.168.1.177', 'Mozilla/5.0 (iPhone; CPU iPhone OS 13_2_3 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/13.0.3 Mobile/15E148 Safari/604.1 Edg/110.0.0.0', '0');
INSERT INTO `logs` VALUES ('459', '192.168.1.177', 'Mozilla/5.0 (iPhone; CPU iPhone OS 13_2_3 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/13.0.3 Mobile/15E148 Safari/604.1 Edg/110.0.0.0', '0');
INSERT INTO `logs` VALUES ('460', '192.168.1.177', 'Mozilla/5.0 (iPhone; CPU iPhone OS 13_2_3 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/13.0.3 Mobile/15E148 Safari/604.1 Edg/110.0.0.0', '0');
INSERT INTO `logs` VALUES ('461', '192.168.1.177', 'Mozilla/5.0 (iPhone; CPU iPhone OS 13_2_3 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/13.0.3 Mobile/15E148 Safari/604.1 Edg/110.0.0.0', '0');
INSERT INTO `logs` VALUES ('462', '192.168.1.177', 'Mozilla/5.0 (iPhone; CPU iPhone OS 13_2_3 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/13.0.3 Mobile/15E148 Safari/604.1 Edg/110.0.0.0', '0');
INSERT INTO `logs` VALUES ('463', '192.168.1.177', 'Mozilla/5.0 (iPhone; CPU iPhone OS 13_2_3 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/13.0.3 Mobile/15E148 Safari/604.1 Edg/110.0.0.0', '0');
INSERT INTO `logs` VALUES ('464', '192.168.1.187', 'Mozilla/5.0 (iPhone; CPU iPhone OS 13_2_3 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/13.0.3 Mobile/15E148 Safari/604.1', '0');
INSERT INTO `logs` VALUES ('465', '192.168.1.187', 'Mozilla/5.0 (iPhone; CPU iPhone OS 13_2_3 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/13.0.3 Mobile/15E148 Safari/604.1', '0');
INSERT INTO `logs` VALUES ('466', '192.168.1.177', 'Mozilla/5.0 (iPhone; CPU iPhone OS 13_2_3 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/13.0.3 Mobile/15E148 Safari/604.1 Edg/110.0.0.0', '0');
INSERT INTO `logs` VALUES ('467', '192.168.1.177', 'Mozilla/5.0 (iPhone; CPU iPhone OS 13_2_3 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/13.0.3 Mobile/15E148 Safari/604.1 Edg/110.0.0.0', '0');
INSERT INTO `logs` VALUES ('468', '192.168.1.177', 'Mozilla/5.0 (iPhone; CPU iPhone OS 13_2_3 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/13.0.3 Mobile/15E148 Safari/604.1 Edg/110.0.0.0', '0');
INSERT INTO `logs` VALUES ('469', '192.168.1.177', 'Mozilla/5.0 (iPhone; CPU iPhone OS 13_2_3 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/13.0.3 Mobile/15E148 Safari/604.1 Edg/110.0.0.0', '0');
INSERT INTO `logs` VALUES ('470', '192.168.1.177', 'Mozilla/5.0 (iPhone; CPU iPhone OS 13_2_3 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/13.0.3 Mobile/15E148 Safari/604.1 Edg/110.0.0.0', '0');
INSERT INTO `logs` VALUES ('471', '192.168.1.177', 'Mozilla/5.0 (iPhone; CPU iPhone OS 13_2_3 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/13.0.3 Mobile/15E148 Safari/604.1 Edg/110.0.0.0', '0');
INSERT INTO `logs` VALUES ('472', '192.168.1.177', 'Mozilla/5.0 (iPhone; CPU iPhone OS 13_2_3 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/13.0.3 Mobile/15E148 Safari/604.1 Edg/110.0.0.0', '0');
INSERT INTO `logs` VALUES ('473', '192.168.1.177', 'Mozilla/5.0 (iPhone; CPU iPhone OS 13_2_3 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/13.0.3 Mobile/15E148 Safari/604.1 Edg/110.0.0.0', '0');
INSERT INTO `logs` VALUES ('474', '192.168.1.177', 'Mozilla/5.0 (iPhone; CPU iPhone OS 13_2_3 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/13.0.3 Mobile/15E148 Safari/604.1 Edg/110.0.0.0', '0');
INSERT INTO `logs` VALUES ('475', '192.168.1.177', 'Mozilla/5.0 (iPhone; CPU iPhone OS 13_2_3 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/13.0.3 Mobile/15E148 Safari/604.1 Edg/110.0.0.0', '0');
INSERT INTO `logs` VALUES ('476', '192.168.1.177', 'Mozilla/5.0 (iPhone; CPU iPhone OS 13_2_3 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/13.0.3 Mobile/15E148 Safari/604.1 Edg/110.0.0.0', '0');
INSERT INTO `logs` VALUES ('477', '192.168.1.177', 'Mozilla/5.0 (iPhone; CPU iPhone OS 13_2_3 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/13.0.3 Mobile/15E148 Safari/604.1 Edg/110.0.0.0', '0');
INSERT INTO `logs` VALUES ('478', '192.168.1.187', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/110.0.0.0 Safari/537.36 Edg/110.0.1587.57', '0');
INSERT INTO `logs` VALUES ('479', '192.168.1.187', 'Mozilla/5.0 (iPhone; CPU iPhone OS 13_2_3 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/13.0.3 Mobile/15E148 Safari/604.1 Edg/110.0.0.0', '0');
INSERT INTO `logs` VALUES ('480', '192.168.1.187', 'Mozilla/5.0 (iPhone; CPU iPhone OS 13_2_3 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/13.0.3 Mobile/15E148 Safari/604.1 Edg/110.0.0.0', '0');
INSERT INTO `logs` VALUES ('481', '192.168.1.187', 'Mozilla/5.0 (iPhone; CPU iPhone OS 13_2_3 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/13.0.3 Mobile/15E148 Safari/604.1 Edg/110.0.0.0', '0');
INSERT INTO `logs` VALUES ('482', '192.168.1.187', 'Mozilla/5.0 (iPhone; CPU iPhone OS 13_2_3 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/13.0.3 Mobile/15E148 Safari/604.1 Edg/110.0.0.0', '0');
INSERT INTO `logs` VALUES ('483', '192.168.1.187', 'Mozilla/5.0 (iPhone; CPU iPhone OS 13_2_3 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/13.0.3 Mobile/15E148 Safari/604.1 Edg/110.0.0.0', '0');
INSERT INTO `logs` VALUES ('484', '192.168.1.177', 'Mozilla/5.0 (iPhone; CPU iPhone OS 13_2_3 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/13.0.3 Mobile/15E148 Safari/604.1 Edg/110.0.0.0', '0');
INSERT INTO `logs` VALUES ('485', '192.168.1.177', 'Mozilla/5.0 (iPhone; CPU iPhone OS 13_2_3 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/13.0.3 Mobile/15E148 Safari/604.1 Edg/110.0.0.0', '0');
INSERT INTO `logs` VALUES ('486', '192.168.1.177', 'Mozilla/5.0 (iPhone; CPU iPhone OS 13_2_3 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/13.0.3 Mobile/15E148 Safari/604.1 Edg/110.0.0.0', '0');
INSERT INTO `logs` VALUES ('487', '192.168.1.187', 'Mozilla/5.0 (iPhone; CPU iPhone OS 13_2_3 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/13.0.3 Mobile/15E148 Safari/604.1 Edg/110.0.0.0', '0');
INSERT INTO `logs` VALUES ('488', '192.168.1.187', 'Mozilla/5.0 (iPhone; CPU iPhone OS 13_2_3 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/13.0.3 Mobile/15E148 Safari/604.1 Edg/110.0.0.0', '0');
INSERT INTO `logs` VALUES ('489', '192.168.1.177', 'Mozilla/5.0 (iPhone; CPU iPhone OS 13_2_3 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/13.0.3 Mobile/15E148 Safari/604.1 Edg/110.0.0.0', '0');
INSERT INTO `logs` VALUES ('490', '192.168.1.187', 'Mozilla/5.0 (iPhone; CPU iPhone OS 13_2_3 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/13.0.3 Mobile/15E148 Safari/604.1 Edg/110.0.0.0', '0');
INSERT INTO `logs` VALUES ('491', '192.168.1.177', 'Mozilla/5.0 (iPhone; CPU iPhone OS 13_2_3 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/13.0.3 Mobile/15E148 Safari/604.1 Edg/110.0.0.0', '0');
INSERT INTO `logs` VALUES ('492', '192.168.1.177', 'Mozilla/5.0 (iPhone; CPU iPhone OS 13_2_3 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/13.0.3 Mobile/15E148 Safari/604.1 Edg/110.0.0.0', '0');
INSERT INTO `logs` VALUES ('493', '192.168.1.177', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/110.0.0.0 Safari/537.36 Edg/110.0.1587.57', '0');
INSERT INTO `logs` VALUES ('494', '192.168.1.177', 'Mozilla/5.0 (iPhone; CPU iPhone OS 13_2_3 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/13.0.3 Mobile/15E148 Safari/604.1 Edg/110.0.0.0', '0');
INSERT INTO `logs` VALUES ('495', '192.168.1.177', 'Mozilla/5.0 (iPhone; CPU iPhone OS 13_2_3 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/13.0.3 Mobile/15E148 Safari/604.1 Edg/110.0.0.0', '0');
INSERT INTO `logs` VALUES ('496', '192.168.1.177', 'Mozilla/5.0 (iPhone; CPU iPhone OS 13_2_3 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/13.0.3 Mobile/15E148 Safari/604.1 Edg/110.0.0.0', '0');
INSERT INTO `logs` VALUES ('497', '192.168.1.177', 'Mozilla/5.0 (iPhone; CPU iPhone OS 13_2_3 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/13.0.3 Mobile/15E148 Safari/604.1 Edg/110.0.0.0', '0');
INSERT INTO `logs` VALUES ('498', '192.168.1.177', 'Mozilla/5.0 (iPhone; CPU iPhone OS 13_2_3 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/13.0.3 Mobile/15E148 Safari/604.1 Edg/110.0.0.0', '0');
INSERT INTO `logs` VALUES ('499', '192.168.1.177', 'Mozilla/5.0 (iPhone; CPU iPhone OS 13_2_3 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/13.0.3 Mobile/15E148 Safari/604.1 Edg/110.0.0.0', '0');
INSERT INTO `logs` VALUES ('500', '192.168.1.177', 'Mozilla/5.0 (iPhone; CPU iPhone OS 13_2_3 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/13.0.3 Mobile/15E148 Safari/604.1 Edg/110.0.0.0', '0');
INSERT INTO `logs` VALUES ('501', '192.168.1.177', 'Mozilla/5.0 (iPhone; CPU iPhone OS 13_2_3 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/13.0.3 Mobile/15E148 Safari/604.1 Edg/110.0.0.0', '0');
INSERT INTO `logs` VALUES ('502', '192.168.1.177', 'Mozilla/5.0 (iPhone; CPU iPhone OS 13_2_3 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/13.0.3 Mobile/15E148 Safari/604.1 Edg/110.0.0.0', '0');
INSERT INTO `logs` VALUES ('503', '192.168.1.177', 'Mozilla/5.0 (iPhone; CPU iPhone OS 13_2_3 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/13.0.3 Mobile/15E148 Safari/604.1 Edg/110.0.0.0', '0');
INSERT INTO `logs` VALUES ('504', '192.168.1.177', 'Mozilla/5.0 (iPhone; CPU iPhone OS 13_2_3 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/13.0.3 Mobile/15E148 Safari/604.1 Edg/110.0.0.0', '0');
INSERT INTO `logs` VALUES ('505', '192.168.1.177', 'Mozilla/5.0 (iPhone; CPU iPhone OS 13_2_3 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/13.0.3 Mobile/15E148 Safari/604.1 Edg/110.0.0.0', '0');
INSERT INTO `logs` VALUES ('506', '192.168.1.177', 'Mozilla/5.0 (iPhone; CPU iPhone OS 13_2_3 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/13.0.3 Mobile/15E148 Safari/604.1 Edg/110.0.0.0', '0');
INSERT INTO `logs` VALUES ('507', '192.168.1.177', 'Mozilla/5.0 (iPhone; CPU iPhone OS 13_2_3 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/13.0.3 Mobile/15E148 Safari/604.1 Edg/110.0.0.0', '0');
INSERT INTO `logs` VALUES ('508', '192.168.1.177', 'Mozilla/5.0 (iPhone; CPU iPhone OS 13_2_3 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/13.0.3 Mobile/15E148 Safari/604.1 Edg/110.0.0.0', '0');
INSERT INTO `logs` VALUES ('509', '192.168.1.177', 'Mozilla/5.0 (iPhone; CPU iPhone OS 13_2_3 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/13.0.3 Mobile/15E148 Safari/604.1 Edg/110.0.0.0', '0');
INSERT INTO `logs` VALUES ('510', '192.168.1.177', 'Mozilla/5.0 (iPhone; CPU iPhone OS 13_2_3 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/13.0.3 Mobile/15E148 Safari/604.1 Edg/110.0.0.0', '0');
INSERT INTO `logs` VALUES ('511', '192.168.1.177', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/110.0.0.0 Safari/537.36 Edg/110.0.1587.57', '0');
INSERT INTO `logs` VALUES ('512', '192.168.1.177', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/110.0.0.0 Safari/537.36 Edg/110.0.1587.57', '0');
INSERT INTO `logs` VALUES ('513', '192.168.1.177', 'Mozilla/5.0 (iPhone; CPU iPhone OS 13_2_3 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/13.0.3 Mobile/15E148 Safari/604.1 Edg/110.0.0.0', '0');
INSERT INTO `logs` VALUES ('514', '192.168.1.177', 'Mozilla/5.0 (iPhone; CPU iPhone OS 13_2_3 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/13.0.3 Mobile/15E148 Safari/604.1 Edg/110.0.0.0', '0');
INSERT INTO `logs` VALUES ('515', '192.168.1.177', 'Mozilla/5.0 (iPhone; CPU iPhone OS 13_2_3 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/13.0.3 Mobile/15E148 Safari/604.1 Edg/110.0.0.0', '0');
INSERT INTO `logs` VALUES ('516', '192.168.1.177', 'Mozilla/5.0 (iPhone; CPU iPhone OS 13_2_3 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/13.0.3 Mobile/15E148 Safari/604.1 Edg/110.0.0.0', '0');
INSERT INTO `logs` VALUES ('517', '192.168.1.177', 'Mozilla/5.0 (iPhone; CPU iPhone OS 13_2_3 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/13.0.3 Mobile/15E148 Safari/604.1 Edg/110.0.0.0', '0');
INSERT INTO `logs` VALUES ('518', '192.168.1.177', 'Mozilla/5.0 (iPhone; CPU iPhone OS 13_2_3 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/13.0.3 Mobile/15E148 Safari/604.1 Edg/110.0.0.0', '0');
INSERT INTO `logs` VALUES ('519', '192.168.1.177', 'Mozilla/5.0 (iPhone; CPU iPhone OS 13_2_3 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/13.0.3 Mobile/15E148 Safari/604.1 Edg/110.0.0.0', '0');
INSERT INTO `logs` VALUES ('520', '192.168.1.177', 'Mozilla/5.0 (iPhone; CPU iPhone OS 13_2_3 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/13.0.3 Mobile/15E148 Safari/604.1 Edg/110.0.0.0', '0');
INSERT INTO `logs` VALUES ('521', '192.168.1.177', 'Mozilla/5.0 (iPhone; CPU iPhone OS 13_2_3 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/13.0.3 Mobile/15E148 Safari/604.1 Edg/110.0.0.0', '0');
INSERT INTO `logs` VALUES ('522', '192.168.1.177', 'Mozilla/5.0 (iPhone; CPU iPhone OS 13_2_3 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/13.0.3 Mobile/15E148 Safari/604.1 Edg/110.0.0.0', '0');
INSERT INTO `logs` VALUES ('523', '192.168.1.177', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/110.0.0.0 Safari/537.36 Edg/110.0.1587.57', '0');
INSERT INTO `logs` VALUES ('524', '192.168.1.177', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/110.0.0.0 Safari/537.36 Edg/110.0.1587.57', '0');
INSERT INTO `logs` VALUES ('525', '192.168.1.177', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/110.0.0.0 Safari/537.36 Edg/110.0.1587.57', '0');
INSERT INTO `logs` VALUES ('526', '192.168.1.177', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/110.0.0.0 Safari/537.36 Edg/110.0.1587.57', '0');
INSERT INTO `logs` VALUES ('527', '192.168.1.177', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/110.0.0.0 Safari/537.36 Edg/110.0.1587.57', '0');
INSERT INTO `logs` VALUES ('528', '192.168.1.177', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/110.0.0.0 Safari/537.36 Edg/110.0.1587.57', '0');
INSERT INTO `logs` VALUES ('529', '192.168.1.177', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/110.0.0.0 Safari/537.36 Edg/110.0.1587.57', '0');
INSERT INTO `logs` VALUES ('530', '192.168.1.177', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/110.0.0.0 Safari/537.36 Edg/110.0.1587.57', '0');
INSERT INTO `logs` VALUES ('531', '192.168.1.177', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/110.0.0.0 Safari/537.36 Edg/110.0.1587.57', '0');
INSERT INTO `logs` VALUES ('532', '192.168.1.177', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/110.0.0.0 Safari/537.36 Edg/110.0.1587.57', '0');
INSERT INTO `logs` VALUES ('533', '192.168.1.177', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/110.0.0.0 Safari/537.36 Edg/110.0.1587.57', '0');
INSERT INTO `logs` VALUES ('534', '192.168.1.177', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/110.0.0.0 Safari/537.36 Edg/110.0.1587.57', '0');
INSERT INTO `logs` VALUES ('535', '192.168.1.177', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/110.0.0.0 Safari/537.36 Edg/110.0.1587.57', '0');
INSERT INTO `logs` VALUES ('536', '192.168.1.177', 'Mozilla/5.0 (iPhone; CPU iPhone OS 13_2_3 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/13.0.3 Mobile/15E148 Safari/604.1 Edg/110.0.0.0', '0');
INSERT INTO `logs` VALUES ('537', '192.168.1.177', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/110.0.0.0 Safari/537.36 Edg/110.0.1587.57', '0');
INSERT INTO `logs` VALUES ('538', '192.168.1.177', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/110.0.0.0 Safari/537.36 Edg/110.0.1587.57', '0');
INSERT INTO `logs` VALUES ('539', '192.168.1.177', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/110.0.0.0 Safari/537.36 Edg/110.0.1587.57', '0');
INSERT INTO `logs` VALUES ('540', '192.168.1.177', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/110.0.0.0 Safari/537.36 Edg/110.0.1587.57', '0');
INSERT INTO `logs` VALUES ('541', '192.168.1.177', 'Mozilla/5.0 (iPhone; CPU iPhone OS 13_2_3 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/13.0.3 Mobile/15E148 Safari/604.1 Edg/110.0.0.0', '0');
INSERT INTO `logs` VALUES ('542', '192.168.1.177', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/110.0.0.0 Safari/537.36 Edg/110.0.1587.57', '0');
INSERT INTO `logs` VALUES ('543', '192.168.1.177', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/110.0.0.0 Safari/537.36 Edg/110.0.1587.57', '0');
INSERT INTO `logs` VALUES ('544', '192.168.1.177', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/110.0.0.0 Safari/537.36 Edg/110.0.1587.57', '0');
INSERT INTO `logs` VALUES ('545', '192.168.1.177', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/110.0.0.0 Safari/537.36 Edg/110.0.1587.57', '0');
INSERT INTO `logs` VALUES ('546', '192.168.1.177', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/110.0.0.0 Safari/537.36 Edg/110.0.1587.57', '0');
INSERT INTO `logs` VALUES ('547', '192.168.1.177', 'Mozilla/5.0 (iPhone; CPU iPhone OS 13_2_3 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/13.0.3 Mobile/15E148 Safari/604.1 Edg/110.0.0.0', '0');
INSERT INTO `logs` VALUES ('548', '192.168.1.177', 'Mozilla/5.0 (iPhone; CPU iPhone OS 13_2_3 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/13.0.3 Mobile/15E148 Safari/604.1 Edg/110.0.0.0', '0');
INSERT INTO `logs` VALUES ('549', '192.168.1.177', 'Mozilla/5.0 (iPhone; CPU iPhone OS 13_2_3 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/13.0.3 Mobile/15E148 Safari/604.1 Edg/110.0.0.0', '0');
INSERT INTO `logs` VALUES ('550', '192.168.1.177', 'Mozilla/5.0 (iPhone; CPU iPhone OS 13_2_3 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/13.0.3 Mobile/15E148 Safari/604.1 Edg/110.0.0.0', '0');
INSERT INTO `logs` VALUES ('551', '192.168.1.177', 'Mozilla/5.0 (iPhone; CPU iPhone OS 13_2_3 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/13.0.3 Mobile/15E148 Safari/604.1 Edg/110.0.0.0', '0');
INSERT INTO `logs` VALUES ('552', '192.168.1.177', 'Mozilla/5.0 (iPhone; CPU iPhone OS 13_2_3 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/13.0.3 Mobile/15E148 Safari/604.1 Edg/110.0.0.0', '0');
INSERT INTO `logs` VALUES ('553', '192.168.1.177', 'Mozilla/5.0 (iPhone; CPU iPhone OS 13_2_3 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/13.0.3 Mobile/15E148 Safari/604.1 Edg/110.0.0.0', '0');
INSERT INTO `logs` VALUES ('554', '192.168.1.177', 'Mozilla/5.0 (iPhone; CPU iPhone OS 13_2_3 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/13.0.3 Mobile/15E148 Safari/604.1 Edg/110.0.0.0', '0');
INSERT INTO `logs` VALUES ('555', '192.168.1.177', 'Mozilla/5.0 (iPhone; CPU iPhone OS 13_2_3 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/13.0.3 Mobile/15E148 Safari/604.1 Edg/110.0.0.0', '0');
INSERT INTO `logs` VALUES ('556', '192.168.1.177', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/110.0.0.0 Safari/537.36 Edg/110.0.1587.57', '0');
INSERT INTO `logs` VALUES ('557', '192.168.1.177', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/110.0.0.0 Safari/537.36 Edg/110.0.1587.57', '0');
INSERT INTO `logs` VALUES ('558', '192.168.1.177', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/110.0.0.0 Safari/537.36 Edg/110.0.1587.57', '0');
INSERT INTO `logs` VALUES ('559', '192.168.1.177', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/110.0.0.0 Safari/537.36 Edg/110.0.1587.57', '0');
INSERT INTO `logs` VALUES ('560', '192.168.1.177', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/110.0.0.0 Safari/537.36 Edg/110.0.1587.57', '0');
INSERT INTO `logs` VALUES ('561', '192.168.1.177', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/110.0.0.0 Safari/537.36 Edg/110.0.1587.57', '0');
INSERT INTO `logs` VALUES ('562', '192.168.1.177', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/110.0.0.0 Safari/537.36 Edg/110.0.1587.57', '0');
INSERT INTO `logs` VALUES ('563', '192.168.1.177', 'Mozilla/5.0 (iPhone; CPU iPhone OS 13_2_3 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/13.0.3 Mobile/15E148 Safari/604.1 Edg/110.0.0.0', '0');
INSERT INTO `logs` VALUES ('564', '192.168.1.177', 'Mozilla/5.0 (iPhone; CPU iPhone OS 13_2_3 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/13.0.3 Mobile/15E148 Safari/604.1 Edg/110.0.0.0', '0');
INSERT INTO `logs` VALUES ('565', '192.168.1.177', 'Mozilla/5.0 (iPhone; CPU iPhone OS 13_2_3 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/13.0.3 Mobile/15E148 Safari/604.1 Edg/110.0.0.0', '0');
INSERT INTO `logs` VALUES ('566', '192.168.1.177', 'Mozilla/5.0 (iPhone; CPU iPhone OS 13_2_3 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/13.0.3 Mobile/15E148 Safari/604.1 Edg/110.0.0.0', '0');
INSERT INTO `logs` VALUES ('567', '192.168.1.177', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/110.0.0.0 Safari/537.36 Edg/110.0.1587.57', '0');
INSERT INTO `logs` VALUES ('568', '192.168.1.177', 'Mozilla/5.0 (iPhone; CPU iPhone OS 13_2_3 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/13.0.3 Mobile/15E148 Safari/604.1 Edg/110.0.0.0', '0');
INSERT INTO `logs` VALUES ('569', '192.168.1.177', 'Mozilla/5.0 (iPhone; CPU iPhone OS 13_2_3 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/13.0.3 Mobile/15E148 Safari/604.1 Edg/110.0.0.0', '0');
INSERT INTO `logs` VALUES ('570', '192.168.1.177', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/110.0.0.0 Safari/537.36 Edg/110.0.1587.57', '0');
INSERT INTO `logs` VALUES ('571', '192.168.1.177', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/110.0.0.0 Safari/537.36 Edg/110.0.1587.57', '0');
INSERT INTO `logs` VALUES ('572', '192.168.1.177', 'Mozilla/5.0 (iPhone; CPU iPhone OS 13_2_3 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/13.0.3 Mobile/15E148 Safari/604.1 Edg/110.0.0.0', '0');
INSERT INTO `logs` VALUES ('573', '192.168.1.177', 'Mozilla/5.0 (iPhone; CPU iPhone OS 13_2_3 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/13.0.3 Mobile/15E148 Safari/604.1 Edg/110.0.0.0', '0');
INSERT INTO `logs` VALUES ('574', '192.168.1.177', 'Mozilla/5.0 (iPhone; CPU iPhone OS 13_2_3 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/13.0.3 Mobile/15E148 Safari/604.1 Edg/110.0.0.0', '0');
INSERT INTO `logs` VALUES ('575', '192.168.1.177', 'Mozilla/5.0 (iPhone; CPU iPhone OS 13_2_3 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/13.0.3 Mobile/15E148 Safari/604.1 Edg/110.0.0.0', '0');
INSERT INTO `logs` VALUES ('576', '192.168.1.177', 'Mozilla/5.0 (iPhone; CPU iPhone OS 13_2_3 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/13.0.3 Mobile/15E148 Safari/604.1 Edg/110.0.0.0', '0');
INSERT INTO `logs` VALUES ('577', '192.168.1.177', 'Mozilla/5.0 (iPhone; CPU iPhone OS 13_2_3 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/13.0.3 Mobile/15E148 Safari/604.1 Edg/110.0.0.0', '0');
INSERT INTO `logs` VALUES ('578', '192.168.1.177', 'Mozilla/5.0 (iPhone; CPU iPhone OS 13_2_3 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/13.0.3 Mobile/15E148 Safari/604.1 Edg/110.0.0.0', '0');
INSERT INTO `logs` VALUES ('579', '192.168.1.177', 'Mozilla/5.0 (iPhone; CPU iPhone OS 13_2_3 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/13.0.3 Mobile/15E148 Safari/604.1 Edg/110.0.0.0', '0');
INSERT INTO `logs` VALUES ('580', '192.168.1.177', 'Mozilla/5.0 (iPhone; CPU iPhone OS 13_2_3 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/13.0.3 Mobile/15E148 Safari/604.1 Edg/110.0.0.0', '0');
INSERT INTO `logs` VALUES ('581', '192.168.1.177', 'Mozilla/5.0 (iPhone; CPU iPhone OS 13_2_3 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/13.0.3 Mobile/15E148 Safari/604.1 Edg/110.0.0.0', '0');
INSERT INTO `logs` VALUES ('582', '192.168.1.177', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/110.0.0.0 Safari/537.36 Edg/110.0.1587.57', '0');
INSERT INTO `logs` VALUES ('583', '192.168.1.177', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/110.0.0.0 Safari/537.36 Edg/110.0.1587.57', '0');
INSERT INTO `logs` VALUES ('584', '192.168.1.177', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/110.0.0.0 Safari/537.36 Edg/110.0.1587.57', '0');
INSERT INTO `logs` VALUES ('585', '192.168.1.177', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/110.0.0.0 Safari/537.36 Edg/110.0.1587.57', '0');
INSERT INTO `logs` VALUES ('586', '192.168.1.177', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/110.0.0.0 Safari/537.36 Edg/110.0.1587.57', '0');
INSERT INTO `logs` VALUES ('587', '192.168.1.177', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/110.0.0.0 Safari/537.36 Edg/110.0.1587.57', '0');
INSERT INTO `logs` VALUES ('588', '192.168.1.177', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/110.0.0.0 Safari/537.36 Edg/110.0.1587.57', '0');
INSERT INTO `logs` VALUES ('589', '192.168.1.177', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/110.0.0.0 Safari/537.36 Edg/110.0.1587.57', '0');
INSERT INTO `logs` VALUES ('590', '192.168.1.177', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/110.0.0.0 Safari/537.36 Edg/110.0.1587.57', '0');
INSERT INTO `logs` VALUES ('591', '192.168.1.177', 'Mozilla/5.0 (iPhone; CPU iPhone OS 13_2_3 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/13.0.3 Mobile/15E148 Safari/604.1 Edg/110.0.0.0', '0');
INSERT INTO `logs` VALUES ('592', '192.168.1.177', 'Mozilla/5.0 (iPhone; CPU iPhone OS 13_2_3 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/13.0.3 Mobile/15E148 Safari/604.1 Edg/110.0.0.0', '0');
INSERT INTO `logs` VALUES ('593', '192.168.1.177', 'Mozilla/5.0 (iPhone; CPU iPhone OS 13_2_3 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/13.0.3 Mobile/15E148 Safari/604.1 Edg/110.0.0.0', '0');
INSERT INTO `logs` VALUES ('594', '192.168.1.177', 'Mozilla/5.0 (iPhone; CPU iPhone OS 13_2_3 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/13.0.3 Mobile/15E148 Safari/604.1 Edg/110.0.0.0', '0');
INSERT INTO `logs` VALUES ('595', '192.168.1.177', 'Mozilla/5.0 (iPhone; CPU iPhone OS 13_2_3 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/13.0.3 Mobile/15E148 Safari/604.1 Edg/110.0.0.0', '0');
INSERT INTO `logs` VALUES ('596', '192.168.1.177', 'Mozilla/5.0 (iPhone; CPU iPhone OS 13_2_3 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/13.0.3 Mobile/15E148 Safari/604.1 Edg/110.0.0.0', '0');
INSERT INTO `logs` VALUES ('597', '192.168.1.177', 'Mozilla/5.0 (iPhone; CPU iPhone OS 13_2_3 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/13.0.3 Mobile/15E148 Safari/604.1 Edg/110.0.0.0', '0');
INSERT INTO `logs` VALUES ('598', '192.168.1.177', 'Mozilla/5.0 (iPhone; CPU iPhone OS 13_2_3 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/13.0.3 Mobile/15E148 Safari/604.1 Edg/110.0.0.0', '0');
INSERT INTO `logs` VALUES ('599', '192.168.1.177', 'Mozilla/5.0 (iPhone; CPU iPhone OS 13_2_3 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/13.0.3 Mobile/15E148 Safari/604.1 Edg/110.0.0.0', '0');
INSERT INTO `logs` VALUES ('600', '192.168.1.177', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/110.0.0.0 Safari/537.36 Edg/110.0.1587.57', '0');
INSERT INTO `logs` VALUES ('601', '192.168.1.177', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/110.0.0.0 Safari/537.36 Edg/110.0.1587.57', '0');
INSERT INTO `logs` VALUES ('602', '192.168.1.177', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/110.0.0.0 Safari/537.36 Edg/110.0.1587.57', '0');
INSERT INTO `logs` VALUES ('603', '192.168.1.177', 'Mozilla/5.0 (iPhone; CPU iPhone OS 13_2_3 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/13.0.3 Mobile/15E148 Safari/604.1 Edg/110.0.0.0', '0');
INSERT INTO `logs` VALUES ('604', '192.168.1.177', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/110.0.0.0 Safari/537.36 Edg/110.0.1587.57', '0');
INSERT INTO `logs` VALUES ('605', '192.168.1.177', 'Mozilla/5.0 (iPhone; CPU iPhone OS 13_2_3 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/13.0.3 Mobile/15E148 Safari/604.1 Edg/110.0.0.0', '0');
INSERT INTO `logs` VALUES ('606', '192.168.1.177', 'Mozilla/5.0 (iPhone; CPU iPhone OS 13_2_3 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/13.0.3 Mobile/15E148 Safari/604.1 Edg/110.0.0.0', '0');
INSERT INTO `logs` VALUES ('607', '192.168.1.177', 'Mozilla/5.0 (iPhone; CPU iPhone OS 13_2_3 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/13.0.3 Mobile/15E148 Safari/604.1 Edg/110.0.0.0', '0');
INSERT INTO `logs` VALUES ('608', '192.168.1.177', 'Mozilla/5.0 (iPhone; CPU iPhone OS 13_2_3 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/13.0.3 Mobile/15E148 Safari/604.1 Edg/110.0.0.0', '0');
INSERT INTO `logs` VALUES ('609', '192.168.1.177', 'Mozilla/5.0 (iPhone; CPU iPhone OS 13_2_3 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/13.0.3 Mobile/15E148 Safari/604.1 Edg/110.0.0.0', '0');
INSERT INTO `logs` VALUES ('610', '192.168.1.177', 'Mozilla/5.0 (iPhone; CPU iPhone OS 13_2_3 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/13.0.3 Mobile/15E148 Safari/604.1 Edg/110.0.0.0', '0');
INSERT INTO `logs` VALUES ('611', '192.168.1.177', 'Mozilla/5.0 (iPhone; CPU iPhone OS 13_2_3 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/13.0.3 Mobile/15E148 Safari/604.1 Edg/110.0.0.0', '0');
INSERT INTO `logs` VALUES ('612', '192.168.1.177', 'Mozilla/5.0 (iPhone; CPU iPhone OS 13_2_3 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/13.0.3 Mobile/15E148 Safari/604.1 Edg/110.0.0.0', '0');
INSERT INTO `logs` VALUES ('613', '192.168.1.177', 'Mozilla/5.0 (iPhone; CPU iPhone OS 13_2_3 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/13.0.3 Mobile/15E148 Safari/604.1 Edg/110.0.0.0', '0');
INSERT INTO `logs` VALUES ('614', '192.168.1.187', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/110.0.0.0 Safari/537.36', '0');
INSERT INTO `logs` VALUES ('615', '192.168.1.187', 'Mozilla/5.0 (iPhone; CPU iPhone OS 13_2_3 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/13.0.3 Mobile/15E148 Safari/604.1', '0');
INSERT INTO `logs` VALUES ('616', '192.168.1.177', 'Mozilla/5.0 (iPhone; CPU iPhone OS 13_2_3 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/13.0.3 Mobile/15E148 Safari/604.1 Edg/110.0.0.0', '0');
INSERT INTO `logs` VALUES ('617', '192.168.1.187', 'Mozilla/5.0 (iPhone; CPU iPhone OS 13_2_3 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/13.0.3 Mobile/15E148 Safari/604.1', '0');
INSERT INTO `logs` VALUES ('618', '192.168.1.177', 'Mozilla/5.0 (iPhone; CPU iPhone OS 13_2_3 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/13.0.3 Mobile/15E148 Safari/604.1 Edg/110.0.0.0', '0');
INSERT INTO `logs` VALUES ('619', '192.168.1.187', 'Mozilla/5.0 (iPhone; CPU iPhone OS 13_2_3 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/13.0.3 Mobile/15E148 Safari/604.1', '0');
INSERT INTO `logs` VALUES ('620', '192.168.1.187', 'Mozilla/5.0 (iPhone; CPU iPhone OS 13_2_3 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/13.0.3 Mobile/15E148 Safari/604.1', '0');
INSERT INTO `logs` VALUES ('621', '192.168.1.187', 'Mozilla/5.0 (iPhone; CPU iPhone OS 13_2_3 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/13.0.3 Mobile/15E148 Safari/604.1', '0');
INSERT INTO `logs` VALUES ('622', '192.168.1.187', 'Mozilla/5.0 (iPhone; CPU iPhone OS 13_2_3 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/13.0.3 Mobile/15E148 Safari/604.1', '0');
INSERT INTO `logs` VALUES ('623', '192.168.1.187', 'Mozilla/5.0 (iPhone; CPU iPhone OS 13_2_3 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/13.0.3 Mobile/15E148 Safari/604.1', '0');
INSERT INTO `logs` VALUES ('624', '192.168.1.187', 'Mozilla/5.0 (iPhone; CPU iPhone OS 13_2_3 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/13.0.3 Mobile/15E148 Safari/604.1', '0');

-- ----------------------------
-- Table structure for order
-- ----------------------------
DROP TABLE IF EXISTS `order`;
CREATE TABLE `order` (
  `order_id` bigint(20) NOT NULL AUTO_INCREMENT,
  `user_id` bigint(20) NOT NULL,
  `order_no` varchar(255) NOT NULL,
  `pay_status` int(1) NOT NULL DEFAULT '0',
  `total_price` double(255,2) NOT NULL DEFAULT '0.00',
  `address_id` bigint(255) NOT NULL,
  `is_deleted` int(1) NOT NULL DEFAULT '0',
  `create_time` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`order_id`)
) ENGINE=InnoDB AUTO_INCREMENT=73 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of order
-- ----------------------------
INSERT INTO `order` VALUES ('60', '12', '79342c635ddd4c23879fad9eb083e4e2', '1', '663.00', '2', '0', '2023-02-28 10:33:21');
INSERT INTO `order` VALUES ('61', '12', '71a299062f6a45b0b8fc7e54e6e63099', '0', '661.00', '2', '0', '2023-02-28 11:27:12');
INSERT INTO `order` VALUES ('62', '12', 'bbf718783074472dbff76077d92121fd', '0', '663.00', '2', '0', '2023-02-28 12:21:14');
INSERT INTO `order` VALUES ('63', '12', 'c23d7d728d45462bbe870573abe8e098', '1', '2.00', '2', '0', '2023-02-28 13:02:11');
INSERT INTO `order` VALUES ('64', '12', 'dcb0d5ec4ef548599caa5c345efba645', '0', '663.00', '2', '0', '2023-02-28 13:26:58');
INSERT INTO `order` VALUES ('65', '12', 'e223cdca7a694cf2837cc2cfc8444ed9', '1', '663.00', '2', '0', '2023-02-28 13:27:41');
INSERT INTO `order` VALUES ('66', '1', '480bd00fc88347588125c8bfb7e71cb8', '1', '4000000120.00', '6', '0', '2023-02-28 17:51:48');
INSERT INTO `order` VALUES ('67', '1', '3185c1c605f54431b0420f58911c2b74', '1', '4000000120.00', '6', '0', '2023-02-28 18:33:47');
INSERT INTO `order` VALUES ('68', '1', '366ac22a8f624d44bcd05209760b5b60', '0', '4000000120.52', '6', '0', '2023-02-28 18:34:25');
INSERT INTO `order` VALUES ('69', '1', 'f8acb148643b450ba8e92ec3e534179a', '0', '4000000120.52', '6', '0', '2023-03-01 20:40:35');
INSERT INTO `order` VALUES ('70', '1', 'c7f4de0d43a0446a8e494d06111081e6', '0', '4000000120.52', '6', '0', '2023-03-01 20:40:45');
INSERT INTO `order` VALUES ('71', '1', '125bb6854ede49dd9bc96ca258669ed9', '0', '4000000120.52', '6', '0', '2023-03-01 20:41:28');
INSERT INTO `order` VALUES ('72', '1', '1c7f6545178d4fdf929e66d5fe690762', '1', '4000000120.52', '6', '0', '2023-03-01 20:42:33');

-- ----------------------------
-- Table structure for order_detail
-- ----------------------------
DROP TABLE IF EXISTS `order_detail`;
CREATE TABLE `order_detail` (
  `order_detail_id` bigint(20) NOT NULL AUTO_INCREMENT,
  `order_id` bigint(255) NOT NULL,
  `goods_id` bigint(255) NOT NULL,
  `user_id` bigint(255) NOT NULL,
  `buy_num` int(11) NOT NULL,
  `buy_price` double(255,2) NOT NULL,
  `goods_name` varchar(255) NOT NULL,
  `goods_image` varchar(255) NOT NULL,
  PRIMARY KEY (`order_detail_id`)
) ENGINE=InnoDB AUTO_INCREMENT=67 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of order_detail
-- ----------------------------
INSERT INTO `order_detail` VALUES ('31', '60', '10004', '12', '1', '2.00', '无印良品 MUJI 柔和洁面泡沫', '/picture/3da0d748d70d40a4ba99f0f4b3dd8f44.jpg');
INSERT INTO `order_detail` VALUES ('32', '60', '10713', '12', '661', '1.00', '荣耀20 李现同款 4800万超广角AI四摄 3200W美颜自拍', '/picture/45f62e91098740de920b5f87829c20a5.jpg');
INSERT INTO `order_detail` VALUES ('33', '61', '10713', '12', '661', '1.00', '荣耀20 李现同款 4800万超广角AI四摄 3200W美颜自拍', '/picture/45f62e91098740de920b5f87829c20a5.jpg');
INSERT INTO `order_detail` VALUES ('34', '62', '10004', '12', '1', '2.00', '无印良品 MUJI 柔和洁面泡沫', '/picture/3da0d748d70d40a4ba99f0f4b3dd8f44.jpg');
INSERT INTO `order_detail` VALUES ('35', '62', '10713', '12', '661', '1.00', '荣耀20 李现同款 4800万超广角AI四摄 3200W美颜自拍', '/picture/45f62e91098740de920b5f87829c20a5.jpg');
INSERT INTO `order_detail` VALUES ('36', '63', '10004', '12', '1', '2.00', '无印良品 MUJI 柔和洁面泡沫', '/picture/3da0d748d70d40a4ba99f0f4b3dd8f44.jpg');
INSERT INTO `order_detail` VALUES ('37', '64', '10004', '12', '1', '2.00', '无印良品 MUJI 柔和洁面泡沫', '/picture/3da0d748d70d40a4ba99f0f4b3dd8f44.jpg');
INSERT INTO `order_detail` VALUES ('38', '64', '10713', '12', '661', '1.00', '荣耀20 李现同款 4800万超广角AI四摄 3200W美颜自拍', '/picture/45f62e91098740de920b5f87829c20a5.jpg');
INSERT INTO `order_detail` VALUES ('39', '65', '10004', '12', '1', '2.00', '无印良品 MUJI 柔和洁面泡沫', '/picture/3da0d748d70d40a4ba99f0f4b3dd8f44.jpg');
INSERT INTO `order_detail` VALUES ('40', '65', '10713', '12', '661', '1.00', '荣耀20 李现同款 4800万超广角AI四摄 3200W美颜自拍', '/picture/45f62e91098740de920b5f87829c20a5.jpg');
INSERT INTO `order_detail` VALUES ('41', '66', '10201', '1', '4', '999999999.00', '迪奥（Dior）烈艳蓝金唇膏滋润999# 3.5g 经典正红色', '/picture/1c8b67b75c2642bdaa577dd6d4a17c6f.jpg');
INSERT INTO `order_detail` VALUES ('42', '66', '10715', '1', '1', '123.00', '123', '/picture/壁纸.jpg');
INSERT INTO `order_detail` VALUES ('43', '66', '10723', '1', '1', '1.00', '龚博dashabi', '/picture/ecbfeb91950944d4a481faf2a0fc013c.jpg');
INSERT INTO `order_detail` VALUES ('44', '67', '10201', '1', '4', '999999999.00', '迪奥（Dior）烈艳蓝金唇膏滋润999# 3.5g 经典正红色', '/picture/1c8b67b75c2642bdaa577dd6d4a17c6f.jpg');
INSERT INTO `order_detail` VALUES ('45', '67', '10715', '1', '1', '123.00', '123', '/picture/壁纸.jpg');
INSERT INTO `order_detail` VALUES ('46', '67', '10723', '1', '1', '1.00', '龚博dashabi', '/picture/ecbfeb91950944d4a481faf2a0fc013c.jpg');
INSERT INTO `order_detail` VALUES ('47', '68', '10201', '1', '4', '999999999.00', '迪奥（Dior）烈艳蓝金唇膏滋润999# 3.5g 经典正红色', '/picture/1c8b67b75c2642bdaa577dd6d4a17c6f.jpg');
INSERT INTO `order_detail` VALUES ('48', '68', '10715', '1', '1', '123.00', '123', '/picture/壁纸.jpg');
INSERT INTO `order_detail` VALUES ('49', '68', '10723', '1', '1', '1.00', '龚博dashabi', '/picture/ecbfeb91950944d4a481faf2a0fc013c.jpg');
INSERT INTO `order_detail` VALUES ('50', '68', '10736', '1', '1', '0.52', '测试', '/picture/d2098fd4ef444fba90c7365d33b95dda.jpg');
INSERT INTO `order_detail` VALUES ('51', '69', '10201', '1', '4', '999999999.00', '迪奥（Dior）烈艳蓝金唇膏滋润999# 3.5g 经典正红色', '/picture/1c8b67b75c2642bdaa577dd6d4a17c6f.jpg');
INSERT INTO `order_detail` VALUES ('52', '69', '10715', '1', '1', '123.00', '123', '/picture/壁纸.jpg');
INSERT INTO `order_detail` VALUES ('53', '69', '10723', '1', '1', '1.00', '龚博dashabi', '/picture/ecbfeb91950944d4a481faf2a0fc013c.jpg');
INSERT INTO `order_detail` VALUES ('54', '69', '10736', '1', '1', '0.52', '测试', '/picture/d2098fd4ef444fba90c7365d33b95dda.jpg');
INSERT INTO `order_detail` VALUES ('55', '70', '10201', '1', '4', '999999999.00', '迪奥（Dior）烈艳蓝金唇膏滋润999# 3.5g 经典正红色', '/picture/1c8b67b75c2642bdaa577dd6d4a17c6f.jpg');
INSERT INTO `order_detail` VALUES ('56', '70', '10715', '1', '1', '123.00', '123', '/picture/壁纸.jpg');
INSERT INTO `order_detail` VALUES ('57', '70', '10723', '1', '1', '1.00', '龚博dashabi', '/picture/ecbfeb91950944d4a481faf2a0fc013c.jpg');
INSERT INTO `order_detail` VALUES ('58', '70', '10736', '1', '1', '0.52', '测试', '/picture/d2098fd4ef444fba90c7365d33b95dda.jpg');
INSERT INTO `order_detail` VALUES ('59', '71', '10201', '1', '4', '999999999.00', '迪奥（Dior）烈艳蓝金唇膏滋润999# 3.5g 经典正红色', '/picture/1c8b67b75c2642bdaa577dd6d4a17c6f.jpg');
INSERT INTO `order_detail` VALUES ('60', '71', '10715', '1', '1', '123.00', '123', '/picture/壁纸.jpg');
INSERT INTO `order_detail` VALUES ('61', '71', '10723', '1', '1', '1.00', '龚博dashabi', '/picture/ecbfeb91950944d4a481faf2a0fc013c.jpg');
INSERT INTO `order_detail` VALUES ('62', '71', '10736', '1', '1', '0.52', '测试', '/picture/d2098fd4ef444fba90c7365d33b95dda.jpg');
INSERT INTO `order_detail` VALUES ('63', '72', '10201', '1', '4', '999999999.00', '迪奥（Dior）烈艳蓝金唇膏滋润999# 3.5g 经典正红色', '/picture/1c8b67b75c2642bdaa577dd6d4a17c6f.jpg');
INSERT INTO `order_detail` VALUES ('64', '72', '10715', '1', '1', '123.00', '123', '/picture/壁纸.jpg');
INSERT INTO `order_detail` VALUES ('65', '72', '10723', '1', '1', '1.00', '龚博dashabi', '/picture/ecbfeb91950944d4a481faf2a0fc013c.jpg');
INSERT INTO `order_detail` VALUES ('66', '72', '10736', '1', '1', '0.52', '测试', '/picture/d2098fd4ef444fba90c7365d33b95dda.jpg');

-- ----------------------------
-- Table structure for qian_bao
-- ----------------------------
DROP TABLE IF EXISTS `qian_bao`;
CREATE TABLE `qian_bao` (
  `user_id` bigint(255) NOT NULL,
  `total_chong_zhi` bigint(255) NOT NULL DEFAULT '0',
  `total_xiao_fei` bigint(255) NOT NULL DEFAULT '0',
  `total_money` bigint(255) NOT NULL DEFAULT '0',
  PRIMARY KEY (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of qian_bao
-- ----------------------------
INSERT INTO `qian_bao` VALUES ('8', '1009', '0', '1009');
INSERT INTO `qian_bao` VALUES ('13', '0', '0', '0');
INSERT INTO `qian_bao` VALUES ('14', '0', '0', '0');

-- ----------------------------
-- Table structure for user
-- ----------------------------
DROP TABLE IF EXISTS `user`;
CREATE TABLE `user` (
  `user_id` bigint(255) NOT NULL AUTO_INCREMENT,
  `login_name` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `create_time` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `is_deleted` int(255) NOT NULL DEFAULT '0',
  `type` varchar(255) NOT NULL DEFAULT 'user',
  `avatar` varchar(255) DEFAULT NULL,
  `vip` int(11) DEFAULT '0',
  `status` int(11) NOT NULL DEFAULT '1',
  PRIMARY KEY (`user_id`),
  UNIQUE KEY `user_login_name_uindex` (`login_name`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of user
-- ----------------------------
INSERT INTO `user` VALUES ('1', 'tcy', 'e149c9a5a589692b9847078d1d9fb83c', '2023-02-26 15:20:56', '0', 'user', '/picture/81e0a5128e2944e99afedd0533f6fc63.jpg', '1', '0');
INSERT INTO `user` VALUES ('2', 'gongbo', 'e149c9a5a589692b9847078d1d9fb83c', '2023-02-26 16:48:35', '0', 'admin', '/picture/ecbfeb91950944d4a481faf2a0fc013c.jpg', '1', '1');
INSERT INTO `user` VALUES ('3', 'admin', '66a559ae55b073a3b01d573a3cf92e55', '2023-02-26 23:33:22', '1', 'user', null, '0', '1');
INSERT INTO `user` VALUES ('4', 'admin1', '9a282dfb6cffca7bee38f21bde7e63cb', '2023-02-26 23:34:08', '0', 'user', null, '0', '1');
INSERT INTO `user` VALUES ('5', '111', '9f259adc90391f5b76cbaec803a7ab64', '2023-02-26 23:34:31', '0', 'user', null, '0', '1');
INSERT INTO `user` VALUES ('6', '123', 'd3af4283c52b4551a45f1c75d4922c30', '2023-02-26 23:34:51', '1', 'user', null, '0', '1');
INSERT INTO `user` VALUES ('7', 'haha', 'a71ffa2b18352a2566e6e66f3a336345', '2023-02-27 10:39:04', '0', 'user', null, '0', '1');
INSERT INTO `user` VALUES ('8', 'tcy1', 'e149c9a5a589692b9847078d1d9fb83c', '2023-02-27 15:00:07', '0', 'admin', '/picture/d1086d5bf0ee422f8eb7224cafbe277e.png', '0', '1');
INSERT INTO `user` VALUES ('10', 'gb123', 'e149c9a5a589692b9847078d1d9fb83c', '2023-02-27 16:26:14', '0', 'user', null, '0', '1');
INSERT INTO `user` VALUES ('11', 'gb2', 'e149c9a5a589692b9847078d1d9fb83c', '2023-02-27 16:29:02', '0', 'user', null, '0', '1');
INSERT INTO `user` VALUES ('12', 'tcy2', 'e149c9a5a589692b9847078d1d9fb83c', '2023-02-27 19:11:14', '0', 'user', null, '0', '1');
INSERT INTO `user` VALUES ('13', 'tcy5', 'e149c9a5a589692b9847078d1d9fb83c', '2023-03-01 21:24:00', '0', 'user', null, '0', '1');
INSERT INTO `user` VALUES ('14', 'tcy6', 'e149c9a5a589692b9847078d1d9fb83c', '2023-03-01 21:30:38', '0', 'user', '/picture/baabfb02ff1d48a2989312ebb27b6667.jpg', '0', '1');

-- ----------------------------
-- Table structure for user_collection
-- ----------------------------
DROP TABLE IF EXISTS `user_collection`;
CREATE TABLE `user_collection` (
  `collection_id` bigint(255) NOT NULL AUTO_INCREMENT,
  `user_id` bigint(255) DEFAULT NULL,
  `goods_id` bigint(255) DEFAULT NULL,
  `status` int(1) NOT NULL DEFAULT '1',
  PRIMARY KEY (`collection_id`)
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of user_collection
-- ----------------------------
INSERT INTO `user_collection` VALUES ('13', '1', '10201', '0');
INSERT INTO `user_collection` VALUES ('14', '1', '10713', '1');
INSERT INTO `user_collection` VALUES ('15', '1', '10004', '0');
INSERT INTO `user_collection` VALUES ('16', '12', '10713', '1');
INSERT INTO `user_collection` VALUES ('17', '12', '10004', '0');

-- ----------------------------
-- Table structure for zuji
-- ----------------------------
DROP TABLE IF EXISTS `zuji`;
CREATE TABLE `zuji` (
  `zuji_id` bigint(255) NOT NULL AUTO_INCREMENT,
  `user_id` bigint(255) NOT NULL,
  `goods_id` bigint(255) NOT NULL,
  PRIMARY KEY (`zuji_id`)
) ENGINE=InnoDB AUTO_INCREMENT=181 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of zuji
-- ----------------------------
INSERT INTO `zuji` VALUES ('95', '12', '10004');
INSERT INTO `zuji` VALUES ('96', '12', '10004');
INSERT INTO `zuji` VALUES ('97', '12', '10004');
INSERT INTO `zuji` VALUES ('98', '12', '10201');
INSERT INTO `zuji` VALUES ('99', '12', '10201');
INSERT INTO `zuji` VALUES ('100', '12', '10201');
INSERT INTO `zuji` VALUES ('101', '12', '10201');
INSERT INTO `zuji` VALUES ('102', '12', '10201');
INSERT INTO `zuji` VALUES ('103', '12', '10201');
INSERT INTO `zuji` VALUES ('104', '12', '10201');
INSERT INTO `zuji` VALUES ('105', '12', '10004');
INSERT INTO `zuji` VALUES ('106', '12', '10201');
INSERT INTO `zuji` VALUES ('107', '12', '10713');
INSERT INTO `zuji` VALUES ('108', '12', '10004');
INSERT INTO `zuji` VALUES ('109', '1', '10201');
INSERT INTO `zuji` VALUES ('110', '12', '10004');
INSERT INTO `zuji` VALUES ('111', '12', '10004');
INSERT INTO `zuji` VALUES ('112', '12', '10004');
INSERT INTO `zuji` VALUES ('113', '12', '10713');
INSERT INTO `zuji` VALUES ('114', '12', '10713');
INSERT INTO `zuji` VALUES ('115', '8', '10739');
INSERT INTO `zuji` VALUES ('116', '8', '10003');
INSERT INTO `zuji` VALUES ('117', '8', '10003');
INSERT INTO `zuji` VALUES ('118', '8', '10003');
INSERT INTO `zuji` VALUES ('119', '8', '10003');
INSERT INTO `zuji` VALUES ('120', '8', '10004');
INSERT INTO `zuji` VALUES ('121', '8', '10716');
INSERT INTO `zuji` VALUES ('122', '8', '10760');
INSERT INTO `zuji` VALUES ('123', '1', '10004');
INSERT INTO `zuji` VALUES ('124', '1', '10715');
INSERT INTO `zuji` VALUES ('125', '1', '10723');
INSERT INTO `zuji` VALUES ('126', '1', '10811');
INSERT INTO `zuji` VALUES ('127', '1', '10736');
INSERT INTO `zuji` VALUES ('128', '1', '10003');
INSERT INTO `zuji` VALUES ('129', '1', '10003');
INSERT INTO `zuji` VALUES ('130', '1', '10003');
INSERT INTO `zuji` VALUES ('131', '1', '10003');
INSERT INTO `zuji` VALUES ('132', '1', '10003');
INSERT INTO `zuji` VALUES ('133', '8', '10003');
INSERT INTO `zuji` VALUES ('134', '8', '10003');
INSERT INTO `zuji` VALUES ('135', '8', '10003');
INSERT INTO `zuji` VALUES ('136', '8', '10003');
INSERT INTO `zuji` VALUES ('137', '8', '10003');
INSERT INTO `zuji` VALUES ('138', '8', '10003');
INSERT INTO `zuji` VALUES ('139', '8', '10003');
INSERT INTO `zuji` VALUES ('140', '8', '10003');
INSERT INTO `zuji` VALUES ('141', '8', '10003');
INSERT INTO `zuji` VALUES ('142', '8', '10003');
INSERT INTO `zuji` VALUES ('143', '8', '10003');
INSERT INTO `zuji` VALUES ('144', '8', '10003');
INSERT INTO `zuji` VALUES ('145', '8', '10003');
INSERT INTO `zuji` VALUES ('146', '8', '10003');
INSERT INTO `zuji` VALUES ('147', '8', '10003');
INSERT INTO `zuji` VALUES ('148', '8', '10003');
INSERT INTO `zuji` VALUES ('149', '8', '10003');
INSERT INTO `zuji` VALUES ('150', '8', '10003');
INSERT INTO `zuji` VALUES ('151', '1', '10752');
INSERT INTO `zuji` VALUES ('152', '1', '10752');
INSERT INTO `zuji` VALUES ('153', '8', '10003');
INSERT INTO `zuji` VALUES ('154', '8', '10003');
INSERT INTO `zuji` VALUES ('155', '8', '10003');
INSERT INTO `zuji` VALUES ('156', '8', '10003');
INSERT INTO `zuji` VALUES ('157', '8', '10003');
INSERT INTO `zuji` VALUES ('158', '8', '10003');
INSERT INTO `zuji` VALUES ('159', '8', '10003');
INSERT INTO `zuji` VALUES ('160', '8', '10003');
INSERT INTO `zuji` VALUES ('161', '8', '10003');
INSERT INTO `zuji` VALUES ('162', '8', '10003');
INSERT INTO `zuji` VALUES ('163', '8', '10003');
INSERT INTO `zuji` VALUES ('164', '8', '10003');
INSERT INTO `zuji` VALUES ('165', '8', '10003');
INSERT INTO `zuji` VALUES ('166', '8', '10003');
INSERT INTO `zuji` VALUES ('167', '8', '10003');
INSERT INTO `zuji` VALUES ('168', '8', '10003');
INSERT INTO `zuji` VALUES ('169', '8', '10003');
INSERT INTO `zuji` VALUES ('170', '8', '10003');
INSERT INTO `zuji` VALUES ('171', '8', '10003');
INSERT INTO `zuji` VALUES ('172', '8', '10003');
INSERT INTO `zuji` VALUES ('173', '1', '10003');
INSERT INTO `zuji` VALUES ('174', '1', '10003');
INSERT INTO `zuji` VALUES ('175', '1', '10003');
INSERT INTO `zuji` VALUES ('176', '8', '10003');
INSERT INTO `zuji` VALUES ('177', '8', '10003');
INSERT INTO `zuji` VALUES ('178', '8', '10003');
INSERT INTO `zuji` VALUES ('179', '14', '10713');
INSERT INTO `zuji` VALUES ('180', '14', '10003');
