/*
git push test
git push by TortoiseGit 2ff
add test 
Navicat MySQL Data Transfer

Source Server         : myCloud
Source Server Version : 50721
Source Host           : 114.215.126.174:3306
Source Database       : cmmetal_db

Target Server Type    : MYSQL
Target Server Version : 50721
File Encoding         : 65001

Date: 2021-06-27 20:05:37
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for `table_bangcaishengchanrenwudang`
-- ----------------------------
DROP TABLE IF EXISTS `table_bangcaishengchanrenwudang`;
CREATE TABLE `table_bangcaishengchanrenwudang` (
  `ID` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT '索引',
  `szDingDanHao` varchar(64) NOT NULL COMMENT '订单号',
  `szKeHuJianCheng` varchar(32) NOT NULL COMMENT '客户简称',
  `szKeHuDaiMa` varchar(32) NOT NULL COMMENT '客户代码',
  `szPinMing` varchar(32) NOT NULL COMMENT '成品名称',
  `szYuanLiaoGuiGe` varchar(32) NOT NULL COMMENT '原料规格',
  `szCaiZhi` varchar(32) NOT NULL COMMENT '材质',
  `szChengPinGuiGe` varchar(32) NOT NULL COMMENT '成品规格',
  `szGongCha` varchar(32) NOT NULL COMMENT '公差',
  `nDingDanShuLiang` int(11) NOT NULL COMMENT '订单数量',
  `szPenQi` varchar(32) DEFAULT NULL COMMENT '喷漆',
  `szDaoJiao` varchar(32) DEFAULT NULL COMMENT '倒角',
  `fDanJianZhongliang` float NOT NULL COMMENT '单件重量',
  `szLuRu` varchar(32) DEFAULT NULL COMMENT '录入人',
  `szShengChangRiQi` datetime DEFAULT NULL COMMENT '生产日期',
  `szQiTaYaoQiu` varchar(256) DEFAULT NULL COMMENT '其它要求',
  `szBeiZhu` varchar(256) DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COMMENT='棒材生产任务单表';

-- ----------------------------
-- Records of table_bangcaishengchanrenwudang
-- ----------------------------
INSERT INTO `table_bangcaishengchanrenwudang` VALUES ('1', '', 'TTT', 'TTT', '666', '66', '66', '66', '66', '66', '66', '66', '66', 'admin', '2021-04-20 00:00:00', '66', '66');
INSERT INTO `table_bangcaishengchanrenwudang` VALUES ('2', '0001', 'FFF', 'FFF', '22', '22', '22', '22', '22', '22', '22', '22', '22', 'admin', '2021-04-20 18:07:20', '22', '22');

-- ----------------------------
-- Table structure for `table_caizhi`
-- ----------------------------
DROP TABLE IF EXISTS `table_caizhi`;
CREATE TABLE `table_caizhi` (
  `ID` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT '索引',
  `szCaiZhi` varchar(32) NOT NULL COMMENT '材质名称',
  `szDaiMa` varchar(32) NOT NULL COMMENT '材质代码',
  `szBeiZhu` varchar(64) DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=utf8mb4 COMMENT='材质代码表';

-- ----------------------------
-- Records of table_caizhi
-- ----------------------------
INSERT INTO `table_caizhi` VALUES ('4', '1215', '1215', '');
INSERT INTO `table_caizhi` VALUES ('5', '12L14', '1214', '');
INSERT INTO `table_caizhi` VALUES ('6', 'S45C', '451', '');
INSERT INTO `table_caizhi` VALUES ('7', 'S45C-A', '452', '');
INSERT INTO `table_caizhi` VALUES ('8', 'S45C+S', '453', '');
INSERT INTO `table_caizhi` VALUES ('9', '45#', '450', '');
INSERT INTO `table_caizhi` VALUES ('10', '6A', '6', '');
INSERT INTO `table_caizhi` VALUES ('11', '08AL', '8', '');
INSERT INTO `table_caizhi` VALUES ('12', 'Q195', '195', '');
INSERT INTO `table_caizhi` VALUES ('13', '10A', '10', '');
INSERT INTO `table_caizhi` VALUES ('14', '15A', '15', '');
INSERT INTO `table_caizhi` VALUES ('15', '22A', '22', '');
INSERT INTO `table_caizhi` VALUES ('16', '10B21', '1021', '');
INSERT INTO `table_caizhi` VALUES ('17', 'S2', '2', '');
INSERT INTO `table_caizhi` VALUES ('18', 'SUJ2', '12', '');
INSERT INTO `table_caizhi` VALUES ('19', '22', '22', '22');

-- ----------------------------
-- Table structure for `table_cangku`
-- ----------------------------
DROP TABLE IF EXISTS `table_cangku`;
CREATE TABLE `table_cangku` (
  `ID` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT '索引',
  `szLeiBie` varchar(32) NOT NULL COMMENT '仓库类别',
  `szDaiMa` varchar(32) NOT NULL COMMENT '仓库代码',
  `szBeiZhu` varchar(64) DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='仓库信息表';

-- ----------------------------
-- Records of table_cangku
-- ----------------------------

-- ----------------------------
-- Table structure for `table_cheliang`
-- ----------------------------
DROP TABLE IF EXISTS `table_cheliang`;
CREATE TABLE `table_cheliang` (
  `ID` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT '索引',
  `szCheZhu` varchar(32) NOT NULL COMMENT '车主名称',
  `szCheZhuDianHua` varchar(32) NOT NULL COMMENT '车主电话',
  `szSiJi` varchar(32) NOT NULL COMMENT '司机',
  `szSiJiDianHua` varchar(32) NOT NULL COMMENT '司机电话',
  `szChePaiHaoMa` varchar(32) NOT NULL COMMENT '车牌号码',
  `szBeiZhu` varchar(256) DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COMMENT='车辆信息表';

-- ----------------------------
-- Records of table_cheliang
-- ----------------------------
INSERT INTO `table_cheliang` VALUES ('1', '车主A', '2222', '司机A', '22233', 'bbbb', 'fff');

-- ----------------------------
-- Table structure for `table_chengpinbaobiao`
-- ----------------------------
DROP TABLE IF EXISTS `table_chengpinbaobiao`;
CREATE TABLE `table_chengpinbaobiao` (
  `ID` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT '索引',
  `szPinMing` varchar(32) NOT NULL COMMENT '成品名称',
  `szCaiZhi` varchar(32) NOT NULL COMMENT '材质',
  `szGangChang` varchar(32) NOT NULL COMMENT '钢厂',
  `szChengPinGuiGe` varchar(32) NOT NULL COMMENT '成品规格',
  `szPCGG` varchar(64) NOT NULL COMMENT '由品名材质钢厂和规格代码接接而成',
  `nRJianShu` int(11) DEFAULT NULL COMMENT '入库件数',
  `fRZhongLiang` float DEFAULT NULL COMMENT '入库重量',
  `nCJianShu` int(11) DEFAULT NULL COMMENT '出库件数',
  `fCZhongLiang` float DEFAULT NULL COMMENT '出库重量',
  `nJJianShu` int(11) DEFAULT NULL COMMENT '结存件数',
  `fJZhongLiang` float DEFAULT NULL COMMENT '结存重量',
  `szRiQi` datetime DEFAULT NULL COMMENT '报表日期',
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4 COMMENT='成品出入库报表信息';

-- ----------------------------
-- Records of table_chengpinbaobiao
-- ----------------------------
INSERT INTO `table_chengpinbaobiao` VALUES ('1', '拉拔棒', '1215', '韶钢', '5.5', 'B|1215|S|5.5', '60', '6000', '5', '500', '55', '5500', '2021-05-21 09:35:10');
INSERT INTO `table_chengpinbaobiao` VALUES ('2', '六角棒', '1215', '韶钢', '5.5', 'H|1215|S|5.5', '60', '6000', '5', '500', '55', '5500', '2021-05-21 09:35:30');
INSERT INTO `table_chengpinbaobiao` VALUES ('3', '拉拔棒', '1215', '韶钢', '5.5', 'B|1215|S|5.5', '30', '3000', '5', '500', '80', '8000', '2021-06-20 09:52:03');
INSERT INTO `table_chengpinbaobiao` VALUES ('4', '六角棒', '1215', '韶钢', '5.5', 'H|1215|S|5.5', '30', '3000', '5', '500', '80', '8000', '2021-06-20 09:52:26');
INSERT INTO `table_chengpinbaobiao` VALUES ('5', '拉拔棒', '1215', '韶钢', '5.5', 'B|1215|S|5.5', '54', '5400', '16', '1600', '118', '11800', '2021-06-21 10:06:02');
INSERT INTO `table_chengpinbaobiao` VALUES ('6', '六角棒', '1215', '韶钢', '5.5', 'H|1215|S|5.5', '50', '5000', '6', '600', '124', '12400', '2021-06-21 10:06:18');
INSERT INTO `table_chengpinbaobiao` VALUES ('7', '拉拔棒', '1215', '韶钢', '5.5', 'B|1215|S|5.5', '10', '1000', '0', '0', '128', '12800', '2021-06-23 15:57:45');
INSERT INTO `table_chengpinbaobiao` VALUES ('8', '拉拔棒', '1215', '韶钢', '5.5', 'B|1215|S|5.5', '0', '0', '5', '500', '123', '12300', '2021-06-25 11:58:48');
INSERT INTO `table_chengpinbaobiao` VALUES ('9', '拉拔棒', '1215', '韶钢', '3.3*3300', 'B|1215|S|3.3*3300', '100', '10000', '75', '7500', '25', '2500', '2021-06-25 14:07:17');

-- ----------------------------
-- Table structure for `table_chengpinchuku`
-- ----------------------------
DROP TABLE IF EXISTS `table_chengpinchuku`;
CREATE TABLE `table_chengpinchuku` (
  `ID` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT '索引',
  `nDDID` int(10) unsigned DEFAULT NULL COMMENT '出货订单的ID',
  `szGongSi` varchar(32) NOT NULL COMMENT '订单所属公司，1 成钢， 2 盟钢',
  `nSongHuoDanHao` int(10) unsigned DEFAULT NULL COMMENT '每日送货单流水号',
  `szChuKuID` bigint(20) DEFAULT NULL COMMENT '出库单ID（用年月日时分秒组合而成）',
  `szDingDanHao` varchar(64) NOT NULL COMMENT '订单号',
  `szSongHuoDanHao` varchar(32) DEFAULT NULL COMMENT '送货单号',
  `szKeHuJianCheng` varchar(32) NOT NULL COMMENT '客户简称',
  `szKeHuDaiMa` varchar(32) NOT NULL COMMENT '客户代码',
  `szPinMing` varchar(32) NOT NULL COMMENT '成品名称',
  `szGangChang` varchar(32) NOT NULL COMMENT '钢厂',
  `szCaiZhi` varchar(32) NOT NULL COMMENT '材质',
  `szChengPinGuiGe` varchar(32) NOT NULL COMMENT '成品规格',
  `nJianShu` int(11) NOT NULL COMMENT '件数',
  `fZhongLiang` float NOT NULL COMMENT '重量',
  `nTuiHuoJianShu` int(11) DEFAULT '0' COMMENT '退回件数',
  `fTuiHuoZhongLiang` float DEFAULT '0' COMMENT '退回重量',
  `fDanJia` float NOT NULL COMMENT '单价',
  `fJinE` float NOT NULL COMMENT '金额',
  `fTuiHuoJinE` float DEFAULT '0' COMMENT '退货金额',
  `szShuLiangMingXi` varchar(128) DEFAULT NULL COMMENT '数量明细',
  `szPenQi` varchar(32) DEFAULT NULL COMMENT '喷漆',
  `szDaoJiao` varchar(32) DEFAULT NULL COMMENT '倒角',
  `szLuRu` varchar(32) DEFAULT NULL COMMENT '录入人',
  `szXiaDanRiQi` datetime DEFAULT NULL COMMENT '下单日期',
  `szShengChangRiQi` datetime DEFAULT NULL COMMENT '生产日期',
  `szChuKuRiQi` datetime DEFAULT CURRENT_TIMESTAMP COMMENT '出库日期',
  `szXiaoShouLeiBie` varchar(32) DEFAULT NULL COMMENT '销售类别',
  `szSongHuoCheLiang` varchar(32) DEFAULT NULL COMMENT '送货车辆',
  `szPCGG` varchar(64) NOT NULL COMMENT '由品名材质钢厂和规格代码接接而成',
  `nLeiBie` tinyint(4) DEFAULT '1' COMMENT '出库类别(1：正常出库，-1：退货出库 为对账单设此字段)',
  `szBeiZhu` varchar(256) DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8mb4 COMMENT='成品出库表';

-- ----------------------------
-- Records of table_chengpinchuku
-- ----------------------------
INSERT INTO `table_chengpinchuku` VALUES ('1', '2', '盟钢', '0', '20210621093643', '0001', null, '鑫泰瑞丰', 'F-0769004', '六角棒', '韶钢', '1215', '5.5', '5', '500', '0', '0', '9.98', '4990', '0', '5 x 100.00', '', '', 'admin', '2021-06-21 00:00:00', null, '2021-05-21 09:37:07', '销售', null, 'H|1215|S|5.5', '1', ' ');
INSERT INTO `table_chengpinchuku` VALUES ('2', '1', '盟钢', '0', '20210621093643', '0001', null, '鑫泰瑞丰', 'F-0769004', '拉拔棒', '韶钢', '1215', '5.5', '5', '500', '0', '0', '8.88', '4440', '0', '5 x 100.00', '', '', 'admin', '2021-06-21 00:00:00', null, '2021-05-21 09:37:18', '销售', null, 'B|1215|S|5.5', '1', ' ');
INSERT INTO `table_chengpinchuku` VALUES ('3', '4', '盟钢', '0', '20210621095607', 'F00001', null, '富士精工', 'F-0752001', '六角棒', '韶钢', '1215', '5.5', '5', '500', '0', '0', '8.88', '4440', '0', '5 x 100.00', '', '', 'admin', '2021-06-21 00:00:00', null, '2021-06-20 09:57:29', '销售', null, 'H|1215|S|5.5', '1', ' ');
INSERT INTO `table_chengpinchuku` VALUES ('4', '3', '盟钢', '0', '20210621095607', 'F00001', null, '富士精工', 'F-0752001', '拉拔棒', '韶钢', '1215', '5.5', '5', '500', '0', '0', '8.88', '4440', '0', '5 x 100.00', '', '', 'admin', '2021-06-21 00:00:00', null, '2021-06-20 09:57:42', '销售', null, 'B|1215|S|5.5', '1', ' ');
INSERT INTO `table_chengpinchuku` VALUES ('5', '4', '盟钢', '0', '20210621100700', 'F00001', null, '富士精工', 'F-0752001', '六角棒', '韶钢', '1215', '5.5', '3', '300', '0', '0', '8.88', '2664', '0', '3 x 100.00', '', '', 'admin', '2021-06-21 00:00:00', null, '2021-06-21 10:08:07', '销售', null, 'H|1215|S|5.5', '1', ' ');
INSERT INTO `table_chengpinchuku` VALUES ('6', '3', '盟钢', '0', '20210621100700', 'F00001', null, '富士精工', 'F-0752001', '拉拔棒', '韶钢', '1215', '5.5', '3', '300', '0', '0', '8.88', '2664', '0', '3 x 100.00', '', '', 'admin', '2021-06-21 00:00:00', null, '2021-06-21 10:08:09', '销售', null, 'B|1215|S|5.5', '1', ' ');
INSERT INTO `table_chengpinchuku` VALUES ('7', '2', '盟钢', '0', '20210621100700', '0001', null, '鑫泰瑞丰', 'F-0769004', '六角棒', '韶钢', '1215', '5.5', '3', '300', '0', '0', '9.98', '2994', '0', '3 x 100.00', '', '', 'admin', '2021-06-21 00:00:00', null, '2021-06-21 10:08:11', '销售', null, 'H|1215|S|5.5', '1', ' ');
INSERT INTO `table_chengpinchuku` VALUES ('8', '1', '盟钢', '0', '20210621100700', '0001', null, '鑫泰瑞丰', 'F-0769004', '拉拔棒', '韶钢', '1215', '5.5', '3', '300', '0', '0', '8.88', '2664', '0', '3 x 100.00', '', '', 'admin', '2021-06-21 00:00:00', null, '2021-06-21 10:08:13', '销售', null, 'B|1215|S|5.5', '1', ' ');
INSERT INTO `table_chengpinchuku` VALUES ('9', '1', '盟钢', '1', '20210621125121', '0002', 'No.20210621-1', '富士精工', 'F-0752001', '拉拔棒', '韶钢', '1215', '5.5', '10', '1000', '4', '400', '8.88', '8880', '63083.5', '10 x 100.00', '', '', 'admin', '2021-06-21 00:00:00', null, '2021-06-21 12:51:46', '销售', null, 'B|1215|S|5.5', '1', ' ');
INSERT INTO `table_chengpinchuku` VALUES ('10', '9', '盟钢', null, null, '0002', 'No.20210621-1', '富士精工', 'F-0752001', '拉拔棒', '韶钢', '1215', '5.5', '-4', '-400', '8', '800', '8.88', '-63083.5', '7104', null, '', '', 'admin', '0000-00-00 00:00:00', null, '2021-06-21 12:52:30', null, null, 'B|1215|S|5.5', '-1', '10 退 8  8 改 4');
INSERT INTO `table_chengpinchuku` VALUES ('11', '2', '盟钢', '1', '20210625115822', '0005', 'No.20210625-1', '鑫泰瑞丰', 'F-0769004', '拉拔棒', '韶钢', '1215', '5.5', '5', '500', '0', '0', '8', '4000', '0', '5 x 100.00', '', '', 'admin', '2021-06-25 00:00:00', null, '2021-06-25 11:58:48', '销售', null, 'B|1215|S|5.5', '1', ' ');
INSERT INTO `table_chengpinchuku` VALUES ('12', '3', '盟钢', '2', '20210625140720', '0001', 'No.20210625-2', '助川', 'T-0769001', '拉拔棒', '韶钢', '1215', '3.3*3300', '25', '2500', '0', '0', '8.8', '22000', '0', '25 x 100.00', '', '', 'admin', '2021-06-25 00:00:00', null, '2021-06-25 14:07:38', '销售', null, 'B|1215|S|3.3*3300', '1', '修改测试');
INSERT INTO `table_chengpinchuku` VALUES ('13', '4', '盟钢', '3', '20210625143719', '0001', 'No.20210625-3', '进春', 'T-0769003', '拉拔棒', '韶钢', '1215', '3.3*3300', '50', '5000', '0', '0', '8.8', '44000', '0', '50 x 100.00', '', '', 'admin', '2021-06-25 00:00:00', null, '2021-06-25 14:37:38', '销售', null, 'B|1215|S|3.3*3300', '1', '');

-- ----------------------------
-- Table structure for `table_chengpinguige`
-- ----------------------------
DROP TABLE IF EXISTS `table_chengpinguige`;
CREATE TABLE `table_chengpinguige` (
  `ID` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT '索引',
  `szGuiGe` varchar(32) NOT NULL COMMENT '规格',
  `szDaiMa` varchar(32) NOT NULL COMMENT '规格代码',
  `szBeiZhu` varchar(64) DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COMMENT='成品规格类型表';

-- ----------------------------
-- Records of table_chengpinguige
-- ----------------------------
INSERT INTO `table_chengpinguige` VALUES ('1', '5.5', '55', '测试');
INSERT INTO `table_chengpinguige` VALUES ('2', '2.0', '2', '22');
INSERT INTO `table_chengpinguige` VALUES ('3', '6.0*2500', '2.2', 'test');

-- ----------------------------
-- Table structure for `table_chengpinkucun`
-- ----------------------------
DROP TABLE IF EXISTS `table_chengpinkucun`;
CREATE TABLE `table_chengpinkucun` (
  `ID` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT '索引',
  `szPinMing` varchar(32) DEFAULT NULL COMMENT '成品名称',
  `szYuanLiaoGuiGe` varchar(32) DEFAULT NULL COMMENT '原料规格',
  `szGangChang` varchar(32) DEFAULT NULL COMMENT '钢厂',
  `szCaiZhi` varchar(32) DEFAULT NULL COMMENT '材质',
  `szChengPinGuiGe` varchar(32) DEFAULT NULL COMMENT '成品规格',
  `szPenQi` varchar(32) DEFAULT NULL COMMENT '喷漆',
  `szDaoJiao` varchar(32) DEFAULT NULL COMMENT '倒角',
  `nJianShu` int(11) DEFAULT '0' COMMENT '件数',
  `fZhongLiang` float DEFAULT '0' COMMENT '重量',
  `szPCGG` varchar(64) NOT NULL COMMENT '由品名材质钢厂和规格代码接接而成',
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COMMENT='库存表，各种条件组合为一条库存';

-- ----------------------------
-- Records of table_chengpinkucun
-- ----------------------------
INSERT INTO `table_chengpinkucun` VALUES ('1', '拉拔棒', '5.50', '韶钢', '1215', '5.5', '', '', '123', '12300', 'B|1215|S|5.5');
INSERT INTO `table_chengpinkucun` VALUES ('2', '六角棒', '5.50', '韶钢', '1215', '5.5', '', '', '124', '12400', 'H|1215|S|5.5');
INSERT INTO `table_chengpinkucun` VALUES ('3', '拉拔棒', '5.50', '韶钢', '1215', '3.3*3300', '', '', '25', '2500', 'B|1215|S|3.3*3300');

-- ----------------------------
-- Table structure for `table_chengpinleixing`
-- ----------------------------
DROP TABLE IF EXISTS `table_chengpinleixing`;
CREATE TABLE `table_chengpinleixing` (
  `ID` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT '索引',
  `szChengPinLeiXing` varchar(32) NOT NULL COMMENT '成品类型名称',
  `szDaiMa` varchar(32) NOT NULL COMMENT '成品类型代码',
  `szBeiZhu` varchar(64) DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COMMENT='成品类型表';

-- ----------------------------
-- Records of table_chengpinleixing
-- ----------------------------
INSERT INTO `table_chengpinleixing` VALUES ('1', '线材', 'X', '');
INSERT INTO `table_chengpinleixing` VALUES ('2', '棒材', 'B', '');

-- ----------------------------
-- Table structure for `table_chengpinmingcheng`
-- ----------------------------
DROP TABLE IF EXISTS `table_chengpinmingcheng`;
CREATE TABLE `table_chengpinmingcheng` (
  `ID` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT '索引',
  `szChengPinMingCheng` varchar(32) NOT NULL COMMENT '成品名称',
  `szDaiMa` varchar(32) NOT NULL COMMENT '成品代码',
  `szChengPinLeiXing` varchar(32) NOT NULL COMMENT '成品类型名称',
  `szBeiZhu` varchar(64) DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COMMENT='品名表';

-- ----------------------------
-- Records of table_chengpinmingcheng
-- ----------------------------
INSERT INTO `table_chengpinmingcheng` VALUES ('1', '拉拔棒', 'B', '棒材', '');
INSERT INTO `table_chengpinmingcheng` VALUES ('2', '六角棒', 'H', '棒材', '');
INSERT INTO `table_chengpinmingcheng` VALUES ('3', '四角棒', 'S', '棒材', '');
INSERT INTO `table_chengpinmingcheng` VALUES ('4', '异形棒', 'Y', '棒材', '');
INSERT INTO `table_chengpinmingcheng` VALUES ('5', '绞直棒', 'J', '棒材', '');
INSERT INTO `table_chengpinmingcheng` VALUES ('6', '磷化线', 'P', '线材', '');
INSERT INTO `table_chengpinmingcheng` VALUES ('7', '水抽线', 'Y', '线材', '');
INSERT INTO `table_chengpinmingcheng` VALUES ('8', '二水线', 'R', '线材', '');
INSERT INTO `table_chengpinmingcheng` VALUES ('9', '粉抽线', 'F', '线材', '');
INSERT INTO `table_chengpinmingcheng` VALUES ('10', '退火磷化线', 'T', '线材', '');

-- ----------------------------
-- Table structure for `table_chengpinruku`
-- ----------------------------
DROP TABLE IF EXISTS `table_chengpinruku`;
CREATE TABLE `table_chengpinruku` (
  `ID` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT '索引',
  `szDingDanHao` varchar(64) DEFAULT NULL COMMENT '订单号',
  `szKeHuJianCheng` varchar(32) DEFAULT NULL COMMENT '客户简称',
  `szKeHuDaiMa` varchar(32) DEFAULT NULL COMMENT '客户代码',
  `szPinMing` varchar(32) NOT NULL COMMENT '成品名称',
  `szYuanLiaoGuiGe` varchar(32) DEFAULT NULL COMMENT '原料规格',
  `szGangChang` varchar(32) NOT NULL COMMENT '钢厂',
  `szCaiZhi` varchar(32) NOT NULL COMMENT '材质',
  `szChengPinGuiGe` varchar(32) NOT NULL COMMENT '成品规格',
  `nJianShu` int(11) NOT NULL COMMENT '件数',
  `fZhongLiang` float NOT NULL COMMENT '重量',
  `nYuJianShu` int(11) NOT NULL COMMENT '剩余件数',
  `fYuZhongLiang` float NOT NULL COMMENT '剩余重量',
  `fDanJia` float DEFAULT NULL COMMENT '单价',
  `fJinE` float DEFAULT NULL COMMENT '金额',
  `szPenQi` varchar(32) DEFAULT NULL COMMENT '喷漆',
  `szDaoJiao` varchar(32) DEFAULT NULL COMMENT '倒角',
  `szLuRu` varchar(32) DEFAULT NULL COMMENT '录入人',
  `szXiaDanRiQi` datetime DEFAULT NULL COMMENT '下单日期',
  `szShengChangRiQi` datetime DEFAULT NULL COMMENT '生产日期',
  `szRuKuRiQi` datetime DEFAULT CURRENT_TIMESTAMP COMMENT '入库日期',
  `nLeiBie` tinyint(4) DEFAULT NULL COMMENT '入库类别(1：生产入库，2：退货入库)',
  `szBeiZhu` varchar(256) DEFAULT NULL COMMENT '备注',
  `szPCGG` varchar(64) NOT NULL COMMENT '由品名材质钢厂和规格代码接接而成',
  `nBBID` int(10) unsigned DEFAULT NULL COMMENT '对应成品报表的记录ID，用于修改入库时找到对应的报表记录',
  `nCKID` int(10) unsigned DEFAULT NULL COMMENT '用于退货入库时，记录虚拟出库记录的ID, 以便退货入库修改时能找到虚拟的记录',
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8mb4 COMMENT='成品入库表';

-- ----------------------------
-- Records of table_chengpinruku
-- ----------------------------
INSERT INTO `table_chengpinruku` VALUES ('1', 'CG00001', 'CG', 'C00001', '拉拔棒', '5.50', '韶钢', '1215', '5.5', '50', '5000', '50', '5000', null, null, '', '', 'admin', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '2021-05-21 09:35:10', '1', '', 'B|1215|S|5.5', '0', null);
INSERT INTO `table_chengpinruku` VALUES ('2', 'CG00001', 'CG', 'C00001', '六角棒', '5.50', '韶钢', '1215', '5.5', '50', '5000', '50', '5000', null, null, '', '', 'admin', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '2021-05-21 09:35:30', '1', '', 'H|1215|S|5.5', '0', null);
INSERT INTO `table_chengpinruku` VALUES ('3', 'CG00001', 'CG', 'C00001', '拉拔棒', '5.50', '韶钢', '1215', '5.5', '10', '1000', '10', '1000', null, null, '', '', 'admin', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '2021-05-21 09:44:50', '1', '', 'B|1215|S|5.5', '1', null);
INSERT INTO `table_chengpinruku` VALUES ('4', 'CG00001', 'CG', 'C00001', '六角棒', '5.50', '韶钢', '1215', '5.5', '10', '1000', '10', '1000', null, null, '', '', 'admin', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '2021-05-21 09:45:08', '1', '', 'H|1215|S|5.5', '2', null);
INSERT INTO `table_chengpinruku` VALUES ('5', 'CG00001', 'CG', 'C00001', '拉拔棒', '5.50', '韶钢', '1215', '5.5', '30', '3000', '30', '3000', null, null, '', '', 'admin', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '2021-06-20 09:52:03', '1', '', 'B|1215|S|5.5', '1', null);
INSERT INTO `table_chengpinruku` VALUES ('6', 'CG00001', 'CG', 'C00001', '六角棒', '5.50', '韶钢', '1215', '5.5', '30', '3000', '30', '3000', null, null, '', '', 'admin', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '2021-06-20 09:52:26', '1', '', 'H|1215|S|5.5', '2', null);
INSERT INTO `table_chengpinruku` VALUES ('7', 'CG00001', 'CG', 'C00001', '拉拔棒', '5.50', '韶钢', '1215', '5.5', '50', '5000', '50', '5000', null, null, '', '', 'admin', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '2021-06-21 10:06:02', '1', '', 'B|1215|S|5.5', '3', null);
INSERT INTO `table_chengpinruku` VALUES ('8', 'CG00001', 'CG', 'C00001', '六角棒', '5.50', '韶钢', '1215', '5.5', '50', '5000', '50', '5000', null, null, '', '', 'admin', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '2021-06-21 10:06:18', '1', '', 'H|1215|S|5.5', '4', null);
INSERT INTO `table_chengpinruku` VALUES ('9', '0002', '富士精工', 'F-0752001', '拉拔棒', '', '韶钢', '1215', '5.5', '4', '400', '4', '400', '8.88', '63083.5', '', '', 'admin', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '2021-06-21 12:52:30', '-1', '10 退 8  8 改 4', 'B|1215|S|5.5', '5', '10');
INSERT INTO `table_chengpinruku` VALUES ('10', 'CG00001', 'CG', 'C00001', '拉拔棒', '5.50', '韶钢', '1215', '5.5', '10', '1000', '10', '1000', null, null, '', '', 'admin', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '2021-06-23 15:57:45', '1', 'test', 'B|1215|S|5.5', '5', null);
INSERT INTO `table_chengpinruku` VALUES ('11', 'CG00001', 'CG', 'C00001', '拉拔棒', '5.50', '韶钢', '1215', '3.3*3300', '100', '10000', '100', '10000', null, null, '', '', 'admin', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '2021-06-25 14:07:17', '1', '', 'B|1215|S|3.3*3300', '0', null);

-- ----------------------------
-- Table structure for `table_danjianzhongliang`
-- ----------------------------
DROP TABLE IF EXISTS `table_danjianzhongliang`;
CREATE TABLE `table_danjianzhongliang` (
  `ID` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT '索引',
  `fZhongLiang` float NOT NULL COMMENT '单件重量',
  `szDaiMa` varchar(32) NOT NULL COMMENT '重量代码',
  `szBeiZhu` varchar(64) DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COMMENT='单件重量分类表';

-- ----------------------------
-- Records of table_danjianzhongliang
-- ----------------------------
INSERT INTO `table_danjianzhongliang` VALUES ('1', '500', '5', '');
INSERT INTO `table_danjianzhongliang` VALUES ('2', '600', '6', '6');

-- ----------------------------
-- Table structure for `table_daojiao`
-- ----------------------------
DROP TABLE IF EXISTS `table_daojiao`;
CREATE TABLE `table_daojiao` (
  `ID` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT '索引',
  `szLeiBie` varchar(32) NOT NULL COMMENT '倒角类别',
  `szDaiMa` varchar(32) NOT NULL COMMENT '类别代码',
  `szBeiZhu` varchar(64) DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COMMENT='倒角类别表';

-- ----------------------------
-- Records of table_daojiao
-- ----------------------------
INSERT INTO `table_daojiao` VALUES ('1', '双倒', '1', '双倒');
INSERT INTO `table_daojiao` VALUES ('2', '单倒', '2', '单倒');
INSERT INTO `table_daojiao` VALUES ('3', '不倒', '3', '不倒');
INSERT INTO `table_daojiao` VALUES ('4', '测试', '22', '测试');

-- ----------------------------
-- Table structure for `table_dingdan`
-- ----------------------------
DROP TABLE IF EXISTS `table_dingdan`;
CREATE TABLE `table_dingdan` (
  `ID` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT '索引',
  `szGongSi` varchar(32) NOT NULL COMMENT '订单所属公司，1 成钢， 2 盟钢',
  `szDingDanHao` varchar(64) NOT NULL COMMENT '订单号',
  `szKeHuJianCheng` varchar(32) NOT NULL COMMENT '客户简称',
  `szKeHuDaiMa` varchar(32) NOT NULL COMMENT '客户代码',
  `szPinMing` varchar(32) NOT NULL COMMENT '成品名称',
  `szYuanLiaoGuiGe` varchar(32) DEFAULT NULL COMMENT '原料规格',
  `szGangChang` varchar(32) DEFAULT NULL COMMENT '钢厂',
  `szCaiZhi` varchar(32) NOT NULL COMMENT '材质',
  `szChengPinGuiGe` varchar(32) NOT NULL COMMENT '成品规格',
  `szGongCha` varchar(32) DEFAULT NULL COMMENT '公差',
  `fDingDanShuLiang` float NOT NULL COMMENT '订单数量单位(KG)',
  `fWeiChuHuoShuLiang` float DEFAULT '0' COMMENT '未出货数量单位(KG)',
  `fYouXiaoChuHuoShuLiang` float DEFAULT '0' COMMENT '有效数量，单位(KG)，每次完结时设置值为已出货数',
  `fDanJianZhongliang` float NOT NULL COMMENT '单件重量',
  `szLuRu` varchar(32) DEFAULT NULL COMMENT '录入人',
  `szPenQi` varchar(32) DEFAULT NULL COMMENT '喷漆',
  `szDaoJiao` varchar(32) DEFAULT NULL COMMENT '倒角',
  `szSuanXiLeiBie` varchar(32) DEFAULT NULL COMMENT '酸洗类别',
  `szDingDanRiQi` datetime DEFAULT CURRENT_TIMESTAMP COMMENT '订单日期',
  `szYuJiJiaoQi` datetime DEFAULT NULL COMMENT '预计交期',
  `szPaiChanRiQi` datetime DEFAULT NULL COMMENT '排产日期',
  `szPaiChanID` bigint(20) DEFAULT NULL COMMENT '排产ID（用年月日时分秒组合而成）',
  `szPaiChanJiTai` varchar(32) DEFAULT NULL COMMENT '排产机台',
  `fHanShui` float DEFAULT NULL COMMENT '含税',
  `fBuHanShui` float DEFAULT NULL COMMENT '不含税',
  `nDingDanZhuangTai` tinyint(4) DEFAULT '1' COMMENT '订单状态 1 - 接单，2 - 待料，3 - 排产，4 - 修改完结，5 - 取消，6 完成',
  `szJiaoHuoDian` varchar(128) DEFAULT NULL COMMENT '交货地址',
  `szDuanDiZhi` varchar(64) DEFAULT NULL COMMENT '交货简地址',
  `szQiTaYaoQiu` varchar(256) DEFAULT NULL COMMENT '其它要求',
  `szBeiZhu` varchar(256) DEFAULT NULL COMMENT '备注',
  `szXiuGaiShuoMing` varchar(256) DEFAULT NULL COMMENT '修改说明',
  `szShenHe` varchar(32) DEFAULT '未审核' COMMENT '审核情况',
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COMMENT='订单表';

-- ----------------------------
-- Records of table_dingdan
-- ----------------------------
INSERT INTO `table_dingdan` VALUES ('1', '盟钢', '0002', '富士精工', 'F-0752001', '拉拔棒', '5.50', null, '1215', '5.5', null, '5000', '4000', '5000', '100', 'admin', null, null, null, '2021-06-21 12:49:42', '2021-06-21 12:49:04', null, null, null, '8.88', '8.88', '3', '惠州市博罗县园洲镇禾山工业区/东莞市石排镇庙边五管理区', '惠州博罗', null, null, null, '未审核');
INSERT INTO `table_dingdan` VALUES ('2', '盟钢', '0005', '鑫泰瑞丰', 'F-0769004', '拉拔棒', '5.50', null, '1215', '5.5', null, '1000', '500', '1000', '100', 'admin', null, null, null, '2021-06-25 11:45:51', '2021-06-25 11:44:58', null, null, null, '8', null, '3', '东莞市大岭山镇马蹄岗村旺坑路38号', '东莞大岭山', null, null, null, '未审核');
INSERT INTO `table_dingdan` VALUES ('3', '盟钢', '0001', '助川', 'T-0769001', '拉拔棒', '5.50', null, '1215', '3.3*3300', null, '7000', '0', '7000', '100', 'admin', null, null, null, '2021-06-25 14:06:46', '2021-06-25 14:04:28', null, null, null, '8.8', null, '3', '广东省东莞市茶山镇刘黄第三工业区第一栋1楼', '东莞茶山', null, null, null, '未审核');
INSERT INTO `table_dingdan` VALUES ('4', '盟钢', '0001', '进春', 'T-0769003', '拉拔棒', '5.50', null, '1215', '3.3*3300', null, '7000', '2000', '7000', '100', 'admin', null, null, null, '2021-06-25 14:37:07', '2021-06-25 14:36:26', null, null, null, '8.8', null, '3', '东莞市大朗镇黄草朗社区美景中路1468号', '东莞大朗', null, null, null, '未审核');
INSERT INTO `table_dingdan` VALUES ('5', '盟钢', '0002', '助川', 'T-0769001', '拉拔棒', '5.50', null, '1215', '2.2', null, '2000', '2000', '2000', '100', 'admin', null, null, null, '2021-06-25 14:57:20', '2021-06-25 14:56:21', null, null, null, '2', null, '1', '广东省东莞市茶山镇刘黄第三工业区第一栋1楼', '东莞茶山', null, null, null, '未审核');

-- ----------------------------
-- Table structure for `table_dingdanzhuangtai`
-- ----------------------------
DROP TABLE IF EXISTS `table_dingdanzhuangtai`;
CREATE TABLE `table_dingdanzhuangtai` (
  `ID` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT '索引',
  `szZhuangTai` varchar(32) NOT NULL COMMENT '订单状态',
  `szDaiMa` varchar(32) NOT NULL COMMENT '状态代码',
  `szBeiZhu` varchar(64) DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COMMENT='订单状态表';

-- ----------------------------
-- Records of table_dingdanzhuangtai
-- ----------------------------
INSERT INTO `table_dingdanzhuangtai` VALUES ('1', '接单', '1', '');
INSERT INTO `table_dingdanzhuangtai` VALUES ('2', '待料', '2', '');

-- ----------------------------
-- Table structure for `table_duizhangdan`
-- ----------------------------
DROP TABLE IF EXISTS `table_duizhangdan`;
CREATE TABLE `table_duizhangdan` (
  `ID` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT '索引',
  `szGongSi` varchar(32) NOT NULL COMMENT '订单所属公司，1 成钢， 2 盟钢',
  `nCKID` int(10) unsigned DEFAULT NULL COMMENT '出库id ',
  `szTitle` varchar(128) NOT NULL COMMENT '对账单标题',
  `szPinMing` varchar(32) DEFAULT NULL COMMENT '成品名称',
  `szKeHuJianCheng` varchar(32) NOT NULL COMMENT '客户简称',
  `szLianXiRen` varchar(32) DEFAULT NULL COMMENT '联系人姓名',
  `szDianHua` varchar(32) DEFAULT NULL COMMENT '联系电话和传真',
  `szDuiZhangLeiBie` varchar(32) DEFAULT NULL COMMENT '对账类别',
  `szQZRiQi` varchar(32) DEFAULT NULL COMMENT '起止日期',
  `szBiBie` varchar(32) DEFAULT NULL COMMENT '币别',
  `szChuKuRiQi` varchar(64) DEFAULT NULL COMMENT '出库日期',
  `szSongHuoDanHao` varchar(64) DEFAULT NULL COMMENT '送货单号',
  `szCaiZhi` varchar(32) DEFAULT NULL COMMENT '材质',
  `szChengPinGuiGe` varchar(32) DEFAULT NULL COMMENT '成品规格',
  `nJianShu` int(11) DEFAULT NULL COMMENT '件数',
  `fShuLiang` float DEFAULT NULL COMMENT '数量',
  `fDanJia` float DEFAULT NULL COMMENT '单价',
  `fJinE` float DEFAULT NULL COMMENT '金额',
  `szBeiZhu` varchar(256) DEFAULT NULL COMMENT '备注',
  `szDingDanHao` varchar(64) DEFAULT NULL COMMENT '订单号',
  `szDZDID` varchar(32) NOT NULL COMMENT '对账单ID，此值相同为同一对账单，由年月日时分秒拼接而成',
  `szRiQi` datetime DEFAULT CURRENT_TIMESTAMP COMMENT '出单日期',
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=22 DEFAULT CHARSET=utf8mb4 COMMENT='对账单表';

-- ----------------------------
-- Records of table_duizhangdan
-- ----------------------------
INSERT INTO `table_duizhangdan` VALUES ('1', '盟钢', '11', '2021 年 6 月分对账单', '拉拔棒', '鑫泰瑞丰', '罗小姐', '0769-82760083', '销售（含税）', '2021-6-25  2021-6-25', '人民币', '2021-06-25', '', '1215', '5.5', '5', '600', '8', '4000', '', '0005', '20210625115901', '2021-06-25 11:59:03');
INSERT INTO `table_duizhangdan` VALUES ('2', '盟钢', '11', '2021 年 6 月分对账单', '拉拔棒', '鑫泰瑞丰', '罗小姐', '0769-82760083', '', '', '', '2021-06-25', '', '1215', '5.5', '5', '600', '8', '4800', '', '0005', '20210625120224', '2021-06-25 12:02:26');
INSERT INTO `table_duizhangdan` VALUES ('3', '盟钢', '11', '2021 年 6 月分对账单', '拉拔棒', '鑫泰瑞丰', '罗小姐', '0769-82760083', '销售（含税）', '2021-6-25  2021-6-25', '人民币', '2021-06-25', 'No.20210625-1', '1215', '5.5', '5', '500', '8', '4000', '', '0005', '20210625132545', '2021-06-25 13:25:50');
INSERT INTO `table_duizhangdan` VALUES ('4', '盟钢', '11', '2021 年 6 月分对账单', '拉拔棒', '鑫泰瑞丰', '罗小姐', '0769-82760083', '销售（含税）', '2021-6-25  2021-6-25', '人民币', '2021-06-25', 'No.20210625-1', '1215', '5.5', '5', '500', '8', '4000', '', '0005', '20210625133254', '2021-06-25 13:33:01');
INSERT INTO `table_duizhangdan` VALUES ('5', '盟钢', '3', '2021 年 5 月分对账单', '六角棒', '富士精工', '绍先生', '0752-6815222', '销售（含税）', '2021-5-1  2021-6-25', '人民币', '2021-06-20', '', '1215', '5.5', '5', '500', '8.88', '4440', '', 'F00001', '20210625134619', '2021-06-25 13:46:22');
INSERT INTO `table_duizhangdan` VALUES ('6', '盟钢', '4', '2021 年 5 月分对账单', '拉拔棒', '富士精工', '绍先生', '0752-6815222', '销售（含税）', '2021-5-1  2021-6-25', '人民币', '2021-06-20', '', '1215', '5.5', '5', '500', '8.88', '4440', '', 'F00001', '20210625134619', '2021-06-25 13:46:22');
INSERT INTO `table_duizhangdan` VALUES ('7', '盟钢', '12', '2021 年 6 月分对账单', '拉拔棒', '助川', '周小姐', '0769-89200988  传真:0769-86410966', '销售（含税）', '2021-6-25  2021-6-25', '人民币', '2021-06-25', 'No.20210625-2', '1215', '3.3*3300', '25', '2500', '8.8', '22000', '', '0001', '20210625145159', '2021-06-25 14:52:03');
INSERT INTO `table_duizhangdan` VALUES ('8', '盟钢', '12', '2021 年 6 月分对账单', '拉拔棒', '助川', '周小姐', '0769-89200988  传真:0769-86410966', '销售（含税）', '2021-6-25  2021-6-25', '人民币', '2021-06-25', 'No.20210625-2', '1215', '3.3*3300', '25', '2500', '8.8', '22000', '', '0001', '20210625151110', '2021-06-25 15:11:12');
INSERT INTO `table_duizhangdan` VALUES ('9', '盟钢', '12', '2021 年 6 月分对账单', '拉拔棒', '助川', '', '0769-89200988  传真:0769-86410966', '', '', '', '2021-06-25', 'No.20210625-2', '1215', '3.3*3300', '25', '2500', '8.8', '22000', '', '0001', '20210625151136', '2021-06-25 15:11:38');
INSERT INTO `table_duizhangdan` VALUES ('10', '盟钢', '12', '2021 年 6 月分对账单', '拉拔棒', '助川', '周小姐', '0769-89200988  传真:0769-86410966', '销售（含税）', '2021-6-25  2021-6-25', '人民币', '2021-06-25', 'No.20210625-2', '1215', '3.3*3300', '25', '2500', '8.8', '22000', '', '0001', '20210625151318', '2021-06-25 15:13:20');
INSERT INTO `table_duizhangdan` VALUES ('11', '盟钢', '12', '2021 年 6 月分对账单', '拉拔棒', '助川', '周小姐', '0769-89200988  传真:0769-86410966', '销售（含税）', '2021-6-25  2021-6-25', '人民币', '2021-06-25', 'No.20210625-2', '1215', '3.3*3300', '25', '2500', '8.8', '22000', '', '0001', '20210625151624', '2021-06-25 15:16:26');
INSERT INTO `table_duizhangdan` VALUES ('12', '盟钢', '12', '2021 年 6 月分对账单', '拉拔棒', '助川', '周小姐', '0769-89200988  传真:0769-86410966', '销售（含税）', '2021-6-25  2021-6-25', '人民币', '2021-06-25', 'No.20210625-2', '1215', '3.3*3300', '25', '2500', '8.8', '22000', '', '0001', '20210625151803', '2021-06-25 15:18:05');
INSERT INTO `table_duizhangdan` VALUES ('13', '盟钢', '12', '2021 年 6 月分对账单', '拉拔棒', '助川', '周小姐', '0769-89200988  传真:0769-86410966', '销售（含税）', '2021-6-25  2021-6-25', '人民币', '2021-06-25', 'No.20210625-2', '1215', '3.3*3300', '25', '2500', '8.8', '22000', '', '0001', '20210625152532', '2021-06-25 15:25:34');
INSERT INTO `table_duizhangdan` VALUES ('14', '盟钢', '12', '2021 年 6 月分对账单', '拉拔棒', '助川', '周小姐', '0769-89200988  传真:0769-86410966', '销售（含税）', '2021-6-25  2021-6-25', '人民币', '2021-06-25', 'No.20210625-2', '1215', '3.3*3300', '25', '2500', '8.8', '22000', '', '0001', '20210625152949', '2021-06-25 15:29:51');
INSERT INTO `table_duizhangdan` VALUES ('15', '盟钢', '12', '2021 年 6 月分对账单', '拉拔棒', '助川', '周小姐', '0769-89200988  传真:0769-86410966', '销售（含税）', '2021-6-25  2021-6-25', '人民币', '2021-06-25', 'No.20210625-2', '1215', '3.3*3300', '25', '2500', '8.8', '22000', '', '0001', '20210625154943', '2021-06-25 15:49:45');
INSERT INTO `table_duizhangdan` VALUES ('16', '盟钢', '12', '2021 年 6 月分对账单', '拉拔棒', '助川', '周小姐', '0769-89200988  传真:0769-86410966', '销售（含税）', '2021-6-25  2021-6-25', '人民币', '2021-06-25', 'No.20210625-2', '1215', '3.3*3300', '25', '2500', '8.8', '22000', '', '0001', '20210625160830', '2021-06-25 16:08:32');
INSERT INTO `table_duizhangdan` VALUES ('17', '盟钢', '1', '2021 年 5 月分对账单', '六角棒', '鑫泰瑞丰', '周小姐', '0769-82760083', '销售（含税）', '2021-5-1  2021-6-25', '人民币', '2021-05-21', '', '1215', '5.5', '5', '500', '9.98', '4990', '', '0001', '20210625163155', '2021-06-25 16:31:57');
INSERT INTO `table_duizhangdan` VALUES ('18', '盟钢', '2', '2021 年 5 月分对账单', '拉拔棒', '鑫泰瑞丰', '周小姐', '0769-82760083', '销售（含税）', '2021-5-1  2021-6-25', '人民币', '2021-05-21', '', '1215', '5.5', '5', '500', '8.88', '4440', '', '0001', '20210625163155', '2021-06-25 16:31:57');
INSERT INTO `table_duizhangdan` VALUES ('19', '盟钢', '7', '2021 年 5 月分对账单', '六角棒', '鑫泰瑞丰', '周小姐', '0769-82760083', '销售（含税）', '2021-5-1  2021-6-25', '人民币', '2021-06-21', '', '1215', '5.5', '3', '300', '9.98', '2994', '', '0001', '20210625163155', '2021-06-25 16:31:57');
INSERT INTO `table_duizhangdan` VALUES ('20', '盟钢', '8', '2021 年 5 月分对账单', '拉拔棒', '鑫泰瑞丰', '周小姐', '0769-82760083', '销售（含税）', '2021-5-1  2021-6-25', '人民币', '2021-06-21', '', '1215', '5.5', '3', '300', '8.88', '2664', '', '0001', '20210625163155', '2021-06-25 16:31:57');
INSERT INTO `table_duizhangdan` VALUES ('21', '盟钢', '11', '2021 年 5 月分对账单', '拉拔棒', '鑫泰瑞丰', '周小姐', '0769-82760083', '销售（含税）', '2021-5-1  2021-6-25', '人民币', '2021-06-25', 'No.20210625-1', '1215', '5.5', '5', '500', '8', '4000', '', '0005', '20210625163155', '2021-06-25 16:31:57');

-- ----------------------------
-- Table structure for `table_gangchang`
-- ----------------------------
DROP TABLE IF EXISTS `table_gangchang`;
CREATE TABLE `table_gangchang` (
  `ID` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT '索引',
  `szGangChang` varchar(32) NOT NULL COMMENT '钢厂名称',
  `szDaiMa` varchar(32) NOT NULL COMMENT '钢厂代码',
  `szBeiZhu` varchar(64) DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8mb4 COMMENT='钢厂来源表';

-- ----------------------------
-- Records of table_gangchang
-- ----------------------------
INSERT INTO `table_gangchang` VALUES ('4', '韶钢', 'S', '');
INSERT INTO `table_gangchang` VALUES ('5', '青钢', 'Q', '');
INSERT INTO `table_gangchang` VALUES ('6', '贵钢', 'G', '');
INSERT INTO `table_gangchang` VALUES ('7', '湘钢', 'X', '');
INSERT INTO `table_gangchang` VALUES ('8', '中天', 'Z', '');
INSERT INTO `table_gangchang` VALUES ('9', '英钢', 'Y', '');
INSERT INTO `table_gangchang` VALUES ('10', '德钢', 'D', '');
INSERT INTO `table_gangchang` VALUES ('11', '中钢', 'C', '');
INSERT INTO `table_gangchang` VALUES ('12', '日本', 'J', '');
INSERT INTO `table_gangchang` VALUES ('14', '邢钢', 'T', '');
INSERT INTO `table_gangchang` VALUES ('15', '国产', 'L', '');
INSERT INTO `table_gangchang` VALUES ('16', 'TEST', 'R', '');

-- ----------------------------
-- Table structure for `table_kehuleibie`
-- ----------------------------
DROP TABLE IF EXISTS `table_kehuleibie`;
CREATE TABLE `table_kehuleibie` (
  `ID` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT '索引',
  `szLeiBie` varchar(32) NOT NULL COMMENT '客户类别',
  `szDaiMa` varchar(32) NOT NULL COMMENT '类别代码',
  `szBeiZhu` varchar(64) DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COMMENT='客户类别表';

-- ----------------------------
-- Records of table_kehuleibie
-- ----------------------------
INSERT INTO `table_kehuleibie` VALUES ('1', '直接工厂', 'F', '直接工厂(Factor Customers),用英文缩写“F”字母表示。');
INSERT INTO `table_kehuleibie` VALUES ('2', '贸易商/盘中商', 'T', '贸易商/盘中商(Traders),用英文缩写“T”字母表示。');

-- ----------------------------
-- Table structure for `table_kehulianxiren`
-- ----------------------------
DROP TABLE IF EXISTS `table_kehulianxiren`;
CREATE TABLE `table_kehulianxiren` (
  `ID` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT '索引',
  `szXingMing` varchar(32) NOT NULL COMMENT '联系人姓名',
  `szJianCheng` varchar(32) NOT NULL COMMENT '客户简称',
  `szKeHuDaiMa` varchar(32) NOT NULL COMMENT '客户代码',
  `szBuMen` varchar(32) NOT NULL COMMENT '所在部门',
  `szZhiWu` varchar(32) DEFAULT NULL COMMENT '职务',
  `szDianHua` varchar(32) DEFAULT NULL COMMENT '电话',
  `szEmail` varchar(64) DEFAULT NULL COMMENT '电子邮件',
  `szBeiZhu` text COMMENT '备注',
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=84 DEFAULT CHARSET=utf8mb4 COMMENT='客户联系人表';

-- ----------------------------
-- Records of table_kehulianxiren
-- ----------------------------
INSERT INTO `table_kehulianxiren` VALUES ('1', '周小姐', '助川', 'T-0769001', '业务联系人', null, '13790298646', null, null);
INSERT INTO `table_kehulianxiren` VALUES ('2', '肖小姐', '君豪胜', 'T-0769002', '业务联系人', null, '18028289119', null, null);
INSERT INTO `table_kehulianxiren` VALUES ('3', '吴阳', '万欣', 'F-0769001', '业务联系人', null, '18002985773', null, null);
INSERT INTO `table_kehulianxiren` VALUES ('4', '李小姐', '进春', 'T-0769003', '业务联系人', null, '13682659765', null, null);
INSERT INTO `table_kehulianxiren` VALUES ('5', '曾总', '昇亮', 'F-0769002', '业务联系人', null, '13538332788', null, null);
INSERT INTO `table_kehulianxiren` VALUES ('6', '蔡总', '成冠', 'T-0769004', '业务联系人', null, '13549489168', null, null);
INSERT INTO `table_kehulianxiren` VALUES ('7', '曹总', '金辉', 'F-0769003', '业务联系人', null, '13825781920', null, null);
INSERT INTO `table_kehulianxiren` VALUES ('8', '陈总', '鸿益鑫', 'T-0769005', '业务联系人', null, '13823110146', null, null);
INSERT INTO `table_kehulianxiren` VALUES ('9', '徐小姐', '柏煜', 'T-0769006', '业务联系人', null, '18145875631(苏州) 13532794212(东莞)', null, null);
INSERT INTO `table_kehulianxiren` VALUES ('10', '罗小姐', '鑫泰瑞丰', 'F-0769004', '业务联系人', null, '1.35528E+11', null, null);
INSERT INTO `table_kehulianxiren` VALUES ('11', '倪红', '力伟达', 'T-0755009', '业务联系人', null, '15818656506', null, null);
INSERT INTO `table_kehulianxiren` VALUES ('12', '李副总', '高昶', 'T-0769007', '业务联系人', null, '13751422826', null, null);
INSERT INTO `table_kehulianxiren` VALUES ('13', '朱小姐', '鸿甲', 'T-0769008', '业务联系人', null, null, null, null);
INSERT INTO `table_kehulianxiren` VALUES ('14', '张小姐', '宏泰', 'T-0769009', '业务联系人', null, '18002738290', null, null);
INSERT INTO `table_kehulianxiren` VALUES ('15', '梁小姐', '勤进', 'T-0757003', '业务联系人', null, '13709664748', null, null);
INSERT INTO `table_kehulianxiren` VALUES ('16', '何小姐', '鑫钰', 'T-0769010', '业务联系人', null, '13553827686', null, null);
INSERT INTO `table_kehulianxiren` VALUES ('17', '王小姐', '东彩', 'F-0769006', '业务联系人', null, '13570245328', null, null);
INSERT INTO `table_kehulianxiren` VALUES ('18', '王小姐', '彩虹', 'F-020-001', '业务联系人', null, '13570245328', null, null);
INSERT INTO `table_kehulianxiren` VALUES ('19', '刘小姐', '创红亿', 'T-0769011', '业务联系人', null, '13556787773', null, null);
INSERT INTO `table_kehulianxiren` VALUES ('20', '陈总', '大志', 'T-0769012', '业务联系人', null, '13430405553', null, null);
INSERT INTO `table_kehulianxiren` VALUES ('21', '绍先生', '富士精工', 'F-0752001', '业务联系人', null, '13827207626', null, null);
INSERT INTO `table_kehulianxiren` VALUES ('22', '成总', '鼎昇', 'T-0769013', '业务联系人', null, '13826969552', null, null);
INSERT INTO `table_kehulianxiren` VALUES ('23', '匿名', '德晟', 'T-0769014', '业务联系人', null, '13829208992', null, null);
INSERT INTO `table_kehulianxiren` VALUES ('24', '王总', '劲钢', 'T-0769015', '业务联系人', null, '13649803188', null, null);
INSERT INTO `table_kehulianxiren` VALUES ('25', '钟总', '进锦', 'T-0769016', '业务联系人', null, '13802398995', null, null);
INSERT INTO `table_kehulianxiren` VALUES ('26', '陈总', '琛齐伟', 'T-0769017', '业务联系人', null, '13688941769', null, null);
INSERT INTO `table_kehulianxiren` VALUES ('27', '宋副总', '鑫乘泰', 'T-0769018', '业务联系人', null, '13556763900', null, null);
INSERT INTO `table_kehulianxiren` VALUES ('28', '沈小姐', '东禾', 'T-0769019', '业务联系人', null, '18926821802', null, null);
INSERT INTO `table_kehulianxiren` VALUES ('29', '田总', '巨炜', 'T-0769020', '业务联系人', null, '13827258687', null, null);
INSERT INTO `table_kehulianxiren` VALUES ('30', '谢先生', '皇铭', 'T-0769024', '业务联系人', null, '13922528786', null, null);
INSERT INTO `table_kehulianxiren` VALUES ('31', '彭总', '鸿铭', 'T-0769025', '业务联系人', null, '13620006676', null, null);
INSERT INTO `table_kehulianxiren` VALUES ('32', '邹总', '信优', 'T-0769026', '业务联系人', null, '13662646788', null, null);
INSERT INTO `table_kehulianxiren` VALUES ('33', '夏总', '申裕', 'T-0769027', '业务联系人', null, '18002835300', null, null);
INSERT INTO `table_kehulianxiren` VALUES ('34', '刘总', '恒畅鑫', 'T-0769028', '业务联系人', null, '13502825758', null, null);
INSERT INTO `table_kehulianxiren` VALUES ('35', '陈先生', '红达', 'T-0769029', '业务联系人', null, null, null, null);
INSERT INTO `table_kehulianxiren` VALUES ('36', '沈总', '嘉良', 'T-0769031', '业务联系人', null, '13825718350', null, null);
INSERT INTO `table_kehulianxiren` VALUES ('37', '吴小姐', '郡豪盛', 'T-0760001', '业务联系人', null, null, null, null);
INSERT INTO `table_kehulianxiren` VALUES ('38', '麦总', '清和', 'T-0757001', '业务联系人', null, '13336420683', null, null);
INSERT INTO `table_kehulianxiren` VALUES ('39', '赖总', '巨多盛', 'T-0757002', '业务联系人', null, '15813629810', null, null);
INSERT INTO `table_kehulianxiren` VALUES ('40', '韩小姐', '益永畅', 'T-075201', '业务联系人', null, '18927364511', null, null);
INSERT INTO `table_kehulianxiren` VALUES ('41', '刘先生', '瑞鑫达', 'T-0752002', '业务联系人', null, '13631772712', null, null);
INSERT INTO `table_kehulianxiren` VALUES ('42', '徐总', '鸿达成', 'T-0752003', '业务联系人', null, '13680863970', null, null);
INSERT INTO `table_kehulianxiren` VALUES ('43', '王总', '隆鑫达', 'T-0752004', '业务联系人', null, '15018887516', null, null);
INSERT INTO `table_kehulianxiren` VALUES ('44', '黄小姐', '同一', 'F-0769007', '业务联系人', null, null, null, null);
INSERT INTO `table_kehulianxiren` VALUES ('45', '曾先生', '精诺轴承', 'F-0769018', '业务联系人', null, '18229286515', null, null);
INSERT INTO `table_kehulianxiren` VALUES ('46', '谢晶晶', '韶钢', '', '业务联系人', null, '13922598668', null, null);
INSERT INTO `table_kehulianxiren` VALUES ('47', '曹小姐', '均亿', 'F-0769008', '业务联系人', null, '15017870135', null, null);
INSERT INTO `table_kehulianxiren` VALUES ('48', '李丽', '金昌源', 'T-0755001', '业务联系人', null, '18926759893', null, null);
INSERT INTO `table_kehulianxiren` VALUES ('49', '祝总', '烨辉', 'T-0755002', '业务联系人', null, '13714767862', null, null);
INSERT INTO `table_kehulianxiren` VALUES ('50', '郭先生', '金宜', 'F-0769009', '业务联系人', null, '13592733986', null, null);
INSERT INTO `table_kehulianxiren` VALUES ('51', '匿名', '浦鑫', 'F-0769010', '业务联系人', null, '13650066167', null, null);
INSERT INTO `table_kehulianxiren` VALUES ('52', '匿名', '一辰', 'F-0769011', '业务联系人', null, '13549437909', null, null);
INSERT INTO `table_kehulianxiren` VALUES ('53', '匿名', '亿量', 'F-0769012', '业务联系人', null, '13537170867', null, null);
INSERT INTO `table_kehulianxiren` VALUES ('54', '牟总', '宏鑫', 'T-0755003', '业务联系人', null, '18813864808', null, null);
INSERT INTO `table_kehulianxiren` VALUES ('55', '蔡总', '明志', 'F-0769014', '业务联系人', null, '13809239260', null, null);
INSERT INTO `table_kehulianxiren` VALUES ('56', '朱小姐', '铎峰', 'T-0755004', '业务联系人', null, null, null, null);
INSERT INTO `table_kehulianxiren` VALUES ('57', '熊国强', '奇熊', 'F-0769015', '业务联系人', null, null, null, null);
INSERT INTO `table_kehulianxiren` VALUES ('58', '王小姐', '君金盛', 'T-0755005', '业务联系人', null, '13417311245邓先生(卷)', null, null);
INSERT INTO `table_kehulianxiren` VALUES ('59', '唐春梅', '君豪盛', 'T-0755006', '业务联系人', null, '13510864145', null, null);
INSERT INTO `table_kehulianxiren` VALUES ('60', '黄小姐', '金玮', 'F-0769016', '业务联系人', null, '18929472937', null, null);
INSERT INTO `table_kehulianxiren` VALUES ('61', '喻先生', '金恒畅', 'T-0755008', '业务联系人', null, '13728853688', null, null);
INSERT INTO `table_kehulianxiren` VALUES ('62', '徐总', '科力', 'F-0769017', '业务联系人', null, '13829215681', null, null);
INSERT INTO `table_kehulianxiren` VALUES ('63', '徐小姐', '赛纳', 'T-0631001', '业务联系人', null, '18145875631(苏州)13532794212(东莞)', null, null);
INSERT INTO `table_kehulianxiren` VALUES ('64', '肖厚仁', '欣荣', 'T-0760002', '业务联系人', null, '13794643255', null, null);
INSERT INTO `table_kehulianxiren` VALUES ('65', '张小姐', '钢谷', 'F-0769019', '业务联系人', null, '13415666080', null, null);
INSERT INTO `table_kehulianxiren` VALUES ('66', '张小姐', '助川', 'T-0769001', '其他', null, null, null, null);
INSERT INTO `table_kehulianxiren` VALUES ('67', '刘小姐', '君豪胜', 'T-0769002', '其他', null, '18028289178', null, null);
INSERT INTO `table_kehulianxiren` VALUES ('68', '', '鑫泰瑞丰', 'F-0769004', '其他', null, '13620959531', null, null);
INSERT INTO `table_kehulianxiren` VALUES ('69', '吴彬聪', '高昶', 'T-0769007', '其他', null, '13215220111', null, null);
INSERT INTO `table_kehulianxiren` VALUES ('70', '刘小姐', '东彩', 'F-0769006', '其他', null, null, null, null);
INSERT INTO `table_kehulianxiren` VALUES ('71', '刘小姐', '彩虹', 'F-020-001', '其他', null, null, null, null);
INSERT INTO `table_kehulianxiren` VALUES ('72', '黄小姐', '大志', 'T-0769012', '其他', null, null, null, null);
INSERT INTO `table_kehulianxiren` VALUES ('73', '韩小姐', '劲钢', 'T-0769015', '其他', null, '13600267538', null, null);
INSERT INTO `table_kehulianxiren` VALUES ('74', '叶小姐', '巨炜', 'T-0769020', '其他', null, null, null, null);
INSERT INTO `table_kehulianxiren` VALUES ('75', '黄小姐', '皇铭', 'T-0769024', '其他', null, null, null, null);
INSERT INTO `table_kehulianxiren` VALUES ('76', '刘建', '申裕', 'T-0769027', '其他', null, null, null, null);
INSERT INTO `table_kehulianxiren` VALUES ('77', '杜小姐', '红达', 'T-0769029', '其他', null, null, null, null);
INSERT INTO `table_kehulianxiren` VALUES ('78', '胡小姐', '郡豪盛', 'T-0760001', '其他', null, null, null, null);
INSERT INTO `table_kehulianxiren` VALUES ('79', '王小姐', '清和', 'T-0757001', '其他', null, '13928642890', null, null);
INSERT INTO `table_kehulianxiren` VALUES ('80', '陈总', '明志', 'F-0769014', '其他', null, '15099907108', null, null);
INSERT INTO `table_kehulianxiren` VALUES ('81', '赵冬梅', '君豪盛', 'T-0755006', '其他', null, '13510316150', null, null);
INSERT INTO `table_kehulianxiren` VALUES ('82', '黄小姐', '金恒畅', 'T-0755008', '其他', null, null, null, null);
INSERT INTO `table_kehulianxiren` VALUES ('83', '程经理', '科力', 'F-0769017', '其他', null, '13423438412', null, null);

-- ----------------------------
-- Table structure for `table_kehuziliao`
-- ----------------------------
DROP TABLE IF EXISTS `table_kehuziliao`;
CREATE TABLE `table_kehuziliao` (
  `ID` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT '索引',
  `szJianCheng` varchar(32) NOT NULL COMMENT '客户简称',
  `szJianChengZiMu` varchar(32) NOT NULL COMMENT '客户简称首字母',
  `szQuanCheng` varchar(128) NOT NULL COMMENT '客户全称',
  `szKeHuLeiBie` varchar(32) DEFAULT NULL COMMENT '客户类别 F:直接工厂, T:贸易商/盘中商',
  `szQuHao` varchar(32) DEFAULT NULL COMMENT '电话区号',
  `szDaiMa` varchar(32) DEFAULT NULL COMMENT '客户代码',
  `szQiYeLeiXing` varchar(32) DEFAULT NULL COMMENT '企业类型',
  `szDiZhi` varchar(128) DEFAULT NULL COMMENT '公司地址',
  `szDuanDiZhi` varchar(64) DEFAULT NULL COMMENT '短地址',
  `szXinYongDaiMa` varchar(64) DEFAULT NULL COMMENT '信用代码',
  `szFaRen` varchar(32) DEFAULT NULL COMMENT '公司法人',
  `szZhuCeZiBen` varchar(32) DEFAULT NULL COMMENT '公司注册资本',
  `szDianHua` varchar(32) DEFAULT NULL COMMENT '公司电话',
  `szChuanZhen` varchar(32) DEFAULT NULL COMMENT '公司传真',
  `szEmail` varchar(64) DEFAULT NULL COMMENT '公司邮箱',
  `szChengLiRiQi` varchar(32) DEFAULT NULL COMMENT '成立日期',
  `szBeiZhu` text COMMENT '备注',
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=74 DEFAULT CHARSET=utf8mb4 COMMENT='客户信息表';

-- ----------------------------
-- Records of table_kehuziliao
-- ----------------------------
INSERT INTO `table_kehuziliao` VALUES ('1', '助川', 'ZC', '东莞市助川金属材料有限公司', 'T', '0769', 'T-0769001', null, '广东省东莞市茶山镇刘黄第三工业区第一栋1楼', '东莞茶山', '91441900584669700J', '焦美兰', '50', '0769-89200988', '0769-86410966', '', '2011年10月13日', null);
INSERT INTO `table_kehuziliao` VALUES ('2', '君豪胜', 'JHS', '东莞市君豪胜金属材料有限公司', 'T', '0769', 'T-0769002', null, '东莞市常平镇桥沥茂竹山沿河边2号', '东莞常平', '91441900050693570J', '杨新', '2206', '0769-82891606-805', '', '', '2012年07月20日', null);
INSERT INTO `table_kehuziliao` VALUES ('3', '万欣', 'WX', '东莞市万欣金属制品有限公司', 'F', '0769', 'F-0769001', null, '东莞市常平镇桥沥茂竹山沿河边2号-1', '东莞常平', '91441900071918281X', '杨中波', '11030', '0769-82891606-829', '0769-82891606-838', '', '2013年06月27日', null);
INSERT INTO `table_kehuziliao` VALUES ('4', '进春', 'JC', '东莞市进春金属材料有限公司', 'T', '0769', 'T-0769003', null, '东莞市大朗镇黄草朗社区美景中路1468号', '东莞大朗', '91441900675182981Q', '徐卫华', '50', '0769-83034856', '0769-83138278', '', '2008年05月19日', null);
INSERT INTO `table_kehuziliao` VALUES ('5', '昇亮', '?L', '东莞市昇亮金属材料有限公司', 'F', '0769', 'F-0769002', null, '东莞市常平镇元江元村江霞北路1号-2', '东莞常平', '91441900MA4X08LL1K', '曾炜荣', '900', '0769-83396621', '', '', '2017年08月14日', null);
INSERT INTO `table_kehuziliao` VALUES ('6', '成冠', 'CG', '东莞市成冠金属材料有限公司', 'T', '0769', 'T-0769004', null, '东莞市大朗镇黄草朗美景中路1633号', '东莞大朗', '9144190057645542XX', '蔡学勇', '3', '0769-81124899', '0769-81125890', '', '2011年06月03日', null);
INSERT INTO `table_kehuziliao` VALUES ('7', '金辉', 'JH', '东莞市进春(金辉)金属材料加工厂', 'F', '0769', 'F-0769003', null, '东莞市大朗镇黄草朗社区美景中路1468号', '东莞大朗', '', '曹建辉', '', '', '', '', null, null);
INSERT INTO `table_kehuziliao` VALUES ('8', '鸿益鑫', 'HY?', '东莞鸿益鑫金属材料有限公司', 'T', '0769', 'T-0769005', null, '东莞市大朗镇美景中路1783号', '东莞大朗', '91441900MA4WCR6947', '陈东风', '70', '0769-83001823', '0769-82928806', '138231101461@139.com', '2017年03月30日', null);
INSERT INTO `table_kehuziliao` VALUES ('9', '柏煜', 'B?', '东莞市柏煜五金材料有限公司', 'T', '0769', 'T-0769006', null, '广东省东莞市大朗镇黄草朗东盛街10号101室', '东莞大朗', '91441900MA560TNL9L', '徐静', '500', '18145875631(苏州) 13532794212(东莞)', '', '', '2021年03月02日', null);
INSERT INTO `table_kehuziliao` VALUES ('10', '鑫泰瑞丰', '?TRF', '东莞市鑫泰瑞丰五金制品有限公司', 'F', '0769', 'F-0769004', null, '东莞市大岭山镇马蹄岗村旺坑路38号', '东莞大岭山', '91441900351968814N', '张建平', '60', '0769-82760083', '', '2851337025@QQ.COM', '2015年07月14日', null);
INSERT INTO `table_kehuziliao` VALUES ('11', '力伟达', 'LWD', '深圳市力伟达五金制品有限公司', 'T', '0755', 'T-0755009', null, '深圳市宝安区松岗街道红星社区西坊工业区第四幢201', '深圳松岗', '9144030 03266183615', '罗力', '100', '15818656506', '', '357906423@QQ.COM', '2015年02月05日', null);
INSERT INTO `table_kehuziliao` VALUES ('12', '荣晋', 'RJ', '东莞市荣晋五金塑胶有限公司', 'F', '0769', 'F-0769005', null, '东莞市凤岗镇天堂围村精明路208号二楼', '东莞凤岗', '91441900666478318L', '农远明', '10', '', '', '2768694156@QQ.COM', '2007年08月20日', null);
INSERT INTO `table_kehuziliao` VALUES ('13', '高昶', 'G?', '东莞市高昶金属材料有限公司', 'T', '0769', 'T-0769007', null, '东莞市东坑镇油草岭一路6号', '东莞东坑', '91441900MA55EW6W4T', '李黎', '500', '0769-89868996', '0769-89868776', '', '2020年10月21日', null);
INSERT INTO `table_kehuziliao` VALUES ('14', '鸿甲', 'HJ', '东莞市鸿甲五金制材料有限公司', 'T', '0769', 'T-0769008', null, '东莞市凤岗镇塘沥村超顺加油站侧', '东莞凤岗', '9.14419E+17', '彭春红', '50', '0769-82039577 0769-87517744', '\"0769-82194244 0769-87562277\"', '281792367@QQ.COM', '2004年10月14日', null);
INSERT INTO `table_kehuziliao` VALUES ('15', '宏泰', 'HT', '东莞市宏泰金属材料有限公司', 'T', '0769', 'T-0769009', null, '东莞市凤岗镇东江花园C11-C13号', '东莞凤岗', '91441900MA4WEXCN43', '李荣海', '50', '18002738290', '', '', '2017年04月17日', null);
INSERT INTO `table_kehuziliao` VALUES ('16', '勤进', 'QJ', '佛山市南海盐步勤进金属材料经营部', 'T', '0757', 'T-0757003', null, '佛山市南海区盐步鸿珠广场西侧-横道5号', '佛山南海', '91440605770974143H', '梁顺琼', '', '13709664748', '', '', '2005年01月07日', null);
INSERT INTO `table_kehuziliao` VALUES ('17', '鑫钰', '??', '东莞市鑫钰金属有限公司', 'T', '0769', 'T-0769010', null, '东莞市高埗镇冼沙村二下坊新村506号一楼', '东莞高埗', '91441900MA4W1RL149', '何新华', '', '13553827686', '', '', '2016年12月06日', null);
INSERT INTO `table_kehuziliao` VALUES ('18', '东彩', 'DC', '东莞东彩精密五金有限公司', 'F', '0769', 'F-0769006', null, '东莞市虎门镇路东管理区长虹路2号', '东莞虎门', '91441900320511723Y', '刘炳泉', '5000', '0769-86096888-815', '', '', '2014年11月11日', null);
INSERT INTO `table_kehuziliao` VALUES ('19', '彩虹', 'CH', '广州市彩虹五金弹簧有限公司', 'F', '020-', 'F-020-001', null, '广州市黄埔区南湾西街89号', '广州新塘', '9.14401E+17', '陆柳媚', '6400', '0769-86096888-815', '', '', '2004年11月11日', null);
INSERT INTO `table_kehuziliao` VALUES ('20', '创红亿', 'CHY', '创红亿金属材料有限公司', 'T', '0769', 'T-0769011', null, '东莞市横沥镇横沥康乐路61号103', '东莞横沥', '91441900MA519A9Q3H', '郭忠祥', '100', '0769-82361123', '', '', '2018年01月18日', null);
INSERT INTO `table_kehuziliao` VALUES ('21', '大志', 'DZ', '东莞市大志金属材料有限公司', 'T', '0769', 'T-0769012', null, '广东省东莞市虎门镇南栅民昌路九巷68号隔壁灰色大楼', '东莞虎门', '91441900MA534WHR7W', '陈志临', '50', '13043460766', '', '', '2019年04月16日', null);
INSERT INTO `table_kehuziliao` VALUES ('22', '富士精工', 'FSJG', '博罗县富士精工五金有限公司', 'F', '0752', 'F-0752001', null, '惠州市博罗县园洲镇禾山工业区/东莞市石排镇庙边五管理区', '惠州博罗', '9.14413E+17', '斋藤胜雄', '1800', '0752-6815222', '', '', '2011年06月08日', null);
INSERT INTO `table_kehuziliao` VALUES ('23', '鼎昇', 'D?', '东莞市鼎昇金属材料有限公司', 'T', '0769', 'T-0769013', null, '广东省东莞市黄江镇拥军一路12号101室', '东莞黄江', '91441900MA52W7H26H', '成传英', '1180', '13826969552', '', '', '2019年02月18日', null);
INSERT INTO `table_kehuziliao` VALUES ('24', '德晟', 'D?', '东莞市德晟五金材料有限公司', 'T', '0769', 'T-0769014', null, '东莞市黄江镇田美社区爱华二街1号', '东莞黄江', '91441900MA4W47GM6J', '魏志君', '82.36', '0769-82114821', '', '', '2016年12月28日', null);
INSERT INTO `table_kehuziliao` VALUES ('25', '劲钢', 'JG', '东莞市劲钢金属材料有限公司', 'T', '0769', 'T-0769015', null, '东莞市寮步镇塘边社区莞樟路段袅西路段', '东莞寮步', '91441900MA4WTTHL08', '王强', '50', '0769-83000985', '0769-83000976', '', '2017年07月11日', null);
INSERT INTO `table_kehuziliao` VALUES ('26', '进锦', 'JJ', '东莞市进锦五金有限公司', 'T', '0769', 'T-0769016', null, '东莞市寮步镇莞樟路段(西溪加油站左侧)', '东莞寮步', '91441900351980928F', '李凤章', '10', '0769-82878171', '0769-82878173', '', '2015年08月20日', null);
INSERT INTO `table_kehuziliao` VALUES ('27', '琛齐伟', '?QW', '东莞市琛齐伟金属制品有限公司', 'T', '0769', 'T-0769017', null, '东莞市寮步镇塘边社区莞樟路段袅西路段', '东莞寮步', '9144190059409383XK', '陈安平', '50', '0769-81100890', '', '', '2012年04月27日', null);
INSERT INTO `table_kehuziliao` VALUES ('28', '鑫乘泰', '?CT', '东莞市鑫乘泰实业有限公司', 'T', '0769', 'T-0769018', null, '东莞市寮步镇西溪凫溪村金兴路', '东莞寮步', '91441900MA4W3DWE3R', '吴思仪', '200', '0769-82311236', '0769-82311266', '', '2016年12月21日', null);
INSERT INTO `table_kehuziliao` VALUES ('29', '东禾', 'DH', '东莞市红股金属材料有限公司', 'T', '0769', 'T-0769019', null, '东莞市清溪镇罗马村福源路2号1号楼', '东莞清溪', '91441900MA55NA003L', '费雪花', '300', '0769-81661511', '0769-87789117', '', '2020年12月08日', null);
INSERT INTO `table_kehuziliao` VALUES ('30', '巨炜', 'J?', '东莞市巨炜金属材料有限公司', 'T', '0769', 'T-0769020', null, '东莞市石排镇下沙村石横大道(下沙村委会路口)', '东莞石排', '91441900MA51FNR2XB', '叶志敏', '100', '0769-81819667', '0769-81819557', '', '2018年03月27日', null);
INSERT INTO `table_kehuziliao` VALUES ('31', '秩父', 'ZF', '东莞市秩父五金制品有限公司', 'T', '0769', 'T-0769021', null, '东莞市塘厦镇科苑城青峰南路六号D栋', '东莞塘厦', '91441900071891883Y', '马广暹', '1000', '', '', '', '2013年06月24日', null);
INSERT INTO `table_kehuziliao` VALUES ('32', '正立信', 'ZLX', '东莞市正立信金属材料有限公司', 'T', '0769', 'T-0769022', null, '东莞市塘厦镇桥陇社区南屏工业区11号一楼2号', '东莞塘厦', '91441900MA51JJY092', '周利平', '50', '0769-82086189', '', '', '2018年04月16日', null);
INSERT INTO `table_kehuziliao` VALUES ('33', '隆盛', 'LS', '东莞市隆盛五金材料有限公司', 'T', '0769', 'T-0769023', null, '东莞市樟木头镇官仓社区飞达商业街30号', '东莞樟木头', '91441900MA529UCR6A', '邹伟连', '50', '', '', '', '2018年09月19日', null);
INSERT INTO `table_kehuziliao` VALUES ('34', '皇铭', 'HM', '东莞市皇铭五金有限公司', 'T', '0769', 'T-0769024', null, '东莞市长安镇乌沙兴发北路西一街2号', '东莞长安', '91441900737569672N', '陈致维', '50', '0769-85388775', '', '', '2002年04月04日', null);
INSERT INTO `table_kehuziliao` VALUES ('35', '鸿铭', 'HM', '东莞鸿铭五金材料有限公司', 'T', '0769', 'T-0769025', null, '东莞市长安镇霄边社区霄边大道10号之五', '东莞长安', '9.14419E+17', '彭杨飞', '10', '13620006676', '', '', '2010年08月09日', null);
INSERT INTO `table_kehuziliao` VALUES ('36', '信优', 'XY', '东莞市信优金属材料有限公司', 'T', '0769', 'T-0769026', null, '东莞市长安镇掁安东路霄冲工业区ES5栋一楼A9号', '东莞长安', '91441900070262719Y', '邹旭日', '6.5', '13662646788', '', '', '2013年05月30日', null);
INSERT INTO `table_kehuziliao` VALUES ('37', '申裕', 'SY', '东莞市申裕特种钢有限公司', 'T', '0769', 'T-0769027', null, '东莞市长安镇新民社区祥兴街1号', '东莞长安', '91441900MA4UMDAJ6R', '夏裕峰', '300', '0769-88002280/1/2/3', '0769-88002285', '', '2016年03月09日', null);
INSERT INTO `table_kehuziliao` VALUES ('38', '恒畅鑫', 'HC?', '深圳市恒畅鑫金属材料有限公司', 'T', '0769', 'T-0769028', null, '东莞市长安镇霄边振安东路兴盛大厦一楼139号1-6', '东莞长安', '9.14403E+17', '喻建珍', '50', '0769-81667669', '', '', '2007年09月23日', null);
INSERT INTO `table_kehuziliao` VALUES ('39', '红达', 'HD', '东莞市红达金属材料有限公司', 'T', '0769', 'T-0769029', null, '东莞市长安镇涌头社区海怡路28号', '东莞长安', '91441900570125729W', '陈锡添', '100', '0769-22699356', '0769-22699358', '', '2011年03月07日', null);
INSERT INTO `table_kehuziliao` VALUES ('40', '伟申', 'WS', '东莞市伟申金属材料有限公司', 'T', '0769', 'T-0769030', null, '东莞市长安霄边大道南莞深智造城二期17栋', '东莞长安', '9.14419E+17', '罗伟梅', '50', '0769-85079030 0769-82388832', '0769-81766469', '', '2008年06月05日', null);
INSERT INTO `table_kehuziliao` VALUES ('41', '嘉良', 'JL', '东莞市嘉良金属材料有限公司', 'T', '0769', 'T-0769031', null, '东莞市长安镇宵边新河路20号101室', '东莞长安', '91441900MA52RTK52M', '饶小丽', '50', '13825718350', '', '', '2019年01月15日', null);
INSERT INTO `table_kehuziliao` VALUES ('42', '郡豪盛', 'JHS', '中山市郡豪盛金属材料有限公司', 'T', '0760', 'T-0760001', null, '中山市黄圃镇马新物流工业园A3栋', '东莞中山', '91442000791190364U', '杨新', '2206', '0760-22500866', '0760-22500867', '', '2006年07月18日', null);
INSERT INTO `table_kehuziliao` VALUES ('43', '清和', 'QH', '佛山市南海盐步清和金属材料经营部', 'T', '0757', 'T-0757001', null, '佛山市南海区大沥镇广佛新干线联桂路32号(伟创汇测)', '佛山南海', '92440605L16358085D', '麦北海', '0.5', '0757-85770683', '', '', '2005年04月04日', null);
INSERT INTO `table_kehuziliao` VALUES ('44', '巨多盛', 'JDS', '佛山市巨多盛金属制品有限公司', 'T', '0757', 'T-0757002', null, '佛山市南海区大沥镇佛新干线蛇龙北琦宝国际1B栋1-5号', '佛山南海', '91440605572387503P', '张兰', '100', '0757-85519916', '0757-85514963', '', '2011年04月02日', null);
INSERT INTO `table_kehuziliao` VALUES ('45', '益永畅', 'YYC', '惠州市益永畅五金制品有限公司', 'T', '0752', 'T-075201', null, '惠州市惠城区S357仲恺六路', '惠州陈江', '91441300MA51NX9XX6', '刘巧丽', '100', '0752-3329671', '', '', '2018年05月15日', null);
INSERT INTO `table_kehuziliao` VALUES ('46', '瑞鑫达', 'R?D', '惠州瑞鑫达金属材料有限公司', 'T', '0752', 'T-0752002', null, '惠州市陈江东升村贝陈3号', '惠州陈江', '91441300MA51D6573C', '诸葛玉凤', '50', '0752-3086396', '', '', '2018年03月08日', null);
INSERT INTO `table_kehuziliao` VALUES ('47', '鸿达成', 'HDC', '惠州市惠城区鸿达成金属材料贸易商行', 'T', '0752', 'T-0752003', null, '惠州市江北三环背路18号摩卡生活花园B区17.18号楼5层04号房', '惠州城区', '92441302MA4W4PC694', '徐水泉', '3', '13680863970', '', '', '2017年01月04日', null);
INSERT INTO `table_kehuziliao` VALUES ('48', '隆鑫达', 'L?D', '惠州市惠城区隆鑫达车床材料销行', 'T', '0752', 'T-0752004', null, '惠州市惠州大道小金口段370号', '惠州小金口', '92441302MA4E1MH07E', '王永锋', '5', '15018887516', '', '', '2013年12月24日', null);
INSERT INTO `table_kehuziliao` VALUES ('49', '康恒', 'KH', '韶关市康恒实业有限公司', 'T', '0751', 'T-0751001', null, '韶关市曲江区华南先进装备园莞慧路6号', '韶关曲江', '91440200MA51FX3R9A', '刘定坤', '2000', '0751-6699586/6699596', '0751-6699576', '', '2018年03月28日', null);
INSERT INTO `table_kehuziliao` VALUES ('50', '同一', 'TY', '广东同一金属科技有限公司', 'F', '0769', 'F-0769007', null, '东莞市大朗镇洋坑墉村富洋路51号', '东莞大朗', '91441900688645842A', '李晴', '800', '0769-83031995', '0769-83001795', '', '2009年05月13日', null);
INSERT INTO `table_kehuziliao` VALUES ('51', '精诺轴承', 'JNZC', '东莞精诺轴承股份有限公司', 'F', '0769', 'F-0769018', null, '东莞市长安镇上角民企路22号', '东莞长安', '91441900MA54ALLC3B', '曾少生', '500', '18229286515', '', '', '2020年01月16日', null);
INSERT INTO `table_kehuziliao` VALUES ('52', '韶钢', 'SG', '广东韶钢松山股份有限公司', null, null, null, null, '广东省广州市天河区牛利北街168号', '广州天河', '', '', '', '13922598668', '', '', null, null);
INSERT INTO `table_kehuziliao` VALUES ('53', '均亿', 'JY', '均亿五金制品(东莞)有限公司', 'F', '0769', 'F-0769008', null, '广东省东莞市万江区汾社区白水涡工业区口', '东莞万江', '91441900572428889J', '杨头浩', '1150', '0769-22182086', '0769-22277920', '', '2011年05月11日', null);
INSERT INTO `table_kehuziliao` VALUES ('54', '金昌源', 'JCY', '深圳市金昌源钢铁制品有限公司', 'T', '0755', 'T-0755001', null, '深圳市宝安区福永街道凤塘大道22号天佑工业园B栋', '深圳福永', '9144030079385569XP', '周先国', '100', '0755-81490077', '0755-81490076', '', '2006年09月17日', null);
INSERT INTO `table_kehuziliao` VALUES ('55', '烨辉', '?H', '深圳市烨辉金属材料有限公司', 'T', '0755', 'T-0755002', null, '深圳市光明新区马山头社区第四工业区60栋101', '深圳公明', '91440300335212224T', '骆紫怡', '200', '0755-27689150', '0755-27689459', '', '2015年03月25日', null);
INSERT INTO `table_kehuziliao` VALUES ('56', '金宜', 'JY', '东莞市金属五金制品有限公司', 'F', '0769', 'F-0769009', null, '东莞市寮步镇石步村金富二路33号', '东莞寮步', '91441900079505529B', '吴权', '50', '0769-89258782', '', '', '2013年09月22日', null);
INSERT INTO `table_kehuziliao` VALUES ('57', '浦鑫', 'P?', '东莞市浦鑫金属材料有限公司', 'F', '0769', 'F-0769010', null, '东莞市常平镇苏坑村上甲工业区(南通邦工业园)', '东莞常平', '91441900590092063Q', '龚静', '50', '0769-82822608', '0769-82826023', '', '2012年02月15日', null);
INSERT INTO `table_kehuziliao` VALUES ('58', '一辰', 'YC', '东莞市一辰五金制品有限公司', 'F', '0769', 'F-0769011', null, '东莞市寮步镇西溪村卢溪二路二十号', '东莞寮步', '91441900MA4W3LA51N', '李正伟', '20', '0769-81251661', '0769-82631926', '', '2016年12月22日', null);
INSERT INTO `table_kehuziliao` VALUES ('59', '亿量', 'YL', '东莞亿量五金制品有限公司', 'F', '0769', 'F-0769012', null, '东莞市大朗镇屏山工业区', '东莞大朗', '91441900773097369M', '郭春田', '4500', '0769-81160085', '', '', '2005年04月29日', null);
INSERT INTO `table_kehuziliao` VALUES ('60', '旭昇', 'X?', '东莞市旭昇精密五金有限公司', 'F', '0769', 'F-0769013', null, '东莞市大朗镇富民南路58号巨嘉工业园B栋1楼', '东莞大朗', '9.14419E+17', '唐利新', '36', '0769-89062528', '0769-89062527', '', '2014年04月25日', null);
INSERT INTO `table_kehuziliao` VALUES ('61', '宏鑫', 'H?', '深圳市宏鑫金属材料有限公司', 'T', '0755', 'T-0755003', null, '深圳市龙岗区坪地街道坪西社区新澳路5号203', '深圳龙岗', '91440300MA5DRFQNXQ', '牟栎', '50', '18813864808', '', '', '2016年12月28日', null);
INSERT INTO `table_kehuziliao` VALUES ('62', '明志', 'MZ', '东莞市明志金属材料有限公司', 'F', '0769', 'F-0769014', null, '东莞市大朗镇新马莲八街10号B栋', '东莞大朗', '91441900MA4UT58R5F', '王丽丽', '300', '0769-82228801', '0769-81116102', '', '2016年07月26日', null);
INSERT INTO `table_kehuziliao` VALUES ('63', '铎峰', '?F', '深圳市铎峰五金电子材料有限公司', 'T', '0755', 'T-0755004', null, '深圳市龙岗区坪地街道坪西社区盐龙大道越发工业区12号', '深圳坪山', '9144030030628670XM', '江铎峰', '50', '0755-89904489', '', '', '2014年07月14日', null);
INSERT INTO `table_kehuziliao` VALUES ('64', '奇熊', 'QX', '东莞市奇熊金属有限公司', 'F', '0769', 'F-0769015', null, '东莞市石排镇广美路5号', '东莞石排', '91441900345565998P', '熊焕', '390', '0769-86525473', '0769-86525477', '', '2015年07月17日', null);
INSERT INTO `table_kehuziliao` VALUES ('65', '君金盛', 'JJS', '深圳市君金盛特种钢有限公司', 'T', '0755', 'T-0755005', null, '深圳市宝安区沙井后亭第二工业区90号102A区', '深圳沙井', '91440300319439402R', '胡作良', '1000', '0755-27647358', '', '', '2014年10月28日', null);
INSERT INTO `table_kehuziliao` VALUES ('66', '君豪盛', 'JHS', '深圳市君豪盛金属材料有限公司', 'T', '0755', 'T-0755006', null, '深圳市宝安区石岩街道宝石东路25号', '深圳石岩', '9.14403E+17', '陈国友', '1000', '0755-27647189', '', '', '2000年07月08日', null);
INSERT INTO `table_kehuziliao` VALUES ('67', '宏运旺', 'HYW', '深圳市宏运旺五金材料有限公司', 'T', '0755', 'T-0755007', null, '深圳市宝安区松岗街道楼岗社区楼岗大道5号创裕工业园A栋1楼101', '深圳松岗', '91440300558693977X', '彭健', '10', '', '', '', '2010年07月19日', null);
INSERT INTO `table_kehuziliao` VALUES ('68', '金玮', 'J?', '东莞金玮塑胶五金制品有限公司', 'F', '0769', 'F-0769016', null, '东莞市大朗镇屏山村屏康路105号', '东莞大朗', '91441900742959181X', '林永同', '76.92', '0769-81169081', '', '', '2002年10月28日', null);
INSERT INTO `table_kehuziliao` VALUES ('69', '金恒畅', 'JHC', '深圳市金恒畅金属材料有限公司', 'T', '0755', 'T-0755008', null, '深圳市宝安区松岗松裕路147号', '深圳松岗', '92440300MA5DN8HX3T', '朱敏', '20', '0755-27317661', '0755-27317657', '', '2016年10月27日', null);
INSERT INTO `table_kehuziliao` VALUES ('70', '科力', 'KL', '东莞市科力线材技术有限公司', 'F', '0769', 'F-0769017', null, '东莞市望牛墩东兴工业园', '东莞望牛墩', '91441900738598061N', '沈德才', '180', '0769-88557276', '', '', '2002年05月24日', null);
INSERT INTO `table_kehuziliao` VALUES ('71', '赛纳', 'SN', '苏州赛纳五金制品有限公司', 'T', '0631', 'T-0631001', null, '江苏省苏州市吴中区经济开发区东吴南路165号/广东省深圳市宝安区沙井共和第一工业区B8栋(日晶公司)', '苏州吴中', '91320506MA205CGD9H', '李忠贤', '', '18145875631(苏州) 13532794212(东莞)', '', '', '2019年09月26日', null);
INSERT INTO `table_kehuziliao` VALUES ('72', '欣荣', 'XR', '', 'T', '0760', 'T-0760002', null, '中山市东升镇龙成路87号8幢', '', '', '肖厚仁', '', '', '', '', null, null);
INSERT INTO `table_kehuziliao` VALUES ('73', '钢谷', 'GG', '东莞市钢谷金属材料有限公司(嘉良加工)', 'F', '0769', 'F-0769019', null, '东莞市大岭山镇颜屋新村二巷1号101室', '', '', '张小姐', '', '', '', '', null, null);

-- ----------------------------
-- Table structure for `table_penqi`
-- ----------------------------
DROP TABLE IF EXISTS `table_penqi`;
CREATE TABLE `table_penqi` (
  `ID` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT '索引',
  `szYanSe` varchar(32) NOT NULL COMMENT '颜色名称',
  `szDaiMa` varchar(32) NOT NULL COMMENT '颜色代码',
  `szBeiZhu` varchar(64) DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COMMENT='喷漆颜色类型表';

-- ----------------------------
-- Records of table_penqi
-- ----------------------------
INSERT INTO `table_penqi` VALUES ('1', '双绿', 'SL', 'aaa');
INSERT INTO `table_penqi` VALUES ('2', '单绿', 'DL', '单绿');
INSERT INTO `table_penqi` VALUES ('3', '双红', 'SH', 'aaa');
INSERT INTO `table_penqi` VALUES ('4', '单红', '4', '单红');

-- ----------------------------
-- Table structure for `table_penwan`
-- ----------------------------
DROP TABLE IF EXISTS `table_penwan`;
CREATE TABLE `table_penwan` (
  `ID` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT '索引',
  `szGangChang` varchar(32) NOT NULL COMMENT '钢厂',
  `szCaiZhi` varchar(32) NOT NULL COMMENT '材质',
  `szGuiGe` varchar(32) NOT NULL COMMENT '规格',
  `nJianShu` int(11) NOT NULL COMMENT '件数',
  `fZhongLiang` float NOT NULL COMMENT '重量',
  `szLeiBie` varchar(32) DEFAULT NULL COMMENT '类别',
  `szJiTai` varchar(32) DEFAULT NULL COMMENT '机台',
  `szShengChangRiQi` datetime DEFAULT NULL COMMENT '生产日期',
  `szRiQi` datetime DEFAULT CURRENT_TIMESTAMP COMMENT '入单日期',
  `szBeiZhu` varchar(256) DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COMMENT='喷丸生产单信息表';

-- ----------------------------
-- Records of table_penwan
-- ----------------------------
INSERT INTO `table_penwan` VALUES ('1', '韶钢', '1215', '5.50', '100', '100', '2', '2', '2021-04-27 00:00:00', '2021-04-27 08:28:08', '22');

-- ----------------------------
-- Table structure for `table_qiyeleixing`
-- ----------------------------
DROP TABLE IF EXISTS `table_qiyeleixing`;
CREATE TABLE `table_qiyeleixing` (
  `ID` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT '索引',
  `szLeiXing` varchar(32) NOT NULL COMMENT '企业类型',
  `szDaiMa` varchar(32) NOT NULL COMMENT '类型代码',
  `szBeiZhu` varchar(64) DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COMMENT='客户企业类型表';

-- ----------------------------
-- Records of table_qiyeleixing
-- ----------------------------
INSERT INTO `table_qiyeleixing` VALUES ('1', '港台澳法人独资', '1', '港台澳法人独资');

-- ----------------------------
-- Table structure for `table_suanxi`
-- ----------------------------
DROP TABLE IF EXISTS `table_suanxi`;
CREATE TABLE `table_suanxi` (
  `ID` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT '索引',
  `szChangShang` varchar(64) NOT NULL COMMENT '厂商',
  `szLianXiRen` varchar(32) DEFAULT NULL COMMENT '联系人',
  `szGangChang` varchar(32) NOT NULL COMMENT '钢厂',
  `szCaiZhi` varchar(32) NOT NULL COMMENT '材质',
  `szGuiGe` varchar(32) NOT NULL COMMENT '规格',
  `nJianShu` int(11) NOT NULL COMMENT '件数',
  `fZhongLiang` float NOT NULL COMMENT '重量',
  `szSuanXiLeiBie` varchar(32) DEFAULT NULL COMMENT '酸洗类别',
  `szJiTai` varchar(32) DEFAULT NULL COMMENT '机台',
  `szJiaoHuoRiQi` datetime DEFAULT NULL COMMENT '交货日期',
  `szRiQi` datetime DEFAULT CURRENT_TIMESTAMP COMMENT '入单日期',
  `szLuRu` varchar(32) DEFAULT NULL COMMENT '录入人',
  `szBeiZhu` varchar(256) DEFAULT NULL COMMENT '备注',
  `szJGDID` varchar(32) DEFAULT NULL COMMENT '加工单ID',
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COMMENT='酸洗加工单信息表';

-- ----------------------------
-- Records of table_suanxi
-- ----------------------------
INSERT INTO `table_suanxi` VALUES ('1', '111', '111', '韶钢', '1215', '5.50', '100', '1000', '石灰', '1', '2021-04-27 08:50:07', '2021-04-27 08:50:38', 'admin', '111', '20210427085007');

-- ----------------------------
-- Table structure for `table_suanxichangshang`
-- ----------------------------
DROP TABLE IF EXISTS `table_suanxichangshang`;
CREATE TABLE `table_suanxichangshang` (
  `ID` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT '索引',
  `szChangShang` varchar(64) NOT NULL COMMENT '厂商名',
  `szDiZhi` varchar(128) NOT NULL COMMENT '公司地址',
  `szDianHua` varchar(32) DEFAULT NULL COMMENT '公司电话',
  `szChuanZhen` varchar(32) DEFAULT NULL COMMENT '公司传真',
  `szEmail` varchar(64) DEFAULT NULL COMMENT '公司邮箱',
  `szLianXiRen` varchar(32) DEFAULT NULL COMMENT '联系人姓名',
  `szLXRDianHua` varchar(32) DEFAULT NULL COMMENT '联系人电话',
  `szBeiZhu` text COMMENT '备注',
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COMMENT='酸洗厂商信息表';

-- ----------------------------
-- Records of table_suanxichangshang
-- ----------------------------
INSERT INTO `table_suanxichangshang` VALUES ('1', '测试', '深圳', '25255', '1144', '522', '张三', '133', '');

-- ----------------------------
-- Table structure for `table_suanxileibie`
-- ----------------------------
DROP TABLE IF EXISTS `table_suanxileibie`;
CREATE TABLE `table_suanxileibie` (
  `ID` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT '索引',
  `szLeiBie` varchar(32) NOT NULL COMMENT '酸洗类别名称',
  `szDaiMa` varchar(32) NOT NULL COMMENT '酸洗类别代码',
  `szBeiZhu` varchar(64) DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COMMENT='酸洗类别类别表';

-- ----------------------------
-- Records of table_suanxileibie
-- ----------------------------
INSERT INTO `table_suanxileibie` VALUES ('1', '石灰', 'SH', '测试');
INSERT INTO `table_suanxileibie` VALUES ('2', '磷化', 'LH', '磷化');

-- ----------------------------
-- Table structure for `table_xiancaishengchanrenwudang`
-- ----------------------------
DROP TABLE IF EXISTS `table_xiancaishengchanrenwudang`;
CREATE TABLE `table_xiancaishengchanrenwudang` (
  `ID` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT '索引',
  `szDingDanHao` varchar(64) NOT NULL COMMENT '订单号',
  `szKeHuJianCheng` varchar(32) NOT NULL COMMENT '管户简称',
  `szKeHuDaiMa` varchar(32) NOT NULL COMMENT '客户代码',
  `szPinMing` varchar(32) NOT NULL COMMENT '成品名称',
  `szYuanLiaoGuiGe` varchar(32) NOT NULL COMMENT '原料规格',
  `szCaiZhi` varchar(32) NOT NULL COMMENT '材质',
  `szChengPinGuiGe` varchar(32) NOT NULL COMMENT '成品规格',
  `szGongCha` varchar(32) NOT NULL COMMENT '公差',
  `nDingDanShuLiang` int(11) NOT NULL COMMENT '订单数量',
  `fDanJianZhongLiang` float NOT NULL COMMENT '单件重量',
  `szLuRu` varchar(32) DEFAULT NULL COMMENT '录入人',
  `szSuanXiLeiBie` varchar(32) DEFAULT NULL COMMENT '酸洗类别',
  `szDingDanRiQi` datetime DEFAULT NULL COMMENT '订单日期',
  `szShengChangRiQi` datetime DEFAULT NULL COMMENT '生产日期',
  `szBeiZhu` varchar(256) DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COMMENT='线材生产任务单表';

-- ----------------------------
-- Records of table_xiancaishengchanrenwudang
-- ----------------------------
INSERT INTO `table_xiancaishengchanrenwudang` VALUES ('1', '0002', '客户2', 'A001', '水抽线', '5.50', 'S45C-A', '2.0', '22', '100', '100', 'admin', '磷化', '2021-04-15 15:35:16', '2021-04-15 15:35:14', '测试');
INSERT INTO `table_xiancaishengchanrenwudang` VALUES ('2', '0002', '客户2', '', '水抽线', '5.50', 'S45C-A', '2.0', '22', '100', '100', 'admin', '', '2021-04-20 15:17:32', '2021-04-20 15:17:31', '');
INSERT INTO `table_xiancaishengchanrenwudang` VALUES ('3', '', '客户C', '1111', '55', '5', '2', '2', '2', '2', '2', 'admin', '2', '2021-04-20 00:00:00', '2021-04-20 00:00:00', '2222');
INSERT INTO `table_xiancaishengchanrenwudang` VALUES ('4', '0002', '66', '66', '66', '66', '66', '66', '66', '123', '66', 'admin', '66', '2021-04-20 17:18:29', '2021-04-20 17:18:29', '66');
INSERT INTO `table_xiancaishengchanrenwudang` VALUES ('5', '', '666', '666', '666', '666', '66', '66', '66', '234', '66', 'admin', '66', '2021-04-20 00:00:00', '2021-04-20 00:00:00', '66');
INSERT INTO `table_xiancaishengchanrenwudang` VALUES ('6', '', '44', '44', '44', '44', '44', '44', '44', '44', '44', 'admin', '44', '2021-04-20 00:00:00', '2021-04-20 00:00:00', '44');

-- ----------------------------
-- Table structure for `table_yonghubiao`
-- ----------------------------
DROP TABLE IF EXISTS `table_yonghubiao`;
CREATE TABLE `table_yonghubiao` (
  `ID` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT '索引',
  `szXingMing` varchar(32) NOT NULL COMMENT '用户姓名',
  `szMiMa` varchar(32) NOT NULL COMMENT '密码',
  `nQuanXian` tinyint(4) NOT NULL COMMENT '用户权限',
  `szBeiZhu` varchar(256) DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COMMENT='用户信息表';

-- ----------------------------
-- Records of table_yonghubiao
-- ----------------------------
INSERT INTO `table_yonghubiao` VALUES ('1', 'admin', '22', '1', 'admin');

-- ----------------------------
-- Table structure for `table_yuanliaocangku`
-- ----------------------------
DROP TABLE IF EXISTS `table_yuanliaocangku`;
CREATE TABLE `table_yuanliaocangku` (
  `ID` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT '索引',
  `szCangKu` varchar(32) NOT NULL COMMENT '仓库类别',
  `szDaiMa` varchar(32) NOT NULL COMMENT '仓库代码',
  `szBeiZhu` varchar(64) DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COMMENT='原料仓库信息表';

-- ----------------------------
-- Records of table_yuanliaocangku
-- ----------------------------
INSERT INTO `table_yuanliaocangku` VALUES ('1', '成钢原料 A 仓(韶关)', 'A', '韶关');
INSERT INTO `table_yuanliaocangku` VALUES ('2', '成钢原料 B 仓(东莞)', 'B', '');
INSERT INTO `table_yuanliaocangku` VALUES ('3', '盟钢原料仓', 'C', '');
INSERT INTO `table_yuanliaocangku` VALUES ('4', '代工原料仓', 'D', '');

-- ----------------------------
-- Table structure for `table_yuanliaochuku`
-- ----------------------------
DROP TABLE IF EXISTS `table_yuanliaochuku`;
CREATE TABLE `table_yuanliaochuku` (
  `ID` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT '索引',
  `szCangKu` varchar(32) NOT NULL COMMENT '出库仓别',
  `szLeiBie` varchar(32) NOT NULL COMMENT '出库类别(出库原因)',
  `szGangChang` varchar(32) NOT NULL COMMENT '钢厂',
  `szCaiZhi` varchar(32) NOT NULL COMMENT '材质',
  `szGuiGe` varchar(32) NOT NULL COMMENT '规格',
  `nJianShu` int(11) NOT NULL COMMENT '件数',
  `fZhongLiang` float NOT NULL COMMENT '重量',
  `szLuRu` varchar(32) DEFAULT NULL COMMENT '录入人',
  `szChuKuRiQi` datetime DEFAULT CURRENT_TIMESTAMP COMMENT '出库日期',
  `szBeiZhu` varchar(128) DEFAULT NULL COMMENT '备注',
  `szKeHu` varchar(32) DEFAULT NULL COMMENT '客户，针对待工原料仓填写',
  `szCGCG` varchar(128) NOT NULL COMMENT '由仓库钢厂材质和规格代码接接而成',
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=utf8mb4 COMMENT='原料出库信息表';

-- ----------------------------
-- Records of table_yuanliaochuku
-- ----------------------------
INSERT INTO `table_yuanliaochuku` VALUES ('2', '成钢原料 A 仓(韶关)', '销售', '韶钢', '1215', '5.50', '10', '1000', 'admin', '2021-05-15 21:18:44', '2', '', 'A|S|1215|5.50');
INSERT INTO `table_yuanliaochuku` VALUES ('3', '成钢原料 A 仓(韶关)', '喷丸', '韶钢', '1215', '5.50', '10', '1000', 'admin', '2021-06-15 22:13:43', '3', '', 'A|S|1215|5.50');
INSERT INTO `table_yuanliaochuku` VALUES ('4', '成钢原料 A 仓(韶关)', '喷丸', '青钢', '1215', '5.50', '10', '1000', 'admin', '2021-06-15 22:13:54', '4', '', 'A|Q|1215|5.50');
INSERT INTO `table_yuanliaochuku` VALUES ('5', '代工原料仓', '酸洗', '青钢', '1215', '5.50', '10', '1000', 'admin', '2021-06-15 23:05:03', '5', '出测试', 'D|Q|1215|5.50');
INSERT INTO `table_yuanliaochuku` VALUES ('6', '成钢原料 A 仓(韶关)', '酸洗', '韶钢', '1215', '5.50', '1', '100', 'admin', '2021-06-16 21:41:39', '6', '', 'A|S|1215|5.50');
INSERT INTO `table_yuanliaochuku` VALUES ('7', '成钢原料 A 仓(韶关)', '酸洗', '韶钢', '1215', '5.50', '1', '100', 'admin', '2021-06-16 21:41:46', '7', '', 'A|S|1215|5.50');
INSERT INTO `table_yuanliaochuku` VALUES ('8', '成钢原料 A 仓(韶关)', '酸洗', '韶钢', '1215', '5.50', '1', '100', 'admin', '2021-06-16 21:41:53', '8', 'ID8', 'A|S|1215|5.50');
INSERT INTO `table_yuanliaochuku` VALUES ('9', '成钢原料 A 仓(韶关)', '酸洗', '韶钢', '1215', '5.50', '1', '100', 'admin', '2021-06-16 21:41:58', '9', '', 'A|S|1215|5.50');
INSERT INTO `table_yuanliaochuku` VALUES ('10', '成钢原料 A 仓(韶关)', '酸洗', '韶钢', '1215', '5.50', '1', '100', 'admin', '2021-06-16 21:42:03', '10', '', 'A|S|1215|5.50');
INSERT INTO `table_yuanliaochuku` VALUES ('11', '成钢原料 A 仓(韶关)', '酸洗', '韶钢', '1215', '5.50', '1', '100', 'admin', '2021-06-16 21:42:09', '11', '', 'A|S|1215|5.50');
INSERT INTO `table_yuanliaochuku` VALUES ('12', '成钢原料 A 仓(韶关)', '酸洗', '韶钢', '1215', '5.50', '1', '100', 'admin', '2021-06-16 21:42:14', '12', '', 'A|S|1215|5.50');
INSERT INTO `table_yuanliaochuku` VALUES ('13', '成钢原料 A 仓(韶关)', '酸洗', '韶钢', '1215', '5.50', '1', '100', 'admin', '2021-06-16 21:42:19', '13', '', 'A|S|1215|5.50');
INSERT INTO `table_yuanliaochuku` VALUES ('14', '成钢原料 A 仓(韶关)', '酸洗', '韶钢', '1215', '5.50', '1', '100', 'admin', '2021-06-16 21:42:24', '14', '', 'A|S|1215|5.50');
INSERT INTO `table_yuanliaochuku` VALUES ('15', '成钢原料 A 仓(韶关)', '酸洗', '韶钢', '1215', '5.50', '1', '100', 'admin', '2021-06-16 21:42:29', '15', '', 'A|S|1215|5.50');
INSERT INTO `table_yuanliaochuku` VALUES ('16', '成钢原料 A 仓(韶关)', '酸洗', '韶钢', '1215', '5.50', '1', '100', 'admin', '2021-06-16 21:42:34', '16', '', 'A|S|1215|5.50');
INSERT INTO `table_yuanliaochuku` VALUES ('17', '成钢原料 A 仓(韶关)', '酸洗', '韶钢', '1215', '5.50', '1', '100', 'admin', '2021-06-16 21:42:41', '17', '', 'A|S|1215|5.50');
INSERT INTO `table_yuanliaochuku` VALUES ('18', '成钢原料 A 仓(韶关)', '酸洗', '韶钢', '1215', '5.50', '1', '100', 'admin', '2021-06-16 21:42:45', '18', '', 'A|S|1215|5.50');
INSERT INTO `table_yuanliaochuku` VALUES ('19', '成钢原料 A 仓(韶关)', '酸洗', '韶钢', '1215', '5.50', '1', '100', 'admin', '2021-06-16 21:42:49', '19', '', 'A|S|1215|5.50');

-- ----------------------------
-- Table structure for `table_yuanliaochukuleibie`
-- ----------------------------
DROP TABLE IF EXISTS `table_yuanliaochukuleibie`;
CREATE TABLE `table_yuanliaochukuleibie` (
  `ID` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT '索引',
  `szLeiBie` varchar(32) NOT NULL COMMENT '类别名称',
  `szDaiMa` varchar(32) NOT NULL COMMENT '类别代码',
  `szBeiZhu` varchar(64) DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COMMENT='原料出库类别信息表，记录出库原因';

-- ----------------------------
-- Records of table_yuanliaochukuleibie
-- ----------------------------
INSERT INTO `table_yuanliaochukuleibie` VALUES ('1', '酸洗', 'sx', '出库酸洗');
INSERT INTO `table_yuanliaochukuleibie` VALUES ('2', '喷丸', 'pw', '出库喷丸');
INSERT INTO `table_yuanliaochukuleibie` VALUES ('3', '销售', 'xs', '出库销售');
INSERT INTO `table_yuanliaochukuleibie` VALUES ('4', '调拔', 'db', '调拔出库');

-- ----------------------------
-- Table structure for `table_yuanliaoguige`
-- ----------------------------
DROP TABLE IF EXISTS `table_yuanliaoguige`;
CREATE TABLE `table_yuanliaoguige` (
  `ID` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT '索引',
  `szGuiGe` varchar(32) NOT NULL COMMENT '规格',
  `szDaiMa` varchar(32) NOT NULL COMMENT '规格代码',
  `szBeiZhu` varchar(64) DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=31 DEFAULT CHARSET=utf8mb4 COMMENT='原料规格类型表';

-- ----------------------------
-- Records of table_yuanliaoguige
-- ----------------------------
INSERT INTO `table_yuanliaoguige` VALUES ('13', '5.50', '550', '');
INSERT INTO `table_yuanliaoguige` VALUES ('14', '6.50', '650', '');
INSERT INTO `table_yuanliaoguige` VALUES ('29', '7.00', '700', '');
INSERT INTO `table_yuanliaoguige` VALUES ('30', '7.50', '750', '');

-- ----------------------------
-- Table structure for `table_yuanliaokucun`
-- ----------------------------
DROP TABLE IF EXISTS `table_yuanliaokucun`;
CREATE TABLE `table_yuanliaokucun` (
  `ID` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT '索引',
  `szCangKu` varchar(32) NOT NULL COMMENT '仓别',
  `szGangChang` varchar(32) NOT NULL COMMENT '钢厂',
  `szCaiZhi` varchar(32) NOT NULL COMMENT '材质',
  `szGuiGe` varchar(32) NOT NULL COMMENT '规格',
  `szCGCG` varchar(128) NOT NULL COMMENT '由仓库钢厂材质和规格代码接接而成',
  `nJianShu` smallint(6) DEFAULT '0' COMMENT '前日结存件数',
  `fZhongLiang` float DEFAULT '0' COMMENT '前日结存重量',
  `szKeHu` varchar(32) DEFAULT NULL COMMENT '客户，针对待工原料仓填写',
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COMMENT='原料出入库日报表信息表';

-- ----------------------------
-- Records of table_yuanliaokucun
-- ----------------------------
INSERT INTO `table_yuanliaokucun` VALUES ('1', '成钢原料 A 仓(韶关)', '韶钢', '1215', '5.50', 'A|S|1215|5.50', '744', '1385460', '');
INSERT INTO `table_yuanliaokucun` VALUES ('2', '成钢原料 A 仓(韶关)', '青钢', '1215', '5.50', 'A|Q|1215|5.50', '40', '4000', '');
INSERT INTO `table_yuanliaokucun` VALUES ('3', '成钢原料 A 仓(韶关)', '中天', '1215', '5.50', 'A|Z|1215|5.50', '0', '0', '测试');
INSERT INTO `table_yuanliaokucun` VALUES ('4', '代工原料仓', '青钢', '1215', '5.50', 'D|Q|1215|5.50', '40', '4000', '');

-- ----------------------------
-- Table structure for `table_yuanliaoribaobiao`
-- ----------------------------
DROP TABLE IF EXISTS `table_yuanliaoribaobiao`;
CREATE TABLE `table_yuanliaoribaobiao` (
  `ID` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT '索引',
  `szNianYueRi` varchar(32) NOT NULL COMMENT '年月日时间',
  `szCangKu` varchar(32) NOT NULL COMMENT '仓别',
  `szGangChang` varchar(32) NOT NULL COMMENT '钢厂',
  `szCaiZhi` varchar(32) NOT NULL COMMENT '材质',
  `szGuiGe` varchar(32) NOT NULL COMMENT '规格',
  `szCGCG` varchar(128) NOT NULL COMMENT '由仓库钢厂材质和规格代码接接而成',
  `nRKJianShu` smallint(6) DEFAULT '0' COMMENT '入库件数当日累计',
  `fRKZhongLiang` float DEFAULT '0' COMMENT '入库重量当日累计',
  `nCKJianShu` smallint(6) DEFAULT '0' COMMENT '出库总件数当日累计',
  `fCKZhongLiang` float DEFAULT '0' COMMENT '出库总重量当日累计',
  `nSXCKJianShu` smallint(6) DEFAULT '0' COMMENT '酸洗出库件数当日累计',
  `fSXCKZhongLiang` float DEFAULT '0' COMMENT '酸洗出库重量当日累计',
  `nPWCKJianShu` smallint(6) DEFAULT '0' COMMENT '喷丸出库件数当日累计',
  `fPWCKZhongLiang` float DEFAULT '0' COMMENT '喷丸出库重量当日累计',
  `nXSDBCKJianShu` smallint(6) DEFAULT '0' COMMENT '销售或调调拔出库件数当日累计',
  `fXSDBCKZhongLiang` float DEFAULT '0' COMMENT '销售或调调拔出库重量当日累计',
  `nJCJianShu` smallint(6) DEFAULT '0' COMMENT '结存件数',
  `fJCZhongLiang` float DEFAULT '0' COMMENT '结存重量',
  `nQRJianShu` smallint(6) DEFAULT '0' COMMENT '前日结存件数',
  `fQRZhongLiang` float DEFAULT '0' COMMENT '前日结存重量',
  `szRiQi` datetime DEFAULT CURRENT_TIMESTAMP COMMENT '记录生成时间',
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COMMENT='原料出入库日报表信息表';

-- ----------------------------
-- Records of table_yuanliaoribaobiao
-- ----------------------------
INSERT INTO `table_yuanliaoribaobiao` VALUES ('1', '2021年04月15日', '成钢原料 A 仓(韶关)', '韶钢', '1215', '5.50', 'A|S|1215|5.50', '30', '3000', '0', '0', '0', '0', '0', '0', '0', '0', '30', '3000', '0', '0', '2021-04-15 20:46:31');
INSERT INTO `table_yuanliaoribaobiao` VALUES ('2', '2021年04月15日', '成钢原料 A 仓(韶关)', '青钢', '1215', '5.50', 'A|Q|1215|5.50', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '2021-04-15 20:50:49');
INSERT INTO `table_yuanliaoribaobiao` VALUES ('3', '2021年05月15日', '成钢原料 A 仓(韶关)', '韶钢', '1215', '5.50', 'A|S|1215|5.50', '30', '3000', '10', '1000', '0', '0', '0', '0', '10', '1000', '50', '5000', '30', '3000', '2021-05-15 21:18:03');
INSERT INTO `table_yuanliaoribaobiao` VALUES ('4', '2021年06月15日', '成钢原料 A 仓(韶关)', '韶钢', '1215', '5.50', 'A|S|1215|5.50', '30', '3000', '10', '1000', '0', '0', '10', '1000', '0', '0', '70', '7000', '50', '5000', '2021-06-15 22:13:04');
INSERT INTO `table_yuanliaoribaobiao` VALUES ('5', '2021年06月15日', '成钢原料 A 仓(韶关)', '青钢', '1215', '5.50', 'A|Q|1215|5.50', '50', '5000', '10', '1000', '0', '0', '10', '1000', '0', '0', '40', '4000', '0', '0', '2021-06-15 22:13:16');
INSERT INTO `table_yuanliaoribaobiao` VALUES ('6', '2021年04月15日', '成钢原料 A 仓(韶关)', '中天', '1215', '5.50', 'A|Z|1215|5.50', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '2021-04-15 20:46:31');
INSERT INTO `table_yuanliaoribaobiao` VALUES ('7', '2021年06月15日', '代工原料仓', '青钢', '1215', '5.50', 'D|Q|1215|5.50', '50', '5000', '10', '1000', '10', '1000', '0', '0', '0', '0', '40', '4000', '0', '0', '2021-06-15 23:03:31');
INSERT INTO `table_yuanliaoribaobiao` VALUES ('8', '2021年06月16日', '成钢原料 A 仓(韶关)', '韶钢', '1215', '5.50', 'A|S|1215|5.50', '688', '1379860', '14', '1400', '14', '1400', '0', '0', '0', '0', '744', '1385460', '70', '7000', '2021-06-16 14:15:23');

-- ----------------------------
-- Table structure for `table_yuanliaoruku`
-- ----------------------------
DROP TABLE IF EXISTS `table_yuanliaoruku`;
CREATE TABLE `table_yuanliaoruku` (
  `ID` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT '索引',
  `szCangKu` varchar(32) NOT NULL COMMENT '入库仓别',
  `szGangChang` varchar(32) NOT NULL COMMENT '钢厂',
  `szCaiZhi` varchar(32) NOT NULL COMMENT '材质',
  `szGuiGe` varchar(32) NOT NULL COMMENT '规格',
  `njianshu` int(11) NOT NULL COMMENT '件数',
  `fZhongliang` float NOT NULL COMMENT '重量',
  `szLuRu` varchar(32) DEFAULT NULL COMMENT '录入人',
  `szJianYan` varchar(32) DEFAULT NULL COMMENT '收货检验人',
  `szRuKuRiQi` datetime DEFAULT CURRENT_TIMESTAMP COMMENT '入库日期',
  `szZhiLiang` varchar(128) DEFAULT NULL COMMENT '质量情况',
  `szBeiZhu` varchar(128) DEFAULT NULL COMMENT '备注',
  `szKeHu` varchar(32) DEFAULT NULL COMMENT '客户，针对待工原料仓填写',
  `szCGCG` varchar(128) NOT NULL COMMENT '由仓库钢厂材质和规格代码接接而成',
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=38 DEFAULT CHARSET=utf8mb4 COMMENT='原料入库信息表';

-- ----------------------------
-- Records of table_yuanliaoruku
-- ----------------------------
INSERT INTO `table_yuanliaoruku` VALUES ('1', '成钢原料 A 仓(韶关)', '韶钢', '1215', '5.50', '10', '1000', 'admin', '', '2021-06-16 21:30:20', null, '1', '', 'A|S|1215|5.50');
INSERT INTO `table_yuanliaoruku` VALUES ('2', '成钢原料 A 仓(韶关)', '韶钢', '1215', '5.50', '10', '1000', 'admin', '', '2021-06-16 21:30:25', null, '2', '', 'A|S|1215|5.50');
INSERT INTO `table_yuanliaoruku` VALUES ('3', '成钢原料 A 仓(韶关)', '韶钢', '1215', '5.50', '10', '1000', 'admin', '', '2021-06-16 21:30:31', null, '3', '', 'A|S|1215|5.50');
INSERT INTO `table_yuanliaoruku` VALUES ('4', '成钢原料 A 仓(韶关)', '韶钢', '1215', '5.50', '10', '10000', 'admin', '', '2021-06-16 21:30:35', null, '4', '', 'A|S|1215|5.50');
INSERT INTO `table_yuanliaoruku` VALUES ('5', '成钢原料 A 仓(韶关)', '韶钢', '1215', '5.50', '10', '1000', 'admin', '', '2021-06-16 21:30:40', null, '5', '', 'A|S|1215|5.50');
INSERT INTO `table_yuanliaoruku` VALUES ('6', '成钢原料 A 仓(韶关)', '韶钢', '1215', '5.50', '10', '1000', 'admin', '', '2021-06-16 21:30:45', null, '6', '', 'A|S|1215|5.50');
INSERT INTO `table_yuanliaoruku` VALUES ('7', '成钢原料 A 仓(韶关)', '韶钢', '1215', '5.50', '10', '1000', 'admin', '', '2021-06-16 21:30:49', null, '7', '', 'A|S|1215|5.50');
INSERT INTO `table_yuanliaoruku` VALUES ('8', '成钢原料 A 仓(韶关)', '韶钢', '1215', '5.50', '10', '1000', 'admin', '', '2021-06-16 21:30:52', null, '8', 'ID8', 'A|S|1215|5.50');
INSERT INTO `table_yuanliaoruku` VALUES ('9', '成钢原料 A 仓(韶关)', '韶钢', '1215', '5.50', '10', '1000', 'admin', '', '2021-06-16 21:30:56', null, '9', '', 'A|S|1215|5.50');
INSERT INTO `table_yuanliaoruku` VALUES ('10', '成钢原料 A 仓(韶关)', '韶钢', '1215', '5.50', '10', '1000', 'admin', '', '2021-06-16 21:31:00', null, '10', '', 'A|S|1215|5.50');
INSERT INTO `table_yuanliaoruku` VALUES ('11', '成钢原料 A 仓(韶关)', '韶钢', '1215', '5.50', '10', '1000', 'admin', '', '2021-06-16 21:31:04', null, '11', '', 'A|S|1215|5.50');
INSERT INTO `table_yuanliaoruku` VALUES ('12', '成钢原料 A 仓(韶关)', '韶钢', '1215', '5.50', '10', '1000', 'admin', '', '2021-06-16 21:31:08', null, '12', '', 'A|S|1215|5.50');
INSERT INTO `table_yuanliaoruku` VALUES ('13', '成钢原料 A 仓(韶关)', '韶钢', '1215', '5.50', '10', '1000', 'admin', '', '2021-06-16 21:31:12', null, '13', '', 'A|S|1215|5.50');
INSERT INTO `table_yuanliaoruku` VALUES ('14', '成钢原料 A 仓(韶关)', '韶钢', '1215', '5.50', '10', '1000', 'admin', '', '2021-06-16 21:31:18', null, '14', '', 'A|S|1215|5.50');
INSERT INTO `table_yuanliaoruku` VALUES ('15', '成钢原料 A 仓(韶关)', '韶钢', '1215', '5.50', '10', '1000', 'admin', '', '2021-06-16 21:31:22', null, '15', '', 'A|S|1215|5.50');
INSERT INTO `table_yuanliaoruku` VALUES ('16', '成钢原料 A 仓(韶关)', '韶钢', '1215', '5.50', '10', '1000', 'admin', '', '2021-06-16 21:31:27', null, '16', '', 'A|S|1215|5.50');
INSERT INTO `table_yuanliaoruku` VALUES ('17', '成钢原料 A 仓(韶关)', '韶钢', '1215', '5.50', '10', '1000', 'admin', '', '2021-06-16 21:31:31', null, '17', '', 'A|S|1215|5.50');
INSERT INTO `table_yuanliaoruku` VALUES ('18', '成钢原料 A 仓(韶关)', '韶钢', '1215', '5.50', '10', '10000', 'admin', '', '2021-06-16 21:31:35', null, '18', '', 'A|S|1215|5.50');
INSERT INTO `table_yuanliaoruku` VALUES ('19', '成钢原料 A 仓(韶关)', '韶钢', '1215', '5.50', '10', '1000', 'admin', '', '2021-06-16 21:31:40', null, '19', '', 'A|S|1215|5.50');
INSERT INTO `table_yuanliaoruku` VALUES ('20', '成钢原料 A 仓(韶关)', '韶钢', '1215', '5.50', '10', '1000', 'admin', '', '2021-06-16 21:31:45', null, '20', '', 'A|S|1215|5.50');
INSERT INTO `table_yuanliaoruku` VALUES ('21', '成钢原料 A 仓(韶关)', '韶钢', '1215', '5.50', '10', '1000', 'admin', '', '2021-06-16 21:31:48', null, '21', '', 'A|S|1215|5.50');
INSERT INTO `table_yuanliaoruku` VALUES ('22', '成钢原料 A 仓(韶关)', '韶钢', '1215', '5.50', '10', '1000', 'admin', '', '2021-06-16 21:31:52', null, '22', '', 'A|S|1215|5.50');
INSERT INTO `table_yuanliaoruku` VALUES ('23', '成钢原料 A 仓(韶关)', '韶钢', '1215', '5.50', '10', '1000', 'admin', '', '2021-06-16 21:31:54', null, '23', '', 'A|S|1215|5.50');
INSERT INTO `table_yuanliaoruku` VALUES ('24', '成钢原料 A 仓(韶关)', '韶钢', '1215', '5.50', '10', '1000', 'admin', '', '2021-06-16 21:32:18', null, '24', '', 'A|S|1215|5.50');
INSERT INTO `table_yuanliaoruku` VALUES ('25', '成钢原料 A 仓(韶关)', '韶钢', '1215', '5.50', '10', '1000', 'admin', '', '2021-06-16 21:32:23', null, '25', '', 'A|S|1215|5.50');
INSERT INTO `table_yuanliaoruku` VALUES ('26', '成钢原料 A 仓(韶关)', '韶钢', '1215', '5.50', '10', '1000', 'admin', '', '2021-06-16 21:32:27', null, '26', '', 'A|S|1215|5.50');
INSERT INTO `table_yuanliaoruku` VALUES ('27', '成钢原料 A 仓(韶关)', '韶钢', '1215', '5.50', '10', '10000', 'admin', '', '2021-06-16 21:32:32', null, '27', '', 'A|S|1215|5.50');
INSERT INTO `table_yuanliaoruku` VALUES ('28', '成钢原料 A 仓(韶关)', '韶钢', '1215', '5.50', '10', '1000', 'admin', '', '2021-06-16 21:32:36', null, '28', '', 'A|S|1215|5.50');
INSERT INTO `table_yuanliaoruku` VALUES ('29', '成钢原料 A 仓(韶关)', '韶钢', '1215', '5.50', '10', '1000', 'admin', '', '2021-06-16 21:32:41', null, '29', '', 'A|S|1215|5.50');
INSERT INTO `table_yuanliaoruku` VALUES ('30', '成钢原料 A 仓(韶关)', '韶钢', '1215', '5.50', '10', '1000', 'admin', '', '2021-06-16 21:32:46', null, '30', '', 'A|S|1215|5.50');
INSERT INTO `table_yuanliaoruku` VALUES ('31', '成钢原料 A 仓(韶关)', '韶钢', '1215', '5.50', '10', '1234560', 'admin', '', '2021-06-16 21:34:01', null, '31', '', 'A|S|1215|5.50');
INSERT INTO `table_yuanliaoruku` VALUES ('32', '成钢原料 A 仓(韶关)', '韶钢', '1215', '5.50', '10', '1000', 'admin', '', '2021-06-16 21:34:16', null, '32', '', 'A|S|1215|5.50');
INSERT INTO `table_yuanliaoruku` VALUES ('33', '成钢原料 A 仓(韶关)', '韶钢', '1215', '5.50', '10', '1000', 'admin', '', '2021-06-16 21:34:20', null, '33', '', 'A|S|1215|5.50');
INSERT INTO `table_yuanliaoruku` VALUES ('34', '成钢原料 A 仓(韶关)', '韶钢', '1215', '5.50', '10', '1000', 'admin', '', '2021-06-16 21:34:25', null, '34', '', 'A|S|1215|5.50');
INSERT INTO `table_yuanliaoruku` VALUES ('35', '成钢原料 A 仓(韶关)', '韶钢', '1215', '5.50', '10', '1000', 'admin', '', '2021-06-16 21:34:29', null, '35', '', 'A|S|1215|5.50');
INSERT INTO `table_yuanliaoruku` VALUES ('36', '成钢原料 A 仓(韶关)', '韶钢', '1215', '5.50', '10', '100', 'admin', '', '2021-06-16 21:34:33', null, '36', '', 'A|S|1215|5.50');
INSERT INTO `table_yuanliaoruku` VALUES ('37', '成钢原料 A 仓(韶关)', '韶钢', '1215', '5.50', '10', '100', 'admin', '', '2021-06-16 21:34:56', null, '37', '', 'A|S|1215|5.50');

-- ----------------------------
-- Table structure for `table_yuanliaoyuebaobiao`
-- ----------------------------
DROP TABLE IF EXISTS `table_yuanliaoyuebaobiao`;
CREATE TABLE `table_yuanliaoyuebaobiao` (
  `ID` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT '索引',
  `szNianYue` varchar(32) NOT NULL COMMENT '年月时间',
  `szCangKu` varchar(32) NOT NULL COMMENT '仓别',
  `szGangChang` varchar(32) NOT NULL COMMENT '钢厂',
  `szCaiZhi` varchar(32) NOT NULL COMMENT '材质',
  `szGuiGe` varchar(32) NOT NULL COMMENT '规格',
  `szCGCG` varchar(128) NOT NULL COMMENT '由仓库钢厂材质和规格代码接接而成',
  `nRKJianShu` smallint(6) DEFAULT '0' COMMENT '入库件数',
  `fRKZhongLiang` float DEFAULT '0' COMMENT '入库重量',
  `nCKJianShu` smallint(6) DEFAULT '0' COMMENT '出库总件数',
  `fCKZhongLiang` float DEFAULT '0' COMMENT '出库总重量',
  `nSXCKJianShu` smallint(6) DEFAULT '0' COMMENT '酸洗出库件数',
  `fSXCKZhongLiang` float DEFAULT '0' COMMENT '酸洗出库重量',
  `nPWCKJianShu` smallint(6) DEFAULT '0' COMMENT '喷丸出库件数',
  `fPWCKZhongLiang` float DEFAULT '0' COMMENT '喷丸出库重量',
  `nXSDBCKJianShu` smallint(6) DEFAULT '0' COMMENT '销售或调调拔出库件数',
  `fXSDBCKZhongLiang` float DEFAULT '0' COMMENT '销售或调调拔出库重量',
  `nJCJianShu` smallint(6) DEFAULT '0' COMMENT '结存件数',
  `fJCZhongLiang` float DEFAULT '0' COMMENT '结存重量',
  `nQYJianShu` smallint(6) DEFAULT '0' COMMENT '前月结存件数',
  `fQYZhongLiang` float DEFAULT '0' COMMENT '前月结存重量',
  `szRiQi` datetime DEFAULT CURRENT_TIMESTAMP COMMENT '记录生成时间',
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COMMENT='原料出入库月报表信息表';

-- ----------------------------
-- Records of table_yuanliaoyuebaobiao
-- ----------------------------
INSERT INTO `table_yuanliaoyuebaobiao` VALUES ('1', '2021年04月', '成钢原料 A 仓(韶关)', '韶钢', '1215', '5.50', 'A|S|1215|5.50', '30', '3000', '0', '0', '0', '0', '0', '0', '0', '0', '30', '3000', '0', '0', '2021-04-15 20:46:31');
INSERT INTO `table_yuanliaoyuebaobiao` VALUES ('2', '2021年04月', '成钢原料 A 仓(韶关)', '青钢', '1215', '5.50', 'A|Q|1215|5.50', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '2021-04-15 20:50:49');
INSERT INTO `table_yuanliaoyuebaobiao` VALUES ('3', '2021年05月', '成钢原料 A 仓(韶关)', '韶钢', '1215', '5.50', 'A|S|1215|5.50', '30', '3000', '10', '1000', '0', '0', '0', '0', '10', '1000', '50', '5000', '30', '3000', '2021-05-15 21:18:03');
INSERT INTO `table_yuanliaoyuebaobiao` VALUES ('4', '2021年06月', '成钢原料 A 仓(韶关)', '韶钢', '1215', '5.50', 'A|S|1215|5.50', '718', '1382860', '24', '2400', '14', '1400', '10', '1000', '0', '0', '744', '1385460', '50', '5000', '2021-06-15 22:13:04');
INSERT INTO `table_yuanliaoyuebaobiao` VALUES ('5', '2021年06月', '成钢原料 A 仓(韶关)', '青钢', '1215', '5.50', 'A|Q|1215|5.50', '50', '5000', '10', '1000', '0', '0', '10', '1000', '0', '0', '40', '4000', '0', '0', '2021-06-15 22:13:16');
INSERT INTO `table_yuanliaoyuebaobiao` VALUES ('6', '2021年04月', '成钢原料 A 仓(韶关)', '中天', '1215', '5.50', 'A|Z|1215|5.50', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '2021-04-15 20:46:31');
INSERT INTO `table_yuanliaoyuebaobiao` VALUES ('7', '2021年06月', '代工原料仓', '青钢', '1215', '5.50', 'D|Q|1215|5.50', '50', '5000', '10', '1000', '10', '1000', '0', '0', '0', '0', '40', '4000', '0', '0', '2021-06-15 23:03:31');

-- ----------------------------
-- Procedure structure for `pr_AddTableBangCaiShengChanRenWuDang`
-- ----------------------------
DROP PROCEDURE IF EXISTS `pr_AddTableBangCaiShengChanRenWuDang`;
DELIMITER ;;
CREATE DEFINER=`root`@`%` PROCEDURE `pr_AddTableBangCaiShengChanRenWuDang`(
in $szDingDanHao varchar(64),
in $szKeHuJianCheng  varchar(32),
in $szKeHuDaiMa  varchar(32),
in $szPinMing  varchar(32),
in $szYuanLiaoGuiGe  varchar(32),
in $szCaiZhi  varchar(32),
in $szChengPinGuiGe  varchar(32),
in $szGongCha  varchar(32),
in $nDingDanShuLiang  int,
in $fDanJianZhongliang  float,
in $szLuRu  varchar(32),
in $szPenQi  varchar(32),
in $szDaoJiao  varchar(32),
in $szShengChangRiQi  datetime,
in $szQiTaYaoQiu  varchar(256),
in $szBeiZhu  varchar(256),
in $nDingDanID  int,
in $szDingDanZhuangTai varchar(32),
out $nRet int
)
BEGIN
DECLARE  _rowCount int DEFAULT 0;
START TRANSACTION;
insert into Table_BangCaiShengChanRenWuDang(szDingDanHao, szKeHuJianCheng, szKeHuDaiMa, szPinMing, szYuanLiaoGuiGe, szCaiZhi, szChengPinGuiGe, szGongCha, nDingDanShuLiang, szPenQi, szDaoJiao, fDanJianZhongliang, szLuRu, szShengChangRiQi, szQiTaYaoQiu, szBeiZhu) 
values ($szDingDanHao, $szKeHuJianCheng, $szKeHuDaiMa, $szPinMing, $szYuanLiaoGuiGe, $szCaiZhi, $szChengPinGuiGe, $szGongCha, $nDingDanShuLiang, $szPenQi, $szDaoJiao, $fDanJianZhongliang, $szLuRu, $szShengChangRiQi, $szQiTaYaoQiu, $szBeiZhu);
UPDATE Table_DingDan set szDingDanZhuangTai=$szDingDanZhuangTai where id = $nDingDanID;
select row_count() into _rowCount;
IF _rowCount<1 THEN
   set $nRet = -1;
   rollback;
ELSE
   set $nRet = 1;
   commit;
END IF;
-- SELECT * Table_BangCaiShengChanRenWuDang;
END
;;
DELIMITER ;

-- ----------------------------
-- Procedure structure for `pr_AddTableXianCaiShengChanRenWuDang`
-- ----------------------------
DROP PROCEDURE IF EXISTS `pr_AddTableXianCaiShengChanRenWuDang`;
DELIMITER ;;
CREATE DEFINER=`root`@`%` PROCEDURE `pr_AddTableXianCaiShengChanRenWuDang`(
in $szDingDanHao varchar(64),
in $szKeHuJianCheng  varchar(32),
in $szKeHuDaiMa  varchar(32),
in $szPinMing  varchar(32),
in $szYuanLiaoGuiGe  varchar(32),
in $szCaiZhi  varchar(32),
in $szChengPinGuiGe  varchar(32),
in $szGongCha  varchar(32),
in $nDingDanShuLiang  int,
in $fDanJianZhongliang  float,
in $szLuRu  varchar(32),
in $szSuanXiLeiBie  varchar(32),
in $szDingDanRiQi  datetime,
in $szShengChangRiQi  datetime,
in $szBeiZhu  varchar(256),
in $nDingDanID  int,
in $szDingDanZhuangTai varchar(32),
out $nRet int
)
BEGIN
DECLARE  _rowCount int DEFAULT 0;
START TRANSACTION;
insert into Table_XianCaiShengChanRenWuDang(szDingDanHao, szKeHuJianCheng, szKeHuDaiMa, szPinMing, szYuanLiaoGuiGe, szCaiZhi, szChengPinGuiGe, szGongCha, nDingDanShuLiang, fDanJianZhongliang, szLuRu, szSuanXiLeiBie, szDingDanRiQi, szShengChangRiQi, szBeiZhu) 
values ($szDingDanHao, $szKeHuJianCheng, $szKeHuDaiMa, $szPinMing, $szYuanLiaoGuiGe, $szCaiZhi, $szChengPinGuiGe, $szGongCha, $nDingDanShuLiang, $fDanJianZhongliang, $szLuRu, $szSuanXiLeiBie, $szDingDanRiQi,  $szShengChangRiQi, $szBeiZhu);
UPDATE Table_DingDan set szDingDanZhuangTai=$szDingDanZhuangTai where id = $nDingDanID;
select row_count() into _rowCount;
IF _rowCount<1 THEN
   set $nRet = -1;
   rollback;
ELSE
   set $nRet = 1;
   commit;
END IF;
-- SELECT * Table_BangCaiShengChanRenWuDang;
END
;;
DELIMITER ;

-- ----------------------------
-- Procedure structure for `pr_ChengPinChuKu`
-- ----------------------------
DROP PROCEDURE IF EXISTS `pr_ChengPinChuKu`;
DELIMITER ;;
CREATE DEFINER=`root`@`%` PROCEDURE `pr_ChengPinChuKu`(
in $szChuKuID BIGINT, 
in $nDinDangID BIGINT,    -- 订单ID 
in $szDingDanHao  varchar(64),-- NOT NULL COMMENT '订单号',
in $szKeHuJianCheng  varchar(32),--  NOT NULL COMMENT '客户简称',
in $szKeHuDaiMa  varchar(32),--  NOT NULL COMMENT '客户代码',
in $szPinMing  varchar(32),--  NOT NULL COMMENT '成品名称',
in $szGangChang  varchar(32),--  NOT NULL COMMENT '钢厂',
in $szCaiZhi  varchar(32),--  NOT NULL COMMENT '材质',
in $szChengPinGuiGe  varchar(32),--  NOT NULL COMMENT '成品规格',
in $nJianShu  int,--  NOT NULL COMMENT '件数',
in $fZhongLiang  float,--  NOT NULL COMMENT '重量',
in $szShuLiangMingXi VARCHAR(128),
in $szPenQi  varchar(32),--  NULL COMMENT '喷漆',
in $szDaoJiao  varchar(32),--  NULL COMMENT '倒角',
in $szLuRu  varchar(32),--  NULL COMMENT '录入人',
in $szXiaDanRiQi  datetime,--  NULL COMMENT '下单日期',
in $szXiaoShouLeiBie  varchar(32),
in $szPCGG  varchar(64),--  NOT NULL COMMENT '由品名材质钢厂和规格代码接接而成',
in $fDanJia float,
in $fJinE float,
in $szBeiZhu varchar(256),    -- 订单所属公司，成钢或盟钢
in $szGongSi varchar(32),
out $nRet int
)
BEGIN
DECLARE  _rowCount int DEFAULT 0;
DECLARE  _nJJianShu SMALLINT DEFAULT 0;
DECLARE  _fJZhongLiang float DEFAULT 0;
DECLARE  _nKCID int  DEFAULT -9999;
DECLARE _nBBID  int default 0;
DECLARE  _date  DATETIME default NOW();

DECLARE  _nKCJianShu SMALLINT DEFAULT 0;
DECLARE  _fKCJZhongLiang float DEFAULT 0;

select id, nJianShu, fZhongLiang INTO _nKCID, _nKCJianShu, _fKCJZhongLiang from Table_ChengPinKuCun where szPCGG = $szPCGG LIMIT 1;
action:BEGIN
    IF _nKCID = -9999 THEN    -- 没有找到对应的库存记录
        SET $nRet = -3;
        LEAVE action;
    END IF;

    IF $nJianShu > _nKCJianShu  THEN         -- 件数不够
        SET $nRet = -1;
        LEAVE action;
    END IF;

    IF $fZhongLiang > _fKCJZhongLiang THEN  -- 重量不够
        SET $nRet = -2;
        LEAVE action;
    END IF;

	  select id,nJJianShu,fJZhongLiang INTO _nBBID,_nJJianShu,_fJZhongLiang from Table_ChengPinBaoBiao where date(szRiQi) <= date(now()) and szPCGG = $szPCGG ORDER BY szRiQi desc limit 1;
	  IF _nBBID = 0 THEN    
        SET $nRet = -3;  -- 没有找到对应的库存记录
        LEAVE action;
    END IF;
    IF $nJianShu > _nJJianShu  THEN         -- 件数不够
        SET $nRet = -4;
        LEAVE action;
    END IF;

    IF $fZhongLiang > _fJZhongLiang THEN  -- 重量不够
        SET $nRet = -5;
        LEAVE action;
    END IF;
	
	  SET _nBBID = 0;
	  SET _nJJianShu = 0;
	  SET _fJZhongLiang = 0;
															   
    START TRANSACTION;

	-- 库存处理-----------------------------
    UPDATE Table_ChengPinKuCun set nJianShu = nJianShu - $nJianShu,fZhongLiang = fZhongLiang - $fZhongLiang where id = _nKCID;
	-- 出库订单未出数量处理
    UPDATE Table_DingDan set fWeiChuHuoShuLiang = fWeiChuHuoShuLiang - $fZhongLiang, nDingDanZhuangTai = 3 where id = $nDinDangID;  -- 订单状态设为排产
    -- 出库记录插入 
    insert into Table_ChengPinChuKu(nDDID,szGongSi,szChuKuID,nSongHuoDanHao,szDingDanHao, szKeHuJianCheng,szKeHuDaiMa,szPinMing,szGangChang,szCaiZhi, szChengPinGuiGe,nJianShu,fZhongLiang,szShuLiangMingXi,szPenQi,szDaoJiao,szLuRu,szXiaDanRiQi,szChuKuRiQi,szXiaoShouLeiBie,szPCGG,fDanJia,fJinE,szBeiZhu) 
                            values ($nDinDangID,$szGongSi,$szChuKuID,0,$szDingDanHao,$szKeHuJianCheng,$szKeHuDaiMa,$szPinMing,$szGangChang,$szCaiZhi, $szChengPinGuiGe,$nJianShu,$fZhongLiang,$szShuLiangMingXi,$szPenQi,$szDaoJiao,$szLuRu,$szXiaDanRiQi,_date, $szXiaoShouLeiBie,$szPCGG,$fDanJia,$fJinE,$szBeiZhu); 

    -- 报表处理-----------------------------
    select id INTO _nBBID from Table_ChengPinBaoBiao where date(szRiQi) = date(now()) and szPCGG = $szPCGG limit 1;
    IF _nBBID  > 0 THEN    -- 已有当日报表记录
        UPDATE Table_ChengPinBaoBiao set nCJianShu = nCJianShu + $nJianShu,fCZhongLiang = fCZhongLiang + $fZhongLiang, nJJianShu = nJJianShu - $nJianShu,fJZhongLiang = fJZhongLiang - $fZhongLiang  where id = _nBBID;
    ELSE                    -- 还没有当日报表记录
        -- 查看修改日之前是否有报表记录
        select id,nJJianShu,fJZhongLiang INTO _nBBID,_nJJianShu,_fJZhongLiang from Table_ChengPinBaoBiao where date(szRiQi) < date(now()) and szPCGG = $szPCGG ORDER BY szRiQi desc limit 1;
        IF _nBBID  > 0 THEN -- 有记录
            INSERT INTO Table_ChengPinBaoBiao (szPinMing,szGangChang, szCaiZhi, szChengPinGuiGe,szPCGG,nRJianShu,fRZhongLiang,nCJianShu,fCZhongLiang,nJJianShu,fJZhongLiang,szRiQi)
                                  VALUES ($szPinMing,$szGangChang,$szCaiZhi,$szChengPinGuiGe,$szPCGG,0,0,$nJianShu,$fZhongLiang,_nJJianShu - $nJianShu, _fjZhongLiang - $fZhongLiang,NOW());
        END IF;
    END IF;

    select row_count() into _rowCount;
    IF _rowCount<1 THEN
        set $nRet = -9;
        rollback;
    ELSE
       set $nRet = 1;
       commit;
    END IF;
END action;
END
;;
DELIMITER ;

-- ----------------------------
-- Procedure structure for `pr_ChengPinChuKuSC`
-- ----------------------------
DROP PROCEDURE IF EXISTS `pr_ChengPinChuKuSC`;
DELIMITER ;;
CREATE DEFINER=`root`@`%` PROCEDURE `pr_ChengPinChuKuSC`(
in $nCKID int,
out $nRet int
)
BEGIN

DECLARE  _nDDID int  DEFAULT 0;
DECLARE  _rowCount int DEFAULT 0;
DECLARE  _nJianShu SMALLINT DEFAULT 0; 
DECLARE  _fZhongLiang float DEFAULT 0;
DECLARE  _szPCGG  varchar(128);
DECLARE _szChuKuRiQi DATETIME;

action:BEGIN	
	-- 先取出要删除记录的数据
    SELECT nJianShu, fZhongLiang,szPCGG,nDDID,szChuKuRiQi INTO _nJianShu, _fZhongLiang, _szPCGG,_nDDID,_szChuKuRiQi from Table_ChengPinChuKu WHERE id = $nCKID;
    START TRANSACTION;  -- 开始事务
    -- 更新库存
    UPDATE Table_ChengPinKuCun set nJianShu = nJianShu + _nJianShu, fZhongLiang = fZhongLiang + _fZhongLiang where szPCGG = _szPCGG;
	-- 出库订单未出数量处理
    UPDATE Table_DingDan set fWeiChuHuoShuLiang = fWeiChuHuoShuLiang + _fZhongLiang where id = _nDDID;  
    -- 更新报表
	UPDATE Table_ChengPinBaoBiao set nJJianShu = nJJianShu + _nJianShu, fJZhongLiang = fJZhongLiang + _fZhongLiang where szPCGG = _szPCGG and date(szRiQi) > date(_szChuKuRiQi); 
    UPDATE Table_ChengPinBaoBiao set nCJianShu = nCJianShu - _nJianShu, fCZhongLiang = fCZhongLiang - _fZhongLiang, nJJianShu = nJJianShu + _nJianShu, fJZhongLiang = fJZhongLiang + _fZhongLiang where szPCGG = _szPCGG and date(szRiQi) = date(_szChuKuRiQi); 	
	-- 删除出库记录
    DELETE FROM Table_ChengPinChuKu where id = $nCKID;
    select row_count() into _rowCount;
    IF _rowCount<1 THEN
       set $nRet = -1;
       rollback;
    ELSE
       set $nRet = 1;
       commit;
    END IF;
END action;
END
;;
DELIMITER ;

-- ----------------------------
-- Procedure structure for `pr_ChengPinChuKuXG`
-- ----------------------------
DROP PROCEDURE IF EXISTS `pr_ChengPinChuKuXG`;
DELIMITER ;;
CREATE DEFINER=`root`@`%` PROCEDURE `pr_ChengPinChuKuXG`(
in $szGangChang  varchar(32),--  NOT NULL COMMENT '钢厂',
in $nJianShu  int,--  NOT NULL COMMENT '件数',
in $fZhongLiang  float,--  NOT NULL COMMENT '重量',
in $fJinE  float,      
in $szShuLiangMingXi varchar(128),--  NULL COMMENT '数量明细',
in $szBeiZhu varchar(256),--  NULL COMMENT '备注',
in $szPCGG  varchar(64),--  NOT NULL COMMENT '由品名材质钢厂和规格代码接接而成',
in $nCKID int, -- 要修改的出库记录id
out $nRet int
)
BEGIN
DECLARE  _rowCount int DEFAULT 0;
DECLARE  _nJJianShu INT DEFAULT 0;
DECLARE  _fJZhongLiang float DEFAULT 0;
DECLARE  _nKCJianShu INT DEFAULT 0;       -- 库存件数
DECLARE  _fKCZhongLiang float DEFAULT 0;  -- 库存重量
DECLARE  _nCKID int  DEFAULT 0;   -- 出库ID
DECLARE  _nKCID int  DEFAULT 0;   -- 库存ID
DECLARE  _nBBID int  DEFAULT 0;
DECLARE  _nDDID int  DEFAULT 0;
DECLARE  _szPCGG varchar(64);
DECLARE  _fJinE float DEFAULT 0;
DECLARE _szChuKuRiQi DATETIME;

DECLARE  _nJianShuCha INT DEFAULT 0;       
DECLARE  _fZhongLiangCha float DEFAULT 0;  

DECLARE _szRiQi DATETIME;
DECLARE _szPinMing varchar(32);
DECLARE _szGangChang varchar(32);
DECLARE _szCaiZhi varchar(32);
DECLARE _szChengPinGuiGe varchar(32);
DECLARE _nJianShu int;
DECLARE _fZhongLiang float;

action:BEGIN
-- 此处是为防止退货入库时，用户输入的金额、件数、重量输入为负数，对输入为负数更正为正数
IF $fJinE < 0 THEN
    SET $fJinE = -$fJinE;
END IF;  
IF $nJianShu < 0 THEN
    SET $nJianShu = -$nJianShu;
END IF;  
IF $fZhongLiang < 0 THEN
    SET $fZhongLiang = -$fZhongLiang;
END IF;  

-- 先取出要修改记录的数据
select szGangChang, nJianShu,fZhongLiang,fJinE,szPCGG,szPinMing, szCaiZhi,szChengPinGuiGe, szChuKuRiQi,nDDID
       into _szGangChang, _nJianShu,_fZhongLiang,_fJinE, _szPCGG,_szPinMing, _szCaiZhi,_szChengPinGuiGe, _szChuKuRiQi,_nDDID
       from   Table_ChengPinChuKu where id = $nCKID;

SET _nJianShuCha = $nJianShu - _nJianShu;
SET _fZhongLiangCha = $fZhongLiang - _fZhongLiang;	   
	   
IF 	_szPCGG <> $szPCGG THEN  -- 类有修改
	select id,nJJianShu,fJZhongLiang INTO _nBBID,_nJJianShu,_fJZhongLiang from Table_ChengPinBaoBiao where date(szRiQi) <= date(_szChuKuRiQi) and szPCGG = $szPCGG ORDER BY szRiQi desc limit 1;
	IF _nBBID = 0 THEN    
        SET $nRet = -3;  -- 没有找到对应的库存记录
        LEAVE action;
    END IF;
    IF $nJianShu > _nJJianShu  THEN         -- 件数不够
        SET $nRet = -4;
        LEAVE action;
    END IF;
    IF $fZhongLiang > _fJZhongLiang THEN  -- 重量不够
        SET $nRet = -5;
        LEAVE action;
    END IF;
	
	SET _nBBID = 0;
	SET _nJJianShu = 0;
	SET _fJZhongLiang = 0;
	
    -- 库存处理-------------------------
	-- 原类加回原来数
	UPDATE Table_ChengPinKuCun set nJianShu = nJianShu + _nJianShu, fZhongLiang = fZhongLiang + _fZhongLiang where szPCGG = _szPCGG;
	-- 新类处理，
    UPDATE Table_ChengPinKuCun set nJianShu = nJianShu - $nJianShu,fZhongLiang = fZhongLiang - $fZhongLiang where szPCGG = $szPCGG;
	
	-- 报表修改 --------------------------
	-- 原类处理，修改日后的记录，只对结存处理
	UPDATE Table_ChengPinBaoBiao set nJJianShu = nJJianShu + _nJianShu, fJZhongLiang = fJZhongLiang + _fZhongLiang where szPCGG = _szPCGG and date(szRiQi) > date(_szChuKuRiQi); 
	-- 原类处理，修改当日的记录，只对入库记录和结存都要处理
	UPDATE Table_ChengPinBaoBiao set nCJianShu = nCJianShu - _nJianShu, fCZhongLiang = fCZhongLiang - _fZhongLiang, nJJianShu = nJJianShu + _nJianShu, fJZhongLiang = fJZhongLiang + _fZhongLiang where szPCGG = _szPCGG and date(szRiQi) = date(_szChuKuRiQi); 
	
	-- 新类处理
	UPDATE Table_ChengPinBaoBiao set nJJianShu = nJJianShu - $nJianShu, fJZhongLiang = fJZhongLiang - $fZhongLiang where szPCGG = $szPCGG and date(szRiQi) > date(_szChuKuRiQi); -- 修改日之后的记录
	select id INTO _nBBID from Table_ChengPinBaoBiao where date(szRiQi) = date(_szChuKuRiQi) and szPCGG = $szPCGG limit 1;
    IF _nBBID  > 0 THEN    -- 已有当日报表记录
        UPDATE Table_ChengPinBaoBiao set nCJianShu = nCJianShu + $nJianShu,fCZhongLiang = fCZhongLiang + $fZhongLiang, nJJianShu = nJJianShu - $nJianShu,fJZhongLiang = fJZhongLiang - $fZhongLiang  where id = _nBBID;
    ELSE                    -- 还没有当日报表记录
        -- 查看修改日之前是否有报表记录
        select id,nJJianShu,fJZhongLiang INTO _nBBID,_nJJianShu,_fJZhongLiang from Table_ChengPinBaoBiao where date(szRiQi) < date(_szChuKuRiQi) and szPCGG = $szPCGG ORDER BY szRiQi desc limit 1;
        IF _nBBID  > 0 THEN -- 有记录
            INSERT INTO Table_ChengPinBaoBiao (szPinMing,szGangChang, szCaiZhi, szChengPinGuiGe,szPCGG,nRJianShu,fRZhongLiang,nCJianShu,fCZhongLiang,nJJianShu,fJZhongLiang,szRiQi)
                                  VALUES ($szPinMing,$szGangChang,$szCaiZhi,$szChengPinGuiGe,$szPCGG,0,0,$nJianShu,$fZhongLiang,_nJJianShu - $nJianShu, _fjZhongLiang - $fZhongLiang,_szChuKuRiQi);
        END IF;
    END IF;
ELSE
    IF $nJianShu <> _nJianShu OR $fZhongLiang <> _fZhongLiang  THEN   -- 类无修改，件数和重量有修改
		select id,nJJianShu,fJZhongLiang INTO _nBBID,_nJJianShu,_fJZhongLiang from Table_ChengPinBaoBiao where date(szRiQi) <= date(_szChuKuRiQi) and szPCGG = $szPCGG ORDER BY szRiQi desc limit 1;
		IF _nBBID = 0 THEN    
            SET $nRet = -3;  -- 没有找到对应的库存记录
            LEAVE action;
        END IF;
        IF _nJianShuCha > _nJJianShu  THEN         -- 件数不够
            SET $nRet = -4;
            LEAVE action;
        END IF;
        IF _fZhongLiangCha > _fJZhongLiang THEN  -- 重量不够
            SET $nRet = -5;
            LEAVE action;
        END IF;
	
	    SET _nBBID = 0;
	    SET _nJJianShu = 0;
	    SET _fJZhongLiang = 0;
	    -- 库存处理-------------------------
	    UPDATE Table_ChengPinKuCun set nJianShu = nJianShu - _nJianShuCha, fZhongLiang = fZhongLiang - _fZhongLiangCha where szPCGG = _szPCGG;
		-- 报表修改 ------------------------
		UPDATE Table_ChengPinBaoBiao set nJJianShu = nJJianShu - _nJianShuCha, fJZhongLiang = fJZhongLiang - _fZhongLiangCha where szPCGG = _szPCGG and date(szRiQi) > date(_szChuKuRiQi); 
		UPDATE Table_ChengPinBaoBiao set nCJianShu = nCJianShu + _nJianShuCha, fCZhongLiang = fCZhongLiang + _fZhongLiangCha, nJJianShu = nJJianShu - _nJianShuCha,fJZhongLiang = fJZhongLiang - _fZhongLiangCha  where szPCGG = _szPCGG and date(szRiQi) = date(_szChuKuRiQi); 
	END IF;
END IF;   

IF 	_fZhongLiangCha <> 0 THEN
    -- 出库订单未出数量处理
    UPDATE Table_DingDan set fWeiChuHuoShuLiang = fWeiChuHuoShuLiang - _fZhongLiangCha where id = _nDDID;  
END IF;   

-- 对出库记录本身进行修改
UPDATE Table_ChengPinChuKu SET szGangChang = $szGangChang, nJianShu = $nJianShu, fZhongLiang = $fZhongLiang,
                                 fJinE = $fJinE, szShuLiangMingXi = $szShuLiangMingXi,szBeiZhu = $szBeiZhu, szPCGG = $szPCGG
                             where id = $nCKID;
select row_count() into _rowCount;
IF _rowCount<1 THEN
    set $nRet = -1;
    rollback;
ELSE 
    set $nRet = 1;
    commit;
END IF;
END action;
END
;;
DELIMITER ;

-- ----------------------------
-- Procedure structure for `pr_ChengPinRuKu`
-- ----------------------------
DROP PROCEDURE IF EXISTS `pr_ChengPinRuKu`;
DELIMITER ;;
CREATE DEFINER=`root`@`%` PROCEDURE `pr_ChengPinRuKu`(
in $szDingDanHao  varchar(64),-- NOT NULL COMMENT '订单号',
in $szKeHuJianCheng  varchar(32),--  NOT NULL COMMENT '客户简称',
in $szKeHuDaiMa  varchar(32),--  NOT NULL COMMENT '客户代码',
in $szPinMing  varchar(32),--  NOT NULL COMMENT '成品名称',
in $szYuanLiaoGuiGe  varchar(32),--   NULL COMMENT '原料规格',
in $szGangChang  varchar(32),--  NOT NULL COMMENT '钢厂',
in $szCaiZhi  varchar(32),--  NOT NULL COMMENT '材质',
in $szChengPinGuiGe  varchar(32),--  NOT NULL COMMENT '成品规格',
in $nJianShu  int,--  NOT NULL COMMENT '件数',
in $fZhongLiang  float,--  NOT NULL COMMENT '重量',
in $fDanJia  float,    --  退货入库填写
in $fJinE  float,      --  退货入库填写
in $szPenQi  varchar(32),--  NULL COMMENT '喷漆',
in $szDaoJiao  varchar(32),--  NULL COMMENT '倒角',
in $szLuRu  varchar(32),--  NULL COMMENT '录入人',
in $szXiaDanRiQi  datetime,--  NULL COMMENT '下单日期',
in $szShengChangRiQi  datetime,--  NULL COMMENT '生产日期',
in $nLeiBie tinyInt,--   NULL COMMENT '入库类别(1：生产入库，2：退货入库)',
in $szBeiZhu varchar(256),--  NULL COMMENT '备注',
in $szPCGG  varchar(64),--  NOT NULL COMMENT '由品名材质钢厂和规格代码接接而成',
in $szGongSi  varchar(32),
in $szSongHuoDanHao VARCHAR(32),
in $nCKID int, -- 退货入库专用，根据这个ID，找到时当的出库记录，更新当时出库记录的数量
out $nRet int
)
BEGIN
DECLARE  _rowCount int DEFAULT 0;
DECLARE  _nKCID int DEFAULT -9999;
DECLARE  _date  DATETIME default NOW();
DECLARE  _nBBID INT unsigned DEFAULT 0; 
DECLARE  _nCKID INT unsigned DEFAULT 0; 
DECLARE  _nJJianShu INT DEFAULT 0;       -- 前结存件数
DECLARE  _fJZhongLiang float DEFAULT 0;  -- 前结存重量
DECLARE  _nTuiHuoJianShu INT DEFAULT 0;       -- 已退货件数
DECLARE  _fTuiHuoZhongLiang float DEFAULT 0;  -- 已退货重量
DECLARE  _fTuiHuoJinE float DEFAULT 0;        -- 已退货金额

-- 此处是为防止退货入库时，用户输入的金额、件数、重量输入为负数，对输入为负数更正为正数
IF $fJinE < 0 THEN
    SET $fJinE = -$fJinE;
END IF;  
IF $nJianShu < 0 THEN
    SET $nJianShu = -$nJianShu;
END IF;  
IF $fZhongLiang < 0 THEN
    SET $fZhongLiang = -$fZhongLiang;
END IF;  

select id INTO _nKCID from Table_ChengPinKuCun where szPCGG = $szPCGG LIMIT 1;
START TRANSACTION;
-- 库存处理----------------------------
IF _nKCID  > 0 THEN    -- 已有该类组合，只需更新库存
   UPDATE Table_ChengPinKuCun set nJianShu = nJianShu + $nJianShu,fZhongLiang = fZhongLiang + $fZhongLiang where id = _nKCID;
ELSE                    -- 没有该类组合，新建一条该类组合的记录
   INSERT INTO Table_ChengPinKuCun (szPinMing,szYuanLiaoGuiGe,szCaiZhi,szChengPinGuiGe,szPenQi,szDaoJiao,nJianShu,fZhongLiang,szGangChang,szPCGG) 
                            VALUES ($szPinMing,$szYuanLiaoGuiGe,$szCaiZhi,$szChengPinGuiGe,$szPenQi,$szDaoJiao,$nJianShu,$fZhongLiang,$szGangChang,$szPCGG);
END IF;

-- 报表处理-----------------------------
select id INTO _nBBID from Table_ChengPinBaoBiao where date(szRiQi) = date(now()) and szPCGG = $szPCGG limit 1;
IF _nBBID  > 0 THEN    -- 已有当日报表记录
   UPDATE Table_ChengPinBaoBiao set nRJianShu = nRJianShu + $nJianShu,fRZhongLiang = fRZhongLiang + $fZhongLiang, nJJianShu = nJJianShu + $nJianShu,fJZhongLiang = fJZhongLiang + $fZhongLiang  where id = _nBBID;
ELSE                    -- 还没有当日报表记录
   -- 查看修改日之前是否有报表记录
   select id,nJJianShu,fJZhongLiang INTO _nBBID,_nJJianShu,_fJZhongLiang from Table_ChengPinBaoBiao where date(szRiQi) < date(now()) and szPCGG = $szPCGG ORDER BY szRiQi desc limit 1;
   IF _nBBID  > 0 THEN -- 有记录
       INSERT INTO Table_ChengPinBaoBiao (szPinMing,szGangChang, szCaiZhi, szChengPinGuiGe,szPCGG,nRJianShu,fRZhongLiang,nCJianShu,fCZhongLiang,nJJianShu,fJZhongLiang,szRiQi)
                                  VALUES ($szPinMing,$szGangChang,$szCaiZhi,$szChengPinGuiGe,$szPCGG,$nJianShu,$fZhongLiang,0,0,_nJJianShu + $nJianShu, _fjZhongLiang + $fZhongLiang,NOW());
   ELSE
       INSERT INTO Table_ChengPinBaoBiao (szPinMing,szGangChang, szCaiZhi, szChengPinGuiGe,szPCGG,nRJianShu,fRZhongLiang,nCJianShu,fCZhongLiang,nJJianShu,fJZhongLiang,szRiQi)
                                  VALUES ($szPinMing,$szGangChang,$szCaiZhi,$szChengPinGuiGe,$szPCGG,$nJianShu,$fZhongLiang,0,0,$nJianShu,$fZhongLiang,NOW());
   END IF;
END IF;

IF $nLeiBie = 1 THEN  -- 正常入库
    --  将成品入库信息插入成品入库记录表
    insert into Table_ChengPinRuKu(szDingDanHao,szKeHuJianCheng,szKeHuDaiMa,szPinMing,szGangChang,szCaiZhi, szChengPinGuiGe,nJianShu,fZhongLiang,nYuJianShu,fYuZhongLiang,szPenQi,szDaoJiao,szLuRu,szXiaDanRiQi,szShengChangRiQi,szRuKuRiQi,nLeiBie,szBeiZhu,szPCGG,szYuanLiaoGuiGe, nBBID) 
                           values ($szDingDanHao,$szKeHuJianCheng,$szKeHuDaiMa,$szPinMing,$szGangChang,$szCaiZhi, $szChengPinGuiGe,$nJianShu,$fZhongLiang,$nJianShu,$fZhongLiang,$szPenQi,$szDaoJiao,$szLuRu,$szXiaDanRiQi,$szShengChangRiQi,_date,$nLeiBie,$szBeiZhu,$szPCGG,$szYuanLiaoGuiGe,_nBBID) ;
ELSE -- 退货入库
    -- 更新当时出库相应数据
    UPDATE Table_ChengPinChuKu set nTuiHuoJianShu = nTuiHuoJianShu + $nJianShu,fTuiHuoZhongLiang = fTuiHuoZhongLiang + $fZhongLiang, fTuiHuoJinE = fTuiHuoJinE + $fJinE  where id = $nCKID;   
    SELECT nTuiHuoJianShu, fTuiHuoZhongLiang, fTuiHuoJinE INTO _nTuiHuoJianShu, _fTuiHuoZhongLiang, _fTuiHuoJinE from Table_ChengPinChuKu where id = $nCKID;

    -- 为了便于对账需在出库表中插入一条记录虚拟出库记录，件数和重量及金额都为负数，用于生成对账单, 将$nCKID插入虚拟出库记录的 nDDID 是为了删除退货入库时找到原始的出库单
    insert into Table_ChengPinChuKu(nDDID, szGongSi,szDingDanHao,szSongHuoDanHao, szKeHuJianCheng,szKeHuDaiMa,szPinMing,szGangChang,szCaiZhi, szChengPinGuiGe,nJianShu,fZhongLiang,szPenQi,szDaoJiao,szLuRu,szXiaDanRiQi,szChuKuRiQi,szPCGG,fDanJia,fJinE,szBeiZhu,nLeiBie,nTuiHuoJianShu, fTuiHuoZhongLiang, fTuiHuoJinE) 
                            values ($nCKID, $szGongSi,$szDingDanHao,$szSongHuoDanHao, $szKeHuJianCheng,$szKeHuDaiMa,$szPinMing,$szGangChang,$szCaiZhi, $szChengPinGuiGe,-$nJianShu,-$fZhongLiang,$szPenQi,$szDaoJiao,$szLuRu,$szXiaDanRiQi,_date, $szPCGG,$fDanJia,-$fJinE,$szBeiZhu,-1,_nTuiHuoJianShu, _fTuiHuoZhongLiang, _fTuiHuoJinE); 
    SELECT LAST_INSERT_ID() into _nCKID;
    -- 退货退入成品库，所以要将退货信息插入成品入库记录表，否则成品出入库报表将不正确
    insert into Table_ChengPinRuKu(szDingDanHao,szKeHuJianCheng,szKeHuDaiMa,szPinMing,szGangChang,szCaiZhi, szChengPinGuiGe,nJianShu,fZhongLiang,nYuJianShu,fYuZhongLiang,fDanJia,fJinE,szPenQi,szDaoJiao,szLuRu,szXiaDanRiQi,szShengChangRiQi,szRuKuRiQi,nLeiBie,szBeiZhu,szPCGG,szYuanLiaoGuiGe,nBBID,nCKID) 
                           values ($szDingDanHao,$szKeHuJianCheng,$szKeHuDaiMa,$szPinMing,$szGangChang,$szCaiZhi, $szChengPinGuiGe,$nJianShu,$fZhongLiang,$nJianShu,$fZhongLiang,$fDanJia,$fJinE,$szPenQi,$szDaoJiao,$szLuRu,$szXiaDanRiQi,$szShengChangRiQi,_date,$nLeiBie,$szBeiZhu,$szPCGG,$szYuanLiaoGuiGe,_nBBID, _nCKID);
END IF;

select row_count() into _rowCount;
IF _rowCount<1 THEN
    set $nRet = -1;
    rollback;
ELSE
   set $nRet = 1;
   commit;
END IF;
END
;;
DELIMITER ;

-- ----------------------------
-- Procedure structure for `pr_ChengPinRuKuSC`
-- ----------------------------
DROP PROCEDURE IF EXISTS `pr_ChengPinRuKuSC`;
DELIMITER ;;
CREATE DEFINER=`root`@`%` PROCEDURE `pr_ChengPinRuKuSC`(
in $nRKID int, -- 要修改的入库记录id
in $nCKID int, -- 删除退货入库时用，更改退货入库时对应出库记录的退货件数和数量等
in $nLeiBie tinyInt,--   NULL COMMENT '入库类别(1：生产入库，2：退货入库)',
out $nRet int
)
BEGIN
DECLARE  _rowCount int DEFAULT 0;
DECLARE  _nCKID int  DEFAULT 0;
DECLARE  _nYCKID int DEFAULT 0; -- 要删除的退货记录所退货的出库单ID
DECLARE  _szPCGG varchar(64);
DECLARE  _szRuKuRiQi DATETIME;
DECLARE _nBBID  int default 0;
DECLARE _nJianShu int;
DECLARE _fZhongLiang float;
DECLARE _nTJianShu int;
DECLARE _fTZhongLiang float;
DECLARE _fTJinE float;

    START TRANSACTION;
    -- 先取出要删除记录的数据
    select nJianShu,fZhongLiang,szPCGG,nBBID,nCKID,szRuKuRiQi into
           _nJianShu,_fZhongLiang,_szPCGG,_nBBID, _nCKID,_szRuKuRiQi from   Table_ChengPinRuKu where id = $nRKID;
		   
	-- 更新库存
    UPDATE Table_ChengPinKuCun set nJianShu = nJianShu - _nJianShu, fZhongLiang = fZhongLiang - _fZhongLiang where szPCGG = _szPCGG;
    UPDATE Table_ChengPinBaoBiao set nJJianShu = nJJianShu - _nJianShu, fJZhongLiang = fJZhongLiang - _fZhongLiang where szPCGG = _szPCGG and date(szRiQi) > date(_szRuKuRiQi); 
    UPDATE Table_ChengPinBaoBiao set nRJianShu = nRJianShu - _nJianShu, fRZhongLiang = fRZhongLiang - _fZhongLiang, nJJianShu = nJJianShu - _nJianShu, fJZhongLiang = fJZhongLiang - _fZhongLiang where szPCGG = _szPCGG and date(szRiQi) = date(_szRuKuRiQi); 	
   
    DELETE FROM Table_ChengPinRuKu where id = $nRKID;    -- 删除入库记录
    IF $nLeiBie < 0 THEN
        SELECT nDDID INTO _nYCKID from Table_ChengPinChuKu where id = _nCKID;
        SELECT nJianShu, fZhongLiang, fJinE INTO _nTJianShu, _fTZhongLiang, _fTJinE from Table_ChengPinChuKu where id = _nCKID;
        DELETE FROM Table_ChengPinChuKu where id = _nCKID;    -- 退货入库要删除入库时虚拟的出库记录
        -- 退货入库时修改了出库表记录的退回件数、重量和金额，删除退货记录时得加回去
        UPDATE Table_ChengPinChuKu set nTuiHuoJianShu = nTuiHuoJianShu + _nTJianShu,fTuiHuoZhongLiang = fTuiHuoZhongLiang + _fTZhongLiang, fTuiHuoJinE = fTuiHuoJinE + _fTJinE  where id = _nYCKID;
    END IF;

    select row_count() into _rowCount;
    IF _rowCount<1 THEN
        set $nRet = -1;
        rollback;
    ELSE
       set $nRet = 1;
       commit;
    END IF;
END
;;
DELIMITER ;

-- ----------------------------
-- Procedure structure for `pr_ChengPinRuKuXG`
-- ----------------------------
DROP PROCEDURE IF EXISTS `pr_ChengPinRuKuXG`;
DELIMITER ;;
CREATE DEFINER=`root`@`%` PROCEDURE `pr_ChengPinRuKuXG`(
in $szDingDanHao  varchar(64),-- NOT NULL COMMENT '订单号',
in $szKeHuJianCheng  varchar(32),--  NOT NULL COMMENT '客户简称',
in $szKeHuDaiMa  varchar(32),--  NOT NULL COMMENT '客户代码',
in $szPinMing  varchar(32),--  NOT NULL COMMENT '成品名称',
in $szYuanLiaoGuiGe  varchar(32),--   NULL COMMENT '原料规格',
in $szGangChang  varchar(32),--  NOT NULL COMMENT '钢厂',
in $szCaiZhi  varchar(32),--  NOT NULL COMMENT '材质',
in $szChengPinGuiGe  varchar(32),--  NOT NULL COMMENT '成品规格',
in $nJianShu  int,--  NOT NULL COMMENT '件数',
in $fZhongLiang  float,--  NOT NULL COMMENT '重量',
in $fDanJia  float,    --  退货入库填写
in $fJinE  float,      --  退货入库填写
in $szPenQi  varchar(32),--  NULL COMMENT '喷漆',
in $szDaoJiao  varchar(32),--  NULL COMMENT '倒角',
in $nLeiBie tinyInt,--   NULL COMMENT '入库类别(1：生产入库，2：退货入库)',
in $szBeiZhu varchar(256),--  NULL COMMENT '备注',
in $szPCGG  varchar(64),--  NOT NULL COMMENT '由品名材质钢厂和规格代码接接而成',
in $nRKID int, -- 要修改的入库记录id
out $nRet int
)
BEGIN
DECLARE  _rowCount int DEFAULT 0;
DECLARE  _nJJianShu INT DEFAULT 0;       -- 前结存件数
DECLARE  _fJZhongLiang float DEFAULT 0;  -- 前结存重量
DECLARE  _nJianShuCha INT DEFAULT 0;       
DECLARE  _fZhongLiangCha float DEFAULT 0;  
DECLARE  _nCKID int  DEFAULT 0;
DECLARE  _nKCID int DEFAULT -9999;
DECLARE  _nDDID int DEFAULT -9999;
DECLARE  _nBBID INT unsigned DEFAULT 0;
DECLARE  _szPCGG varchar(64);
DECLARE  _fJinE float DEFAULT 0;

DECLARE _szRuKuRiQi DATETIME;
DECLARE _szDingDanHao varchar(64);
DECLARE _szKeHuJianCheng varchar(32);
DECLARE _szKeHuDaiMa varchar(32);
DECLARE _szPinMing varchar(32);
DECLARE _szGangChang varchar(32);
DECLARE _szCaiZhi varchar(32);
DECLARE _szChengPinGuiGe varchar(32);
DECLARE _nJianShu int;
DECLARE _fZhongLiang float;
DECLARE _nYuJianShu int;
DECLARE _fYuZhongLiang float;
DECLARE _szPenQi varchar(32);
DECLARE _szDaoJiao varchar(32);
DECLARE _szBeiZhu varchar(256);
DECLARE _szYuanLiaoGuiGe varchar(32);
DECLARE _fDanJia float;

-- 此处是为防止退货入库时，用户输入的金额、件数、重量输入为负数，对输入为负数更正为正数
IF $fJinE < 0 THEN
    SET $fJinE = -$fJinE;
END IF;  
IF $nJianShu < 0 THEN
    SET $nJianShu = -$nJianShu;
END IF;  
IF $fZhongLiang < 0 THEN
    SET $fZhongLiang = -$fZhongLiang;
END IF;  

START TRANSACTION;
-- 先取出要修改记录的数据
select szDingDanHao, szKeHuJianCheng,szKeHuDaiMa,szPinMing,szGangChang,szCaiZhi, szChengPinGuiGe,nJianShu,fZhongLiang,nYuJianShu,fYuZhongLiang,szPenQi,szDaoJiao,szBeiZhu,szPCGG,szYuanLiaoGuiGe, nBBID,nCKID,szRuKuRiQi,fDanJia, fJinE into
       _szDingDanHao,_szKeHuJianCheng,_szKeHuDaiMa,_szPinMing,_szGangChang,_szCaiZhi, _szChengPinGuiGe,_nJianShu,_fZhongLiang,_nYuJianShu,_fYuZhongLiang,_szPenQi,_szDaoJiao,_szBeiZhu,_szPCGG,_szYuanLiaoGuiGe,_nBBID,_nCKID,_szRuKuRiQi, _fDanJia, _fJinE
       from   Table_ChengPinRuKu where id = $nRKID;

IF 	_szPCGG <> $szPCGG THEN  -- 类有修改
    -- 库存处理-------------------------
	-- 原类减去原来数
	UPDATE Table_ChengPinKuCun set nJianShu = nJianShu - _nJianShu, fZhongLiang = fZhongLiang - _fZhongLiang where szPCGG = _szPCGG;
	-- 新类有则修改，无则插入一条
	select id INTO _nKCID from Table_ChengPinKuCun where szPCGG = $szPCGG LIMIT 1;  -- 新类修改日是否有报表记录
	IF _nKCID  > 0 THEN    -- 已有该类组合，只需更新库存
       UPDATE Table_ChengPinKuCun set nJianShu = nJianShu + $nJianShu,fZhongLiang = fZhongLiang + $fZhongLiang where id = _nKCID;
    ELSE                    -- 没有该类组合，新建一条该类组合的记录
       INSERT INTO Table_ChengPinKuCun (szPinMing,szYuanLiaoGuiGe,szCaiZhi,szChengPinGuiGe,szPenQi,szDaoJiao,nJianShu,fZhongLiang,szGangChang,szPCGG) 
                            VALUES ($szPinMing,$szYuanLiaoGuiGe,$szCaiZhi,$szChengPinGuiGe,$szPenQi,$szDaoJiao,$nJianShu,$fZhongLiang,$szGangChang,$szPCGG);
    END IF;
	
	-- 报表修改 -------------------------- 
	-- 原类处理，修改日后的记录，只对结存处理
	UPDATE Table_ChengPinBaoBiao set nJJianShu = nJJianShu - _nJianShu, fJZhongLiang = fJZhongLiang - _fZhongLiang where szPCGG = _szPCGG and date(szRiQi) > date(_szRuKuRiQi); 
	-- 原类处理，修改当日的记录，只对入库记录和结存都要处理
	UPDATE Table_ChengPinBaoBiao set nRJianShu = nRJianShu - _nJianShu, fRZhongLiang = fRZhongLiang - _fZhongLiang, nJJianShu = nJJianShu - _nJianShu, fJZhongLiang = fJZhongLiang - _fZhongLiang where szPCGG = _szPCGG and date(szRiQi) = date(_szRuKuRiQi); 
	
	-- 新类处理
	UPDATE Table_ChengPinBaoBiao set nJJianShu = nJJianShu + $nJianShu, fJZhongLiang = fJZhongLiang + $fZhongLiang where szPCGG = $szPCGG and date(szRiQi) > date(_szRuKuRiQi); -- 修改日之后的记录
	select id INTO _nBBID from Table_ChengPinBaoBiao where date(szRiQi) = date(_szRuKuRiQi) and szPCGG = $szPCGG limit 1;
    IF _nBBID  > 0 THEN    -- 已有当日报表记录
        UPDATE Table_ChengPinBaoBiao set nRJianShu = nRJianShu + $nJianShu,fRZhongLiang = fRZhongLiang + $fZhongLiang, nJJianShu = nJJianShu + $nJianShu,fJZhongLiang = fJZhongLiang + $fZhongLiang  where id = _nBBID;
    ELSE                    -- 还没有当日报表记录
        -- 查看修改日之前是否有报表记录
        select id,nJJianShu,fJZhongLiang INTO _nBBID,_nJJianShu,_fJZhongLiang from Table_ChengPinBaoBiao where date(szRiQi) < date(_szRuKuRiQi) and szPCGG = $szPCGG ORDER BY szRiQi desc limit 1;
        IF _nBBID  > 0 THEN -- 有记录
            INSERT INTO Table_ChengPinBaoBiao (szPinMing,szGangChang, szCaiZhi, szChengPinGuiGe,szPCGG,nRJianShu,fRZhongLiang,nCJianShu,fCZhongLiang,nJJianShu,fJZhongLiang,szRiQi)
                                  VALUES ($szPinMing,$szGangChang,$szCaiZhi,$szChengPinGuiGe,$szPCGG,$nJianShu,$fZhongLiang,0,0,_nJJianShu + $nJianShu, _fjZhongLiang + $fZhongLiang,_szRuKuRiQi);
        ELSE
           INSERT INTO Table_ChengPinBaoBiao (szPinMing,szGangChang, szCaiZhi, szChengPinGuiGe,szPCGG,nRJianShu,fRZhongLiang,nCJianShu,fCZhongLiang,nJJianShu,fJZhongLiang,szRiQi)
                                  VALUES ($szPinMing,$szGangChang,$szCaiZhi,$szChengPinGuiGe,$szPCGG,$nJianShu,$fZhongLiang,0,0,$nJianShu,$fZhongLiang,_szRuKuRiQi);
        END IF;
    END IF;
ELSE
    IF $nJianShu <> _nJianShu OR $fZhongLiang <> _fZhongLiang  THEN   -- 类无修改，件数和重量有修改
	    SET _nJianShuCha = $nJianShu - _nJianShu;
		SET _fZhongLiangCha = $fZhongLiang - _fZhongLiang;
	    -- 库存处理-------------------------
	    UPDATE Table_ChengPinKuCun set nJianShu = nJianShu + _nJianShuCha, fZhongLiang = fZhongLiang + _fZhongLiangCha where szPCGG = _szPCGG;
		-- 报表修改 ------------------------
		UPDATE Table_ChengPinBaoBiao set nJJianShu = nJJianShu + _nJianShuCha, fJZhongLiang = fJZhongLiang + _fZhongLiangCha where szPCGG = _szPCGG and date(szRiQi) > date(_szRuKuRiQi); 
		UPDATE Table_ChengPinBaoBiao set nRJianShu = nRJianShu + _nJianShuCha, fRZhongLiang = fRZhongLiang + _fZhongLiangCha, nJJianShu = nJJianShu + _nJianShuCha,fJZhongLiang = fJZhongLiang + _fZhongLiangCha  where szPCGG = _szPCGG and date(szRiQi) = date(_szRuKuRiQi);
	END IF;
END IF;   
	   
IF $nLeiBie < 0 THEN  -- 如果是退货入库需更新虚拟出库记录                                  
	UPDATE Table_ChengPinChuKu set nJianShu = -$nJianShu,fZhongLiang = -$fZhongLiang,fJinE = -$fJinE,szBeiZhu = $szBeiZhu where id = _nCKID;
	SELECT nDDID INTO _nDDID FROM Table_ChengPinChuKu  where id = _nCKID;
	-- 更新原始出库记录中的已退数据
	UPDATE Table_ChengPinChuKu SET nTuiHuoJianShu = nTuiHuoJianShu + ($nJianShu- _nJianShu),fTuiHuoZhongLiang = fTuiHuoZhongLiang + ($fZhongLiang - _fZhongLiang), fTuiHuoJinE = fTuiHuoJinE +($fJinE - _fJinE)  WHERE id = _nDDID;
	UPDATE Table_ChengPinRuKu set nJianShu = $nJianShu,fZhongLiang = $fZhongLiang, nYuJianShu =_nYuJianShu + ($nJianShu- _nJianShu),fYuZhongLiang = _fYuZhongLiang + ($fZhongLiang - _fZhongLiang), 
								   fJinE = $fJinE,szBeiZhu = $szBeiZhu where id = $nRKID;
ELSE
    UPDATE Table_ChengPinRuKu set  szPinMing = $szPinMing,szYuanLiaoGuiGe = $szYuanLiaoGuiGe, szGangChang = $szGangChang, szCaiZhi = $szCaiZhi, szChengPinGuiGe = $szChengPinGuiGe,
                                   nJianShu = $nJianShu,fZhongLiang = $fZhongLiang, nYuJianShu =_nYuJianShu + ($nJianShu- _nJianShu),fYuZhongLiang = _fYuZhongLiang + ($fZhongLiang - _fZhongLiang), 
								   fDanJia = $fDanJia,fJinE = $fJinE,szPenQi = $szPenQi,szDaoJiao = $szDaoJiao,
								   szPCGG = $szPCGG,szBeiZhu = $szBeiZhu where id = $nRKID;
END IF;


select row_count() into _rowCount;
IF _rowCount<1 THEN
    set $nRet = -1;
    rollback;
ELSE
   set $nRet = 1;
   commit;
END IF;
END
;;
DELIMITER ;

-- ----------------------------
-- Procedure structure for `pr_GaiMiMa`
-- ----------------------------
DROP PROCEDURE IF EXISTS `pr_GaiMiMa`;
DELIMITER ;;
CREATE DEFINER=`root`@`%` PROCEDURE `pr_GaiMiMa`(
in $szXingMing  varchar(32),
in $szMiMa  varchar(32),--  NOT NULL COMMENT '客户代码',
in $szMiMaX varchar(32),
out $nRet int
)
BEGIN
    DECLARE  _nQuanXian int  DEFAULT 0;
    select nQuanXian into _nQuanXian from Table_YongHuBiao where szXingMing = $szXingMing and szMiMa = $szMiMa;
    set $nRet = -1;
    IF  _nQuanXian > 0 THEN
        UPDATE Table_YongHuBiao set szMiMa = $szMiMaX where szXingMing = $szXingMing;
        set $nRet = 1;
    end IF;
END
;;
DELIMITER ;

-- ----------------------------
-- Procedure structure for `pr_SongHuoDan`
-- ----------------------------
DROP PROCEDURE IF EXISTS `pr_SongHuoDan`;
DELIMITER ;;
CREATE DEFINER=`root`@`%` PROCEDURE `pr_SongHuoDan`(
in $szChuKuID BIGINT, 
out $szSongHuoDanHao varchar(32)
)
BEGIN
    DECLARE  _shdh int DEFAULT NULL;  -- 送货单号
action:BEGIN
    SELECT nSongHuoDanHao INTO _shdh from Table_ChengPinChuKu where date(NOW()) = date(szChuKuRiQi) ORDER BY nSongHuoDanHao desc LIMIT 1; 
    IF _shdh = NULL THEN
        set _shdh = 1;
    ELSE
        set _shdh = _shdh + 1; 
    END IF; 
    set $szSongHuoDanHao = CONCAT('No.',date_format(NOW(),'%Y%m%d'), '-', _shdh);
    UPDATE Table_ChengPinChuKu set nSongHuoDanHao = _shdh,  szSongHuoDanHao = $szSongHuoDanHao where szChuKuID = $szChuKuID;
END action;
END
;;
DELIMITER ;

-- ----------------------------
-- Procedure structure for `pr_SongHuoDan2`
-- ----------------------------
DROP PROCEDURE IF EXISTS `pr_SongHuoDan2`;
DELIMITER ;;
CREATE DEFINER=`root`@`%` PROCEDURE `pr_SongHuoDan2`(
in $szSqlStr  varchar(512),-- NOT NULL COMMENT '订单号',
out $szSongHuoDanHao varchar(32)
)
BEGIN
    DECLARE  _szSqlStr VARCHAR(1024);
    DECLARE  _shdh int DEFAULT NULL;  -- 送货单号
    DECLARE  _szShdh varchar(32) DEFAULT NULL;  -- 送货单号
    DECLARE  _szShdhTmp varchar(32) DEFAULT '';  
    -- 找出出库表中最后一条生成了送货单的记录
    SELECT szSongHuoDanHao, nSongHuoDanHao INTO _szShdh, _shdh from Table_ChengPinChuKu where szSongHuoDanHao is not NULL and nLeiBie = 1 ORDER BY szChuKuRiQi desc, id desc LIMIT 1;

--    set _szShdhTmp = CONCAT('No.',date_format(NOW(),'%Y%m%d'), '-', _shdh);
    IF _szShdh is NULL THEN
        set $szSongHuoDanHao = CONCAT('No.',date_format(NOW(),'%Y%m%d'), '-1');  -- Table_ChengPinChuKu 表中还没有任一条记录有送货单号
        set _shdh = 1;
    ELSE
        set _szShdhTmp = CONCAT('No.',date_format(NOW(),'%Y%m%d'), '-', _shdh);  
        IF _szShdh = _szShdhTmp THEN    -- 当天已有送货单号
            set _shdh = _shdh + 1;
            set $szSongHuoDanHao = CONCAT('No.',date_format(NOW(),'%Y%m%d-'), _shdh);
        ELSE
            set $szSongHuoDanHao = CONCAT('No.',date_format(NOW(),'%Y%m%d'), '-1');
            set _shdh = 1;
        END IF;
    END IF;
 -- /*
    -- SELECT $szSongHuoDanHao;
    set _szSqlStr = concat("Update Table_ChengPinChuKu set nSongHuoDanHao = ", _shdh, ", szSongHuoDanHao = '", $szSongHuoDanHao, "' where id in", $szSqlStr);
    -- set _szSqlStr = concat("Update Table_ChengPinChuKu set szSongHuoDanHao = 'cc' where id in (", $szSqlStr ,")");
    set @szSqlStr = _szSqlStr;
    prepare stmt from @szSqlStr;
    execute stmt;
    DEALLOCATE PREPARE stmt;
-- */

