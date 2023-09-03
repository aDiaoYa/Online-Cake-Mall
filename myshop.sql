/*
Navicat MySQL Data Transfer

Source Server         : 本机
Source Server Version : 80029
Source Host           : 127.0.0.1:3306
Source Database       : myshop

Target Server Type    : MYSQL
Target Server Version : 80029
File Encoding         : 65001

Date: 2022-10-11 21:57:11
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for address
-- ----------------------------
DROP TABLE IF EXISTS `address`;
CREATE TABLE `address` (
  `aid` int NOT NULL AUTO_INCREMENT,
  `aname` varchar(30) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `aphone` varchar(14) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `adetail` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `astate` int DEFAULT NULL,
  PRIMARY KEY (`aid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of address
-- ----------------------------

-- ----------------------------
-- Table structure for cart
-- ----------------------------
DROP TABLE IF EXISTS `cart`;
CREATE TABLE `cart` (
  `cid` int NOT NULL AUTO_INCREMENT,
  `ccount` decimal(12,2) DEFAULT NULL,
  `cnum` int DEFAULT NULL,
  PRIMARY KEY (`cid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of cart
-- ----------------------------

-- ----------------------------
-- Table structure for goods
-- ----------------------------
DROP TABLE IF EXISTS `goods`;
CREATE TABLE `goods` (
  `gid` int NOT NULL AUTO_INCREMENT,
  `gname` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `gcover` varchar(45) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `gimage1` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `gimage2` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `gprice` decimal(12,2) DEFAULT NULL,
  `ginfo` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `gstock` int DEFAULT NULL,
  `type_id` int DEFAULT NULL,
  PRIMARY KEY (`gid`),
  KEY `Fk_t_g_fk` (`type_id`),
  CONSTRAINT `Fk_t_g_fk` FOREIGN KEY (`type_id`) REFERENCES `type` (`tid`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE=InnoDB AUTO_INCREMENT=112 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of goods
-- ----------------------------
INSERT INTO `goods` VALUES ('1', '冰雪之恋', '/picture/1-1.jpg', '/picture/1-2.jpg', '/picture/1-3.jpg', '50.20', '香浓巧克力，浓浓安慕兮啊，，，', '789', '1');
INSERT INTO `goods` VALUES ('2', '浪漫甜心101', '/picture/2-1.jpg', '/picture/2-2.jpg', '/picture/2-3.jpg', '229.00', '圣洁的白色玫瑰，烘托着光亮饱满的红艳果实，烂漫的色彩，惹人无比爱怜。新鲜草莓和特调淡奶油混合而成的松软的蛋糕坯，美丽纯净，充满了幸福甜蜜的味道主口味：草莓口味 主要原料：新西兰乳脂奶油，古巴朗姆酒，韩国幼砂糖，鲜草莓。 甜度： 三星（满五星） 最佳食用温度：6-10摄氏度', '10', '8');
INSERT INTO `goods` VALUES ('3', '留恋之恋', '/picture/3-1.jpg', '/picture/3-2.jpg', '/picture/3-3.jpg', '229.00', '主口味:榴莲奶油味(原味蛋糕胚+榴莲酱+乳脂奶油)主要原料：新西兰乳脂奶油，古巴朗姆酒，韩国幼砂糖，鲜草莓。 甜度： 三星（满五星） 最佳食用温度：5-7摄氏度', '10', '5');
INSERT INTO `goods` VALUES ('4', '玫瑰物语', '/picture/4-1.jpg', '/picture/4-2.jpg', '/picture/4-3.jpg', '299.00', '一座小小的花园 一场优美的缄默 色彩的冲撞带来幻美的视觉享受 自制的玫瑰酱调配而成的玫瑰慕斯蛋糕 口感丰富 异香诱人 忠贞的爱情充溢了玫瑰的内心,因而更加美丽\r\n主口味:玫瑰慕斯 主要原料:糖渍玫瑰,奶油芝士,乳脂奶油,朗姆酒,白巧克力软糖 甜度:三星（满五星） 最佳食用温度：5-7摄氏度', '10', '5');
INSERT INTO `goods` VALUES ('5', '芒果列车', '/picture/5-1.jpg', '/picture/5-2.jpg', '/picture/5-3.jpg', '269.00', '黄橙橙的时光列车,散发出温暖的灯光,连接着过去与未来.这是一款纯慕斯型的蛋糕,芒果慕斯镶嵌芒果果冻丁,不含蛋糕胚体,均匀莫斯体和果冻,口感细腻嫩滑,酸甜适口零脂肪,美容又零脂肪\r\n主口味: 芒果慕斯 主要原料:芒果果溶,芒果果冻,乳脂奶油,法国君度力娇酒  甜度:三星（满五星） 最佳食用温度：5-7摄氏度', '10', '5');
INSERT INTO `goods` VALUES ('6', '夜礼服', '/picture/6-1.jpg', '/picture/6-2.jpg', '/picture/6-3.jpg', '299.00', '空气中流动着的厚重巧克力气息,一切在夜色下坡上银装.可可野性的诱惑,加之朗姆酒的浪漫清冽,传递出来自神秘过度的魅惑与力量.\r\n主口味:香浓巧克力 主要原料:黑巧克力,乳脂奶油,大黄油,朗姆酒,巧克力果仁脆,黑巧克力软糖 甜度:四星（满五星） 最佳食用温度：5-7摄氏度', '10', '5');
INSERT INTO `goods` VALUES ('7', '爱之玫瑰', '/picture/7-1.jpg', '/picture/7-2.jpg', '/picture/7-3.jpg', '299.00', '爱之魅力,悄然跃于玫瑰之上,包裹时光,翩翩起舞,让这一切置身于梦幻旅途之中邂逅玫瑰,享受梦境一刻.\r\n主口味:玫瑰奶油味 主要原料:云南玫瑰,澳洲奶油芝士,澳洲乳脂奶油,古巴朗姆酒,白巧克力软糖 甜度:二星（满五星） 最佳食用温度：5-7摄氏度', '10', '4');
INSERT INTO `goods` VALUES ('8', '小熊乐园', '/picture/8-1.jpg', '/picture/8-2.jpg', '/picture/8-3.jpg', '299.00', '走进小熊乐园,与可爱的小熊一起准备过冬的食物吧,摘颗草莓藏放在巧克力做的房子里,好朋友一起分享劳动的果实.\r\n主口味:草莓奶油味 主要原料:乳脂奶油,纯巧克力,朗姆酒,幼砂糖,鲜草莓 甜度:二星（满五星） 最佳食用温度：5-7摄氏度', '10', '3');
INSERT INTO `goods` VALUES ('9', '草莓冰淇淋', '/picture/9-1.jpg', '/picture/9-2.jpg', '/picture/9-3.jpg', '299.00', '甜郁草莓配合冰淇淋的丝滑口感,让清爽与浪漫在爱情果园激情碰撞,恋上草莓,这份心情,美妙非凡.\r\n主口味:草莓口味 主要原料:草莓果溶 草莓  甜度:三星（满五星） 最佳食用温度：-12至-15摄氏度', '10', '10');
INSERT INTO `goods` VALUES ('10', '玫瑰舒芙蕾', '/picture/10-1.jpg', '/picture/10-2.jpg', '/picture/10-3.jpg', '28.00', '优选法国芝士,奶香浓郁,质地柔滑,口感细腻.法国芝士有助于提升糕点的整体口感,完美平衡酸度与甜味,制作出的糕点更加洁白纯美.', '10', '2');
INSERT INTO `goods` VALUES ('11', '半熟芝士', '/picture/11-1.jpg', '/picture/11-1.jpg', '/picture/11-1.jpg', '38.00', '为了保证芝士的香醇,半熟芝士借鉴日本温泉煮鸡蛋的做法,把芝士,牛奶,鸡蛋,天然奶油,砂糖,小麦粉拌成面糊,通过水浴蒸烤,保证芝士蛋糕细嫩,柔软,留住芝士的香醇细滑.', '10', '2');
INSERT INTO `goods` VALUES ('12', '青森芝士条', '/picture/12-1.jpg', '/picture/1-2.jpg', '/picture/12-1.jpg', '36.00', '青森芝士和风轻拂,,奶香浓郁,质地柔滑,口感细腻.', '10', '2');
INSERT INTO `goods` VALUES ('13', '蜂蜜蛋糕', '/picture/13-1.jpg', '/picture/13-1.jpg', '/picture/13-1.jpg', '36.00', '蛋黄与蜂蜜,淡奶油共同演绎的曼妙之旅.口感Q糯浓郁,回味绵软柔长.皱巴巴的造型,甜蜜蜜的感受.', '10', '2');
INSERT INTO `goods` VALUES ('14', '意大利芝士饼干', '/picture/14-1.jpg', '/picture/14-1.jpg', '/picture/14-1.jpg', '39.00', '采用帕玛森芝士为主要原材料制作的意大利芝士饼,奶香浓郁,鲜香可口.', '10', '2');
INSERT INTO `goods` VALUES ('15', '小熊乐园', '/picture/8-1.jpg', '/picture/8-2.jpg', '/picture/8-3.jpg', '299.00', '走进小熊乐园,与可爱的小熊一起准备过冬的食物吧,摘颗草莓藏放在巧克力做的房子里,好朋友一起分享劳动的果实.\r\n主口味:草莓奶油味 主要原料:乳脂奶油,纯巧克力,朗姆酒,幼砂糖,鲜草莓 甜度:二星（满五星） 最佳食用温度：5-7摄氏度', '10', '3');
INSERT INTO `goods` VALUES ('16', '草莓冰淇淋', '/picture/9-1.jpg', '/picture/9-2.jpg', '/picture/9-3.jpg', '299.00', '甜郁草莓配合冰淇淋的丝滑口感,让清爽与浪漫在爱情果园激情碰撞,恋上草莓,这份心情,美妙非凡.\r\n主口味:草莓口味 主要原料:草莓果溶 草莓  甜度:三星（满五星） 最佳食用温度：-12至-15摄氏度', '10', '1');
INSERT INTO `goods` VALUES ('17', '玫瑰舒芙蕾', '/picture/10-1.jpg', '/picture/10-2.jpg', '/picture/10-3.jpg', '28.00', '优选法国芝士,奶香浓郁,质地柔滑,口感细腻.法国芝士有助于提升糕点的整体口感,完美平衡酸度与甜味,制作出的糕点更加洁白纯美.', '10', '2');
INSERT INTO `goods` VALUES ('18', '半熟芝士', '/picture/11-1.jpg', '/picture/11-1.jpg', '/picture/11-1.jpg', '38.00', '为了保证芝士的香醇,半熟芝士借鉴日本温泉煮鸡蛋的做法,把芝士,牛奶,鸡蛋,天然奶油,砂糖,小麦粉拌成面糊,通过水浴蒸烤,保证芝士蛋糕细嫩,柔软,留住芝士的香醇细滑.', '10', '2');
INSERT INTO `goods` VALUES ('19', '青森芝士条', '/picture/12-1.jpg', '/picture/1-2.jpg', '/picture/12-1.jpg', '36.00', '青森芝士和风轻拂,,奶香浓郁,质地柔滑,口感细腻.', '10', '2');
INSERT INTO `goods` VALUES ('20', '蜂蜜蛋糕', '/picture/13-1.jpg', '/picture/13-1.jpg', '/picture/13-1.jpg', '36.00', '蛋黄与蜂蜜,淡奶油共同演绎的曼妙之旅.口感Q糯浓郁,回味绵软柔长.皱巴巴的造型,甜蜜蜜的感受.', '10', '2');
INSERT INTO `goods` VALUES ('21', '意大利芝士饼干', '/picture/14-1.jpg', '/picture/14-1.jpg', '/picture/14-1.jpg', '39.00', '采用帕玛森芝士为主要原材料制作的意大利芝士饼,奶香浓郁,鲜香可口.', '10', '2');
INSERT INTO `goods` VALUES ('22', '小熊乐园', '/picture/8-1.jpg', '/picture/8-2.jpg', '/picture/8-3.jpg', '299.00', '走进小熊乐园,与可爱的小熊一起准备过冬的食物吧,摘颗草莓藏放在巧克力做的房子里,好朋友一起分享劳动的果实.\r\n主口味:草莓奶油味 主要原料:乳脂奶油,纯巧克力,朗姆酒,幼砂糖,鲜草莓 甜度:二星（满五星） 最佳食用温度：5-7摄氏度', '10', '3');
INSERT INTO `goods` VALUES ('23', '草莓冰淇淋', '/picture/9-1.jpg', '/picture/9-2.jpg', '/picture/9-3.jpg', '299.00', '甜郁草莓配合冰淇淋的丝滑口感,让清爽与浪漫在爱情果园激情碰撞,恋上草莓,这份心情,美妙非凡.\r\n主口味:草莓口味 主要原料:草莓果溶 草莓  甜度:三星（满五星） 最佳食用温度：-12至-15摄氏度', '10', '1');
INSERT INTO `goods` VALUES ('24', '玫瑰舒芙蕾', '/picture/10-1.jpg', '/picture/10-2.jpg', '/picture/10-3.jpg', '28.00', '优选法国芝士,奶香浓郁,质地柔滑,口感细腻.法国芝士有助于提升糕点的整体口感,完美平衡酸度与甜味,制作出的糕点更加洁白纯美.', '10', '2');
INSERT INTO `goods` VALUES ('25', '半熟芝士', '/picture/11-1.jpg', '/picture/11-1.jpg', '/picture/11-1.jpg', '38.00', '为了保证芝士的香醇,半熟芝士借鉴日本温泉煮鸡蛋的做法,把芝士,牛奶,鸡蛋,天然奶油,砂糖,小麦粉拌成面糊,通过水浴蒸烤,保证芝士蛋糕细嫩,柔软,留住芝士的香醇细滑.', '10', '2');
INSERT INTO `goods` VALUES ('26', '青森芝士条', '/picture/12-1.jpg', '/picture/1-2.jpg', '/picture/12-1.jpg', '36.00', '青森芝士和风轻拂,,奶香浓郁,质地柔滑,口感细腻.', '10', '2');
INSERT INTO `goods` VALUES ('27', '蜂蜜蛋糕', '/picture/13-1.jpg', '/picture/13-1.jpg', '/picture/13-1.jpg', '36.00', '蛋黄与蜂蜜,淡奶油共同演绎的曼妙之旅.口感Q糯浓郁,回味绵软柔长.皱巴巴的造型,甜蜜蜜的感受.', '10', '2');
INSERT INTO `goods` VALUES ('28', '意大利芝士饼干', '/picture/14-1.jpg', '/picture/14-1.jpg', '/picture/14-1.jpg', '39.00', '采用帕玛森芝士为主要原材料制作的意大利芝士饼,奶香浓郁,鲜香可口.', '10', '2');
INSERT INTO `goods` VALUES ('29', '小熊乐园', '/picture/8-1.jpg', '/picture/8-2.jpg', '/picture/8-3.jpg', '299.00', '走进小熊乐园,与可爱的小熊一起准备过冬的食物吧,摘颗草莓藏放在巧克力做的房子里,好朋友一起分享劳动的果实.\r\n主口味:草莓奶油味 主要原料:乳脂奶油,纯巧克力,朗姆酒,幼砂糖,鲜草莓 甜度:二星（满五星） 最佳食用温度：5-7摄氏度', '10', '3');
INSERT INTO `goods` VALUES ('30', '草莓冰淇淋', '/picture/9-1.jpg', '/picture/9-2.jpg', '/picture/9-3.jpg', '299.00', '甜郁草莓配合冰淇淋的丝滑口感,让清爽与浪漫在爱情果园激情碰撞,恋上草莓,这份心情,美妙非凡.\r\n主口味:草莓口味 主要原料:草莓果溶 草莓  甜度:三星（满五星） 最佳食用温度：-12至-15摄氏度', '10', '1');
INSERT INTO `goods` VALUES ('31', '玫瑰舒芙蕾', '/picture/10-1.jpg', '/picture/10-2.jpg', '/picture/10-3.jpg', '28.00', '优选法国芝士,奶香浓郁,质地柔滑,口感细腻.法国芝士有助于提升糕点的整体口感,完美平衡酸度与甜味,制作出的糕点更加洁白纯美.', '10', '2');
INSERT INTO `goods` VALUES ('32', '半熟芝士', '/picture/11-1.jpg', '/picture/11-1.jpg', '/picture/11-1.jpg', '38.00', '为了保证芝士的香醇,半熟芝士借鉴日本温泉煮鸡蛋的做法,把芝士,牛奶,鸡蛋,天然奶油,砂糖,小麦粉拌成面糊,通过水浴蒸烤,保证芝士蛋糕细嫩,柔软,留住芝士的香醇细滑.', '10', '2');
INSERT INTO `goods` VALUES ('33', '青森芝士条', '/picture/12-1.jpg', '/picture/1-2.jpg', '/picture/12-1.jpg', '36.00', '青森芝士和风轻拂,,奶香浓郁,质地柔滑,口感细腻.', '10', '2');
INSERT INTO `goods` VALUES ('34', '蜂蜜蛋糕', '/picture/13-1.jpg', '/picture/13-1.jpg', '/picture/13-1.jpg', '36.00', '蛋黄与蜂蜜,淡奶油共同演绎的曼妙之旅.口感Q糯浓郁,回味绵软柔长.皱巴巴的造型,甜蜜蜜的感受.', '10', '2');
INSERT INTO `goods` VALUES ('35', '意大利芝士饼干', '/picture/14-1.jpg', '/picture/14-1.jpg', '/picture/14-1.jpg', '39.00', '采用帕玛森芝士为主要原材料制作的意大利芝士饼,奶香浓郁,鲜香可口.', '10', '2');
INSERT INTO `goods` VALUES ('36', '小熊乐园', '/picture/8-1.jpg', '/picture/8-2.jpg', '/picture/8-3.jpg', '299.00', '走进小熊乐园,与可爱的小熊一起准备过冬的食物吧,摘颗草莓藏放在巧克力做的房子里,好朋友一起分享劳动的果实.\r\n主口味:草莓奶油味 主要原料:乳脂奶油,纯巧克力,朗姆酒,幼砂糖,鲜草莓 甜度:二星（满五星） 最佳食用温度：5-7摄氏度', '10', '3');
INSERT INTO `goods` VALUES ('37', '草莓冰淇淋', '/picture/9-1.jpg', '/picture/9-2.jpg', '/picture/9-3.jpg', '299.00', '甜郁草莓配合冰淇淋的丝滑口感,让清爽与浪漫在爱情果园激情碰撞,恋上草莓,这份心情,美妙非凡.\r\n主口味:草莓口味 主要原料:草莓果溶 草莓  甜度:三星（满五星） 最佳食用温度：-12至-15摄氏度', '10', '1');
INSERT INTO `goods` VALUES ('38', '玫瑰舒芙蕾', '/picture/10-1.jpg', '/picture/10-2.jpg', '/picture/10-3.jpg', '28.00', '优选法国芝士,奶香浓郁,质地柔滑,口感细腻.法国芝士有助于提升糕点的整体口感,完美平衡酸度与甜味,制作出的糕点更加洁白纯美.', '10', '2');
INSERT INTO `goods` VALUES ('39', '半熟芝士', '/picture/11-1.jpg', '/picture/11-1.jpg', '/picture/11-1.jpg', '38.00', '为了保证芝士的香醇,半熟芝士借鉴日本温泉煮鸡蛋的做法,把芝士,牛奶,鸡蛋,天然奶油,砂糖,小麦粉拌成面糊,通过水浴蒸烤,保证芝士蛋糕细嫩,柔软,留住芝士的香醇细滑.', '10', '2');
INSERT INTO `goods` VALUES ('40', '青森芝士条', '/picture/12-1.jpg', '/picture/1-2.jpg', '/picture/12-1.jpg', '36.00', '青森芝士和风轻拂,,奶香浓郁,质地柔滑,口感细腻.', '10', '2');
INSERT INTO `goods` VALUES ('41', '蜂蜜蛋糕', '/picture/13-1.jpg', '/picture/13-1.jpg', '/picture/13-1.jpg', '36.00', '蛋黄与蜂蜜,淡奶油共同演绎的曼妙之旅.口感Q糯浓郁,回味绵软柔长.皱巴巴的造型,甜蜜蜜的感受.', '10', '2');
INSERT INTO `goods` VALUES ('42', '意大利芝士饼干', '/picture/14-1.jpg', '/picture/14-1.jpg', '/picture/14-1.jpg', '39.00', '采用帕玛森芝士为主要原材料制作的意大利芝士饼,奶香浓郁,鲜香可口.', '10', '2');
INSERT INTO `goods` VALUES ('43', '小熊乐园', '/picture/8-1.jpg', '/picture/8-2.jpg', '/picture/8-3.jpg', '299.00', '走进小熊乐园,与可爱的小熊一起准备过冬的食物吧,摘颗草莓藏放在巧克力做的房子里,好朋友一起分享劳动的果实.\r\n主口味:草莓奶油味 主要原料:乳脂奶油,纯巧克力,朗姆酒,幼砂糖,鲜草莓 甜度:二星（满五星） 最佳食用温度：5-7摄氏度', '10', '3');
INSERT INTO `goods` VALUES ('44', '草莓冰淇淋', '/picture/9-1.jpg', '/picture/9-2.jpg', '/picture/9-3.jpg', '299.00', '甜郁草莓配合冰淇淋的丝滑口感,让清爽与浪漫在爱情果园激情碰撞,恋上草莓,这份心情,美妙非凡.\r\n主口味:草莓口味 主要原料:草莓果溶 草莓  甜度:三星（满五星） 最佳食用温度：-12至-15摄氏度', '10', '1');
INSERT INTO `goods` VALUES ('45', '玫瑰舒芙蕾', '/picture/10-1.jpg', '/picture/10-2.jpg', '/picture/10-3.jpg', '28.00', '优选法国芝士,奶香浓郁,质地柔滑,口感细腻.法国芝士有助于提升糕点的整体口感,完美平衡酸度与甜味,制作出的糕点更加洁白纯美.', '10', '2');
INSERT INTO `goods` VALUES ('46', '半熟芝士', '/picture/11-1.jpg', '/picture/11-1.jpg', '/picture/11-1.jpg', '38.00', '为了保证芝士的香醇,半熟芝士借鉴日本温泉煮鸡蛋的做法,把芝士,牛奶,鸡蛋,天然奶油,砂糖,小麦粉拌成面糊,通过水浴蒸烤,保证芝士蛋糕细嫩,柔软,留住芝士的香醇细滑.', '10', '2');
INSERT INTO `goods` VALUES ('47', '青森芝士条', '/picture/12-1.jpg', '/picture/1-2.jpg', '/picture/12-1.jpg', '36.00', '青森芝士和风轻拂,,奶香浓郁,质地柔滑,口感细腻.', '10', '2');
INSERT INTO `goods` VALUES ('48', '蜂蜜蛋糕', '/picture/13-1.jpg', '/picture/13-1.jpg', '/picture/13-1.jpg', '36.00', '蛋黄与蜂蜜,淡奶油共同演绎的曼妙之旅.口感Q糯浓郁,回味绵软柔长.皱巴巴的造型,甜蜜蜜的感受.', '10', '2');
INSERT INTO `goods` VALUES ('49', '意大利芝士饼干', '/picture/14-1.jpg', '/picture/14-1.jpg', '/picture/14-1.jpg', '39.00', '采用帕玛森芝士为主要原材料制作的意大利芝士饼,奶香浓郁,鲜香可口.', '10', '2');
INSERT INTO `goods` VALUES ('50', '小熊乐园', '/picture/8-1.jpg', '/picture/8-2.jpg', '/picture/8-3.jpg', '299.00', '走进小熊乐园,与可爱的小熊一起准备过冬的食物吧,摘颗草莓藏放在巧克力做的房子里,好朋友一起分享劳动的果实.\r\n主口味:草莓奶油味 主要原料:乳脂奶油,纯巧克力,朗姆酒,幼砂糖,鲜草莓 甜度:二星（满五星） 最佳食用温度：5-7摄氏度', '10', '3');
INSERT INTO `goods` VALUES ('51', '草莓冰淇淋', '/picture/9-1.jpg', '/picture/9-2.jpg', '/picture/9-3.jpg', '299.00', '甜郁草莓配合冰淇淋的丝滑口感,让清爽与浪漫在爱情果园激情碰撞,恋上草莓,这份心情,美妙非凡.\r\n主口味:草莓口味 主要原料:草莓果溶 草莓  甜度:三星（满五星） 最佳食用温度：-12至-15摄氏度', '10', '1');
INSERT INTO `goods` VALUES ('52', '玫瑰舒芙蕾', '/picture/10-1.jpg', '/picture/10-2.jpg', '/picture/10-3.jpg', '28.00', '优选法国芝士,奶香浓郁,质地柔滑,口感细腻.法国芝士有助于提升糕点的整体口感,完美平衡酸度与甜味,制作出的糕点更加洁白纯美.', '10', '2');
INSERT INTO `goods` VALUES ('53', '半熟芝士', '/picture/11-1.jpg', '/picture/11-1.jpg', '/picture/11-1.jpg', '38.00', '为了保证芝士的香醇,半熟芝士借鉴日本温泉煮鸡蛋的做法,把芝士,牛奶,鸡蛋,天然奶油,砂糖,小麦粉拌成面糊,通过水浴蒸烤,保证芝士蛋糕细嫩,柔软,留住芝士的香醇细滑.', '10', '2');
INSERT INTO `goods` VALUES ('54', '青森芝士条', '/picture/12-1.jpg', '/picture/1-2.jpg', '/picture/12-1.jpg', '36.00', '青森芝士和风轻拂,,奶香浓郁,质地柔滑,口感细腻.', '10', '2');
INSERT INTO `goods` VALUES ('55', '蜂蜜蛋糕', '/picture/13-1.jpg', '/picture/13-1.jpg', '/picture/13-1.jpg', '36.00', '蛋黄与蜂蜜,淡奶油共同演绎的曼妙之旅.口感Q糯浓郁,回味绵软柔长.皱巴巴的造型,甜蜜蜜的感受.', '10', '2');
INSERT INTO `goods` VALUES ('56', '意大利芝士饼干', '/picture/14-1.jpg', '/picture/14-1.jpg', '/picture/14-1.jpg', '39.00', '采用帕玛森芝士为主要原材料制作的意大利芝士饼,奶香浓郁,鲜香可口.', '10', '2');
INSERT INTO `goods` VALUES ('57', '小熊乐园', '/picture/8-1.jpg', '/picture/8-2.jpg', '/picture/8-3.jpg', '299.00', '走进小熊乐园,与可爱的小熊一起准备过冬的食物吧,摘颗草莓藏放在巧克力做的房子里,好朋友一起分享劳动的果实.\r\n主口味:草莓奶油味 主要原料:乳脂奶油,纯巧克力,朗姆酒,幼砂糖,鲜草莓 甜度:二星（满五星） 最佳食用温度：5-7摄氏度', '10', '3');
INSERT INTO `goods` VALUES ('58', '草莓冰淇淋', '/picture/9-1.jpg', '/picture/9-2.jpg', '/picture/9-3.jpg', '299.00', '甜郁草莓配合冰淇淋的丝滑口感,让清爽与浪漫在爱情果园激情碰撞,恋上草莓,这份心情,美妙非凡.\r\n主口味:草莓口味 主要原料:草莓果溶 草莓  甜度:三星（满五星） 最佳食用温度：-12至-15摄氏度', '10', '1');
INSERT INTO `goods` VALUES ('59', '玫瑰舒芙蕾', '/picture/10-1.jpg', '/picture/10-2.jpg', '/picture/10-3.jpg', '28.00', '优选法国芝士,奶香浓郁,质地柔滑,口感细腻.法国芝士有助于提升糕点的整体口感,完美平衡酸度与甜味,制作出的糕点更加洁白纯美.', '10', '2');
INSERT INTO `goods` VALUES ('60', '半熟芝士', '/picture/11-1.jpg', '/picture/11-1.jpg', '/picture/11-1.jpg', '38.00', '为了保证芝士的香醇,半熟芝士借鉴日本温泉煮鸡蛋的做法,把芝士,牛奶,鸡蛋,天然奶油,砂糖,小麦粉拌成面糊,通过水浴蒸烤,保证芝士蛋糕细嫩,柔软,留住芝士的香醇细滑.', '10', '2');
INSERT INTO `goods` VALUES ('61', '青森芝士条', '/picture/12-1.jpg', '/picture/1-2.jpg', '/picture/12-1.jpg', '36.00', '青森芝士和风轻拂,,奶香浓郁,质地柔滑,口感细腻.', '10', '2');
INSERT INTO `goods` VALUES ('62', '蜂蜜蛋糕', '/picture/13-1.jpg', '/picture/13-1.jpg', '/picture/13-1.jpg', '36.00', '蛋黄与蜂蜜,淡奶油共同演绎的曼妙之旅.口感Q糯浓郁,回味绵软柔长.皱巴巴的造型,甜蜜蜜的感受.', '10', '2');
INSERT INTO `goods` VALUES ('63', '意大利芝士饼干', '/picture/14-1.jpg', '/picture/14-1.jpg', '/picture/14-1.jpg', '39.00', '采用帕玛森芝士为主要原材料制作的意大利芝士饼,奶香浓郁,鲜香可口.', '10', '2');
INSERT INTO `goods` VALUES ('64', '半熟芝士', '/picture/11-1.jpg', '/picture/11-1.jpg', '/picture/11-1.jpg', '38.00', '为了保证芝士的香醇,半熟芝士借鉴日本温泉煮鸡蛋的做法,把芝士,牛奶,鸡蛋,天然奶油,砂糖,小麦粉拌成面糊,通过水浴蒸烤,保证芝士蛋糕细嫩,柔软,留住芝士的香醇细滑.', '10', '2');
INSERT INTO `goods` VALUES ('65', '青森芝士条', '/picture/12-1.jpg', '/picture/1-2.jpg', '/picture/12-1.jpg', '36.00', '青森芝士和风轻拂,,奶香浓郁,质地柔滑,口感细腻.', '10', '2');
INSERT INTO `goods` VALUES ('66', '蜂蜜蛋糕', '/picture/13-1.jpg', '/picture/13-1.jpg', '/picture/13-1.jpg', '36.00', '蛋黄与蜂蜜,淡奶油共同演绎的曼妙之旅.口感Q糯浓郁,回味绵软柔长.皱巴巴的造型,甜蜜蜜的感受.', '10', '2');
INSERT INTO `goods` VALUES ('67', '意大利芝士饼干', '/picture/14-1.jpg', '/picture/14-1.jpg', '/picture/14-1.jpg', '39.00', '采用帕玛森芝士为主要原材料制作的意大利芝士饼,奶香浓郁,鲜香可口.', '10', '2');
INSERT INTO `goods` VALUES ('68', '小熊乐园', '/picture/8-1.jpg', '/picture/8-2.jpg', '/picture/8-3.jpg', '299.00', '走进小熊乐园,与可爱的小熊一起准备过冬的食物吧,摘颗草莓藏放在巧克力做的房子里,好朋友一起分享劳动的果实.\r\n主口味:草莓奶油味 主要原料:乳脂奶油,纯巧克力,朗姆酒,幼砂糖,鲜草莓 甜度:二星（满五星） 最佳食用温度：5-7摄氏度', '10', '3');
INSERT INTO `goods` VALUES ('69', '草莓冰淇淋', '/picture/9-1.jpg', '/picture/9-2.jpg', '/picture/9-3.jpg', '299.00', '甜郁草莓配合冰淇淋的丝滑口感,让清爽与浪漫在爱情果园激情碰撞,恋上草莓,这份心情,美妙非凡.\r\n主口味:草莓口味 主要原料:草莓果溶 草莓  甜度:三星（满五星） 最佳食用温度：-12至-15摄氏度', '10', '1');
INSERT INTO `goods` VALUES ('70', '玫瑰舒芙蕾', '/picture/10-1.jpg', '/picture/10-2.jpg', '/picture/10-3.jpg', '28.00', '优选法国芝士,奶香浓郁,质地柔滑,口感细腻.法国芝士有助于提升糕点的整体口感,完美平衡酸度与甜味,制作出的糕点更加洁白纯美.', '10', '2');
INSERT INTO `goods` VALUES ('71', '半熟芝士', '/picture/11-1.jpg', '/picture/11-1.jpg', '/picture/11-1.jpg', '38.00', '为了保证芝士的香醇,半熟芝士借鉴日本温泉煮鸡蛋的做法,把芝士,牛奶,鸡蛋,天然奶油,砂糖,小麦粉拌成面糊,通过水浴蒸烤,保证芝士蛋糕细嫩,柔软,留住芝士的香醇细滑.', '10', '2');
INSERT INTO `goods` VALUES ('72', '青森芝士条', '/picture/12-1.jpg', '/picture/1-2.jpg', '/picture/12-1.jpg', '36.00', '青森芝士和风轻拂,,奶香浓郁,质地柔滑,口感细腻.', '10', '2');
INSERT INTO `goods` VALUES ('73', '蜂蜜蛋糕', '/picture/13-1.jpg', '/picture/13-1.jpg', '/picture/13-1.jpg', '36.00', '蛋黄与蜂蜜,淡奶油共同演绎的曼妙之旅.口感Q糯浓郁,回味绵软柔长.皱巴巴的造型,甜蜜蜜的感受.', '10', '2');
INSERT INTO `goods` VALUES ('74', '意大利芝士饼干', '/picture/14-1.jpg', '/picture/14-1.jpg', '/picture/14-1.jpg', '39.00', '采用帕玛森芝士为主要原材料制作的意大利芝士饼,奶香浓郁,鲜香可口.', '10', '2');
INSERT INTO `goods` VALUES ('75', '小熊乐园', '/picture/8-1.jpg', '/picture/8-2.jpg', '/picture/8-3.jpg', '299.00', '走进小熊乐园,与可爱的小熊一起准备过冬的食物吧,摘颗草莓藏放在巧克力做的房子里,好朋友一起分享劳动的果实.\r\n主口味:草莓奶油味 主要原料:乳脂奶油,纯巧克力,朗姆酒,幼砂糖,鲜草莓 甜度:二星（满五星） 最佳食用温度：5-7摄氏度', '10', '3');
INSERT INTO `goods` VALUES ('76', '草莓冰淇淋', '/picture/9-1.jpg', '/picture/9-2.jpg', '/picture/9-3.jpg', '299.00', '甜郁草莓配合冰淇淋的丝滑口感,让清爽与浪漫在爱情果园激情碰撞,恋上草莓,这份心情,美妙非凡.\r\n主口味:草莓口味 主要原料:草莓果溶 草莓  甜度:三星（满五星） 最佳食用温度：-12至-15摄氏度', '10', '1');
INSERT INTO `goods` VALUES ('77', '玫瑰舒芙蕾', '/picture/10-1.jpg', '/picture/10-2.jpg', '/picture/10-3.jpg', '28.00', '优选法国芝士,奶香浓郁,质地柔滑,口感细腻.法国芝士有助于提升糕点的整体口感,完美平衡酸度与甜味,制作出的糕点更加洁白纯美.', '10', '2');
INSERT INTO `goods` VALUES ('78', '半熟芝士', '/picture/11-1.jpg', '/picture/11-1.jpg', '/picture/11-1.jpg', '38.00', '为了保证芝士的香醇,半熟芝士借鉴日本温泉煮鸡蛋的做法,把芝士,牛奶,鸡蛋,天然奶油,砂糖,小麦粉拌成面糊,通过水浴蒸烤,保证芝士蛋糕细嫩,柔软,留住芝士的香醇细滑.', '10', '2');
INSERT INTO `goods` VALUES ('79', '青森芝士条', '/picture/12-1.jpg', '/picture/1-2.jpg', '/picture/12-1.jpg', '36.00', '青森芝士和风轻拂,,奶香浓郁,质地柔滑,口感细腻.', '10', '2');
INSERT INTO `goods` VALUES ('80', '蜂蜜蛋糕', '/picture/13-1.jpg', '/picture/13-1.jpg', '/picture/13-1.jpg', '36.00', '蛋黄与蜂蜜,淡奶油共同演绎的曼妙之旅.口感Q糯浓郁,回味绵软柔长.皱巴巴的造型,甜蜜蜜的感受.', '10', '2');
INSERT INTO `goods` VALUES ('81', '意大利芝士饼干', '/picture/14-1.jpg', '/picture/14-1.jpg', '/picture/14-1.jpg', '39.00', '采用帕玛森芝士为主要原材料制作的意大利芝士饼,奶香浓郁,鲜香可口.', '10', '2');
INSERT INTO `goods` VALUES ('82', '小熊乐园', '/picture/8-1.jpg', '/picture/8-2.jpg', '/picture/8-3.jpg', '299.00', '走进小熊乐园,与可爱的小熊一起准备过冬的食物吧,摘颗草莓藏放在巧克力做的房子里,好朋友一起分享劳动的果实.\r\n主口味:草莓奶油味 主要原料:乳脂奶油,纯巧克力,朗姆酒,幼砂糖,鲜草莓 甜度:二星（满五星） 最佳食用温度：5-7摄氏度', '10', '3');
INSERT INTO `goods` VALUES ('83', '草莓冰淇淋', '/picture/9-1.jpg', '/picture/9-2.jpg', '/picture/9-3.jpg', '299.00', '甜郁草莓配合冰淇淋的丝滑口感,让清爽与浪漫在爱情果园激情碰撞,恋上草莓,这份心情,美妙非凡.\r\n主口味:草莓口味 主要原料:草莓果溶 草莓  甜度:三星（满五星） 最佳食用温度：-12至-15摄氏度', '10', '1');
INSERT INTO `goods` VALUES ('84', '玫瑰舒芙蕾', '/picture/10-1.jpg', '/picture/10-2.jpg', '/picture/10-3.jpg', '28.00', '优选法国芝士,奶香浓郁,质地柔滑,口感细腻.法国芝士有助于提升糕点的整体口感,完美平衡酸度与甜味,制作出的糕点更加洁白纯美.', '10', '2');
INSERT INTO `goods` VALUES ('85', '半熟芝士', '/picture/11-1.jpg', '/picture/11-1.jpg', '/picture/11-1.jpg', '38.00', '为了保证芝士的香醇,半熟芝士借鉴日本温泉煮鸡蛋的做法,把芝士,牛奶,鸡蛋,天然奶油,砂糖,小麦粉拌成面糊,通过水浴蒸烤,保证芝士蛋糕细嫩,柔软,留住芝士的香醇细滑.', '10', '2');
INSERT INTO `goods` VALUES ('86', '青森芝士条', '/picture/12-1.jpg', '/picture/1-2.jpg', '/picture/12-1.jpg', '36.00', '青森芝士和风轻拂,,奶香浓郁,质地柔滑,口感细腻.', '10', '2');
INSERT INTO `goods` VALUES ('87', '蜂蜜蛋糕', '/picture/13-1.jpg', '/picture/13-1.jpg', '/picture/13-1.jpg', '36.00', '蛋黄与蜂蜜,淡奶油共同演绎的曼妙之旅.口感Q糯浓郁,回味绵软柔长.皱巴巴的造型,甜蜜蜜的感受.', '10', '2');
INSERT INTO `goods` VALUES ('88', '意大利芝士饼干', '/picture/14-1.jpg', '/picture/14-1.jpg', '/picture/14-1.jpg', '39.00', '采用帕玛森芝士为主要原材料制作的意大利芝士饼,奶香浓郁,鲜香可口.', '10', '2');
INSERT INTO `goods` VALUES ('89', '小熊乐园', '/picture/8-1.jpg', '/picture/8-2.jpg', '/picture/8-3.jpg', '299.00', '走进小熊乐园,与可爱的小熊一起准备过冬的食物吧,摘颗草莓藏放在巧克力做的房子里,好朋友一起分享劳动的果实.\r\n主口味:草莓奶油味 主要原料:乳脂奶油,纯巧克力,朗姆酒,幼砂糖,鲜草莓 甜度:二星（满五星） 最佳食用温度：5-7摄氏度', '10', '3');
INSERT INTO `goods` VALUES ('90', '草莓冰淇淋', '/picture/9-1.jpg', '/picture/9-2.jpg', '/picture/9-3.jpg', '299.00', '甜郁草莓配合冰淇淋的丝滑口感,让清爽与浪漫在爱情果园激情碰撞,恋上草莓,这份心情,美妙非凡.\r\n主口味:草莓口味 主要原料:草莓果溶 草莓  甜度:三星（满五星） 最佳食用温度：-12至-15摄氏度', '10', '1');
INSERT INTO `goods` VALUES ('91', '玫瑰舒芙蕾', '/picture/10-1.jpg', '/picture/10-2.jpg', '/picture/10-3.jpg', '28.00', '优选法国芝士,奶香浓郁,质地柔滑,口感细腻.法国芝士有助于提升糕点的整体口感,完美平衡酸度与甜味,制作出的糕点更加洁白纯美.', '10', '2');
INSERT INTO `goods` VALUES ('92', '半熟芝士', '/picture/11-1.jpg', '/picture/11-1.jpg', '/picture/11-1.jpg', '38.00', '为了保证芝士的香醇,半熟芝士借鉴日本温泉煮鸡蛋的做法,把芝士,牛奶,鸡蛋,天然奶油,砂糖,小麦粉拌成面糊,通过水浴蒸烤,保证芝士蛋糕细嫩,柔软,留住芝士的香醇细滑.', '10', '2');
INSERT INTO `goods` VALUES ('93', '青森芝士条', '/picture/12-1.jpg', '/picture/1-2.jpg', '/picture/12-1.jpg', '36.00', '青森芝士和风轻拂,,奶香浓郁,质地柔滑,口感细腻.', '10', '2');
INSERT INTO `goods` VALUES ('94', '蜂蜜蛋糕', '/picture/13-1.jpg', '/picture/13-1.jpg', '/picture/13-1.jpg', '36.00', '蛋黄与蜂蜜,淡奶油共同演绎的曼妙之旅.口感Q糯浓郁,回味绵软柔长.皱巴巴的造型,甜蜜蜜的感受.', '10', '2');
INSERT INTO `goods` VALUES ('95', '意大利芝士饼干', '/picture/14-1.jpg', '/picture/14-1.jpg', '/picture/14-1.jpg', '39.00', '采用帕玛森芝士为主要原材料制作的意大利芝士饼,奶香浓郁,鲜香可口.', '10', '2');
INSERT INTO `goods` VALUES ('97', '草莓冰淇淋', '/picture/9-1.jpg', '/picture/9-2.jpg', '/picture/9-3.jpg', '299.00', '甜郁草莓配合冰淇淋的丝滑口感,让清爽与浪漫在爱情果园激情碰撞,恋上草莓,这份心情,美妙非凡.\r\n主口味:草莓口味 主要原料:草莓果溶 草莓  甜度:三星（满五星） 最佳食用温度：-12至-15摄氏度', '10', '1');
INSERT INTO `goods` VALUES ('98', '玫瑰舒芙蕾', '/picture/10-1.jpg', '/picture/10-2.jpg', '/picture/10-3.jpg', '28.00', '优选法国芝士,奶香浓郁,质地柔滑,口感细腻.法国芝士有助于提升糕点的整体口感,完美平衡酸度与甜味,制作出的糕点更加洁白纯美.', '10', '2');
INSERT INTO `goods` VALUES ('99', '半熟芝士', '/picture/11-1.jpg', '/picture/11-1.jpg', '/picture/11-1.jpg', '38.00', '为了保证芝士的香醇,半熟芝士借鉴日本温泉煮鸡蛋的做法,把芝士,牛奶,鸡蛋,天然奶油,砂糖,小麦粉拌成面糊,通过水浴蒸烤,保证芝士蛋糕细嫩,柔软,留住芝士的香醇细滑.', '10', '2');
INSERT INTO `goods` VALUES ('100', '青森芝士条', '/picture/12-1.jpg', '/picture/1-2.jpg', '/picture/12-1.jpg', '36.00', '青森芝士和风轻拂,,奶香浓郁,质地柔滑,口感细腻.', '10', '2');
INSERT INTO `goods` VALUES ('101', '蜂蜜蛋糕', '/picture/13-1.jpg', '/picture/13-1.jpg', '/picture/13-1.jpg', '36.00', '蛋黄与蜂蜜,淡奶油共同演绎的曼妙之旅.口感Q糯浓郁,回味绵软柔长.皱巴巴的造型,甜蜜蜜的感受.', '10', '2');
INSERT INTO `goods` VALUES ('102', '意大利芝士饼干', '/picture/14-1.jpg', '/picture/14-1.jpg', '/picture/14-1.jpg', '39.00', '采用帕玛森芝士为主要原材料制作的意大利芝士饼,奶香浓郁,鲜香可口.', '10', '2');
INSERT INTO `goods` VALUES ('103', '半熟芝士', '/picture/11-1.jpg', '/picture/11-1.jpg', '/picture/11-1.jpg', '38.00', '为了保证芝士的香醇,半熟芝士借鉴日本温泉煮鸡蛋的做法,把芝士,牛奶,鸡蛋,天然奶油,砂糖,小麦粉拌成面糊,通过水浴蒸烤,保证芝士蛋糕细嫩,柔软,留住芝士的香醇细滑.', '10', '2');
INSERT INTO `goods` VALUES ('104', '青森芝士条', '/picture/12-1.jpg', '/picture/1-2.jpg', '/picture/12-1.jpg', '36.00', '青森芝士和风轻拂,,奶香浓郁,质地柔滑,口感细腻.', '10', '2');
INSERT INTO `goods` VALUES ('105', '蜂蜜蛋糕', '/picture/13-1.jpg', '/picture/13-1.jpg', '/picture/13-1.jpg', '36.00', '蛋黄与蜂蜜,淡奶油共同演绎的曼妙之旅.口感Q糯浓郁,回味绵软柔长.皱巴巴的造型,甜蜜蜜的感受.', '10', '2');
INSERT INTO `goods` VALUES ('106', '意大利芝士饼干', '/picture/14-1.jpg', '/picture/14-1.jpg', '/picture/14-1.jpg', '39.00', '采用帕玛森芝士为主要原材料制作的意大利芝士饼,奶香浓郁,鲜香可口.', '10', '2');
INSERT INTO `goods` VALUES ('108', '草莓冰淇淋', '/picture/9-1.jpg', '/picture/9-2.jpg', '/picture/9-3.jpg', '299.00', '甜郁草莓配合冰淇淋的丝滑口感,让清爽与浪漫在爱情果园激情碰撞,恋上草莓,这份心情,美妙非凡.\r\n主口味:草莓口味 主要原料:草莓果溶 草莓  甜度:三星（满五星） 最佳食用温度：-12至-15摄氏度', '10', '1');
INSERT INTO `goods` VALUES ('109', '玫瑰舒芙蕾', '/picture/10-1.jpg', '/picture/10-2.jpg', '/picture/10-3.jpg', '28.00', '优选法国芝士,奶香浓郁,质地柔滑,口感细腻.法国芝士有助于提升糕点的整体口感,完美平衡酸度与甜味,制作出的糕点更加洁白纯美.', '10', '2');
INSERT INTO `goods` VALUES ('110', '半熟芝士', '/picture/11-1.jpg', '/picture/11-1.jpg', '/picture/11-1.jpg', '38.00', '为了保证芝士的香醇,半熟芝士借鉴日本温泉煮鸡蛋的做法,把芝士,牛奶,鸡蛋,天然奶油,砂糖,小麦粉拌成面糊,通过水浴蒸烤,保证芝士蛋糕细嫩,柔软,留住芝士的香醇细滑.', '10', '2');
INSERT INTO `goods` VALUES ('111', '青森芝士条', '/picture/12-1.jpg', '/picture/1-2.jpg', '/picture/12-1.jpg', '36.00', '青森芝士和风轻拂,,奶香浓郁,质地柔滑,口感细腻.', '10', '2');

-- ----------------------------
-- Table structure for orderitem
-- ----------------------------
DROP TABLE IF EXISTS `orderitem`;
CREATE TABLE `orderitem` (
  `iid` int NOT NULL AUTO_INCREMENT,
  `iprice` float DEFAULT NULL,
  `iamount` int DEFAULT NULL,
  `goods_id` int DEFAULT NULL,
  `orders_id` int DEFAULT NULL,
  PRIMARY KEY (`iid`),
  KEY `Fk_o_o_fk` (`orders_id`),
  KEY `Fk_g_o_fk` (`goods_id`),
  CONSTRAINT `Fk_g_o_fk` FOREIGN KEY (`goods_id`) REFERENCES `goods` (`gid`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `Fk_o_o_fk` FOREIGN KEY (`orders_id`) REFERENCES `orders` (`oid`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE=InnoDB AUTO_INCREMENT=73 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of orderitem
-- ----------------------------
INSERT INTO `orderitem` VALUES ('52', '36', '1', '12', '60');
INSERT INTO `orderitem` VALUES ('53', '299', '1', '15', '60');
INSERT INTO `orderitem` VALUES ('54', '299', '1', '16', '61');
INSERT INTO `orderitem` VALUES ('55', '36', '1', '12', '61');
INSERT INTO `orderitem` VALUES ('56', '229', '1', '3', '63');
INSERT INTO `orderitem` VALUES ('57', '36', '1', '12', '63');
INSERT INTO `orderitem` VALUES ('58', '50.2', '1', '1', '64');
INSERT INTO `orderitem` VALUES ('59', '229', '1', '3', '64');
INSERT INTO `orderitem` VALUES ('60', '299', '1', '7', '65');
INSERT INTO `orderitem` VALUES ('61', '28', '1', '10', '65');
INSERT INTO `orderitem` VALUES ('62', '269', '1', '5', '71');
INSERT INTO `orderitem` VALUES ('63', '50.2', '1', '1', '73');
INSERT INTO `orderitem` VALUES ('64', '229', '1', '2', '73');
INSERT INTO `orderitem` VALUES ('65', '229', '1', '3', '74');
INSERT INTO `orderitem` VALUES ('66', '36', '1', '13', '74');
INSERT INTO `orderitem` VALUES ('67', '229', '1', '3', '75');
INSERT INTO `orderitem` VALUES ('68', '36', '1', '12', '75');
INSERT INTO `orderitem` VALUES ('69', '36', '1', '12', '76');
INSERT INTO `orderitem` VALUES ('70', '50.2', '2', '1', '77');
INSERT INTO `orderitem` VALUES ('71', '269', '5', '5', '77');
INSERT INTO `orderitem` VALUES ('72', '36', '1', '12', '77');

-- ----------------------------
-- Table structure for orders
-- ----------------------------
DROP TABLE IF EXISTS `orders`;
CREATE TABLE `orders` (
  `oid` int NOT NULL AUTO_INCREMENT,
  `ototal` float DEFAULT NULL,
  `oamount` int DEFAULT NULL,
  `ostatus` tinyint(1) DEFAULT NULL,
  `opaytype` tinyint(1) DEFAULT NULL,
  `oname` varchar(45) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `ophone` varchar(45) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `oaddress` varchar(45) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `odatetime` datetime NOT NULL,
  `user_id` int DEFAULT NULL,
  PRIMARY KEY (`oid`),
  KEY `Fk_u_o_fk` (`user_id`),
  CONSTRAINT `Fk_u_o_fk` FOREIGN KEY (`user_id`) REFERENCES `user` (`uid`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE=InnoDB AUTO_INCREMENT=78 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of orders
-- ----------------------------
INSERT INTO `orders` VALUES ('60', '335', '2', '2', '2', '王俊凯', '19990921118', '新加坡', '2022-10-09 00:00:00', '1');
INSERT INTO `orders` VALUES ('61', '335', '2', '3', '1', '王俊凯', '19990921118', '新加坡', '2022-10-09 00:00:00', '1');
INSERT INTO `orders` VALUES ('62', '114.2', '3', '2', '2', '王俊凯', '19990921118', '新加坡', '2022-10-09 00:00:00', '1');
INSERT INTO `orders` VALUES ('63', '265', '2', '3', '3', '王俊凯', '19990921118', '新加坡', '2022-10-09 00:00:00', '1');
INSERT INTO `orders` VALUES ('64', '279.2', '2', '3', '1', '王俊凯', '19990921118', '新加坡', '2022-10-09 00:00:00', '1');
INSERT INTO `orders` VALUES ('65', '327', '2', '3', '3', '王俊凯', '19990921118', '新加坡', '2022-10-09 00:00:00', '1');
INSERT INTO `orders` VALUES ('66', '114.2', '3', '2', '2', '王俊凯', '19990921118', '新加坡', '2022-10-09 00:00:00', '1');
INSERT INTO `orders` VALUES ('67', '114.2', '3', '2', '2', '王俊凯', '19990921118', '新加坡', '2022-10-09 00:00:00', '1');
INSERT INTO `orders` VALUES ('68', '114.2', '3', '2', '2', '王俊凯', '19990921118', '新加坡', '2022-10-09 00:00:00', '1');
INSERT INTO `orders` VALUES ('69', '114.2', '3', '2', '2', '王俊凯', '19990921118', '新加坡', '2022-10-09 00:00:00', '1');
INSERT INTO `orders` VALUES ('70', '114.2', '3', '2', '2', '王俊凯', '19990921118', '新加坡', '2022-10-09 11:39:58', '1');
INSERT INTO `orders` VALUES ('71', '269', '1', '3', '1', '王俊凯', '19990921118', '新加坡', '2022-10-09 11:45:40', '1');
INSERT INTO `orders` VALUES ('72', '114.2', '3', '2', '2', '王俊凯', '19990921118', '新加坡', '2022-10-09 19:49:36', '1');
INSERT INTO `orders` VALUES ('73', '279.2', '2', '3', '1', '王俊凯', '19990921118', '新加坡', '2022-10-09 19:55:33', '1');
INSERT INTO `orders` VALUES ('74', '265', '2', '3', '1', '王俊凯', '19990921118', '新加坡', '2022-10-09 20:09:36', '1');
INSERT INTO `orders` VALUES ('75', '265', '2', '3', '1', '啊叼', '15837300360', '河南省新乡市红旗区河南科技学院', '2022-10-09 20:26:45', '25');
INSERT INTO `orders` VALUES ('76', '36', '1', '3', '3', '李四', '12345678910', '南极', '2022-10-11 18:18:41', '28');
INSERT INTO `orders` VALUES ('77', '1481.4', '8', '3', '1', 'aDmin', '12345679999', '河南省', '2022-10-11 18:49:49', '6');

-- ----------------------------
-- Table structure for recommend
-- ----------------------------
DROP TABLE IF EXISTS `recommend`;
CREATE TABLE `recommend` (
  `rid` int NOT NULL AUTO_INCREMENT,
  `rtype` tinyint(1) DEFAULT NULL,
  `goods_id` int DEFAULT NULL,
  PRIMARY KEY (`rid`),
  KEY `Fk_g_r_fk` (`goods_id`),
  CONSTRAINT `Fk_g_r_fk` FOREIGN KEY (`goods_id`) REFERENCES `goods` (`gid`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE=InnoDB AUTO_INCREMENT=25 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of recommend
-- ----------------------------
INSERT INTO `recommend` VALUES ('1', '2', '1');
INSERT INTO `recommend` VALUES ('2', '2', '2');
INSERT INTO `recommend` VALUES ('3', '2', '3');
INSERT INTO `recommend` VALUES ('4', '2', '4');
INSERT INTO `recommend` VALUES ('5', '2', '5');
INSERT INTO `recommend` VALUES ('6', '2', '6');
INSERT INTO `recommend` VALUES ('7', '2', '7');
INSERT INTO `recommend` VALUES ('8', '2', '8');
INSERT INTO `recommend` VALUES ('9', '2', '9');
INSERT INTO `recommend` VALUES ('10', '3', '10');
INSERT INTO `recommend` VALUES ('11', '3', '12');
INSERT INTO `recommend` VALUES ('12', '3', '13');
INSERT INTO `recommend` VALUES ('13', '3', '14');
INSERT INTO `recommend` VALUES ('14', '3', '15');
INSERT INTO `recommend` VALUES ('15', '3', '16');
INSERT INTO `recommend` VALUES ('16', '3', '17');
INSERT INTO `recommend` VALUES ('17', '3', '18');
INSERT INTO `recommend` VALUES ('18', '3', '19');
INSERT INTO `recommend` VALUES ('19', '3', '20');
INSERT INTO `recommend` VALUES ('20', '1', '22');
INSERT INTO `recommend` VALUES ('21', '1', '1');
INSERT INTO `recommend` VALUES ('22', '1', '69');
INSERT INTO `recommend` VALUES ('23', '3', '1');
INSERT INTO `recommend` VALUES ('24', '1', '9');

-- ----------------------------
-- Table structure for type
-- ----------------------------
DROP TABLE IF EXISTS `type`;
CREATE TABLE `type` (
  `tid` int NOT NULL AUTO_INCREMENT,
  `tname` varchar(45) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`tid`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of type
-- ----------------------------
INSERT INTO `type` VALUES ('1', '冰淇淋系列');
INSERT INTO `type` VALUES ('2', '零食系列');
INSERT INTO `type` VALUES ('3', '儿童系列');
INSERT INTO `type` VALUES ('4', '法式系列');
INSERT INTO `type` VALUES ('5', '经典系列');
INSERT INTO `type` VALUES ('8', '节日系列');
INSERT INTO `type` VALUES ('9', '成人系列');
INSERT INTO `type` VALUES ('10', '恶搞系列');

-- ----------------------------
-- Table structure for user
-- ----------------------------
DROP TABLE IF EXISTS `user`;
CREATE TABLE `user` (
  `uid` int NOT NULL AUTO_INCREMENT,
  `username` varchar(45) COLLATE utf8mb4_unicode_ci NOT NULL,
  `uemail` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `upassword` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `uname` varchar(45) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `uphone` varchar(45) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `uaddress` varchar(45) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `isadmin` bit(1) DEFAULT NULL,
  `isvalidate` bit(1) DEFAULT NULL,
  PRIMARY KEY (`uid`)
) ENGINE=InnoDB AUTO_INCREMENT=29 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of user
-- ----------------------------
INSERT INTO `user` VALUES ('1', 'karry', 'karry@qq.com', '0921', '王俊凯', '19990925555', '新加坡', null, '');
INSERT INTO `user` VALUES ('6', 'admin', 'admin@sikiedu.com', 'admin', 'aDmin', '12345679999', '无', '', '');
INSERT INTO `user` VALUES ('25', 'aDiao', 'aDiao@qq.com', '2003', '啊叼', '15837300360', '河南省新乡市红旗区河南科技学院', null, '');
INSERT INTO `user` VALUES ('26', 'username', 'uemail', 'upassword', 'uname', 'uphone', 'uaddress', '\0', '\0');
INSERT INTO `user` VALUES ('27', 'zhangsan', 'zhangsan@qq.com', 'zhang', '张三', '15837300360', '北极', '\0', '');
INSERT INTO `user` VALUES ('28', 'lisi', 'lisi@qq.com', 'li123', '李四', '12345678910', '南极', null, '');
