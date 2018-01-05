/*
Navicat MySQL Data Transfer

Source Server         : localhost
Source Server Version : 50529
Source Host           : localhost:3306
Source Database       : sharing

Target Server Type    : MYSQL
Target Server Version : 50529
File Encoding         : 65001

Date: 2018-01-05 17:45:07
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for `t_releaseplan`
-- ----------------------------
DROP TABLE IF EXISTS `t_releaseplan`;
CREATE TABLE `t_releaseplan` (
  `planNum` varchar(30) NOT NULL,
  `userName` varchar(30) NOT NULL,
  `createTime` bigint(20) NOT NULL,
  `modifyTime` bigint(20) NOT NULL,
  `requirement` varchar(30) DEFAULT NULL,
  `develop` varchar(30) NOT NULL,
  `firsttest` varchar(30) NOT NULL,
  `secondtest` varchar(30) NOT NULL,
  `thirdtest` varchar(30) NOT NULL,
  `graystart` varchar(30) DEFAULT NULL,
  PRIMARY KEY (`planNum`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_releaseplan
-- ----------------------------
INSERT INTO `t_releaseplan` VALUES ('2.1.3', 'jwx8886', '1514284602555', '1514284602555', '2017/12/01-2017/12/05', '2017/12/01-2017/12/05', '2017/12/01-2017/12/05', '2017/12/01-2017/12/05', '2017/12/01-2017/12/05', '2017/12/01-2017/12/05');
INSERT INTO `t_releaseplan` VALUES ('2.1.4', 'jwx8887', '1514284602555', '1514284602555', '20171201-20171205', '20171210-20171212', '20171210-20171212', '20171210-20171212', '20171210-20171212', '20171210-20171212');
INSERT INTO `t_releaseplan` VALUES ('2.1.5', 'jwx8888', '1514284602555', '1514284602555', '20171201-20171205', '20171210-20171212', '20171210-20171212', '20171210-20171212', '20171210-20171212', '20171210-20171212');
INSERT INTO `t_releaseplan` VALUES ('2.1.6', 'jwx8889', '1514284602555', '1514284602555', '20171201-20171205', '20171210-20171212', '20171210-20171212', '20171210-20171212', '20171210-20171212', '20171210-20171212');

-- ----------------------------
-- Table structure for `t_user`
-- ----------------------------
DROP TABLE IF EXISTS `t_user`;
CREATE TABLE `t_user` (
  `userName` varchar(30) NOT NULL,
  `userPasswd` varchar(256) NOT NULL,
  `userRole` int(1) NOT NULL,
  PRIMARY KEY (`userName`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_user
-- ----------------------------
INSERT INTO `t_user` VALUES ('jup', '123', '0');