END
;;
DELIMITER ;

-- ----------------------------
-- Procedure structure for `pr_YuanLiaoChuKu`
-- ----------------------------
DROP PROCEDURE IF EXISTS `pr_YuanLiaoChuKu`;
DELIMITER ;;
CREATE DEFINER=`root`@`%` PROCEDURE `pr_YuanLiaoChuKu`(
in $szCangKu varchar(64),
in $szLeiBie varchar(32),
in $szGangChang  varchar(32),
in $szCaiZhi  varchar(32),
in $szGuiGe  varchar(32),
in $nJianShu  smallint,
in $fZhongLiang  float,
in $szLuRu  varchar(32),
in $szBeiZhu  varchar(256),
in $szCGCG  varchar(128),
in $szKeHu  varchar(32),
out $nRet int
)
BEGIN
DECLARE  _rowCount int DEFAULT 0;
DECLARE  _nJCJianShu  SMALLINT DEFAULT 0; -- 当日结存
DECLARE  _fJCZhongLiang float DEFAULT 0;
DECLARE  _szRiQi datetime DEFAULT NOW();
DECLARE  _nRBBID INT DEFAULT -9999; 
DECLARE  _nYBBID INT DEFAULT -9999; 
DECLARE  _nKCID INT DEFAULT -9999; 

