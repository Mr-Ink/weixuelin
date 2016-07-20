/*
Navicat MySQL Data Transfer

Source Server         : localhost_3306
Source Server Version : 50616
Source Host           : localhost:3306
Source Database       : cultivation

Target Server Type    : MYSQL
Target Server Version : 50616
File Encoding         : 65001

Date: 2016-06-19 22:42:35
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for comment
-- ----------------------------
DROP TABLE IF EXISTS `comment`;
CREATE TABLE `comment` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(255) NOT NULL,
  `path` varchar(255) DEFAULT NULL,
  `date` date NOT NULL,
  `content` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=42 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of comment
-- ----------------------------
INSERT INTO `comment` VALUES ('17', '齐全', 'img/user.png', '2016-06-14', 'refasdfasdf');
INSERT INTO `comment` VALUES ('18', '齐全', 'img/user.png', '2016-06-14', 'dsfwerwqerqwre');
INSERT INTO `comment` VALUES ('19', '齐全', 'img/user.png', '2016-06-14', 'htrftry');
INSERT INTO `comment` VALUES ('20', '齐全', 'img/user.png', '2016-06-14', 'nsodfisadjflasjflasjdflasjdflalsdjflasldjflasjfl');
INSERT INTO `comment` VALUES ('21', '齐全', 'img/user.png', '2016-06-14', 'sdfasdfsdfsaf');
INSERT INTO `comment` VALUES ('22', '杨总', 'img/user.png', '2016-06-15', 'guyrftydrt');
INSERT INTO `comment` VALUES ('23', '杨总', 'img/user.png', '2016-06-15', 'retyreytryry');
INSERT INTO `comment` VALUES ('24', '杨总', 'img/user.png', '2016-06-15', '惟学林，天涯咫尺');
INSERT INTO `comment` VALUES ('25', '杨总', 'img/user.png', '2016-06-15', '韩瑞峰很突然');
INSERT INTO `comment` VALUES ('26', '杨总', 'img/user.png', '2016-06-15', '有4有女人凤凰台');
INSERT INTO `comment` VALUES ('27', '熊总', 'img/user.png', '2016-06-16', '852306512');
INSERT INTO `comment` VALUES ('28', '杨总', 'img/user.png', '2016-06-16', '惟学林真棒\n');
INSERT INTO `comment` VALUES ('31', '杨总', 'img/user.png', '2016-06-16', '你真好。');
INSERT INTO `comment` VALUES ('32', '杨总', 'img/user.png', '2016-06-16', '曾庆仲，你真棒！！！！！！！！！！');
INSERT INTO `comment` VALUES ('33', '张总', 'img/logo.png', '2016-06-16', '我真棒。');
INSERT INTO `comment` VALUES ('34', '张总', 'img/logo.png', '2016-06-16', '不错。');
INSERT INTO `comment` VALUES ('35', '张总', 'img/logo.png', '2016-06-16', '张总你好帅');
INSERT INTO `comment` VALUES ('36', '杨总', 'img/user.png', '2016-06-17', 'ojdgojgdfjfoersfjro[er');
INSERT INTO `comment` VALUES ('37', '一二三四五六七', 'img/logo.png', '2016-06-17', '说两句话。');
INSERT INTO `comment` VALUES ('40', '杨总', 'img/user.png', '2016-06-17', '，破击哦');
INSERT INTO `comment` VALUES ('41', '杨总', 'img/user.png', '2016-06-17', '惟学林真好');

-- ----------------------------
-- Table structure for major
-- ----------------------------
DROP TABLE IF EXISTS `major`;
CREATE TABLE `major` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `major_id` varchar(255) NOT NULL,
  `major_name` varchar(255) NOT NULL,
  `subject_id` varchar(255) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `major_id` (`major_id`) USING BTREE,
  UNIQUE KEY `major_name` (`major_name`) USING BTREE,
  KEY `subject_id` (`subject_id`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of major
-- ----------------------------
INSERT INTO `major` VALUES ('1', '201', '经济学', '2');
INSERT INTO `major` VALUES ('2', '202', '财政学', '2');
INSERT INTO `major` VALUES ('3', '203', '金融学', '2');
INSERT INTO `major` VALUES ('4', '807', '电子信息', '8');
INSERT INTO `major` VALUES ('5', '808', '自动化', '8');
INSERT INTO `major` VALUES ('6', '809', '计算机', '8');
INSERT INTO `major` VALUES ('7', '1003', '口腔医学', '10');
INSERT INTO `major` VALUES ('8', '1005', '中医学', '10');
INSERT INTO `major` VALUES ('9', '1007', '药学', '10');
INSERT INTO `major` VALUES ('10', '7001', '应用数学', '7');
INSERT INTO `major` VALUES ('11', '7002', '地质学', '7');
INSERT INTO `major` VALUES ('12', '7003', '生物学', '7');
INSERT INTO `major` VALUES ('13', '5001', '新闻学', '5');
INSERT INTO `major` VALUES ('14', '5002', '传播学', '5');
INSERT INTO `major` VALUES ('15', '5003', '设计艺术', '5');

-- ----------------------------
-- Table structure for mannage
-- ----------------------------
DROP TABLE IF EXISTS `mannage`;
CREATE TABLE `mannage` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `mannage_id` varchar(255) NOT NULL,
  `mannage_password` varchar(255) NOT NULL,
  `mannage_name` varchar(255) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `mannage_id` (`mannage_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of mannage
-- ----------------------------

-- ----------------------------
-- Table structure for mannage_major
-- ----------------------------
DROP TABLE IF EXISTS `mannage_major`;
CREATE TABLE `mannage_major` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `mannage_id` varchar(255) NOT NULL,
  `major_id` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of mannage_major
-- ----------------------------

-- ----------------------------
-- Table structure for mannage_profession
-- ----------------------------
DROP TABLE IF EXISTS `mannage_profession`;
CREATE TABLE `mannage_profession` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `mannage_id` varchar(255) NOT NULL,
  `profession_id` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of mannage_profession
-- ----------------------------

-- ----------------------------
-- Table structure for mannage_resource
-- ----------------------------
DROP TABLE IF EXISTS `mannage_resource`;
CREATE TABLE `mannage_resource` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `mannage_id` varchar(255) NOT NULL,
  `resource_id` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of mannage_resource
-- ----------------------------

-- ----------------------------
-- Table structure for mannage_subject
-- ----------------------------
DROP TABLE IF EXISTS `mannage_subject`;
CREATE TABLE `mannage_subject` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `mannage_id` varchar(255) NOT NULL,
  `subject_id` varchar(255) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `mannage_id` (`mannage_id`,`subject_id`),
  KEY `mannage_id_2` (`mannage_id`),
  KEY `subject_id` (`subject_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of mannage_subject
-- ----------------------------

-- ----------------------------
-- Table structure for profession
-- ----------------------------
DROP TABLE IF EXISTS `profession`;
CREATE TABLE `profession` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `profession_id` varchar(255) NOT NULL,
  `profession_name` varchar(255) NOT NULL,
  `major_id` varchar(255) NOT NULL,
  `profession_head_path` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `profession_name` (`profession_name`),
  UNIQUE KEY `profession_id` (`profession_id`) USING BTREE,
  KEY `major_id` (`major_id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of profession
-- ----------------------------
INSERT INTO `profession` VALUES ('1', '2010', '金融科研', '201', './img/电子工程师000.png');
INSERT INTO `profession` VALUES ('2', '2011', '金融分析师', '201', './img/系统架构师.png');
INSERT INTO `profession` VALUES ('3', '8070', '电子工程师', '807', './img/电子工程师.jpg');
INSERT INTO `profession` VALUES ('4', '8071', 'PLC设计师', '807', '/head/8071.jpg');
INSERT INTO `profession` VALUES ('5', '8080', '电气工程师', '808', '/head/8072.jpg');
INSERT INTO `profession` VALUES ('6', '8081', '嵌入式工程师', '808', '/head/8081.jpg');
INSERT INTO `profession` VALUES ('7', '8090', '前端工程师', '809', '/head/8090.jpg');
INSERT INTO `profession` VALUES ('8', '8091', '系统架构师', '809', '/head/8091.jpg');

-- ----------------------------
-- Table structure for resource
-- ----------------------------
DROP TABLE IF EXISTS `resource`;
CREATE TABLE `resource` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `resource_id` varchar(255) NOT NULL,
  `resource_type` varchar(255) NOT NULL,
  `resource_name` varchar(255) NOT NULL,
  `resource_stage` int(255) NOT NULL,
  `resource_path` varchar(255) NOT NULL,
  `profession_id` varchar(255) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `resource_name` (`resource_name`),
  UNIQUE KEY `resource_id` (`resource_id`),
  UNIQUE KEY `resource_path` (`resource_path`),
  KEY `profession_id` (`profession_id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of resource
-- ----------------------------
INSERT INTO `resource` VALUES ('1', '20001', 'text', 'finicial_01', '1', './resource/2010_page_01.html', '2010');
INSERT INTO `resource` VALUES ('2', '20002', 'text', 'finicial_02', '2', './resource/2010_page_02.html', '2010');
INSERT INTO `resource` VALUES ('3', '20003', 'video', 'finicial_03', '3', './resource/2010_page_03.html', '2010');
INSERT INTO `resource` VALUES ('4', '20004', 'text', 'money_01', '1', './resource/2011_page_01.html', '2011');
INSERT INTO `resource` VALUES ('5', '20005', 'video', 'money_02', '2', './resource/2011_page_02.html', '2011');
INSERT INTO `resource` VALUES ('9', '20006', 'video', 'money_07', '3', './resource/2011_page_03.html', '2011');
INSERT INTO `resource` VALUES ('10', '20007', 'text', 'e_07', '1', './resource/8070_page_01.html', '8070');
INSERT INTO `resource` VALUES ('11', '20008', 'text', 'e_08', '2', './resource/8070_page_02.html', '8070');
INSERT INTO `resource` VALUES ('12', '20009', 'video', 'e_09', '3', './resource/8070_page_03.html', '8070');

-- ----------------------------
-- Table structure for resource_learning
-- ----------------------------
DROP TABLE IF EXISTS `resource_learning`;
CREATE TABLE `resource_learning` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `resource_path` varchar(255) NOT NULL,
  `div_no` varchar(255) NOT NULL,
  `learning_path` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of resource_learning
-- ----------------------------
INSERT INTO `resource_learning` VALUES ('1', './resource/8070_page_01.html', '1_1', './807001.mp4');

-- ----------------------------
-- Table structure for subject
-- ----------------------------
DROP TABLE IF EXISTS `subject`;
CREATE TABLE `subject` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `subject_id` varchar(255) NOT NULL,
  `subject_name` varchar(255) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `subject_name` (`subject_name`),
  UNIQUE KEY `subject_id` (`subject_id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of subject
-- ----------------------------
INSERT INTO `subject` VALUES ('1', '2', '商学');
INSERT INTO `subject` VALUES ('2', '8', '工学');
INSERT INTO `subject` VALUES ('3', '10', '医学');
INSERT INTO `subject` VALUES ('4', '7', '理学');
INSERT INTO `subject` VALUES ('5', '5', '传媒学');

-- ----------------------------
-- Table structure for user
-- ----------------------------
DROP TABLE IF EXISTS `user`;
CREATE TABLE `user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `user_name` varchar(255) NOT NULL,
  `province` varchar(255) DEFAULT NULL,
  `school` varchar(255) DEFAULT NULL,
  `photo` varchar(255) DEFAULT NULL,
  `sex` char(2) DEFAULT NULL,
  `self_introduce` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `account` (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=37 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of user
-- ----------------------------
INSERT INTO `user` VALUES ('30', '2013211465', '1231163544', '杨总', '重庆市', '重庆邮电大学', 'img/user.png', '男', null);
INSERT INTO `user` VALUES ('31', '2014211041', '823416203', '熊总', '四川省', '重庆邮电大学', 'img/user.png', '男', null);
INSERT INTO `user` VALUES ('32', '123456', '123456', '因为', '北京市', '重庆邮电大学', 'img/logo.png', '男', null);
INSERT INTO `user` VALUES ('34', '2014212550', '07315112', '张总', '黑龙江省', '重庆邮电大学', 'img/logo.png', '男', '我叫张冠群。');
INSERT INTO `user` VALUES ('36', '567890', '123456789', '可以', '北京市', '重庆邮电大学', 'img/logo.png', '男', null);

-- ----------------------------
-- Table structure for user_profession
-- ----------------------------
DROP TABLE IF EXISTS `user_profession`;
CREATE TABLE `user_profession` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` varchar(255) NOT NULL,
  `profession_id` varchar(255) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `User_id` (`user_id`,`profession_id`),
  KEY `user_id_2` (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of user_profession
-- ----------------------------
INSERT INTO `user_profession` VALUES ('4', '111111', '2010');
INSERT INTO `user_profession` VALUES ('6', '111111', '2011');
INSERT INTO `user_profession` VALUES ('5', '12398635', '2011');
INSERT INTO `user_profession` VALUES ('7', '2013211465', '8070');
INSERT INTO `user_profession` VALUES ('3', '231231231', '8070');
INSERT INTO `user_profession` VALUES ('1', '823416203', '8070');
INSERT INTO `user_profession` VALUES ('2', '987654321', '8070');
