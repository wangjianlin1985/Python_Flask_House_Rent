/*
Navicat MySQL Data Transfer

Source Server         : mysql5.6
Source Server Version : 50620
Source Host           : localhost:3306
Source Database       : ihome_python04

Target Server Type    : MYSQL
Target Server Version : 50620
File Encoding         : 65001

Date: 2020-06-22 01:27:49
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for `alembic_version`
-- ----------------------------
DROP TABLE IF EXISTS `alembic_version`;
CREATE TABLE `alembic_version` (
  `version_num` varchar(32) NOT NULL,
  PRIMARY KEY (`version_num`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of alembic_version
-- ----------------------------
INSERT INTO `alembic_version` VALUES ('703ef239b3db');

-- ----------------------------
-- Table structure for `ih_area_info`
-- ----------------------------
DROP TABLE IF EXISTS `ih_area_info`;
CREATE TABLE `ih_area_info` (
  `create_time` datetime DEFAULT NULL,
  `update_time` datetime DEFAULT NULL,
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(32) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ih_area_info
-- ----------------------------
INSERT INTO `ih_area_info` VALUES (null, null, '1', '东城区');
INSERT INTO `ih_area_info` VALUES (null, null, '2', '西城区');
INSERT INTO `ih_area_info` VALUES (null, null, '3', '朝阳区');
INSERT INTO `ih_area_info` VALUES (null, null, '4', '海淀区');
INSERT INTO `ih_area_info` VALUES (null, null, '5', '昌平区');
INSERT INTO `ih_area_info` VALUES (null, null, '6', '丰台区');
INSERT INTO `ih_area_info` VALUES (null, null, '7', '房山区');
INSERT INTO `ih_area_info` VALUES (null, null, '8', '通州区');
INSERT INTO `ih_area_info` VALUES (null, null, '9', '顺义区');
INSERT INTO `ih_area_info` VALUES (null, null, '10', '大兴区');
INSERT INTO `ih_area_info` VALUES (null, null, '11', '怀柔区');
INSERT INTO `ih_area_info` VALUES (null, null, '12', '平谷区');
INSERT INTO `ih_area_info` VALUES (null, null, '13', '密云区');
INSERT INTO `ih_area_info` VALUES (null, null, '14', '延庆区');
INSERT INTO `ih_area_info` VALUES (null, null, '15', '石景山区');

-- ----------------------------
-- Table structure for `ih_facility_info`
-- ----------------------------
DROP TABLE IF EXISTS `ih_facility_info`;
CREATE TABLE `ih_facility_info` (
  `create_time` datetime DEFAULT NULL,
  `update_time` datetime DEFAULT NULL,
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(32) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=24 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ih_facility_info
-- ----------------------------
INSERT INTO `ih_facility_info` VALUES (null, null, '1', '无线网络');
INSERT INTO `ih_facility_info` VALUES (null, null, '2', '热水淋浴');
INSERT INTO `ih_facility_info` VALUES (null, null, '3', '空调');
INSERT INTO `ih_facility_info` VALUES (null, null, '4', '暖气');
INSERT INTO `ih_facility_info` VALUES (null, null, '5', '允许吸烟');
INSERT INTO `ih_facility_info` VALUES (null, null, '6', '饮水设备');
INSERT INTO `ih_facility_info` VALUES (null, null, '7', '牙具');
INSERT INTO `ih_facility_info` VALUES (null, null, '8', '香皂');
INSERT INTO `ih_facility_info` VALUES (null, null, '9', '拖鞋');
INSERT INTO `ih_facility_info` VALUES (null, null, '10', '手纸');
INSERT INTO `ih_facility_info` VALUES (null, null, '11', '毛巾');
INSERT INTO `ih_facility_info` VALUES (null, null, '12', '沐浴露、洗发露');
INSERT INTO `ih_facility_info` VALUES (null, null, '13', '冰箱');
INSERT INTO `ih_facility_info` VALUES (null, null, '14', '洗衣机');
INSERT INTO `ih_facility_info` VALUES (null, null, '15', '电梯');
INSERT INTO `ih_facility_info` VALUES (null, null, '16', '允许做饭');
INSERT INTO `ih_facility_info` VALUES (null, null, '17', '允许带宠物');
INSERT INTO `ih_facility_info` VALUES (null, null, '18', '允许聚会');
INSERT INTO `ih_facility_info` VALUES (null, null, '19', '门禁系统');
INSERT INTO `ih_facility_info` VALUES (null, null, '20', '停车位');
INSERT INTO `ih_facility_info` VALUES (null, null, '21', '有线网络');
INSERT INTO `ih_facility_info` VALUES (null, null, '22', '电视');
INSERT INTO `ih_facility_info` VALUES (null, null, '23', '浴缸');

-- ----------------------------
-- Table structure for `ih_house_facility`
-- ----------------------------
DROP TABLE IF EXISTS `ih_house_facility`;
CREATE TABLE `ih_house_facility` (
  `house_id` int(11) NOT NULL,
  `facility_id` int(11) NOT NULL,
  PRIMARY KEY (`house_id`,`facility_id`),
  KEY `facility_id` (`facility_id`),
  CONSTRAINT `ih_house_facility_ibfk_1` FOREIGN KEY (`facility_id`) REFERENCES `ih_facility_info` (`id`),
  CONSTRAINT `ih_house_facility_ibfk_2` FOREIGN KEY (`house_id`) REFERENCES `ih_house_info` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ih_house_facility
-- ----------------------------
INSERT INTO `ih_house_facility` VALUES ('1', '1');
INSERT INTO `ih_house_facility` VALUES ('2', '1');
INSERT INTO `ih_house_facility` VALUES ('3', '1');
INSERT INTO `ih_house_facility` VALUES ('1', '2');
INSERT INTO `ih_house_facility` VALUES ('2', '2');
INSERT INTO `ih_house_facility` VALUES ('3', '2');
INSERT INTO `ih_house_facility` VALUES ('1', '3');
INSERT INTO `ih_house_facility` VALUES ('2', '3');
INSERT INTO `ih_house_facility` VALUES ('2', '4');
INSERT INTO `ih_house_facility` VALUES ('3', '4');
INSERT INTO `ih_house_facility` VALUES ('3', '5');
INSERT INTO `ih_house_facility` VALUES ('1', '6');
INSERT INTO `ih_house_facility` VALUES ('2', '7');
INSERT INTO `ih_house_facility` VALUES ('2', '8');
INSERT INTO `ih_house_facility` VALUES ('2', '9');
INSERT INTO `ih_house_facility` VALUES ('2', '10');
INSERT INTO `ih_house_facility` VALUES ('3', '10');
INSERT INTO `ih_house_facility` VALUES ('3', '11');
INSERT INTO `ih_house_facility` VALUES ('3', '12');
INSERT INTO `ih_house_facility` VALUES ('2', '13');
INSERT INTO `ih_house_facility` VALUES ('2', '16');
INSERT INTO `ih_house_facility` VALUES ('3', '19');
INSERT INTO `ih_house_facility` VALUES ('2', '21');
INSERT INTO `ih_house_facility` VALUES ('1', '22');
INSERT INTO `ih_house_facility` VALUES ('2', '22');
INSERT INTO `ih_house_facility` VALUES ('2', '23');

-- ----------------------------
-- Table structure for `ih_house_image`
-- ----------------------------
DROP TABLE IF EXISTS `ih_house_image`;
CREATE TABLE `ih_house_image` (
  `create_time` datetime DEFAULT NULL,
  `update_time` datetime DEFAULT NULL,
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `house_id` int(11) NOT NULL,
  `url` varchar(256) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `house_id` (`house_id`),
  CONSTRAINT `ih_house_image_ibfk_1` FOREIGN KEY (`house_id`) REFERENCES `ih_house_info` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ih_house_image
-- ----------------------------
INSERT INTO `ih_house_image` VALUES ('2020-06-21 17:15:01', '2020-06-21 17:15:01', '1', '1', 'FsNpzX8KmBFOsYIk2hj6pib3tnt-');
INSERT INTO `ih_house_image` VALUES ('2020-06-21 17:15:09', '2020-06-21 17:15:09', '2', '1', 'FgA2-S0RbIuwhaV57rkWbvIx2g5g');
INSERT INTO `ih_house_image` VALUES ('2020-06-21 17:15:17', '2020-06-21 17:15:17', '3', '1', 'FvNWEh4jsmInoU-IEU88dap1z-rA');
INSERT INTO `ih_house_image` VALUES ('2020-06-21 17:15:23', '2020-06-21 17:15:23', '4', '1', 'FumQY-kXRIOg5C-3mkbr5991QpOw');
INSERT INTO `ih_house_image` VALUES ('2020-06-21 22:58:40', '2020-06-21 22:58:40', '5', '2', 'Fq3_ob4RlTFHhAUFz7-As2tgcO5Q');
INSERT INTO `ih_house_image` VALUES ('2020-06-21 22:58:50', '2020-06-21 22:58:50', '6', '2', 'FvwjUFY5GlNQIiWKBgu0IqAPaKjx');
INSERT INTO `ih_house_image` VALUES ('2020-06-21 23:00:00', '2020-06-21 23:00:00', '7', '2', 'FvacZ7WoxQvBjm47bw9MhIzgpj5J');
INSERT INTO `ih_house_image` VALUES ('2020-06-22 01:06:36', '2020-06-22 01:06:36', '8', '3', 'FoVTg2fdXDmq8quLtWtbpwWwMyJa');
INSERT INTO `ih_house_image` VALUES ('2020-06-22 01:07:22', '2020-06-22 01:07:22', '9', '3', 'FggpEHSxU0RcNIGeeikPKiWyOUaD');
INSERT INTO `ih_house_image` VALUES ('2020-06-22 01:07:30', '2020-06-22 01:07:30', '10', '3', 'FpdtHeMHcT0ytAmpge75_jxJuxse');

-- ----------------------------
-- Table structure for `ih_house_info`
-- ----------------------------
DROP TABLE IF EXISTS `ih_house_info`;
CREATE TABLE `ih_house_info` (
  `create_time` datetime DEFAULT NULL,
  `update_time` datetime DEFAULT NULL,
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `area_id` int(11) NOT NULL,
  `title` varchar(64) NOT NULL,
  `price` int(11) DEFAULT NULL,
  `address` varchar(512) DEFAULT NULL,
  `room_count` int(11) DEFAULT NULL,
  `acreage` int(11) DEFAULT NULL,
  `unit` varchar(32) DEFAULT NULL,
  `capacity` int(11) DEFAULT NULL,
  `beds` varchar(64) DEFAULT NULL,
  `deposit` int(11) DEFAULT NULL,
  `min_days` int(11) DEFAULT NULL,
  `max_days` int(11) DEFAULT NULL,
  `order_count` int(11) DEFAULT NULL,
  `index_image_url` varchar(256) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `area_id` (`area_id`),
  KEY `user_id` (`user_id`),
  CONSTRAINT `ih_house_info_ibfk_1` FOREIGN KEY (`area_id`) REFERENCES `ih_area_info` (`id`),
  CONSTRAINT `ih_house_info_ibfk_2` FOREIGN KEY (`user_id`) REFERENCES `ih_user_profile` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ih_house_info
-- ----------------------------
INSERT INTO `ih_house_info` VALUES ('2020-06-21 17:13:02', '2020-06-21 23:10:10', '1', '1', '4', '西四环 乐府江南', '32000', '海淀西四环外田村路和永定路西南角', '2', '128', '三室两厅', '5', '双人床', '0', '1', '0', '2', 'FsNpzX8KmBFOsYIk2hj6pib3tnt-');
INSERT INTO `ih_house_info` VALUES ('2020-06-21 22:58:29', '2020-06-21 23:19:53', '2', '1', '7', '豪华感观景两居', '35800', '北京市房山区加州水郡西区142栋', '3', '150', '4室2厅', '6', '双人大床', '0', '1', '0', '1', 'Fq3_ob4RlTFHhAUFz7-As2tgcO5Q');
INSERT INTO `ih_house_info` VALUES ('2020-06-22 01:06:20', '2020-06-22 01:06:36', '3', '1', '5', '精品安静小区', '22000', '滨江中路10号', '3', '120', '三室一厅', '4', '双人大床', '0', '1', '0', '0', 'FoVTg2fdXDmq8quLtWtbpwWwMyJa');

-- ----------------------------
-- Table structure for `ih_order_info`
-- ----------------------------
DROP TABLE IF EXISTS `ih_order_info`;
CREATE TABLE `ih_order_info` (
  `create_time` datetime DEFAULT NULL,
  `update_time` datetime DEFAULT NULL,
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `house_id` int(11) NOT NULL,
  `begin_date` datetime NOT NULL,
  `end_date` datetime NOT NULL,
  `days` int(11) NOT NULL,
  `house_price` int(11) NOT NULL,
  `amount` int(11) NOT NULL,
  `status` enum('WAIT_ACCEPT','WAIT_PAYMENT','PAID','WAIT_COMMENT','COMPLETE','CANCELED','REJECTED') DEFAULT NULL,
  `comment` text,
  `trade_no` varchar(80) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `house_id` (`house_id`),
  KEY `user_id` (`user_id`),
  KEY `ix_ih_order_info_status` (`status`),
  CONSTRAINT `ih_order_info_ibfk_1` FOREIGN KEY (`house_id`) REFERENCES `ih_house_info` (`id`),
  CONSTRAINT `ih_order_info_ibfk_2` FOREIGN KEY (`user_id`) REFERENCES `ih_user_profile` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ih_order_info
-- ----------------------------
INSERT INTO `ih_order_info` VALUES ('2020-06-21 17:25:33', '2020-06-21 23:10:10', '2', '2', '1', '2020-06-21 00:00:00', '2020-06-23 00:00:00', '3', '32000', '96000', 'COMPLETE', '非常不错的', '2020062122001406640501039542');
INSERT INTO `ih_order_info` VALUES ('2020-06-21 19:59:23', '2020-06-21 19:59:23', '3', '2', '1', '2020-06-24 00:00:00', '2020-06-25 00:00:00', '2', '32000', '64000', 'WAIT_ACCEPT', null, null);
INSERT INTO `ih_order_info` VALUES ('2020-06-21 23:09:29', '2020-06-21 23:19:53', '4', '2', '2', '2020-06-22 00:00:00', '2020-06-23 00:00:00', '2', '35800', '71600', 'COMPLETE', '这个房子很干净！', '2020062122001406640501039691');
INSERT INTO `ih_order_info` VALUES ('2020-06-22 01:09:17', '2020-06-22 01:10:27', '5', '3', '3', '2020-06-21 00:00:00', '2020-06-23 00:00:00', '3', '22000', '66000', 'WAIT_PAYMENT', null, null);

-- ----------------------------
-- Table structure for `ih_user_profile`
-- ----------------------------
DROP TABLE IF EXISTS `ih_user_profile`;
CREATE TABLE `ih_user_profile` (
  `create_time` datetime DEFAULT NULL,
  `update_time` datetime DEFAULT NULL,
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(32) NOT NULL,
  `password_hash` varchar(128) NOT NULL,
  `mobile` varchar(11) NOT NULL,
  `real_name` varchar(32) DEFAULT NULL,
  `id_card` varchar(20) DEFAULT NULL,
  `avatar_url` varchar(128) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `mobile` (`mobile`),
  UNIQUE KEY `name` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ih_user_profile
-- ----------------------------
INSERT INTO `ih_user_profile` VALUES ('2020-06-21 16:29:21', '2020-06-21 17:08:36', '1', '汪大神', 'pbkdf2:sha256:150000$OjnBOk5N$23d02ea589c475545a216f68ec9d78d57b4407f96533a9d5a5b3668b2abe51a5', '13688886666', '汪高迁', '513030198311232422', 'FnrPAXMt8h38JDWPtVdUM_ADdTgZ');
INSERT INTO `ih_user_profile` VALUES ('2020-06-21 17:25:13', '2020-06-21 17:26:01', '2', '张晓彤', 'pbkdf2:sha256:150000$5Htw8d56$9f0376d4396502d89e713a9087ce127772df6c8734a5ef9800e7936309190134', '13512345678', null, null, 'FpBqM1HGRD1mPaXsdwRJK1_1hksB');
INSERT INTO `ih_user_profile` VALUES ('2020-06-22 00:55:58', '2020-06-22 00:58:46', '3', 'test111', 'pbkdf2:sha256:150000$ZY96gJMi$8c24151fded70d26df12677577e1a9587ac28ccf44a8ea24351fb4f7cc1cb372', '13312345678', null, null, 'FhHg4tKrKdvyWPUiKeKLyhKSbGLC');
