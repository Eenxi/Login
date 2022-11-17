/*
Navicat MySQL Data Transfer

Source Server         : MySQL
Source Server Version : 50739
Source Host           : localhost:3306
Source Database       : text

Target Server Type    : MYSQL
Target Server Version : 50739
File Encoding         : 65001

Date: 2022-11-17 16:19:12
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for user
-- ----------------------------
DROP TABLE IF EXISTS `user`;
CREATE TABLE `user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `email` varchar(45) NOT NULL,
  `username` varchar(45) NOT NULL,
  `password` varchar(45) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of user
-- ----------------------------
INSERT INTO `user` VALUES ('1', '123@qq.com', 'admin', '123');
INSERT INTO `user` VALUES ('2', '456@qq.com', '小花', '123');
INSERT INTO `user` VALUES ('3', '789@qq.com', '666', '123');
