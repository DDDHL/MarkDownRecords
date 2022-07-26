/*
Navicat MySQL Data Transfer

Source Server         : JavaEE
Source Server Version : 80025
Source Host           : localhost:3306
Source Database       : chat-server

Target Server Type    : MYSQL
Target Server Version : 80025
File Encoding         : 65001

Date: 2022-05-27 18:06:48
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for `sys_chat_records`
-- ----------------------------
DROP TABLE IF EXISTS `sys_chat_records`;
CREATE TABLE `sys_chat_records` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `fromUser` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `toUser` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `chatRecord` longtext CHARACTER SET utf8 COLLATE utf8_general_ci,
  `createTime` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=112 DEFAULT CHARSET=utf8mb3;

-- ----------------------------
-- Records of sys_chat_records
-- ----------------------------
INSERT INTO `sys_chat_records` VALUES ('1', '19053004', '19053158', '你好鸭~', '2022-05-23 16:47');
INSERT INTO `sys_chat_records` VALUES ('2', '19053004', '19053158', '我是宫水三叶噢', '2022-05-23 16:48');
INSERT INTO `sys_chat_records` VALUES ('3', '19053004', '19053158', '嘿嘿', '2022-05-23 16:49');
INSERT INTO `sys_chat_records` VALUES ('4', '19053158', '19053004', '你好~', '2022-05-23 16:49');
INSERT INTO `sys_chat_records` VALUES ('5', '19053158', '19053004', '我是DDDHL，很高兴认识你~', '2022-05-23 16:49');
INSERT INTO `sys_chat_records` VALUES ('6', '19053004', '19053158', '哈哈哈', '2022-05-23 18:02');
INSERT INTO `sys_chat_records` VALUES ('7', '19053004', '19053158', '很高兴认识你哦', '2022-05-23 18:02');
INSERT INTO `sys_chat_records` VALUES ('8', '19053158', '19053004', '嘿嘿', '2022-05-23 18:03');
INSERT INTO `sys_chat_records` VALUES ('9', '19053158', '19053004', 'あなたのことが好きです', '2022-05-23 20:25');
INSERT INTO `sys_chat_records` VALUES ('10', '19053158', '19053004', '什么时候出新电影呀？', '2022-05-23 20:26');
INSERT INTO `sys_chat_records` VALUES ('11', '19053158', '19053004', '嘤嘤嘤', '2022-05-23 20:26');
INSERT INTO `sys_chat_records` VALUES ('12', '19053158', '19053002', '你好白龙', '2022-05-23 20:48');
INSERT INTO `sys_chat_records` VALUES ('13', '19053158', '19053002', '我是DDDHL~~', '2022-05-23 20:48');
INSERT INTO `sys_chat_records` VALUES ('14', '19053158', '19053004', '出了我必看爆！', '2022-05-24 00:01');
INSERT INTO `sys_chat_records` VALUES ('15', '19053004', '19053158', '哈哈', '2022-05-24 14:08');
INSERT INTO `sys_chat_records` VALUES ('16', '19053004', '19053158', '好的好的，马上出~', '2022-05-24 14:10');
INSERT INTO `sys_chat_records` VALUES ('17', '19053158', '19053004', 'okok', '2022-05-24 14:14');
INSERT INTO `sys_chat_records` VALUES ('40', '19053158', '19053002', '开始聊天吧~', '2022-05-24 15:10');
INSERT INTO `sys_chat_records` VALUES ('41', '19053158', '19053000', '你好鸭', '2021-05-24 23:09');
INSERT INTO `sys_chat_records` VALUES ('42', '19053158', '19053000', '我是DDDHL', '2021-05-24 23:09');
INSERT INTO `sys_chat_records` VALUES ('43', '19053158', '19053002', '?', '2022-05-24 23:09');
INSERT INTO `sys_chat_records` VALUES ('49', '19053004', '19053158', '哈哈', '2022-05-25 20:57');
INSERT INTO `sys_chat_records` VALUES ('50', '19053158', '19053004', '嘿嘿', '2022-05-26 19:57');
INSERT INTO `sys_chat_records` VALUES ('51', '19053158', '19053001', 'hello', '2022-05-26 20:57');
INSERT INTO `sys_chat_records` VALUES ('52', '19053158', '19053004', '你好呀~', '2022-05-27 14:10');
INSERT INTO `sys_chat_records` VALUES ('105', '19053158', '19053001', '在嘛？', '2022-05-27 15:00');
INSERT INTO `sys_chat_records` VALUES ('107', '19053004', '19053158', '哈哈哈', '2022-05-27 16:49');
INSERT INTO `sys_chat_records` VALUES ('108', '19053004', '19053158', '你好搞笑呀', '2022-05-27 16:49');
INSERT INTO `sys_chat_records` VALUES ('109', '19053158', '19053004', '哈哈', '2022-05-27 16:49');
INSERT INTO `sys_chat_records` VALUES ('110', '19053158', '19053004', '你在干什么', '2022-05-27 16:49');
INSERT INTO `sys_chat_records` VALUES ('111', '19053158', '19053007', 'hello', '2022-05-27 17:14');

-- ----------------------------
-- Table structure for `sys_user`
-- ----------------------------
DROP TABLE IF EXISTS `sys_user`;
CREATE TABLE `sys_user` (
  `account` varchar(50) DEFAULT NULL,
  `id` bigint NOT NULL AUTO_INCREMENT,
  `password` varchar(50) DEFAULT NULL,
  `sex` varchar(50) DEFAULT NULL,
  `avatar` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `signature` varchar(50) DEFAULT NULL,
  `name` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8mb3;

-- ----------------------------
-- Records of sys_user
-- ----------------------------
INSERT INTO `sys_user` VALUES ('19053158', '1', '520526', '男', 'head.jpg', '生活就像海洋，只有意志坚定的人才能到达彼岸~', 'DDDHL');
INSERT INTO `sys_user` VALUES ('19053000', '2', '520526', '男', 'LiHuaLong.png', '这个人很懒,没有签名', '立花泷');
INSERT INTO `sys_user` VALUES ('19053001', '3', '520526', '女', 'AoSi.png', '这个人很懒,没有签名', '奥寺美纪');
INSERT INTO `sys_user` VALUES ('19053002', '4', '520526', '男', 'BaiLong.png', '这个人很懒,没有签名', '赈早见琥珀主');
INSERT INTO `sys_user` VALUES ('19053003', '5', '520526', '男', 'GaoMu.png', '这个人很懒,没有签名', '高木真太');
INSERT INTO `sys_user` VALUES ('19053004', '6', '520526', '女', 'GongShuiSanYe.png', '你的名字~', '宫水三叶');
INSERT INTO `sys_user` VALUES ('19053005', '7', '520526', '男', 'GongShuiSiYe.png', '这个人很懒,没有签名', '宫水四叶');
INSERT INTO `sys_user` VALUES ('19053006', '8', '520526', '女', 'MingQu.png', '这个人很懒,没有签名', '名取早耶香');
INSERT INTO `sys_user` VALUES ('19053007', '9', '520526', '女', 'QianXun.png', '这个人很懒,没有签名', '荻野千寻');
INSERT INTO `sys_user` VALUES ('19053008', '10', '520526', '男', 'QiuYue.png', '这个人很懒,没有签名', '秋月孝雄');
INSERT INTO `sys_user` VALUES ('19053009', '11', '520526', '男', 'SongBen.png', '这个人很懒,没有签名', '松本');
INSERT INTO `sys_user` VALUES ('19053010', '12', '520526', '男', 'TengJing.png', '这个人很懒,没有签名', '藤井司');
INSERT INTO `sys_user` VALUES ('19053011', '13', '520526', '女', 'XiangZe.png', '这个人很懒,没有签名', '相沢');
INSERT INTO `sys_user` VALUES ('19053012', '14', '520526', '女', 'XiaoXiong.png', '这个人很懒,没有签名', '孝雄之母');
INSERT INTO `sys_user` VALUES ('19053013', '15', '520526', '女', 'XueYe.png', '这个人很懒,没有签名', '雪野百香里');
INSERT INTO `sys_user` VALUES ('19053014', '16', '520526', '女', 'ZuoTeng.png', '这个人很懒,没有签名', '佐藤');

-- ----------------------------
-- Table structure for `sys_user_friends`
-- ----------------------------
DROP TABLE IF EXISTS `sys_user_friends`;
CREATE TABLE `sys_user_friends` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `userAccount` varchar(50) DEFAULT NULL,
  `friendId` longtext,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8mb3;

-- ----------------------------
-- Records of sys_user_friends
-- ----------------------------
INSERT INTO `sys_user_friends` VALUES ('1', '19053158', '[\"19053002\",\"19053004\",\"19053000\",\"19053005\",\"19053001\",\"19053012\",\"19053007\"]');
INSERT INTO `sys_user_friends` VALUES ('2', '19053000', '[\"19053158\"]');
INSERT INTO `sys_user_friends` VALUES ('3', '19053001', '[\"19053158\"]');
INSERT INTO `sys_user_friends` VALUES ('4', '19053002', '[\"19053158\"]');
INSERT INTO `sys_user_friends` VALUES ('5', '19053003', null);
INSERT INTO `sys_user_friends` VALUES ('6', '19053004', '[\"19053158\"]');
INSERT INTO `sys_user_friends` VALUES ('7', '19053005', '[\"19053158\"]');
INSERT INTO `sys_user_friends` VALUES ('8', '19053006', null);
INSERT INTO `sys_user_friends` VALUES ('9', '19053007', '[\"19053158\"]');
INSERT INTO `sys_user_friends` VALUES ('10', '19053008', null);
INSERT INTO `sys_user_friends` VALUES ('11', '19053009', null);
INSERT INTO `sys_user_friends` VALUES ('12', '19053010', null);
INSERT INTO `sys_user_friends` VALUES ('13', '19053011', null);
INSERT INTO `sys_user_friends` VALUES ('14', '19053012', '[\"19053158\"]');
INSERT INTO `sys_user_friends` VALUES ('15', '19053013', null);
INSERT INTO `sys_user_friends` VALUES ('16', '19053014', null);

-- ----------------------------
-- Table structure for `sys_user_group`
-- ----------------------------
DROP TABLE IF EXISTS `sys_user_group`;
CREATE TABLE `sys_user_group` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `account` varchar(50) NOT NULL,
  `info` longtext,
  `state` varchar(50) NOT NULL,
  `createTime` varchar(50) DEFAULT NULL,
  `imgPath` longtext,
  `name` varchar(50) DEFAULT NULL,
  `avatar` longtext,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=33 DEFAULT CHARSET=utf8mb3;

-- ----------------------------
-- Records of sys_user_group
-- ----------------------------
INSERT INTO `sys_user_group` VALUES ('19', '19053158', '我是DDDHL~', 'true', '2022-05-27 00:17:10', null, 'DDDHL', 'http://localhost:7777/public/images/head.jpg');
INSERT INTO `sys_user_group` VALUES ('21', '19053004', '哈哈哈，发个朋友圈儿~', 'true', '2022-05-27 00:18:19', 'ZASK8kcFN74PxtzOFT_Wm5e2d7e6f-3137-4e54-9735-3bf097c93dd4-image.jpg', '宫水三叶', 'http://localhost:7777/public/images/GongShuiSanYe.png');
INSERT INTO `sys_user_group` VALUES ('22', '19053158', '今天好开心鸭~', 'true', '2022-05-27 17:20:04', null, 'DDDHL', 'http://localhost:7777/public/images/head.jpg');
INSERT INTO `sys_user_group` VALUES ('23', '19053004', '喂喂喂，有人嘛？', 'true', '2022-05-27 17:20:41', null, '宫水三叶', 'http://localhost:7777/public/images/GongShuiSanYe.png');
INSERT INTO `sys_user_group` VALUES ('24', '19053158', '好帅鸭~', 'true', '2022-05-27 17:21:39', 'z6EWqoTVWOCNvewQXwPRnced8b5cc-3312-41c1-8c9b-1aa4d109af2c-image.jpg', 'DDDHL', 'http://localhost:7777/public/images/head.jpg');
INSERT INTO `sys_user_group` VALUES ('25', '19053158', '666', 'true', '2022-05-27 17:22:37', null, 'DDDHL', 'http://localhost:7777/public/images/head.jpg');
INSERT INTO `sys_user_group` VALUES ('28', '19053004', '哈哈哈', 'true', '2022-05-27 17:27:48', 'FOc4bCyfH1ygMPF8w5Zid4d6345d5-b63b-460f-8ccb-aca268e7abc7-image.jpg', '宫水三叶', 'http://localhost:7777/public/images/GongShuiSanYe.png');
INSERT INTO `sys_user_group` VALUES ('31', '19053158', 'Hello World~', 'true', '2022-05-27 17:36:11', null, 'DDDHL', 'http://localhost:7777/public/images/head.jpg');
INSERT INTO `sys_user_group` VALUES ('32', '19053004', '你好呀', 'true', '2022-05-27 17:36:20', 'p0Brw3VfJqY37SNqNqtzcf0fe2c57-c072-413e-9553-81afaf463acf-image.jpg', '宫水三叶', 'http://localhost:7777/public/images/GongShuiSanYe.png');
