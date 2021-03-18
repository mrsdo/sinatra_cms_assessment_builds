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

 Date: 18/03/2021 03:51:49
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for ar_internal_metadata
-- ----------------------------
DROP TABLE IF EXISTS `ar_internal_metadata`;
CREATE TABLE `ar_internal_metadata`
(
    `key`        varchar(255) NOT NULL,
    `value`      varchar(255) DEFAULT NULL,
    `created_at` datetime(6)  NOT NULL,
    `updated_at` datetime(6)  NOT NULL,
    PRIMARY KEY (`key`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ar_internal_metadata
-- ----------------------------
BEGIN;
INSERT INTO `ar_internal_metadata`
VALUES ('environment', 'default_env', '2021-03-17 20:28:03.065016', '2021-03-17 20:28:03.065016');
COMMIT;

-- ----------------------------
-- Table structure for roles
-- ----------------------------
DROP TABLE IF EXISTS `roles`;
CREATE TABLE `roles`
(
    `id`         bigint(20)  NOT NULL AUTO_INCREMENT,
    `role_name`  varchar(255) DEFAULT NULL,
    `created_at` datetime(6) NOT NULL,
    `updated_at` datetime(6) NOT NULL,
    PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of roles
-- ----------------------------
BEGIN;
INSERT INTO `roles`
VALUES (1, 'Tenant', '2021-03-17 20:31:32.962505', '2021-03-18 05:49:46.355239');
INSERT INTO `roles`
VALUES (2, 'Agent', '2021-03-17 20:31:33.003882', '2021-03-18 05:49:58.055533');
INSERT INTO `roles`
VALUES (3, 'Vendors', '2021-03-17 20:31:33.007764', '2021-03-18 05:50:09.005143');
COMMIT;

-- ----------------------------
-- Table structure for schema_migrations
-- ----------------------------
DROP TABLE IF EXISTS `schema_migrations`;
CREATE TABLE `schema_migrations`
(
    `version` varchar(255) NOT NULL,
    PRIMARY KEY (`version`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of schema_migrations
-- ----------------------------
BEGIN;
INSERT INTO `schema_migrations`
VALUES ('20210317202438');
INSERT INTO `schema_migrations`
VALUES ('20210318060104');
COMMIT;

-- ----------------------------
-- Table structure for users
-- ----------------------------
DROP TABLE IF EXISTS `users`;
CREATE TABLE `users`
(
    `id`              bigint(20)  NOT NULL AUTO_INCREMENT,
    `fname`           varchar(255) DEFAULT NULL,
    `lname`           varchar(255) DEFAULT NULL,
    `email`           varchar(255) DEFAULT NULL,
    `username`        varchar(255) DEFAULT NULL,
    `password_digest` varchar(255) DEFAULT NULL,
    `created_at`      datetime(6) NOT NULL,
    `updated_at`      datetime(6) NOT NULL,
    PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of users
-- ----------------------------
BEGIN;
INSERT INTO `users`
VALUES (1, 'Neeson', 'Grant', 'new@email.com', 'ngrant', '$2a$12$n/CEaft4d0qmEUgxnNAPFurBBgw4PI9eVrv/rUewwlTFPn7NY/Yuq',
        '2018-04-14 02:09:44.528632', '2018-04-19 16:22:55.254084');
INSERT INTO `users`
VALUES (2, 'Salma', 'Tine', 'salma@hotmail.com', 'stine',
        '$2a$12$n/CEaft4d0qmEUgxnNAPFurBBgw4PI9eVrv/rUewwlTFPn7NY/Yuq', '2018-04-14 02:17:30.310658',
        '2018-04-14 02:17:30.310658');
INSERT INTO `users`
VALUES (3, 'Rend', 'Miller', 'hend@anything.com', 'rmiller',
        '$2a$12$n/CEaft4d0qmEUgxnNAPFurBBgw4PI9eVrv/rUewwlTFPn7NY/Yuq', '2018-04-16 23:44:09.971071',
        '2018-04-16 23:44:09.971071');
INSERT INTO `users`
VALUES (4, 'Eddie', 'Opara', 'eopara@gmail.com', 'eopara',
        '$2a$12$n/CEaft4d0qmEUgxnNAPFurBBgw4PI9eVrv/rUewwlTFPn7NY/Yuq', '2021-02-22 18:42:08.345412',
        '2021-02-22 18:42:08.345412');
COMMIT;

SET FOREIGN_KEY_CHECKS = 1;
