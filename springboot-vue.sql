/*
Navicat MySQL Data Transfer

Source Server         : localhost_3306
Source Server Version : 50533
Source Host           : localhost:3306
Source Database       : springboot-vue

Target Server Type    : MYSQL
Target Server Version : 50533
File Encoding         : 65001

Date: 2021-08-29 21:52:56
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for `book`
-- ----------------------------
DROP TABLE IF EXISTS `book`;
CREATE TABLE `book` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'ID',
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '名称',
  `price` decimal(10,2) DEFAULT NULL COMMENT '价格',
  `author` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '作者',
  `create_time` datetime DEFAULT NULL COMMENT '出版日期',
  `cover` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '封面地址',
  `user_id` int(11) DEFAULT NULL COMMENT '用户id',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of book
-- ----------------------------
INSERT INTO `book` VALUES ('1', 'Java', '100.00', '管理员', '2021-08-28 00:00:00', 'http://localhost:9090/files/5ba48630deb248b5b5962ec001f495d5', '1');
INSERT INTO `book` VALUES ('2', 'Java核心技术', '200.00', '管理员', '2021-08-28 00:00:00', 'http://localhost:9090/files/54fc8ab4fe034f2b892bc833b6a880b5', '1');
INSERT INTO `book` VALUES ('3', 'C#', '150.00', '张三', '2021-08-28 00:00:00', 'http://localhost:9090/files/fe6ca72515ee452b80299421aa42c4af', '2');
INSERT INTO `book` VALUES ('4', 'C++', '160.00', '张三', '2021-08-28 00:00:00', 'http://localhost:9090/files/a9c7d04395e64d689cfce8e3b9867456', '2');
INSERT INTO `book` VALUES ('5', 'Python', '60.00', '李四', '2021-08-28 00:00:00', 'http://localhost:9090/files/7472a69684cb41b29b95dfc0ade3b9f3', '3');
INSERT INTO `book` VALUES ('6', 'HTML5', '160.00', '李四', '2021-08-28 00:00:00', 'http://localhost:9090/files/9d938eebd1df48fa90e8d9e3a36b3ace', '3');

-- ----------------------------
-- Table structure for `category`
-- ----------------------------
DROP TABLE IF EXISTS `category`;
CREATE TABLE `category` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'id',
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '名称',
  `pid` int(11) DEFAULT NULL COMMENT '父节点id',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of category
-- ----------------------------
INSERT INTO `category` VALUES ('1', '文学', null);
INSERT INTO `category` VALUES ('2', '童书', '1');
INSERT INTO `category` VALUES ('3', '社会科学', '1');
INSERT INTO `category` VALUES ('4', '经济学', '1');
INSERT INTO `category` VALUES ('5', '科普百科', '2');
INSERT INTO `category` VALUES ('7', '法律', '3');

-- ----------------------------
-- Table structure for `fruit`
-- ----------------------------
DROP TABLE IF EXISTS `fruit`;
CREATE TABLE `fruit` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'ID',
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '名称',
  `price` decimal(10,2) DEFAULT NULL COMMENT '价格',
  `source` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '产地',
  `production_date` datetime DEFAULT NULL COMMENT '生产日期',
  `picture` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '图片',
  `user_id` int(11) DEFAULT NULL COMMENT '用户id',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of fruit
-- ----------------------------
INSERT INTO `fruit` VALUES ('1', '西柚', '10.00', '江苏', '2021-08-18 00:00:00', 'http://localhost:9090/files/af4733dc406c4615b8bda081732702c2', '1');
INSERT INTO `fruit` VALUES ('2', '坚果', '30.00', '浙江', '2021-08-28 00:00:00', 'http://localhost:9090/files/987d06676c7e4bf593c7cf5759065833', '1');
INSERT INTO `fruit` VALUES ('3', '柠檬', '15.00', '台湾', '2021-08-28 00:00:00', 'http://localhost:9090/files/bf237941c6904bef831b0a7ccbefb56f', '1');
INSERT INTO `fruit` VALUES ('4', '芒果', '20.00', '云南', '2021-08-28 00:00:00', 'http://localhost:9090/files/ccf8bf4a219041e09419d1393d4b0314', '1');
INSERT INTO `fruit` VALUES ('5', '橙子', '15.00', '江苏', '2021-08-28 00:00:00', 'http://localhost:9090/files/f87f2a9f7d1e480f9bbc62918e406429', '1');

-- ----------------------------
-- Table structure for `news`
-- ----------------------------
DROP TABLE IF EXISTS `news`;
CREATE TABLE `news` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'ID',
  `title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '标题',
  `content` text COLLATE utf8mb4_unicode_ci COMMENT '内容',
  `author` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '作者',
  `time` datetime DEFAULT NULL COMMENT '发布时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of news
-- ----------------------------
INSERT INTO `news` VALUES ('1', '123', '<p>123</p>', '张三', '2021-07-17 18:55:27');
INSERT INTO `news` VALUES ('2', '123', '<p>123</p>', '管理员', '2021-08-19 17:11:55');

-- ----------------------------
-- Table structure for `user`
-- ----------------------------
DROP TABLE IF EXISTS `user`;
CREATE TABLE `user` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'ID',
  `username` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '用户名',
  `password` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '密码',
  `nick_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '昵称',
  `age` int(11) DEFAULT NULL COMMENT '年龄',
  `sex` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '性别',
  `address` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '地址',
  `role` int(11) DEFAULT NULL COMMENT '角色，1：管理员，2：普通用户',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC COMMENT='用户信息表';

-- ----------------------------
-- Records of user
-- ----------------------------
INSERT INTO `user` VALUES ('1', '管理员', '123', '管理员', '20', '男', '北京', '1');
INSERT INTO `user` VALUES ('2', '张三', '123', '张三', '20', '男', '上海', '2');
INSERT INTO `user` VALUES ('3', '李四', '123', '李四', '18', '男', '深圳', '2');