DECLARE  _nSXCKJianShu int default 0; -- COMMENT '酸洗出库件数当日累计',
DECLARE  _fSXCKZhongLiang float default 0; -- COMMENT '酸洗出库重量当日累计',
DECLARE  _nPWCKJianShu smallint default 0; --  COMMENT '喷丸出库件数当日累计',
DECLARE  _fPWCKZhongLiang float default 0; -- COMMENT '喷丸出库重量当日累计',
DECLARE  _nXSDBCKJianShu smallint default 0; -- COMMENT '销售或调调拔出库件数当日累计',
DECLARE  _fXSDBCKZhongLiang float default 0; -- COMMENT '销售或调调拔出库重量当日累计',

DECLARE _szNianYue   varchar(32) default  date_format(_szRiQi,'%Y年%m月');      -- 年月时间，用于月报表
DECLARE _szNianYueRi varchar(32) default date_format(_szRiQi,'%Y年%m月%d日');   -- 年月日时间，用于日报表

_DO:BEGIN

SELECT id, nJianShu, fZhongLiang INTO _nKCID, _nJCJianShu, _fJCZhongLiang from table_YuanLiaoKuCun where szCGCG = $szCGCG LIMIT 1;
IF _nKCID = -9999 THEN
    SET $nRet = -3;    -- 无库存记录
    LEAVE _DO;
