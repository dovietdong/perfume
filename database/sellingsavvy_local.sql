/*
 Navicat Premium Data Transfer

 Source Server         : local
 Source Server Type    : MySQL
 Source Server Version : 100428
 Source Host           : localhost:3344
 Source Schema         : sellingsavvy_local

 Target Server Type    : MySQL
 Target Server Version : 100428
 File Encoding         : 65001

 Date: 12/09/2023 10:46:54
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for account
-- ----------------------------
DROP TABLE IF EXISTS `account`;
CREATE TABLE `account`  (
  `account_id` int NOT NULL AUTO_INCREMENT,
  `account_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `account_password` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `account_email` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `account_phone` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `account_type` int NOT NULL,
  `account_status` int NOT NULL,
  PRIMARY KEY (`account_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 25 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of account
-- ----------------------------
INSERT INTO `account` VALUES (1, 'Quốc Hưng', 'A1quochung', 'doquochung11111@gmail.com', '0859525502', 2, 0);
INSERT INTO `account` VALUES (2, 'Thịnh Đặng', '7d0febc02cda5682327991a3f6ade711', 'test2@gmail.com', '', 0, 0);
INSERT INTO `account` VALUES (3, 'Diệu Anh', '7d0febc02cda5682327991a3f6ade711', 'test3@gmail.com', '0979359018', 0, 0);
INSERT INTO `account` VALUES (4, 'Hà Văn Thắng', '7d0febc02cda5682327991a3f6ade711', 'test5@gmail.com', '', 0, 0);
INSERT INTO `account` VALUES (5, 'Diệu Nhi', 'e0efceebe9f32e39ff3e56f3eb75e5ff', 'test1@gmail.com', '', 0, 0);
INSERT INTO `account` VALUES (6, 'admin', 'e10adc3949ba59abbe56e057f20f883e', 'admin@gmail.com', '', 2, 0);
INSERT INTO `account` VALUES (23, 'Hung Do Quoc', 'e10adc3949ba59abbe56e057f20f883e', 'dauhuyen1@gmail.com', '', 0, 0);
INSERT INTO `account` VALUES (24, 'test', 'e10adc3949ba59abbe56e057f20f883e', 'test@gmail.com', '', 0, 0);

-- ----------------------------
-- Table structure for article
-- ----------------------------
DROP TABLE IF EXISTS `article`;
CREATE TABLE `article`  (
  `article_id` int NOT NULL AUTO_INCREMENT,
  `article_author` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `article_title` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `article_summary` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `article_content` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `article_image` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `article_date` date NOT NULL,
  `article_status` int NOT NULL,
  PRIMARY KEY (`article_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 10 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of article
-- ----------------------------
INSERT INTO `article` VALUES (8, 'Edriksen', 'My closet is a magical place where clothes I forgot I even had suddenly reappear, as if by fashion wizardry.', '<p>My closet is a magical place where clothes I forgot I even had suddenly reappear, as if by fashion wizardry.</p>\r\n', '<p>My closet is a magical place where clothes I forgot I even had suddenly reappear, as if by fashion wizardry.</p>\r\n', '1694270942_0x540@1683642283433.png', '2023-09-09', 1);
INSERT INTO `article` VALUES (9, 'Tulen', 'Wearing skinny jeans is like trying to fit into a wine bottle – you either succeed gracefully or end up in a hilarious struggle!', '<p>Wearing skinny jeans is like trying to fit into a wine bottle &ndash; you either succeed gracefully or end up in a hilarious struggle!</p>\r\n', '<h2>Wearing skinny jeans is like trying to fit into a wine bottle &ndash; you either succeed gracefully or end up in a hilarious struggle!</h2>\r\n', '1694270935_02W3058-20001-00013_01_360x.png', '2023-09-09', 1);

-- ----------------------------
-- Table structure for brand
-- ----------------------------
DROP TABLE IF EXISTS `brand`;
CREATE TABLE `brand`  (
  `brand_id` int NOT NULL AUTO_INCREMENT,
  `brand_name` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  PRIMARY KEY (`brand_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 7 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of brand
-- ----------------------------
INSERT INTO `brand` VALUES (1, 'Nike');
INSERT INTO `brand` VALUES (2, 'Adidas');
INSERT INTO `brand` VALUES (3, 'Gucci');
INSERT INTO `brand` VALUES (4, 'Zara');

-- ----------------------------
-- Table structure for capacity
-- ----------------------------
DROP TABLE IF EXISTS `capacity`;
CREATE TABLE `capacity`  (
  `capacity_id` int NOT NULL AUTO_INCREMENT,
  `capacity_name` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  PRIMARY KEY (`capacity_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 13 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of capacity
-- ----------------------------
INSERT INTO `capacity` VALUES (3, '0.5 kg');
INSERT INTO `capacity` VALUES (4, '1 kg');
INSERT INTO `capacity` VALUES (5, '1.5 kg');
INSERT INTO `capacity` VALUES (6, '1.75 kg');

-- ----------------------------
-- Table structure for category
-- ----------------------------
DROP TABLE IF EXISTS `category`;
CREATE TABLE `category`  (
  `category_id` int NOT NULL AUTO_INCREMENT,
  `category_name` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `category_description` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `category_image` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  PRIMARY KEY (`category_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 12 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of category
-- ----------------------------
INSERT INTO `category` VALUES (1, 'Sweathshirt', 'Sweathshirt', 'sweatshirt.jpg');
INSERT INTO `category` VALUES (2, 'T-shirt', 'T-shirt', 'tshirt.jpg');
INSERT INTO `category` VALUES (3, 'New Arrivals', 'New Arrivals', 'banner-all.jpg');

-- ----------------------------
-- Table structure for collection
-- ----------------------------
DROP TABLE IF EXISTS `collection`;
CREATE TABLE `collection`  (
  `collection_id` int NOT NULL AUTO_INCREMENT,
  `collection_name` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `collection_keyword` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `collection_image` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `collection_description` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `collection_order` int NOT NULL,
  `collection_type` int NOT NULL,
  PRIMARY KEY (`collection_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 2 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of collection
-- ----------------------------
INSERT INTO `collection` VALUES (1, 'Chanel', 'chanel', '1684376498_nuoc-hoa-chanel-nam-11.jpg', 'Nước hoa chanel', 0, 1);

-- ----------------------------
-- Table structure for comment
-- ----------------------------
DROP TABLE IF EXISTS `comment`;
CREATE TABLE `comment`  (
  `comment_id` int NOT NULL AUTO_INCREMENT,
  `article_id` int NOT NULL,
  `comment_name` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `comment_email` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `comment_content` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `comment_date` date NOT NULL,
  `comment_status` int NOT NULL,
  PRIMARY KEY (`comment_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 17 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of comment
-- ----------------------------
INSERT INTO `comment` VALUES (9, 8, 'Thịnh', 'toilatoi@gmail.com', 'Good', '2023-05-30', 1);
INSERT INTO `comment` VALUES (10, 7, 'Thịnh', 'latoiday@gmail.com', 'aaaaa', '2023-06-07', 0);
INSERT INTO `comment` VALUES (14, 8, 'Thắng', 'toivanlatoi@gmail.com', 'Very good', '2023-06-13', 1);
INSERT INTO `comment` VALUES (15, 8, 'tú', 'fddf@gmail.com', 'đắt', '2023-06-18', 0);
INSERT INTO `comment` VALUES (16, 8, 'tú', 'fddf@gmail.com', 'đắt', '2023-06-18', 0);

-- ----------------------------
-- Table structure for customer
-- ----------------------------
DROP TABLE IF EXISTS `customer`;
CREATE TABLE `customer`  (
  `customer_id` int NOT NULL AUTO_INCREMENT,
  `account_id` int NOT NULL,
  `customer_name` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `customer_gender` int NOT NULL,
  `customer_email` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `customer_phone` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `customer_address` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  PRIMARY KEY (`customer_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 22 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of customer
-- ----------------------------
INSERT INTO `customer` VALUES (1, 2, 'Nguyễn phúc an', 0, 'annp@gmail.com', '0979359018', 'Hà Nội');
INSERT INTO `customer` VALUES (2, 7, 'Đặng Hữu Thịnh', 1, 'dhthinh.cntt@gmail.com', '0878398141', 'Quan Hoa, Cầu Giấy, Hà Nội');
INSERT INTO `customer` VALUES (3, 2, 'Phúc An', 1, 'annp@gmail.com', '0887398147', 'Quốc Oai, Hà Nội');
INSERT INTO `customer` VALUES (5, 13, 'Nguyễn Văn Khánh', 1, 'ankhanh184@gmail.com', '09648383113', 'Long Phú, Quốc Oai, Hà Nội');
INSERT INTO `customer` VALUES (6, 1, 'Thịnh Đặng', 1, 'thinh191204033@gmail.com', '0878398141', 'Quan Hoa, Cầu Giấy, Hà Nội');
INSERT INTO `customer` VALUES (8, 14, 'Diệu Anh', 2, 'dieuanh@gmail.com', '0964838311', 'Long Phú, Quốc Oai, Hà Nội');
INSERT INTO `customer` VALUES (9, 15, 'Hà Văn Thắng', 1, 'thangthattha@gmail.com', '039415515', 'Quan Hoa, Cầu Giấy, Hà Nội');
INSERT INTO `customer` VALUES (10, 16, 'Phạm Văn Thuận', 1, 'thuanpv@gmail.com', '0971113114', 'Hoàng Mai, Hà Nội');
INSERT INTO `customer` VALUES (11, 0, 'thịnh', 0, 'thimh174658@gmail.comm', '0979359018', 'cầu giấy');
INSERT INTO `customer` VALUES (15, 18, 'Diệu Nhi', 2, 'annp260808@gmail.com', '0971113114', 'Cầu Giấy');
INSERT INTO `customer` VALUES (17, 20, 'Nguyễn Trác Hậu', 1, 'haunguyen@gmail.com', '0878398141', 'Ba Vì, Hà Nội');
INSERT INTO `customer` VALUES (18, 21, 'Hà Thắng', 1, 'hathang@gmail.com', '0979359018', 'Quan Hoa, Cầu Giấy, Hà Nội');
INSERT INTO `customer` VALUES (19, 22, 'admin', 0, 'admin@gmail.com', '0999999999', 'hn');
INSERT INTO `customer` VALUES (20, 23, 'Hung Do Quoc', 1, 'dauhuyen1@gmail.com', '0859525502', '26 Phạm văn nghị');
INSERT INTO `customer` VALUES (21, 24, 'test', 0, 'test@gmail.com', '99090909090', 'test');

-- ----------------------------
-- Table structure for delivery
-- ----------------------------
DROP TABLE IF EXISTS `delivery`;
CREATE TABLE `delivery`  (
  `delivery_id` int NOT NULL,
  `account_id` int NOT NULL,
  `delivery_name` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `delivery_phone` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `delivery_address` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `delivery_note` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  PRIMARY KEY (`delivery_id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of delivery
-- ----------------------------
INSERT INTO `delivery` VALUES (1782, 22, 'admin', '999999999', 'hn', '');
INSERT INTO `delivery` VALUES (3001, 22, 'admin', '999999999', 'hn', '');
INSERT INTO `delivery` VALUES (4294, 22, 'admin', '999999999', 'hn', '');
INSERT INTO `delivery` VALUES (5153, 22, 'admin', '999999999', 'hn', '');
INSERT INTO `delivery` VALUES (6345, 22, 'admin', '999999999', 'hn', '');
INSERT INTO `delivery` VALUES (9693, 22, 'dong', '987876', 'TB', 'nhanh');
INSERT INTO `delivery` VALUES (9924, 24, 'test', '99090909090', 'test', 'ship nhanh');

-- ----------------------------
-- Table structure for evaluate
-- ----------------------------
DROP TABLE IF EXISTS `evaluate`;
CREATE TABLE `evaluate`  (
  `evaluate_id` int NOT NULL AUTO_INCREMENT,
  `account_id` int NOT NULL,
  `product_id` int NOT NULL,
  `account_name` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `evaluate_rate` int NOT NULL,
  `evaluate_content` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `evaluate_date` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `evaluate_status` int NOT NULL,
  PRIMARY KEY (`evaluate_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 24 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of evaluate
-- ----------------------------
INSERT INTO `evaluate` VALUES (13, 13, 20, 'Nguyễn Văn khánh', 5, 'Tuyệt luôn !!!', '2023-06-13 10:04:05', 1);
INSERT INTO `evaluate` VALUES (14, 13, 19, 'Nguyễn Văn khánh', 4, 'Sản phẩm ổn trong tầm giá', '2023-06-13 10:07:48', 1);
INSERT INTO `evaluate` VALUES (18, 14, 22, 'Diệu Anh', 5, 'Tuyệt, đi làm chị em trong công ty ai cũng khen', '2023-06-14 09:49:54', 1);
INSERT INTO `evaluate` VALUES (19, 7, 10, 'Đặng Hữu Thịnh', 4, 'sản phẩm tuyệt lắm ạ', '2023-06-19 12:40:20', 1);
INSERT INTO `evaluate` VALUES (20, 13, 10, 'Nguyễn Văn khánh', 5, 'tuyệt!!!', '2023-06-19 12:41:22', 1);
INSERT INTO `evaluate` VALUES (23, 7, 14, 'Đặng Hữu Thịnh', 4, 'ccc', '2023-07-07 18:05:41', 1);

-- ----------------------------
-- Table structure for inventory
-- ----------------------------
DROP TABLE IF EXISTS `inventory`;
CREATE TABLE `inventory`  (
  `inventory_id` int NOT NULL AUTO_INCREMENT,
  `account_id` int NOT NULL,
  `staf_name` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `supplier_name` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `supplier_phone` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `inventory_note` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `inventory_code` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `inventory_date` date NOT NULL,
  `total_amount` float NOT NULL,
  `inventory_status` int NOT NULL,
  PRIMARY KEY (`inventory_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 17 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of inventory
-- ----------------------------
INSERT INTO `inventory` VALUES (1, 0, 'Thịnh Đặng', 'Guha Store', '', 'thêm hàng', '9124', '2023-05-22', 29500000, 0);
INSERT INTO `inventory` VALUES (2, 0, 'Thịnh Đặng', 'Guha Store', '', 'thêm hàng', '4615', '2023-05-22', 30000000, 0);
INSERT INTO `inventory` VALUES (3, 1, 'Thịnh', 'MISA JSC', '', 'Bổ sung hàng', '7331', '2023-05-24', 9000000, 0);
INSERT INTO `inventory` VALUES (4, 0, 'Thịnh Đặng', 'Brave Bits', '', 'Nhập lô sản phẩm mới', '9288', '2023-06-06', 114660000, 0);
INSERT INTO `inventory` VALUES (5, 7, 'Thịnh', 'Guha Store', '', 'thêm hàng', '8549', '2023-06-06', 7000000, 0);
INSERT INTO `inventory` VALUES (8, 20, 'Thịnh Đặng', 'MISA JSC', '', 'Bổ sung hàng', '3997', '2023-06-18', 63500000, 0);
INSERT INTO `inventory` VALUES (9, 20, 'Thịnh Đặng', 'Brave Bits', '', 'Bổ sung hàng', '4658', '2023-06-18', 15000000, 0);
INSERT INTO `inventory` VALUES (13, 20, 'Thịnh Đặng', 'Guha Store', '0985789465', 'thêm hàng', '3044', '2023-06-18', 27500000, 0);
INSERT INTO `inventory` VALUES (14, 0, 'Thịnh Đặng', 'Guha Store', '0985789465', 'Bổ sung hàng', '3450', '2023-06-19', 42500000, 0);
INSERT INTO `inventory` VALUES (15, 0, 'AnKhanh', 'Guha Store', '0985789465', 'thêm hàng', '9540', '2023-06-19', 27500000, 0);
INSERT INTO `inventory` VALUES (16, 0, 'Tú Lê', 'Brave Bits', '0985789465', 'Bổ sung hàng', '5574', '2023-06-19', 6000000, 0);

-- ----------------------------
-- Table structure for inventory_detail
-- ----------------------------
DROP TABLE IF EXISTS `inventory_detail`;
CREATE TABLE `inventory_detail`  (
  `inventory_detail_id` int NOT NULL AUTO_INCREMENT,
  `inventory_code` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `product_id` int NOT NULL,
  `product_quantity` int NOT NULL,
  `product_price_import` float NOT NULL,
  PRIMARY KEY (`inventory_detail_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 20 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of inventory_detail
-- ----------------------------
INSERT INTO `inventory_detail` VALUES (1, '9124', 21, 3, 2500000);
INSERT INTO `inventory_detail` VALUES (2, '9124', 18, 11, 2000000);
INSERT INTO `inventory_detail` VALUES (3, '4615', 21, 12, 2500000);
INSERT INTO `inventory_detail` VALUES (4, '7331', 19, 3, 3000000);
INSERT INTO `inventory_detail` VALUES (5, '9288', 15, 12, 9555000);
INSERT INTO `inventory_detail` VALUES (6, '8549', 21, 2, 2500000);
INSERT INTO `inventory_detail` VALUES (7, '8549', 22, 1, 2000000);
INSERT INTO `inventory_detail` VALUES (8, '9453', 38, 12, 10);
INSERT INTO `inventory_detail` VALUES (9, '4330', 101, 4, 1);
INSERT INTO `inventory_detail` VALUES (10, '3997', 17, 11, 2500000);
INSERT INTO `inventory_detail` VALUES (11, '3997', 22, 12, 3000000);
INSERT INTO `inventory_detail` VALUES (12, '4658', 22, 5, 3000000);
INSERT INTO `inventory_detail` VALUES (13, '4890', 16, 11, 2500000);
INSERT INTO `inventory_detail` VALUES (14, '7089', 16, 11, 2500000);
INSERT INTO `inventory_detail` VALUES (15, '1989', 16, 11, 2500000);
INSERT INTO `inventory_detail` VALUES (16, '3044', 16, 11, 2500000);
INSERT INTO `inventory_detail` VALUES (17, '3450', 15, 5, 8500000);
INSERT INTO `inventory_detail` VALUES (18, '9540', 20, 11, 2500000);
INSERT INTO `inventory_detail` VALUES (19, '5574', 21, 2, 3000000);

-- ----------------------------
-- Table structure for metrics
-- ----------------------------
DROP TABLE IF EXISTS `metrics`;
CREATE TABLE `metrics`  (
  `metric_id` int NOT NULL AUTO_INCREMENT,
  `metric_date` date NOT NULL,
  `metric_order` int NOT NULL,
  `metric_sales` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `metric_quantity` int NOT NULL,
  PRIMARY KEY (`metric_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 37 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of metrics
-- ----------------------------
INSERT INTO `metrics` VALUES (1, '2023-05-14', 19, '20000000', 34);
INSERT INTO `metrics` VALUES (2, '2023-05-15', 24, '20000000', 38);
INSERT INTO `metrics` VALUES (3, '2023-05-16', 21, '25000000', 30);
INSERT INTO `metrics` VALUES (4, '2023-05-17', 24, '19000000', 38);
INSERT INTO `metrics` VALUES (5, '2023-05-18', 28, '35000000', 50);
INSERT INTO `metrics` VALUES (6, '2023-05-19', 29, '40000000', 48);
INSERT INTO `metrics` VALUES (7, '2023-05-13', 21, '19500000', 28);
INSERT INTO `metrics` VALUES (8, '2023-04-19', 29, '40000000', 48);
INSERT INTO `metrics` VALUES (9, '2023-03-20', 28, '35000000', 50);
INSERT INTO `metrics` VALUES (10, '2023-04-30', 23, '54000000', 100);
INSERT INTO `metrics` VALUES (11, '2023-05-06', 23, '44000000', 50);
INSERT INTO `metrics` VALUES (12, '2023-05-04', 3, '4000000', 5);
INSERT INTO `metrics` VALUES (13, '2023-05-20', 2, '37060000', 8);
INSERT INTO `metrics` VALUES (14, '2023-05-23', 3, '9900000', 3);
INSERT INTO `metrics` VALUES (15, '2023-05-24', 1, '7200000', 2);
INSERT INTO `metrics` VALUES (16, '2023-05-28', 9, '38760000', 29);
INSERT INTO `metrics` VALUES (19, '2023-05-29', 1, '3680000', 1);
INSERT INTO `metrics` VALUES (20, '2023-06-02', 3, '33770000', 4);
INSERT INTO `metrics` VALUES (21, '2023-06-03', 13, '49350000', 8);
INSERT INTO `metrics` VALUES (22, '2023-06-04', 6, '21210000', 1);
INSERT INTO `metrics` VALUES (23, '2023-06-05', 1, '16200000', 0);
INSERT INTO `metrics` VALUES (24, '2023-06-06', 9, '64860000', 11);
INSERT INTO `metrics` VALUES (25, '2023-06-07', 11, '60755000', 19);
INSERT INTO `metrics` VALUES (26, '2023-06-08', 1, '6300000', 2);
INSERT INTO `metrics` VALUES (27, '2023-06-11', 1, '12600000', 2);
INSERT INTO `metrics` VALUES (28, '2023-06-14', 1, '2700000', 1);
INSERT INTO `metrics` VALUES (29, '2023-06-15', 2, '11400000', 3);
INSERT INTO `metrics` VALUES (30, '2023-06-16', 2, '12800000', 2);
INSERT INTO `metrics` VALUES (31, '2023-06-18', 8, '108911003.52', 21);
INSERT INTO `metrics` VALUES (32, '2023-06-19', 3, '18375000', 4);
INSERT INTO `metrics` VALUES (33, '2023-06-20', 2, '92410000', 11);
INSERT INTO `metrics` VALUES (34, '2023-07-07', 4, '152049200', 17);
INSERT INTO `metrics` VALUES (35, '2023-09-09', 2, '234', 6);
INSERT INTO `metrics` VALUES (36, '2023-09-12', 1, '78', 2);

-- ----------------------------
-- Table structure for momo
-- ----------------------------
DROP TABLE IF EXISTS `momo`;
CREATE TABLE `momo`  (
  `momo_id` int NOT NULL AUTO_INCREMENT,
  `partner_code` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `order_code` int NOT NULL,
  `momo_amount` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `order_info` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `order_type` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `trans_id` int NOT NULL,
  `payment_date` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `pay_type` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `payment_status` int NOT NULL,
  PRIMARY KEY (`momo_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 5 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of momo
-- ----------------------------
INSERT INTO `momo` VALUES (2, 'MOMOBKUN20180529', 6434, '9000000', 'Thanh toán qua MoMo ATM', 'momo_wallet', 2147483647, '2023-06-15 13:05:51', 'napas', 0);
INSERT INTO `momo` VALUES (3, 'MOMOBKUN20180529', 3619, '7200000', 'Thanh toán qua MoMo ATM', 'momo_wallet', 2147483647, '2023-06-10 13:05:51', 'napas', 0);
INSERT INTO `momo` VALUES (4, 'MOMOBKUN20180529', 9864, '7360000', 'Thanh toán qua MoMo ATM', 'momo_wallet', 2147483647, '2023-06-19 13:05:51', 'napas', 0);

-- ----------------------------
-- Table structure for order_detail
-- ----------------------------
DROP TABLE IF EXISTS `order_detail`;
CREATE TABLE `order_detail`  (
  `order_detail_id` int NOT NULL AUTO_INCREMENT,
  `order_code` int NOT NULL,
  `product_id` int NOT NULL,
  `product_quantity` int NOT NULL,
  `product_price` int NOT NULL,
  `product_sale` int NOT NULL,
  PRIMARY KEY (`order_detail_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 110 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of order_detail
-- ----------------------------
INSERT INTO `order_detail` VALUES (97, 8845, 22, 2, 39, 0);
INSERT INTO `order_detail` VALUES (98, 8845, 153, 1, 39, 0);
INSERT INTO `order_detail` VALUES (99, 8845, 154, 2, 39, 0);
INSERT INTO `order_detail` VALUES (100, 4116, 22, 2, 39, 0);
INSERT INTO `order_detail` VALUES (101, 4116, 153, 1, 39, 0);
INSERT INTO `order_detail` VALUES (102, 4116, 154, 2, 39, 0);
INSERT INTO `order_detail` VALUES (103, 7122, 152, 1, 39, 0);
INSERT INTO `order_detail` VALUES (104, 7122, 153, 2, 39, 0);
INSERT INTO `order_detail` VALUES (105, 364, 153, 1, 39, 0);
INSERT INTO `order_detail` VALUES (106, 3051, 152, 1, 39, 0);
INSERT INTO `order_detail` VALUES (107, 3051, 22, 2, 39, 0);
INSERT INTO `order_detail` VALUES (108, 9147, 22, 1, 39, 0);
INSERT INTO `order_detail` VALUES (109, 4624, 152, 2, 39, 0);

-- ----------------------------
-- Table structure for orders
-- ----------------------------
DROP TABLE IF EXISTS `orders`;
CREATE TABLE `orders`  (
  `order_id` int NOT NULL AUTO_INCREMENT,
  `order_code` int NOT NULL,
  `order_date` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `account_id` int NOT NULL,
  `delivery_id` int NOT NULL,
  `total_amount` int NOT NULL,
  `order_type` int NOT NULL COMMENT '1 - trực tiếp tại quầy, 6 - paypal',
  `order_status` int NOT NULL COMMENT '0 -  Đơn đang xử lý\r\n1 - Đang chuyển bị hàng\r\n2 - Đang giao hàng\r\n3 - Đã hoàn thành\r\n4 - Đơn đã hủy ',
  PRIMARY KEY (`order_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 92 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of orders
-- ----------------------------
INSERT INTO `orders` VALUES (85, 8845, '2023-09-12 04:46:07', 22, 9693, 195, 6, 3);
INSERT INTO `orders` VALUES (86, 4116, '2023-09-12 04:54:16', 22, 4294, 195, 6, 3);
INSERT INTO `orders` VALUES (87, 7122, '2023-09-12 04:58:41', 22, 6345, 117, 6, 3);
INSERT INTO `orders` VALUES (88, 364, '2023-09-12 04:59:17', 22, 3001, 39, 6, 0);
INSERT INTO `orders` VALUES (89, 3051, '2023-09-12 05:16:37', 22, 5153, 117, 0, 0);
INSERT INTO `orders` VALUES (90, 9147, '2023-09-12 05:23:22', 22, 1782, 39, 6, 0);
INSERT INTO `orders` VALUES (91, 4624, '2023-09-12 05:33:55', 24, 9924, 78, 6, 3);

-- ----------------------------
-- Table structure for product
-- ----------------------------
DROP TABLE IF EXISTS `product`;
CREATE TABLE `product`  (
  `product_id` int NOT NULL AUTO_INCREMENT,
  `product_name` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `product_category` int NOT NULL,
  `product_brand` int NOT NULL,
  `capacity_id` int NOT NULL,
  `product_quantity` int NOT NULL,
  `quantity_sales` int NOT NULL,
  `product_price_import` int NOT NULL,
  `product_price` int NOT NULL,
  `product_sale` int NOT NULL,
  `product_description` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `product_image` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `product_status` int NOT NULL,
  PRIMARY KEY (`product_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 156 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of product
-- ----------------------------
INSERT INTO `product` VALUES (22, 'AMERICA 1776', 3, 0, 3, 25, 105, 1, 39, 0, '<p>&nbsp;</p>\r\n\r\n<p>T-shirt</p>\r\n', '1694026931_AMERICA 1776.jpg', 1);
INSERT INTO `product` VALUES (152, 'PROUD TO BE AN AMERICAN', 3, 0, 3, 94, 15, 1, 39, 0, '<p>T-shirt</p>\r\n', '1694031422_PROUD TO BE AN AMERICAN.png', 1);
INSERT INTO `product` VALUES (153, 'We Love You America', 3, 0, 3, 86, 17, 1, 39, 0, '<p>&nbsp;</p>\r\n\r\n<p>T-shirt</p>\r\n', '1694270388_We Love You America.jpg', 1);
INSERT INTO `product` VALUES (154, 'HALLOWEEN T-shirt', 3, 0, 3, 87, 15, 1, 39, 0, '<p>&nbsp;</p>\r\n\r\n<p>T-shirt</p>\r\n', '1694270378_HALLOWEEN T-shirt.jpg', 1);

-- ----------------------------
-- Table structure for transactions
-- ----------------------------
DROP TABLE IF EXISTS `transactions`;
CREATE TABLE `transactions`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `item_number` varchar(50) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL,
  `item_name` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL,
  `item_price` float(10, 2) NULL DEFAULT NULL,
  `item_price_currency` varchar(10) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL,
  `payer_id` varchar(50) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL,
  `payer_name` varchar(50) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL,
  `payer_email` varchar(50) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL,
  `payer_country` varchar(20) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL,
  `merchant_id` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL,
  `merchant_email` varchar(50) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL,
  `order_id` varchar(50) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `transaction_id` varchar(50) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `paid_amount` float(10, 2) NOT NULL,
  `paid_amount_currency` varchar(10) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `payment_source` varchar(50) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL,
  `payment_status` varchar(25) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `created` datetime NOT NULL,
  `modified` datetime NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 109 CHARACTER SET = utf8 COLLATE = utf8_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of transactions
-- ----------------------------
INSERT INTO `transactions` VALUES (1, 'DP12345', 'Demo Product', 100.00, 'USD', '3JCHFT7T2X7R8', 'John Doe', 'sb-wwegz27331659@personal.example.com', 'US', 'QFJZC3CD3ERB2', 'sb-s7u474321545685@business.example.com', '0SE493761H862601V', '4A6158738D2708502', 100.00, 'USD', 'paypal', 'COMPLETED', '2023-09-09 07:41:22', '2023-09-09 05:41:40');
INSERT INTO `transactions` VALUES (2, 'DP12345', 'Demo Product', 100.00, 'USD', '3JCHFT7T2X7R8', 'John Doe', 'sb-wwegz27331659@personal.example.com', 'US', 'QFJZC3CD3ERB2', 'sb-s7u474321545685@business.example.com', '7ER634221M1747645', '9AJ44150T50612635', 100.00, 'USD', 'paypal', 'COMPLETED', '2023-09-09 07:43:09', '2023-09-09 05:43:20');
INSERT INTO `transactions` VALUES (3, 'DP12345', 'Demo Product', 100.00, 'USD', '3JCHFT7T2X7R8', 'John Doe', 'sb-wwegz27331659@personal.example.com', 'US', 'QFJZC3CD3ERB2', 'sb-s7u474321545685@business.example.com', '61278820F2653062X', '6B9783812T5085236', 100.00, 'USD', 'paypal', 'COMPLETED', '2023-09-09 07:46:23', '2023-09-09 05:46:32');
INSERT INTO `transactions` VALUES (4, 'DP12345', 'Demo Product', 100.00, 'USD', '3JCHFT7T2X7R8', 'John Doe', 'sb-wwegz27331659@personal.example.com', 'US', 'QFJZC3CD3ERB2', 'sb-s7u474321545685@business.example.com', '8UU37612DS065814M', '88N976778H156005U', 100.00, 'USD', 'paypal', 'COMPLETED', '2023-09-09 07:47:09', '2023-09-09 05:47:19');
INSERT INTO `transactions` VALUES (5, 'DP12345', 'Demo Product', 100.00, 'USD', '3JCHFT7T2X7R8', 'John Doe', 'sb-wwegz27331659@personal.example.com', 'US', 'QFJZC3CD3ERB2', 'sb-s7u474321545685@business.example.com', '75279188JL1378520', '0GS001388F3517703', 100.00, 'USD', 'paypal', 'COMPLETED', '2023-09-09 07:55:31', '2023-09-09 05:55:40');
INSERT INTO `transactions` VALUES (6, 'DP12345', 'Demo Product', 100.00, 'USD', '3JCHFT7T2X7R8', 'John Doe', 'sb-wwegz27331659@personal.example.com', 'US', 'QFJZC3CD3ERB2', 'sb-s7u474321545685@business.example.com', '43P24061HA661193C', '0U983631CC522830J', 100.00, 'USD', 'paypal', 'COMPLETED', '2023-09-09 08:00:53', '2023-09-09 06:01:06');
INSERT INTO `transactions` VALUES (7, 'DP12345', 'Demo Product', 100.00, 'USD', '3JCHFT7T2X7R8', 'John Doe', 'sb-wwegz27331659@personal.example.com', 'US', 'QFJZC3CD3ERB2', 'sb-s7u474321545685@business.example.com', '4V1179705E9099624', '4TS21962PR954743U', 100.00, 'USD', 'paypal', 'COMPLETED', '2023-09-09 08:19:49', '2023-09-09 06:19:58');
INSERT INTO `transactions` VALUES (8, 'DP12345', 'Demo Product', 100.00, 'USD', '3JCHFT7T2X7R8', 'John Doe', 'sb-wwegz27331659@personal.example.com', 'US', 'QFJZC3CD3ERB2', 'sb-s7u474321545685@business.example.com', '7W780105925609010', '20468301M70977925', 100.00, 'USD', 'paypal', 'COMPLETED', '2023-09-09 08:23:49', '2023-09-09 06:23:58');
INSERT INTO `transactions` VALUES (9, 'DP12345', 'Demo Product', 100.00, 'USD', '3JCHFT7T2X7R8', 'John Doe', 'sb-wwegz27331659@personal.example.com', 'US', 'QFJZC3CD3ERB2', 'sb-s7u474321545685@business.example.com', '25827565XS263531S', '1RG74963T5987482J', 100.00, 'USD', 'paypal', 'COMPLETED', '2023-09-09 08:32:22', '2023-09-09 06:32:31');
INSERT INTO `transactions` VALUES (10, 'DP12345', 'Demo Product', 100.00, 'USD', '3JCHFT7T2X7R8', 'John Doe', 'sb-wwegz27331659@personal.example.com', 'US', 'QFJZC3CD3ERB2', 'sb-s7u474321545685@business.example.com', '5DL60605PL1373708', '5Y391699W89123923', 100.00, 'USD', 'paypal', 'COMPLETED', '2023-09-09 08:35:08', '2023-09-09 06:35:20');
INSERT INTO `transactions` VALUES (11, 'DP12345', 'Demo Product', 100.00, 'USD', '3JCHFT7T2X7R8', 'John Doe', 'sb-wwegz27331659@personal.example.com', 'US', 'QFJZC3CD3ERB2', 'sb-s7u474321545685@business.example.com', '96H61617GV2504815', '5TA489074J435312G', 100.00, 'USD', 'paypal', 'COMPLETED', '2023-09-09 08:35:38', '2023-09-09 06:35:46');
INSERT INTO `transactions` VALUES (12, 'DP12345', 'Demo Product', 100.00, 'USD', '3JCHFT7T2X7R8', 'John Doe', 'sb-wwegz27331659@personal.example.com', 'US', 'QFJZC3CD3ERB2', 'sb-s7u474321545685@business.example.com', '340629267F2471627', '3KK862216M8697204', 100.00, 'USD', 'paypal', 'COMPLETED', '2023-09-09 08:35:54', '2023-09-09 06:36:03');
INSERT INTO `transactions` VALUES (13, 'DP12345', 'Demo Product', 100.00, 'USD', '3JCHFT7T2X7R8', 'John Doe', 'sb-wwegz27331659@personal.example.com', 'US', 'QFJZC3CD3ERB2', 'sb-s7u474321545685@business.example.com', '9F9457405M126091S', '512524891M720264N', 100.00, 'USD', 'paypal', 'COMPLETED', '2023-09-09 08:36:54', '2023-09-09 06:37:04');
INSERT INTO `transactions` VALUES (14, 'DP12345', 'Demo Product', 100.00, 'USD', '3JCHFT7T2X7R8', 'John Doe', 'sb-wwegz27331659@personal.example.com', 'US', 'QFJZC3CD3ERB2', 'sb-s7u474321545685@business.example.com', '6K885873050948828', '1KY439547F977391H', 100.00, 'USD', 'paypal', 'COMPLETED', '2023-09-09 08:37:21', '2023-09-09 06:37:30');
INSERT INTO `transactions` VALUES (15, 'DP12345', 'Demo Product', 100.00, 'USD', '3JCHFT7T2X7R8', 'John Doe', 'sb-wwegz27331659@personal.example.com', 'US', 'QFJZC3CD3ERB2', 'sb-s7u474321545685@business.example.com', '80Y99110XT0860808', '16U10607TD6402948', 100.00, 'USD', 'paypal', 'COMPLETED', '2023-09-09 08:40:53', '2023-09-09 06:41:02');
INSERT INTO `transactions` VALUES (16, 'DP12345', 'Demo Product', 100.00, 'USD', '3JCHFT7T2X7R8', 'John Doe', 'sb-wwegz27331659@personal.example.com', 'US', 'QFJZC3CD3ERB2', 'sb-s7u474321545685@business.example.com', '5P0472349U8298733', '1JV43024V4548625D', 100.00, 'USD', 'paypal', 'COMPLETED', '2023-09-09 08:41:29', '2023-09-09 06:41:39');
INSERT INTO `transactions` VALUES (17, 'DP12345', 'Demo Product', 100.00, 'USD', '3JCHFT7T2X7R8', 'John Doe', 'sb-wwegz27331659@personal.example.com', 'US', 'QFJZC3CD3ERB2', 'sb-s7u474321545685@business.example.com', '4MV04161DV295124A', '34X311934W635412L', 100.00, 'USD', 'paypal', 'COMPLETED', '2023-09-09 08:42:36', '2023-09-09 06:42:46');
INSERT INTO `transactions` VALUES (18, 'DP12345', 'Demo Product', 100.00, 'USD', '3JCHFT7T2X7R8', 'John Doe', 'sb-wwegz27331659@personal.example.com', 'US', 'QFJZC3CD3ERB2', 'sb-s7u474321545685@business.example.com', '12B07638J80868732', '08510031V9849521M', 100.00, 'USD', 'paypal', 'COMPLETED', '2023-09-09 08:44:06', '2023-09-09 06:44:14');
INSERT INTO `transactions` VALUES (19, 'DP12345', 'Demo Product', 100.00, 'USD', '3JCHFT7T2X7R8', 'John Doe', 'sb-wwegz27331659@personal.example.com', 'US', 'QFJZC3CD3ERB2', 'sb-s7u474321545685@business.example.com', '3JL62568LY026150R', '384617430J398714P', 100.00, 'USD', 'paypal', 'COMPLETED', '2023-09-09 08:45:01', '2023-09-09 06:45:09');
INSERT INTO `transactions` VALUES (20, 'DP12345', 'Demo Product', 100.00, 'USD', '3JCHFT7T2X7R8', 'John Doe', 'sb-wwegz27331659@personal.example.com', 'US', 'QFJZC3CD3ERB2', 'sb-s7u474321545685@business.example.com', '5RU16897S1871652R', '19088402UR2353948', 100.00, 'USD', 'paypal', 'COMPLETED', '2023-09-09 08:47:31', '2023-09-09 06:47:41');
INSERT INTO `transactions` VALUES (21, 'DP12345', 'Demo Product', 100.00, 'USD', '3JCHFT7T2X7R8', 'John Doe', 'sb-wwegz27331659@personal.example.com', 'US', 'QFJZC3CD3ERB2', 'sb-s7u474321545685@business.example.com', '1G363537YN708081S', '7WW78035KN1385416', 156.00, 'USD', 'paypal', 'COMPLETED', '2023-09-09 08:53:51', '2023-09-09 06:54:00');
INSERT INTO `transactions` VALUES (22, 'DP12345', 'Demo Product', 100.00, 'USD', '3JCHFT7T2X7R8', 'John Doe', 'sb-wwegz27331659@personal.example.com', 'US', 'QFJZC3CD3ERB2', 'sb-s7u474321545685@business.example.com', '0J5175300L701833M', '1UH86976W3702234H', 117.00, 'USD', 'paypal', 'COMPLETED', '2023-09-09 09:03:31', '2023-09-09 07:03:42');
INSERT INTO `transactions` VALUES (23, 'DP12345', 'Demo Product', 100.00, 'USD', '3JCHFT7T2X7R8', 'John Doe', 'sb-wwegz27331659@personal.example.com', 'US', 'QFJZC3CD3ERB2', 'sb-s7u474321545685@business.example.com', '2NW51248XH169852X', '4DV60515F4218944W', 117.00, 'USD', 'paypal', 'COMPLETED', '2023-09-09 09:07:07', '2023-09-09 07:07:25');
INSERT INTO `transactions` VALUES (24, 'DP12345', 'thanh toan paypal', 100.00, 'USD', '3JCHFT7T2X7R8', 'John Doe', 'sb-wwegz27331659@personal.example.com', 'US', 'QFJZC3CD3ERB2', 'sb-s7u474321545685@business.example.com', '8V6010058Y9218928', '7KP40324S6461382D', 39.00, 'USD', 'paypal', 'COMPLETED', '2023-09-09 09:40:09', '2023-09-09 07:40:22');
INSERT INTO `transactions` VALUES (25, 'DP12345', 'Demo Product', 100.00, 'USD', '3JCHFT7T2X7R8', 'John Doe', 'sb-wwegz27331659@personal.example.com', 'US', 'QFJZC3CD3ERB2', 'sb-s7u474321545685@business.example.com', '6T216722497220623', '3UK26204SU955835F', 39.00, 'USD', 'paypal', 'COMPLETED', '2023-09-09 09:42:21', '2023-09-09 07:42:30');
INSERT INTO `transactions` VALUES (26, 'DP12345', 'Demo Product', 100.00, 'USD', '3JCHFT7T2X7R8', 'John Doe', 'sb-wwegz27331659@personal.example.com', 'US', 'QFJZC3CD3ERB2', 'sb-s7u474321545685@business.example.com', '9LY49147U4691132F', '11S871481C427733T', 39.00, 'USD', 'paypal', 'COMPLETED', '2023-09-09 09:44:36', '2023-09-09 07:44:47');
INSERT INTO `transactions` VALUES (27, '22', 'thanh toan paypal2023-09-09 10:10:10', 0.00, 'USD', '3JCHFT7T2X7R8', 'John Doe', 'sb-wwegz27331659@personal.example.com', 'US', 'QFJZC3CD3ERB2', 'sb-s7u474321545685@business.example.com', '1A920958WB0363647', '10G1562268605730H', 117.00, 'USD', 'paypal', 'COMPLETED', '2023-09-09 10:10:14', '2023-09-09 08:10:29');
INSERT INTO `transactions` VALUES (28, '22', 'thanh toan paypal2023-09-09 10:15:19', 117.00, 'USD', '3JCHFT7T2X7R8', 'John Doe', 'sb-wwegz27331659@personal.example.com', 'US', 'QFJZC3CD3ERB2', 'sb-s7u474321545685@business.example.com', '47G43590UA982334F', '8E635403RL5848136', 117.00, 'USD', 'paypal', 'COMPLETED', '2023-09-09 10:15:25', '2023-09-09 08:15:34');
INSERT INTO `transactions` VALUES (29, '22', 'thanh toan paypal2023-09-09 10:16:51', 0.00, 'USD', '3JCHFT7T2X7R8', 'John Doe', 'sb-wwegz27331659@personal.example.com', 'US', 'QFJZC3CD3ERB2', 'sb-s7u474321545685@business.example.com', '4YF22941BN8555235', '0CU91748F0594382A', 117.00, 'USD', 'paypal', 'COMPLETED', '2023-09-09 10:16:53', '2023-09-09 08:17:02');
INSERT INTO `transactions` VALUES (30, '22', 'thanh toan paypal2023-09-09 10:20:40', 0.00, 'USD', '3JCHFT7T2X7R8', 'John Doe', 'sb-wwegz27331659@personal.example.com', 'US', 'QFJZC3CD3ERB2', 'sb-s7u474321545685@business.example.com', '2L894097FC472522A', '6YU17248F0871021V', 117.00, 'USD', 'paypal', 'COMPLETED', '2023-09-09 10:20:42', '2023-09-09 08:20:51');
INSERT INTO `transactions` VALUES (31, '22', 'thanh toan paypal2023-09-09 10:21:32', 0.00, 'USD', '3JCHFT7T2X7R8', 'John Doe', 'sb-wwegz27331659@personal.example.com', 'US', 'QFJZC3CD3ERB2', 'sb-s7u474321545685@business.example.com', '9SA817658K4883636', '3JA48826GJ250282R', 117.00, 'USD', 'paypal', 'COMPLETED', '2023-09-09 10:21:34', '2023-09-09 08:21:43');
INSERT INTO `transactions` VALUES (32, '22', 'thanh toan paypal2023-09-09 10:22:31', 0.00, 'USD', '3JCHFT7T2X7R8', 'John Doe', 'sb-wwegz27331659@personal.example.com', 'US', 'QFJZC3CD3ERB2', 'sb-s7u474321545685@business.example.com', '4DX8142579591814E', '6YK34879D9323720A', 117.00, 'USD', 'paypal', 'COMPLETED', '2023-09-09 10:22:37', '2023-09-09 08:22:47');
INSERT INTO `transactions` VALUES (33, '22', 'thanh toan paypal2023-09-09 10:32:57', 0.00, 'USD', '3JCHFT7T2X7R8', 'John Doe', 'sb-wwegz27331659@personal.example.com', 'US', 'QFJZC3CD3ERB2', 'sb-s7u474321545685@business.example.com', '62R6789025468654D', '7CN12289P8026891M', 78.00, 'USD', 'paypal', 'COMPLETED', '2023-09-09 10:33:00', '2023-09-09 08:33:13');
INSERT INTO `transactions` VALUES (34, '22', 'thanh toan paypal2023-09-09 10:35:22', 0.00, 'USD', '3JCHFT7T2X7R8', 'John Doe', 'sb-wwegz27331659@personal.example.com', 'US', 'QFJZC3CD3ERB2', 'sb-s7u474321545685@business.example.com', '37L53638MM929811C', '91960473T9200415X', 78.00, 'USD', 'paypal', 'COMPLETED', '2023-09-09 10:35:25', '2023-09-09 08:35:35');
INSERT INTO `transactions` VALUES (35, 'DP12345', 'Demo Product', 100.00, 'USD', '3JCHFT7T2X7R8', 'John Doe', 'sb-wwegz27331659@personal.example.com', 'US', 'QFJZC3CD3ERB2', 'sb-s7u474321545685@business.example.com', '9D205151WE371760C', '90S22731UH5225310', 117.00, 'USD', 'paypal', 'COMPLETED', '2023-09-09 10:48:38', '2023-09-09 08:48:51');
INSERT INTO `transactions` VALUES (36, 'DP12345', 'Demo Product', 100.00, 'USD', '3JCHFT7T2X7R8', 'John Doe', 'sb-wwegz27331659@personal.example.com', 'US', 'QFJZC3CD3ERB2', 'sb-s7u474321545685@business.example.com', '5B6511192F3515720', '30S77097UB2274340', 39.00, 'USD', 'paypal', 'COMPLETED', '2023-09-09 10:53:57', '2023-09-09 08:54:06');
INSERT INTO `transactions` VALUES (37, 'DP12345', 'Demo Product', 100.00, 'USD', '3JCHFT7T2X7R8', 'John Doe', 'sb-wwegz27331659@personal.example.com', 'US', 'QFJZC3CD3ERB2', 'sb-s7u474321545685@business.example.com', '5TA27619AU0185421', '4M268866CV6643943', 39.00, 'USD', 'paypal', 'COMPLETED', '2023-09-09 10:57:02', '2023-09-09 08:57:13');
INSERT INTO `transactions` VALUES (38, 'DP12345', 'Demo Product', 100.00, 'USD', 'T95PUEAWBMGVL', 'John Doe', 'sb-247uki27319318@personal.example.com', 'US', '4YBRCJQRRBWBW', 'sb-d10d227311199@business.example.com', '6K768089BJ530680A', '00C47123X4968564F', 39.00, 'USD', 'paypal', 'COMPLETED', '2023-09-09 12:49:55', '2023-09-09 10:50:16');
INSERT INTO `transactions` VALUES (39, 'DP12345', 'Demo Product', 100.00, 'USD', 'T95PUEAWBMGVL', 'John Doe', 'sb-247uki27319318@personal.example.com', 'US', '4YBRCJQRRBWBW', 'sb-d10d227311199@business.example.com', '45F20421869353342', '94071458F6239352S', 39.00, 'USD', 'paypal', 'COMPLETED', '2023-09-09 12:51:18', '2023-09-09 10:51:29');
INSERT INTO `transactions` VALUES (40, 'DP12345', 'Demo Product', 100.00, 'USD', 'T95PUEAWBMGVL', 'John Doe', 'sb-247uki27319318@personal.example.com', 'US', '4YBRCJQRRBWBW', 'sb-d10d227311199@business.example.com', '6A840184MX948793K', '3FJ70130UP740623R', 39.00, 'USD', 'paypal', 'COMPLETED', '2023-09-09 12:53:34', '2023-09-09 10:53:44');
INSERT INTO `transactions` VALUES (41, 'DP12345', 'Demo Product', 100.00, 'USD', 'T95PUEAWBMGVL', 'John Doe', 'sb-247uki27319318@personal.example.com', 'US', '4YBRCJQRRBWBW', 'sb-d10d227311199@business.example.com', '612403782L246860U', '9NT09722SX030290T', 39.00, 'USD', 'paypal', 'COMPLETED', '2023-09-09 13:53:56', '2023-09-09 11:54:15');
INSERT INTO `transactions` VALUES (42, 'DP12345', 'Demo Product', 100.00, 'USD', 'T95PUEAWBMGVL', 'John Doe', 'sb-247uki27319318@personal.example.com', 'US', '4YBRCJQRRBWBW', 'sb-d10d227311199@business.example.com', '59U91732NM802940T', '0C038601YW700561B', 39.00, 'USD', 'paypal', 'COMPLETED', '2023-09-09 14:07:55', '2023-09-09 12:08:11');
INSERT INTO `transactions` VALUES (43, 'DP12345', 'Demo Product', 100.00, 'USD', 'T95PUEAWBMGVL', 'John Doe', 'sb-247uki27319318@personal.example.com', 'US', '4YBRCJQRRBWBW', 'sb-d10d227311199@business.example.com', '7P058283PF749313N', '8YK57885T40139004', 39.00, 'USD', 'paypal', 'COMPLETED', '2023-09-09 14:13:47', '2023-09-09 12:14:14');
INSERT INTO `transactions` VALUES (44, 'DP12345', 'Demo Product', 100.00, 'USD', 'T95PUEAWBMGVL', 'John Doe', 'sb-247uki27319318@personal.example.com', 'US', '4YBRCJQRRBWBW', 'sb-d10d227311199@business.example.com', '8BX99350UA2329249', '7KV99404EK704125H', 39.00, 'USD', 'paypal', 'COMPLETED', '2023-09-09 14:17:16', '2023-09-09 12:17:25');
INSERT INTO `transactions` VALUES (45, 'DP12345', 'Demo Product', 100.00, 'USD', 'T95PUEAWBMGVL', 'John Doe', 'sb-247uki27319318@personal.example.com', 'US', '4YBRCJQRRBWBW', 'sb-d10d227311199@business.example.com', '5JD64386365854341', '75M141695J341943H', 39.00, 'USD', 'paypal', 'COMPLETED', '2023-09-09 14:25:05', '2023-09-09 12:25:17');
INSERT INTO `transactions` VALUES (46, 'DP12345', 'Demo Product', 100.00, 'USD', 'T95PUEAWBMGVL', 'John Doe', 'sb-247uki27319318@personal.example.com', 'US', '4YBRCJQRRBWBW', 'sb-d10d227311199@business.example.com', '8CP86639G35829106', '56S78376JL1975528', 39.00, 'USD', 'paypal', 'COMPLETED', '2023-09-09 14:29:06', '2023-09-09 12:29:18');
INSERT INTO `transactions` VALUES (47, 'DP12345', 'Demo Product', 100.00, 'USD', 'T95PUEAWBMGVL', 'John Doe', 'sb-247uki27319318@personal.example.com', 'US', '4YBRCJQRRBWBW', 'sb-d10d227311199@business.example.com', '5FS530082L0373949', '54K06371VC661170Y', 39.00, 'USD', 'paypal', 'COMPLETED', '2023-09-09 14:59:32', '2023-09-09 12:59:47');
INSERT INTO `transactions` VALUES (48, 'DP12345', 'Demo Product', 100.00, 'USD', 'T95PUEAWBMGVL', 'John Doe', 'sb-247uki27319318@personal.example.com', 'US', '4YBRCJQRRBWBW', 'sb-d10d227311199@business.example.com', '1B884974SJ526442F', '9JJ558123N641562G', 39.00, 'USD', 'paypal', 'COMPLETED', '2023-09-09 15:22:00', '2023-09-09 13:22:10');
INSERT INTO `transactions` VALUES (49, 'DP12345', 'Demo Product', 100.00, 'USD', 'T95PUEAWBMGVL', 'John Doe', 'sb-247uki27319318@personal.example.com', 'US', '4YBRCJQRRBWBW', 'sb-d10d227311199@business.example.com', '9PX34327LG870305N', '7SM754956S3683710', 39.00, 'USD', 'paypal', 'COMPLETED', '2023-09-09 15:24:03', '2023-09-09 13:24:12');
INSERT INTO `transactions` VALUES (50, 'DP12345', 'Demo Product', 100.00, 'USD', 'T95PUEAWBMGVL', 'John Doe', 'sb-247uki27319318@personal.example.com', 'US', '4YBRCJQRRBWBW', 'sb-d10d227311199@business.example.com', '5MC51236PU432122Y', '3C40474123368125C', 39.00, 'USD', 'paypal', 'COMPLETED', '2023-09-09 15:30:34', '2023-09-09 13:30:45');
INSERT INTO `transactions` VALUES (51, 'DP12345', 'Demo Product', 100.00, 'USD', 'T95PUEAWBMGVL', 'John Doe', 'sb-247uki27319318@personal.example.com', 'US', '4YBRCJQRRBWBW', 'sb-d10d227311199@business.example.com', '3TH17367RA279093P', '1JL66442BX680870C', 39.00, 'USD', 'paypal', 'COMPLETED', '2023-09-09 19:24:04', '2023-09-09 17:24:14');
INSERT INTO `transactions` VALUES (52, 'DP12345', 'Demo Product', 100.00, 'USD', 'T95PUEAWBMGVL', 'John Doe', 'sb-247uki27319318@personal.example.com', 'US', '4YBRCJQRRBWBW', 'sb-d10d227311199@business.example.com', '1C214985X7865500N', '95B10336G24884503', 39.00, 'USD', 'paypal', 'COMPLETED', '2023-09-09 19:35:57', '2023-09-09 17:36:06');
INSERT INTO `transactions` VALUES (53, 'DP12345', 'Demo Product', 100.00, 'USD', 'T95PUEAWBMGVL', 'John Doe', 'sb-247uki27319318@personal.example.com', 'US', '4YBRCJQRRBWBW', 'sb-d10d227311199@business.example.com', '92420032B8404681Y', '1G041959HS4530921', 39.00, 'USD', 'paypal', 'COMPLETED', '2023-09-09 19:43:21', '2023-09-09 17:43:37');
INSERT INTO `transactions` VALUES (54, 'DP12345', 'Demo Product', 100.00, 'USD', 'T95PUEAWBMGVL', 'John Doe', 'sb-247uki27319318@personal.example.com', 'US', '4YBRCJQRRBWBW', 'sb-d10d227311199@business.example.com', '14X1750699405032X', '5J655189J2292415E', 39.00, 'USD', 'paypal', 'COMPLETED', '2023-09-10 08:50:34', '2023-09-10 06:50:48');
INSERT INTO `transactions` VALUES (55, 'DP12345', 'Demo Product', 100.00, 'USD', 'T95PUEAWBMGVL', 'John Doe', 'sb-247uki27319318@personal.example.com', 'US', '4YBRCJQRRBWBW', 'sb-d10d227311199@business.example.com', '5AS61808PN047020U', '3GL180093F108964A', 39.00, 'USD', 'paypal', 'COMPLETED', '2023-09-10 08:52:52', '2023-09-10 06:53:02');
INSERT INTO `transactions` VALUES (56, 'DP12345', 'Demo Product', 100.00, 'USD', 'T95PUEAWBMGVL', 'John Doe', 'sb-247uki27319318@personal.example.com', 'US', '4YBRCJQRRBWBW', 'sb-d10d227311199@business.example.com', '43G674883A520423L', '5EW09135X3486220M', 39.00, 'USD', 'paypal', 'COMPLETED', '2023-09-10 09:02:25', '2023-09-10 07:02:35');
INSERT INTO `transactions` VALUES (57, 'DP12345', 'Demo Product', 100.00, 'USD', 'T95PUEAWBMGVL', 'John Doe', 'sb-247uki27319318@personal.example.com', 'US', '4YBRCJQRRBWBW', 'sb-d10d227311199@business.example.com', '9XW64045RC740882N', '8YK51001EH775530M', 39.00, 'USD', 'paypal', 'COMPLETED', '2023-09-10 10:00:14', '2023-09-10 08:01:11');
INSERT INTO `transactions` VALUES (58, 'DP12345', 'Demo Product', 100.00, 'USD', 'T95PUEAWBMGVL', 'John Doe', 'sb-247uki27319318@personal.example.com', 'US', 'QFJZC3CD3ERB2', 'sb-s7u474321545685@business.example.com', '8SN88373695745740', '74H86476HF1618124', 39.00, 'USD', 'paypal', 'COMPLETED', '2023-09-10 18:09:47', '2023-09-10 16:10:02');
INSERT INTO `transactions` VALUES (59, 'DP12345', 'Demo Product', 100.00, 'USD', 'T95PUEAWBMGVL', 'John Doe', 'sb-247uki27319318@personal.example.com', 'US', 'QFJZC3CD3ERB2', 'sb-s7u474321545685@business.example.com', '1TX00663X29387354', '59U75725DV0638945', 39.00, 'USD', 'paypal', 'COMPLETED', '2023-09-10 18:12:41', '2023-09-10 16:12:51');
INSERT INTO `transactions` VALUES (60, 'DP12345', 'Demo Product', 100.00, 'USD', 'T95PUEAWBMGVL', 'John Doe', 'sb-247uki27319318@personal.example.com', 'US', 'QFJZC3CD3ERB2', 'sb-s7u474321545685@business.example.com', '6TR523759S187312J', '841116937M958061L', 39.00, 'USD', 'paypal', 'COMPLETED', '2023-09-10 18:14:28', '2023-09-10 16:14:40');
INSERT INTO `transactions` VALUES (61, 'DP12345', 'Demo Product', 100.00, 'USD', 'T95PUEAWBMGVL', 'John Doe', 'sb-247uki27319318@personal.example.com', 'US', 'QFJZC3CD3ERB2', 'sb-s7u474321545685@business.example.com', '0SU67400V8261101T', '29F37363L41085638', 39.00, 'USD', 'paypal', 'COMPLETED', '2023-09-10 18:19:24', '2023-09-10 16:19:33');
INSERT INTO `transactions` VALUES (62, 'DP12345', 'Demo Product', 100.00, 'USD', 'T95PUEAWBMGVL', 'John Doe', 'sb-247uki27319318@personal.example.com', 'US', 'QFJZC3CD3ERB2', 'sb-s7u474321545685@business.example.com', '0CA47568P59322804', '86533950EW471411D', 39.00, 'USD', 'paypal', 'COMPLETED', '2023-09-10 18:31:17', '2023-09-10 16:31:30');
INSERT INTO `transactions` VALUES (63, 'DP12345', 'Demo Product', 100.00, 'USD', 'T95PUEAWBMGVL', 'John Doe', 'sb-247uki27319318@personal.example.com', 'US', 'QFJZC3CD3ERB2', 'sb-s7u474321545685@business.example.com', '1AL78166GD867871Y', '05R0695533770735H', 39.00, 'USD', 'paypal', 'COMPLETED', '2023-09-10 18:37:22', '2023-09-10 16:37:31');
INSERT INTO `transactions` VALUES (64, 'DP12345', 'Demo Product', 100.00, 'USD', 'T95PUEAWBMGVL', 'John Doe', 'sb-247uki27319318@personal.example.com', 'US', 'QFJZC3CD3ERB2', 'sb-s7u474321545685@business.example.com', '3KV127115V092432S', '9NL60461W69932038', 39.00, 'USD', 'paypal', 'COMPLETED', '2023-09-10 18:39:50', '2023-09-10 16:40:00');
INSERT INTO `transactions` VALUES (65, 'DP12345', 'Demo Product', 100.00, 'USD', 'T95PUEAWBMGVL', 'John Doe', 'sb-247uki27319318@personal.example.com', 'US', 'QFJZC3CD3ERB2', 'sb-s7u474321545685@business.example.com', '2RL10516SJ456081T', '5PS504578F4874358', 39.00, 'USD', 'paypal', 'COMPLETED', '2023-09-10 18:40:47', '2023-09-10 16:40:56');
INSERT INTO `transactions` VALUES (66, 'DP12345', 'Demo Product', 100.00, 'USD', 'T95PUEAWBMGVL', 'John Doe', 'sb-247uki27319318@personal.example.com', 'US', 'QFJZC3CD3ERB2', 'sb-s7u474321545685@business.example.com', '6TX20479D9808764D', '7343740337083474D', 39.00, 'USD', 'paypal', 'COMPLETED', '2023-09-10 18:42:37', '2023-09-10 16:42:46');
INSERT INTO `transactions` VALUES (67, 'DP12345', 'Demo Product', 100.00, 'USD', 'T95PUEAWBMGVL', 'John Doe', 'sb-247uki27319318@personal.example.com', 'US', 'QFJZC3CD3ERB2', 'sb-s7u474321545685@business.example.com', '78114967WM778080X', '6C676270TT888602E', 39.00, 'USD', 'paypal', 'COMPLETED', '2023-09-10 18:48:25', '2023-09-10 16:48:42');
INSERT INTO `transactions` VALUES (68, 'DP12345', 'Demo Product', 100.00, 'USD', 'T95PUEAWBMGVL', 'John Doe', 'sb-247uki27319318@personal.example.com', 'US', 'QFJZC3CD3ERB2', 'sb-s7u474321545685@business.example.com', '5N350534BP916083J', '26M36290FW0727322', 39.00, 'USD', 'paypal', 'COMPLETED', '2023-09-10 18:50:08', '2023-09-10 16:50:23');
INSERT INTO `transactions` VALUES (69, 'DP12345', 'Demo Product', 100.00, 'USD', 'T95PUEAWBMGVL', 'John Doe', 'sb-247uki27319318@personal.example.com', 'US', 'QFJZC3CD3ERB2', 'sb-s7u474321545685@business.example.com', '7BR72563H14375617', '580310542J7242044', 39.00, 'USD', 'paypal', 'COMPLETED', '2023-09-10 18:51:22', '2023-09-10 16:51:31');
INSERT INTO `transactions` VALUES (70, 'DP12345', 'Demo Product', 100.00, 'USD', 'T95PUEAWBMGVL', 'John Doe', 'sb-247uki27319318@personal.example.com', 'US', 'QFJZC3CD3ERB2', 'sb-s7u474321545685@business.example.com', '9X8276576C366540E', '5EF0694717950760N', 39.00, 'USD', 'paypal', 'COMPLETED', '2023-09-10 19:19:17', '2023-09-10 17:19:31');
INSERT INTO `transactions` VALUES (71, 'DP12345', 'Demo Product', 100.00, 'USD', 'T95PUEAWBMGVL', 'John Doe', 'sb-247uki27319318@personal.example.com', 'US', 'QFJZC3CD3ERB2', 'sb-s7u474321545685@business.example.com', '6YN82640CF372884W', '1BY60160GR021041H', 39.00, 'USD', 'paypal', 'COMPLETED', '2023-09-10 21:11:51', '2023-09-10 19:12:02');
INSERT INTO `transactions` VALUES (72, 'DP12345', 'Demo Product', 100.00, 'USD', 'T95PUEAWBMGVL', 'John Doe', 'sb-247uki27319318@personal.example.com', 'US', 'QFJZC3CD3ERB2', 'sb-s7u474321545685@business.example.com', '4P776756BE8106015', '3W50790485966991R', 39.00, 'USD', 'paypal', 'COMPLETED', '2023-09-10 21:14:53', '2023-09-10 19:15:06');
INSERT INTO `transactions` VALUES (73, 'DP12345', 'Demo Product', 100.00, 'USD', 'T95PUEAWBMGVL', 'John Doe', 'sb-247uki27319318@personal.example.com', 'US', 'QFJZC3CD3ERB2', 'sb-s7u474321545685@business.example.com', '9WE10362CP5941130', '77534488XE590710F', 39.00, 'USD', 'paypal', 'COMPLETED', '2023-09-10 21:16:23', '2023-09-10 19:16:33');
INSERT INTO `transactions` VALUES (74, 'DP12345', 'Demo Product', 100.00, 'USD', 'T95PUEAWBMGVL', 'John Doe', 'sb-247uki27319318@personal.example.com', 'US', 'QFJZC3CD3ERB2', 'sb-s7u474321545685@business.example.com', '1F323221X3367793L', '9NK77046N9252015X', 39.00, 'USD', 'paypal', 'COMPLETED', '2023-09-10 21:19:34', '2023-09-10 19:19:48');
INSERT INTO `transactions` VALUES (75, 'DP12345', 'Demo Product', 100.00, 'USD', 'T95PUEAWBMGVL', 'John Doe', 'sb-247uki27319318@personal.example.com', 'US', 'QFJZC3CD3ERB2', 'sb-s7u474321545685@business.example.com', '8K623578CX740372H', '2D804652S29494610', 78.00, 'USD', 'paypal', 'COMPLETED', '2023-09-10 21:29:45', '2023-09-10 19:29:59');
INSERT INTO `transactions` VALUES (76, 'DP12345', 'Demo Product', 100.00, 'USD', 'T95PUEAWBMGVL', 'John Doe', 'sb-247uki27319318@personal.example.com', 'US', 'QFJZC3CD3ERB2', 'sb-s7u474321545685@business.example.com', '4HY18292V3793400S', '72W78085YR9646845', 39.00, 'USD', 'paypal', 'COMPLETED', '2023-09-10 21:34:15', '2023-09-10 19:34:24');
INSERT INTO `transactions` VALUES (77, 'DP12345', 'Demo Product', 100.00, 'USD', 'T95PUEAWBMGVL', 'John Doe', 'sb-247uki27319318@personal.example.com', 'US', 'QFJZC3CD3ERB2', 'sb-s7u474321545685@business.example.com', '3LD74054V8746200R', '79785893FN780804R', 39.00, 'USD', 'paypal', 'COMPLETED', '2023-09-10 21:38:35', '2023-09-10 19:38:46');
INSERT INTO `transactions` VALUES (78, 'DP12345', 'Demo Product', 100.00, 'USD', 'T95PUEAWBMGVL', 'John Doe', 'sb-247uki27319318@personal.example.com', 'US', 'QFJZC3CD3ERB2', 'sb-s7u474321545685@business.example.com', '6V770856WB355174N', '47E01482GX782774D', 39.00, 'USD', 'paypal', 'COMPLETED', '2023-09-10 21:41:59', '2023-09-10 19:42:11');
INSERT INTO `transactions` VALUES (79, 'DP12345', 'Demo Product', 100.00, 'USD', 'T95PUEAWBMGVL', 'John Doe', 'sb-247uki27319318@personal.example.com', 'US', 'QFJZC3CD3ERB2', 'sb-s7u474321545685@business.example.com', '6S066157L8778312D', '4P24691482475423A', 39.00, 'USD', 'paypal', 'COMPLETED', '2023-09-10 21:47:16', '2023-09-10 19:47:30');
INSERT INTO `transactions` VALUES (80, 'DP12345', 'Demo Product', 100.00, 'USD', 'T95PUEAWBMGVL', 'John Doe', 'sb-247uki27319318@personal.example.com', 'US', 'QFJZC3CD3ERB2', 'sb-s7u474321545685@business.example.com', '1L396996N7693234S', '1JT50851LV602704V', 39.00, 'USD', 'paypal', 'COMPLETED', '2023-09-10 21:49:36', '2023-09-10 19:49:46');
INSERT INTO `transactions` VALUES (81, 'DP12345', 'Demo Product', 100.00, 'USD', 'T95PUEAWBMGVL', 'John Doe', 'sb-247uki27319318@personal.example.com', 'US', 'QFJZC3CD3ERB2', 'sb-s7u474321545685@business.example.com', '59428522VU980043A', '0K899792R4186770B', 39.00, 'USD', 'paypal', 'COMPLETED', '2023-09-10 21:54:19', '2023-09-10 19:54:30');
INSERT INTO `transactions` VALUES (82, 'DP12345', 'Demo Product', 100.00, 'USD', 'T95PUEAWBMGVL', 'John Doe', 'sb-247uki27319318@personal.example.com', 'US', 'QFJZC3CD3ERB2', 'sb-s7u474321545685@business.example.com', '2W291360WN6492321', '66N13451H32151055', 39.00, 'USD', 'paypal', 'COMPLETED', '2023-09-10 22:00:15', '2023-09-10 20:00:25');
INSERT INTO `transactions` VALUES (83, 'DP12345', 'Demo Product', 100.00, 'USD', 'T95PUEAWBMGVL', 'John Doe', 'sb-247uki27319318@personal.example.com', 'US', 'QFJZC3CD3ERB2', 'sb-s7u474321545685@business.example.com', '35M81651KA350282P', '2AX23210U6999214L', 39.00, 'USD', 'paypal', 'COMPLETED', '2023-09-10 22:13:44', '2023-09-10 20:14:00');
INSERT INTO `transactions` VALUES (84, 'DP12345', 'Demo Product', 100.00, 'USD', 'T95PUEAWBMGVL', 'John Doe', 'sb-247uki27319318@personal.example.com', 'US', 'QFJZC3CD3ERB2', 'sb-s7u474321545685@business.example.com', '8TX28373UC4408514', '46S66880UD281745W', 39.00, 'USD', 'paypal', 'COMPLETED', '2023-09-10 22:15:46', '2023-09-10 20:15:57');
INSERT INTO `transactions` VALUES (85, 'DP12345', 'Demo Product', 100.00, 'USD', 'T95PUEAWBMGVL', 'John Doe', 'sb-247uki27319318@personal.example.com', 'US', 'QFJZC3CD3ERB2', 'sb-s7u474321545685@business.example.com', '0KB50606AH9293209', '0HM58100VL821925G', 39.00, 'USD', 'paypal', 'COMPLETED', '2023-09-10 22:19:58', '2023-09-10 20:20:08');
INSERT INTO `transactions` VALUES (86, 'DP12345', 'Demo Product', 100.00, 'USD', 'T95PUEAWBMGVL', 'John Doe', 'sb-247uki27319318@personal.example.com', 'US', 'QFJZC3CD3ERB2', 'sb-s7u474321545685@business.example.com', '0VH24100ED731840D', '3TE60641L1204783R', 39.00, 'USD', 'paypal', 'COMPLETED', '2023-09-10 22:26:16', '2023-09-10 20:26:27');
INSERT INTO `transactions` VALUES (87, 'DP12345', 'Demo Product', 100.00, 'USD', 'T95PUEAWBMGVL', 'John Doe', 'sb-247uki27319318@personal.example.com', 'US', 'QFJZC3CD3ERB2', 'sb-s7u474321545685@business.example.com', '3P7827298T816291A', '0HL69723TV1647611', 39.00, 'USD', 'paypal', 'COMPLETED', '2023-09-10 22:28:42', '2023-09-10 20:28:52');
INSERT INTO `transactions` VALUES (88, 'DP12345', 'Demo Product', 100.00, 'USD', 'T95PUEAWBMGVL', 'John Doe', 'sb-247uki27319318@personal.example.com', 'US', 'QFJZC3CD3ERB2', 'sb-s7u474321545685@business.example.com', '0EM44783FM6794128', '52976857X8464641Y', 39.00, 'USD', 'paypal', 'COMPLETED', '2023-09-10 22:32:46', '2023-09-10 20:33:01');
INSERT INTO `transactions` VALUES (89, 'DP12345', 'Demo Product', 100.00, 'USD', 'T95PUEAWBMGVL', 'John Doe', 'sb-247uki27319318@personal.example.com', 'US', 'QFJZC3CD3ERB2', 'sb-s7u474321545685@business.example.com', '9JR768016C242973T', '2JF21996MV798644R', 39.00, 'USD', 'paypal', 'COMPLETED', '2023-09-10 22:37:26', '2023-09-10 20:37:36');
INSERT INTO `transactions` VALUES (90, 'DP12345', 'Demo Product', 100.00, 'USD', 'T95PUEAWBMGVL', 'John Doe', 'sb-247uki27319318@personal.example.com', 'US', 'QFJZC3CD3ERB2', 'sb-s7u474321545685@business.example.com', '4NC82305P7264901M', '33766660RF994434K', 78.00, 'USD', 'paypal', 'COMPLETED', '2023-09-11 03:57:50', '2023-09-11 08:58:03');
INSERT INTO `transactions` VALUES (91, 'DP12345', 'Demo Product', 100.00, 'USD', 'T95PUEAWBMGVL', 'John Doe', 'sb-247uki27319318@personal.example.com', 'US', 'QFJZC3CD3ERB2', 'sb-s7u474321545685@business.example.com', '4DV44385UX151984M', '0SH07770GG5757941', 39.00, 'USD', 'paypal', 'COMPLETED', '2023-09-11 04:07:49', '2023-09-11 09:07:55');
INSERT INTO `transactions` VALUES (92, 'DP12345', 'Demo Product', 100.00, 'USD', 'T95PUEAWBMGVL', 'John Doe', 'sb-247uki27319318@personal.example.com', 'US', 'QFJZC3CD3ERB2', 'sb-s7u474321545685@business.example.com', '27Y91728FH715012U', '3X425710DL5304916', 39.00, 'USD', 'paypal', 'COMPLETED', '2023-09-11 04:11:55', '2023-09-11 09:12:01');
INSERT INTO `transactions` VALUES (93, 'DP12345', 'Demo Product', 100.00, 'USD', 'T95PUEAWBMGVL', 'John Doe', 'sb-247uki27319318@personal.example.com', 'US', 'QFJZC3CD3ERB2', 'sb-s7u474321545685@business.example.com', '8RK99009AS041664F', '9L097400YP098441M', 39.00, 'USD', 'paypal', 'COMPLETED', '2023-09-11 04:16:11', '2023-09-11 09:16:18');
INSERT INTO `transactions` VALUES (94, 'DP12345', 'Demo Product', 100.00, 'USD', 'T95PUEAWBMGVL', 'John Doe', 'sb-247uki27319318@personal.example.com', 'US', 'QFJZC3CD3ERB2', 'sb-s7u474321545685@business.example.com', '3FK47870HM488931W', '6WL922418X759524J', 39.00, 'USD', 'paypal', 'COMPLETED', '2023-09-11 04:19:45', '2023-09-11 09:19:51');
INSERT INTO `transactions` VALUES (95, 'DP12345', 'Demo Product', 100.00, 'USD', 'T95PUEAWBMGVL', 'John Doe', 'sb-247uki27319318@personal.example.com', 'US', 'QFJZC3CD3ERB2', 'sb-s7u474321545685@business.example.com', '2F759504YA644824G', '0BU2485299377863N', 39.00, 'USD', 'paypal', 'COMPLETED', '2023-09-11 04:22:17', '2023-09-11 09:22:24');
INSERT INTO `transactions` VALUES (96, 'DP12345', 'Demo Product', 100.00, 'USD', 'T95PUEAWBMGVL', 'John Doe', 'sb-247uki27319318@personal.example.com', 'US', 'QFJZC3CD3ERB2', 'sb-s7u474321545685@business.example.com', '6N717526UW2850620', '2MN495737B7185817', 39.00, 'USD', 'paypal', 'COMPLETED', '2023-09-11 05:19:04', '2023-09-11 10:19:15');
INSERT INTO `transactions` VALUES (97, 'DP12345', 'Demo Product', 100.00, 'USD', 'T95PUEAWBMGVL', 'John Doe', 'sb-247uki27319318@personal.example.com', 'US', 'QFJZC3CD3ERB2', 'sb-s7u474321545685@business.example.com', '4AN0661377685273P', '6Y762955YF302980C', 39.00, 'USD', 'paypal', 'COMPLETED', '2023-09-11 05:20:32', '2023-09-11 10:20:39');
INSERT INTO `transactions` VALUES (98, 'DP12345', 'Demo Product', 100.00, 'USD', 'T95PUEAWBMGVL', 'John Doe', 'sb-247uki27319318@personal.example.com', 'US', 'QFJZC3CD3ERB2', 'sb-s7u474321545685@business.example.com', '46G17355SE849812K', '8VR05790JN290200A', 39.00, 'USD', 'paypal', 'COMPLETED', '2023-09-11 05:24:10', '2023-09-11 10:24:16');
INSERT INTO `transactions` VALUES (99, 'DP12345', 'Demo Product', 100.00, 'USD', 'T95PUEAWBMGVL', 'John Doe', 'sb-247uki27319318@personal.example.com', 'US', 'QFJZC3CD3ERB2', 'sb-s7u474321545685@business.example.com', '5Y9411478P558653N', '05734636MK247174X', 39.00, 'USD', 'paypal', 'COMPLETED', '2023-09-11 05:27:33', '2023-09-11 10:27:40');
INSERT INTO `transactions` VALUES (100, 'DP12345', 'Demo Product', 100.00, 'USD', 'T95PUEAWBMGVL', 'John Doe', 'sb-247uki27319318@personal.example.com', 'US', 'QFJZC3CD3ERB2', 'sb-s7u474321545685@business.example.com', '8FE66542BN668590F', '15J38389TS525552R', 39.00, 'USD', 'paypal', 'COMPLETED', '2023-09-11 05:29:44', '2023-09-11 10:29:50');
INSERT INTO `transactions` VALUES (101, 'DP12345', 'Demo Product', 100.00, 'USD', 'T95PUEAWBMGVL', 'John Doe', 'sb-247uki27319318@personal.example.com', 'US', 'QFJZC3CD3ERB2', 'sb-s7u474321545685@business.example.com', '4YK54199RR806154T', '88V931884J183915U', 39.00, 'USD', 'paypal', 'COMPLETED', '2023-09-11 05:34:48', '2023-09-11 10:34:59');
INSERT INTO `transactions` VALUES (102, 'DP12345', 'Demo Product', 100.00, 'USD', 'T95PUEAWBMGVL', 'John Doe', 'sb-247uki27319318@personal.example.com', 'US', 'QFJZC3CD3ERB2', 'sb-s7u474321545685@business.example.com', '1W291777AJ397005F', '2F781649CA673023B', 39.00, 'USD', 'paypal', 'COMPLETED', '2023-09-11 05:41:00', '2023-09-11 10:41:06');
INSERT INTO `transactions` VALUES (103, 'DP12345', 'Demo Product', 100.00, 'USD', 'T95PUEAWBMGVL', 'John Doe', 'sb-247uki27319318@personal.example.com', 'US', 'QFJZC3CD3ERB2', 'sb-s7u474321545685@business.example.com', '13N06197RV242471S', '6SG91504SX7115016', 39.00, 'USD', 'paypal', 'COMPLETED', '2023-09-11 05:41:56', '2023-09-11 10:42:02');
INSERT INTO `transactions` VALUES (104, 'DP12345', 'Demo Product', 100.00, 'USD', 'T95PUEAWBMGVL', 'John Doe', 'sb-247uki27319318@personal.example.com', 'US', 'QFJZC3CD3ERB2', 'sb-s7u474321545685@business.example.com', '1U440340L73493633', '1371319173663034U', 39.00, 'USD', 'paypal', 'COMPLETED', '2023-09-11 05:42:53', '2023-09-11 10:43:02');
INSERT INTO `transactions` VALUES (105, 'DP12345', 'Demo Product', 100.00, 'USD', 'T95PUEAWBMGVL', 'John Doe', 'sb-247uki27319318@personal.example.com', 'US', 'QFJZC3CD3ERB2', 'sb-s7u474321545685@business.example.com', '4XF93301UY666573K', '1RH01643HG8843154', 39.00, 'USD', 'paypal', 'COMPLETED', '2023-09-11 05:48:14', '2023-09-11 10:48:20');
INSERT INTO `transactions` VALUES (106, 'DP12345', 'Demo Product', 100.00, 'USD', 'T95PUEAWBMGVL', 'John Doe', 'sb-247uki27319318@personal.example.com', 'US', 'QFJZC3CD3ERB2', 'sb-s7u474321545685@business.example.com', '6G834578SM696121F', '38T56973VH822993H', 39.00, 'USD', 'paypal', 'COMPLETED', '2023-09-11 06:17:36', '2023-09-11 11:17:48');
INSERT INTO `transactions` VALUES (107, 'DP12345', 'Demo Product', 100.00, 'USD', 'T95PUEAWBMGVL', 'John Doe', 'sb-247uki27319318@personal.example.com', 'US', 'QFJZC3CD3ERB2', 'sb-s7u474321545685@business.example.com', '3DN383906M697142E', '6KL30108W2382344S', 39.00, 'USD', 'paypal', 'COMPLETED', '2023-09-11 06:22:23', '2023-09-11 11:22:29');
INSERT INTO `transactions` VALUES (108, '22', 'mô tả', 100.00, 'USD', '3JCHFT7T2X7R8', 'John Doe', 'sb-wwegz27331659@personal.example.com', 'US', 'QFJZC3CD3ERB2', 'sb-s7u474321545685@business.example.com', '6YK31672XU328694B', '2X5349328G1272806', 117.00, 'USD', 'paypal', 'COMPLETED', '2023-09-11 16:34:20', '2023-09-11 21:34:30');

-- ----------------------------
-- Table structure for vnpay
-- ----------------------------
DROP TABLE IF EXISTS `vnpay`;
CREATE TABLE `vnpay`  (
  `vnp_id` int NOT NULL AUTO_INCREMENT,
  `vnp_amount` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `vnp_bankcode` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `vnp_banktranno` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `vnp_cardtype` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `vnp_orderinfo` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `vnp_paydate` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `vnp_tmncode` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `vnp_transactionno` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `order_code` int NOT NULL,
  `payment_status` int NOT NULL,
  PRIMARY KEY (`vnp_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 54 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of vnpay
-- ----------------------------
INSERT INTO `vnpay` VALUES (1, '500000000', 'NCB', 'VNP14020653', 'ATM', 'Thanh toán đơn hàng Guha Perfume', '20230524170955', 'MCG9RE1Q', '14020653', 4573, 0);
INSERT INTO `vnpay` VALUES (2, '500000000', 'NCB', 'VNP14020653', 'ATM', 'Thanh toán đơn hàng Guha Perfume', '20230524170955', 'MCG9RE1Q', '14020653', 4573, 0);
INSERT INTO `vnpay` VALUES (3, '810000000', 'NCB', 'VNP14020679', 'ATM', 'Thanh toán đơn hàng Guha Perfume', '20230524172011', 'MCG9RE1Q', '14020679', 905, 0);
INSERT INTO `vnpay` VALUES (10, '630000000', 'NCB', 'VNP14023814', 'ATM', 'Thanh toán đơn hàng Guha Perfume', '20230528122353', 'MCG9RE1Q', '14023814', 0, 0);
INSERT INTO `vnpay` VALUES (11, '630000000', 'NCB', 'VNP14023814', 'ATM', 'Thanh toán đơn hàng Guha Perfume', '20230528122353', 'MCG9RE1Q', '14023814', 0, 0);
INSERT INTO `vnpay` VALUES (12, '630000000', 'NCB', 'VNP14023814', 'ATM', 'Thanh toán đơn hàng Guha Perfume', '20230528122353', 'MCG9RE1Q', '14023814', 0, 0);
INSERT INTO `vnpay` VALUES (13, '630000000', 'NCB', 'VNP14023814', 'ATM', 'Thanh toán đơn hàng Guha Perfume', '20230528122353', 'MCG9RE1Q', '14023814', 0, 0);
INSERT INTO `vnpay` VALUES (14, '350000000', 'NCB', 'VNP14023815', 'ATM', 'Thanh toán đơn hàng Guha Perfume', '20230528123948', 'MCG9RE1Q', '14023815', 992, 0);
INSERT INTO `vnpay` VALUES (15, '1440000000', 'NCB', 'VNP14023816', 'ATM', 'Thanh toán đơn hàng Guha Perfume', '20230528125013', 'MCG9RE1Q', '14023816', 7556, 0);
INSERT INTO `vnpay` VALUES (16, '360000000', 'NCB', 'VNP14023817', 'ATM', 'Thanh toán đơn hàng Guha Perfume', '20230528125540', 'MCG9RE1Q', '14023817', 3618, 0);
INSERT INTO `vnpay` VALUES (17, '270000000', 'NCB', 'VNP14023819', 'ATM', 'Thanh toán đơn hàng Guha Perfume', '20230528125748', 'MCG9RE1Q', '14023819', 3323, 0);
INSERT INTO `vnpay` VALUES (18, '1800000000', 'NCB', 'VNP14023820', 'ATM', 'Thanh toán đơn hàng Guha Perfume', '20230528130003', 'MCG9RE1Q', '14023820', 1154, 0);
INSERT INTO `vnpay` VALUES (19, '360000000', 'NCB', 'VNP14023929', 'ATM', 'Thanh toán đơn hàng Guha Perfume', '20230528155852', 'MCG9RE1Q', '14023929', 0, 0);
INSERT INTO `vnpay` VALUES (20, '368000000', 'VNPAY', '', 'QRCODE', 'Thanh toán đơn hàng Guha Perfume', '20230529113726', 'MCG9RE1Q', '0', 9667, 0);
INSERT INTO `vnpay` VALUES (21, '368000000', 'NCB', 'VNP14029730', 'ATM', 'Thanh toán đơn hàng Guha Perfume', '20230603160224', 'MCG9RE1Q', '14029730', 6476, 0);
INSERT INTO `vnpay` VALUES (22, '350000000', 'VNPAY', '', 'QRCODE', 'Thanh toán đơn hàng Guha Perfume', '20230603204956', 'MCG9RE1Q', '0', 0, 0);
INSERT INTO `vnpay` VALUES (23, '368000000', 'NCB', 'VNP14029794', 'ATM', 'Thanh toán đơn hàng Guha Perfume', '20230603205748', 'MCG9RE1Q', '14029794', 3000, 0);
INSERT INTO `vnpay` VALUES (24, '368000000', 'NCB', 'VNP14029816', 'ATM', 'Thanh toán đơn hàng Guha Perfume', '20230603221222', 'MCG9RE1Q', '14029816', 4941, 0);
INSERT INTO `vnpay` VALUES (25, '368000000', 'NCB', 'VNP14029816', 'ATM', 'Thanh toán đơn hàng Guha Perfume', '20230603221222', 'MCG9RE1Q', '14029816', 4941, 0);
INSERT INTO `vnpay` VALUES (26, '368000000', 'NCB', 'VNP14029816', 'ATM', 'Thanh toán đơn hàng Guha Perfume', '20230603221222', 'MCG9RE1Q', '14029816', 4941, 0);
INSERT INTO `vnpay` VALUES (27, '368000000', 'NCB', 'VNP14029816', 'ATM', 'Thanh toán đơn hàng Guha Perfume', '20230603221222', 'MCG9RE1Q', '14029816', 4941, 0);
INSERT INTO `vnpay` VALUES (28, '368000000', 'NCB', 'VNP14029816', 'ATM', 'Thanh toán đơn hàng Guha Perfume', '20230603221222', 'MCG9RE1Q', '14029816', 4941, 0);
INSERT INTO `vnpay` VALUES (29, '368000000', 'NCB', 'VNP14029816', 'ATM', 'Thanh toán đơn hàng Guha Perfume', '20230603221222', 'MCG9RE1Q', '14029816', 4941, 0);
INSERT INTO `vnpay` VALUES (30, '368000000', 'NCB', 'VNP14029816', 'ATM', 'Thanh toán đơn hàng Guha Perfume', '20230603221222', 'MCG9RE1Q', '14029816', 4941, 0);
INSERT INTO `vnpay` VALUES (31, '368000000', 'NCB', 'VNP14029816', 'ATM', 'Thanh toán đơn hàng Guha Perfume', '20230603221222', 'MCG9RE1Q', '14029816', 4941, 0);
INSERT INTO `vnpay` VALUES (32, '368000000', 'NCB', 'VNP14029816', 'ATM', 'Thanh toán đơn hàng Guha Perfume', '20230603221222', 'MCG9RE1Q', '14029816', 4941, 0);
INSERT INTO `vnpay` VALUES (33, '368000000', 'NCB', 'VNP14029816', 'ATM', 'Thanh toán đơn hàng Guha Perfume', '20230603221222', 'MCG9RE1Q', '14029816', 4941, 0);
INSERT INTO `vnpay` VALUES (34, '368000000', 'NCB', 'VNP14029819', 'ATM', 'Thanh toán đơn hàng Guha Perfume', '20230603222317', 'MCG9RE1Q', '14029819', 9050, 0);
INSERT INTO `vnpay` VALUES (35, '368000000', 'NCB', 'VNP14029819', 'ATM', 'Thanh toán đơn hàng Guha Perfume', '20230603222317', 'MCG9RE1Q', '14029819', 9050, 0);
INSERT INTO `vnpay` VALUES (36, '368000000', 'NCB', 'VNP14029821', 'ATM', 'Thanh toán đơn hàng Guha Perfume', '20230603222548', 'MCG9RE1Q', '14029821', 3320, 0);
INSERT INTO `vnpay` VALUES (37, '368000000', 'NCB', 'VNP14029822', 'ATM', 'Thanh toán đơn hàng Guha Perfume', '20230603222706', 'MCG9RE1Q', '14029822', 4220, 0);
INSERT INTO `vnpay` VALUES (38, '900000000', 'NCB', 'VNP14029833', 'ATM', 'Thanh toán đơn hàng Guha Perfume', '20230603225623', 'MCG9RE1Q', '14029833', 14, 0);
INSERT INTO `vnpay` VALUES (39, '360000000', 'NCB', 'VNP14029949', 'ATM', 'Thanh toán đơn hàng Guha Perfume', '20230604095052', 'MCG9RE1Q', '14029949', 9439, 0);
INSERT INTO `vnpay` VALUES (40, '315000000', 'NCB', 'VNP14032419', 'ATM', 'Thanh toán đơn hàng Guha Perfume', '20230606210601', 'MCG9RE1Q', '14032419', 2417, 0);
INSERT INTO `vnpay` VALUES (41, '270000000', 'NCB', 'VNP14032946', 'ATM', 'Thanh toán đơn hàng Guha Perfume', '20230607135755', 'MCG9RE1Q', '14032946', 9787, 0);
INSERT INTO `vnpay` VALUES (42, '733500000', 'NCB', 'VNP14032963', 'ATM', 'Thanh toán đơn hàng Guha Perfume', '20230607141409', 'MCG9RE1Q', '14032963', 9952, 0);
INSERT INTO `vnpay` VALUES (43, '1260000000', 'NCB', 'VNP14035526', 'ATM', 'Thanh toán đơn hàng Guha Perfume', '20230611085006', 'MCG9RE1Q', '14035526', 4731, 0);
INSERT INTO `vnpay` VALUES (44, '270000000', 'NCB', 'VNP14038464', 'ATM', 'Thanh toán đơn hàng Guha Perfume', '20230614105820', 'MCG9RE1Q', '14038464', 3704, 0);
INSERT INTO `vnpay` VALUES (45, '380000000', 'NCB', 'VNP14040288', 'ATM', 'Thanh toán đơn hàng Guha Perfume', '20230616091839', 'MCG9RE1Q', '14040288', 2166, 0);
INSERT INTO `vnpay` VALUES (46, '900000000', 'NCB', 'VNP14041820', 'ATM', 'Thanh toán đơn hàng Guha Perfume', '20230618170147', 'MCG9RE1Q', '14041820', 5099, 0);
INSERT INTO `vnpay` VALUES (47, '1467000000', 'NCB', 'VNP14041844', 'ATM', 'Thanh toán đơn hàng Guha Perfume', '20230618181811', 'MCG9RE1Q', '14041844', 9644, 0);
INSERT INTO `vnpay` VALUES (48, '1330000000', 'NCB', 'VNP14041965', 'ATM', 'Thanh toán đơn hàng Guha Perfume', '20230618230640', 'MCG9RE1Q', '14041965', 9063, 0);
INSERT INTO `vnpay` VALUES (49, '733500000', 'NCB', 'VNP14042736', 'ATM', 'Thanh toán đơn hàng Guha Perfume', '20230619193722', 'MCG9RE1Q', '14042736', 771, 0);
INSERT INTO `vnpay` VALUES (50, '368000000', 'NCB', 'VNP14042837', 'ATM', 'Thanh toán đơn hàng Guha Perfume', '20230619234540', 'MCG9RE1Q', '14042837', 3407, 0);
INSERT INTO `vnpay` VALUES (51, '8505000000', 'NCB', 'VNP14042912', 'ATM', 'Thanh toán đơn hàng Guha Perfume', '20230620072627', 'MCG9RE1Q', '14042912', 6492, 0);
INSERT INTO `vnpay` VALUES (52, '736000000', 'NCB', 'VNP14042923', 'ATM', 'Thanh toán đơn hàng Guha Perfume', '20230620081701', 'MCG9RE1Q', '14042923', 6872, 0);
INSERT INTO `vnpay` VALUES (53, '13639920000', 'NCB', 'VNP14060802', 'ATM', 'Thanh toán đơn hàng Guha Perfume', '20230707180752', 'MCG9RE1Q', '14060802', 4287, 0);

SET FOREIGN_KEY_CHECKS = 1;
