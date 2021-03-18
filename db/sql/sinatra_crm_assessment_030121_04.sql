/*
 Navicat Premium Data Transfer

 Source Server         : mysql Localhost
 Source Server Type    : MySQL
 Source Server Version : 50732
 Source Host           : localhost:3306
 Source Schema         : sinatra_crm_assessment_030121_04

 Target Server Type    : MySQL
 Target Server Version : 50732
 File Encoding         : 65001

 Date: 18/03/2021 10:59:38
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
INSERT INTO `ar_internal_metadata` VALUES ('environment', 'default_env', '2021-03-18 08:37:17.636617', '2021-03-18 08:37:17.636617');
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
  `user_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=31 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of listings
-- ----------------------------
BEGIN;
INSERT INTO `listings` VALUES (1, '1847 Spring Way Ct., North Fort Myers, Florida 33913', NULL, '1', '2019-11-16', '2 BR', '2 BA', 'Totam eos excepturi. Dolor est nesciunt.', '1908 sq. ft.', '$26829142', 'https://loremflickr.com/320/240/homes_for_sale?random=2', 'https://loremflickr.com/320/240/homes_for_sale?random=3', 'https://loremflickr.com/320/240/homes_for_sale?random=4', 'https://loremflickr.com/320/240/homes_for_sale?random=5', '828-345-1282 x2377', 'Homely', '2021-03-18 09:51:19.632553', '2021-03-18 14:22:59.339467', 4);
INSERT INTO `listings` VALUES (2, 'Apt. 572 7374 Damaris Light, Pierreshire, OH 09089-6046', 'Summer Oaks', '1', '2016-11-29', '4 BR', '2 BA', 'Porro omnis aspernatur. Ut est sunt. Esse earum laboriosam. Voluptatem quisquam aliquid.', '1988 sq. ft.', '$21738794', 'https://loremflickr.com/320/240/homes_for_sale?random=4', 'https://loremflickr.com/320/240/homes_for_sale?random=5', 'https://loremflickr.com/320/240/homes_for_sale?random=6', 'https://loremflickr.com/320/240/homes_for_sale?random=7', '1-114-866-0966 x69403', 'Homely', '2021-03-18 09:51:20.623783', '2021-03-18 09:51:20.623783', 2);
INSERT INTO `listings` VALUES (3, '553 Gleason Via, Kutchshire, KS 28076', 'Park Pointe', '2', '2008-11-03', '4 BR', '5 BA', 'Et corporis nisi. Rem ea eaque. Esse assumenda numquam. Perferendis voluptatem in.', '3297 sq. ft.', '$4750987', 'https://loremflickr.com/320/240/homes_for_sale?random=6', 'https://loremflickr.com/320/240/homes_for_sale?random=7', 'https://loremflickr.com/320/240/homes_for_sale?random=8', 'https://loremflickr.com/320/240/homes_for_sale?random=9', '(677) 354-5944', 'Homely', '2021-03-18 09:51:21.768256', '2021-03-18 09:51:21.768256', 1);
INSERT INTO `listings` VALUES (4, '1578 Walker Cape, Antoniastad, CO 19681-8879', 'Eagle Crossing', '2', '2020-05-25', '5 BR', '2 BA', 'Assumenda at provident. Laboriosam ipsam qui. Reiciendis iusto voluptatem.', '1943 sq. ft.', '$9464795', 'https://loremflickr.com/320/240/homes_for_sale?random=8', 'https://loremflickr.com/320/240/homes_for_sale?random=9', 'https://loremflickr.com/320/240/homes_for_sale?random=10', 'https://loremflickr.com/320/240/homes_for_sale?random=11', '199-195-0462', 'Homely', '2021-03-18 09:51:22.749804', '2021-03-18 09:51:22.749804', 2);
INSERT INTO `listings` VALUES (5, 'Suite 848 4148 Janae Heights, South Kellyburgh, UT 26616-6437', 'University Court', '2', '2002-02-08', '2 BR', '1 BA', 'Exercitationem fugiat quo. Quibusdam aut voluptatem. Voluptatem necessitatibus doloremque. Sed vero ut. Enim neque aut.', '2798 sq. ft.', '$25830837', 'https://loremflickr.com/320/240/homes_for_sale?random=10', 'https://loremflickr.com/320/240/homes_for_sale?random=11', 'https://loremflickr.com/320/240/homes_for_sale?random=12', 'https://loremflickr.com/320/240/homes_for_sale?random=13', '1-485-833-5133 x4694', 'Homely', '2021-03-18 09:51:23.688111', '2021-03-18 09:51:23.688111', 2);
INSERT INTO `listings` VALUES (6, '42292 Spinka Drive, Marcelinefurt, MO 30540', 'University Square', '2', '2006-03-12', '3 BR', '1 BA', 'Exercitationem et nostrum. Eum aliquam voluptatibus. Consequatur quae commodi. Eveniet saepe voluptas. Sint laudantium et.', '4218 sq. ft.', '$22233511', 'https://loremflickr.com/320/240/homes_for_sale?random=12', 'https://loremflickr.com/320/240/homes_for_sale?random=13', 'https://loremflickr.com/320/240/homes_for_sale?random=14', 'https://loremflickr.com/320/240/homes_for_sale?random=15', '(243) 493-4676 x248', 'Homely', '2021-03-18 09:51:24.648985', '2021-03-18 09:51:24.648985', 3);
INSERT INTO `listings` VALUES (7, '3159 Collier Isle, Eliciabury, OH 21389-9697', 'Summer Village', '1', '2007-10-08', '5 BR', '3 BA', 'Quasi nesciunt sint. Sit qui voluptates.', '3312 sq. ft.', '$9953275', 'https://loremflickr.com/320/240/homes_for_sale?random=14', 'https://loremflickr.com/320/240/homes_for_sale?random=15', 'https://loremflickr.com/320/240/homes_for_sale?random=16', 'https://loremflickr.com/320/240/homes_for_sale?random=17', '(781) 883-7427 x185', 'Homely', '2021-03-18 09:51:25.840879', '2021-03-18 09:51:25.840879', 2);
INSERT INTO `listings` VALUES (8, 'Suite 614 308 Micah Throughway, South Walter, MD 86879', 'Park Court', '2', '2003-12-11', '5 BR', '2 BA', 'Ut sint veniam. Impedit nam quis. Corporis ducimus accusantium.', '2738 sq. ft.', '$28239378', 'https://loremflickr.com/320/240/homes_for_sale?random=16', 'https://loremflickr.com/320/240/homes_for_sale?random=17', 'https://loremflickr.com/320/240/homes_for_sale?random=18', 'https://loremflickr.com/320/240/homes_for_sale?random=19', '(863) 618-7823', 'Homely', '2021-03-18 09:51:26.850184', '2021-03-18 09:51:26.850184', 2);
INSERT INTO `listings` VALUES (9, NULL, NULL, '1', '2001-10-13', '2 BR', '2 BA', 'Quam saepe vitae. Quod libero ex. Aperiam architecto animi. Qui molestias dolores.', '2283 sq. ft.', '$307834', 'https://loremflickr.com/320/240/homes_for_sale?random=18', 'https://loremflickr.com/320/240/homes_for_sale?random=19', 'https://loremflickr.com/320/240/homes_for_sale?random=20', 'https://loremflickr.com/320/240/homes_for_sale?random=21', '683-464-6300 x281', 'Homely', '2021-03-18 09:51:27.807933', '2021-03-18 14:03:15.209575', 4);
INSERT INTO `listings` VALUES (10, 'Suite 858 6636 Daine Union, North Fletchermouth, DE 98636-5364', 'Pine Place', '1', '2014-02-20', '2 BR', '4 BA', 'Aut excepturi aliquid. Reprehenderit rem inventore. Consequatur ratione non. Magni asperiores consequatur. Dolorem ea quo.', '1993 sq. ft.', '$12677199', 'https://loremflickr.com/320/240/homes_for_sale?random=20', 'https://loremflickr.com/320/240/homes_for_sale?random=21', 'https://loremflickr.com/320/240/homes_for_sale?random=22', 'https://loremflickr.com/320/240/homes_for_sale?random=23', '251-403-5061 x110', 'Homely', '2021-03-18 09:51:28.875876', '2021-03-18 09:51:28.875876', 3);
INSERT INTO `listings` VALUES (11, '62395 Schinner Glens, Lake Carinmouth, SC 79027-4197', 'Paradise Village', '2', '2001-10-19', '4 BR', '5 BA', 'Voluptatem eius accusamus. Nostrum qui voluptatibus. Corrupti ipsum dolore. Non ratione velit. Rerum eaque excepturi.', '3180 sq. ft.', '$13626414', 'https://loremflickr.com/320/240/homes_for_sale?random=22', 'https://loremflickr.com/320/240/homes_for_sale?random=23', 'https://loremflickr.com/320/240/homes_for_sale?random=24', 'https://loremflickr.com/320/240/homes_for_sale?random=25', '805-220-5528 x739', 'Homely', '2021-03-18 09:51:29.966142', '2021-03-18 09:51:29.966142', 3);
INSERT INTO `listings` VALUES (12, '916 Braun Mission, Eldenport, MS 42721-4007', 'Royal Acres', '2', '2013-10-29', '4 BR', '2 BA', 'Odit eos et. Consequatur qui debitis. Laudantium magni qui. Sed qui praesentium. Laboriosam excepturi ullam.', '5518 sq. ft.', '$6384850', 'https://loremflickr.com/320/240/homes_for_sale?random=24', 'https://loremflickr.com/320/240/homes_for_sale?random=25', 'https://loremflickr.com/320/240/homes_for_sale?random=26', 'https://loremflickr.com/320/240/homes_for_sale?random=27', '(305) 637-6309 x82152', 'Homely', '2021-03-18 09:51:30.958085', '2021-03-18 09:51:30.958085', 4);
INSERT INTO `listings` VALUES (13, 'Apt. 296 5950 Damion Harbor, Faheybury, AL 03951', 'Royal Acres', '2', '2001-10-08', '1 BR', '2 BA', 'Aut molestias debitis. Aut sunt ipsam. Eius ex dolores.', '4415 sq. ft.', '$5006333', 'https://loremflickr.com/320/240/homes_for_sale?random=26', 'https://loremflickr.com/320/240/homes_for_sale?random=27', 'https://loremflickr.com/320/240/homes_for_sale?random=28', 'https://loremflickr.com/320/240/homes_for_sale?random=29', '(162) 952-0407 x2577', 'Homely', '2021-03-18 09:51:31.900406', '2021-03-18 09:51:31.900406', 1);
INSERT INTO `listings` VALUES (14, '68259 Kuvalis River, Dibbertfort, MO 28068', 'Willow Village', '1', '2005-05-07', '3 BR', '4 BA', 'Cumque maxime voluptates. Et aut sint. Neque dolorem unde. Aut vel excepturi. Et distinctio quibusdam.', '4544 sq. ft.', '$24746373', 'https://loremflickr.com/320/240/homes_for_sale?random=28', 'https://loremflickr.com/320/240/homes_for_sale?random=29', 'https://loremflickr.com/320/240/homes_for_sale?random=30', 'https://loremflickr.com/320/240/homes_for_sale?random=31', '(615) 952-0574 x4592', 'Homely', '2021-03-18 09:51:32.825811', '2021-03-18 09:51:32.825811', 3);
INSERT INTO `listings` VALUES (15, '79632 Shan Plain, Lake Felicidadshire, WI 68720-9517', 'Park Pointe', '1', '2019-06-08', '3 BR', '1 BA', 'Minima earum neque. Voluptatem mollitia animi. Voluptates qui beatae.', '4881 sq. ft.', '$11482995', 'https://loremflickr.com/320/240/homes_for_sale?random=30', 'https://loremflickr.com/320/240/homes_for_sale?random=31', 'https://loremflickr.com/320/240/homes_for_sale?random=32', 'https://loremflickr.com/320/240/homes_for_sale?random=33', '965.198.8794', 'Homely', '2021-03-18 09:51:33.900218', '2021-03-18 09:51:33.900218', 1);
INSERT INTO `listings` VALUES (16, '3542 Mitch Heights, New Anissabury, TN 97086', 'Royal Acres', '1', '2015-08-12', '3 BR', '1 BA', 'Facilis delectus ut. Adipisci est expedita. Velit quas aut. Ut voluptatem molestiae. Et officia et.', '2672 sq. ft.', '$13203644', 'https://loremflickr.com/320/240/homes_for_sale?random=32', 'https://loremflickr.com/320/240/homes_for_sale?random=33', 'https://loremflickr.com/320/240/homes_for_sale?random=34', 'https://loremflickr.com/320/240/homes_for_sale?random=35', '347.755.2245', 'Homely', '2021-03-18 09:51:34.902091', '2021-03-18 09:51:34.902091', 2);
INSERT INTO `listings` VALUES (17, '3719 Ward Plains, Lefflerview, OH 34160', 'Park Oaks', '1', '2003-03-05', '5 BR', '1 BA', 'Quaerat similique vitae. Quia quis et. Occaecati aut rerum. Aut esse repellendus. Reiciendis perspiciatis cum.', '2061 sq. ft.', '$7135379', 'https://loremflickr.com/320/240/homes_for_sale?random=34', 'https://loremflickr.com/320/240/homes_for_sale?random=35', 'https://loremflickr.com/320/240/homes_for_sale?random=36', 'https://loremflickr.com/320/240/homes_for_sale?random=37', '628-022-5668 x50208', 'Homely', '2021-03-18 09:51:35.835302', '2021-03-18 09:51:35.835302', 3);
INSERT INTO `listings` VALUES (18, '681 Lawerence Squares, Jonieburgh, MN 98219-1867', 'Royal Estates', '1', '2007-11-15', '3 BR', '1 BA', 'Sequi nemo et. Et eius distinctio. Odio rem nobis. Itaque non labore.', '4640 sq. ft.', '$6820111', 'https://loremflickr.com/320/240/homes_for_sale?random=36', 'https://loremflickr.com/320/240/homes_for_sale?random=37', 'https://loremflickr.com/320/240/homes_for_sale?random=38', 'https://loremflickr.com/320/240/homes_for_sale?random=39', '640.729.0112 x22039', 'Homely', '2021-03-18 09:51:36.763442', '2021-03-18 09:51:36.763442', 4);
INSERT INTO `listings` VALUES (19, 'Apt. 444 6796 Estella Mount, Dietrichton, WY 60225', 'Summer Village', '1', '2007-02-24', '4 BR', '5 BA', 'Odio ipsa et. Qui consectetur exercitationem. Quo ipsam numquam. Omnis non dolores. Est cumque laboriosam.', '1140 sq. ft.', '$6570602', 'https://loremflickr.com/320/240/homes_for_sale?random=38', 'https://loremflickr.com/320/240/homes_for_sale?random=39', 'https://loremflickr.com/320/240/homes_for_sale?random=40', 'https://loremflickr.com/320/240/homes_for_sale?random=41', '1-190-524-4172', 'Homely', '2021-03-18 09:51:37.792375', '2021-03-18 09:51:37.792375', 4);
INSERT INTO `listings` VALUES (20, 'Suite 329 20415 Okuneva Forest, Lake Scottstad, MA 43078-1211', 'Eagle Crossing', '2', '2011-05-18', '1 BR', '1 BA', 'Eos cumque nam. Ut quis quae. Nihil recusandae alias. Excepturi repellendus et. Laborum exercitationem voluptas.', '3609 sq. ft.', '$26963098', 'https://loremflickr.com/320/240/homes_for_sale?random=40', 'https://loremflickr.com/320/240/homes_for_sale?random=41', 'https://loremflickr.com/320/240/homes_for_sale?random=42', 'https://loremflickr.com/320/240/homes_for_sale?random=43', '1-737-539-8530 x0180', 'Homely', '2021-03-18 09:51:38.801144', '2021-03-18 09:51:38.801144', 2);
INSERT INTO `listings` VALUES (21, 'Apt. 745 3493 Breitenberg Isle, Lake Cristopher, ND 80674', 'Pine Village', '1', '2012-05-25', '2 BR', '2 BA', 'Quia fugit consequatur. Nostrum harum molestiae. Et magni ut. Fuga aliquid incidunt.', '901 sq. ft.', '$29057562', 'https://loremflickr.com/320/240/homes_for_sale?random=42', 'https://loremflickr.com/320/240/homes_for_sale?random=43', 'https://loremflickr.com/320/240/homes_for_sale?random=44', 'https://loremflickr.com/320/240/homes_for_sale?random=45', '1-331-820-0396 x92016', 'Homely', '2021-03-18 09:51:39.752690', '2021-03-18 09:51:39.752690', 1);
INSERT INTO `listings` VALUES (22, '8929 Cody Shore, Dooleyborough, MA 95205-7968', 'Royal Creek', '2', '2011-05-01', '2 BR', '4 BA', 'Eos doloremque voluptatem. Iusto quas eum.', '2321 sq. ft.', '$12235651', 'https://loremflickr.com/320/240/homes_for_sale?random=44', 'https://loremflickr.com/320/240/homes_for_sale?random=45', 'https://loremflickr.com/320/240/homes_for_sale?random=46', 'https://loremflickr.com/320/240/homes_for_sale?random=47', '362.117.7333 x970', 'Homely', '2021-03-18 09:51:40.662698', '2021-03-18 09:51:40.662698', 4);
INSERT INTO `listings` VALUES (23, '8985 Buckridge Spring, New Joiestad, OH 74768-1216', 'Paradise Court', '2', '2008-09-23', '2 BR', '4 BA', 'Saepe sint quidem. Unde sit natus. Voluptatibus molestiae libero.', '1629 sq. ft.', '$7245712', 'https://loremflickr.com/320/240/homes_for_sale?random=46', 'https://loremflickr.com/320/240/homes_for_sale?random=47', 'https://loremflickr.com/320/240/homes_for_sale?random=48', 'https://loremflickr.com/320/240/homes_for_sale?random=49', '884-789-8650', 'Homely', '2021-03-18 09:51:41.705188', '2021-03-18 09:51:41.705188', 2);
INSERT INTO `listings` VALUES (24, '356 Jamar Plain, Bartolettitown, MS 91063-0271', 'Royal Place', '2', '2001-09-29', '3 BR', '3 BA', 'Natus qui rerum. Autem aut quos. Eaque aut quibusdam. Consequatur consequuntur impedit. Dolorum omnis architecto.', '4033 sq. ft.', '$22354807', 'https://loremflickr.com/320/240/homes_for_sale?random=48', 'https://loremflickr.com/320/240/homes_for_sale?random=49', 'https://loremflickr.com/320/240/homes_for_sale?random=50', 'https://loremflickr.com/320/240/homes_for_sale?random=51', '1-739-091-8174 x428', 'Homely', '2021-03-18 09:51:42.750480', '2021-03-18 09:51:42.750480', 1);
INSERT INTO `listings` VALUES (25, '48614 Daniel Track, New Mel, UT 89988-5832', 'Autumn Court', '2', '2016-11-04', '3 BR', '4 BA', 'Qui quae eum. Ut rerum aut. Placeat corporis voluptas. Nisi vel temporibus. Quae culpa qui.', '3267 sq. ft.', '$28551101', 'https://loremflickr.com/320/240/homes_for_sale?random=50', 'https://loremflickr.com/320/240/homes_for_sale?random=51', 'https://loremflickr.com/320/240/homes_for_sale?random=52', 'https://loremflickr.com/320/240/homes_for_sale?random=53', '1-645-778-4488 x998', 'Homely', '2021-03-18 09:51:43.702385', '2021-03-18 09:51:43.702385', 1);
INSERT INTO `listings` VALUES (26, 'Suite 663 413 Sook Roads, North Gabrielmouth, KS 99262-2262', 'Autumn Creek', '1', '2020-10-16', '1 BR', '4 BA', 'Optio rerum ut. Amet quis odit. Est est dicta. Veritatis provident in.', '2349 sq. ft.', '$29191417', 'https://loremflickr.com/320/240/homes_for_sale?random=52', 'https://loremflickr.com/320/240/homes_for_sale?random=53', 'https://loremflickr.com/320/240/homes_for_sale?random=54', 'https://loremflickr.com/320/240/homes_for_sale?random=55', '196.618.0759', 'Homely', '2021-03-18 09:51:44.981881', '2021-03-18 09:51:44.981881', 1);
INSERT INTO `listings` VALUES (27, '955 Clair Harbors, Wolfffurt, AR 41815', 'Eagle Heights', '2', '2007-05-14', '1 BR', '1 BA', 'Magnam tenetur illo. Adipisci fugiat corporis.', '1599 sq. ft.', '$14889406', 'https://loremflickr.com/320/240/homes_for_sale?random=54', 'https://loremflickr.com/320/240/homes_for_sale?random=55', 'https://loremflickr.com/320/240/homes_for_sale?random=56', 'https://loremflickr.com/320/240/homes_for_sale?random=57', '(502) 965-9505 x2499', 'Homely', '2021-03-18 09:51:47.355771', '2021-03-18 09:51:47.355771', 1);
INSERT INTO `listings` VALUES (28, 'Suite 401 14628 Satterfield Corner, Charlsiefurt, CO 29670-4638', 'Eagle Village', '2', '2005-05-24', '1 BR', '3 BA', 'Voluptas officia occaecati. Dolor adipisci mollitia. Provident quia quasi. Dolores suscipit ut.', '1862 sq. ft.', '$21337223', 'https://loremflickr.com/320/240/homes_for_sale?random=56', 'https://loremflickr.com/320/240/homes_for_sale?random=57', 'https://loremflickr.com/320/240/homes_for_sale?random=58', 'https://loremflickr.com/320/240/homes_for_sale?random=59', '1-204-672-6450 x24195', 'Homely', '2021-03-18 09:51:48.413807', '2021-03-18 09:51:48.413807', 1);
INSERT INTO `listings` VALUES (29, 'Suite 484 22326 Elanor Valley, Beaushire, OH 79728', 'Autumn Acres', '1', '2011-01-20', '1 BR', '3 BA', 'Sed molestiae non. Laudantium aut maiores.', '1279 sq. ft.', '$21737841', 'https://loremflickr.com/320/240/homes_for_sale?random=58', 'https://loremflickr.com/320/240/homes_for_sale?random=59', 'https://loremflickr.com/320/240/homes_for_sale?random=60', 'https://loremflickr.com/320/240/homes_for_sale?random=61', '(441) 986-7805', 'Homely', '2021-03-18 09:51:49.501277', '2021-03-18 09:51:49.501277', 1);
INSERT INTO `listings` VALUES (30, '91574 Funk Mills, Rodgerborough, SC 68100-3803', 'Royal Pointe', '2', '2015-03-01', '5 BR', '4 BA', 'Sed unde dolorem. Impedit id temporibus. Ea dolore sapiente. Soluta rerum sed.', '2561 sq. ft.', '$5425240', 'https://loremflickr.com/320/240/homes_for_sale?random=60', 'https://loremflickr.com/320/240/homes_for_sale?random=61', 'https://loremflickr.com/320/240/homes_for_sale?random=62', 'https://loremflickr.com/320/240/homes_for_sale?random=63', '(455) 133-2376', 'Homely', '2021-03-18 09:51:50.513967', '2021-03-18 09:51:50.513967', 2);
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
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of roles
-- ----------------------------
BEGIN;
INSERT INTO `roles` VALUES (1, 'Tenant', '2021-03-18 09:06:50.099087', '2021-03-18 09:06:50.099087');
INSERT INTO `roles` VALUES (2, 'Agent', '2021-03-18 09:06:50.142764', '2021-03-18 09:06:50.142764');
INSERT INTO `roles` VALUES (3, 'Vendor', '2021-03-18 09:06:50.146935', '2021-03-18 09:06:50.146935');
INSERT INTO `roles` VALUES (4, 'Property Manager', '2021-03-18 09:06:50.150314', '2021-03-18 09:06:50.150314');
INSERT INTO `roles` VALUES (5, 'Tenant', '2021-03-18 09:51:16.922056', '2021-03-18 09:51:16.922056');
INSERT INTO `roles` VALUES (6, 'Agent', '2021-03-18 09:51:16.965960', '2021-03-18 09:51:16.965960');
INSERT INTO `roles` VALUES (7, 'Vendor', '2021-03-18 09:51:16.969242', '2021-03-18 09:51:16.969242');
INSERT INTO `roles` VALUES (8, 'Property Manager', '2021-03-18 09:51:16.972217', '2021-03-18 09:51:16.972217');
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
INSERT INTO `schema_migrations` VALUES ('20210318093716');
INSERT INTO `schema_migrations` VALUES ('20210318094837');
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
  `role_id` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `index_users_on_role_id` (`role_id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of users
-- ----------------------------
BEGIN;
INSERT INTO `users` VALUES (1, 'Neeson', 'Grant', 'new@email.com', 'ngrant', '$2a$12$n/CEaft4d0qmEUgxnNAPFurBBgw4PI9eVrv/rUewwlTFPn7NY/Yuq', '2018-04-14 02:09:44.528632', '2018-04-19 16:22:55.254084', NULL);
INSERT INTO `users` VALUES (2, 'Salma', 'Tine', 'salma@hotmail.com', 'stine', '$2a$12$n/CEaft4d0qmEUgxnNAPFurBBgw4PI9eVrv/rUewwlTFPn7NY/Yuq', '2018-04-14 02:17:30.310658', '2018-04-14 02:17:30.310658', NULL);
INSERT INTO `users` VALUES (3, 'Rend', 'Miller', 'hend@anything.com', 'rmiller', '$2a$12$n/CEaft4d0qmEUgxnNAPFurBBgw4PI9eVrv/rUewwlTFPn7NY/Yuq', '2018-04-16 23:44:09.971071', '2018-04-16 23:44:09.971071', NULL);
INSERT INTO `users` VALUES (4, 'Eddie', 'Opara', 'eopara@gmail.com', 'eopara', '$2a$12$n/CEaft4d0qmEUgxnNAPFurBBgw4PI9eVrv/rUewwlTFPn7NY/Yuq', '2021-02-22 18:42:08.345412', '2021-02-22 18:42:08.345412', NULL);
COMMIT;

SET FOREIGN_KEY_CHECKS = 1;