ELSE
    IF $nJianShu > _nJCJianShu THEN   -- 库存件数不够
        SET $nRet = -1;
        LEAVE _DO;
    END IF;
    IF $fZhongLiang > _fJCZhongLiang THEN   -- 库存重量不够
        SET $nRet = -2;
        LEAVE _DO;
    END IF;
    UPDATE table_YuanLiaoKuCun SET nJianShu = nJianShu - $nJianShu, fZhongLiang = fZhongLiang - $fZhongLiang where id = _nKCID;
END IF;

IF $szLeiBie = '酸洗' THEN
    SET _nSXCKJianShu = $nJianShu;
    SET _fSXCKZhongLiang = $fZhongLiang;
ELSEIF $szLeiBie = '喷丸' THEN
    SET _nPWCKJianShu = $nJianShu;
    SET _fPWCKZhongLiang = $fZhongLiang;
ELSE
    SET _nXSDBCKJianShu = $nJianShu;
    SET _fXSDBCKZhongLiang = $fZhongLiang;
END IF;

    START TRANSACTION;
    SELECT id into _nRBBID from Table_YuanLiaoRiBaoBiao where szNianYueRi = _szNianYueRi and szCGCG = $szCGCG LIMIT 1; -- 查看是否已有该类日报表记录
    IF _nRBBID = -9999 THEN    -- 还没有该日期的记录，需要插入一条     
        insert into Table_YuanLiaoRiBaoBiao(szCangKu, szGangChang, szCaiZhi, szGuiGe,szCGCG,
                                            nCKJianShu, fCKZhongLiang,          -- 日出库总件数和总重量
                                            nSXCKJianShu, fSXCKZhongLiang,      -- 日酸洗出库总件数和总重量
                                            nPWCKJianShu, fPWCKZhongLiang,      -- 日喷丸出库总件数和总重量
                                            nXSDBCKJianShu, fXSDBCKZhongLiang,  -- 日销售调拔出库总件数和总重量                               
                                            nJCJianShu,fJCZhongLiang,           -- 当日结存件数和重量
                                            nQRJianShu,fQRZhongLiang,           -- 前日结存件数和重量
                                            szRiQi, szNianYueRi) 
                                    values ($szCangKu, $szGangChang, $szCaiZhi,$szCGCG, 
                                            $nJianShu, $fZhongLiang,
                                            _nSXCKJianShu, _fSXCKZhongLiang,      -- 日酸洗出库总件数和总重量 
                                            _nPWCKJianShu, _fPWCKZhongLiang,      -- 日喷丸出库总件数和总重量
                                            _nXSDBCKJianShu, _fXSDBCKZhongLiang,  -- 日销售调拔出库总件数和总重量  
                                            _nJCJianShu - $nJianShu,_fJCZhongLiang - $fZhongLiang, -- 当日结存件数和重量
                                            _nJCJianShu,_fJCZhongLiang,           -- 前日结存件数和重量
                                            _szRiQi, _NianYueRi);
    ELSE
        UPDATE Table_YuanLiaoRiBaoBiao SET nCKJianShu = nCKJianShu + $nJianShu, fCKZhongLiang = fCKZhongLiang + $fZhongLiang,                   -- 日出库总数更新 
                                           nSXCKJianShu = nSXCKJianShu + _nSXCKJianShu, fSXCKZhongLiang = fSXCKZhongLiang + _fSXCKZhongLiang,   -- 酸洗日出库总数更新 
                                           nPWCKJianShu = nPWCKJianShu + _nPWCKJianShu, fPWCKZhongLiang = fPWCKZhongLiang + _fPWCKZhongLiang,   -- 喷丸日出库总数更新 
                                           nXSDBCKJianShu = nXSDBCKJianShu + _nXSDBCKJianShu, fXSDBCKZhongLiang = fXSDBCKZhongLiang + _fXSDBCKZhongLiang,   -- 销售调拔日出库总数更新       
                                           nJCJianShu = nJCJianShu - $nJianShu, fJCZhongLiang = fJCZhongLiang - $fZhongLiang     -- 当日结存
                                           WHERE id = _nRBBID;
    END IF;

    SET _nJCJianShu = 0;
    SET _fJCZhongLiang = 0;
    SELECT id into _nYBBID from Table_YuanLiaoYueBaoBiao where szNianYue = _szNianYue and szCGCG = $szCGCG LIMIT 1; -- 查看是否已有该类月报表记录
    IF _nYBBID = -9999 THEN    -- 还没有该日期的记录，需要插入一条
        SELECT nJCJianShu,fJCZhongLiang INTO _nJCJianShu, _fJCZhongLiang FROM Table_YuanLiaoYueBaoBiao WHERE szCGCG = $szCGCG ORDER BY szRiQi DESC LIMIT 1;
        insert into Table_YuanLiaoYueBaoBiao(szCangKu, szGangChang, szCaiZhi, szGuiGe,szCGCG, 
                                             nCKJianShu, fCKZhongLiang,          -- 月出库总件数和总重量
                                             nSXCKJianShu, fSXCKZhongLiang,      -- 月酸洗出库总件数和总重量
                                             nPWCKJianShu, fPWCKZhongLiang,      -- 月喷丸出库总件数和总重量
                                             nXSDBCKJianShu, fXSDBCKZhongLiang,  -- 月销售调拔出库总件数和总重量                               
                                             nJCJianShu,fJCZhongLiang,           -- 当月结存件数和重量
                                             nQYJianShu,fQYZhongLiang,           -- 前月结存件数和重量
                                             szRiQi, szNianYue) 
                                      values ($szCangKu, $szGangChang, $szCaiZhi,$szCGCG, 
                                             $nJianShu, $fZhongLiang,
                                             _nSXCKJianShu, _fSXCKZhongLiang,      -- 月酸洗出库总件数和总重量 
                                             _nPWCKJianShu, _fPWCKZhongLiang,      -- 月喷丸出库总件数和总重量
                                             _nXSDBCKJianShu, _fXSDBCKZhongLiang,  -- 月销售调拔出库总件数和总重量  
                                             _nJCJianShu - $nJianShu,_fJCZhongLiang - $fZhongLiang, -- 当月结存件数和重量
                                             _nJCJianShu,_fJCZhongLiang,           -- 前月结存件数和重量
                                             _szRiQi, _NianYue);
    ELSE
        UPDATE Table_YuanLiaoYueBaoBiao SET nCKJianShu = nCKJianShu + $nJianShu, fCKZhongLiang = fCKZhongLiang + $fZhongLiang,                   -- 月出库总数更新 
                                           nSXCKJianShu = nSXCKJianShu + _nSXCKJianShu, fSXCKZhongLiang = fSXCKZhongLiang + _fSXCKZhongLiang,   -- 酸洗月出库总数更新 
                                           nPWCKJianShu = nPWCKJianShu + _nPWCKJianShu, fPWCKZhongLiang = fPWCKZhongLiang + _fPWCKZhongLiang,   -- 喷丸月出库总数更新 
                                           nXSDBCKJianShu = nXSDBCKJianShu + _nXSDBCKJianShu, fXSDBCKZhongLiang = fXSDBCKZhongLiang + _fXSDBCKZhongLiang,   -- 销售调拔月出库总数更新       
                                           nJCJianShu = nJCJianShu - $nJianShu, fJCZhongLiang = fJCZhongLiang - $fZhongLiang      -- 当月结存
                                       WHERE id = _nYBBID;
    END IF;
    insert into Table_YuanLiaoChuKu(szCangKu,  szLeiBie,  szGangChang,  szCaiZhi,  szGuiGe,  nJianShu,  fZhongLiang,  szLuRu,  szBeiZhu, szKeHu, szCGCG) 
                            values ($szCangKu, $szLeiBie, $szGangChang, $szCaiZhi, $szGuiGe, $nJianShu, $fZhongLiang, $szLuRu, $szBeiZhu, $szKeHu, $szCGCG);
    select row_count() into _rowCount;
    IF _rowCount<1 THEN
       set $nRet = -4;
       rollback;
    ELSE
       set $nRet = 1;
       commit;
    END IF;
