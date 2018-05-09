/*
Navicat MySQL Data Transfer

Source Server         : localhost_3306
Source Server Version : 50716
Source Host           : localhost:3306
Source Database       : db_test

Target Server Type    : MYSQL
Target Server Version : 50716
File Encoding         : 65001

Date: 2016-12-02 10:44:34
*/


-- ----------------------------
-- Table structure for `user`
-- ----------------------------
CREATE TABLE `user` (
  `id` int(10) NOT NULL,
  `username` text NOT NULL,
  `password` varchar(255) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1
-- ----------------------------
-- Records of journal_info
-- ----------------------------
INSERT INTO `user`(`id`, `username`, `password`, `name`) VALUES (1, '15332014', '1234', 'student');
INSERT INTO `user`(`id`, `username`, `password`, `name`) VALUES (2, '15332015', '12345', 'student');
INSERT INTO `user`(`id`, `username`, `password`, `name`) VALUES (3, '1234567', '123456', 'teacher');
