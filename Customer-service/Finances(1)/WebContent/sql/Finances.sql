/*
Navicat MySQL Data Transfer

Source Server         : Project
Source Server Version : 50638
Source Host           : 119.23.55.22:3306
Source Database       : Finances

Target Server Type    : MYSQL
Target Server Version : 50638
File Encoding         : 65001

Date: 2018-01-25 14:10:57
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for about
-- ----------------------------
DROP TABLE IF EXISTS `about`;
CREATE TABLE `about` (
  `ab_id` int(10) NOT NULL AUTO_INCREMENT,
  `ab_name` varchar(50) DEFAULT NULL,
  `ab_image` varchar(200) DEFAULT NULL,
  `ab_introduce` varchar(200) DEFAULT NULL,
  `ab_remark` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`ab_id`)
) ENGINE=InnoDB AUTO_INCREMENT=47 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of about
-- ----------------------------
INSERT INTO `about` VALUES ('46', '忆信金融在我手中', '/uploadFile/yxry_1516828994320.jpg', '用户信息和资金银行存管，用户资金完全隔离,用户信息和资金全部在银行存管，平台不直接经手客户资金，也无权动用客户在银行存管系统的资金。投资人通过银行存管账户投资成功后，资金将直接进入借款人账户，保证交易真实和投资人资金安全。', '强力担保回购机制，三重回款保障除了借款人负有还款责任，将经营收入作为第一还款来源，个人无限责任，还有可以执行的抵质押物可以变现用于还款；平台引入第三方担保构,负有连带责任保证，承诺到期回购。同时，平台也制定了完善的法律服务体系，将法律途径引入还款保障。');

-- ----------------------------
-- Table structure for activity
-- ----------------------------
DROP TABLE IF EXISTS `activity`;
CREATE TABLE `activity` (
  `at_id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键ID',
  `at_title` varchar(50) NOT NULL COMMENT '活动标题',
  `at_intgard` int(11) NOT NULL COMMENT '奖励值',
  `at_content` varchar(50) NOT NULL COMMENT '活动内容',
  `at_image` varchar(50) NOT NULL COMMENT '活动代表图',
  `at_starttime` varchar(50) NOT NULL COMMENT '活动开始时间',
  `at_endtime` varchar(50) NOT NULL COMMENT '活动结束时间',
  `at_status` int(11) NOT NULL COMMENT '活动状态 0启用 1结束',
  PRIMARY KEY (`at_id`)
) ENGINE=InnoDB AUTO_INCREMENT=24 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of activity
-- ----------------------------

-- ----------------------------
-- Table structure for area
-- ----------------------------
DROP TABLE IF EXISTS `area`;
CREATE TABLE `area` (
  `ae_id` int(11) NOT NULL AUTO_INCREMENT COMMENT '地区id',
  `ae_name` varchar(255) DEFAULT NULL COMMENT '地区名',
  `cy_id` int(11) DEFAULT NULL COMMENT '城市表id',
  PRIMARY KEY (`ae_id`)
) ENGINE=InnoDB AUTO_INCREMENT=1001 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of area
-- ----------------------------
INSERT INTO `area` VALUES ('1', '东城区', '1');
INSERT INTO `area` VALUES ('2', '西城区', '1');
INSERT INTO `area` VALUES ('3', '崇文区', '1');
INSERT INTO `area` VALUES ('4', '宣武区', '1');
INSERT INTO `area` VALUES ('5', '朝阳区', '1');
INSERT INTO `area` VALUES ('6', '丰台区', '1');
INSERT INTO `area` VALUES ('7', '石景山区', '1');
INSERT INTO `area` VALUES ('8', '海淀区', '1');
INSERT INTO `area` VALUES ('9', '门头沟区', '1');
INSERT INTO `area` VALUES ('10', '房山区', '1');
INSERT INTO `area` VALUES ('11', '通州区', '1');
INSERT INTO `area` VALUES ('12', '顺义区', '1');
INSERT INTO `area` VALUES ('13', '昌平区', '1');
INSERT INTO `area` VALUES ('14', '大兴区', '1');
INSERT INTO `area` VALUES ('15', '怀柔区', '1');
INSERT INTO `area` VALUES ('16', '平谷区', '1');
INSERT INTO `area` VALUES ('17', '密云县', '1');
INSERT INTO `area` VALUES ('18', '延庆县', '1');
INSERT INTO `area` VALUES ('19', '和平区', '2');
INSERT INTO `area` VALUES ('20', '河东区', '2');
INSERT INTO `area` VALUES ('21', '河西区', '2');
INSERT INTO `area` VALUES ('22', '南开区', '2');
INSERT INTO `area` VALUES ('23', '河北区', '2');
INSERT INTO `area` VALUES ('24', '红桥区', '2');
INSERT INTO `area` VALUES ('25', '塘沽区', '2');
INSERT INTO `area` VALUES ('26', '汉沽区', '2');
INSERT INTO `area` VALUES ('27', '大港区', '2');
INSERT INTO `area` VALUES ('28', '东丽区', '2');
INSERT INTO `area` VALUES ('29', '西青区', '2');
INSERT INTO `area` VALUES ('30', '津南区', '2');
INSERT INTO `area` VALUES ('31', '北辰区', '2');
INSERT INTO `area` VALUES ('32', '武清区', '2');
INSERT INTO `area` VALUES ('33', '宝坻区', '2');
INSERT INTO `area` VALUES ('34', '宁河县', '2');
INSERT INTO `area` VALUES ('35', '静海县', '2');
INSERT INTO `area` VALUES ('36', '蓟县', '2');
INSERT INTO `area` VALUES ('37', '长安区', '3');
INSERT INTO `area` VALUES ('38', '桥东区', '3');
INSERT INTO `area` VALUES ('39', '桥西区', '3');
INSERT INTO `area` VALUES ('40', '新华区', '3');
INSERT INTO `area` VALUES ('41', '井陉矿区', '3');
INSERT INTO `area` VALUES ('42', '裕华区', '3');
INSERT INTO `area` VALUES ('43', '井陉县', '3');
INSERT INTO `area` VALUES ('44', '正定县', '3');
INSERT INTO `area` VALUES ('45', '栾城县', '3');
INSERT INTO `area` VALUES ('46', '行唐县', '3');
INSERT INTO `area` VALUES ('47', '灵寿县', '3');
INSERT INTO `area` VALUES ('48', '高邑县', '3');
INSERT INTO `area` VALUES ('49', '深泽县', '3');
INSERT INTO `area` VALUES ('50', '赞皇县', '3');
INSERT INTO `area` VALUES ('51', '无极县', '3');
INSERT INTO `area` VALUES ('52', '平山县', '3');
INSERT INTO `area` VALUES ('53', '元氏县', '3');
INSERT INTO `area` VALUES ('54', '赵县', '3');
INSERT INTO `area` VALUES ('55', '辛集市', '3');
INSERT INTO `area` VALUES ('56', '藁城市', '3');
INSERT INTO `area` VALUES ('57', '晋州市', '3');
INSERT INTO `area` VALUES ('58', '新乐市', '3');
INSERT INTO `area` VALUES ('59', '鹿泉市', '3');
INSERT INTO `area` VALUES ('60', '路南区', '4');
INSERT INTO `area` VALUES ('61', '路北区', '4');
INSERT INTO `area` VALUES ('62', '古冶区', '4');
INSERT INTO `area` VALUES ('63', '开平区', '4');
INSERT INTO `area` VALUES ('64', '丰南区', '4');
INSERT INTO `area` VALUES ('65', '丰润区', '4');
INSERT INTO `area` VALUES ('66', '滦县', '4');
INSERT INTO `area` VALUES ('67', '滦南县', '4');
INSERT INTO `area` VALUES ('68', '乐亭县', '4');
INSERT INTO `area` VALUES ('69', '迁西县', '4');
INSERT INTO `area` VALUES ('70', '玉田县', '4');
INSERT INTO `area` VALUES ('71', '唐海县', '4');
INSERT INTO `area` VALUES ('72', '遵化市', '4');
INSERT INTO `area` VALUES ('73', '迁安市', '4');
INSERT INTO `area` VALUES ('74', '海港区', '5');
INSERT INTO `area` VALUES ('75', '山海关区', '5');
INSERT INTO `area` VALUES ('76', '北戴河区', '5');
INSERT INTO `area` VALUES ('77', '青龙满族自治县', '5');
INSERT INTO `area` VALUES ('78', '昌黎县', '5');
INSERT INTO `area` VALUES ('79', '抚宁县', '5');
INSERT INTO `area` VALUES ('80', '卢龙县', '5');
INSERT INTO `area` VALUES ('81', '邯山区', '6');
INSERT INTO `area` VALUES ('82', '丛台区', '6');
INSERT INTO `area` VALUES ('83', '复兴区', '6');
INSERT INTO `area` VALUES ('84', '峰峰矿区', '6');
INSERT INTO `area` VALUES ('85', '邯郸县', '6');
INSERT INTO `area` VALUES ('86', '临漳县', '6');
INSERT INTO `area` VALUES ('87', '成安县', '6');
INSERT INTO `area` VALUES ('88', '大名县', '6');
INSERT INTO `area` VALUES ('89', '涉县', '6');
INSERT INTO `area` VALUES ('90', '磁县', '6');
INSERT INTO `area` VALUES ('91', '肥乡县', '6');
INSERT INTO `area` VALUES ('92', '永年县', '6');
INSERT INTO `area` VALUES ('93', '邱县', '6');
INSERT INTO `area` VALUES ('94', '鸡泽县', '6');
INSERT INTO `area` VALUES ('95', '广平县', '6');
INSERT INTO `area` VALUES ('96', '馆陶县', '6');
INSERT INTO `area` VALUES ('97', '魏县', '6');
INSERT INTO `area` VALUES ('98', '曲周县', '6');
INSERT INTO `area` VALUES ('99', '武安市', '6');
INSERT INTO `area` VALUES ('100', '桥东区', '7');
INSERT INTO `area` VALUES ('101', '桥西区', '7');
INSERT INTO `area` VALUES ('102', '邢台县', '7');
INSERT INTO `area` VALUES ('103', '临城县', '7');
INSERT INTO `area` VALUES ('104', '内丘县', '7');
INSERT INTO `area` VALUES ('105', '柏乡县', '7');
INSERT INTO `area` VALUES ('106', '隆尧县', '7');
INSERT INTO `area` VALUES ('107', '任县', '7');
INSERT INTO `area` VALUES ('108', '南和县', '7');
INSERT INTO `area` VALUES ('109', '宁晋县', '7');
INSERT INTO `area` VALUES ('110', '巨鹿县', '7');
INSERT INTO `area` VALUES ('111', '新河县', '7');
INSERT INTO `area` VALUES ('112', '广宗县', '7');
INSERT INTO `area` VALUES ('113', '平乡县', '7');
INSERT INTO `area` VALUES ('114', '威县', '7');
INSERT INTO `area` VALUES ('115', '清河县', '7');
INSERT INTO `area` VALUES ('116', '临西县', '7');
INSERT INTO `area` VALUES ('117', '南宫市', '7');
INSERT INTO `area` VALUES ('118', '沙河市', '7');
INSERT INTO `area` VALUES ('119', '新市区', '8');
INSERT INTO `area` VALUES ('120', '北市区', '8');
INSERT INTO `area` VALUES ('121', '南市区', '8');
INSERT INTO `area` VALUES ('122', '满城县', '8');
INSERT INTO `area` VALUES ('123', '清苑县', '8');
INSERT INTO `area` VALUES ('124', '涞水县', '8');
INSERT INTO `area` VALUES ('125', '阜平县', '8');
INSERT INTO `area` VALUES ('126', '徐水县', '8');
INSERT INTO `area` VALUES ('127', '定兴县', '8');
INSERT INTO `area` VALUES ('128', '唐县', '8');
INSERT INTO `area` VALUES ('129', '高阳县', '8');
INSERT INTO `area` VALUES ('130', '容城县', '8');
INSERT INTO `area` VALUES ('131', '涞源县', '8');
INSERT INTO `area` VALUES ('132', '望都县', '8');
INSERT INTO `area` VALUES ('133', '安新县', '8');
INSERT INTO `area` VALUES ('134', '易县', '8');
INSERT INTO `area` VALUES ('135', '曲阳县', '8');
INSERT INTO `area` VALUES ('136', '蠡县', '8');
INSERT INTO `area` VALUES ('137', '顺平县', '8');
INSERT INTO `area` VALUES ('138', '博野县', '8');
INSERT INTO `area` VALUES ('139', '雄县', '8');
INSERT INTO `area` VALUES ('140', '涿州市', '8');
INSERT INTO `area` VALUES ('141', '定州市', '8');
INSERT INTO `area` VALUES ('142', '安国市', '8');
INSERT INTO `area` VALUES ('143', '高碑店市', '8');
INSERT INTO `area` VALUES ('144', '桥东区', '9');
INSERT INTO `area` VALUES ('145', '桥西区', '9');
INSERT INTO `area` VALUES ('146', '宣化区', '9');
INSERT INTO `area` VALUES ('147', '下花园区', '9');
INSERT INTO `area` VALUES ('148', '宣化县', '9');
INSERT INTO `area` VALUES ('149', '张北县', '9');
INSERT INTO `area` VALUES ('150', '康保县', '9');
INSERT INTO `area` VALUES ('151', '沽源县', '9');
INSERT INTO `area` VALUES ('152', '尚义县', '9');
INSERT INTO `area` VALUES ('153', '蔚县', '9');
INSERT INTO `area` VALUES ('154', '阳原县', '9');
INSERT INTO `area` VALUES ('155', '怀安县', '9');
INSERT INTO `area` VALUES ('156', '万全县', '9');
INSERT INTO `area` VALUES ('157', '怀来县', '9');
INSERT INTO `area` VALUES ('158', '涿鹿县', '9');
INSERT INTO `area` VALUES ('159', '赤城县', '9');
INSERT INTO `area` VALUES ('160', '崇礼县', '9');
INSERT INTO `area` VALUES ('161', '双桥区', '10');
INSERT INTO `area` VALUES ('162', '双滦区', '10');
INSERT INTO `area` VALUES ('163', '鹰手营子矿区', '10');
INSERT INTO `area` VALUES ('164', '承德县', '10');
INSERT INTO `area` VALUES ('165', '兴隆县', '10');
INSERT INTO `area` VALUES ('166', '平泉县', '10');
INSERT INTO `area` VALUES ('167', '滦平县', '10');
INSERT INTO `area` VALUES ('168', '隆化县', '10');
INSERT INTO `area` VALUES ('169', '丰宁满族自治县', '10');
INSERT INTO `area` VALUES ('170', '宽城满族自治县', '10');
INSERT INTO `area` VALUES ('171', '围场满族蒙古族自治县', '10');
INSERT INTO `area` VALUES ('172', '新华区', '11');
INSERT INTO `area` VALUES ('173', '运河区', '11');
INSERT INTO `area` VALUES ('174', '沧县', '11');
INSERT INTO `area` VALUES ('175', '青县', '11');
INSERT INTO `area` VALUES ('176', '东光县', '11');
INSERT INTO `area` VALUES ('177', '海兴县', '11');
INSERT INTO `area` VALUES ('178', '盐山县', '11');
INSERT INTO `area` VALUES ('179', '肃宁县', '11');
INSERT INTO `area` VALUES ('180', '南皮县', '11');
INSERT INTO `area` VALUES ('181', '吴桥县', '11');
INSERT INTO `area` VALUES ('182', '献县', '11');
INSERT INTO `area` VALUES ('183', '孟村回族自治县', '11');
INSERT INTO `area` VALUES ('184', '泊头市', '11');
INSERT INTO `area` VALUES ('185', '任丘市', '11');
INSERT INTO `area` VALUES ('186', '黄骅市', '11');
INSERT INTO `area` VALUES ('187', '河间市', '11');
INSERT INTO `area` VALUES ('188', '安次区', '12');
INSERT INTO `area` VALUES ('189', '广阳区', '12');
INSERT INTO `area` VALUES ('190', '固安县', '12');
INSERT INTO `area` VALUES ('191', '永清县', '12');
INSERT INTO `area` VALUES ('192', '香河县', '12');
INSERT INTO `area` VALUES ('193', '大城县', '12');
INSERT INTO `area` VALUES ('194', '文安县', '12');
INSERT INTO `area` VALUES ('195', '大厂回族自治县', '12');
INSERT INTO `area` VALUES ('196', '霸州市', '12');
INSERT INTO `area` VALUES ('197', '三河市', '12');
INSERT INTO `area` VALUES ('198', '桃城区', '13');
INSERT INTO `area` VALUES ('199', '枣强县', '13');
INSERT INTO `area` VALUES ('200', '武邑县', '13');
INSERT INTO `area` VALUES ('201', '武强县', '13');
INSERT INTO `area` VALUES ('202', '饶阳县', '13');
INSERT INTO `area` VALUES ('203', '安平县', '13');
INSERT INTO `area` VALUES ('204', '故城县', '13');
INSERT INTO `area` VALUES ('205', '景县', '13');
INSERT INTO `area` VALUES ('206', '阜城县', '13');
INSERT INTO `area` VALUES ('207', '冀州市', '13');
INSERT INTO `area` VALUES ('208', '深州市', '13');
INSERT INTO `area` VALUES ('209', '小店区', '14');
INSERT INTO `area` VALUES ('210', '迎泽区', '14');
INSERT INTO `area` VALUES ('211', '杏花岭区', '14');
INSERT INTO `area` VALUES ('212', '尖草坪区', '14');
INSERT INTO `area` VALUES ('213', '万柏林区', '14');
INSERT INTO `area` VALUES ('214', '晋源区', '14');
INSERT INTO `area` VALUES ('215', '清徐县', '14');
INSERT INTO `area` VALUES ('216', '阳曲县', '14');
INSERT INTO `area` VALUES ('217', '娄烦县', '14');
INSERT INTO `area` VALUES ('218', '古交市', '14');
INSERT INTO `area` VALUES ('219', '城区', '15');
INSERT INTO `area` VALUES ('220', '矿区', '15');
INSERT INTO `area` VALUES ('221', '南郊区', '15');
INSERT INTO `area` VALUES ('222', '新荣区', '15');
INSERT INTO `area` VALUES ('223', '阳高县', '15');
INSERT INTO `area` VALUES ('224', '天镇县', '15');
INSERT INTO `area` VALUES ('225', '广灵县', '15');
INSERT INTO `area` VALUES ('226', '灵丘县', '15');
INSERT INTO `area` VALUES ('227', '浑源县', '15');
INSERT INTO `area` VALUES ('228', '左云县', '15');
INSERT INTO `area` VALUES ('229', '大同县', '15');
INSERT INTO `area` VALUES ('230', '城区', '16');
INSERT INTO `area` VALUES ('231', '矿区', '16');
INSERT INTO `area` VALUES ('232', '郊区', '16');
INSERT INTO `area` VALUES ('233', '平定县', '16');
INSERT INTO `area` VALUES ('234', '盂县', '16');
INSERT INTO `area` VALUES ('235', '城区', '17');
INSERT INTO `area` VALUES ('236', '郊区', '17');
INSERT INTO `area` VALUES ('237', '长治县', '17');
INSERT INTO `area` VALUES ('238', '襄垣县', '17');
INSERT INTO `area` VALUES ('239', '屯留县', '17');
INSERT INTO `area` VALUES ('240', '平顺县', '17');
INSERT INTO `area` VALUES ('241', '黎城县', '17');
INSERT INTO `area` VALUES ('242', '壶关县', '17');
INSERT INTO `area` VALUES ('243', '长子县', '17');
INSERT INTO `area` VALUES ('244', '武乡县', '17');
INSERT INTO `area` VALUES ('245', '沁县', '17');
INSERT INTO `area` VALUES ('246', '沁源县', '17');
INSERT INTO `area` VALUES ('247', '潞城市', '17');
INSERT INTO `area` VALUES ('248', '城区', '18');
INSERT INTO `area` VALUES ('249', '沁水县', '18');
INSERT INTO `area` VALUES ('250', '阳城县', '18');
INSERT INTO `area` VALUES ('251', '陵川县', '18');
INSERT INTO `area` VALUES ('252', '泽州县', '18');
INSERT INTO `area` VALUES ('253', '高平市', '18');
INSERT INTO `area` VALUES ('254', '朔城区', '19');
INSERT INTO `area` VALUES ('255', '平鲁区', '19');
INSERT INTO `area` VALUES ('256', '山阴县', '19');
INSERT INTO `area` VALUES ('257', '应县', '19');
INSERT INTO `area` VALUES ('258', '右玉县', '19');
INSERT INTO `area` VALUES ('259', '怀仁县', '19');
INSERT INTO `area` VALUES ('260', '榆次区', '20');
INSERT INTO `area` VALUES ('261', '榆社县', '20');
INSERT INTO `area` VALUES ('262', '左权县', '20');
INSERT INTO `area` VALUES ('263', '和顺县', '20');
INSERT INTO `area` VALUES ('264', '昔阳县', '20');
INSERT INTO `area` VALUES ('265', '寿阳县', '20');
INSERT INTO `area` VALUES ('266', '太谷县', '20');
INSERT INTO `area` VALUES ('267', '祁县', '20');
INSERT INTO `area` VALUES ('268', '平遥县', '20');
INSERT INTO `area` VALUES ('269', '灵石县', '20');
INSERT INTO `area` VALUES ('270', '介休市', '20');
INSERT INTO `area` VALUES ('271', '盐湖区', '21');
INSERT INTO `area` VALUES ('272', '临猗县', '21');
INSERT INTO `area` VALUES ('273', '万荣县', '21');
INSERT INTO `area` VALUES ('274', '闻喜县', '21');
INSERT INTO `area` VALUES ('275', '稷山县', '21');
INSERT INTO `area` VALUES ('276', '新绛县', '21');
INSERT INTO `area` VALUES ('277', '绛县', '21');
INSERT INTO `area` VALUES ('278', '垣曲县', '21');
INSERT INTO `area` VALUES ('279', '夏县', '21');
INSERT INTO `area` VALUES ('280', '平陆县', '21');
INSERT INTO `area` VALUES ('281', '芮城县', '21');
INSERT INTO `area` VALUES ('282', '永济市', '21');
INSERT INTO `area` VALUES ('283', '河津市', '21');
INSERT INTO `area` VALUES ('284', '忻府区', '22');
INSERT INTO `area` VALUES ('285', '定襄县', '22');
INSERT INTO `area` VALUES ('286', '五台县', '22');
INSERT INTO `area` VALUES ('287', '代县', '22');
INSERT INTO `area` VALUES ('288', '繁峙县', '22');
INSERT INTO `area` VALUES ('289', '宁武县', '22');
INSERT INTO `area` VALUES ('290', '静乐县', '22');
INSERT INTO `area` VALUES ('291', '神池县', '22');
INSERT INTO `area` VALUES ('292', '五寨县', '22');
INSERT INTO `area` VALUES ('293', '岢岚县', '22');
INSERT INTO `area` VALUES ('294', '河曲县', '22');
INSERT INTO `area` VALUES ('295', '保德县', '22');
INSERT INTO `area` VALUES ('296', '偏关县', '22');
INSERT INTO `area` VALUES ('297', '原平市', '22');
INSERT INTO `area` VALUES ('298', '尧都区', '23');
INSERT INTO `area` VALUES ('299', '曲沃县', '23');
INSERT INTO `area` VALUES ('300', '翼城县', '23');
INSERT INTO `area` VALUES ('301', '襄汾县', '23');
INSERT INTO `area` VALUES ('302', '洪洞县', '23');
INSERT INTO `area` VALUES ('303', '古县', '23');
INSERT INTO `area` VALUES ('304', '安泽县', '23');
INSERT INTO `area` VALUES ('305', '浮山县', '23');
INSERT INTO `area` VALUES ('306', '吉县', '23');
INSERT INTO `area` VALUES ('307', '乡宁县', '23');
INSERT INTO `area` VALUES ('308', '大宁县', '23');
INSERT INTO `area` VALUES ('309', '隰县', '23');
INSERT INTO `area` VALUES ('310', '永和县', '23');
INSERT INTO `area` VALUES ('311', '蒲县', '23');
INSERT INTO `area` VALUES ('312', '汾西县', '23');
INSERT INTO `area` VALUES ('313', '侯马市', '23');
INSERT INTO `area` VALUES ('314', '霍州市', '23');
INSERT INTO `area` VALUES ('315', '离石区', '24');
INSERT INTO `area` VALUES ('316', '文水县', '24');
INSERT INTO `area` VALUES ('317', '交城县', '24');
INSERT INTO `area` VALUES ('318', '兴县', '24');
INSERT INTO `area` VALUES ('319', '临县', '24');
INSERT INTO `area` VALUES ('320', '柳林县', '24');
INSERT INTO `area` VALUES ('321', '石楼县', '24');
INSERT INTO `area` VALUES ('322', '岚县', '24');
INSERT INTO `area` VALUES ('323', '方山县', '24');
INSERT INTO `area` VALUES ('324', '中阳县', '24');
INSERT INTO `area` VALUES ('325', '交口县', '24');
INSERT INTO `area` VALUES ('326', '孝义市', '24');
INSERT INTO `area` VALUES ('327', '汾阳市', '24');
INSERT INTO `area` VALUES ('328', '新城区', '25');
INSERT INTO `area` VALUES ('329', '回民区', '25');
INSERT INTO `area` VALUES ('330', '玉泉区', '25');
INSERT INTO `area` VALUES ('331', '赛罕区', '25');
INSERT INTO `area` VALUES ('332', '土默特左旗', '25');
INSERT INTO `area` VALUES ('333', '托克托县', '25');
INSERT INTO `area` VALUES ('334', '和林格尔县', '25');
INSERT INTO `area` VALUES ('335', '清水河县', '25');
INSERT INTO `area` VALUES ('336', '武川县', '25');
INSERT INTO `area` VALUES ('337', '东河区', '26');
INSERT INTO `area` VALUES ('338', '昆都仑区', '26');
INSERT INTO `area` VALUES ('339', '青山区', '26');
INSERT INTO `area` VALUES ('340', '石拐区', '26');
INSERT INTO `area` VALUES ('341', '白云矿区', '26');
INSERT INTO `area` VALUES ('342', '九原区', '26');
INSERT INTO `area` VALUES ('343', '土默特右旗', '26');
INSERT INTO `area` VALUES ('344', '固阳县', '26');
INSERT INTO `area` VALUES ('345', '达尔罕茂明安联合旗', '26');
INSERT INTO `area` VALUES ('346', '海勃湾区', '27');
INSERT INTO `area` VALUES ('347', '海南区', '27');
INSERT INTO `area` VALUES ('348', '乌达区', '27');
INSERT INTO `area` VALUES ('349', '红山区', '28');
INSERT INTO `area` VALUES ('350', '元宝山区', '28');
INSERT INTO `area` VALUES ('351', '松山区', '28');
INSERT INTO `area` VALUES ('352', '阿鲁科尔沁旗', '28');
INSERT INTO `area` VALUES ('353', '巴林左旗', '28');
INSERT INTO `area` VALUES ('354', '巴林右旗', '28');
INSERT INTO `area` VALUES ('355', '林西县', '28');
INSERT INTO `area` VALUES ('356', '克什克腾旗', '28');
INSERT INTO `area` VALUES ('357', '翁牛特旗', '28');
INSERT INTO `area` VALUES ('358', '喀喇沁旗', '28');
INSERT INTO `area` VALUES ('359', '宁城县', '28');
INSERT INTO `area` VALUES ('360', '敖汉旗', '28');
INSERT INTO `area` VALUES ('361', '科尔沁区', '29');
INSERT INTO `area` VALUES ('362', '科尔沁左翼中旗', '29');
INSERT INTO `area` VALUES ('363', '科尔沁左翼后旗', '29');
INSERT INTO `area` VALUES ('364', '开鲁县', '29');
INSERT INTO `area` VALUES ('365', '库伦旗', '29');
INSERT INTO `area` VALUES ('366', '奈曼旗', '29');
INSERT INTO `area` VALUES ('367', '扎鲁特旗', '29');
INSERT INTO `area` VALUES ('368', '霍林郭勒市', '29');
INSERT INTO `area` VALUES ('369', '东胜区', '30');
INSERT INTO `area` VALUES ('370', '达拉特旗', '30');
INSERT INTO `area` VALUES ('371', '准格尔旗', '30');
INSERT INTO `area` VALUES ('372', '鄂托克前旗', '30');
INSERT INTO `area` VALUES ('373', '鄂托克旗', '30');
INSERT INTO `area` VALUES ('374', '杭锦旗', '30');
INSERT INTO `area` VALUES ('375', '乌审旗', '30');
INSERT INTO `area` VALUES ('376', '伊金霍洛旗', '30');
INSERT INTO `area` VALUES ('377', '海拉尔区', '31');
INSERT INTO `area` VALUES ('378', '阿荣旗', '31');
INSERT INTO `area` VALUES ('379', '莫力达瓦达斡尔族自治旗', '31');
INSERT INTO `area` VALUES ('380', '鄂伦春自治旗', '31');
INSERT INTO `area` VALUES ('381', '鄂温克族自治旗', '31');
INSERT INTO `area` VALUES ('382', '陈巴尔虎旗', '31');
INSERT INTO `area` VALUES ('383', '新巴尔虎左旗', '31');
INSERT INTO `area` VALUES ('384', '新巴尔虎右旗', '31');
INSERT INTO `area` VALUES ('385', '满洲里市', '31');
INSERT INTO `area` VALUES ('386', '牙克石市', '31');
INSERT INTO `area` VALUES ('387', '扎兰屯市', '31');
INSERT INTO `area` VALUES ('388', '额尔古纳市', '31');
INSERT INTO `area` VALUES ('389', '根河市', '31');
INSERT INTO `area` VALUES ('390', '临河区', '32');
INSERT INTO `area` VALUES ('391', '五原县', '32');
INSERT INTO `area` VALUES ('392', '磴口县', '32');
INSERT INTO `area` VALUES ('393', '乌拉特前旗', '32');
INSERT INTO `area` VALUES ('394', '乌拉特中旗', '32');
INSERT INTO `area` VALUES ('395', '乌拉特后旗', '32');
INSERT INTO `area` VALUES ('396', '杭锦后旗', '32');
INSERT INTO `area` VALUES ('397', '集宁区', '33');
INSERT INTO `area` VALUES ('398', '卓资县', '33');
INSERT INTO `area` VALUES ('399', '化德县', '33');
INSERT INTO `area` VALUES ('400', '商都县', '33');
INSERT INTO `area` VALUES ('401', '兴和县', '33');
INSERT INTO `area` VALUES ('402', '凉城县', '33');
INSERT INTO `area` VALUES ('403', '察哈尔右翼前旗', '33');
INSERT INTO `area` VALUES ('404', '察哈尔右翼中旗', '33');
INSERT INTO `area` VALUES ('405', '察哈尔右翼后旗', '33');
INSERT INTO `area` VALUES ('406', '四子王旗', '33');
INSERT INTO `area` VALUES ('407', '丰镇市', '33');
INSERT INTO `area` VALUES ('408', '乌兰浩特市', '34');
INSERT INTO `area` VALUES ('409', '阿尔山市', '34');
INSERT INTO `area` VALUES ('410', '科尔沁右翼前旗', '34');
INSERT INTO `area` VALUES ('411', '科尔沁右翼中旗', '34');
INSERT INTO `area` VALUES ('412', '扎赉特旗', '34');
INSERT INTO `area` VALUES ('413', '突泉县', '34');
INSERT INTO `area` VALUES ('414', '二连浩特市', '35');
INSERT INTO `area` VALUES ('415', '锡林浩特市', '35');
INSERT INTO `area` VALUES ('416', '阿巴嘎旗', '35');
INSERT INTO `area` VALUES ('417', '苏尼特左旗', '35');
INSERT INTO `area` VALUES ('418', '苏尼特右旗', '35');
INSERT INTO `area` VALUES ('419', '东乌珠穆沁旗', '35');
INSERT INTO `area` VALUES ('420', '西乌珠穆沁旗', '35');
INSERT INTO `area` VALUES ('421', '太仆寺旗', '35');
INSERT INTO `area` VALUES ('422', '镶黄旗', '35');
INSERT INTO `area` VALUES ('423', '正镶白旗', '35');
INSERT INTO `area` VALUES ('424', '正蓝旗', '35');
INSERT INTO `area` VALUES ('425', '多伦县', '35');
INSERT INTO `area` VALUES ('426', '阿拉善左旗', '36');
INSERT INTO `area` VALUES ('427', '阿拉善右旗', '36');
INSERT INTO `area` VALUES ('428', '额济纳旗', '36');
INSERT INTO `area` VALUES ('429', '和平区', '37');
INSERT INTO `area` VALUES ('430', '沈河区', '37');
INSERT INTO `area` VALUES ('431', '大东区', '37');
INSERT INTO `area` VALUES ('432', '皇姑区', '37');
INSERT INTO `area` VALUES ('433', '铁西区', '37');
INSERT INTO `area` VALUES ('434', '苏家屯区', '37');
INSERT INTO `area` VALUES ('435', '东陵区', '37');
INSERT INTO `area` VALUES ('436', '新城子区', '37');
INSERT INTO `area` VALUES ('437', '于洪区', '37');
INSERT INTO `area` VALUES ('438', '辽中县', '37');
INSERT INTO `area` VALUES ('439', '康平县', '37');
INSERT INTO `area` VALUES ('440', '法库县', '37');
INSERT INTO `area` VALUES ('441', '新民市', '37');
INSERT INTO `area` VALUES ('442', '中山区', '38');
INSERT INTO `area` VALUES ('443', '西岗区', '38');
INSERT INTO `area` VALUES ('444', '沙河口区', '38');
INSERT INTO `area` VALUES ('445', '甘井子区', '38');
INSERT INTO `area` VALUES ('446', '旅顺口区', '38');
INSERT INTO `area` VALUES ('447', '金州区', '38');
INSERT INTO `area` VALUES ('448', '长海县', '38');
INSERT INTO `area` VALUES ('449', '瓦房店市', '38');
INSERT INTO `area` VALUES ('450', '普兰店市', '38');
INSERT INTO `area` VALUES ('451', '庄河市', '38');
INSERT INTO `area` VALUES ('452', '铁东区', '39');
INSERT INTO `area` VALUES ('453', '铁西区', '39');
INSERT INTO `area` VALUES ('454', '立山区', '39');
INSERT INTO `area` VALUES ('455', '千山区', '39');
INSERT INTO `area` VALUES ('456', '台安县', '39');
INSERT INTO `area` VALUES ('457', '岫岩满族自治县', '39');
INSERT INTO `area` VALUES ('458', '海城市', '39');
INSERT INTO `area` VALUES ('459', '新抚区', '40');
INSERT INTO `area` VALUES ('460', '东洲区', '40');
INSERT INTO `area` VALUES ('461', '望花区', '40');
INSERT INTO `area` VALUES ('462', '顺城区', '40');
INSERT INTO `area` VALUES ('463', '抚顺县', '40');
INSERT INTO `area` VALUES ('464', '新宾满族自治县', '40');
INSERT INTO `area` VALUES ('465', '清原满族自治县', '40');
INSERT INTO `area` VALUES ('466', '平山区', '41');
INSERT INTO `area` VALUES ('467', '溪湖区', '41');
INSERT INTO `area` VALUES ('468', '明山区', '41');
INSERT INTO `area` VALUES ('469', '南芬区', '41');
INSERT INTO `area` VALUES ('470', '本溪满族自治县', '41');
INSERT INTO `area` VALUES ('471', '桓仁满族自治县', '41');
INSERT INTO `area` VALUES ('472', '元宝区', '42');
INSERT INTO `area` VALUES ('473', '振兴区', '42');
INSERT INTO `area` VALUES ('474', '振安区', '42');
INSERT INTO `area` VALUES ('475', '宽甸满族自治县', '42');
INSERT INTO `area` VALUES ('476', '东港市', '42');
INSERT INTO `area` VALUES ('477', '凤城市', '42');
INSERT INTO `area` VALUES ('478', '古塔区', '43');
INSERT INTO `area` VALUES ('479', '凌河区', '43');
INSERT INTO `area` VALUES ('480', '太和区', '43');
INSERT INTO `area` VALUES ('481', '黑山县', '43');
INSERT INTO `area` VALUES ('482', '义县', '43');
INSERT INTO `area` VALUES ('483', '凌海市', '43');
INSERT INTO `area` VALUES ('484', '北宁市', '43');
INSERT INTO `area` VALUES ('485', '站前区', '44');
INSERT INTO `area` VALUES ('486', '西市区', '44');
INSERT INTO `area` VALUES ('487', '鲅鱼圈区', '44');
INSERT INTO `area` VALUES ('488', '老边区', '44');
INSERT INTO `area` VALUES ('489', '盖州市', '44');
INSERT INTO `area` VALUES ('490', '大石桥市', '44');
INSERT INTO `area` VALUES ('491', '海州区', '45');
INSERT INTO `area` VALUES ('492', '新邱区', '45');
INSERT INTO `area` VALUES ('493', '太平区', '45');
INSERT INTO `area` VALUES ('494', '清河门区', '45');
INSERT INTO `area` VALUES ('495', '细河区', '45');
INSERT INTO `area` VALUES ('496', '阜新蒙古族自治县', '45');
INSERT INTO `area` VALUES ('497', '彰武县', '45');
INSERT INTO `area` VALUES ('498', '白塔区', '46');
INSERT INTO `area` VALUES ('499', '文圣区', '46');
INSERT INTO `area` VALUES ('500', '宏伟区', '46');
INSERT INTO `area` VALUES ('501', '弓长岭区', '46');
INSERT INTO `area` VALUES ('502', '太子河区', '46');
INSERT INTO `area` VALUES ('503', '辽阳县', '46');
INSERT INTO `area` VALUES ('504', '灯塔市', '46');
INSERT INTO `area` VALUES ('505', '双台子区', '47');
INSERT INTO `area` VALUES ('506', '兴隆台区', '47');
INSERT INTO `area` VALUES ('507', '大洼县', '47');
INSERT INTO `area` VALUES ('508', '盘山县', '47');
INSERT INTO `area` VALUES ('509', '银州区', '48');
INSERT INTO `area` VALUES ('510', '清河区', '48');
INSERT INTO `area` VALUES ('511', '铁岭县', '48');
INSERT INTO `area` VALUES ('512', '西丰县', '48');
INSERT INTO `area` VALUES ('513', '昌图县', '48');
INSERT INTO `area` VALUES ('514', '调兵山市', '48');
INSERT INTO `area` VALUES ('515', '开原市', '48');
INSERT INTO `area` VALUES ('516', '双塔区', '49');
INSERT INTO `area` VALUES ('517', '龙城区', '49');
INSERT INTO `area` VALUES ('518', '朝阳县', '49');
INSERT INTO `area` VALUES ('519', '建平县', '49');
INSERT INTO `area` VALUES ('520', '喀喇沁左翼蒙古族自治县', '49');
INSERT INTO `area` VALUES ('521', '北票市', '49');
INSERT INTO `area` VALUES ('522', '凌源市', '49');
INSERT INTO `area` VALUES ('523', '连山区', '50');
INSERT INTO `area` VALUES ('524', '龙港区', '50');
INSERT INTO `area` VALUES ('525', '南票区', '50');
INSERT INTO `area` VALUES ('526', '绥中县', '50');
INSERT INTO `area` VALUES ('527', '建昌县', '50');
INSERT INTO `area` VALUES ('528', '兴城市', '50');
INSERT INTO `area` VALUES ('529', '南关区', '51');
INSERT INTO `area` VALUES ('530', '宽城区', '51');
INSERT INTO `area` VALUES ('531', '朝阳区', '51');
INSERT INTO `area` VALUES ('532', '二道区', '51');
INSERT INTO `area` VALUES ('533', '绿园区', '51');
INSERT INTO `area` VALUES ('534', '双阳区', '51');
INSERT INTO `area` VALUES ('535', '农安县', '51');
INSERT INTO `area` VALUES ('536', '九台市', '51');
INSERT INTO `area` VALUES ('537', '榆树市', '51');
INSERT INTO `area` VALUES ('538', '德惠市', '51');
INSERT INTO `area` VALUES ('539', '昌邑区', '52');
INSERT INTO `area` VALUES ('540', '龙潭区', '52');
INSERT INTO `area` VALUES ('541', '船营区', '52');
INSERT INTO `area` VALUES ('542', '丰满区', '52');
INSERT INTO `area` VALUES ('543', '永吉县', '52');
INSERT INTO `area` VALUES ('544', '蛟河市', '52');
INSERT INTO `area` VALUES ('545', '桦甸市', '52');
INSERT INTO `area` VALUES ('546', '舒兰市', '52');
INSERT INTO `area` VALUES ('547', '磐石市', '52');
INSERT INTO `area` VALUES ('548', '铁西区', '53');
INSERT INTO `area` VALUES ('549', '铁东区', '53');
INSERT INTO `area` VALUES ('550', '梨树县', '53');
INSERT INTO `area` VALUES ('551', '伊通满族自治县', '53');
INSERT INTO `area` VALUES ('552', '公主岭市', '53');
INSERT INTO `area` VALUES ('553', '双辽市', '53');
INSERT INTO `area` VALUES ('554', '龙山区', '54');
INSERT INTO `area` VALUES ('555', '西安区', '54');
INSERT INTO `area` VALUES ('556', '东丰县', '54');
INSERT INTO `area` VALUES ('557', '东辽县', '54');
INSERT INTO `area` VALUES ('558', '东昌区', '55');
INSERT INTO `area` VALUES ('559', '二道江区', '55');
INSERT INTO `area` VALUES ('560', '通化县', '55');
INSERT INTO `area` VALUES ('561', '辉南县', '55');
INSERT INTO `area` VALUES ('562', '柳河县', '55');
INSERT INTO `area` VALUES ('563', '梅河口市', '55');
INSERT INTO `area` VALUES ('564', '集安市', '55');
INSERT INTO `area` VALUES ('565', '八道江区', '56');
INSERT INTO `area` VALUES ('566', '抚松县', '56');
INSERT INTO `area` VALUES ('567', '靖宇县', '56');
INSERT INTO `area` VALUES ('568', '长白朝鲜族自治县', '56');
INSERT INTO `area` VALUES ('569', '江源县', '56');
INSERT INTO `area` VALUES ('570', '临江市', '56');
INSERT INTO `area` VALUES ('571', '宁江区', '57');
INSERT INTO `area` VALUES ('572', '前郭尔罗斯蒙古族自治县', '57');
INSERT INTO `area` VALUES ('573', '长岭县', '57');
INSERT INTO `area` VALUES ('574', '乾安县', '57');
INSERT INTO `area` VALUES ('575', '扶余县', '57');
INSERT INTO `area` VALUES ('576', '洮北区', '58');
INSERT INTO `area` VALUES ('577', '镇赉县', '58');
INSERT INTO `area` VALUES ('578', '通榆县', '58');
INSERT INTO `area` VALUES ('579', '洮南市', '58');
INSERT INTO `area` VALUES ('580', '大安市', '58');
INSERT INTO `area` VALUES ('581', '延吉市', '59');
INSERT INTO `area` VALUES ('582', '图们市', '59');
INSERT INTO `area` VALUES ('583', '敦化市', '59');
INSERT INTO `area` VALUES ('584', '珲春市', '59');
INSERT INTO `area` VALUES ('585', '龙井市', '59');
INSERT INTO `area` VALUES ('586', '和龙市', '59');
INSERT INTO `area` VALUES ('587', '汪清县', '59');
INSERT INTO `area` VALUES ('588', '安图县', '59');
INSERT INTO `area` VALUES ('589', '道里区', '60');
INSERT INTO `area` VALUES ('590', '南岗区', '60');
INSERT INTO `area` VALUES ('591', '道外区', '60');
INSERT INTO `area` VALUES ('592', '香坊区', '60');
INSERT INTO `area` VALUES ('593', '动力区', '60');
INSERT INTO `area` VALUES ('594', '平房区', '60');
INSERT INTO `area` VALUES ('595', '松北区', '60');
INSERT INTO `area` VALUES ('596', '呼兰区', '60');
INSERT INTO `area` VALUES ('597', '依兰县', '60');
INSERT INTO `area` VALUES ('598', '方正县', '60');
INSERT INTO `area` VALUES ('599', '宾县', '60');
INSERT INTO `area` VALUES ('600', '巴彦县', '60');
INSERT INTO `area` VALUES ('601', '木兰县', '60');
INSERT INTO `area` VALUES ('602', '通河县', '60');
INSERT INTO `area` VALUES ('603', '延寿县', '60');
INSERT INTO `area` VALUES ('604', '阿城市', '60');
INSERT INTO `area` VALUES ('605', '双城市', '60');
INSERT INTO `area` VALUES ('606', '尚志市', '60');
INSERT INTO `area` VALUES ('607', '五常市', '60');
INSERT INTO `area` VALUES ('608', '龙沙区', '61');
INSERT INTO `area` VALUES ('609', '建华区', '61');
INSERT INTO `area` VALUES ('610', '铁锋区', '61');
INSERT INTO `area` VALUES ('611', '昂昂溪区', '61');
INSERT INTO `area` VALUES ('612', '富拉尔基区', '61');
INSERT INTO `area` VALUES ('613', '碾子山区', '61');
INSERT INTO `area` VALUES ('614', '梅里斯达斡尔族区', '61');
INSERT INTO `area` VALUES ('615', '龙江县', '61');
INSERT INTO `area` VALUES ('616', '依安县', '61');
INSERT INTO `area` VALUES ('617', '泰来县', '61');
INSERT INTO `area` VALUES ('618', '甘南县', '61');
INSERT INTO `area` VALUES ('619', '富裕县', '61');
INSERT INTO `area` VALUES ('620', '克山县', '61');
INSERT INTO `area` VALUES ('621', '克东县', '61');
INSERT INTO `area` VALUES ('622', '拜泉县', '61');
INSERT INTO `area` VALUES ('623', '讷河市', '61');
INSERT INTO `area` VALUES ('624', '鸡冠区', '62');
INSERT INTO `area` VALUES ('625', '恒山区', '62');
INSERT INTO `area` VALUES ('626', '滴道区', '62');
INSERT INTO `area` VALUES ('627', '梨树区', '62');
INSERT INTO `area` VALUES ('628', '城子河区', '62');
INSERT INTO `area` VALUES ('629', '麻山区', '62');
INSERT INTO `area` VALUES ('630', '鸡东县', '62');
INSERT INTO `area` VALUES ('631', '虎林市', '62');
INSERT INTO `area` VALUES ('632', '密山市', '62');
INSERT INTO `area` VALUES ('633', '向阳区', '63');
INSERT INTO `area` VALUES ('634', '工农区', '63');
INSERT INTO `area` VALUES ('635', '南山区', '63');
INSERT INTO `area` VALUES ('636', '兴安区', '63');
INSERT INTO `area` VALUES ('637', '东山区', '63');
INSERT INTO `area` VALUES ('638', '兴山区', '63');
INSERT INTO `area` VALUES ('639', '萝北县', '63');
INSERT INTO `area` VALUES ('640', '绥滨县', '63');
INSERT INTO `area` VALUES ('641', '尖山区', '64');
INSERT INTO `area` VALUES ('642', '岭东区', '64');
INSERT INTO `area` VALUES ('643', '四方台区', '64');
INSERT INTO `area` VALUES ('644', '宝山区', '64');
INSERT INTO `area` VALUES ('645', '集贤县', '64');
INSERT INTO `area` VALUES ('646', '友谊县', '64');
INSERT INTO `area` VALUES ('647', '宝清县', '64');
INSERT INTO `area` VALUES ('648', '饶河县', '64');
INSERT INTO `area` VALUES ('649', '萨尔图区', '65');
INSERT INTO `area` VALUES ('650', '龙凤区', '65');
INSERT INTO `area` VALUES ('651', '让胡路区', '65');
INSERT INTO `area` VALUES ('652', '红岗区', '65');
INSERT INTO `area` VALUES ('653', '大同区', '65');
INSERT INTO `area` VALUES ('654', '肇州县', '65');
INSERT INTO `area` VALUES ('655', '肇源县', '65');
INSERT INTO `area` VALUES ('656', '林甸县', '65');
INSERT INTO `area` VALUES ('657', '杜尔伯特蒙古族自治县', '65');
INSERT INTO `area` VALUES ('658', '伊春区', '66');
INSERT INTO `area` VALUES ('659', '南岔区', '66');
INSERT INTO `area` VALUES ('660', '友好区', '66');
INSERT INTO `area` VALUES ('661', '西林区', '66');
INSERT INTO `area` VALUES ('662', '翠峦区', '66');
INSERT INTO `area` VALUES ('663', '新青区', '66');
INSERT INTO `area` VALUES ('664', '美溪区', '66');
INSERT INTO `area` VALUES ('665', '金山屯区', '66');
INSERT INTO `area` VALUES ('666', '五营区', '66');
INSERT INTO `area` VALUES ('667', '乌马河区', '66');
INSERT INTO `area` VALUES ('668', '汤旺河区', '66');
INSERT INTO `area` VALUES ('669', '带岭区', '66');
INSERT INTO `area` VALUES ('670', '乌伊岭区', '66');
INSERT INTO `area` VALUES ('671', '红星区', '66');
INSERT INTO `area` VALUES ('672', '上甘岭区', '66');
INSERT INTO `area` VALUES ('673', '嘉荫县', '66');
INSERT INTO `area` VALUES ('674', '铁力市', '66');
INSERT INTO `area` VALUES ('675', '永红区', '67');
INSERT INTO `area` VALUES ('676', '向阳区', '67');
INSERT INTO `area` VALUES ('677', '前进区', '67');
INSERT INTO `area` VALUES ('678', '东风区', '67');
INSERT INTO `area` VALUES ('679', '郊区', '67');
INSERT INTO `area` VALUES ('680', '桦南县', '67');
INSERT INTO `area` VALUES ('681', '桦川县', '67');
INSERT INTO `area` VALUES ('682', '汤原县', '67');
INSERT INTO `area` VALUES ('683', '抚远县', '67');
INSERT INTO `area` VALUES ('684', '同江市', '67');
INSERT INTO `area` VALUES ('685', '富锦市', '67');
INSERT INTO `area` VALUES ('686', '新兴区', '68');
INSERT INTO `area` VALUES ('687', '桃山区', '68');
INSERT INTO `area` VALUES ('688', '茄子河区', '68');
INSERT INTO `area` VALUES ('689', '勃利县', '68');
INSERT INTO `area` VALUES ('690', '东安区', '69');
INSERT INTO `area` VALUES ('691', '阳明区', '69');
INSERT INTO `area` VALUES ('692', '爱民区', '69');
INSERT INTO `area` VALUES ('693', '西安区', '69');
INSERT INTO `area` VALUES ('694', '东宁县', '69');
INSERT INTO `area` VALUES ('695', '林口县', '69');
INSERT INTO `area` VALUES ('696', '绥芬河市', '69');
INSERT INTO `area` VALUES ('697', '海林市', '69');
INSERT INTO `area` VALUES ('698', '宁安市', '69');
INSERT INTO `area` VALUES ('699', '穆棱市', '69');
INSERT INTO `area` VALUES ('700', '爱辉区', '70');
INSERT INTO `area` VALUES ('701', '嫩江县', '70');
INSERT INTO `area` VALUES ('702', '逊克县', '70');
INSERT INTO `area` VALUES ('703', '孙吴县', '70');
INSERT INTO `area` VALUES ('704', '北安市', '70');
INSERT INTO `area` VALUES ('705', '五大连池市', '70');
INSERT INTO `area` VALUES ('706', '北林区', '71');
INSERT INTO `area` VALUES ('707', '望奎县', '71');
INSERT INTO `area` VALUES ('708', '兰西县', '71');
INSERT INTO `area` VALUES ('709', '青冈县', '71');
INSERT INTO `area` VALUES ('710', '庆安县', '71');
INSERT INTO `area` VALUES ('711', '明水县', '71');
INSERT INTO `area` VALUES ('712', '绥棱县', '71');
INSERT INTO `area` VALUES ('713', '安达市', '71');
INSERT INTO `area` VALUES ('714', '肇东市', '71');
INSERT INTO `area` VALUES ('715', '海伦市', '71');
INSERT INTO `area` VALUES ('716', '呼玛县', '72');
INSERT INTO `area` VALUES ('717', '塔河县', '72');
INSERT INTO `area` VALUES ('718', '漠河县', '72');
INSERT INTO `area` VALUES ('719', '黄浦区', '73');
INSERT INTO `area` VALUES ('720', '卢湾区', '73');
INSERT INTO `area` VALUES ('721', '徐汇区', '73');
INSERT INTO `area` VALUES ('722', '长宁区', '73');
INSERT INTO `area` VALUES ('723', '静安区', '73');
INSERT INTO `area` VALUES ('724', '普陀区', '73');
INSERT INTO `area` VALUES ('725', '闸北区', '73');
INSERT INTO `area` VALUES ('726', '虹口区', '73');
INSERT INTO `area` VALUES ('727', '杨浦区', '73');
INSERT INTO `area` VALUES ('728', '闵行区', '73');
INSERT INTO `area` VALUES ('729', '宝山区', '73');
INSERT INTO `area` VALUES ('730', '嘉定区', '73');
INSERT INTO `area` VALUES ('731', '浦东新区', '73');
INSERT INTO `area` VALUES ('732', '金山区', '73');
INSERT INTO `area` VALUES ('733', '松江区', '73');
INSERT INTO `area` VALUES ('734', '青浦区', '73');
INSERT INTO `area` VALUES ('735', '南汇区', '73');
INSERT INTO `area` VALUES ('736', '奉贤区', '73');
INSERT INTO `area` VALUES ('737', '崇明县', '73');
INSERT INTO `area` VALUES ('738', '玄武区', '74');
INSERT INTO `area` VALUES ('739', '白下区', '74');
INSERT INTO `area` VALUES ('740', '秦淮区', '74');
INSERT INTO `area` VALUES ('741', '建邺区', '74');
INSERT INTO `area` VALUES ('742', '鼓楼区', '74');
INSERT INTO `area` VALUES ('743', '下关区', '74');
INSERT INTO `area` VALUES ('744', '浦口区', '74');
INSERT INTO `area` VALUES ('745', '栖霞区', '74');
INSERT INTO `area` VALUES ('746', '雨花台区', '74');
INSERT INTO `area` VALUES ('747', '江宁区', '74');
INSERT INTO `area` VALUES ('748', '六合区', '74');
INSERT INTO `area` VALUES ('749', '溧水县', '74');
INSERT INTO `area` VALUES ('750', '高淳县', '74');
INSERT INTO `area` VALUES ('751', '崇安区', '75');
INSERT INTO `area` VALUES ('752', '南长区', '75');
INSERT INTO `area` VALUES ('753', '北塘区', '75');
INSERT INTO `area` VALUES ('754', '锡山区', '75');
INSERT INTO `area` VALUES ('755', '惠山区', '75');
INSERT INTO `area` VALUES ('756', '滨湖区', '75');
INSERT INTO `area` VALUES ('757', '江阴市', '75');
INSERT INTO `area` VALUES ('758', '宜兴市', '75');
INSERT INTO `area` VALUES ('759', '鼓楼区', '76');
INSERT INTO `area` VALUES ('760', '云龙区', '76');
INSERT INTO `area` VALUES ('761', '九里区', '76');
INSERT INTO `area` VALUES ('762', '贾汪区', '76');
INSERT INTO `area` VALUES ('763', '泉山区', '76');
INSERT INTO `area` VALUES ('764', '丰县', '76');
INSERT INTO `area` VALUES ('765', '沛县', '76');
INSERT INTO `area` VALUES ('766', '铜山县', '76');
INSERT INTO `area` VALUES ('767', '睢宁县', '76');
INSERT INTO `area` VALUES ('768', '新沂市', '76');
INSERT INTO `area` VALUES ('769', '邳州市', '76');
INSERT INTO `area` VALUES ('770', '天宁区', '77');
INSERT INTO `area` VALUES ('771', '钟楼区', '77');
INSERT INTO `area` VALUES ('772', '戚墅堰区', '77');
INSERT INTO `area` VALUES ('773', '新北区', '77');
INSERT INTO `area` VALUES ('774', '武进区', '77');
INSERT INTO `area` VALUES ('775', '溧阳市', '77');
INSERT INTO `area` VALUES ('776', '金坛市', '77');
INSERT INTO `area` VALUES ('777', '沧浪区', '78');
INSERT INTO `area` VALUES ('778', '平江区', '78');
INSERT INTO `area` VALUES ('779', '金阊区', '78');
INSERT INTO `area` VALUES ('780', '虎丘区', '78');
INSERT INTO `area` VALUES ('781', '吴中区', '78');
INSERT INTO `area` VALUES ('782', '相城区', '78');
INSERT INTO `area` VALUES ('783', '常熟市', '78');
INSERT INTO `area` VALUES ('784', '张家港市', '78');
INSERT INTO `area` VALUES ('785', '昆山市', '78');
INSERT INTO `area` VALUES ('786', '吴江市', '78');
INSERT INTO `area` VALUES ('787', '太仓市', '78');
INSERT INTO `area` VALUES ('788', '崇川区', '79');
INSERT INTO `area` VALUES ('789', '港闸区', '79');
INSERT INTO `area` VALUES ('790', '海安县', '79');
INSERT INTO `area` VALUES ('791', '如东县', '79');
INSERT INTO `area` VALUES ('792', '启东市', '79');
INSERT INTO `area` VALUES ('793', '如皋市', '79');
INSERT INTO `area` VALUES ('794', '通州市', '79');
INSERT INTO `area` VALUES ('795', '海门市', '79');
INSERT INTO `area` VALUES ('796', '连云区', '80');
INSERT INTO `area` VALUES ('797', '新浦区', '80');
INSERT INTO `area` VALUES ('798', '海州区', '80');
INSERT INTO `area` VALUES ('799', '赣榆县', '80');
INSERT INTO `area` VALUES ('800', '东海县', '80');
INSERT INTO `area` VALUES ('801', '灌云县', '80');
INSERT INTO `area` VALUES ('802', '灌南县', '80');
INSERT INTO `area` VALUES ('803', '清河区', '81');
INSERT INTO `area` VALUES ('804', '楚州区', '81');
INSERT INTO `area` VALUES ('805', '淮阴区', '81');
INSERT INTO `area` VALUES ('806', '清浦区', '81');
INSERT INTO `area` VALUES ('807', '涟水县', '81');
INSERT INTO `area` VALUES ('808', '洪泽县', '81');
INSERT INTO `area` VALUES ('809', '盱眙县', '81');
INSERT INTO `area` VALUES ('810', '金湖县', '81');
INSERT INTO `area` VALUES ('811', '亭湖区', '82');
INSERT INTO `area` VALUES ('812', '盐都区', '82');
INSERT INTO `area` VALUES ('813', '响水县', '82');
INSERT INTO `area` VALUES ('814', '滨海县', '82');
INSERT INTO `area` VALUES ('815', '阜宁县', '82');
INSERT INTO `area` VALUES ('816', '射阳县', '82');
INSERT INTO `area` VALUES ('817', '建湖县', '82');
INSERT INTO `area` VALUES ('818', '东台市', '82');
INSERT INTO `area` VALUES ('819', '大丰市', '82');
INSERT INTO `area` VALUES ('820', '广陵区', '83');
INSERT INTO `area` VALUES ('821', '邗江区', '83');
INSERT INTO `area` VALUES ('822', '维扬区', '83');
INSERT INTO `area` VALUES ('823', '宝应县', '83');
INSERT INTO `area` VALUES ('824', '仪征市', '83');
INSERT INTO `area` VALUES ('825', '高邮市', '83');
INSERT INTO `area` VALUES ('826', '江都市', '83');
INSERT INTO `area` VALUES ('827', '京口区', '84');
INSERT INTO `area` VALUES ('828', '润州区', '84');
INSERT INTO `area` VALUES ('829', '丹徒区', '84');
INSERT INTO `area` VALUES ('830', '丹阳市', '84');
INSERT INTO `area` VALUES ('831', '扬中市', '84');
INSERT INTO `area` VALUES ('832', '句容市', '84');
INSERT INTO `area` VALUES ('833', '海陵区', '85');
INSERT INTO `area` VALUES ('834', '高港区', '85');
INSERT INTO `area` VALUES ('835', '兴化市', '85');
INSERT INTO `area` VALUES ('836', '靖江市', '85');
INSERT INTO `area` VALUES ('837', '泰兴市', '85');
INSERT INTO `area` VALUES ('838', '姜堰市', '85');
INSERT INTO `area` VALUES ('839', '宿城区', '86');
INSERT INTO `area` VALUES ('840', '宿豫区', '86');
INSERT INTO `area` VALUES ('841', '沭阳县', '86');
INSERT INTO `area` VALUES ('842', '泗阳县', '86');
INSERT INTO `area` VALUES ('843', '泗洪县', '86');
INSERT INTO `area` VALUES ('844', '上城区', '87');
INSERT INTO `area` VALUES ('845', '下城区', '87');
INSERT INTO `area` VALUES ('846', '江干区', '87');
INSERT INTO `area` VALUES ('847', '拱墅区', '87');
INSERT INTO `area` VALUES ('848', '西湖区', '87');
INSERT INTO `area` VALUES ('849', '滨江区', '87');
INSERT INTO `area` VALUES ('850', '萧山区', '87');
INSERT INTO `area` VALUES ('851', '余杭区', '87');
INSERT INTO `area` VALUES ('852', '桐庐县', '87');
INSERT INTO `area` VALUES ('853', '淳安县', '87');
INSERT INTO `area` VALUES ('854', '建德市', '87');
INSERT INTO `area` VALUES ('855', '富阳市', '87');
INSERT INTO `area` VALUES ('856', '临安市', '87');
INSERT INTO `area` VALUES ('857', '海曙区', '88');
INSERT INTO `area` VALUES ('858', '江东区', '88');
INSERT INTO `area` VALUES ('859', '江北区', '88');
INSERT INTO `area` VALUES ('860', '北仑区', '88');
INSERT INTO `area` VALUES ('861', '镇海区', '88');
INSERT INTO `area` VALUES ('862', '鄞州区', '88');
INSERT INTO `area` VALUES ('863', '象山县', '88');
INSERT INTO `area` VALUES ('864', '宁海县', '88');
INSERT INTO `area` VALUES ('865', '余姚市', '88');
INSERT INTO `area` VALUES ('866', '慈溪市', '88');
INSERT INTO `area` VALUES ('867', '奉化市', '88');
INSERT INTO `area` VALUES ('868', '鹿城区', '89');
INSERT INTO `area` VALUES ('869', '龙湾区', '89');
INSERT INTO `area` VALUES ('870', '瓯海区', '89');
INSERT INTO `area` VALUES ('871', '洞头县', '89');
INSERT INTO `area` VALUES ('872', '永嘉县', '89');
INSERT INTO `area` VALUES ('873', '平阳县', '89');
INSERT INTO `area` VALUES ('874', '苍南县', '89');
INSERT INTO `area` VALUES ('875', '文成县', '89');
INSERT INTO `area` VALUES ('876', '泰顺县', '89');
INSERT INTO `area` VALUES ('877', '瑞安市', '89');
INSERT INTO `area` VALUES ('878', '乐清市', '89');
INSERT INTO `area` VALUES ('879', '秀城区', '90');
INSERT INTO `area` VALUES ('880', '秀洲区', '90');
INSERT INTO `area` VALUES ('881', '嘉善县', '90');
INSERT INTO `area` VALUES ('882', '海盐县', '90');
INSERT INTO `area` VALUES ('883', '海宁市', '90');
INSERT INTO `area` VALUES ('884', '平湖市', '90');
INSERT INTO `area` VALUES ('885', '桐乡市', '90');
INSERT INTO `area` VALUES ('886', '吴兴区', '91');
INSERT INTO `area` VALUES ('887', '南浔区', '91');
INSERT INTO `area` VALUES ('888', '德清县', '91');
INSERT INTO `area` VALUES ('889', '长兴县', '91');
INSERT INTO `area` VALUES ('890', '安吉县', '91');
INSERT INTO `area` VALUES ('891', '越城区', '92');
INSERT INTO `area` VALUES ('892', '绍兴县', '92');
INSERT INTO `area` VALUES ('893', '新昌县', '92');
INSERT INTO `area` VALUES ('894', '诸暨市', '92');
INSERT INTO `area` VALUES ('895', '上虞市', '92');
INSERT INTO `area` VALUES ('896', '嵊州市', '92');
INSERT INTO `area` VALUES ('897', '婺城区', '93');
INSERT INTO `area` VALUES ('898', '金东区', '93');
INSERT INTO `area` VALUES ('899', '武义县', '93');
INSERT INTO `area` VALUES ('900', '浦江县', '93');
INSERT INTO `area` VALUES ('901', '磐安县', '93');
INSERT INTO `area` VALUES ('902', '兰溪市', '93');
INSERT INTO `area` VALUES ('903', '义乌市', '93');
INSERT INTO `area` VALUES ('904', '东阳市', '93');
INSERT INTO `area` VALUES ('905', '永康市', '93');
INSERT INTO `area` VALUES ('906', '柯城区', '94');
INSERT INTO `area` VALUES ('907', '衢江区', '94');
INSERT INTO `area` VALUES ('908', '常山县', '94');
INSERT INTO `area` VALUES ('909', '开化县', '94');
INSERT INTO `area` VALUES ('910', '龙游县', '94');
INSERT INTO `area` VALUES ('911', '江山市', '94');
INSERT INTO `area` VALUES ('912', '定海区', '95');
INSERT INTO `area` VALUES ('913', '普陀区', '95');
INSERT INTO `area` VALUES ('914', '岱山县', '95');
INSERT INTO `area` VALUES ('915', '嵊泗县', '95');
INSERT INTO `area` VALUES ('916', '椒江区', '96');
INSERT INTO `area` VALUES ('917', '黄岩区', '96');
INSERT INTO `area` VALUES ('918', '路桥区', '96');
INSERT INTO `area` VALUES ('919', '玉环县', '96');
INSERT INTO `area` VALUES ('920', '三门县', '96');
INSERT INTO `area` VALUES ('921', '天台县', '96');
INSERT INTO `area` VALUES ('922', '仙居县', '96');
INSERT INTO `area` VALUES ('923', '温岭市', '96');
INSERT INTO `area` VALUES ('924', '临海市', '96');
INSERT INTO `area` VALUES ('925', '莲都区', '97');
INSERT INTO `area` VALUES ('926', '青田县', '97');
INSERT INTO `area` VALUES ('927', '缙云县', '97');
INSERT INTO `area` VALUES ('928', '遂昌县', '97');
INSERT INTO `area` VALUES ('929', '松阳县', '97');
INSERT INTO `area` VALUES ('930', '云和县', '97');
INSERT INTO `area` VALUES ('931', '庆元县', '97');
INSERT INTO `area` VALUES ('932', '景宁畲族自治县', '97');
INSERT INTO `area` VALUES ('933', '龙泉市', '97');
INSERT INTO `area` VALUES ('934', '瑶海区', '98');
INSERT INTO `area` VALUES ('935', '庐阳区', '98');
INSERT INTO `area` VALUES ('936', '蜀山区', '98');
INSERT INTO `area` VALUES ('937', '包河区', '98');
INSERT INTO `area` VALUES ('938', '长丰县', '98');
INSERT INTO `area` VALUES ('939', '肥东县', '98');
INSERT INTO `area` VALUES ('940', '肥西县', '98');
INSERT INTO `area` VALUES ('941', '镜湖区', '99');
INSERT INTO `area` VALUES ('942', '马塘区', '99');
INSERT INTO `area` VALUES ('943', '新芜区', '99');
INSERT INTO `area` VALUES ('944', '鸠江区', '99');
INSERT INTO `area` VALUES ('945', '芜湖县', '99');
INSERT INTO `area` VALUES ('946', '繁昌县', '99');
INSERT INTO `area` VALUES ('947', '南陵县', '99');
INSERT INTO `area` VALUES ('948', '龙子湖区', '100');
INSERT INTO `area` VALUES ('949', '蚌山区', '100');
INSERT INTO `area` VALUES ('950', '禹会区', '100');
INSERT INTO `area` VALUES ('951', '淮上区', '100');
INSERT INTO `area` VALUES ('952', '怀远县', '100');
INSERT INTO `area` VALUES ('953', '五河县', '100');
INSERT INTO `area` VALUES ('954', '固镇县', '100');
INSERT INTO `area` VALUES ('955', '大通区', '101');
INSERT INTO `area` VALUES ('956', '田家庵区', '101');
INSERT INTO `area` VALUES ('957', '谢家集区', '101');
INSERT INTO `area` VALUES ('958', '八公山区', '101');
INSERT INTO `area` VALUES ('959', '潘集区', '101');
INSERT INTO `area` VALUES ('960', '凤台县', '101');
INSERT INTO `area` VALUES ('961', '金家庄区', '102');
INSERT INTO `area` VALUES ('962', '花山区', '102');
INSERT INTO `area` VALUES ('963', '雨山区', '102');
INSERT INTO `area` VALUES ('964', '当涂县', '102');
INSERT INTO `area` VALUES ('965', '杜集区', '103');
INSERT INTO `area` VALUES ('966', '相山区', '103');
INSERT INTO `area` VALUES ('967', '烈山区', '103');
INSERT INTO `area` VALUES ('968', '濉溪县', '103');
INSERT INTO `area` VALUES ('969', '铜官山区', '104');
INSERT INTO `area` VALUES ('970', '狮子山区', '104');
INSERT INTO `area` VALUES ('971', '郊区', '104');
INSERT INTO `area` VALUES ('972', '铜陵县', '104');
INSERT INTO `area` VALUES ('973', '迎江区', '105');
INSERT INTO `area` VALUES ('974', '大观区', '105');
INSERT INTO `area` VALUES ('975', '郊区', '105');
INSERT INTO `area` VALUES ('976', '怀宁县', '105');
INSERT INTO `area` VALUES ('977', '枞阳县', '105');
INSERT INTO `area` VALUES ('978', '潜山县', '105');
INSERT INTO `area` VALUES ('979', '太湖县', '105');
INSERT INTO `area` VALUES ('980', '宿松县', '105');
INSERT INTO `area` VALUES ('981', '望江县', '105');
INSERT INTO `area` VALUES ('982', '岳西县', '105');
INSERT INTO `area` VALUES ('983', '桐城市', '105');
INSERT INTO `area` VALUES ('984', '屯溪区', '106');
INSERT INTO `area` VALUES ('985', '黄山区', '106');
INSERT INTO `area` VALUES ('986', '徽州区', '106');
INSERT INTO `area` VALUES ('987', '歙县', '106');
INSERT INTO `area` VALUES ('988', '休宁县', '106');
INSERT INTO `area` VALUES ('989', '黟县', '106');
INSERT INTO `area` VALUES ('990', '祁门县', '106');
INSERT INTO `area` VALUES ('991', '琅琊区', '107');
INSERT INTO `area` VALUES ('992', '南谯区', '107');
INSERT INTO `area` VALUES ('993', '来安县', '107');
INSERT INTO `area` VALUES ('994', '全椒县', '107');
INSERT INTO `area` VALUES ('995', '定远县', '107');
INSERT INTO `area` VALUES ('996', '凤阳县', '107');
INSERT INTO `area` VALUES ('997', '天长市', '107');
INSERT INTO `area` VALUES ('998', '明光市', '107');
INSERT INTO `area` VALUES ('999', '颍州区', '108');
INSERT INTO `area` VALUES ('1000', '颍东区', '108');

-- ----------------------------
-- Table structure for authebDetais
-- ----------------------------
DROP TABLE IF EXISTS `authebDetais`;
CREATE TABLE `authebDetais` (
  `ad_id` int(10) NOT NULL AUTO_INCREMENT COMMENT '认证详情表主键id',
  `ad_introduct` varchar(255) DEFAULT NULL COMMENT '认证介绍',
  `ad_time` date DEFAULT NULL COMMENT '认证详情时间',
  `ui_id` int(10) DEFAULT NULL COMMENT '用户详情uiid',
  `ad_status` int(10) NOT NULL DEFAULT '0' COMMENT '后台是否已读(0：未读，1：已读)',
  `ad_stype` int(10) NOT NULL DEFAULT '0' COMMENT '认证类型（0：不是认证，只是通知信息  1.实名认证  2.发标申请审核）',
  PRIMARY KEY (`ad_id`)
) ENGINE=InnoDB AUTO_INCREMENT=62 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of authebDetais
-- ----------------------------
INSERT INTO `authebDetais` VALUES ('48', '用户: 哇哈哈,已输入身份信息,需后台管理员审核通过!', '2018-01-25', '66', '1', '1');
INSERT INTO `authebDetais` VALUES ('49', '您好,yxjr15179084193用户恭喜你实名认证通过,欢迎加入亿信平台,亿信金融平台更多好礼等着你来领哦!', '2018-01-25', '66', '0', '0');
INSERT INTO `authebDetais` VALUES ('50', '用户: yxjr15179084193,已申请发标,需后台管理员审核通过!', '2018-01-25', '66', '1', '2');
INSERT INTO `authebDetais` VALUES ('51', '用户: yxjr15179084193,已申请发标,需后台管理员审核通过!', '2019-01-25', '66', '1', '2');
INSERT INTO `authebDetais` VALUES ('52', '用户: 汪栋才,已输入身份信息,需后台管理员审核通过!', '2018-01-25', '67', '1', '1');
INSERT INTO `authebDetais` VALUES ('53', '您好,yxjr18296719481用户恭喜你实名认证通过,欢迎加入亿信平台,亿信金融平台更多好礼等着你来领哦!', '2018-01-25', '67', '0', '0');
INSERT INTO `authebDetais` VALUES ('54', '用户: yxjr18296719481,已申请发标,需后台管理员审核通过!', '2018-01-25', '67', '1', '2');
INSERT INTO `authebDetais` VALUES ('55', '用户: yxjr18296719481,已申请发标,需后台管理员审核通过!', '2018-01-25', '67', '1', '2');
INSERT INTO `authebDetais` VALUES ('56', '用户: 刘小杰,已输入身份信息,需后台管理员审核通过!', '2018-01-25', '69', '1', '1');
INSERT INTO `authebDetais` VALUES ('57', '您好,yxjr17379741690用户恭喜你实名认证通过,欢迎加入亿信平台,亿信金融平台更多好礼等着你来领哦!', '2018-01-25', '69', '0', '0');
INSERT INTO `authebDetais` VALUES ('58', '用户: 李钟辉,已输入身份信息,需后台管理员审核通过!', '2018-01-25', '71', '1', '1');
INSERT INTO `authebDetais` VALUES ('59', '您好,yxjr13576748465用户恭喜你实名认证通过,欢迎加入亿信平台,亿信金融平台更多好礼等着你来领哦!', '2018-01-25', '71', '0', '0');
INSERT INTO `authebDetais` VALUES ('60', '用户: 王亮,已输入身份信息,需后台管理员审核通过!', '2018-01-25', '65', '1', '1');
INSERT INTO `authebDetais` VALUES ('61', '您好,yxjr15179749961用户恭喜你实名认证通过,欢迎加入亿信平台,亿信金融平台更多好礼等着你来领哦!', '2018-01-25', '65', '0', '0');

-- ----------------------------
-- Table structure for banktype
-- ----------------------------
DROP TABLE IF EXISTS `banktype`;
CREATE TABLE `banktype` (
  `bs_id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键id',
  `bs_name` varchar(50) NOT NULL COMMENT '类型名',
  `bs_img` varchar(50) NOT NULL COMMENT '代表团',
  PRIMARY KEY (`bs_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of banktype
-- ----------------------------

-- ----------------------------
-- Table structure for bid
-- ----------------------------
DROP TABLE IF EXISTS `bid`;
CREATE TABLE `bid` (
  `b_id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键id(投标)',
  `u_id` int(11) NOT NULL COMMENT '用户id',
  `b_fid` int(11) NOT NULL COMMENT '所投注的id',
  `b_money` decimal(60,2) NOT NULL COMMENT '已投标金额',
  `b_time` datetime NOT NULL COMMENT '投标时间',
  `b_endtime` datetime NOT NULL COMMENT '还标时间',
  PRIMARY KEY (`b_id`)
) ENGINE=InnoDB AUTO_INCREMENT=34 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of bid
-- ----------------------------
INSERT INTO `bid` VALUES ('33', '88', '57', '200.00', '2018-02-01 00:00:00', '2018-03-01 00:00:00');

-- ----------------------------
-- Table structure for city
-- ----------------------------
DROP TABLE IF EXISTS `city`;
CREATE TABLE `city` (
  `cy_id` int(11) NOT NULL AUTO_INCREMENT COMMENT '城市表主键id',
  `cy_name` varchar(50) NOT NULL COMMENT '城市名',
  `pv_id` int(30) NOT NULL COMMENT '省份表',
  PRIMARY KEY (`cy_id`)
) ENGINE=InnoDB AUTO_INCREMENT=319 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of city
-- ----------------------------
INSERT INTO `city` VALUES ('1', '北京市', '1');
INSERT INTO `city` VALUES ('2', '天津市', '2');
INSERT INTO `city` VALUES ('3', '石家庄市', '3');
INSERT INTO `city` VALUES ('4', '唐山市', '3');
INSERT INTO `city` VALUES ('5', '秦皇岛市', '3');
INSERT INTO `city` VALUES ('6', '邯郸市', '3');
INSERT INTO `city` VALUES ('7', '邢台市', '3');
INSERT INTO `city` VALUES ('8', '保定市', '3');
INSERT INTO `city` VALUES ('9', '张家口市', '3');
INSERT INTO `city` VALUES ('10', '承德市', '3');
INSERT INTO `city` VALUES ('11', '沧州市', '3');
INSERT INTO `city` VALUES ('12', '廊坊市', '3');
INSERT INTO `city` VALUES ('13', '衡水市', '3');
INSERT INTO `city` VALUES ('14', '太原市', '4');
INSERT INTO `city` VALUES ('15', '大同市', '4');
INSERT INTO `city` VALUES ('16', '阳泉市', '4');
INSERT INTO `city` VALUES ('17', '长治市', '4');
INSERT INTO `city` VALUES ('18', '晋城市', '4');
INSERT INTO `city` VALUES ('19', '朔州市', '4');
INSERT INTO `city` VALUES ('20', '晋中市', '4');
INSERT INTO `city` VALUES ('21', '运城市', '4');
INSERT INTO `city` VALUES ('22', '忻州市', '4');
INSERT INTO `city` VALUES ('23', '临汾市', '4');
INSERT INTO `city` VALUES ('24', '吕梁市', '4');
INSERT INTO `city` VALUES ('25', '呼和浩特市', '5');
INSERT INTO `city` VALUES ('26', '包头市', '5');
INSERT INTO `city` VALUES ('27', '乌海市', '5');
INSERT INTO `city` VALUES ('28', '赤峰市', '5');
INSERT INTO `city` VALUES ('29', '通辽市', '5');
INSERT INTO `city` VALUES ('30', '鄂尔多斯市', '5');
INSERT INTO `city` VALUES ('31', '呼伦贝尔市', '5');
INSERT INTO `city` VALUES ('32', '巴彦淖尔市', '5');
INSERT INTO `city` VALUES ('33', '乌兰察布市', '5');
INSERT INTO `city` VALUES ('34', '兴安盟', '5');
INSERT INTO `city` VALUES ('35', '锡林郭勒盟', '5');
INSERT INTO `city` VALUES ('36', '阿拉善盟', '5');
INSERT INTO `city` VALUES ('37', '沈阳市', '6');
INSERT INTO `city` VALUES ('38', '大连市', '6');
INSERT INTO `city` VALUES ('39', '鞍山市', '6');
INSERT INTO `city` VALUES ('40', '抚顺市', '6');
INSERT INTO `city` VALUES ('41', '本溪市', '6');
INSERT INTO `city` VALUES ('42', '丹东市', '6');
INSERT INTO `city` VALUES ('43', '锦州市', '6');
INSERT INTO `city` VALUES ('44', '营口市', '6');
INSERT INTO `city` VALUES ('45', '阜新市', '6');
INSERT INTO `city` VALUES ('46', '辽阳市', '6');
INSERT INTO `city` VALUES ('47', '盘锦市', '6');
INSERT INTO `city` VALUES ('48', '铁岭市', '6');
INSERT INTO `city` VALUES ('49', '朝阳市', '6');
INSERT INTO `city` VALUES ('50', '葫芦岛市', '6');
INSERT INTO `city` VALUES ('51', '长春市', '7');
INSERT INTO `city` VALUES ('52', '吉林市', '7');
INSERT INTO `city` VALUES ('53', '四平市', '7');
INSERT INTO `city` VALUES ('54', '辽源市', '7');
INSERT INTO `city` VALUES ('55', '通化市', '7');
INSERT INTO `city` VALUES ('56', '白山市', '7');
INSERT INTO `city` VALUES ('57', '松原市', '7');
INSERT INTO `city` VALUES ('58', '白城市', '7');
INSERT INTO `city` VALUES ('59', '延边朝鲜族自治州', '7');
INSERT INTO `city` VALUES ('60', '哈尔滨市', '8');
INSERT INTO `city` VALUES ('61', '齐齐哈尔市', '8');
INSERT INTO `city` VALUES ('62', '鸡西市', '8');
INSERT INTO `city` VALUES ('63', '鹤岗市', '8');
INSERT INTO `city` VALUES ('64', '双鸭山市', '8');
INSERT INTO `city` VALUES ('65', '大庆市', '8');
INSERT INTO `city` VALUES ('66', '伊春市', '8');
INSERT INTO `city` VALUES ('67', '佳木斯市', '8');
INSERT INTO `city` VALUES ('68', '七台河市', '8');
INSERT INTO `city` VALUES ('69', '牡丹江市', '8');
INSERT INTO `city` VALUES ('70', '黑河市', '8');
INSERT INTO `city` VALUES ('71', '绥化市', '8');
INSERT INTO `city` VALUES ('72', '大兴安岭地区', '8');
INSERT INTO `city` VALUES ('73', '上海市', '9');
INSERT INTO `city` VALUES ('74', '南京市', '10');
INSERT INTO `city` VALUES ('75', '无锡市', '10');
INSERT INTO `city` VALUES ('76', '徐州市', '10');
INSERT INTO `city` VALUES ('77', '常州市', '10');
INSERT INTO `city` VALUES ('78', '苏州市', '10');
INSERT INTO `city` VALUES ('79', '南通市', '10');
INSERT INTO `city` VALUES ('80', '连云港市', '10');
INSERT INTO `city` VALUES ('81', '淮安市', '10');
INSERT INTO `city` VALUES ('82', '盐城市', '10');
INSERT INTO `city` VALUES ('83', '扬州市', '10');
INSERT INTO `city` VALUES ('84', '镇江市', '10');
INSERT INTO `city` VALUES ('85', '泰州市', '10');
INSERT INTO `city` VALUES ('86', '宿迁市', '10');
INSERT INTO `city` VALUES ('87', '杭州市', '11');
INSERT INTO `city` VALUES ('88', '宁波市', '11');
INSERT INTO `city` VALUES ('89', '温州市', '11');
INSERT INTO `city` VALUES ('90', '嘉兴市', '11');
INSERT INTO `city` VALUES ('91', '湖州市', '11');
INSERT INTO `city` VALUES ('92', '绍兴市', '11');
INSERT INTO `city` VALUES ('93', '金华市', '11');
INSERT INTO `city` VALUES ('94', '衢州市', '11');
INSERT INTO `city` VALUES ('95', '舟山市', '11');
INSERT INTO `city` VALUES ('96', '台州市', '11');
INSERT INTO `city` VALUES ('97', '丽水市', '11');
INSERT INTO `city` VALUES ('98', '合肥市', '12');
INSERT INTO `city` VALUES ('99', '芜湖市', '12');
INSERT INTO `city` VALUES ('100', '蚌埠市', '12');
INSERT INTO `city` VALUES ('101', '淮南市', '12');
INSERT INTO `city` VALUES ('102', '马鞍山市', '12');
INSERT INTO `city` VALUES ('103', '淮北市', '12');
INSERT INTO `city` VALUES ('104', '铜陵市', '12');
INSERT INTO `city` VALUES ('105', '安庆市', '12');
INSERT INTO `city` VALUES ('106', '黄山市', '12');
INSERT INTO `city` VALUES ('107', '滁州市', '12');
INSERT INTO `city` VALUES ('108', '阜阳市', '12');
INSERT INTO `city` VALUES ('109', '宿州市', '12');
INSERT INTO `city` VALUES ('110', '巢湖市', '12');
INSERT INTO `city` VALUES ('111', '六安市', '12');
INSERT INTO `city` VALUES ('112', '亳州市', '12');
INSERT INTO `city` VALUES ('113', '池州市', '12');
INSERT INTO `city` VALUES ('114', '宣城市', '12');
INSERT INTO `city` VALUES ('115', '福州市', '13');
INSERT INTO `city` VALUES ('116', '厦门市', '13');
INSERT INTO `city` VALUES ('117', '莆田市', '13');
INSERT INTO `city` VALUES ('118', '三明市', '13');
INSERT INTO `city` VALUES ('119', '泉州市', '13');
INSERT INTO `city` VALUES ('120', '漳州市', '13');
INSERT INTO `city` VALUES ('121', '南平市', '13');
INSERT INTO `city` VALUES ('122', '龙岩市', '13');
INSERT INTO `city` VALUES ('123', '宁德市', '13');
INSERT INTO `city` VALUES ('124', '南昌市', '14');
INSERT INTO `city` VALUES ('125', '景德镇市', '14');
INSERT INTO `city` VALUES ('126', '萍乡市', '14');
INSERT INTO `city` VALUES ('127', '九江市', '14');
INSERT INTO `city` VALUES ('128', '新余市', '14');
INSERT INTO `city` VALUES ('129', '鹰潭市', '14');
INSERT INTO `city` VALUES ('130', '赣州市', '14');
INSERT INTO `city` VALUES ('131', '吉安市', '14');
INSERT INTO `city` VALUES ('132', '宜春市', '14');
INSERT INTO `city` VALUES ('133', '抚州市', '14');
INSERT INTO `city` VALUES ('134', '上饶市', '14');
INSERT INTO `city` VALUES ('135', '济南市', '15');
INSERT INTO `city` VALUES ('136', '青岛市', '15');
INSERT INTO `city` VALUES ('137', '淄博市', '15');
INSERT INTO `city` VALUES ('138', '枣庄市', '15');
INSERT INTO `city` VALUES ('139', '东营市', '15');
INSERT INTO `city` VALUES ('140', '烟台市', '15');
INSERT INTO `city` VALUES ('141', '潍坊市', '15');
INSERT INTO `city` VALUES ('142', '济宁市', '15');
INSERT INTO `city` VALUES ('143', '泰安市', '15');
INSERT INTO `city` VALUES ('144', '威海市', '15');
INSERT INTO `city` VALUES ('145', '日照市', '15');
INSERT INTO `city` VALUES ('146', '莱芜市', '15');
INSERT INTO `city` VALUES ('147', '临沂市', '15');
INSERT INTO `city` VALUES ('148', '德州市', '15');
INSERT INTO `city` VALUES ('149', '聊城市', '15');
INSERT INTO `city` VALUES ('150', '滨州市', '15');
INSERT INTO `city` VALUES ('151', '荷泽市', '15');
INSERT INTO `city` VALUES ('152', '郑州市', '16');
INSERT INTO `city` VALUES ('153', '开封市', '16');
INSERT INTO `city` VALUES ('154', '洛阳市', '16');
INSERT INTO `city` VALUES ('155', '平顶山市', '16');
INSERT INTO `city` VALUES ('156', '安阳市', '16');
INSERT INTO `city` VALUES ('157', '鹤壁市', '16');
INSERT INTO `city` VALUES ('158', '新乡市', '16');
INSERT INTO `city` VALUES ('159', '焦作市', '16');
INSERT INTO `city` VALUES ('160', '濮阳市', '16');
INSERT INTO `city` VALUES ('161', '许昌市', '16');
INSERT INTO `city` VALUES ('162', '漯河市', '16');
INSERT INTO `city` VALUES ('163', '三门峡市', '16');
INSERT INTO `city` VALUES ('164', '南阳市', '16');
INSERT INTO `city` VALUES ('165', '商丘市', '16');
INSERT INTO `city` VALUES ('166', '信阳市', '16');
INSERT INTO `city` VALUES ('167', '周口市', '16');
INSERT INTO `city` VALUES ('168', '驻马店市', '16');
INSERT INTO `city` VALUES ('169', '武汉市', '17');
INSERT INTO `city` VALUES ('170', '黄石市', '17');
INSERT INTO `city` VALUES ('171', '十堰市', '17');
INSERT INTO `city` VALUES ('172', '宜昌市', '17');
INSERT INTO `city` VALUES ('173', '襄樊市', '17');
INSERT INTO `city` VALUES ('174', '鄂州市', '17');
INSERT INTO `city` VALUES ('175', '荆门市', '17');
INSERT INTO `city` VALUES ('176', '孝感市', '17');
INSERT INTO `city` VALUES ('177', '荆州市', '17');
INSERT INTO `city` VALUES ('178', '黄冈市', '17');
INSERT INTO `city` VALUES ('179', '咸宁市', '17');
INSERT INTO `city` VALUES ('180', '随州市', '17');
INSERT INTO `city` VALUES ('181', '恩施土家族苗族自治州', '17');
INSERT INTO `city` VALUES ('182', '神农架', '17');
INSERT INTO `city` VALUES ('183', '长沙市', '18');
INSERT INTO `city` VALUES ('184', '株洲市', '18');
INSERT INTO `city` VALUES ('185', '湘潭市', '18');
INSERT INTO `city` VALUES ('186', '衡阳市', '18');
INSERT INTO `city` VALUES ('187', '邵阳市', '18');
INSERT INTO `city` VALUES ('188', '岳阳市', '18');
INSERT INTO `city` VALUES ('189', '常德市', '18');
INSERT INTO `city` VALUES ('190', '张家界市', '18');
INSERT INTO `city` VALUES ('191', '益阳市', '18');
INSERT INTO `city` VALUES ('192', '郴州市', '18');
INSERT INTO `city` VALUES ('193', '永州市', '18');
INSERT INTO `city` VALUES ('194', '怀化市', '18');
INSERT INTO `city` VALUES ('195', '娄底市', '18');
INSERT INTO `city` VALUES ('196', '湘西土家族苗族自治州', '18');
INSERT INTO `city` VALUES ('197', '广州市', '19');
INSERT INTO `city` VALUES ('198', '韶关市', '19');
INSERT INTO `city` VALUES ('199', '深圳市', '19');
INSERT INTO `city` VALUES ('200', '珠海市', '19');
INSERT INTO `city` VALUES ('201', '汕头市', '19');
INSERT INTO `city` VALUES ('202', '佛山市', '19');
INSERT INTO `city` VALUES ('203', '江门市', '19');
INSERT INTO `city` VALUES ('204', '湛江市', '19');
INSERT INTO `city` VALUES ('205', '茂名市', '19');
INSERT INTO `city` VALUES ('206', '肇庆市', '19');
INSERT INTO `city` VALUES ('207', '惠州市', '19');
INSERT INTO `city` VALUES ('208', '梅州市', '19');
INSERT INTO `city` VALUES ('209', '汕尾市', '19');
INSERT INTO `city` VALUES ('210', '河源市', '19');
INSERT INTO `city` VALUES ('211', '阳江市', '19');
INSERT INTO `city` VALUES ('212', '清远市', '19');
INSERT INTO `city` VALUES ('213', '东莞市', '19');
INSERT INTO `city` VALUES ('214', '中山市', '19');
INSERT INTO `city` VALUES ('215', '潮州市', '19');
INSERT INTO `city` VALUES ('216', '揭阳市', '19');
INSERT INTO `city` VALUES ('217', '云浮市', '19');
INSERT INTO `city` VALUES ('218', '南宁市', '20');
INSERT INTO `city` VALUES ('219', '柳州市', '20');
INSERT INTO `city` VALUES ('220', '桂林市', '20');
INSERT INTO `city` VALUES ('221', '梧州市', '20');
INSERT INTO `city` VALUES ('222', '北海市', '20');
INSERT INTO `city` VALUES ('223', '防城港市', '20');
INSERT INTO `city` VALUES ('224', '钦州市', '20');
INSERT INTO `city` VALUES ('225', '贵港市', '20');
INSERT INTO `city` VALUES ('226', '玉林市', '20');
INSERT INTO `city` VALUES ('227', '百色市', '20');
INSERT INTO `city` VALUES ('228', '贺州市', '20');
INSERT INTO `city` VALUES ('229', '河池市', '20');
INSERT INTO `city` VALUES ('230', '来宾市', '20');
INSERT INTO `city` VALUES ('231', '崇左市', '20');
INSERT INTO `city` VALUES ('232', '海口市', '21');
INSERT INTO `city` VALUES ('233', '三亚市', '21');
INSERT INTO `city` VALUES ('234', '重庆市', '22');
INSERT INTO `city` VALUES ('235', '成都市', '23');
INSERT INTO `city` VALUES ('236', '自贡市', '23');
INSERT INTO `city` VALUES ('237', '攀枝花市', '23');
INSERT INTO `city` VALUES ('238', '泸州市', '23');
INSERT INTO `city` VALUES ('239', '德阳市', '23');
INSERT INTO `city` VALUES ('240', '绵阳市', '23');
INSERT INTO `city` VALUES ('241', '广元市', '23');
INSERT INTO `city` VALUES ('242', '遂宁市', '23');
INSERT INTO `city` VALUES ('243', '内江市', '23');
INSERT INTO `city` VALUES ('244', '乐山市', '23');
INSERT INTO `city` VALUES ('245', '南充市', '23');
INSERT INTO `city` VALUES ('246', '眉山市', '23');
INSERT INTO `city` VALUES ('247', '宜宾市', '23');
INSERT INTO `city` VALUES ('248', '广安市', '23');
INSERT INTO `city` VALUES ('249', '达州市', '23');
INSERT INTO `city` VALUES ('250', '雅安市', '23');
INSERT INTO `city` VALUES ('251', '巴中市', '23');
INSERT INTO `city` VALUES ('252', '资阳市', '23');
INSERT INTO `city` VALUES ('253', '阿坝藏族羌族自治州', '23');
INSERT INTO `city` VALUES ('254', '甘孜藏族自治州', '23');
INSERT INTO `city` VALUES ('255', '凉山彝族自治州', '23');
INSERT INTO `city` VALUES ('256', '贵阳市', '24');
INSERT INTO `city` VALUES ('257', '六盘水市', '24');
INSERT INTO `city` VALUES ('258', '遵义市', '24');
INSERT INTO `city` VALUES ('259', '安顺市', '24');
INSERT INTO `city` VALUES ('260', '铜仁地区', '24');
INSERT INTO `city` VALUES ('261', '黔西南布依族苗族自治州', '24');
INSERT INTO `city` VALUES ('262', '毕节地区', '24');
INSERT INTO `city` VALUES ('263', '黔东南苗族侗族自治州', '24');
INSERT INTO `city` VALUES ('264', '黔南布依族苗族自治州', '24');
INSERT INTO `city` VALUES ('265', '昆明市', '25');
INSERT INTO `city` VALUES ('266', '曲靖市', '25');
INSERT INTO `city` VALUES ('267', '玉溪市', '25');
INSERT INTO `city` VALUES ('268', '保山市', '25');
INSERT INTO `city` VALUES ('269', '昭通市', '25');
INSERT INTO `city` VALUES ('270', '丽江市', '25');
INSERT INTO `city` VALUES ('271', '思茅市', '25');
INSERT INTO `city` VALUES ('272', '临沧市', '25');
INSERT INTO `city` VALUES ('273', '楚雄彝族自治州', '25');
INSERT INTO `city` VALUES ('274', '红河哈尼族彝族自治州', '25');
INSERT INTO `city` VALUES ('275', '文山壮族苗族自治州', '25');
INSERT INTO `city` VALUES ('276', '西双版纳傣族自治州', '25');
INSERT INTO `city` VALUES ('277', '大理白族自治州', '25');
INSERT INTO `city` VALUES ('278', '德宏傣族景颇族自治州', '25');
INSERT INTO `city` VALUES ('279', '怒江傈僳族自治州', '25');
INSERT INTO `city` VALUES ('280', '迪庆藏族自治州', '25');
INSERT INTO `city` VALUES ('281', '拉萨市', '26');
INSERT INTO `city` VALUES ('282', '昌都地区', '26');
INSERT INTO `city` VALUES ('283', '山南地区', '26');
INSERT INTO `city` VALUES ('284', '日喀则地区', '26');
INSERT INTO `city` VALUES ('285', '那曲地区', '26');
INSERT INTO `city` VALUES ('286', '阿里地区', '26');
INSERT INTO `city` VALUES ('287', '林芝地区', '26');
INSERT INTO `city` VALUES ('288', '西安市', '27');
INSERT INTO `city` VALUES ('289', '铜川市', '27');
INSERT INTO `city` VALUES ('290', '宝鸡市', '27');
INSERT INTO `city` VALUES ('291', '咸阳市', '27');
INSERT INTO `city` VALUES ('292', '渭南市', '27');
INSERT INTO `city` VALUES ('293', '延安市', '27');
INSERT INTO `city` VALUES ('294', '汉中市', '27');
INSERT INTO `city` VALUES ('295', '榆林市', '27');
INSERT INTO `city` VALUES ('296', '安康市', '27');
INSERT INTO `city` VALUES ('297', '商洛市', '27');
INSERT INTO `city` VALUES ('298', '兰州市', '28');
INSERT INTO `city` VALUES ('299', '嘉峪关市', '28');
INSERT INTO `city` VALUES ('300', '金昌市', '28');
INSERT INTO `city` VALUES ('301', '白银市', '28');
INSERT INTO `city` VALUES ('302', '天水市', '28');
INSERT INTO `city` VALUES ('303', '武威市', '28');
INSERT INTO `city` VALUES ('304', '张掖市', '28');
INSERT INTO `city` VALUES ('305', '平凉市', '28');
INSERT INTO `city` VALUES ('306', '酒泉市', '28');
INSERT INTO `city` VALUES ('307', '庆阳市', '28');
INSERT INTO `city` VALUES ('308', '定西市', '28');
INSERT INTO `city` VALUES ('309', '陇南市', '28');
INSERT INTO `city` VALUES ('310', '临夏回族自治州', '28');
INSERT INTO `city` VALUES ('311', '甘南藏族自治州', '28');
INSERT INTO `city` VALUES ('312', '西宁市', '29');
INSERT INTO `city` VALUES ('313', '海东地区', '29');
INSERT INTO `city` VALUES ('314', '海北藏族自治州', '29');
INSERT INTO `city` VALUES ('315', '黄南藏族自治州', '29');
INSERT INTO `city` VALUES ('316', '海南藏族自治州', '29');
INSERT INTO `city` VALUES ('317', '果洛藏族自治州', '29');
INSERT INTO `city` VALUES ('318', '玉树藏族自治州', '29');

-- ----------------------------
-- Table structure for contact
-- ----------------------------
DROP TABLE IF EXISTS `contact`;
CREATE TABLE `contact` (
  `c_id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键ID',
  `c_ephone` varchar(50) NOT NULL COMMENT '企业电话',
  `c_sphone` varchar(50) NOT NULL COMMENT '客服电话',
  `c_wechartimgurl` varchar(100) NOT NULL COMMENT '微信URL',
  `c_weboimgurl` varchar(100) NOT NULL COMMENT '微博URL',
  `c_qqnum` varchar(40) NOT NULL COMMENT 'QQ号',
  `c_address` varchar(50) NOT NULL COMMENT '地址',
  `c_xs` int(11) NOT NULL DEFAULT '0' COMMENT '是否前台显示（0不显示，1显示）',
  PRIMARY KEY (`c_id`)
) ENGINE=InnoDB AUTO_INCREMENT=30 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of contact
-- ----------------------------
INSERT INTO `contact` VALUES ('29', '15179749961', '15179084193', '/uploadFile/', '/uploadFile/', '123456789', 'objecterrors', '1');

-- ----------------------------
-- Table structure for cooorganiz
-- ----------------------------
DROP TABLE IF EXISTS `cooorganiz`;
CREATE TABLE `cooorganiz` (
  `co_id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键ID',
  `co_name` varchar(40) NOT NULL COMMENT '合作名称',
  `co_imgurl` varchar(50) NOT NULL COMMENT '图片URL',
  `co_linkurl` varchar(50) NOT NULL COMMENT '链接URL',
  PRIMARY KEY (`co_id`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of cooorganiz
-- ----------------------------

-- ----------------------------
-- Table structure for emp_task
-- ----------------------------
DROP TABLE IF EXISTS `emp_task`;
CREATE TABLE `emp_task` (
  `et_id` int(10) NOT NULL AUTO_INCREMENT COMMENT '员工任务列表主键id',
  `et_name` varchar(50) NOT NULL COMMENT '任务名称',
  `et_content` varchar(100) NOT NULL COMMENT '任务内容',
  `et_starttime` datetime NOT NULL COMMENT '任务发布开始时间',
  `et_status` int(10) NOT NULL DEFAULT '0' COMMENT '任务发布状态(0发布下架  1.发布 2.任务继续)',
  `et_endtime` datetime NOT NULL COMMENT '发布任务结束时间',
  PRIMARY KEY (`et_id`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of emp_task
-- ----------------------------
INSERT INTO `emp_task` VALUES ('7', '调整页面', '测试bug', '2018-01-25 00:00:00', '0', '2018-01-25 04:44:54');
INSERT INTO `emp_task` VALUES ('8', '测试bug', '查找页面的漏洞', '2018-01-25 00:00:00', '0', '2018-01-26 00:00:00');
INSERT INTO `emp_task` VALUES ('9', '休息', '整理心情', '2018-01-25 00:00:00', '0', '2018-01-26 00:00:00');
INSERT INTO `emp_task` VALUES ('11', '实现统计功能', '平台统计', '2018-01-25 00:00:00', '0', '2018-01-25 04:52:07');

-- ----------------------------
-- Table structure for employee
-- ----------------------------
DROP TABLE IF EXISTS `employee`;
CREATE TABLE `employee` (
  `e_id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键id',
  `re_id` int(11) NOT NULL COMMENT '角色id',
  `e_enum` varchar(50) NOT NULL COMMENT '员工编号',
  `e_name` varchar(50) NOT NULL COMMENT '员工姓名',
  `e_password` varchar(50) NOT NULL COMMENT '员工密码',
  `e_sex` varchar(50) NOT NULL COMMENT '员工性别',
  `e_idcard` varchar(50) NOT NULL COMMENT '身份证号',
  `e_phone` varchar(50) NOT NULL COMMENT '员工手机号',
  `e_position` varchar(50) NOT NULL COMMENT '员工职位',
  `e_email` varchar(50) NOT NULL COMMENT '员工邮箱',
  `e_status` int(11) NOT NULL COMMENT '角色状态 0在职 1离职',
  `e_retime` datetime NOT NULL COMMENT '创建时间',
  `e_remark` varchar(50) NOT NULL COMMENT '自我声明',
  `e_image` varchar(100) NOT NULL COMMENT '员工头像',
  PRIMARY KEY (`e_id`)
) ENGINE=InnoDB AUTO_INCREMENT=30 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of employee
-- ----------------------------
INSERT INTO `employee` VALUES ('1', '1', '2017001', 'admin', '0192023a7bbd73250516f069df18b500', '男', '511521198608131337', '13679084193', '超级管理员', '894040869@qq.com', '1', '2017-10-21 09:32:36', '加油', '/statics/front/statics/home2/images/user-head.png');
INSERT INTO `employee` VALUES ('29', '18', '2018125', '吴迅', '0192023a7bbd73250516f069df18b500', '男', '511521199709121224', '15979780917', '普通员工', '890903123@qq.com', '1', '2016-01-04 00:00:00', '自我完善', '/uploadFile/20180125050335600.jpg');

-- ----------------------------
-- Table structure for fabiao
-- ----------------------------
DROP TABLE IF EXISTS `fabiao`;
CREATE TABLE `fabiao` (
  `f_id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键id',
  `f_title` varchar(100) DEFAULT NULL COMMENT '标名称',
  `u_id` int(11) NOT NULL COMMENT '用户id',
  `f_code` varchar(100) DEFAULT NULL COMMENT '商品编号',
  `f_type` varchar(100) DEFAULT NULL COMMENT '标种',
  `f_part` text COMMENT '标的分类(爱车贷,爱房贷等)',
  `f_roe` decimal(10,2) DEFAULT NULL COMMENT '年收益率',
  `f_increase` decimal(8,2) DEFAULT NULL COMMENT '活动加息',
  `f_content` text COMMENT '产品概要',
  `f_situation` text COMMENT '项目情况',
  `f_opinion` text COMMENT '爱钱帮独立意见',
  `f_money` decimal(65,2) NOT NULL COMMENT '投标金额',
  `f_endmoney` decimal(65,2) NOT NULL COMMENT '已投金额',
  `f_endtime` datetime NOT NULL COMMENT '投标截止时间',
  `f_minmoney` decimal(65,2) NOT NULL COMMENT '最小投标金额',
  `f_maxmoney` decimal(65,2) NOT NULL COMMENT '最大投标金额',
  `f_rate` decimal(10,2) NOT NULL COMMENT '收益率',
  `f_image` varchar(200) DEFAULT NULL COMMENT '代表图',
  `f_orderimg` text COMMENT '其他图片(,分开)',
  `f_contract` text COMMENT '合同url',
  `f_bidstatus` int(30) NOT NULL COMMENT '投标状态 0未满 1已满',
  `f_status` int(11) NOT NULL COMMENT '发布状态 0隐藏(默认) 1募集标  2还款标  3结清标 4流标  5废标  6待审核标  7满标  8逾期',
  `f_securitymea` text COMMENT '担保措施',
  `f_security` varchar(100) DEFAULT NULL COMMENT '风险措施',
  `f_procedures` text COMMENT '手续(,分开)',
  `f_repayment` varchar(100) DEFAULT NULL COMMENT '还款方式',
  `f_huanstat` datetime DEFAULT NULL COMMENT '还款开始时间',
  `f_huanend` datetime DEFAULT NULL COMMENT '还款结束时间',
  `f_fqqx` int(10) DEFAULT NULL COMMENT '分期期限（默认1（自动，一次性）无利息,3无利息,6 （0.1利息）,12（0.12利息）,24（0.15利息）,)',
  `f_yhqx` int(10) DEFAULT NULL COMMENT '已还期限',
  `f_hkstype` int(10) DEFAULT NULL COMMENT '还款类型(1：自动还款(默认)，2：手动还款)',
  PRIMARY KEY (`f_id`),
  UNIQUE KEY `f_code` (`f_code`)
) ENGINE=InnoDB AUTO_INCREMENT=59 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of fabiao
-- ----------------------------
INSERT INTO `fabiao` VALUES ('56', '丰田AE86', '85', 'IAHR201801251149404', '新手标', '爱车贷', '0.09', '0.01', '产品金额为8.62万元。借款人的信用良好。 质押车辆基本信息： 车辆型号：丰田AE86 车辆购买时间：2014-07-23 公里数：31986公里 二手市场评估价格：17.5万 车辆是否有贷款：是						', '31986公里 二手市场评估价格：17.5万 车辆是否有贷款：是', '31986公里 二手市场评估价格：17.5万 车辆是否有贷款：是', '2000000.00', '0.00', '2019-01-25 09:48:46', '100.00', '2000.00', '0.00', '/uploadFile/yxry_1516852180559.jpg', '/uploadFile/yxry_1516852180559.jpg,/uploadFile/yxry_1516852180565.jpg', '/uploadFile/20180125114940573.jpg', '0', '1', '1.车辆经过验车后，已质押入库，详情可参考照片。 2.车辆证件手续已落实质押： 车主身份证：已核实并留存复印件 机动车行驶证：原件已提交质押 车钥匙：钥匙已提交质押 综上，已办理押车押手续的质押手续，借款人已签署《逾期买卖委托书》和《车辆买卖协议》，当借款人出现未能按时还款的情形，平台公司和线下合作公司可自行或委托第三方直接处理该车辆。 亿信金融为爱车贷项目设置了10%的风险保证金', '/uploadFile/20180125114940586.jpg', '0.01', '/uploadFile/20180125114940578.jpg', '2018-02-01 00:00:00', '2018-03-01 00:00:00', null, null, null);
INSERT INTO `fabiao` VALUES ('57', '奥迪A6', '86', 'IXXV201801251115255', '新手标', '爱车贷', '0.09', '0.01', '产品金额为8.62万元。借款人的信用良好。 质押车辆基本信息： 车辆型号：迈锐宝 车辆购买时间：2014-07-23 公里数：31986公里 二手市场评估价格：17.5万 车辆是否有贷款：是							', ' 车辆型号：迈锐宝 车辆购买时间', ' 车辆型号：迈锐宝 车辆购买时间', '20000.00', '300.00', '2018-01-27 00:00:00', '100.00', '5000.00', '0.00', '/uploadFile/yxry_1516850125017.jpg', '/uploadFile/yxry_1516850125017.jpg,/uploadFile/yxry_1516850125048.jpg', '/uploadFile/20180125111525052.pdf', '0', '1', '.车辆经过验车后，已质押入库，详情可参考照片。 2.车辆证件手续已落实质押： 车主身份证：已核实并留存复印件 机动车行驶证：原件已提交质押 车钥匙：钥匙已提交质押 综上，已办理押车押手续的质押手续，借款人已签署《逾期买卖委托书》和《车辆买卖协议》，当借款人出现未能按时还款的情形，平台公司和线下合作公司可自行或委托第三方直接处理该车辆。 爱钱帮为爱车贷项目设置了10%的风险保证金。', '/uploadFile/20180125111525065.2.3完全开发手册.pdf', '0.01', '/uploadFile/20180125111525057.jpg', '2018-02-01 00:00:00', '2018-03-01 00:00:00', null, null, null);
INSERT INTO `fabiao` VALUES ('58', '奥迪A6', '86', null, null, '爱车贷', '0.09', '0.01', '产品金额为8.62万元。借款人的信用良好。 质押车辆基本信息： 车辆型号：迈锐宝 车辆购买时间：2014-07-23 公里数：31986公里 二手市场评估价格：17.5万 车辆是否有贷款：是							', null, null, '20000.00', '0.00', '2018-01-25 11:11:48', '0.00', '0.00', '0.00', '/uploadFile/yxry_1516849908231.jpg', '/uploadFile/yxry_1516849908231.jpg,/uploadFile/yxry_1516849908236.jpg', null, '0', '4', '.车辆经过验车后，已质押入库，详情可参考照片。 2.车辆证件手续已落实质押： 车主身份证：已核实并留存复印件 机动车行驶证：原件已提交质押 车钥匙：钥匙已提交质押 综上，已办理押车押手续的质押手续，借款人已签署《逾期买卖委托书》和《车辆买卖协议》，当借款人出现未能按时还款的情形，平台公司和线下合作公司可自行或委托第三方直接处理该车辆。 爱钱帮为爱车贷项目设置了10%的风险保证金。', '/uploadFile/20180125111148240.jpg', null, null, null, null, null, null, null);

-- ----------------------------
-- Table structure for idCard
-- ----------------------------
DROP TABLE IF EXISTS `idCard`;
CREATE TABLE `idCard` (
  `ic_id` int(10) NOT NULL AUTO_INCREMENT COMMENT '身份证表主键id',
  `ic_number` varchar(30) DEFAULT NULL,
  `ic_frontUrl` varchar(100) DEFAULT NULL COMMENT '身份证正面',
  `ic_backUrl` varchar(255) DEFAULT NULL COMMENT '身份证背面',
  `ic_status` int(255) DEFAULT '0' COMMENT '身份证状态 0未审核 1待审核 2已审核)',
  `ic_starttime` datetime DEFAULT NULL COMMENT '认证时间',
  `ui_id` int(30) DEFAULT NULL COMMENT '用户基本信息id',
  `ic_name` varchar(255) DEFAULT NULL COMMENT '用户真实姓名',
  PRIMARY KEY (`ic_id`)
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of idCard
-- ----------------------------
INSERT INTO `idCard` VALUES ('1', '360730199611183635', null, '', '2', '2017-11-28 00:00:00', '1', '邱飞云');
INSERT INTO `idCard` VALUES ('14', '360733200005055312', '/uploadFile/yxry_1516840304694.jpg', '/uploadFile/yxry_1516840304700.jpg', '2', '2018-01-25 08:29:50', '66', '哇哈哈');
INSERT INTO `idCard` VALUES ('15', '511521199709141156', '/uploadFile/yxry_1516849565400.jpg', '/uploadFile/yxry_1516849565437.jpg', '2', '2018-01-25 11:02:59', '67', '汪栋才');
INSERT INTO `idCard` VALUES ('16', '511521199710081111', '/uploadFile/yxry_1516850389059.jpg', '/uploadFile/yxry_1516850389064.jpg', '2', '2018-01-25 11:18:45', '69', '刘小杰');
INSERT INTO `idCard` VALUES ('17', '511521188902167879', '/uploadFile/yxry_1516851187515.jpg', '/uploadFile/yxry_1516851187520.jpg', '2', '2018-01-25 11:31:37', '71', '李钟辉');
INSERT INTO `idCard` VALUES ('18', '511521199808271198', '/uploadFile/yxry_1516852060105.jpg', '/uploadFile/yxry_1516852060112.jpg', '2', '2018-01-25 11:46:30', '65', '王亮');

-- ----------------------------
-- Table structure for indexpic
-- ----------------------------
DROP TABLE IF EXISTS `indexpic`;
CREATE TABLE `indexpic` (
  `ip_id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键ID',
  `ip_name` varchar(40) NOT NULL COMMENT '图片名称',
  `ip_image` varchar(100) NOT NULL COMMENT '代表图',
  `ip_url` varchar(50) NOT NULL COMMENT '图片链接',
  PRIMARY KEY (`ip_id`)
) ENGINE=InnoDB AUTO_INCREMENT=34 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of indexpic
-- ----------------------------
INSERT INTO `indexpic` VALUES ('29', '哈哈哈', '/uploadFile/20180125080442777.jpg', 'javascript void(0)');
INSERT INTO `indexpic` VALUES ('30', '哈哈哈', '/uploadFile/20180125080500275.jpg', 'javascript void(0)');
INSERT INTO `indexpic` VALUES ('31', '哈哈哈', '/uploadFile/20180125080511489.jpg', 'javascript void(0)');
INSERT INTO `indexpic` VALUES ('32', '哈哈哈', '/uploadFile/20180125080518884.jpg', 'javascript void(0)');
INSERT INTO `indexpic` VALUES ('33', '哈哈哈', '/uploadFile/20180125080528369.jpg', 'javascript void(0)');

-- ----------------------------
-- Table structure for loan
-- ----------------------------
DROP TABLE IF EXISTS `loan`;
CREATE TABLE `loan` (
  `l_id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键id(借款)',
  `u_id` int(11) NOT NULL COMMENT '用户id',
  `l_money` double(225,2) NOT NULL COMMENT '借款金额',
  `l_time` datetime NOT NULL COMMENT '借款时间',
  `l_endtime` datetime NOT NULL COMMENT '还款时间',
  `l_status` int(11) NOT NULL COMMENT '状态 0未还款 1还款中 2已还款',
  `l_way` varchar(30) NOT NULL COMMENT '借款类型',
  `l_interest` double(225,2) NOT NULL COMMENT '还款利息',
  PRIMARY KEY (`l_id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of loan
-- ----------------------------

-- ----------------------------
-- Table structure for logDaily
-- ----------------------------
DROP TABLE IF EXISTS `logDaily`;
CREATE TABLE `logDaily` (
  `lj_id` int(10) DEFAULT NULL COMMENT '日志表主键id',
  `lj_introduce` varchar(100) DEFAULT NULL COMMENT '日志介绍',
  `lj_time` date DEFAULT NULL COMMENT '日志时间'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of logDaily
-- ----------------------------

-- ----------------------------
-- Table structure for messagebenas
-- ----------------------------
DROP TABLE IF EXISTS `messagebenas`;
CREATE TABLE `messagebenas` (
  `id` int(100) NOT NULL AUTO_INCREMENT COMMENT '发送短信格式信息表id',
  `msg_key` varchar(100) DEFAULT NULL COMMENT '短信类型(eg：短信注册)',
  `msg_value` varchar(200) DEFAULT NULL COMMENT '短信内容',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of messagebenas
-- ----------------------------
INSERT INTO `messagebenas` VALUES ('1', '短信注册提示', '您好,手机注册验证码为a,请尽快填写以完成注册,祝您生活愉快【亿信金融】');
INSERT INTO `messagebenas` VALUES ('2', '短信登入提示', '尊敬的用户您好,您的a账号在异地登入,如果不是您本人操作,请及时更改密码或联系客服【忆信财富】');
INSERT INTO `messagebenas` VALUES ('3', '短信充值提示', '尊敬的用户您好,您的a账号在b已充值c元,如对此账单有疑问,请及时联系我们的客服,祝您生活愉快【忆信财富】');
INSERT INTO `messagebenas` VALUES ('4', '短信投资提示', '尊敬的用户您好,您的a账号在b投资了c项目,总计投资d元,如果不是您本人操作,请及时联系我们的客服,祝您生活愉快【忆信财富】');
INSERT INTO `messagebenas` VALUES ('5', '短信收到本金或利息', '尊敬的用户您好,您的a账号在b项目收到了c元的d,感谢您的使用,祝您生活愉快【忆信财富】');
INSERT INTO `messagebenas` VALUES ('6', '短信提现提示', '尊敬的a您好,您在忆信金融提现的金额已受理,金额将在五个工作日内返回您的银行卡账号,没有此操作请不要理会此信息【忆信金融】');
INSERT INTO `messagebenas` VALUES ('7', '短信项目公告提示', '尊敬的用户您好,忆信财富最近推出了一款a项目,预期年化收益率为b,回利期限只有c天,机不可失,失不再来,有意请点击d,祝您生活愉快【忆信财富】');
INSERT INTO `messagebenas` VALUES ('8', '短信活动公告提示', '尊敬的用户您好,您所投的a项目已正在还款,请注意您的余额明细,祝您生活愉快【忆信财富】');
INSERT INTO `messagebenas` VALUES ('9', '短信修改账号提示', '尊敬的用户您好,您的需要修改账号的验证码为a,请尽快填写完相关资料信息完成修改,祝您生活愉快【忆信财富】');
INSERT INTO `messagebenas` VALUES ('10', '短信找回密码提示', '尊敬的用户您好,您的账号a需找回密码的验证码是b,请尽快填写相关资料信息,祝您生活愉快【忆信财富】');
INSERT INTO `messagebenas` VALUES ('11', '还款详情提示', '尊敬的用户您好,您本次还款a元,如对此单有疑问,请及时联系我们客服,祝您生活愉快【忆信财富】');

-- ----------------------------
-- Table structure for moneydetail
-- ----------------------------
DROP TABLE IF EXISTS `moneydetail`;
CREATE TABLE `moneydetail` (
  `md_id` int(10) NOT NULL AUTO_INCREMENT,
  `u_id` int(10) DEFAULT NULL,
  `md_money` double(10,2) DEFAULT NULL,
  `md_introduce` varchar(50) DEFAULT NULL,
  `md_stype` int(10) DEFAULT NULL,
  `md_time` datetime DEFAULT NULL,
  PRIMARY KEY (`md_id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of moneydetail
-- ----------------------------

-- ----------------------------
-- Table structure for moneyreccoord
-- ----------------------------
DROP TABLE IF EXISTS `moneyreccoord`;
CREATE TABLE `moneyreccoord` (
  `mr_id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键id',
  `u_id` int(11) NOT NULL COMMENT '用户id',
  `mr_detail` varchar(50) NOT NULL COMMENT '资金明细',
  `mr_wastemonr` decimal(10,1) NOT NULL COMMENT '资金金额',
  `mr_wasttime` datetime NOT NULL COMMENT '资金时间',
  PRIMARY KEY (`mr_id`)
) ENGINE=InnoDB AUTO_INCREMENT=28 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of moneyreccoord
-- ----------------------------
INSERT INTO `moneyreccoord` VALUES ('24', '85', 'yxjr15179084193在亿信平台充值了10000.0元', '10000.0', '2018-01-25 00:00:00');
INSERT INTO `moneyreccoord` VALUES ('25', '86', 'yxjr18296719481在亿信平台充值了500.0元', '500.0', '2018-01-25 00:00:00');
INSERT INTO `moneyreccoord` VALUES ('26', '88', 'yxjr17379741690在亿信平台充值了200.0元', '200.0', '2018-01-25 00:00:00');
INSERT INTO `moneyreccoord` VALUES ('27', '90', 'yxjr13576748465在亿信平台充值了200000.0元', '200000.0', '2018-01-25 00:00:00');

-- ----------------------------
-- Table structure for newsfocus
-- ----------------------------
DROP TABLE IF EXISTS `newsfocus`;
CREATE TABLE `newsfocus` (
  `nf_id` int(11) NOT NULL AUTO_INCREMENT,
  `nf_title` varchar(100) DEFAULT NULL,
  `nf_content` text,
  `nf_image` varchar(200) DEFAULT NULL,
  `nf_time` datetime DEFAULT NULL,
  PRIMARY KEY (`nf_id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of newsfocus
-- ----------------------------
INSERT INTO `newsfocus` VALUES ('6', '忆信金融平台独家报道', '<p>低利润，高回报，注册就有50元的新人红包及代金券，好礼等你来拿</p>,<p>低利润，高回报，注册就有50元的新人红包及代金券，好礼等你来拿</p>', '/uploadFile/20180125052018477.jpg', '2018-01-25 00:00:00');

-- ----------------------------
-- Table structure for notice
-- ----------------------------
DROP TABLE IF EXISTS `notice`;
CREATE TABLE `notice` (
  `n_id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键id',
  `n_title` varchar(50) NOT NULL COMMENT '公告主题',
  `n_content` varchar(50) NOT NULL COMMENT '公告内容',
  `n_stype` varchar(50) NOT NULL COMMENT '公告类型：还款公告/项目公告/网站公告',
  `n_time` varchar(50) NOT NULL COMMENT '发布时间',
  `n_type` varchar(50) NOT NULL COMMENT '公告发布类型',
  PRIMARY KEY (`n_id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of notice
-- ----------------------------

-- ----------------------------
-- Table structure for noticetype
-- ----------------------------
DROP TABLE IF EXISTS `noticetype`;
CREATE TABLE `noticetype` (
  `nt_id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键id',
  `e_id` int(11) NOT NULL COMMENT '发布人（员工）id',
  `nt_email` varchar(50) NOT NULL COMMENT '邮件通知状态（1 关闭 2 默认开启）',
  `nt_news` varchar(50) NOT NULL COMMENT '短信通知状态（1 默认关闭 2开启）',
  PRIMARY KEY (`nt_id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of noticetype
-- ----------------------------
INSERT INTO `noticetype` VALUES ('10', '1', '1', '1');

-- ----------------------------
-- Table structure for powertree
-- ----------------------------
DROP TABLE IF EXISTS `powertree`;
CREATE TABLE `powertree` (
  `pt_id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键ID',
  `pt_name` varchar(40) NOT NULL COMMENT '权限名称',
  `pt_node` int(11) NOT NULL COMMENT '节点',
  `pt_status` int(11) NOT NULL COMMENT '0禁用 1启用',
  PRIMARY KEY (`pt_id`)
) ENGINE=InnoDB AUTO_INCREMENT=51 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of powertree
-- ----------------------------
INSERT INTO `powertree` VALUES ('1', '管理设置', '0', '1');
INSERT INTO `powertree` VALUES ('2', '首页管理', '0', '1');
INSERT INTO `powertree` VALUES ('3', '贷借管理', '0', '1');
INSERT INTO `powertree` VALUES ('4', '资金管理', '0', '1');
INSERT INTO `powertree` VALUES ('5', '操作记录管理', '0', '1');
INSERT INTO `powertree` VALUES ('6', '会员管理', '0', '1');
INSERT INTO `powertree` VALUES ('7', '认证审核管理', '0', '1');
INSERT INTO `powertree` VALUES ('8', '活动中心管理', '0', '1');
INSERT INTO `powertree` VALUES ('9', '信息管理', '0', '1');
INSERT INTO `powertree` VALUES ('10', '奖励与费用管理', '0', '1');
INSERT INTO `powertree` VALUES ('11', '权限管理', '1', '1');
INSERT INTO `powertree` VALUES ('12', '用户管理', '1', '1');
INSERT INTO `powertree` VALUES ('13', '员工管理', '1', '1');
INSERT INTO `powertree` VALUES ('14', '轮播图管理', '2', '1');
INSERT INTO `powertree` VALUES ('15', '联系我们管理', '2', '1');
INSERT INTO `powertree` VALUES ('16', '合作机构管理', '2', '1');
INSERT INTO `powertree` VALUES ('17', '投标管理', '3', '1');
INSERT INTO `powertree` VALUES ('18', '发标管理', '3', '1');
INSERT INTO `powertree` VALUES ('19', '新闻信息管理', '2', '1');
INSERT INTO `powertree` VALUES ('20', '充值管理', '4', '1');
INSERT INTO `powertree` VALUES ('21', '提现管理', '4', '1');
INSERT INTO `powertree` VALUES ('22', '借款管理', '4', '1');
INSERT INTO `powertree` VALUES ('23', '还款管理', '4', '1');
INSERT INTO `powertree` VALUES ('24', '银行卡管理', '4', '1');
INSERT INTO `powertree` VALUES ('25', '邮箱信息管理', '9', '1');
INSERT INTO `powertree` VALUES ('26', '资金使用明细管理', '5', '1');
INSERT INTO `powertree` VALUES ('27', '管理员操作管理', '5', '1');
INSERT INTO `powertree` VALUES ('28', '实名认证', '7', '1');
INSERT INTO `powertree` VALUES ('29', '发标审核', '7', '1');
INSERT INTO `powertree` VALUES ('30', '关于我们管理', '2', '1');
INSERT INTO `powertree` VALUES ('31', '视频管理', '2', '1');
INSERT INTO `powertree` VALUES ('32', '公告管理', '8', '1');
INSERT INTO `powertree` VALUES ('33', '公告类型管理', '8', '1');
INSERT INTO `powertree` VALUES ('34', '活动专区管理', '8', '1');
INSERT INTO `powertree` VALUES ('35', '短信接口管理', '9', '1');
INSERT INTO `powertree` VALUES ('36', '红包管理', '10', '1');
INSERT INTO `powertree` VALUES ('37', '代金券管理', '10', '1');
INSERT INTO `powertree` VALUES ('38', '会员明细管理', '6', '1');
INSERT INTO `powertree` VALUES ('39', '会员成长等级', '6', '1');

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
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of profit
-- ----------------------------

-- ----------------------------
-- Table structure for provice
-- ----------------------------
DROP TABLE IF EXISTS `provice`;
CREATE TABLE `provice` (
  `pv_id` int(11) NOT NULL AUTO_INCREMENT COMMENT '省份表主键id',
  `pv_name` varchar(50) NOT NULL COMMENT '省份名',
  PRIMARY KEY (`pv_id`)
) ENGINE=InnoDB AUTO_INCREMENT=35 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of provice
-- ----------------------------
INSERT INTO `provice` VALUES ('1', '北京市');
INSERT INTO `provice` VALUES ('2', '天津市');
INSERT INTO `provice` VALUES ('3', '河北省');
INSERT INTO `provice` VALUES ('4', '山西省');
INSERT INTO `provice` VALUES ('5', '内蒙古自治区');
INSERT INTO `provice` VALUES ('6', '辽宁省');
INSERT INTO `provice` VALUES ('7', '吉林省');
INSERT INTO `provice` VALUES ('8', '黑龙江省');
INSERT INTO `provice` VALUES ('9', '上海市');
INSERT INTO `provice` VALUES ('10', '江苏省');
INSERT INTO `provice` VALUES ('11', '浙江省');
INSERT INTO `provice` VALUES ('12', '安徽省');
INSERT INTO `provice` VALUES ('13', '福建省');
INSERT INTO `provice` VALUES ('14', '江西省');
INSERT INTO `provice` VALUES ('15', '山东省');
INSERT INTO `provice` VALUES ('16', '河南省');
INSERT INTO `provice` VALUES ('17', '湖北省');
INSERT INTO `provice` VALUES ('18', '湖南省');
INSERT INTO `provice` VALUES ('19', '广东省');
INSERT INTO `provice` VALUES ('20', '广西壮族自治区');
INSERT INTO `provice` VALUES ('21', '海南省');
INSERT INTO `provice` VALUES ('22', '重庆市');
INSERT INTO `provice` VALUES ('23', '四川省');
INSERT INTO `provice` VALUES ('24', '贵州省');
INSERT INTO `provice` VALUES ('25', '云南省');
INSERT INTO `provice` VALUES ('26', '西藏自治区');
INSERT INTO `provice` VALUES ('27', '陕西省');
INSERT INTO `provice` VALUES ('28', '甘肃省');
INSERT INTO `provice` VALUES ('29', '青海省');
INSERT INTO `provice` VALUES ('30', '宁夏回族自治区');
INSERT INTO `provice` VALUES ('31', '新疆维吾尔自治区');
INSERT INTO `provice` VALUES ('32', '香港特别行政区');
INSERT INTO `provice` VALUES ('33', '澳门特别行政区');
INSERT INTO `provice` VALUES ('34', '台湾省');

-- ----------------------------
-- Table structure for recharge
-- ----------------------------
DROP TABLE IF EXISTS `recharge`;
CREATE TABLE `recharge` (
  `re_id` int(11) NOT NULL AUTO_INCREMENT COMMENT '充值表主键id',
  `u_id` int(50) NOT NULL COMMENT '用户表id',
  `re_money` double(12,2) NOT NULL COMMENT '充值金额',
  `re_time` datetime NOT NULL COMMENT '充值时间',
  PRIMARY KEY (`re_id`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of recharge
-- ----------------------------
INSERT INTO `recharge` VALUES ('13', '85', '10000.00', '2018-01-25 08:44:29');
INSERT INTO `recharge` VALUES ('14', '86', '500.00', '2018-01-25 11:09:08');
INSERT INTO `recharge` VALUES ('15', '88', '200.00', '2018-01-25 11:22:54');
INSERT INTO `recharge` VALUES ('16', '90', '200000.00', '2018-01-25 11:35:14');

-- ----------------------------
-- Table structure for record
-- ----------------------------
DROP TABLE IF EXISTS `record`;
CREATE TABLE `record` (
  `rd_id` int(11) NOT NULL AUTO_INCREMENT COMMENT '员工操作表主键id',
  `rd_name` varchar(50) NOT NULL COMMENT '操作名称',
  `e_id` int(11) NOT NULL COMMENT '操作员工id',
  `rd_status` int(11) NOT NULL COMMENT '0成功 1失败',
  `rd_time` datetime NOT NULL COMMENT '操作时间',
  `rd_remark` varchar(50) NOT NULL COMMENT '备注',
  PRIMARY KEY (`rd_id`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of record
-- ----------------------------
INSERT INTO `record` VALUES ('10', '实名认证', '1', '0', '2018-01-25 08:31:47', '对用户的实名认证操作管理');
INSERT INTO `record` VALUES ('11', '实名认证', '1', '0', '2018-01-25 11:06:07', '对用户的实名认证操作管理');
INSERT INTO `record` VALUES ('12', '实名认证', '1', '0', '2018-01-25 11:19:50', '对用户的实名认证操作管理');
INSERT INTO `record` VALUES ('13', '实名认证', '1', '0', '2018-01-25 11:33:09', '对用户的实名认证操作管理');
INSERT INTO `record` VALUES ('14', '实名认证', '1', '0', '2018-01-25 11:47:41', '对用户的实名认证操作管理');

-- ----------------------------
-- Table structure for redmoney
-- ----------------------------
DROP TABLE IF EXISTS `redmoney`;
CREATE TABLE `redmoney` (
  `r_id` int(10) NOT NULL AUTO_INCREMENT,
  `u_id` int(10) DEFAULT NULL,
  `r_image` varchar(50) DEFAULT NULL,
  `r_endtime` datetime DEFAULT NULL,
  `r_stardtime` datetime DEFAULT NULL,
  `r_money` decimal(65,2) DEFAULT NULL,
  `r_condition` decimal(65,2) DEFAULT NULL,
  `r_start` int(10) NOT NULL COMMENT '使用状态(0未使用,1未使用)',
  PRIMARY KEY (`r_id`)
) ENGINE=InnoDB AUTO_INCREMENT=70 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of redmoney
-- ----------------------------
INSERT INTO `redmoney` VALUES ('63', '84', '/uploadFile/redmoney/timg.jpg', '2018-02-01 05:39:05', '2018-01-25 05:39:05', '50.00', null, '0');
INSERT INTO `redmoney` VALUES ('64', '85', '/uploadFile/redmoney/timg.jpg', '2018-02-01 08:27:27', '2018-01-25 08:27:27', '50.00', null, '0');
INSERT INTO `redmoney` VALUES ('65', '86', '/uploadFile/redmoney/timg.jpg', '2018-02-01 10:56:59', '2018-01-25 10:56:59', '50.00', null, '0');
INSERT INTO `redmoney` VALUES ('66', '87', '/uploadFile/redmoney/timg.jpg', '2018-02-01 10:57:03', '2018-01-25 10:57:03', '50.00', null, '0');
INSERT INTO `redmoney` VALUES ('67', '88', '/uploadFile/redmoney/timg.jpg', '2018-02-01 11:17:38', '2018-01-25 11:17:38', '50.00', null, '1');
INSERT INTO `redmoney` VALUES ('68', '89', '/uploadFile/redmoney/timg.jpg', '2018-02-01 11:29:09', '2018-01-25 11:29:09', '50.00', null, '0');
INSERT INTO `redmoney` VALUES ('69', '90', '/uploadFile/redmoney/timg.jpg', '2018-02-01 11:30:19', '2018-01-25 11:30:19', '50.00', null, '0');

-- ----------------------------
-- Table structure for repayment
-- ----------------------------
DROP TABLE IF EXISTS `repayment`;
CREATE TABLE `repayment` (
  `rm_id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键id(还款表)',
  `f_id` int(11) DEFAULT NULL COMMENT '发标人id',
  `rm_plan` decimal(56,2) DEFAULT NULL COMMENT '计划还款金额(每期还款)',
  `rm_face` decimal(56,2) DEFAULT NULL COMMENT '实际还款金额(已还款)',
  `rm_wait` decimal(56,2) DEFAULT NULL COMMENT '待还款金额',
  `rm_all` decimal(56,2) DEFAULT '0.00' COMMENT '还款总金额(投标金额+总收益利息)',
  `rm_state` int(11) DEFAULT NULL COMMENT '1:未到还款期，2：还款中，3：已还清，4：逾期',
  `rm_style` int(11) DEFAULT NULL COMMENT '1:自动还款，2：手动还款',
  `f_code` varchar(100) NOT NULL COMMENT '订单编号',
  `rm_overdue` decimal(56,2) NOT NULL DEFAULT '0.00' COMMENT '逾期还款总金额',
  PRIMARY KEY (`rm_id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of repayment
-- ----------------------------

-- ----------------------------
-- Table structure for role
-- ----------------------------
DROP TABLE IF EXISTS `role`;
CREATE TABLE `role` (
  `re_id` int(11) NOT NULL AUTO_INCREMENT COMMENT '角色表id',
  `pt_id` varchar(300) NOT NULL COMMENT '权限树id',
  `re_name` varchar(50) NOT NULL COMMENT '职位名',
  `re_remark` varchar(30) NOT NULL COMMENT '职位说明',
  `re_status` int(11) NOT NULL COMMENT '角色状态 0、启用 1、禁用',
  PRIMARY KEY (`re_id`)
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of role
-- ----------------------------
INSERT INTO `role` VALUES ('1', '1,11,12,13,2,14,15,16,19,30,31,3,17,18,4,20,21,22,23,24,5,26,27,6,38,7,28,29,8,32,33,34,9,25,35,10,36,37', 'admin', '拥有最高权限', '0');
INSERT INTO `role` VALUES ('17', '1', '执行董事长', '一人之上，万人之下', '0');
INSERT INTO `role` VALUES ('18', '1', '普通员工', '一切以零开始', '0');

-- ----------------------------
-- Table structure for send_mail
-- ----------------------------
DROP TABLE IF EXISTS `send_mail`;
CREATE TABLE `send_mail` (
  `mailid` int(100) NOT NULL AUTO_INCREMENT,
  `host` varchar(100) DEFAULT NULL,
  `formName` varchar(100) DEFAULT NULL,
  `password` varchar(100) DEFAULT NULL,
  `isuser` int(5) DEFAULT NULL,
  PRIMARY KEY (`mailid`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of send_mail
-- ----------------------------
INSERT INTO `send_mail` VALUES ('1', 'smtp.qq.com', 'acgnwang@qq.com', 'vcnepzmbiuakcbdf', '2');
INSERT INTO `send_mail` VALUES ('2', 'smtp.163.com', 'httpwmm@163.com', '123456', '1');

-- ----------------------------
-- Table structure for send_msg
-- ----------------------------
DROP TABLE IF EXISTS `send_msg`;
CREATE TABLE `send_msg` (
  `msgid` int(100) NOT NULL AUTO_INCREMENT,
  `username` varchar(100) DEFAULT NULL,
  `password` varchar(100) DEFAULT NULL,
  `method` varchar(100) DEFAULT NULL,
  `isuser` int(5) DEFAULT NULL,
  PRIMARY KEY (`msgid`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of send_msg
-- ----------------------------
INSERT INTO `send_msg` VALUES ('1', 'acgn', 'ec99f5e2905b462cf9e13aa35988a582', 'http://api.sms.cn/sms/', '1');

-- ----------------------------
-- Table structure for sign
-- ----------------------------
DROP TABLE IF EXISTS `sign`;
CREATE TABLE `sign` (
  `sigid` int(100) NOT NULL AUTO_INCREMENT COMMENT '主键id',
  `siguser` int(100) DEFAULT NULL COMMENT '用户id',
  `siglevel` int(10) DEFAULT NULL COMMENT '用户等级',
  `countday` int(255) DEFAULT NULL COMMENT '连续签到天数',
  `siggrowth` varchar(100) DEFAULT NULL COMMENT '成长值',
  `lasttime` datetime DEFAULT NULL COMMENT '最后签到时间',
  PRIMARY KEY (`sigid`)
) ENGINE=InnoDB AUTO_INCREMENT=26 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of sign
-- ----------------------------
INSERT INTO `sign` VALUES ('21', '84', '1', '0', '4', '2018-01-25 00:00:00');
INSERT INTO `sign` VALUES ('22', '85', '1', '0', '2', '2017-01-25 00:00:00');
INSERT INTO `sign` VALUES ('23', '86', '1', '0', '4', '2018-01-25 00:00:00');
INSERT INTO `sign` VALUES ('24', '88', '1', '0', '2', '2017-01-25 00:00:00');
INSERT INTO `sign` VALUES ('25', '90', '1', '0', '2', '2017-01-25 00:00:00');

-- ----------------------------
-- Table structure for user
-- ----------------------------
DROP TABLE IF EXISTS `user`;
CREATE TABLE `user` (
  `u_id` int(11) NOT NULL AUTO_INCREMENT COMMENT '用户id',
  `u_password` varchar(50) NOT NULL COMMENT '用户密码',
  `u_phone` varchar(30) NOT NULL COMMENT '电话号码)',
  `u_loginTime` datetime NOT NULL COMMENT '登录时间',
  `order_invite` varchar(200) DEFAULT NULL COMMENT '别人的邀请码',
  `u_invite` varchar(100) NOT NULL COMMENT '自己的邀请码 Unique',
  `u_enable` int(11) NOT NULL COMMENT '是否禁用 1、启用 2、禁用 3.黑名单 状态',
  `u_isAccountSum` int(11) NOT NULL COMMENT '是否领取代金券',
  `qr_code` varchar(100) DEFAULT NULL COMMENT '二维码',
  `u_address` varchar(100) DEFAULT NULL COMMENT '地址',
  `u_ip` varchar(20) NOT NULL COMMENT 'ip',
  `u_regTime` datetime NOT NULL,
  `u_credit` int(100) NOT NULL COMMENT '信用额度默认值为3000',
  `u_balance` decimal(60,2) NOT NULL COMMENT '余额值默认为0',
  `ul_id` varchar(30) NOT NULL COMMENT '成长值等级表id',
  `vd_id` int(100) NOT NULL COMMENT '会员积分表id',
  PRIMARY KEY (`u_id`)
) ENGINE=InnoDB AUTO_INCREMENT=91 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of user
-- ----------------------------
INSERT INTO `user` VALUES ('1', 'e4216961e03f91a7632f9fee1444d3bb', '17370134046', '2018-01-24 10:07:53', null, 'ecbb9a370a304f549afbc9dbdf8fd0b0', '1', '1', '/uploadFile/20171219160103602.png', '中国-华东-江西省-赣州市--移动', '218.204.104.234', '2017-12-19 16:01:03', '300', '1000000.00', '0', '0');
INSERT INTO `user` VALUES ('84', 'e4216961e03f91a7632f9fee1444d3bb', '15179749961', '2018-01-25 11:45:28', null, 'b628a5ab22a74312a0e5188948871483', '1', '1', '/uploadFile/20180125053903049.png', '中国-华东-江西省-赣州市--移动', '223.104.31.23', '2018-01-25 05:39:04', '3000', '0.00', '0', '0');
INSERT INTO `user` VALUES ('85', 'e4216961e03f91a7632f9fee1444d3bb', '15179084193', '2018-01-25 09:04:11', null, '8b1a8e363fc74b84a8cb58f4be7a3515', '1', '1', '/uploadFile/20180125082724679.png', '中国-华东-江西省-南昌市--电信', '182.97.114.186', '2018-01-25 08:27:26', '3000', '10000.00', '0', '0');
INSERT INTO `user` VALUES ('86', 'e4216961e03f91a7632f9fee1444d3bb', '18296719481', '2018-01-25 11:44:40', null, '12cbe25603d94a28b733ed7da3f0ad81', '1', '1', '/uploadFile/20180125105656370.png', '中国-华东-江西省-南昌市--电信', '182.97.114.186', '2018-01-25 10:56:58', '3000', '500.00', '0', '0');
INSERT INTO `user` VALUES ('88', 'e4216961e03f91a7632f9fee1444d3bb', '17379741690', '2018-01-25 11:20:59', null, '3bdf009a8ce64cd089df9123cfc55be6', '1', '1', '/uploadFile/20180125111736335.png', '中国-华东-江西省-南昌市--电信', '182.97.114.186', '2018-01-25 11:17:37', '3000', '0.00', '0', '0');
INSERT INTO `user` VALUES ('90', 'e4216961e03f91a7632f9fee1444d3bb', '13576748465', '2018-01-25 11:39:03', null, '06be657985324ce3858b08506be0f70d', '1', '1', '/uploadFile/20180125112906229.png', '中国-华东-江西省-南昌市--电信', '182.97.114.186', '2018-01-25 11:29:07', '3000', '0.00', '0', '0');

-- ----------------------------
-- Table structure for user_backcard
-- ----------------------------
DROP TABLE IF EXISTS `user_backcard`;
CREATE TABLE `user_backcard` (
  `ub_id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键id',
  `ui_id` int(11) NOT NULL COMMENT '用户基本信息id',
  `ub_backcardnum` varchar(50) NOT NULL COMMENT '银行卡号',
  `ub_placeback` varchar(30) NOT NULL COMMENT '所属银行',
  `ub_bindtime` datetime NOT NULL COMMENT '绑卡时间',
  `ub_status` int(11) NOT NULL COMMENT '状态 0未绑定 1绑定',
  `ub_money` double(20,2) NOT NULL COMMENT '余额',
  PRIMARY KEY (`ub_id`)
) ENGINE=InnoDB AUTO_INCREMENT=24 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of user_backcard
-- ----------------------------
INSERT INTO `user_backcard` VALUES ('1', '1', '6210984280004618036', '邮储银行·绿卡通', '2018-01-04 08:19:18', '0', '10000.00');
INSERT INTO `user_backcard` VALUES ('19', '66', '6210984280004618037', '邮储银行·绿卡通', '2018-01-25 08:42:57', '1', '90000.00');
INSERT INTO `user_backcard` VALUES ('20', '67', '6210984280004618009', '邮储银行·绿卡通', '2018-01-25 11:08:03', '1', '99500.00');
INSERT INTO `user_backcard` VALUES ('23', '86', '6210984280004618001', '邮储银行·绿卡通', '2018-01-25 11:41:10', '1', '100000.00');

-- ----------------------------
-- Table structure for user_info
-- ----------------------------
DROP TABLE IF EXISTS `user_info`;
CREATE TABLE `user_info` (
  `ui_id` int(100) NOT NULL AUTO_INCREMENT COMMENT ' id',
  `u_id` int(50) NOT NULL COMMENT '用户表id',
  `ui_headImg` varchar(255) NOT NULL COMMENT '用户头像',
  `ui_name` varchar(100) NOT NULL COMMENT '用户名',
  `ui_sex` varchar(10) NOT NULL COMMENT '性别',
  `ui_birthday` datetime NOT NULL COMMENT '出生日期',
  `pv_id` int(30) DEFAULT NULL COMMENT '省份id',
  `cy_id` int(30) DEFAULT NULL COMMENT '城市id',
  `ae_id` int(30) DEFAULT NULL COMMENT '地区表',
  `ui_dealpwd` varchar(50) DEFAULT NULL COMMENT '交易密码',
  `ui_email` varchar(50) DEFAULT NULL COMMENT '邮箱',
  `ui_emailstatus` int(10) NOT NULL DEFAULT '0' COMMENT '邮箱状态(0未审核  1已审核)',
  `ui_openstatus` int(10) NOT NULL DEFAULT '0' COMMENT '开通托管账户状态(默认0：未开户，1：未实名，2：开户)',
  PRIMARY KEY (`ui_id`)
) ENGINE=InnoDB AUTO_INCREMENT=72 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of user_info
-- ----------------------------
INSERT INTO `user_info` VALUES ('1', '1', '/statics/front/statics/home2/images/user-head.png', '亿信金融平台', '男', '2017-12-06 08:42:36', '1', '1', '1', '2976205bb9abafc0407604e2c68a9592', '2083533508@qq.com', '1', '2');
INSERT INTO `user_info` VALUES ('65', '84', '/statics/front/statics/home2/images/user-head.png', 'yxjr15179749961', '保密', '2018-01-25 05:39:05', null, null, null, null, null, '0', '1');
INSERT INTO `user_info` VALUES ('66', '85', '/statics/front/statics/home2/images/user-head.png', 'yxjr15179084193', '保密', '2018-01-25 08:27:27', null, null, null, '2976205bb9abafc0407604e2c68a9592', null, '0', '2');
INSERT INTO `user_info` VALUES ('67', '86', '/statics/front/statics/home2/images/user-head.png', 'yxjr18296719481', '保密', '2018-01-25 10:56:58', null, null, null, '2976205bb9abafc0407604e2c68a9592', null, '0', '2');
INSERT INTO `user_info` VALUES ('68', '87', '/statics/front/statics/home2/images/user-head.png', 'yxjr18296719481', '保密', '2018-01-25 10:57:02', null, null, null, null, null, '0', '0');
INSERT INTO `user_info` VALUES ('69', '88', '/statics/front/statics/home2/images/user-head.png', 'yxjr17379741690', '保密', '2018-01-25 11:17:37', null, null, null, '2976205bb9abafc0407604e2c68a9592', null, '0', '2');
INSERT INTO `user_info` VALUES ('70', '89', '/statics/front/statics/home2/images/user-head.png', 'yxjr13576748465', '保密', '2018-01-25 11:29:09', null, null, null, null, null, '0', '0');
INSERT INTO `user_info` VALUES ('71', '90', '/statics/front/statics/home2/images/user-head.png', 'yxjr13576748465', '保密', '2018-01-25 11:30:16', null, null, null, '2976205bb9abafc0407604e2c68a9592', null, '0', '2');

-- ----------------------------
-- Table structure for user_level
-- ----------------------------
DROP TABLE IF EXISTS `user_level`;
CREATE TABLE `user_level` (
  `ul_id` int(11) NOT NULL AUTO_INCREMENT COMMENT '等级id',
  `ul_name` varchar(50) NOT NULL COMMENT '等级名称',
  `ul_levelValue` varchar(50) NOT NULL COMMENT '成长值',
  `u_id` int(11) NOT NULL COMMENT '用户表id',
  PRIMARY KEY (`ul_id`)
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of user_level
-- ----------------------------

-- ----------------------------
-- Table structure for user_setupnatice
-- ----------------------------
DROP TABLE IF EXISTS `user_setupnatice`;
CREATE TABLE `user_setupnatice` (
  `us_id` int(10) NOT NULL AUTO_INCREMENT COMMENT '用户通知设置表id',
  `u_id` int(10) DEFAULT NULL COMMENT '用户表id)',
  `us_name` varchar(50) DEFAULT NULL COMMENT '通知设置名',
  `us_insideStatus` int(10) DEFAULT NULL COMMENT '（站内信息设置 0启用 1禁用）',
  `us_emailStatus` int(10) DEFAULT NULL COMMENT '邮件通知 0启用 1禁用)',
  `us_messageStatus` int(10) DEFAULT NULL COMMENT '(短信通知 0启用 1禁用)',
  PRIMARY KEY (`us_id`)
) ENGINE=InnoDB AUTO_INCREMENT=142 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of user_setupnatice
-- ----------------------------
INSERT INTO `user_setupnatice` VALUES ('72', '84', '充值成功', '1', '1', null);
INSERT INTO `user_setupnatice` VALUES ('73', '84', '投资成功', '1', '1', null);
INSERT INTO `user_setupnatice` VALUES ('74', '84', '收到本金或利息', '1', '1', '1');
INSERT INTO `user_setupnatice` VALUES ('75', '84', '收到平台奖励', '1', '1', null);
INSERT INTO `user_setupnatice` VALUES ('76', '84', '提现成功', '1', '1', null);
INSERT INTO `user_setupnatice` VALUES ('77', '84', '债权转让成功', '1', '1', null);
INSERT INTO `user_setupnatice` VALUES ('78', '84', '债权承接成功', '1', '1', null);
INSERT INTO `user_setupnatice` VALUES ('79', '84', '项目公告', '1', '1', '1');
INSERT INTO `user_setupnatice` VALUES ('80', '84', '活动公告', '1', '1', '1');
INSERT INTO `user_setupnatice` VALUES ('81', '84', '其他平台公告', '1', '1', null);
INSERT INTO `user_setupnatice` VALUES ('82', '85', '充值成功', '1', '1', null);
INSERT INTO `user_setupnatice` VALUES ('83', '85', '投资成功', '1', '1', null);
INSERT INTO `user_setupnatice` VALUES ('84', '85', '收到本金或利息', '1', '1', '1');
INSERT INTO `user_setupnatice` VALUES ('85', '85', '收到平台奖励', '1', '1', null);
INSERT INTO `user_setupnatice` VALUES ('86', '85', '提现成功', '1', '1', null);
INSERT INTO `user_setupnatice` VALUES ('87', '85', '债权转让成功', '1', '1', null);
INSERT INTO `user_setupnatice` VALUES ('88', '85', '债权承接成功', '1', '1', null);
INSERT INTO `user_setupnatice` VALUES ('89', '85', '项目公告', '1', '1', '1');
INSERT INTO `user_setupnatice` VALUES ('90', '85', '活动公告', '1', '1', '1');
INSERT INTO `user_setupnatice` VALUES ('91', '85', '其他平台公告', '1', '1', null);
INSERT INTO `user_setupnatice` VALUES ('92', '87', '充值成功', '1', '1', null);
INSERT INTO `user_setupnatice` VALUES ('93', '87', '投资成功', '1', '1', null);
INSERT INTO `user_setupnatice` VALUES ('94', '87', '收到本金或利息', '1', '1', '1');
INSERT INTO `user_setupnatice` VALUES ('95', '87', '收到平台奖励', '1', '1', null);
INSERT INTO `user_setupnatice` VALUES ('96', '87', '提现成功', '1', '1', null);
INSERT INTO `user_setupnatice` VALUES ('97', '87', '债权转让成功', '1', '1', null);
INSERT INTO `user_setupnatice` VALUES ('98', '87', '债权承接成功', '1', '1', null);
INSERT INTO `user_setupnatice` VALUES ('99', '87', '项目公告', '1', '1', '1');
INSERT INTO `user_setupnatice` VALUES ('100', '87', '活动公告', '1', '1', '1');
INSERT INTO `user_setupnatice` VALUES ('101', '87', '其他平台公告', '1', '1', null);
INSERT INTO `user_setupnatice` VALUES ('102', '86', '充值成功', '1', '1', null);
INSERT INTO `user_setupnatice` VALUES ('103', '86', '投资成功', '1', '1', null);
INSERT INTO `user_setupnatice` VALUES ('104', '86', '收到本金或利息', '1', '1', '1');
INSERT INTO `user_setupnatice` VALUES ('105', '86', '收到平台奖励', '1', '1', null);
INSERT INTO `user_setupnatice` VALUES ('106', '86', '提现成功', '1', '1', null);
INSERT INTO `user_setupnatice` VALUES ('107', '86', '债权转让成功', '1', '1', null);
INSERT INTO `user_setupnatice` VALUES ('108', '86', '债权承接成功', '1', '1', null);
INSERT INTO `user_setupnatice` VALUES ('109', '86', '项目公告', '1', '1', '1');
INSERT INTO `user_setupnatice` VALUES ('110', '86', '活动公告', '1', '1', '1');
INSERT INTO `user_setupnatice` VALUES ('111', '86', '其他平台公告', '1', '1', null);
INSERT INTO `user_setupnatice` VALUES ('112', '88', '充值成功', '1', '1', null);
INSERT INTO `user_setupnatice` VALUES ('113', '88', '投资成功', '1', '1', null);
INSERT INTO `user_setupnatice` VALUES ('114', '88', '收到本金或利息', '1', '1', '1');
INSERT INTO `user_setupnatice` VALUES ('115', '88', '收到平台奖励', '1', '1', null);
INSERT INTO `user_setupnatice` VALUES ('116', '88', '提现成功', '1', '1', null);
INSERT INTO `user_setupnatice` VALUES ('117', '88', '债权转让成功', '1', '1', null);
INSERT INTO `user_setupnatice` VALUES ('118', '88', '债权承接成功', '1', '1', null);
INSERT INTO `user_setupnatice` VALUES ('119', '88', '项目公告', '1', '1', '1');
INSERT INTO `user_setupnatice` VALUES ('120', '88', '活动公告', '1', '1', '1');
INSERT INTO `user_setupnatice` VALUES ('121', '88', '其他平台公告', '1', '1', null);
INSERT INTO `user_setupnatice` VALUES ('122', '90', '充值成功', '1', '1', null);
INSERT INTO `user_setupnatice` VALUES ('123', '90', '投资成功', '1', '1', null);
INSERT INTO `user_setupnatice` VALUES ('124', '90', '收到本金或利息', '1', '1', '1');
INSERT INTO `user_setupnatice` VALUES ('125', '90', '收到平台奖励', '1', '1', null);
INSERT INTO `user_setupnatice` VALUES ('126', '90', '提现成功', '1', '1', null);
INSERT INTO `user_setupnatice` VALUES ('127', '90', '债权转让成功', '1', '1', null);
INSERT INTO `user_setupnatice` VALUES ('128', '90', '债权承接成功', '1', '1', null);
INSERT INTO `user_setupnatice` VALUES ('129', '90', '项目公告', '1', '1', '1');
INSERT INTO `user_setupnatice` VALUES ('130', '90', '活动公告', '1', '1', '1');
INSERT INTO `user_setupnatice` VALUES ('131', '90', '其他平台公告', '1', '1', null);
INSERT INTO `user_setupnatice` VALUES ('132', '89', '充值成功', '1', '1', null);
INSERT INTO `user_setupnatice` VALUES ('133', '89', '投资成功', '1', '1', null);
INSERT INTO `user_setupnatice` VALUES ('134', '89', '收到本金或利息', '1', '1', '1');
INSERT INTO `user_setupnatice` VALUES ('135', '89', '收到平台奖励', '1', '1', null);
INSERT INTO `user_setupnatice` VALUES ('136', '89', '提现成功', '1', '1', null);
INSERT INTO `user_setupnatice` VALUES ('137', '89', '债权转让成功', '1', '1', null);
INSERT INTO `user_setupnatice` VALUES ('138', '89', '债权承接成功', '1', '1', null);
INSERT INTO `user_setupnatice` VALUES ('139', '89', '项目公告', '1', '1', '1');
INSERT INTO `user_setupnatice` VALUES ('140', '89', '活动公告', '1', '1', '1');
INSERT INTO `user_setupnatice` VALUES ('141', '89', '其他平台公告', '1', '1', null);

-- ----------------------------
-- Table structure for user_vouch
-- ----------------------------
DROP TABLE IF EXISTS `user_vouch`;
CREATE TABLE `user_vouch` (
  `uv_id` int(10) NOT NULL AUTO_INCREMENT COMMENT '代金券主键id',
  `uv_day` int(10) DEFAULT NULL COMMENT '过期天数',
  `uv_money` decimal(50,2) DEFAULT NULL COMMENT '代金券金额',
  `uv_image` varchar(50) DEFAULT NULL COMMENT '代金券图片介绍',
  `uv_startDate` datetime DEFAULT NULL COMMENT '代金券开始时间',
  `uv_endDate` datetime DEFAULT NULL COMMENT '代金券结束时间',
  `u_id` int(10) DEFAULT NULL COMMENT '用户id',
  `u_condition` decimal(50,2) DEFAULT NULL,
  `u_strat` int(10) NOT NULL,
  PRIMARY KEY (`uv_id`)
) ENGINE=InnoDB AUTO_INCREMENT=42 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of user_vouch
-- ----------------------------
INSERT INTO `user_vouch` VALUES ('38', '30', '2000.00', '/uploadFile/redmoney/dai.jpg', '2018-01-25 08:36:29', '2018-01-25 08:36:29', '66', null, '0');
INSERT INTO `user_vouch` VALUES ('39', '30', '2000.00', '/uploadFile/redmoney/dai.jpg', '2018-01-25 11:08:05', '2018-01-25 11:08:05', '67', null, '0');
INSERT INTO `user_vouch` VALUES ('40', '30', '2000.00', '/uploadFile/redmoney/dai.jpg', '2018-01-25 11:22:30', '2018-01-25 11:22:30', '69', null, '0');
INSERT INTO `user_vouch` VALUES ('41', '30', '2000.00', '/uploadFile/redmoney/dai.jpg', '2018-01-25 11:34:49', '2018-01-25 11:34:49', '71', null, '0');

-- ----------------------------
-- Table structure for video
-- ----------------------------
DROP TABLE IF EXISTS `video`;
CREATE TABLE `video` (
  `v_id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键ID',
  `v_name` varchar(40) NOT NULL COMMENT '视屏名称',
  `v_imgurl` varchar(500) NOT NULL COMMENT '图片地址',
  `v_vurl` varchar(20000) NOT NULL COMMENT '视屏地址',
  PRIMARY KEY (`v_id`)
) ENGINE=InnoDB AUTO_INCREMENT=31 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of video
-- ----------------------------
INSERT INTO `video` VALUES ('29', '忆信金融平台投资效率', '/uploadFile/yxry_1516839609505.jpg', '/uploadFile/yxry_1516839609511.mp4');
INSERT INTO `video` VALUES ('30', 'p2p都一个知道的8.24事件', '/uploadFile/yxry_1516839645160.jpg', '/uploadFile/yxry_1516839645165.mp4');

-- ----------------------------
-- Table structure for vip_detail
-- ----------------------------
DROP TABLE IF EXISTS `vip_detail`;
CREATE TABLE `vip_detail` (
  `vd_id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键id',
  `vp_value` int(11) NOT NULL COMMENT '积分值',
  `vp_name` varchar(50) NOT NULL COMMENT '会员类型 eg:普通员工 ，vip ,超级vip',
  `u_id` int(11) NOT NULL COMMENT '用户表id',
  PRIMARY KEY (`vd_id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of vip_detail
-- ----------------------------

-- ----------------------------
-- Table structure for withdrawals
-- ----------------------------
DROP TABLE IF EXISTS `withdrawals`;
CREATE TABLE `withdrawals` (
  `w_id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键id',
  `u_id` int(11) NOT NULL COMMENT '用户id',
  `w_money` decimal(11,2) NOT NULL COMMENT '提现金额',
  `w_time` datetime NOT NULL COMMENT '提现时间',
  `w_moneytowhere` varchar(50) NOT NULL COMMENT '金额去向',
  `w_status` int(11) NOT NULL COMMENT '提现状态 0提现成功 1正在审核 2提现失败',
  `w_fee` decimal(11,2) NOT NULL COMMENT '手续费',
  `w_nowMoney` decimal(11,2) DEFAULT NULL,
  `w_order` varchar(255) NOT NULL,
  PRIMARY KEY (`w_id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of withdrawals
-- ----------------------------