END _DO;
END
;;
DELIMITER ;

-- ----------------------------
-- Procedure structure for `pr_YuanLiaoChuKuSC`
-- ----------------------------
DROP PROCEDURE IF EXISTS `pr_YuanLiaoChuKuSC`;
DELIMITER ;;
CREATE DEFINER=`root`@`%` PROCEDURE `pr_YuanLiaoChuKuSC`(
in $nCKID int,
out $nRet int
)
BEGIN
    DECLARE  _rowCount int DEFAULT 0;
    DECLARE  _szChuKuRiQi  datetime;        -- 对应记录时间
    DECLARE  _nJianshu  int;       -- 修改前值
    DECLARE  _fZhongliang  float;  -- 修改前值
    DECLARE  _szCGCG  varchar(128);
	  DECLARE  _szLeiBie varchar(32) default '';
  	DECLARE _szNianYue   varchar(32) default '';       -- 年月时间，用于月报表
    DECLARE _szNianYueRi varchar(32) default '';       -- 年月日时间，用于日报表
      
    SELECT nJianShu, fZhongLiang, szCGCG, szLeiBie, szChuKuRiQi INTO _nJianShu, _fZhongLiang, _szCGCG, _szLeiBie, _szChuKuRiQi from Table_YuanLiaoChuKu where id = $nCKID;   -- 取出当时入库插入的szCGCG和对应数据
    SET _szNianYueRi = date_format(_szChuKuRiQi,'%Y年%m月%d日');
    SET _szNianYue   = date_format(_szChuKuRiQi,'%Y年%m月');

	START TRANSACTION;   	
	
  UPDATE table_YuanLiaoKuCun SET nJianShu = nJianShu + _nJianshu, fZhongLiang = fZhongLiang + _fZhongliang where szCGCG = _szCGCG;   -- 库存加回删除数量
	-- 更新原CGCG组合记录后的所有原同类记录的数据，与要修改的报表记录同一天的记录只更新当日结存，非同一天记录前日和当日结存都要更新
    UPDATE Table_YuanLiaoRiBaoBiao set nJCJianShu = nJCJianShu + _nJianShu, fJCZhongLiang = fJCZhongLiang + _fZhongLiang,
	                                   nQRJianShu = nQRJianShu + _nJianShu, fQRZhongLiang = fQRZhongLiang + _fZhongLiang
     		                       where DATE(szRiQi) > DATE(_szChuKuRiQi) and szCGCG = _szCGCG;
	UPDATE Table_YuanLiaoYueBaoBiao set nJCJianShu = nJCJianShu + _nJianShu, fJCZhongLiang = fJCZhongLiang + _fZhongLiang,
	                                   nQYJianShu = nQYJianShu + _nJianShu, fQYZhongLiang = fQYZhongLiang + _fZhongLiang
     		                       where DATE(szRiQi) > DATE(_szChuKuRiQi) and szCGCG = _szCGCG;							   
	IF _szLeiBie = '酸洗' THEN
        UPDATE Table_YuanLiaoRiBaoBiao set nJCJianShu = nJCJianShu + _nJianShu, fJCZhongLiang = fJCZhongLiang + _fZhongLiang,
	                                       nCKJianShu = nCKJianShu - _nJianShu, fCKZhongLiang = fCKZhongLiang - _fZhongLiang,
										   nSXCKJianShu = nSXCKJianShu - _nJianShu, fSXCKZhongLiang = fSXCKZhongLiang - _fZhongLiang   
     		                         where szNianYueRi = _szNianYueRi and szCGCG = _szCGCG;
		UPDATE Table_YuanLiaoYueBaoBiao set nJCJianShu = nJCJianShu + _nJianShu, fJCZhongLiang = fJCZhongLiang + _fZhongLiang,
	                                       nCKJianShu = nCKJianShu - _nJianShu, fCKZhongLiang = fCKZhongLiang - _fZhongLiang,
										   nSXCKJianShu = nSXCKJianShu - _nJianShu, fSXCKZhongLiang = fSXCKZhongLiang - _fZhongLiang   
     		                         where szNianYue = _szNianYue and szCGCG = _szCGCG;
	ELSEIF $szLeiBie = '喷丸' THEN
	    UPDATE Table_YuanLiaoRiBaoBiao set nJCJianShu = nJCJianShu + _nJianShu, fJCZhongLiang = fJCZhongLiang + _fZhongLiang,
	                                       nCKJianShu = nCKJianShu - _nJianShu, fCKZhongLiang = fCKZhongLiang - _fZhongLiang,
										   nPWCKJianShu = nPWCKJianShu - _nJianShu, fPWCKZhongLiang = fPWCKZhongLiang - _fZhongLiang   
     		                         where szNianYueRi = _szNianYueRi and szCGCG = _szCGCG;
		UPDATE Table_YuanLiaoYueBaoBiao set nJCJianShu = nJCJianShu + _nJianShu, fJCZhongLiang = fJCZhongLiang + _fZhongLiang,
	                                        nCKJianShu = nCKJianShu - _nJianShu, fCKZhongLiang = fCKZhongLiang - _fZhongLiang,
										    nPWCKJianShu = nPWCKJianShu - _nJianShu, fPWCKZhongLiang = fPWCKZhongLiang - _fZhongLiang   
     		                         where szNianYue = _szNianYue and szCGCG = _szCGCG;
    ELSE
	    UPDATE Table_YuanLiaoRiBaoBiao set nJCJianShu = nJCJianShu + _nJianShu, fJCZhongLiang = fJCZhongLiang + _fZhongLiang,
	                                       nCKJianShu = nCKJianShu - _nJianShu, fCKZhongLiang = fCKZhongLiang - _fZhongLiang,
										   nXSDBCKJianShu = nXSDBCKJianShu - _nJianShu, fXSDBCKZhongLiang = fXSDBCKZhongLiang - _fZhongLiang   
     		                         where szNianYueRi = _szNianYueRi and szCGCG = _szCGCG;
		UPDATE Table_YuanLiaoYueBaoBiao set nJCJianShu = nJCJianShu + _nJianShu, fJCZhongLiang = fJCZhongLiang + _fZhongLiang,
	                                       nCKJianShu = nCKJianShu - _nJianShu, fCKZhongLiang = fCKZhongLiang - _fZhongLiang,
										   nXSDBCKJianShu = nXSDBCKJianShu - _nJianShu, fXSDBCKZhongLiang = fXSDBCKZhongLiang - _fZhongLiang   
     		                         where szNianYue = _szNianYue and szCGCG = _szCGCG;
    END IF;	
	DELETE from Table_YuanLiaoChuKu where id = $nCKID;      -- 删除出库记录
	
    select row_count() into _rowCount;
    IF _rowCount<1 THEN
       set $nRet = -1;
       rollback;
    ELSE
       set $nRet = 1;
       commit;
    END IF;
