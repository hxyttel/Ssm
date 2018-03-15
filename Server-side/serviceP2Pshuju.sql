/*
Navicat MySQL Data Transfer

Source Server         : project
Source Server Version : 50638
Source Host           : 119.23.55.22:3306
Source Database       : serviceP2P

Target Server Type    : MYSQL
Target Server Version : 50638
File Encoding         : 65001

Date: 2018-01-24 10:25:08
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for admin
-- ----------------------------
DROP TABLE IF EXISTS `admin`;
CREATE TABLE `admin` (
  `a_id` int(10) NOT NULL AUTO_INCREMENT,
  `a_password` varchar(50) DEFAULT NULL,
  `a_name` varchar(50) DEFAULT NULL,
  `a_card` varchar(50) DEFAULT NULL,
  `a_phone` varchar(40) DEFAULT NULL,
  `a_img` varchar(50) DEFAULT NULL,
  `a_mail` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`a_id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of admin
-- ----------------------------
INSERT INTO `admin` VALUES ('1', '111111', 'admin', '362532199705215312', '15279457626', null, '2455361@qq.com');

-- ----------------------------
-- Table structure for bank
-- ----------------------------
DROP TABLE IF EXISTS `bank`;
CREATE TABLE `bank` (
  `b_id` int(11) NOT NULL AUTO_INCREMENT,
  `b_suid` int(11) DEFAULT NULL,
  `b_card` varchar(18) DEFAULT NULL COMMENT '身份证号码',
  `b_name` varchar(50) DEFAULT NULL COMMENT '真实姓名',
  `b_phone` varchar(11) DEFAULT NULL COMMENT '银行预留手机号码',
  `b_code` varchar(19) DEFAULT NULL,
  `b_type` varchar(50) DEFAULT NULL,
  `b_money` decimal(10,2) DEFAULT NULL,
  `b_state` varchar(50) DEFAULT NULL,
  `b_time` date DEFAULT NULL COMMENT '申请银行卡时间',
  PRIMARY KEY (`b_id`)
) ENGINE=InnoDB AUTO_INCREMENT=37 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of bank
-- ----------------------------
INSERT INTO `bank` VALUES ('31', '17', '511521199710089569', '张晓明', '17370134046', '6210984280004618036', '邮储银行·绿卡通', '100252.00', '1', '2018-01-04');

-- ----------------------------
-- Table structure for cash
-- ----------------------------
DROP TABLE IF EXISTS `cash`;
CREATE TABLE `cash` (
  `c_id` int(11) NOT NULL AUTO_INCREMENT,
  `c_suid` int(11) DEFAULT NULL,
  `c_money` decimal(10,2) DEFAULT NULL,
  `c_card` varchar(20) DEFAULT NULL,
  `c_order` varchar(50) DEFAULT NULL,
  `c_time` varchar(60) DEFAULT NULL,
  `c_state` int(2) DEFAULT NULL,
  `c_figure` decimal(10,2) DEFAULT NULL,
  `c_poundage` decimal(10,2) DEFAULT NULL,
  `c_ip` varchar(255) DEFAULT NULL COMMENT '提现ip',
  PRIMARY KEY (`c_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of cash
-- ----------------------------
INSERT INTO `cash` VALUES ('1', '1', '1000.00', '7888888', '2017', '2017-12-27', '1', '2000.00', '3.00', '127.0.0.1');

-- ----------------------------
-- Table structure for detail
-- ----------------------------
DROP TABLE IF EXISTS `detail`;
CREATE TABLE `detail` (
  `d_id` int(20) NOT NULL AUTO_INCREMENT,
  `d_suid` varchar(40) DEFAULT NULL,
  `d_money` decimal(50,2) DEFAULT NULL,
  `d_type` varchar(50) DEFAULT NULL,
  `d_time` datetime DEFAULT NULL,
  `d_order` varchar(50) DEFAULT NULL,
  `d_state` int(11) DEFAULT NULL,
  `d_ip` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`d_id`)
) ENGINE=InnoDB AUTO_INCREMENT=77 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of detail
-- ----------------------------
INSERT INTO `detail` VALUES ('3', '10', '200.00', '提现', '2018-01-09 00:00:00', '2018010919343110', '2', '192.168.90.47');
INSERT INTO `detail` VALUES ('4', '10', '100.00', '充值', '2018-01-08 14:36:12', '20180108023617355944', '2', '192.168.90.157');
INSERT INTO `detail` VALUES ('5', '10', '20.00', '充值', '2018-01-08 14:47:47', '20180108024753542969', '2', '192.168.90.157');
INSERT INTO `detail` VALUES ('6', '10', '100.00', '充值', '2018-01-08 15:04:34', '20180108030434186242', '2', '192.168.90.157');
INSERT INTO `detail` VALUES ('7', '10', '10.00', '充值', '2018-01-08 15:23:21', '20180108032321585810', '2', '192.168.90.157');
INSERT INTO `detail` VALUES ('8', '10', '100.00', '充值', '2018-01-10 14:26:21', '20180110022621694787', '2', '192.168.90.157');
INSERT INTO `detail` VALUES ('9', '10', '10.00', '充值', '2018-01-10 14:30:14', '20180110023014590542', '2', '192.168.90.157');
INSERT INTO `detail` VALUES ('10', '10', '100.00', '提现', '2018-01-09 00:00:00', '2018010919355910', '1', '192.168.90.47');
INSERT INTO `detail` VALUES ('11', '10', '100.00', '充值', '2018-01-15 16:51:16', '20180115045118426268', '2', '192.168.90.157');
INSERT INTO `detail` VALUES ('12', '1', '1040.00', '投标', '2018-01-29 00:00:00', 'XACD201609001', '2', '192.168.90.70');
INSERT INTO `detail` VALUES ('13', '1', '1040.00', '投标', '2018-01-29 00:00:00', 'XACD201609001', '2', '192.168.90.70');
INSERT INTO `detail` VALUES ('14', '1', '1040.00', '投标', '2018-01-29 00:00:00', 'XACD201609001', '2', '192.168.90.70');
INSERT INTO `detail` VALUES ('15', '1', '640.00', '投标', '2018-01-29 00:00:00', 'XACD201609001', '2', '192.168.90.70');
INSERT INTO `detail` VALUES ('16', '10', '100.00', '充值', '2018-01-16 10:32:39', '20180116103239834606', '2', '192.168.90.157');
INSERT INTO `detail` VALUES ('17', '10', '100.00', '充值', '2018-01-16 14:31:45', '20180116023146502764', '2', '192.168.90.157');
INSERT INTO `detail` VALUES ('18', '10', '100.00', '提现', '2018-01-16 00:00:00', '2018011614325710', '2', '192.168.90.157');
INSERT INTO `detail` VALUES ('19', '67', '0.00', '发标', '2018-01-18 09:08:34', '2018011809240267', '2', '192.168.90.73');
INSERT INTO `detail` VALUES ('20', '10', '200.00', '充值', '2018-01-18 10:10:40', '20180118101040184348', '1', '192.168.90.157');
INSERT INTO `detail` VALUES ('21', '1', '3700.00', '发标还款手续费', '2018-01-22 14:48:08', 'XACD201609002', '2', null);
INSERT INTO `detail` VALUES ('22', '11', '3700.00', '发标还款', '2018-01-22 14:48:08', 'XACD201609002', '2', null);
INSERT INTO `detail` VALUES ('23', '1', '3700.00', '发标还款手续费', '2018-01-22 14:49:13', 'XACD201609002', '2', null);
INSERT INTO `detail` VALUES ('24', '11', '3700.00', '发标还款', '2018-01-22 14:49:13', 'XACD201609002', '2', null);
INSERT INTO `detail` VALUES ('25', '1', '3700.00', '发标还款手续费', '2018-01-22 14:50:58', 'XACD201609002', '2', null);
INSERT INTO `detail` VALUES ('26', '11', '3700.00', '发标还款', '2018-01-22 14:50:58', 'XACD201609002', '2', null);
INSERT INTO `detail` VALUES ('27', '1', '3700.00', '发标还款手续费', '2018-01-22 15:40:33', 'XACD201609002', '2', null);
INSERT INTO `detail` VALUES ('28', '1', '3700.00', '发标还款手续费', '2018-01-22 15:41:36', 'XACD201609002', '2', null);
INSERT INTO `detail` VALUES ('29', '11', '3700.00', '发标还款', '2018-01-22 15:40:33', 'XACD201609002', '2', null);
INSERT INTO `detail` VALUES ('30', '11', '3700.00', '发标还款', '2018-01-22 15:41:36', 'XACD201609002', '2', null);
INSERT INTO `detail` VALUES ('31', '1', '3700.00', '发标还款手续费', '2018-01-22 15:41:15', 'XACD201609002', '2', null);
INSERT INTO `detail` VALUES ('32', '11', '3700.00', '发标还款', '2018-01-22 15:41:15', 'XACD201609002', '2', null);
INSERT INTO `detail` VALUES ('33', '1', '3700.00', '发标还款手续费', '2018-01-22 15:42:27', 'XACD201609002', '2', null);
INSERT INTO `detail` VALUES ('34', '11', '3700.00', '发标还款', '2018-01-22 15:42:27', 'XACD201609002', '2', null);
INSERT INTO `detail` VALUES ('35', '1', '3700.00', '发标还款手续费', '2018-01-22 16:02:57', 'XACD201609002', '2', null);
INSERT INTO `detail` VALUES ('36', '11', '3700.00', '发标还款', '2018-01-22 16:02:57', 'XACD201609002', '2', null);
INSERT INTO `detail` VALUES ('37', '1', '3700.00', '发标还款手续费', '2018-01-22 16:09:32', 'XACD201609002', '2', null);
INSERT INTO `detail` VALUES ('38', '11', '3700.00', '发标还款', '2018-01-22 16:09:32', 'XACD201609002', '2', null);
INSERT INTO `detail` VALUES ('39', '1', '3700.00', '发标还款手续费', '2018-01-22 16:10:40', 'XACD201609002', '2', null);
INSERT INTO `detail` VALUES ('40', '11', '3700.00', '发标还款', '2018-01-22 16:10:40', 'XACD201609002', '2', null);
INSERT INTO `detail` VALUES ('41', '1', '3700.00', '发标还款手续费', '2018-01-22 16:13:04', 'XACD201609002', '2', null);
INSERT INTO `detail` VALUES ('42', '11', '3700.00', '发标还款', '2018-01-22 16:13:04', 'XACD201609002', '2', null);
INSERT INTO `detail` VALUES ('43', '1', '3700.00', '发标还款手续费', '2018-01-22 16:18:22', 'XACD201609002', '2', null);
INSERT INTO `detail` VALUES ('44', '11', '3700.00', '发标还款', '2018-01-22 16:18:22', 'XACD201609002', '2', null);
INSERT INTO `detail` VALUES ('45', '1', '3700.00', '发标还款手续费', '2018-01-22 16:20:25', 'XACD201609002', '2', null);
INSERT INTO `detail` VALUES ('46', '11', '3700.00', '发标还款', '2018-01-22 16:20:25', 'XACD201609002', '2', null);
INSERT INTO `detail` VALUES ('47', '1', '3700.00', '发标还款手续费', '2018-01-22 16:52:47', 'XACD201609002', '2', null);
INSERT INTO `detail` VALUES ('48', '11', '3700.00', '发标还款', '2018-01-22 16:52:47', 'XACD201609002', '2', null);
INSERT INTO `detail` VALUES ('49', '1', '3700.00', '发标还款手续费', '2018-01-22 16:55:19', 'XACD201609002', '2', null);
INSERT INTO `detail` VALUES ('50', '11', '3700.00', '发标还款', '2018-01-22 16:55:19', 'XACD201609002', '2', null);
INSERT INTO `detail` VALUES ('51', '1', '3700.00', '发标还款手续费', '2018-01-22 17:04:30', 'XACD201609002', '2', null);
INSERT INTO `detail` VALUES ('52', '11', '3700.00', '发标还款', '2018-01-22 17:04:30', 'XACD201609002', '2', null);
INSERT INTO `detail` VALUES ('53', '1', '3700.00', '发标还款手续费', '2018-01-22 17:41:36', 'XACD201609002', '2', null);
INSERT INTO `detail` VALUES ('54', '11', '3700.00', '发标还款', '2018-01-22 17:41:36', 'XACD201609002', '2', null);
INSERT INTO `detail` VALUES ('55', '1', '3700.00', '发标还款手续费', '2018-01-22 18:08:30', 'XACD201609002', '2', null);
INSERT INTO `detail` VALUES ('56', '11', '3700.00', '发标还款', '2018-01-22 18:08:30', 'XACD201609002', '2', null);
INSERT INTO `detail` VALUES ('57', '11', '250.00', '投标收益', '2018-01-22 20:11:21', null, '2', null);
INSERT INTO `detail` VALUES ('58', '1', '250.00', '投标垫付收益', '2018-01-22 20:11:21', null, '2', null);
INSERT INTO `detail` VALUES ('59', '1', '3700.00', '发标还款手续费', '2018-01-23 16:02:21', 'XACD201609002', '2', null);
INSERT INTO `detail` VALUES ('60', '11', '3700.00', '发标还款', '2018-01-23 16:02:21', 'XACD201609002', '2', null);
INSERT INTO `detail` VALUES ('61', '2', '20000.00', '投标', '2018-01-29 00:00:00', 'XACD201609003', '2', '192.168.90.47');
INSERT INTO `detail` VALUES ('62', '1', '3700.00', '发标还款手续费', '2018-01-24 09:51:19', 'XACD201609002', '2', null);
INSERT INTO `detail` VALUES ('63', '11', '3700.00', '发标还款', '2018-01-24 09:51:19', 'XACD201609002', '2', null);
INSERT INTO `detail` VALUES ('64', '11', '250.00', '投标收益', '2018-01-24 10:00:00', null, '2', null);
INSERT INTO `detail` VALUES ('65', '1', '250.00', '投标垫付收益', '2018-01-24 10:00:00', null, '2', null);
INSERT INTO `detail` VALUES ('66', '11', '250.00', '投标收益', '2018-01-24 10:00:00', null, '2', null);
INSERT INTO `detail` VALUES ('67', '1', '250.00', '投标垫付收益', '2018-01-24 10:00:00', null, '2', null);
INSERT INTO `detail` VALUES ('68', '11', '250.00', '投标收益', '2018-01-24 10:00:00', null, '2', null);
INSERT INTO `detail` VALUES ('69', '1', '250.00', '投标垫付收益', '2018-01-24 10:00:00', null, '2', null);
INSERT INTO `detail` VALUES ('70', '11', '250.00', '投标收益', '2018-01-24 10:00:00', null, '2', null);
INSERT INTO `detail` VALUES ('71', '1', '250.00', '投标垫付收益', '2018-01-24 10:00:00', null, '2', null);
INSERT INTO `detail` VALUES ('72', '11', '250.00', '投标收益', '2018-01-24 10:00:02', null, '2', null);
INSERT INTO `detail` VALUES ('73', '1', '250.00', '投标垫付收益', '2018-01-24 10:00:02', null, '2', null);
INSERT INTO `detail` VALUES ('74', '11', '250.00', '投标收益', '2018-01-24 10:00:00', null, '2', null);
INSERT INTO `detail` VALUES ('75', '1', '250.00', '投标垫付收益', '2018-01-24 10:00:00', null, '2', null);
INSERT INTO `detail` VALUES ('76', '1', '4000.00', '收取逾期代替还款', null, 'XACD201609002', '2', null);

-- ----------------------------
-- Table structure for fabiaos
-- ----------------------------
DROP TABLE IF EXISTS `fabiaos`;
CREATE TABLE `fabiaos` (
  `fs_id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键id',
  `fs_suid` int(11) DEFAULT NULL COMMENT '发标人id',
  `fs_title` varchar(50) DEFAULT NULL COMMENT '发标标题',
  `fs_order` varchar(50) DEFAULT NULL COMMENT '发标订单号',
  `fs_money` decimal(11,2) DEFAULT NULL COMMENT '发标金额',
  `fs_time` datetime DEFAULT NULL COMMENT '发标时间',
  `fs_style` int(11) DEFAULT NULL COMMENT '还款类型：1：自动还款 2：手动还款',
  `fs_roe` decimal(11,2) DEFAULT NULL COMMENT '收益率 ',
  `fs_hktime` datetime DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP COMMENT '还款时间',
  `fs_state` int(11) DEFAULT NULL COMMENT '发标状态（ 1募集标  2还款标  3结清标 4流标  5废标  6待审核标  7满标）',
  `fs_ip` varchar(50) DEFAULT NULL COMMENT '发标ip',
  PRIMARY KEY (`fs_id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of fabiaos
-- ----------------------------
INSERT INTO `fabiaos` VALUES ('2', '10', '新手标', '2018011809240267', '2000000.00', '2018-01-18 09:08:34', null, null, '2018-01-21 20:35:35', '1', '192.168.90.73');

-- ----------------------------
-- Table structure for initiative
-- ----------------------------
DROP TABLE IF EXISTS `initiative`;
CREATE TABLE `initiative` (
  `it_id` int(11) NOT NULL AUTO_INCREMENT,
  `it_title` varchar(50) DEFAULT NULL COMMENT '投标标题',
  `it_suid` int(11) DEFAULT NULL COMMENT '用户id',
  `it_order` varchar(255) DEFAULT NULL COMMENT '标的订单号',
  `it_money` decimal(11,2) DEFAULT NULL COMMENT '投标金额',
  `it_time` datetime DEFAULT NULL COMMENT '投标时间',
  `it_state` int(11) DEFAULT NULL COMMENT '投标状态',
  `it_ip` varchar(50) DEFAULT NULL COMMENT 'ip',
  PRIMARY KEY (`it_id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of initiative
-- ----------------------------
INSERT INTO `initiative` VALUES ('2', '雪佛兰大黄蜂-XAA067', '10', 'XACD201609001', '1040.00', '2018-01-29 00:00:00', '1', '192.168.90.70');
INSERT INTO `initiative` VALUES ('3', '雪佛兰大黄蜂-XAA067', '10', 'XACD201609001', '1040.00', '2018-01-29 00:00:00', '1', '192.168.90.70');
INSERT INTO `initiative` VALUES ('4', '雪佛兰大黄蜂-XAA067', '10', 'XACD201609001', '1040.00', '2018-01-29 00:00:00', '1', '192.168.90.70');
INSERT INTO `initiative` VALUES ('5', '雪佛兰大黄蜂-XAA067', '10', 'XACD201609001', '640.00', '2018-01-29 00:00:00', '1', '192.168.90.70');
INSERT INTO `initiative` VALUES ('6', '消费金融x332432432434', '11', 'XACD201609003', '20000.00', '2018-01-29 00:00:00', '2', '192.168.90.47');

-- ----------------------------
-- Table structure for loans
-- ----------------------------
DROP TABLE IF EXISTS `loans`;
CREATE TABLE `loans` (
  `l_id` int(11) NOT NULL AUTO_INCREMENT,
  `l_suid` int(11) DEFAULT NULL COMMENT '放款用户id',
  `l_suids` int(11) DEFAULT NULL COMMENT '借款用户id',
  `l_money` decimal(10,2) DEFAULT NULL,
  `l_time` varchar(100) DEFAULT NULL,
  `l_state` int(11) DEFAULT NULL,
  `l_ip` varchar(255) DEFAULT NULL COMMENT '放款用户id',
  `l_ips` varchar(255) DEFAULT NULL COMMENT '还款用户id',
  PRIMARY KEY (`l_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of loans
-- ----------------------------
INSERT INTO `loans` VALUES ('1', '3', '2', '2000.00', '2017-12-27', '1', '12', '122.25.23.3');

-- ----------------------------
-- Table structure for profit
-- ----------------------------
DROP TABLE IF EXISTS `profit`;
CREATE TABLE `profit` (
  `pf_id` int(10) NOT NULL AUTO_INCREMENT COMMENT '收益表id',
  `u_id` int(10) NOT NULL COMMENT '用户id',
  `pf_money` decimal(20,2) NOT NULL COMMENT '收益金额',
  `pf_moneywhere` varchar(50) NOT NULL COMMENT '收益来源',
  `pf_time` datetime NOT NULL COMMENT '收益时间',
  PRIMARY KEY (`pf_id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of profit
-- ----------------------------
INSERT INTO `profit` VALUES ('1', '10', '20.00', '投资收益', '2018-01-18 08:24:09');
INSERT INTO `profit` VALUES ('2', '10', '100.00', '投资收益', '2018-01-01 08:24:09');
INSERT INTO `profit` VALUES ('3', '11', '250.00', '爱车贷', '2018-01-22 20:11:21');
INSERT INTO `profit` VALUES ('4', '11', '250.00', '爱车贷', '2018-01-24 10:00:00');
INSERT INTO `profit` VALUES ('5', '11', '250.00', '爱车贷', '2018-01-24 10:00:00');
INSERT INTO `profit` VALUES ('6', '11', '250.00', '爱车贷', '2018-01-24 10:00:00');
INSERT INTO `profit` VALUES ('7', '11', '250.00', '爱车贷', '2018-01-24 10:00:00');
INSERT INTO `profit` VALUES ('8', '11', '250.00', '爱车贷', '2018-01-24 10:00:02');
INSERT INTO `profit` VALUES ('9', '11', '250.00', '爱车贷', '2018-01-24 10:00:00');

-- ----------------------------
-- Table structure for recharge
-- ----------------------------
DROP TABLE IF EXISTS `recharge`;
CREATE TABLE `recharge` (
  `ch_id` int(11) NOT NULL AUTO_INCREMENT,
  `ch_suid` int(11) DEFAULT NULL,
  `ch_money` decimal(10,2) DEFAULT NULL,
  `ch_order` varchar(100) DEFAULT NULL,
  `ch_state` int(11) DEFAULT NULL,
  `ch_time` varchar(100) DEFAULT NULL,
  `ch_bankid` varchar(20) DEFAULT NULL,
  `ch_type` varchar(100) DEFAULT NULL,
  `ch_ip` varchar(255) DEFAULT NULL COMMENT '需要充值的ip',
  PRIMARY KEY (`ch_id`)
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of recharge
-- ----------------------------
INSERT INTO `recharge` VALUES ('5', '10', '100.00', '20180108114347081266', '2', '2018-01-08 11:43:41', '6210984280004618036', '银行卡', '192.168.90.157');
INSERT INTO `recharge` VALUES ('6', '10', '100.00', '20180108114958946380', '2', '2018-01-08 11:49:58', '6210984280004618036', '银行卡', '192.168.90.157');
INSERT INTO `recharge` VALUES ('10', '10', '100.00', '20180108023617355944', '2', '2018-01-08 14:36:12', '6210984280004618036', '银行卡', '192.168.90.157');
INSERT INTO `recharge` VALUES ('11', '10', '20.00', '20180108024753542969', '2', '2018-01-08 14:47:47', '6210984280004618036', '银行卡', '192.168.90.157');
INSERT INTO `recharge` VALUES ('12', '10', '100.00', '20180108030434186242', '2', '2018-01-08 15:04:34', '6210984280004618036', '银行卡', '192.168.90.157');
INSERT INTO `recharge` VALUES ('13', '10', '10.00', '20180108032321585810', '2', '2018-01-08 15:23:21', '6210984280004618036', '银行卡', '192.168.90.157');
INSERT INTO `recharge` VALUES ('14', '10', '100.00', '20180110022621694787', '2', '2018-01-10 14:26:21', '6212842120000014923', '银行卡', '192.168.90.157');
INSERT INTO `recharge` VALUES ('15', '10', '10.00', '20180110023014590542', '2', '2018-01-10 14:30:14', '6210984280004618036', '银行卡', '192.168.90.157');
INSERT INTO `recharge` VALUES ('16', '10', '100.00', '20180115045118426268', '2', '2018-01-15 16:51:16', '6210984280004618036', '银行卡', '192.168.90.157');
INSERT INTO `recharge` VALUES ('17', '10', '100.00', '20180116103239834606', '2', '2018-01-16 10:32:39', '6212842120000014923', '银行卡', '192.168.90.157');
INSERT INTO `recharge` VALUES ('18', '10', '100.00', '20180116023146502764', '2', '2018-01-16 14:31:45', '6212842120000014923', '银行卡', '192.168.90.157');
INSERT INTO `recharge` VALUES ('19', '10', '200.00', '20180118101040184348', '1', '2018-01-18 10:10:40', '6212842120000014923', '银行卡', '192.168.90.157');

-- ----------------------------
-- Table structure for repayment
-- ----------------------------
DROP TABLE IF EXISTS `repayment`;
CREATE TABLE `repayment` (
  `r_id` int(10) NOT NULL AUTO_INCREMENT,
  `r_suid` int(10) DEFAULT NULL COMMENT '还款用户id',
  `r_moeny` decimal(10,2) DEFAULT NULL COMMENT '还款金额',
  `r_handmoney` decimal(10,2) DEFAULT NULL COMMENT '手续费',
  `r_time` varchar(50) DEFAULT NULL COMMENT '还款时间',
  `r_state` int(10) DEFAULT NULL COMMENT '还款状态（1：还款中 2：还款成功 3：还款逾期）',
  `r_order` varchar(255) DEFAULT NULL COMMENT '还款订单号',
  PRIMARY KEY (`r_id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of repayment
-- ----------------------------
INSERT INTO `repayment` VALUES ('1', '1', '2000.00', null, '2017-12-27', '1', null);
INSERT INTO `repayment` VALUES ('2', '11', '92500.00', '88833.33', '2018-01-22 14:26:07', '2', 'XACD201609002');
INSERT INTO `repayment` VALUES ('3', '12', '51800.00', '48133.33', '2018-01-22 17:53:57', '2', 'XACD201609003');

-- ----------------------------
-- Table structure for stopmoney
-- ----------------------------
DROP TABLE IF EXISTS `stopmoney`;
CREATE TABLE `stopmoney` (
  `sm_id` int(10) NOT NULL AUTO_INCREMENT COMMENT '主键id',
  `sm_suid` int(10) DEFAULT NULL COMMENT '用户id',
  `sm_type` varchar(50) DEFAULT NULL COMMENT '冻结类型 （什么标）',
  `sm_order` varchar(50) DEFAULT NULL COMMENT '冻结订单号(发标的订单号)',
  `sm_money` decimal(11,2) DEFAULT NULL COMMENT '冻结金额',
  `sm_state` int(10) DEFAULT NULL COMMENT '1:冻结 2：已解冻',
  PRIMARY KEY (`sm_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of stopmoney
-- ----------------------------
INSERT INTO `stopmoney` VALUES ('1', '11', '消费金融x332432432434', 'XACD201609003', '20000.00', '1');

-- ----------------------------
-- Table structure for transfer
-- ----------------------------
DROP TABLE IF EXISTS `transfer`;
CREATE TABLE `transfer` (
  `t_id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `t_suid` int(11) DEFAULT NULL COMMENT '转账人ID',
  `t_suids` int(11) DEFAULT NULL COMMENT '收款人ID',
  `t_charge` decimal(11,2) DEFAULT NULL COMMENT '手续费',
  `t_money` decimal(11,2) DEFAULT NULL COMMENT '转账金额',
  `t_time` date DEFAULT NULL COMMENT '转账时间',
  `t_state` int(11) DEFAULT NULL COMMENT '转账状态',
  `t_order` varchar(20) NOT NULL COMMENT '转账订单',
  `t_ip` int(11) DEFAULT NULL COMMENT '收账人ID',
  PRIMARY KEY (`t_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of transfer
-- ----------------------------

-- ----------------------------
-- Table structure for userbindcard
-- ----------------------------
DROP TABLE IF EXISTS `userbindcard`;
CREATE TABLE `userbindcard` (
  `u_id` int(11) NOT NULL AUTO_INCREMENT,
  `u_suid` int(11) DEFAULT NULL,
  `u_bankcode` varchar(100) DEFAULT NULL,
  `u_type` varchar(100) DEFAULT NULL,
  `u_time` datetime DEFAULT NULL,
  `u_state` int(11) DEFAULT NULL,
  `u_ip` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`u_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of userbindcard
-- ----------------------------
INSERT INTO `userbindcard` VALUES ('1', '1', '6666', '建设银行', '2017-12-27 00:00:00', '1', '127.0.0.1');

-- ----------------------------
-- Table structure for users
-- ----------------------------
DROP TABLE IF EXISTS `users`;
CREATE TABLE `users` (
  `su_id` int(11) NOT NULL AUTO_INCREMENT,
  `id` int(11) DEFAULT NULL,
  `su_username` varchar(100) DEFAULT NULL,
  `su_name` varchar(100) DEFAULT NULL,
  `su_phone` varchar(50) DEFAULT NULL,
  `su_card` varchar(100) DEFAULT NULL,
  `su_email` varchar(100) DEFAULT NULL,
  `su_money` decimal(10,2) DEFAULT NULL,
  `su_canmoney` decimal(10,2) DEFAULT NULL COMMENT '账号可用余额',
  `su_stopmoney` decimal(10,2) DEFAULT NULL COMMENT '冻结资金',
  `su_ip` varchar(255) DEFAULT NULL,
  `su_credit` int(11) DEFAULT NULL,
  PRIMARY KEY (`su_id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of users
-- ----------------------------
INSERT INTO `users` VALUES ('1', null, '坚持', '邱飞云', '18970786473', '360730199809230349', '745514499@qq.com', '1000.00', null, null, '192.168.1.88', '21');
INSERT INTO `users` VALUES ('5', '1', '妖魔鬼怪', '张晓明', '17370134046', '511521199710089569', '2083533508@qq.com', '102883.27', '2883.27', '0.00', '192.168.90.178', '3000');
INSERT INTO `users` VALUES ('8', '2', 'yxjr18296719482', '李小东', '18296719482', '322178966490032186', 'acgnwang@qq.com', '100000.00', null, null, '192.168.90.157', '3000');
INSERT INTO `users` VALUES ('9', '10', 'yxjr13976670145', '张丽', '13976670145', '511730199811183612', null, '99740.00', null, null, '192.168.90.157', '3000');
INSERT INTO `users` VALUES ('10', '11', 'yxjr13247051583', '吴sehun', '13247051583', '511521199404126666', null, '31450.00', '40450.00', '20000.00', '192.168.90.157', '3000');

-- ----------------------------
-- Table structure for withdrawalsP2p
-- ----------------------------
DROP TABLE IF EXISTS `withdrawalsP2p`;
CREATE TABLE `withdrawalsP2p` (
  `c_id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `c_suid` int(11) NOT NULL COMMENT '用户id',
  `c_money` decimal(11,2) DEFAULT NULL COMMENT '提现金额',
  `c_card` varchar(20) DEFAULT NULL COMMENT '提现卡号',
  `c_order` varchar(20) DEFAULT NULL COMMENT '提现订单号',
  `c_time` datetime DEFAULT NULL COMMENT '提现时间',
  `c_state` int(11) DEFAULT NULL COMMENT '提现状态',
  `c_nowMoney` decimal(11,2) DEFAULT NULL COMMENT '实际到账',
  `c_poundage` decimal(11,2) DEFAULT NULL COMMENT '提现手续费',
  `c_ip` varchar(50) DEFAULT NULL COMMENT '提现ip',
  PRIMARY KEY (`c_id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of withdrawalsP2p
-- ----------------------------
INSERT INTO `withdrawalsP2p` VALUES ('1', '10', '200.00', '6210984280004618036', '2018010919343110', '2018-01-09 00:00:00', '2', '198.00', '2.00', '192.168.90.47');
INSERT INTO `withdrawalsP2p` VALUES ('2', '10', '100.00', '6210984280004618036', '2018010919355910', '2018-01-09 00:00:00', '3', '99.00', '1.00', '192.168.90.47');
INSERT INTO `withdrawalsP2p` VALUES ('6', '10', '100.00', '6212842120000014923', '2018011614325710', '2018-01-16 00:00:00', '2', '0.00', '1.00', '192.168.90.157');
