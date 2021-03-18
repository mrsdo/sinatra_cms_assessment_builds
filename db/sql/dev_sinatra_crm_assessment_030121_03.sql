/*
 Navicat Premium Data Transfer

 Source Server         : MySQL Local
 Source Server Type    : MySQL
 Source Server Version : 50732
 Source Host           : localhost:3306
 Source Schema         : dev_sinatra_crm_assessment_030121_02

 Target Server Type    : MySQL
 Target Server Version : 50732
 File Encoding         : 65001

 Date: 18/03/2021 04:17:57
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for ar_internal_metadata
-- ----------------------------
DROP TABLE IF EXISTS `ar_internal_metadata`;
CREATE TABLE `ar_internal_metadata` (
  `key` varchar(255) NOT NULL,
  `value` varchar(255) DEFAULT NULL,
  `created_at` datetime(6) NOT NULL,
  `updated_at` datetime(6) NOT NULL,
  PRIMARY KEY (`key`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ar_internal_metadata
-- ----------------------------
BEGIN;
INSERT INTO `ar_internal_metadata` VALUES ('environment', 'default_env', '2021-03-17 20:28:03.065016', '2021-03-17 20:28:03.065016');
COMMIT;

-- ----------------------------
-- Table structure for listings
-- ----------------------------
DROP TABLE IF EXISTS `listings`;
CREATE TABLE `listings` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `address` varchar(255) DEFAULT NULL,
  `hoa` varchar(255) DEFAULT NULL,
  `status` varchar(255) DEFAULT NULL,
  `first_listed` date DEFAULT NULL,
  `bedrooms` varchar(255) DEFAULT NULL,
  `bathrooms` varchar(255) DEFAULT NULL,
  `summary` varchar(255) DEFAULT NULL,
  `sqft` varchar(255) DEFAULT NULL,
  `asking_price` varchar(255) DEFAULT NULL,
  `photo_1` varchar(255) DEFAULT NULL,
  `photo_2` varchar(255) DEFAULT NULL,
  `photo_3` varchar(255) DEFAULT NULL,
  `photo_4` varchar(255) DEFAULT NULL,
  `phone` varchar(255) DEFAULT NULL,
  `community` varchar(255) DEFAULT NULL,
  `created_at` datetime(6) NOT NULL,
  `updated_at` datetime(6) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=31 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of listings
-- ----------------------------
BEGIN;
INSERT INTO `listings` VALUES (1, 'Suite 590 250 Spencer Mission, Lake Dillon, CO 95323-2792', 'Park Oaks', '1', '2008-12-09', '5 BR', '1 BA', 'Minus eum labore. Velit sed est. Eos labore qui. Animi id quae.', '5313 sq. ft.', '$6242715', 'https://loremflickr.com/320/240/homes_for_sale?random=2', 'https://loremflickr.com/320/240/homes_for_sale?random=3', 'https://loremflickr.com/320/240/homes_for_sale?random=4', 'https://loremflickr.com/320/240/homes_for_sale?random=5', '779-124-1372', 'Homely', '2021-03-18 08:15:19.403404', '2021-03-18 08:15:19.403404');
INSERT INTO `listings` VALUES (2, '14235 Frami Parkways, North Royalside, NH 72728-0742', 'Summer Place', '1', '2006-02-16', '3 BR', '2 BA', 'Veritatis tempore ea. Fugit at architecto. Sit qui omnis.', '3868 sq. ft.', '$13870302', 'https://loremflickr.com/320/240/homes_for_sale?random=4', 'https://loremflickr.com/320/240/homes_for_sale?random=5', 'https://loremflickr.com/320/240/homes_for_sale?random=6', 'https://loremflickr.com/320/240/homes_for_sale?random=7', '(172) 618-2356 x147', 'Homely', '2021-03-18 08:15:20.103334', '2021-03-18 08:15:20.103334');
INSERT INTO `listings` VALUES (3, 'Apt. 752 624 Verdell Freeway, Bodefurt, TN 51404-7311', 'Park Village', '2', '2006-07-11', '1 BR', '4 BA', 'Ratione repudiandae fuga. Placeat qui expedita.', '5449 sq. ft.', '$11208820', 'https://loremflickr.com/320/240/homes_for_sale?random=6', 'https://loremflickr.com/320/240/homes_for_sale?random=7', 'https://loremflickr.com/320/240/homes_for_sale?random=8', 'https://loremflickr.com/320/240/homes_for_sale?random=9', '(207) 041-6893 x773', 'Homely', '2021-03-18 08:15:20.737194', '2021-03-18 08:15:20.737194');
INSERT INTO `listings` VALUES (4, 'Suite 375 877 Toy Shores, Keelingview, WA 96325-4933', 'Park Court', '1', '2007-09-08', '1 BR', '2 BA', 'Porro modi quia. Repellendus minus corporis.', '3515 sq. ft.', '$8684650', 'https://loremflickr.com/320/240/homes_for_sale?random=8', 'https://loremflickr.com/320/240/homes_for_sale?random=9', 'https://loremflickr.com/320/240/homes_for_sale?random=10', 'https://loremflickr.com/320/240/homes_for_sale?random=11', '1-334-732-8763 x905', 'Homely', '2021-03-18 08:15:21.438308', '2021-03-18 08:15:21.438308');
INSERT INTO `listings` VALUES (5, '938 O\'Hara Brook, Port Alberg, PA 90473', 'Park Court', '2', '2020-04-17', '1 BR', '3 BA', 'Qui laudantium facere. Quam consequatur ullam. Ut quia delectus. Voluptatem blanditiis vel.', '5488 sq. ft.', '$18537230', 'https://loremflickr.com/320/240/homes_for_sale?random=10', 'https://loremflickr.com/320/240/homes_for_sale?random=11', 'https://loremflickr.com/320/240/homes_for_sale?random=12', 'https://loremflickr.com/320/240/homes_for_sale?random=13', '824-810-7073 x4792', 'Homely', '2021-03-18 08:15:22.249730', '2021-03-18 08:15:22.249730');
INSERT INTO `listings` VALUES (6, 'Suite 709 8452 Latrisha Spurs, West Darnellfurt, WY 60449-8560', 'Pine Acres', '1', '2019-11-27', '4 BR', '4 BA', 'Unde natus molestiae. Sunt quae quibusdam. Illo cum aliquam.', '1804 sq. ft.', '$3237918', 'https://loremflickr.com/320/240/homes_for_sale?random=12', 'https://loremflickr.com/320/240/homes_for_sale?random=13', 'https://loremflickr.com/320/240/homes_for_sale?random=14', 'https://loremflickr.com/320/240/homes_for_sale?random=15', '(519) 113-8076 x323', 'Homely', '2021-03-18 08:15:22.946312', '2021-03-18 08:15:22.946312');
INSERT INTO `listings` VALUES (7, 'Suite 879 99009 Mayert Crescent, Robbiebury, OH 38977-4184', 'Royal Village', '2', '2017-11-08', '3 BR', '4 BA', 'Ea officia nostrum. Ut maxime eos. Voluptate amet culpa. Culpa aliquid rem.', '3472 sq. ft.', '$4241070', 'https://loremflickr.com/320/240/homes_for_sale?random=14', 'https://loremflickr.com/320/240/homes_for_sale?random=15', 'https://loremflickr.com/320/240/homes_for_sale?random=16', 'https://loremflickr.com/320/240/homes_for_sale?random=17', '(236) 662-3547', 'Homely', '2021-03-18 08:15:23.622386', '2021-03-18 08:15:23.622386');
INSERT INTO `listings` VALUES (8, '6605 Mertz Tunnel, South Camilletown, GA 45599-8779', 'Eagle Square', '2', '2010-11-13', '1 BR', '5 BA', 'Et temporibus et. Voluptatibus sit dolore.', '2119 sq. ft.', '$1947431', 'https://loremflickr.com/320/240/homes_for_sale?random=16', 'https://loremflickr.com/320/240/homes_for_sale?random=17', 'https://loremflickr.com/320/240/homes_for_sale?random=18', 'https://loremflickr.com/320/240/homes_for_sale?random=19', '1-618-705-1193', 'Homely', '2021-03-18 08:15:24.336850', '2021-03-18 08:15:24.336850');
INSERT INTO `listings` VALUES (9, 'Suite 112 91554 Preston Junctions, Roselleburgh, OK 95961', 'Summer Square', '2', '2015-08-11', '5 BR', '5 BA', 'Voluptas aut ea. Quas dolorem accusantium. Iste quos quasi. Quaerat et ullam.', '3275 sq. ft.', '$9804302', 'https://loremflickr.com/320/240/homes_for_sale?random=18', 'https://loremflickr.com/320/240/homes_for_sale?random=19', 'https://loremflickr.com/320/240/homes_for_sale?random=20', 'https://loremflickr.com/320/240/homes_for_sale?random=21', '804.865.5003 x033', 'Homely', '2021-03-18 08:15:25.071313', '2021-03-18 08:15:25.071313');
INSERT INTO `listings` VALUES (10, '75576 Swift Dam, North Joycelynland, VA 87026', 'Summer Creek', '2', '2012-02-15', '5 BR', '2 BA', 'Voluptas aut sed. Odit est voluptas.', '1516 sq. ft.', '$9980174', 'https://loremflickr.com/320/240/homes_for_sale?random=20', 'https://loremflickr.com/320/240/homes_for_sale?random=21', 'https://loremflickr.com/320/240/homes_for_sale?random=22', 'https://loremflickr.com/320/240/homes_for_sale?random=23', '441-376-4508 x15127', 'Homely', '2021-03-18 08:15:25.737922', '2021-03-18 08:15:25.737922');
INSERT INTO `listings` VALUES (11, 'Suite 340 6324 Rowe Dale, Buckfort, MS 59381', 'Royal Estates', '1', '2013-06-04', '3 BR', '3 BA', 'Qui rerum animi. Ut sequi unde. Sunt iusto aut.', '1355 sq. ft.', '$2748348', 'https://loremflickr.com/320/240/homes_for_sale?random=22', 'https://loremflickr.com/320/240/homes_for_sale?random=23', 'https://loremflickr.com/320/240/homes_for_sale?random=24', 'https://loremflickr.com/320/240/homes_for_sale?random=25', '261-580-0447 x24319', 'Homely', '2021-03-18 08:15:26.413876', '2021-03-18 08:15:26.413876');
INSERT INTO `listings` VALUES (12, '78908 Lindgren Tunnel, Kennamouth, MD 42506', 'Willow Acres', '1', '2006-01-06', '3 BR', '1 BA', 'Est voluptates et. Dolores et delectus. Iure nam dolores. Ut praesentium et.', '2995 sq. ft.', '$15717747', 'https://loremflickr.com/320/240/homes_for_sale?random=24', 'https://loremflickr.com/320/240/homes_for_sale?random=25', 'https://loremflickr.com/320/240/homes_for_sale?random=26', 'https://loremflickr.com/320/240/homes_for_sale?random=27', '(643) 421-4337 x0517', 'Homely', '2021-03-18 08:15:27.146372', '2021-03-18 08:15:27.146372');
INSERT INTO `listings` VALUES (13, '53235 Derrick Heights, Port Dalton, IN 82870', 'Willow Gardens', '1', '2019-02-16', '3 BR', '1 BA', 'Nobis quia et. Beatae et molestias. Laborum voluptas eos. Inventore odio et.', '3018 sq. ft.', '$25488541', 'https://loremflickr.com/320/240/homes_for_sale?random=26', 'https://loremflickr.com/320/240/homes_for_sale?random=27', 'https://loremflickr.com/320/240/homes_for_sale?random=28', 'https://loremflickr.com/320/240/homes_for_sale?random=29', '(905) 188-4954 x43163', 'Homely', '2021-03-18 08:15:27.880307', '2021-03-18 08:15:27.880307');
INSERT INTO `listings` VALUES (14, 'Apt. 260 911 Wilderman Trace, Gutmannport, AK 50320-5888', 'Park Court', '1', '2001-09-25', '3 BR', '2 BA', 'Ut est quis. Consequuntur doloremque a.', '5338 sq. ft.', '$16025147', 'https://loremflickr.com/320/240/homes_for_sale?random=28', 'https://loremflickr.com/320/240/homes_for_sale?random=29', 'https://loremflickr.com/320/240/homes_for_sale?random=30', 'https://loremflickr.com/320/240/homes_for_sale?random=31', '677.938.9004 x91228', 'Homely', '2021-03-18 08:15:28.546728', '2021-03-18 08:15:28.546728');
INSERT INTO `listings` VALUES (15, 'Suite 617 3074 Brakus Way, Lake Christophermouth, IL 93246', 'Royal Gardens', '1', '2012-09-23', '3 BR', '2 BA', 'Nihil quod consequatur. In dolor tempora. Necessitatibus laborum non. Numquam voluptas qui. Sequi sit nostrum.', '3156 sq. ft.', '$49880', 'https://loremflickr.com/320/240/homes_for_sale?random=30', 'https://loremflickr.com/320/240/homes_for_sale?random=31', 'https://loremflickr.com/320/240/homes_for_sale?random=32', 'https://loremflickr.com/320/240/homes_for_sale?random=33', '519.701.0956 x4808', 'Homely', '2021-03-18 08:15:29.203790', '2021-03-18 08:15:29.203790');
INSERT INTO `listings` VALUES (16, 'Suite 964 59639 Alexander Track, Hilpertport, UT 00144', 'Willow Heights', '2', '2009-08-15', '3 BR', '4 BA', 'Aspernatur corporis omnis. Et ducimus quo. Animi quidem cum. Amet consequatur asperiores. Earum harum ea.', '3786 sq. ft.', '$27804675', 'https://loremflickr.com/320/240/homes_for_sale?random=32', 'https://loremflickr.com/320/240/homes_for_sale?random=33', 'https://loremflickr.com/320/240/homes_for_sale?random=34', 'https://loremflickr.com/320/240/homes_for_sale?random=35', '(996) 789-2204 x6815', 'Homely', '2021-03-18 08:15:29.963603', '2021-03-18 08:15:29.963603');
INSERT INTO `listings` VALUES (17, '107 Ozella Throughway, Schaeferburgh, NC 24425-2510', 'Paradise Place', '1', '2011-03-12', '2 BR', '4 BA', 'Aspernatur ipsam distinctio. Laudantium dicta qui. Eos natus possimus. Eum consequatur assumenda. Amet aut nemo.', '1775 sq. ft.', '$18986788', 'https://loremflickr.com/320/240/homes_for_sale?random=34', 'https://loremflickr.com/320/240/homes_for_sale?random=35', 'https://loremflickr.com/320/240/homes_for_sale?random=36', 'https://loremflickr.com/320/240/homes_for_sale?random=37', '1-876-793-3591 x9354', 'Homely', '2021-03-18 08:15:30.645411', '2021-03-18 08:15:30.645411');
INSERT INTO `listings` VALUES (18, 'Apt. 869 84853 Bode Fall, Port Madalynbury, MA 58640', 'Park Acres', '2', '2020-05-11', '1 BR', '2 BA', 'Aut possimus atque. Dolores voluptatem vero. Non officiis est.', '3466 sq. ft.', '$28592627', 'https://loremflickr.com/320/240/homes_for_sale?random=36', 'https://loremflickr.com/320/240/homes_for_sale?random=37', 'https://loremflickr.com/320/240/homes_for_sale?random=38', 'https://loremflickr.com/320/240/homes_for_sale?random=39', '1-260-530-9326 x516', 'Homely', '2021-03-18 08:15:31.311657', '2021-03-18 08:15:31.311657');
INSERT INTO `listings` VALUES (19, 'Suite 668 5436 Sipes Green, Eliseohaven, UT 70759', 'Park Oaks', '2', '2002-06-08', '5 BR', '2 BA', 'Ea voluptatem molestias. Sunt corrupti eaque. Quasi inventore et. Vitae non est.', '4196 sq. ft.', '$12052104', 'https://loremflickr.com/320/240/homes_for_sale?random=38', 'https://loremflickr.com/320/240/homes_for_sale?random=39', 'https://loremflickr.com/320/240/homes_for_sale?random=40', 'https://loremflickr.com/320/240/homes_for_sale?random=41', '(403) 186-1822 x99196', 'Homely', '2021-03-18 08:15:31.951902', '2021-03-18 08:15:31.951902');
INSERT INTO `listings` VALUES (20, '10035 Benton Turnpike, Mitchellmouth, OR 38459', 'Willow Oaks', '1', '2011-10-25', '5 BR', '5 BA', 'Sint expedita quibusdam. Nesciunt autem ullam. Neque veritatis error. Eius commodi est.', '1552 sq. ft.', '$1798224', 'https://loremflickr.com/320/240/homes_for_sale?random=40', 'https://loremflickr.com/320/240/homes_for_sale?random=41', 'https://loremflickr.com/320/240/homes_for_sale?random=42', 'https://loremflickr.com/320/240/homes_for_sale?random=43', '1-737-477-4959 x24892', 'Homely', '2021-03-18 08:15:32.666375', '2021-03-18 08:15:32.666375');
INSERT INTO `listings` VALUES (21, '2825 Bernard Burg, Joelview, CA 22199', 'Autumn Oaks', '2', '2016-06-13', '1 BR', '5 BA', 'Et reiciendis quasi. Non recusandae numquam. At dolorum sequi.', '3417 sq. ft.', '$12994627', 'https://loremflickr.com/320/240/homes_for_sale?random=42', 'https://loremflickr.com/320/240/homes_for_sale?random=43', 'https://loremflickr.com/320/240/homes_for_sale?random=44', 'https://loremflickr.com/320/240/homes_for_sale?random=45', '991-004-0611 x8873', 'Homely', '2021-03-18 08:15:33.342946', '2021-03-18 08:15:33.342946');
INSERT INTO `listings` VALUES (22, 'Suite 134 46581 Hirthe Squares, New Dewayneside, FL 96898-7047', 'University Pointe', '1', '2009-01-10', '1 BR', '3 BA', 'Voluptate perspiciatis et. Rerum architecto quisquam. Non laborum magnam.', '4189 sq. ft.', '$19847161', 'https://loremflickr.com/320/240/homes_for_sale?random=44', 'https://loremflickr.com/320/240/homes_for_sale?random=45', 'https://loremflickr.com/320/240/homes_for_sale?random=46', 'https://loremflickr.com/320/240/homes_for_sale?random=47', '(458) 032-6563 x067', 'Homely', '2021-03-18 08:15:33.998890', '2021-03-18 08:15:33.998890');
INSERT INTO `listings` VALUES (23, 'Suite 422 2964 Hermiston Avenue, Nestorbury, IL 66052-4718', 'Summer Village', '1', '2004-03-16', '5 BR', '5 BA', 'Error nam et. Tempora reiciendis quia. Voluptatem facere facilis. Fugit dolorem commodi. Voluptas voluptates natus.', '1143 sq. ft.', '$28062502', 'https://loremflickr.com/320/240/homes_for_sale?random=46', 'https://loremflickr.com/320/240/homes_for_sale?random=47', 'https://loremflickr.com/320/240/homes_for_sale?random=48', 'https://loremflickr.com/320/240/homes_for_sale?random=49', '1-912-553-9591 x818', 'Homely', '2021-03-18 08:15:34.677198', '2021-03-18 08:15:34.677198');
INSERT INTO `listings` VALUES (24, 'Apt. 615 7343 Patricia Trace, Scottyborough, TX 73123-2875', 'Eagle Crossing', '1', '2016-08-12', '4 BR', '4 BA', 'Dicta culpa officiis. Veniam porro et. Aut culpa itaque.', '4057 sq. ft.', '$6280844', 'https://loremflickr.com/320/240/homes_for_sale?random=48', 'https://loremflickr.com/320/240/homes_for_sale?random=49', 'https://loremflickr.com/320/240/homes_for_sale?random=50', 'https://loremflickr.com/320/240/homes_for_sale?random=51', '812-906-2729 x165', 'Homely', '2021-03-18 08:15:35.438807', '2021-03-18 08:15:35.438807');
INSERT INTO `listings` VALUES (25, '9873 Maragret Lights, East Tulachester, KS 90958-9115', 'Summer Square', '2', '2016-09-12', '5 BR', '3 BA', 'Rerum totam nostrum. Et veniam voluptas. Eligendi illum quo.', '1191 sq. ft.', '$24611715', 'https://loremflickr.com/320/240/homes_for_sale?random=50', 'https://loremflickr.com/320/240/homes_for_sale?random=51', 'https://loremflickr.com/320/240/homes_for_sale?random=52', 'https://loremflickr.com/320/240/homes_for_sale?random=53', '351.935.3919 x758', 'Homely', '2021-03-18 08:15:36.156944', '2021-03-18 08:15:36.156944');
INSERT INTO `listings` VALUES (26, 'Suite 396 80985 Lockman Plain, Lebsacktown, NV 94152', 'Park Court', '2', '2013-07-16', '5 BR', '4 BA', 'Laborum dolores deleniti. Ad necessitatibus ex. Autem iste odit. Exercitationem voluptatibus maxime.', '3023 sq. ft.', '$8042776', 'https://loremflickr.com/320/240/homes_for_sale?random=52', 'https://loremflickr.com/320/240/homes_for_sale?random=53', 'https://loremflickr.com/320/240/homes_for_sale?random=54', 'https://loremflickr.com/320/240/homes_for_sale?random=55', '(568) 685-1448', 'Homely', '2021-03-18 08:15:36.809856', '2021-03-18 08:15:36.809856');
INSERT INTO `listings` VALUES (27, '509 King Mountain, South Salinaborough, AK 44309-3227', 'Summer Oaks', '1', '2010-08-16', '2 BR', '3 BA', 'Quae quod recusandae. Unde iusto accusamus. Aut et earum.', '5367 sq. ft.', '$27065424', 'https://loremflickr.com/320/240/homes_for_sale?random=54', 'https://loremflickr.com/320/240/homes_for_sale?random=55', 'https://loremflickr.com/320/240/homes_for_sale?random=56', 'https://loremflickr.com/320/240/homes_for_sale?random=57', '719.735.5826 x76278', 'Homely', '2021-03-18 08:15:37.440693', '2021-03-18 08:15:37.440693');
INSERT INTO `listings` VALUES (28, '570 Scottie Lock, Koelpinstad, MD 51123', 'Park Place', '1', '2002-03-04', '3 BR', '3 BA', 'Quaerat et libero. Atque magnam dolorem. Non tempore quas. Tempore est sed.', '5313 sq. ft.', '$14618497', 'https://loremflickr.com/320/240/homes_for_sale?random=56', 'https://loremflickr.com/320/240/homes_for_sale?random=57', 'https://loremflickr.com/320/240/homes_for_sale?random=58', 'https://loremflickr.com/320/240/homes_for_sale?random=59', '797-091-3502 x222', 'Homely', '2021-03-18 08:15:38.168158', '2021-03-18 08:15:38.168158');
INSERT INTO `listings` VALUES (29, '5743 Tomas Branch, New Reneland, FL 08616', 'Park Creek', '2', '2011-04-18', '5 BR', '3 BA', 'Voluptatem doloribus sed. Voluptatem omnis fugiat. Officia ut beatae. Omnis assumenda vero.', '2241 sq. ft.', '$20631126', 'https://loremflickr.com/320/240/homes_for_sale?random=58', 'https://loremflickr.com/320/240/homes_for_sale?random=59', 'https://loremflickr.com/320/240/homes_for_sale?random=60', 'https://loremflickr.com/320/240/homes_for_sale?random=61', '455-137-5634', 'Homely', '2021-03-18 08:15:38.901800', '2021-03-18 08:15:38.901800');
INSERT INTO `listings` VALUES (30, '51044 Bauch Tunnel, New Haywood, NY 77826-1660', 'Royal Heights', '2', '2002-09-12', '1 BR', '3 BA', 'Ullam atque dolorem. Praesentium vel molestias.', '3614 sq. ft.', '$27264749', 'https://loremflickr.com/320/240/homes_for_sale?random=60', 'https://loremflickr.com/320/240/homes_for_sale?random=61', 'https://loremflickr.com/320/240/homes_for_sale?random=62', 'https://loremflickr.com/320/240/homes_for_sale?random=63', '(483) 895-5563 x605', 'Homely', '2021-03-18 08:15:39.547931', '2021-03-18 08:15:39.547931');
COMMIT;

-- ----------------------------
-- Table structure for roles
-- ----------------------------
DROP TABLE IF EXISTS `roles`;
CREATE TABLE `roles` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `role_name` varchar(255) DEFAULT NULL,
  `created_at` datetime(6) NOT NULL,
  `updated_at` datetime(6) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of roles
-- ----------------------------
BEGIN;
INSERT INTO `roles` VALUES (1, 'Tenant', '2021-03-17 20:31:32.962505', '2021-03-18 05:49:46.355239');
INSERT INTO `roles` VALUES (2, 'Agent', '2021-03-17 20:31:33.003882', '2021-03-18 05:49:58.055533');
INSERT INTO `roles` VALUES (3, 'Vendors', '2021-03-17 20:31:33.007764', '2021-03-18 05:50:09.005143');
COMMIT;

-- ----------------------------
-- Table structure for schema_migrations
-- ----------------------------
DROP TABLE IF EXISTS `schema_migrations`;
CREATE TABLE `schema_migrations` (
  `version` varchar(255) NOT NULL,
  PRIMARY KEY (`version`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of schema_migrations
-- ----------------------------
BEGIN;
INSERT INTO `schema_migrations` VALUES ('20210317202438');
INSERT INTO `schema_migrations` VALUES ('20210318060104');
INSERT INTO `schema_migrations` VALUES ('20210318080729');
COMMIT;

-- ----------------------------
-- Table structure for users
-- ----------------------------
DROP TABLE IF EXISTS `users`;
CREATE TABLE `users` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `fname` varchar(255) DEFAULT NULL,
  `lname` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `username` varchar(255) DEFAULT NULL,
  `password_digest` varchar(255) DEFAULT NULL,
  `created_at` datetime(6) NOT NULL,
  `updated_at` datetime(6) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of users
-- ----------------------------
BEGIN;
INSERT INTO `users` VALUES (1, 'Neeson', 'Grant', 'new@email.com', 'ngrant', '$2a$12$n/CEaft4d0qmEUgxnNAPFurBBgw4PI9eVrv/rUewwlTFPn7NY/Yuq', '2018-04-14 02:09:44.528632', '2018-04-19 16:22:55.254084');
INSERT INTO `users` VALUES (2, 'Salma', 'Tine', 'salma@hotmail.com', 'stine', '$2a$12$n/CEaft4d0qmEUgxnNAPFurBBgw4PI9eVrv/rUewwlTFPn7NY/Yuq', '2018-04-14 02:17:30.310658', '2018-04-14 02:17:30.310658');
INSERT INTO `users` VALUES (3, 'Rend', 'Miller', 'hend@anything.com', 'rmiller', '$2a$12$n/CEaft4d0qmEUgxnNAPFurBBgw4PI9eVrv/rUewwlTFPn7NY/Yuq', '2018-04-16 23:44:09.971071', '2018-04-16 23:44:09.971071');
INSERT INTO `users` VALUES (4, 'Eddie', 'Opara', 'eopara@gmail.com', 'eopara', '$2a$12$n/CEaft4d0qmEUgxnNAPFurBBgw4PI9eVrv/rUewwlTFPn7NY/Yuq', '2021-02-22 18:42:08.345412', '2021-02-22 18:42:08.345412');
COMMIT;

SET FOREIGN_KEY_CHECKS = 1;