END
;;
DELIMITER ;

-- ----------------------------
-- Procedure structure for `pr_YuanLiaoChuKuXG`
-- ----------------------------
DROP PROCEDURE IF EXISTS `pr_YuanLiaoChuKuXG`;
DELIMITER ;;
CREATE DEFINER=`root`@`%` PROCEDURE `pr_YuanLiaoChuKuXG`(
in $szCangKu varchar(64),
in $szLeiBie varchar(32),
in $szGangChang  varchar(32),
in $szCaiZhi  varchar(32),
in $szGuiGe  varchar(32),
in $nJianShu  smallint,
in $fZhongLiang  float,
in $szBeiZhu  varchar(256),
in $szCGCG  varchar(128),
in $szKeHu  varchar(32),
in $nCKID int,
out $nRet int
)
BEGIN
    DECLARE  _rowCount int DEFAULT 0;
    DECLARE  _szRiQi  datetime;            -- 对应记录时间
    DECLARE  _nJianshu  int;               -- 修改前值
    DECLARE  _fZhongliang  float;      -- 修改前值
	DECLARE  _nJianshuCha  int;        -- 要修改的件数与原件数的差
    DECLARE  _fZhongliangCha  float;   -- 要修改的重量与原重量的差
    DECLARE  _nRBBID1 INT DEFAULT -9999;  -- 对应日报表记录ID
    DECLARE  _nYBBID1 INT DEFAULT -9999;  -- 对应月报表记录ID
  	DECLARE  _nRBBID2 INT DEFAULT -9999;  -- 对应日报表记录ID
    DECLARE  _nYBBID2 INT DEFAULT -9999;  -- 对应月报表记录ID
	DECLARE  _nKCID INT DEFAULT -9999; 
    DECLARE  _szCGCG  varchar(128);
    DECLARE _nJCJianShu int DEFAULT 0;
    DECLARE _fJCZhongLiang FLOAT DEFAULT 0;	
  	DECLARE _szNianYue   varchar(32) default '';   -- 年月时间，用于月报表
    DECLARE _szNianYueRi varchar(32) default '';   -- 年月日时间，用于日报表
	DECLARE  _nSXCKJianShu int default 0; -- COMMENT '酸洗出库件数当日累计',
    DECLARE  _fSXCKZhongLiang float default 0; -- COMMENT '酸洗出库重量当日累计',
    DECLARE  _nPWCKJianShu smallint default 0; --  COMMENT '喷丸出库件数当日累计',
    DECLARE  _fPWCKZhongLiang float default 0; -- COMMENT '喷丸出库重量当日累计',
    DECLARE  _nXSDBCKJianShu smallint default 0; -- COMMENT '销售或调调拔出库件数当日累计',
    DECLARE  _fXSDBCKZhongLiang float default 0; -- COMMENT '销售或调调拔出库重量当日累计',
	DECLARE  _nSXCKJianShu1 int default 0; -- COMMENT '酸洗出库件数当日累计',
    DECLARE  _fSXCKZhongLiang1 float default 0; -- COMMENT '酸洗出库重量当日累计',
    DECLARE  _nPWCKJianShu1 smallint default 0; --  COMMENT '喷丸出库件数当日累计',
    DECLARE  _fPWCKZhongLiang1 float default 0; -- COMMENT '喷丸出库重量当日累计',
    DECLARE  _nXSDBCKJianShu1 smallint default 0; -- COMMENT '销售或调调拔出库件数当日累计',
    DECLARE  _fXSDBCKZhongLiang1 float default 0; -- COMMENT '销售或调调拔出库重量当日累计',
	DECLARE  _szLeiBie varchar(32) default '';
	    
    SELECT nJianShu, fZhongLiang, szCGCG, szChuKuRiQi,szLeiBie INTO _nJianShu, _fZhongLiang, _szCGCG, _szRiQi,_szLeiBie  from Table_YuanLiaoChuKu where id = $nCKID;   -- 取出当时入库插入的szCGCG和对应报表记录ID,
   
    SET _szNianYueRi = date_format(_szRiQi,'%Y年%m月%d日');
    SET _szNianYue   = date_format(_szRiQi,'%Y年%m月');
	
