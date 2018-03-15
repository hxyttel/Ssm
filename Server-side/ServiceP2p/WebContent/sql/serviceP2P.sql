/*
Navicat MySQL Data Transfer

Source Server         : Project
Source Server Version : 50638
Source Host           : 119.23.55.22:3306
Source Database       : serviceP2P

Target Server Type    : MYSQL
Target Server Version : 50638
File Encoding         : 65001

Date: 2018-01-25 16:39:03
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
INSERT INTO `admin` VALUES ('1', 'e20c37c2a31cf3c8b394f2fd965a8edd', 'admin', '362532199705215312', '15279457626', null, '2455361@qq.com');

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
) ENGINE=InnoDB AUTO_INCREMENT=42 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of bank
-- ----------------------------
INSERT INTO `bank` VALUES ('1', '1', '360730199611183635', '邱飞云', '18707074784', '6210984280004618036', '邮储银行·绿卡通', '100000.00', '1', '2018-01-24');
INSERT INTO `bank` VALUES ('38', '85', '360733200005055312', '哇哈哈', '15179084193', '6210984280004618037', '邮储银行·绿卡通', '90000.00', '1', '2018-01-25');
INSERT INTO `bank` VALUES ('39', '86', '511521199709141156', '汪栋才', '18296719481', '6210984280004618009', '邮储银行·绿卡通', '99500.00', '1', '2018-01-25');
INSERT INTO `bank` VALUES ('40', '88', '511521199710081111', '刘小杰', '17379741690', '6210984280004618001', '邮储银行·绿卡通', '99800.00', '1', '2018-01-25');

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
) ENGINE=InnoDB AUTO_INCREMENT=85 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of detail
-- ----------------------------
INSERT INTO `detail` VALUES ('77', '85', '10000.00', '充值', '2018-01-25 08:44:29', '20180125084429680787', '2', '182.97.114.186');
INSERT INTO `detail` VALUES ('78', '85', '3000.00', '发标', '2018-01-25 08:48:22', '2018012508520185', '2', '182.97.114.186');
INSERT INTO `detail` VALUES ('79', '86', '500.00', '充值', '2018-01-25 11:09:08', '20180125110908534903', '2', '182.97.114.186');
INSERT INTO `detail` VALUES ('80', '86', '20000.00', '发标', '2018-01-27 00:00:00', '2018012511152586', '2', '182.97.114.186');
INSERT INTO `detail` VALUES ('81', '88', '200.00', '充值', '2018-01-25 11:22:54', '20180125112254898958', '2', '182.97.114.186');
INSERT INTO `detail` VALUES ('82', '1', '300.00', '投标', '2018-01-27 00:00:00', 'IXXV201801251115255', '2', '182.97.114.186');
INSERT INTO `detail` VALUES ('83', '90', '200000.00', '充值', '2018-01-25 11:35:14', '20180125113514786279', '2', '182.97.114.186');
INSERT INTO `detail` VALUES ('84', '85', '2000000.00', '发标', '2019-01-25 09:48:46', '2018012511494085', '2', '182.97.114.186');

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
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of fabiaos
-- ----------------------------
INSERT INTO `fabiaos` VALUES ('3', '85', '新手标', '2018012508520185', '3000.00', '2018-01-25 08:48:22', null, '0.10', '2018-01-25 00:00:00', '1', '182.97.114.186');
INSERT INTO `fabiaos` VALUES ('4', '86', '新手标', '2018012511152586', '20000.00', '2018-01-27 00:00:00', null, '0.10', '2018-03-01 00:00:00', '1', '182.97.114.186');
INSERT INTO `fabiaos` VALUES ('5', '85', '新手标', '2018012511494085', '2000000.00', '2019-01-25 09:48:46', null, '0.10', '2018-03-01 00:00:00', '1', '182.97.114.186');

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
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of initiative
-- ----------------------------
INSERT INTO `initiative` VALUES ('7', '奥迪A6', '88', 'IXXV201801251115255', '300.00', '2018-01-27 00:00:00', '1', '182.97.114.186');

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
) ENGINE=InnoDB AUTO_INCREMENT=24 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of recharge
-- ----------------------------
INSERT INTO `recharge` VALUES ('20', '85', '10000.00', '20180125084429680787', '2', '2018-01-25 08:44:29', '6210984280004618037', '银行卡', '182.97.114.186');
INSERT INTO `recharge` VALUES ('21', '86', '500.00', '20180125110908534903', '2', '2018-01-25 11:09:08', '6210984280004618009', '银行卡', '182.97.114.186');
INSERT INTO `recharge` VALUES ('22', '88', '200.00', '20180125112254898958', '2', '2018-01-25 11:22:54', '6210984280004618001', '银行卡', '182.97.114.186');
INSERT INTO `recharge` VALUES ('23', '90', '200000.00', '20180125113514786279', '2', '2018-01-25 11:35:14', '6212841220000014897', '银行卡', '182.97.114.186');

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
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of stopmoney
-- ----------------------------
INSERT INTO `stopmoney` VALUES ('2', '85', '新手标', '2018012508520185', '3000.00', '1');
INSERT INTO `stopmoney` VALUES ('3', '86', '新手标', '2018012511152586', '20000.00', '1');
INSERT INTO `stopmoney` VALUES ('4', '88', '奥迪A6', 'IXXV201801251115255', '300.00', '1');
INSERT INTO `stopmoney` VALUES ('5', '85', '新手标', '2018012511494085', '2000000.00', '1');

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
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of users
-- ----------------------------
INSERT INTO `users` VALUES ('1', '1', '坚持', '邱飞云', '18707074784', '360730199611183635', '1941783199@qq.com', '1000000.00', '1000000.00', '0.00', '127.0.0.1', '300');
INSERT INTO `users` VALUES ('11', '85', 'yxjr15179084193', '哇哈哈', '15179084193', '360733200005055312', null, '110000.00', '110000.00', '0.00', '182.97.114.186', '3000');
INSERT INTO `users` VALUES ('12', '86', 'yxjr18296719481', '汪栋才', '18296719481', '511521199709141156', null, '100500.00', '100500.00', '0.00', '182.97.114.186', '3000');
INSERT INTO `users` VALUES ('13', '88', 'yxjr17379741690', '刘小杰', '17379741690', '511521199710081111', null, '100200.00', '99900.00', '300.00', '182.97.114.186', '3000');
INSERT INTO `users` VALUES ('14', '90', 'yxjr13576748465', '李钟辉', '13576748465', '511521188902167879', null, '300000.00', '300000.00', '0.00', '182.97.114.186', '3000');

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
