/*
Navicat MySQL Data Transfer

Source Server         : localhost_3306
Source Server Version : 50525
Source Host           : localhost:3306
Source Database       : acc

Target Server Type    : MYSQL
Target Server Version : 50525
File Encoding         : 65001

Date: 2018-08-07 16:24:48
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for `admin`
-- ----------------------------
DROP TABLE IF EXISTS `admin`;
CREATE TABLE `admin` (
`admin_id`  int(11) NOT NULL AUTO_INCREMENT ,
`admin_name`  varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL ,
`admin_password`  varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL ,
PRIMARY KEY (`admin_id`)
)
ENGINE=InnoDB
DEFAULT CHARACTER SET=utf8mb4 COLLATE=utf8mb4_general_ci
AUTO_INCREMENT=3

;

-- ----------------------------
-- Records of admin
-- ----------------------------
BEGIN;
INSERT INTO `admin` VALUES ('1', '123', '456'), ('2', 'sss', '456');
COMMIT;

-- ----------------------------
-- Table structure for `goods`
-- ----------------------------
DROP TABLE IF EXISTS `goods`;
CREATE TABLE `goods` (
`goods_id`  int(11) NOT NULL ,
`goods_title`  varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL ,
`goods_subtitle`  varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL ,
`goods_type`  varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL ,
`goods_subtype`  varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL ,
`price`  float NULL DEFAULT NULL ,
`stock`  int(11) NULL DEFAULT NULL ,
`color`  varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL ,
`descs`  varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL ,
`product_details`  varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL ,
`goods_pics`  varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL ,
`sell_num`  int(11) NULL DEFAULT NULL ,
PRIMARY KEY (`goods_id`)
)
ENGINE=InnoDB
DEFAULT CHARACTER SET=utf8mb4 COLLATE=utf8mb4_general_ci

;

-- ----------------------------
-- Records of goods
-- ----------------------------
BEGIN;
INSERT INTO `goods` VALUES ('111', '套装连衣裙', '民族风连衣裙', '服装', '女服装', '129', '10', '白色,绿色', '均码', 'a.txt', 'a_1.jpg,a_2.jpg,a_3.jpg,a_4.jpg', '3'), ('112', '男装', '时尚男装', '服装', '男服装', '220', '4', '黑色,白色,蓝色,灰色', '均码', 'b.txt', 'b_1.jpg,b_2.jpg,b_3.jpg,b_4.jpg', '0'), ('113', '凉鞋', '露趾后跟高凉鞋', '鞋', '女鞋', '199', '100', '粉色,黑色', '35,36,37,38,39', 'c.txt', 'c_1.jpg,c_2.jpg,c_3.jpg,c_4.jpg', '0'), ('114', '防UVA太阳眼镜', '简约女性太阳眼镜', '饰品', '女饰品', '200', '200', '粉色,黑色,白水银', '均码', 'd.txt', 'd_1.jpg,d_2.jpg,d_3.jpg,d_4.jpg', '0'), ('115', '机械机芯手表', '防水机械机芯手表', '饰品', '男饰品', '20000', '5', '灰色', 'S,M,L', 'e.txt', 'e_1.jpg,e_2.jpg,e_3.jpg,e_4.jpg', '0'), ('116', '明星同款头带', '鹿晗王俊凯同款头带', '饰品', '男饰品', '59.9', '100', '红,黑,白', '均码', 'f.txt', 'f_1.jpg,f_2.jpg,f_3.jpg,f_4.jpg', '0'), ('117', '单肩斜挎手提包', '牛皮拉链单肩斜挎手提包', '包', '女包', '99.9', '56', '彩虹', '均码', 'g.txt', 'g_1.jpg,g_2.jpg,g_3.jpg,g_4.jpg', '0'), ('118', 'TF口红', '白管TF口红', '口红', '女口红', '499', '10', '玫红,水红,珊瑚橘', '06,08,16', 'h.txt', 'h_1.jpg,h_2.jpg,h_3.jpg,h_4.jpg', '0'), ('119', '五分袖短袖', '印花不规则五分袖短袖', '服装', '女服装', '69', '10', '白色,灰色', '均码', 'i.txt', 'i_1.jpg,i_2.jpg,i_3.jpg,i_4.jpg', '0'), ('120', '高腰牛仔裤', '新蓝依高腰九分七分牛仔裤', '服装', '女服装', '130', '20', '深蓝色,浅蓝色', '28,29,30', 'j.txt', 'j_1.jpg,j_2.jpg,j_3.jpg,j_4.jpg', '0'), ('555', null, null, null, null, '123', null, null, null, null, null, null);
COMMIT;

-- ----------------------------
-- Table structure for `orderlist`
-- ----------------------------
DROP TABLE IF EXISTS `orderlist`;
CREATE TABLE `orderlist` (
`order_id`  int(11) NOT NULL AUTO_INCREMENT ,
`goods_id`  int(11) NOT NULL ,
`count`  int(11) NULL DEFAULT NULL ,
`price`  float NULL DEFAULT NULL ,
`user_id`  int(11) NOT NULL ,
`order_time`  timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP ,
`color`  varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL ,
`descs`  varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL ,
PRIMARY KEY (`order_id`),
INDEX `goods_id` (`goods_id`) USING BTREE 
)
ENGINE=InnoDB
DEFAULT CHARACTER SET=utf8mb4 COLLATE=utf8mb4_general_ci
AUTO_INCREMENT=15

;

-- ----------------------------
-- Records of orderlist
-- ----------------------------
BEGIN;
INSERT INTO `orderlist` VALUES ('11', '112', '4', '220', '124', '2018-08-06 17:45:59', '黑色', '均码'), ('12', '113', '5', '199', '124', '2018-08-07 16:04:22', '粉色', '35'), ('13', '111', '2', '129', '124', '2018-08-07 15:32:27', '白色', '均码'), ('14', '115', '1', '20000', '124', null, '灰色', 'S');
COMMIT;

-- ----------------------------
-- Table structure for `user`
-- ----------------------------
DROP TABLE IF EXISTS `user`;
CREATE TABLE `user` (
`user_id`  int(11) NOT NULL AUTO_INCREMENT ,
`user_name`  varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL ,
`user_password`  varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL ,
`email`  varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL ,
`address`  varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL ,
`phone`  varchar(13) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL ,
PRIMARY KEY (`user_id`)
)
ENGINE=InnoDB
DEFAULT CHARACTER SET=utf8mb4 COLLATE=utf8mb4_general_ci
AUTO_INCREMENT=127

;

-- ----------------------------
-- Records of user
-- ----------------------------
BEGIN;
INSERT INTO `user` VALUES ('123', 'abc', '123', '123', 'fjut', '123456789'), ('124', 'www', '123', '123@qq.com', 'fjut', '123456'), ('125', '123', '1233', null, null, null), ('126', 'wqq', '123', '456789', 'fjut', '88888');
COMMIT;

-- ----------------------------
-- Auto increment value for `admin`
-- ----------------------------
ALTER TABLE `admin` AUTO_INCREMENT=3;
DROP TRIGGER IF EXISTS `insert_order`;
DELIMITER ;;
CREATE TRIGGER `insert_order` AFTER INSERT ON `orderlist` FOR EACH ROW SET@count=1
;;
DELIMITER ;

-- ----------------------------
-- Auto increment value for `orderlist`
-- ----------------------------
ALTER TABLE `orderlist` AUTO_INCREMENT=15;

-- ----------------------------
-- Auto increment value for `user`
-- ----------------------------
ALTER TABLE `user` AUTO_INCREMENT=127;