_do:BEGIN    
	START TRANSACTION;
    SELECT id, nJianShu, fZhongLiang INTO _nKCID, _nJCJianShu, _fJCZhongLiang from table_YuanLiaoKuCun WHERE szCGCG = $szCGCG limit 1;  -- 查看 $szCGCG 类记录有没有该日期的记录 
    IF 	_nKCID = -9999 THEN 
	    SET $nRet = -2;       -- 无新类库存记录 
		LEAVE _do;
    END IF;			
	  IF _szCGCG <> $szCGCG THEN    -- 仓库、钢厂、材质、规格中有修改项

        -- 查找修改时间点 szCGCG 为 $szCGCG 是否有库存
        SELECT id, nJCJianShu, fJCZhongLiang INTO _nRBBID1, _nJCJianShu, _fJCZhongLiang FROM Table_YuanLiaoRiBaoBiao WHERE szCGCG = $szCGCG and szNianYueRi = _szNianYueRi limit 1;
		IF _nRBBID1 = -9999 THEN
		    SELECT id, nJCJianShu, fJCZhongLiang INTO _nRBBID2, _nJCJianShu, _fJCZhongLiang FROM Table_YuanLiaoRiBaoBiao WHERE szCGCG = $szCGCG and DATE(szRiQi) <= DATE(_szRiQi) ORDER BY szRiQi DESC limit 1;
        IF _nRBBID2 = -9999 THEN
		        SET $nRet = -5;       -- 修改时间点和修改时间点前无新类库存记录
		        LEAVE _do;
		    END IF; 
		END IF;
		
      IF $nJianShu > _nJCJianShu THEN
		    SET $nRet = -3;           -- 修改记录的时间点件数不够，此种情况建议对原类删除，再重新出库新类 
		    LEAVE _do;
	    END IF;
	    IF $fZhongLiang > _fJCZhongLiang THEN
		    SET $nRet = -4;           -- 修改记录的时间点重量不够，此种情况建议对原类删除，再重新出库新类 
		    LEAVE _do;
	    END IF;

	    -- 对库存处理
	    UPDATE table_YuanLiaoKuCun SET nJianShu = nJianShu + _nJianShu, fZhongLiang = fZhongLiang + _fZhongLiang where szCGCG = _szCGCG;  -- 原类库存加回原来出库的量
        UPDATE table_YuanLiaoKuCun SET nJianShu = nJianShu - $nJianShu, fZhongLiang = fZhongLiang - $fZhongLiang where szCGCG = $szCGCG;  -- 对新类库存进行出库
	
        -- 处理出库类型，新类相应出库类型应该加上出库数
        IF $szLeiBie = '酸洗' THEN
            SET _nSXCKJianShu = $nJianShu;
            SET _fSXCKZhongLiang = $fZhongLiang;
        ELSEIF $szLeiBie = '喷丸' THEN
            SET _nPWCKJianShu = $nJianShu;
            SET _fPWCKZhongLiang = $fZhongLiang;
        ELSE
            SET _nXSDBCKJianShu = $nJianShu;
            SET _fXSDBCKZhongLiang = $fZhongLiang;    
        END IF;		
        -- 原来的类需要减除相应的出库类型数
        IF _szLeiBie = '酸洗' THEN
            SET _nSXCKJianShu1 = _nJianShu;
            SET _fSXCKZhongLiang1 = _fZhongLiang;
        ELSEIF _szLeiBie = '喷丸' THEN
            SET _nPWCKJianShu1 = _nJianShu;
            SET _fPWCKZhongLiang1 = _fZhongLiang;
        ELSE
            SET _nXSDBCKJianShu1 = _nJianShu;
            SET _fXSDBCKZhongLiang1 = _fZhongLiang;
        END IF;		

	    -- 对日报表数据处理
        --  _szCGCG类型记录减掉修改前的数量	
        UPDATE Table_YuanLiaoRiBaoBiao set nJCJianShu = nJCJianShu + _nJianShu, fJCZhongLiang = fJCZhongLiang + _fZhongLiang,
										   nQRJianShu = nQRJianShu + _nJianShu, fQRZhongLiang = fQRZhongLiang + _fZhongLiang
     		                               where date(szRiQi) > date(_szRiQi) and szCGCG = _szCGCG;
		UPDATE Table_YuanLiaoRiBaoBiao set nJCJianShu = nJCJianShu + _nJianShu, fJCZhongLiang = fJCZhongLiang + _fZhongLiang,
		                                   nSXCKJianShu = nSXCKJianShu - _nSXCKJianShu1, fSXCKZhongLiang = fSXCKZhongLiang - _fSXCKZhongLiang1,                   -- 日酸洗出库总件数和总重量
                                           nPWCKJianShu = nPWCKJianShu - _nPWCKJianShu1, fPWCKZhongLiang = fPWCKZhongLiang - _fPWCKZhongLiang1,                   -- 日喷丸出库总件数和总重量
                                           nXSDBCKJianShu = nXSDBCKJianShu - _nXSDBCKJianShu1, fXSDBCKZhongLiang = fXSDBCKZhongLiang - _fXSDBCKZhongLiang1,       -- 日销售调拔出库总件数和总重量  
										   nCKJianShu = nCKJianShu - _nJianShu, fCKZhongLiang = fCKZhongLiang - _fZhongLiang  -- 出库件数减除
     		                         where szNianYueRi = _szNianYueRi  and szCGCG = _szCGCG;	
        
		IF _nRBBID1 <> -9999 THEN      -- 有当日记录
		    UPDATE Table_YuanLiaoRiBaoBiao SET nCKJianShu = nCKJianShu + $nJianShu, fCKZhongLiang = fCKZhongLiang + $fZhongLiang,  -- 出库件数  
			                                   nSXCKJianShu = nSXCKJianShu + _nSXCKJianShu, fSXCKZhongLiang = fSXCKZhongLiang + _fSXCKZhongLiang,                   -- 日酸洗出库总件数和总重量
                                               nPWCKJianShu = nPWCKJianShu + _nPWCKJianShu, fPWCKZhongLiang = fPWCKZhongLiang + _fPWCKZhongLiang,                   -- 日喷丸出库总件数和总重量
                                               nXSDBCKJianShu = nXSDBCKJianShu + _nXSDBCKJianShu, fXSDBCKZhongLiang = fXSDBCKZhongLiang + _fXSDBCKZhongLiang,       -- 日销售调拔出库总件数和总重量  
                                               nJCJianShu = nJCJianShu - $nJianShu, fJCZhongLiang = fJCZhongLiang - $fZhongLiang   -- 结存件数
                                         WHERE szNianYueRi = _szNianYueRi and szCGCG = $szCGCG;
		ELSE    -- 无当日记录，但有前日记录
		    insert into Table_YuanLiaoRiBaoBiao(szCangKu,  szGangChang,  szCaiZhi,  szGuiGe,  szCGCG,
                                    			nCKJianShu, fCKZhongLiang,          -- 出库件数
												nSXCKJianShu, fSXCKZhongLiang,      -- 日酸洗出库总件数和总重量
                                                nPWCKJianShu, fPWCKZhongLiang,      -- 日喷丸出库总件数和总重量
                                                nXSDBCKJianShu, fXSDBCKZhongLiang,  -- 日销售调拔出库总件数和总重量  
												nJCJianShu, fJCZhongLiang,          -- 结存件数                 
												nQRJianShu,  fQRZhongLiang,         -- 前日结存件数 
												szRiQi, szNianYueRi) 
                                        values ($szCangKu, $szGangChang, $szCaiZhi, $szGuiGe, $szCGCG, 
												$nJianShu,  $fZhongLiang,     -- 入库件数
							                    _nSXCKJianShu, _fSXCKZhongLiang,      -- 日酸洗出库总件数和总重量
                                                _nPWCKJianShu, _fPWCKZhongLiang,      -- 日喷丸出库总件数和总重量
                                                _nXSDBCKJianShu, _fXSDBCKZhongLiang,  -- 日销售调拔出库总件数和总重量  
								                _nJCJianShu - $nJianShu, _fJCZhongLiang - $fZhongLiang, -- 结存件数 = 前日的结存数减本次入库数
									            _nJCJianShu, _fJCZhongLiang, -- 前日结存件数 
										        _szRiQi,_szNianYueRi);		    
		END IF;
        UPDATE Table_YuanLiaoRiBaoBiao SET nJCJianShu = nJCJianShu - $nJianShu, fJCZhongLiang = fJCZhongLiang - $fZhongLiang,  -- 当日结存件数
                                           nQRJianShu = nQRJianShu - $nJianShu, fQRZhongLiang = fQRZhongLiang - $fZhongLiang   -- 前日结存件数										   
                                     WHERE date(szRiQi) > date(_szRiQi) and szCGCG = $szCGCG;	

									   
		SET _nJCJianShu = 0;
        SET _fJCZhongLiang = 0;		
		-- 对月报表数据处理
		--  _szCGCG类型记录减掉修改前的数量	
        UPDATE Table_YuanLiaoYueBaoBiao set nJCJianShu = nJCJianShu + _nJianShu, fJCZhongLiang = fJCZhongLiang + _fZhongLiang,
										    nQYJianShu = nQYJianShu + _nJianShu, fQYZhongLiang = fQYZhongLiang + _fZhongLiang
     		                          where date(szRiQi) > date(_szRiQi) and szCGCG = _szCGCG;
		UPDATE Table_YuanLiaoYueBaoBiao set nJCJianShu = nJCJianShu + _nJianShu, fJCZhongLiang = fJCZhongLiang + _fZhongLiang,
		                                    nSXCKJianShu = nSXCKJianShu - _nSXCKJianShu1, fSXCKZhongLiang = fSXCKZhongLiang - _fSXCKZhongLiang1,                   -- 日酸洗出库总件数和总重量
                                            nPWCKJianShu = nPWCKJianShu - _nPWCKJianShu1, fPWCKZhongLiang = fPWCKZhongLiang - _fPWCKZhongLiang1,                   -- 日喷丸出库总件数和总重量
                                            nXSDBCKJianShu = nXSDBCKJianShu - _nXSDBCKJianShu1, fXSDBCKZhongLiang = fXSDBCKZhongLiang - _fXSDBCKZhongLiang1,       -- 日销售调拔出库总件数和总重量  
										    nCKJianShu = nCKJianShu - _nJianShu, fCKZhongLiang = fCKZhongLiang - _fZhongLiang                                      -- 出库件数减除
     		                          where szNianYue = _szNianYue  and szCGCG = _szCGCG;	
		
		
		SELECT id, nJCJianShu, fJCZhongLiang INTO _nYBBID1, _nJCJianShu, _fJCZhongLiang from Table_YuanLiaoYueBaoBiao WHERE szNianYue = _szNianYue AND szCGCG = $szCGCG limit 1;  -- 查看 $szCGCG 类记录有没有该日期的记录 
		IF _nYBBID1 = -9999 THEN      -- 没有新类当日记录，查前面的记录
		    SELECT id, nJCJianShu, fJCZhongLiang INTO _nYBBID2, _nJCJianShu, _fJCZhongLiang from Table_YuanLiaoYueBaoBiao WHERE date(szRiQi) <= date(_szRiQi) AND szCGCG = $szCGCG limit 1;  -- 查看 $szCGCG 类前日记录，到这里肯定会有前日记录。		
		    IF _nYBBID2 <> -9999 THEN   -- 无当日记录，无前日记录
			    insert into Table_YuanLiaoYueBaoBiao(szCangKu,  szGangChang,  szCaiZhi,  szGuiGe,  szCGCG,
                                    			     nCKJianShu, fCKZhongLiang,    -- 出库件数
												     nSXCKJianShu, fSXCKZhongLiang,      -- 月酸洗出库总件数和总重量
                                                     nPWCKJianShu, fPWCKZhongLiang,      -- 月喷丸出库总件数和总重量
                                                     nXSDBCKJianShu, fXSDBCKZhongLiang,  -- 月销售调拔出库总件数和总重量  
												     nJCJianShu, fJCZhongLiang,          -- 结存件数                 
												     nQYJianShu,  fQYZhongLiang,         -- 前月结存件数 
												     szRiQi, szNianYue) 
                                             values ($szCangKu, $szGangChang, $szCaiZhi, $szGuiGe, $szCGCG, 
											    	 $nJianShu,  $fZhongLiang,             -- 入库件数
												     _nSXCKJianShu, _fSXCKZhongLiang,      -- 月酸洗出库总件数和总重量
                                                     _nPWCKJianShu, _fPWCKZhongLiang,      -- 月喷丸出库总件数和总重量
                                                     _nXSDBCKJianShu, _fXSDBCKZhongLiang,  -- 月销售调拔出库总件数和总重量  
												     _nJCJianShu - $nJianShu, _fJCZhongLiang - $fZhongLiang, -- 结存件数 = 前日的结存数减本次入库数
									                 _nJCJianShu, _fJCZhongLiang,                            -- 前月结存件数 
									                _szRiQi,_szNianYue);		    
			END IF;	
        ELSE
		    -- 有当日记录
            UPDATE Table_YuanLiaoYueBaoBiao SET nCKJianShu = nCKJianShu + $nJianShu, fCKZhongLiang = fCKZhongLiang + $fZhongLiang,                                   -- 出库件数  
			                                    nSXCKJianShu = nSXCKJianShu + _nSXCKJianShu, fSXCKZhongLiang = fSXCKZhongLiang + _fSXCKZhongLiang,                   -- 月酸洗出库总件数和总重量
                                                nPWCKJianShu = nPWCKJianShu + _nPWCKJianShu, fPWCKZhongLiang = fPWCKZhongLiang + _fPWCKZhongLiang,                   -- 月喷丸出库总件数和总重量
                                                nXSDBCKJianShu = nXSDBCKJianShu + _nXSDBCKJianShu, fXSDBCKZhongLiang = fXSDBCKZhongLiang + _fXSDBCKZhongLiang,       -- 月销售调拔出库总件数和总重量  
                                                nJCJianShu = nJCJianShu - $nJianShu, fJCZhongLiang = fJCZhongLiang - $fZhongLiang                                    -- 结存件数
                                           WHERE szNianYue = _szNianYue and szCGCG = $szCGCG;		
		END IF;
		UPDATE Table_YuanLiaoYueBaoBiao SET nJCJianShu = nJCJianShu - $nJianShu, fJCZhongLiang = fJCZhongLiang - $fZhongLiang,  -- 当月结存件数
                                            nQYJianShu = nQYJianShu - $nJianShu, fQYZhongLiang = fQYZhongLiang - $fZhongLiang   -- 前月结存件数										   
                                      WHERE date(szRiQi) > date(_szRiQi) and szCGCG = $szCGCG;	
	ELSE
	    SET _nJianshuCha = $nJianshu - _nJianshu;
		IF ABS($fZhongliang - _fZhongliang) < 1E-5 THEN  -- 浮点数相等
		    SET _fZhongliangCha = 0;
		ELSE
		    SET _fZhongliangCha = $fZhongliang - _fZhongliang;
		END IF;
        	
		IF _nJianshuCha <> 0 OR _fZhongliangCha <> 0 THEN   -- 件数和重量有改变
       SELECT nJCJianShu, fJCZhongLiang INTO _nJCJianShu, _fJCZhongLiang FROM Table_YuanLiaoRiBaoBiao WHERE szCGCG = _szCGCG and szNianYueRi = _szNianYueRi limit 1;
          IF _nJianshuCha > _nJCJianShu THEN
		        SET $nRet = -3;           -- 修改记录的时间点件数不够，此种情况建议对原类删除，再重新出库新类 
		        LEAVE _do;
	      END IF;
	      IF _fZhongliangCha > _fJCZhongLiang THEN
		        SET $nRet = -4;           -- 修改记录的时间点重量不够，此种情况建议对原类删除，再重新出库新类 
		        LEAVE _do;
	      END IF;
            -- 更新库存		
		    UPDATE table_YuanLiaoKuCun SET nJianShu = nJianShu - _nJianshuCha, fZhongLiang = fZhongLiang - _fZhongliangCha where szCGCG = _szCGCG;   -- 修改库存数据
            IF _szLeiBie = $szLeiBie THEN  -- 出库类别无修改

                SET _nSXCKJianShu1 = 0;
                SET _fSXCKZhongLiang1 = 0;
                SET _nPWCKJianShu1 = 0;
                SET _fPWCKZhongLiang1 = 0;
                SET _nXSDBCKJianShu1 = 0;
                SET _fXSDBCKZhongLiang1 = 0;

                IF $szLeiBie = '酸洗' THEN
                    SET _nSXCKJianShu1 = _nJianshuCha;
                    SET _fSXCKZhongLiang1 = _fZhongliangCha;
                ELSEIF $szLeiBie = '喷丸' THEN
                    SET _nPWCKJianShu1 = _nJianshuCha;
                    SET _fPWCKZhongLiang1 = _fZhongliangCha;
                ELSE
                    SET _nXSDBCKJianShu1 = _nJianshuCha;
                    SET _fXSDBCKZhongLiang1 = _fZhongliangCha;
                END IF;


		            UPDATE Table_YuanLiaoRiBaoBiao set nJCJianShu = nJCJianShu - _nJianshuCha, fJCZhongLiang = fJCZhongLiang - _fZhongliangCha,   -- 件数和重量
                                                   nQRJianShu = nQRJianShu - _nJianshuCha, fQRZhongLiang = fQRZhongLiang - _fZhongliangCha
     		                                    where date(szRiQi) > date(_szRiQi) and szCGCG = _szCGCG;
								   
			          UPDATE Table_YuanLiaoRiBaoBiao set nCKJianShu = nCKJianShu + _nJianshuCha, fCKZhongLiang = fCKZhongLiang + _fZhongliangCha,
                                                   nSXCKJianShu = nSXCKJianShu + _nSXCKJianShu1, fSXCKZhongLiang = fSXCKZhongLiang + _fSXCKZhongLiang1,                   -- 日酸洗出库总件数和总重量
                                                   nPWCKJianShu = nPWCKJianShu + _nPWCKJianShu1, fPWCKZhongLiang = fPWCKZhongLiang + _fPWCKZhongLiang1,                   -- 日喷丸出库总件数和总重量
                                                   nXSDBCKJianShu = nXSDBCKJianShu + _nXSDBCKJianShu1, fXSDBCKZhongLiang = fXSDBCKZhongLiang + _fXSDBCKZhongLiang1,       -- 日销售调拔出库总件数和总重量 
		                                               nJCJianShu = nJCJianShu - _nJianshuCha, fJCZhongLiang = fJCZhongLiang - _fZhongliangCha					                		    		       
     		                                    where szNianYueRi = _szNianYueRi  and szCGCG = _szCGCG;	
												
                UPDATE Table_YuanLiaoYueBaoBiao set nJCJianShu = nJCJianShu - _nJianshuCha, fJCZhongLiang = fJCZhongLiang - _fZhongliangCha,
                                                    nQYJianShu = nQYJianShu - _nJianshuCha, fQYZhongLiang = fQYZhongLiang - _fZhongliangCha
     		                                    where date(szRiQi) > date(_szRiQi) and szCGCG = _szCGCG;
										   
			          UPDATE Table_YuanLiaoYueBaoBiao set nCKJianShu = nCKJianShu + _nJianshuCha, fCKZhongLiang = fCKZhongLiang + _fZhongliangCha,
                                                nSXCKJianShu = nSXCKJianShu + _nSXCKJianShu1, fSXCKZhongLiang = fSXCKZhongLiang + _fSXCKZhongLiang1,                   -- 月酸洗出库总件数和总重量
                                                nPWCKJianShu = nPWCKJianShu + _nPWCKJianShu1, fPWCKZhongLiang = fPWCKZhongLiang + _fPWCKZhongLiang1,                   -- 月喷丸出库总件数和总重量
                                                nXSDBCKJianShu = nXSDBCKJianShu + _nXSDBCKJianShu1, fXSDBCKZhongLiang = fXSDBCKZhongLiang + _fXSDBCKZhongLiang1,       -- 月销售调拔出库总件数和总重量  
		                                            nJCJianShu = nJCJianShu - _nJianshuCha, fJCZhongLiang = fJCZhongLiang - _fZhongliangCha					                		    		       
     		                                    where szNianYue = _szNianYue  and szCGCG = _szCGCG;	
            ELSE
                SET _nSXCKJianShu = 0;
                SET _fSXCKZhongLiang = 0;
                SET _nPWCKJianShu = 0;
                SET _fPWCKZhongLiang = 0;
                SET _nXSDBCKJianShu = 0;
                SET _fXSDBCKZhongLiang = 0;
                IF $szLeiBie = '酸洗' THEN
                    SET _nSXCKJianShu = $nJianshu;
                    SET _fSXCKZhongLiang = $fZhongliang;
                ELSEIF $szLeiBie = '喷丸' THEN
                    SET _nPWCKJianShu = $nJianshu;
                    SET _fPWCKZhongLiang = $fZhongliang;
                ELSE
                    SET _nXSDBCKJianShu = $nJianshu;
                    SET _fXSDBCKZhongLiang = $fZhongliang;
                END IF;

                IF _szLeiBie = '酸洗' THEN
                    SET _nSXCKJianShu = -_nJianshu;
                    SET _fSXCKZhongLiang = -_fZhongliang;
                ELSEIF _szLeiBie = '喷丸' THEN
                    SET _nPWCKJianShu = -_nJianshu;
                    SET _fPWCKZhongLiang = -_fZhongliang;
                ELSE
                    SET _nXSDBCKJianShu = -_nJianshu;
                    SET _fXSDBCKZhongLiang = -_fZhongliang;
                END IF;
                UPDATE Table_YuanLiaoRiBaoBiao set nJCJianShu = nJCJianShu - _nJianshuCha, fJCZhongLiang = fJCZhongLiang - _fZhongliangCha,   -- 件数和重量
                                                   nQRJianShu = nQRJianShu - _nJianshuCha, fQRZhongLiang = fQRZhongLiang - _fZhongliangCha
     		                                    where date(szRiQi) > date(_szRiQi) and szCGCG = _szCGCG;
								   
			          UPDATE Table_YuanLiaoRiBaoBiao set nCKJianShu = nCKJianShu + _nJianshuCha, fCKZhongLiang = fCKZhongLiang + _fZhongliangCha,
                                               nSXCKJianShu = nSXCKJianShu + _nSXCKJianShu, fSXCKZhongLiang = fSXCKZhongLiang + _fSXCKZhongLiang,                   -- 日酸洗出库总件数和总重量
                                               nPWCKJianShu = nPWCKJianShu + _nPWCKJianShu, fPWCKZhongLiang = fPWCKZhongLiang + _fPWCKZhongLiang,                   -- 日喷丸出库总件数和总重量
                                               nXSDBCKJianShu = nXSDBCKJianShu + _nXSDBCKJianShu, fXSDBCKZhongLiang = fXSDBCKZhongLiang + _fXSDBCKZhongLiang,       -- 日销售调拔出库总件数和总重量 
		                                           nJCJianShu = nJCJianShu - _nJianshuCha, fJCZhongLiang = fJCZhongLiang - _fZhongliangCha					                		    		       
     		                                    where szNianYueRi = _szNianYueRi  and szCGCG = _szCGCG;	
												
                UPDATE Table_YuanLiaoYueBaoBiao set nJCJianShu = nJCJianShu - _nJianshuCha, fJCZhongLiang = fJCZhongLiang - _fZhongliangCha,
                                                    nQYJianShu = nQYJianShu - _nJianshuCha, fQYZhongLiang = fQYZhongLiang - _fZhongliangCha
     		                                    where date(szRiQi) > date(_szRiQi) and szCGCG = _szCGCG;
										   
			          UPDATE Table_YuanLiaoYueBaoBiao set nCKJianShu = nCKJianShu + _nJianshuCha, fCKZhongLiang = fCKZhongLiang + _fZhongliangCha,
                                                nSXCKJianShu = nSXCKJianShu + _nSXCKJianShu, fSXCKZhongLiang = fSXCKZhongLiang + _fSXCKZhongLiang,                   -- 月酸洗出库总件数和总重量
                                                nPWCKJianShu = nPWCKJianShu + _nPWCKJianShu, fPWCKZhongLiang = fPWCKZhongLiang + _fPWCKZhongLiang,                   -- 月喷丸出库总件数和总重量
                                                nXSDBCKJianShu = nXSDBCKJianShu + _nXSDBCKJianShu, fXSDBCKZhongLiang = fXSDBCKZhongLiang + _fXSDBCKZhongLiang,       -- 月销售调拔出库总件数和总重量  
		                                            nJCJianShu = nJCJianShu - _nJianshuCha, fJCZhongLiang = fJCZhongLiang - _fZhongliangCha					                		    		       
     		                                    where szNianYue = _szNianYue  and szCGCG = _szCGCG;	
            END IF;
        ELSE
            IF _szLeiBie <> $szLeiBie THEN  -- 只修改出库类别
                SET _nSXCKJianShu = 0;
                SET _fSXCKZhongLiang = 0;
                SET _nPWCKJianShu = 0;
                SET _fPWCKZhongLiang = 0;
                SET _nXSDBCKJianShu = 0;
                SET _fXSDBCKZhongLiang = 0;
                IF $szLeiBie = '酸洗' THEN
                    SET _nSXCKJianShu = $nJianshu;
                    SET _fSXCKZhongLiang = $fZhongliang;
                ELSEIF $szLeiBie = '喷丸' THEN
                    SET _nPWCKJianShu = $nJianshu;
                    SET _fPWCKZhongLiang = $fZhongliang;
                ELSE
                    SET _nXSDBCKJianShu = $nJianshu;
                    SET _fXSDBCKZhongLiang = $fZhongliang;
                END IF;
                IF _szLeiBie = '酸洗' THEN
                    SET _nSXCKJianShu = -$nJianshu;
                    SET _fSXCKZhongLiang = -$fZhongliang;
                ELSEIF _szLeiBie = '喷丸' THEN
                    SET _nPWCKJianShu = -$nJianshu;
                    SET _fPWCKZhongLiang = -$fZhongliang;
                ELSE
                    SET _nXSDBCKJianShu = -$nJianshu;
                    SET _fXSDBCKZhongLiang = -$fZhongliang;
                END IF;
                UPDATE Table_YuanLiaoRiBaoBiao set nSXCKJianShu = nSXCKJianShu + _nSXCKJianShu, fSXCKZhongLiang = fSXCKZhongLiang + _fSXCKZhongLiang,                   -- 日酸洗出库总件数和总重量
                                                   nPWCKJianShu = nPWCKJianShu + _nPWCKJianShu, fPWCKZhongLiang = fPWCKZhongLiang + _fPWCKZhongLiang,                   -- 日喷丸出库总件数和总重量
                                                   nXSDBCKJianShu = nXSDBCKJianShu + _nXSDBCKJianShu, fXSDBCKZhongLiang = fXSDBCKZhongLiang + _fXSDBCKZhongLiang       -- 日销售调拔出库总件数和总重量 				                		    		       
     		                                    where szNianYueRi = _szNianYueRi  and szCGCG = _szCGCG;	
                UPDATE Table_YuanLiaoYueBaoBiao set nSXCKJianShu = nSXCKJianShu + _nSXCKJianShu, fSXCKZhongLiang = fSXCKZhongLiang + _fSXCKZhongLiang,                   -- 月酸洗出库总件数和总重量
                                                    nPWCKJianShu = nPWCKJianShu + _nPWCKJianShu, fPWCKZhongLiang = fPWCKZhongLiang + _fPWCKZhongLiang,                   -- 月喷丸出库总件数和总重量
                                                    nXSDBCKJianShu = nXSDBCKJianShu + _nXSDBCKJianShu, fXSDBCKZhongLiang = fXSDBCKZhongLiang + _fXSDBCKZhongLiang       -- 月销售调拔出库总件数和总重量  			                		    		       
     		                                    where szNianYue = _szNianYue  and szCGCG = _szCGCG;	
            END IF;					   					   
		    END IF;       	
	
    END IF;	
	
	-- 修改出库记录
	UPDATE Table_YuanLiaoChuKu set szCangKu = $szCangKu,szGangChang = $szGangChang, szCaiZhi = $szCaiZhi, szGuiGe = $szGuiGe,szCGCG = $szCGCG,
                                   nJianShu = $nJianShu,fZhongLiang = $fZhongLiang,szBeiZhu = $szBeiZhu, szKeHu = $szKeHu,szLeiBie = $szLeiBie
     		                   where id = $nCKID;		
	
        select row_count() into _rowCount;
        IF _rowCount<1 THEN
            set $nRet = -1;
            rollback;
        ELSE
            set $nRet = 1;
            commit;
        END IF;
    END _do;    
END
;;
DELIMITER ;

-- ----------------------------
-- Procedure structure for `pr_YuanLiaoRuKu`
-- ----------------------------
DROP PROCEDURE IF EXISTS `pr_YuanLiaoRuKu`;
DELIMITER ;;
CREATE DEFINER=`root`@`%` PROCEDURE `pr_YuanLiaoRuKu`(
in $szCangKu varchar(64),
in $szGangChang  varchar(32),
in $szCaiZhi  varchar(32),
in $szGuiGe  varchar(32),
in $nJianShu  smallint,
in $fZhongLiang  float,
in $szLuRu  varchar(32),
in $szJianYan  varchar(32),
in $szBeiZhu  varchar(256),
in $szCGCG  varchar(128),
in $szKeHu  varchar(32),
out $nRet int
)
BEGIN
DECLARE  _rowCount int DEFAULT 0;
DECLARE  _nJCJianShu  SMALLINT DEFAULT 0; -- 当日结存
DECLARE  _fJCZhongLiang float DEFAULT 0;
DECLARE  _szRiQi datetime DEFAULT NOW();
DECLARE  _nRBBID INT DEFAULT -9999; 
DECLARE  _nYBBID INT DEFAULT -9999; 
DECLARE  _nKCID INT DEFAULT -9999; 

DECLARE _NianYue   varchar(32) default  date_format(_szRiQi,'%Y年%m月');      -- 年月时间，用于月报表
DECLARE _NianYueRi varchar(32) default date_format(_szRiQi,'%Y年%m月%d日');   -- 年月日时间，用于日报表

START TRANSACTION;

SELECT id INTO _nKCID from table_YuanLiaoKuCun where szCGCG = $szCGCG LIMIT 1;
IF _nKCID = -9999 THEN
    INSERT INTO table_YuanLiaoKuCun (szCangKu,  szGangChang,  szCaiZhi,  szGuiGe,  szCGCG, szKeHu, nJianShu, fZhongLiang) VALUES ($szCangKu, $szGangChang, $szCaiZhi, $szGuiGe, $szCGCG, $szKeHu, $nJianShu, $fZhongLiang);
ELSE
    UPDATE table_YuanLiaoKuCun SET nJianShu = nJianShu + $nJianShu, fZhongLiang = fZhongLiang + $fZhongLiang where id = _nKCID;
END IF;

SELECT id into _nRBBID from Table_YuanLiaoRiBaoBiao where szNianYueRi = _NianYueRi and szCGCG = $szCGCG LIMIT 1; -- 查看是否已有该类日报表记录
IF _nRBBID = -9999 THEN    -- 还没有该日期的记录，需要插入一条
    SELECT nJCJianShu,fJCZhongLiang INTO _nJCJianShu, _fJCZhongLiang FROM Table_YuanLiaoRiBaoBiao WHERE szCGCG = $szCGCG ORDER BY id DESC LIMIT 1;
    insert into Table_YuanLiaoRiBaoBiao(szCangKu,  szGangChang,  szCaiZhi,  szGuiGe,  szCGCG,  nRKJianShu, fRKZhongLiang, nJCJianShu,              fJCZhongLiang,                 nQRJianShu,  fQRZhongLiang,  szRiQi, szNianYueRi) 
                                values ($szCangKu, $szGangChang, $szCaiZhi, $szGuiGe, $szCGCG, $nJianShu,  $fZhongLiang,  $nJianShu + _nJCJianShu, $fZhongLiang + _fJCZhongLiang, _nJCJianShu, _fJCZhongLiang, _szRiQi,_NianYueRi);
ELSE
    UPDATE Table_YuanLiaoRiBaoBiao SET nRKJianShu = nRKJianShu + $nJianShu, fRKZhongLiang = fRKZhongLiang + $fZhongLiang,    
                                       nJCJianShu = nJCJianShu + $nJianShu, fJCZhongLiang = fJCZhongLiang + $fZhongLiang 
                                   WHERE id = _nRBBID;
END IF;

SET _nJCJianShu = 0;
SET _fJCZhongLiang = 0;
SELECT id into _nYBBID from Table_YuanLiaoYueBaoBiao where szNianYue = _NianYue and szCGCG = $szCGCG LIMIT 1; -- 查看是否已有该类月报表记录

IF _nYBBID = -9999 THEN    -- 还没有该日期的记录，需要插入一条
    SELECT nJCJianShu,fJCZhongLiang INTO _nJCJianShu, _fJCZhongLiang FROM Table_YuanLiaoYueBaoBiao WHERE szCGCG = $szCGCG ORDER BY id DESC LIMIT 1;
    insert into Table_YuanLiaoYueBaoBiao(szCangKu,  szGangChang,  szCaiZhi, szGuiGe, szCGCG,  nRKJianShu, fRKZhongLiang, nJCJianShu,              fJCZhongLiang,                 nQYJianShu,  fQYZhongLiang,  szRiQi, szNianYue) 
                                 values ($szCangKu, $szGangChang, $szCaiZhi,$szGuiGe,$szCGCG, $nJianShu,  $fZhongLiang,  $nJianShu + _nJCJianShu, $fZhongLiang + _fJCZhongLiang, _nJCJianShu, _fJCZhongLiang, _szRiQi,_NianYue);
ELSE
    UPDATE Table_YuanLiaoYueBaoBiao SET nRKJianShu = nRKJianShu + $nJianShu, fRKZhongLiang = fRKZhongLiang + $fZhongLiang,    
                                        nJCJianShu = nJCJianShu + $nJianShu, fJCZhongLiang = fJCZhongLiang + $fZhongLiang 
                                    WHERE id = _nYBBID;
END IF;

insert into Table_YuanLiaoRuKu(szCangKu,  szGangChang,  szCaiZhi,  szGuiGe,  nJianShu,  fZhongLiang,  szLuRu,  szJianYan,  szBeiZhu, szKeHu, szCGCG) 
                       values ($szCangKu, $szGangChang, $szCaiZhi, $szGuiGe, $nJianShu, $fZhongLiang, $szLuRu, $szJianYan, $szBeiZhu,$szKeHu,$szCGCG);
select row_count() into _rowCount;
IF _rowCount<1 THEN
   set $nRet = -1;
   rollback;
ELSE
   set $nRet = 1;
   commit;
END IF;
END
;;
DELIMITER ;

-- ----------------------------
-- Procedure structure for `pr_YuanLiaoRuKuSC`
-- ----------------------------
DROP PROCEDURE IF EXISTS `pr_YuanLiaoRuKuSC`;
DELIMITER ;;
CREATE DEFINER=`root`@`%` PROCEDURE `pr_YuanLiaoRuKuSC`(
in $nRKID int,
out $nRet int
)
BEGIN
    DECLARE  _rowCount int DEFAULT 0;
    DECLARE  _szRuKuRiQi  datetime;        -- 对应记录时间
    DECLARE  _nJianshu  int;       -- 修改前值
    DECLARE  _fZhongliang  float;  -- 修改前值
    DECLARE  _szCGCG  varchar(128);
	  DECLARE _szNianYue   varchar(32) default '';       -- 年月时间，用于月报表
    DECLARE _szNianYueRi varchar(32) default '';       -- 年月日时间，用于日报表
      
    SELECT nJianShu, fZhongLiang, szCGCG, szRuKuRiQi INTO _nJianShu, _fZhongLiang, _szCGCG, _szRuKuRiQi from Table_YuanLiaoRuKu where id = $nRKID;   -- 取出当时入库插入的szCGCG和对应数据
    SET _szNianYueRi = date_format(_szRuKuRiQi,'%Y年%m月%d日');
    SET _szNianYue   = date_format(_szRuKuRiQi,'%Y年%m月');

	START TRANSACTION;   	
	
  UPDATE table_YuanLiaoKuCun SET nJianShu = nJianShu - _nJianshu, fZhongLiang = fZhongLiang - _fZhongliang where szCGCG = _szCGCG;   -- 库存加回删除数量 
	-- 更新原CGCG组合记录后的所有原同类记录的数据，与要修改的报表记录同一天的记录只更新当日结存，非同一天记录前日和当日结存都要更新
    UPDATE Table_YuanLiaoRiBaoBiao set nJCJianShu = nJCJianShu - _nJianShu, fJCZhongLiang = fJCZhongLiang - _fZhongLiang,
	                                   nQRJianShu = nQRJianShu - _nJianShu, fQRZhongLiang = fQRZhongLiang - _fZhongLiang
     		                       where DATE(szRiQi) > DATE(_szRuKuRiQi) and szCGCG = _szCGCG;
	UPDATE Table_YuanLiaoYueBaoBiao set nJCJianShu = nJCJianShu - _nJianShu, fJCZhongLiang = fJCZhongLiang - _fZhongLiang,
	                                   nQYJianShu = nQYJianShu - _nJianShu, fQYZhongLiang = fQYZhongLiang - _fZhongLiang
     		                       where DATE(szRiQi) > DATE(_szRuKuRiQi) and szCGCG = _szCGCG;							   
    UPDATE Table_YuanLiaoRiBaoBiao set nJCJianShu = nJCJianShu - _nJianShu, fJCZhongLiang = fJCZhongLiang - _fZhongLiang,
	                                       nRKJianShu = nRKJianShu - _nJianShu, fRKZhongLiang = fRKZhongLiang - _fZhongLiang
     		                         where szNianYueRi = _szNianYueRi and szCGCG = _szCGCG;
	UPDATE Table_YuanLiaoYueBaoBiao set nJCJianShu = nJCJianShu - _nJianShu, fJCZhongLiang = fJCZhongLiang - _fZhongLiang,
	                                       nRKJianShu = nRKJianShu - _nJianShu, fRKZhongLiang = fRKZhongLiang - _fZhongLiang 
     		                         where szNianYue = _szNianYue and szCGCG = _szCGCG;

	DELETE from Table_YuanLiaoRuKu where id = $nRKID;      -- 删除入库记录
	
    select row_count() into _rowCount;
    IF _rowCount<1 THEN
       set $nRet = -1;
       rollback;
    ELSE
       set $nRet = 1;
       commit;
    END IF;
END
;;
DELIMITER ;

-- ----------------------------
-- Procedure structure for `pr_YuanLiaoRuKuXG`
-- ----------------------------
DROP PROCEDURE IF EXISTS `pr_YuanLiaoRuKuXG`;
DELIMITER ;;
CREATE DEFINER=`root`@`%` PROCEDURE `pr_YuanLiaoRuKuXG`(
in $szCangKu varchar(64),
in $szGangChang  varchar(32),
in $szCaiZhi  varchar(32),
in $szGuiGe  varchar(32),
in $nJianShu  smallint,
in $fZhongLiang  float,
in $szBeiZhu  varchar(256),
in $szCGCG  varchar(128),
in $szKeHu  varchar(32),
in $nRKID int,
out $nRet int
)
BEGIN
    DECLARE  _rowCount int DEFAULT 0;
    DECLARE  _szRiQi  datetime;            -- 对应记录时间
    DECLARE  _nJianshu  int;               -- 修改前值
    DECLARE  _fZhongliang  float;      -- 修改前值
	  DECLARE  _nJianshuCha  int;        -- 要修改的件数与原件数的差
    DECLARE  _fZhongliangCha  float;   -- 要修改的重量与原重量的差
    DECLARE  _nRBBID INT DEFAULT 0;  -- 对应日报表记录ID
    DECLARE  _nYBBID INT DEFAULT 0;  -- 对应月报表记录ID
  	DECLARE  _nRBBID2 INT DEFAULT -9999;  -- 对应日报表记录ID
    DECLARE  _nYBBID2 INT DEFAULT -9999;  -- 对应月报表记录ID
	  DECLARE  _nKCID INT DEFAULT -9999; 
    DECLARE  _szCGCG  varchar(128);
    DECLARE _nJCJianShu int DEFAULT 0;
    DECLARE _fJCZhongLiang FLOAT DEFAULT 0;	
  	DECLARE _szNianYue   varchar(32) default '';   -- 年月时间，用于月报表
    DECLARE _szNianYueRi varchar(32) default '';   -- 年月日时间，用于日报表
	    
    SELECT nJianShu, fZhongLiang, szCGCG, szRuKuRiQi INTO _nJianShu, _fZhongLiang, _szCGCG, _szRiQi  from Table_YuanLiaoRuKu where id = $nRKID;   -- 取出当时入库插入的szCGCG和对应报表记录ID,
   
    SET _szNianYueRi = date_format(_szRiQi,'%Y年%m月%d日');
    SET _szNianYue   = date_format(_szRiQi,'%Y年%m月');
    
	  START TRANSACTION;
	    IF _szCGCG <> $szCGCG THEN    -- 仓库、钢厂、材质、规格中有修改项	
		
		    UPDATE table_YuanLiaoKuCun SET nJianShu = nJianShu - _nJianShu, fZhongLiang = fZhongLiang - _fZhongLiang where szCGCG = _szCGCG;  -- 原类库存减除

            SELECT id, nJianShu, fZhongLiang INTO _nKCID, _nJCJianShu, _fJCZhongLiang from table_YuanLiaoKuCun where szCGCG = $szCGCG LIMIT 1;
            IF _nKCID = -9999 THEN
			    -- 无新类库存则新生成
                INSERT INTO table_YuanLiaoKuCun (szCangKu,  szGangChang,  szCaiZhi,  szGuiGe,  szCGCG, szKeHu, nJianShu, fZhongLiang) VALUES ($szCangKu, $szGangChang, $szCaiZhi, $szGuiGe, $szCGCG, $szKeHu, $nJianShu, $fZhongLiang);
            ELSE
			    -- 有新类库存则加入新库存
                UPDATE table_YuanLiaoKuCun SET nJianShu = nJianShu + $nJianShu, fZhongLiang = fZhongLiang + $fZhongLiang where id = _nKCID;
            END IF;
		
	        -- 对日报表数据处理
            --  _szCGCG类型记录减掉修改前的数量	
            UPDATE Table_YuanLiaoRiBaoBiao set nJCJianShu = nJCJianShu - _nJianShu, fJCZhongLiang = fJCZhongLiang - _fZhongLiang,
										   nQRJianShu = nQRJianShu - _nJianShu, fQRZhongLiang = fQRZhongLiang - _fZhongLiang
     		                               where date(szRiQi) > date(_szRiQi) and szCGCG = _szCGCG;
		    UPDATE Table_YuanLiaoRiBaoBiao set nJCJianShu = nJCJianShu - _nJianShu, fJCZhongLiang = fJCZhongLiang - _fZhongLiang,
										   nRKJianShu = nRKJianShu - _nJianShu, fRKZhongLiang = fRKZhongLiang - _fZhongLiang
     		                               where szNianYueRi = _szNianYueRi  and szCGCG = _szCGCG;							   
		    -- $szCGCG类型记录处理							   
	        SELECT id INTO _nRBBID2 from Table_YuanLiaoRiBaoBiao WHERE szNianYueRi = _szNianYueRi AND szCGCG = $szCGCG limit 1;  -- 查看 $szCGCG 类记录有没有该日期的记录 
            IF _nRBBID2 = -9999 THEN    -- 没有该日对应记录
		        SELECT id,nJCJianShu,fJCZhongLiang INTO _nRBBID2,_nJCJianShu, _fJCZhongLiang from Table_YuanLiaoRiBaoBiao WHERE szCGCG = $szCGCG AND date(szRiQi) < date(_szRiQi) ORDER BY szRiQi desc limit 1;  -- 查看 $szCGCG 类记录有没有以前日期的记录 
			    IF _nRBBID2 = -9999 THEN    -- 还没有$szCGCG类的对应记录, 那需要插入一条新的记录
			        insert into Table_YuanLiaoRiBaoBiao(szCangKu,  szGangChang,  szCaiZhi,  szGuiGe,  szCGCG, 
                                    					nRKJianShu, fRKZhongLiang,    -- 入库件数
														nJCJianShu, fJCZhongLiang,    -- 结存件数
														szRiQi,  szNianYueRi) 
                                               values ($szCangKu, $szGangChang, $szCaiZhi, $szGuiGe, $szCGCG, 
											            $nJianShu,  $fZhongLiang,     -- 入库件数  
														$nJianShu,  $fZhongLiang,     -- 结存件数
														_szRiQi, _szNianYueRi);
			    ELSE   -- 有前日记录
				    insert into Table_YuanLiaoRiBaoBiao(szCangKu,  szGangChang,  szCaiZhi,  szGuiGe,  szCGCG,
                                    					nRKJianShu, fRKZhongLiang,    -- 入库件数
														nJCJianShu, fJCZhongLiang,    -- 结存件数                 
														nQRJianShu,  fQRZhongLiang,   -- 前日结存件数 
														szRiQi, szNianYueRi) 
                                                values ($szCangKu, $szGangChang, $szCaiZhi, $szGuiGe, $szCGCG, 
												        $nJianShu,  $fZhongLiang,     -- 入库件数
														_nJCJianShu + $nJianShu, _fJCZhongLiang + $fZhongLiang, -- 结存件数 = 前日的结存数加本次入库数
														_nJCJianShu, _fJCZhongLiang, -- 前日结存件数 
														_szRiQi,_zzNianYueRi);
			    END IF;
            ELSE
			    -- 已有$szCGCG类的当日记录
		        UPDATE Table_YuanLiaoRiBaoBiao SET nRKJianShu = nRKJianShu + $nJianShu, fRKZhongLiang = fRKZhongLiang + $fZhongLiang,  -- 入库件数  
                                                   nJCJianShu = nJCJianShu + $nJianShu, fJCZhongLiang = fJCZhongLiang + $fZhongLiang   -- 结存件数
                                           WHERE szNianYueRi = _szNianYueRi and szCGCG = $szCGCG;
            END IF;
			-- 对$szCGCG类修改时间点之后的都要更新结存数据
            UPDATE Table_YuanLiaoRiBaoBiao SET nJCJianShu = nJCJianShu + $nJianShu, fJCZhongLiang = fJCZhongLiang + $fZhongLiang,  -- 结存件数
                                               nQRJianShu = nQRJianShu + $nJianShu, fQRZhongLiang = fQRZhongLiang + $fZhongLiang   -- 前日结存件数										   
                                           WHERE date(szRiQi) > date(_szRiQi) and szCGCG = $szCGCG;	
								   
		    SET _nJCJianShu = 0;
            SET _fJCZhongLiang = 0;		
		    -- 对月报表数据处理,流程同日报表
            --  _szCGCG类型记录减掉修改前的数量	
            UPDATE Table_YuanLiaoYueBaoBiao set nJCJianShu = nJCJianShu - _nJianShu, fJCZhongLiang = fJCZhongLiang - _fZhongLiang,   -- 修改时间点之后的数据处理
											    nQYJianShu = nQYJianShu - _nJianShu, fQYZhongLiang = fQYZhongLiang - _fZhongLiang
     		                              where date(szRiQi) > date(_szRiQi) and szCGCG = _szCGCG;
		    UPDATE Table_YuanLiaoYueBaoBiao set nJCJianShu = nJCJianShu - _nJianShu, fJCZhongLiang = fJCZhongLiang - _fZhongLiang,   -- 修改时间点数据处理
											    nRKJianShu = nRKJianShu - _nJianShu, fRKZhongLiang = fRKZhongLiang - _fZhongLiang
     		                              where szNianYue = _szNianYue and szCGCG = _szCGCG;							   
		    -- $szCGCG类型记录处理							   
	        SELECT id INTO _nYBBID2 from Table_YuanLiaoYueBaoBiao WHERE szNianYue = _szNianYue AND szCGCG = $szCGCG limit 1;  -- 查看 $szCGCG 类记录有没有该日期的记录 
            IF _nYBBID2 = -9999 THEN    -- 没有该日对应记录
		        SELECT id,nJCJianShu, fJCZhongLiang INTO _nYBBID2,_nJCJianShu, _fJCZhongLiang from Table_YuanLiaoYueBaoBiao WHERE szCGCG = $szCGCG AND date(szRiQi) < date(_szRiQi) ORDER BY szRiQi desc limit 1;  -- 查看 $szCGCG 类记录有没有以前日期的记录 
			    IF _nYBBID2 = -9999 THEN    -- 还没有$szCGCG类的对应记录, 那需要插入一条新的记录
			        insert into Table_YuanLiaoYueBaoBiao(szCangKu,  szGangChang,  szCaiZhi,  szGuiGe,  szCGCG,  
					                                     nRKJianShu, fRKZhongLiang,  -- 入库件数
														 nJCJianShu, fJCZhongLiang,  -- 结存件数
														 szRiQi,  szNianYue) 
                                                 values ($szCangKu, $szGangChang,$szCaiZhi, $szGuiGe, $szCGCG, 
												         $nJianShu,  $fZhongLiang,  
														 $nJianShu,  $fZhongLiang,  
														 _szRiQi, _szNianYue);
			    ELSE   -- 有前日记录
				    insert into Table_YuanLiaoYueBaoBiao(szCangKu,  szGangChang,  szCaiZhi,  szGuiGe,  szCGCG,  
					                                     nRKJianShu, fRKZhongLiang, 
														 nJCJianShu, fJCZhongLiang,
														 nQYJianShu, fQYZhongLiang,  
														 szRiQi, szNianYue) 
                                                 values ($szCangKu, $szGangChang, $szCaiZhi, $szGuiGe, $szCGCG, 
												         $nJianShu, $fZhongLiang, 
														 _nJCJianShu + $nJianShu, _fJCZhongLiang + $fZhongLiang,
														 _nJCJianShu, _fJCZhongLiang, 
														 _szRiQi,_zzNianYue);
			    END IF;
            ELSE
		        UPDATE Table_YuanLiaoYueBaoBiao SET nRKJianShu = nRKJianShu + $nJianShu, fRKZhongLiang = fRKZhongLiang + $fZhongLiang,    
                                                    nJCJianShu = nJCJianShu + $nJianShu, fJCZhongLiang = fJCZhongLiang + $fZhongLiang 
                                                WHERE szNianYue = _szNianYue and szCGCG = $szCGCG;
            END IF;
            UPDATE Table_YuanLiaoYueBaoBiao SET nJCJianShu = nJCJianShu + $nJianShu, fJCZhongLiang = fJCZhongLiang + $fZhongLiang,
                                                nQYJianShu = nQYJianShu + $nJianShu, fQYZhongLiang = fQYZhongLiang + $fZhongLiang										   
                                          WHERE date(szRiQi) > date(_szRiQi) and szCGCG = $szCGCG;						   
								   						   
        ELSE     -- 仓库、钢厂、材质、规格中无修改项
            -- 计算修改和修改前的数据差		
	        SET _nJianshuCha = $nJianshu - _nJianshu;
		    IF ABS($fZhongliang - _fZhongliang) < 1E-5 THEN  -- 浮点数相等
		        SET _fZhongliangCha = 0;
		    ELSE
		        SET _fZhongliangCha = $fZhongliang - _fZhongliang;
		    END IF;		
		    IF _nJianshuCha <> 0 OR _fZhongliangCha <> 0 THEN   -- 件数和重量有改变
			
			    UPDATE table_YuanLiaoKuCun SET nJianShu = nJianShu + _nJianshuCha, fZhongLiang = fZhongLiang + _fZhongliangCha where szCGCG = _szCGCG;   -- 修改库存数据
		        UPDATE Table_YuanLiaoRiBaoBiao set nJCJianShu = nJCJianShu + _nJianshuCha, fJCZhongLiang = fJCZhongLiang + _fZhongliangCha,              -- 件数和重量
                                                   nQRJianShu = nQRJianShu + _nJianshuCha, fQRZhongLiang = fQRZhongLiang + _fZhongliangCha
     		                                    where date(szRiQi) > date(_szRiQi) and szCGCG = _szCGCG;
										   
			    UPDATE Table_YuanLiaoRiBaoBiao set nRKJianShu = nRKJianShu + _nJianshuCha, fRKZhongLiang = fRKZhongLiang + _fZhongliangCha,
		                                           nJCJianShu = nJCJianShu + _nJianshuCha, fJCZhongLiang = fJCZhongLiang + _fZhongliangCha					                		    		       
     		                                    where szNianYueRi = _szNianYueRi  and szCGCG = _szCGCG;	
												
                UPDATE Table_YuanLiaoYueBaoBiao set nJCJianShu = nJCJianShu + _nJianshuCha, fJCZhongLiang = fJCZhongLiang + _fZhongliangCha,
                                                    nQYJianShu = nQYJianShu + _nJianshuCha, fQYZhongLiang = fQYZhongLiang + _fZhongliangCha
     		                                    where date(szRiQi) > date(_szRiQi) and szCGCG = _szCGCG;
										   
			    UPDATE Table_YuanLiaoYueBaoBiao set nRKJianShu = nRKJianShu + _nJianshuCha, fRKZhongLiang = fRKZhongLiang + _fZhongliangCha,
		                                            nJCJianShu = nJCJianShu + _nJianshuCha, fJCZhongLiang = fJCZhongLiang + _fZhongliangCha					                		    		       
     		                                    where szNianYue = _szNianYue  and szCGCG = _szCGCG;						   					   

		    END IF;       	
    END IF;
	
	  -- 修改入库记录
	  UPDATE Table_YuanLiaoRuKu set szCangKu = $szCangKu,szGangChang = $szGangChang, szCaiZhi = $szCaiZhi, szGuiGe = $szGuiGe,szCGCG = $szCGCG,
                                  nJianShu = $nJianShu,fZhongLiang = $fZhongLiang,szBeiZhu = $szBeiZhu, szKeHu = $szKeHu
     		                where id = $nRKID;		
	
    select row_count() into _rowCount;
    IF _rowCount<1 THEN
        set $nRet = -1;
       rollback;
    ELSE
        set $nRet = 1;
       commit;
    END IF;
    
END
;;
DELIMITER ;
