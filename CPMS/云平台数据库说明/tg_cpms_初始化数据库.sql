/*
 Navicat Premium Data Transfer

 Source Server         : 云平台-外网调试
 Source Server Type    : MySQL
 Source Server Version : 50720
 Source Host           : 118.102.25.201:3306
 Source Schema         : tg_cpms

 Target Server Type    : MySQL
 Target Server Version : 50720
 File Encoding         : 65001

 Date: 15/12/2020 18:23:26
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for api_privilege
-- ----------------------------
DROP TABLE IF EXISTS `api_privilege`;
CREATE TABLE `api_privilege` (
  `id` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `api_link` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '接口链接',
  `api_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '接口名称',
  `create_time` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '创建时间',
  `create_user_id` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '创建用户id',
  `create_user_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '创建用户名称',
  `token_id` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT 'token的id',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Table structure for api_token
-- ----------------------------
DROP TABLE IF EXISTS `api_token`;
CREATE TABLE `api_token` (
  `id` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `create_time` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '创建时间',
  `create_user_id` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '创建用户id',
  `create_user_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '创建用户名称',
  `system_id` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '系统id',
  `system_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '系统名称',
  `token` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT 'token',
  `token_del` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `token_end_time` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT 'token结束时间',
  `token_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT 'token名称',
  `token_start_time` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT 'token开始时间',
  `token_valid` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT 'token是否失效',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Table structure for api_token_log
-- ----------------------------
DROP TABLE IF EXISTS `api_token_log`;
CREATE TABLE `api_token_log` (
  `id` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `create_time` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '创建时间',
  `log_desc` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '日志描述',
  `toke_id` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT 'token的id',
  `toke_url` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT 'token的url',
  `token_sucess` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Table structure for file_upload_info
-- ----------------------------
DROP TABLE IF EXISTS `file_upload_info`;
CREATE TABLE `file_upload_info` (
  `id` varchar(100) NOT NULL COMMENT '上传文件编号',
  `file_upload_type` varchar(100) DEFAULT NULL COMMENT '上传文件分类',
  `file_relation_id` varchar(50) DEFAULT NULL COMMENT '文件关联编号',
  `file_original_name` text COMMENT '上传文件原名称',
  `file_new_name` text COMMENT '上传文件新名称',
  `file_storage_type` varchar(20) DEFAULT NULL COMMENT '文件存储方式',
  `file_storage_id` varchar(40) DEFAULT NULL COMMENT '文件存储编号',
  `file_path` text COMMENT '文件存储路径',
  `file_thumbnail_name` text COMMENT '图片文件缩略图名称',
  `file_thumbnail_storage_type` varchar(20) DEFAULT NULL COMMENT '图片文件缩略图存储方式',
  `file_thumbnail_storage_id` varchar(40) DEFAULT NULL COMMENT '图片文件缩略图存储编号',
  `file_thumbnail_path` text COMMENT '图片文件缩略图路径',
  `file_size` decimal(15,4) DEFAULT NULL COMMENT '上传文件尺寸',
  `file_type` varchar(100) DEFAULT NULL COMMENT '上传文件类型',
  `file_flag` varchar(20) DEFAULT NULL COMMENT '上传文件标志',
  `file_status` varchar(20) DEFAULT NULL COMMENT '上传文件状态',
  `file_description` text COMMENT '上传文件描述',
  `upload_remote_addr` varchar(50) DEFAULT NULL COMMENT '上传文件终端地址',
  `upload_remote_port` varchar(20) DEFAULT NULL COMMENT '上传文件终端端口',
  `upload_remote_user` varchar(40) DEFAULT NULL COMMENT '上传文件终端用户',
  `upload_remote_host` varchar(50) DEFAULT NULL COMMENT '上传文件终端ip',
  `upload_datetime` datetime DEFAULT NULL COMMENT '上传文件时间',
  `upload_user_id` varchar(100) DEFAULT NULL COMMENT '上传用户编号',
  `delete_ip` varchar(50) DEFAULT NULL COMMENT '删除文件ip',
  `delete_datetime` datetime DEFAULT NULL COMMENT '删除文件时间',
  `delete_user_id` varchar(100) DEFAULT NULL COMMENT '删除文件用户编号',
  `deal_flag` varchar(20) DEFAULT NULL COMMENT '处理标志',
  `create_department_id` varchar(50) DEFAULT NULL COMMENT '创建用户所属部门编号',
  `create_user_id` varchar(50) DEFAULT NULL COMMENT '创建用户编号',
  `create_datetime` datetime DEFAULT NULL COMMENT '创建时间',
  `update_department_id` varchar(50) DEFAULT NULL COMMENT '更新用户部门所属编号',
  `update_user_id` varchar(50) DEFAULT NULL COMMENT '更新用户编号',
  `update_datetime` datetime DEFAULT NULL COMMENT '更新时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='上傳文件信息表';

-- ----------------------------
-- Records of file_upload_info
-- ----------------------------
BEGIN;
INSERT INTO `file_upload_info` VALUES ('file_0000000001', 'SW_ICON', '0000000001', 'CentOs.png', '2e78236843734b92a2afe65069fa7892.png', NULL, NULL, '/opt/softwarewarehouse/icon/2e78236843734b92a2afe65069fa7892.png', NULL, NULL, NULL, NULL, 0.0000, '.png', '1', NULL, NULL, NULL, NULL, NULL, NULL, '2020-11-16 18:55:37', NULL, NULL, NULL, NULL, '0', 'system——init', NULL, NULL, NULL, 'admin', NULL);
INSERT INTO `file_upload_info` VALUES ('file_0000000002', 'SW_ICON', '0000000002', 'Ubuntu.png', NULL, NULL, NULL, '/opt/softwarewarehouse/icon/Ubuntu.png', NULL, NULL, NULL, NULL, 123.0000, 'png', '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0', 'system——init', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `file_upload_info` VALUES ('file_0000000003', 'SW_ICON', '0000000003', 'QT.png', NULL, NULL, NULL, '/opt/softwarewarehouse/icon/QT.png', NULL, NULL, NULL, NULL, 123.0000, 'png', '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0', 'system——init', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `file_upload_info` VALUES ('file_0000000004', 'SW_ICON', '0000000004', 'GWT.png', NULL, NULL, NULL, '/opt/softwarewarehouse/icon/GWT.png', NULL, NULL, NULL, NULL, 123.0000, 'png', '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0', 'system——init', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `file_upload_info` VALUES ('file_0000000005', 'SW_ICON', '0000000005', 'JDK.jpg', NULL, NULL, NULL, '/opt/softwarewarehouse/icon/JDK.jpg', NULL, NULL, NULL, NULL, NULL, NULL, '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0', 'system——init', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `file_upload_info` VALUES ('file_0000000006', 'SW_ICON', '0000000006', 'Redhat_Linux.png', NULL, NULL, NULL, '/opt/softwarewarehouse/icon/Redhat_Linux.png', NULL, NULL, NULL, NULL, NULL, NULL, '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0', 'system——init', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `file_upload_info` VALUES ('file_0000000007', 'SW_ICON', '0000000007', 'stdb.png', NULL, NULL, NULL, '/opt/softwarewarehouse/icon/stdb.png', NULL, NULL, NULL, NULL, NULL, NULL, '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0', 'system——init', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `file_upload_info` VALUES ('file_0000000008', 'SW_ICON', '0000000008', 'MariaDB.png', NULL, NULL, NULL, '/opt/softwarewarehouse/icon/MariaDB.png', NULL, NULL, NULL, NULL, NULL, NULL, '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0', 'system——init', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `file_upload_info` VALUES ('file_0000000009', 'SW_ICON', '0000000009', 'Redis.png', NULL, NULL, NULL, '/opt/softwarewarehouse/icon/Redis.png', NULL, NULL, NULL, NULL, NULL, NULL, '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0', 'system——init', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `file_upload_info` VALUES ('file_0000000010', 'SW_ICON', '0000000010', 'SQL_Server.png', NULL, NULL, NULL, '/opt/softwarewarehouse/icon/SQL_Server.png', NULL, NULL, NULL, NULL, NULL, NULL, '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0', 'system——init', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `file_upload_info` VALUES ('file_0000000011', 'SW_ICON', '0000000011', 'mongodb.png', NULL, NULL, NULL, '/opt/softwarewarehouse/icon/mongodb.png', NULL, NULL, NULL, NULL, NULL, NULL, '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0', 'system——init', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `file_upload_info` VALUES ('file_0000000012', 'SW_ICON', '0000000012', 'dmdb.png', NULL, NULL, NULL, '/opt/softwarewarehouse/icon/dmdb.png', NULL, NULL, NULL, NULL, NULL, NULL, '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0', 'system——init', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `file_upload_info` VALUES ('file_0000000015', 'SW_ICON', '0000000015', 'PostgreSQL.png', NULL, NULL, NULL, '/opt/softwarewarehouse/icon/PostgreSQL.png', NULL, NULL, NULL, NULL, NULL, NULL, '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0', 'system——init', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `file_upload_info` VALUES ('file_0000000016', 'SW_ICON', '0000000016', 'Oracle.png', NULL, NULL, NULL, '/opt/softwarewarehouse/icon/Oracle.png', NULL, NULL, NULL, NULL, NULL, NULL, '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0', 'system——init', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `file_upload_info` VALUES ('file_0000000017', 'SW_ICON', '0000000017', 'cassandra.png', NULL, NULL, NULL, '/opt/softwarewarehouse/icon/cassandra.png', NULL, NULL, NULL, NULL, NULL, NULL, '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0', 'system——init', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `file_upload_info` VALUES ('file_0000000018', 'SW_ICON', '0000000018', 'PostgreSQL.png', NULL, NULL, NULL, '/opt/softwarewarehouse/icon/PostgreSQL.png', NULL, NULL, NULL, NULL, NULL, NULL, '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0', 'system——init', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `file_upload_info` VALUES ('file_0000000019', 'SW_ICON', '0000000019', 'gcc.png', NULL, NULL, NULL, '/opt/softwarewarehouse/icon/gcc.png', NULL, NULL, NULL, NULL, NULL, NULL, '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0', 'system——init', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `file_upload_info` VALUES ('file_0000000020', 'SW_ICON', '0000000020', 'kafka.png', NULL, NULL, NULL, '/opt/softwarewarehouse/icon/kafka.png', NULL, NULL, NULL, NULL, NULL, NULL, '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0', 'system——init', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `file_upload_info` VALUES ('file_0000000022', 'SW_ICON', '0000000022', 'Visual_Studio.png', NULL, NULL, NULL, '/opt/softwarewarehouse/icon/Visual_Studio.png', NULL, NULL, NULL, NULL, NULL, NULL, '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0', 'system——init', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `file_upload_info` VALUES ('file_0000000023', 'SW_ICON', '0000000023', 'cmake.png', NULL, NULL, NULL, '/opt/softwarewarehouse/icon/cmake.png', NULL, NULL, NULL, NULL, NULL, NULL, '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0', 'system——init', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `file_upload_info` VALUES ('file_0000000024', 'SW_ICON', '0000000024', 'Unity.png', NULL, NULL, NULL, '/opt/softwarewarehouse/icon/Unity.png', NULL, NULL, NULL, NULL, NULL, NULL, '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0', 'system——init', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `file_upload_info` VALUES ('file_0000000025', 'SW_ICON', '0000000025', 'Unity.png', NULL, NULL, NULL, '/opt/softwarewarehouse/icon/Unity.png', NULL, NULL, NULL, NULL, NULL, NULL, '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0', 'system——init', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `file_upload_info` VALUES ('file_0000000026', 'SW_ICON', '0000000026', 'eclipse.png', NULL, NULL, NULL, '/opt/softwarewarehouse/icon/eclipse.png', NULL, NULL, NULL, NULL, NULL, NULL, '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0', 'system——init', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `file_upload_info` VALUES ('file_0000000027', 'SW_ICON', '0000000027', 'IDEA.jpg', NULL, NULL, NULL, '/opt/softwarewarehouse/icon/IDEA.jpg', NULL, NULL, NULL, NULL, NULL, NULL, '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0', 'system——init', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `file_upload_info` VALUES ('file_0000000028', 'SW_ICON', '0000000028', 'java.png', NULL, NULL, NULL, '/opt/softwarewarehouse/icon/java.png', NULL, NULL, NULL, NULL, NULL, NULL, '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0', 'system——init', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `file_upload_info` VALUES ('file_0000000029', 'SW_ICON', '0000000029', 'Pycharm.png', NULL, NULL, NULL, '/opt/softwarewarehouse/icon/Pycharm.png', NULL, NULL, NULL, NULL, NULL, NULL, '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0', 'system——init', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `file_upload_info` VALUES ('file_0000000030', 'SW_ICON', '0000000030', 'anaconda.png', NULL, NULL, NULL, '/opt/softwarewarehouse/icon/anaconda.png', NULL, NULL, NULL, NULL, NULL, NULL, '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0', 'system——init', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `file_upload_info` VALUES ('file_0000000031', 'SW_ICON', '0000000031', 'STK.png', NULL, NULL, NULL, '/opt/softwarewarehouse/icon/STK.png', NULL, NULL, NULL, NULL, NULL, NULL, '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0', 'system——init', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `file_upload_info` VALUES ('file_0000000032', 'SW_ICON', '0000000032', 'matlab.png', NULL, NULL, NULL, '/opt/softwarewarehouse/icon/matlab.png', NULL, NULL, NULL, NULL, NULL, NULL, '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0', 'system——init', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `file_upload_info` VALUES ('file_0000000033', 'SW_ICON', '0000000033', 'Visual_Studio_Code.png', NULL, NULL, NULL, '/opt/softwarewarehouse/icon/Visual_Studio_Code.png', NULL, NULL, NULL, NULL, NULL, NULL, '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0', 'system——init', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `file_upload_info` VALUES ('file_0000000034', 'SW_ICON', '0000000034', 'google.png', NULL, NULL, NULL, '/opt/softwarewarehouse/icon/google.png', NULL, NULL, NULL, NULL, NULL, NULL, '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0', 'system——init', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `file_upload_info` VALUES ('file_0000000035', 'SW_ICON', '0000000035', 'Maven.png', NULL, NULL, NULL, '/opt/softwarewarehouse/icon/Maven.png', NULL, NULL, NULL, NULL, NULL, NULL, '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0', 'system——init', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `file_upload_info` VALUES ('file_0000000036', 'SW_ICON', '0000000036', 'cero.png', NULL, NULL, NULL, '/opt/softwarewarehouse/icon/cero.png', NULL, NULL, NULL, NULL, NULL, NULL, '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0', 'system——init', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `file_upload_info` VALUES ('file_0000000037', 'SW_ICON', '0000000037', 'adams.png', NULL, NULL, NULL, '/opt/softwarewarehouse/icon/adams.png', NULL, NULL, NULL, NULL, NULL, NULL, '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0', 'system——init', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `file_upload_info` VALUES ('file_0000000038', 'SW_ICON', '0000000038', 'JACK.png', NULL, NULL, NULL, '/opt/softwarewarehouse/icon/JACK.png', NULL, NULL, NULL, NULL, NULL, NULL, '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0', 'system——init', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `file_upload_info` VALUES ('file_0000000039', 'SW_ICON', '0000000039', 'Mworks.png', NULL, NULL, NULL, '/opt/softwarewarehouse/icon/Mworks.png', NULL, NULL, NULL, NULL, NULL, NULL, '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0', 'system——init', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `file_upload_info` VALUES ('file_0000000040', 'SW_ICON', '0000000040', '.net.png', NULL, NULL, NULL, '/opt/softwarewarehouse/icon/.net.png', NULL, NULL, NULL, NULL, NULL, NULL, '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0', 'system——init', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `file_upload_info` VALUES ('file_0000000041', 'SW_ICON', '0000000041', 'WireShark.png', NULL, NULL, NULL, '/opt/softwarewarehouse/icon/WireShark.png', NULL, NULL, NULL, NULL, NULL, NULL, '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `file_upload_info` VALUES ('file_0000000042', 'SW_ICON', '0000000042', 'googletest.png', NULL, NULL, NULL, '/opt/softwarewarehouse/icon/googletest.png', NULL, NULL, NULL, NULL, NULL, NULL, '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `file_upload_info` VALUES ('file_0000000043', 'SW_ICON', '0000000043', 'Tomcat.png', NULL, NULL, NULL, '/opt/softwarewarehouse/icon/Tomcat.png', NULL, NULL, NULL, NULL, NULL, NULL, '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `file_upload_info` VALUES ('file_0000000044', 'SW_ICON', '0000000044', 'Flink.png', NULL, NULL, NULL, '/opt/softwarewarehouse/icon/Flink.png', NULL, NULL, NULL, NULL, NULL, NULL, '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `file_upload_info` VALUES ('file_0000000045', 'SW_ICON', '0000000045', 'Zookeeper.png', NULL, NULL, NULL, '/opt/softwarewarehouse/icon/Zookeeper.png', NULL, NULL, NULL, NULL, NULL, NULL, '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `file_upload_info` VALUES ('file_0000000046', 'SW_ICON', '0000000046', 'Storm.png', NULL, NULL, NULL, '/opt/softwarewarehouse/icon/Storm.png', NULL, NULL, NULL, NULL, NULL, NULL, '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `file_upload_info` VALUES ('file_0000000047', 'SW_ICON', '0000000047', 'Docker.png', NULL, NULL, NULL, '/opt/softwarewarehouse/icon/Docker.png', NULL, NULL, NULL, NULL, NULL, NULL, '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `file_upload_info` VALUES ('file_0000000048', 'SW_ICON', '0000000048', 'Dbeaver.png', NULL, NULL, NULL, '/opt/softwarewarehouse/icon/Dbeaver.png', NULL, NULL, NULL, NULL, NULL, NULL, '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `file_upload_info` VALUES ('file_0000000049', 'SW_ICON', '0000000049', 'zabbix.png', NULL, NULL, NULL, '/opt/softwarewarehouse/icon/zabbix.png', NULL, NULL, NULL, NULL, NULL, NULL, '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `file_upload_info` VALUES ('file_0000000050', 'SW_ICON', '0000000050', 'firefox.png', NULL, NULL, NULL, '/opt/softwarewarehouse/icon/firefox.png', NULL, NULL, NULL, NULL, NULL, NULL, '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `file_upload_info` VALUES ('file_0000000051', 'SW_ICON', '0000000051', 'Nodejs.png', NULL, NULL, NULL, '/opt/softwarewarehouse/icon/Nodejs.png', NULL, NULL, NULL, NULL, NULL, NULL, '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `file_upload_info` VALUES ('file_0000000052', 'SW_ICON', '0000000052', 'vue-js-color.png', NULL, NULL, NULL, '/opt/softwarewarehouse/icon/vue-js-color.png', NULL, NULL, NULL, NULL, NULL, NULL, '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `file_upload_info` VALUES ('file_0000000053', 'SW_ICON', '0000000053', 'nginx.png', NULL, NULL, NULL, '/opt/softwarewarehouse/icon/nginx.png', NULL, NULL, NULL, NULL, NULL, NULL, '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `file_upload_info` VALUES ('file_0000000054', 'SW_ICON', '0000000054', 'filebeat.png', NULL, NULL, NULL, '/opt/softwarewarehouse/icon/filebeat.png', NULL, NULL, NULL, NULL, NULL, NULL, '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `file_upload_info` VALUES ('file_0000000055', 'SW_ICON', '0000000055', 'EMQ.png', NULL, NULL, NULL, '/opt/softwarewarehouse/icon/EMQ.png', NULL, NULL, NULL, NULL, NULL, NULL, '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `file_upload_info` VALUES ('file_0000000056', 'SW_ICON', '0000000056', 'GStreamer.png', NULL, NULL, NULL, '/opt/softwarewarehouse/icon/GStreamer.png', NULL, NULL, NULL, NULL, NULL, NULL, '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `file_upload_info` VALUES ('file_0000000057', 'SW_ICON', '0000000057', 'gofastdfs.png', NULL, NULL, NULL, '/opt/softwarewarehouse/icon/gofastdfs.png', NULL, NULL, NULL, NULL, NULL, NULL, '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `file_upload_info` VALUES ('file_0000000058', 'SW_ICON', '0000000058', 'ELK.png', NULL, NULL, NULL, '/opt/softwarewarehouse/icon/ELK.png', NULL, NULL, NULL, NULL, NULL, NULL, '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `file_upload_info` VALUES ('file_0000000059', 'SW_ICON', '0000000059', 'C.png', NULL, NULL, NULL, '/opt/softwarewarehouse/icon/C.png', NULL, NULL, NULL, NULL, NULL, NULL, '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `file_upload_info` VALUES ('file_0000000060', 'SW_ICON', '0000000060', 'golang.png', NULL, NULL, NULL, '/opt/softwarewarehouse/icon/golang.png', NULL, NULL, NULL, NULL, NULL, NULL, '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `file_upload_info` VALUES ('file_0000000061', 'SW_ICON', '0000000061', 'Python.png', NULL, NULL, NULL, '/opt/softwarewarehouse/icon/Python.png', NULL, NULL, NULL, NULL, NULL, NULL, '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `file_upload_info` VALUES ('file_0000000062', 'SW_ICON', '0000000062', 'R.png', NULL, NULL, NULL, '/opt/softwarewarehouse/icon/R.png', NULL, NULL, NULL, NULL, NULL, NULL, '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `file_upload_info` VALUES ('file_0000000063', 'SW_ICON', '0000000063', 'lua.png', NULL, NULL, NULL, '/opt/softwarewarehouse/icon/lua.png', NULL, NULL, NULL, NULL, NULL, NULL, '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `file_upload_info` VALUES ('file_0000000065', 'SW_ICON', '0000000065', 'MÄK_RTI.png', NULL, NULL, NULL, '/opt/softwarewarehouse/icon/MÄK_RTI.png', NULL, NULL, NULL, NULL, NULL, NULL, '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `file_upload_info` VALUES ('file_0000000066', 'SW_ICON', '0000000066', 'yhql.png', NULL, NULL, NULL, '/opt/softwarewarehouse/icon/yhql.png', NULL, NULL, NULL, NULL, NULL, NULL, '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `file_upload_info` VALUES ('file_0000000067', 'SW_ICON', '0000000067', 'windows7.png', NULL, NULL, NULL, '/opt/softwarewarehouse/icon/windows7.png', NULL, NULL, NULL, NULL, NULL, NULL, '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `file_upload_info` VALUES ('file_0000000068', 'SW_ICON', '0000000068', 'windows10.png', NULL, NULL, NULL, '/opt/softwarewarehouse/icon/windows10.png', NULL, NULL, NULL, NULL, NULL, NULL, '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `file_upload_info` VALUES ('file_0000000069', 'SW_ICON', '0000000069', 'windows10.png', NULL, NULL, NULL, '/opt/softwarewarehouse/icon/windows10.png', NULL, NULL, NULL, NULL, NULL, NULL, '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `file_upload_info` VALUES ('file_0000000070', 'SW_ICON', '0000000070', 'Ubuntu.png', NULL, NULL, NULL, '/opt/softwarewarehouse/icon/Ubuntu.png', NULL, NULL, NULL, NULL, NULL, NULL, '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `file_upload_info` VALUES ('file_0000000071', 'SW_ICON', '0000000071', 'c#.png', NULL, NULL, NULL, '/opt/softwarewarehouse/icon/c#.png', NULL, NULL, NULL, NULL, NULL, NULL, '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `file_upload_info` VALUES ('file_0000000072', 'SW_ICON', '0000000072', 'EPEL.png', NULL, NULL, NULL, '/opt/softwarewarehouse/icon/EPEL.png', NULL, NULL, NULL, NULL, NULL, NULL, '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `file_upload_info` VALUES ('file_10000000001', 'SW_IMAGE', '', '接口讨论.mp4', NULL, NULL, NULL, 'D:\\接口讨论.mp4', NULL, NULL, NULL, NULL, 123.0000, 'iso', '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `file_upload_info` VALUES ('file_10000000002', 'SW_IMAGE', '', NULL, NULL, NULL, NULL, '/opt/softwarewarehouse/image/putty.exe', NULL, NULL, NULL, NULL, 123.0000, 'iso', '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `file_upload_info` VALUES ('file_1000000001', 'SW_IMAGE', '0000001', 'CentOS', NULL, NULL, NULL, '172.13.30.100/centos/8.2.2004/', NULL, NULL, NULL, NULL, 123.0000, 'iso', '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `file_upload_info` VALUES ('file_1000000002', 'SW_IMAGE', '0000002', 'CentOS', NULL, NULL, NULL, '172.13.30.100/centos/8.1.1911/', NULL, NULL, NULL, NULL, NULL, NULL, '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `file_upload_info` VALUES ('file_1000000003', 'SW_IMAGE', '0000003', 'CentOS', NULL, NULL, NULL, '172.13.30.100/centos/8.0.1905/', NULL, NULL, NULL, NULL, NULL, NULL, '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `file_upload_info` VALUES ('file_1000000004', 'SW_IMAGE', '0000004', 'CentOS', NULL, NULL, NULL, '172.13.30.100/centos/8/', NULL, NULL, NULL, NULL, NULL, NULL, '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `file_upload_info` VALUES ('file_1000000005', 'SW_IMAGE', '0000005', 'CentOS', NULL, NULL, NULL, '172.13.30.100/centos/7.8.2003/', NULL, NULL, NULL, NULL, NULL, NULL, '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `file_upload_info` VALUES ('file_1000000006', 'SW_IMAGE', '0000006', 'CentOS', NULL, NULL, NULL, '172.13.30.100/centos/7.7.1908/', NULL, NULL, NULL, NULL, NULL, NULL, '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `file_upload_info` VALUES ('file_1000000007', 'SW_IMAGE', '0000007', 'CentOS', NULL, NULL, NULL, '172.13.30.100/centos/7.6.1810/', NULL, NULL, NULL, NULL, NULL, NULL, '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `file_upload_info` VALUES ('file_1000000008', 'SW_IMAGE', '0000008', 'CentOS', NULL, NULL, NULL, '172.13.30.100/centos/7.5.1804/', NULL, NULL, NULL, NULL, NULL, NULL, '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `file_upload_info` VALUES ('file_1000000009', 'SW_IMAGE', '0000009', 'Ubuntu', NULL, NULL, NULL, '172.13.30.100/ubuntu-releases/20.10/', NULL, NULL, NULL, NULL, NULL, NULL, '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `file_upload_info` VALUES ('file_1000000010', 'SW_IMAGE', '0000010', 'Ubuntu', NULL, NULL, NULL, '172.13.30.100/ubuntu-releases/20.04/', NULL, NULL, NULL, NULL, NULL, NULL, '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `file_upload_info` VALUES ('file_1000000011', 'SW_IMAGE', '0000011', 'Ubuntu', NULL, NULL, NULL, '172.13.30.100/ubuntu-releases/18.04/', NULL, NULL, NULL, NULL, NULL, NULL, '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `file_upload_info` VALUES ('file_1000000012', 'SW_IMAGE', '0000012', 'Ubuntu', NULL, NULL, NULL, '172.13.30.100/ubuntu-releases/16.04/', NULL, NULL, NULL, NULL, NULL, NULL, '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `file_upload_info` VALUES ('file_1000000013', 'SW_IMAGE', '0000013', 'QT', NULL, NULL, NULL, '172.13.30.100/qt/5.9.6/', NULL, NULL, NULL, NULL, NULL, NULL, '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `file_upload_info` VALUES ('file_1000000014', 'SW_IMAGE', '0000014', 'QT', NULL, NULL, NULL, '172.13.30.100/qt/5.9/', NULL, NULL, NULL, NULL, NULL, NULL, '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `file_upload_info` VALUES ('file_1000000015', 'SW_IMAGE', '0000015', 'QT', NULL, NULL, NULL, '172.13.30.100/qt/5.8/', NULL, NULL, NULL, NULL, NULL, NULL, '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `file_upload_info` VALUES ('file_1000000016', 'SW_IMAGE', '0000016', 'QT', NULL, NULL, NULL, '172.13.30.100/qt/5.7/', NULL, NULL, NULL, NULL, NULL, NULL, '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `file_upload_info` VALUES ('file_1000000017', 'SW_IMAGE', '0000017', 'GWT', NULL, NULL, NULL, '172.13.30.100/googlewebtoolkit/2.5.1/', NULL, NULL, NULL, NULL, NULL, NULL, '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `file_upload_info` VALUES ('file_1000000018', 'SW_IMAGE', '0000018', 'JDK', NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `file_upload_info` VALUES ('file_1000000019', 'SW_IMAGE', '0000019', 'Redhat Linux', NULL, NULL, NULL, '172.13.30.100/redhatlinux/7.2/', NULL, NULL, NULL, NULL, NULL, NULL, '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `file_upload_info` VALUES ('file_1000000020', 'SW_IMAGE', '0000020', 'Redhat Linux', NULL, NULL, NULL, '172.13.30.100/redhatlinux/6.9/', NULL, NULL, NULL, NULL, NULL, NULL, '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `file_upload_info` VALUES ('file_1000000021', 'SW_IMAGE', '0000021', 'Redhat Linux', NULL, NULL, NULL, '172.13.30.100/redhatlinux/6.2/', NULL, NULL, NULL, NULL, NULL, NULL, '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `file_upload_info` VALUES ('file_1000000022', 'SW_IMAGE', '0000022', 'stdb', NULL, NULL, NULL, '172.13.30.100/', NULL, NULL, NULL, NULL, NULL, NULL, '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `file_upload_info` VALUES ('file_1000000023', 'SW_IMAGE', '0000023', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `file_upload_info` VALUES ('file_1000000024', 'SW_IMAGE', '0000024', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `file_upload_info` VALUES ('file_1000000025', 'SW_IMAGE', '0000025', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `file_upload_info` VALUES ('file_1000000026', 'SW_IMAGE', '0000026', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `file_upload_info` VALUES ('file_1000000027', 'SW_IMAGE', '0000027', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `file_upload_info` VALUES ('file_1000000028', 'SW_IMAGE', '0000028', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `file_upload_info` VALUES ('file_1000000029', 'SW_IMAGE', '0000029', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `file_upload_info` VALUES ('file_1000000030', 'SW_IMAGE', '0000030', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `file_upload_info` VALUES ('file_1000000031', 'SW_IMAGE', '0000031', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `file_upload_info` VALUES ('file_1000000032', 'SW_IMAGE', '0000032', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `file_upload_info` VALUES ('file_1000000033', 'SW_IMAGE', '0000033', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `file_upload_info` VALUES ('file_1000000034', 'SW_IMAGE', '0000034', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `file_upload_info` VALUES ('file_1000000035', 'SW_IMAGE', '0000035', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `file_upload_info` VALUES ('file_1000000036', 'SW_IMAGE', '0000036', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `file_upload_info` VALUES ('file_1000000037', 'SW_IMAGE', '0000037', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `file_upload_info` VALUES ('file_1000000038', 'SW_IMAGE', '0000038', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `file_upload_info` VALUES ('file_1000000039', 'SW_IMAGE', '0000039', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `file_upload_info` VALUES ('file_1000000040', 'SW_IMAGE', '0000040', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `file_upload_info` VALUES ('file_1000000041', 'SW_IMAGE', '0000041', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `file_upload_info` VALUES ('file_1000000042', 'SW_IMAGE', '0000042', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `file_upload_info` VALUES ('file_1000000043', 'SW_IMAGE', '0000043', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `file_upload_info` VALUES ('file_1000000044', 'SW_IMAGE', '0000044', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `file_upload_info` VALUES ('file_1000000045', 'SW_IMAGE', '0000045', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `file_upload_info` VALUES ('file_1000000046', 'SW_IMAGE', '0000046', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `file_upload_info` VALUES ('file_1000000047', 'SW_IMAGE', '0000047', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `file_upload_info` VALUES ('file_1000000048', 'SW_IMAGE', '0000048', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `file_upload_info` VALUES ('file_1000000049', 'SW_IMAGE', '0000049', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `file_upload_info` VALUES ('file_1000000050', 'SW_IMAGE', '0000050', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `file_upload_info` VALUES ('file_1000000051', 'SW_IMAGE', '0000051', 'EPEL', NULL, NULL, NULL, '172.13.30.100/epel/4/', NULL, NULL, NULL, NULL, NULL, NULL, '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `file_upload_info` VALUES ('file_1000000052', 'SW_IMAGE', '0000052', 'EPEL', NULL, NULL, NULL, '172.13.30.100/epel/5/', NULL, NULL, NULL, NULL, NULL, NULL, '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `file_upload_info` VALUES ('file_1000000053', 'SW_IMAGE', '0000053', 'EPEL', NULL, NULL, NULL, '172.13.30.100/epel/6/', NULL, NULL, NULL, NULL, NULL, NULL, '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `file_upload_info` VALUES ('file_1000000054', 'SW_IMAGE', '0000054', 'EPEL', NULL, NULL, NULL, '172.13.30.100/epel/7/', NULL, NULL, NULL, NULL, NULL, NULL, '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `file_upload_info` VALUES ('file_1000000055', 'SW_IMAGE', '0000055', 'EPEL', NULL, NULL, NULL, '172.13.30.100/epel/8/', NULL, NULL, NULL, NULL, NULL, NULL, '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
COMMIT;

-- ----------------------------
-- Table structure for log_user_access_log
-- ----------------------------
DROP TABLE IF EXISTS `log_user_access_log`;
CREATE TABLE `log_user_access_log` (
  `id` varchar(50) NOT NULL COMMENT '日志编号',
  `user_id` varchar(50) DEFAULT NULL COMMENT '用户编号',
  `department_id` varchar(50) DEFAULT NULL COMMENT '部门编号',
  `language` varchar(20) DEFAULT NULL COMMENT '语言',
  `user_cn_name` varchar(50) DEFAULT NULL COMMENT '用户中文名称',
  `user_en_name` varchar(50) DEFAULT NULL COMMENT '用户英文名称',
  `access_uri` varchar(200) DEFAULT NULL COMMENT '访问连接',
  `access_remark` varchar(4000) DEFAULT NULL COMMENT '访问备注',
  `user_access_datetime` datetime DEFAULT NULL COMMENT '访问时间',
  `user_access_status` varchar(20) DEFAULT NULL COMMENT '访问状态',
  `access_ip_address` varchar(100) DEFAULT NULL COMMENT '访问IP地址',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='用户访问日志表';


-- ----------------------------
-- Table structure for log_user_login_log
-- ----------------------------
DROP TABLE IF EXISTS `log_user_login_log`;
CREATE TABLE `log_user_login_log` (
  `id` varchar(50) NOT NULL COMMENT '日志编号',
  `user_id` varchar(50) NOT NULL COMMENT '用户编号',
  `department_id` varchar(50) DEFAULT NULL COMMENT '部门编号',
  `language` varchar(20) DEFAULT NULL COMMENT '语言',
  `user_cn_name` varchar(50) DEFAULT NULL COMMENT '用户中文名称',
  `user_en_name` varchar(50) DEFAULT NULL COMMENT '用户英文名称',
  `password` varchar(200) DEFAULT NULL COMMENT '用户登录密码',
  `salt` varchar(30) DEFAULT NULL COMMENT '加密添加salt散列值',
  `user_login_datetime` datetime DEFAULT NULL COMMENT '用户登录时间',
  `user_login_status` varchar(20) DEFAULT NULL COMMENT '用户登录状态',
  `login_ip_address` varchar(100) DEFAULT NULL COMMENT '用户登录IP地址',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='用户登录日志表';


-- ----------------------------
-- Table structure for mo_indicator_info
-- ----------------------------
DROP TABLE IF EXISTS `mo_indicator_info`;
CREATE TABLE `mo_indicator_info` (
  `id` bigint(20) NOT NULL,
  `alarm_desc_en_us` varchar(255) DEFAULT NULL,
  `alarm_desc_zh_cn` varchar(255) DEFAULT NULL,
  `alarm_id` varchar(255) DEFAULT NULL,
  `data_type` varchar(255) DEFAULT NULL,
  `data_unit` varchar(255) DEFAULT NULL,
  `en_us` varchar(255) DEFAULT NULL,
  `group_en_us` varchar(255) DEFAULT NULL,
  `group_zh_cn` varchar(255) DEFAULT NULL,
  `indicator_name` varchar(255) DEFAULT NULL,
  `kpi` int(11) DEFAULT NULL,
  `obj_type_id` bigint(20) DEFAULT NULL,
  `tag` varchar(255) DEFAULT NULL,
  `zh_cn` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='监控服务类型所对应的监控条件';

-- ----------------------------
-- Records of mo_indicator_info
-- ----------------------------
BEGIN;
INSERT INTO `mo_indicator_info` VALUES (562958543421441, NULL, NULL, NULL, 'float', '%', 'CPU Usage', 'Basic Monitoring', '基础监控', 'cpuUsage', 1, 562958543355904, 'CLOUD_VM_USAGE', 'CPU使用率');
INSERT INTO `mo_indicator_info` VALUES (562958543486979, NULL, NULL, NULL, 'float', '%', 'Memory Usage', 'OS Monitoring', '操作系统监控', 'memoryUsage', 1, 562958543355904, 'CLOUD_VM_USAGE', '内存使用率');
INSERT INTO `mo_indicator_info` VALUES (562958543552537, NULL, NULL, NULL, 'float', 'KB/s', 'Network Inbound Rate', 'Process Monitoring', '进程监控', 'nicByteIn', 0, 562958543355904, 'CLOUD_VM_NIC', '网络流入速率');
INSERT INTO `mo_indicator_info` VALUES (562958543552538, NULL, NULL, NULL, 'float', 'KB/s', 'Network Outbound Rate', 'Process Monitoring', '进程监控', 'nicByteOut', 0, 562958543355904, 'CLOUD_VM_NIC', '网络流出速率');
INSERT INTO `mo_indicator_info` VALUES (562958543552539, NULL, NULL, NULL, 'float', 'KB/s', 'Average Network Bandwidth', 'Process Monitoring', '进程监控', 'nicByteInOut', 0, 562958543355904, 'CLOUD_VM_NIC', '网络平均带宽');
INSERT INTO `mo_indicator_info` VALUES (562958543552550, NULL, NULL, NULL, 'float', '%', 'Network Packet Loss Rate', 'Process Monitoring', '进程监控', 'nicDropPercent', 0, 562958543355904, '', '网络丢包百分比');
INSERT INTO `mo_indicator_info` VALUES (562958543618052, NULL, NULL, NULL, 'float', '%', 'EVS Disk Usage', 'CPU', 'CPU', 'diskUsage', 0, 562958543355904, 'CLOUD_VM_USAGE', '云硬盘使用率');
INSERT INTO `mo_indicator_info` VALUES (562958543618061, NULL, NULL, NULL, 'float', 'KB/s', 'EVS Disk I/O Write', 'CPU', 'CPU', 'diskIoIn', 1, 562958543355904, 'CLOUD_VM_DISK_IO', '云硬盘IO写入');
INSERT INTO `mo_indicator_info` VALUES (562958543618062, NULL, NULL, NULL, 'float', 'KB/s', 'EVS Disk I/O Read', 'CPU', 'CPU', 'diskIoOut', 1, 562958543355904, 'CLOUD_VM_DISK_IO', '云硬盘IO读出');
INSERT INTO `mo_indicator_info` VALUES (562958543618067, NULL, NULL, NULL, 'float', 'ms', 'Average EVS Disk Write Latency', 'CPU', 'CPU', 'diskIowrTicks', 0, 562958543355904, 'CLOUD_VM_DISK_IOWR', '云硬盘平均写时延');
INSERT INTO `mo_indicator_info` VALUES (562958543618068, NULL, NULL, NULL, 'float', 'ms', 'Average EVS Disk Read Latency', 'CPU', 'CPU', 'diskIordTicks', 0, 562958543355904, 'CLOUD_VM_DISK_IOWR', '云硬盘平均读时延');
INSERT INTO `mo_indicator_info` VALUES (562958543618071, NULL, NULL, NULL, 'float', '%', 'Average EVS Disk I/O Usage', 'CPU', 'CPU', 'diskTotTicks', 0, 562958543355904, '', '云硬盘平均IO利用率');
INSERT INTO `mo_indicator_info` VALUES (562958543618072, NULL, NULL, NULL, 'float', 'requests/s', 'Disk Read Requests', 'CPU', 'CPU', 'disk_read_requests_rate', 0, 562958543355904, '', '磁盘读操作速率');
INSERT INTO `mo_indicator_info` VALUES (562958543618073, NULL, NULL, NULL, 'float', 'requests/s', 'Disk Write Requests', 'CPU', 'CPU', 'disk_write_requests_rate', 0, 562958543355904, '', '磁盘写操作速率');
INSERT INTO `mo_indicator_info` VALUES (562958543618076, NULL, NULL, NULL, 'float', '%', 'GPU Usage', 'CPU', 'CPU', 'gpu_usage_gpu', 1, 562958543355904, '', 'GPU利用率');
INSERT INTO `mo_indicator_info` VALUES (562958543618077, NULL, NULL, NULL, 'float', '%', 'GPU Memory Usage', 'CPU', 'CPU', 'gpu_usage_mem', 1, 562958543355904, '', '显存使用率');
INSERT INTO `mo_indicator_info` VALUES (562958543618078, NULL, NULL, NULL, 'float', 'P', 'GPU Performance Status', 'CPU', 'CPU', 'gpu_performance_state', 1, 562958543355904, '', 'GPU性能状态');
INSERT INTO `mo_indicator_info` VALUES (562958543618079, NULL, NULL, NULL, 'float', 'Credits', 'CPU Credit Usage', 'CPU', 'CPU', 'cpu_credit_usage', 0, 562958543355904, '', 'CPU额度使用');
INSERT INTO `mo_indicator_info` VALUES (562958543618080, NULL, NULL, NULL, 'float', 'Credits', 'CPU Credit Balance', 'CPU', 'CPU', 'cpu_credit_balance', 0, 562958543355904, '', 'CPU额度余额');
INSERT INTO `mo_indicator_info` VALUES (562958543618081, NULL, NULL, NULL, 'float', 'Count', 'CPU Credits Remaining', 'CPU', 'CPU', 'cpuCreditsRemaining', 0, 562958543355904, '', '剩余CPU信用额度');
INSERT INTO `mo_indicator_info` VALUES (562958543618082, NULL, NULL, NULL, 'float', 'Count', 'CPU Credits Consumed', 'CPU', 'CPU', 'cpuCreditsConsumed', 0, 562958543355904, '', '已用CPU信用额度');
INSERT INTO `mo_indicator_info` VALUES (562958543618083, NULL, NULL, NULL, 'float', '%', 'Chip Memory Usage', 'CPU', 'CPU', 'npu_memory_usage', 1, 562958543355904, '', '芯片内存使用率');
INSERT INTO `mo_indicator_info` VALUES (562958543618084, NULL, NULL, NULL, 'float', '%', 'AI Core Usage', 'CPU', 'CPU', 'npu_aicore_usage', 1, 562958543355904, NULL, 'AI核心使用率');
INSERT INTO `mo_indicator_info` VALUES (562958543618085, NULL, NULL, NULL, 'float', '%', 'AI CPU Usage', 'CPU', 'CPU', 'npu_aicpu_usage', 1, 562958543355904, NULL, 'AI CPU使用率');
INSERT INTO `mo_indicator_info` VALUES (562958543618086, NULL, NULL, NULL, 'float', '%', 'Control CPU Usage', 'CPU', 'CPU', 'npu_ctrlcpu_usage', 1, 562958543355904, NULL, '控制CPU使用率');
INSERT INTO `mo_indicator_info` VALUES (562958543618087, NULL, NULL, NULL, 'float', '%', 'Memory Bandwidth Usage', 'CPU', 'CPU', 'npu_memory_bandwidth_usage', 1, 562958543355904, NULL, '内存带宽使用率');
COMMIT;

-- ----------------------------
-- Table structure for mo_server_info
-- ----------------------------
DROP TABLE IF EXISTS `mo_server_info`;
CREATE TABLE `mo_server_info` (
  `id` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `job_id` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `portal_syn_status` int(11) DEFAULT NULL,
  `status` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Table structure for mo_stackjob_info
-- ----------------------------
DROP TABLE IF EXISTS `mo_stackjob_info`;
CREATE TABLE `mo_stackjob_info` (
  `id` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `servers_status` int(11) DEFAULT NULL,
  `status` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Table structure for mo_user_info
-- ----------------------------
DROP TABLE IF EXISTS `mo_user_info`;
CREATE TABLE `mo_user_info` (
  `id` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `description` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `domain_id` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `enabled` bit(1) DEFAULT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `password_expires_at` datetime DEFAULT NULL,
  `areacode` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `create_at` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `display_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `domain_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `phone` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `resource_tenant_id` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `user_type` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `vdc_id` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci ROW_FORMAT=DYNAMIC;


-- ----------------------------
-- Table structure for mo_vdc_filter_info
-- ----------------------------
DROP TABLE IF EXISTS `mo_vdc_filter_info`;
CREATE TABLE `mo_vdc_filter_info` (
  `id` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `description` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `enabled` int(11) DEFAULT NULL,
  `level` int(11) DEFAULT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `upper_vdc_id` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of mo_vdc_filter_info
-- ----------------------------
-- BEGIN;
-- INSERT INTO `mo_vdc_filter_info` VALUES ('78e38865-264f-4118-95ad-bb7ec229f044', '', 1, 1, 'CMSECloud_DockerVDC', '0');
-- INSERT INTO `mo_vdc_filter_info` VALUES ('7def71a9-0412-462c-af5d-a542101dcdce', '仅供测试使用', 1, 1, '测试_L1', '0');
-- INSERT INTO `mo_vdc_filter_info` VALUES ('28fd533f-39bf-4a48-9706-970962626f82', '', 1, 2, '测试中心A_二级VDC', '7def71a9-0412-462c-af5d-a542101dcdce');
-- INSERT INTO `mo_vdc_filter_info` VALUES ('a8072a16-e3be-4c1d-a714-3797fb63afb4', '', 1, 2, '测试中心B_二级VDC', '7def71a9-0412-462c-af5d-a542101dcdce');
-- INSERT INTO `mo_vdc_filter_info` VALUES ('eb0742c2-8958-40e0-9531-36de667ee184', '', 1, 2, '测试中心C_VDC', '7def71a9-0412-462c-af5d-a542101dcdce');
-- INSERT INTO `mo_vdc_filter_info` VALUES ('a47e491d-8c73-4bfd-af47-f153a3e61929', '', 1, 1, 'CMSECloud_L1', '0');
-- INSERT INTO `mo_vdc_filter_info` VALUES ('53292d70-8739-44a4-ae8d-c2a087b4791b', '', 1, 2, '云平台共用数据库_L2', 'a47e491d-8c73-4bfd-af47-f153a3e61929');
-- INSERT INTO `mo_vdc_filter_info` VALUES ('8d6f3bc3-bc71-464f-bd43-003bdb271990', '', 1, 2, '仿真中心_L2', 'a47e491d-8c73-4bfd-af47-f153a3e61929');
-- INSERT INTO `mo_vdc_filter_info` VALUES ('8a44a18e-3116-4c11-a6dd-926234232c85', '', 1, 2, '公共服务_L2', 'a47e491d-8c73-4bfd-af47-f153a3e61929');
-- INSERT INTO `mo_vdc_filter_info` VALUES ('127f392d-920a-41ee-9406-f924cb4ea396', '', 1, 2, '在轨航天器中心_L2', 'a47e491d-8c73-4bfd-af47-f153a3e61929');
-- INSERT INTO `mo_vdc_filter_info` VALUES ('a551888a-62f5-4d3c-b368-bddf5ab54de7', '', 1, 2, '工程信息中心_L2', 'a47e491d-8c73-4bfd-af47-f153a3e61929');
-- INSERT INTO `mo_vdc_filter_info` VALUES ('5d9334f7-9dba-47a3-b6b6-c9cecf97f7e9', '', 1, 2, '有效载荷运控管理系统_L2', 'a47e491d-8c73-4bfd-af47-f153a3e61929');
-- INSERT INTO `mo_vdc_filter_info` VALUES ('e7a507a1-9d67-4b52-8db3-3d54ff9e8d2b', '', 1, 2, '测试_L2', 'a47e491d-8c73-4bfd-af47-f153a3e61929');
-- INSERT INTO `mo_vdc_filter_info` VALUES ('096f56c3-baff-405b-bc29-42c3ad890148', '', 1, 2, '科学与应用数据中心_L2', 'a47e491d-8c73-4bfd-af47-f153a3e61929');
-- INSERT INTO `mo_vdc_filter_info` VALUES ('b0a65173-72cf-4d4f-a254-7abfad6bc760', '', 1, 2, '航天员支持中心_L2', 'a47e491d-8c73-4bfd-af47-f153a3e61929');
-- INSERT INTO `mo_vdc_filter_info` VALUES ('b75b5cac-663d-4955-97fd-76597eadacaf', '', 1, 2, '软件仓库', 'a47e491d-8c73-4bfd-af47-f153a3e61929');
-- INSERT INTO `mo_vdc_filter_info` VALUES ('f1b57583-b661-4760-9469-3dd41ddcfe74', '', 1, 2, '运营规划中心_L2', 'a47e491d-8c73-4bfd-af47-f153a3e61929');
-- INSERT INTO `mo_vdc_filter_info` VALUES ('d63b1c5f-8e74-4f6c-a543-ca2df062935d', '', 1, 2, '运行控制中心_L2', 'a47e491d-8c73-4bfd-af47-f153a3e61929');
-- COMMIT;

-- ----------------------------
-- Table structure for mo_vdc_info
-- ----------------------------
DROP TABLE IF EXISTS `mo_vdc_info`;
CREATE TABLE `mo_vdc_info` (
  `id` varchar(255) NOT NULL,
  `az_id` varchar(255) DEFAULT NULL,
  `create_at` varchar(255) DEFAULT NULL,
  `create_user_id` varchar(255) DEFAULT NULL,
  `create_user_name` varchar(255) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `domain_id` varchar(255) DEFAULT NULL,
  `domain_name` varchar(255) DEFAULT NULL,
  `enabled` bit(1) DEFAULT NULL,
  `enterprise_id` varchar(255) DEFAULT NULL,
  `enterprise_project_id` varchar(255) DEFAULT NULL,
  `idp_name` varchar(255) DEFAULT NULL,
  `level` int(11) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `region_id` varchar(255) DEFAULT NULL,
  `tag` varchar(255) DEFAULT NULL,
  `third_id` varchar(255) DEFAULT NULL,
  `third_type` varchar(255) DEFAULT NULL,
  `upper_vdc_id` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=MyISAM DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of mo_vdc_info
-- ----------------------------
-- BEGIN;
-- INSERT INTO `mo_vdc_info` VALUES ('78e38865-264f-4118-95ad-bb7ec229f044', NULL, '1597946223000', '9a3713f47ea84137b4269ca0d346a7b7', 'bss_admin', '', '58862e81150a45df81cb33f2e75c9078', 'CMSECloud_DockerVDC', b'1', NULL, NULL, NULL, 1, 'CMSECloud_DockerVDC', NULL, 'vdc', NULL, '0', '0', NULL);
-- INSERT INTO `mo_vdc_info` VALUES ('a47e491d-8c73-4bfd-af47-f153a3e61929', NULL, '1598034154000', '9a3713f47ea84137b4269ca0d346a7b7', 'bss_admin', '', '893927d88e09420880ee3134490b6a24', 'CMSECloud_L1', b'1', NULL, NULL, NULL, 1, 'CMSECloud_L1', NULL, 'vdc', NULL, '0', '0', NULL);
-- INSERT INTO `mo_vdc_info` VALUES ('53292d70-8739-44a4-ae8d-c2a087b4791b', NULL, '1598571289000', '28cb30e9161942c8aaf5ca70f12efd6a', NULL, '', '893927d88e09420880ee3134490b6a24', 'CMSECloud_L1', b'1', NULL, NULL, NULL, 2, '云平台共用数据库_L2', NULL, 'vdc', NULL, '0', 'a47e491d-8c73-4bfd-af47-f153a3e61929', NULL);
-- INSERT INTO `mo_vdc_info` VALUES ('8d6f3bc3-bc71-464f-bd43-003bdb271990', NULL, '1599091419000', '28cb30e9161942c8aaf5ca70f12efd6a', NULL, '', '893927d88e09420880ee3134490b6a24', 'CMSECloud_L1', b'1', NULL, NULL, NULL, 2, '仿真中心_L2', NULL, 'vdc', NULL, '0', 'a47e491d-8c73-4bfd-af47-f153a3e61929', NULL);
-- INSERT INTO `mo_vdc_info` VALUES ('8a44a18e-3116-4c11-a6dd-926234232c85', NULL, '1601231542000', '28cb30e9161942c8aaf5ca70f12efd6a', NULL, '', '893927d88e09420880ee3134490b6a24', 'CMSECloud_L1', b'1', NULL, NULL, NULL, 2, '公共服务_L2', NULL, 'vdc', NULL, '0', 'a47e491d-8c73-4bfd-af47-f153a3e61929', NULL);
-- INSERT INTO `mo_vdc_info` VALUES ('127f392d-920a-41ee-9406-f924cb4ea396', NULL, '1599091317000', '28cb30e9161942c8aaf5ca70f12efd6a', NULL, '', '893927d88e09420880ee3134490b6a24', 'CMSECloud_L1', b'1', NULL, NULL, NULL, 2, '在轨航天器中心_L2', NULL, 'vdc', NULL, '0', 'a47e491d-8c73-4bfd-af47-f153a3e61929', NULL);
-- INSERT INTO `mo_vdc_info` VALUES ('a551888a-62f5-4d3c-b368-bddf5ab54de7', NULL, '1598034761000', '28cb30e9161942c8aaf5ca70f12efd6a', NULL, '', '893927d88e09420880ee3134490b6a24', 'CMSECloud_L1', b'1', NULL, NULL, NULL, 2, '工程信息中心_L2', NULL, 'vdc', NULL, '0', 'a47e491d-8c73-4bfd-af47-f153a3e61929', NULL);
-- INSERT INTO `mo_vdc_info` VALUES ('5d9334f7-9dba-47a3-b6b6-c9cecf97f7e9', NULL, '1599091452000', '28cb30e9161942c8aaf5ca70f12efd6a', NULL, '', '893927d88e09420880ee3134490b6a24', 'CMSECloud_L1', b'1', NULL, NULL, NULL, 2, '有效载荷运控管理系统_L2', NULL, 'vdc', NULL, '0', 'a47e491d-8c73-4bfd-af47-f153a3e61929', NULL);
-- INSERT INTO `mo_vdc_info` VALUES ('7def71a9-0412-462c-af5d-a542101dcdce', NULL, '1600194198000', '9a3713f47ea84137b4269ca0d346a7b7', 'bss_admin', '仅供测试使用', 'd6651d24b3834808a898931a5223843b', '测试_L1', b'1', NULL, NULL, NULL, 1, '测试_L1', NULL, 'vdc', NULL, '0', '0', NULL);
-- INSERT INTO `mo_vdc_info` VALUES ('e7a507a1-9d67-4b52-8db3-3d54ff9e8d2b', NULL, '1599676236000', '28cb30e9161942c8aaf5ca70f12efd6a', NULL, '', '893927d88e09420880ee3134490b6a24', 'CMSECloud_L1', b'1', NULL, NULL, NULL, 2, '测试_L2', NULL, 'vdc', NULL, '0', 'a47e491d-8c73-4bfd-af47-f153a3e61929', NULL);
-- INSERT INTO `mo_vdc_info` VALUES ('28fd533f-39bf-4a48-9706-970962626f82', NULL, '1602284854000', '0ec09e3815b448ee9e61917dd9b8c57c', 'portal_cloud_admin', '', 'd6651d24b3834808a898931a5223843b', '测试_L1', b'1', NULL, NULL, NULL, 2, '测试中心A_二级VDC', NULL, 'vdc', NULL, '0', '7def71a9-0412-462c-af5d-a542101dcdce', NULL);
-- INSERT INTO `mo_vdc_info` VALUES ('a8072a16-e3be-4c1d-a714-3797fb63afb4', NULL, '1602284914000', '0ec09e3815b448ee9e61917dd9b8c57c', 'portal_cloud_admin', '', 'd6651d24b3834808a898931a5223843b', '测试_L1', b'1', NULL, NULL, NULL, 2, '测试中心B_二级VDC', NULL, 'vdc', NULL, '0', '7def71a9-0412-462c-af5d-a542101dcdce', NULL);
-- INSERT INTO `mo_vdc_info` VALUES ('eb0742c2-8958-40e0-9531-36de667ee184', NULL, '1602636674000', '0ec09e3815b448ee9e61917dd9b8c57c', 'portal_cloud_admin', '', 'd6651d24b3834808a898931a5223843b', '测试_L1', b'1', NULL, NULL, NULL, 2, '测试中心C_VDC', NULL, 'vdc', NULL, '0', '7def71a9-0412-462c-af5d-a542101dcdce', NULL);
-- INSERT INTO `mo_vdc_info` VALUES ('096f56c3-baff-405b-bc29-42c3ad890148', NULL, '1598034486000', '28cb30e9161942c8aaf5ca70f12efd6a', NULL, '', '893927d88e09420880ee3134490b6a24', 'CMSECloud_L1', b'1', NULL, NULL, NULL, 2, '科学与应用数据中心_L2', NULL, 'vdc', NULL, '0', 'a47e491d-8c73-4bfd-af47-f153a3e61929', NULL);
-- INSERT INTO `mo_vdc_info` VALUES ('b0a65173-72cf-4d4f-a254-7abfad6bc760', NULL, '1599091222000', '28cb30e9161942c8aaf5ca70f12efd6a', NULL, '', '893927d88e09420880ee3134490b6a24', 'CMSECloud_L1', b'1', NULL, NULL, NULL, 2, '航天员支持中心_L2', NULL, 'vdc', NULL, '0', 'a47e491d-8c73-4bfd-af47-f153a3e61929', NULL);
-- INSERT INTO `mo_vdc_info` VALUES ('b75b5cac-663d-4955-97fd-76597eadacaf', NULL, '1606353134000', '28cb30e9161942c8aaf5ca70f12efd6a', NULL, '', '893927d88e09420880ee3134490b6a24', 'CMSECloud_L1', b'1', NULL, NULL, NULL, 2, '软件仓库', NULL, 'vdc', NULL, '0', 'a47e491d-8c73-4bfd-af47-f153a3e61929', NULL);
-- INSERT INTO `mo_vdc_info` VALUES ('f1b57583-b661-4760-9469-3dd41ddcfe74', NULL, '1599091391000', '28cb30e9161942c8aaf5ca70f12efd6a', NULL, '', '893927d88e09420880ee3134490b6a24', 'CMSECloud_L1', b'1', NULL, NULL, NULL, 2, '运营规划中心_L2', NULL, 'vdc', NULL, '0', 'a47e491d-8c73-4bfd-af47-f153a3e61929', NULL);
-- INSERT INTO `mo_vdc_info` VALUES ('d63b1c5f-8e74-4f6c-a543-ca2df062935d', NULL, '1602465810000', '28cb30e9161942c8aaf5ca70f12efd6a', NULL, '', '893927d88e09420880ee3134490b6a24', 'CMSECloud_L1', b'1', NULL, NULL, NULL, 2, '运行控制中心_L2', NULL, 'vdc', NULL, '0', 'a47e491d-8c73-4bfd-af47-f153a3e61929', NULL);
-- COMMIT;

-- ----------------------------
-- Table structure for os_dir_info
-- ----------------------------
DROP TABLE IF EXISTS `os_dir_info`;
CREATE TABLE `os_dir_info` (
  `id` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `rdc` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `rdn` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `create_time` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `dir_group` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `dir_owner` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `domain_type` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `file_id` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `file_type` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `lastaccess_time` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `logic_capacity` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `modified_time` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `node_type` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `parallel_stripe_width` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `parent_dir` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `physical_capacity` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `redundant_rate` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `redundant_type` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `share_type` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `stripe_policy` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `unix_mod` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Table structure for qu_apply_info
-- ----------------------------
DROP TABLE IF EXISTS `qu_apply_info`;
CREATE TABLE `qu_apply_info` (
  `id` varchar(225) COLLATE utf8_unicode_ci NOT NULL COMMENT 'id',
  `num` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '序号',
  `apply_code` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '申请代码',
  `applicant_id` varchar(225) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '申请人编号',
  `applicant_name` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '申请人姓名',
  `center_id` varchar(225) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '所属中心编号',
  `center_name` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '所属中心名称',
  `phone` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '联系方式',
  `unit` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '单位',
  `department_name` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '部门名称',
  `apply_datetime` datetime DEFAULT NULL COMMENT '申请时间',
  `valid_flag` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '失效标识',
  `status` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '状态',
  `create_id` varchar(225) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '创建人编号',
  `create_name` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '创建人姓名',
  `create_group_id` varchar(225) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '创建人用户组编号',
  `create_group_name` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '创建人用户组名称',
  `create_department_id` varchar(225) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '创建人部门编号',
  `create_department_name` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '创建人部门名称',
  `create_datetime` datetime DEFAULT NULL COMMENT '创建时间',
  `top_group_center` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '顶级用户组即机构',
  `note` varchar(225) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '备注',
  `sys_all_capacity` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '系统原始容量',
  `sys_used_capacity` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '系统剩余容量',
  `sys_apply_capacity` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '系统申请容量',
  `file_all_capacity` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '文件系统原始容量',
  `file_used_capacity` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '文件系统保存容量',
  `file_apply_capacity` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '文件系统申请容量',
  `apply_cause` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '申请理由',
  `all_vcpu` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT 'vcpu当前总计',
  `used_vcpu` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT 'vcpu当前已使用',
  `apply_vcpu` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT 'vcpu申请添加',
  `all_memory` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '当前内存总计',
  `used_memory` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '已使用内存',
  `apply_memory` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '内存申请添加',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci ROW_FORMAT=DYNAMIC COMMENT='配额信息申请表';


-- ----------------------------
-- Table structure for qu_rank_info
-- ----------------------------
DROP TABLE IF EXISTS `qu_rank_info`;
CREATE TABLE `qu_rank_info` (
  `id` varchar(100) COLLATE utf8_unicode_ci NOT NULL COMMENT 'id',
  `rank_name` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '规格名称',
  `apply_id` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '配额申请id',
  `create_datetime` datetime DEFAULT NULL COMMENT '创建时间',
  `modify_datetime` datetime DEFAULT NULL COMMENT '修改时间',
  `type` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '资源类型',
  `original_number` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '原分配数量',
  `used_number` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '已使用数量',
  `remain_number` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '剩余数量',
  `apply_number` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '申请数量',
  `note` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci COMMENT='配额资源规格信息表';

-- ----------------------------
-- Records of qu_rank_info
-- ----------------------------
BEGIN;
INSERT INTO `qu_rank_info` VALUES ('44eb03a1d9a9403f8d101ec2fbb6f8b9', '4核/8GB', 'quotaf1580a0a44a849b5a54640a09f1392c1', '2020-12-14 15:17:45', '2020-12-14 15:17:45', 'ECS', NULL, '3', NULL, NULL, NULL);
INSERT INTO `qu_rank_info` VALUES ('464ea5c51bc742b2b1491bb87296a71d', '32核/64GB', 'quotaaf6f1ab899354460b132966a117919cd', '2020-12-14 15:21:38', '2020-12-14 15:21:38', 'GPU', NULL, '3', NULL, NULL, NULL);
INSERT INTO `qu_rank_info` VALUES ('50b5d7d2481247578ac0e96912f1fb64', '4核/16GB', 'quotaaf6f1ab899354460b132966a117919cd', '2020-12-14 15:21:38', '2020-12-14 15:21:38', 'ECS', NULL, '5', NULL, NULL, NULL);
INSERT INTO `qu_rank_info` VALUES ('530d9400fa574786931f2d81f702ffbd', '32核/64GB', 'quotac91cb937f4494f5999d1d22316e385b9', '2020-12-14 15:33:38', '2020-12-14 15:33:38', 'ECS', NULL, '3', NULL, NULL, NULL);
INSERT INTO `qu_rank_info` VALUES ('8caa372cb61648009c02fe7d8592253a', '32核/64GB', 'quotaaf6f1ab899354460b132966a117919cd', '2020-12-14 15:21:38', '2020-12-14 15:21:38', 'ECS', NULL, '3', NULL, NULL, NULL);
INSERT INTO `qu_rank_info` VALUES ('8d3dd2536c684fd185236c72ffa490bb', '4核/16GB', 'quotaf1580a0a44a849b5a54640a09f1392c1', '2020-12-14 15:17:45', '2020-12-14 15:17:45', 'ECS', NULL, '5', NULL, NULL, NULL);
INSERT INTO `qu_rank_info` VALUES ('970631b88c134cac9a2e067523410ea6', '4核/8GB', 'quotac91cb937f4494f5999d1d22316e385b9', '2020-12-14 15:33:38', '2020-12-14 15:33:38', 'ECS', NULL, '3', NULL, NULL, NULL);
INSERT INTO `qu_rank_info` VALUES ('a21147b6d51941419a324c744a865325', '32核/64GB', 'quotaf1580a0a44a849b5a54640a09f1392c1', '2020-12-14 15:17:45', '2020-12-14 15:17:45', 'GPU', NULL, '3', NULL, NULL, NULL);
INSERT INTO `qu_rank_info` VALUES ('ba35e6fac9484e1d8bea6fa9dd137837', '4核/16GB', 'quotac91cb937f4494f5999d1d22316e385b9', '2020-12-14 15:33:38', '2020-12-14 15:33:38', 'ECS', NULL, '5', NULL, NULL, NULL);
INSERT INTO `qu_rank_info` VALUES ('d1d991bf9a404f248b71f2ac354d26fd', '32核/64GB', 'quotaf1580a0a44a849b5a54640a09f1392c1', '2020-12-14 15:17:45', '2020-12-14 15:17:45', 'ECS', NULL, '3', NULL, NULL, NULL);
INSERT INTO `qu_rank_info` VALUES ('d96963cab5bc42fa807da535cccb0ddb', '32核/64GB', 'quotac91cb937f4494f5999d1d22316e385b9', '2020-12-14 15:33:39', '2020-12-14 15:33:39', 'GPU', NULL, '3', NULL, NULL, NULL);
INSERT INTO `qu_rank_info` VALUES ('e553fb27f162461eb1b068187dc0771c', '4核/8GB', 'quotaaf6f1ab899354460b132966a117919cd', '2020-12-14 15:21:37', '2020-12-14 15:21:37', 'ECS', NULL, '3', NULL, NULL, NULL);
COMMIT;

-- ----------------------------
-- Table structure for storage_catalog_info
-- ----------------------------
DROP TABLE IF EXISTS `storage_catalog_info`;
CREATE TABLE `storage_catalog_info` (
  `id` varchar(50) NOT NULL COMMENT '目录编号',
  `catalog_type` varchar(100) DEFAULT NULL COMMENT '目录类型',
  `catalog_name` varchar(200) DEFAULT NULL COMMENT '目录名称',
  `catalog_path` varchar(200) DEFAULT NULL COMMENT '目录路径',
  `catalog_owner` varchar(200) DEFAULT NULL COMMENT '目录所有者',
  `catalog_level` int(11) DEFAULT NULL COMMENT '目录等级',
  `order_seq` int(11) DEFAULT NULL COMMENT '目录顺序',
  `parent_id` varchar(50) DEFAULT NULL COMMENT '上级目录编号',
  `catalog_create_datetime` datetime DEFAULT NULL COMMENT '创建时间',
  `show_flag` varchar(5) DEFAULT NULL COMMENT '显示标志',
  `valid_flag` varchar(5) DEFAULT NULL COMMENT '效力标志',
  `invalid_department_id` varchar(50) DEFAULT NULL COMMENT '失效用户所属部门编号',
  `invalid_user_id` varchar(50) DEFAULT NULL COMMENT '失效用户编号',
  `invalid_datetime` datetime DEFAULT NULL COMMENT '失效时间',
  `create_department_id` varchar(50) DEFAULT NULL COMMENT '创建用户所属部门编号',
  `create_user_id` varchar(50) DEFAULT NULL COMMENT '创建用户编号',
  `create_datetime` datetime DEFAULT NULL COMMENT '创建时间',
  `update_department_id` varchar(50) DEFAULT NULL COMMENT '更新用户部门所属编号',
  `update_user_id` varchar(50) DEFAULT NULL COMMENT '更新用户编号',
  `update_datetime` datetime DEFAULT NULL COMMENT '更新时间',
  `permission` varchar(255) DEFAULT NULL,
  `dir_desc` varchar(1024) DEFAULT NULL COMMENT '目录描述',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='存储目录信息表';

-- ----------------------------
-- Records of storage_catalog_info
-- ----------------------------
-- BEGIN;
-- INSERT INTO `storage_catalog_info` VALUES ('root', NULL, 'root', NULL, NULL, NULL, NULL, NULL, NULL, 'false', '1', NULL, NULL, NULL, NULL, NULL, '2020-09-01 11:05:10', NULL, NULL, NULL, NULL, NULL);
-- INSERT INTO `storage_catalog_info` VALUES ('c-center_001', 'center', '有效载荷运行管理中心', '/核心舱/有效载荷运行管理中心', NULL, 2, NULL, 'ca-cabin_001', NULL, 'true', '1', NULL, NULL, NULL, NULL, NULL, '2020-10-26 12:46:50', NULL, NULL, NULL, NULL, NULL);
-- INSERT INTO `storage_catalog_info` VALUES ('c-center_002', 'center', '在轨航天器支持中心', '/核心舱/在轨航天器支持中心', NULL, 2, NULL, 'ca-cabin_001', NULL, 'true', '1', NULL, NULL, NULL, NULL, NULL, '2020-10-26 12:46:50', NULL, NULL, NULL, NULL, NULL);
-- INSERT INTO `storage_catalog_info` VALUES ('c-center_003', 'center', '航天员支持中心', '/核心舱/航天员支持中心', NULL, 2, NULL, 'ca-cabin_001', NULL, 'true', '1', NULL, NULL, NULL, NULL, NULL, '2020-10-26 12:46:50', NULL, NULL, NULL, NULL, NULL);
-- INSERT INTO `storage_catalog_info` VALUES ('c-center_004', 'center', '空间站运营管理中心', '/核心舱/空间站运营管理中心', NULL, 2, NULL, 'ca-cabin_001', NULL, 'true', '1', NULL, NULL, NULL, NULL, NULL, '2020-10-26 12:46:50', NULL, NULL, NULL, NULL, NULL);
-- INSERT INTO `storage_catalog_info` VALUES ('c-center_005', 'center', '运行控制中心', '/核心舱/运行控制中心', NULL, 2, NULL, 'ca-cabin_001', NULL, 'true', '1', NULL, NULL, NULL, NULL, NULL, '2020-10-26 12:46:50', NULL, NULL, NULL, NULL, NULL);
-- INSERT INTO `storage_catalog_info` VALUES ('c-center_006', 'center', '工程信息中心', NULL, NULL, 2, 1, 'ca-cabin_001', NULL, 'true', NULL, NULL, NULL, NULL, NULL, 'admin', '2020-11-18 15:26:54', NULL, NULL, NULL, NULL, '测试目录创建');
-- INSERT INTO `storage_catalog_info` VALUES ('m-main_001', 'mainType', '存档原始数据', '/核心舱/有效载荷运行管理中心/存档原始数据', NULL, 3, NULL, 'c-center_001', NULL, 'true', '1', NULL, NULL, NULL, NULL, NULL, '2020-10-26 12:46:50', NULL, NULL, NULL, NULL, NULL);
-- INSERT INTO `storage_catalog_info` VALUES ('m-main_002', 'mainType', '存档原始数据产品', '/核心舱/有效载荷运行管理中心/存档原始数据产品', NULL, 3, NULL, 'c-center_001', NULL, 'true', '1', NULL, NULL, NULL, NULL, NULL, '2020-10-26 12:46:50', NULL, NULL, NULL, NULL, NULL);
-- INSERT INTO `storage_catalog_info` VALUES ('m-main_003', 'mainType', '存档数据产品', '/核心舱/有效载荷运行管理中心/存档数据产品', NULL, 3, NULL, 'c-center_001', NULL, 'true', '1', NULL, NULL, NULL, NULL, NULL, '2020-10-26 12:46:50', NULL, NULL, NULL, NULL, NULL);
-- INSERT INTO `storage_catalog_info` VALUES ('m-main_004', 'mainType', '文件类数据', '/核心舱/有效载荷运行管理中心/文件类数据', NULL, 3, NULL, 'c-center_001', NULL, 'true', '1', NULL, NULL, NULL, NULL, NULL, '2020-10-26 12:46:50', NULL, NULL, NULL, NULL, NULL);
-- INSERT INTO `storage_catalog_info` VALUES ('m-main_005', 'mainType', '在轨飞行状态监测数据', '/核心舱/在轨航天器支持中心/在轨飞行状态监测数据', NULL, 3, NULL, 'c-center_002', NULL, 'true', '1', NULL, NULL, NULL, NULL, NULL, '2020-10-26 12:46:50', NULL, NULL, NULL, NULL, NULL);
-- INSERT INTO `storage_catalog_info` VALUES ('m-main_006', 'mainType', '在轨健康数据分析数据', '/核心舱/在轨航天器支持中心/在轨健康数据分析数据', NULL, 3, NULL, 'c-center_002', NULL, 'true', '1', NULL, NULL, NULL, NULL, NULL, '2020-10-26 12:46:50', NULL, NULL, NULL, NULL, NULL);
-- INSERT INTO `storage_catalog_info` VALUES ('m-main_007', 'mainType', '在轨-地面一体化展示模型数据', '/核心舱/在轨航天器支持中心/在轨-地面一体化展示模型数据', NULL, 3, NULL, 'c-center_002', NULL, 'true', '1', NULL, NULL, NULL, NULL, NULL, '2020-10-26 12:46:50', NULL, NULL, NULL, NULL, NULL);
-- INSERT INTO `storage_catalog_info` VALUES ('m-main_008', 'mainType', '数据深度分析模型数据', '/核心舱/在轨航天器支持中心/数据深度分析模型数据', NULL, 3, NULL, 'c-center_002', NULL, 'true', '1', NULL, NULL, NULL, NULL, NULL, '2020-10-26 12:46:50', NULL, NULL, NULL, NULL, NULL);
-- INSERT INTO `storage_catalog_info` VALUES ('m-main_009', 'mainType', '电性航天器遥测解析数据', '/核心舱/在轨航天器支持中心/电性航天器遥测解析数据', NULL, 3, NULL, 'c-center_002', NULL, 'true', '1', NULL, NULL, NULL, NULL, NULL, '2020-10-26 12:46:50', NULL, NULL, NULL, NULL, NULL);
-- INSERT INTO `storage_catalog_info` VALUES ('m-main_010', 'mainType', '电性航天器遥测判读数据', '/核心舱/在轨航天器支持中心/电性航天器遥测判读数据', NULL, 3, NULL, 'c-center_002', NULL, 'true', '1', NULL, NULL, NULL, NULL, NULL, '2020-10-26 12:46:50', NULL, NULL, NULL, NULL, NULL);
-- INSERT INTO `storage_catalog_info` VALUES ('m-main_011', 'mainType', '多航天器协同运行控制项目数据', '/核心舱/在轨航天器支持中心/多航天器协同运行控制项目数据', NULL, 3, NULL, 'c-center_002', NULL, 'true', '1', NULL, NULL, NULL, NULL, NULL, '2020-10-26 12:46:50', NULL, NULL, NULL, NULL, NULL);
-- INSERT INTO `storage_catalog_info` VALUES ('m-main_012', 'mainType', '地面测试设备启动时序控制规则数据', '/核心舱/在轨航天器支持中心/地面测试设备启动时序控制规则数据', NULL, 3, NULL, 'c-center_002', NULL, 'true', '1', NULL, NULL, NULL, NULL, NULL, '2020-10-26 12:46:50', NULL, NULL, NULL, NULL, NULL);
-- INSERT INTO `storage_catalog_info` VALUES ('m-main_013', 'mainType', '业务数据库信息数据库表', '/核心舱/在轨航天器支持中心/业务数据库信息数据库表', NULL, 3, NULL, 'c-center_002', NULL, 'true', '1', NULL, NULL, NULL, NULL, NULL, '2020-10-26 12:46:50', NULL, NULL, NULL, NULL, NULL);
-- INSERT INTO `storage_catalog_info` VALUES ('m-main_014', 'mainType', '数据成果和成果报告', '/核心舱/在轨航天器支持中心/数据成果和成果报告', NULL, 3, NULL, 'c-center_002', NULL, 'true', '1', NULL, NULL, NULL, NULL, NULL, '2020-10-26 12:46:50', NULL, NULL, NULL, NULL, NULL);
-- INSERT INTO `storage_catalog_info` VALUES ('m-main_015', 'mainType', '航天技术试验载荷源包数据', '/核心舱/在轨航天器支持中心/航天技术试验载荷源包数据', NULL, 3, NULL, 'c-center_002', NULL, 'true', '1', NULL, NULL, NULL, NULL, NULL, '2020-10-26 12:46:50', NULL, NULL, NULL, NULL, NULL);
-- INSERT INTO `storage_catalog_info` VALUES ('m-main_016', 'mainType', '空间环境预报数据文件', '/核心舱/在轨航天器支持中心/空间环境预报数据文件', NULL, 3, NULL, 'c-center_002', NULL, 'true', '1', NULL, NULL, NULL, NULL, NULL, '2020-10-26 12:46:50', NULL, NULL, NULL, NULL, NULL);
-- INSERT INTO `storage_catalog_info` VALUES ('m-main_017', 'mainType', '分类参数数据', '/核心舱/航天员支持中心/分类参数数据', NULL, 3, NULL, 'c-center_003', NULL, 'true', '1', NULL, NULL, NULL, NULL, NULL, '2020-10-26 12:46:50', NULL, NULL, NULL, NULL, NULL);
-- INSERT INTO `storage_catalog_info` VALUES ('m-main_018', 'mainType', '通用解析结果数据', '/核心舱/航天员支持中心/通用解析结果数据', NULL, 3, NULL, 'c-center_003', NULL, 'true', '1', NULL, NULL, NULL, NULL, NULL, '2020-10-26 12:46:50', NULL, NULL, NULL, NULL, NULL);
-- INSERT INTO `storage_catalog_info` VALUES ('m-main_019', 'mainType', '通用判读知识数据', '/核心舱/航天员支持中心/通用判读知识数据', NULL, 3, NULL, 'c-center_003', NULL, 'true', '1', NULL, NULL, NULL, NULL, NULL, '2020-10-26 12:46:50', NULL, NULL, NULL, NULL, NULL);
-- INSERT INTO `storage_catalog_info` VALUES ('m-main_020', 'mainType', '数据成果', '/核心舱/航天员支持中心/数据成果', NULL, 3, NULL, 'c-center_003', NULL, 'true', '1', NULL, NULL, NULL, NULL, NULL, '2020-10-26 12:46:50', NULL, NULL, NULL, NULL, NULL);
-- INSERT INTO `storage_catalog_info` VALUES ('m-main_021', 'mainType', '规划中心数据', '/核心舱/空间站运营管理中心/规划中心数据', NULL, 3, NULL, 'c-center_004', NULL, 'true', '1', NULL, NULL, NULL, NULL, NULL, '2020-10-26 12:46:50', NULL, NULL, NULL, NULL, NULL);
-- INSERT INTO `storage_catalog_info` VALUES ('m-main_022', 'mainType', '仿真中心数据', '/核心舱/空间站运营管理中心/仿真中心数据', NULL, 3, NULL, 'c-center_004', NULL, 'true', '1', NULL, NULL, NULL, NULL, NULL, '2020-10-26 12:46:50', NULL, NULL, NULL, NULL, NULL);
-- INSERT INTO `storage_catalog_info` VALUES ('m-main_023', 'mainType', '完整遥测数据', '/核心舱/运行控制中心/完整遥测数据', NULL, 3, NULL, 'c-center_005', NULL, 'true', '1', NULL, NULL, NULL, NULL, NULL, '2020-10-26 12:46:50', NULL, NULL, NULL, NULL, NULL);
-- INSERT INTO `storage_catalog_info` VALUES ('m-main_024', 'mainType', '图像话音数据', '/核心舱/运行控制中心/图像话音数据', NULL, 3, NULL, 'c-center_005', NULL, 'true', '1', NULL, NULL, NULL, NULL, NULL, '2020-10-26 12:46:50', NULL, NULL, NULL, NULL, NULL);
-- INSERT INTO `storage_catalog_info` VALUES ('m-main_025', 'mainType', '全局共享数据', '/核心舱/运行控制中心/全局共享数据', NULL, 3, NULL, 'c-center_005', NULL, 'true', '1', NULL, NULL, NULL, NULL, NULL, '2020-10-26 12:46:50', NULL, NULL, NULL, NULL, NULL);
-- INSERT INTO `storage_catalog_info` VALUES ('m-main_026', 'mainType', '专有数据', '/核心舱/运行控制中心/专有数据', NULL, 3, NULL, 'c-center_005', NULL, 'true', '1', NULL, NULL, NULL, NULL, NULL, '2020-10-26 12:46:50', NULL, NULL, NULL, NULL, NULL);
-- INSERT INTO `storage_catalog_info` VALUES ('m-main_027', 'mainType', '数据成果', '/核心舱/运行控制中心/数据成果', NULL, 3, NULL, 'c-center_005', NULL, 'true', '1', NULL, NULL, NULL, NULL, NULL, '2020-10-26 12:46:50', NULL, NULL, NULL, NULL, NULL);
-- INSERT INTO `storage_catalog_info` VALUES ('m-main_028', 'mainType', '测试大类', NULL, NULL, 3, 1, 'c-center_006', NULL, 'true', NULL, NULL, NULL, NULL, NULL, 'admin', '2020-11-18 15:27:35', NULL, NULL, NULL, NULL, '测试目录创建');
-- INSERT INTO `storage_catalog_info` VALUES ('s-sub_001', 'subType', '存档原始数据元信息数据库表信息', '/核心舱/有效载荷运行管理中心/存档原始数据/存档原始数据元信息数据库表信息', NULL, 4, NULL, 'm-main_001', NULL, 'true', '1', NULL, NULL, NULL, NULL, NULL, '2020-10-26 12:46:50', NULL, NULL, NULL, NULL, NULL);
-- INSERT INTO `storage_catalog_info` VALUES ('s-sub_002', 'subType', '存档原始数据文件元信息数据库表信息', '/核心舱/有效载荷运行管理中心/存档原始数据产品/存档原始数据文件元信息数据库表信息', NULL, 4, NULL, 'm-main_002', NULL, 'true', '1', NULL, NULL, NULL, NULL, NULL, '2020-10-26 12:46:50', NULL, NULL, NULL, NULL, NULL);
-- INSERT INTO `storage_catalog_info` VALUES ('s-sub_003', 'subType', '航天医学实验领域元信息数据库表信息', '/核心舱/有效载荷运行管理中心/存档数据产品/航天医学实验领域元信息数据库表信息', NULL, 4, NULL, 'm-main_003', NULL, 'true', '1', NULL, NULL, NULL, NULL, NULL, '2020-10-26 12:46:50', NULL, NULL, NULL, NULL, NULL);
-- INSERT INTO `storage_catalog_info` VALUES ('s-sub_004', 'subType', '航天技术试验领域元信息数据库表信息', '/核心舱/有效载荷运行管理中心/存档数据产品/航天技术试验领域元信息数据库表信息', NULL, 4, NULL, 'm-main_003', NULL, 'true', '1', NULL, NULL, NULL, NULL, NULL, '2020-10-26 12:46:50', NULL, NULL, NULL, NULL, NULL);
-- INSERT INTO `storage_catalog_info` VALUES ('s-sub_005', 'subType', '空间科学与应用领域元信息数据库表信息', '/核心舱/有效载荷运行管理中心/存档数据产品/空间科学与应用领域元信息数据库表信息', NULL, 4, NULL, 'm-main_003', NULL, 'true', '1', NULL, NULL, NULL, NULL, NULL, '2020-10-26 12:46:50', NULL, NULL, NULL, NULL, NULL);
-- INSERT INTO `storage_catalog_info` VALUES ('s-sub_006', 'subType', '空间环境预报数据文件元信息数据库表信息', '/核心舱/有效载荷运行管理中心/存档数据产品/空间环境预报数据文件元信息数据库表信息', NULL, 4, NULL, 'm-main_003', NULL, 'true', '1', NULL, NULL, NULL, NULL, NULL, '2020-10-26 12:46:50', NULL, NULL, NULL, NULL, NULL);
-- INSERT INTO `storage_catalog_info` VALUES ('s-sub_007', 'subType', '载荷工作计划等电文类数据元信息库表', '/核心舱/有效载荷运行管理中心/文件类数据/载荷工作计划等电文类数据元信息库表', NULL, 4, NULL, 'm-main_004', NULL, 'true', '1', NULL, NULL, NULL, NULL, NULL, '2020-10-26 12:46:50', NULL, NULL, NULL, NULL, NULL);
-- INSERT INTO `storage_catalog_info` VALUES ('s-sub_008', 'subType', '数据成果和成果报告描述信息', '/核心舱/有效载荷运行管理中心/文件类数据/数据成果和成果报告描述信息', NULL, 4, NULL, 'm-main_004', NULL, 'true', '1', NULL, NULL, NULL, NULL, NULL, '2020-10-26 12:46:50', NULL, NULL, NULL, NULL, NULL);
-- INSERT INTO `storage_catalog_info` VALUES ('s-sub_009', 'subType', '在轨飞行状态监测数据文件元信息表-事件监测信息表', '/核心舱/在轨航天器支持中心/在轨飞行状态监测数据/在轨飞行状态监测数据文件元信息表-事件监测信息表', NULL, 4, NULL, 'm-main_005', NULL, 'true', '1', NULL, NULL, NULL, NULL, NULL, '2020-10-26 12:46:50', NULL, NULL, NULL, NULL, NULL);
-- INSERT INTO `storage_catalog_info` VALUES ('s-sub_010', 'subType', '在轨飞行状态监测数据文件元信息表-状态监测信息表', '/核心舱/在轨航天器支持中心/在轨飞行状态监测数据/在轨飞行状态监测数据文件元信息表-状态监测信息表', NULL, 4, NULL, 'm-main_005', NULL, 'true', '1', NULL, NULL, NULL, NULL, NULL, '2020-10-26 12:46:50', NULL, NULL, NULL, NULL, NULL);
-- INSERT INTO `storage_catalog_info` VALUES ('s-sub_011', 'subType', '在轨健康数据分析数据库表', '/核心舱/在轨航天器支持中心/在轨健康数据分析数据/在轨健康数据分析数据库表', NULL, 4, NULL, 'm-main_006', NULL, 'true', '1', NULL, NULL, NULL, NULL, NULL, '2020-10-26 12:46:50', NULL, NULL, NULL, NULL, NULL);
-- INSERT INTO `storage_catalog_info` VALUES ('s-sub_012', 'subType', '在轨-地面一体化展示模型库-地面点表信息', '/核心舱/在轨航天器支持中心/在轨-地面一体化展示模型数据/在轨-地面一体化展示模型库-地面点表信息', NULL, 4, NULL, 'm-main_007', NULL, 'true', '1', NULL, NULL, NULL, NULL, NULL, '2020-10-26 12:46:50', NULL, NULL, NULL, NULL, NULL);
-- INSERT INTO `storage_catalog_info` VALUES ('s-sub_013', 'subType', '在轨-地面一体化展示模型库-地面点表信息', '/核心舱/在轨航天器支持中心/在轨-地面一体化展示模型数据/在轨-地面一体化展示模型库-地面点表信息', NULL, 4, NULL, 'm-main_007', NULL, 'true', '1', NULL, NULL, NULL, NULL, NULL, '2020-10-26 12:46:50', NULL, NULL, NULL, NULL, NULL);
-- INSERT INTO `storage_catalog_info` VALUES ('s-sub_014', 'subType', '数据深度分析模型数据库-数据清洗表', '/核心舱/在轨航天器支持中心/数据深度分析模型数据/数据深度分析模型数据库-数据清洗表', NULL, 4, NULL, 'm-main_008', NULL, 'true', '1', NULL, NULL, NULL, NULL, NULL, '2020-10-26 12:46:50', NULL, NULL, NULL, NULL, NULL);
-- INSERT INTO `storage_catalog_info` VALUES ('s-sub_015', 'subType', '数据深度分析模型数据库--数据模型表', '/核心舱/在轨航天器支持中心/数据深度分析模型数据/数据深度分析模型数据库--数据模型表', NULL, 4, NULL, 'm-main_008', NULL, 'true', '1', NULL, NULL, NULL, NULL, NULL, '2020-10-26 12:46:50', NULL, NULL, NULL, NULL, NULL);
-- INSERT INTO `storage_catalog_info` VALUES ('s-sub_016', 'subType', '数据深度分析模型数据库--数据模型表', '/核心舱/在轨航天器支持中心/数据深度分析模型数据/数据深度分析模型数据库--数据模型表', NULL, 4, NULL, 'm-main_008', NULL, 'true', '1', NULL, NULL, NULL, NULL, NULL, '2020-10-26 12:46:50', NULL, NULL, NULL, NULL, NULL);
-- INSERT INTO `storage_catalog_info` VALUES ('s-sub_017', 'subType', '电性航天器遥测解析数据库', '/核心舱/在轨航天器支持中心/电性航天器遥测解析数据/电性航天器遥测解析数据库', NULL, 4, NULL, 'm-main_009', NULL, 'true', '1', NULL, NULL, NULL, NULL, NULL, '2020-10-26 12:46:50', NULL, NULL, NULL, NULL, NULL);
-- INSERT INTO `storage_catalog_info` VALUES ('s-sub_018', 'subType', '电性航天器遥测判读数据库', '/核心舱/在轨航天器支持中心/电性航天器遥测判读数据/电性航天器遥测判读数据库', NULL, 4, NULL, 'm-main_010', NULL, 'true', '1', NULL, NULL, NULL, NULL, NULL, '2020-10-26 12:46:50', NULL, NULL, NULL, NULL, NULL);
-- INSERT INTO `storage_catalog_info` VALUES ('s-sub_019', 'subType', '多航天器协同运行控制项目数据库', '/核心舱/在轨航天器支持中心/多航天器协同运行控制项目数据/多航天器协同运行控制项目数据库', NULL, 4, NULL, 'm-main_011', NULL, 'true', '1', NULL, NULL, NULL, NULL, NULL, '2020-10-26 12:46:50', NULL, NULL, NULL, NULL, NULL);
-- INSERT INTO `storage_catalog_info` VALUES ('s-sub_020', 'subType', '地面测试设备启动时序控制规则数据库', '/核心舱/在轨航天器支持中心/地面测试设备启动时序控制规则数据/地面测试设备启动时序控制规则数据库', NULL, 4, NULL, 'm-main_012', NULL, 'true', '1', NULL, NULL, NULL, NULL, NULL, '2020-10-26 12:46:50', NULL, NULL, NULL, NULL, NULL);
-- INSERT INTO `storage_catalog_info` VALUES ('s-sub_021', 'subType', '业务数据库信息数据库表', '/核心舱/在轨航天器支持中心/业务数据库信息数据库表/业务数据库信息数据库表', NULL, 4, NULL, 'm-main_013', NULL, 'true', '1', NULL, NULL, NULL, NULL, NULL, '2020-10-26 12:46:50', NULL, NULL, NULL, NULL, NULL);
-- INSERT INTO `storage_catalog_info` VALUES ('s-sub_022', 'subType', '数据成果和成果报告描述信息', '/核心舱/在轨航天器支持中心/数据成果和成果报告/数据成果和成果报告描述信息', NULL, 4, NULL, 'm-main_014', NULL, 'true', '1', NULL, NULL, NULL, NULL, NULL, '2020-10-26 12:46:50', NULL, NULL, NULL, NULL, NULL);
-- INSERT INTO `storage_catalog_info` VALUES ('s-sub_023', 'subType', '航天技术试验0级数据通知描述信息', '/核心舱/在轨航天器支持中心/航天技术试验载荷源包数据/航天技术试验0级数据通知描述信息', NULL, 4, NULL, 'm-main_015', NULL, 'true', '1', NULL, NULL, NULL, NULL, NULL, '2020-10-26 12:46:50', NULL, NULL, NULL, NULL, NULL);
-- INSERT INTO `storage_catalog_info` VALUES ('s-sub_024', 'subType', '空间环境预报数据通知描述信息', '/核心舱/在轨航天器支持中心/空间环境预报数据文件/空间环境预报数据通知描述信息', NULL, 4, NULL, 'm-main_016', NULL, 'true', '1', NULL, NULL, NULL, NULL, NULL, '2020-10-26 12:46:50', NULL, NULL, NULL, NULL, NULL);
-- INSERT INTO `storage_catalog_info` VALUES ('s-sub_025', 'subType', '医学信息综合管理主机参数数据表', '/核心舱/航天员支持中心/分类参数数据/医学信息综合管理主机参数数据表', NULL, 4, NULL, 'm-main_017', NULL, 'true', '1', NULL, NULL, NULL, NULL, NULL, '2020-10-26 12:46:50', NULL, NULL, NULL, NULL, NULL);
-- INSERT INTO `storage_catalog_info` VALUES ('s-sub_026', 'subType', '医学设备电源管理装置数据表', '/核心舱/航天员支持中心/分类参数数据/医学设备电源管理装置数据表', NULL, 4, NULL, 'm-main_017', NULL, 'true', '1', NULL, NULL, NULL, NULL, NULL, '2020-10-26 12:46:50', NULL, NULL, NULL, NULL, NULL);
-- INSERT INTO `storage_catalog_info` VALUES ('s-sub_027', 'subType', '医学信息通信接口装置数据表', '/核心舱/航天员支持中心/分类参数数据/医学信息通信接口装置数据表', NULL, 4, NULL, 'm-main_017', NULL, 'true', '1', NULL, NULL, NULL, NULL, NULL, '2020-10-26 12:46:50', NULL, NULL, NULL, NULL, NULL);
-- INSERT INTO `storage_catalog_info` VALUES ('s-sub_028', 'subType', '综合充电装置数据表', '/核心舱/航天员支持中心/分类参数数据/综合充电装置数据表', NULL, 4, NULL, 'm-main_017', NULL, 'true', '1', NULL, NULL, NULL, NULL, NULL, '2020-10-26 12:46:50', NULL, NULL, NULL, NULL, NULL);
-- INSERT INTO `storage_catalog_info` VALUES ('s-sub_029', 'subType', '神经肌肉刺激仪数据表', '/核心舱/航天员支持中心/分类参数数据/神经肌肉刺激仪数据表', NULL, 4, NULL, 'm-main_017', NULL, 'true', '1', NULL, NULL, NULL, NULL, NULL, '2020-10-26 12:46:50', NULL, NULL, NULL, NULL, NULL);
-- INSERT INTO `storage_catalog_info` VALUES ('s-sub_030', 'subType', '太空跑台数据表', '/核心舱/航天员支持中心/分类参数数据/太空跑台数据表', NULL, 4, NULL, 'm-main_017', NULL, 'true', '1', NULL, NULL, NULL, NULL, NULL, '2020-10-26 12:46:50', NULL, NULL, NULL, NULL, NULL);
-- INSERT INTO `storage_catalog_info` VALUES ('s-sub_031', 'subType', '太空自行车数据表', '/核心舱/航天员支持中心/分类参数数据/太空自行车数据表', NULL, 4, NULL, 'm-main_017', NULL, 'true', '1', NULL, NULL, NULL, NULL, NULL, '2020-10-26 12:46:50', NULL, NULL, NULL, NULL, NULL);
-- INSERT INTO `storage_catalog_info` VALUES ('s-sub_032', 'subType', '微重力抗阻锻炼装置数据表', '/核心舱/航天员支持中心/分类参数数据/微重力抗阻锻炼装置数据表', NULL, 4, NULL, 'm-main_017', NULL, 'true', '1', NULL, NULL, NULL, NULL, NULL, '2020-10-26 12:46:50', NULL, NULL, NULL, NULL, NULL);
-- INSERT INTO `storage_catalog_info` VALUES ('s-sub_033', 'subType', '微波加热装置数据表', '/核心舱/航天员支持中心/分类参数数据/微波加热装置数据表', NULL, 4, NULL, 'm-main_017', NULL, 'true', '1', NULL, NULL, NULL, NULL, NULL, '2020-10-26 12:46:50', NULL, NULL, NULL, NULL, NULL);
-- INSERT INTO `storage_catalog_info` VALUES ('s-sub_034', 'subType', '热风加热装置数据表', '/核心舱/航天员支持中心/分类参数数据/热风加热装置数据表', NULL, 4, NULL, 'm-main_017', NULL, 'true', '1', NULL, NULL, NULL, NULL, NULL, '2020-10-26 12:46:50', NULL, NULL, NULL, NULL, NULL);
-- INSERT INTO `storage_catalog_info` VALUES ('s-sub_035', 'subType', '饮水分配器数据表', '/核心舱/航天员支持中心/分类参数数据/饮水分配器数据表', NULL, 4, NULL, 'm-main_017', NULL, 'true', '1', NULL, NULL, NULL, NULL, NULL, '2020-10-26 12:46:50', NULL, NULL, NULL, NULL, NULL);
-- INSERT INTO `storage_catalog_info` VALUES ('s-sub_036', 'subType', '食品冷藏箱数据表', '/核心舱/航天员支持中心/分类参数数据/食品冷藏箱数据表', NULL, 4, NULL, 'm-main_017', NULL, 'true', '1', NULL, NULL, NULL, NULL, NULL, '2020-10-26 12:46:50', NULL, NULL, NULL, NULL, NULL);
-- INSERT INTO `storage_catalog_info` VALUES ('s-sub_037', 'subType', '人体辐射剂量当量仪数据表', '/核心舱/航天员支持中心/分类参数数据/人体辐射剂量当量仪数据表', NULL, 4, NULL, 'm-main_017', NULL, 'true', '1', NULL, NULL, NULL, NULL, NULL, '2020-10-26 12:46:50', NULL, NULL, NULL, NULL, NULL);
-- INSERT INTO `storage_catalog_info` VALUES ('s-sub_038', 'subType', '人系统研究机柜下传数字量遥测数据表', '/核心舱/航天员支持中心/分类参数数据/人系统研究机柜下传数字量遥测数据表', NULL, 4, NULL, 'm-main_017', NULL, 'true', '1', NULL, NULL, NULL, NULL, NULL, '2020-10-26 12:46:50', NULL, NULL, NULL, NULL, NULL);
-- INSERT INTO `storage_catalog_info` VALUES ('s-sub_039', 'subType', '太空医学样本冷藏箱工程数据表', '/核心舱/航天员支持中心/分类参数数据/太空医学样本冷藏箱工程数据表', NULL, 4, NULL, 'm-main_017', NULL, 'true', '1', NULL, NULL, NULL, NULL, NULL, '2020-10-26 12:46:50', NULL, NULL, NULL, NULL, NULL);
-- INSERT INTO `storage_catalog_info` VALUES ('s-sub_040', 'subType', '舱外服舱载电气综合控制台参数数据表', '/核心舱/航天员支持中心/分类参数数据/舱外服舱载电气综合控制台参数数据表', NULL, 4, NULL, 'm-main_017', NULL, 'true', '1', NULL, NULL, NULL, NULL, NULL, '2020-10-26 12:46:50', NULL, NULL, NULL, NULL, NULL);
-- INSERT INTO `storage_catalog_info` VALUES ('s-sub_041', 'subType', '出舱通信处理器代传（无线）参数数据表', '/核心舱/航天员支持中心/分类参数数据/出舱通信处理器代传（无线）参数数据表', NULL, 4, NULL, 'm-main_017', NULL, 'true', '1', NULL, NULL, NULL, NULL, NULL, '2020-10-26 12:46:50', NULL, NULL, NULL, NULL, NULL);
-- INSERT INTO `storage_catalog_info` VALUES ('s-sub_042', 'subType', '电池充放电装置参数数据表', '/核心舱/航天员支持中心/分类参数数据/电池充放电装置参数数据表', NULL, 4, NULL, 'm-main_017', NULL, 'true', '1', NULL, NULL, NULL, NULL, NULL, '2020-10-26 12:46:50', NULL, NULL, NULL, NULL, NULL);
-- INSERT INTO `storage_catalog_info` VALUES ('s-sub_043', 'subType', '生理数据文件表', '/核心舱/航天员支持中心/分类参数数据/生理数据文件表', NULL, 4, NULL, 'm-main_017', NULL, 'true', '1', NULL, NULL, NULL, NULL, NULL, '2020-10-26 12:46:50', NULL, NULL, NULL, NULL, NULL);
-- INSERT INTO `storage_catalog_info` VALUES ('s-sub_044', 'subType', '航天医学实验数据文件表', '/核心舱/航天员支持中心/分类参数数据/航天医学实验数据文件表', NULL, 4, NULL, 'm-main_017', NULL, 'true', '1', NULL, NULL, NULL, NULL, NULL, '2020-10-26 12:46:50', NULL, NULL, NULL, NULL, NULL);
-- INSERT INTO `storage_catalog_info` VALUES ('s-sub_045', 'subType', '微量气体检测装置数据文件表', '/核心舱/航天员支持中心/分类参数数据/微量气体检测装置数据文件表', NULL, 4, NULL, 'm-main_017', NULL, 'true', '1', NULL, NULL, NULL, NULL, NULL, '2020-10-26 12:46:50', NULL, NULL, NULL, NULL, NULL);
-- INSERT INTO `storage_catalog_info` VALUES ('s-sub_046', 'subType', '舱外服上注传感器系数数据文件表', '/核心舱/航天员支持中心/分类参数数据/舱外服上注传感器系数数据文件表', NULL, 4, NULL, 'm-main_017', NULL, 'true', '1', NULL, NULL, NULL, NULL, NULL, '2020-10-26 12:46:50', NULL, NULL, NULL, NULL, NULL);
-- INSERT INTO `storage_catalog_info` VALUES ('s-sub_047', 'subType', '航天员支持中心文件清单表', '/核心舱/航天员支持中心/分类参数数据/航天员支持中心文件清单表', NULL, 4, NULL, 'm-main_017', NULL, 'true', '1', NULL, NULL, NULL, NULL, NULL, '2020-10-26 12:46:50', NULL, NULL, NULL, NULL, NULL);
-- INSERT INTO `storage_catalog_info` VALUES ('s-sub_048', 'subType', '环控生保分系统注入数据文件表', '/核心舱/航天员支持中心/分类参数数据/环控生保分系统注入数据文件表', NULL, 4, NULL, 'm-main_017', NULL, 'true', '1', NULL, NULL, NULL, NULL, NULL, '2020-10-26 12:46:50', NULL, NULL, NULL, NULL, NULL);
-- INSERT INTO `storage_catalog_info` VALUES ('s-sub_049', 'subType', '环控生保分系统小结报告数据文件表', '/核心舱/航天员支持中心/分类参数数据/环控生保分系统小结报告数据文件表', NULL, 4, NULL, 'm-main_017', NULL, 'true', '1', NULL, NULL, NULL, NULL, NULL, '2020-10-26 12:46:50', NULL, NULL, NULL, NULL, NULL);
-- INSERT INTO `storage_catalog_info` VALUES ('s-sub_050', 'subType', '微量气体检测装置数据文件表', '/核心舱/航天员支持中心/分类参数数据/微量气体检测装置数据文件表', NULL, 4, NULL, 'm-main_017', NULL, 'true', '1', NULL, NULL, NULL, NULL, NULL, '2020-10-26 12:46:50', NULL, NULL, NULL, NULL, NULL);
-- INSERT INTO `storage_catalog_info` VALUES ('s-sub_051', 'subType', '航天器信息表', '/核心舱/航天员支持中心/通用解析结果数据/航天器信息表', NULL, 4, NULL, 'm-main_018', NULL, 'true', '1', NULL, NULL, NULL, NULL, NULL, '2020-10-26 12:46:50', NULL, NULL, NULL, NULL, NULL);
-- INSERT INTO `storage_catalog_info` VALUES ('s-sub_052', 'subType', '分系统信息表', '/核心舱/航天员支持中心/通用解析结果数据/分系统信息表', NULL, 4, NULL, 'm-main_018', NULL, 'true', '1', NULL, NULL, NULL, NULL, NULL, '2020-10-26 12:46:50', NULL, NULL, NULL, NULL, NULL);
-- INSERT INTO `storage_catalog_info` VALUES ('s-sub_053', 'subType', '数据流信息表', '/核心舱/航天员支持中心/通用解析结果数据/数据流信息表', NULL, 4, NULL, 'm-main_018', NULL, 'true', '1', NULL, NULL, NULL, NULL, NULL, '2020-10-26 12:46:50', NULL, NULL, NULL, NULL, NULL);
-- INSERT INTO `storage_catalog_info` VALUES ('s-sub_054', 'subType', '参数信息表', '/核心舱/航天员支持中心/通用解析结果数据/参数信息表', NULL, 4, NULL, 'm-main_018', NULL, 'true', '1', NULL, NULL, NULL, NULL, NULL, '2020-10-26 12:46:50', NULL, NULL, NULL, NULL, NULL);
-- INSERT INTO `storage_catalog_info` VALUES ('s-sub_055', 'subType', '指令信息表', '/核心舱/航天员支持中心/通用解析结果数据/指令信息表', NULL, 4, NULL, 'm-main_018', NULL, 'true', '1', NULL, NULL, NULL, NULL, NULL, '2020-10-26 12:46:50', NULL, NULL, NULL, NULL, NULL);
-- INSERT INTO `storage_catalog_info` VALUES ('s-sub_056', 'subType', '源码表', '/核心舱/航天员支持中心/通用解析结果数据/源码表', NULL, 4, NULL, 'm-main_018', NULL, 'true', '1', NULL, NULL, NULL, NULL, NULL, '2020-10-26 12:46:50', NULL, NULL, NULL, NULL, NULL);
-- INSERT INTO `storage_catalog_info` VALUES ('s-sub_057', 'subType', '解析结果表', '/核心舱/航天员支持中心/通用解析结果数据/解析结果表', NULL, 4, NULL, 'm-main_018', NULL, 'true', '1', NULL, NULL, NULL, NULL, NULL, '2020-10-26 12:46:50', NULL, NULL, NULL, NULL, NULL);
-- INSERT INTO `storage_catalog_info` VALUES ('s-sub_058', 'subType', '测试过程表', '/核心舱/航天员支持中心/通用解析结果数据/测试过程表', NULL, 4, NULL, 'm-main_018', NULL, 'true', '1', NULL, NULL, NULL, NULL, NULL, '2020-10-26 12:46:50', NULL, NULL, NULL, NULL, NULL);
-- INSERT INTO `storage_catalog_info` VALUES ('s-sub_059', 'subType', '航天器信息表', '/核心舱/航天员支持中心/通用判读知识数据/航天器信息表', NULL, 4, NULL, 'm-main_019', NULL, 'true', '1', NULL, NULL, NULL, NULL, NULL, '2020-10-26 12:46:50', NULL, NULL, NULL, NULL, NULL);
-- INSERT INTO `storage_catalog_info` VALUES ('s-sub_060', 'subType', '分系统信息表', '/核心舱/航天员支持中心/通用判读知识数据/分系统信息表', NULL, 4, NULL, 'm-main_019', NULL, 'true', '1', NULL, NULL, NULL, NULL, NULL, '2020-10-26 12:46:50', NULL, NULL, NULL, NULL, NULL);
-- INSERT INTO `storage_catalog_info` VALUES ('s-sub_061', 'subType', '数据流信息表', '/核心舱/航天员支持中心/通用判读知识数据/数据流信息表', NULL, 4, NULL, 'm-main_019', NULL, 'true', '1', NULL, NULL, NULL, NULL, NULL, '2020-10-26 12:46:50', NULL, NULL, NULL, NULL, NULL);
-- INSERT INTO `storage_catalog_info` VALUES ('s-sub_062', 'subType', '参数信息表', '/核心舱/航天员支持中心/通用判读知识数据/参数信息表', NULL, 4, NULL, 'm-main_019', NULL, 'true', '1', NULL, NULL, NULL, NULL, NULL, '2020-10-26 12:46:50', NULL, NULL, NULL, NULL, NULL);
-- INSERT INTO `storage_catalog_info` VALUES ('s-sub_063', 'subType', '指令信息表', '/核心舱/航天员支持中心/通用判读知识数据/指令信息表', NULL, 4, NULL, 'm-main_019', NULL, 'true', '1', NULL, NULL, NULL, NULL, NULL, '2020-10-26 12:46:50', NULL, NULL, NULL, NULL, NULL);
-- INSERT INTO `storage_catalog_info` VALUES ('s-sub_064', 'subType', '用户权限信息表', '/核心舱/航天员支持中心/通用判读知识数据/用户权限信息表', NULL, 4, NULL, 'm-main_019', NULL, 'true', '1', NULL, NULL, NULL, NULL, NULL, '2020-10-26 12:46:50', NULL, NULL, NULL, NULL, NULL);
-- INSERT INTO `storage_catalog_info` VALUES ('s-sub_065', 'subType', '用户信息表', '/核心舱/航天员支持中心/通用判读知识数据/用户信息表', NULL, 4, NULL, 'm-main_019', NULL, 'true', '1', NULL, NULL, NULL, NULL, NULL, '2020-10-26 12:46:50', NULL, NULL, NULL, NULL, NULL);
-- INSERT INTO `storage_catalog_info` VALUES ('s-sub_066', 'subType', '系统关键时间信息表', '/核心舱/航天员支持中心/通用判读知识数据/系统关键时间信息表', NULL, 4, NULL, 'm-main_019', NULL, 'true', '1', NULL, NULL, NULL, NULL, NULL, '2020-10-26 12:46:50', NULL, NULL, NULL, NULL, NULL);
-- INSERT INTO `storage_catalog_info` VALUES ('s-sub_067', 'subType', '全局变量表', '/核心舱/航天员支持中心/通用判读知识数据/全局变量表', NULL, 4, NULL, 'm-main_019', NULL, 'true', '1', NULL, NULL, NULL, NULL, NULL, '2020-10-26 12:46:50', NULL, NULL, NULL, NULL, NULL);
-- INSERT INTO `storage_catalog_info` VALUES ('s-sub_068', 'subType', '指令作用效果表', '/核心舱/航天员支持中心/通用判读知识数据/指令作用效果表', NULL, 4, NULL, 'm-main_019', NULL, 'true', '1', NULL, NULL, NULL, NULL, NULL, '2020-10-26 12:46:50', NULL, NULL, NULL, NULL, NULL);
-- INSERT INTO `storage_catalog_info` VALUES ('s-sub_069', 'subType', '指令干扰参数信息表', '/核心舱/航天员支持中心/通用判读知识数据/指令干扰参数信息表', NULL, 4, NULL, 'm-main_019', NULL, 'true', '1', NULL, NULL, NULL, NULL, NULL, '2020-10-26 12:46:50', NULL, NULL, NULL, NULL, NULL);
-- INSERT INTO `storage_catalog_info` VALUES ('s-sub_070', 'subType', '指令识别依赖参数信息表', '/核心舱/航天员支持中心/通用判读知识数据/指令识别依赖参数信息表', NULL, 4, NULL, 'm-main_019', NULL, 'true', '1', NULL, NULL, NULL, NULL, NULL, '2020-10-26 12:46:50', NULL, NULL, NULL, NULL, NULL);
-- INSERT INTO `storage_catalog_info` VALUES ('s-sub_071', 'subType', '参数识别指令信息表', '/核心舱/航天员支持中心/通用判读知识数据/参数识别指令信息表', NULL, 4, NULL, 'm-main_019', NULL, 'true', '1', NULL, NULL, NULL, NULL, NULL, '2020-10-26 12:46:50', NULL, NULL, NULL, NULL, NULL);
-- INSERT INTO `storage_catalog_info` VALUES ('s-sub_072', 'subType', '参数判读知识信息表', '/核心舱/航天员支持中心/通用判读知识数据/参数判读知识信息表', NULL, 4, NULL, 'm-main_019', NULL, 'true', '1', NULL, NULL, NULL, NULL, NULL, '2020-10-26 12:46:50', NULL, NULL, NULL, NULL, NULL);
-- INSERT INTO `storage_catalog_info` VALUES ('s-sub_073', 'subType', '参数判读结论信息表', '/核心舱/航天员支持中心/通用判读知识数据/参数判读结论信息表', NULL, 4, NULL, 'm-main_019', NULL, 'true', '1', NULL, NULL, NULL, NULL, NULL, '2020-10-26 12:46:50', NULL, NULL, NULL, NULL, NULL);
-- INSERT INTO `storage_catalog_info` VALUES ('s-sub_074', 'subType', '指令判读结论信息表', '/核心舱/航天员支持中心/通用判读知识数据/指令判读结论信息表', NULL, 4, NULL, 'm-main_019', NULL, 'true', '1', NULL, NULL, NULL, NULL, NULL, '2020-10-26 12:46:50', NULL, NULL, NULL, NULL, NULL);
-- INSERT INTO `storage_catalog_info` VALUES ('s-sub_075', 'subType', '指令参数识别记录表', '/核心舱/航天员支持中心/通用判读知识数据/指令参数识别记录表', NULL, 4, NULL, 'm-main_019', NULL, 'true', '1', NULL, NULL, NULL, NULL, NULL, '2020-10-26 12:46:50', NULL, NULL, NULL, NULL, NULL);
-- INSERT INTO `storage_catalog_info` VALUES ('s-sub_076', 'subType', '人工干预表', '/核心舱/航天员支持中心/通用判读知识数据/人工干预表', NULL, 4, NULL, 'm-main_019', NULL, 'true', '1', NULL, NULL, NULL, NULL, NULL, '2020-10-26 12:46:50', NULL, NULL, NULL, NULL, NULL);
-- INSERT INTO `storage_catalog_info` VALUES ('s-sub_077', 'subType', '通报信息表', '/核心舱/航天员支持中心/通用判读知识数据/通报信息表', NULL, 4, NULL, 'm-main_019', NULL, 'true', '1', NULL, NULL, NULL, NULL, NULL, '2020-10-26 12:46:50', NULL, NULL, NULL, NULL, NULL);
-- INSERT INTO `storage_catalog_info` VALUES ('s-sub_078', 'subType', '数据成果和成果报告文件元信息表', '/核心舱/航天员支持中心/数据成果/数据成果和成果报告文件元信息表', NULL, 4, NULL, 'm-main_020', NULL, 'true', '1', NULL, NULL, NULL, NULL, NULL, '2020-10-26 12:46:50', NULL, NULL, NULL, NULL, NULL);
-- INSERT INTO `storage_catalog_info` VALUES ('s-sub_079', 'subType', '空间站规划数据文件元信息表', '/核心舱/空间站运营管理中心/规划中心数据/空间站规划数据文件元信息表', NULL, 4, NULL, 'm-main_021', NULL, 'true', '1', NULL, NULL, NULL, NULL, NULL, '2020-10-26 12:46:50', NULL, NULL, NULL, NULL, NULL);
-- INSERT INTO `storage_catalog_info` VALUES ('s-sub_080', 'subType', '空间站规划数据文件标志定义表', '/核心舱/空间站运营管理中心/规划中心数据/空间站规划数据文件标志定义表', NULL, 4, NULL, 'm-main_021', NULL, 'true', '1', NULL, NULL, NULL, NULL, NULL, '2020-10-26 12:46:50', NULL, NULL, NULL, NULL, NULL);
-- INSERT INTO `storage_catalog_info` VALUES ('s-sub_081', 'subType', '数据成果和成果报告文件元信息表', '/核心舱/空间站运营管理中心/规划中心数据/数据成果和成果报告文件元信息表', NULL, 4, NULL, 'm-main_021', NULL, 'true', '1', NULL, NULL, NULL, NULL, NULL, '2020-10-26 12:46:50', NULL, NULL, NULL, NULL, NULL);
-- INSERT INTO `storage_catalog_info` VALUES ('s-sub_082', 'subType', '其他存档数据文件元信息表', '/核心舱/空间站运营管理中心/规划中心数据/其他存档数据文件元信息表', NULL, 4, NULL, 'm-main_021', NULL, 'true', '1', NULL, NULL, NULL, NULL, NULL, '2020-10-26 12:46:50', NULL, NULL, NULL, NULL, NULL);
-- INSERT INTO `storage_catalog_info` VALUES ('s-sub_083', 'subType', '仿真模型文件元信息表', '/核心舱/空间站运营管理中心/仿真中心数据/仿真模型文件元信息表', NULL, 4, NULL, 'm-main_022', NULL, 'true', '1', NULL, NULL, NULL, NULL, NULL, '2020-10-26 12:46:50', NULL, NULL, NULL, NULL, NULL);
-- INSERT INTO `storage_catalog_info` VALUES ('s-sub_084', 'subType', '数据成果和成果报告文件元信息表', '/核心舱/空间站运营管理中心/仿真中心数据/数据成果和成果报告文件元信息表', NULL, 4, NULL, 'm-main_022', NULL, 'true', '1', NULL, NULL, NULL, NULL, NULL, '2020-10-26 12:46:50', NULL, NULL, NULL, NULL, NULL);
-- INSERT INTO `storage_catalog_info` VALUES ('s-sub_085', 'subType', '其他存档数据文件元信息表', '/核心舱/空间站运营管理中心/仿真中心数据/其他存档数据文件元信息表', NULL, 4, NULL, 'm-main_022', NULL, 'true', '1', NULL, NULL, NULL, NULL, NULL, '2020-10-26 12:46:50', NULL, NULL, NULL, NULL, NULL);
-- INSERT INTO `storage_catalog_info` VALUES ('s-sub_086', 'subType', '完整遥测数据库表信息', '/核心舱/运行控制中心/完整遥测数据/完整遥测数据库表信息', NULL, 4, NULL, 'm-main_023', NULL, 'true', '1', NULL, NULL, NULL, NULL, NULL, '2020-10-26 12:46:50', NULL, NULL, NULL, NULL, NULL);
-- INSERT INTO `storage_catalog_info` VALUES ('s-sub_087', 'subType', '数据库表说明信息', '/核心舱/运行控制中心/完整遥测数据/数据库表说明信息', NULL, 4, NULL, 'm-main_023', NULL, 'true', '1', NULL, NULL, NULL, NULL, NULL, '2020-10-26 12:46:50', NULL, NULL, NULL, NULL, NULL);
-- INSERT INTO `storage_catalog_info` VALUES ('s-sub_088', 'subType', '遥测参数说明信息', '/核心舱/运行控制中心/完整遥测数据/遥测参数说明信息', NULL, 4, NULL, 'm-main_023', NULL, 'true', '1', NULL, NULL, NULL, NULL, NULL, '2020-10-26 12:46:50', NULL, NULL, NULL, NULL, NULL);
-- INSERT INTO `storage_catalog_info` VALUES ('s-sub_089', 'subType', '图像、话音数据文件元信息表', '/核心舱/运行控制中心/图像话音数据/图像、话音数据文件元信息表', NULL, 4, NULL, 'm-main_024', NULL, 'true', '1', NULL, NULL, NULL, NULL, NULL, '2020-10-26 12:46:50', NULL, NULL, NULL, NULL, NULL);
-- INSERT INTO `storage_catalog_info` VALUES ('s-sub_090', 'subType', '全局共享数据文件元信息表', '/核心舱/运行控制中心/全局共享数据/全局共享数据文件元信息表', NULL, 4, NULL, 'm-main_025', NULL, 'true', '1', NULL, NULL, NULL, NULL, NULL, '2020-10-26 12:46:50', NULL, NULL, NULL, NULL, NULL);
-- INSERT INTO `storage_catalog_info` VALUES ('s-sub_091', 'subType', '专有数据文件元信息表', '/核心舱/运行控制中心/专有数据/专有数据文件元信息表', NULL, 4, NULL, 'm-main_026', NULL, 'true', '1', NULL, NULL, NULL, NULL, NULL, '2020-10-26 12:46:50', NULL, NULL, NULL, NULL, NULL);
-- INSERT INTO `storage_catalog_info` VALUES ('s-sub_092', 'subType', '数据成果和成果报告文件元信息表', '/核心舱/运行控制中心/数据成果/数据成果和成果报告文件元信息表/', NULL, 4, NULL, 'm-main_027', NULL, 'true', '1', NULL, NULL, NULL, NULL, NULL, '2020-10-26 12:46:50', NULL, NULL, NULL, NULL, NULL);
-- COMMIT;

-- ----------------------------
-- Table structure for sw_download_info
-- ----------------------------
DROP TABLE IF EXISTS `sw_download_info`;
CREATE TABLE `sw_download_info` (
  `id` varchar(100) NOT NULL COMMENT '软件下载编号',
  `version_id` varchar(50) DEFAULT NULL COMMENT '软件版本编号',
  `software_id` varchar(50) DEFAULT NULL COMMENT '软件编号',
  `download_user_id` varchar(100) DEFAULT NULL COMMENT '下载用户id',
  `download_user_group_id` varchar(100) DEFAULT NULL COMMENT '下载用户用户组id',
  `download_datetime` datetime DEFAULT NULL COMMENT '下载时间',
  `valid_flag` varchar(5) DEFAULT NULL COMMENT '效力标志',
  `invalid_department_id` varchar(50) DEFAULT NULL COMMENT '失效用户所属部门编号',
  `invalid_user_id` varchar(50) DEFAULT NULL COMMENT '失效用户编号',
  `invalid_datetime` datetime DEFAULT NULL COMMENT '失效时间',
  `create_department_id` varchar(50) DEFAULT NULL COMMENT '创建用户所属部门编号',
  `create_user_id` varchar(50) DEFAULT NULL COMMENT '创建用户编号',
  `create_datetime` datetime DEFAULT NULL COMMENT '创建时间',
  `update_department_id` varchar(50) DEFAULT NULL COMMENT '更新用户部门所属编号',
  `update_user_id` varchar(50) DEFAULT NULL COMMENT '更新用户编号',
  `update_datetime` datetime DEFAULT NULL COMMENT '更新时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='软件仓库中软件下载信息';

-- ----------------------------
-- Table structure for sw_software_base_info
-- ----------------------------
DROP TABLE IF EXISTS `sw_software_base_info`;
CREATE TABLE `sw_software_base_info` (
  `id` varchar(50) NOT NULL COMMENT '软件编号',
  `software_name` varchar(200) DEFAULT NULL COMMENT '软件名称',
  `software_sub_name` varchar(200) DEFAULT NULL COMMENT '软件子名',
  `software_type` varchar(100) DEFAULT NULL COMMENT '软件类型（OS：操作系统；LANGUAGE：编程语言，TOOLS：应用工具）',
  `software_attribute` varchar(50) DEFAULT NULL COMMENT '软件属性（PUBLIC，CENTER）',
  `software_ownner` varchar(50) DEFAULT NULL COMMENT '软件所有者（各中心id）',
  `software_os` varchar(50) DEFAULT NULL COMMENT '软件操作系统',
  `software_os_bit` varchar(50) DEFAULT NULL COMMENT '软件操作系统位数',
  `icon_file_id` varchar(100) DEFAULT NULL COMMENT '软件图标文件id',
  `software_introduction` text COMMENT '软件介绍',
  `software_path` varchar(500) DEFAULT NULL COMMENT '软件存放路径',
  `latest_version` varchar(100) DEFAULT NULL COMMENT '软件最新版本',
  `latest_upload_datatime` datetime DEFAULT NULL COMMENT '软件最后上传时间',
  `download_amount` int(8) DEFAULT NULL COMMENT '软件下载总数',
  `visit_amount` int(8) DEFAULT NULL COMMENT '软件访问总数',
  `comment_amount` int(8) DEFAULT NULL COMMENT '软件评论总数',
  `review_status` varchar(20) DEFAULT NULL COMMENT '最新版本审核状态',
  `software_share` varchar(20) DEFAULT NULL COMMENT '是否共享1:共享，0：不共享',
  `show_seq` int(8) DEFAULT NULL COMMENT '显示顺序',
  `valid_flag` varchar(5) DEFAULT NULL COMMENT '效力标志',
  `invalid_department_id` varchar(50) DEFAULT NULL COMMENT '失效用户所属部门编号',
  `invalid_user_id` varchar(50) DEFAULT NULL COMMENT '失效用户编号',
  `invalid_datetime` datetime DEFAULT NULL COMMENT '失效时间',
  `create_department_id` varchar(50) DEFAULT NULL COMMENT '创建用户所属部门编号',
  `create_user_id` varchar(50) DEFAULT NULL COMMENT '创建用户编号',
  `create_datetime` datetime DEFAULT NULL COMMENT '创建时间',
  `update_department_id` varchar(50) DEFAULT NULL COMMENT '更新用户部门所属编号',
  `update_user_id` varchar(50) DEFAULT NULL COMMENT '更新用户编号',
  `update_datetime` datetime DEFAULT NULL COMMENT '更新时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='软件仓库软件基本信息表';

-- ----------------------------
-- Records of sw_software_base_info
-- ----------------------------
BEGIN;
INSERT INTO `sw_software_base_info` VALUES ('0000000001', 'CentOS', NULL, 'OS', 'PUBLIC', 'PUBLIC', '', 'null', 'file_0000000001', '基于Red Hat的开源企业级操作系统（Linux发行版）', '/warehouse/test', '7.6', '2020-10-15 19:11:50', NULL, 28, 1, NULL, 'undefined', NULL, '1', NULL, NULL, NULL, NULL, '3', NULL, NULL, 'admin', '2020-11-16 18:55:37');
INSERT INTO `sw_software_base_info` VALUES ('0000000002', 'Ubuntu', NULL, 'OS', 'PUBLIC', 'PUBLIC', '', 'null', 'file_0000000002', 'Ubuntu官方软件仓库（Linux发行版） 111', '/warehouse/test', '14.04', '2020-10-15 19:11:50', NULL, 5, 0, NULL, 'undefined', NULL, '1', NULL, NULL, NULL, NULL, '3', NULL, NULL, 'admin', '2020-11-10 15:26:31');
INSERT INTO `sw_software_base_info` VALUES ('0000000003', 'QT', NULL, 'TOOLS', 'PUBLIC', 'PUBLIC', NULL, NULL, 'file_0000000003', 'Qt是一个1991年由Qt Company开发的跨平台C++图形用户界面应用程序开发框架。', NULL, NULL, NULL, NULL, 1, 0, NULL, NULL, NULL, '1', NULL, NULL, NULL, NULL, '3', NULL, NULL, NULL, NULL);
INSERT INTO `sw_software_base_info` VALUES ('0000000004', 'Google Web Toolkit', NULL, 'TOOLS', 'PUBLIC', 'PUBLIC', NULL, NULL, 'file_0000000004', '是一个开源的一套工具，它允许Web开发人员创建和维护复杂的JavaScript 前端应用程序中的Java。', NULL, NULL, NULL, NULL, 2, 0, NULL, NULL, NULL, '1', NULL, NULL, NULL, NULL, '3', NULL, NULL, NULL, NULL);
INSERT INTO `sw_software_base_info` VALUES ('0000000005', 'JDK Java', NULL, 'TOOLS', 'PUBLIC', 'PUBLIC', NULL, NULL, 'file_0000000005', 'JDK 是一种用于构建在 Java 平台上发布的应用程序、Applet 和组件的开发环境，即编写 Java 程序必须使用 JDK，它提供了编译和运行 Java 程序的环境。', NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, NULL, '1', NULL, NULL, NULL, NULL, '3', NULL, NULL, NULL, NULL);
INSERT INTO `sw_software_base_info` VALUES ('0000000006', 'Redhat Linux', NULL, 'OS', 'PUBLIC', 'PUBLIC', 'null', 'null', 'file_0000000006', 'RedHat Linux是目前世界上使用最多的Linux操作系统。111', NULL, '1.1', NULL, NULL, 5, 0, NULL, 'undefined', NULL, '1', NULL, NULL, NULL, NULL, '3', NULL, NULL, 'admin', '2020-11-10 15:26:27');
INSERT INTO `sw_software_base_info` VALUES ('0000000007', '神通分布式数据库 ', NULL, 'DATABASE', 'PUBLIC', 'PUBLIC', NULL, NULL, 'file_0000000007', '神通数据库是一款计算机数据库。', NULL, NULL, NULL, NULL, 43, 0, NULL, NULL, NULL, '1', NULL, NULL, NULL, NULL, '3', NULL, NULL, NULL, NULL);
INSERT INTO `sw_software_base_info` VALUES ('0000000008', 'MariaDB', NULL, 'DATABASE', 'PUBLIC', 'PUBLIC', NULL, NULL, 'file_0000000008', 'MariaDB数据库管理系统是MySQL的一个分支，主要由开源社区在维护，采用GPL授权许可 MariaDB的目的是完全兼容MySQL，包括API和命令行，使之能轻松成为MySQL的代替品。', NULL, NULL, NULL, NULL, 9, 0, NULL, NULL, NULL, '1', NULL, NULL, NULL, NULL, '3', NULL, NULL, NULL, NULL);
INSERT INTO `sw_software_base_info` VALUES ('0000000009', 'Redis', NULL, 'DATABASE', 'PUBLIC', 'PUBLIC', NULL, NULL, 'file_0000000009', 'redis是一个key-value存储系统。', NULL, NULL, NULL, NULL, 5, 0, NULL, NULL, NULL, '1', NULL, NULL, NULL, NULL, '3', NULL, NULL, NULL, NULL);
INSERT INTO `sw_software_base_info` VALUES ('0000000010', 'SQL Server', NULL, 'DATABASE\n', 'PUBLIC', 'PUBLIC', NULL, NULL, 'file_0000000010', 'SQL Server 是Microsoft 公司推出的关系型数据库管理系统。', NULL, NULL, NULL, NULL, 6, 0, NULL, NULL, NULL, '1', NULL, NULL, NULL, NULL, '3', NULL, NULL, NULL, NULL);
INSERT INTO `sw_software_base_info` VALUES ('0000000011', 'MongoDB', NULL, 'DATABASE', 'PUBLIC', 'PUBLIC', NULL, NULL, 'file_0000000011', 'MongoDB是一个基于分布式文件存储的数据库。', NULL, NULL, NULL, NULL, 4, 0, NULL, NULL, NULL, '1', NULL, NULL, NULL, NULL, '3', NULL, NULL, NULL, NULL);
INSERT INTO `sw_software_base_info` VALUES ('0000000012', '达梦', NULL, 'DATABASE', 'PUBLIC', 'PUBLIC', NULL, NULL, 'file_0000000012', '达梦数据库管理系统是达梦公司推出的具有完全自主知识产权的高性能数据库管理系统，简称DM。', NULL, NULL, NULL, NULL, 2, 0, NULL, NULL, NULL, '1', NULL, NULL, NULL, NULL, '3', NULL, NULL, NULL, NULL);
INSERT INTO `sw_software_base_info` VALUES ('0000000015', 'Postgis', NULL, 'DATABASE', 'PUBLIC', 'PUBLIC', NULL, NULL, 'file_0000000015', 'PostgreSQL 是一种对象-关系型数据库管理系统（ORDBMS），也是目前功能最强大、特性最丰富和最复杂的自由软件数据库系统。', NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, '1', NULL, NULL, NULL, NULL, '3', NULL, NULL, NULL, NULL);
INSERT INTO `sw_software_base_info` VALUES ('0000000016', 'Oracle', NULL, 'DATABASE', 'PUBLIC', 'PUBLIC', NULL, NULL, 'file_0000000016', 'Oracle是一个面向Internet计算环境的数据库。', NULL, NULL, NULL, NULL, 1, 0, NULL, NULL, NULL, '1', NULL, NULL, NULL, NULL, '3', NULL, NULL, NULL, NULL);
INSERT INTO `sw_software_base_info` VALUES ('0000000017', 'Cassandra', NULL, 'DATABASE', 'PUBLIC', 'PUBLIC', NULL, NULL, 'file_0000000017', 'Cassandra是一套开源分布式NoSQL数据库系统。', NULL, NULL, NULL, NULL, 3, 0, NULL, NULL, NULL, '1', NULL, NULL, NULL, NULL, '3', NULL, NULL, NULL, NULL);
INSERT INTO `sw_software_base_info` VALUES ('0000000018', 'PostgreSQL', NULL, 'DATABASE', 'PUBLIC', 'PUBLIC', NULL, NULL, 'file_0000000018', 'PostgreSQL是一种特性非常齐全的自由软件的对象-关系型数据库管理系统（ORDBMS）。', NULL, NULL, NULL, NULL, 1, 0, NULL, NULL, NULL, '1', NULL, NULL, NULL, NULL, '3', NULL, NULL, NULL, NULL);
INSERT INTO `sw_software_base_info` VALUES ('0000000019', 'gcc编译器', NULL, 'TOOLS', 'PUBLIC', 'PUBLIC', NULL, NULL, 'file_0000000019', 'GCC（GNU Compiler Collection，GNU编译器套件）是由GNU开发的编程语言译器。', NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, NULL, '1', NULL, NULL, NULL, NULL, '3', NULL, NULL, NULL, NULL);
INSERT INTO `sw_software_base_info` VALUES ('0000000020', 'kafka', NULL, 'MIDDLEWARE', 'PUBLIC', 'PUBLIC', NULL, NULL, 'file_0000000020', 'Kafka是由Apache软件基金会开发的一个开源流处理平台。', NULL, NULL, NULL, NULL, 1, 0, NULL, NULL, NULL, '1', NULL, NULL, NULL, NULL, '3', NULL, NULL, NULL, NULL);
INSERT INTO `sw_software_base_info` VALUES ('0000000022', 'Visual Studio', NULL, 'TOOLS', 'PUBLIC', 'PUBLIC', NULL, NULL, 'file_0000000022', 'VS是一个基本完整的开发工具集，它包括了整个软件生命周期中所需要的大部分工具，如UML工具、代码管控工具、集成开发环境(IDE)等等。', NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, NULL, '1', NULL, NULL, NULL, NULL, '3', NULL, NULL, NULL, NULL);
INSERT INTO `sw_software_base_info` VALUES ('0000000023', 'Cmake', NULL, 'TOOLS', 'PUBLIC', 'PUBLIC', NULL, NULL, 'file_0000000023', 'CMake是一个编程工具，旨在构建、测试和软件打包。', NULL, NULL, NULL, NULL, 1, 0, NULL, NULL, NULL, '1', NULL, NULL, NULL, NULL, '3', NULL, NULL, NULL, NULL);
INSERT INTO `sw_software_base_info` VALUES ('0000000024', 'Unity ', NULL, 'TOOLS', 'PUBLIC', 'PUBLIC', NULL, NULL, 'file_0000000024', 'Unity是游戏引擎开发商，实时3D互动内容创作和运营平台', NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, NULL, '1', NULL, NULL, NULL, NULL, '3', NULL, NULL, NULL, NULL);
INSERT INTO `sw_software_base_info` VALUES ('0000000025', 'Unity hub', NULL, 'TOOLS', 'PUBLIC', 'PUBLIC', NULL, NULL, 'file_0000000025', 'Unity Hub是用于简化工作流程的桌面端应用程序。它提供了一个用于管理Unity项目、简化下载、查找，卸载以及安装管理多个Unity版本的工具。', NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, NULL, '1', NULL, NULL, NULL, NULL, '3', NULL, NULL, NULL, NULL);
INSERT INTO `sw_software_base_info` VALUES ('0000000026', 'Eclipse', NULL, 'TOOLS', 'PUBLIC', 'PUBLIC', NULL, NULL, 'file_0000000026', 'Eclipse 是一个开放源代码的、基于Java的可扩展开发平台。', NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, NULL, '1', NULL, NULL, NULL, NULL, '3', NULL, NULL, NULL, NULL);
INSERT INTO `sw_software_base_info` VALUES ('0000000027', 'IDEA', NULL, 'TOOLS', 'PUBLIC', 'PUBLIC', NULL, NULL, 'file_0000000027', 'idea一般指IntelliJ IDEA。IDEA 全称 IntelliJ IDEA，是java编程语言开发的集成环境。', NULL, NULL, NULL, NULL, 1, 0, NULL, NULL, NULL, '1', NULL, NULL, NULL, NULL, '4', NULL, NULL, NULL, NULL);
INSERT INTO `sw_software_base_info` VALUES ('0000000028', 'JRE', NULL, 'TOOLS', 'PUBLIC', 'PUBLIC', NULL, NULL, 'file_0000000028', 'Java运行环境（Java Runtime Environment，简称JRE）是一个软件，由太阳微系统所研发，JRE可以让计算机系统运行Java应用程序（Java Application）。', NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, NULL, '1', NULL, NULL, NULL, NULL, '4', NULL, NULL, NULL, NULL);
INSERT INTO `sw_software_base_info` VALUES ('0000000029', 'Pycharm', NULL, 'TOOLS', 'PUBLIC', 'PUBLIC', NULL, NULL, 'file_0000000029', 'PyCharm 是一款功能强大的 Python编辑器。', NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, NULL, '1', NULL, NULL, NULL, NULL, '4', NULL, NULL, NULL, NULL);
INSERT INTO `sw_software_base_info` VALUES ('0000000030', 'Anaconda', NULL, 'TOOLS', 'PUBLIC', 'PUBLIC', NULL, NULL, 'file_0000000030', 'Anaconda指的是一个开源的Python发行版本，其包含了conda、Python等180多个科学包及其依赖项。', NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, NULL, '1', NULL, NULL, NULL, NULL, '4', NULL, NULL, NULL, NULL);
INSERT INTO `sw_software_base_info` VALUES ('0000000031', 'STK ', NULL, 'TOOLS', 'PUBLIC', 'PUBLIC', NULL, NULL, 'file_0000000031', 'STK是由美国Analytical Graphics公司开发的一款在航天领域处于领先地位的商业分析软件。', NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, NULL, '1', NULL, NULL, NULL, NULL, '4', NULL, NULL, NULL, NULL);
INSERT INTO `sw_software_base_info` VALUES ('0000000032', 'Matlab ', NULL, 'TOOLS', 'PUBLIC', 'PUBLIC', NULL, NULL, 'file_0000000032', 'MATLAB是美国MathWorks公司出品的商业数学软件，用于数据分析、无线通信、深度学习、图像处理与计算机视觉、信号处理、量化金融与风险管理、机器人，控制系统等领域。', NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, NULL, '1', NULL, NULL, NULL, NULL, '4', NULL, NULL, NULL, NULL);
INSERT INTO `sw_software_base_info` VALUES ('0000000033', 'Visual Studio code', NULL, 'TOOLS', 'PUBLIC', 'PUBLIC', NULL, NULL, 'file_0000000033', 'Visual Studio Code是微软研发的一款带有GUI 的代码编辑器。', NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, NULL, '1', NULL, NULL, NULL, NULL, '4', NULL, NULL, NULL, NULL);
INSERT INTO `sw_software_base_info` VALUES ('0000000034', 'Google Chrome', NULL, 'TOOLS', 'PUBLIC', 'PUBLIC', NULL, NULL, 'file_0000000034', 'Google Chrome，又称Google浏览器，是一个由Google(谷歌)公司开发的网页浏览器。', NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, NULL, '1', NULL, NULL, NULL, NULL, '4', NULL, NULL, NULL, NULL);
INSERT INTO `sw_software_base_info` VALUES ('0000000035', 'Maven', NULL, 'TOOLS', 'PUBLIC', 'PUBLIC', NULL, NULL, 'file_0000000035', 'Maven项目对象模型(POM)，可以通过一小段描述信息来管理项目的构建，报告和文档的项目管理工具软件。', NULL, NULL, NULL, NULL, 2, 0, NULL, NULL, NULL, '1', NULL, NULL, NULL, NULL, '4', NULL, NULL, NULL, NULL);
INSERT INTO `sw_software_base_info` VALUES ('0000000036', 'PTC_Creo', NULL, 'TOOLS', 'PUBLIC', 'PUBLIC', NULL, NULL, 'file_0000000036', 'Creo(PRO/E))是美国PTC公司于2010年10月推出CAD设计软件包。', NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, NULL, '1', NULL, NULL, NULL, NULL, '4', NULL, NULL, NULL, NULL);
INSERT INTO `sw_software_base_info` VALUES ('0000000037', 'Adams', NULL, 'TOOLS', 'PUBLIC', 'PUBLIC', NULL, NULL, 'file_0000000037', 'ADAMS，即机械系统动力学自动分析(Automatic Dynamic Analysis of Mechanical Systems)，该软件是美国机械动力公司开发的虚拟样机分析软件。', NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, NULL, '1', NULL, NULL, NULL, NULL, '4', NULL, NULL, NULL, NULL);
INSERT INTO `sw_software_base_info` VALUES ('0000000038', 'Jack ', NULL, 'TOOLS', 'PUBLIC', 'PUBLIC', NULL, NULL, 'file_0000000038', '一种编译器。', NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, NULL, '1', NULL, NULL, NULL, NULL, '4', NULL, NULL, NULL, NULL);
INSERT INTO `sw_software_base_info` VALUES ('0000000039', 'Mworks ', NULL, 'TOOLS', 'PUBLIC', 'PUBLIC', NULL, NULL, 'file_0000000039', 'MWorks是新一代多领域工程系统建模、仿真、分析与优化通用CAE平台。', NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, NULL, '1', NULL, NULL, NULL, NULL, '4', NULL, NULL, NULL, NULL);
INSERT INTO `sw_software_base_info` VALUES ('0000000040', '.Net', NULL, 'TOOLS', 'PUBLIC', 'PUBLIC', NULL, NULL, 'file_0000000040', 'Microsoft .NET Framework是用于Windows的新托管代码编程模型。', NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, NULL, '1', NULL, NULL, NULL, NULL, '4', NULL, NULL, NULL, NULL);
INSERT INTO `sw_software_base_info` VALUES ('0000000041', 'WireShark', NULL, 'TOOLS', 'PUBLIC', 'PUBLIC', NULL, NULL, 'file_0000000041', 'Wireshark是一款功能强大的网络抓包分析器', NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, NULL, '1', NULL, NULL, NULL, NULL, '4', NULL, NULL, NULL, NULL);
INSERT INTO `sw_software_base_info` VALUES ('0000000042', 'Google test', NULL, 'TOOLS', 'PUBLIC', 'PUBLIC', NULL, NULL, 'file_0000000042', 'Google Test是由Google主导的一个开源的C++自动化测试框架,简称GTest。', NULL, NULL, NULL, NULL, 1, 0, NULL, NULL, NULL, '1', NULL, NULL, NULL, NULL, '4', NULL, NULL, NULL, NULL);
INSERT INTO `sw_software_base_info` VALUES ('0000000043', 'Tomcat', NULL, 'TOOLS', 'PUBLIC', 'PUBLIC', NULL, NULL, 'file_0000000043', 'Tomcat 服务器是一个免费的开放源代码的Web 应用服务器', NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, NULL, '1', NULL, NULL, NULL, NULL, '4', NULL, NULL, NULL, NULL);
INSERT INTO `sw_software_base_info` VALUES ('0000000044', 'Flink', NULL, 'TOOLS', 'PUBLIC', 'PUBLIC', NULL, NULL, 'file_0000000044', 'Apache Flink是由Apache软件基金会开发的开源流处理框架，其核心是用Java和Scala编写的分布式流数据流引擎。', NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, NULL, '1', NULL, NULL, NULL, NULL, '4', NULL, NULL, NULL, NULL);
INSERT INTO `sw_software_base_info` VALUES ('0000000045', 'Zookeeper', NULL, 'TOOLS', 'PUBLIC', 'PUBLIC', NULL, NULL, 'file_0000000045', 'ZooKeeper是一个分布式的，开放源码的分布式应用程序协调服务，是Google的Chubby一个开源的实现，是Hadoop和Hbase的重要组件。', NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, NULL, '1', NULL, NULL, NULL, NULL, '4', NULL, NULL, NULL, NULL);
INSERT INTO `sw_software_base_info` VALUES ('0000000046', 'Storm ', NULL, 'TOOLS', 'PUBLIC', 'PUBLIC', NULL, NULL, 'file_0000000046', 'Storm是Twitter开源的分布式实时大数据处理框架。', NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, NULL, '1', NULL, NULL, NULL, NULL, '4', NULL, NULL, NULL, NULL);
INSERT INTO `sw_software_base_info` VALUES ('0000000047', 'Docker ', NULL, 'TOOLS', 'PUBLIC', 'PUBLIC', NULL, NULL, 'file_0000000047', 'Docker是一个开源的应用容器引擎。', NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, NULL, '1', NULL, NULL, NULL, NULL, '4', NULL, NULL, NULL, NULL);
INSERT INTO `sw_software_base_info` VALUES ('0000000048', 'DBeaverEE', NULL, 'TOOLS', 'PUBLIC', 'PUBLIC', NULL, NULL, 'file_0000000048', '是一款数据库连接和操作工具。', NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, NULL, '1', NULL, NULL, NULL, NULL, '4', NULL, NULL, NULL, NULL);
INSERT INTO `sw_software_base_info` VALUES ('0000000049', 'Zabbix', NULL, 'TOOLS', 'PUBLIC', 'PUBLIC', NULL, NULL, 'file_0000000049', 'Zabbix 是一个基于 WEB界面的提供分布式系统监视以及网络监视功能的企业级的开源解决方案。', NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, NULL, '1', NULL, NULL, NULL, NULL, '4', NULL, NULL, NULL, NULL);
INSERT INTO `sw_software_base_info` VALUES ('0000000050', 'Firefox', NULL, 'TOOLS', 'PUBLIC', 'PUBLIC', NULL, NULL, 'file_0000000050', 'firefox是一个由Mozilla开发的自由及开放源代码的网页浏览器。', NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, NULL, '1', NULL, NULL, NULL, NULL, '4', NULL, NULL, NULL, NULL);
INSERT INTO `sw_software_base_info` VALUES ('0000000051', 'Nodejs', NULL, 'TOOLS', 'PUBLIC', 'PUBLIC', NULL, NULL, 'file_0000000051', 'Node.js是一个基于Chrome V8引擎的JavaScript运行环境。', NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, NULL, '1', NULL, NULL, NULL, NULL, '4', NULL, NULL, NULL, NULL);
INSERT INTO `sw_software_base_info` VALUES ('0000000052', 'Vue', NULL, 'TOOLS', 'PUBLIC', 'PUBLIC', NULL, NULL, 'file_0000000052', 'Vue.js是一套构建用户界面的渐进式框架。', NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, NULL, '1', NULL, NULL, NULL, NULL, '4', NULL, NULL, NULL, NULL);
INSERT INTO `sw_software_base_info` VALUES ('0000000053', 'Nginx ', NULL, 'TOOLS', 'PUBLIC', 'PUBLIC', NULL, NULL, 'file_0000000053', 'Nginx是一个高性能的HTTP和反向代理web服务器，同时也提供了IMAP/POP3/SMTP服务。', NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, NULL, '1', NULL, NULL, NULL, NULL, '4', NULL, NULL, NULL, NULL);
INSERT INTO `sw_software_base_info` VALUES ('0000000054', 'Filebeat', NULL, 'TOOLS', 'PUBLIC', 'PUBLIC', NULL, NULL, 'file_0000000054', 'Filebeat是一个轻量级日志传输Agent,可以将指定日志转发到Logstash、Elasticsearch、Kafka、Redis等中。', NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, NULL, '1', NULL, NULL, NULL, NULL, '4', NULL, NULL, NULL, NULL);
INSERT INTO `sw_software_base_info` VALUES ('0000000055', 'EMQ X ', NULL, 'TOOLS', 'PUBLIC', 'PUBLIC', NULL, NULL, 'file_0000000055', 'EMQ X (Erlang/Enterprise/Elastic MQTT Broker) 是基于 Erlang/OTP 平台开发的开源物联网 MQTT 消息服务器。', NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, NULL, '1', NULL, NULL, NULL, NULL, '4', NULL, NULL, NULL, NULL);
INSERT INTO `sw_software_base_info` VALUES ('0000000056', 'GStreamer', NULL, 'TOOLS', 'PUBLIC', 'PUBLIC', NULL, NULL, 'file_0000000056', 'GStreamer是GNOME桌面环境下用来构建流媒体应用的多媒体框架，其目标是要简化音/视频应用程序的开发。', NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, NULL, '1', NULL, NULL, NULL, NULL, '4', NULL, NULL, NULL, NULL);
INSERT INTO `sw_software_base_info` VALUES ('0000000057', 'gofastdfs', NULL, 'TOOLS', 'PUBLIC', 'PUBLIC', NULL, NULL, 'file_0000000057', 'go-fastdfs是一个基于http协议的分布式文件系统。', NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, NULL, '1', NULL, NULL, NULL, NULL, '4', NULL, NULL, NULL, NULL);
INSERT INTO `sw_software_base_info` VALUES ('0000000058', 'ELK', NULL, 'TOOLS', 'PUBLIC', 'PUBLIC', NULL, NULL, 'file_0000000058', 'ELK是三个开源软件的缩写，分别表示：Elasticsearch , Logstash, Kibana , 它们都是开源软件。', NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, NULL, '1', NULL, NULL, NULL, NULL, '4', NULL, NULL, NULL, NULL);
INSERT INTO `sw_software_base_info` VALUES ('0000000059', 'C', NULL, 'LANGUAGE', 'PUBLIC', 'PUBLIC', 'WINDOW', 'x86', 'file_0000000059', '一种编程语言。.', NULL, '1dddef1ce06b4e8dbf190ad4dcdacd60', '2020-12-04 20:18:41', NULL, 29, 0, '审核通过', 'undefined', NULL, '1', NULL, NULL, NULL, NULL, '4', NULL, NULL, 'admin', '2020-12-09 18:47:53');
INSERT INTO `sw_software_base_info` VALUES ('0000000060', 'Golang', NULL, 'LANGUAGE', 'PUBLIC', 'PUBLIC', 'null', 'null', 'file_0000000060', 'Go语言是谷歌2009发布的第二款开源编程语言。', NULL, NULL, NULL, NULL, 5, 0, NULL, 'undefined', NULL, '1', NULL, NULL, NULL, NULL, '8', NULL, NULL, 'admin', '2020-11-10 15:24:26');
INSERT INTO `sw_software_base_info` VALUES ('0000000061', 'Python', NULL, 'LANGUAGE', 'PUBLIC', 'PUBLIC', 'null', 'null', 'file_0000000061', 'Python是一种跨平台的计算机程序设计语言。', NULL, NULL, NULL, NULL, 1, 0, NULL, 'undefined', NULL, '1', NULL, NULL, NULL, NULL, '8', NULL, NULL, 'admin', '2020-11-10 15:24:31');
INSERT INTO `sw_software_base_info` VALUES ('0000000062', 'R', NULL, 'LANGUAGE', 'PUBLIC', 'PUBLIC', 'null', 'null', 'file_0000000062', 'R语言是用于统计分析,图形表示和报告的编程语言和软件环境。', NULL, NULL, NULL, NULL, 1, 0, NULL, 'undefined', NULL, '1', NULL, NULL, NULL, NULL, '8', NULL, NULL, 'admin', '2020-11-10 15:24:40');
INSERT INTO `sw_software_base_info` VALUES ('0000000063', 'Lua', NULL, 'LANGUAGE', 'PUBLIC', 'PUBLIC', 'null', 'null', 'file_0000000063', 'Lua是一个小巧的脚本语言。', NULL, NULL, NULL, NULL, 0, 0, NULL, 'undefined', NULL, '1', NULL, NULL, NULL, NULL, '8', NULL, NULL, 'admin', '2020-11-10 15:24:44');
INSERT INTO `sw_software_base_info` VALUES ('0000000065', 'MÄK RTI', NULL, 'LANGUAGE', 'PUBLIC', 'PUBLIC', 'null', 'null', 'file_0000000065', 'MÄK RTI(仿真运行架构)，基于订购-发布过滤机制，实现仿真高层体系(HLA)交互数据的高效可靠发布，实现仿真计算机CPU、通信网络带宽、数据存储仿真运行时的性能优化器，全面支持HLA接口规范(包括HLA1516及HLA Evolved)。', NULL, NULL, NULL, NULL, 2, 0, NULL, 'undefined', NULL, '1', NULL, NULL, NULL, NULL, '8', NULL, NULL, 'admin', '2020-11-10 15:24:56');
INSERT INTO `sw_software_base_info` VALUES ('0000000066', '银河麒麟', NULL, 'OS', 'PUBLIC', 'PUBLIC', 'null', 'null', 'file_0000000066', '银河麒麟（Kylin）是由国防科技大学研制的开源服务器操作系统。', NULL, NULL, NULL, NULL, 1, 0, NULL, 'undefined', NULL, '1', NULL, NULL, NULL, NULL, '8', NULL, NULL, 'admin', '2020-11-26 18:41:42');
INSERT INTO `sw_software_base_info` VALUES ('0000000067', 'Windows', NULL, 'OS', 'PUBLIC', 'PUBLIC', 'null', 'null', 'file_0000000067', 'Windows操作系统。111', NULL, NULL, NULL, NULL, 2, 0, NULL, 'undefined', NULL, '1', NULL, NULL, NULL, NULL, '8', NULL, NULL, 'admin', '2020-11-10 15:26:21');
INSERT INTO `sw_software_base_info` VALUES ('0000000068', 'Windows Server', NULL, 'OS', 'PUBLIC', 'PUBLIC', 'null', 'null', 'file_0000000068', 'Windows Server是微软在2003年4月24日推出的Windows 的服务器操作系统，其核心是Microsoft Windows Server System（WSS） 111', NULL, NULL, NULL, NULL, 0, 0, NULL, 'undefined', NULL, '1', NULL, NULL, NULL, NULL, '8', NULL, NULL, 'admin', '2020-11-10 15:26:17');
INSERT INTO `sw_software_base_info` VALUES ('0000000069', 'Windows XP', NULL, 'OS', 'PUBLIC', 'PUBLIC', 'null', 'null', 'file_0000000069', 'Windows XP是美国微软公司研发的PC和平板电脑使用的操作系统，于2001年10月25日正式发布。111', NULL, NULL, NULL, NULL, 0, 0, NULL, 'undefined', NULL, '1', NULL, NULL, NULL, NULL, '8', NULL, NULL, 'admin', '2020-11-10 15:26:13');
INSERT INTO `sw_software_base_info` VALUES ('0000000070', 'Ubuntu Server', NULL, 'OS', 'PUBLIC', 'PUBLIC', 'null', 'null', 'file_0000000070', 'Ubuntu发行的操作系统。111', NULL, NULL, NULL, NULL, 0, 0, NULL, 'undefined', NULL, '1', NULL, NULL, NULL, NULL, '8', NULL, NULL, 'admin', '2020-11-10 15:26:09');
INSERT INTO `sw_software_base_info` VALUES ('0000000071', 'C#', NULL, 'LANGUAGE', 'PUBLIC', 'PUBLIC', 'null', 'null', 'file_0000000071', 'C#是微软公司发布的一种由C和C++衍生出来的面向对象的编程语言。', NULL, NULL, NULL, NULL, 0, 0, NULL, 'undefined', NULL, '1', NULL, NULL, NULL, NULL, '8', NULL, NULL, 'admin', '2020-11-10 15:25:09');
INSERT INTO `sw_software_base_info` VALUES ('0000000072', 'EPEL', NULL, 'OS', 'PUBLIC', 'PUBLIC', 'null', 'null', 'file_0000000072', '红帽系Linux的附加软件包仓库 111', NULL, '8', NULL, NULL, 1, 0, NULL, 'undefined', NULL, '1', NULL, NULL, NULL, NULL, '3', NULL, NULL, 'admin', '2020-11-10 15:26:07');
COMMIT;

-- ----------------------------
-- Table structure for sw_software_comment
-- ----------------------------
DROP TABLE IF EXISTS `sw_software_comment`;
CREATE TABLE `sw_software_comment` (
  `id` varchar(50) NOT NULL COMMENT '评论编号',
  `software_id` varchar(50) DEFAULT NULL COMMENT '软件编号',
  `comment_content` text COMMENT '评论内容',
  `comment_user_id` varchar(100) DEFAULT NULL COMMENT '评论用户id',
  `comment_user_group_id` varchar(100) DEFAULT NULL COMMENT '评论用户用户组id',
  `comment_datetime` datetime DEFAULT NULL COMMENT '评论时间',
  `valid_flag` varchar(5) DEFAULT NULL COMMENT '效力标志',
  `invalid_department_id` varchar(50) DEFAULT NULL COMMENT '失效用户所属部门编号',
  `invalid_user_id` varchar(50) DEFAULT NULL COMMENT '失效用户编号',
  `invalid_datetime` datetime DEFAULT NULL COMMENT '失效时间',
  `create_department_id` varchar(50) DEFAULT NULL COMMENT '创建用户所属部门编号',
  `create_user_id` varchar(50) DEFAULT NULL COMMENT '创建用户编号',
  `create_datetime` datetime DEFAULT NULL COMMENT '创建时间',
  `update_department_id` varchar(50) DEFAULT NULL COMMENT '更新用户部门所属编号',
  `update_user_id` varchar(50) DEFAULT NULL COMMENT '更新用户编号',
  `update_datetime` datetime DEFAULT NULL COMMENT '更新时间',
  PRIMARY KEY (`id`) USING BTREE,
  KEY `FK_Reference_1` (`software_id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT '软件评论信息';



-- ----------------------------
-- Table structure for sw_software_version_info
-- ----------------------------
DROP TABLE IF EXISTS `sw_software_version_info`;
CREATE TABLE `sw_software_version_info` (
  `id` varchar(50) NOT NULL COMMENT '软件版本编号',
  `software_id` varchar(50) DEFAULT NULL COMMENT '软件编号',
  `software_version` varchar(100) DEFAULT NULL COMMENT '软件版本',
  `software_size` varchar(100) DEFAULT NULL COMMENT '软件大小',
  `version_description` text COMMENT '版本说明',
  `dependency_description` text COMMENT '依赖说明',
  `deployment_description` text COMMENT '安装部署说明',
  `software_file_id` varchar(100) DEFAULT NULL COMMENT '软件文件文件id',
  `url_type` varchar(20) DEFAULT NULL COMMENT '路径类型（FILE，FOLDER）',
  `upload_user_id` varchar(50) DEFAULT NULL COMMENT '上传用户id',
  `upload_user_group_id` varchar(50) DEFAULT NULL COMMENT '上传用户用户组id',
  `upload_datatime` datetime DEFAULT NULL COMMENT '上传时间',
  `review_remark` text COMMENT '审核意见',
  `review_status` varchar(20) DEFAULT NULL COMMENT '审核状态（PENDING：待审核，ACCEPTED：通过，REFUSED：不通过）',
  `review_user_id` varchar(50) DEFAULT NULL COMMENT '审核用户id',
  `review_datatime` datetime DEFAULT NULL COMMENT '审核时间',
  `show_seq` int(8) DEFAULT NULL COMMENT '显示顺序',
  `download_amount` int(8) DEFAULT NULL COMMENT '软件下载总数',
  `visit_amount` int(8) DEFAULT NULL COMMENT '软件访问总数',
  `comment_amount` int(8) DEFAULT NULL COMMENT '软件评论总数',
  `valid_flag` varchar(5) DEFAULT NULL COMMENT '效力标志',
  `invalid_department_id` varchar(50) DEFAULT NULL COMMENT '失效用户所属部门编号',
  `invalid_user_id` varchar(50) DEFAULT NULL COMMENT '失效用户编号',
  `invalid_datetime` datetime DEFAULT NULL COMMENT '失效时间',
  `create_department_id` varchar(50) DEFAULT NULL COMMENT '创建用户所属部门编号',
  `create_user_id` varchar(50) DEFAULT NULL COMMENT '创建用户编号',
  `create_datetime` datetime DEFAULT NULL COMMENT '创建时间',
  `update_department_id` varchar(50) DEFAULT NULL COMMENT '更新用户部门所属编号',
  `update_user_id` varchar(50) DEFAULT NULL COMMENT '更新用户编号',
  `update_datetime` datetime DEFAULT NULL COMMENT '更新时间',
  `software_ownner` varchar(50) DEFAULT NULL COMMENT '软件所有者（各中心id）',
  `software_name` varchar(200) DEFAULT NULL COMMENT '软件名称',
  `software_attribute` varchar(50) DEFAULT NULL COMMENT '软件属性（PUBLIC，CENTER）',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT '软件版本信息';

-- ----------------------------
-- Records of sw_software_version_info
-- ----------------------------
BEGIN;
INSERT INTO `sw_software_version_info` VALUES ('0000001', '0000000001', '8.2.2004', '', NULL, '', '<p style=\";font-size: 14px;font-family: DengXian;border: none;padding: 0\"><strong>使用说明</strong></p><p style=\";font-size: 14px;font-family: DengXian;text-align: justify;white-space: normal;line-height: 25px;background: white\"><span style=\"font-size: 12px;font-family: &#39;Helvetica Neue&#39;;color: rgb(94, 102, 120)\">1</span><span style=\"font-size: 12px;color: rgb(94, 102, 120)\">、备份配置文件：</span></p><p style=\";font-size: 14px;font-family: DengXian;text-align: justify;white-space: normal;text-indent: 28px;background: whitesmoke\"><span style=\"font-size: 12px;font-family: &#39;Helvetica Neue&#39;;color: rgb(102, 102, 102)\">cp -a /etc/yum.repos.d/Cen<span _ngcontent-kiv-c137=\"\" style=\"box-sizing: border-box\">tOS-Base.repo /etc/yum.repos.d/CentOS-Base.repo.bak</span></span></p><p style=\";font-size: 14px;font-family: DengXian;text-align: justify;white-space: normal;line-height: 25px;background: white\"><span style=\"font-size: 12px;font-family: &#39;Helvetica Neue&#39;;color: rgb(94, 102, 120)\"><span _ngcontent-kiv-c137=\"\" style=\"box-sizing: border-box\">2</span><span style=\"font-size: 12px\">、两种方案，请大家自行选取。</span></span></p><p style=\";font-size: 14px;font-family: DengXian;text-align: justify;white-space: normal;text-indent: 28px;line-height: 25px;background: white\"><span style=\"font-size: 12px;color: rgb(94, 102, 120)\">方案一：</span></p><p style=\"margin: 5px 0;font-size: 16px;font-family: 宋体;white-space: normal;text-indent: 28px\"><span style=\"font-size: 12px;font-family: DengXian;color: rgb(94, 102, 120)\">下载新的</span><span style=\"font-size: 12px;font-family: &#39;Helvetica Neue&#39;;color: rgb(229, 136, 59)\">CentOS-Base.repo</span><span style=\"font-size: 12px;font-family: DengXian;color: rgb(94, 102, 120)\">文件到</span><span style=\"font-size: 12px;font-family: &#39;Helvetica Neue&#39;;color: rgb(229, 136, 59)\">/etc/yum.repos.d/</span><span style=\"font-size: 12px;font-family: DengXian;color: rgb(94, 102, 120)\">目录下</span><span style=\"font-size: 12px;font-family: &#39;Helvetica Neue&#39;;color: rgb(94, 102, 120)\">,</span><span style=\"font-size: 12px;font-family: DengXian;color: rgb(94, 102, 120)\">选择</span><span style=\"font-size: 12px;font-family: &#39;Helvetica Neue&#39;;color: rgb(94, 102, 120)\">CentOS</span><span style=\"font-size: 12px;font-family: DengXian;color: rgb(94, 102, 120)\">版本：CentOS 8.2.2004</span></p><p style=\";font-size: 14px;font-family: DengXian;text-align: justify;white-space: normal;line-height: 25px;background: white\"><span style=\"font-size: 12px;color: rgb(94, 102, 120)\">执行如下命令：</span></p><p style=\";font-size: 14px;font-family: DengXian;text-align: justify;white-space: normal;text-indent: 28px;background: whitesmoke\"><span style=\"font-size: 12px;font-family: &#39;Helvetica Neue&#39;;color: rgb(102, 102, 102)\">wget -O /etc/yum.repos.d/CentOS-Base.repo https://172.13.30.100/repository/conf/CentOS-8-anon.repo</span></p><p style=\"margin: 5px 0;font-size: 16px;font-family: 宋体;white-space: normal;text-indent: 28px\"><span style=\"font-size: 12px;font-family: DengXian;color: rgb(94, 102, 120)\"><span _ngcontent-kiv-c137=\"\" style=\"box-sizing: border-box\">方案二：</span></span></p><p style=\"margin: 5px 0;font-size: 16px;font-family: 宋体;white-space: normal;text-indent: 28px\"><span style=\"font-size: 12px;font-family: DengXian;color: rgb(94, 102, 120)\">修改</span><span style=\"font-size: 12px;font-family: &#39;Helvetica Neue&#39;;color: rgb(229, 136, 59)\">CentOS-Base.repo</span><span style=\"font-size: 12px;font-family: DengXian;color: rgb(94, 102, 120)\">文件，取消</span><span style=\"font-size: 12px;font-family: &#39;Helvetica Neue&#39;;color: rgb(229, 136, 59)\">baseurl</span><span style=\"font-size: 12px;font-family: DengXian;color: rgb(94, 102, 120)\">开头的行的注释，并增加</span><span style=\"font-size: 12px;font-family: &#39;Helvetica Neue&#39;;color: rgb(229, 136, 59)\">mirrorlist</span><span style=\"font-size: 12px;font-family: DengXian;color: rgb(94, 102, 120)\">开头的行的注释。将文件中的</span><span style=\"font-size: 12px;font-family: &#39;Helvetica Neue&#39;;color: rgb(229, 136, 59)\">http://mirror.centos.org</span><span style=\"font-size: 12px;font-family: DengXian;color: rgb(94, 102, 120)\">替换成</span><span style=\"font-size: 12px;font-family: &#39;Helvetica Neue&#39;;color: rgb(229, 136, 59)\">172.13.30.100</span><span style=\"font-size: 12px;font-family: DengXian;color: rgb(94, 102, 120)\">，可以参考如下命令：</span></p><p style=\";font-size: 14px;font-family: DengXian;text-align: justify;white-space: normal;text-indent: 28px;background: whitesmoke\"><span style=\"font-size: 12px;font-family: &#39;Helvetica Neue&#39;;color: rgb(102, 102, 102)\">sed -i &quot;s/#baseurl/baseurl/g&quot; /etc/yum.repos.d/CentOS-Base.repo</span></p><p style=\";font-size: 14px;font-family: DengXian;text-align: justify;white-space: normal;text-indent: 28px;background: whitesmoke\"><span style=\"font-size: 12px;font-family: &#39;Helvetica Neue&#39;;color: rgb(102, 102, 102)\"><span _ngcontent-kiv-c137=\"\" style=\"box-sizing: border-box\">sed -i &quot;s/mirrorlist=http/#mirrorlist=http/g&quot; /etc/yum.repos.d/Cent<span _ngcontent-kiv-c137=\"\" style=\"box-sizing: border-box\">OS-Base.repo</span></span></span></p><p style=\";font-size: 14px;font-family: DengXian;text-align: justify;white-space: normal;text-indent: 28px;background: whitesmoke\"><span style=\"font-size: 12px;font-family: &#39;Helvetica Neue&#39;;color: rgb(102, 102, 102)\"><span _ngcontent-kiv-c137=\"\" style=\"box-sizing: border-box\">sed -i &quot;s@http://mirror.centos.org@https://172.13.30.100@g&quot; /etc/yum.repos.d/CentOS-Base.repo</span></span></p><p style=\"margin: 5px 0;font-size: 16px;font-family: 宋体;white-space: normal\"><span style=\"font-size: 12px;font-family: &#39;Helvetica Neue&#39;;color: rgb(94, 102, 120)\"><span _ngcontent-kiv-c137=\"\" style=\"box-sizing: border-box\">3</span><span style=\"font-size: 12px;font-family: DengXian\">、执行<span style=\"font-size: 12px;font-family: &#39;Helvetica Neue&#39;;color: rgb(229, 136, 59)\">yum clean all</span><span style=\"font-size: 12px\">清除原有</span><span style=\"font-size: 12px;font-family: &#39;Helvetica Neue&#39;\">yum</span><span style=\"font-size: 12px\">缓存。</span></span></span></p><p style=\"margin: 5px 0;font-size: 16px;font-family: 宋体;white-space: normal\"><span _ngcontent-ptu-c136=\"\" style=\"box-sizing: border-box\"><span style=\"font-size: 12px;font-family: &#39;Helvetica Neue&#39;;color: rgb(94, 102, 120)\">4</span><span style=\"font-size: 12px;font-family: DengXian;color: rgb(94, 102, 120)\">、执行<span style=\"font-size: 12px;font-family: &#39;Helvetica Neue&#39;;color: rgb(229, 136, 59)\">yum makecache</span><span style=\"font-size: 12px\">（刷新缓存）或者<span style=\"font-size: 12px;font-family: &#39;Helvetica Neue&#39;;color: rgb(229, 136, 59)\">yum repolist all</span><span style=\"font-size: 12px\">（查看所有配置可以使用的文件，会自动刷新缓存）。</span></span></span></span></p><p style=\"margin: 5px 0;font-size: 16px;font-family: 宋体;white-space: normal\">&nbsp;</p><p style=\";font-size: 14px;font-family: DengXian;border: none;padding: 0\"><strong>相关网址</strong></p><p style=\";font-size: 14px;font-family: DengXian;text-align: justify;white-space: normal;text-indent: 28px;background: whitesmoke\"><span style=\"font-size: 12px;font-family: &#39;Helvetica Neue&#39;;color: rgb(102, 102, 102)\">CentOS</span><span style=\"font-size: 12px;color: rgb(102, 102, 102)\"><span _ngcontent-kiv-c137=\"\" style=\"box-sizing: border-box\">官方地址：</span><span style=\"font-size: 12px;font-family: &#39;Helvetica Neue&#39;\"><a href=\"http://www.centos.org/\" style=\"color: rgb(149, 79, 114)\"><span _ngcontent-kiv-c137=\"\" style=\"box-sizing: border-box\">http://www.centos.org/</span></a></span></span></p><p style=\";font-size: 14px;font-family: DengXian;text-align: justify;white-space: normal;text-indent: 28px;background: whitesmoke\"><span style=\"font-size: 12px;font-family: &#39;Helvetica Neue&#39;;color: rgb(102, 102, 102)\">CentOS</span><span style=\"font-size: 12px;color: rgb(102, 102, 102)\"><span _ngcontent-kiv-c137=\"\" style=\"box-sizing: border-box\">邮件列表地址：</span><span style=\"font-size: 12px;font-family: &#39;Helvetica Neue&#39;\"><a href=\"http://www.centos.org/modules/tinycontent/index.php?id=16\" style=\"color: rgb(149, 79, 114)\"><span _ngcontent-kiv-c137=\"\" style=\"box-sizing: border-box\">http://www.centos.org/modules/tinycontent/index.php?id=16</span></a></span></span></p><p style=\";font-size: 14px;font-family: DengXian;text-align: justify;white-space: normal;text-indent: 28px;background: whitesmoke\"><span style=\"font-size: 12px;font-family: &#39;Helvetica Neue&#39;;color: rgb(102, 102, 102)\">CentOS</span><span style=\"font-size: 12px;color: rgb(102, 102, 102)\"><span _ngcontent-kiv-c137=\"\" style=\"box-sizing: border-box\">论坛地址：</span><span style=\"font-size: 12px;font-family: &#39;Helvetica Neue&#39;\"><a href=\"http://www.centos.org/modules/newbb/\" style=\"color: rgb(149, 79, 114)\"><span _ngcontent-kiv-c137=\"\" style=\"box-sizing: border-box\">http://www.centos.org/modules/newbb/</span></a></span></span></p><p style=\";font-size: 14px;font-family: DengXian;text-align: justify;white-space: normal;text-indent: 28px;background: whitesmoke\"><span style=\"font-size: 12px;font-family: &#39;Helvetica Neue&#39;;color: rgb(102, 102, 102)\">CentOS</span><span style=\"font-size: 12px;color: rgb(102, 102, 102)\"><span _ngcontent-kiv-c137=\"\" style=\"box-sizing: border-box\">文档地址：</span><span style=\"font-size: 12px;font-family: &#39;Helvetica Neue&#39;\"><a href=\"http://www.centos.org/docs/\" style=\"color: rgb(149, 79, 114)\"><span _ngcontent-kiv-c137=\"\" style=\"box-sizing: border-box\">http://www.centos.org/docs/</span></a></span></span></p><p style=\";font-size: 14px;font-family: DengXian;text-align: justify;white-space: normal;text-indent: 28px;background: whitesmoke\"><span style=\"font-size: 12px;font-family: &#39;Helvetica Neue&#39;;color: rgb(102, 102, 102)\">CentOS Wiki</span><span style=\"font-size: 12px;color: rgb(102, 102, 102)\"><span _ngcontent-kiv-c137=\"\" style=\"box-sizing: border-box\">地址：</span><span style=\"font-size: 12px;font-family: &#39;Helvetica Neue&#39;\"><a href=\"http://wiki.centos.org/\" style=\"color: rgb(149, 79, 114)\"><span style=\"color: rgb(102, 102, 102)\"><span _ngcontent-kiv-c137=\"\" style=\"box-sizing: border-box\">http://wiki.centos.<span _ngcontent-kiv-c137=\"\" style=\"box-sizing: border-box\">o<span _ngcontent-kiv-c137=\"\" style=\"box-sizing: border-box\">rg/</span></span></span></span></a></span></span></p><p><br/></p>', 'file_1000000001', 'FOLDER', NULL, NULL, '2020-11-06 14:19:28', NULL, 'ACCEPTED', NULL, NULL, NULL, NULL, NULL, NULL, '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'PUBLIC', NULL, 'PUBLIC');
INSERT INTO `sw_software_version_info` VALUES ('0000002', '0000000001', '8.1.1911', NULL, NULL, NULL, '<p style=\";font-size: 14px;font-family: DengXian;border: none;padding: 0\"><strong>使用说明</strong></p><p style=\";font-size: 14px;font-family: DengXian;text-align: justify;white-space: normal;line-height: 25px;background: white\"><span style=\"font-size: 12px;font-family: &#39;Helvetica Neue&#39;;color: rgb(94, 102, 120)\">1</span><span style=\"font-size: 12px;color: rgb(94, 102, 120)\">、备份配置文件：</span></p><p style=\";font-size: 14px;font-family: DengXian;text-align: justify;white-space: normal;text-indent: 28px;background: whitesmoke\"><span style=\"font-size: 12px;font-family: &#39;Helvetica Neue&#39;;color: rgb(102, 102, 102)\">cp -a /etc/yum.repos.d/Cen<span _ngcontent-kiv-c137=\"\" style=\"box-sizing: border-box\">tOS-Base.repo /etc/yum.repos.d/CentOS-Base.repo.bak</span></span></p><p style=\";font-size: 14px;font-family: DengXian;text-align: justify;white-space: normal;line-height: 25px;background: white\"><span style=\"font-size: 12px;font-family: &#39;Helvetica Neue&#39;;color: rgb(94, 102, 120)\"><span _ngcontent-kiv-c137=\"\" style=\"box-sizing: border-box\">2</span><span style=\"font-size: 12px\">、两种方案，请大家自行选取。</span></span></p><p style=\";font-size: 14px;font-family: DengXian;text-align: justify;white-space: normal;text-indent: 28px;line-height: 25px;background: white\"><span style=\"font-size: 12px;color: rgb(94, 102, 120)\">方案一：</span></p><p style=\"margin: 5px 0;font-size: 16px;font-family: 宋体;white-space: normal;text-indent: 28px\"><span style=\"font-size: 12px;font-family: DengXian;color: rgb(94, 102, 120)\">下载新的</span><span style=\"font-size: 12px;font-family: &#39;Helvetica Neue&#39;;color: rgb(229, 136, 59)\">CentOS-Base.repo</span><span style=\"font-size: 12px;font-family: DengXian;color: rgb(94, 102, 120)\">文件到</span><span style=\"font-size: 12px;font-family: &#39;Helvetica Neue&#39;;color: rgb(229, 136, 59)\">/etc/yum.repos.d/</span><span style=\"font-size: 12px;font-family: DengXian;color: rgb(94, 102, 120)\">目录下</span><span style=\"font-size: 12px;font-family: &#39;Helvetica Neue&#39;;color: rgb(94, 102, 120)\">,</span><span style=\"font-size: 12px;font-family: DengXian;color: rgb(94, 102, 120)\">选择</span><span style=\"font-size: 12px;font-family: &#39;Helvetica Neue&#39;;color: rgb(94, 102, 120)\">CentOS</span><span style=\"font-size: 12px;font-family: DengXian;color: rgb(94, 102, 120)\">版本：CentOS 8.1.1911</span></p><p style=\";font-size: 14px;font-family: DengXian;text-align: justify;white-space: normal;line-height: 25px;background: white\"><span style=\"font-size: 12px;color: rgb(94, 102, 120)\">执行如下命令：</span></p><p style=\";font-size: 14px;font-family: DengXian;text-align: justify;white-space: normal;text-indent: 28px;background: whitesmoke\"><span style=\"font-size: 12px;font-family: &#39;Helvetica Neue&#39;;color: rgb(102, 102, 102)\">wget -O /etc/yum.repos.d/CentOS-Base.repo https://172.13.30.100/repository/conf/CentOS-8-anon.repo</span></p><p style=\"margin: 5px 0;font-size: 16px;font-family: 宋体;white-space: normal;text-indent: 28px\"><span style=\"font-size: 12px;font-family: DengXian;color: rgb(94, 102, 120)\"><span _ngcontent-kiv-c137=\"\" style=\"box-sizing: border-box\">方案二：</span></span></p><p style=\"margin: 5px 0;font-size: 16px;font-family: 宋体;white-space: normal;text-indent: 28px\"><span style=\"font-size: 12px;font-family: DengXian;color: rgb(94, 102, 120)\">修改</span><span style=\"font-size: 12px;font-family: &#39;Helvetica Neue&#39;;color: rgb(229, 136, 59)\">CentOS-Base.repo</span><span style=\"font-size: 12px;font-family: DengXian;color: rgb(94, 102, 120)\">文件，取消</span><span style=\"font-size: 12px;font-family: &#39;Helvetica Neue&#39;;color: rgb(229, 136, 59)\">baseurl</span><span style=\"font-size: 12px;font-family: DengXian;color: rgb(94, 102, 120)\">开头的行的注释，并增加</span><span style=\"font-size: 12px;font-family: &#39;Helvetica Neue&#39;;color: rgb(229, 136, 59)\">mirrorlist</span><span style=\"font-size: 12px;font-family: DengXian;color: rgb(94, 102, 120)\">开头的行的注释。将文件中的</span><span style=\"font-size: 12px;font-family: &#39;Helvetica Neue&#39;;color: rgb(229, 136, 59)\">http://mirror.centos.org</span><span style=\"font-size: 12px;font-family: DengXian;color: rgb(94, 102, 120)\">替换成</span><span style=\"font-size: 12px;font-family: &#39;Helvetica Neue&#39;;color: rgb(229, 136, 59)\">172.13.30.100</span><span style=\"font-size: 12px;font-family: DengXian;color: rgb(94, 102, 120)\">，可以参考如下命令：</span></p><p style=\";font-size: 14px;font-family: DengXian;text-align: justify;white-space: normal;text-indent: 28px;background: whitesmoke\"><span style=\"font-size: 12px;font-family: &#39;Helvetica Neue&#39;;color: rgb(102, 102, 102)\">sed -i &quot;s/#baseurl/baseurl/g&quot; /etc/yum.repos.d/CentOS-Base.repo</span></p><p style=\";font-size: 14px;font-family: DengXian;text-align: justify;white-space: normal;text-indent: 28px;background: whitesmoke\"><span style=\"font-size: 12px;font-family: &#39;Helvetica Neue&#39;;color: rgb(102, 102, 102)\"><span _ngcontent-kiv-c137=\"\" style=\"box-sizing: border-box\">sed -i &quot;s/mirrorlist=http/#mirrorlist=http/g&quot; /etc/yum.repos.d/Cent<span _ngcontent-kiv-c137=\"\" style=\"box-sizing: border-box\">OS-Base.repo</span></span></span></p><p style=\";font-size: 14px;font-family: DengXian;text-align: justify;white-space: normal;text-indent: 28px;background: whitesmoke\"><span style=\"font-size: 12px;font-family: &#39;Helvetica Neue&#39;;color: rgb(102, 102, 102)\"><span _ngcontent-kiv-c137=\"\" style=\"box-sizing: border-box\">sed -i &quot;s@http://mirror.centos.org@https://172.13.30.100@g&quot; /etc/yum.repos.d/CentOS-Base.repo</span></span></p><p style=\"margin: 5px 0;font-size: 16px;font-family: 宋体;white-space: normal\"><span style=\"font-size: 12px;font-family: &#39;Helvetica Neue&#39;;color: rgb(94, 102, 120)\"><span _ngcontent-kiv-c137=\"\" style=\"box-sizing: border-box\">3</span><span style=\"font-size: 12px;font-family: DengXian\">、执行<span style=\"font-size: 12px;font-family: &#39;Helvetica Neue&#39;;color: rgb(229, 136, 59)\">yum clean all</span><span style=\"font-size: 12px\">清除原有</span><span style=\"font-size: 12px;font-family: &#39;Helvetica Neue&#39;\">yum</span><span style=\"font-size: 12px\">缓存。</span></span></span></p><p style=\"margin: 5px 0;font-size: 16px;font-family: 宋体;white-space: normal\"><span _ngcontent-ptu-c136=\"\" style=\"box-sizing: border-box\"><span style=\"font-size: 12px;font-family: &#39;Helvetica Neue&#39;;color: rgb(94, 102, 120)\">4</span><span style=\"font-size: 12px;font-family: DengXian;color: rgb(94, 102, 120)\">、执行<span style=\"font-size: 12px;font-family: &#39;Helvetica Neue&#39;;color: rgb(229, 136, 59)\">yum makecache</span><span style=\"font-size: 12px\">（刷新缓存）或者<span style=\"font-size: 12px;font-family: &#39;Helvetica Neue&#39;;color: rgb(229, 136, 59)\">yum repolist all</span><span style=\"font-size: 12px\">（查看所有配置可以使用的文件，会自动刷新缓存）。</span></span></span></span></p><p style=\"margin: 5px 0;font-size: 16px;font-family: 宋体;white-space: normal\">&nbsp;</p><p style=\";font-size: 14px;font-family: DengXian;border: none;padding: 0\"><strong>相关网址</strong></p><p style=\";font-size: 14px;font-family: DengXian;text-align: justify;white-space: normal;text-indent: 28px;background: whitesmoke\"><span style=\"font-size: 12px;font-family: &#39;Helvetica Neue&#39;;color: rgb(102, 102, 102)\">CentOS</span><span style=\"font-size: 12px;color: rgb(102, 102, 102)\"><span _ngcontent-kiv-c137=\"\" style=\"box-sizing: border-box\">官方地址：</span><span style=\"font-size: 12px;font-family: &#39;Helvetica Neue&#39;\"><a href=\"http://www.centos.org/\" style=\"color: rgb(149, 79, 114)\"><span _ngcontent-kiv-c137=\"\" style=\"box-sizing: border-box\">http://www.centos.org/</span></a></span></span></p><p style=\";font-size: 14px;font-family: DengXian;text-align: justify;white-space: normal;text-indent: 28px;background: whitesmoke\"><span style=\"font-size: 12px;font-family: &#39;Helvetica Neue&#39;;color: rgb(102, 102, 102)\">CentOS</span><span style=\"font-size: 12px;color: rgb(102, 102, 102)\"><span _ngcontent-kiv-c137=\"\" style=\"box-sizing: border-box\">邮件列表地址：</span><span style=\"font-size: 12px;font-family: &#39;Helvetica Neue&#39;\"><a href=\"http://www.centos.org/modules/tinycontent/index.php?id=16\" style=\"color: rgb(149, 79, 114)\"><span _ngcontent-kiv-c137=\"\" style=\"box-sizing: border-box\">http://www.centos.org/modules/tinycontent/index.php?id=16</span></a></span></span></p><p style=\";font-size: 14px;font-family: DengXian;text-align: justify;white-space: normal;text-indent: 28px;background: whitesmoke\"><span style=\"font-size: 12px;font-family: &#39;Helvetica Neue&#39;;color: rgb(102, 102, 102)\">CentOS</span><span style=\"font-size: 12px;color: rgb(102, 102, 102)\"><span _ngcontent-kiv-c137=\"\" style=\"box-sizing: border-box\">论坛地址：</span><span style=\"font-size: 12px;font-family: &#39;Helvetica Neue&#39;\"><a href=\"http://www.centos.org/modules/newbb/\" style=\"color: rgb(149, 79, 114)\"><span _ngcontent-kiv-c137=\"\" style=\"box-sizing: border-box\">http://www.centos.org/modules/newbb/</span></a></span></span></p><p style=\";font-size: 14px;font-family: DengXian;text-align: justify;white-space: normal;text-indent: 28px;background: whitesmoke\"><span style=\"font-size: 12px;font-family: &#39;Helvetica Neue&#39;;color: rgb(102, 102, 102)\">CentOS</span><span style=\"font-size: 12px;color: rgb(102, 102, 102)\"><span _ngcontent-kiv-c137=\"\" style=\"box-sizing: border-box\">文档地址：</span><span style=\"font-size: 12px;font-family: &#39;Helvetica Neue&#39;\"><a href=\"http://www.centos.org/docs/\" style=\"color: rgb(149, 79, 114)\"><span _ngcontent-kiv-c137=\"\" style=\"box-sizing: border-box\">http://www.centos.org/docs/</span></a></span></span></p><p style=\";font-size: 14px;font-family: DengXian;text-align: justify;white-space: normal;text-indent: 28px;background: whitesmoke\"><span style=\"font-size: 12px;font-family: &#39;Helvetica Neue&#39;;color: rgb(102, 102, 102)\">CentOS Wiki</span><span style=\"font-size: 12px;color: rgb(102, 102, 102)\"><span _ngcontent-kiv-c137=\"\" style=\"box-sizing: border-box\">地址：</span><span style=\"font-size: 12px;font-family: &#39;Helvetica Neue&#39;\"><a href=\"http://wiki.centos.org/\" style=\"color: rgb(149, 79, 114)\"><span style=\"color: rgb(102, 102, 102)\"><span _ngcontent-kiv-c137=\"\" style=\"box-sizing: border-box\">http://wiki.centos.<span _ngcontent-kiv-c137=\"\" style=\"box-sizing: border-box\">o<span _ngcontent-kiv-c137=\"\" style=\"box-sizing: border-box\">rg/</span></span></span></span></a></span></span></p><p><br/></p>', 'file_1000000002', 'FOLDER', NULL, NULL, '2020-11-06 14:19:28', NULL, 'ACCEPTED', NULL, NULL, NULL, NULL, NULL, NULL, '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'PUBLIC', NULL, 'PUBLIC');
INSERT INTO `sw_software_version_info` VALUES ('0000003', '0000000001', '8.0.1905', '4.2GB', NULL, NULL, '<p style=\";font-size: 14px;font-family: DengXian;border: none;padding: 0\"><strong>使用说明</strong></p><p style=\";font-size: 14px;font-family: DengXian;text-align: justify;white-space: normal;line-height: 25px;background: white\"><span style=\"font-size: 12px;font-family: &#39;Helvetica Neue&#39;;color: rgb(94, 102, 120)\">1</span><span style=\"font-size: 12px;color: rgb(94, 102, 120)\">、备份配置文件：</span></p><p style=\";font-size: 14px;font-family: DengXian;text-align: justify;white-space: normal;text-indent: 28px;background: whitesmoke\"><span style=\"font-size: 12px;font-family: &#39;Helvetica Neue&#39;;color: rgb(102, 102, 102)\">cp -a /etc/yum.repos.d/Cen<span _ngcontent-kiv-c137=\"\" style=\"box-sizing: border-box\">tOS-Base.repo /etc/yum.repos.d/CentOS-Base.repo.bak</span></span></p><p style=\";font-size: 14px;font-family: DengXian;text-align: justify;white-space: normal;line-height: 25px;background: white\"><span style=\"font-size: 12px;font-family: &#39;Helvetica Neue&#39;;color: rgb(94, 102, 120)\"><span _ngcontent-kiv-c137=\"\" style=\"box-sizing: border-box\">2</span><span style=\"font-size: 12px\">、两种方案，请大家自行选取。</span></span></p><p style=\";font-size: 14px;font-family: DengXian;text-align: justify;white-space: normal;text-indent: 28px;line-height: 25px;background: white\"><span style=\"font-size: 12px;color: rgb(94, 102, 120)\">方案一：</span></p><p style=\"margin: 5px 0;font-size: 16px;font-family: 宋体;white-space: normal;text-indent: 28px\"><span style=\"font-size: 12px;font-family: DengXian;color: rgb(94, 102, 120)\">下载新的</span><span style=\"font-size: 12px;font-family: &#39;Helvetica Neue&#39;;color: rgb(229, 136, 59)\">CentOS-Base.repo</span><span style=\"font-size: 12px;font-family: DengXian;color: rgb(94, 102, 120)\">文件到</span><span style=\"font-size: 12px;font-family: &#39;Helvetica Neue&#39;;color: rgb(229, 136, 59)\">/etc/yum.repos.d/</span><span style=\"font-size: 12px;font-family: DengXian;color: rgb(94, 102, 120)\">目录下</span><span style=\"font-size: 12px;font-family: &#39;Helvetica Neue&#39;;color: rgb(94, 102, 120)\">,</span><span style=\"font-size: 12px;font-family: DengXian;color: rgb(94, 102, 120)\">选择</span><span style=\"font-size: 12px;font-family: &#39;Helvetica Neue&#39;;color: rgb(94, 102, 120)\">CentOS</span><span style=\"font-size: 12px;font-family: DengXian;color: rgb(94, 102, 120)\">版本：CentOS 8.0.1905</span></p><p style=\";font-size: 14px;font-family: DengXian;text-align: justify;white-space: normal;line-height: 25px;background: white\"><span style=\"font-size: 12px;color: rgb(94, 102, 120)\">执行如下命令：</span></p><p style=\";font-size: 14px;font-family: DengXian;text-align: justify;white-space: normal;text-indent: 28px;background: whitesmoke\"><span style=\"font-size: 12px;font-family: &#39;Helvetica Neue&#39;;color: rgb(102, 102, 102)\">wget -O /etc/yum.repos.d/CentOS-Base.repo https://172.13.30.100/repository/conf/CentOS-8-anon.repo</span></p><p style=\"margin: 5px 0;font-size: 16px;font-family: 宋体;white-space: normal;text-indent: 28px\"><span style=\"font-size: 12px;font-family: DengXian;color: rgb(94, 102, 120)\"><span _ngcontent-kiv-c137=\"\" style=\"box-sizing: border-box\">方案二：</span></span></p><p style=\"margin: 5px 0;font-size: 16px;font-family: 宋体;white-space: normal;text-indent: 28px\"><span style=\"font-size: 12px;font-family: DengXian;color: rgb(94, 102, 120)\">修改</span><span style=\"font-size: 12px;font-family: &#39;Helvetica Neue&#39;;color: rgb(229, 136, 59)\">CentOS-Base.repo</span><span style=\"font-size: 12px;font-family: DengXian;color: rgb(94, 102, 120)\">文件，取消</span><span style=\"font-size: 12px;font-family: &#39;Helvetica Neue&#39;;color: rgb(229, 136, 59)\">baseurl</span><span style=\"font-size: 12px;font-family: DengXian;color: rgb(94, 102, 120)\">开头的行的注释，并增加</span><span style=\"font-size: 12px;font-family: &#39;Helvetica Neue&#39;;color: rgb(229, 136, 59)\">mirrorlist</span><span style=\"font-size: 12px;font-family: DengXian;color: rgb(94, 102, 120)\">开头的行的注释。将文件中的</span><span style=\"font-size: 12px;font-family: &#39;Helvetica Neue&#39;;color: rgb(229, 136, 59)\">http://mirror.centos.org</span><span style=\"font-size: 12px;font-family: DengXian;color: rgb(94, 102, 120)\">替换成</span><span style=\"font-size: 12px;font-family: &#39;Helvetica Neue&#39;;color: rgb(229, 136, 59)\">172.13.30.100</span><span style=\"font-size: 12px;font-family: DengXian;color: rgb(94, 102, 120)\">，可以参考如下命令：</span></p><p style=\";font-size: 14px;font-family: DengXian;text-align: justify;white-space: normal;text-indent: 28px;background: whitesmoke\"><span style=\"font-size: 12px;font-family: &#39;Helvetica Neue&#39;;color: rgb(102, 102, 102)\">sed -i &quot;s/#baseurl/baseurl/g&quot; /etc/yum.repos.d/CentOS-Base.repo</span></p><p style=\";font-size: 14px;font-family: DengXian;text-align: justify;white-space: normal;text-indent: 28px;background: whitesmoke\"><span style=\"font-size: 12px;font-family: &#39;Helvetica Neue&#39;;color: rgb(102, 102, 102)\"><span _ngcontent-kiv-c137=\"\" style=\"box-sizing: border-box\">sed -i &quot;s/mirrorlist=http/#mirrorlist=http/g&quot; /etc/yum.repos.d/Cent<span _ngcontent-kiv-c137=\"\" style=\"box-sizing: border-box\">OS-Base.repo</span></span></span></p><p style=\";font-size: 14px;font-family: DengXian;text-align: justify;white-space: normal;text-indent: 28px;background: whitesmoke\"><span style=\"font-size: 12px;font-family: &#39;Helvetica Neue&#39;;color: rgb(102, 102, 102)\"><span _ngcontent-kiv-c137=\"\" style=\"box-sizing: border-box\">sed -i &quot;s@http://mirror.centos.org@https://172.13.30.100@g&quot; /etc/yum.repos.d/CentOS-Base.repo</span></span></p><p style=\"margin: 5px 0;font-size: 16px;font-family: 宋体;white-space: normal\"><span style=\"font-size: 12px;font-family: &#39;Helvetica Neue&#39;;color: rgb(94, 102, 120)\"><span _ngcontent-kiv-c137=\"\" style=\"box-sizing: border-box\">3</span><span style=\"font-size: 12px;font-family: DengXian\">、执行<span style=\"font-size: 12px;font-family: &#39;Helvetica Neue&#39;;color: rgb(229, 136, 59)\">yum clean all</span><span style=\"font-size: 12px\">清除原有</span><span style=\"font-size: 12px;font-family: &#39;Helvetica Neue&#39;\">yum</span><span style=\"font-size: 12px\">缓存。</span></span></span></p><p style=\"margin: 5px 0;font-size: 16px;font-family: 宋体;white-space: normal\"><span _ngcontent-ptu-c136=\"\" style=\"box-sizing: border-box\"><span style=\"font-size: 12px;font-family: &#39;Helvetica Neue&#39;;color: rgb(94, 102, 120)\">4</span><span style=\"font-size: 12px;font-family: DengXian;color: rgb(94, 102, 120)\">、执行<span style=\"font-size: 12px;font-family: &#39;Helvetica Neue&#39;;color: rgb(229, 136, 59)\">yum makecache</span><span style=\"font-size: 12px\">（刷新缓存）或者<span style=\"font-size: 12px;font-family: &#39;Helvetica Neue&#39;;color: rgb(229, 136, 59)\">yum repolist all</span><span style=\"font-size: 12px\">（查看所有配置可以使用的文件，会自动刷新缓存）。</span></span></span></span></p><p style=\"margin: 5px 0;font-size: 16px;font-family: 宋体;white-space: normal\">&nbsp;</p><p style=\";font-size: 14px;font-family: DengXian;border: none;padding: 0\"><strong>相关网址</strong></p><p style=\";font-size: 14px;font-family: DengXian;text-align: justify;white-space: normal;text-indent: 28px;background: whitesmoke\"><span style=\"font-size: 12px;font-family: &#39;Helvetica Neue&#39;;color: rgb(102, 102, 102)\">CentOS</span><span style=\"font-size: 12px;color: rgb(102, 102, 102)\"><span _ngcontent-kiv-c137=\"\" style=\"box-sizing: border-box\">官方地址：</span><span style=\"font-size: 12px;font-family: &#39;Helvetica Neue&#39;\"><a href=\"http://www.centos.org/\" style=\"color: rgb(149, 79, 114)\"><span _ngcontent-kiv-c137=\"\" style=\"box-sizing: border-box\">http://www.centos.org/</span></a></span></span></p><p style=\";font-size: 14px;font-family: DengXian;text-align: justify;white-space: normal;text-indent: 28px;background: whitesmoke\"><span style=\"font-size: 12px;font-family: &#39;Helvetica Neue&#39;;color: rgb(102, 102, 102)\">CentOS</span><span style=\"font-size: 12px;color: rgb(102, 102, 102)\"><span _ngcontent-kiv-c137=\"\" style=\"box-sizing: border-box\">邮件列表地址：</span><span style=\"font-size: 12px;font-family: &#39;Helvetica Neue&#39;\"><a href=\"http://www.centos.org/modules/tinycontent/index.php?id=16\" style=\"color: rgb(149, 79, 114)\"><span _ngcontent-kiv-c137=\"\" style=\"box-sizing: border-box\">http://www.centos.org/modules/tinycontent/index.php?id=16</span></a></span></span></p><p style=\";font-size: 14px;font-family: DengXian;text-align: justify;white-space: normal;text-indent: 28px;background: whitesmoke\"><span style=\"font-size: 12px;font-family: &#39;Helvetica Neue&#39;;color: rgb(102, 102, 102)\">CentOS</span><span style=\"font-size: 12px;color: rgb(102, 102, 102)\"><span _ngcontent-kiv-c137=\"\" style=\"box-sizing: border-box\">论坛地址：</span><span style=\"font-size: 12px;font-family: &#39;Helvetica Neue&#39;\"><a href=\"http://www.centos.org/modules/newbb/\" style=\"color: rgb(149, 79, 114)\"><span _ngcontent-kiv-c137=\"\" style=\"box-sizing: border-box\">http://www.centos.org/modules/newbb/</span></a></span></span></p><p style=\";font-size: 14px;font-family: DengXian;text-align: justify;white-space: normal;text-indent: 28px;background: whitesmoke\"><span style=\"font-size: 12px;font-family: &#39;Helvetica Neue&#39;;color: rgb(102, 102, 102)\">CentOS</span><span style=\"font-size: 12px;color: rgb(102, 102, 102)\"><span _ngcontent-kiv-c137=\"\" style=\"box-sizing: border-box\">文档地址：</span><span style=\"font-size: 12px;font-family: &#39;Helvetica Neue&#39;\"><a href=\"http://www.centos.org/docs/\" style=\"color: rgb(149, 79, 114)\"><span _ngcontent-kiv-c137=\"\" style=\"box-sizing: border-box\">http://www.centos.org/docs/</span></a></span></span></p><p style=\";font-size: 14px;font-family: DengXian;text-align: justify;white-space: normal;text-indent: 28px;background: whitesmoke\"><span style=\"font-size: 12px;font-family: &#39;Helvetica Neue&#39;;color: rgb(102, 102, 102)\">CentOS Wiki</span><span style=\"font-size: 12px;color: rgb(102, 102, 102)\"><span _ngcontent-kiv-c137=\"\" style=\"box-sizing: border-box\">地址：</span><span style=\"font-size: 12px;font-family: &#39;Helvetica Neue&#39;\"><a href=\"http://wiki.centos.org/\" style=\"color: rgb(149, 79, 114)\"><span style=\"color: rgb(102, 102, 102)\"><span _ngcontent-kiv-c137=\"\" style=\"box-sizing: border-box\">http://wiki.centos.<span _ngcontent-kiv-c137=\"\" style=\"box-sizing: border-box\">o<span _ngcontent-kiv-c137=\"\" style=\"box-sizing: border-box\">rg/</span></span></span></span></a></span></span></p><p><br/></p>', 'file_1000000003', 'FOLDER', NULL, NULL, '2020-11-06 14:19:28', NULL, 'ACCEPTED', NULL, NULL, NULL, NULL, NULL, NULL, '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'PUBLIC', NULL, 'PUBLIC');
INSERT INTO `sw_software_version_info` VALUES ('0000004', '0000000001', '8', NULL, NULL, NULL, '<p style=\";font-size: 14px;font-family: DengXian;border: none;padding: 0\"><strong>使用说明</strong></p><p style=\";font-size: 14px;font-family: DengXian;text-align: justify;white-space: normal;line-height: 25px;background: white\"><span style=\"font-size: 12px;font-family: &#39;Helvetica Neue&#39;;color: rgb(94, 102, 120)\">1</span><span style=\"font-size: 12px;color: rgb(94, 102, 120)\">、备份配置文件：</span></p><p style=\";font-size: 14px;font-family: DengXian;text-align: justify;white-space: normal;text-indent: 28px;background: whitesmoke\"><span style=\"font-size: 12px;font-family: &#39;Helvetica Neue&#39;;color: rgb(102, 102, 102)\">cp -a /etc/yum.repos.d/Cen<span _ngcontent-kiv-c137=\"\" style=\"box-sizing: border-box\">tOS-Base.repo /etc/yum.repos.d/CentOS-Base.repo.bak</span></span></p><p style=\";font-size: 14px;font-family: DengXian;text-align: justify;white-space: normal;line-height: 25px;background: white\"><span style=\"font-size: 12px;font-family: &#39;Helvetica Neue&#39;;color: rgb(94, 102, 120)\"><span _ngcontent-kiv-c137=\"\" style=\"box-sizing: border-box\">2</span><span style=\"font-size: 12px\">、两种方案，请大家自行选取。</span></span></p><p style=\";font-size: 14px;font-family: DengXian;text-align: justify;white-space: normal;text-indent: 28px;line-height: 25px;background: white\"><span style=\"font-size: 12px;color: rgb(94, 102, 120)\">方案一：</span></p><p style=\"margin: 5px 0;font-size: 16px;font-family: 宋体;white-space: normal;text-indent: 28px\"><span style=\"font-size: 12px;font-family: DengXian;color: rgb(94, 102, 120)\">下载新的</span><span style=\"font-size: 12px;font-family: &#39;Helvetica Neue&#39;;color: rgb(229, 136, 59)\">CentOS-Base.repo</span><span style=\"font-size: 12px;font-family: DengXian;color: rgb(94, 102, 120)\">文件到</span><span style=\"font-size: 12px;font-family: &#39;Helvetica Neue&#39;;color: rgb(229, 136, 59)\">/etc/yum.repos.d/</span><span style=\"font-size: 12px;font-family: DengXian;color: rgb(94, 102, 120)\">目录下</span><span style=\"font-size: 12px;font-family: &#39;Helvetica Neue&#39;;color: rgb(94, 102, 120)\">,</span><span style=\"font-size: 12px;font-family: DengXian;color: rgb(94, 102, 120)\">选择</span><span style=\"font-size: 12px;font-family: &#39;Helvetica Neue&#39;;color: rgb(94, 102, 120)\">CentOS</span><span style=\"font-size: 12px;font-family: DengXian;color: rgb(94, 102, 120)\">版本：CentOS 8</span></p><p style=\";font-size: 14px;font-family: DengXian;text-align: justify;white-space: normal;line-height: 25px;background: white\"><span style=\"font-size: 12px;color: rgb(94, 102, 120)\">执行如下命令：</span></p><p style=\";font-size: 14px;font-family: DengXian;text-align: justify;white-space: normal;text-indent: 28px;background: whitesmoke\"><span style=\"font-size: 12px;font-family: &#39;Helvetica Neue&#39;;color: rgb(102, 102, 102)\">wget -O /etc/yum.repos.d/CentOS-Base.repo https://172.13.30.100/repository/conf/CentOS-8-anon.repo</span></p><p style=\"margin: 5px 0;font-size: 16px;font-family: 宋体;white-space: normal;text-indent: 28px\"><span style=\"font-size: 12px;font-family: DengXian;color: rgb(94, 102, 120)\"><span _ngcontent-kiv-c137=\"\" style=\"box-sizing: border-box\">方案二：</span></span></p><p style=\"margin: 5px 0;font-size: 16px;font-family: 宋体;white-space: normal;text-indent: 28px\"><span style=\"font-size: 12px;font-family: DengXian;color: rgb(94, 102, 120)\">修改</span><span style=\"font-size: 12px;font-family: &#39;Helvetica Neue&#39;;color: rgb(229, 136, 59)\">CentOS-Base.repo</span><span style=\"font-size: 12px;font-family: DengXian;color: rgb(94, 102, 120)\">文件，取消</span><span style=\"font-size: 12px;font-family: &#39;Helvetica Neue&#39;;color: rgb(229, 136, 59)\">baseurl</span><span style=\"font-size: 12px;font-family: DengXian;color: rgb(94, 102, 120)\">开头的行的注释，并增加</span><span style=\"font-size: 12px;font-family: &#39;Helvetica Neue&#39;;color: rgb(229, 136, 59)\">mirrorlist</span><span style=\"font-size: 12px;font-family: DengXian;color: rgb(94, 102, 120)\">开头的行的注释。将文件中的</span><span style=\"font-size: 12px;font-family: &#39;Helvetica Neue&#39;;color: rgb(229, 136, 59)\">http://mirror.centos.org</span><span style=\"font-size: 12px;font-family: DengXian;color: rgb(94, 102, 120)\">替换成</span><span style=\"font-size: 12px;font-family: &#39;Helvetica Neue&#39;;color: rgb(229, 136, 59)\">172.13.30.100</span><span style=\"font-size: 12px;font-family: DengXian;color: rgb(94, 102, 120)\">，可以参考如下命令：</span></p><p style=\";font-size: 14px;font-family: DengXian;text-align: justify;white-space: normal;text-indent: 28px;background: whitesmoke\"><span style=\"font-size: 12px;font-family: &#39;Helvetica Neue&#39;;color: rgb(102, 102, 102)\">sed -i &quot;s/#baseurl/baseurl/g&quot; /etc/yum.repos.d/CentOS-Base.repo</span></p><p style=\";font-size: 14px;font-family: DengXian;text-align: justify;white-space: normal;text-indent: 28px;background: whitesmoke\"><span style=\"font-size: 12px;font-family: &#39;Helvetica Neue&#39;;color: rgb(102, 102, 102)\"><span _ngcontent-kiv-c137=\"\" style=\"box-sizing: border-box\">sed -i &quot;s/mirrorlist=http/#mirrorlist=http/g&quot; /etc/yum.repos.d/Cent<span _ngcontent-kiv-c137=\"\" style=\"box-sizing: border-box\">OS-Base.repo</span></span></span></p><p style=\";font-size: 14px;font-family: DengXian;text-align: justify;white-space: normal;text-indent: 28px;background: whitesmoke\"><span style=\"font-size: 12px;font-family: &#39;Helvetica Neue&#39;;color: rgb(102, 102, 102)\"><span _ngcontent-kiv-c137=\"\" style=\"box-sizing: border-box\">sed -i &quot;s@http://mirror.centos.org@https://172.13.30.100@g&quot; /etc/yum.repos.d/CentOS-Base.repo</span></span></p><p style=\"margin: 5px 0;font-size: 16px;font-family: 宋体;white-space: normal\"><span style=\"font-size: 12px;font-family: &#39;Helvetica Neue&#39;;color: rgb(94, 102, 120)\"><span _ngcontent-kiv-c137=\"\" style=\"box-sizing: border-box\">3</span><span style=\"font-size: 12px;font-family: DengXian\">、执行<span style=\"font-size: 12px;font-family: &#39;Helvetica Neue&#39;;color: rgb(229, 136, 59)\">yum clean all</span><span style=\"font-size: 12px\">清除原有</span><span style=\"font-size: 12px;font-family: &#39;Helvetica Neue&#39;\">yum</span><span style=\"font-size: 12px\">缓存。</span></span></span></p><p style=\"margin: 5px 0;font-size: 16px;font-family: 宋体;white-space: normal\"><span _ngcontent-ptu-c136=\"\" style=\"box-sizing: border-box\"><span style=\"font-size: 12px;font-family: &#39;Helvetica Neue&#39;;color: rgb(94, 102, 120)\">4</span><span style=\"font-size: 12px;font-family: DengXian;color: rgb(94, 102, 120)\">、执行<span style=\"font-size: 12px;font-family: &#39;Helvetica Neue&#39;;color: rgb(229, 136, 59)\">yum makecache</span><span style=\"font-size: 12px\">（刷新缓存）或者<span style=\"font-size: 12px;font-family: &#39;Helvetica Neue&#39;;color: rgb(229, 136, 59)\">yum repolist all</span><span style=\"font-size: 12px\">（查看所有配置可以使用的文件，会自动刷新缓存）。</span></span></span></span></p><p style=\"margin: 5px 0;font-size: 16px;font-family: 宋体;white-space: normal\">&nbsp;</p><p style=\";font-size: 14px;font-family: DengXian;border: none;padding: 0\"><strong>相关网址</strong></p><p style=\";font-size: 14px;font-family: DengXian;text-align: justify;white-space: normal;text-indent: 28px;background: whitesmoke\"><span style=\"font-size: 12px;font-family: &#39;Helvetica Neue&#39;;color: rgb(102, 102, 102)\">CentOS</span><span style=\"font-size: 12px;color: rgb(102, 102, 102)\"><span _ngcontent-kiv-c137=\"\" style=\"box-sizing: border-box\">官方地址：</span><span style=\"font-size: 12px;font-family: &#39;Helvetica Neue&#39;\"><a href=\"http://www.centos.org/\" style=\"color: rgb(149, 79, 114)\"><span _ngcontent-kiv-c137=\"\" style=\"box-sizing: border-box\">http://www.centos.org/</span></a></span></span></p><p style=\";font-size: 14px;font-family: DengXian;text-align: justify;white-space: normal;text-indent: 28px;background: whitesmoke\"><span style=\"font-size: 12px;font-family: &#39;Helvetica Neue&#39;;color: rgb(102, 102, 102)\">CentOS</span><span style=\"font-size: 12px;color: rgb(102, 102, 102)\"><span _ngcontent-kiv-c137=\"\" style=\"box-sizing: border-box\">邮件列表地址：</span><span style=\"font-size: 12px;font-family: &#39;Helvetica Neue&#39;\"><a href=\"http://www.centos.org/modules/tinycontent/index.php?id=16\" style=\"color: rgb(149, 79, 114)\"><span _ngcontent-kiv-c137=\"\" style=\"box-sizing: border-box\">http://www.centos.org/modules/tinycontent/index.php?id=16</span></a></span></span></p><p style=\";font-size: 14px;font-family: DengXian;text-align: justify;white-space: normal;text-indent: 28px;background: whitesmoke\"><span style=\"font-size: 12px;font-family: &#39;Helvetica Neue&#39;;color: rgb(102, 102, 102)\">CentOS</span><span style=\"font-size: 12px;color: rgb(102, 102, 102)\"><span _ngcontent-kiv-c137=\"\" style=\"box-sizing: border-box\">论坛地址：</span><span style=\"font-size: 12px;font-family: &#39;Helvetica Neue&#39;\"><a href=\"http://www.centos.org/modules/newbb/\" style=\"color: rgb(149, 79, 114)\"><span _ngcontent-kiv-c137=\"\" style=\"box-sizing: border-box\">http://www.centos.org/modules/newbb/</span></a></span></span></p><p style=\";font-size: 14px;font-family: DengXian;text-align: justify;white-space: normal;text-indent: 28px;background: whitesmoke\"><span style=\"font-size: 12px;font-family: &#39;Helvetica Neue&#39;;color: rgb(102, 102, 102)\">CentOS</span><span style=\"font-size: 12px;color: rgb(102, 102, 102)\"><span _ngcontent-kiv-c137=\"\" style=\"box-sizing: border-box\">文档地址：</span><span style=\"font-size: 12px;font-family: &#39;Helvetica Neue&#39;\"><a href=\"http://www.centos.org/docs/\" style=\"color: rgb(149, 79, 114)\"><span _ngcontent-kiv-c137=\"\" style=\"box-sizing: border-box\">http://www.centos.org/docs/</span></a></span></span></p><p style=\";font-size: 14px;font-family: DengXian;text-align: justify;white-space: normal;text-indent: 28px;background: whitesmoke\"><span style=\"font-size: 12px;font-family: &#39;Helvetica Neue&#39;;color: rgb(102, 102, 102)\">CentOS Wiki</span><span style=\"font-size: 12px;color: rgb(102, 102, 102)\"><span _ngcontent-kiv-c137=\"\" style=\"box-sizing: border-box\">地址：</span><span style=\"font-size: 12px;font-family: &#39;Helvetica Neue&#39;\"><a href=\"http://wiki.centos.org/\" style=\"color: rgb(149, 79, 114)\"><span style=\"color: rgb(102, 102, 102)\"><span _ngcontent-kiv-c137=\"\" style=\"box-sizing: border-box\">http://wiki.centos.<span _ngcontent-kiv-c137=\"\" style=\"box-sizing: border-box\">o<span _ngcontent-kiv-c137=\"\" style=\"box-sizing: border-box\">rg/</span></span></span></span></a></span></span></p><p><br/></p>', 'file_1000000004', 'FOLDER', NULL, NULL, '2020-11-06 14:19:28', NULL, 'ACCEPTED', NULL, NULL, NULL, NULL, NULL, NULL, '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'PUBLIC', NULL, 'PUBLIC');
INSERT INTO `sw_software_version_info` VALUES ('0000005', '0000000001', '7.8.2003', NULL, NULL, NULL, '<p style=\";font-size: 14px;font-family: DengXian;border: none;padding: 0\"><strong>使用说明</strong></p><p style=\";font-size: 14px;font-family: DengXian;text-align: justify;white-space: normal;line-height: 25px;background: white\"><span style=\"font-size: 12px;font-family: &#39;Helvetica Neue&#39;;color: rgb(94, 102, 120)\">1</span><span style=\"font-size: 12px;color: rgb(94, 102, 120)\">、备份配置文件：</span></p><p style=\";font-size: 14px;font-family: DengXian;text-align: justify;white-space: normal;text-indent: 28px;background: whitesmoke\"><span style=\"font-size: 12px;font-family: &#39;Helvetica Neue&#39;;color: rgb(102, 102, 102)\">cp -a /etc/yum.repos.d/Cen<span _ngcontent-kiv-c137=\"\" style=\"box-sizing: border-box\">tOS-Base.repo /etc/yum.repos.d/CentOS-Base.repo.bak</span></span></p><p style=\";font-size: 14px;font-family: DengXian;text-align: justify;white-space: normal;line-height: 25px;background: white\"><span style=\"font-size: 12px;font-family: &#39;Helvetica Neue&#39;;color: rgb(94, 102, 120)\"><span _ngcontent-kiv-c137=\"\" style=\"box-sizing: border-box\">2</span><span style=\"font-size: 12px\">、两种方案，请大家自行选取。</span></span></p><p style=\";font-size: 14px;font-family: DengXian;text-align: justify;white-space: normal;text-indent: 28px;line-height: 25px;background: white\"><span style=\"font-size: 12px;color: rgb(94, 102, 120)\">方案一：</span></p><p style=\"margin: 5px 0;font-size: 16px;font-family: 宋体;white-space: normal;text-indent: 28px\"><span style=\"font-size: 12px;font-family: DengXian;color: rgb(94, 102, 120)\">下载新的</span><span style=\"font-size: 12px;font-family: &#39;Helvetica Neue&#39;;color: rgb(229, 136, 59)\">CentOS-Base.repo</span><span style=\"font-size: 12px;font-family: DengXian;color: rgb(94, 102, 120)\">文件到</span><span style=\"font-size: 12px;font-family: &#39;Helvetica Neue&#39;;color: rgb(229, 136, 59)\">/etc/yum.repos.d/</span><span style=\"font-size: 12px;font-family: DengXian;color: rgb(94, 102, 120)\">目录下</span><span style=\"font-size: 12px;font-family: &#39;Helvetica Neue&#39;;color: rgb(94, 102, 120)\">,</span><span style=\"font-size: 12px;font-family: DengXian;color: rgb(94, 102, 120)\">选择</span><span style=\"font-size: 12px;font-family: &#39;Helvetica Neue&#39;;color: rgb(94, 102, 120)\">CentOS</span><span style=\"font-size: 12px;font-family: DengXian;color: rgb(94, 102, 120)\">版本：CentOS 7.8.2003</span></p><p style=\";font-size: 14px;font-family: DengXian;text-align: justify;white-space: normal;line-height: 25px;background: white\"><span style=\"font-size: 12px;color: rgb(94, 102, 120)\">执行如下命令：</span></p><p style=\";font-size: 14px;font-family: DengXian;text-align: justify;white-space: normal;text-indent: 28px;background: whitesmoke\"><span style=\"font-size: 12px;font-family: &#39;Helvetica Neue&#39;;color: rgb(102, 102, 102)\">wget -O /etc/yum.repos.d/CentOS-Base.repo https://172.13.30.100/repository/conf/CentOS-7-anon.repo</span></p><p style=\"margin: 5px 0;font-size: 16px;font-family: 宋体;white-space: normal;text-indent: 28px\"><span style=\"font-size: 12px;font-family: DengXian;color: rgb(94, 102, 120)\"><span _ngcontent-kiv-c137=\"\" style=\"box-sizing: border-box\">方案二：</span></span></p><p style=\"margin: 5px 0;font-size: 16px;font-family: 宋体;white-space: normal;text-indent: 28px\"><span style=\"font-size: 12px;font-family: DengXian;color: rgb(94, 102, 120)\">修改</span><span style=\"font-size: 12px;font-family: &#39;Helvetica Neue&#39;;color: rgb(229, 136, 59)\">CentOS-Base.repo</span><span style=\"font-size: 12px;font-family: DengXian;color: rgb(94, 102, 120)\">文件，取消</span><span style=\"font-size: 12px;font-family: &#39;Helvetica Neue&#39;;color: rgb(229, 136, 59)\">baseurl</span><span style=\"font-size: 12px;font-family: DengXian;color: rgb(94, 102, 120)\">开头的行的注释，并增加</span><span style=\"font-size: 12px;font-family: &#39;Helvetica Neue&#39;;color: rgb(229, 136, 59)\">mirrorlist</span><span style=\"font-size: 12px;font-family: DengXian;color: rgb(94, 102, 120)\">开头的行的注释。将文件中的</span><span style=\"font-size: 12px;font-family: &#39;Helvetica Neue&#39;;color: rgb(229, 136, 59)\">http://mirror.centos.org</span><span style=\"font-size: 12px;font-family: DengXian;color: rgb(94, 102, 120)\">替换成</span><span style=\"font-size: 12px;font-family: &#39;Helvetica Neue&#39;;color: rgb(229, 136, 59)\">172.13.30.100</span><span style=\"font-size: 12px;font-family: DengXian;color: rgb(94, 102, 120)\">，可以参考如下命令：</span></p><p style=\";font-size: 14px;font-family: DengXian;text-align: justify;white-space: normal;text-indent: 28px;background: whitesmoke\"><span style=\"font-size: 12px;font-family: &#39;Helvetica Neue&#39;;color: rgb(102, 102, 102)\">sed -i &quot;s/#baseurl/baseurl/g&quot; /etc/yum.repos.d/CentOS-Base.repo</span></p><p style=\";font-size: 14px;font-family: DengXian;text-align: justify;white-space: normal;text-indent: 28px;background: whitesmoke\"><span style=\"font-size: 12px;font-family: &#39;Helvetica Neue&#39;;color: rgb(102, 102, 102)\"><span _ngcontent-kiv-c137=\"\" style=\"box-sizing: border-box\">sed -i &quot;s/mirrorlist=http/#mirrorlist=http/g&quot; /etc/yum.repos.d/Cent<span _ngcontent-kiv-c137=\"\" style=\"box-sizing: border-box\">OS-Base.repo</span></span></span></p><p style=\";font-size: 14px;font-family: DengXian;text-align: justify;white-space: normal;text-indent: 28px;background: whitesmoke\"><span style=\"font-size: 12px;font-family: &#39;Helvetica Neue&#39;;color: rgb(102, 102, 102)\"><span _ngcontent-kiv-c137=\"\" style=\"box-sizing: border-box\">sed -i &quot;s@http://mirror.centos.org@https://172.13.30.100@g&quot; /etc/yum.repos.d/CentOS-Base.repo</span></span></p><p style=\"margin: 5px 0;font-size: 16px;font-family: 宋体;white-space: normal\"><span style=\"font-size: 12px;font-family: &#39;Helvetica Neue&#39;;color: rgb(94, 102, 120)\"><span _ngcontent-kiv-c137=\"\" style=\"box-sizing: border-box\">3</span><span style=\"font-size: 12px;font-family: DengXian\">、执行<span style=\"font-size: 12px;font-family: &#39;Helvetica Neue&#39;;color: rgb(229, 136, 59)\">yum clean all</span><span style=\"font-size: 12px\">清除原有</span><span style=\"font-size: 12px;font-family: &#39;Helvetica Neue&#39;\">yum</span><span style=\"font-size: 12px\">缓存。</span></span></span></p><p style=\"margin: 5px 0;font-size: 16px;font-family: 宋体;white-space: normal\"><span _ngcontent-ptu-c136=\"\" style=\"box-sizing: border-box\"><span style=\"font-size: 12px;font-family: &#39;Helvetica Neue&#39;;color: rgb(94, 102, 120)\">4</span><span style=\"font-size: 12px;font-family: DengXian;color: rgb(94, 102, 120)\">、执行<span style=\"font-size: 12px;font-family: &#39;Helvetica Neue&#39;;color: rgb(229, 136, 59)\">yum makecache</span><span style=\"font-size: 12px\">（刷新缓存）或者<span style=\"font-size: 12px;font-family: &#39;Helvetica Neue&#39;;color: rgb(229, 136, 59)\">yum repolist all</span><span style=\"font-size: 12px\">（查看所有配置可以使用的文件，会自动刷新缓存）。</span></span></span></span></p><p style=\"margin: 5px 0;font-size: 16px;font-family: 宋体;white-space: normal\">&nbsp;</p><p style=\";font-size: 14px;font-family: DengXian;border: none;padding: 0\"><strong>相关网址</strong></p><p style=\";font-size: 14px;font-family: DengXian;text-align: justify;white-space: normal;text-indent: 28px;background: whitesmoke\"><span style=\"font-size: 12px;font-family: &#39;Helvetica Neue&#39;;color: rgb(102, 102, 102)\">CentOS</span><span style=\"font-size: 12px;color: rgb(102, 102, 102)\"><span _ngcontent-kiv-c137=\"\" style=\"box-sizing: border-box\">官方地址：</span><span style=\"font-size: 12px;font-family: &#39;Helvetica Neue&#39;\"><a href=\"http://www.centos.org/\" style=\"color: rgb(149, 79, 114)\"><span _ngcontent-kiv-c137=\"\" style=\"box-sizing: border-box\">http://www.centos.org/</span></a></span></span></p><p style=\";font-size: 14px;font-family: DengXian;text-align: justify;white-space: normal;text-indent: 28px;background: whitesmoke\"><span style=\"font-size: 12px;font-family: &#39;Helvetica Neue&#39;;color: rgb(102, 102, 102)\">CentOS</span><span style=\"font-size: 12px;color: rgb(102, 102, 102)\"><span _ngcontent-kiv-c137=\"\" style=\"box-sizing: border-box\">邮件列表地址：</span><span style=\"font-size: 12px;font-family: &#39;Helvetica Neue&#39;\"><a href=\"http://www.centos.org/modules/tinycontent/index.php?id=16\" style=\"color: rgb(149, 79, 114)\"><span _ngcontent-kiv-c137=\"\" style=\"box-sizing: border-box\">http://www.centos.org/modules/tinycontent/index.php?id=16</span></a></span></span></p><p style=\";font-size: 14px;font-family: DengXian;text-align: justify;white-space: normal;text-indent: 28px;background: whitesmoke\"><span style=\"font-size: 12px;font-family: &#39;Helvetica Neue&#39;;color: rgb(102, 102, 102)\">CentOS</span><span style=\"font-size: 12px;color: rgb(102, 102, 102)\"><span _ngcontent-kiv-c137=\"\" style=\"box-sizing: border-box\">论坛地址：</span><span style=\"font-size: 12px;font-family: &#39;Helvetica Neue&#39;\"><a href=\"http://www.centos.org/modules/newbb/\" style=\"color: rgb(149, 79, 114)\"><span _ngcontent-kiv-c137=\"\" style=\"box-sizing: border-box\">http://www.centos.org/modules/newbb/</span></a></span></span></p><p style=\";font-size: 14px;font-family: DengXian;text-align: justify;white-space: normal;text-indent: 28px;background: whitesmoke\"><span style=\"font-size: 12px;font-family: &#39;Helvetica Neue&#39;;color: rgb(102, 102, 102)\">CentOS</span><span style=\"font-size: 12px;color: rgb(102, 102, 102)\"><span _ngcontent-kiv-c137=\"\" style=\"box-sizing: border-box\">文档地址：</span><span style=\"font-size: 12px;font-family: &#39;Helvetica Neue&#39;\"><a href=\"http://www.centos.org/docs/\" style=\"color: rgb(149, 79, 114)\"><span _ngcontent-kiv-c137=\"\" style=\"box-sizing: border-box\">http://www.centos.org/docs/</span></a></span></span></p><p style=\";font-size: 14px;font-family: DengXian;text-align: justify;white-space: normal;text-indent: 28px;background: whitesmoke\"><span style=\"font-size: 12px;font-family: &#39;Helvetica Neue&#39;;color: rgb(102, 102, 102)\">CentOS Wiki</span><span style=\"font-size: 12px;color: rgb(102, 102, 102)\"><span _ngcontent-kiv-c137=\"\" style=\"box-sizing: border-box\">地址：</span><span style=\"font-size: 12px;font-family: &#39;Helvetica Neue&#39;\"><a href=\"http://wiki.centos.org/\" style=\"color: rgb(149, 79, 114)\"><span style=\"color: rgb(102, 102, 102)\"><span _ngcontent-kiv-c137=\"\" style=\"box-sizing: border-box\">http://wiki.centos.<span _ngcontent-kiv-c137=\"\" style=\"box-sizing: border-box\">o<span _ngcontent-kiv-c137=\"\" style=\"box-sizing: border-box\">rg/</span></span></span></span></a></span></span></p><p><br/></p>', 'file_1000000005', 'FOLDER', NULL, NULL, '2020-11-06 14:19:28', NULL, 'ACCEPTED', NULL, NULL, NULL, NULL, NULL, NULL, '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'PUBLIC', NULL, 'PUBLIC');
INSERT INTO `sw_software_version_info` VALUES ('0000006', '0000000001', '7.7.1908', NULL, NULL, NULL, '<p style=\";font-size: 14px;font-family: DengXian;border: none;padding: 0\"><strong>使用说明</strong></p><p style=\";font-size: 14px;font-family: DengXian;text-align: justify;white-space: normal;line-height: 25px;background: white\"><span style=\"font-size: 12px;font-family: &#39;Helvetica Neue&#39;;color: rgb(94, 102, 120)\">1</span><span style=\"font-size: 12px;color: rgb(94, 102, 120)\">、备份配置文件：</span></p><p style=\";font-size: 14px;font-family: DengXian;text-align: justify;white-space: normal;text-indent: 28px;background: whitesmoke\"><span style=\"font-size: 12px;font-family: &#39;Helvetica Neue&#39;;color: rgb(102, 102, 102)\">cp -a /etc/yum.repos.d/Cen<span _ngcontent-kiv-c137=\"\" style=\"box-sizing: border-box\">tOS-Base.repo /etc/yum.repos.d/CentOS-Base.repo.bak</span></span></p><p style=\";font-size: 14px;font-family: DengXian;text-align: justify;white-space: normal;line-height: 25px;background: white\"><span style=\"font-size: 12px;font-family: &#39;Helvetica Neue&#39;;color: rgb(94, 102, 120)\"><span _ngcontent-kiv-c137=\"\" style=\"box-sizing: border-box\">2</span><span style=\"font-size: 12px\">、两种方案，请大家自行选取。</span></span></p><p style=\";font-size: 14px;font-family: DengXian;text-align: justify;white-space: normal;text-indent: 28px;line-height: 25px;background: white\"><span style=\"font-size: 12px;color: rgb(94, 102, 120)\">方案一：</span></p><p style=\"margin: 5px 0;font-size: 16px;font-family: 宋体;white-space: normal;text-indent: 28px\"><span style=\"font-size: 12px;font-family: DengXian;color: rgb(94, 102, 120)\">下载新的</span><span style=\"font-size: 12px;font-family: &#39;Helvetica Neue&#39;;color: rgb(229, 136, 59)\">CentOS-Base.repo</span><span style=\"font-size: 12px;font-family: DengXian;color: rgb(94, 102, 120)\">文件到</span><span style=\"font-size: 12px;font-family: &#39;Helvetica Neue&#39;;color: rgb(229, 136, 59)\">/etc/yum.repos.d/</span><span style=\"font-size: 12px;font-family: DengXian;color: rgb(94, 102, 120)\">目录下</span><span style=\"font-size: 12px;font-family: &#39;Helvetica Neue&#39;;color: rgb(94, 102, 120)\">,</span><span style=\"font-size: 12px;font-family: DengXian;color: rgb(94, 102, 120)\">选择</span><span style=\"font-size: 12px;font-family: &#39;Helvetica Neue&#39;;color: rgb(94, 102, 120)\">CentOS</span><span style=\"font-size: 12px;font-family: DengXian;color: rgb(94, 102, 120)\">版本：CentOS 7.7.1908</span></p><p style=\";font-size: 14px;font-family: DengXian;text-align: justify;white-space: normal;line-height: 25px;background: white\"><span style=\"font-size: 12px;color: rgb(94, 102, 120)\">执行如下命令：</span></p><p style=\";font-size: 14px;font-family: DengXian;text-align: justify;white-space: normal;text-indent: 28px;background: whitesmoke\"><span style=\"font-size: 12px;font-family: &#39;Helvetica Neue&#39;;color: rgb(102, 102, 102)\">wget -O /etc/yum.repos.d/CentOS-Base.repo https://172.13.30.100/repository/conf/CentOS-7-anon.repo</span></p><p style=\"margin: 5px 0;font-size: 16px;font-family: 宋体;white-space: normal;text-indent: 28px\"><span style=\"font-size: 12px;font-family: DengXian;color: rgb(94, 102, 120)\"><span _ngcontent-kiv-c137=\"\" style=\"box-sizing: border-box\">方案二：</span></span></p><p style=\"margin: 5px 0;font-size: 16px;font-family: 宋体;white-space: normal;text-indent: 28px\"><span style=\"font-size: 12px;font-family: DengXian;color: rgb(94, 102, 120)\">修改</span><span style=\"font-size: 12px;font-family: &#39;Helvetica Neue&#39;;color: rgb(229, 136, 59)\">CentOS-Base.repo</span><span style=\"font-size: 12px;font-family: DengXian;color: rgb(94, 102, 120)\">文件，取消</span><span style=\"font-size: 12px;font-family: &#39;Helvetica Neue&#39;;color: rgb(229, 136, 59)\">baseurl</span><span style=\"font-size: 12px;font-family: DengXian;color: rgb(94, 102, 120)\">开头的行的注释，并增加</span><span style=\"font-size: 12px;font-family: &#39;Helvetica Neue&#39;;color: rgb(229, 136, 59)\">mirrorlist</span><span style=\"font-size: 12px;font-family: DengXian;color: rgb(94, 102, 120)\">开头的行的注释。将文件中的</span><span style=\"font-size: 12px;font-family: &#39;Helvetica Neue&#39;;color: rgb(229, 136, 59)\">http://mirror.centos.org</span><span style=\"font-size: 12px;font-family: DengXian;color: rgb(94, 102, 120)\">替换成</span><span style=\"font-size: 12px;font-family: &#39;Helvetica Neue&#39;;color: rgb(229, 136, 59)\">172.13.30.100</span><span style=\"font-size: 12px;font-family: DengXian;color: rgb(94, 102, 120)\">，可以参考如下命令：</span></p><p style=\";font-size: 14px;font-family: DengXian;text-align: justify;white-space: normal;text-indent: 28px;background: whitesmoke\"><span style=\"font-size: 12px;font-family: &#39;Helvetica Neue&#39;;color: rgb(102, 102, 102)\">sed -i &quot;s/#baseurl/baseurl/g&quot; /etc/yum.repos.d/CentOS-Base.repo</span></p><p style=\";font-size: 14px;font-family: DengXian;text-align: justify;white-space: normal;text-indent: 28px;background: whitesmoke\"><span style=\"font-size: 12px;font-family: &#39;Helvetica Neue&#39;;color: rgb(102, 102, 102)\"><span _ngcontent-kiv-c137=\"\" style=\"box-sizing: border-box\">sed -i &quot;s/mirrorlist=http/#mirrorlist=http/g&quot; /etc/yum.repos.d/Cent<span _ngcontent-kiv-c137=\"\" style=\"box-sizing: border-box\">OS-Base.repo</span></span></span></p><p style=\";font-size: 14px;font-family: DengXian;text-align: justify;white-space: normal;text-indent: 28px;background: whitesmoke\"><span style=\"font-size: 12px;font-family: &#39;Helvetica Neue&#39;;color: rgb(102, 102, 102)\"><span _ngcontent-kiv-c137=\"\" style=\"box-sizing: border-box\">sed -i &quot;s@http://mirror.centos.org@https://172.13.30.100@g&quot; /etc/yum.repos.d/CentOS-Base.repo</span></span></p><p style=\"margin: 5px 0;font-size: 16px;font-family: 宋体;white-space: normal\"><span style=\"font-size: 12px;font-family: &#39;Helvetica Neue&#39;;color: rgb(94, 102, 120)\"><span _ngcontent-kiv-c137=\"\" style=\"box-sizing: border-box\">3</span><span style=\"font-size: 12px;font-family: DengXian\">、执行<span style=\"font-size: 12px;font-family: &#39;Helvetica Neue&#39;;color: rgb(229, 136, 59)\">yum clean all</span><span style=\"font-size: 12px\">清除原有</span><span style=\"font-size: 12px;font-family: &#39;Helvetica Neue&#39;\">yum</span><span style=\"font-size: 12px\">缓存。</span></span></span></p><p style=\"margin: 5px 0;font-size: 16px;font-family: 宋体;white-space: normal\"><span _ngcontent-ptu-c136=\"\" style=\"box-sizing: border-box\"><span style=\"font-size: 12px;font-family: &#39;Helvetica Neue&#39;;color: rgb(94, 102, 120)\">4</span><span style=\"font-size: 12px;font-family: DengXian;color: rgb(94, 102, 120)\">、执行<span style=\"font-size: 12px;font-family: &#39;Helvetica Neue&#39;;color: rgb(229, 136, 59)\">yum makecache</span><span style=\"font-size: 12px\">（刷新缓存）或者<span style=\"font-size: 12px;font-family: &#39;Helvetica Neue&#39;;color: rgb(229, 136, 59)\">yum repolist all</span><span style=\"font-size: 12px\">（查看所有配置可以使用的文件，会自动刷新缓存）。</span></span></span></span></p><p style=\"margin: 5px 0;font-size: 16px;font-family: 宋体;white-space: normal\">&nbsp;</p><p style=\";font-size: 14px;font-family: DengXian;border: none;padding: 0\"><strong>相关网址</strong></p><p style=\";font-size: 14px;font-family: DengXian;text-align: justify;white-space: normal;text-indent: 28px;background: whitesmoke\"><span style=\"font-size: 12px;font-family: &#39;Helvetica Neue&#39;;color: rgb(102, 102, 102)\">CentOS</span><span style=\"font-size: 12px;color: rgb(102, 102, 102)\"><span _ngcontent-kiv-c137=\"\" style=\"box-sizing: border-box\">官方地址：</span><span style=\"font-size: 12px;font-family: &#39;Helvetica Neue&#39;\"><a href=\"http://www.centos.org/\" style=\"color: rgb(149, 79, 114)\"><span _ngcontent-kiv-c137=\"\" style=\"box-sizing: border-box\">http://www.centos.org/</span></a></span></span></p><p style=\";font-size: 14px;font-family: DengXian;text-align: justify;white-space: normal;text-indent: 28px;background: whitesmoke\"><span style=\"font-size: 12px;font-family: &#39;Helvetica Neue&#39;;color: rgb(102, 102, 102)\">CentOS</span><span style=\"font-size: 12px;color: rgb(102, 102, 102)\"><span _ngcontent-kiv-c137=\"\" style=\"box-sizing: border-box\">邮件列表地址：</span><span style=\"font-size: 12px;font-family: &#39;Helvetica Neue&#39;\"><a href=\"http://www.centos.org/modules/tinycontent/index.php?id=16\" style=\"color: rgb(149, 79, 114)\"><span _ngcontent-kiv-c137=\"\" style=\"box-sizing: border-box\">http://www.centos.org/modules/tinycontent/index.php?id=16</span></a></span></span></p><p style=\";font-size: 14px;font-family: DengXian;text-align: justify;white-space: normal;text-indent: 28px;background: whitesmoke\"><span style=\"font-size: 12px;font-family: &#39;Helvetica Neue&#39;;color: rgb(102, 102, 102)\">CentOS</span><span style=\"font-size: 12px;color: rgb(102, 102, 102)\"><span _ngcontent-kiv-c137=\"\" style=\"box-sizing: border-box\">论坛地址：</span><span style=\"font-size: 12px;font-family: &#39;Helvetica Neue&#39;\"><a href=\"http://www.centos.org/modules/newbb/\" style=\"color: rgb(149, 79, 114)\"><span _ngcontent-kiv-c137=\"\" style=\"box-sizing: border-box\">http://www.centos.org/modules/newbb/</span></a></span></span></p><p style=\";font-size: 14px;font-family: DengXian;text-align: justify;white-space: normal;text-indent: 28px;background: whitesmoke\"><span style=\"font-size: 12px;font-family: &#39;Helvetica Neue&#39;;color: rgb(102, 102, 102)\">CentOS</span><span style=\"font-size: 12px;color: rgb(102, 102, 102)\"><span _ngcontent-kiv-c137=\"\" style=\"box-sizing: border-box\">文档地址：</span><span style=\"font-size: 12px;font-family: &#39;Helvetica Neue&#39;\"><a href=\"http://www.centos.org/docs/\" style=\"color: rgb(149, 79, 114)\"><span _ngcontent-kiv-c137=\"\" style=\"box-sizing: border-box\">http://www.centos.org/docs/</span></a></span></span></p><p style=\";font-size: 14px;font-family: DengXian;text-align: justify;white-space: normal;text-indent: 28px;background: whitesmoke\"><span style=\"font-size: 12px;font-family: &#39;Helvetica Neue&#39;;color: rgb(102, 102, 102)\">CentOS Wiki</span><span style=\"font-size: 12px;color: rgb(102, 102, 102)\"><span _ngcontent-kiv-c137=\"\" style=\"box-sizing: border-box\">地址：</span><span style=\"font-size: 12px;font-family: &#39;Helvetica Neue&#39;\"><a href=\"http://wiki.centos.org/\" style=\"color: rgb(149, 79, 114)\"><span style=\"color: rgb(102, 102, 102)\"><span _ngcontent-kiv-c137=\"\" style=\"box-sizing: border-box\">http://wiki.centos.<span _ngcontent-kiv-c137=\"\" style=\"box-sizing: border-box\">o<span _ngcontent-kiv-c137=\"\" style=\"box-sizing: border-box\">rg/</span></span></span></span></a></span></span></p><p><br/></p>', 'file_1000000006', 'FOLDER', NULL, NULL, '2020-11-06 14:19:28', NULL, 'ACCEPTED', NULL, NULL, NULL, NULL, NULL, NULL, '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'PUBLIC', NULL, 'PUBLIC');
INSERT INTO `sw_software_version_info` VALUES ('0000007', '0000000001', '7.6.1810', NULL, NULL, NULL, '<p style=\";font-size: 14px;font-family: DengXian;border: none;padding: 0\"><strong>使用说明</strong></p><p style=\";font-size: 14px;font-family: DengXian;text-align: justify;white-space: normal;line-height: 25px;background: white\"><span style=\"font-size: 12px;font-family: &#39;Helvetica Neue&#39;;color: rgb(94, 102, 120)\">1</span><span style=\"font-size: 12px;color: rgb(94, 102, 120)\">、备份配置文件：</span></p><p style=\";font-size: 14px;font-family: DengXian;text-align: justify;white-space: normal;text-indent: 28px;background: whitesmoke\"><span style=\"font-size: 12px;font-family: &#39;Helvetica Neue&#39;;color: rgb(102, 102, 102)\">cp -a /etc/yum.repos.d/Cen<span _ngcontent-kiv-c137=\"\" style=\"box-sizing: border-box\">tOS-Base.repo /etc/yum.repos.d/CentOS-Base.repo.bak</span></span></p><p style=\";font-size: 14px;font-family: DengXian;text-align: justify;white-space: normal;line-height: 25px;background: white\"><span style=\"font-size: 12px;font-family: &#39;Helvetica Neue&#39;;color: rgb(94, 102, 120)\"><span _ngcontent-kiv-c137=\"\" style=\"box-sizing: border-box\">2</span><span style=\"font-size: 12px\">、两种方案，请大家自行选取。</span></span></p><p style=\";font-size: 14px;font-family: DengXian;text-align: justify;white-space: normal;text-indent: 28px;line-height: 25px;background: white\"><span style=\"font-size: 12px;color: rgb(94, 102, 120)\">方案一：</span></p><p style=\"margin: 5px 0;font-size: 16px;font-family: 宋体;white-space: normal;text-indent: 28px\"><span style=\"font-size: 12px;font-family: DengXian;color: rgb(94, 102, 120)\">下载新的</span><span style=\"font-size: 12px;font-family: &#39;Helvetica Neue&#39;;color: rgb(229, 136, 59)\">CentOS-Base.repo</span><span style=\"font-size: 12px;font-family: DengXian;color: rgb(94, 102, 120)\">文件到</span><span style=\"font-size: 12px;font-family: &#39;Helvetica Neue&#39;;color: rgb(229, 136, 59)\">/etc/yum.repos.d/</span><span style=\"font-size: 12px;font-family: DengXian;color: rgb(94, 102, 120)\">目录下</span><span style=\"font-size: 12px;font-family: &#39;Helvetica Neue&#39;;color: rgb(94, 102, 120)\">,</span><span style=\"font-size: 12px;font-family: DengXian;color: rgb(94, 102, 120)\">选择</span><span style=\"font-size: 12px;font-family: &#39;Helvetica Neue&#39;;color: rgb(94, 102, 120)\">CentOS</span><span style=\"font-size: 12px;font-family: DengXian;color: rgb(94, 102, 120)\">版本：CentOS 7.6.1810</span></p><p style=\";font-size: 14px;font-family: DengXian;text-align: justify;white-space: normal;line-height: 25px;background: white\"><span style=\"font-size: 12px;color: rgb(94, 102, 120)\">执行如下命令：</span></p><p style=\";font-size: 14px;font-family: DengXian;text-align: justify;white-space: normal;text-indent: 28px;background: whitesmoke\"><span style=\"font-size: 12px;font-family: &#39;Helvetica Neue&#39;;color: rgb(102, 102, 102)\">wget -O /etc/yum.repos.d/CentOS-Base.repo https://172.13.30.100/repository/conf/CentOS-7-anon.repo</span></p><p style=\"margin: 5px 0;font-size: 16px;font-family: 宋体;white-space: normal;text-indent: 28px\"><span style=\"font-size: 12px;font-family: DengXian;color: rgb(94, 102, 120)\"><span _ngcontent-kiv-c137=\"\" style=\"box-sizing: border-box\">方案二：</span></span></p><p style=\"margin: 5px 0;font-size: 16px;font-family: 宋体;white-space: normal;text-indent: 28px\"><span style=\"font-size: 12px;font-family: DengXian;color: rgb(94, 102, 120)\">修改</span><span style=\"font-size: 12px;font-family: &#39;Helvetica Neue&#39;;color: rgb(229, 136, 59)\">CentOS-Base.repo</span><span style=\"font-size: 12px;font-family: DengXian;color: rgb(94, 102, 120)\">文件，取消</span><span style=\"font-size: 12px;font-family: &#39;Helvetica Neue&#39;;color: rgb(229, 136, 59)\">baseurl</span><span style=\"font-size: 12px;font-family: DengXian;color: rgb(94, 102, 120)\">开头的行的注释，并增加</span><span style=\"font-size: 12px;font-family: &#39;Helvetica Neue&#39;;color: rgb(229, 136, 59)\">mirrorlist</span><span style=\"font-size: 12px;font-family: DengXian;color: rgb(94, 102, 120)\">开头的行的注释。将文件中的</span><span style=\"font-size: 12px;font-family: &#39;Helvetica Neue&#39;;color: rgb(229, 136, 59)\">http://mirror.centos.org</span><span style=\"font-size: 12px;font-family: DengXian;color: rgb(94, 102, 120)\">替换成</span><span style=\"font-size: 12px;font-family: &#39;Helvetica Neue&#39;;color: rgb(229, 136, 59)\">172.13.30.100</span><span style=\"font-size: 12px;font-family: DengXian;color: rgb(94, 102, 120)\">，可以参考如下命令：</span></p><p style=\";font-size: 14px;font-family: DengXian;text-align: justify;white-space: normal;text-indent: 28px;background: whitesmoke\"><span style=\"font-size: 12px;font-family: &#39;Helvetica Neue&#39;;color: rgb(102, 102, 102)\">sed -i &quot;s/#baseurl/baseurl/g&quot; /etc/yum.repos.d/CentOS-Base.repo</span></p><p style=\";font-size: 14px;font-family: DengXian;text-align: justify;white-space: normal;text-indent: 28px;background: whitesmoke\"><span style=\"font-size: 12px;font-family: &#39;Helvetica Neue&#39;;color: rgb(102, 102, 102)\"><span _ngcontent-kiv-c137=\"\" style=\"box-sizing: border-box\">sed -i &quot;s/mirrorlist=http/#mirrorlist=http/g&quot; /etc/yum.repos.d/Cent<span _ngcontent-kiv-c137=\"\" style=\"box-sizing: border-box\">OS-Base.repo</span></span></span></p><p style=\";font-size: 14px;font-family: DengXian;text-align: justify;white-space: normal;text-indent: 28px;background: whitesmoke\"><span style=\"font-size: 12px;font-family: &#39;Helvetica Neue&#39;;color: rgb(102, 102, 102)\"><span _ngcontent-kiv-c137=\"\" style=\"box-sizing: border-box\">sed -i &quot;s@http://mirror.centos.org@https://172.13.30.100@g&quot; /etc/yum.repos.d/CentOS-Base.repo</span></span></p><p style=\"margin: 5px 0;font-size: 16px;font-family: 宋体;white-space: normal\"><span style=\"font-size: 12px;font-family: &#39;Helvetica Neue&#39;;color: rgb(94, 102, 120)\"><span _ngcontent-kiv-c137=\"\" style=\"box-sizing: border-box\">3</span><span style=\"font-size: 12px;font-family: DengXian\">、执行<span style=\"font-size: 12px;font-family: &#39;Helvetica Neue&#39;;color: rgb(229, 136, 59)\">yum clean all</span><span style=\"font-size: 12px\">清除原有</span><span style=\"font-size: 12px;font-family: &#39;Helvetica Neue&#39;\">yum</span><span style=\"font-size: 12px\">缓存。</span></span></span></p><p style=\"margin: 5px 0;font-size: 16px;font-family: 宋体;white-space: normal\"><span _ngcontent-ptu-c136=\"\" style=\"box-sizing: border-box\"><span style=\"font-size: 12px;font-family: &#39;Helvetica Neue&#39;;color: rgb(94, 102, 120)\">4</span><span style=\"font-size: 12px;font-family: DengXian;color: rgb(94, 102, 120)\">、执行<span style=\"font-size: 12px;font-family: &#39;Helvetica Neue&#39;;color: rgb(229, 136, 59)\">yum makecache</span><span style=\"font-size: 12px\">（刷新缓存）或者<span style=\"font-size: 12px;font-family: &#39;Helvetica Neue&#39;;color: rgb(229, 136, 59)\">yum repolist all</span><span style=\"font-size: 12px\">（查看所有配置可以使用的文件，会自动刷新缓存）。</span></span></span></span></p><p style=\"margin: 5px 0;font-size: 16px;font-family: 宋体;white-space: normal\">&nbsp;</p><p style=\";font-size: 14px;font-family: DengXian;border: none;padding: 0\"><strong>相关网址</strong></p><p style=\";font-size: 14px;font-family: DengXian;text-align: justify;white-space: normal;text-indent: 28px;background: whitesmoke\"><span style=\"font-size: 12px;font-family: &#39;Helvetica Neue&#39;;color: rgb(102, 102, 102)\">CentOS</span><span style=\"font-size: 12px;color: rgb(102, 102, 102)\"><span _ngcontent-kiv-c137=\"\" style=\"box-sizing: border-box\">官方地址：</span><span style=\"font-size: 12px;font-family: &#39;Helvetica Neue&#39;\"><a href=\"http://www.centos.org/\" style=\"color: rgb(149, 79, 114)\"><span _ngcontent-kiv-c137=\"\" style=\"box-sizing: border-box\">http://www.centos.org/</span></a></span></span></p><p style=\";font-size: 14px;font-family: DengXian;text-align: justify;white-space: normal;text-indent: 28px;background: whitesmoke\"><span style=\"font-size: 12px;font-family: &#39;Helvetica Neue&#39;;color: rgb(102, 102, 102)\">CentOS</span><span style=\"font-size: 12px;color: rgb(102, 102, 102)\"><span _ngcontent-kiv-c137=\"\" style=\"box-sizing: border-box\">邮件列表地址：</span><span style=\"font-size: 12px;font-family: &#39;Helvetica Neue&#39;\"><a href=\"http://www.centos.org/modules/tinycontent/index.php?id=16\" style=\"color: rgb(149, 79, 114)\"><span _ngcontent-kiv-c137=\"\" style=\"box-sizing: border-box\">http://www.centos.org/modules/tinycontent/index.php?id=16</span></a></span></span></p><p style=\";font-size: 14px;font-family: DengXian;text-align: justify;white-space: normal;text-indent: 28px;background: whitesmoke\"><span style=\"font-size: 12px;font-family: &#39;Helvetica Neue&#39;;color: rgb(102, 102, 102)\">CentOS</span><span style=\"font-size: 12px;color: rgb(102, 102, 102)\"><span _ngcontent-kiv-c137=\"\" style=\"box-sizing: border-box\">论坛地址：</span><span style=\"font-size: 12px;font-family: &#39;Helvetica Neue&#39;\"><a href=\"http://www.centos.org/modules/newbb/\" style=\"color: rgb(149, 79, 114)\"><span _ngcontent-kiv-c137=\"\" style=\"box-sizing: border-box\">http://www.centos.org/modules/newbb/</span></a></span></span></p><p style=\";font-size: 14px;font-family: DengXian;text-align: justify;white-space: normal;text-indent: 28px;background: whitesmoke\"><span style=\"font-size: 12px;font-family: &#39;Helvetica Neue&#39;;color: rgb(102, 102, 102)\">CentOS</span><span style=\"font-size: 12px;color: rgb(102, 102, 102)\"><span _ngcontent-kiv-c137=\"\" style=\"box-sizing: border-box\">文档地址：</span><span style=\"font-size: 12px;font-family: &#39;Helvetica Neue&#39;\"><a href=\"http://www.centos.org/docs/\" style=\"color: rgb(149, 79, 114)\"><span _ngcontent-kiv-c137=\"\" style=\"box-sizing: border-box\">http://www.centos.org/docs/</span></a></span></span></p><p style=\";font-size: 14px;font-family: DengXian;text-align: justify;white-space: normal;text-indent: 28px;background: whitesmoke\"><span style=\"font-size: 12px;font-family: &#39;Helvetica Neue&#39;;color: rgb(102, 102, 102)\">CentOS Wiki</span><span style=\"font-size: 12px;color: rgb(102, 102, 102)\"><span _ngcontent-kiv-c137=\"\" style=\"box-sizing: border-box\">地址：</span><span style=\"font-size: 12px;font-family: &#39;Helvetica Neue&#39;\"><a href=\"http://wiki.centos.org/\" style=\"color: rgb(149, 79, 114)\"><span style=\"color: rgb(102, 102, 102)\"><span _ngcontent-kiv-c137=\"\" style=\"box-sizing: border-box\">http://wiki.centos.<span _ngcontent-kiv-c137=\"\" style=\"box-sizing: border-box\">o<span _ngcontent-kiv-c137=\"\" style=\"box-sizing: border-box\">rg/</span></span></span></span></a></span></span></p><p><br/></p>', 'file_1000000007', 'FOLDER', NULL, NULL, '2020-11-06 14:19:28', NULL, 'ACCEPTED', NULL, NULL, NULL, NULL, NULL, NULL, '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'PUBLIC', NULL, 'PUBLIC');
INSERT INTO `sw_software_version_info` VALUES ('0000008', '0000000001', '7.5.1804', NULL, NULL, NULL, '<p style=\";font-size: 14px;font-family: DengXian;border: none;padding: 0\"><strong>使用说明</strong></p><p style=\";font-size: 14px;font-family: DengXian;text-align: justify;white-space: normal;line-height: 25px;background: white\"><span style=\"font-size: 12px;font-family: &#39;Helvetica Neue&#39;;color: rgb(94, 102, 120)\">1</span><span style=\"font-size: 12px;color: rgb(94, 102, 120)\">、备份配置文件：</span></p><p style=\";font-size: 14px;font-family: DengXian;text-align: justify;white-space: normal;text-indent: 28px;background: whitesmoke\"><span style=\"font-size: 12px;font-family: &#39;Helvetica Neue&#39;;color: rgb(102, 102, 102)\">cp -a /etc/yum.repos.d/Cen<span _ngcontent-kiv-c137=\"\" style=\"box-sizing: border-box\">tOS-Base.repo /etc/yum.repos.d/CentOS-Base.repo.bak</span></span></p><p style=\";font-size: 14px;font-family: DengXian;text-align: justify;white-space: normal;line-height: 25px;background: white\"><span style=\"font-size: 12px;font-family: &#39;Helvetica Neue&#39;;color: rgb(94, 102, 120)\"><span _ngcontent-kiv-c137=\"\" style=\"box-sizing: border-box\">2</span><span style=\"font-size: 12px\">、两种方案，请大家自行选取。</span></span></p><p style=\";font-size: 14px;font-family: DengXian;text-align: justify;white-space: normal;text-indent: 28px;line-height: 25px;background: white\"><span style=\"font-size: 12px;color: rgb(94, 102, 120)\">方案一：</span></p><p style=\"margin: 5px 0;font-size: 16px;font-family: 宋体;white-space: normal;text-indent: 28px\"><span style=\"font-size: 12px;font-family: DengXian;color: rgb(94, 102, 120)\">下载新的</span><span style=\"font-size: 12px;font-family: &#39;Helvetica Neue&#39;;color: rgb(229, 136, 59)\">CentOS-Base.repo</span><span style=\"font-size: 12px;font-family: DengXian;color: rgb(94, 102, 120)\">文件到</span><span style=\"font-size: 12px;font-family: &#39;Helvetica Neue&#39;;color: rgb(229, 136, 59)\">/etc/yum.repos.d/</span><span style=\"font-size: 12px;font-family: DengXian;color: rgb(94, 102, 120)\">目录下</span><span style=\"font-size: 12px;font-family: &#39;Helvetica Neue&#39;;color: rgb(94, 102, 120)\">,</span><span style=\"font-size: 12px;font-family: DengXian;color: rgb(94, 102, 120)\">选择</span><span style=\"font-size: 12px;font-family: &#39;Helvetica Neue&#39;;color: rgb(94, 102, 120)\">CentOS</span><span style=\"font-size: 12px;font-family: DengXian;color: rgb(94, 102, 120)\">版本：CentOS 7.5.1804</span></p><p style=\";font-size: 14px;font-family: DengXian;text-align: justify;white-space: normal;line-height: 25px;background: white\"><span style=\"font-size: 12px;color: rgb(94, 102, 120)\">执行如下命令：</span></p><p style=\";font-size: 14px;font-family: DengXian;text-align: justify;white-space: normal;text-indent: 28px;background: whitesmoke\"><span style=\"font-size: 12px;font-family: &#39;Helvetica Neue&#39;;color: rgb(102, 102, 102)\">wget -O /etc/yum.repos.d/CentOS-Base.repo https://172.13.30.100/repository/conf/CentOS-7-anon.repo</span></p><p style=\"margin: 5px 0;font-size: 16px;font-family: 宋体;white-space: normal;text-indent: 28px\"><span style=\"font-size: 12px;font-family: DengXian;color: rgb(94, 102, 120)\"><span _ngcontent-kiv-c137=\"\" style=\"box-sizing: border-box\">方案二：</span></span></p><p style=\"margin: 5px 0;font-size: 16px;font-family: 宋体;white-space: normal;text-indent: 28px\"><span style=\"font-size: 12px;font-family: DengXian;color: rgb(94, 102, 120)\">修改</span><span style=\"font-size: 12px;font-family: &#39;Helvetica Neue&#39;;color: rgb(229, 136, 59)\">CentOS-Base.repo</span><span style=\"font-size: 12px;font-family: DengXian;color: rgb(94, 102, 120)\">文件，取消</span><span style=\"font-size: 12px;font-family: &#39;Helvetica Neue&#39;;color: rgb(229, 136, 59)\">baseurl</span><span style=\"font-size: 12px;font-family: DengXian;color: rgb(94, 102, 120)\">开头的行的注释，并增加</span><span style=\"font-size: 12px;font-family: &#39;Helvetica Neue&#39;;color: rgb(229, 136, 59)\">mirrorlist</span><span style=\"font-size: 12px;font-family: DengXian;color: rgb(94, 102, 120)\">开头的行的注释。将文件中的</span><span style=\"font-size: 12px;font-family: &#39;Helvetica Neue&#39;;color: rgb(229, 136, 59)\">http://mirror.centos.org</span><span style=\"font-size: 12px;font-family: DengXian;color: rgb(94, 102, 120)\">替换成</span><span style=\"font-size: 12px;font-family: &#39;Helvetica Neue&#39;;color: rgb(229, 136, 59)\">172.13.30.100</span><span style=\"font-size: 12px;font-family: DengXian;color: rgb(94, 102, 120)\">，可以参考如下命令：</span></p><p style=\";font-size: 14px;font-family: DengXian;text-align: justify;white-space: normal;text-indent: 28px;background: whitesmoke\"><span style=\"font-size: 12px;font-family: &#39;Helvetica Neue&#39;;color: rgb(102, 102, 102)\">sed -i &quot;s/#baseurl/baseurl/g&quot; /etc/yum.repos.d/CentOS-Base.repo</span></p><p style=\";font-size: 14px;font-family: DengXian;text-align: justify;white-space: normal;text-indent: 28px;background: whitesmoke\"><span style=\"font-size: 12px;font-family: &#39;Helvetica Neue&#39;;color: rgb(102, 102, 102)\"><span _ngcontent-kiv-c137=\"\" style=\"box-sizing: border-box\">sed -i &quot;s/mirrorlist=http/#mirrorlist=http/g&quot; /etc/yum.repos.d/Cent<span _ngcontent-kiv-c137=\"\" style=\"box-sizing: border-box\">OS-Base.repo</span></span></span></p><p style=\";font-size: 14px;font-family: DengXian;text-align: justify;white-space: normal;text-indent: 28px;background: whitesmoke\"><span style=\"font-size: 12px;font-family: &#39;Helvetica Neue&#39;;color: rgb(102, 102, 102)\"><span _ngcontent-kiv-c137=\"\" style=\"box-sizing: border-box\">sed -i &quot;s@http://mirror.centos.org@https://172.13.30.100@g&quot; /etc/yum.repos.d/CentOS-Base.repo</span></span></p><p style=\"margin: 5px 0;font-size: 16px;font-family: 宋体;white-space: normal\"><span style=\"font-size: 12px;font-family: &#39;Helvetica Neue&#39;;color: rgb(94, 102, 120)\"><span _ngcontent-kiv-c137=\"\" style=\"box-sizing: border-box\">3</span><span style=\"font-size: 12px;font-family: DengXian\">、执行<span style=\"font-size: 12px;font-family: &#39;Helvetica Neue&#39;;color: rgb(229, 136, 59)\">yum clean all</span><span style=\"font-size: 12px\">清除原有</span><span style=\"font-size: 12px;font-family: &#39;Helvetica Neue&#39;\">yum</span><span style=\"font-size: 12px\">缓存。</span></span></span></p><p style=\"margin: 5px 0;font-size: 16px;font-family: 宋体;white-space: normal\"><span _ngcontent-ptu-c136=\"\" style=\"box-sizing: border-box\"><span style=\"font-size: 12px;font-family: &#39;Helvetica Neue&#39;;color: rgb(94, 102, 120)\">4</span><span style=\"font-size: 12px;font-family: DengXian;color: rgb(94, 102, 120)\">、执行<span style=\"font-size: 12px;font-family: &#39;Helvetica Neue&#39;;color: rgb(229, 136, 59)\">yum makecache</span><span style=\"font-size: 12px\">（刷新缓存）或者<span style=\"font-size: 12px;font-family: &#39;Helvetica Neue&#39;;color: rgb(229, 136, 59)\">yum repolist all</span><span style=\"font-size: 12px\">（查看所有配置可以使用的文件，会自动刷新缓存）。</span></span></span></span></p><p style=\"margin: 5px 0;font-size: 16px;font-family: 宋体;white-space: normal\">&nbsp;</p><p style=\";font-size: 14px;font-family: DengXian;border: none;padding: 0\"><strong>相关网址</strong></p><p style=\";font-size: 14px;font-family: DengXian;text-align: justify;white-space: normal;text-indent: 28px;background: whitesmoke\"><span style=\"font-size: 12px;font-family: &#39;Helvetica Neue&#39;;color: rgb(102, 102, 102)\">CentOS</span><span style=\"font-size: 12px;color: rgb(102, 102, 102)\"><span _ngcontent-kiv-c137=\"\" style=\"box-sizing: border-box\">官方地址：</span><span style=\"font-size: 12px;font-family: &#39;Helvetica Neue&#39;\"><a href=\"http://www.centos.org/\" style=\"color: rgb(149, 79, 114)\"><span _ngcontent-kiv-c137=\"\" style=\"box-sizing: border-box\">http://www.centos.org/</span></a></span></span></p><p style=\";font-size: 14px;font-family: DengXian;text-align: justify;white-space: normal;text-indent: 28px;background: whitesmoke\"><span style=\"font-size: 12px;font-family: &#39;Helvetica Neue&#39;;color: rgb(102, 102, 102)\">CentOS</span><span style=\"font-size: 12px;color: rgb(102, 102, 102)\"><span _ngcontent-kiv-c137=\"\" style=\"box-sizing: border-box\">邮件列表地址：</span><span style=\"font-size: 12px;font-family: &#39;Helvetica Neue&#39;\"><a href=\"http://www.centos.org/modules/tinycontent/index.php?id=16\" style=\"color: rgb(149, 79, 114)\"><span _ngcontent-kiv-c137=\"\" style=\"box-sizing: border-box\">http://www.centos.org/modules/tinycontent/index.php?id=16</span></a></span></span></p><p style=\";font-size: 14px;font-family: DengXian;text-align: justify;white-space: normal;text-indent: 28px;background: whitesmoke\"><span style=\"font-size: 12px;font-family: &#39;Helvetica Neue&#39;;color: rgb(102, 102, 102)\">CentOS</span><span style=\"font-size: 12px;color: rgb(102, 102, 102)\"><span _ngcontent-kiv-c137=\"\" style=\"box-sizing: border-box\">论坛地址：</span><span style=\"font-size: 12px;font-family: &#39;Helvetica Neue&#39;\"><a href=\"http://www.centos.org/modules/newbb/\" style=\"color: rgb(149, 79, 114)\"><span _ngcontent-kiv-c137=\"\" style=\"box-sizing: border-box\">http://www.centos.org/modules/newbb/</span></a></span></span></p><p style=\";font-size: 14px;font-family: DengXian;text-align: justify;white-space: normal;text-indent: 28px;background: whitesmoke\"><span style=\"font-size: 12px;font-family: &#39;Helvetica Neue&#39;;color: rgb(102, 102, 102)\">CentOS</span><span style=\"font-size: 12px;color: rgb(102, 102, 102)\"><span _ngcontent-kiv-c137=\"\" style=\"box-sizing: border-box\">文档地址：</span><span style=\"font-size: 12px;font-family: &#39;Helvetica Neue&#39;\"><a href=\"http://www.centos.org/docs/\" style=\"color: rgb(149, 79, 114)\"><span _ngcontent-kiv-c137=\"\" style=\"box-sizing: border-box\">http://www.centos.org/docs/</span></a></span></span></p><p style=\";font-size: 14px;font-family: DengXian;text-align: justify;white-space: normal;text-indent: 28px;background: whitesmoke\"><span style=\"font-size: 12px;font-family: &#39;Helvetica Neue&#39;;color: rgb(102, 102, 102)\">CentOS Wiki</span><span style=\"font-size: 12px;color: rgb(102, 102, 102)\"><span _ngcontent-kiv-c137=\"\" style=\"box-sizing: border-box\">地址：</span><span style=\"font-size: 12px;font-family: &#39;Helvetica Neue&#39;\"><a href=\"http://wiki.centos.org/\" style=\"color: rgb(149, 79, 114)\"><span style=\"color: rgb(102, 102, 102)\"><span _ngcontent-kiv-c137=\"\" style=\"box-sizing: border-box\">http://wiki.centos.<span _ngcontent-kiv-c137=\"\" style=\"box-sizing: border-box\">o<span _ngcontent-kiv-c137=\"\" style=\"box-sizing: border-box\">rg/</span></span></span></span></a></span></span></p><p><br/></p>', 'file_1000000008', 'FOLDER', NULL, NULL, '2020-11-06 14:19:28', NULL, 'ACCEPTED', NULL, NULL, NULL, NULL, NULL, NULL, '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'PUBLIC', NULL, 'PUBLIC');
INSERT INTO `sw_software_version_info` VALUES ('0000009', '0000000002', '20.10', NULL, NULL, NULL, '<p style=\";font-size: 14px;font-family: DengXian;border: none;padding: 0\"><strong>使用说明</strong></p><p style=\";text-align: justify;font-size: 14px;font-family: DengXian;white-space: normal;text-indent: 28px;background: whitesmoke\"><span style=\"font-size: 12px;font-family: &#39;Helvetica Neue&#39;;color: rgb(102, 102, 102)\">Ubuntu </span><span style=\"font-size: 12px;color: rgb(102, 102, 102)\">的仓库地址为：</span><span style=\"font-size: 12px;font-family: &#39;Helvetica Neue&#39;;color: rgb(102, 102, 102)\"><a href=\"http://172.13.30.100/ubuntu/\" style=\"color: rgb(149, 79, 114)\">http://172.13.30.100/ubuntu/</a></span></p><p style=\";text-align: justify;font-size: 14px;font-family: DengXian;white-space: normal;text-indent: 28px;background: whitesmoke\"><span style=\"font-size: 12px;font-family: &#39;Helvetica Neue&#39;;color: rgb(102, 102, 102)\">Ubuntu-CD</span><span style=\"font-size: 12px;color: rgb(102, 102, 102)\">的镜像地址为：</span><span style=\"font-size: 12px;font-family: &#39;Helvetica Neue&#39;;color: rgb(102, 102, 102)\"><a href=\"http://172.13.30.100/ubuntu-cdimage/\" style=\"color: rgb(149, 79, 114)\">http://172.13.30.100/ubuntu-cdimage/</a></span></p><p style=\";text-align: justify;font-size: 14px;font-family: DengXian;white-space: normal;text-indent: 28px;background: whitesmoke\"><span style=\"font-size: 12px;font-family: &#39;Helvetica Neue&#39;;color: rgb(102, 102, 102)\">Ubuntu-Cloud</span><span style=\"font-size: 12px;color: rgb(102, 102, 102)\">的镜像地址为：</span><span style=\"font-size: 12px;font-family: &#39;Helvetica Neue&#39;;color: rgb(102, 102, 102)\"><a href=\"http://172.13.30.100/ubuntu-cloud-images/\" style=\"color: rgb(149, 79, 114)\">http://172.13.30.100/ubuntu-cloud-images/</a></span></p><p style=\";text-align: justify;font-size: 14px;font-family: DengXian;white-space: normal;text-indent: 28px;background: whitesmoke\"><span style=\"font-size: 12px;font-family: &#39;Helvetica Neue&#39;;color: rgb(102, 102, 102)\">Ubuntu-Ports</span><span style=\"font-size: 12px;color: rgb(102, 102, 102)\">的仓库地址为：</span><span style=\"font-size: 12px;font-family: &#39;Helvetica Neue&#39;;color: rgb(102, 102, 102)\"><a href=\"http://172.13.30.100/ubuntu-ports/\" style=\"color: rgb(149, 79, 114)\">http://172.13.30.100/ubuntu-ports/</a></span></p><p style=\";text-align: justify;font-size: 14px;font-family: DengXian;white-space: normal;text-indent: 28px;background: whitesmoke\"><span style=\"font-size: 12px;font-family: &#39;Helvetica Neue&#39;;color: rgb(102, 102, 102)\">Ubuntu-Releases</span><span style=\"font-size: 12px;color: rgb(102, 102, 102)\">的镜像地址为：</span><span style=\"font-size: 12px;font-family: &#39;Helvetica Neue&#39;;color: rgb(102, 102, 102)\"><a href=\"http://172.13.30.100/ubuntu-releases/\" style=\"color: rgb(149, 79, 114)\">http://172.13.30.100/ubuntu-releases/</a></span></p><p style=\";text-align: justify;font-size: 14px;font-family: DengXian;white-space: normal;line-height: 25px;background: white\"><span style=\"font-size: 12px;font-family: &#39;Helvetica Neue&#39;;color: rgb(94, 102, 120)\">1</span><span style=\"font-size: 12px;color: rgb(94, 102, 120)\">、备份配置文件：</span></p><p style=\";text-align: justify;font-size: 14px;font-family: DengXian;white-space: normal;text-indent: 28px;background: whitesmoke\"><span style=\"font-size: 12px;font-family: &#39;Helvetica Neue&#39;;color: rgb(102, 102, 102)\"><span _ngcontent-kiv-c137=\"\" disabled=\"disabled\" style=\"box-sizing: border-box\">sudo cp -a /etc/apt/sources.list /etc/apt/sources.list.bak</span></span></p><p style=\";text-align: justify;font-size: 14px;font-family: DengXian;white-space: normal;line-height: 25px;background: white\"><span style=\"font-size: 12px;font-family: &#39;Helvetica Neue&#39;;color: rgb(94, 102, 120)\"><span _ngcontent-kiv-c137=\"\" style=\"box-sizing: border-box\">2</span></span><span style=\"font-size: 12px;color: rgb(94, 102, 120)\">、修改</span><span style=\"font-size: 12px;font-family: &#39;Helvetica Neue&#39;;color: rgb(229, 136, 59)\">sources.list</span><span style=\"font-size: 12px;color: rgb(94, 102, 120)\">文件，将</span><span style=\"font-size: 12px;font-family: &#39;Helvetica Neue&#39;;color: rgb(229, 136, 59)\">http://archive.ubuntu.com</span><span style=\"font-size: 12px;color: rgb(94, 102, 120)\">和</span><span style=\"font-size: 12px;font-family: &#39;Helvetica Neue&#39;;color: rgb(229, 136, 59)\">http://security.ubuntu.com</span><span style=\"font-size: 12px;color: rgb(94, 102, 120)\">替换成</span><span style=\"font-size: 12px;font-family: &#39;Helvetica Neue&#39;;color: rgb(229, 136, 59)\">http://172.13.30.100</span><span style=\"font-size: 12px;color: rgb(94, 102, 120)\">，可以参考如下命令：</span></p><p style=\";text-align: justify;font-size: 14px;font-family: DengXian;white-space: normal;text-indent: 28px;background: whitesmoke\"><span style=\"font-size: 12px;font-family: &#39;Helvetica Neue&#39;;color: rgb(102, 102, 102)\"><span _ngcontent-kiv-c137=\"\" disabled=\"disabled\" style=\"box-sizing: border-box\">sudo sed -i &quot;s@http://.*archive.ubuntu.com@http://172.13.30.100@g&quot; /etc/apt/sources.list</span></span></p><p style=\";text-align: justify;font-size: 14px;font-family: DengXian;white-space: normal;text-indent: 28px;background: whitesmoke\"><span style=\"font-size: 12px;font-family: &#39;Helvetica Neue&#39;;color: rgb(102, 102, 102)\">sudo sed -i &quot;s@http://.*security.ubuntu.com@http://172.13.30.100@g&quot; /etc/apt/sources.list</span></p><p style=\";text-align: justify;font-size: 14px;font-family: DengXian;white-space: normal;background: white\"><span style=\"font-size: 12px;font-family: &#39;Helvetica Neue&#39;;color: rgb(94, 102, 120)\">3</span><span style=\"font-size: 12px;color: rgb(94, 102, 120)\">、执行</span><span style=\"font-size: 12px;font-family: &#39;Helvetica Neue&#39;;color: rgb(229, 136, 59)\">apt-get update</span><span style=\"font-size: 12px;color: rgb(94, 102, 120)\">更新索引</span></p><p style=\";text-align: justify;font-size: 14px;font-family: DengXian;white-space: normal;background: white\"><span style=\"font-size: 12px;font-family: &#39;Helvetica Neue&#39;;color: rgb(94, 102, 120)\">&nbsp;</span></p><p><span _ngcontent-kiv-c137=\"\" style=\"box-sizing: border-box\"></span></p><p style=\";text-align: justify;font-size: 14px;font-family: DengXian;border: none;padding: 0\"><strong>相关网址</strong></p><p></p><p style=\";text-align: justify;font-size: 14px;font-family: DengXian;white-space: normal;text-indent: 28px;background: whitesmoke\"><span style=\"font-size: 12px;font-family: &#39;Helvetica Neue&#39;;color: rgb(102, 102, 102)\">Ubuntu </span><span style=\"font-size: 12px;color: rgb(102, 102, 102)\">官方地址：</span><span style=\"font-size: 12px;font-family: &#39;Helvetica Neue&#39;;color: rgb(102, 102, 102)\"><a href=\"http://www.ubuntu.com/\" style=\"color: rgb(149, 79, 114)\">http://www.ubuntu.com/</a></span></p><p style=\";text-align: justify;font-size: 14px;font-family: DengXian;white-space: normal;text-indent: 28px;background: whitesmoke\"><span style=\"font-size: 12px;font-family: &#39;Helvetica Neue&#39;;color: rgb(102, 102, 102)\">Ubuntu </span><span style=\"font-size: 12px;color: rgb(102, 102, 102)\">论坛地址：</span><span style=\"font-size: 12px;font-family: &#39;Helvetica Neue&#39;;color: rgb(102, 102, 102)\"><a href=\"http://ubuntuforums.org/\" style=\"color: rgb(149, 79, 114)\">http://ubuntuforums.org/</a></span></p><p style=\";text-align: justify;font-size: 14px;font-family: DengXian;white-space: normal;text-indent: 28px;background: whitesmoke\"><span style=\"font-size: 12px;font-family: &#39;Helvetica Neue&#39;;color: rgb(102, 102, 102)\">Ubuntu Wiki</span><span style=\"font-size: 12px;color: rgb(102, 102, 102)\">地址：</span><span style=\"font-size: 12px;font-family: &#39;Helvetica Neue&#39;;color: rgb(102, 102, 102)\"><a href=\"http://wiki.ubuntu.com/\" style=\"color: rgb(149, 79, 114)\">http://wiki.ubuntu.com/</a></span></p><p style=\";text-align: justify;font-size: 14px;font-family: DengXian;white-space: normal;text-indent: 28px;background: whitesmoke\"><span style=\"font-size: 12px;font-family: &#39;Helvetica Neue&#39;;color: rgb(102, 102, 102)\">Ubuntu</span><span style=\"font-size: 12px;color: rgb(102, 102, 102)\">帮助地址：</span><span style=\"font-size: 12px;font-family: &#39;Helvetica Neue&#39;;color: rgb(102, 102, 102)\"><a href=\"http://help.ubuntu.com/\" style=\"color: rgb(149, 79, 114)\">http://help.ubuntu.com/</a></span></p><p style=\";text-align: justify;font-size: 14px;font-family: DengXian;white-space: normal;text-indent: 28px;background: whitesmoke\"><span style=\"font-size: 12px;font-family: &#39;Helvetica Neue&#39;;color: rgb(102, 102, 102)\">Ubuntu</span><span style=\"font-size: 12px;color: rgb(102, 102, 102)\">邮件列表地址：</span><span style=\"font-size: 12px;font-family: &#39;Helvetica Neue&#39;;color: rgb(102, 102, 102)\"><a href=\"http://www.ubuntu.com/support/community/mailinglists\" style=\"color: rgb(149, 79, 114)\">http://www.ubuntu.com/support/community/mailinglists</a></span></p><p style=\";text-align: justify;font-size: 14px;font-family: DengXian;white-space: normal;background: white\"><strong><span style=\"font-family: &#39;Helvetica Neue&#39;\">&nbsp;</span></strong></p><p><br/></p>', 'file_1000000009', 'FOLDER', NULL, NULL, '2020-11-06 14:19:28', NULL, 'ACCEPTED', NULL, NULL, NULL, NULL, NULL, NULL, '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'PUBLIC', NULL, 'PUBLIC');
INSERT INTO `sw_software_version_info` VALUES ('0000010', '0000000002', '20.04', NULL, NULL, NULL, '<p style=\";font-size: 14px;font-family: DengXian;border: none;padding: 0\"><strong>使用说明</strong></p><p style=\";text-align: justify;font-size: 14px;font-family: DengXian;white-space: normal;text-indent: 28px;background: whitesmoke\"><span style=\"font-size: 12px;font-family: &#39;Helvetica Neue&#39;;color: rgb(102, 102, 102)\">Ubuntu </span><span style=\"font-size: 12px;color: rgb(102, 102, 102)\">的仓库地址为：</span><span style=\"font-size: 12px;font-family: &#39;Helvetica Neue&#39;;color: rgb(102, 102, 102)\"><a href=\"http://172.13.30.100/ubuntu/\" style=\"color: rgb(149, 79, 114)\">http://172.13.30.100/ubuntu/</a></span></p><p style=\";text-align: justify;font-size: 14px;font-family: DengXian;white-space: normal;text-indent: 28px;background: whitesmoke\"><span style=\"font-size: 12px;font-family: &#39;Helvetica Neue&#39;;color: rgb(102, 102, 102)\">Ubuntu-CD</span><span style=\"font-size: 12px;color: rgb(102, 102, 102)\">的镜像地址为：</span><span style=\"font-size: 12px;font-family: &#39;Helvetica Neue&#39;;color: rgb(102, 102, 102)\"><a href=\"http://172.13.30.100/ubuntu-cdimage/\" style=\"color: rgb(149, 79, 114)\">http://172.13.30.100/ubuntu-cdimage/</a></span></p><p style=\";text-align: justify;font-size: 14px;font-family: DengXian;white-space: normal;text-indent: 28px;background: whitesmoke\"><span style=\"font-size: 12px;font-family: &#39;Helvetica Neue&#39;;color: rgb(102, 102, 102)\">Ubuntu-Cloud</span><span style=\"font-size: 12px;color: rgb(102, 102, 102)\">的镜像地址为：</span><span style=\"font-size: 12px;font-family: &#39;Helvetica Neue&#39;;color: rgb(102, 102, 102)\"><a href=\"http://172.13.30.100/ubuntu-cloud-images/\" style=\"color: rgb(149, 79, 114)\">http://172.13.30.100/ubuntu-cloud-images/</a></span></p><p style=\";text-align: justify;font-size: 14px;font-family: DengXian;white-space: normal;text-indent: 28px;background: whitesmoke\"><span style=\"font-size: 12px;font-family: &#39;Helvetica Neue&#39;;color: rgb(102, 102, 102)\">Ubuntu-Ports</span><span style=\"font-size: 12px;color: rgb(102, 102, 102)\">的仓库地址为：</span><span style=\"font-size: 12px;font-family: &#39;Helvetica Neue&#39;;color: rgb(102, 102, 102)\"><a href=\"http://172.13.30.100/ubuntu-ports/\" style=\"color: rgb(149, 79, 114)\">http://172.13.30.100/ubuntu-ports/</a></span></p><p style=\";text-align: justify;font-size: 14px;font-family: DengXian;white-space: normal;text-indent: 28px;background: whitesmoke\"><span style=\"font-size: 12px;font-family: &#39;Helvetica Neue&#39;;color: rgb(102, 102, 102)\">Ubuntu-Releases</span><span style=\"font-size: 12px;color: rgb(102, 102, 102)\">的镜像地址为：</span><span style=\"font-size: 12px;font-family: &#39;Helvetica Neue&#39;;color: rgb(102, 102, 102)\"><a href=\"http://172.13.30.100/ubuntu-releases/\" style=\"color: rgb(149, 79, 114)\">http://172.13.30.100/ubuntu-releases/</a></span></p><p style=\";text-align: justify;font-size: 14px;font-family: DengXian;white-space: normal;line-height: 25px;background: white\"><span style=\"font-size: 12px;font-family: &#39;Helvetica Neue&#39;;color: rgb(94, 102, 120)\">1</span><span style=\"font-size: 12px;color: rgb(94, 102, 120)\">、备份配置文件：</span></p><p style=\";text-align: justify;font-size: 14px;font-family: DengXian;white-space: normal;text-indent: 28px;background: whitesmoke\"><span style=\"font-size: 12px;font-family: &#39;Helvetica Neue&#39;;color: rgb(102, 102, 102)\"><span _ngcontent-kiv-c137=\"\" disabled=\"disabled\" style=\"box-sizing: border-box\">sudo cp -a /etc/apt/sources.list /etc/apt/sources.list.bak</span></span></p><p style=\";text-align: justify;font-size: 14px;font-family: DengXian;white-space: normal;line-height: 25px;background: white\"><span style=\"font-size: 12px;font-family: &#39;Helvetica Neue&#39;;color: rgb(94, 102, 120)\"><span _ngcontent-kiv-c137=\"\" style=\"box-sizing: border-box\">2</span></span><span style=\"font-size: 12px;color: rgb(94, 102, 120)\">、修改</span><span style=\"font-size: 12px;font-family: &#39;Helvetica Neue&#39;;color: rgb(229, 136, 59)\">sources.list</span><span style=\"font-size: 12px;color: rgb(94, 102, 120)\">文件，将</span><span style=\"font-size: 12px;font-family: &#39;Helvetica Neue&#39;;color: rgb(229, 136, 59)\">http://archive.ubuntu.com</span><span style=\"font-size: 12px;color: rgb(94, 102, 120)\">和</span><span style=\"font-size: 12px;font-family: &#39;Helvetica Neue&#39;;color: rgb(229, 136, 59)\">http://security.ubuntu.com</span><span style=\"font-size: 12px;color: rgb(94, 102, 120)\">替换成</span><span style=\"font-size: 12px;font-family: &#39;Helvetica Neue&#39;;color: rgb(229, 136, 59)\">http://172.13.30.100</span><span style=\"font-size: 12px;color: rgb(94, 102, 120)\">，可以参考如下命令：</span></p><p style=\";text-align: justify;font-size: 14px;font-family: DengXian;white-space: normal;text-indent: 28px;background: whitesmoke\"><span style=\"font-size: 12px;font-family: &#39;Helvetica Neue&#39;;color: rgb(102, 102, 102)\"><span _ngcontent-kiv-c137=\"\" disabled=\"disabled\" style=\"box-sizing: border-box\">sudo sed -i &quot;s@http://.*archive.ubuntu.com@http://172.13.30.100@g&quot; /etc/apt/sources.list</span></span></p><p style=\";text-align: justify;font-size: 14px;font-family: DengXian;white-space: normal;text-indent: 28px;background: whitesmoke\"><span style=\"font-size: 12px;font-family: &#39;Helvetica Neue&#39;;color: rgb(102, 102, 102)\">sudo sed -i &quot;s@http://.*security.ubuntu.com@http://172.13.30.100@g&quot; /etc/apt/sources.list</span></p><p style=\";text-align: justify;font-size: 14px;font-family: DengXian;white-space: normal;background: white\"><span style=\"font-size: 12px;font-family: &#39;Helvetica Neue&#39;;color: rgb(94, 102, 120)\">3</span><span style=\"font-size: 12px;color: rgb(94, 102, 120)\">、执行</span><span style=\"font-size: 12px;font-family: &#39;Helvetica Neue&#39;;color: rgb(229, 136, 59)\">apt-get update</span><span style=\"font-size: 12px;color: rgb(94, 102, 120)\">更新索引</span></p><p style=\";text-align: justify;font-size: 14px;font-family: DengXian;white-space: normal;background: white\"><span style=\"font-size: 12px;font-family: &#39;Helvetica Neue&#39;;color: rgb(94, 102, 120)\">&nbsp;</span></p><p><span _ngcontent-kiv-c137=\"\" style=\"box-sizing: border-box\"></span></p><p style=\";text-align: justify;font-size: 14px;font-family: DengXian;border: none;padding: 0\"><strong>相关网址</strong></p><p></p><p style=\";text-align: justify;font-size: 14px;font-family: DengXian;white-space: normal;text-indent: 28px;background: whitesmoke\"><span style=\"font-size: 12px;font-family: &#39;Helvetica Neue&#39;;color: rgb(102, 102, 102)\">Ubuntu </span><span style=\"font-size: 12px;color: rgb(102, 102, 102)\">官方地址：</span><span style=\"font-size: 12px;font-family: &#39;Helvetica Neue&#39;;color: rgb(102, 102, 102)\"><a href=\"http://www.ubuntu.com/\" style=\"color: rgb(149, 79, 114)\">http://www.ubuntu.com/</a></span></p><p style=\";text-align: justify;font-size: 14px;font-family: DengXian;white-space: normal;text-indent: 28px;background: whitesmoke\"><span style=\"font-size: 12px;font-family: &#39;Helvetica Neue&#39;;color: rgb(102, 102, 102)\">Ubuntu </span><span style=\"font-size: 12px;color: rgb(102, 102, 102)\">论坛地址：</span><span style=\"font-size: 12px;font-family: &#39;Helvetica Neue&#39;;color: rgb(102, 102, 102)\"><a href=\"http://ubuntuforums.org/\" style=\"color: rgb(149, 79, 114)\">http://ubuntuforums.org/</a></span></p><p style=\";text-align: justify;font-size: 14px;font-family: DengXian;white-space: normal;text-indent: 28px;background: whitesmoke\"><span style=\"font-size: 12px;font-family: &#39;Helvetica Neue&#39;;color: rgb(102, 102, 102)\">Ubuntu Wiki</span><span style=\"font-size: 12px;color: rgb(102, 102, 102)\">地址：</span><span style=\"font-size: 12px;font-family: &#39;Helvetica Neue&#39;;color: rgb(102, 102, 102)\"><a href=\"http://wiki.ubuntu.com/\" style=\"color: rgb(149, 79, 114)\">http://wiki.ubuntu.com/</a></span></p><p style=\";text-align: justify;font-size: 14px;font-family: DengXian;white-space: normal;text-indent: 28px;background: whitesmoke\"><span style=\"font-size: 12px;font-family: &#39;Helvetica Neue&#39;;color: rgb(102, 102, 102)\">Ubuntu</span><span style=\"font-size: 12px;color: rgb(102, 102, 102)\">帮助地址：</span><span style=\"font-size: 12px;font-family: &#39;Helvetica Neue&#39;;color: rgb(102, 102, 102)\"><a href=\"http://help.ubuntu.com/\" style=\"color: rgb(149, 79, 114)\">http://help.ubuntu.com/</a></span></p><p style=\";text-align: justify;font-size: 14px;font-family: DengXian;white-space: normal;text-indent: 28px;background: whitesmoke\"><span style=\"font-size: 12px;font-family: &#39;Helvetica Neue&#39;;color: rgb(102, 102, 102)\">Ubuntu</span><span style=\"font-size: 12px;color: rgb(102, 102, 102)\">邮件列表地址：</span><span style=\"font-size: 12px;font-family: &#39;Helvetica Neue&#39;;color: rgb(102, 102, 102)\"><a href=\"http://www.ubuntu.com/support/community/mailinglists\" style=\"color: rgb(149, 79, 114)\">http://www.ubuntu.com/support/community/mailinglists</a></span></p><p style=\";text-align: justify;font-size: 14px;font-family: DengXian;white-space: normal;background: white\"><strong><span style=\"font-family: &#39;Helvetica Neue&#39;\">&nbsp;</span></strong></p><p><br/></p>', 'file_1000000010', 'FOLDER', NULL, NULL, '2020-11-06 14:19:28', NULL, 'ACCEPTED', NULL, NULL, NULL, NULL, NULL, NULL, '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'PUBLIC', NULL, 'PUBLIC');
INSERT INTO `sw_software_version_info` VALUES ('0000011', '0000000002', '18.04', NULL, NULL, NULL, '<p style=\";font-size: 14px;font-family: DengXian;border: none;padding: 0\"><strong>使用说明</strong></p><p style=\";text-align: justify;font-size: 14px;font-family: DengXian;white-space: normal;text-indent: 28px;background: whitesmoke\"><span style=\"font-size: 12px;font-family: &#39;Helvetica Neue&#39;;color: rgb(102, 102, 102)\">Ubuntu </span><span style=\"font-size: 12px;color: rgb(102, 102, 102)\">的仓库地址为：</span><span style=\"font-size: 12px;font-family: &#39;Helvetica Neue&#39;;color: rgb(102, 102, 102)\"><a href=\"http://172.13.30.100/ubuntu/\" style=\"color: rgb(149, 79, 114)\">http://172.13.30.100/ubuntu/</a></span></p><p style=\";text-align: justify;font-size: 14px;font-family: DengXian;white-space: normal;text-indent: 28px;background: whitesmoke\"><span style=\"font-size: 12px;font-family: &#39;Helvetica Neue&#39;;color: rgb(102, 102, 102)\">Ubuntu-CD</span><span style=\"font-size: 12px;color: rgb(102, 102, 102)\">的镜像地址为：</span><span style=\"font-size: 12px;font-family: &#39;Helvetica Neue&#39;;color: rgb(102, 102, 102)\"><a href=\"http://172.13.30.100/ubuntu-cdimage/\" style=\"color: rgb(149, 79, 114)\">http://172.13.30.100/ubuntu-cdimage/</a></span></p><p style=\";text-align: justify;font-size: 14px;font-family: DengXian;white-space: normal;text-indent: 28px;background: whitesmoke\"><span style=\"font-size: 12px;font-family: &#39;Helvetica Neue&#39;;color: rgb(102, 102, 102)\">Ubuntu-Cloud</span><span style=\"font-size: 12px;color: rgb(102, 102, 102)\">的镜像地址为：</span><span style=\"font-size: 12px;font-family: &#39;Helvetica Neue&#39;;color: rgb(102, 102, 102)\"><a href=\"http://172.13.30.100/ubuntu-cloud-images/\" style=\"color: rgb(149, 79, 114)\">http://172.13.30.100/ubuntu-cloud-images/</a></span></p><p style=\";text-align: justify;font-size: 14px;font-family: DengXian;white-space: normal;text-indent: 28px;background: whitesmoke\"><span style=\"font-size: 12px;font-family: &#39;Helvetica Neue&#39;;color: rgb(102, 102, 102)\">Ubuntu-Ports</span><span style=\"font-size: 12px;color: rgb(102, 102, 102)\">的仓库地址为：</span><span style=\"font-size: 12px;font-family: &#39;Helvetica Neue&#39;;color: rgb(102, 102, 102)\"><a href=\"http://172.13.30.100/ubuntu-ports/\" style=\"color: rgb(149, 79, 114)\">http://172.13.30.100/ubuntu-ports/</a></span></p><p style=\";text-align: justify;font-size: 14px;font-family: DengXian;white-space: normal;text-indent: 28px;background: whitesmoke\"><span style=\"font-size: 12px;font-family: &#39;Helvetica Neue&#39;;color: rgb(102, 102, 102)\">Ubuntu-Releases</span><span style=\"font-size: 12px;color: rgb(102, 102, 102)\">的镜像地址为：</span><span style=\"font-size: 12px;font-family: &#39;Helvetica Neue&#39;;color: rgb(102, 102, 102)\"><a href=\"http://172.13.30.100/ubuntu-releases/\" style=\"color: rgb(149, 79, 114)\">http://172.13.30.100/ubuntu-releases/</a></span></p><p style=\";text-align: justify;font-size: 14px;font-family: DengXian;white-space: normal;line-height: 25px;background: white\"><span style=\"font-size: 12px;font-family: &#39;Helvetica Neue&#39;;color: rgb(94, 102, 120)\">1</span><span style=\"font-size: 12px;color: rgb(94, 102, 120)\">、备份配置文件：</span></p><p style=\";text-align: justify;font-size: 14px;font-family: DengXian;white-space: normal;text-indent: 28px;background: whitesmoke\"><span style=\"font-size: 12px;font-family: &#39;Helvetica Neue&#39;;color: rgb(102, 102, 102)\"><span _ngcontent-kiv-c137=\"\" disabled=\"disabled\" style=\"box-sizing: border-box\">sudo cp -a /etc/apt/sources.list /etc/apt/sources.list.bak</span></span></p><p style=\";text-align: justify;font-size: 14px;font-family: DengXian;white-space: normal;line-height: 25px;background: white\"><span style=\"font-size: 12px;font-family: &#39;Helvetica Neue&#39;;color: rgb(94, 102, 120)\"><span _ngcontent-kiv-c137=\"\" style=\"box-sizing: border-box\">2</span></span><span style=\"font-size: 12px;color: rgb(94, 102, 120)\">、修改</span><span style=\"font-size: 12px;font-family: &#39;Helvetica Neue&#39;;color: rgb(229, 136, 59)\">sources.list</span><span style=\"font-size: 12px;color: rgb(94, 102, 120)\">文件，将</span><span style=\"font-size: 12px;font-family: &#39;Helvetica Neue&#39;;color: rgb(229, 136, 59)\">http://archive.ubuntu.com</span><span style=\"font-size: 12px;color: rgb(94, 102, 120)\">和</span><span style=\"font-size: 12px;font-family: &#39;Helvetica Neue&#39;;color: rgb(229, 136, 59)\">http://security.ubuntu.com</span><span style=\"font-size: 12px;color: rgb(94, 102, 120)\">替换成</span><span style=\"font-size: 12px;font-family: &#39;Helvetica Neue&#39;;color: rgb(229, 136, 59)\">http://172.13.30.100</span><span style=\"font-size: 12px;color: rgb(94, 102, 120)\">，可以参考如下命令：</span></p><p style=\";text-align: justify;font-size: 14px;font-family: DengXian;white-space: normal;text-indent: 28px;background: whitesmoke\"><span style=\"font-size: 12px;font-family: &#39;Helvetica Neue&#39;;color: rgb(102, 102, 102)\"><span _ngcontent-kiv-c137=\"\" disabled=\"disabled\" style=\"box-sizing: border-box\">sudo sed -i &quot;s@http://.*archive.ubuntu.com@http://172.13.30.100@g&quot; /etc/apt/sources.list</span></span></p><p style=\";text-align: justify;font-size: 14px;font-family: DengXian;white-space: normal;text-indent: 28px;background: whitesmoke\"><span style=\"font-size: 12px;font-family: &#39;Helvetica Neue&#39;;color: rgb(102, 102, 102)\">sudo sed -i &quot;s@http://.*security.ubuntu.com@http://172.13.30.100@g&quot; /etc/apt/sources.list</span></p><p style=\";text-align: justify;font-size: 14px;font-family: DengXian;white-space: normal;background: white\"><span style=\"font-size: 12px;font-family: &#39;Helvetica Neue&#39;;color: rgb(94, 102, 120)\">3</span><span style=\"font-size: 12px;color: rgb(94, 102, 120)\">、执行</span><span style=\"font-size: 12px;font-family: &#39;Helvetica Neue&#39;;color: rgb(229, 136, 59)\">apt-get update</span><span style=\"font-size: 12px;color: rgb(94, 102, 120)\">更新索引</span></p><p style=\";text-align: justify;font-size: 14px;font-family: DengXian;white-space: normal;background: white\"><span style=\"font-size: 12px;font-family: &#39;Helvetica Neue&#39;;color: rgb(94, 102, 120)\">&nbsp;</span></p><p><span _ngcontent-kiv-c137=\"\" style=\"box-sizing: border-box\"></span></p><p style=\";text-align: justify;font-size: 14px;font-family: DengXian;border: none;padding: 0\"><strong>相关网址</strong></p><p></p><p style=\";text-align: justify;font-size: 14px;font-family: DengXian;white-space: normal;text-indent: 28px;background: whitesmoke\"><span style=\"font-size: 12px;font-family: &#39;Helvetica Neue&#39;;color: rgb(102, 102, 102)\">Ubuntu </span><span style=\"font-size: 12px;color: rgb(102, 102, 102)\">官方地址：</span><span style=\"font-size: 12px;font-family: &#39;Helvetica Neue&#39;;color: rgb(102, 102, 102)\"><a href=\"http://www.ubuntu.com/\" style=\"color: rgb(149, 79, 114)\">http://www.ubuntu.com/</a></span></p><p style=\";text-align: justify;font-size: 14px;font-family: DengXian;white-space: normal;text-indent: 28px;background: whitesmoke\"><span style=\"font-size: 12px;font-family: &#39;Helvetica Neue&#39;;color: rgb(102, 102, 102)\">Ubuntu </span><span style=\"font-size: 12px;color: rgb(102, 102, 102)\">论坛地址：</span><span style=\"font-size: 12px;font-family: &#39;Helvetica Neue&#39;;color: rgb(102, 102, 102)\"><a href=\"http://ubuntuforums.org/\" style=\"color: rgb(149, 79, 114)\">http://ubuntuforums.org/</a></span></p><p style=\";text-align: justify;font-size: 14px;font-family: DengXian;white-space: normal;text-indent: 28px;background: whitesmoke\"><span style=\"font-size: 12px;font-family: &#39;Helvetica Neue&#39;;color: rgb(102, 102, 102)\">Ubuntu Wiki</span><span style=\"font-size: 12px;color: rgb(102, 102, 102)\">地址：</span><span style=\"font-size: 12px;font-family: &#39;Helvetica Neue&#39;;color: rgb(102, 102, 102)\"><a href=\"http://wiki.ubuntu.com/\" style=\"color: rgb(149, 79, 114)\">http://wiki.ubuntu.com/</a></span></p><p style=\";text-align: justify;font-size: 14px;font-family: DengXian;white-space: normal;text-indent: 28px;background: whitesmoke\"><span style=\"font-size: 12px;font-family: &#39;Helvetica Neue&#39;;color: rgb(102, 102, 102)\">Ubuntu</span><span style=\"font-size: 12px;color: rgb(102, 102, 102)\">帮助地址：</span><span style=\"font-size: 12px;font-family: &#39;Helvetica Neue&#39;;color: rgb(102, 102, 102)\"><a href=\"http://help.ubuntu.com/\" style=\"color: rgb(149, 79, 114)\">http://help.ubuntu.com/</a></span></p><p style=\";text-align: justify;font-size: 14px;font-family: DengXian;white-space: normal;text-indent: 28px;background: whitesmoke\"><span style=\"font-size: 12px;font-family: &#39;Helvetica Neue&#39;;color: rgb(102, 102, 102)\">Ubuntu</span><span style=\"font-size: 12px;color: rgb(102, 102, 102)\">邮件列表地址：</span><span style=\"font-size: 12px;font-family: &#39;Helvetica Neue&#39;;color: rgb(102, 102, 102)\"><a href=\"http://www.ubuntu.com/support/community/mailinglists\" style=\"color: rgb(149, 79, 114)\">http://www.ubuntu.com/support/community/mailinglists</a></span></p><p style=\";text-align: justify;font-size: 14px;font-family: DengXian;white-space: normal;background: white\"><strong><span style=\"font-family: &#39;Helvetica Neue&#39;\">&nbsp;</span></strong></p><p><br/></p>', 'file_1000000011', 'FOLDER', NULL, NULL, '2020-11-06 14:19:28', NULL, 'ACCEPTED', NULL, NULL, NULL, NULL, NULL, NULL, '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'PUBLIC', NULL, 'PUBLIC');
INSERT INTO `sw_software_version_info` VALUES ('0000012', '0000000002', '16.04', NULL, NULL, NULL, '<p style=\";font-size: 14px;font-family: DengXian;border: none;padding: 0\"><strong>使用说明</strong></p><p style=\";text-align: justify;font-size: 14px;font-family: DengXian;white-space: normal;text-indent: 28px;background: whitesmoke\"><span style=\"font-size: 12px;font-family: &#39;Helvetica Neue&#39;;color: rgb(102, 102, 102)\">Ubuntu </span><span style=\"font-size: 12px;color: rgb(102, 102, 102)\">的仓库地址为：</span><span style=\"font-size: 12px;font-family: &#39;Helvetica Neue&#39;;color: rgb(102, 102, 102)\"><a href=\"http://172.13.30.100/ubuntu/\" style=\"color: rgb(149, 79, 114)\">http://172.13.30.100/ubuntu/</a></span></p><p style=\";text-align: justify;font-size: 14px;font-family: DengXian;white-space: normal;text-indent: 28px;background: whitesmoke\"><span style=\"font-size: 12px;font-family: &#39;Helvetica Neue&#39;;color: rgb(102, 102, 102)\">Ubuntu-CD</span><span style=\"font-size: 12px;color: rgb(102, 102, 102)\">的镜像地址为：</span><span style=\"font-size: 12px;font-family: &#39;Helvetica Neue&#39;;color: rgb(102, 102, 102)\"><a href=\"http://172.13.30.100/ubuntu-cdimage/\" style=\"color: rgb(149, 79, 114)\">http://172.13.30.100/ubuntu-cdimage/</a></span></p><p style=\";text-align: justify;font-size: 14px;font-family: DengXian;white-space: normal;text-indent: 28px;background: whitesmoke\"><span style=\"font-size: 12px;font-family: &#39;Helvetica Neue&#39;;color: rgb(102, 102, 102)\">Ubuntu-Cloud</span><span style=\"font-size: 12px;color: rgb(102, 102, 102)\">的镜像地址为：</span><span style=\"font-size: 12px;font-family: &#39;Helvetica Neue&#39;;color: rgb(102, 102, 102)\"><a href=\"http://172.13.30.100/ubuntu-cloud-images/\" style=\"color: rgb(149, 79, 114)\">http://172.13.30.100/ubuntu-cloud-images/</a></span></p><p style=\";text-align: justify;font-size: 14px;font-family: DengXian;white-space: normal;text-indent: 28px;background: whitesmoke\"><span style=\"font-size: 12px;font-family: &#39;Helvetica Neue&#39;;color: rgb(102, 102, 102)\">Ubuntu-Ports</span><span style=\"font-size: 12px;color: rgb(102, 102, 102)\">的仓库地址为：</span><span style=\"font-size: 12px;font-family: &#39;Helvetica Neue&#39;;color: rgb(102, 102, 102)\"><a href=\"http://172.13.30.100/ubuntu-ports/\" style=\"color: rgb(149, 79, 114)\">http://172.13.30.100/ubuntu-ports/</a></span></p><p style=\";text-align: justify;font-size: 14px;font-family: DengXian;white-space: normal;text-indent: 28px;background: whitesmoke\"><span style=\"font-size: 12px;font-family: &#39;Helvetica Neue&#39;;color: rgb(102, 102, 102)\">Ubuntu-Releases</span><span style=\"font-size: 12px;color: rgb(102, 102, 102)\">的镜像地址为：</span><span style=\"font-size: 12px;font-family: &#39;Helvetica Neue&#39;;color: rgb(102, 102, 102)\"><a href=\"http://172.13.30.100/ubuntu-releases/\" style=\"color: rgb(149, 79, 114)\">http://172.13.30.100/ubuntu-releases/</a></span></p><p style=\";text-align: justify;font-size: 14px;font-family: DengXian;white-space: normal;line-height: 25px;background: white\"><span style=\"font-size: 12px;font-family: &#39;Helvetica Neue&#39;;color: rgb(94, 102, 120)\">1</span><span style=\"font-size: 12px;color: rgb(94, 102, 120)\">、备份配置文件：</span></p><p style=\";text-align: justify;font-size: 14px;font-family: DengXian;white-space: normal;text-indent: 28px;background: whitesmoke\"><span style=\"font-size: 12px;font-family: &#39;Helvetica Neue&#39;;color: rgb(102, 102, 102)\"><span _ngcontent-kiv-c137=\"\" disabled=\"disabled\" style=\"box-sizing: border-box\">sudo cp -a /etc/apt/sources.list /etc/apt/sources.list.bak</span></span></p><p style=\";text-align: justify;font-size: 14px;font-family: DengXian;white-space: normal;line-height: 25px;background: white\"><span style=\"font-size: 12px;font-family: &#39;Helvetica Neue&#39;;color: rgb(94, 102, 120)\"><span _ngcontent-kiv-c137=\"\" style=\"box-sizing: border-box\">2</span></span><span style=\"font-size: 12px;color: rgb(94, 102, 120)\">、修改</span><span style=\"font-size: 12px;font-family: &#39;Helvetica Neue&#39;;color: rgb(229, 136, 59)\">sources.list</span><span style=\"font-size: 12px;color: rgb(94, 102, 120)\">文件，将</span><span style=\"font-size: 12px;font-family: &#39;Helvetica Neue&#39;;color: rgb(229, 136, 59)\">http://archive.ubuntu.com</span><span style=\"font-size: 12px;color: rgb(94, 102, 120)\">和</span><span style=\"font-size: 12px;font-family: &#39;Helvetica Neue&#39;;color: rgb(229, 136, 59)\">http://security.ubuntu.com</span><span style=\"font-size: 12px;color: rgb(94, 102, 120)\">替换成</span><span style=\"font-size: 12px;font-family: &#39;Helvetica Neue&#39;;color: rgb(229, 136, 59)\">http://172.13.30.100</span><span style=\"font-size: 12px;color: rgb(94, 102, 120)\">，可以参考如下命令：</span></p><p style=\";text-align: justify;font-size: 14px;font-family: DengXian;white-space: normal;text-indent: 28px;background: whitesmoke\"><span style=\"font-size: 12px;font-family: &#39;Helvetica Neue&#39;;color: rgb(102, 102, 102)\"><span _ngcontent-kiv-c137=\"\" disabled=\"disabled\" style=\"box-sizing: border-box\">sudo sed -i &quot;s@http://.*archive.ubuntu.com@http://172.13.30.100@g&quot; /etc/apt/sources.list</span></span></p><p style=\";text-align: justify;font-size: 14px;font-family: DengXian;white-space: normal;text-indent: 28px;background: whitesmoke\"><span style=\"font-size: 12px;font-family: &#39;Helvetica Neue&#39;;color: rgb(102, 102, 102)\">sudo sed -i &quot;s@http://.*security.ubuntu.com@http://172.13.30.100@g&quot; /etc/apt/sources.list</span></p><p style=\";text-align: justify;font-size: 14px;font-family: DengXian;white-space: normal;background: white\"><span style=\"font-size: 12px;font-family: &#39;Helvetica Neue&#39;;color: rgb(94, 102, 120)\">3</span><span style=\"font-size: 12px;color: rgb(94, 102, 120)\">、执行</span><span style=\"font-size: 12px;font-family: &#39;Helvetica Neue&#39;;color: rgb(229, 136, 59)\">apt-get update</span><span style=\"font-size: 12px;color: rgb(94, 102, 120)\">更新索引</span></p><p style=\";text-align: justify;font-size: 14px;font-family: DengXian;white-space: normal;background: white\"><span style=\"font-size: 12px;font-family: &#39;Helvetica Neue&#39;;color: rgb(94, 102, 120)\">&nbsp;</span></p><p><span _ngcontent-kiv-c137=\"\" style=\"box-sizing: border-box\"></span></p><p style=\";text-align: justify;font-size: 14px;font-family: DengXian;border: none;padding: 0\"><strong>相关网址</strong></p><p></p><p style=\";text-align: justify;font-size: 14px;font-family: DengXian;white-space: normal;text-indent: 28px;background: whitesmoke\"><span style=\"font-size: 12px;font-family: &#39;Helvetica Neue&#39;;color: rgb(102, 102, 102)\">Ubuntu </span><span style=\"font-size: 12px;color: rgb(102, 102, 102)\">官方地址：</span><span style=\"font-size: 12px;font-family: &#39;Helvetica Neue&#39;;color: rgb(102, 102, 102)\"><a href=\"http://www.ubuntu.com/\" style=\"color: rgb(149, 79, 114)\">http://www.ubuntu.com/</a></span></p><p style=\";text-align: justify;font-size: 14px;font-family: DengXian;white-space: normal;text-indent: 28px;background: whitesmoke\"><span style=\"font-size: 12px;font-family: &#39;Helvetica Neue&#39;;color: rgb(102, 102, 102)\">Ubuntu </span><span style=\"font-size: 12px;color: rgb(102, 102, 102)\">论坛地址：</span><span style=\"font-size: 12px;font-family: &#39;Helvetica Neue&#39;;color: rgb(102, 102, 102)\"><a href=\"http://ubuntuforums.org/\" style=\"color: rgb(149, 79, 114)\">http://ubuntuforums.org/</a></span></p><p style=\";text-align: justify;font-size: 14px;font-family: DengXian;white-space: normal;text-indent: 28px;background: whitesmoke\"><span style=\"font-size: 12px;font-family: &#39;Helvetica Neue&#39;;color: rgb(102, 102, 102)\">Ubuntu Wiki</span><span style=\"font-size: 12px;color: rgb(102, 102, 102)\">地址：</span><span style=\"font-size: 12px;font-family: &#39;Helvetica Neue&#39;;color: rgb(102, 102, 102)\"><a href=\"http://wiki.ubuntu.com/\" style=\"color: rgb(149, 79, 114)\">http://wiki.ubuntu.com/</a></span></p><p style=\";text-align: justify;font-size: 14px;font-family: DengXian;white-space: normal;text-indent: 28px;background: whitesmoke\"><span style=\"font-size: 12px;font-family: &#39;Helvetica Neue&#39;;color: rgb(102, 102, 102)\">Ubuntu</span><span style=\"font-size: 12px;color: rgb(102, 102, 102)\">帮助地址：</span><span style=\"font-size: 12px;font-family: &#39;Helvetica Neue&#39;;color: rgb(102, 102, 102)\"><a href=\"http://help.ubuntu.com/\" style=\"color: rgb(149, 79, 114)\">http://help.ubuntu.com/</a></span></p><p style=\";text-align: justify;font-size: 14px;font-family: DengXian;white-space: normal;text-indent: 28px;background: whitesmoke\"><span style=\"font-size: 12px;font-family: &#39;Helvetica Neue&#39;;color: rgb(102, 102, 102)\">Ubuntu</span><span style=\"font-size: 12px;color: rgb(102, 102, 102)\">邮件列表地址：</span><span style=\"font-size: 12px;font-family: &#39;Helvetica Neue&#39;;color: rgb(102, 102, 102)\"><a href=\"http://www.ubuntu.com/support/community/mailinglists\" style=\"color: rgb(149, 79, 114)\">http://www.ubuntu.com/support/community/mailinglists</a></span></p><p style=\";text-align: justify;font-size: 14px;font-family: DengXian;white-space: normal;background: white\"><strong><span style=\"font-family: &#39;Helvetica Neue&#39;\">&nbsp;</span></strong></p><p><br/></p>', 'file_1000000012', 'FOLDER', NULL, NULL, '2020-11-06 14:19:28', NULL, 'ACCEPTED', NULL, NULL, NULL, NULL, NULL, NULL, '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'PUBLIC', NULL, 'PUBLIC');
INSERT INTO `sw_software_version_info` VALUES ('0000013', '0000000003', '5.9.6', NULL, NULL, NULL, NULL, 'file_1000000013', 'FOLDER', NULL, NULL, '2020-11-06 14:19:28', NULL, 'ACCEPTED', NULL, NULL, NULL, NULL, NULL, NULL, '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'PUBLIC', NULL, 'PUBLIC');
INSERT INTO `sw_software_version_info` VALUES ('0000014', '0000000003', '5.9', NULL, NULL, NULL, NULL, 'file_1000000014', 'FOLDER', NULL, NULL, '2020-11-06 14:19:28', NULL, 'ACCEPTED', NULL, NULL, NULL, NULL, NULL, NULL, '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'PUBLIC', NULL, 'PUBLIC');
INSERT INTO `sw_software_version_info` VALUES ('0000015', '0000000003', '5.8', NULL, NULL, NULL, NULL, 'file_1000000015', 'FOLDER', NULL, NULL, '2020-11-06 14:19:28', NULL, 'ACCEPTED', NULL, NULL, NULL, NULL, NULL, NULL, '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'PUBLIC', NULL, 'PUBLIC');
INSERT INTO `sw_software_version_info` VALUES ('0000016', '0000000003', '5.7', NULL, NULL, NULL, NULL, 'file_1000000016', 'FOLDER', NULL, NULL, '2020-11-06 14:19:28', NULL, 'ACCEPTED', NULL, NULL, NULL, NULL, NULL, NULL, '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'PUBLIC', NULL, 'PUBLIC');
INSERT INTO `sw_software_version_info` VALUES ('0000017', '0000000004', '2.5.1', NULL, NULL, NULL, NULL, 'file_1000000017', 'FOLDER', NULL, NULL, '2020-11-06 14:19:28', NULL, 'ACCEPTED', NULL, NULL, NULL, NULL, NULL, NULL, '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'PUBLIC', NULL, 'PUBLIC');
INSERT INTO `sw_software_version_info` VALUES ('0000018', '0000000005', '1.5', NULL, NULL, NULL, NULL, 'file_1000000018', 'FOLDER', NULL, NULL, '2020-11-06 14:19:28', NULL, 'ACCEPTED', NULL, NULL, NULL, NULL, NULL, NULL, '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'PUBLIC', NULL, 'PUBLIC');
INSERT INTO `sw_software_version_info` VALUES ('0000019', '0000000006', '7.2', NULL, '77799990000', NULL, '<p>111</p>', 'file_1000000019', 'FOLDER', NULL, NULL, '2020-11-06 14:19:28', NULL, 'ACCEPTED', NULL, NULL, NULL, NULL, NULL, NULL, '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'PUBLIC', NULL, 'PUBLIC');
INSERT INTO `sw_software_version_info` VALUES ('0000020', '0000000006', '6.9', NULL, NULL, NULL, '', 'file_1000000020', 'FOLDER', NULL, NULL, '2020-11-06 14:19:28', NULL, 'ACCEPTED', NULL, NULL, NULL, NULL, NULL, NULL, '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2020-10-31 03:14:45', 'PUBLIC', NULL, 'PUBLIC');
INSERT INTO `sw_software_version_info` VALUES ('0000021', '0000000006', '6.2', NULL, NULL, NULL, '<p>2</p>', 'file_1000000021', 'FOLDER', NULL, NULL, '2020-11-06 14:19:28', NULL, 'ACCEPTED', NULL, NULL, NULL, NULL, NULL, NULL, '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2020-11-03 03:14:58', 'PUBLIC', NULL, 'PUBLIC');
INSERT INTO `sw_software_version_info` VALUES ('0000022', '0000000007', '3.5.8', NULL, '测试姜', '<p>测试</p>', '<p>测试</p>', 'file_1000000022', 'FOLDER', NULL, NULL, NULL, NULL, 'ACCEPTED', NULL, NULL, NULL, NULL, NULL, NULL, '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2020-11-03 03:15:03', 'PUBLIC', NULL, 'PUBLIC');
INSERT INTO `sw_software_version_info` VALUES ('0000023', NULL, NULL, NULL, NULL, NULL, NULL, 'file_1000000023', 'FOLDER', NULL, NULL, NULL, NULL, 'ACCEPTED', NULL, NULL, NULL, NULL, NULL, NULL, '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2020-11-03 03:15:07', 'PUBLIC', NULL, 'PUBLIC');
INSERT INTO `sw_software_version_info` VALUES ('0000024', NULL, NULL, NULL, NULL, NULL, NULL, 'file_1000000024', 'FOLDER', NULL, NULL, NULL, NULL, 'ACCEPTED', NULL, NULL, NULL, NULL, NULL, NULL, '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2020-11-03 03:15:09', 'PUBLIC', NULL, 'PUBLIC');
INSERT INTO `sw_software_version_info` VALUES ('0000025', NULL, NULL, NULL, NULL, NULL, NULL, 'file_1000000025', 'FOLDER', NULL, NULL, NULL, NULL, 'ACCEPTED', NULL, NULL, NULL, NULL, NULL, NULL, '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2020-11-03 03:15:13', 'PUBLIC', NULL, 'PUBLIC');
INSERT INTO `sw_software_version_info` VALUES ('0000026', NULL, NULL, NULL, NULL, NULL, NULL, 'file_1000000026', 'FOLDER', NULL, NULL, NULL, NULL, 'ACCEPTED', NULL, NULL, NULL, NULL, NULL, NULL, '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2020-11-03 03:15:16', 'PUBLIC', NULL, 'PUBLIC');
INSERT INTO `sw_software_version_info` VALUES ('0000027', NULL, NULL, NULL, NULL, NULL, NULL, 'file_1000000027', 'FOLDER', NULL, NULL, NULL, NULL, 'ACCEPTED', NULL, NULL, NULL, NULL, NULL, NULL, '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2020-11-03 03:15:19', 'PUBLIC', NULL, 'PUBLIC');
INSERT INTO `sw_software_version_info` VALUES ('0000028', NULL, NULL, NULL, NULL, NULL, NULL, 'file_1000000028', 'FOLDER', NULL, NULL, NULL, NULL, 'ACCEPTED', NULL, NULL, NULL, NULL, NULL, NULL, '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2020-11-03 03:15:23', 'PUBLIC', NULL, 'PUBLIC');
INSERT INTO `sw_software_version_info` VALUES ('0000029', NULL, NULL, NULL, NULL, NULL, NULL, 'file_1000000029', 'FOLDER', NULL, NULL, NULL, NULL, 'ACCEPTED', NULL, NULL, NULL, NULL, NULL, NULL, '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2020-11-03 03:15:26', 'PUBLIC', NULL, 'PUBLIC');
INSERT INTO `sw_software_version_info` VALUES ('0000030', NULL, NULL, NULL, NULL, NULL, NULL, 'file_1000000030', 'FOLDER', NULL, NULL, NULL, NULL, 'ACCEPTED', NULL, NULL, NULL, NULL, NULL, NULL, '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2020-11-03 03:15:30', 'PUBLIC', NULL, 'PUBLIC');
INSERT INTO `sw_software_version_info` VALUES ('0000031', NULL, NULL, NULL, NULL, NULL, NULL, 'file_1000000031', 'FOLDER', NULL, NULL, NULL, NULL, 'ACCEPTED', NULL, NULL, NULL, NULL, NULL, NULL, '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2020-11-03 03:15:32', 'PUBLIC', NULL, 'PUBLIC');
INSERT INTO `sw_software_version_info` VALUES ('0000032', NULL, NULL, NULL, NULL, NULL, NULL, 'file_1000000032', 'FOLDER', NULL, NULL, NULL, NULL, 'ACCEPTED', NULL, NULL, NULL, NULL, NULL, NULL, '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2020-11-03 03:15:35', 'PUBLIC', NULL, 'PUBLIC');
INSERT INTO `sw_software_version_info` VALUES ('0000033', NULL, NULL, NULL, NULL, NULL, NULL, 'file_1000000033', 'FOLDER', NULL, NULL, NULL, NULL, 'ACCEPTED', NULL, NULL, NULL, NULL, NULL, NULL, '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2020-11-03 03:15:40', 'PUBLIC', NULL, 'PUBLIC');
INSERT INTO `sw_software_version_info` VALUES ('0000034', NULL, NULL, NULL, NULL, NULL, NULL, 'file_1000000034', 'FOLDER', NULL, NULL, NULL, NULL, 'ACCEPTED', NULL, NULL, NULL, NULL, NULL, NULL, '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2020-11-03 03:15:45', 'PUBLIC', NULL, 'PUBLIC');
INSERT INTO `sw_software_version_info` VALUES ('0000035', NULL, NULL, NULL, NULL, NULL, NULL, 'file_1000000035', 'FOLDER', NULL, NULL, NULL, NULL, 'ACCEPTED', NULL, NULL, NULL, NULL, NULL, NULL, '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2020-11-03 03:15:49', 'PUBLIC', NULL, 'PUBLIC');
INSERT INTO `sw_software_version_info` VALUES ('0000036', NULL, NULL, NULL, NULL, NULL, NULL, 'file_1000000036', 'FOLDER', NULL, NULL, NULL, NULL, 'ACCEPTED', NULL, NULL, NULL, NULL, NULL, NULL, '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2020-11-03 03:15:52', 'PUBLIC', NULL, 'PUBLIC');
INSERT INTO `sw_software_version_info` VALUES ('0000037', NULL, NULL, NULL, NULL, NULL, NULL, 'file_1000000037', 'FOLDER', NULL, NULL, NULL, NULL, 'ACCEPTED', NULL, NULL, NULL, NULL, NULL, NULL, '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2020-11-03 03:15:55', 'PUBLIC', NULL, 'PUBLIC');
INSERT INTO `sw_software_version_info` VALUES ('0000038', NULL, NULL, NULL, NULL, NULL, NULL, 'file_1000000038', 'FOLDER', NULL, NULL, NULL, NULL, 'ACCEPTED', NULL, NULL, NULL, NULL, NULL, NULL, '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2020-11-03 03:15:58', 'PUBLIC', NULL, 'PUBLIC');
INSERT INTO `sw_software_version_info` VALUES ('0000039', NULL, NULL, NULL, NULL, NULL, NULL, 'file_1000000039', 'FOLDER', NULL, NULL, NULL, NULL, 'ACCEPTED', NULL, NULL, NULL, NULL, NULL, NULL, '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2020-11-03 03:16:03', 'PUBLIC', NULL, 'PUBLIC');
INSERT INTO `sw_software_version_info` VALUES ('0000040', NULL, NULL, NULL, NULL, NULL, NULL, 'file_1000000040', 'FOLDER', NULL, NULL, NULL, NULL, 'ACCEPTED', NULL, NULL, NULL, NULL, NULL, NULL, '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2020-11-03 03:16:08', 'PUBLIC', NULL, 'PUBLIC');
INSERT INTO `sw_software_version_info` VALUES ('0000041', NULL, NULL, NULL, NULL, NULL, NULL, 'file_1000000041', 'FOLDER', NULL, NULL, NULL, NULL, 'ACCEPTED', NULL, NULL, NULL, NULL, NULL, NULL, '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2020-11-03 03:16:11', 'PUBLIC', NULL, 'PUBLIC');
INSERT INTO `sw_software_version_info` VALUES ('0000042', NULL, NULL, NULL, NULL, NULL, NULL, 'file_1000000042', 'FOLDER', NULL, NULL, NULL, NULL, 'ACCEPTED', NULL, NULL, NULL, NULL, NULL, NULL, '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2020-11-03 03:16:14', 'PUBLIC', NULL, 'PUBLIC');
INSERT INTO `sw_software_version_info` VALUES ('0000043', NULL, NULL, NULL, NULL, NULL, NULL, 'file_1000000043', 'FOLDER', NULL, NULL, NULL, NULL, 'ACCEPTED', NULL, NULL, NULL, NULL, NULL, NULL, '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2020-11-03 03:16:19', 'PUBLIC', NULL, 'PUBLIC');
INSERT INTO `sw_software_version_info` VALUES ('0000044', NULL, NULL, NULL, NULL, NULL, NULL, 'file_1000000044', 'FOLDER', NULL, NULL, NULL, NULL, 'ACCEPTED', NULL, NULL, NULL, NULL, NULL, NULL, '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2020-11-03 03:16:22', 'PUBLIC', NULL, 'PUBLIC');
INSERT INTO `sw_software_version_info` VALUES ('0000045', NULL, NULL, NULL, NULL, NULL, NULL, 'file_1000000045', 'FOLDER', NULL, NULL, NULL, NULL, 'ACCEPTED', NULL, NULL, NULL, NULL, NULL, NULL, '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2020-11-03 03:16:25', 'PUBLIC', NULL, 'PUBLIC');
INSERT INTO `sw_software_version_info` VALUES ('0000046', NULL, NULL, NULL, NULL, NULL, NULL, 'file_1000000046', 'FOLDER', NULL, NULL, NULL, NULL, 'ACCEPTED', NULL, NULL, NULL, NULL, NULL, NULL, '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2020-11-03 03:16:29', 'PUBLIC', NULL, 'PUBLIC');
INSERT INTO `sw_software_version_info` VALUES ('0000047', NULL, NULL, NULL, NULL, NULL, NULL, 'file_1000000047', 'FOLDER', NULL, NULL, NULL, NULL, 'ACCEPTED', NULL, NULL, NULL, NULL, NULL, NULL, '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2020-11-03 03:16:33', 'PUBLIC', NULL, 'PUBLIC');
INSERT INTO `sw_software_version_info` VALUES ('0000048', NULL, NULL, NULL, NULL, NULL, NULL, 'file_1000000048', 'FOLDER', NULL, NULL, NULL, NULL, 'ACCEPTED', NULL, NULL, NULL, NULL, NULL, NULL, '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2020-11-03 03:16:36', 'PUBLIC', NULL, 'PUBLIC');
INSERT INTO `sw_software_version_info` VALUES ('0000049', NULL, NULL, NULL, NULL, NULL, NULL, 'file_1000000049', 'FOLDER', NULL, NULL, NULL, NULL, 'ACCEPTED', NULL, NULL, NULL, NULL, NULL, NULL, '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2020-11-03 03:16:39', 'PUBLIC', NULL, 'PUBLIC');
INSERT INTO `sw_software_version_info` VALUES ('0000050', NULL, NULL, NULL, NULL, NULL, NULL, 'file_1000000050', 'FOLDER', 'admin', NULL, NULL, NULL, 'ACCEPTED', NULL, NULL, NULL, NULL, NULL, NULL, '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2020-11-03 03:16:42', 'PUBLIC', NULL, 'PUBLIC');
INSERT INTO `sw_software_version_info` VALUES ('0000051', '0000000072', '4', NULL, NULL, NULL, '<p style=\";font-size: 14px;font-family: DengXian;border: none;padding: 0\"><strong>使用说明</strong></p><p style=\";text-align: justify;font-size: 14px;font-family: DengXian;white-space: normal;line-height: 25px;background: white\"><span style=\"font-size: 12px;font-family: &#39;Helvetica Neue&#39;;color: rgb(94, 102, 120)\">EPEL</span><span style=\"font-size: 12px;color: rgb(94, 102, 120)\">的仓库地址为：</span><span style=\"font-size: 12px;font-family: &#39;Helvetica Neue&#39;;color: rgb(94, 102, 120)\"><a href=\"https://172.13.30.100/epel/\" _ngcontent-kiv-c137=\"\" style=\"box-sizing: border-box\">https://172.13.30.100/epel/</a></span></p><p style=\";text-align: justify;font-size: 14px;font-family: DengXian;white-space: normal;line-height: 25px;background: white\"><span style=\"font-size: 12px;font-family: &#39;Helvetica Neue&#39;;color: rgb(94, 102, 120)\"><span _ngcontent-kiv-c137=\"\" style=\"box-sizing: border-box\">1</span><span style=\"font-size: 12px\">、备份配置文件：</span></span></p><p style=\";text-align: justify;font-size: 14px;font-family: DengXian;white-space: normal;background: whitesmoke\"><span style=\"font-size: 12px;font-family: &#39;Helvetica Neue&#39;;color: rgb(102, 102, 102)\"><span _ngcontent-kiv-c137=\"\" disabled=\"disabled\" style=\"box-sizing: border-box\">cp -a /etc/yum.repos.d/epel.repo /etc/yum.repos.d/epel.repo.backup</span></span><span style=\"font-size: 12px;font-family: &#39;Helvetica Neue&#39;;color: rgb(102, 102, 102)\"><br _ngcontent-kiv-c137=\"\" style=\"box-sizing: border-box\"/>mv /etc/yum.repos.d/epel-testing.repo /etc/yum.repos.d/epel-testing.repo.backup</span></p><p style=\";text-align: justify;font-size: 14px;font-family: DengXian;white-space: normal;line-height: 25px;background: white\"><span style=\"font-size: 12px;font-family: &#39;Helvetica Neue&#39;;color: rgb(94, 102, 120)\"><span _ngcontent-kiv-c137=\"\" style=\"box-sizing: border-box\">2</span></span><span style=\"font-size: 12px;color: rgb(94, 102, 120)\">、修改</span><span style=\"font-size: 12px;font-family: &#39;Helvetica Neue&#39;;color: rgb(229, 136, 59)\">epel.repo</span><span style=\"font-size: 12px;color: rgb(94, 102, 120)\">文件，取消</span><span style=\"font-size: 12px;font-family: &#39;Helvetica Neue&#39;;color: rgb(229, 136, 59)\">baseurl</span><span style=\"font-size: 12px;color: rgb(94, 102, 120)\">开头的行的注释，并增加</span><span style=\"font-size: 12px;font-family: &#39;Helvetica Neue&#39;;color: rgb(229, 136, 59)\">mirrorlist</span><span style=\"font-size: 12px;color: rgb(94, 102, 120)\">开头的行的注释。将文件中的</span><span style=\"font-size: 12px;font-family: &#39;Helvetica Neue&#39;;color: rgb(229, 136, 59)\">http://download.fedoraproject.org/pub</span><span style=\"font-size: 12px;color: rgb(94, 102, 120)\">替换成</span><span style=\"font-size: 12px;font-family: &#39;Helvetica Neue&#39;;color: rgb(229, 136, 59)\">https://172.13.30.100</span><span style=\"font-size: 12px;color: rgb(94, 102, 120)\">，可以参考如下命令：</span></p><p style=\";text-align: justify;font-size: 14px;font-family: DengXian;white-space: normal;background: whitesmoke\"><span style=\"font-size: 12px;font-family: &#39;Helvetica Neue&#39;;color: rgb(102, 102, 102)\"><span _ngcontent-kiv-c137=\"\" disabled=\"disabled\" style=\"box-sizing: border-box\">sed -i &quot;s/#baseurl/baseurl/g&quot; /etc/yum.repos.d/epel.repo</span></span><span style=\"font-size: 12px;font-family: &#39;Helvetica Neue&#39;;color: rgb(102, 102, 102)\"><br _ngcontent-kiv-c137=\"\" style=\"box-sizing: border-box\"/>sed -i &quot;s/metalink/#metalink/g&quot; /etc/yum.repos.d/epel.repo<br _ngcontent-kiv-c137=\"\" style=\"box-sizing: border-box\"/>sed -i &quot;s@https\\?://download.fedoraproject.org/pub@https://172.13.30.100@g&quot; /etc/yum.repos.d/epel.repo</span></p><p style=\";text-align: justify;font-size: 14px;font-family: DengXian;white-space: normal;background: white\"><span style=\"font-size: 12px;font-family: &#39;Helvetica Neue&#39;;color: rgb(94, 102, 120)\"><span _ngcontent-kiv-c137=\"\" style=\"box-sizing: border-box\">3</span><span style=\"font-size: 12px\">、执行</span><span style=\"font-size: 12px;color: rgb(229, 136, 59)\">yum update</span><span style=\"font-size: 12px\">更新。</span></span></p><p style=\";text-align: justify;font-size: 14px;font-family: DengXian;white-space: normal;background: white\"><span style=\"font-size: 12px;font-family: &#39;Helvetica Neue&#39;;color: rgb(94, 102, 120)\">&nbsp;</span></p><p><span _ngcontent-kiv-c137=\"\" style=\"box-sizing: border-box\"><p style=\";text-align: justify;font-size: 14px;font-family: DengXian;border: none;padding: 0\"><strong>相关网址</strong></p></span></p><p style=\";text-align: justify;font-size: 14px;font-family: DengXian;white-space: normal;line-height: 25px;background: whitesmoke\"><span style=\"font-size: 12px;font-family: &#39;Helvetica Neue&#39;;color: rgb(94, 102, 120)\">EPEL</span><span style=\"font-size: 12px;color: rgb(94, 102, 120)\">文档地址：</span><span style=\"font-size: 12px;font-family: &#39;Helvetica Neue&#39;;color: rgb(94, 102, 120)\"><a href=\"https://fedoraproject.org/wiki/EPEL/zh-cn\" target=\"_blank\" _ngcontent-kiv-c137=\"\" style=\"box-sizing: border-box\">https://fedoraproject.org/wiki/EPEL/zh-cn</a></span></p><p><br/></p>', 'file_1000000051', 'FOLDER', 'admin', NULL, '2020-11-10 10:04:07', NULL, 'ACCEPTED', NULL, NULL, NULL, NULL, NULL, NULL, '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'PUBLIC', NULL, 'PUBLIC');
INSERT INTO `sw_software_version_info` VALUES ('0000052', '0000000072', '5', NULL, NULL, NULL, '<p style=\";font-size: 14px;font-family: DengXian;border: none;padding: 0\"><strong>使用说明</strong></p><p style=\";text-align: justify;font-size: 14px;font-family: DengXian;white-space: normal;line-height: 25px;background: white\"><span style=\"font-size: 12px;font-family: &#39;Helvetica Neue&#39;;color: rgb(94, 102, 120)\">EPEL</span><span style=\"font-size: 12px;color: rgb(94, 102, 120)\">的仓库地址为：</span><span style=\"font-size: 12px;font-family: &#39;Helvetica Neue&#39;;color: rgb(94, 102, 120)\"><a href=\"https://172.13.30.100/epel/\" _ngcontent-kiv-c137=\"\" style=\"box-sizing: border-box\">https://172.13.30.100/epel/</a></span></p><p style=\";text-align: justify;font-size: 14px;font-family: DengXian;white-space: normal;line-height: 25px;background: white\"><span style=\"font-size: 12px;font-family: &#39;Helvetica Neue&#39;;color: rgb(94, 102, 120)\"><span _ngcontent-kiv-c137=\"\" style=\"box-sizing: border-box\">1</span><span style=\"font-size: 12px\">、备份配置文件：</span></span></p><p style=\";text-align: justify;font-size: 14px;font-family: DengXian;white-space: normal;background: whitesmoke\"><span style=\"font-size: 12px;font-family: &#39;Helvetica Neue&#39;;color: rgb(102, 102, 102)\"><span _ngcontent-kiv-c137=\"\" disabled=\"disabled\" style=\"box-sizing: border-box\">cp -a /etc/yum.repos.d/epel.repo /etc/yum.repos.d/epel.repo.backup</span></span><span style=\"font-size: 12px;font-family: &#39;Helvetica Neue&#39;;color: rgb(102, 102, 102)\"><br _ngcontent-kiv-c137=\"\" style=\"box-sizing: border-box\"/>mv /etc/yum.repos.d/epel-testing.repo /etc/yum.repos.d/epel-testing.repo.backup</span></p><p style=\";text-align: justify;font-size: 14px;font-family: DengXian;white-space: normal;line-height: 25px;background: white\"><span style=\"font-size: 12px;font-family: &#39;Helvetica Neue&#39;;color: rgb(94, 102, 120)\"><span _ngcontent-kiv-c137=\"\" style=\"box-sizing: border-box\">2</span></span><span style=\"font-size: 12px;color: rgb(94, 102, 120)\">、修改</span><span style=\"font-size: 12px;font-family: &#39;Helvetica Neue&#39;;color: rgb(229, 136, 59)\">epel.repo</span><span style=\"font-size: 12px;color: rgb(94, 102, 120)\">文件，取消</span><span style=\"font-size: 12px;font-family: &#39;Helvetica Neue&#39;;color: rgb(229, 136, 59)\">baseurl</span><span style=\"font-size: 12px;color: rgb(94, 102, 120)\">开头的行的注释，并增加</span><span style=\"font-size: 12px;font-family: &#39;Helvetica Neue&#39;;color: rgb(229, 136, 59)\">mirrorlist</span><span style=\"font-size: 12px;color: rgb(94, 102, 120)\">开头的行的注释。将文件中的</span><span style=\"font-size: 12px;font-family: &#39;Helvetica Neue&#39;;color: rgb(229, 136, 59)\">http://download.fedoraproject.org/pub</span><span style=\"font-size: 12px;color: rgb(94, 102, 120)\">替换成</span><span style=\"font-size: 12px;font-family: &#39;Helvetica Neue&#39;;color: rgb(229, 136, 59)\">https://172.13.30.100</span><span style=\"font-size: 12px;color: rgb(94, 102, 120)\">，可以参考如下命令：</span></p><p style=\";text-align: justify;font-size: 14px;font-family: DengXian;white-space: normal;background: whitesmoke\"><span style=\"font-size: 12px;font-family: &#39;Helvetica Neue&#39;;color: rgb(102, 102, 102)\"><span _ngcontent-kiv-c137=\"\" disabled=\"disabled\" style=\"box-sizing: border-box\">sed -i &quot;s/#baseurl/baseurl/g&quot; /etc/yum.repos.d/epel.repo</span></span><span style=\"font-size: 12px;font-family: &#39;Helvetica Neue&#39;;color: rgb(102, 102, 102)\"><br _ngcontent-kiv-c137=\"\" style=\"box-sizing: border-box\"/>sed -i &quot;s/metalink/#metalink/g&quot; /etc/yum.repos.d/epel.repo<br _ngcontent-kiv-c137=\"\" style=\"box-sizing: border-box\"/>sed -i &quot;s@https\\?://download.fedoraproject.org/pub@https://172.13.30.100@g&quot; /etc/yum.repos.d/epel.repo</span></p><p style=\";text-align: justify;font-size: 14px;font-family: DengXian;white-space: normal;background: white\"><span style=\"font-size: 12px;font-family: &#39;Helvetica Neue&#39;;color: rgb(94, 102, 120)\"><span _ngcontent-kiv-c137=\"\" style=\"box-sizing: border-box\">3</span><span style=\"font-size: 12px\">、执行</span><span style=\"font-size: 12px;color: rgb(229, 136, 59)\">yum update</span><span style=\"font-size: 12px\">更新。</span></span></p><p style=\";text-align: justify;font-size: 14px;font-family: DengXian;white-space: normal;background: white\"><span style=\"font-size: 12px;font-family: &#39;Helvetica Neue&#39;;color: rgb(94, 102, 120)\">&nbsp;</span></p><p><span _ngcontent-kiv-c137=\"\" style=\"box-sizing: border-box\"><p style=\";text-align: justify;font-size: 14px;font-family: DengXian;border: none;padding: 0\"><strong>相关网址</strong></p></span></p><p style=\";text-align: justify;font-size: 14px;font-family: DengXian;white-space: normal;line-height: 25px;background: whitesmoke\"><span style=\"font-size: 12px;font-family: &#39;Helvetica Neue&#39;;color: rgb(94, 102, 120)\">EPEL</span><span style=\"font-size: 12px;color: rgb(94, 102, 120)\">文档地址：</span><span style=\"font-size: 12px;font-family: &#39;Helvetica Neue&#39;;color: rgb(94, 102, 120)\"><a href=\"https://fedoraproject.org/wiki/EPEL/zh-cn\" target=\"_blank\" _ngcontent-kiv-c137=\"\" style=\"box-sizing: border-box\">https://fedoraproject.org/wiki/EPEL/zh-cn</a></span></p><p><br/></p>', 'file_1000000052', 'FOLDER', 'admin', NULL, '2020-11-10 10:04:07', NULL, 'ACCEPTED', NULL, NULL, NULL, NULL, NULL, NULL, '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'PUBLIC', NULL, 'PUBLIC');
INSERT INTO `sw_software_version_info` VALUES ('0000053', '0000000072', '6', NULL, NULL, NULL, '<p style=\";font-size: 14px;font-family: DengXian;border: none;padding: 0\"><strong>使用说明</strong></p><p style=\";text-align: justify;font-size: 14px;font-family: DengXian;white-space: normal;line-height: 25px;background: white\"><span style=\"font-size: 12px;font-family: &#39;Helvetica Neue&#39;;color: rgb(94, 102, 120)\">EPEL</span><span style=\"font-size: 12px;color: rgb(94, 102, 120)\">的仓库地址为：</span><span style=\"font-size: 12px;font-family: &#39;Helvetica Neue&#39;;color: rgb(94, 102, 120)\"><a href=\"https://172.13.30.100/epel/\" _ngcontent-kiv-c137=\"\" style=\"box-sizing: border-box\">https://172.13.30.100/epel/</a></span></p><p style=\";text-align: justify;font-size: 14px;font-family: DengXian;white-space: normal;line-height: 25px;background: white\"><span style=\"font-size: 12px;font-family: &#39;Helvetica Neue&#39;;color: rgb(94, 102, 120)\"><span _ngcontent-kiv-c137=\"\" style=\"box-sizing: border-box\">1</span><span style=\"font-size: 12px\">、备份配置文件：</span></span></p><p style=\";text-align: justify;font-size: 14px;font-family: DengXian;white-space: normal;background: whitesmoke\"><span style=\"font-size: 12px;font-family: &#39;Helvetica Neue&#39;;color: rgb(102, 102, 102)\"><span _ngcontent-kiv-c137=\"\" disabled=\"disabled\" style=\"box-sizing: border-box\">cp -a /etc/yum.repos.d/epel.repo /etc/yum.repos.d/epel.repo.backup</span></span><span style=\"font-size: 12px;font-family: &#39;Helvetica Neue&#39;;color: rgb(102, 102, 102)\"><br _ngcontent-kiv-c137=\"\" style=\"box-sizing: border-box\"/>mv /etc/yum.repos.d/epel-testing.repo /etc/yum.repos.d/epel-testing.repo.backup</span></p><p style=\";text-align: justify;font-size: 14px;font-family: DengXian;white-space: normal;line-height: 25px;background: white\"><span style=\"font-size: 12px;font-family: &#39;Helvetica Neue&#39;;color: rgb(94, 102, 120)\"><span _ngcontent-kiv-c137=\"\" style=\"box-sizing: border-box\">2</span></span><span style=\"font-size: 12px;color: rgb(94, 102, 120)\">、修改</span><span style=\"font-size: 12px;font-family: &#39;Helvetica Neue&#39;;color: rgb(229, 136, 59)\">epel.repo</span><span style=\"font-size: 12px;color: rgb(94, 102, 120)\">文件，取消</span><span style=\"font-size: 12px;font-family: &#39;Helvetica Neue&#39;;color: rgb(229, 136, 59)\">baseurl</span><span style=\"font-size: 12px;color: rgb(94, 102, 120)\">开头的行的注释，并增加</span><span style=\"font-size: 12px;font-family: &#39;Helvetica Neue&#39;;color: rgb(229, 136, 59)\">mirrorlist</span><span style=\"font-size: 12px;color: rgb(94, 102, 120)\">开头的行的注释。将文件中的</span><span style=\"font-size: 12px;font-family: &#39;Helvetica Neue&#39;;color: rgb(229, 136, 59)\">http://download.fedoraproject.org/pub</span><span style=\"font-size: 12px;color: rgb(94, 102, 120)\">替换成</span><span style=\"font-size: 12px;font-family: &#39;Helvetica Neue&#39;;color: rgb(229, 136, 59)\">https://172.13.30.100</span><span style=\"font-size: 12px;color: rgb(94, 102, 120)\">，可以参考如下命令：</span></p><p style=\";text-align: justify;font-size: 14px;font-family: DengXian;white-space: normal;background: whitesmoke\"><span style=\"font-size: 12px;font-family: &#39;Helvetica Neue&#39;;color: rgb(102, 102, 102)\"><span _ngcontent-kiv-c137=\"\" disabled=\"disabled\" style=\"box-sizing: border-box\">sed -i &quot;s/#baseurl/baseurl/g&quot; /etc/yum.repos.d/epel.repo</span></span><span style=\"font-size: 12px;font-family: &#39;Helvetica Neue&#39;;color: rgb(102, 102, 102)\"><br _ngcontent-kiv-c137=\"\" style=\"box-sizing: border-box\"/>sed -i &quot;s/metalink/#metalink/g&quot; /etc/yum.repos.d/epel.repo<br _ngcontent-kiv-c137=\"\" style=\"box-sizing: border-box\"/>sed -i &quot;s@https\\?://download.fedoraproject.org/pub@https://172.13.30.100@g&quot; /etc/yum.repos.d/epel.repo</span></p><p style=\";text-align: justify;font-size: 14px;font-family: DengXian;white-space: normal;background: white\"><span style=\"font-size: 12px;font-family: &#39;Helvetica Neue&#39;;color: rgb(94, 102, 120)\"><span _ngcontent-kiv-c137=\"\" style=\"box-sizing: border-box\">3</span><span style=\"font-size: 12px\">、执行</span><span style=\"font-size: 12px;color: rgb(229, 136, 59)\">yum update</span><span style=\"font-size: 12px\">更新。</span></span></p><p style=\";text-align: justify;font-size: 14px;font-family: DengXian;white-space: normal;background: white\"><span style=\"font-size: 12px;font-family: &#39;Helvetica Neue&#39;;color: rgb(94, 102, 120)\">&nbsp;</span></p><p><span _ngcontent-kiv-c137=\"\" style=\"box-sizing: border-box\"><p style=\";text-align: justify;font-size: 14px;font-family: DengXian;border: none;padding: 0\"><strong>相关网址</strong></p></span></p><p style=\";text-align: justify;font-size: 14px;font-family: DengXian;white-space: normal;line-height: 25px;background: whitesmoke\"><span style=\"font-size: 12px;font-family: &#39;Helvetica Neue&#39;;color: rgb(94, 102, 120)\">EPEL</span><span style=\"font-size: 12px;color: rgb(94, 102, 120)\">文档地址：</span><span style=\"font-size: 12px;font-family: &#39;Helvetica Neue&#39;;color: rgb(94, 102, 120)\"><a href=\"https://fedoraproject.org/wiki/EPEL/zh-cn\" target=\"_blank\" _ngcontent-kiv-c137=\"\" style=\"box-sizing: border-box\">https://fedoraproject.org/wiki/EPEL/zh-cn</a></span></p><p><br/></p>', 'file_1000000053', 'FOLDER', 'admin', NULL, '2020-11-10 10:04:07', NULL, 'ACCEPTED', NULL, NULL, NULL, NULL, NULL, NULL, '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'PUBLIC', NULL, 'PUBLIC');
INSERT INTO `sw_software_version_info` VALUES ('0000054', '0000000072', '7', NULL, NULL, NULL, '<p style=\";font-size: 14px;font-family: DengXian;border: none;padding: 0\"><strong>使用说明</strong></p><p style=\";text-align: justify;font-size: 14px;font-family: DengXian;white-space: normal;line-height: 25px;background: white\"><span style=\"font-size: 12px;font-family: &#39;Helvetica Neue&#39;;color: rgb(94, 102, 120)\">EPEL</span><span style=\"font-size: 12px;color: rgb(94, 102, 120)\">的仓库地址为：</span><span style=\"font-size: 12px;font-family: &#39;Helvetica Neue&#39;;color: rgb(94, 102, 120)\"><a href=\"https://172.13.30.100/epel/\" _ngcontent-kiv-c137=\"\" style=\"box-sizing: border-box\">https://172.13.30.100/epel/</a></span></p><p style=\";text-align: justify;font-size: 14px;font-family: DengXian;white-space: normal;line-height: 25px;background: white\"><span style=\"font-size: 12px;font-family: &#39;Helvetica Neue&#39;;color: rgb(94, 102, 120)\"><span _ngcontent-kiv-c137=\"\" style=\"box-sizing: border-box\">1</span><span style=\"font-size: 12px\">、备份配置文件：</span></span></p><p style=\";text-align: justify;font-size: 14px;font-family: DengXian;white-space: normal;background: whitesmoke\"><span style=\"font-size: 12px;font-family: &#39;Helvetica Neue&#39;;color: rgb(102, 102, 102)\"><span _ngcontent-kiv-c137=\"\" disabled=\"disabled\" style=\"box-sizing: border-box\">cp -a /etc/yum.repos.d/epel.repo /etc/yum.repos.d/epel.repo.backup</span></span><span style=\"font-size: 12px;font-family: &#39;Helvetica Neue&#39;;color: rgb(102, 102, 102)\"><br _ngcontent-kiv-c137=\"\" style=\"box-sizing: border-box\"/>mv /etc/yum.repos.d/epel-testing.repo /etc/yum.repos.d/epel-testing.repo.backup</span></p><p style=\";text-align: justify;font-size: 14px;font-family: DengXian;white-space: normal;line-height: 25px;background: white\"><span style=\"font-size: 12px;font-family: &#39;Helvetica Neue&#39;;color: rgb(94, 102, 120)\"><span _ngcontent-kiv-c137=\"\" style=\"box-sizing: border-box\">2</span></span><span style=\"font-size: 12px;color: rgb(94, 102, 120)\">、修改</span><span style=\"font-size: 12px;font-family: &#39;Helvetica Neue&#39;;color: rgb(229, 136, 59)\">epel.repo</span><span style=\"font-size: 12px;color: rgb(94, 102, 120)\">文件，取消</span><span style=\"font-size: 12px;font-family: &#39;Helvetica Neue&#39;;color: rgb(229, 136, 59)\">baseurl</span><span style=\"font-size: 12px;color: rgb(94, 102, 120)\">开头的行的注释，并增加</span><span style=\"font-size: 12px;font-family: &#39;Helvetica Neue&#39;;color: rgb(229, 136, 59)\">mirrorlist</span><span style=\"font-size: 12px;color: rgb(94, 102, 120)\">开头的行的注释。将文件中的</span><span style=\"font-size: 12px;font-family: &#39;Helvetica Neue&#39;;color: rgb(229, 136, 59)\">http://download.fedoraproject.org/pub</span><span style=\"font-size: 12px;color: rgb(94, 102, 120)\">替换成</span><span style=\"font-size: 12px;font-family: &#39;Helvetica Neue&#39;;color: rgb(229, 136, 59)\">https://172.13.30.100</span><span style=\"font-size: 12px;color: rgb(94, 102, 120)\">，可以参考如下命令：</span></p><p style=\";text-align: justify;font-size: 14px;font-family: DengXian;white-space: normal;background: whitesmoke\"><span style=\"font-size: 12px;font-family: &#39;Helvetica Neue&#39;;color: rgb(102, 102, 102)\"><span _ngcontent-kiv-c137=\"\" disabled=\"disabled\" style=\"box-sizing: border-box\">sed -i &quot;s/#baseurl/baseurl/g&quot; /etc/yum.repos.d/epel.repo</span></span><span style=\"font-size: 12px;font-family: &#39;Helvetica Neue&#39;;color: rgb(102, 102, 102)\"><br _ngcontent-kiv-c137=\"\" style=\"box-sizing: border-box\"/>sed -i &quot;s/metalink/#metalink/g&quot; /etc/yum.repos.d/epel.repo<br _ngcontent-kiv-c137=\"\" style=\"box-sizing: border-box\"/>sed -i &quot;s@https\\?://download.fedoraproject.org/pub@https://172.13.30.100@g&quot; /etc/yum.repos.d/epel.repo</span></p><p style=\";text-align: justify;font-size: 14px;font-family: DengXian;white-space: normal;background: white\"><span style=\"font-size: 12px;font-family: &#39;Helvetica Neue&#39;;color: rgb(94, 102, 120)\"><span _ngcontent-kiv-c137=\"\" style=\"box-sizing: border-box\">3</span><span style=\"font-size: 12px\">、执行</span><span style=\"font-size: 12px;color: rgb(229, 136, 59)\">yum update</span><span style=\"font-size: 12px\">更新。</span></span></p><p style=\";text-align: justify;font-size: 14px;font-family: DengXian;white-space: normal;background: white\"><span style=\"font-size: 12px;font-family: &#39;Helvetica Neue&#39;;color: rgb(94, 102, 120)\">&nbsp;</span></p><p><span _ngcontent-kiv-c137=\"\" style=\"box-sizing: border-box\"><p style=\";text-align: justify;font-size: 14px;font-family: DengXian;border: none;padding: 0\"><strong>相关网址</strong></p></span></p><p style=\";text-align: justify;font-size: 14px;font-family: DengXian;white-space: normal;line-height: 25px;background: whitesmoke\"><span style=\"font-size: 12px;font-family: &#39;Helvetica Neue&#39;;color: rgb(94, 102, 120)\">EPEL</span><span style=\"font-size: 12px;color: rgb(94, 102, 120)\">文档地址：</span><span style=\"font-size: 12px;font-family: &#39;Helvetica Neue&#39;;color: rgb(94, 102, 120)\"><a href=\"https://fedoraproject.org/wiki/EPEL/zh-cn\" target=\"_blank\" _ngcontent-kiv-c137=\"\" style=\"box-sizing: border-box\">https://fedoraproject.org/wiki/EPEL/zh-cn</a></span></p><p><br/></p>', 'file_1000000054', 'FOLDER', 'admin', NULL, '2020-11-10 10:04:07', NULL, 'ACCEPTED', NULL, NULL, NULL, NULL, NULL, NULL, '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'PUBLIC', NULL, 'PUBLIC');
INSERT INTO `sw_software_version_info` VALUES ('0000055', '0000000072', '8', NULL, '11-12', NULL, '<p style=\";font-size: 14px;font-family: DengXian;border: none;padding: 0\"><strong>使用说明</strong></p><p style=\";text-align: justify;font-size: 14px;font-family: DengXian;white-space: normal;line-height: 25px;background: white\"><span style=\"font-size: 12px;font-family: &#39;Helvetica Neue&#39;;color: rgb(94, 102, 120)\">EPEL</span><span style=\"font-size: 12px;color: rgb(94, 102, 120)\">的仓库地址为：</span><span style=\"font-size: 12px;font-family: &#39;Helvetica Neue&#39;;color: rgb(94, 102, 120)\"><a href=\"https://172.13.30.100/epel/\" _ngcontent-kiv-c137=\"\" style=\"box-sizing: border-box\">https://172.13.30.100/epel/</a></span></p><p style=\";text-align: justify;font-size: 14px;font-family: DengXian;white-space: normal;line-height: 25px;background: white\"><span style=\"font-size: 12px;font-family: &#39;Helvetica Neue&#39;;color: rgb(94, 102, 120)\"><span _ngcontent-kiv-c137=\"\" style=\"box-sizing: border-box\">1</span><span style=\"font-size: 12px\">、备份配置文件：</span></span></p><p style=\";text-align: justify;font-size: 14px;font-family: DengXian;white-space: normal;background: whitesmoke\"><span style=\"font-size: 12px;font-family: &#39;Helvetica Neue&#39;;color: rgb(102, 102, 102)\"><span _ngcontent-kiv-c137=\"\" disabled=\"disabled\" style=\"box-sizing: border-box\">cp -a /etc/yum.repos.d/epel.repo /etc/yum.repos.d/epel.repo.backup</span></span><span style=\"font-size: 12px;font-family: &#39;Helvetica Neue&#39;;color: rgb(102, 102, 102)\"><br _ngcontent-kiv-c137=\"\" style=\"box-sizing: border-box\"/>mv /etc/yum.repos.d/epel-testing.repo /etc/yum.repos.d/epel-testing.repo.backup</span></p><p style=\";text-align: justify;font-size: 14px;font-family: DengXian;white-space: normal;line-height: 25px;background: white\"><span style=\"font-size: 12px;font-family: &#39;Helvetica Neue&#39;;color: rgb(94, 102, 120)\"><span _ngcontent-kiv-c137=\"\" style=\"box-sizing: border-box\">2</span></span><span style=\"font-size: 12px;color: rgb(94, 102, 120)\">、修改</span><span style=\"font-size: 12px;font-family: &#39;Helvetica Neue&#39;;color: rgb(229, 136, 59)\">epel.repo</span><span style=\"font-size: 12px;color: rgb(94, 102, 120)\">文件，取消</span><span style=\"font-size: 12px;font-family: &#39;Helvetica Neue&#39;;color: rgb(229, 136, 59)\">baseurl</span><span style=\"font-size: 12px;color: rgb(94, 102, 120)\">开头的行的注释，并增加</span><span style=\"font-size: 12px;font-family: &#39;Helvetica Neue&#39;;color: rgb(229, 136, 59)\">mirrorlist</span><span style=\"font-size: 12px;color: rgb(94, 102, 120)\">开头的行的注释。将文件中的</span><span style=\"font-size: 12px;font-family: &#39;Helvetica Neue&#39;;color: rgb(229, 136, 59)\">http://download.fedoraproject.org/pub</span><span style=\"font-size: 12px;color: rgb(94, 102, 120)\">替换成</span><span style=\"font-size: 12px;font-family: &#39;Helvetica Neue&#39;;color: rgb(229, 136, 59)\">https://172.13.30.100</span><span style=\"font-size: 12px;color: rgb(94, 102, 120)\">，可以参考如下命令：</span></p><p style=\";text-align: justify;font-size: 14px;font-family: DengXian;white-space: normal;background: whitesmoke\"><span style=\"font-size: 12px;font-family: &#39;Helvetica Neue&#39;;color: rgb(102, 102, 102)\"><span _ngcontent-kiv-c137=\"\" disabled=\"disabled\" style=\"box-sizing: border-box\">sed -i &quot;s/#baseurl/baseurl/g&quot; /etc/yum.repos.d/epel.repo</span></span><span style=\"font-size: 12px;font-family: &#39;Helvetica Neue&#39;;color: rgb(102, 102, 102)\"><br _ngcontent-kiv-c137=\"\" style=\"box-sizing: border-box\"/>sed -i &quot;s/metalink/#metalink/g&quot; /etc/yum.repos.d/epel.repo<br _ngcontent-kiv-c137=\"\" style=\"box-sizing: border-box\"/>sed -i &quot;s@https\\?://download.fedoraproject.org/pub@https://172.13.30.100@g&quot; /etc/yum.repos.d/epel.repo</span></p><p style=\";text-align: justify;font-size: 14px;font-family: DengXian;white-space: normal;background: white\"><span style=\"font-size: 12px;font-family: &#39;Helvetica Neue&#39;;color: rgb(94, 102, 120)\"><span _ngcontent-kiv-c137=\"\" style=\"box-sizing: border-box\">3</span><span style=\"font-size: 12px\">、执行</span><span style=\"font-size: 12px;color: rgb(229, 136, 59)\">yum update</span><span style=\"font-size: 12px\">更新。</span></span></p><p style=\";text-align: justify;font-size: 14px;font-family: DengXian;white-space: normal;background: white\"><span style=\"font-size: 12px;font-family: &#39;Helvetica Neue&#39;;color: rgb(94, 102, 120)\">&nbsp;</span></p><p><span _ngcontent-kiv-c137=\"\" style=\"box-sizing: border-box\"></span></p><p style=\";text-align: justify;font-size: 14px;font-family: DengXian;border: none;padding: 0\"><strong>相关网址</strong></p><p></p><p style=\";text-align: justify;font-size: 14px;font-family: DengXian;white-space: normal;line-height: 25px;background: whitesmoke\"><span style=\"font-size: 12px;font-family: &#39;Helvetica Neue&#39;;color: rgb(94, 102, 120)\">EPEL</span><span style=\"font-size: 12px;color: rgb(94, 102, 120)\">文档地址：</span><span style=\"font-size: 12px;font-family: &#39;Helvetica Neue&#39;;color: rgb(94, 102, 120)\"><a href=\"https://fedoraproject.org/wiki/EPEL/zh-cn\" target=\"_blank\" _ngcontent-kiv-c137=\"\" style=\"box-sizing: border-box\">https://fedoraproject.org/wiki/EPEL/zh-cn</a></span></p><p><br/></p>', 'file_1000000055', 'FOLDER', 'admin', NULL, '2020-11-10 10:04:07', NULL, 'ACCEPTED', NULL, '2020-11-10 10:04:07', NULL, NULL, NULL, NULL, '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'PUBLIC', NULL, 'PUBLIC');
COMMIT;

-- ----------------------------
-- Table structure for sys_cabin_info
-- ----------------------------
DROP TABLE IF EXISTS `sys_cabin_info`;
CREATE TABLE `sys_cabin_info` (
  `id` varchar(100) CHARACTER SET utf8 NOT NULL COMMENT '舱段ID',
  `cabin_name` varchar(200) CHARACTER SET utf8 DEFAULT NULL COMMENT '舱段心名称',
  `cabin_type` varchar(50) CHARACTER SET utf8 DEFAULT NULL COMMENT '舱段类型',
  `cabin_short_name` varchar(50) CHARACTER SET utf8 DEFAULT NULL COMMENT '舱段简称',
  `parent_id` varchar(100) CHARACTER SET utf8 DEFAULT NULL COMMENT '上级舱段ID',
  `cabin_level` varchar(5) CHARACTER SET utf8 DEFAULT NULL COMMENT '舱段等级',
  `order_seq` int(5) DEFAULT NULL COMMENT '显示顺序',
  `cabin_remark` varchar(2000) CHARACTER SET utf8 DEFAULT NULL COMMENT '舱段备注',
  `cabin_flag` varchar(5) CHARACTER SET utf8 DEFAULT NULL COMMENT '舱段标志',
  `cabin_status` varchar(5) CHARACTER SET utf8 DEFAULT NULL COMMENT '舱段状态',
  `valid_flag` varchar(5) CHARACTER SET utf8 DEFAULT NULL COMMENT '效力标志',
  `invalid_department_id` varchar(50) CHARACTER SET utf8 DEFAULT NULL COMMENT '失效用户所属部门编号',
  `invalid_user_id` varchar(50) CHARACTER SET utf8 DEFAULT NULL COMMENT '失效用户编号',
  `invalid_datetime` datetime DEFAULT NULL COMMENT '失效时间',
  `create_department_id` varchar(50) CHARACTER SET utf8 DEFAULT NULL COMMENT '创建用户所属部门编号',
  `create_user_id` varchar(50) CHARACTER SET utf8 DEFAULT NULL COMMENT '创建用户编号',
  `create_datetime` datetime DEFAULT NULL COMMENT '创建时间',
  `update_department_id` varchar(50) CHARACTER SET utf8 DEFAULT NULL COMMENT '更新用户部门所属编号',
  `update_user_id` varchar(50) CHARACTER SET utf8 DEFAULT NULL COMMENT '更新用户编号',
  `update_datetime` datetime DEFAULT NULL COMMENT '更新时间',
  `cabin_phone` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '舱段联系方式',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci COMMENT='舱段信息表';

-- ----------------------------
-- Records of sys_cabin_info
-- ----------------------------
BEGIN;
INSERT INTO `sys_cabin_info` VALUES ('cabin_001', '核心舱', 'cabin', '核心舱', NULL, NULL, 1, NULL, NULL, NULL, '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_cabin_info` VALUES ('cabin_002', '天舟2号货运飞船', 'cabin', '天舟2号货运飞船', NULL, NULL, 2, NULL, NULL, NULL, '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_cabin_info` VALUES ('cabin_003', '神舟13号载人飞船', 'cabin', '神舟13号载人飞船', NULL, NULL, 3, NULL, NULL, NULL, '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_cabin_info` VALUES ('cabin_004', '天舟3号货运飞船', 'cabin', '天舟3号货运飞船', NULL, NULL, 4, NULL, NULL, NULL, '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_cabin_info` VALUES ('cabin_005', '神舟14号载人飞船', 'cabin', '神舟14号载人飞船', NULL, NULL, 5, NULL, NULL, NULL, '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_cabin_info` VALUES ('cabin_006', '实验舱I', 'cabin', '实验舱I', NULL, NULL, 6, NULL, NULL, NULL, '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_cabin_info` VALUES ('cabin_007', '天舟4号货运飞船', 'cabin', '天舟4号货运飞船', NULL, NULL, 7, NULL, NULL, NULL, '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_cabin_info` VALUES ('cabin_008', '神舟15号载人飞船', 'cabin', '神舟15号载人飞船', NULL, NULL, 8, NULL, NULL, NULL, '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_cabin_info` VALUES ('cabin_009', '实验舱II', 'cabin', '实验舱II', NULL, NULL, 9, NULL, NULL, NULL, '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_cabin_info` VALUES ('cabin_010', '天舟5号货运飞船', 'cabin', '天舟5号货运飞船', NULL, NULL, 10, NULL, NULL, NULL, '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_cabin_info` VALUES ('cabin_011', '神舟16号载人飞船', 'cabin', '神舟16号载人飞船', NULL, NULL, 11, NULL, NULL, NULL, '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
COMMIT;

-- ----------------------------
-- Table structure for sys_center_info
-- ----------------------------
DROP TABLE IF EXISTS `sys_center_info`;
CREATE TABLE `sys_center_info` (
  `id` varchar(100) CHARACTER SET utf8 NOT NULL COMMENT '中心ID',
  `cabin_id` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '舱段id',
  `cabin_name` varchar(200) CHARACTER SET utf8 DEFAULT NULL COMMENT '舱段心名称',
  `center_type` varchar(50) CHARACTER SET utf8 DEFAULT NULL COMMENT '中心类型',
  `center_name` varchar(200) CHARACTER SET utf8 DEFAULT NULL COMMENT '中心名称',
  `center_short_name` varchar(50) CHARACTER SET utf8 DEFAULT NULL COMMENT '中心简称',
  `center_database_name` varchar(100) CHARACTER SET utf8 DEFAULT NULL COMMENT '中心库名称',
  `center_phone` varchar(30) CHARACTER SET utf8 DEFAULT NULL COMMENT '中心电话',
  `parents_id` varchar(100) CHARACTER SET utf8 DEFAULT NULL COMMENT '上级中心ID',
  `center_level` varchar(5) CHARACTER SET utf8 DEFAULT NULL COMMENT '中心等级',
  `order_seq` int(5) DEFAULT NULL COMMENT '显示顺序',
  `center_remark` varchar(2000) CHARACTER SET utf8 DEFAULT NULL COMMENT '中心备注',
  `center_flag` varchar(5) CHARACTER SET utf8 DEFAULT NULL COMMENT '中心标志',
  `center_status` varchar(5) CHARACTER SET utf8 DEFAULT NULL COMMENT '中心状态',
  `valid_flag` varchar(5) CHARACTER SET utf8 DEFAULT NULL COMMENT '效力标志',
  `invalid_department_id` varchar(50) CHARACTER SET utf8 DEFAULT NULL COMMENT '失效用户所属部门编号',
  `invalid_user_id` varchar(50) CHARACTER SET utf8 DEFAULT NULL COMMENT '失效用户编号',
  `invalid_datetime` datetime DEFAULT NULL COMMENT '失效时间',
  `create_department_id` varchar(50) CHARACTER SET utf8 DEFAULT NULL COMMENT '创建用户所属部门编号',
  `create_user_id` varchar(50) CHARACTER SET utf8 DEFAULT NULL COMMENT '创建用户编号',
  `create_datetime` datetime DEFAULT NULL COMMENT '创建时间',
  `update_department_id` varchar(50) CHARACTER SET utf8 DEFAULT NULL COMMENT '更新用户部门所属编号',
  `update_user_id` varchar(50) CHARACTER SET utf8 DEFAULT NULL COMMENT '更新用户编号',
  `update_datetime` datetime DEFAULT NULL COMMENT '更新时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci ROW_FORMAT=DYNAMIC COMMENT='中心信息表';

-- ----------------------------
-- Records of sys_center_info
-- ----------------------------
BEGIN;
INSERT INTO `sys_center_info` VALUES ('center_001', 'cabin_001', '核心舱', 'center', '有效载荷运行管理中心', '有效载荷运行管理中心', 'pmc', NULL, NULL, NULL, 6, NULL, NULL, NULL, '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_center_info` VALUES ('center_002', 'cabin_001', '核心舱', 'center', '在轨航天器支持中心', '在轨航天器支持中心', 'ssc', NULL, NULL, NULL, 5, NULL, NULL, NULL, '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_center_info` VALUES ('center_003', 'cabin_001', '核心舱', 'center', '航天员支持中心', '航天员支持中心', 'asc', NULL, NULL, NULL, 4, NULL, NULL, NULL, '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_center_info` VALUES ('center_004', 'cabin_001', '核心舱', 'center', '空间站运营管理中心', '空间站运营管理中心', 'smc', NULL, NULL, NULL, 1, NULL, NULL, NULL, '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_center_info` VALUES ('center_005', 'cabin_001', '核心舱', 'center', '运行控制中心', '运行控制中心', 'occ', NULL, NULL, NULL, 3, NULL, NULL, NULL, '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_center_info` VALUES ('center_006', 'cabin_001', '核心舱', 'center', '工程信息中心', '工程信息中心', 'eic', NULL, NULL, '', 2, NULL, NULL, NULL, '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
COMMIT;

-- ----------------------------
-- Table structure for sys_cross_apply
-- ----------------------------
DROP TABLE IF EXISTS `sys_cross_apply`;
CREATE TABLE `sys_cross_apply` (
  `id` varchar(120) COLLATE utf8_unicode_ci NOT NULL COMMENT 'id',
  `order_no` varchar(120) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '申请订单号',
  `apply_cabin` varchar(120) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '申请人舱段',
  `apply_center` varchar(120) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '申请中心',
  `apply_user_id` varchar(120) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '申请人',
  `apply_user_name` varchar(60) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '申请人姓名',
  `data_source_cabin` varchar(120) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '数据来源方舱段',
  `data_source_center` varchar(120) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '数据来源方中心',
  `data_status` varchar(60) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '数据状态',
  `valid_flag` varchar(4) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '是否生效',
  `data_start_time` varchar(40) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '数据访问有效开始时间',
  `data_end_time` varchar(40) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '数据访问有效结束时间',
  `collect_start_time` varchar(40) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '数据采集开始时间',
  `collect_end_time` varchar(40) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '数据采集结束时间',
  `apply_reason` varchar(1200) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '申请理由',
  `create_time` varchar(40) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '创建时间',
  `create_center` varchar(40) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '创建人中心',
  `data_source` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '数据来源',
  `data_staus` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '数据状态',
  `data_source_sub` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '数据来源缩写',
  `link_method` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '链接方式',
  `person_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci COMMENT='跨中心访问申请表';


-- ----------------------------
-- Table structure for sys_ftp_config
-- ----------------------------
DROP TABLE IF EXISTS `sys_ftp_config`;
CREATE TABLE `sys_ftp_config` (
  `id` varchar(60) COLLATE utf8_unicode_ci NOT NULL COMMENT 'id',
  `ftp_user` varchar(60) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT 'ftp用户名',
  `ftp_password` varchar(60) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT 'ftp密码',
  `ftp_ip` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT 'ftp主机ip',
  `ftp_port` varchar(8) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT 'ftp端口',
  `user_code` varchar(60) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '用户编码',
  `user_id` varchar(60) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '用户id',
  `create_user_id` varchar(60) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '创建人id',
  `create_user_name` varchar(60) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '创建人名称',
  `create_tieme` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '创建时间',
  `update_user_id` varchar(60) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '修改人id',
  `update_user_name` varchar(60) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '修改人名称',
  `update_time` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '修改时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci ROW_FORMAT=DYNAMIC COMMENT='系统ftp配置表';

-- ----------------------------
-- Records of sys_ftp_config
-- ----------------------------
BEGIN;
INSERT INTO `sys_ftp_config` VALUES ('1', 'ftp_admin', 'qwert', '192.168.1.1', '21', 'hello', 'admin', 'admin', 'admin', '2020-09-02 16:40:00', NULL, NULL, NULL);
COMMIT;

-- ----------------------------
-- Table structure for sys_maintype_info
-- ----------------------------
DROP TABLE IF EXISTS `sys_maintype_info`;
CREATE TABLE `sys_maintype_info` (
  `id` varchar(100) CHARACTER SET utf8 NOT NULL COMMENT '大类ID',
  `cabin_id` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '舱段id',
  `cabin_name` varchar(200) CHARACTER SET utf8 DEFAULT NULL COMMENT '舱段心名称',
  `center_id` varchar(50) CHARACTER SET utf8 DEFAULT NULL COMMENT '中心ID',
  `center_name` varchar(200) CHARACTER SET utf8 DEFAULT NULL COMMENT '中心名称',
  `maintype_type` varchar(50) CHARACTER SET utf8 DEFAULT NULL COMMENT '大类类型',
  `maintype_name` varchar(200) CHARACTER SET utf8 DEFAULT NULL COMMENT '大类名称',
  `maintype_short_name` varchar(50) CHARACTER SET utf8 DEFAULT NULL COMMENT '大类简称',
  `parents_id` varchar(100) CHARACTER SET utf8 DEFAULT NULL COMMENT '上级大类ID',
  `maintype_level` varchar(5) CHARACTER SET utf8 DEFAULT NULL COMMENT '大类等级',
  `order_seq` int(5) DEFAULT NULL COMMENT '显示顺序',
  `maintype_remark` varchar(2000) CHARACTER SET utf8 DEFAULT NULL COMMENT '大类备注',
  `maintype_flag` varchar(5) CHARACTER SET utf8 DEFAULT NULL COMMENT '大类标志',
  `valid_flag` varchar(5) CHARACTER SET utf8 DEFAULT NULL COMMENT '效力标志',
  `invalid_department_id` varchar(50) CHARACTER SET utf8 DEFAULT NULL COMMENT '失效用户所属部门编号',
  `invalid_user_id` varchar(50) CHARACTER SET utf8 DEFAULT NULL COMMENT '失效用户编号',
  `invalid_datetime` datetime DEFAULT NULL COMMENT '失效时间',
  `create_department_id` varchar(50) CHARACTER SET utf8 DEFAULT NULL COMMENT '创建用户所属部门编号',
  `create_user_id` varchar(50) CHARACTER SET utf8 DEFAULT NULL COMMENT '创建用户编号',
  `create_datetime` datetime DEFAULT NULL COMMENT '创建时间',
  `update_department_id` varchar(50) CHARACTER SET utf8 DEFAULT NULL COMMENT '更新用户部门所属编号',
  `update_user_id` varchar(50) CHARACTER SET utf8 DEFAULT NULL COMMENT '更新用户编号',
  `update_datetime` datetime DEFAULT NULL COMMENT '更新时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci COMMENT='大类信息表';

-- ----------------------------
-- Records of sys_maintype_info
-- ----------------------------
BEGIN;
INSERT INTO `sys_maintype_info` VALUES ('main_001', 'cabin_001', '核心舱', 'center_001', '有效载荷运行管理中心', 'main', '存档原始数据', NULL, NULL, NULL, NULL, NULL, NULL, '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_maintype_info` VALUES ('main_002', 'cabin_001', '核心舱', 'center_001', '有效载荷运行管理中心', 'main', '存档原始数据产品', NULL, NULL, NULL, NULL, NULL, NULL, '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_maintype_info` VALUES ('main_003', 'cabin_001', '核心舱', 'center_001', '有效载荷运行管理中心', 'main', '存档数据产品', NULL, NULL, NULL, NULL, NULL, NULL, '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_maintype_info` VALUES ('main_004', 'cabin_001', '核心舱', 'center_001', '有效载荷运行管理中心', 'main', '文件类数据', NULL, NULL, NULL, NULL, NULL, NULL, '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_maintype_info` VALUES ('main_005', 'cabin_001', '核心舱', 'center_002', '在轨航天器支持中心', 'main', '在轨飞行状态监测数据', NULL, NULL, NULL, NULL, NULL, NULL, '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_maintype_info` VALUES ('main_006', 'cabin_001', '核心舱', 'center_002', '在轨航天器支持中心', 'main', '在轨健康数据分析数据', NULL, NULL, NULL, NULL, NULL, NULL, '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_maintype_info` VALUES ('main_007', 'cabin_001', '核心舱', 'center_002', '在轨航天器支持中心', 'main', '在轨-地面一体化展示模型数据', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_maintype_info` VALUES ('main_008', 'cabin_001', '核心舱', 'center_002', '在轨航天器支持中心', 'main', '数据深度分析模型数据', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_maintype_info` VALUES ('main_009', 'cabin_001', '核心舱', 'center_002', '在轨航天器支持中心', 'main', '电性航天器遥测解析数据', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_maintype_info` VALUES ('main_010', 'cabin_001', '核心舱', 'center_002', '在轨航天器支持中心', 'main', '电性航天器遥测判读数据', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_maintype_info` VALUES ('main_011', 'cabin_001', '核心舱', 'center_002', '在轨航天器支持中心', 'main', '多航天器协同运行控制项目数据', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_maintype_info` VALUES ('main_012', 'cabin_001', '核心舱', 'center_002', '在轨航天器支持中心', 'main', '地面测试设备启动时序控制规则数据', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_maintype_info` VALUES ('main_013', 'cabin_001', '核心舱', 'center_002', '在轨航天器支持中心', 'main', '业务数据库信息数据库表', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_maintype_info` VALUES ('main_014', 'cabin_001', '核心舱', 'center_002', '在轨航天器支持中心', 'main', '数据成果和成果报告', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_maintype_info` VALUES ('main_015', 'cabin_001', '核心舱', 'center_002', '在轨航天器支持中心', 'main', '航天技术试验载荷源包数据', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_maintype_info` VALUES ('main_016', 'cabin_001', '核心舱', 'center_002', '在轨航天器支持中心', 'main', '空间环境预报数据文件', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_maintype_info` VALUES ('main_017', 'cabin_001', '核心舱', 'center_003', '航天员支持中心', 'main', '分类参数数据', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_maintype_info` VALUES ('main_018', 'cabin_001', '核心舱', 'center_003', '航天员支持中心', 'main', '通用解析结果数据', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_maintype_info` VALUES ('main_019', 'cabin_001', '核心舱', 'center_003', '航天员支持中心', 'main', '通用判读知识数据', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_maintype_info` VALUES ('main_020', 'cabin_001', '核心舱', 'center_003', '航天员支持中心', 'main', '数据成果', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_maintype_info` VALUES ('main_021', 'cabin_001', '核心舱', 'center_004', '空间站运营管理中心', 'main', '规划中心数据', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_maintype_info` VALUES ('main_022', 'cabin_001', '核心舱', 'center_004', '空间站运营管理中心', 'main', '仿真中心数据', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_maintype_info` VALUES ('main_023', 'cabin_001', '核心舱', 'center_005', '运行控制中心', 'main', '完整遥测数据', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_maintype_info` VALUES ('main_024', 'cabin_001', '核心舱', 'center_005', '运行控制中心', 'main', '图像话音数据', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_maintype_info` VALUES ('main_025', 'cabin_001', '核心舱', 'center_005', '运行控制中心', 'main', '全局共享数据', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_maintype_info` VALUES ('main_026', 'cabin_001', '核心舱', 'center_005', '运行控制中心', 'main', '专有数据', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_maintype_info` VALUES ('main_027', 'cabin_001', '核心舱', 'center_005', '运行控制中心', 'main', '数据成果', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_maintype_info` VALUES ('main_028', 'cabin_001', '核心舱', 'center_006', '运行控制中心', 'mainType', '测试大类', NULL, NULL, '3', 1, NULL, NULL, '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
COMMIT;

-- ----------------------------
-- Table structure for sys_menu_info
-- ----------------------------
DROP TABLE IF EXISTS `sys_menu_info`;
CREATE TABLE `sys_menu_info` (
  `id` varchar(50) NOT NULL COMMENT '菜单编号',
  `language` varchar(20) NOT NULL COMMENT '语言',
  `menu_type` varchar(100) DEFAULT NULL COMMENT '菜单类型',
  `menu_sub_type` varchar(100) DEFAULT NULL COMMENT '菜单子类型',
  `menu_name` varchar(200) DEFAULT NULL COMMENT '菜单名称',
  `menu_url` varchar(2000) DEFAULT NULL COMMENT '菜单连接',
  `menu_icon` varchar(200) DEFAULT NULL COMMENT '菜单图标',
  `operation_icon` varchar(200) DEFAULT NULL COMMENT '操作图标',
  `title_icon` varchar(200) DEFAULT NULL COMMENT '标题图标',
  `menu_class` varchar(200) DEFAULT NULL COMMENT '菜单css样式',
  `sub_menu_class` varchar(200) DEFAULT NULL COMMENT '子菜单css样式',
  `menu_level` int(11) DEFAULT NULL COMMENT '菜单等级',
  `order_seq` int(11) DEFAULT NULL COMMENT '菜单顺序',
  `parent_id` varchar(50) DEFAULT NULL COMMENT '上级菜单编号',
  `show_flag` varchar(5) DEFAULT NULL COMMENT '显示标志',
  `redirect` varchar(500) DEFAULT NULL COMMENT '菜单转向',
  `component` varchar(100) DEFAULT NULL COMMENT '菜单所属组件',
  `route` varchar(400) DEFAULT NULL COMMENT '菜单路由（"1"）',
  `keep_alive` varchar(20) DEFAULT NULL COMMENT '是否保持（“false”）',
  `internal_or_external` varchar(20) DEFAULT NULL COMMENT '内部或外部标志（“false”）',
  `menu_title` varchar(200) DEFAULT NULL COMMENT '菜单标题',
  `valid_flag` varchar(5) DEFAULT NULL COMMENT '效力标志',
  `invalid_department_id` varchar(50) DEFAULT NULL COMMENT '失效用户所属部门编号',
  `invalid_user_id` varchar(50) DEFAULT NULL COMMENT '失效用户编号',
  `invalid_datetime` datetime DEFAULT NULL COMMENT '失效时间',
  `create_department_id` varchar(50) DEFAULT NULL COMMENT '创建用户所属部门编号',
  `create_user_id` varchar(50) DEFAULT NULL COMMENT '创建用户编号',
  `create_datetime` datetime DEFAULT NULL COMMENT '创建时间',
  `update_department_id` varchar(50) DEFAULT NULL COMMENT '更新用户部门所属编号',
  `update_user_id` varchar(50) DEFAULT NULL COMMENT '更新用户编号',
  `update_datetime` datetime DEFAULT NULL COMMENT '更新时间',
  PRIMARY KEY (`id`,`language`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='系统菜单表';

-- ----------------------------
-- Records of sys_menu_info
-- ----------------------------
BEGIN;
INSERT INTO `sys_menu_info` VALUES ('001', 'zh-CN', 'menu', 'menu', '首页', '/dashboard/analysis/first', 'icon-home', NULL, NULL, NULL, NULL, 1, 1, NULL, '0', NULL, 'dashboard/Analysis', '1', 'false', 'true', '首页', '1', NULL, NULL, NULL, 'SYSTEM', 'Initialization', '2014-01-01 00:00:00', 'TPPOTJ', 'clustertech', '2016-01-06 09:24:42');
INSERT INTO `sys_menu_info` VALUES ('002', 'zh-CN', 'menu', 'menu', '用户管理', '/userManage', 'icon-user', NULL, NULL, NULL, NULL, 2, 1, '012', '0', NULL, 'layouts/RouteView', '1', 'false', 'false', '用户管理', '1', NULL, NULL, NULL, 'SYSTEM', 'Initialization', '2014-01-01 00:00:00', 'TPPOTJ', 'clustertech', '2016-01-06 09:24:42');
INSERT INTO `sys_menu_info` VALUES ('002001', 'zh-CN', 'menu', 'menu', '用户列表', '/userManage/manage', NULL, NULL, NULL, NULL, NULL, 3, 5, '002', '0', NULL, 'system/UserList', '1', 'false', 'false', '用户列表', '1', NULL, NULL, NULL, 'SYSTEM', 'Initialization', '2014-01-01 00:00:00', 'SYSTEM', 'Initialization', '2014-01-01 00:00:00');
INSERT INTO `sys_menu_info` VALUES ('002002', 'zh-CN', 'menu', 'menu', '用户组管理', '/userManage/userGroup', NULL, NULL, NULL, NULL, NULL, 3, 2, '002', '0', NULL, 'system/DepartList', '1', 'false', 'false', '用户组管理', '1', NULL, NULL, NULL, 'SYSTEM', 'Initialization', '2014-01-01 00:00:00', 'SYSTEM', 'Initialization', '2014-01-01 00:00:00');
INSERT INTO `sys_menu_info` VALUES ('002003', 'zh-CN', 'menu', 'menu', '角色管理', '/userManage/role', NULL, NULL, NULL, NULL, NULL, 3, 3, '002', '0', NULL, 'system/RoleUserList', '1', 'false', 'false', '角色管理', '1', NULL, NULL, NULL, 'SYSTEM', 'Initialization', '2014-01-01 00:00:00', 'SYSTEM', 'Initialization', '2014-01-01 00:00:00');
INSERT INTO `sys_menu_info` VALUES ('002004', 'zh-CN', 'menu', 'menu', '用户审核', '/userManage/userVerify', NULL, NULL, NULL, NULL, NULL, 3, 4, '002', '0', NULL, 'system/UserVerifyList', '1', 'false', 'false', '用户审核', '1', NULL, NULL, NULL, 'SYSTEM', 'Initialization', '2014-01-01 00:00:00', 'SYSTEM', 'Initialization', '2014-01-01 00:00:00');
INSERT INTO `sys_menu_info` VALUES ('002005', 'zh-CN', 'menu', 'menu', '授权策略管理', '/userManage/strategy', NULL, NULL, NULL, NULL, NULL, 3, 1, '002', '0', NULL, 'system/StrategyList', '1', 'false', 'false', '授权策略管理', '1', NULL, NULL, NULL, 'SYSTEM', 'Initialization', '2014-01-01 00:00:00', 'SYSTEM', 'Initialization', '2014-01-01 00:00:00');
INSERT INTO `sys_menu_info` VALUES ('002006', 'zh-CN', 'menu', 'menu', '用户统计', '/userManage/userStats', NULL, NULL, NULL, NULL, NULL, 3, 6, '002', '0', NULL, 'system/UserStats', '1', 'false', 'false', '用户统计', '1', NULL, NULL, NULL, 'SYSTEM', 'Initialization', '2014-01-01 00:00:00', 'SYSTEM', 'Initialization', '2016-01-06 09:24:42');
INSERT INTO `sys_menu_info` VALUES ('003', 'zh-CN', 'menu', 'menu', '数据管理', '/dataManage', 'icon-data-manage', NULL, NULL, NULL, NULL, 2, 2, '012', '0', NULL, 'layouts/RouteView', '1', 'false', 'false', '数据管理', '1', NULL, NULL, NULL, 'SYSTEM', 'Initialization', '2014-01-01 00:00:00', 'TPPOTJ', 'clustertech', '2016-01-06 09:24:42');
INSERT INTO `sys_menu_info` VALUES ('003001', 'zh-CN', 'menu', 'menu', '文件树管理', '/dataManage/fileTreeManage', NULL, NULL, NULL, NULL, NULL, 3, 1, '003', '0', NULL, 'dataManage/FileTreeList', '1', 'false', 'false', '文件树管理', '1', NULL, NULL, NULL, 'SYSTEM', 'Initialization', '2014-01-01 00:00:00', 'SYSTEM', 'Initialization', '2014-01-01 00:00:00');
INSERT INTO `sys_menu_info` VALUES ('003002', 'zh-CN', 'menu', 'menu', '标签管理', '/dataManage/tagManage', NULL, NULL, NULL, NULL, NULL, 3, 2, '003', '0', NULL, 'dataManage/TagList', '1', 'false', 'false', '标签管理', '1', NULL, NULL, NULL, 'SYSTEM', 'Initialization', '2014-01-01 00:00:00', 'SYSTEM', 'Initialization', '2014-01-01 00:00:00');
INSERT INTO `sys_menu_info` VALUES ('003003', 'zh-CN', 'menu', 'menu', '数据管理日志查询', '/dataManage/log', NULL, NULL, NULL, NULL, NULL, 3, 3, '003', '0', NULL, 'dataManage/LogList', '1', 'false', 'false', '数据管理日志查询', '1', NULL, NULL, NULL, 'SYSTEM', 'Initialization', '2014-01-01 00:00:00', 'SYSTEM', 'Initialization', '2014-01-01 00:00:00');
INSERT INTO `sys_menu_info` VALUES ('003004', 'zh-CN', 'menu', 'menu', '跨中心数据申请', '/dataManage/dataApply', NULL, NULL, NULL, NULL, NULL, 3, 4, '003', '0', NULL, 'dataManage/DataApplyList', '1', 'false', 'false', '跨中心数据申请', '1', NULL, NULL, NULL, 'SYSTEM', 'Initialization', '2014-01-01 00:00:00', 'SYSTEM', 'Initialization', '2014-01-01 00:00:00');
INSERT INTO `sys_menu_info` VALUES ('003005', 'zh-CN', 'menu', 'menu', '数据统计', '/dataManage/dataStats', NULL, NULL, NULL, NULL, NULL, 3, 5, '003', '0', NULL, 'dataManage/DataStats', '1', 'false', 'false', '数据统计', '1', NULL, NULL, NULL, 'SYSTEM', 'Initialization', '2014-01-01 00:00:00', 'SYSTEM', 'Initialization', '2016-01-06 09:24:42');
INSERT INTO `sys_menu_info` VALUES ('004', 'zh-CN', 'menu', 'menu', '消息中心', '/concoleInfo', 'icon-data-manage', NULL, NULL, NULL, NULL, 2, 3, '012', '0', NULL, 'layouts/RouteView', '1', 'false', 'false', '消息中心', '1', NULL, NULL, NULL, 'SYSTEM', 'Initialization', '2014-01-01 00:00:00', 'TPPOTJ', 'clustertech', '2016-01-06 09:24:42');
INSERT INTO `sys_menu_info` VALUES ('004001', 'zh-CN', 'menu', 'menu', '消息模板库', '/consoleInfo/info_temp', NULL, NULL, NULL, NULL, NULL, 3, 1, '004', '0', NULL, 'consoleInfoCenter/InfoTemplate/index', '1', 'false', 'false', '消息模板库', '1', NULL, NULL, NULL, 'SYSTEM', 'Initialization', '2014-01-01 00:00:00', 'SYSTEM', 'Initialization', '2016-01-06 09:24:42');
INSERT INTO `sys_menu_info` VALUES ('004002', 'zh-CN', 'menu', 'menu', '消息推送', '/consoleInfo/news_push', NULL, NULL, NULL, NULL, NULL, 3, 2, '004', '0', NULL, 'consoleInfoCenter/NewsPush/index', '1', 'false', 'false', '消息推送', '1', NULL, NULL, NULL, 'SYSTEM', 'Initialization', '2014-01-01 00:00:00', 'SYSTEM', 'Initialization', '2016-01-06 09:24:42');
INSERT INTO `sys_menu_info` VALUES ('012', 'zh-CN', 'menu', 'menu', '控制台', '/dashboard/analysis/console', 'icon-home', NULL, NULL, NULL, NULL, 1, 1, NULL, '0', NULL, 'dashboard/Analysis', '1', 'false', 'true', '控制台', '1', NULL, NULL, NULL, 'SYSTEM', 'Initialization', '2014-01-01 00:00:00', 'TPPOTJ', 'clustertech', '2016-01-06 09:24:42');
COMMIT;

-- ----------------------------
-- Table structure for sys_sequence
-- ----------------------------
DROP TABLE IF EXISTS `sys_sequence`;
CREATE TABLE `sys_sequence` (
  `id` varchar(50) NOT NULL COMMENT '序号编号',
  `sequence_name` varchar(50) DEFAULT NULL COMMENT '序号名称',
  `sequence_format` varchar(50) DEFAULT NULL COMMENT '序号格式',
  `sequence_step` int(11) DEFAULT NULL COMMENT '序号步长',
  `sequence_value` int(11) DEFAULT NULL COMMENT '序号现值',
  `valid_flag` varchar(5) DEFAULT NULL COMMENT '效力标志',
  `invalid_department_id` varchar(50) DEFAULT NULL COMMENT '失效用户所属部门编号',
  `invalid_user_id` varchar(50) DEFAULT NULL COMMENT '失效用户编号',
  `invalid_datetime` datetime DEFAULT NULL COMMENT '失效时间',
  `create_department_id` varchar(50) DEFAULT NULL COMMENT '创建用户所属机构编号',
  `create_user_id` varchar(50) DEFAULT NULL COMMENT '创建用户编号',
  `create_datetime` datetime DEFAULT NULL COMMENT '创建时间',
  `update_department_id` varchar(50) DEFAULT NULL COMMENT '更新用户部门所属编号',
  `update_user_id` varchar(50) DEFAULT NULL COMMENT '更新用户编号',
  `update_datetime` datetime DEFAULT NULL COMMENT '更新时间',
  `name` varchar(20) NOT NULL,
  `format` varchar(50) DEFAULT NULL,
  `value` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='系统序号表';

-- ----------------------------
-- Records of sys_sequence
-- ----------------------------
BEGIN;
INSERT INTO `sys_sequence` VALUES ('1', 'ts_seq', 'CS-${centerId}-[yyyyMMdd]-[seq]', 1, 1, '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2020-12-09 11:09:18', 'ts_seq', NULL, 6);
COMMIT;

-- ----------------------------
-- Table structure for sys_subtype_info
-- ----------------------------
DROP TABLE IF EXISTS `sys_subtype_info`;
CREATE TABLE `sys_subtype_info` (
  `id` varchar(100) CHARACTER SET utf8 NOT NULL COMMENT '小类ID',
  `cabin_id` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '舱段id',
  `cabin_name` varchar(200) CHARACTER SET utf8 DEFAULT NULL COMMENT '舱段心名称',
  `center_id` varchar(50) CHARACTER SET utf8 DEFAULT NULL COMMENT '中心ID',
  `center_name` varchar(200) CHARACTER SET utf8 DEFAULT NULL COMMENT '中心名称',
  `maintype_id` varchar(50) CHARACTER SET utf8 DEFAULT NULL COMMENT '大类ID',
  `maintype_name` varchar(200) CHARACTER SET utf8 DEFAULT NULL COMMENT '大类名称',
  `subtype_type` varchar(50) CHARACTER SET utf8 DEFAULT NULL COMMENT '小类类型',
  `subtype_name` varchar(200) CHARACTER SET utf8 DEFAULT NULL COMMENT '小类名称',
  `subtype_short_name` varchar(50) CHARACTER SET utf8 DEFAULT NULL COMMENT '小类简称',
  `subtype_table_name` varchar(100) CHARACTER SET utf8 DEFAULT NULL COMMENT '小类表名称',
  `archieve_mode` varchar(20) CHARACTER SET utf8 DEFAULT NULL COMMENT '归档方式（MANUAL，AUTO）',
  `data_type` varchar(20) CHARACTER SET utf8 DEFAULT NULL COMMENT '数据类型（FILE，DATA）',
  `collection_time_flag` varchar(20) CHARACTER SET utf8 DEFAULT NULL COMMENT '采集时间标志',
  `upload_component` varchar(100) CHARACTER SET utf8 DEFAULT NULL COMMENT '上传组件',
  `parents_id` varchar(100) CHARACTER SET utf8 DEFAULT NULL COMMENT '上级大类ID',
  `subtype_level` varchar(5) CHARACTER SET utf8 DEFAULT NULL COMMENT '小类等级',
  `order_seq` int(5) DEFAULT NULL COMMENT '显示顺序',
  `subtype_remark` varchar(2000) CHARACTER SET utf8 DEFAULT NULL COMMENT '小类备注',
  `subtype_flag` varchar(5) CHARACTER SET utf8 DEFAULT NULL COMMENT '小类标志',
  `valid_flag` varchar(5) CHARACTER SET utf8 DEFAULT NULL COMMENT '效力标志',
  `invalid_department_id` varchar(50) CHARACTER SET utf8 DEFAULT NULL COMMENT '失效用户所属部门编号',
  `invalid_user_id` varchar(50) CHARACTER SET utf8 DEFAULT NULL COMMENT '失效用户编号',
  `invalid_datetime` datetime DEFAULT NULL COMMENT '失效时间',
  `create_department_id` varchar(50) CHARACTER SET utf8 DEFAULT NULL COMMENT '创建用户所属部门编号',
  `create_user_id` varchar(50) CHARACTER SET utf8 DEFAULT NULL COMMENT '创建用户编号',
  `create_datetime` datetime DEFAULT NULL COMMENT '创建时间',
  `update_department_id` varchar(50) CHARACTER SET utf8 DEFAULT NULL COMMENT '更新用户部门所属编号',
  `update_user_id` varchar(50) CHARACTER SET utf8 DEFAULT NULL COMMENT '更新用户编号',
  `update_datetime` datetime DEFAULT NULL COMMENT '更新时间',
  `date_type` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '数据类型',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci COMMENT='小类信息表';

-- ----------------------------
-- Records of sys_subtype_info
-- ----------------------------
BEGIN;
INSERT INTO `sys_subtype_info` VALUES ('sub_001', 'cabin_001', '核心舱', 'center_001', '有效载荷运行管理中心', 'main_001', '存档原始数据', 'subType', '存档原始数据元信息数据库表信息', '1.1.1表 5.2.1存档原始数据元信息数据库表信息', 'pmc_arch_raw_data', 'API', 'FILE', '', 'pmc_arch_raw_data', NULL, NULL, NULL, NULL, NULL, '1', NULL, NULL, NULL, 'system-ini', 'system-ini', '2020-10-16 15:24:08', NULL, NULL, NULL, NULL);
INSERT INTO `sys_subtype_info` VALUES ('sub_002', 'cabin_001', '核心舱', 'center_001', '有效载荷运行管理中心', 'main_002', '存档原始数据产品', 'subType', '存档原始数据产品元信息数据库表信息', '1.2.1 表5.3.1 存档原始数据产品元信息数据库表信息', 'pmc_arch_raw_data_prod', 'API', 'FILE', '', 'pmc_arch_raw_data_file', NULL, NULL, NULL, NULL, NULL, '1', NULL, NULL, NULL, 'system-ini', 'system-ini', '2020-10-16 15:24:08', NULL, NULL, NULL, NULL);
INSERT INTO `sys_subtype_info` VALUES ('sub_003', 'cabin_001', '核心舱', 'center_001', '有效载荷运行管理中心', 'main_003', '存档数据产品', 'subType', '航天医学实验领域元信息数据库表信息', '1.3.1 表 5.4.1航天医学实验领域元信息数据库表信息', 'pmc_space_medical_experimental_field', 'API', 'FILE', '', 'pmc_space_medical_experimental_field', NULL, NULL, NULL, NULL, NULL, '1', NULL, NULL, NULL, 'system-ini', 'system-ini', '2020-10-16 15:24:08', NULL, NULL, NULL, NULL);
INSERT INTO `sys_subtype_info` VALUES ('sub_004', 'cabin_001', '核心舱', 'center_001', '有效载荷运行管理中心', 'main_003', '存档数据产品', 'subType', '航天技术试验领域元信息数据库表信息', '1.3.2 表 5.4.2航天技术试验领域元信息数据库表信息', 'pmc_space_technology_field', 'API', 'FILE', '', 'pmc_space_technology_field', NULL, NULL, NULL, NULL, NULL, '1', NULL, NULL, NULL, 'system-ini', 'system-ini', '2020-10-16 15:24:08', NULL, NULL, NULL, NULL);
INSERT INTO `sys_subtype_info` VALUES ('sub_005', 'cabin_001', '核心舱', 'center_001', '有效载荷运行管理中心', 'main_003', '存档数据产品', 'subType', '空间科学与应用领域元信息数据库表信息', '1.3.3 表 5.4.3空间科学与应用领域元信息数据库表信息', 'pmc_space_science_app_domain', 'API', 'FILE', '', 'pmc_space_science_app_domain', NULL, NULL, NULL, NULL, NULL, '1', NULL, NULL, NULL, 'system-ini', 'system-ini', '2020-10-16 15:24:08', NULL, NULL, NULL, NULL);
INSERT INTO `sys_subtype_info` VALUES ('sub_006', 'cabin_001', '核心舱', 'center_001', '有效载荷运行管理中心', 'main_003', '存档数据产品', 'subType', '空间环境预报数据文件元信息数据库表信息', '1.3.4 表 5.4.4空间环境预报数据文件元信息数据库表信息', 'pmc_space_environment_forecast_data_file', 'API', 'FILE', '', 'pmc_space_environment_forecast_data_file', NULL, NULL, NULL, NULL, NULL, '1', NULL, NULL, NULL, 'system-ini', 'system-ini', '2020-10-16 15:24:08', NULL, NULL, NULL, NULL);
INSERT INTO `sys_subtype_info` VALUES ('sub_007', 'cabin_001', '核心舱', 'center_001', '有效载荷运行管理中心', 'main_004', '文件类数据', 'subType', '飞控事件计划电文类数据元信息库表', '1.4.1 表 5.5.1飞控事件计划电文类数据元信息库表', 'pmc_flight_control_event_plan_message_data', 'API', 'FILE', '', 'pmc_load_work_plan_other_msg_clas', NULL, NULL, NULL, NULL, NULL, '1', NULL, NULL, NULL, 'system-ini', 'system-ini', '2020-10-16 15:24:08', NULL, NULL, NULL, NULL);
INSERT INTO `sys_subtype_info` VALUES ('sub_008', 'cabin_001', '核心舱', 'center_001', '有效载荷运行管理中心', 'main_004', '文件类数据', 'subType', '数据成果和成果报告描述信息', '1.4.2 表 5.5.2数据成果和成果报告描述信息', 'pmc_data_results_report', 'WEB', 'FILE', '', 'pmc_data_results_report', NULL, NULL, NULL, NULL, NULL, '1', NULL, NULL, NULL, 'system-ini', 'system-ini', '2020-10-16 15:24:08', NULL, NULL, NULL, NULL);
INSERT INTO `sys_subtype_info` VALUES ('sub_009', 'cabin_001', '核心舱', 'center_002', '在轨航天器支持中心', 'main_005', '在轨飞行状态监测数据', 'subType', '在轨飞行状态监测数据文件元信息表-事件监测信息表', '表5.2.1在轨飞行状态监测数据文件元信息表-事件监测信息表', 'ssc_in_orbit_flight_status_monitoring_data_file_event', 'DB', 'DATA', '', 'ssc_in_orbit_flight_status_monitoring_data_file_event', NULL, NULL, NULL, NULL, NULL, '1', NULL, NULL, NULL, 'system-ini', 'system-ini', '2020-10-16 15:24:08', NULL, NULL, NULL, NULL);
INSERT INTO `sys_subtype_info` VALUES ('sub_010', 'cabin_001', '核心舱', 'center_002', '在轨航天器支持中心', 'main_005', '在轨飞行状态监测数据', 'subType', '在轨飞行状态监测数据文件元信息表-状态监测信息表', '2.1.2 在轨飞行状态监测数据文件元信息表-状态监测信息表', 'ssc_in_orbit_flight_status_monitoring_data_file_status', 'DB', 'DATA', '', 'ssc_in_orbit_flight_status_monitoring_data_file_status', NULL, NULL, NULL, NULL, NULL, '1', NULL, NULL, NULL, 'system-ini', 'system-ini', '2020-10-16 15:24:08', NULL, NULL, NULL, NULL);
INSERT INTO `sys_subtype_info` VALUES ('sub_011', 'cabin_001', '核心舱', 'center_002', '在轨航天器支持中心', 'main_006', '在轨健康数据分析数据', 'subType', '在轨健康数据分析数据库表', '2.2.1 表5.2.2在轨健康数据分析数据库表', 'ssc_in_orbit_health_data_analysis', 'DB', 'DATA', '', 'ssc_in_orbit_health_data_analysis', NULL, NULL, NULL, NULL, NULL, '1', NULL, NULL, NULL, 'system-ini', 'system-ini', '2020-10-16 15:24:08', NULL, NULL, NULL, NULL);
INSERT INTO `sys_subtype_info` VALUES ('sub_012', 'cabin_001', '核心舱', 'center_002', '在轨航天器支持中心', 'main_007', '在轨-地面一体化展示模型数据', 'subType', '在轨-地面一体化展示模型库-地面点表信息', '2.3.1 表5.2.3在轨-地面一体化展示模型库-地面点表信息', 'ssc_in_orbit_ground_integration_display_model_ground_point_info', 'DB', 'DATA', '', 'ssc_in_orbit_ground_integration_display_model_ground_point_info', NULL, NULL, NULL, NULL, NULL, '1', NULL, NULL, NULL, 'system-ini', 'system-ini', '2020-10-16 15:24:08', NULL, NULL, NULL, NULL);
INSERT INTO `sys_subtype_info` VALUES ('sub_013', 'cabin_001', '核心舱', 'center_002', '在轨航天器支持中心', 'main_007', '在轨-地面一体化展示模型数据', 'subType', '在轨-地面一体化展示模型库-地面点表信息', '2.3.2 在轨-地面一体化展示模型库-地面点表信息', 'ssc_in_orbit_ground_integration_display_model_ground_point_info', 'DB', 'DATA', '', 'ssc_in_orbit_ground_integration_display_model_ground_point_info', NULL, NULL, NULL, NULL, NULL, '1', NULL, NULL, NULL, 'system-ini', 'system-ini', '2020-10-16 15:24:08', NULL, NULL, NULL, NULL);
INSERT INTO `sys_subtype_info` VALUES ('sub_014', 'cabin_001', '核心舱', 'center_002', '在轨航天器支持中心', 'main_008', '数据深度分析模型数据', 'subType', '数据深度分析模型数据库-数据清洗表', '2.4.1 表5.2.4数据深度分析模型数据库-数据清洗表', 'ssc_data_depth_analysis_model_data_cleaning_table', 'DB', 'DATA', '', 'ssc_data_depth_analysis_model_data_cleaning_table', NULL, NULL, NULL, NULL, NULL, '1', NULL, NULL, NULL, 'system-ini', 'system-ini', '2020-10-16 15:24:08', NULL, NULL, NULL, NULL);
INSERT INTO `sys_subtype_info` VALUES ('sub_015', 'cabin_001', '核心舱', 'center_002', '在轨航天器支持中心', 'main_008', '数据深度分析模型数据', 'subType', '数据深度分析模型数据库--数据模型表', '2.4.2 数据深度分析模型数据库--数据模型表', 'ssc_data_depth_analysis_model_data_model_table', 'DB', 'DATA', '', 'ssc_data_depth_analysis_model_data_model_table', NULL, NULL, NULL, '生产者标志_任务标志_文件标志_流水号_版本号标志_数据说明_文件开始时间_文件结束时间_文件产生时间.扩展名', NULL, '1', NULL, NULL, NULL, 'system-ini', 'system-ini', '2020-10-16 15:24:08', NULL, NULL, NULL, NULL);
INSERT INTO `sys_subtype_info` VALUES ('sub_016', 'cabin_001', '核心舱', 'center_002', '在轨航天器支持中心', 'main_008', '数据深度分析模型数据', 'subType', '数据深度分析模型数据库--数据模型表', '2.4.3 数据深度分析模型数据库--数据模型表', 'ssc_data_depth_analysis_model_data_model_table', 'DB', 'DATA', '', 'ssc_data_depth_analysis_model_data_model_table', NULL, NULL, NULL, '', NULL, '1', NULL, NULL, NULL, 'system-ini', 'system-ini', '2020-10-16 15:24:08', NULL, NULL, NULL, NULL);
INSERT INTO `sys_subtype_info` VALUES ('sub_017', 'cabin_001', '核心舱', 'center_002', '在轨航天器支持中心', 'main_009', '电性航天器遥测解析数据', 'subType', '电性航天器遥测解析数据库', '2.5.1 表5.2.5电性航天器遥测解析数据库', 'ssc_analytical_db_telemetry_electrical_spacecraft', 'DB', 'DATA', '', 'ssc_analytical_db_telemetry_electrical_spacecraft', NULL, NULL, NULL, '版本号_任务标识_信源地址_文件标志_创建人_创建日期_编号.扩展名', NULL, '1', NULL, NULL, NULL, 'system-ini', 'system-ini', '2020-10-16 15:24:08', NULL, NULL, NULL, NULL);
INSERT INTO `sys_subtype_info` VALUES ('sub_018', 'cabin_001', '核心舱', 'center_002', '在轨航天器支持中心', 'main_010', '电性航天器遥测判读数据', 'subType', '电性航天器遥测判读数据库', '2.6.1 表5.2.6电性航天器遥测判读数据库', 'ssc_telemetry_interpretation_db_electrical_spacecraft_db', 'DB', 'DATA', '', 'ssc_telemetry_interpretation_db_electrical_spacecraft_db', NULL, NULL, NULL, '航天器代号_模型名_模型说明_软件模型版本_创建人_创建时间.扩展名', NULL, '1', NULL, NULL, NULL, 'system-ini', 'system-ini', '2020-10-16 15:24:08', NULL, NULL, NULL, NULL);
INSERT INTO `sys_subtype_info` VALUES ('sub_019', 'cabin_001', '核心舱', 'center_002', '在轨航天器支持中心', 'main_011', '多航天器协同运行控制项目数据', 'subType', '多航天器协同运行控制项目数据库', '2.7.1 表5.2.7多航天器协同运行控制项目数据库', 'ssc_multi_spacecraft_cooperative_operation_control_project_db', 'DB', 'DATA', '', 'ssc_multi_spacecraft_cooperative_operation_control_project_db', NULL, NULL, NULL, NULL, NULL, '1', NULL, NULL, NULL, 'system-ini', 'system-ini', '2020-10-16 15:24:08', NULL, NULL, NULL, NULL);
INSERT INTO `sys_subtype_info` VALUES ('sub_020', 'cabin_001', '核心舱', 'center_002', '在轨航天器支持中心', 'main_012', '地面测试设备启动时序控制规则数据', 'subType', '地面测试设备启动时序控制规则数据库', '2.8.1 表5.2.8地面测试设备启动时序控制规则数据库', 'ssc_ground_test_equipment_starts_timing_control_rule_db', 'DB', 'DATA', '', 'ssc_ground_test_equipment_starts_timing_control_rule_db', NULL, NULL, NULL, NULL, NULL, '1', NULL, NULL, NULL, 'system-ini', 'system-ini', '2020-10-16 15:24:08', NULL, NULL, NULL, NULL);
INSERT INTO `sys_subtype_info` VALUES ('sub_021', 'cabin_001', '核心舱', 'center_002', '在轨航天器支持中心', 'main_013', '业务数据库信息数据库表', 'subType', '业务数据库信息数据库表', '2.9.1 表5.2.9业务数据库信息数据库表', 'ssc_business_db_info', 'DB', 'DATA', '', 'ssc_business_db_info', NULL, NULL, NULL, NULL, NULL, '1', NULL, NULL, NULL, 'system-ini', 'system-ini', '2020-10-16 15:24:08', NULL, NULL, NULL, NULL);
INSERT INTO `sys_subtype_info` VALUES ('sub_022', 'cabin_001', '核心舱', 'center_002', '在轨航天器支持中心', 'main_014', '数据成果和成果报告', 'subType', '数据成果和成果报告描述信息', '2.9.2 表5.2.10数据成果和成果报告描述信息', 'ssc_data_results_report', 'WEB,API', 'FILE', '', 'ssc_data_results_report', NULL, NULL, NULL, '', NULL, '1', NULL, NULL, NULL, 'system-ini', 'system-ini', '2020-10-16 15:24:08', NULL, NULL, NULL, NULL);
INSERT INTO `sys_subtype_info` VALUES ('sub_023', 'cabin_001', '核心舱', 'center_002', '在轨航天器支持中心', 'main_015', '航天技术试验载荷源包数据', 'subType', '航天技术试验0级数据通知描述信息', '2.10.2 表6.2.3航天技术试验0级数据通知描述信息', 'ssc_space_technology_test_level0_data_notification', 'WEB,API', 'FILE', '', 'ssc_space_technology_test_level0_data_notification', NULL, NULL, NULL, '版本号_任务标识_信源地址_文件标志_创建人_创建日期_编号.扩展名', NULL, '1', NULL, NULL, NULL, 'system-ini', 'system-ini', '2020-10-16 15:24:08', NULL, NULL, NULL, NULL);
INSERT INTO `sys_subtype_info` VALUES ('sub_024', 'cabin_001', '核心舱', 'center_002', '在轨航天器支持中心', 'main_016', '空间环境预报数据文件', 'subType', '空间环境预报数据通知描述信息', '2.11.1 表6.2.4空间环境预报数据通知描述信息', 'ssc_space_environment_forecast_data_notification', 'WEB,API', 'FILE', '', 'ssc_space_environment_forecast_data_notification', NULL, NULL, NULL, NULL, NULL, '1', NULL, NULL, NULL, 'system-ini', 'system-ini', '2020-10-16 15:24:08', NULL, NULL, NULL, NULL);
INSERT INTO `sys_subtype_info` VALUES ('sub_025', 'cabin_001', '核心舱', 'center_003', '航天员支持中心', 'main_017', '分类参数数据', 'subType', '医学信息综合管理主机参数数据表', '3.1.1 表5.2.1医学信息综合管理主机参数数据表', 'asc_med_host_param', 'DB', 'DATA', '', 'asc_med_host_param', NULL, NULL, NULL, NULL, NULL, '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_subtype_info` VALUES ('sub_026', 'cabin_001', '核心舱', 'center_003', '航天员支持中心', 'main_017', '分类参数数据', 'subType', '医学设备电源管理装置数据表', '3.2.1 表5.2.2医学设备电源管理装置数据表', 'asc_dev_power_param0', 'DB', 'DATA', '', 'asc_dev_power_param', NULL, NULL, NULL, NULL, NULL, '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_subtype_info` VALUES ('sub_027', 'cabin_001', '核心舱', 'center_003', '航天员支持中心', 'main_017', '分类参数数据', 'subType', '医学信息通信接口装置数据表', '3.3.1 表5.2.3医学信息通信接口装置数据表', 'asc_dev_power_param1', 'DB', 'DATA', '', 'asc_dev_power_param', NULL, NULL, NULL, NULL, NULL, '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_subtype_info` VALUES ('sub_028', 'cabin_001', '核心舱', 'center_003', '航天员支持中心', 'main_017', '分类参数数据', 'subType', '综合充电装置数据表', '3.4.1 表5.2.4综合充电装置数据表', 'asc_zh_charge_param', 'DB', 'DATA', '', 'asc_zh_charge_param', NULL, NULL, NULL, NULL, NULL, '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_subtype_info` VALUES ('sub_029', 'cabin_001', '核心舱', 'center_003', '航天员支持中心', 'main_017', '分类参数数据', 'subType', '神经肌肉刺激仪数据表', '3.5.1 表5.2.5神经肌肉刺激仪数据表', 'asc_nm_stim_param', 'DB', 'DATA', '', 'asc_nm_stim_param', NULL, NULL, NULL, NULL, NULL, '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_subtype_info` VALUES ('sub_030', 'cabin_001', '核心舱', 'center_003', '航天员支持中心', 'main_017', '分类参数数据', 'subType', '太空跑台数据表', '3.6.1 表5.2.6太空跑台数据表', 'asc_space_plat_param', 'DB', 'DATA', '', 'asc_space_plat_param', NULL, NULL, NULL, NULL, NULL, '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_subtype_info` VALUES ('sub_031', 'cabin_001', '核心舱', 'center_003', '航天员支持中心', 'main_017', '分类参数数据', 'subType', '太空自行车数据表', '3.7.1 表5.2.7太空自行车数据表', 'asc_space_bike_param', 'DB', 'DATA', '', 'asc_space_bike_param', NULL, NULL, NULL, NULL, NULL, '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_subtype_info` VALUES ('sub_032', 'cabin_001', '核心舱', 'center_003', '航天员支持中心', 'main_017', '分类参数数据', 'subType', '微重力抗阻锻炼装置数据表', '3.8.1 表5.2.8微重力抗阻锻炼装置数据表', 'asc_anti_resist_param', 'DB', 'DATA', '', 'asc_anti_resist_param', NULL, NULL, NULL, NULL, NULL, '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_subtype_info` VALUES ('sub_033', 'cabin_001', '核心舱', 'center_003', '航天员支持中心', 'main_017', '分类参数数据', 'subType', '微波加热装置数据表', '3.9.1 表5.2.9微波加热装置数据表', 'asc_microwave_param', 'DB', 'DATA', '', 'asc_microwave_param', NULL, NULL, NULL, NULL, NULL, '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_subtype_info` VALUES ('sub_034', 'cabin_001', '核心舱', 'center_003', '航天员支持中心', 'main_017', '分类参数数据', 'subType', '热风加热装置数据表', '3.10.1 表5.2.10热风加热装置数据表', 'asc_air_heater_param', 'DB', 'DATA', '', 'asc_air_heater_param', NULL, NULL, NULL, NULL, NULL, '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_subtype_info` VALUES ('sub_035', 'cabin_001', '核心舱', 'center_003', '航天员支持中心', 'main_017', '分类参数数据', 'subType', '饮水分配器数据表', '3.11.1 表5.2.11饮水分配器数据表', 'asc_drinking_dev_param', 'DB', 'DATA', '', 'asc_drinking_dev_param', NULL, NULL, NULL, NULL, NULL, '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_subtype_info` VALUES ('sub_036', 'cabin_001', '核心舱', 'center_003', '航天员支持中心', 'main_017', '分类参数数据', 'subType', '食品冷藏箱数据表', '3.12.1 表5.2.12食品冷藏箱数据表', 'asc_fridge_param', 'DB', 'DATA', '', 'asc_fridge_param', NULL, NULL, NULL, NULL, NULL, '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_subtype_info` VALUES ('sub_037', 'cabin_001', '核心舱', 'center_003', '航天员支持中心', 'main_017', '分类参数数据', 'subType', '人体辐射剂量当量仪数据表', '3.13.1 表5.2.13人体辐射剂量当量仪数据表', 'asc_equivalent_meter_param', 'DB', 'DATA', '', 'asc_equivalent_meter_param', NULL, NULL, NULL, NULL, NULL, '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_subtype_info` VALUES ('sub_038', 'cabin_001', '核心舱', 'center_003', '航天员支持中心', 'main_017', '分类参数数据', 'subType', '人系统研究机柜下传数字量遥测数据表', '3.14.1 表5.2.14人系统研究机柜下传数字量遥测数据表', 'asc_human_system_cabinet_param', 'DB', 'DATA', '', 'asc_human_system_cabinet_param', NULL, NULL, NULL, NULL, NULL, '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_subtype_info` VALUES ('sub_039', 'cabin_001', '核心舱', 'center_003', '航天员支持中心', 'main_017', '分类参数数据', 'subType', '太空医学样本冷藏箱工程数据表', '3.15.1 表5.2.15太空医学样本冷藏箱工程数据表', 'asc_space_med_fridge_param', 'DB', 'DATA', '', 'asc_space_med_fridge_param', NULL, NULL, NULL, NULL, NULL, '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_subtype_info` VALUES ('sub_040', 'cabin_001', '核心舱', 'center_003', '航天员支持中心', 'main_017', '分类参数数据', 'subType', '舱外服舱载电气综合控制台参数数据表', '3.16.1 表5.2.16舱外服舱载电气综合控制台参数数据表', 'asc_space_suit_zkt_param', 'DB', 'DATA', '', 'asc_space_suit_zkt_param', NULL, NULL, NULL, NULL, NULL, '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_subtype_info` VALUES ('sub_041', 'cabin_001', '核心舱', 'center_003', '航天员支持中心', 'main_017', '分类参数数据', 'subType', '出舱通信处理器代传（无线）参数数据表', '3.17.1 表5.2.17出舱通信处理器代传（无线）参数数据表', 'asc_space_suit_uhf_param', 'DB', 'DATA', '', 'asc_space_suit_uhf_param', NULL, NULL, NULL, NULL, NULL, '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_subtype_info` VALUES ('sub_042', 'cabin_001', '核心舱', 'center_003', '航天员支持中心', 'main_017', '分类参数数据', 'subType', '电池充放电装置参数数据表', '3.18.1 表5.2.18电池充放电装置参数数据表', 'asc_space_suit_battery_param', 'DB', 'DATA', '', 'asc_space_suit_battery_param', NULL, NULL, NULL, NULL, NULL, '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_subtype_info` VALUES ('sub_043', 'cabin_001', '核心舱', 'center_003', '航天员支持中心', 'main_017', '分类参数数据', 'subType', '生理数据文件表', '3.19.1 表5.2.19生理数据文件表', 'asc_bio_medical_file', 'API', 'FILE', '', 'asc_bio_medical_file', NULL, NULL, NULL, NULL, NULL, '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_subtype_info` VALUES ('sub_044', 'cabin_001', '核心舱', 'center_003', '航天员支持中心', 'main_017', '分类参数数据', 'subType', '航天医学实验数据文件表', '3.20.1 表5.2.20航天医学实验数据文件表', 'asc_medical_test_file', 'API', 'FILE', '', 'asc_medical_test_file', NULL, NULL, NULL, NULL, NULL, '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_subtype_info` VALUES ('sub_045', 'cabin_001', '核心舱', 'center_003', '航天员支持中心', 'main_017', '分类参数数据', 'subType', '微量气体检测装置数据文件表', '3.21.1 表5.2.21微量气体检测装置数据文件表', 'asc_micro_hazardous_gas_file0', 'API', 'FILE', '', 'asc_micro_hazardous_gas_file', NULL, NULL, NULL, NULL, NULL, '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_subtype_info` VALUES ('sub_046', 'cabin_001', '核心舱', 'center_003', '航天员支持中心', 'main_017', '分类参数数据', 'subType', '舱外服上注传感器系数数据文件表', '3.22.1 表5.2.22舱外服上注传感器系数数据文件表', 'asc_space_suit_sensor_file', 'API', 'FILE', '', 'asc_space_suit_sensor_file', NULL, NULL, NULL, NULL, NULL, '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_subtype_info` VALUES ('sub_047', 'cabin_001', '核心舱', 'center_003', '航天员支持中心', 'main_017', '分类参数数据', 'subType', '航天员支持中心文件清单表', '3.23.1 表5.2.23航天员支持中心文件清单表', 'asc_acc_doc_list', 'WEB', 'FILE', '', 'asc_acc_doc_list', NULL, NULL, NULL, NULL, NULL, '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_subtype_info` VALUES ('sub_048', 'cabin_001', '核心舱', 'center_003', '航天员支持中心', 'main_017', '分类参数数据', 'subType', '环控生保分系统注入数据文件表', '3.24.1 表5.2.24环控生保分系统注入数据文件表', 'asc_elss_immit_data_file', 'WEB', 'FILE', '', 'asc_elss_immit_data_file', NULL, NULL, NULL, NULL, NULL, '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_subtype_info` VALUES ('sub_049', 'cabin_001', '核心舱', 'center_003', '航天员支持中心', 'main_017', '分类参数数据', 'subType', '环控生保分系统小结报告数据文件表', '3.25.1 表5.2.25环控生保分系统小结报告数据文件表', 'asc_elss_reportfile', 'WEB', 'FILE', '', 'asc_elss_reportfile', NULL, NULL, NULL, NULL, NULL, '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_subtype_info` VALUES ('sub_050', 'cabin_001', '核心舱', 'center_003', '航天员支持中心', 'main_017', '分类参数数据', 'subType', '微量气体检测装置数据文件表', '3.26.1 表5.2.26微量气体检测装置数据文件表', 'asc_micro_hazardous_gas_file1', 'WEB', 'FILE', '', 'asc_micro_hazardous_gas_file', NULL, NULL, NULL, NULL, NULL, '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_subtype_info` VALUES ('sub_051', 'cabin_001', '核心舱', 'center_003', '航天员支持中心', 'main_018', '通用解析结果数据', 'subType', '航天器信息表', '3.27.1 表5.2.27航天器信息表', 'asc_aeorcarft_info', 'DB', 'DATA', '', 'asc_aeorcarft_info', NULL, NULL, NULL, NULL, NULL, '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_subtype_info` VALUES ('sub_052', 'cabin_001', '核心舱', 'center_003', '航天员支持中心', 'main_018', '通用解析结果数据', 'subType', '分系统信息表', '3.28.1 表5.2.28分系统信息表', 'asc_subsystem_info', 'DB', 'DATA', '', 'asc_subsystem_info', NULL, NULL, NULL, NULL, NULL, '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_subtype_info` VALUES ('sub_053', 'cabin_001', '核心舱', 'center_003', '航天员支持中心', 'main_018', '通用解析结果数据', 'subType', '数据流信息表', '3.29.1 表5.2.29数据流信息表', 'asc_datastream_info', 'DB', 'DATA', '', 'asc_datastream_info', NULL, NULL, NULL, NULL, NULL, '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_subtype_info` VALUES ('sub_054', 'cabin_001', '核心舱', 'center_003', '航天员支持中心', 'main_018', '通用解析结果数据', 'subType', '参数信息表', '3.30.1 表5.2.30参数信息表', 'asc_param_info', 'DB', 'DATA', '', 'asc_param_info', NULL, NULL, NULL, NULL, NULL, '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_subtype_info` VALUES ('sub_055', 'cabin_001', '核心舱', 'center_003', '航天员支持中心', 'main_018', '通用解析结果数据', 'subType', '指令信息表', '3.31.1 表5.2.31指令信息表', 'asc_instruction_info', 'DB', 'DATA', '', 'asc_instruction_info', NULL, NULL, NULL, NULL, NULL, '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_subtype_info` VALUES ('sub_056', 'cabin_001', '核心舱', 'center_003', '航天员支持中心', 'main_018', '通用解析结果数据', 'subType', '源码表', '3.32.1 表5.2.32源码表', 'asc_original_codes', 'DB', 'DATA', '', 'asc_original_codes', NULL, NULL, NULL, NULL, NULL, '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_subtype_info` VALUES ('sub_057', 'cabin_001', '核心舱', 'center_003', '航天员支持中心', 'main_018', '通用解析结果数据', 'subType', '解析结果表', '3.33.1 表5.2.33解析结果表', 'asc_parsed_results', 'DB', 'DATA', '', 'asc_parsed_results', NULL, NULL, NULL, NULL, NULL, '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_subtype_info` VALUES ('sub_058', 'cabin_001', '核心舱', 'center_003', '航天员支持中心', 'main_018', '通用解析结果数据', 'subType', '测试过程表', '3.34.1 表5.2.34测试过程表', 'asc_test_process', 'DB', 'DATA', '', 'asc_test_process', NULL, NULL, NULL, NULL, NULL, '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_subtype_info` VALUES ('sub_059', 'cabin_001', '核心舱', 'center_003', '航天员支持中心', 'main_019', '通用判读知识数据', 'subType', '航天器信息表', '3.35.1 表5.2.35航天器信息表', 'asc_aerocraft_info', 'DB', 'DATA', '', 'asc_aerocraft_info', NULL, NULL, NULL, NULL, NULL, '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_subtype_info` VALUES ('sub_060', 'cabin_001', '核心舱', 'center_003', '航天员支持中心', 'main_019', '通用判读知识数据', 'subType', '分系统信息表', '3.36.1表5.2.36分系统信息表', 'asc_subsystem_info', 'DB', 'DATA', '', 'asc_subsystem_info', NULL, NULL, NULL, NULL, NULL, '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_subtype_info` VALUES ('sub_061', 'cabin_001', '核心舱', 'center_003', '航天员支持中心', 'main_019', '通用判读知识数据', 'subType', '数据流信息表', '3.37.1 表5.2.37数据流信息表', 'asc_data_stream_info', 'DB', 'DATA', '', 'asc_data_stream_info', NULL, NULL, NULL, NULL, NULL, '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_subtype_info` VALUES ('sub_062', 'cabin_001', '核心舱', 'center_003', '航天员支持中心', 'main_019', '通用判读知识数据', 'subType', '参数信息表', '3.38.1 表5.2.38参数信息表', 'asc_param_info', 'DB', 'DATA', '', 'asc_param_info', NULL, NULL, NULL, NULL, NULL, '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_subtype_info` VALUES ('sub_063', 'cabin_001', '核心舱', 'center_003', '航天员支持中心', 'main_019', '通用判读知识数据', 'subType', '指令信息表', '3.39.1 表5.2.39指令信息表', 'asc_instruction_info', 'DB', 'DATA', '', 'asc_instruction_info', NULL, NULL, NULL, NULL, NULL, '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_subtype_info` VALUES ('sub_064', 'cabin_001', '核心舱', 'center_003', '航天员支持中心', 'main_019', '通用判读知识数据', 'subType', '用户权限信息表', '3.40.1 表5.2.40用户权限信息表', 'asc_user_privilege_info', 'DB', 'DATA', '', 'asc_user_privilege_info', NULL, NULL, NULL, NULL, NULL, '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_subtype_info` VALUES ('sub_065', 'cabin_001', '核心舱', 'center_003', '航天员支持中心', 'main_019', '通用判读知识数据', 'subType', '用户信息表', '3.41.1 表5.2.41用户信息表', 'asc_user_info', 'DB', 'DATA', '', 'asc_user_info', NULL, NULL, NULL, NULL, NULL, '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_subtype_info` VALUES ('sub_066', 'cabin_001', '核心舱', 'center_003', '航天员支持中心', 'main_019', '通用判读知识数据', 'subType', '系统关键时间信息表', '3.42.1 表5.2.42系统关键时间信息表', 'asc_system_critical_time_info', 'DB', 'DATA', '', 'asc_system_critical_time_info', NULL, NULL, NULL, NULL, NULL, '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_subtype_info` VALUES ('sub_067', 'cabin_001', '核心舱', 'center_003', '航天员支持中心', 'main_019', '通用判读知识数据', 'subType', '全局变量表', '3.43.1 表5.2.43全局变量表', 'asc_global_variables', 'DB', 'DATA', '', 'asc_global_variables', NULL, NULL, NULL, NULL, NULL, '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_subtype_info` VALUES ('sub_068', 'cabin_001', '核心舱', 'center_003', '航天员支持中心', 'main_019', '通用判读知识数据', 'subType', '指令作用效果表', '3.44.1 表5.2.44指令作用效果表', 'asc_instruction_results', 'DB', 'DATA', '', 'asc_instruction_results', NULL, NULL, NULL, NULL, NULL, '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_subtype_info` VALUES ('sub_069', 'cabin_001', '核心舱', 'center_003', '航天员支持中心', 'main_019', '通用判读知识数据', 'subType', '指令干扰参数信息表', '3.45.1 表5.2.45指令干扰参数信息表', 'asc_instruction_distinfo', 'DB', 'DATA', '', 'asc_instruction_distinfo', NULL, NULL, NULL, NULL, NULL, '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_subtype_info` VALUES ('sub_070', 'cabin_001', '核心舱', 'center_003', '航天员支持中心', 'main_019', '通用判读知识数据', 'subType', '指令识别依赖参数信息表', '3.46.1 表5.2.46指令识别依赖参数信息表', 'asc_instructid_dependency_param', 'DB', 'DATA', '', 'asc_instructid_dependency_param', NULL, NULL, NULL, NULL, NULL, '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_subtype_info` VALUES ('sub_071', 'cabin_001', '核心舱', 'center_003', '航天员支持中心', 'main_019', '通用判读知识数据', 'subType', '参数识别指令信息表', '3.47.1 表5.2.47参数识别指令信息表', 'asc_param_id_instructinfo', 'DB', 'DATA', '', 'asc_param_id_instructinfo', NULL, NULL, NULL, NULL, NULL, '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_subtype_info` VALUES ('sub_072', 'cabin_001', '核心舱', 'center_003', '航天员支持中心', 'main_019', '通用判读知识数据', 'subType', '参数判读知识信息表', '3.48.1 表5.2.48参数判读知识信息表', 'asc_param_knowledge_info', 'DB', 'DATA', '', 'asc_param_knowledge_info', NULL, NULL, NULL, NULL, NULL, '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_subtype_info` VALUES ('sub_073', 'cabin_001', '核心舱', 'center_003', '航天员支持中心', 'main_019', '通用判读知识数据', 'subType', '参数判读结论信息表', '3.49.1 表5.2.49参数判读结论信息表', 'asc_param_interpretation_results', 'DB', 'DATA', '', 'asc_param_interpretation_results', NULL, NULL, NULL, NULL, NULL, '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_subtype_info` VALUES ('sub_074', 'cabin_001', '核心舱', 'center_003', '航天员支持中心', 'main_019', '通用判读知识数据', 'subType', '指令判读结论信息表', '3.50.1 表5.2.50指令判读结论信息表', 'asc_instruct_interpretation_results', 'DB', 'DATA', '', 'asc_instruct_interpretation_results', NULL, NULL, NULL, NULL, NULL, '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_subtype_info` VALUES ('sub_075', 'cabin_001', '核心舱', 'center_003', '航天员支持中心', 'main_019', '通用判读知识数据', 'subType', '指令参数识别记录表', '3.51.1 表5.2.51指令参数识别记录表', 'asc_instruct_parm_records', 'DB', 'DATA', '', 'asc_instruct_parm_records', NULL, NULL, NULL, NULL, NULL, '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_subtype_info` VALUES ('sub_076', 'cabin_001', '核心舱', 'center_003', '航天员支持中心', 'main_019', '通用判读知识数据', 'subType', '人工干预表', '3.52.1 表5.2.52人工干预表', 'asc_human_intervene', 'DB', 'DATA', '', 'asc_human_intervene', NULL, NULL, NULL, NULL, NULL, '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_subtype_info` VALUES ('sub_077', 'cabin_001', '核心舱', 'center_003', '航天员支持中心', 'main_019', '通用判读知识数据', 'subType', '通报信息表', '3.53.1 表5.2.53通报信息表', 'asc_notification_info', 'DB', 'DATA', '', 'asc_notification_info', NULL, NULL, NULL, NULL, NULL, '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_subtype_info` VALUES ('sub_078', 'cabin_001', '核心舱', 'center_003', '航天员支持中心', 'main_020', '数据成果', 'subType', '数据成果和成果报告文件元信息表', '3.53.2 表5.2.54数据成果和成果报告文件元信息表', 'asc_data_results_report', 'WEB', 'FILE', '', 'asc_data_results_report', NULL, NULL, NULL, NULL, NULL, '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_subtype_info` VALUES ('sub_079', 'cabin_001', '核心舱', 'center_004', '空间站运营管理中心', 'main_021', '规划中心数据', 'subType', '空间站规划数据文件元信息表', '4.1.1 表5.2.1空间站规划数据文件元信息表', 'smc_spacestation_plan_datafile', 'WEB,API', 'FILE', '', 'smc_spacestation_plan_datafile', NULL, NULL, NULL, NULL, NULL, '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_subtype_info` VALUES ('sub_080', 'cabin_001', '核心舱', 'center_004', '空间站运营管理中心', 'main_021', '规划中心数据', 'subType', '空间站规划数据文件标志定义表', '表5.2.2空间站规划数据文件标志定义表', 'smc_spacestation_plan_datafile_flagdefine', 'WEB,API', 'FILE', '', 'smc_spacestation_plan_datafile_flagdefine', NULL, NULL, NULL, NULL, NULL, '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_subtype_info` VALUES ('sub_081', 'cabin_001', '核心舱', 'center_004', '空间站运营管理中心', 'main_021', '规划中心数据', 'subType', '数据成果和成果报告文件元信息表', '4.2.1 表5.2.3数据成果和成果报告文件元信息表', 'smc_data_result_report0', 'WEB', 'FILE', '', 'smc_data_result_report', NULL, NULL, NULL, NULL, NULL, '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_subtype_info` VALUES ('sub_082', 'cabin_001', '核心舱', 'center_004', '空间站运营管理中心', 'main_021', '规划中心数据', 'subType', '其他存档数据文件元信息表', '4.3.1 表5.2.4其他存档数据文件元信息表', 'smc_other_archive_datafile0', 'WEB', 'FILE', '', 'smc_other_archive_datafile', NULL, NULL, NULL, NULL, NULL, '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_subtype_info` VALUES ('sub_083', 'cabin_001', '核心舱', 'center_004', '空间站运营管理中心', 'main_022', '仿真中心数据', 'subType', '仿真模型文件元信息表', '4.4.1 表5.3.1仿真模型文件元信息表', 'smc_simulation_model', 'WEB,API', 'FILE', '', 'smc_simulation_model', NULL, NULL, NULL, NULL, NULL, '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_subtype_info` VALUES ('sub_084', 'cabin_001', '核心舱', 'center_004', '空间站运营管理中心', 'main_022', '仿真中心数据', 'subType', '数据成果和成果报告文件元信息表', '4.5.1 表5.3.2数据成果和成果报告文件元信息表', 'smc_data_result_report1', 'WEB', 'FILE', '', 'smc_data_result_report', NULL, NULL, NULL, NULL, NULL, '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_subtype_info` VALUES ('sub_085', 'cabin_001', '核心舱', 'center_004', '空间站运营管理中心', 'main_022', '仿真中心数据', 'subType', '其他存档数据文件元信息表', '4.6.1 表5.3.3其他存档数据文件元信息表', 'smc_other_archive_datafile1', 'WEB', 'FILE', '', 'smc_other_archive_datafile', NULL, NULL, NULL, NULL, NULL, '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_subtype_info` VALUES ('sub_086', 'cabin_001', '核心舱', 'center_005', '运行控制中心', 'main_023', '完整遥测数据', 'subType', '完整遥测数据库表信息', '5.2.1 表5.2.1完整遥测数据库表信息', 'occ_complete_telemetry_data', 'ONE_WAY_GATEWAY', 'FILE', '', 'occ_complete_telemetry_data', NULL, NULL, NULL, NULL, NULL, '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_subtype_info` VALUES ('sub_087', 'cabin_001', '核心舱', 'center_005', '运行控制中心', 'main_023', '完整遥测数据', 'subType', '数据库表说明信息', '5.2.2 表5.2.2数据库表说明信息', 'occ_table_description', 'ONE_WAY_GATEWAY', 'FILE', '', 'occ_table_description', NULL, NULL, NULL, NULL, NULL, '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_subtype_info` VALUES ('sub_088', 'cabin_001', '核心舱', 'center_005', '运行控制中心', 'main_023', '完整遥测数据', 'subType', '遥测参数说明信息', '5.2.3 表5.2.3遥测参数说明信息', 'occ_telemetry_parameter_description', 'ONE_WAY_GATEWAY', 'FILE', '', 'occ_telemetry_parameter_description', NULL, NULL, NULL, NULL, NULL, '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_subtype_info` VALUES ('sub_089', 'cabin_001', '核心舱', 'center_005', '运行控制中心', 'main_024', '图像话音数据', 'subType', '图像、话音数据文件元信息表', '5.3.1 表5.2.4图像、话音数据文件元信息表', 'occ_image_voice_datafile', 'API', 'FILE', '', 'occ_image_voice_datafile', NULL, NULL, NULL, NULL, NULL, '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_subtype_info` VALUES ('sub_090', 'cabin_001', '核心舱', 'center_005', '运行控制中心', 'main_025', '全局共享数据', 'subType', '全局共享数据文件元信息表', '5.4.1 表5.2.5全局共享数据文件元信息表', 'occ_global_share_datafile', 'ONE_WAY_GATEWAY', 'FILE', '', 'occ_global_share_datafile', NULL, NULL, NULL, NULL, NULL, '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_subtype_info` VALUES ('sub_091', 'cabin_001', '核心舱', 'center_005', '运行控制中心', 'main_026', '专有数据', 'subType', '专有数据文件元信息表', '5.5.1 表5.2.6专有数据文件元信息表', 'occ_proprietary_datafile', 'ONE_WAY_GATEWAY', 'FILE', '', 'occ_proprietary_datafile', NULL, NULL, NULL, NULL, NULL, '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_subtype_info` VALUES ('sub_092', 'cabin_001', '核心舱', 'center_005', '运行控制中心', 'main_027', '数据成果', 'subType', '数据成果和成果报告文件元信息表', '5.6.1 表5.2.7数据成果和成果报告文件元信息表', 'occ_data_result_report', 'WEB', 'FILE', '', 'occ_data_result_report', NULL, NULL, NULL, NULL, NULL, '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
COMMIT;

-- ----------------------------
-- Table structure for sys_system_code
-- ----------------------------
DROP TABLE IF EXISTS `sys_system_code`;
CREATE TABLE `sys_system_code` (
  `code_type` varchar(100) NOT NULL COMMENT '代码类型',
  `code_id` varchar(200) NOT NULL COMMENT '代码编号',
  `language` varchar(20) NOT NULL COMMENT '语言',
  `value` varchar(500) NOT NULL COMMENT '代码值',
  `parents_id` varchar(100) DEFAULT NULL COMMENT '上级代码编号',
  `code_level` varchar(5) DEFAULT NULL COMMENT '代码等级',
  `order_seq` int(11) DEFAULT NULL COMMENT '代码顺序',
  `valid_date` datetime DEFAULT NULL COMMENT '生效日期',
  `code_remark` varchar(2000) DEFAULT NULL COMMENT '代码备注',
  `valid_flag` varchar(5) DEFAULT NULL COMMENT '效力标志',
  `invalid_department_id` varchar(50) DEFAULT NULL COMMENT '失效用户所属部门编号',
  `invalid_user_id` varchar(50) DEFAULT NULL COMMENT '失效用户编号',
  `invalid_datetime` datetime DEFAULT NULL COMMENT '失效时间',
  `create_department_id` varchar(50) DEFAULT NULL COMMENT '创建用户所属部门编号',
  `create_user_id` varchar(50) DEFAULT NULL COMMENT '创建用户编号',
  `create_datetime` datetime DEFAULT NULL COMMENT '创建时间',
  `update_department_id` varchar(50) DEFAULT NULL COMMENT '更新用户部门所属编号',
  `update_user_id` varchar(50) DEFAULT NULL COMMENT '更新用户编号',
  `update_datetime` datetime DEFAULT NULL COMMENT '更新时间',
  PRIMARY KEY (`code_type`,`code_id`,`language`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='系统代码表';

-- ----------------------------
-- Records of sys_system_code
-- ----------------------------
BEGIN;
INSERT INTO `sys_system_code` VALUES ('message_code', 'ERR100001', 'zh_CN', '数据库中没有相应记录！', NULL, '1', NULL, NULL, NULL, '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_system_code` VALUES ('message_code', 'ERR100001', 'zh_HK', '數據庫中沒有相應記錄！', NULL, '1', NULL, NULL, NULL, '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_system_code` VALUES ('message_code', 'ERR100002', 'zh_CN', '传入操作标志不符！', NULL, '1', NULL, NULL, NULL, '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_system_code` VALUES ('message_code', 'ERR100002', 'zh_HK', '傳入操作標誌不符！', NULL, '1', NULL, NULL, NULL, '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_system_code` VALUES ('message_code', 'ERR100003', 'en_US', 'Enter the verification code errors, please re-enter after login!', NULL, '1', NULL, NULL, NULL, '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_system_code` VALUES ('message_code', 'ERR100003', 'zh_CN', '输入的验证码错误，请重新输入后再登录！', NULL, '1', NULL, NULL, NULL, '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_system_code` VALUES ('message_code', 'ERR100003', 'zh_HK', '輸入的驗證碼錯誤，請重新輸入後再登錄！', NULL, '1', NULL, NULL, NULL, '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_system_code` VALUES ('message_code', 'ERR100004', 'en_US', 'User ID is empty!', NULL, '1', NULL, NULL, NULL, '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_system_code` VALUES ('message_code', 'ERR100004', 'zh_CN', '用户编号为空！', NULL, '1', NULL, NULL, NULL, '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_system_code` VALUES ('message_code', 'ERR100004', 'zh_HK', '用戶編號為空！', NULL, '1', NULL, NULL, NULL, '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_system_code` VALUES ('message_code', 'ERR100005', 'en_US', 'Save failed!', NULL, '1', NULL, NULL, NULL, '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_system_code` VALUES ('message_code', 'ERR100005', 'zh_CN', '保存失败！', NULL, '1', NULL, NULL, NULL, '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_system_code` VALUES ('message_code', 'ERR100005', 'zh_HK', '保存失敗！', NULL, '1', NULL, NULL, NULL, '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_system_code` VALUES ('message_code', 'ERR100006', 'en_US', 'Get logged in user group information error, error information is ', NULL, '1', NULL, NULL, NULL, '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_system_code` VALUES ('message_code', 'ERR100006', 'zh_CN', '获取登录用户的用户组信息出错，错误信息为', NULL, '1', NULL, NULL, NULL, '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_system_code` VALUES ('message_code', 'ERR100006', 'zh_HK', '獲取登錄用戶的用戶組信息出錯，錯誤信息為', NULL, '1', NULL, NULL, NULL, '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_system_code` VALUES ('message_code', 'ERR100007', 'en_US', 'Get logged in user role information error, error information is ', NULL, '1', NULL, NULL, NULL, '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_system_code` VALUES ('message_code', 'ERR100007', 'zh_CN', '获取登录用户的角色信息出错，错误信息为', NULL, '1', NULL, NULL, NULL, '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_system_code` VALUES ('message_code', 'ERR100007', 'zh_HK', '獲取登錄用戶的角色信息出錯，錯誤信息為', NULL, '1', NULL, NULL, NULL, '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_system_code` VALUES ('message_code', 'ERR100008', 'en_US', 'get menu privilege error!', NULL, '1', NULL, NULL, NULL, '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_system_code` VALUES ('message_code', 'ERR100008', 'zh_CN', '获取菜单权限错误！', NULL, '1', NULL, NULL, NULL, '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_system_code` VALUES ('message_code', 'ERR100008', 'zh_HK', '獲取菜單權限錯誤！', NULL, '1', NULL, NULL, NULL, '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_system_code` VALUES ('message_code', 'ERR100009', 'en_US', 'userId or password is null!', NULL, '1', NULL, NULL, NULL, '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_system_code` VALUES ('message_code', 'ERR100009', 'zh_CN', '用户编码或密码为空！', NULL, '1', NULL, NULL, NULL, '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_system_code` VALUES ('message_code', 'ERR100009', 'zh_HK', '用戶編碼或密碼為空！', NULL, '1', NULL, NULL, NULL, '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_system_code` VALUES ('message_code', 'ERR100010', 'en_US', 'is required.', NULL, '1', NULL, NULL, NULL, '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_system_code` VALUES ('message_code', 'ERR100010', 'zh_CN', '爲必填項。', NULL, '1', NULL, NULL, NULL, '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_system_code` VALUES ('message_code', 'ERR100010', 'zh_HK', '为必填项。', NULL, '1', NULL, NULL, NULL, '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_system_code` VALUES ('message_code', 'ERR100011', 'en_US', 'Wrong old password!', NULL, '1', NULL, NULL, NULL, '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_system_code` VALUES ('message_code', 'ERR100011', 'zh_CN', '舊密碼錯誤！', NULL, '1', NULL, NULL, NULL, '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_system_code` VALUES ('message_code', 'ERR100011', 'zh_HK', '旧密码错误！', NULL, '1', NULL, NULL, NULL, '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_system_code` VALUES ('message_code', 'ERR100012', 'en_US', 'User already exists!', NULL, '1', NULL, NULL, NULL, '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_system_code` VALUES ('message_code', 'ERR100012', 'zh_CN', '用戶已存在！', NULL, '1', NULL, NULL, NULL, '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_system_code` VALUES ('message_code', 'ERR100012', 'zh_HK', '用户已存在！', NULL, '1', NULL, NULL, NULL, '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_system_code` VALUES ('message_code', 'ERR100013', 'en_US', ':Date formate should be YYYY-MM-DD.', NULL, '1', NULL, NULL, NULL, '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_system_code` VALUES ('message_code', 'ERR100013', 'zh_CN', '：日期格式必須爲YYYY-MM-DD。', NULL, '1', NULL, NULL, NULL, '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_system_code` VALUES ('message_code', 'ERR100013', 'zh_HK', '：日期格式必须为YYYY-MM-DD。', NULL, '1', NULL, NULL, NULL, '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_system_code` VALUES ('message_code', 'ERR100014', 'en_US', 'Unmatched operation type:', NULL, '1', NULL, NULL, NULL, '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_system_code` VALUES ('message_code', 'ERR100014', 'zh_CN', '不合適的操作類型：', NULL, '1', NULL, NULL, NULL, '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_system_code` VALUES ('message_code', 'ERR100014', 'zh_HK', '不合适的操作类型：', NULL, '1', NULL, NULL, NULL, '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_system_code` VALUES ('message_code', 'ERR100015', 'en_US', 'The user name is incorrect, login again after your re-enter please!', NULL, '1', NULL, NULL, NULL, '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_system_code` VALUES ('message_code', 'ERR100015', 'zh_CN', '输入的用户不正确，请重新输入后再次登录！', NULL, '1', NULL, NULL, NULL, '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_system_code` VALUES ('message_code', 'ERR100015', 'zh_HK', '輸入的用戶不正確，請重新輸入後再次登錄！', NULL, '1', NULL, NULL, NULL, '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_system_code` VALUES ('message_code', 'ERR100016', 'en_US', 'The password is incorrect, login again after your re-enter please!', NULL, '1', NULL, NULL, NULL, '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_system_code` VALUES ('message_code', 'ERR100016', 'zh_CN', '输入的密码不正确，请重新输入后再次登录！', NULL, '1', NULL, NULL, NULL, '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_system_code` VALUES ('message_code', 'ERR100016', 'zh_HK', '輸入的密碼不正確，請重新輸入後再次登錄！', NULL, '1', NULL, NULL, NULL, '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_system_code` VALUES ('message_code', 'ERR100017', 'en_US', 'The user name or password is incorrect, login again after your re-enter please!', NULL, '1', NULL, NULL, NULL, '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_system_code` VALUES ('message_code', 'ERR100017', 'zh_CN', '输入的用户或密码不正确，请重新输入后再次登录！', NULL, '1', NULL, NULL, NULL, '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_system_code` VALUES ('message_code', 'ERR100017', 'zh_HK', '輸入的用戶或密碼不正確，請重新輸入後再次登錄！', NULL, '1', NULL, NULL, NULL, '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_system_code` VALUES ('message_code', 'ERR100018', 'en_US', 'The user is locked, contact your system administrator to unlock and then login please!', NULL, '1', NULL, NULL, NULL, '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_system_code` VALUES ('message_code', 'ERR100018', 'zh_CN', '输入的用户已被锁定，请联系系统管理员解锁后再登录！', NULL, '1', NULL, NULL, NULL, '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_system_code` VALUES ('message_code', 'ERR100018', 'zh_HK', '輸入的用戶已被鎖定，請聯繫系統管理員解鎖後再登錄！', NULL, '1', NULL, NULL, NULL, '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_system_code` VALUES ('message_code', 'ERR100019', 'en_US', 'Unknown login exception, contact the system administrator please!', NULL, '1', NULL, NULL, NULL, '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_system_code` VALUES ('message_code', 'ERR100019', 'zh_CN', '未知登錄異常，請聯繫系統管理員！', NULL, '1', NULL, NULL, NULL, '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_system_code` VALUES ('message_code', 'ERR100019', 'zh_HK', '未知登录异常，请联系系统管理员！', NULL, '1', NULL, NULL, NULL, '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_system_code` VALUES ('message_code', 'ERR100020', 'en_US', 'Please login from the correct login page!', NULL, '1', NULL, NULL, NULL, '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_system_code` VALUES ('message_code', 'ERR100020', 'zh_CN', '请使用正确的登录页面进行登录！', NULL, '1', NULL, NULL, NULL, '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_system_code` VALUES ('message_code', 'ERR100020', 'zh_HK', '請使用正確的登錄頁面進行登錄！', NULL, '1', NULL, NULL, NULL, '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_system_code` VALUES ('message_code', 'ERR100021', 'en_US', 'Unknown error', NULL, '1', NULL, NULL, NULL, '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_system_code` VALUES ('message_code', 'ERR100021', 'zh_CN', '未知错误', NULL, '1', NULL, NULL, NULL, '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_system_code` VALUES ('message_code', 'ERR100021', 'zh_HK', '未知錯誤', NULL, '1', NULL, NULL, NULL, '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_system_code` VALUES ('message_code', 'ERR100022', 'en_US', 'There is corresponding record in the database!', NULL, '1', NULL, NULL, NULL, '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_system_code` VALUES ('message_code', 'ERR100022', 'zh_CN', '数据库中已有相应记录！', NULL, '1', NULL, NULL, NULL, '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_system_code` VALUES ('message_code', 'ERR100022', 'zh_HK', '數據庫中已有相應記錄！', NULL, '1', NULL, NULL, NULL, '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_system_code` VALUES ('message_code', 'ERR100023', 'en_US', 'Unauthorized access! if continue to access the system unauthorizedly, the account will be locked!', NULL, '1', NULL, NULL, NULL, '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_system_code` VALUES ('message_code', 'ERR100023', 'zh_CN', '非法访问，如继续进行非正常方式访问系统，帐户将被锁定！', NULL, '1', NULL, NULL, NULL, '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_system_code` VALUES ('message_code', 'ERR100023', 'zh_HK', '非法訪問，如繼續進行非正常方式訪問系統，帳戶將被鎖定！', NULL, '1', NULL, NULL, NULL, '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_system_code` VALUES ('message_code', 'MSG100001', 'en_US', 'Successfully added!', NULL, '1', NULL, NULL, NULL, '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_system_code` VALUES ('message_code', 'MSG100001', 'zh_CN', '新增保存成功！', NULL, '1', NULL, NULL, NULL, '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_system_code` VALUES ('message_code', 'MSG100001', 'zh_HK', '新增保存成功！', NULL, '1', NULL, NULL, NULL, '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_system_code` VALUES ('message_code', 'MSG100002', 'en_US', 'Successfully modified!', NULL, '1', NULL, NULL, NULL, '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_system_code` VALUES ('message_code', 'MSG100002', 'zh_CN', '修改保存成功！', NULL, '1', NULL, NULL, NULL, '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_system_code` VALUES ('message_code', 'MSG100002', 'zh_HK', '修改保存成功！', NULL, '1', NULL, NULL, NULL, '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_system_code` VALUES ('message_code', 'MSG100003', 'en_US', 'Delete operation is successful with total deleted record of [@count]!', NULL, '1', NULL, NULL, NULL, '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_system_code` VALUES ('message_code', 'MSG100003', 'zh_CN', '删除操作成功，共删除记录[@count]条！', NULL, '1', NULL, NULL, NULL, '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_system_code` VALUES ('message_code', 'MSG100003', 'zh_HK', '刪除操作成功，共刪除記錄[@count]條！', NULL, '1', NULL, NULL, NULL, '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_system_code` VALUES ('message_code', 'MSG100004', 'en_US', 'The operation was successful!', NULL, '1', NULL, NULL, NULL, '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_system_code` VALUES ('message_code', 'MSG100004', 'zh_CN', '操作成功！', NULL, '1', NULL, NULL, NULL, '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_system_code` VALUES ('message_code', 'MSG100004', 'zh_HK', '操作成功！', NULL, '1', NULL, NULL, NULL, '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_system_code` VALUES ('message_code', 'MSG100005', 'en_US', 'Successfully saved!', NULL, '1', NULL, NULL, NULL, '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_system_code` VALUES ('message_code', 'MSG100005', 'zh_CN', '保存成功！', NULL, '1', NULL, NULL, NULL, '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_system_code` VALUES ('message_code', 'MSG100005', 'zh_HK', '保存成功！', NULL, '1', NULL, NULL, NULL, '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_system_code` VALUES ('message_code', 'MSG100006', 'en_US', 'Valid registration mark', NULL, '1', NULL, NULL, NULL, '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_system_code` VALUES ('message_code', 'MSG100006', 'zh_CN', '合法的注册码', NULL, '1', NULL, NULL, NULL, '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_system_code` VALUES ('message_code', 'MSG100006', 'zh_HK', '合法的註冊碼', NULL, '1', NULL, NULL, NULL, '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_system_code` VALUES ('message_code', 'MSG100007', 'en_US', 'Invalid registration mark', NULL, '1', NULL, NULL, NULL, '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_system_code` VALUES ('message_code', 'MSG100007', 'zh_CN', '不合法的注册码', NULL, '1', NULL, NULL, NULL, '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_system_code` VALUES ('message_code', 'MSG100007', 'zh_HK', '不合法的註冊碼', NULL, '1', NULL, NULL, NULL, '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_system_code` VALUES ('message_code', 'MSG100008', 'en_US', 'Please enter a complete registration mark', NULL, '1', NULL, NULL, NULL, '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_system_code` VALUES ('message_code', 'MSG100008', 'zh_CN', '请输入完整注册码', NULL, '1', NULL, NULL, NULL, '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_system_code` VALUES ('message_code', 'MSG100008', 'zh_HK', '請輸入完整註冊碼', NULL, '1', NULL, NULL, NULL, '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_system_code` VALUES ('os_type', 'LINUX', 'zh_CH', 'LINUX', NULL, '1', 2, NULL, NULL, '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_system_code` VALUES ('os_type', 'MAC', 'zh_CH', 'MAC', NULL, '1', 4, NULL, NULL, '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_system_code` VALUES ('os_type', 'UNIX', 'zh_CH', 'UNIX', NULL, '1', 3, NULL, NULL, '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_system_code` VALUES ('os_type', 'WINDOW', 'zh_CH', 'WINDOW', NULL, '1', 1, NULL, NULL, '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_system_code` VALUES ('software_type', 'AI', 'zh_CN', 'AI框架类', NULL, '1', 6, NULL, NULL, '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_system_code` VALUES ('software_type', 'DATABASE', 'zh_CN', '数据库类', NULL, '1', 3, NULL, NULL, '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_system_code` VALUES ('software_type', 'LANGUAGE', 'zh_CN', '开发语言类', NULL, '1', 2, NULL, NULL, '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_system_code` VALUES ('software_type', 'MIDDLEWARE', 'zh_CH', '中间件类', NULL, '1', 4, NULL, NULL, '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_system_code` VALUES ('software_type', 'OS', 'zh_CN', '操作系统类', NULL, '1', 1, NULL, NULL, '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_system_code` VALUES ('software_type', 'TOOLS', 'zh_CN', '应用工具类', NULL, '1', 5, NULL, NULL, '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
COMMIT;

-- ----------------------------
-- Table structure for sys_system_config
-- ----------------------------
DROP TABLE IF EXISTS `sys_system_config`;
CREATE TABLE `sys_system_config` (
  `config_type` varchar(100) NOT NULL COMMENT '配置类型',
  `config_id` varchar(200) NOT NULL COMMENT '配置编号',
  `config_name` text NOT NULL COMMENT '配置名称',
  `config_value` text NOT NULL COMMENT '配置值',
  `parent_id` varchar(100) DEFAULT NULL COMMENT '上级配置编号',
  `config_level` varchar(5) DEFAULT NULL COMMENT '配置等级',
  `valid_date` datetime DEFAULT NULL COMMENT '生效日期',
  `config_remark` varchar(2000) DEFAULT NULL COMMENT '配置备注',
  `valid_flag` varchar(5) DEFAULT NULL COMMENT '效力标志',
  `invalid_department_id` varchar(50) DEFAULT NULL COMMENT '失效用户所属部门编号',
  `invalid_user_id` varchar(50) DEFAULT NULL COMMENT '失效用户编号',
  `invalid_datetime` datetime DEFAULT NULL COMMENT '失效时间',
  `create_department_id` varchar(50) DEFAULT NULL COMMENT '创建用户所属部门编号',
  `create_user_id` varchar(50) DEFAULT NULL COMMENT '创建用户编号',
  `create_datetime` datetime DEFAULT NULL COMMENT '创建时间',
  `update_department_id` varchar(50) DEFAULT NULL COMMENT '更新用户部门所属编号',
  `update_user_id` varchar(50) DEFAULT NULL COMMENT '更新用户编号',
  `update_datetime` datetime DEFAULT NULL COMMENT '更新时间',
  PRIMARY KEY (`config_type`,`config_id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='系统配置表';

-- ----------------------------
-- Records of sys_system_config
-- ----------------------------
BEGIN;
INSERT INTO `sys_system_config` VALUES ('fileUploadPath', 'softwareIconPath', '软件图标上传路径', '/opt/softwarewarehouse/icon', NULL, NULL, NULL, NULL, '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_system_config` VALUES ('fileUploadPath', 'softwareImagePath', '软件上传路径', '/opt/softwarewarehouse/image', NULL, NULL, NULL, NULL, '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_system_config` VALUES ('loginControl', 'lockUserFailCount', '锁定用户帐户失败登录次数', '3', NULL, '1', NULL, NULL, '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_system_config` VALUES ('loginControl', 'lockUserIllegalCount', '锁定用户帐户非法访问次数', '20', NULL, '1', NULL, NULL, '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_system_config` VALUES ('software_type', 'LANGUAGE', '开发语言类', '开发语言类', NULL, NULL, NULL, NULL, '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_system_config` VALUES ('software_type', 'OS', '操作系统类', '操作系统类', NULL, NULL, NULL, NULL, '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sys_system_config` VALUES ('software_type', 'TOOLS', '应用工具类', '应用工具类', NULL, NULL, NULL, NULL, '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
COMMIT;

-- ----------------------------
-- Table structure for ter_apply_info
-- ----------------------------
DROP TABLE IF EXISTS `ter_apply_info`;
CREATE TABLE `ter_apply_info` (
  `id` varchar(225) COLLATE utf8_unicode_ci NOT NULL COMMENT 'id',
  `apply_code` varchar(225) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '申请代码',
  `ip` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '终端网卡IP',
  `mac` char(10) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT 'Mac地址',
  `applicant_id` varchar(225) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '申请人编号',
  `applicant_name` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '申请人名称',
  `phone` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '联系方式',
  `center_name` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '中心名称',
  `apply_datetime` datetime DEFAULT NULL COMMENT '申请时间',
  `valid_flag` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '失效标识',
  `status` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '状态',
  `create_datetime` datetime DEFAULT NULL COMMENT '创建时间',
  `create_id` varchar(225) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '创建编号',
  `create_name` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '创建人名称',
  `create_department_id` varchar(225) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '创建部门编号',
  `create_department_name` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '创建部门名称',
  `note` varchar(225) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '备注',
  `virtual_system` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '瑞星虚拟化系统安全软件客户端',
  `identity_system` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '中孚身份鉴别系统客户端',
  `qiming_system` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '启明主机监控与审计系统客户端',
  `confiden_system` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '中孚涉密计算机及移动存储介质保密管理系统客户端',
  `control_system` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '中孚网络接入控制系统客户端',
  `print_system` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '中孚打印安全监控与审计系统客户端',
  `copy_system` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '中孚光盘刻录监控与审计系统客户端',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci COMMENT='终端申请信息表';



-- ----------------------------
-- Table structure for ter_inspect_info
-- ----------------------------
DROP TABLE IF EXISTS `ter_inspect_info`;
CREATE TABLE `ter_inspect_info` (
  `id` varchar(225) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT 'id',
  `name` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '名称',
  `result` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '结果',
  `detail` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '详情',
  `create_datetime` datetime DEFAULT NULL COMMENT '创建时间',
  `modify_datetime` datetime DEFAULT NULL COMMENT '修改时间',
  `apply_id` varchar(225) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '申请编号',
  `description` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '描述'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci COMMENT='终端检查信息';


-- ----------------------------
-- Table structure for ts_apply_info
-- ----------------------------
DROP TABLE IF EXISTS `ts_apply_info`;
CREATE TABLE `ts_apply_info` (
  `id` varchar(120) COLLATE utf8_unicode_ci NOT NULL COMMENT 'id',
  `apply_user_id` varchar(120) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '申请人id',
  `apply_time` varchar(120) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '申请时间',
  `apply_center` varchar(120) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '用户中心',
  `size` varchar(120) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '规格',
  `node` varchar(120) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '计算节点(台)',
  `storage` varchar(120) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '存储空间',
  `band_width` varchar(120) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '占用带宽',
  `test_time_start` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '测试开始时间',
  `test_time_end` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '测试结束时间',
  `apply_env` varchar(120) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '申请环境描述',
  `apply_user_priority` varchar(120) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '用户申请优先级',
  `apply_admin_priority` varchar(120) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '管理员调整优先级',
  `disk_type` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '系统盘类型',
  `storage_size` varchar(120) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '系统盘容量',
  `image` varchar(120) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '系统镜像',
  `number` varchar(10) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '创建数量',
  `data_status` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '审核状态',
  `job_id` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '工单id',
  `server_name` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '服务器名称',
  `size_name` varchar(400) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '规格名称',
  `image_name` varchar(400) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '镜像名称',
  `image_version` varchar(400) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '镜像版本',
  `image_type` varchar(400) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '镜像类型',
  `size_ram` varchar(10) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '规格ram',
  `image_platform` varchar(400) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '镜像平台',
  `size_cpu` char(10) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '规格cpu',
  `size_disk` char(10) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '规格disk',
  `apply_center_name` char(10) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '用户中心名称',
  `server_code` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '异步返回服务器错误码',
  `server_msg` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '异步返回服务器错误消息',
  `storage_disk_size` varchar(10) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '数据盘存储容量',
  `test_day` varchar(10) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '测试时长',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci COMMENT='云上测试申请信息';


-- ----------------------------
-- Table structure for ts_apply_result
-- ----------------------------
DROP TABLE IF EXISTS `ts_apply_result`;
CREATE TABLE `ts_apply_result` (
  `id` varchar(120) COLLATE utf8_unicode_ci NOT NULL COMMENT 'id',
  `apply_id` varchar(120) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '订单id',
  `job_id` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '工单id',
  `ip` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT 'ip地址',
  `create_time` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '创建时间',
  `mac` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT 'mac地址',
  `data_status` varchar(10) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '数据状态',
  `server_id` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '服务器id',
  `default_name` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '用戶名',
  `default_pwd` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '用户密码',
  `server_name` varchar(300) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '服务器名称',
  `expiredTime` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '过期时间',
  `expired_time` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '过期时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci COMMENT='云上测试申请后结果表';


-- ----------------------------
-- Table structure for ts_menu_info
-- ----------------------------
DROP TABLE IF EXISTS `ts_menu_info`;
CREATE TABLE `ts_menu_info` (
  `id` varchar(120) COLLATE utf8_unicode_ci NOT NULL COMMENT 'id',
  `menu_name` varchar(120) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '菜单名称',
  `menu_title` varchar(300) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '菜单title',
  `menu_link` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '菜单链接',
  `parent_id` varchar(120) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '父级菜单id',
  `menu_level` varchar(2) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '菜单级别',
  `menu_order` varchar(2) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '排序',
  `menu_icon` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '菜单图标',
  `component` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '组件',
  `active_menu` varchar(300) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '激活的菜单',
  `hidden` varchar(10) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '是否显示',
  `create_time` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '创建时间',
  `create_user_id` varchar(120) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '菜单级别',
  `create_user_name` varchar(120) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '创建人姓名',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci COMMENT='云上测试菜单表';

-- ----------------------------
-- Records of ts_menu_info
-- ----------------------------
BEGIN;
INSERT INTO `ts_menu_info` VALUES ('001', 'testAuth', '云平台运行管理与软件云上测试', '/testAuth', '', '1', '1', NULL, '@/views/layout', NULL, 'false', '2020-11-09 17:30', 'admin', 'admin');
INSERT INTO `ts_menu_info` VALUES ('001001', 'apply', '申请列表', '/testAuth/apply', '001', '2', '1', 'shenqing', 'test-auth/apply/index', NULL, 'false', '2020-11-09 17:30', 'admin', 'admin');
INSERT INTO `ts_menu_info` VALUES ('001002', 'resources', '资源列表', '/testAuth/resources', '001', '2', '2', 'shenqing', 'test-auth/resources/index', NULL, 'false', '2020-11-09 17:30', 'admin', 'admin');
INSERT INTO `ts_menu_info` VALUES ('001003', 'resourcesDetail', '资源详情', '/testAuth/resources/detail', '001', '2', '3', 'shenqing', 'test-auth/resources/detail', '/testAuth/resources', 'true', '2020-11-09 17:30', 'admin', 'admin');
INSERT INTO `ts_menu_info` VALUES ('001004', 'approval', '审核列表', '/testAuth/approval', '001', '2', '4', 'shenpi', 'test-auth/approval/index', NULL, 'false', '2020-11-09 17:30', 'admin', 'admin');
INSERT INTO `ts_menu_info` VALUES ('001005', 'approvalDetail', '审核', '/testAuth/approval/detail', '001', '2', '5', 'shenpi', 'test-auth/approval/detail', '/testAuth/approval', 'true', '2020-11-09 17:30', 'admin', 'admin');
INSERT INTO `ts_menu_info` VALUES ('001006', 'resourcesAll', '全部资源', '/testAuth/resourcesAll', '001', '2', '6', 'shenqing', 'test-auth/resources/all', NULL, 'false', '2020-11-09 17:30', 'admin', 'admin');
INSERT INTO `ts_menu_info` VALUES ('001007', 'resourcesAllView', '资源详情', '/testAuth/resourcesAll/detail', '001', '2', '7', 'shenqing', 'test-auth/resources/detail', '/testAuth/resourcesAll', 'true', '2020-11-09 17:30', 'admin', 'admin');
INSERT INTO `ts_menu_info` VALUES ('001008', 'view', '资源总览', '/testAuth/view', '001', '2', '8', 'ziyuangailan', 'test-auth/view/index', NULL, 'false', '2020-11-09 17:30', 'admin', 'admin');
INSERT INTO `ts_menu_info` VALUES ('001009', 'applyDetail', '申请详情', '/testAuth/apply/detail', '001', '2', '9', 'shenpi', 'test-auth/approval/detail', '/testAuth/apply', 'true', '2020-11-09 17:30', 'admin', 'admin');
COMMIT;

-- ----------------------------
-- Table structure for ts_result_net
-- ----------------------------
DROP TABLE IF EXISTS `ts_result_net`;
CREATE TABLE `ts_result_net` (
  `id` varchar(120) COLLATE utf8_unicode_ci NOT NULL COMMENT 'id',
  `name` varchar(300) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '网卡名称',
  `result_id` varchar(120) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '服务器id',
  `server_mac` varchar(120) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '服务器mac地址',
  `create_time` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '创建时间',
  `ip` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT 'ip地址',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci COMMENT='云上测试申请结果网络表';

-- ----------------------------
-- Table structure for ts_role_menu_mapping
-- ----------------------------
DROP TABLE IF EXISTS `ts_role_menu_mapping`;
CREATE TABLE `ts_role_menu_mapping` (
  `id` varchar(120) COLLATE utf8_unicode_ci NOT NULL COMMENT 'id',
  `role_id` varchar(120) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT 'vdc角色id',
  `vdc_role_name` varchar(120) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT 'vdc角色名称',
  `menu_id` varchar(120) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '菜单id',
  `menu_name` varchar(120) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '菜单名称',
  `create_time` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci COMMENT='云上测试用户组-用户角色映射表';

-- ----------------------------
-- Records of ts_role_menu_mapping
-- ----------------------------
BEGIN;
INSERT INTO `ts_role_menu_mapping` VALUES ('000001', 'role_admin', '管理员角色', '001', '云平台运行管理与应用上云测试认证软件', '2020-11-01 17:42:00');
INSERT INTO `ts_role_menu_mapping` VALUES ('000002', 'role_admin', '管理员角色', '001004', '审核列表', '2020-11-01 17:42:00');
INSERT INTO `ts_role_menu_mapping` VALUES ('000003', 'role_admin', '管理员角色', '001005', '审核', '2020-11-01 17:42:00');
INSERT INTO `ts_role_menu_mapping` VALUES ('000004', 'role_admin', '管理员角色', '001006', '全部资源', '2020-11-01 17:42:00');
INSERT INTO `ts_role_menu_mapping` VALUES ('000005', 'role_admin', '管理员角色', '001007', '资源详情', '2020-11-01 17:42:00');
INSERT INTO `ts_role_menu_mapping` VALUES ('000006', 'role_admin', '管理员角色', '001008', '资源总览', '2020-11-01 17:42:00');
INSERT INTO `ts_role_menu_mapping` VALUES ('000007', 'role_user', '普通角色', '001', '云平台运行管理与应用上云测试认证软件', '2020-11-01 17:42:00');
INSERT INTO `ts_role_menu_mapping` VALUES ('000008', 'role_user', '普通角色', '001001', '申请列表', '2020-11-01 17:42:00');
INSERT INTO `ts_role_menu_mapping` VALUES ('000009', 'role_user', '普通角色', '001002', '资源列表', '2020-11-01 17:42:00');
INSERT INTO `ts_role_menu_mapping` VALUES ('000010', 'role_user', '普通角色', '001003', '资源详情', '2020-11-01 17:42:00');
INSERT INTO `ts_role_menu_mapping` VALUES ('000011', 'role_user', '普通角色', '001009', '申请详情', '2020-11-01 17:42:00');
COMMIT;

-- ----------------------------
-- Table structure for ts_role_user_mapping
-- ----------------------------
DROP TABLE IF EXISTS `ts_role_user_mapping`;
CREATE TABLE `ts_role_user_mapping` (
  `id` varchar(120) COLLATE utf8_unicode_ci NOT NULL COMMENT 'id',
  `user_id` varchar(120) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '用户id',
  `role_id` varchar(120) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '用户组id',
  `role_name` varchar(120) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '用户名',
  `create_time` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '创建时间',
  `create_user_id` varchar(120) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '创建人',
  `create_user_name` varchar(120) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '创建人姓名',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci COMMENT='云上测试角色-用户关系表';

-- ----------------------------
-- Records of ts_role_user_mapping
-- ----------------------------
BEGIN;
INSERT INTO `ts_role_user_mapping` VALUES ('HTY_admin01:role_admin', 'HTY_admin01', 'role_admin', '管理员角色', '2020-11-06 17:29:00', 'admin', 'admin');
INSERT INTO `ts_role_user_mapping` VALUES ('HTY_user01:role_user', 'HTY_user01', 'role_user', '普通角色', '2020-11-06 17:29:00', 'admin', 'admin');
INSERT INTO `ts_role_user_mapping` VALUES ('HTY_user02:role_user', 'HTY_user02', 'role_user', '普通角色', '2020-11-06 17:29:00', 'admin', 'admin');
INSERT INTO `ts_role_user_mapping` VALUES ('HTY_user03:role_user', 'HTY_user03', 'role_user', '普通角色', '2020-11-06 17:29:00', 'admin', 'admin');
COMMIT;

-- ----------------------------
-- Table structure for ts_user_info
-- ----------------------------
DROP TABLE IF EXISTS `ts_user_info`;
CREATE TABLE `ts_user_info` (
  `id` varchar(120) COLLATE utf8_unicode_ci NOT NULL COMMENT 'id',
  `user_id` varchar(120) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '用户id',
  `user_name` varchar(120) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '名称',
  `user_gender` varchar(10) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '性别',
  `user_phone` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '电话',
  `user_email` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '邮件',
  `user_flag` varchar(10) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '用户标识,标记超级管理员',
  `create_time` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '创建时间',
  `create_user_id` varchar(120) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '创建人id',
  `create_user_name` varchar(120) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '创建人姓名',
  `top_group_center` varchar(120) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '所属中心',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci COMMENT='云上测试用户表';

-- ----------------------------
-- Records of ts_user_info
-- ----------------------------
BEGIN;
INSERT INTO `ts_user_info` VALUES ('TESTVDC_HTY_admin01', 'HTY_admin01', '测试管理员1', '不明', '18209129012', '651108654@qq.com', '', '2020-11-06 17:16:00', 'admin', 'admin', 'center_003');
INSERT INTO `ts_user_info` VALUES ('TESTVDC_HTY_user01', 'HTY_user01', '测试员1', '不明', '18209129012', '651108654@qq.com', '', '2020-11-06 17:16:00', 'admin', 'admin', 'center_003');
INSERT INTO `ts_user_info` VALUES ('TESTVDC_HTY_user02', 'HTY_user02', '测试员2', '不明', '18209129012', '651108654@qq.com', '', '2020-11-06 17:16:00', 'admin', 'admin', 'center_001');
INSERT INTO `ts_user_info` VALUES ('TESTVDC_HTY_user03', 'HTY_user03', '测试员3', '不明', '18209129012', '651108654@qq.com', '', '2020-11-06 17:16:00', 'admin', 'admin', 'center_002');
COMMIT;

-- ----------------------------
-- Table structure for ts_vdc_role
-- ----------------------------
DROP TABLE IF EXISTS `ts_vdc_role`;
CREATE TABLE `ts_vdc_role` (
  `id` varchar(120) COLLATE utf8_unicode_ci NOT NULL COMMENT 'id',
  `role_id` varchar(120) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '角色id',
  `create_time` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '创建时间',
  `role_name` varchar(120) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '角色名称',
  `create_user_id` varchar(120) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '创建人',
  `parent_id` varchar(120) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '父用户组id',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci COMMENT='云上测试角色表';

-- ----------------------------
-- Records of ts_vdc_role
-- ----------------------------
BEGIN;
INSERT INTO `ts_vdc_role` VALUES ('role_admin', 'role_admin', '2020-11-06 17:08:00', '管理员角色', 'admin', NULL);
INSERT INTO `ts_vdc_role` VALUES ('role_user', 'role_user', '2020-11-06 17:08:00', '普通角色', 'admin', NULL);
COMMIT;

-- ----------------------------
-- Table structure for uc_department_info
-- ----------------------------
DROP TABLE IF EXISTS `uc_department_info`;
CREATE TABLE `uc_department_info` (
  `id` varchar(50) NOT NULL COMMENT '部门编号',
  `language` varchar(20) NOT NULL COMMENT '语言',
  `department_type` varchar(50) DEFAULT NULL COMMENT '部门类型',
  `department_name` varchar(200) DEFAULT NULL COMMENT '部门名称',
  `department_short_name` varchar(255) DEFAULT NULL COMMENT '部门简称',
  `department_address` text COMMENT '部门地址',
  `department_phone` varchar(30) DEFAULT NULL COMMENT '部门电话',
  `department_fax` varchar(30) DEFAULT NULL COMMENT '部门传真',
  `parents_id` varchar(50) DEFAULT NULL COMMENT '上级部门编号',
  `department_level` varchar(5) DEFAULT NULL COMMENT '部门等级',
  `website_url` varchar(100) DEFAULT NULL COMMENT '部门网页链接',
  `department_remark` varchar(4000) DEFAULT NULL COMMENT '部门备注',
  `outer_code` varchar(20) DEFAULT NULL COMMENT '部门外部编码',
  `inner_code` varchar(20) DEFAULT NULL COMMENT '部门内部编码',
  `department_status` varchar(5) DEFAULT NULL COMMENT '部门状态',
  `department_flag` varchar(5) DEFAULT NULL COMMENT '部门标志',
  `valid_flag` varchar(5) DEFAULT NULL COMMENT '效力标志',
  `invalid_department_id` varchar(50) DEFAULT NULL COMMENT '失效用户所属部门编号',
  `invalid_user_id` varchar(50) DEFAULT NULL COMMENT '失效用户编号',
  `invalid_datetime` datetime DEFAULT NULL COMMENT '失效时间',
  `create_department_id` varchar(50) DEFAULT NULL COMMENT '创建用户所属部门编号',
  `create_user_id` varchar(50) DEFAULT NULL COMMENT '创建用户编号',
  `create_datetime` datetime DEFAULT NULL COMMENT '创建时间',
  `update_department_id` varchar(50) DEFAULT NULL COMMENT '更新用户部门所属编号',
  `update_user_id` varchar(50) DEFAULT NULL COMMENT '更新用户编号',
  `update_datetime` datetime DEFAULT NULL COMMENT '更新时间',
  `top_group_center` varchar(256) DEFAULT NULL COMMENT '顶级用户组即机构',
  `order_seq` varchar(2) DEFAULT NULL COMMENT '排序',
  PRIMARY KEY (`id`,`language`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='用户中心部门信息表';

-- ----------------------------
-- Records of uc_department_info
-- ----------------------------
BEGIN;
INSERT INTO `uc_department_info` VALUES ('center_001', 'zh-CN', 'center', '有效载荷管理中心', '有效载荷管理中心', NULL, NULL, NULL, NULL, '1', NULL, NULL, NULL, NULL, NULL, NULL, '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'center_001', '1');
INSERT INTO `uc_department_info` VALUES ('center_002', 'zh-CN', 'center', '在轨航天器支持中心', '在轨航天器支持中心', NULL, NULL, NULL, NULL, '1', NULL, NULL, NULL, NULL, NULL, NULL, '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'center_002', '2');
INSERT INTO `uc_department_info` VALUES ('center_003', 'zh-CN', 'center', '航天员支持中心', '航天员支持中心', NULL, NULL, NULL, NULL, '1', NULL, NULL, NULL, NULL, NULL, NULL, '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'center_003', '3');
INSERT INTO `uc_department_info` VALUES ('center_004', 'zh-CN', 'center', '空间站运营管理中心', '空间站运营管理中心', NULL, NULL, NULL, NULL, '1', NULL, NULL, NULL, NULL, NULL, NULL, '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'center_004', '4');
INSERT INTO `uc_department_info` VALUES ('center_005', 'zh-CN', 'center', '运行控制中心', '运行控制中心', NULL, NULL, NULL, NULL, '1', NULL, NULL, NULL, NULL, NULL, NULL, '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'center_005', '5');
INSERT INTO `uc_department_info` VALUES ('center_006', 'zh-CN', 'center', '工程信息中心', '工程信息中心', NULL, NULL, NULL, NULL, '1', NULL, NULL, NULL, NULL, NULL, NULL, '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'center_006', '6');
INSERT INTO `uc_department_info` VALUES ('center_007', 'zh-CN', 'center', '仿真技术研究室', '仿真技术研究室', NULL, NULL, NULL, 'center_004', '2', NULL, NULL, NULL, NULL, NULL, NULL, '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'center_007', '7');
INSERT INTO `uc_department_info` VALUES ('center_008', 'zh-CN', 'center', '运营规划中心', '运营规划中心', NULL, NULL, NULL, 'center_004', '2', NULL, NULL, NULL, NULL, NULL, NULL, '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'center_008', '8');
INSERT INTO `uc_department_info` VALUES ('center_009', 'zh-CN', 'center', '运控管理系统', '运控管理系统', NULL, NULL, NULL, 'center_001', '2', NULL, NULL, NULL, NULL, NULL, NULL, '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'center_009', '9');
INSERT INTO `uc_department_info` VALUES ('center_010', 'zh-CN', 'center', '科学与应用数据中心', '科学与应用数据中心', NULL, NULL, NULL, 'center_001', '2', NULL, NULL, NULL, NULL, NULL, NULL, '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'center_010', '10');
COMMIT;

-- ----------------------------
-- Table structure for uc_group_info
-- ----------------------------
DROP TABLE IF EXISTS `uc_group_info`;
CREATE TABLE `uc_group_info` (
  `id` varchar(50) NOT NULL COMMENT '用户组编号',
  `language` varchar(20) NOT NULL COMMENT '语言',
  `group_type` varchar(20) DEFAULT NULL COMMENT '用户组类型',
  `group_type_name` varchar(50) DEFAULT NULL COMMENT '用户组类型名称',
  `group_group` varchar(20) DEFAULT NULL COMMENT '用户组分组',
  `group_group_name` varchar(200) DEFAULT NULL COMMENT '用户组分组名称',
  `parent_id` varchar(120) DEFAULT NULL COMMENT '父级id',
  `group_name` varchar(100) DEFAULT NULL COMMENT '用户组名称',
  `group_description` varchar(2000) DEFAULT NULL COMMENT '用户组描述',
  `valid_flag` varchar(5) DEFAULT NULL COMMENT '效力标志',
  `invalid_department_id` varchar(50) DEFAULT NULL COMMENT '失效用户所属部门编号',
  `invalid_user_id` varchar(50) DEFAULT NULL COMMENT '失效用户编号',
  `invalid_datetime` datetime DEFAULT NULL COMMENT '失效时间',
  `create_department_id` varchar(50) DEFAULT NULL COMMENT '创建用户所属部门编号',
  `create_user_id` varchar(50) DEFAULT NULL COMMENT '创建用户编号',
  `create_datetime` datetime DEFAULT NULL COMMENT '创建时间',
  `update_department_id` varchar(50) DEFAULT NULL COMMENT '更新用户部门所属编号',
  `update_user_id` varchar(50) DEFAULT NULL COMMENT '更新用户编号',
  `update_datetime` datetime DEFAULT NULL COMMENT '更新时间',
  `top_group_center` varchar(256) DEFAULT NULL COMMENT '顶级用户组即机构',
  PRIMARY KEY (`id`,`language`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='用户中心用户组信息表';

-- ----------------------------
-- Records of uc_group_info
-- ----------------------------
BEGIN;
-- INSERT INTO `uc_group_info` VALUES ('root', 'zh-CN', NULL, NULL, NULL, NULL, NULL, '云平台根用户组', NULL, '1', NULL, NULL, NULL, NULL, 'admin', '2020-10-21 11:40:40', NULL, 'admin', NULL, NULL);
-- INSERT INTO `uc_group_info` VALUES ('c-center_001', 'zh-CN', NULL, NULL, NULL, NULL, 'root', '有效载荷运行管理中心', '自动同步有效载荷运行管理中心', '1', NULL, NULL, NULL, NULL, 'admin', '2020-10-23 15:19:07', NULL, 'test_user_1', NULL, 'c-center_001');
-- INSERT INTO `uc_group_info` VALUES ('c-center_002', 'zh-CN', NULL, NULL, NULL, NULL, 'root', '在轨航天器支持中心', '自动同步在轨航天器支持中心', '1', NULL, NULL, NULL, NULL, 'admin', '2020-10-23 15:19:07', NULL, 'test_user_2', NULL, 'c-center_002');
-- INSERT INTO `uc_group_info` VALUES ('c-center_003', 'zh-CN', NULL, NULL, NULL, NULL, 'root', '航天员支持中心', '自动同步航天员支持中心', '1', NULL, NULL, NULL, NULL, 'admin', '2020-10-23 15:19:07', NULL, 'test_user_3', NULL, 'c-center_003');
-- INSERT INTO `uc_group_info` VALUES ('c-center_004', 'zh-CN', NULL, NULL, NULL, NULL, 'root', '空间站运营管理中心', '自动同步空间站运营管理中心', '1', NULL, NULL, NULL, NULL, 'admin', NULL, NULL, 'admin', NULL, 'c-center_004');
-- INSERT INTO `uc_group_info` VALUES ('c-center_005', 'zh-CN', NULL, NULL, NULL, NULL, 'root', '运行控制中心', '自动同步运行控制中心', '1', NULL, NULL, NULL, NULL, 'admin', '2020-10-23 15:19:07', NULL, 'test_user_5', NULL, 'c-center_005');
-- INSERT INTO `uc_group_info` VALUES ('center_001', 'zh-CN', NULL, NULL, NULL, NULL, 'root', '有效载荷运行管理中心1', '自动同步有效载荷运行管理中心1', '1', NULL, NULL, NULL, NULL, 'admin', '2020-12-08 17:51:28', NULL, NULL, NULL, 'center_001');
-- INSERT INTO `uc_group_info` VALUES ('center_002', 'zh-CN', NULL, NULL, NULL, NULL, 'root', '在轨航天器支持中心', '自动同步在轨航天器支持中心', '1', NULL, NULL, NULL, NULL, 'admin', '2020-12-08 17:51:28', NULL, NULL, NULL, 'center_002');
-- INSERT INTO `uc_group_info` VALUES ('center_003', 'zh-CN', NULL, NULL, NULL, NULL, 'root', '航天员支持中心', '自动同步航天员支持中心', '1', NULL, NULL, NULL, NULL, 'admin', '2020-12-08 17:51:28', NULL, NULL, NULL, 'center_003');
-- INSERT INTO `uc_group_info` VALUES ('center_004', 'zh-CN', NULL, NULL, NULL, NULL, 'root', '空间站运营管理中心', '自动同步空间站运营管理中心', '1', NULL, NULL, NULL, NULL, 'admin', '2020-12-08 17:51:28', NULL, NULL, NULL, 'center_004');
-- INSERT INTO `uc_group_info` VALUES ('center_005', 'zh-CN', NULL, NULL, NULL, NULL, 'root', '运行控制中心', '自动同步运行控制中心', '1', NULL, NULL, NULL, NULL, 'admin', '2020-12-08 17:51:28', NULL, NULL, NULL, 'center_005');
-- INSERT INTO `uc_group_info` VALUES ('center_006', 'zh-CN', NULL, NULL, NULL, NULL, 'root', '工程信息中心', '自动同步工程信息中心', '1', NULL, NULL, NULL, NULL, 'admin', '2020-12-08 17:51:28', NULL, NULL, NULL, 'center_006');

-- INSERT INTO `uc_group_info` VALUES ('e49bda17812e4f3887f41d75169aca0c', 'zh-CN', NULL, NULL, NULL, NULL, 'center_002', '在轨航天器支持中心1', '在轨航天器支持中心1', '1', NULL, NULL, NULL, NULL, 'test_user_2', NULL, NULL, 'test_user_2', NULL, 'center_002');

-- INSERT INTO `uc_group_info` VALUES ('78e38865-264f-4118-95ad-bb7ec229f044', 'zh-CN', NULL, NULL, NULL, NULL, 'root', 'CMSECLOUD_DOCKER_L1', '', '1', NULL, NULL, NULL, NULL, NULL, '2020-10-21 11:40:40', NULL, NULL, NULL, NULL);
-- INSERT INTO `uc_group_info` VALUES ('ebb167330e594d7693e70880498fb376', 'zh-CN', NULL, NULL, NULL, NULL, 'root', '载人航天工程信息中心', '载人航天工程信息中心', '1', NULL, NULL, NULL, NULL, 'admin', '2020-10-23 15:19:07', NULL, 'admin', NULL, 'ebb167330e594d7693e70880498fb376');

-- INSERT INTO `uc_group_info` VALUES ('7def71a9-0412-462c-af5d-a542101dcdce', 'zh-CN', NULL, NULL, NULL, NULL, 'root', '测试VDC_L1', '仅供测试使用', '1', NULL, NULL, NULL, NULL, NULL, '2020-10-21 11:40:40', NULL, NULL, NULL, NULL);
-- INSERT INTO `uc_group_info` VALUES ('28fd533f-39bf-4a48-9706-970962626f82', 'zh-CN', NULL, NULL, NULL, NULL, '7def71a9-0412-462c-af5d-a542101dcdce', '测试中心A_二级VDC', '', '1', NULL, NULL, NULL, NULL, NULL, '2020-10-21 11:40:40', NULL, NULL, NULL, NULL);
-- INSERT INTO `uc_group_info` VALUES ('a8072a16-e3be-4c1d-a714-3797fb63afb4', 'zh-CN', NULL, NULL, NULL, NULL, '7def71a9-0412-462c-af5d-a542101dcdce', '测试中心B_二级VDC', '', '1', NULL, NULL, NULL, NULL, NULL, '2020-10-21 11:40:40', NULL, NULL, NULL, NULL);
-- INSERT INTO `uc_group_info` VALUES ('eb0742c2-8958-40e0-9531-36de667ee184', 'zh-CN', NULL, NULL, NULL, NULL, '7def71a9-0412-462c-af5d-a542101dcdce', '测试中心C', '', '1', NULL, NULL, NULL, NULL, NULL, '2020-10-21 11:40:40', NULL, NULL, NULL, NULL);


-- 以下是后期的目录结构
INSERT INTO `uc_group_info` VALUES ('a47e491d-8c73-4bfd-af47-f153a3e61929', 'zh-CN', NULL, NULL, NULL, NULL, 'root', 'CMSECLOUD_L1', '', '1', NULL, NULL, NULL, NULL, NULL, '2020-10-21 11:40:40', NULL, NULL, NULL, NULL);
INSERT INTO `uc_group_info` VALUES ('5d9334f7-9dba-47a3-b6b6-c9cecf97f7e9', 'zh-CN', NULL, NULL, NULL, NULL, 'a47e491d-8c73-4bfd-af47-f153a3e61929', '有效载荷运控管理系统_L2', '', '1', NULL, NULL, NULL, NULL, NULL, '2020-10-21 11:40:40', NULL, NULL, NULL, 'c-center_001');
INSERT INTO `uc_group_info` VALUES ('127f392d-920a-41ee-9406-f924cb4ea396', 'zh-CN', NULL, NULL, NULL, NULL, 'a47e491d-8c73-4bfd-af47-f153a3e61929', '在轨航天器中心_L2', '', '1', NULL, NULL, NULL, NULL, NULL, '2020-10-21 11:40:40', NULL, NULL, NULL, 'c-center_002');
INSERT INTO `uc_group_info` VALUES ('b0a65173-72cf-4d4f-a254-7abfad6bc760', 'zh-CN', NULL, NULL, NULL, NULL, 'a47e491d-8c73-4bfd-af47-f153a3e61929', '航天员支持中心_L2', '', '1', NULL, NULL, NULL, NULL, NULL, '2020-10-21 11:40:40', NULL, NULL, NULL, 'c-center_003');
INSERT INTO `uc_group_info` VALUES ('d63b1c5f-8e74-4f6c-a543-ca2df062935d', 'zh-CN', NULL, NULL, NULL, NULL, 'a47e491d-8c73-4bfd-af47-f153a3e61929', '运行控制中心_L2', '', '1', NULL, NULL, NULL, NULL, NULL, '2020-10-21 11:40:40', NULL, NULL, NULL, 'c-center_005');
INSERT INTO `uc_group_info` VALUES ('a551888a-62f5-4d3c-b368-bddf5ab54de7', 'zh-CN', NULL, NULL, NULL, NULL, 'a47e491d-8c73-4bfd-af47-f153a3e61929', '工程信息中心_L2', '', '1', NULL, NULL, NULL, NULL, NULL, '2020-10-21 11:40:40', NULL, NULL, NULL, 'c-center_006');
INSERT INTO `uc_group_info` VALUES ('8d6f3bc3-bc71-464f-bd43-003bdb271990', 'zh-CN', NULL, NULL, NULL, NULL, 'a47e491d-8c73-4bfd-af47-f153a3e61929', '仿真中心_L2', '', '1', NULL, NULL, NULL, NULL, NULL, '2020-10-21 11:40:40', NULL, NULL, NULL, 'c-center_004');
INSERT INTO `uc_group_info` VALUES ('f1b57583-b661-4760-9469-3dd41ddcfe74', 'zh-CN', NULL, NULL, NULL, NULL, 'a47e491d-8c73-4bfd-af47-f153a3e61929', '运营规划中心_L2', '', '1', NULL, NULL, NULL, NULL, NULL, '2020-10-21 11:40:40', NULL, NULL, NULL, NULL);
INSERT INTO `uc_group_info` VALUES ('096f56c3-baff-405b-bc29-42c3ad890148', 'zh-CN', NULL, NULL, NULL, NULL, 'a47e491d-8c73-4bfd-af47-f153a3e61929', '科学与应用数据中心_L2', '', '1', NULL, NULL, NULL, NULL, NULL, '2020-10-21 11:40:40', NULL, NULL, NULL, NULL);
INSERT INTO `uc_group_info` VALUES ('e7a507a1-9d67-4b52-8db3-3d54ff9e8d2b', 'zh-CN', NULL, NULL, NULL, NULL, 'a47e491d-8c73-4bfd-af47-f153a3e61929', '测试_L2', '', '1', NULL, NULL, NULL, NULL, NULL, '2020-10-21 11:40:40', NULL, NULL, NULL, NULL);
INSERT INTO `uc_group_info` VALUES ('8a44a18e-3116-4c11-a6dd-926234232c85', 'zh-CN', NULL, NULL, NULL, NULL, 'a47e491d-8c73-4bfd-af47-f153a3e61929', '公共服务_L2', '', '1', NULL, NULL, NULL, NULL, NULL, '2020-10-21 11:40:40', NULL, NULL, NULL, NULL);
INSERT INTO `uc_group_info` VALUES ('53292d70-8739-44a4-ae8d-c2a087b4791b', 'zh-CN', NULL, NULL, NULL, NULL, 'a47e491d-8c73-4bfd-af47-f153a3e61929', '云平台共用数据库_L2', '', '1', NULL, NULL, NULL, NULL, NULL, '2020-10-21 11:40:40', NULL, NULL, NULL, NULL);
COMMIT;

-- ----------------------------
-- Table structure for uc_group_role_mapping
-- ----------------------------
DROP TABLE IF EXISTS `uc_group_role_mapping`;
CREATE TABLE `uc_group_role_mapping` (
  `id` varchar(150) NOT NULL COMMENT '用户组角色映射编号',
  `group_id` varchar(50) DEFAULT NULL COMMENT '用户组编号',
  `group_cn_name` varchar(100) DEFAULT NULL COMMENT '用户组中文名称',
  `group_en_name` varchar(200) DEFAULT NULL COMMENT '用户组英文名称',
  `role_id` varchar(50) DEFAULT NULL COMMENT '角色编号',
  `role_cn_name` varchar(100) DEFAULT NULL COMMENT '角色中文名称',
  `role_en_name` varchar(200) DEFAULT NULL COMMENT '角色英文名称',
  `effect_datetime` datetime DEFAULT NULL COMMENT '生效时间',
  `invalid_datetime` datetime DEFAULT NULL COMMENT '失效时间',
  `valid_flag` varchar(5) DEFAULT NULL COMMENT '效力标志',
  `create_department_id` varchar(50) DEFAULT NULL COMMENT '创建用户所属部门编号',
  `create_user_id` varchar(50) DEFAULT NULL COMMENT '创建用户编号',
  `create_datetime` datetime DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='用户中心用户组角色映射表';

-- ----------------------------
-- Table structure for uc_group_strategy_mapping
-- ----------------------------
DROP TABLE IF EXISTS `uc_group_strategy_mapping`;
CREATE TABLE `uc_group_strategy_mapping` (
  `id` varchar(150) NOT NULL COMMENT '用户组角色映射编号',
  `group_id` varchar(50) DEFAULT NULL COMMENT '用户组编号',
  `group_cn_name` varchar(100) DEFAULT NULL COMMENT '用户组中文名称',
  `group_en_name` varchar(200) DEFAULT NULL COMMENT '用户组英文名称',
  `strategy_id` varchar(50) DEFAULT NULL COMMENT '策略编号',
  `strategy_cn_name` varchar(100) DEFAULT NULL COMMENT '策略中文名称',
  `strategy_en_name` varchar(200) DEFAULT NULL COMMENT '策略英文名称',
  `effect_datetime` datetime DEFAULT NULL COMMENT '生效时间',
  `invalid_datetime` datetime DEFAULT NULL COMMENT '失效时间',
  `valid_flag` varchar(5) DEFAULT NULL COMMENT '效力标志',
  `create_department_id` varchar(50) DEFAULT NULL COMMENT '创建用户所属部门编号',
  `create_user_id` varchar(50) DEFAULT NULL COMMENT '创建用户编号',
  `create_datetime` datetime DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='用户中心用户组策略映射表';

-- ----------------------------
-- Records of uc_group_strategy_mapping
-- ----------------------------
BEGIN;
-- 手动添加
INSERT INTO `uc_group_strategy_mapping` VALUES ('5d9334f7-9dba-47a3-b6b6-c9cecf97f7e9:strategy-00001', '5d9334f7-9dba-47a3-b6b6-c9cecf97f7e9', '有效载荷运控管理系统', NULL, 'strategy-00001', '有效载荷管理中心的策略', NULL, NULL, NULL, '1', NULL, 'admin', NULL);
-- INSERT INTO `uc_group_strategy_mapping` VALUES ('127f392d-920a-41ee-9406-f924cb4ea396:strategy-00002', '8dd330572a674a86af6d08ceb8f4cca0', '在轨航天器支持中心子组', NULL, '7f136ae0603b4beead3ebb0a3681e875', '在轨航天器的策略', NULL, NULL, NULL, '1', NULL, 'test_user_2', NULL);
-- INSERT INTO `uc_group_strategy_mapping` VALUES ('c-center_003:strategy-00003', 'c-center_004', '空间站运营管理中心', NULL, 'f1d6d37054964b0b9086d5f871bb5de3', '空间站运营管理中心数据授权策略', NULL, NULL, NULL, '1', NULL, 'admin', NULL);
-- INSERT INTO `uc_group_strategy_mapping` VALUES ('c-center_004:strategy-00004', 'center_002', '在轨航天器支持中心', NULL, '7f136ae0603b4beead3ebb0a3681e875', '在轨航天器的策略', NULL, NULL, NULL, '1', NULL, 'test_user_2', NULL);
-- INSERT INTO `uc_group_strategy_mapping` VALUES ('c-center_005:strategy-00005', '3ae76efd7c6248cf91a40f2407118936', '在轨航天器支持中心', NULL, '7f136ae0603b4beead3ebb0a3681e875', '在轨航天器的策略', NULL, NULL, NULL, '1', NULL, 'test_user_2', NULL);
-- INSERT INTO `uc_group_strategy_mapping` VALUES ('c-center_006:strategy-00006', '8dd330572a674a86af6d08ceb8f4cca0', '在轨航天器支持中心子组', NULL, '7f136ae0603b4beead3ebb0a3681e875', '在轨航天器的策略', NULL, NULL, NULL, '1', NULL, 'test_user_2', NULL);
-- INSERT INTO `uc_group_strategy_mapping` VALUES ('c-center_007:strategy-00007', 'c-center_004', '空间站运营管理中心', NULL, 'f1d6d37054964b0b9086d5f871bb5de3', '空间站运营管理中心数据授权策略', NULL, NULL, NULL, '1', NULL, 'admin', NULL);
-- INSERT INTO `uc_group_strategy_mapping` VALUES ('c-center_008:strategy-00008', 'center_002', '在轨航天器支持中心', NULL, '7f136ae0603b4beead3ebb0a3681e875', '在轨航天器的策略', NULL, NULL, NULL, '1', NULL, 'test_user_2', NULL);
-- INSERT INTO `uc_group_strategy_mapping` VALUES ('c-center_007:strategy-00009', 'c-center_004', '空间站运营管理中心', NULL, 'f1d6d37054964b0b9086d5f871bb5de3', '空间站运营管理中心数据授权策略', NULL, NULL, NULL, '1', NULL, 'admin', NULL);
-- INSERT INTO `uc_group_strategy_mapping` VALUES ('c-center_008:strategy-00010', 'center_002', '在轨航天器支持中心', NULL, '7f136ae0603b4beead3ebb0a3681e875', '在轨航天器的策略', NULL, NULL, NULL, '1', NULL, 'test_user_2', NULL);
-- 历史数据
-- INSERT INTO `uc_group_strategy_mapping` VALUES ('3ae76efd7c6248cf91a40f2407118936:7f136ae0603b4beead3ebb0a3681e875', '3ae76efd7c6248cf91a40f2407118936', '在轨航天器支持中心', NULL, '7f136ae0603b4beead3ebb0a3681e875', '在轨航天器的策略', NULL, NULL, NULL, '1', NULL, 'test_user_2', NULL);
-- INSERT INTO `uc_group_strategy_mapping` VALUES ('8dd330572a674a86af6d08ceb8f4cca0:7f136ae0603b4beead3ebb0a3681e875', '8dd330572a674a86af6d08ceb8f4cca0', '在轨航天器支持中心子组', NULL, '7f136ae0603b4beead3ebb0a3681e875', '在轨航天器的策略', NULL, NULL, NULL, '1', NULL, 'test_user_2', NULL);
-- INSERT INTO `uc_group_strategy_mapping` VALUES ('c-center_004:f1d6d37054964b0b9086d5f871bb5de3', 'c-center_004', '空间站运营管理中心', NULL, 'f1d6d37054964b0b9086d5f871bb5de3', '空间站运营管理中心数据授权策略', NULL, NULL, NULL, '1', NULL, 'admin', NULL);
-- INSERT INTO `uc_group_strategy_mapping` VALUES ('center_002:7f136ae0603b4beead3ebb0a3681e875', 'center_002', '在轨航天器支持中心', NULL, '7f136ae0603b4beead3ebb0a3681e875', '在轨航天器的策略', NULL, NULL, NULL, '1', NULL, 'test_user_2', NULL);
COMMIT;

-- ----------------------------
-- Table structure for uc_manage_group_mapping
-- ----------------------------
DROP TABLE IF EXISTS `uc_manage_group_mapping`;
CREATE TABLE `uc_manage_group_mapping` (
  `id` varchar(256) COLLATE utf8_unicode_ci NOT NULL COMMENT 'id',
  `vdc_id` varchar(155) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT 'vdc_id',
  `vdc_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT 'vdc名称',
  `group_id` varchar(60) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '用户组id',
  `group_name` varchar(120) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '用户组名称',
  `create_time` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '创建时间',
  `create_id` varchar(60) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '创建人',
  `create_name` varchar(120) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '创建人姓名',
  `center_id` varchar(155) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '中心id',
  `center_name` varchar(155) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '中心名称',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci ROW_FORMAT=DYNAMIC COMMENT='manageone vdc 与用户组的映射关系';

-- ----------------------------
-- Records of uc_manage_group_mapping
-- ----------------------------
BEGIN;
-- 
INSERT INTO `uc_manage_group_mapping` VALUES ('v-a47e491d-8c73-4bfd-af47-f153a3e61929', 'a47e491d-8c73-4bfd-af47-f153a3e61929', 'CMSECLOUD_L1', 'a47e491d-8c73-4bfd-af47-f153a3e61929', 'CMSECLOUD_L1', '2020-10-21 11:40:39', NULL, NULL, NULL, NULL);
INSERT INTO `uc_manage_group_mapping` VALUES ('v-5d9334f7-9dba-47a3-b6b6-c9cecf97f7e9', '5d9334f7-9dba-47a3-b6b6-c9cecf97f7e9', '有效载荷运控管理系统_L2', '5d9334f7-9dba-47a3-b6b6-c9cecf97f7e9', '有效载荷运控管理系统_L2', '2020-10-21 11:40:40', NULL, NULL, 'center_001', '有效载荷运行管理中心');
INSERT INTO `uc_manage_group_mapping` VALUES ('v-127f392d-920a-41ee-9406-f924cb4ea396', '127f392d-920a-41ee-9406-f924cb4ea396', '在轨航天器中心_L2', '127f392d-920a-41ee-9406-f924cb4ea396', '在轨航天器中心_L2', '2020-10-21 11:40:39', NULL, NULL, 'center_002', '在轨航天器支持中心');
INSERT INTO `uc_manage_group_mapping` VALUES ('v-b0a65173-72cf-4d4f-a254-7abfad6bc760', 'b0a65173-72cf-4d4f-a254-7abfad6bc760', '航天员支持中心_L2', 'b0a65173-72cf-4d4f-a254-7abfad6bc760', '航天员支持中心_L2', '2020-10-21 11:40:40', NULL, NULL, 'center_003', '航天员支持中心');
INSERT INTO `uc_manage_group_mapping` VALUES ('v-d63b1c5f-8e74-4f6c-a543-ca2df062935d', 'd63b1c5f-8e74-4f6c-a543-ca2df062935d', '运行控制中心_L2', 'd63b1c5f-8e74-4f6c-a543-ca2df062935d', '运行控制中心_L2', '2020-10-21 11:40:40', NULL, NULL, 'center_005', '运行控制中心');
INSERT INTO `uc_manage_group_mapping` VALUES ('v-a551888a-62f5-4d3c-b368-bddf5ab54de7', 'a551888a-62f5-4d3c-b368-bddf5ab54de7', '工程信息中心_L2', 'a551888a-62f5-4d3c-b368-bddf5ab54de7', '工程信息中心_L2', '2020-10-21 11:40:40', NULL, NULL, 'center_006', '载人航天工程信息中心');
INSERT INTO `uc_manage_group_mapping` VALUES ('v-8d6f3bc3-bc71-464f-bd43-003bdb271990', '8d6f3bc3-bc71-464f-bd43-003bdb271990', '仿真中心_L2', '8d6f3bc3-bc71-464f-bd43-003bdb271990', '仿真中心_L2', '2020-10-21 11:40:39', NULL, NULL, 'center_004', '空间站运营管理支持中心');
INSERT INTO `uc_manage_group_mapping` VALUES ('v-f1b57583-b661-4760-9469-3dd41ddcfe74', 'f1b57583-b661-4760-9469-3dd41ddcfe74', '运营规划中心_L2', 'f1b57583-b661-4760-9469-3dd41ddcfe74', '运营规划中心_L2', '2020-10-21 11:40:40', NULL, NULL, NULL, NULL);
INSERT INTO `uc_manage_group_mapping` VALUES ('v-096f56c3-baff-405b-bc29-42c3ad890148', '096f56c3-baff-405b-bc29-42c3ad890148', '科学与应用数据中心_L2', '096f56c3-baff-405b-bc29-42c3ad890148', '科学与应用数据中心_L2', '2020-10-21 11:40:40', NULL, NULL, NULL, NULL);
-- 
INSERT INTO `uc_manage_group_mapping` VALUES ('v-e7a507a1-9d67-4b52-8db3-3d54ff9e8d2b', 'e7a507a1-9d67-4b52-8db3-3d54ff9e8d2b', '测试_L2', 'e7a507a1-9d67-4b52-8db3-3d54ff9e8d2b', '测试_L2', '2020-10-21 11:40:40', NULL, NULL, NULL, NULL);
INSERT INTO `uc_manage_group_mapping` VALUES ('v-8a44a18e-3116-4c11-a6dd-926234232c85', '8a44a18e-3116-4c11-a6dd-926234232c85', '公共服务_L2', '8a44a18e-3116-4c11-a6dd-926234232c85', '公共服务_L2', '2020-10-21 11:40:39', NULL, NULL, NULL, NULL);
INSERT INTO `uc_manage_group_mapping` VALUES ('v-53292d70-8739-44a4-ae8d-c2a087b4791b', '53292d70-8739-44a4-ae8d-c2a087b4791b', '云平台共用数据库_L2', '53292d70-8739-44a4-ae8d-c2a087b4791b', '云平台共用数据库_L2', '2020-10-21 11:40:39', NULL, NULL, NULL, NULL);
-- 
INSERT INTO `uc_manage_group_mapping` VALUES ('v-78e38865-264f-4118-95ad-bb7ec229f044', '78e38865-264f-4118-95ad-bb7ec229f044', 'CMSECLOUD_DOCKER_L1', '78e38865-264f-4118-95ad-bb7ec229f044', 'CMSECLOUD_DOCKER_L1', '2020-10-21 11:40:39', NULL, NULL, NULL, NULL);
INSERT INTO `uc_manage_group_mapping` VALUES ('v-7def71a9-0412-462c-af5d-a542101dcdce', '7def71a9-0412-462c-af5d-a542101dcdce', '测试VDC_L1', '7def71a9-0412-462c-af5d-a542101dcdce', '测试VDC_L1', '2020-10-21 11:40:40', NULL, NULL, NULL, NULL);
INSERT INTO `uc_manage_group_mapping` VALUES ('v-28fd533f-39bf-4a48-9706-970962626f82', '28fd533f-39bf-4a48-9706-970962626f82', '测试中心A_二级VDC', '28fd533f-39bf-4a48-9706-970962626f82', '测试中心A_二级VDC', '2020-10-21 11:40:40', NULL, NULL, NULL, ' ');
INSERT INTO `uc_manage_group_mapping` VALUES ('v-a8072a16-e3be-4c1d-a714-3797fb63afb4', 'a8072a16-e3be-4c1d-a714-3797fb63afb4', '测试中心B_二级VDC', 'a8072a16-e3be-4c1d-a714-3797fb63afb4', '测试中心B_二级VDC', '2020-10-21 11:40:40', NULL, NULL, NULL, NULL);
INSERT INTO `uc_manage_group_mapping` VALUES ('v-eb0742c2-8958-40e0-9531-36de667ee184', 'eb0742c2-8958-40e0-9531-36de667ee184', '测试中心C', 'eb0742c2-8958-40e0-9531-36de667ee184', '测试中心C', '2020-10-21 11:40:40', NULL, NULL, NULL, NULL);
COMMIT;

-- ----------------------------
-- Table structure for uc_privilege_info
-- ----------------------------
DROP TABLE IF EXISTS `uc_privilege_info`;
CREATE TABLE `uc_privilege_info` (
  `id` varchar(50) NOT NULL COMMENT '权限编号',
  `language` varchar(20) NOT NULL COMMENT '语言',
  `privilege_name` varchar(100) DEFAULT NULL COMMENT '权限名称',
  `privilege_type` varchar(100) DEFAULT NULL COMMENT '权限类型',
  `privilege_type_name` varchar(200) DEFAULT NULL COMMENT '权限类型名称',
  `privilege_group` varchar(100) DEFAULT NULL COMMENT '权限分组',
  `privilege_group_name` varchar(200) DEFAULT NULL COMMENT '权限分组名称',
  `privilege_value` varchar(200) DEFAULT NULL COMMENT '权限值',
  `privilege_description` varchar(2000) DEFAULT NULL COMMENT '权限描述',
  `operative_type` varchar(20) DEFAULT NULL COMMENT '操作类型',
  `permission_type` varchar(20) DEFAULT NULL COMMENT '许可类型',
  `parent_id` varchar(50) DEFAULT NULL COMMENT '上级权限编码',
  `privilege_level` decimal(65,30) DEFAULT NULL COMMENT '权限等级',
  `char_remark1` varchar(200) DEFAULT NULL COMMENT '字符预留字段1',
  `char_remark2` varchar(200) DEFAULT NULL COMMENT '字符预留字段2',
  `char_remark3` varchar(200) DEFAULT NULL COMMENT '字符预留字段3',
  `char_remark4` varchar(200) DEFAULT NULL COMMENT '字符预留字段4',
  `char_remark5` varchar(200) DEFAULT NULL COMMENT '字符预留字段5',
  `num_remark1` decimal(20,6) DEFAULT NULL COMMENT '数值预留字段1',
  `num_remark2` decimal(20,6) DEFAULT NULL COMMENT '数值预留字段2',
  `num_remark3` decimal(20,6) DEFAULT NULL COMMENT '数值预留字段3',
  `num_remark4` decimal(20,6) DEFAULT NULL COMMENT '数值预留字段4',
  `num_remark5` decimal(20,6) DEFAULT NULL COMMENT '数值预留字段5',
  `valid_flag` varchar(5) DEFAULT NULL COMMENT '效力标志',
  `invalid_department_id` varchar(50) DEFAULT NULL COMMENT '失效用户所属部门编号',
  `invalid_user_id` varchar(50) DEFAULT NULL COMMENT '失效用户编号',
  `invalid_datetime` datetime DEFAULT NULL COMMENT '失效时间',
  `create_department_id` varchar(50) DEFAULT NULL COMMENT '创建用户所属部门编号',
  `create_user_id` varchar(50) DEFAULT NULL COMMENT '创建用户编号',
  `create_datetime` datetime DEFAULT NULL COMMENT '创建时间',
  `update_department_id` varchar(50) DEFAULT NULL COMMENT '更新用户部门所属编号',
  `update_user_id` varchar(50) DEFAULT NULL COMMENT '更新用户编号',
  `update_datetime` datetime DEFAULT NULL COMMENT '更新时间',
  PRIMARY KEY (`id`,`language`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='用户中心权限信息表';

-- ----------------------------
-- Records of uc_privilege_info
-- ----------------------------
BEGIN;
-- 菜单权限
INSERT INTO `uc_privilege_info` VALUES ('menu-001', 'zh-CN', '首页', 'menu', '菜单操作权限', NULL, NULL, '001', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', NULL, NULL, NULL, NULL, 'admin', NULL, NULL, 'admin', NULL);
INSERT INTO `uc_privilege_info` VALUES ('menu-002', 'zh-CN', '用户管理', 'menu', '菜单操作权限', NULL, NULL, '002', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', NULL, NULL, NULL, NULL, 'admin', NULL, NULL, 'admin', NULL);
INSERT INTO `uc_privilege_info` VALUES ('menu-002001', 'zh-CN', '用户列表', 'menu', '菜单操作权限', NULL, NULL, '002001', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', NULL, NULL, NULL, NULL, 'admin', NULL, NULL, 'admin', NULL);
INSERT INTO `uc_privilege_info` VALUES ('menu-002002', 'zh-CN', '用户组管理', 'menu', '菜单操作权限', NULL, NULL, '002002', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', NULL, NULL, NULL, NULL, 'admin', NULL, NULL, 'admin', NULL);
INSERT INTO `uc_privilege_info` VALUES ('menu-002003', 'zh-CN', '角色管理', 'menu', '菜单操作权限', NULL, NULL, '002003', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', NULL, NULL, NULL, NULL, 'admin', NULL, NULL, 'admin', NULL);
INSERT INTO `uc_privilege_info` VALUES ('menu-002004', 'zh-CN', '用户审核', 'menu', '菜单操作权限', NULL, NULL, '002004', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', NULL, NULL, NULL, NULL, 'admin', NULL, NULL, 'admin', NULL);
INSERT INTO `uc_privilege_info` VALUES ('menu-002005', 'zh-CN', '授权策略管理', 'menu', '菜单操作权限', NULL, NULL, '002005', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', NULL, NULL, NULL, NULL, 'admin', NULL, NULL, 'admin', NULL);
INSERT INTO `uc_privilege_info` VALUES ('menu-002006', 'zh-CN', '用户统计', 'menu', '菜单操作权限', NULL, NULL, '002006', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', NULL, NULL, NULL, NULL, 'admin', NULL, NULL, 'admin', NULL);
INSERT INTO `uc_privilege_info` VALUES ('menu-003', 'zh-CN', '数据管理', 'menu', '菜单操作权限', NULL, NULL, '003', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', NULL, NULL, NULL, NULL, 'admin', NULL, NULL, 'admin', NULL);
INSERT INTO `uc_privilege_info` VALUES ('menu-003001', 'zh-CN', '文件树管理', 'menu', '菜单操作权限', NULL, NULL, '003001', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', NULL, NULL, NULL, NULL, 'admin', NULL, NULL, 'admin', NULL);
INSERT INTO `uc_privilege_info` VALUES ('menu-003002', 'zh-CN', '标签管理', 'menu', '菜单操作权限', NULL, NULL, '003002', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', NULL, NULL, NULL, NULL, 'admin', NULL, NULL, 'admin', NULL);
INSERT INTO `uc_privilege_info` VALUES ('menu-003003', 'zh-CN', '数据管理日志查询', 'menu', '菜单操作权限', NULL, NULL, '003003', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', NULL, NULL, NULL, NULL, 'admin', NULL, NULL, 'admin', NULL);
INSERT INTO `uc_privilege_info` VALUES ('menu-003004', 'zh-CN', '跨中心数据申请', 'menu', '菜单操作权限', NULL, NULL, '003004', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', NULL, NULL, NULL, NULL, 'admin', NULL, NULL, 'admin', NULL);
INSERT INTO `uc_privilege_info` VALUES ('menu-003005', 'zh-CN', '数据统计', 'menu', '菜单操作权限', NULL, NULL, '003005', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', NULL, NULL, NULL, NULL, 'admin', NULL, NULL, 'admin', NULL);
INSERT INTO `uc_privilege_info` VALUES ('menu-004', 'zh-CN', '消息中心', 'menu', '菜单操作权限', NULL, NULL, '004', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', NULL, NULL, NULL, NULL, 'admin', NULL, NULL, 'admin', NULL);
INSERT INTO `uc_privilege_info` VALUES ('menu-004001', 'zh-CN', '消息模板库', 'menu', '菜单操作权限', NULL, NULL, '004001', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', NULL, NULL, NULL, NULL, 'admin', NULL, NULL, 'admin', NULL);
INSERT INTO `uc_privilege_info` VALUES ('menu-004002', 'zh-CN', '消息推送', 'menu', '菜单操作权限', NULL, NULL, '004002', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', NULL, NULL, NULL, NULL, 'admin', NULL, NULL, 'admin', NULL);
INSERT INTO `uc_privilege_info` VALUES ('menu-012', 'zh-CN', '控制台', 'menu', '菜单操作权限', NULL, NULL, '012', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', NULL, NULL, NULL, NULL, 'admin', NULL, NULL, 'admin', NULL);
-- 根目录
INSERT INTO `uc_privilege_info` VALUES ('storage-root', 'zh-CN', '目录权限-根目录', 'storage', '目录操作权限', NULL, NULL, 'root', NULL, 'A', 'A', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
-- 舱段目录
INSERT INTO `uc_privilege_info` VALUES ('storage-ca-cabin_001', 'zh-CN', '目录权限', 'storage', '目录操作权限', NULL, NULL, 'ca-cabin_001', NULL, 'A', 'A', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `uc_privilege_info` VALUES ('storage-ca-cabin_002', 'zh-CN', '目录权限', 'storage', '目录操作权限', NULL, NULL, 'ca-cabin_002', '添加目录时自动添加权限', 'A', 'A', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', NULL, NULL, NULL, NULL, 'admin', NULL, NULL, 'admin', NULL);
-- 中心目录
INSERT INTO `uc_privilege_info` VALUES ('storage-c-center_001', 'zh-CN', '目录权限-有效载荷运行管理中心', 'storage', '目录操作权限', NULL, NULL, 'c-center_001', NULL, 'A', 'A', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `uc_privilege_info` VALUES ('storage-c-center_002', 'zh-CN', '目录权限-在轨航天器支持中心', 'storage', '目录操作权限', NULL, NULL, 'c-center_002', NULL, 'A', 'A', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `uc_privilege_info` VALUES ('storage-c-center_003', 'zh-CN', '目录权限-航天员支持中心', 'storage', '目录操作权限', NULL, NULL, 'c-center_003', NULL, 'A', 'A', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `uc_privilege_info` VALUES ('storage-c-center_004', 'zh-CN', '目录权限-空间站运营管理中心', 'storage', '目录操作权限', NULL, NULL, 'c-center_004', NULL, 'A', 'A', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `uc_privilege_info` VALUES ('storage-c-center_005', 'zh-CN', '目录权限-运行控制中心', 'storage', '目录操作权限', NULL, NULL, 'c-center_005', NULL, 'A', 'A', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `uc_privilege_info` VALUES ('storage-c-center_006', 'zh-CN', '目录权限-工程信息中心', 'storage', '目录操作权限', NULL, NULL, 'c-center_006', NULL, 'A', 'A', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
-- 大类目录
INSERT INTO `uc_privilege_info` VALUES ('storage-m-main_001', 'zh-CN', '目录权限-存档原始数据', 'storage', '目录操作权限', NULL, NULL, 'm-main_001', NULL, 'A', 'A', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `uc_privilege_info` VALUES ('storage-m-main_002', 'zh-CN', '目录权限-存档原始数据产品', 'storage', '目录操作权限', NULL, NULL, 'm-main_002', NULL, 'A', 'A', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `uc_privilege_info` VALUES ('storage-m-main_003', 'zh-CN', '目录权限-存档数据产品', 'storage', '目录操作权限', NULL, NULL, 'm-main_003', NULL, 'A', 'A', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `uc_privilege_info` VALUES ('storage-m-main_004', 'zh-CN', '目录权限-文件类数据', 'storage', '目录操作权限', NULL, NULL, 'm-main_004', NULL, 'A', 'A', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `uc_privilege_info` VALUES ('storage-m-main_005', 'zh-CN', '目录权限-在轨飞行状态监测数据', 'storage', '目录操作权限', NULL, NULL, 'm-main_005', NULL, 'A', 'A', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `uc_privilege_info` VALUES ('storage-m-main_006', 'zh-CN', '目录权限-在轨健康数据分析数据', 'storage', '目录操作权限', NULL, NULL, 'm-main_006', NULL, 'A', 'A', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `uc_privilege_info` VALUES ('storage-m-main_007', 'zh-CN', '目录权限-在轨-地面一体化展示模型数据', 'storage', '目录操作权限', NULL, NULL, 'm-main_007', NULL, 'A', 'A', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `uc_privilege_info` VALUES ('storage-m-main_008', 'zh-CN', '目录权限-数据深度分析模型数据', 'storage', '目录操作权限', NULL, NULL, 'm-main_008', NULL, 'A', 'A', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `uc_privilege_info` VALUES ('storage-m-main_009', 'zh-CN', '目录权限-电性航天器遥测解析数据', 'storage', '目录操作权限', NULL, NULL, 'm-main_009', NULL, 'A', 'A', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `uc_privilege_info` VALUES ('storage-m-main_010', 'zh-CN', '目录权限-电性航天器遥测判读数据', 'storage', '目录操作权限', NULL, NULL, 'm-main_010', NULL, 'A', 'A', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `uc_privilege_info` VALUES ('storage-m-main_011', 'zh-CN', '目录权限-多航天器协同运行控制项目数据', 'storage', '目录操作权限', NULL, NULL, 'm-main_011', NULL, 'A', 'A', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `uc_privilege_info` VALUES ('storage-m-main_012', 'zh-CN', '目录权限-地面测试设备启动时序控制规则数据', 'storage', '目录操作权限', NULL, NULL, 'm-main_012', NULL, 'A', 'A', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `uc_privilege_info` VALUES ('storage-m-main_013', 'zh-CN', '目录权限-业务数据库信息数据库表', 'storage', '目录操作权限', NULL, NULL, 'm-main_013', NULL, 'A', 'A', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `uc_privilege_info` VALUES ('storage-m-main_014', 'zh-CN', '目录权限-数据成果和成果报告', 'storage', '目录操作权限', NULL, NULL, 'm-main_014', NULL, 'A', 'A', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `uc_privilege_info` VALUES ('storage-m-main_015', 'zh-CN', '目录权限-航天技术试验载荷源包数据', 'storage', '目录操作权限', NULL, NULL, 'm-main_015', NULL, 'A', 'A', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `uc_privilege_info` VALUES ('storage-m-main_016', 'zh-CN', '目录权限-空间环境预报数据文件', 'storage', '目录操作权限', NULL, NULL, 'm-main_016', NULL, 'A', 'A', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `uc_privilege_info` VALUES ('storage-m-main_017', 'zh-CN', '目录权限-分类参数数据', 'storage', '目录操作权限', NULL, NULL, 'm-main_017', NULL, 'A', 'A', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `uc_privilege_info` VALUES ('storage-m-main_018', 'zh-CN', '目录权限-通用解析结果数据', 'storage', '目录操作权限', NULL, NULL, 'm-main_018', NULL, 'A', 'A', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `uc_privilege_info` VALUES ('storage-m-main_019', 'zh-CN', '目录权限-通用判读知识数据', 'storage', '目录操作权限', NULL, NULL, 'm-main_019', NULL, 'A', 'A', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `uc_privilege_info` VALUES ('storage-m-main_020', 'zh-CN', '目录权限-数据成果', 'storage', '目录操作权限', NULL, NULL, 'm-main_020', NULL, 'A', 'A', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `uc_privilege_info` VALUES ('storage-m-main_021', 'zh-CN', '目录权限-规划中心数据', 'storage', '目录操作权限', NULL, NULL, 'm-main_021', NULL, 'A', 'A', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `uc_privilege_info` VALUES ('storage-m-main_022', 'zh-CN', '目录权限-仿真中心数据', 'storage', '目录操作权限', NULL, NULL, 'm-main_022', NULL, 'A', 'A', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `uc_privilege_info` VALUES ('storage-m-main_023', 'zh-CN', '目录权限-完整遥测数据', 'storage', '目录操作权限', NULL, NULL, 'm-main_023', NULL, 'A', 'A', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `uc_privilege_info` VALUES ('storage-m-main_024', 'zh-CN', '目录权限-图像话音数据', 'storage', '目录操作权限', NULL, NULL, 'm-main_024', NULL, 'A', 'A', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `uc_privilege_info` VALUES ('storage-m-main_025', 'zh-CN', '目录权限-全局共享数据', 'storage', '目录操作权限', NULL, NULL, 'm-main_025', NULL, 'A', 'A', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `uc_privilege_info` VALUES ('storage-m-main_026', 'zh-CN', '目录权限-专有数据', 'storage', '目录操作权限', NULL, NULL, 'm-main_026', NULL, 'A', 'A', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `uc_privilege_info` VALUES ('storage-m-main_027', 'zh-CN', '目录权限-数据成果', 'storage', '目录操作权限', NULL, NULL, 'm-main_027', NULL, 'A', 'A', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `uc_privilege_info` VALUES ('storage-m-main_028', 'zh-CN', '目录权限', 'storage', '目录操作权限', NULL, NULL, 'm-main_028', '添加目录时自动添加权限', 'A', 'A', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', NULL, NULL, NULL, NULL, 'admin', NULL, NULL, 'admin', NULL);
-- 小类目录
INSERT INTO `uc_privilege_info` VALUES ('storage-s-sub_001', 'zh-CN', '目录权限-存档原始数据元信息数据库表信息', 'storage', '目录操作权限', NULL, NULL, 's-sub_001', NULL, 'A', 'A', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `uc_privilege_info` VALUES ('storage-s-sub_002', 'zh-CN', '目录权限-存档原始数据文件元信息数据库表信息', 'storage', '目录操作权限', NULL, NULL, 's-sub_002', NULL, 'A', 'A', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `uc_privilege_info` VALUES ('storage-s-sub_003', 'zh-CN', '目录权限-航天医学实验领域元信息数据库表信息', 'storage', '目录操作权限', NULL, NULL, 's-sub_003', NULL, 'A', 'A', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `uc_privilege_info` VALUES ('storage-s-sub_004', 'zh-CN', '目录权限-航天技术试验领域元信息数据库表信息', 'storage', '目录操作权限', NULL, NULL, 's-sub_004', NULL, 'A', 'A', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `uc_privilege_info` VALUES ('storage-s-sub_005', 'zh-CN', '目录权限-空间科学与应用领域元信息数据库表信息', 'storage', '目录操作权限', NULL, NULL, 's-sub_005', NULL, 'A', 'A', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `uc_privilege_info` VALUES ('storage-s-sub_006', 'zh-CN', '目录权限-空间环境预报数据文件元信息数据库表信息', 'storage', '目录操作权限', NULL, NULL, 's-sub_006', NULL, 'A', 'A', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `uc_privilege_info` VALUES ('storage-s-sub_007', 'zh-CN', '目录权限-载荷工作计划等电文类数据元信息库表', 'storage', '目录操作权限', NULL, NULL, 's-sub_007', NULL, 'A', 'A', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `uc_privilege_info` VALUES ('storage-s-sub_008', 'zh-CN', '目录权限-数据成果和成果报告描述信息', 'storage', '目录操作权限', NULL, NULL, 's-sub_008', NULL, 'A', 'A', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `uc_privilege_info` VALUES ('storage-s-sub_009', 'zh-CN', '目录权限-在轨飞行状态监测数据文件元信息表-事件监测信息表', 'storage', '目录操作权限', NULL, NULL, 's-sub_009', NULL, 'A', 'A', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `uc_privilege_info` VALUES ('storage-s-sub_010', 'zh-CN', '目录权限-在轨飞行状态监测数据文件元信息表-状态监测信息表', 'storage', '目录操作权限', NULL, NULL, 's-sub_010', NULL, 'A', 'A', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `uc_privilege_info` VALUES ('storage-s-sub_011', 'zh-CN', '目录权限-在轨健康数据分析数据库表', 'storage', '目录操作权限', NULL, NULL, 's-sub_011', NULL, 'A', 'A', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `uc_privilege_info` VALUES ('storage-s-sub_012', 'zh-CN', '目录权限-在轨-地面一体化展示模型库-地面点表信息', 'storage', '目录操作权限', NULL, NULL, 's-sub_012', NULL, 'A', 'A', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `uc_privilege_info` VALUES ('storage-s-sub_013', 'zh-CN', '目录权限-在轨-地面一体化展示模型库-地面点表信息', 'storage', '目录操作权限', NULL, NULL, 's-sub_013', NULL, 'A', 'A', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `uc_privilege_info` VALUES ('storage-s-sub_014', 'zh-CN', '目录权限-数据深度分析模型数据库-数据清洗表', 'storage', '目录操作权限', NULL, NULL, 's-sub_014', NULL, 'A', 'A', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `uc_privilege_info` VALUES ('storage-s-sub_015', 'zh-CN', '目录权限-数据深度分析模型数据库--数据模型表', 'storage', '目录操作权限', NULL, NULL, 's-sub_015', NULL, 'A', 'A', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `uc_privilege_info` VALUES ('storage-s-sub_016', 'zh-CN', '目录权限-数据深度分析模型数据库--数据模型表', 'storage', '目录操作权限', NULL, NULL, 's-sub_016', NULL, 'A', 'A', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `uc_privilege_info` VALUES ('storage-s-sub_017', 'zh-CN', '目录权限-电性航天器遥测解析数据库', 'storage', '目录操作权限', NULL, NULL, 's-sub_017', NULL, 'A', 'A', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `uc_privilege_info` VALUES ('storage-s-sub_018', 'zh-CN', '目录权限-电性航天器遥测判读数据库', 'storage', '目录操作权限', NULL, NULL, 's-sub_018', NULL, 'A', 'A', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `uc_privilege_info` VALUES ('storage-s-sub_019', 'zh-CN', '目录权限-多航天器协同运行控制项目数据库', 'storage', '目录操作权限', NULL, NULL, 's-sub_019', NULL, 'A', 'A', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `uc_privilege_info` VALUES ('storage-s-sub_020', 'zh-CN', '目录权限-地面测试设备启动时序控制规则数据库', 'storage', '目录操作权限', NULL, NULL, 's-sub_020', NULL, 'A', 'A', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `uc_privilege_info` VALUES ('storage-s-sub_021', 'zh-CN', '目录权限-业务数据库信息数据库表', 'storage', '目录操作权限', NULL, NULL, 's-sub_021', NULL, 'A', 'A', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `uc_privilege_info` VALUES ('storage-s-sub_022', 'zh-CN', '目录权限-数据成果和成果报告描述信息', 'storage', '目录操作权限', NULL, NULL, 's-sub_022', NULL, 'A', 'A', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `uc_privilege_info` VALUES ('storage-s-sub_023', 'zh-CN', '目录权限-航天技术试验0级数据通知描述信息', 'storage', '目录操作权限', NULL, NULL, 's-sub_023', NULL, 'A', 'A', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `uc_privilege_info` VALUES ('storage-s-sub_024', 'zh-CN', '目录权限-空间环境预报数据通知描述信息', 'storage', '目录操作权限', NULL, NULL, 's-sub_024', NULL, 'A', 'A', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `uc_privilege_info` VALUES ('storage-s-sub_025', 'zh-CN', '目录权限-医学信息综合管理主机参数数据表', 'storage', '目录操作权限', NULL, NULL, 's-sub_025', NULL, 'A', 'A', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `uc_privilege_info` VALUES ('storage-s-sub_026', 'zh-CN', '目录权限-医学设备电源管理装置数据表', 'storage', '目录操作权限', NULL, NULL, 's-sub_026', NULL, 'A', 'A', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `uc_privilege_info` VALUES ('storage-s-sub_027', 'zh-CN', '目录权限-医学信息通信接口装置数据表', 'storage', '目录操作权限', NULL, NULL, 's-sub_027', NULL, 'A', 'A', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `uc_privilege_info` VALUES ('storage-s-sub_028', 'zh-CN', '目录权限-综合充电装置数据表', 'storage', '目录操作权限', NULL, NULL, 's-sub_028', NULL, 'A', 'A', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `uc_privilege_info` VALUES ('storage-s-sub_029', 'zh-CN', '目录权限-神经肌肉刺激仪数据表', 'storage', '目录操作权限', NULL, NULL, 's-sub_029', NULL, 'A', 'A', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `uc_privilege_info` VALUES ('storage-s-sub_030', 'zh-CN', '目录权限-太空跑台数据表', 'storage', '目录操作权限', NULL, NULL, 's-sub_030', NULL, 'A', 'A', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `uc_privilege_info` VALUES ('storage-s-sub_031', 'zh-CN', '目录权限-太空自行车数据表', 'storage', '目录操作权限', NULL, NULL, 's-sub_031', NULL, 'A', 'A', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `uc_privilege_info` VALUES ('storage-s-sub_032', 'zh-CN', '目录权限-微重力抗阻锻炼装置数据表', 'storage', '目录操作权限', NULL, NULL, 's-sub_032', NULL, 'A', 'A', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `uc_privilege_info` VALUES ('storage-s-sub_033', 'zh-CN', '目录权限-微波加热装置数据表', 'storage', '目录操作权限', NULL, NULL, 's-sub_033', NULL, 'A', 'A', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `uc_privilege_info` VALUES ('storage-s-sub_034', 'zh-CN', '目录权限-热风加热装置数据表', 'storage', '目录操作权限', NULL, NULL, 's-sub_034', NULL, 'A', 'A', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `uc_privilege_info` VALUES ('storage-s-sub_035', 'zh-CN', '目录权限-饮水分配器数据表', 'storage', '目录操作权限', NULL, NULL, 's-sub_035', NULL, 'A', 'A', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `uc_privilege_info` VALUES ('storage-s-sub_036', 'zh-CN', '目录权限-食品冷藏箱数据表', 'storage', '目录操作权限', NULL, NULL, 's-sub_036', NULL, 'A', 'A', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `uc_privilege_info` VALUES ('storage-s-sub_037', 'zh-CN', '目录权限-人体辐射剂量当量仪数据表', 'storage', '目录操作权限', NULL, NULL, 's-sub_037', NULL, 'A', 'A', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `uc_privilege_info` VALUES ('storage-s-sub_038', 'zh-CN', '目录权限-人系统研究机柜下传数字量遥测数据表', 'storage', '目录操作权限', NULL, NULL, 's-sub_038', NULL, 'A', 'A', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `uc_privilege_info` VALUES ('storage-s-sub_039', 'zh-CN', '目录权限-太空医学样本冷藏箱工程数据表', 'storage', '目录操作权限', NULL, NULL, 's-sub_039', NULL, 'A', 'A', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `uc_privilege_info` VALUES ('storage-s-sub_040', 'zh-CN', '目录权限-舱外服舱载电气综合控制台参数数据表', 'storage', '目录操作权限', NULL, NULL, 's-sub_040', NULL, 'A', 'A', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `uc_privilege_info` VALUES ('storage-s-sub_041', 'zh-CN', '目录权限-出舱通信处理器代传（无线）参数数据表', 'storage', '目录操作权限', NULL, NULL, 's-sub_041', NULL, 'A', 'A', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `uc_privilege_info` VALUES ('storage-s-sub_042', 'zh-CN', '目录权限-电池充放电装置参数数据表', 'storage', '目录操作权限', NULL, NULL, 's-sub_042', NULL, 'A', 'A', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `uc_privilege_info` VALUES ('storage-s-sub_043', 'zh-CN', '目录权限-生理数据文件表', 'storage', '目录操作权限', NULL, NULL, 's-sub_043', NULL, 'A', 'A', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `uc_privilege_info` VALUES ('storage-s-sub_044', 'zh-CN', '目录权限-航天医学实验数据文件表', 'storage', '目录操作权限', NULL, NULL, 's-sub_044', NULL, 'A', 'A', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `uc_privilege_info` VALUES ('storage-s-sub_045', 'zh-CN', '目录权限-微量气体检测装置数据文件表', 'storage', '目录操作权限', NULL, NULL, 's-sub_045', NULL, 'A', 'A', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `uc_privilege_info` VALUES ('storage-s-sub_046', 'zh-CN', '目录权限-舱外服上注传感器系数数据文件表', 'storage', '目录操作权限', NULL, NULL, 's-sub_046', NULL, 'A', 'A', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `uc_privilege_info` VALUES ('storage-s-sub_047', 'zh-CN', '目录权限-航天员支持中心文件清单表', 'storage', '目录操作权限', NULL, NULL, 's-sub_047', NULL, 'A', 'A', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `uc_privilege_info` VALUES ('storage-s-sub_048', 'zh-CN', '目录权限-环控生保分系统注入数据文件表', 'storage', '目录操作权限', NULL, NULL, 's-sub_048', NULL, 'A', 'A', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `uc_privilege_info` VALUES ('storage-s-sub_049', 'zh-CN', '目录权限-环控生保分系统小结报告数据文件表', 'storage', '目录操作权限', NULL, NULL, 's-sub_049', NULL, 'A', 'A', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `uc_privilege_info` VALUES ('storage-s-sub_050', 'zh-CN', '目录权限-微量气体检测装置数据文件表', 'storage', '目录操作权限', NULL, NULL, 's-sub_050', NULL, 'A', 'A', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `uc_privilege_info` VALUES ('storage-s-sub_051', 'zh-CN', '目录权限-航天器信息表', 'storage', '目录操作权限', NULL, NULL, 's-sub_051', NULL, 'A', 'A', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `uc_privilege_info` VALUES ('storage-s-sub_052', 'zh-CN', '目录权限-分系统信息表', 'storage', '目录操作权限', NULL, NULL, 's-sub_052', NULL, 'A', 'A', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `uc_privilege_info` VALUES ('storage-s-sub_053', 'zh-CN', '目录权限-数据流信息表', 'storage', '目录操作权限', NULL, NULL, 's-sub_053', NULL, 'A', 'A', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `uc_privilege_info` VALUES ('storage-s-sub_054', 'zh-CN', '目录权限-参数信息表', 'storage', '目录操作权限', NULL, NULL, 's-sub_054', NULL, 'A', 'A', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `uc_privilege_info` VALUES ('storage-s-sub_055', 'zh-CN', '目录权限-指令信息表', 'storage', '目录操作权限', NULL, NULL, 's-sub_055', NULL, 'A', 'A', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `uc_privilege_info` VALUES ('storage-s-sub_056', 'zh-CN', '目录权限-源码表', 'storage', '目录操作权限', NULL, NULL, 's-sub_056', NULL, 'A', 'A', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `uc_privilege_info` VALUES ('storage-s-sub_057', 'zh-CN', '目录权限-解析结果表', 'storage', '目录操作权限', NULL, NULL, 's-sub_057', NULL, 'A', 'A', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `uc_privilege_info` VALUES ('storage-s-sub_058', 'zh-CN', '目录权限-测试过程表', 'storage', '目录操作权限', NULL, NULL, 's-sub_058', NULL, 'A', 'A', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `uc_privilege_info` VALUES ('storage-s-sub_059', 'zh-CN', '目录权限-航天器信息表', 'storage', '目录操作权限', NULL, NULL, 's-sub_059', NULL, 'A', 'A', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `uc_privilege_info` VALUES ('storage-s-sub_060', 'zh-CN', '目录权限-分系统信息表', 'storage', '目录操作权限', NULL, NULL, 's-sub_060', NULL, 'A', 'A', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `uc_privilege_info` VALUES ('storage-s-sub_061', 'zh-CN', '目录权限-数据流信息表', 'storage', '目录操作权限', NULL, NULL, 's-sub_061', NULL, 'A', 'A', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `uc_privilege_info` VALUES ('storage-s-sub_062', 'zh-CN', '目录权限-参数信息表', 'storage', '目录操作权限', NULL, NULL, 's-sub_062', NULL, 'A', 'A', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `uc_privilege_info` VALUES ('storage-s-sub_063', 'zh-CN', '目录权限-指令信息表', 'storage', '目录操作权限', NULL, NULL, 's-sub_063', NULL, 'A', 'A', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `uc_privilege_info` VALUES ('storage-s-sub_064', 'zh-CN', '目录权限-用户权限信息表', 'storage', '目录操作权限', NULL, NULL, 's-sub_064', NULL, 'A', 'A', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `uc_privilege_info` VALUES ('storage-s-sub_065', 'zh-CN', '目录权限-用户信息表', 'storage', '目录操作权限', NULL, NULL, 's-sub_065', NULL, 'A', 'A', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `uc_privilege_info` VALUES ('storage-s-sub_066', 'zh-CN', '目录权限-系统关键时间信息表', 'storage', '目录操作权限', NULL, NULL, 's-sub_066', NULL, 'A', 'A', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `uc_privilege_info` VALUES ('storage-s-sub_067', 'zh-CN', '目录权限-全局变量表', 'storage', '目录操作权限', NULL, NULL, 's-sub_067', NULL, 'A', 'A', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `uc_privilege_info` VALUES ('storage-s-sub_068', 'zh-CN', '目录权限-指令作用效果表', 'storage', '目录操作权限', NULL, NULL, 's-sub_068', NULL, 'A', 'A', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `uc_privilege_info` VALUES ('storage-s-sub_069', 'zh-CN', '目录权限-指令干扰参数信息表', 'storage', '目录操作权限', NULL, NULL, 's-sub_069', NULL, 'A', 'A', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `uc_privilege_info` VALUES ('storage-s-sub_070', 'zh-CN', '目录权限-指令识别依赖参数信息表', 'storage', '目录操作权限', NULL, NULL, 's-sub_070', NULL, 'A', 'A', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `uc_privilege_info` VALUES ('storage-s-sub_071', 'zh-CN', '目录权限-参数识别指令信息表', 'storage', '目录操作权限', NULL, NULL, 's-sub_071', NULL, 'A', 'A', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `uc_privilege_info` VALUES ('storage-s-sub_072', 'zh-CN', '目录权限-参数判读知识信息表', 'storage', '目录操作权限', NULL, NULL, 's-sub_072', NULL, 'A', 'A', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `uc_privilege_info` VALUES ('storage-s-sub_073', 'zh-CN', '目录权限-参数判读结论信息表', 'storage', '目录操作权限', NULL, NULL, 's-sub_073', NULL, 'A', 'A', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `uc_privilege_info` VALUES ('storage-s-sub_074', 'zh-CN', '目录权限-指令判读结论信息表', 'storage', '目录操作权限', NULL, NULL, 's-sub_074', NULL, 'A', 'A', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `uc_privilege_info` VALUES ('storage-s-sub_075', 'zh-CN', '目录权限-指令参数识别记录表', 'storage', '目录操作权限', NULL, NULL, 's-sub_075', NULL, 'A', 'A', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `uc_privilege_info` VALUES ('storage-s-sub_076', 'zh-CN', '目录权限-人工干预表', 'storage', '目录操作权限', NULL, NULL, 's-sub_076', NULL, 'A', 'A', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `uc_privilege_info` VALUES ('storage-s-sub_077', 'zh-CN', '目录权限-通报信息表', 'storage', '目录操作权限', NULL, NULL, 's-sub_077', NULL, 'A', 'A', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `uc_privilege_info` VALUES ('storage-s-sub_078', 'zh-CN', '目录权限-数据成果和成果报告文件元信息表', 'storage', '目录操作权限', NULL, NULL, 's-sub_078', NULL, 'A', 'A', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `uc_privilege_info` VALUES ('storage-s-sub_079', 'zh-CN', '目录权限-空间站规划数据文件元信息表', 'storage', '目录操作权限', NULL, NULL, 's-sub_079', NULL, 'A', 'A', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `uc_privilege_info` VALUES ('storage-s-sub_080', 'zh-CN', '目录权限-空间站规划数据文件标志定义表', 'storage', '目录操作权限', NULL, NULL, 's-sub_080', NULL, 'A', 'A', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `uc_privilege_info` VALUES ('storage-s-sub_081', 'zh-CN', '目录权限-数据成果和成果报告文件元信息表', 'storage', '目录操作权限', NULL, NULL, 's-sub_081', NULL, 'A', 'A', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `uc_privilege_info` VALUES ('storage-s-sub_082', 'zh-CN', '目录权限-其他存档数据文件元信息表', 'storage', '目录操作权限', NULL, NULL, 's-sub_082', NULL, 'A', 'A', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `uc_privilege_info` VALUES ('storage-s-sub_083', 'zh-CN', '目录权限-仿真模型文件元信息表', 'storage', '目录操作权限', NULL, NULL, 's-sub_083', NULL, 'A', 'A', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `uc_privilege_info` VALUES ('storage-s-sub_084', 'zh-CN', '目录权限-数据成果和成果报告文件元信息表', 'storage', '目录操作权限', NULL, NULL, 's-sub_084', NULL, 'A', 'A', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `uc_privilege_info` VALUES ('storage-s-sub_085', 'zh-CN', '目录权限-其他存档数据文件元信息表', 'storage', '目录操作权限', NULL, NULL, 's-sub_085', NULL, 'A', 'A', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `uc_privilege_info` VALUES ('storage-s-sub_086', 'zh-CN', '目录权限-完整遥测数据库表信息', 'storage', '目录操作权限', NULL, NULL, 's-sub_086', NULL, 'A', 'A', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `uc_privilege_info` VALUES ('storage-s-sub_087', 'zh-CN', '目录权限-数据库表说明信息', 'storage', '目录操作权限', NULL, NULL, 's-sub_087', NULL, 'A', 'A', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `uc_privilege_info` VALUES ('storage-s-sub_088', 'zh-CN', '目录权限-遥测参数说明信息', 'storage', '目录操作权限', NULL, NULL, 's-sub_088', NULL, 'A', 'A', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `uc_privilege_info` VALUES ('storage-s-sub_089', 'zh-CN', '目录权限-图像、话音数据文件元信息表', 'storage', '目录操作权限', NULL, NULL, 's-sub_089', NULL, 'A', 'A', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `uc_privilege_info` VALUES ('storage-s-sub_090', 'zh-CN', '目录权限-全局共享数据文件元信息表', 'storage', '目录操作权限', NULL, NULL, 's-sub_090', NULL, 'A', 'A', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `uc_privilege_info` VALUES ('storage-s-sub_091', 'zh-CN', '目录权限-专有数据文件元信息表', 'storage', '目录操作权限', NULL, NULL, 's-sub_091', NULL, 'A', 'A', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `uc_privilege_info` VALUES ('storage-s-sub_092', 'zh-CN', '目录权限-数据成果和成果报告文件元信息表', 'storage', '目录操作权限', NULL, NULL, 's-sub_092', NULL, 'A', 'A', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

-- INSERT INTO `uc_privilege_info` VALUES ('storage-center_001', 'zh-CN', '目录权限', 'storage', '目录操作权限', NULL, NULL, 'center_001', '添加目录时自动添加权限', 'A', 'A', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', NULL, NULL, NULL, NULL, 'admin', NULL, NULL, 'admin', NULL);
-- INSERT INTO `uc_privilege_info` VALUES ('storage-center_002', 'zh-CN', '目录权限', 'storage', '目录操作权限', NULL, NULL, 'center_002', '添加目录时自动添加权限', 'A', 'A', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', NULL, NULL, NULL, NULL, 'admin', NULL, NULL, 'admin', NULL);
-- INSERT INTO `uc_privilege_info` VALUES ('storage-center_003', 'zh-CN', '目录权限', 'storage', '目录操作权限', NULL, NULL, 'center_003', '添加目录时自动添加权限', 'A', 'A', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', NULL, NULL, NULL, NULL, 'admin', NULL, NULL, 'admin', NULL);
-- INSERT INTO `uc_privilege_info` VALUES ('storage-center_004', 'zh-CN', '目录权限', 'storage', '目录操作权限', NULL, NULL, 'center_004', '添加目录时自动添加权限', 'A', 'A', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', NULL, NULL, NULL, NULL, 'admin', NULL, NULL, 'admin', NULL);
-- INSERT INTO `uc_privilege_info` VALUES ('storage-center_005', 'zh-CN', '目录权限', 'storage', '目录操作权限', NULL, NULL, 'center_005', '添加目录时自动添加权限', 'A', 'A', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', NULL, NULL, NULL, NULL, 'admin', NULL, NULL, 'admin', NULL);
-- INSERT INTO `uc_privilege_info` VALUES ('storage-sub_001', 'zh-CN', '目录权限', 'storage', '目录操作权限', NULL, NULL, 'sub_001', '添加目录时自动添加权限', 'A', 'A', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', NULL, NULL, NULL, NULL, 'admin', NULL, NULL, 'admin', NULL);
-- INSERT INTO `uc_privilege_info` VALUES ('storage-sub_002', 'zh-CN', '目录权限', 'storage', '目录操作权限', NULL, NULL, 'sub_002', '添加目录时自动添加权限', 'A', 'A', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', NULL, NULL, NULL, NULL, 'admin', NULL, NULL, 'admin', NULL);
-- INSERT INTO `uc_privilege_info` VALUES ('storage-sub_003', 'zh-CN', '目录权限', 'storage', '目录操作权限', NULL, NULL, 'sub_003', '添加目录时自动添加权限', 'A', 'A', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', NULL, NULL, NULL, NULL, 'admin', NULL, NULL, 'admin', NULL);
-- INSERT INTO `uc_privilege_info` VALUES ('storage-sub_004', 'zh-CN', '目录权限', 'storage', '目录操作权限', NULL, NULL, 'sub_004', '添加目录时自动添加权限', 'A', 'A', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', NULL, NULL, NULL, NULL, 'admin', NULL, NULL, 'admin', NULL);
-- INSERT INTO `uc_privilege_info` VALUES ('storage-sub_005', 'zh-CN', '目录权限', 'storage', '目录操作权限', NULL, NULL, 'sub_005', '添加目录时自动添加权限', 'A', 'A', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', NULL, NULL, NULL, NULL, 'admin', NULL, NULL, 'admin', NULL);
-- INSERT INTO `uc_privilege_info` VALUES ('storage-sub_006', 'zh-CN', '目录权限', 'storage', '目录操作权限', NULL, NULL, 'sub_006', '添加目录时自动添加权限', 'A', 'A', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', NULL, NULL, NULL, NULL, 'admin', NULL, NULL, 'admin', NULL);
-- INSERT INTO `uc_privilege_info` VALUES ('storage-sub_007', 'zh-CN', '目录权限', 'storage', '目录操作权限', NULL, NULL, 'sub_007', '添加目录时自动添加权限', 'A', 'A', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', NULL, NULL, NULL, NULL, 'admin', NULL, NULL, 'admin', NULL);
-- INSERT INTO `uc_privilege_info` VALUES ('storage-sub_008', 'zh-CN', '目录权限', 'storage', '目录操作权限', NULL, NULL, 'sub_008', '添加目录时自动添加权限', 'A', 'A', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', NULL, NULL, NULL, NULL, 'admin', NULL, NULL, 'admin', NULL);
-- INSERT INTO `uc_privilege_info` VALUES ('storage-sub_009', 'zh-CN', '目录权限', 'storage', '目录操作权限', NULL, NULL, 'sub_009', '添加目录时自动添加权限', 'A', 'A', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', NULL, NULL, NULL, NULL, 'admin', NULL, NULL, 'admin', NULL);
-- INSERT INTO `uc_privilege_info` VALUES ('storage-sub_010', 'zh-CN', '目录权限', 'storage', '目录操作权限', NULL, NULL, 'sub_010', '添加目录时自动添加权限', 'A', 'A', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', NULL, NULL, NULL, NULL, 'admin', NULL, NULL, 'admin', NULL);
-- INSERT INTO `uc_privilege_info` VALUES ('storage-sub_011', 'zh-CN', '目录权限', 'storage', '目录操作权限', NULL, NULL, 'sub_011', '添加目录时自动添加权限', 'A', 'A', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', NULL, NULL, NULL, NULL, 'admin', NULL, NULL, 'admin', NULL);
-- INSERT INTO `uc_privilege_info` VALUES ('storage-sub_012', 'zh-CN', '目录权限', 'storage', '目录操作权限', NULL, NULL, 'sub_012', '添加目录时自动添加权限', 'A', 'A', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', NULL, NULL, NULL, NULL, 'admin', NULL, NULL, 'admin', NULL);
-- INSERT INTO `uc_privilege_info` VALUES ('storage-sub_013', 'zh-CN', '目录权限', 'storage', '目录操作权限', NULL, NULL, 'sub_013', '添加目录时自动添加权限', 'A', 'A', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', NULL, NULL, NULL, NULL, 'admin', NULL, NULL, 'admin', NULL);
-- INSERT INTO `uc_privilege_info` VALUES ('storage-sub_014', 'zh-CN', '目录权限', 'storage', '目录操作权限', NULL, NULL, 'sub_014', '添加目录时自动添加权限', 'A', 'A', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', NULL, NULL, NULL, NULL, 'admin', NULL, NULL, 'admin', NULL);
-- INSERT INTO `uc_privilege_info` VALUES ('storage-sub_015', 'zh-CN', '目录权限', 'storage', '目录操作权限', NULL, NULL, 'sub_015', '添加目录时自动添加权限', 'A', 'A', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', NULL, NULL, NULL, NULL, 'admin', NULL, NULL, 'admin', NULL);
-- INSERT INTO `uc_privilege_info` VALUES ('storage-sub_016', 'zh-CN', '目录权限', 'storage', '目录操作权限', NULL, NULL, 'sub_016', '添加目录时自动添加权限', 'A', 'A', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', NULL, NULL, NULL, NULL, 'admin', NULL, NULL, 'admin', NULL);
-- INSERT INTO `uc_privilege_info` VALUES ('storage-sub_017', 'zh-CN', '目录权限', 'storage', '目录操作权限', NULL, NULL, 'sub_017', '添加目录时自动添加权限', 'A', 'A', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', NULL, NULL, NULL, NULL, 'admin', NULL, NULL, 'admin', NULL);
-- INSERT INTO `uc_privilege_info` VALUES ('storage-sub_018', 'zh-CN', '目录权限', 'storage', '目录操作权限', NULL, NULL, 'sub_018', '添加目录时自动添加权限', 'A', 'A', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', NULL, NULL, NULL, NULL, 'admin', NULL, NULL, 'admin', NULL);
-- INSERT INTO `uc_privilege_info` VALUES ('storage-sub_019', 'zh-CN', '目录权限', 'storage', '目录操作权限', NULL, NULL, 'sub_019', '添加目录时自动添加权限', 'A', 'A', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', NULL, NULL, NULL, NULL, 'admin', NULL, NULL, 'admin', NULL);
-- INSERT INTO `uc_privilege_info` VALUES ('storage-sub_020', 'zh-CN', '目录权限', 'storage', '目录操作权限', NULL, NULL, 'sub_020', '添加目录时自动添加权限', 'A', 'A', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', NULL, NULL, NULL, NULL, 'admin', NULL, NULL, 'admin', NULL);
-- INSERT INTO `uc_privilege_info` VALUES ('storage-sub_021', 'zh-CN', '目录权限', 'storage', '目录操作权限', NULL, NULL, 'sub_021', '添加目录时自动添加权限', 'A', 'A', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', NULL, NULL, NULL, NULL, 'admin', NULL, NULL, 'admin', NULL);
-- INSERT INTO `uc_privilege_info` VALUES ('storage-sub_022', 'zh-CN', '目录权限', 'storage', '目录操作权限', NULL, NULL, 'sub_022', '添加目录时自动添加权限', 'A', 'A', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', NULL, NULL, NULL, NULL, 'admin', NULL, NULL, 'admin', NULL);
-- INSERT INTO `uc_privilege_info` VALUES ('storage-sub_023', 'zh-CN', '目录权限', 'storage', '目录操作权限', NULL, NULL, 'sub_023', '添加目录时自动添加权限', 'A', 'A', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', NULL, NULL, NULL, NULL, 'admin', NULL, NULL, 'admin', NULL);
-- INSERT INTO `uc_privilege_info` VALUES ('storage-sub_024', 'zh-CN', '目录权限', 'storage', '目录操作权限', NULL, NULL, 'sub_024', '添加目录时自动添加权限', 'A', 'A', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', NULL, NULL, NULL, NULL, 'admin', NULL, NULL, 'admin', NULL);
-- INSERT INTO `uc_privilege_info` VALUES ('storage-sub_025', 'zh-CN', '目录权限', 'storage', '目录操作权限', NULL, NULL, 'sub_025', '添加目录时自动添加权限', 'A', 'A', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', NULL, NULL, NULL, NULL, 'admin', NULL, NULL, 'admin', NULL);
-- INSERT INTO `uc_privilege_info` VALUES ('storage-sub_026', 'zh-CN', '目录权限', 'storage', '目录操作权限', NULL, NULL, 'sub_026', '添加目录时自动添加权限', 'A', 'A', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', NULL, NULL, NULL, NULL, 'admin', NULL, NULL, 'admin', NULL);
-- INSERT INTO `uc_privilege_info` VALUES ('storage-sub_027', 'zh-CN', '目录权限', 'storage', '目录操作权限', NULL, NULL, 'sub_027', '添加目录时自动添加权限', 'A', 'A', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', NULL, NULL, NULL, NULL, 'admin', NULL, NULL, 'admin', NULL);
-- INSERT INTO `uc_privilege_info` VALUES ('storage-sub_028', 'zh-CN', '目录权限', 'storage', '目录操作权限', NULL, NULL, 'sub_028', '添加目录时自动添加权限', 'A', 'A', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', NULL, NULL, NULL, NULL, 'admin', NULL, NULL, 'admin', NULL);
-- INSERT INTO `uc_privilege_info` VALUES ('storage-sub_029', 'zh-CN', '目录权限', 'storage', '目录操作权限', NULL, NULL, 'sub_029', '添加目录时自动添加权限', 'A', 'A', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', NULL, NULL, NULL, NULL, 'admin', NULL, NULL, 'admin', NULL);
-- INSERT INTO `uc_privilege_info` VALUES ('storage-sub_030', 'zh-CN', '目录权限', 'storage', '目录操作权限', NULL, NULL, 'sub_030', '添加目录时自动添加权限', 'A', 'A', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', NULL, NULL, NULL, NULL, 'admin', NULL, NULL, 'admin', NULL);
-- INSERT INTO `uc_privilege_info` VALUES ('storage-sub_031', 'zh-CN', '目录权限', 'storage', '目录操作权限', NULL, NULL, 'sub_031', '添加目录时自动添加权限', 'A', 'A', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', NULL, NULL, NULL, NULL, 'admin', NULL, NULL, 'admin', NULL);
-- INSERT INTO `uc_privilege_info` VALUES ('storage-sub_032', 'zh-CN', '目录权限', 'storage', '目录操作权限', NULL, NULL, 'sub_032', '添加目录时自动添加权限', 'A', 'A', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', NULL, NULL, NULL, NULL, 'admin', NULL, NULL, 'admin', NULL);
-- INSERT INTO `uc_privilege_info` VALUES ('storage-sub_033', 'zh-CN', '目录权限', 'storage', '目录操作权限', NULL, NULL, 'sub_033', '添加目录时自动添加权限', 'A', 'A', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', NULL, NULL, NULL, NULL, 'admin', NULL, NULL, 'admin', NULL);
-- INSERT INTO `uc_privilege_info` VALUES ('storage-sub_034', 'zh-CN', '目录权限', 'storage', '目录操作权限', NULL, NULL, 'sub_034', '添加目录时自动添加权限', 'A', 'A', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', NULL, NULL, NULL, NULL, 'admin', NULL, NULL, 'admin', NULL);
-- INSERT INTO `uc_privilege_info` VALUES ('storage-sub_035', 'zh-CN', '目录权限', 'storage', '目录操作权限', NULL, NULL, 'sub_035', '添加目录时自动添加权限', 'A', 'A', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', NULL, NULL, NULL, NULL, 'admin', NULL, NULL, 'admin', NULL);
-- INSERT INTO `uc_privilege_info` VALUES ('storage-sub_036', 'zh-CN', '目录权限', 'storage', '目录操作权限', NULL, NULL, 'sub_036', '添加目录时自动添加权限', 'A', 'A', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', NULL, NULL, NULL, NULL, 'admin', NULL, NULL, 'admin', NULL);
-- INSERT INTO `uc_privilege_info` VALUES ('storage-sub_037', 'zh-CN', '目录权限', 'storage', '目录操作权限', NULL, NULL, 'sub_037', '添加目录时自动添加权限', 'A', 'A', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', NULL, NULL, NULL, NULL, 'admin', NULL, NULL, 'admin', NULL);
-- INSERT INTO `uc_privilege_info` VALUES ('storage-sub_038', 'zh-CN', '目录权限', 'storage', '目录操作权限', NULL, NULL, 'sub_038', '添加目录时自动添加权限', 'A', 'A', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', NULL, NULL, NULL, NULL, 'admin', NULL, NULL, 'admin', NULL);
-- INSERT INTO `uc_privilege_info` VALUES ('storage-sub_039', 'zh-CN', '目录权限', 'storage', '目录操作权限', NULL, NULL, 'sub_039', '添加目录时自动添加权限', 'A', 'A', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', NULL, NULL, NULL, NULL, 'admin', NULL, NULL, 'admin', NULL);
-- INSERT INTO `uc_privilege_info` VALUES ('storage-sub_040', 'zh-CN', '目录权限', 'storage', '目录操作权限', NULL, NULL, 'sub_040', '添加目录时自动添加权限', 'A', 'A', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', NULL, NULL, NULL, NULL, 'admin', NULL, NULL, 'admin', NULL);
-- INSERT INTO `uc_privilege_info` VALUES ('storage-sub_041', 'zh-CN', '目录权限', 'storage', '目录操作权限', NULL, NULL, 'sub_041', '添加目录时自动添加权限', 'A', 'A', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', NULL, NULL, NULL, NULL, 'admin', NULL, NULL, 'admin', NULL);
-- INSERT INTO `uc_privilege_info` VALUES ('storage-sub_042', 'zh-CN', '目录权限', 'storage', '目录操作权限', NULL, NULL, 'sub_042', '添加目录时自动添加权限', 'A', 'A', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', NULL, NULL, NULL, NULL, 'admin', NULL, NULL, 'admin', NULL);
-- INSERT INTO `uc_privilege_info` VALUES ('storage-sub_043', 'zh-CN', '目录权限', 'storage', '目录操作权限', NULL, NULL, 'sub_043', '添加目录时自动添加权限', 'A', 'A', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', NULL, NULL, NULL, NULL, 'admin', NULL, NULL, 'admin', NULL);
-- INSERT INTO `uc_privilege_info` VALUES ('storage-sub_044', 'zh-CN', '目录权限', 'storage', '目录操作权限', NULL, NULL, 'sub_044', '添加目录时自动添加权限', 'A', 'A', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', NULL, NULL, NULL, NULL, 'admin', NULL, NULL, 'admin', NULL);
-- INSERT INTO `uc_privilege_info` VALUES ('storage-sub_045', 'zh-CN', '目录权限', 'storage', '目录操作权限', NULL, NULL, 'sub_045', '添加目录时自动添加权限', 'A', 'A', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', NULL, NULL, NULL, NULL, 'admin', NULL, NULL, 'admin', NULL);
-- INSERT INTO `uc_privilege_info` VALUES ('storage-sub_046', 'zh-CN', '目录权限', 'storage', '目录操作权限', NULL, NULL, 'sub_046', '添加目录时自动添加权限', 'A', 'A', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', NULL, NULL, NULL, NULL, 'admin', NULL, NULL, 'admin', NULL);
-- INSERT INTO `uc_privilege_info` VALUES ('storage-sub_047', 'zh-CN', '目录权限', 'storage', '目录操作权限', NULL, NULL, 'sub_047', '添加目录时自动添加权限', 'A', 'A', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', NULL, NULL, NULL, NULL, 'admin', NULL, NULL, 'admin', NULL);
-- INSERT INTO `uc_privilege_info` VALUES ('storage-sub_048', 'zh-CN', '目录权限', 'storage', '目录操作权限', NULL, NULL, 'sub_048', '添加目录时自动添加权限', 'A', 'A', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', NULL, NULL, NULL, NULL, 'admin', NULL, NULL, 'admin', NULL);
-- INSERT INTO `uc_privilege_info` VALUES ('storage-sub_049', 'zh-CN', '目录权限', 'storage', '目录操作权限', NULL, NULL, 'sub_049', '添加目录时自动添加权限', 'A', 'A', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', NULL, NULL, NULL, NULL, 'admin', NULL, NULL, 'admin', NULL);
-- INSERT INTO `uc_privilege_info` VALUES ('storage-sub_050', 'zh-CN', '目录权限', 'storage', '目录操作权限', NULL, NULL, 'sub_050', '添加目录时自动添加权限', 'A', 'A', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', NULL, NULL, NULL, NULL, 'admin', NULL, NULL, 'admin', NULL);
-- INSERT INTO `uc_privilege_info` VALUES ('storage-sub_051', 'zh-CN', '目录权限', 'storage', '目录操作权限', NULL, NULL, 'sub_051', '添加目录时自动添加权限', 'A', 'A', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', NULL, NULL, NULL, NULL, 'admin', NULL, NULL, 'admin', NULL);
-- INSERT INTO `uc_privilege_info` VALUES ('storage-sub_052', 'zh-CN', '目录权限', 'storage', '目录操作权限', NULL, NULL, 'sub_052', '添加目录时自动添加权限', 'A', 'A', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', NULL, NULL, NULL, NULL, 'admin', NULL, NULL, 'admin', NULL);
-- INSERT INTO `uc_privilege_info` VALUES ('storage-sub_053', 'zh-CN', '目录权限', 'storage', '目录操作权限', NULL, NULL, 'sub_053', '添加目录时自动添加权限', 'A', 'A', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', NULL, NULL, NULL, NULL, 'admin', NULL, NULL, 'admin', NULL);
-- INSERT INTO `uc_privilege_info` VALUES ('storage-sub_054', 'zh-CN', '目录权限', 'storage', '目录操作权限', NULL, NULL, 'sub_054', '添加目录时自动添加权限', 'A', 'A', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', NULL, NULL, NULL, NULL, 'admin', NULL, NULL, 'admin', NULL);
-- INSERT INTO `uc_privilege_info` VALUES ('storage-sub_055', 'zh-CN', '目录权限', 'storage', '目录操作权限', NULL, NULL, 'sub_055', '添加目录时自动添加权限', 'A', 'A', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', NULL, NULL, NULL, NULL, 'admin', NULL, NULL, 'admin', NULL);
-- INSERT INTO `uc_privilege_info` VALUES ('storage-sub_056', 'zh-CN', '目录权限', 'storage', '目录操作权限', NULL, NULL, 'sub_056', '添加目录时自动添加权限', 'A', 'A', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', NULL, NULL, NULL, NULL, 'admin', NULL, NULL, 'admin', NULL);
-- INSERT INTO `uc_privilege_info` VALUES ('storage-sub_057', 'zh-CN', '目录权限', 'storage', '目录操作权限', NULL, NULL, 'sub_057', '添加目录时自动添加权限', 'A', 'A', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', NULL, NULL, NULL, NULL, 'admin', NULL, NULL, 'admin', NULL);
-- INSERT INTO `uc_privilege_info` VALUES ('storage-sub_058', 'zh-CN', '目录权限', 'storage', '目录操作权限', NULL, NULL, 'sub_058', '添加目录时自动添加权限', 'A', 'A', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', NULL, NULL, NULL, NULL, 'admin', NULL, NULL, 'admin', NULL);
-- INSERT INTO `uc_privilege_info` VALUES ('storage-sub_059', 'zh-CN', '目录权限', 'storage', '目录操作权限', NULL, NULL, 'sub_059', '添加目录时自动添加权限', 'A', 'A', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', NULL, NULL, NULL, NULL, 'admin', NULL, NULL, 'admin', NULL);
-- INSERT INTO `uc_privilege_info` VALUES ('storage-sub_060', 'zh-CN', '目录权限', 'storage', '目录操作权限', NULL, NULL, 'sub_060', '添加目录时自动添加权限', 'A', 'A', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', NULL, NULL, NULL, NULL, 'admin', NULL, NULL, 'admin', NULL);
-- INSERT INTO `uc_privilege_info` VALUES ('storage-sub_061', 'zh-CN', '目录权限', 'storage', '目录操作权限', NULL, NULL, 'sub_061', '添加目录时自动添加权限', 'A', 'A', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', NULL, NULL, NULL, NULL, 'admin', NULL, NULL, 'admin', NULL);
-- INSERT INTO `uc_privilege_info` VALUES ('storage-sub_062', 'zh-CN', '目录权限', 'storage', '目录操作权限', NULL, NULL, 'sub_062', '添加目录时自动添加权限', 'A', 'A', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', NULL, NULL, NULL, NULL, 'admin', NULL, NULL, 'admin', NULL);
-- INSERT INTO `uc_privilege_info` VALUES ('storage-sub_063', 'zh-CN', '目录权限', 'storage', '目录操作权限', NULL, NULL, 'sub_063', '添加目录时自动添加权限', 'A', 'A', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', NULL, NULL, NULL, NULL, 'admin', NULL, NULL, 'admin', NULL);
-- INSERT INTO `uc_privilege_info` VALUES ('storage-sub_064', 'zh-CN', '目录权限', 'storage', '目录操作权限', NULL, NULL, 'sub_064', '添加目录时自动添加权限', 'A', 'A', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', NULL, NULL, NULL, NULL, 'admin', NULL, NULL, 'admin', NULL);
-- INSERT INTO `uc_privilege_info` VALUES ('storage-sub_065', 'zh-CN', '目录权限', 'storage', '目录操作权限', NULL, NULL, 'sub_065', '添加目录时自动添加权限', 'A', 'A', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', NULL, NULL, NULL, NULL, 'admin', NULL, NULL, 'admin', NULL);
-- INSERT INTO `uc_privilege_info` VALUES ('storage-sub_066', 'zh-CN', '目录权限', 'storage', '目录操作权限', NULL, NULL, 'sub_066', '添加目录时自动添加权限', 'A', 'A', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', NULL, NULL, NULL, NULL, 'admin', NULL, NULL, 'admin', NULL);
-- INSERT INTO `uc_privilege_info` VALUES ('storage-sub_067', 'zh-CN', '目录权限', 'storage', '目录操作权限', NULL, NULL, 'sub_067', '添加目录时自动添加权限', 'A', 'A', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', NULL, NULL, NULL, NULL, 'admin', NULL, NULL, 'admin', NULL);
-- INSERT INTO `uc_privilege_info` VALUES ('storage-sub_068', 'zh-CN', '目录权限', 'storage', '目录操作权限', NULL, NULL, 'sub_068', '添加目录时自动添加权限', 'A', 'A', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', NULL, NULL, NULL, NULL, 'admin', NULL, NULL, 'admin', NULL);
-- INSERT INTO `uc_privilege_info` VALUES ('storage-sub_069', 'zh-CN', '目录权限', 'storage', '目录操作权限', NULL, NULL, 'sub_069', '添加目录时自动添加权限', 'A', 'A', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', NULL, NULL, NULL, NULL, 'admin', NULL, NULL, 'admin', NULL);
-- INSERT INTO `uc_privilege_info` VALUES ('storage-sub_070', 'zh-CN', '目录权限', 'storage', '目录操作权限', NULL, NULL, 'sub_070', '添加目录时自动添加权限', 'A', 'A', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', NULL, NULL, NULL, NULL, 'admin', NULL, NULL, 'admin', NULL);
-- INSERT INTO `uc_privilege_info` VALUES ('storage-sub_071', 'zh-CN', '目录权限', 'storage', '目录操作权限', NULL, NULL, 'sub_071', '添加目录时自动添加权限', 'A', 'A', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', NULL, NULL, NULL, NULL, 'admin', NULL, NULL, 'admin', NULL);
-- INSERT INTO `uc_privilege_info` VALUES ('storage-sub_072', 'zh-CN', '目录权限', 'storage', '目录操作权限', NULL, NULL, 'sub_072', '添加目录时自动添加权限', 'A', 'A', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', NULL, NULL, NULL, NULL, 'admin', NULL, NULL, 'admin', NULL);
-- INSERT INTO `uc_privilege_info` VALUES ('storage-sub_073', 'zh-CN', '目录权限', 'storage', '目录操作权限', NULL, NULL, 'sub_073', '添加目录时自动添加权限', 'A', 'A', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', NULL, NULL, NULL, NULL, 'admin', NULL, NULL, 'admin', NULL);
-- INSERT INTO `uc_privilege_info` VALUES ('storage-sub_074', 'zh-CN', '目录权限', 'storage', '目录操作权限', NULL, NULL, 'sub_074', '添加目录时自动添加权限', 'A', 'A', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', NULL, NULL, NULL, NULL, 'admin', NULL, NULL, 'admin', NULL);
-- INSERT INTO `uc_privilege_info` VALUES ('storage-sub_075', 'zh-CN', '目录权限', 'storage', '目录操作权限', NULL, NULL, 'sub_075', '添加目录时自动添加权限', 'A', 'A', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', NULL, NULL, NULL, NULL, 'admin', NULL, NULL, 'admin', NULL);
-- INSERT INTO `uc_privilege_info` VALUES ('storage-sub_076', 'zh-CN', '目录权限', 'storage', '目录操作权限', NULL, NULL, 'sub_076', '添加目录时自动添加权限', 'A', 'A', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', NULL, NULL, NULL, NULL, 'admin', NULL, NULL, 'admin', NULL);
-- INSERT INTO `uc_privilege_info` VALUES ('storage-sub_077', 'zh-CN', '目录权限', 'storage', '目录操作权限', NULL, NULL, 'sub_077', '添加目录时自动添加权限', 'A', 'A', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', NULL, NULL, NULL, NULL, 'admin', NULL, NULL, 'admin', NULL);
-- INSERT INTO `uc_privilege_info` VALUES ('storage-sub_078', 'zh-CN', '目录权限', 'storage', '目录操作权限', NULL, NULL, 'sub_078', '添加目录时自动添加权限', 'A', 'A', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', NULL, NULL, NULL, NULL, 'admin', NULL, NULL, 'admin', NULL);
-- INSERT INTO `uc_privilege_info` VALUES ('storage-sub_079', 'zh-CN', '目录权限', 'storage', '目录操作权限', NULL, NULL, 'sub_079', '添加目录时自动添加权限', 'A', 'A', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', NULL, NULL, NULL, NULL, 'admin', NULL, NULL, 'admin', NULL);
-- INSERT INTO `uc_privilege_info` VALUES ('storage-sub_080', 'zh-CN', '目录权限', 'storage', '目录操作权限', NULL, NULL, 'sub_080', '添加目录时自动添加权限', 'A', 'A', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', NULL, NULL, NULL, NULL, 'admin', NULL, NULL, 'admin', NULL);
-- INSERT INTO `uc_privilege_info` VALUES ('storage-sub_081', 'zh-CN', '目录权限', 'storage', '目录操作权限', NULL, NULL, 'sub_081', '添加目录时自动添加权限', 'A', 'A', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', NULL, NULL, NULL, NULL, 'admin', NULL, NULL, 'admin', NULL);
-- INSERT INTO `uc_privilege_info` VALUES ('storage-sub_082', 'zh-CN', '目录权限', 'storage', '目录操作权限', NULL, NULL, 'sub_082', '添加目录时自动添加权限', 'A', 'A', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', NULL, NULL, NULL, NULL, 'admin', NULL, NULL, 'admin', NULL);
-- INSERT INTO `uc_privilege_info` VALUES ('storage-sub_083', 'zh-CN', '目录权限', 'storage', '目录操作权限', NULL, NULL, 'sub_083', '添加目录时自动添加权限', 'A', 'A', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', NULL, NULL, NULL, NULL, 'admin', NULL, NULL, 'admin', NULL);
-- INSERT INTO `uc_privilege_info` VALUES ('storage-sub_084', 'zh-CN', '目录权限', 'storage', '目录操作权限', NULL, NULL, 'sub_084', '添加目录时自动添加权限', 'A', 'A', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', NULL, NULL, NULL, NULL, 'admin', NULL, NULL, 'admin', NULL);
-- INSERT INTO `uc_privilege_info` VALUES ('storage-sub_085', 'zh-CN', '目录权限', 'storage', '目录操作权限', NULL, NULL, 'sub_085', '添加目录时自动添加权限', 'A', 'A', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', NULL, NULL, NULL, NULL, 'admin', NULL, NULL, 'admin', NULL);
-- INSERT INTO `uc_privilege_info` VALUES ('storage-sub_086', 'zh-CN', '目录权限', 'storage', '目录操作权限', NULL, NULL, 'sub_086', '添加目录时自动添加权限', 'A', 'A', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', NULL, NULL, NULL, NULL, 'admin', NULL, NULL, 'admin', NULL);
-- INSERT INTO `uc_privilege_info` VALUES ('storage-sub_087', 'zh-CN', '目录权限', 'storage', '目录操作权限', NULL, NULL, 'sub_087', '添加目录时自动添加权限', 'A', 'A', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', NULL, NULL, NULL, NULL, 'admin', NULL, NULL, 'admin', NULL);
-- INSERT INTO `uc_privilege_info` VALUES ('storage-sub_088', 'zh-CN', '目录权限', 'storage', '目录操作权限', NULL, NULL, 'sub_088', '添加目录时自动添加权限', 'A', 'A', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', NULL, NULL, NULL, NULL, 'admin', NULL, NULL, 'admin', NULL);
-- INSERT INTO `uc_privilege_info` VALUES ('storage-sub_089', 'zh-CN', '目录权限', 'storage', '目录操作权限', NULL, NULL, 'sub_089', '添加目录时自动添加权限', 'A', 'A', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', NULL, NULL, NULL, NULL, 'admin', NULL, NULL, 'admin', NULL);
-- INSERT INTO `uc_privilege_info` VALUES ('storage-sub_090', 'zh-CN', '目录权限', 'storage', '目录操作权限', NULL, NULL, 'sub_090', '添加目录时自动添加权限', 'A', 'A', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', NULL, NULL, NULL, NULL, 'admin', NULL, NULL, 'admin', NULL);
-- INSERT INTO `uc_privilege_info` VALUES ('storage-sub_091', 'zh-CN', '目录权限', 'storage', '目录操作权限', NULL, NULL, 'sub_091', '添加目录时自动添加权限', 'A', 'A', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', NULL, NULL, NULL, NULL, 'admin', NULL, NULL, 'admin', NULL);
-- INSERT INTO `uc_privilege_info` VALUES ('storage-sub_092', 'zh-CN', '目录权限', 'storage', '目录操作权限', NULL, NULL, 'sub_092', '添加目录时自动添加权限', 'A', 'A', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', NULL, NULL, NULL, NULL, 'admin', NULL, NULL, 'admin', NULL);
COMMIT;

-- ----------------------------
-- Table structure for uc_role_info
-- ----------------------------
DROP TABLE IF EXISTS `uc_role_info`;
CREATE TABLE `uc_role_info` (
  `id` varchar(50) NOT NULL COMMENT '角色编号',
  `language` varchar(20) NOT NULL COMMENT '语言',
  `role_type` varchar(100) DEFAULT NULL COMMENT '角色类型',
  `role_type_name` varchar(200) DEFAULT NULL COMMENT '角色类型名称',
  `role_group` varchar(100) DEFAULT NULL COMMENT '角色分组',
  `role_group_name` varchar(200) DEFAULT NULL COMMENT '角色分组名称',
  `role_name` varchar(200) DEFAULT NULL COMMENT '角色名称',
  `role_description` varchar(2000) DEFAULT NULL COMMENT '角色描述',
  `valid_flag` varchar(5) DEFAULT NULL COMMENT '效力标志',
  `invalid_department_id` varchar(50) DEFAULT NULL COMMENT '失效用户所属部门编号',
  `invalid_user_id` varchar(50) DEFAULT NULL COMMENT '失效用户编号',
  `invalid_datetime` datetime DEFAULT NULL COMMENT '失效时间',
  `create_department_id` varchar(50) DEFAULT NULL COMMENT '创建用户所属部门编号',
  `create_user_id` varchar(50) DEFAULT NULL COMMENT '创建用户编号',
  `create_datetime` datetime DEFAULT NULL COMMENT '创建时间',
  `update_department_id` varchar(50) DEFAULT NULL COMMENT '更新用户部门所属编号',
  `update_user_id` varchar(50) DEFAULT NULL COMMENT '更新用户编号',
  `update_datetime` datetime DEFAULT NULL COMMENT '更新时间',
  PRIMARY KEY (`id`,`language`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='用户中心角色信息表';

-- ----------------------------
-- Records of uc_role_info
-- ----------------------------
BEGIN;
INSERT INTO `uc_role_info` VALUES ('ROLE-0000001', 'zh-CN', 'admin', NULL, NULL, NULL, '云平台管理员', '云平台管理员', '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `uc_role_info` VALUES ('ROLE-0000002', 'zh-CN', 'admin', NULL, NULL, NULL, '各支持中心管理员', '只能看到部分控制台页面', '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `uc_role_info` VALUES ('ROLE-0000003', 'zh-CN', 'user', 'default', NULL, NULL, '普通用户', '看不到控制台', '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `uc_role_info` VALUES ('manageOne', 'zh-CN', 'user', 'manageOne', NULL, NULL, 'manageOne 默认用户', '看不到控制台', '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
COMMIT;

-- ----------------------------
-- Table structure for uc_role_privilege_mapping
-- ----------------------------
DROP TABLE IF EXISTS `uc_role_privilege_mapping`;
CREATE TABLE `uc_role_privilege_mapping` (
  `id` varchar(150) NOT NULL COMMENT '角色权限映射编号',
  `role_id` varchar(50) DEFAULT NULL COMMENT '角色编号',
  `role_cn_name` varchar(200) DEFAULT NULL COMMENT '角色中文名称',
  `role_en_name` varchar(200) DEFAULT NULL COMMENT '角色英文名称',
  `privilege_id` varchar(50) DEFAULT NULL COMMENT '权限编号',
  `privilege_cn_name` varchar(200) DEFAULT NULL COMMENT '权限中文名称',
  `privilege_en_name` varchar(200) DEFAULT NULL COMMENT '权限中文名称',
  `effect_datetime` datetime DEFAULT NULL COMMENT '生效时间',
  `invalid_datetime` datetime DEFAULT NULL COMMENT '失效时间',
  `valid_flag` varchar(5) DEFAULT NULL COMMENT '效力标志',
  `create_department_id` varchar(50) DEFAULT NULL COMMENT '创建用户所属部门编号',
  `create_user_id` varchar(50) DEFAULT NULL COMMENT '创建用户编号',
  `create_datetime` datetime DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='用户中心角色权限映射表';

-- ----------------------------
-- Records of uc_role_privilege_mapping
-- ----------------------------
BEGIN;
INSERT INTO `uc_role_privilege_mapping` VALUES ('ROLE-0000001:menu-001', 'ROLE-0000001', '云平台管理员', NULL, 'menu-001', '首页', NULL, '2020-11-30 19:56:16', '3020-11-30 19:56:16', '1', NULL, 'admin', NULL);
INSERT INTO `uc_role_privilege_mapping` VALUES ('ROLE-0000001:menu-002', 'ROLE-0000001', '云平台管理员', NULL, 'menu-002', '用户管理', NULL, '2020-11-30 19:56:16', '3020-11-30 19:56:16', '1', NULL, 'admin', NULL);
INSERT INTO `uc_role_privilege_mapping` VALUES ('ROLE-0000001:menu-002001', 'ROLE-0000001', '云平台管理员', NULL, 'menu-002001', '用户列表', NULL, '2020-11-30 19:56:16', '3020-11-30 19:56:16', '1', NULL, 'admin', NULL);
INSERT INTO `uc_role_privilege_mapping` VALUES ('ROLE-0000001:menu-002002', 'ROLE-0000001', '云平台管理员', NULL, 'menu-002002', '用户组管理', NULL, '2020-11-30 19:56:16', '3020-11-30 19:56:16', '1', NULL, 'admin', NULL);
INSERT INTO `uc_role_privilege_mapping` VALUES ('ROLE-0000001:menu-002003', 'ROLE-0000001', '云平台管理员', NULL, 'menu-002003', '角色管理', NULL, '2020-11-30 19:56:16', '3020-11-30 19:56:16', '1', NULL, 'admin', NULL);
INSERT INTO `uc_role_privilege_mapping` VALUES ('ROLE-0000001:menu-002004', 'ROLE-0000001', '云平台管理员', NULL, 'menu-002004', '用户审核', NULL, '2020-11-30 19:56:16', '3020-11-30 19:56:16', '1', NULL, 'admin', NULL);
INSERT INTO `uc_role_privilege_mapping` VALUES ('ROLE-0000001:menu-002005', 'ROLE-0000001', '云平台管理员', NULL, 'menu-002005', '授权策略管理', NULL, '2020-11-30 19:56:16', '3020-11-30 19:56:16', '1', NULL, 'admin', NULL);
INSERT INTO `uc_role_privilege_mapping` VALUES ('ROLE-0000001:menu-002006', 'ROLE-0000001', '云平台管理员', NULL, 'menu-002006', '用户统计', NULL, '2020-11-30 19:56:16', '3020-11-30 19:56:16', '1', NULL, 'admin', NULL);
INSERT INTO `uc_role_privilege_mapping` VALUES ('ROLE-0000001:menu-003', 'ROLE-0000001', '云平台管理员', NULL, 'menu-003', '数据管理', NULL, '2020-11-30 19:56:16', '3020-11-30 19:56:16', '1', NULL, 'admin', NULL);
INSERT INTO `uc_role_privilege_mapping` VALUES ('ROLE-0000001:menu-003001', 'ROLE-0000001', '云平台管理员', NULL, 'menu-003001', '文件树管理', NULL, '2020-11-30 19:56:16', '3020-11-30 19:56:16', '1', NULL, 'admin', NULL);
INSERT INTO `uc_role_privilege_mapping` VALUES ('ROLE-0000001:menu-003002', 'ROLE-0000001', '云平台管理员', NULL, 'menu-003002', '标签管理', NULL, '2020-11-30 19:56:16', '3020-11-30 19:56:16', '1', NULL, 'admin', NULL);
INSERT INTO `uc_role_privilege_mapping` VALUES ('ROLE-0000001:menu-003003', 'ROLE-0000001', '云平台管理员', NULL, 'menu-003003', '数据管理日志查询', NULL, '2020-11-30 19:56:16', '3020-11-30 19:56:16', '1', NULL, 'admin', NULL);
INSERT INTO `uc_role_privilege_mapping` VALUES ('ROLE-0000001:menu-003004', 'ROLE-0000001', '云平台管理员', NULL, 'menu-003004', '跨中心数据申请', NULL, '2020-11-30 19:56:16', '3020-11-30 19:56:16', '1', NULL, 'admin', NULL);
INSERT INTO `uc_role_privilege_mapping` VALUES ('ROLE-0000001:menu-003005', 'ROLE-0000001', '云平台管理员', NULL, 'menu-003005', '数据统计', NULL, '2020-11-30 19:56:16', '3020-11-30 19:56:16', '1', NULL, 'admin', NULL);
INSERT INTO `uc_role_privilege_mapping` VALUES ('ROLE-0000001:menu-004', 'ROLE-0000001', '云平台管理员', NULL, 'menu-004', '消息中心', NULL, '2020-11-30 19:56:16', '3020-11-30 19:56:16', '1', NULL, 'admin', NULL);
INSERT INTO `uc_role_privilege_mapping` VALUES ('ROLE-0000001:menu-004001', 'ROLE-0000001', '云平台管理员', NULL, 'menu-004001', '消息模板库', NULL, '2020-11-30 19:56:16', '3020-11-30 19:56:16', '1', NULL, 'admin', NULL);
INSERT INTO `uc_role_privilege_mapping` VALUES ('ROLE-0000001:menu-004002', 'ROLE-0000001', '云平台管理员', NULL, 'menu-004002', '消息推送', NULL, '2020-11-30 19:56:16', '3020-11-30 19:56:16', '1', NULL, 'admin', NULL);
INSERT INTO `uc_role_privilege_mapping` VALUES ('ROLE-0000001:menu-012', 'ROLE-0000001', '云平台管理员', NULL, 'menu-012', '控制台', NULL, '2020-11-30 19:56:16', '3020-11-30 19:56:16', '1', NULL, 'admin', NULL);
INSERT INTO `uc_role_privilege_mapping` VALUES ('ROLE-0000002:menu-002', 'ROLE-0000002', '各支持中心管理员', NULL, 'menu-002', '用户管理', NULL, '2020-12-10 18:14:00', '3020-12-10 18:14:00', '1', NULL, 'admin', NULL);
INSERT INTO `uc_role_privilege_mapping` VALUES ('ROLE-0000002:menu-002001', 'ROLE-0000002', '各支持中心管理员', NULL, 'menu-002001', '用户列表', NULL, '2020-12-10 18:14:00', '3020-12-10 18:14:00', '1', NULL, 'admin', NULL);
INSERT INTO `uc_role_privilege_mapping` VALUES ('ROLE-0000002:menu-002002', 'ROLE-0000002', '各支持中心管理员', NULL, 'menu-002002', '用户组管理', NULL, '2020-12-10 18:14:00', '3020-12-10 18:14:00', '1', NULL, 'admin', NULL);
INSERT INTO `uc_role_privilege_mapping` VALUES ('ROLE-0000002:menu-002004', 'ROLE-0000002', '各支持中心管理员', NULL, 'menu-002004', '用户审核', NULL, '2020-12-10 18:14:00', '3020-12-10 18:14:00', '1', NULL, 'admin', NULL);
INSERT INTO `uc_role_privilege_mapping` VALUES ('ROLE-0000002:menu-002005', 'ROLE-0000002', '各支持中心管理员', NULL, 'menu-002005', '授权策略管理', NULL, '2020-12-10 18:14:00', '3020-12-10 18:14:00', '1', NULL, 'admin', NULL);
INSERT INTO `uc_role_privilege_mapping` VALUES ('ROLE-0000002:menu-003', 'ROLE-0000002', '各支持中心管理员', NULL, 'menu-003', '数据管理', NULL, '2020-12-10 18:14:00', '3020-12-10 18:14:00', '1', NULL, 'admin', NULL);
INSERT INTO `uc_role_privilege_mapping` VALUES ('ROLE-0000002:menu-003001', 'ROLE-0000002', '各支持中心管理员', NULL, 'menu-003001', '文件树管理', NULL, '2020-12-10 18:14:00', '3020-12-10 18:14:00', '1', NULL, 'admin', NULL);
INSERT INTO `uc_role_privilege_mapping` VALUES ('ROLE-0000002:menu-003002', 'ROLE-0000002', '各支持中心管理员', NULL, 'menu-003002', '标签管理', NULL, '2020-12-10 18:14:00', '3020-12-10 18:14:00', '1', NULL, 'admin', NULL);
INSERT INTO `uc_role_privilege_mapping` VALUES ('ROLE-0000002:menu-003003', 'ROLE-0000002', '各支持中心管理员', NULL, 'menu-003003', '数据管理日志查询', NULL, '2020-12-10 18:14:00', '3020-12-10 18:14:00', '1', NULL, 'admin', NULL);
INSERT INTO `uc_role_privilege_mapping` VALUES ('ROLE-0000002:menu-003004', 'ROLE-0000002', '各支持中心管理员', NULL, 'menu-003004', '跨中心数据申请', NULL, '2020-12-10 18:14:00', '3020-12-10 18:14:00', '1', NULL, 'admin', NULL);
INSERT INTO `uc_role_privilege_mapping` VALUES ('ROLE-0000002:menu-004', 'ROLE-0000002', '各支持中心管理员', NULL, 'menu-004', '消息中心', NULL, '2020-12-10 18:13:59', '3020-12-10 18:13:59', '1', NULL, 'admin', NULL);
INSERT INTO `uc_role_privilege_mapping` VALUES ('ROLE-0000002:menu-004001', 'ROLE-0000002', '各支持中心管理员', NULL, 'menu-004001', '消息模板库', NULL, '2020-12-10 18:14:00', '3020-12-10 18:14:00', '1', NULL, 'admin', NULL);
INSERT INTO `uc_role_privilege_mapping` VALUES ('ROLE-0000002:menu-004002', 'ROLE-0000002', '各支持中心管理员', NULL, 'menu-004002', '消息推送', NULL, '2020-12-10 18:14:00', '3020-12-10 18:14:00', '1', NULL, 'admin', NULL);
INSERT INTO `uc_role_privilege_mapping` VALUES ('ROLE-0000002:menu-012', 'ROLE-0000002', '各支持中心管理员', NULL, 'menu-012', '控制台', NULL, '2020-12-10 18:14:00', '3020-12-10 18:14:00', '1', NULL, 'admin', NULL);
INSERT INTO `uc_role_privilege_mapping` VALUES ('ROLE-0000003:menu-001', 'ROLE-0000003', '普通用户', NULL, 'menu-001', '首页', NULL, '2020-07-03 17:42:22', '3020-07-03 17:42:22', '1', 'GROUP-0000001', 'center_a_admin', NULL);
-- INSERT INTO `uc_role_privilege_mapping` VALUES ('a09ce327121b4c099c50481458ba36e3:menu-001', 'a09ce327121b4c099c50481458ba36e3', '我就测试一下', NULL, 'menu-001', '首页', NULL, '2020-11-25 14:46:07', '3020-11-25 14:46:07', '1', NULL, 'wangbo_123', NULL);
-- INSERT INTO `uc_role_privilege_mapping` VALUES ('a09ce327121b4c099c50481458ba36e3:menu-002', 'a09ce327121b4c099c50481458ba36e3', '我就测试一下', NULL, 'menu-002', '用户管理', NULL, '2020-11-25 14:46:07', '3020-11-25 14:46:07', '1', NULL, 'wangbo_123', NULL);
-- INSERT INTO `uc_role_privilege_mapping` VALUES ('a09ce327121b4c099c50481458ba36e3:menu-002001', 'a09ce327121b4c099c50481458ba36e3', '我就测试一下', NULL, 'menu-002001', '用户列表', NULL, '2020-11-25 14:46:07', '3020-11-25 14:46:07', '1', NULL, 'wangbo_123', NULL);
-- INSERT INTO `uc_role_privilege_mapping` VALUES ('a09ce327121b4c099c50481458ba36e3:menu-002002', 'a09ce327121b4c099c50481458ba36e3', '我就测试一下', NULL, 'menu-002002', '用户组管理', NULL, '2020-11-25 14:46:07', '3020-11-25 14:46:07', '1', NULL, 'wangbo_123', NULL);
-- INSERT INTO `uc_role_privilege_mapping` VALUES ('a09ce327121b4c099c50481458ba36e3:menu-002003', 'a09ce327121b4c099c50481458ba36e3', '我就测试一下', NULL, 'menu-002003', '角色管理', NULL, '2020-11-25 14:46:07', '3020-11-25 14:46:07', '1', NULL, 'wangbo_123', NULL);
-- INSERT INTO `uc_role_privilege_mapping` VALUES ('a09ce327121b4c099c50481458ba36e3:menu-002004', 'a09ce327121b4c099c50481458ba36e3', '我就测试一下', NULL, 'menu-002004', '用户审核', NULL, '2020-11-25 14:46:07', '3020-11-25 14:46:07', '1', NULL, 'wangbo_123', NULL);
-- INSERT INTO `uc_role_privilege_mapping` VALUES ('a09ce327121b4c099c50481458ba36e3:menu-002005', 'a09ce327121b4c099c50481458ba36e3', '我就测试一下', NULL, 'menu-002005', '授权策略管理', NULL, '2020-11-25 14:46:07', '3020-11-25 14:46:07', '1', NULL, 'wangbo_123', NULL);
-- INSERT INTO `uc_role_privilege_mapping` VALUES ('a09ce327121b4c099c50481458ba36e3:menu-002006', 'a09ce327121b4c099c50481458ba36e3', '我就测试一下', NULL, 'menu-002006', '用户统计', NULL, '2020-11-25 14:46:07', '3020-11-25 14:46:07', '1', NULL, 'wangbo_123', NULL);
-- INSERT INTO `uc_role_privilege_mapping` VALUES ('a09ce327121b4c099c50481458ba36e3:menu-012', 'a09ce327121b4c099c50481458ba36e3', '我就测试一下', NULL, 'menu-012', '控制台', NULL, '2020-11-25 14:46:07', '3020-11-25 14:46:07', '1', NULL, 'wangbo_123', NULL);
COMMIT;

-- ----------------------------
-- Table structure for uc_strategy_info
-- ----------------------------
DROP TABLE IF EXISTS `uc_strategy_info`;
CREATE TABLE `uc_strategy_info` (
  `id` varchar(70) NOT NULL COMMENT '策略编号',
  `language` varchar(20) NOT NULL COMMENT '语言',
  `strategy_type` varchar(100) DEFAULT NULL COMMENT '策略类型',
  `strategy_type_name` varchar(200) DEFAULT NULL COMMENT '策略类型名称',
  `strategy_group` varchar(100) DEFAULT NULL COMMENT '策略分组',
  `strategy_group_name` varchar(200) DEFAULT NULL COMMENT '策略分组名称',
  `strategy_name` varchar(200) DEFAULT NULL COMMENT '策略名称',
  `strategy_description` varchar(2000) DEFAULT NULL COMMENT '策略描述',
  `valid_flag` varchar(5) DEFAULT NULL COMMENT '效力标志',
  `invalid_department_id` varchar(50) DEFAULT NULL COMMENT '失效用户所属部门编号',
  `invalid_user_id` varchar(50) DEFAULT NULL COMMENT '失效用户编号',
  `invalid_datetime` datetime DEFAULT NULL COMMENT '失效时间',
  `create_department_id` varchar(50) DEFAULT NULL COMMENT '创建用户所属部门编号',
  `create_user_id` varchar(50) DEFAULT NULL COMMENT '创建用户编号',
  `create_datetime` datetime DEFAULT NULL COMMENT '创建时间',
  `update_department_id` varchar(50) DEFAULT NULL COMMENT '更新用户部门所属编号',
  `update_user_id` varchar(50) DEFAULT NULL COMMENT '更新用户编号',
  `update_datetime` datetime DEFAULT NULL COMMENT '更新时间',
  `top_group_center` varchar(256) DEFAULT NULL COMMENT '顶级用户组即机构',
  PRIMARY KEY (`id`,`language`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='用户中心策略信息表';

-- ----------------------------
-- Records of uc_strategy_info
-- ----------------------------
BEGIN;
INSERT INTO `uc_strategy_info` VALUES ('strategy-00001', 'zh-CN', NULL, NULL, NULL, NULL, '有效载荷管理中心的策略', '有效载荷管理中心的策略', '1', NULL, NULL, '3020-11-18 16:40:05', NULL, 'admin', '2020-11-18 16:40:05', NULL, 'admin', '2020-11-18 16:40:05', 'center_001');
INSERT INTO `uc_strategy_info` VALUES ('strategy-00002', 'zh-CN', NULL, NULL, NULL, NULL, '在轨航天器支持中心的策略', '在轨航天器支持中心的策略', '1', NULL, NULL, '3020-11-18 16:40:05', NULL, 'admin', '2020-11-18 16:40:05', NULL, 'admin', '2020-11-18 16:40:05', 'center_002');
INSERT INTO `uc_strategy_info` VALUES ('strategy-00003', 'zh-CN', NULL, NULL, NULL, NULL, '航天员支持中心的策略', '航天员支持中心的策略', '1', NULL, NULL, '3020-11-18 16:40:05', NULL, 'admin', '2020-11-18 16:40:05', NULL, 'admin', '2020-11-18 16:40:05', 'center_003');
INSERT INTO `uc_strategy_info` VALUES ('strategy-00004', 'zh-CN', NULL, NULL, NULL, NULL, '空间站运营管理中心的策略', '空间站运营管理中心的策略', '1', NULL, NULL, '3020-11-18 16:40:05', NULL, 'admin', '2020-11-18 16:40:05', NULL, 'admin', '2020-11-18 16:40:05', 'center_004');
INSERT INTO `uc_strategy_info` VALUES ('strategy-00005', 'zh-CN', NULL, NULL, NULL, NULL, '运行控制中心的策略', '运行控制中心的策略', '1', NULL, NULL, '3020-11-18 16:40:05', NULL, 'admin', '2020-11-18 16:40:05', NULL, 'admin', '2020-11-18 16:40:05', 'center_005');
INSERT INTO `uc_strategy_info` VALUES ('strategy-00006', 'zh-CN', NULL, NULL, NULL, NULL, '工程信息中心的策略', '工程信息中心的策略', '1', NULL, NULL, '3020-11-18 16:40:05', NULL, 'admin', '2020-11-18 16:40:05', NULL, 'admin', '2020-11-18 16:40:05', 'center_006');
INSERT INTO `uc_strategy_info` VALUES ('strategy-00007', 'zh-CN', NULL, NULL, NULL, NULL, '仿真技术研究室的策略', '仿真技术研究室的策略', '1', NULL, NULL, '3020-11-18 16:40:05', NULL, 'admin', '2020-11-18 16:40:05', NULL, 'admin', '2020-11-18 16:40:05', 'center_007');
INSERT INTO `uc_strategy_info` VALUES ('strategy-00008', 'zh-CN', NULL, NULL, NULL, NULL, '运营规划中心的策略', '运营规划中心的策略', '1', NULL, NULL, '3020-11-18 16:40:05', NULL, 'admin', '2020-11-18 16:40:05', NULL, 'admin', '2020-11-18 16:40:05', 'center_008');
INSERT INTO `uc_strategy_info` VALUES ('strategy-00009', 'zh-CN', NULL, NULL, NULL, NULL, '运控管理系统的策略', '运控管理系统的策略', '1', NULL, NULL, '3020-11-18 16:40:05', NULL, 'admin', '2020-11-18 16:40:05', NULL, 'admin', '2020-11-18 16:40:05', 'center_009');
INSERT INTO `uc_strategy_info` VALUES ('strategy-00010', 'zh-CN', NULL, NULL, NULL, NULL, '科学与应用数据中心的策略', '科学与应用数据中心的策略', '1', NULL, NULL, '3020-11-18 16:40:05', NULL, 'admin', '2020-11-18 16:40:05', NULL, 'admin', '2020-11-18 16:40:05', 'center_010');
-- 以上是手动添加的信息
-- INSERT INTO `uc_strategy_info` VALUES ('52f0e68e7f6744a98cb7345ce35f61d2', 'zh-CN', NULL, NULL, NULL, NULL, '运控中心的策略①', '运控中心策略', NULL, NULL, NULL, NULL, NULL, 'test_user_5', NULL, NULL, 'test_user_5', NULL, 'center_005');
-- INSERT INTO `uc_strategy_info` VALUES ('7152ceb2512c4cc6b70a16c98b54d52d', 'zh-CN', NULL, NULL, NULL, NULL, '有效载荷中心数据授权策略', '有效载荷中心数据授权策略', '1', NULL, NULL, '3020-11-18 16:39:24', NULL, 'admin', '2020-11-18 16:39:23', NULL, 'admin', '2020-11-18 16:39:23', NULL);
-- INSERT INTO `uc_strategy_info` VALUES ('7dc791df89fd446886d6d0bd7a072684', 'zh-CN', NULL, NULL, NULL, NULL, '在轨航天器支持中心数据授权策略', '在轨航天器支持中心数据授权策略', '1', NULL, NULL, '3020-11-18 16:40:05', NULL, 'admin', '2020-11-18 16:40:05', NULL, 'admin', '2020-11-18 16:40:05', NULL);
-- INSERT INTO `uc_strategy_info` VALUES ('7f136ae0603b4beead3ebb0a3681e875', 'zh-CN', NULL, NULL, NULL, NULL, '在轨航天器的策略', '在轨航天器的策略', NULL, NULL, NULL, NULL, NULL, 'test_user_2', NULL, NULL, 'test_user_2', NULL, 'center_002');
-- INSERT INTO `uc_strategy_info` VALUES ('8813d4d1e3384820bc1f82adcd827c14', 'zh-CN', NULL, NULL, NULL, NULL, '载荷中心授权策略1', 'test_user_1创建', '1', NULL, NULL, '3020-12-11 10:08:14', NULL, 'test_user_1', '2020-12-11 10:08:14', NULL, 'test_user_1', '2020-12-11 10:08:14', 'center_001');
-- INSERT INTO `uc_strategy_info` VALUES ('e724a31768c04b96b409de7000b7b664', 'zh-CN', NULL, NULL, NULL, NULL, '航天员支持中心授权策略', '航天员支持中心管理员创建的授权策略', NULL, NULL, NULL, NULL, NULL, 'test_user_3', NULL, NULL, 'test_user_3', NULL, 'center_003');
-- INSERT INTO `uc_strategy_info` VALUES ('f1d6d37054964b0b9086d5f871bb5de3', 'zh-CN', NULL, NULL, NULL, NULL, '空间站运营管理中心数据授权策略', '空间站运营管理中心管理员创建的授权策略', NULL, NULL, NULL, NULL, NULL, 'test_user_4', NULL, NULL, 'test_user_4', NULL, 'center_004');
COMMIT;

-- ----------------------------
-- Table structure for uc_strategy_privilege_mapping
-- ----------------------------
DROP TABLE IF EXISTS `uc_strategy_privilege_mapping`;
CREATE TABLE `uc_strategy_privilege_mapping` (
  `id` varchar(256) NOT NULL COMMENT '策略权限映射编号',
  `strategy_id` varchar(50) DEFAULT NULL COMMENT '策略编号',
  `strategy_cn_name` varchar(200) DEFAULT NULL COMMENT '策略中文名称',
  `strategy_en_name` varchar(200) DEFAULT NULL COMMENT '策略英文名称',
  `privilege_id` varchar(50) DEFAULT NULL COMMENT '权限编号',
  `privilege_cn_name` varchar(200) DEFAULT NULL COMMENT '权限中文名称',
  `privilege_en_name` varchar(200) DEFAULT NULL COMMENT '权限中文名称',
  `effect_datetime` datetime DEFAULT NULL COMMENT '生效时间',
  `invalid_datetime` datetime DEFAULT NULL COMMENT '失效时间',
  `valid_flag` varchar(5) DEFAULT NULL COMMENT '效力标志',
  `create_department_id` varchar(50) DEFAULT NULL COMMENT '创建用户所属部门编号',
  `create_user_id` varchar(50) DEFAULT NULL COMMENT '创建用户编号',
  `create_datetime` datetime DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='用户中心策略权限映射表';

-- ----------------------------
-- Records of uc_strategy_privilege_mapping
-- ----------------------------
BEGIN;
INSERT INTO `uc_strategy_privilege_mapping` VALUES ('strategy-00001:storage-c-center_001', 'strategy-00001', '有效载荷中心数据授权策略', NULL, 'storage-c-center_001', '目录权限-有效载荷运行管理中心', NULL, '2020-11-18 16:39:24', '3020-11-18 16:39:24', '1', NULL, 'admin', '2020-11-18 16:39:24');
INSERT INTO `uc_strategy_privilege_mapping` VALUES ('strategy-00002:storage-c-center_002', 'strategy-00002', '在轨航天器支持中心数据授权策略', NULL, 'storage-c-center_002', '目录权限-在轨航天器支持中心', NULL, '2020-11-18 16:40:05', '3020-11-18 16:40:05', '1', NULL, 'admin', '2020-11-18 16:40:05');
INSERT INTO `uc_strategy_privilege_mapping` VALUES ('strategy-00003:storage-c-center_003', 'strategy-00003', '航天员支持中心授权策略', NULL, 'storage-c-center_003', '目录权限-航天员支持中心', NULL, '2020-10-24 10:37:44', '3020-10-24 10:37:44', '1', NULL, 'admin', '2020-10-24 10:37:44');
COMMIT;

-- ----------------------------
-- Table structure for uc_user_authorize
-- ----------------------------
DROP TABLE IF EXISTS `uc_user_authorize`;
CREATE TABLE `uc_user_authorize` (
  `id` varchar(50) NOT NULL COMMENT '授权编号',
  `authorize_type` varchar(20) DEFAULT NULL COMMENT '授权类型(ROLE；PRIVILEGE)',
  `authorize_type_name` varchar(200) DEFAULT NULL COMMENT '授权类型名称',
  `authorize_user_id` varchar(50) DEFAULT NULL COMMENT '授权用户编号',
  `authorize_user_cn_name` varchar(50) DEFAULT NULL COMMENT '授权用户中文名称',
  `authorize_user_en_name` varchar(50) DEFAULT NULL COMMENT '授权用户英文名称',
  `authorize_department_id` varchar(40) DEFAULT NULL COMMENT '授权用户所属部门编号',
  `authorize_department_cn_name` varchar(200) DEFAULT NULL COMMENT '授权用户所属部门中文名称',
  `authorize_department_en_name` varchar(200) DEFAULT NULL COMMENT '授权用户所属部门英文名称',
  `user_id` varchar(50) DEFAULT NULL COMMENT '被授权用户编号',
  `user_cn_name` varchar(50) DEFAULT NULL COMMENT '被授权用户中文名称',
  `user_en_name` varchar(50) DEFAULT NULL COMMENT '被授权用户英文名称',
  `department_id` varchar(50) DEFAULT NULL COMMENT '被授权用户所属部门编号',
  `department_cn_name` varchar(200) DEFAULT NULL COMMENT '被授权用户所属部门中文名称',
  `department_en_name` varchar(200) DEFAULT NULL COMMENT '被授权用户所属部门英文名称',
  `authorize_id` varchar(50) DEFAULT NULL COMMENT '授权编号(权限编号；角色编号)',
  `authorize_cn_name` varchar(200) DEFAULT NULL COMMENT '授权中文名称',
  `authorize_en_name` varchar(200) DEFAULT NULL COMMENT '授权英文名称',
  `authorize_begin_datetime` datetime DEFAULT NULL COMMENT '授权开始时间',
  `authorize_end_datetime` datetime DEFAULT NULL COMMENT '授权结束时间',
  `valid_flag` varchar(5) DEFAULT NULL COMMENT '效力标志',
  `invalid_department_id` varchar(50) DEFAULT NULL COMMENT '失效用户所属部门编号',
  `invalid_user_id` varchar(50) DEFAULT NULL COMMENT '失效用户编号',
  `invalid_datetime` datetime DEFAULT NULL COMMENT '失效时间',
  `create_department_id` varchar(50) DEFAULT NULL COMMENT '创建用户所属部门编号',
  `create_user_id` varchar(50) DEFAULT NULL COMMENT '创建用户编号',
  `create_datetime` datetime DEFAULT NULL COMMENT '创建时间',
  `update_department_id` varchar(50) DEFAULT NULL COMMENT '更新用户部门所属编号',
  `update_user_id` varchar(50) DEFAULT NULL COMMENT '更新用户编号',
  `update_datetime` datetime DEFAULT NULL COMMENT '更新时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='用户中心用户授权表';

-- ----------------------------
-- Table structure for uc_user_department_mapping
-- ----------------------------
DROP TABLE IF EXISTS `uc_user_department_mapping`;
CREATE TABLE `uc_user_department_mapping` (
  `id` varchar(150) NOT NULL COMMENT '用户部门映射编号',
  `user_id` varchar(50) DEFAULT NULL COMMENT '用户编号',
  `user_cn_name` varchar(50) DEFAULT NULL COMMENT '用户中文名称',
  `user_en_name` varchar(50) DEFAULT NULL COMMENT '用户英文名称',
  `department_id` varchar(50) DEFAULT NULL COMMENT '部门编号',
  `department_cn_name` varchar(200) DEFAULT NULL COMMENT '部门中文名称',
  `department_en_name` varchar(200) DEFAULT NULL COMMENT '部门英文名称',
  `effect_datetime` datetime DEFAULT NULL COMMENT '生效时间',
  `invalid_datetime` datetime DEFAULT NULL COMMENT '失效时间',
  `valid_flag` varchar(5) DEFAULT NULL COMMENT '效力标志',
  `create_department_id` varchar(50) DEFAULT NULL COMMENT '创建用户所属部门编号',
  `create_user_id` varchar(50) DEFAULT NULL COMMENT '创建用户编号',
  `create_datetime` datetime DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='用户中心用户部门映射表';

-- ----------------------------
-- Table structure for uc_user_group_mapping
-- ----------------------------
DROP TABLE IF EXISTS `uc_user_group_mapping`;
CREATE TABLE `uc_user_group_mapping` (
  `id` varchar(150) NOT NULL COMMENT '用户用户组映射编号',
  `user_id` varchar(50) DEFAULT NULL COMMENT '用户编号',
  `user_cn_name` varchar(50) DEFAULT NULL COMMENT '用户中文名称',
  `user_en_name` varchar(50) DEFAULT NULL COMMENT '用户英文名称',
  `department_id` varchar(50) DEFAULT NULL COMMENT '部门编号',
  `department_cn_name` varchar(200) DEFAULT NULL COMMENT '部门中文名称',
  `department_en_name` varchar(200) DEFAULT NULL COMMENT '部门英文名称',
  `group_id` varchar(50) DEFAULT NULL COMMENT '用户组编号',
  `group_cn_name` varchar(200) DEFAULT NULL COMMENT '用户组中文名称',
  `group_en_name` varchar(200) DEFAULT NULL COMMENT '用户组英文名称',
  `effect_datetime` datetime DEFAULT NULL COMMENT '生效时间',
  `invalid_datetime` datetime DEFAULT NULL COMMENT '失效时间',
  `valid_flag` varchar(5) DEFAULT NULL COMMENT '效力标志',
  `create_department_id` varchar(50) DEFAULT NULL COMMENT '创建用户所属部门编号',
  `create_user_id` varchar(50) DEFAULT NULL COMMENT '创建用户编号',
  `create_datetime` datetime DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='用户中心用户用户组映射表';

-- -- ----------------------------
-- -- Records of uc_user_group_mapping
-- -- ----------------------------
-- BEGIN;
-- INSERT INTO `uc_user_group_mapping` VALUES ('096f56c3-baff-405b-bc29-42c3ad890148:zjf_test', 'zjf_test', 'zjfcool', NULL, NULL, NULL, NULL, '096f56c3-baff-405b-bc29-42c3ad890148', '科学与应用数据中心_L2', NULL, '2020-12-14 18:16:14', '3020-12-14 18:16:14', '1', NULL, 'admin', '2020-12-14 18:16:14');
-- INSERT INTO `uc_user_group_mapping` VALUES ('127f392d-920a-41ee-9406-f924cb4ea396:test_user_20', 'test_user_20', '测试用户20', NULL, NULL, NULL, NULL, '127f392d-920a-41ee-9406-f924cb4ea396', '在轨航天器中心_L2', NULL, '2020-12-10 17:30:30', '3020-12-10 17:30:30', '1', NULL, 'admin', '2020-12-10 17:30:30');
-- INSERT INTO `uc_user_group_mapping` VALUES ('16441b14ff264f1eb6c946b28b7462dc:wangbo_1233', 'wangbo_1233', '王博', NULL, NULL, NULL, NULL, '16441b14ff264f1eb6c946b28b7462dc', '在轨航天器支持中心21', NULL, '2020-12-10 17:32:00', '3020-12-10 17:32:00', '1', NULL, 'admin', '2020-12-10 17:32:00');
-- INSERT INTO `uc_user_group_mapping` VALUES ('28fd533f-39bf-4a48-9706-970962626f82:center_a_admin', 'center_a_admin', 'center_a_admin', '测试中心A管理员', NULL, NULL, NULL, '28fd533f-39bf-4a48-9706-970962626f82', '测试中心A_二级VDC', NULL, '2020-10-23 18:54:26', '3020-10-23 18:54:26', '1', NULL, 'admin', '2020-10-23 18:54:26');
-- INSERT INTO `uc_user_group_mapping` VALUES ('28fd533f-39bf-4a48-9706-970962626f82:center_a_demo_user', 'center_a_demo_user', 'center_a_demo_user', '测试中心A用户', NULL, NULL, NULL, '28fd533f-39bf-4a48-9706-970962626f82', '测试中心A_二级VDC', NULL, '2020-10-23 18:54:45', '3020-10-23 18:54:45', '1', NULL, 'admin', '2020-10-23 18:54:45');
-- INSERT INTO `uc_user_group_mapping` VALUES ('32bd1e8f91054862933918d540290ee4:wangbo_1233', 'wangbo_1233', '王博', NULL, NULL, NULL, NULL, '32bd1e8f91054862933918d540290ee4', '在轨航天器支持中心12', NULL, '2020-12-10 17:32:00', '3020-12-10 17:32:00', '1', NULL, 'admin', '2020-12-10 17:32:00');
-- INSERT INTO `uc_user_group_mapping` VALUES ('333f29789dc04eaebe52a11bb6cd0843:wangbo_123', 'wangbo_123', 'lalal', NULL, NULL, NULL, NULL, '333f29789dc04eaebe52a11bb6cd0843', '在轨航天器支持中心11', NULL, '2020-11-25 17:14:38', '3020-11-25 17:14:38', '1', NULL, 'admin', '2020-11-25 17:14:38');
-- INSERT INTO `uc_user_group_mapping` VALUES ('5d9334f7-9dba-47a3-b6b6-c9cecf97f7e9:test_user', 'test_user', '11', NULL, NULL, NULL, NULL, '5d9334f7-9dba-47a3-b6b6-c9cecf97f7e9', '有效载荷运控管理系统_L2', NULL, '2020-10-22 15:54:35', '3020-10-22 15:54:35', '1', NULL, 'admin', '2020-10-22 15:54:35');
-- INSERT INTO `uc_user_group_mapping` VALUES ('5d9334f7-9dba-47a3-b6b6-c9cecf97f7e9:test_user_1', 'test_user_1', '测试用户1', NULL, NULL, NULL, NULL, '5d9334f7-9dba-47a3-b6b6-c9cecf97f7e9', '有效载荷运控管理系统_L2', NULL, '2020-11-18 16:50:13', '3020-11-18 16:50:13', '1', NULL, 'admin', '2020-11-18 16:50:13');
-- INSERT INTO `uc_user_group_mapping` VALUES ('8d6f3bc3-bc71-464f-bd43-003bdb271990:test_user_4', 'test_user_4', '测试用户4', NULL, NULL, NULL, NULL, '8d6f3bc3-bc71-464f-bd43-003bdb271990', '仿真中心_L2', NULL, '2020-12-10 19:10:59', '3020-12-10 19:10:59', '1', NULL, 'admin', '2020-12-10 19:10:59');
-- INSERT INTO `uc_user_group_mapping` VALUES ('8d6f3bc3-bc71-464f-bd43-003bdb271990:test_user_40', 'test_user_40', '测试用户40', NULL, NULL, NULL, NULL, '8d6f3bc3-bc71-464f-bd43-003bdb271990', '仿真中心_L2', NULL, '2020-12-10 19:10:49', '3020-12-10 19:10:49', '1', NULL, 'admin', '2020-12-10 19:10:49');
-- INSERT INTO `uc_user_group_mapping` VALUES ('a551888a-62f5-4d3c-b368-bddf5ab54de7:test_user_6', 'test_user_6', '测试用户6', NULL, NULL, NULL, NULL, 'a551888a-62f5-4d3c-b368-bddf5ab54de7', '工程信息中心_L2', NULL, '2020-10-23 18:32:15', '3020-10-23 18:32:15', '1', NULL, 'admin', '2020-10-23 18:32:15');
-- INSERT INTO `uc_user_group_mapping` VALUES ('a551888a-62f5-4d3c-b368-bddf5ab54de7:test_user_60', 'test_user_60', '测试用户60', NULL, NULL, NULL, NULL, 'a551888a-62f5-4d3c-b368-bddf5ab54de7', '工程信息中心_L2', NULL, '2020-10-23 18:54:03', '3020-10-23 18:54:03', '1', NULL, 'admin', '2020-10-23 18:54:03');
-- INSERT INTO `uc_user_group_mapping` VALUES ('a8072a16-e3be-4c1d-a714-3797fb63afb4:center_b_admin', 'center_b_admin', 'center_b_admin', '测试中心B管理员', NULL, NULL, NULL, 'a8072a16-e3be-4c1d-a714-3797fb63afb4', '测试中心B_二级VDC', NULL, '2020-10-23 18:55:17', '3020-10-23 18:55:17', '1', NULL, 'admin', '2020-10-23 18:55:17');
-- INSERT INTO `uc_user_group_mapping` VALUES ('b0a65173-72cf-4d4f-a254-7abfad6bc760:pikachu', 'pikachu', '董晨蕊', NULL, NULL, NULL, NULL, 'b0a65173-72cf-4d4f-a254-7abfad6bc760', '航天员支持中心_L2', NULL, '2020-10-29 10:39:25', '3020-10-29 10:39:25', '1', NULL, 'admin', '2020-10-29 10:39:25');
-- INSERT INTO `uc_user_group_mapping` VALUES ('b0a65173-72cf-4d4f-a254-7abfad6bc760:test_user_3', 'test_user_3', '测试用户3', NULL, NULL, NULL, NULL, 'b0a65173-72cf-4d4f-a254-7abfad6bc760', '航天员支持中心_L2', NULL, '2020-10-23 18:27:09', '3020-10-23 18:27:09', '1', NULL, 'admin', '2020-10-23 18:27:09');
-- INSERT INTO `uc_user_group_mapping` VALUES ('b0a65173-72cf-4d4f-a254-7abfad6bc760:test_user_30', 'test_user_30', '测试用户30', NULL, NULL, NULL, NULL, 'b0a65173-72cf-4d4f-a254-7abfad6bc760', '航天员支持中心_L2', NULL, '2020-12-10 17:28:30', '3020-12-10 17:28:30', '1', NULL, 'admin', '2020-12-10 17:28:30');
-- INSERT INTO `uc_user_group_mapping` VALUES ('c-center_001:test_user_1', 'test_user_1', '测试用户1', NULL, NULL, NULL, NULL, 'c-center_001', '有效载荷运行管理中心', NULL, '2020-11-18 16:50:13', '3020-11-18 16:50:13', '1', NULL, 'admin', '2020-11-18 16:50:13');
-- INSERT INTO `uc_user_group_mapping` VALUES ('c-center_001:test_user_11', 'test_user_11', '测试用户 11', NULL, NULL, NULL, NULL, 'c-center_001', '有效载荷运行管理中心', NULL, '2020-12-01 15:37:02', '3020-12-01 15:37:02', '1', NULL, 'test_user_1', '2020-12-01 15:37:02');
-- INSERT INTO `uc_user_group_mapping` VALUES ('c-center_001:test_user_12', 'test_user_12', '测试注册用户', NULL, NULL, NULL, NULL, 'c-center_001', '有效载荷运行管理中心', NULL, '2020-12-01 16:03:58', '3020-12-01 16:03:58', '1', NULL, 'test_user_1', '2020-12-01 16:03:58');
-- INSERT INTO `uc_user_group_mapping` VALUES ('c-center_002:test_user_2', 'test_user_2', '测试用户2', NULL, NULL, NULL, NULL, 'c-center_002', '在轨航天器支持中心', NULL, '2020-11-24 10:04:46', '3020-11-24 10:04:46', '1', NULL, 'admin', '2020-11-24 10:04:46');
-- INSERT INTO `uc_user_group_mapping` VALUES ('c-center_003:test_user_3', 'test_user_3', '测试用户3', NULL, NULL, NULL, NULL, 'c-center_003', '航天员支持中心', NULL, '2020-10-23 18:27:09', '3020-10-23 18:27:09', '1', NULL, 'admin', '2020-10-23 18:27:09');
-- INSERT INTO `uc_user_group_mapping` VALUES ('c-center_004:test_user_4', 'test_user_4', '测试用户4', NULL, NULL, NULL, NULL, 'c-center_004', '空间站运营管理中心', NULL, '2020-12-10 19:10:59', '3020-12-10 19:10:59', '1', NULL, 'admin', '2020-12-10 19:10:59');
-- INSERT INTO `uc_user_group_mapping` VALUES ('c-center_005:test_user_5', 'test_user_5', '测试用户5', NULL, NULL, NULL, NULL, 'c-center_005', '运行控制中心', NULL, '2020-10-23 18:27:48', '3020-10-23 18:27:48', '1', NULL, 'admin', '2020-10-23 18:27:48');
-- INSERT INTO `uc_user_group_mapping` VALUES ('c57bd5d92b3d4700b98dee6e0096e660:wangbo_123', 'wangbo_123', 'lalal', NULL, NULL, NULL, NULL, 'c57bd5d92b3d4700b98dee6e0096e660', '在轨航天器支持中心22', NULL, '2020-11-25 17:14:38', '3020-11-25 17:14:38', '1', NULL, 'admin', '2020-11-25 17:14:38');
-- INSERT INTO `uc_user_group_mapping` VALUES ('center_001:test_reg_poac_1', 'test_reg_poac_1', '王宇航', NULL, NULL, NULL, NULL, 'center_001', '有效载荷运行管理中心1', NULL, '2020-12-08 17:51:28', '3020-12-08 17:51:28', '1', NULL, 'test_user_1', '2020-12-08 17:51:28');
-- INSERT INTO `uc_user_group_mapping` VALUES ('center_002:test_user_2', 'test_user_2', '测试用户2', NULL, NULL, NULL, NULL, 'center_002', '在轨航天器支持中心', NULL, '2020-11-24 10:04:46', '3020-11-24 10:04:46', '1', NULL, 'admin', '2020-11-24 10:04:46');
-- INSERT INTO `uc_user_group_mapping` VALUES ('center_003:test_user_10', 'test_user_10', '测试用户10', NULL, NULL, NULL, NULL, 'center_003', '航天员支持中心', NULL, '2020-12-10 17:30:10', '3020-12-10 17:30:10', '1', NULL, 'admin', '2020-12-10 17:30:10');
-- INSERT INTO `uc_user_group_mapping` VALUES ('center_004:test_user_4', 'test_user_4', '测试用户4', NULL, NULL, NULL, NULL, 'center_004', '空间站运营管理中心', NULL, '2020-12-10 19:10:59', '3020-12-10 19:10:59', '1', NULL, 'admin', '2020-12-10 19:10:59');
-- INSERT INTO `uc_user_group_mapping` VALUES ('center_004:test_user_40', 'test_user_40', '测试用户40', NULL, NULL, NULL, NULL, 'center_004', '空间站运营管理中心', NULL, '2020-12-10 19:10:49', '3020-12-10 19:10:49', '1', NULL, 'admin', '2020-12-10 19:10:49');
-- INSERT INTO `uc_user_group_mapping` VALUES ('d63b1c5f-8e74-4f6c-a543-ca2df062935d:lichen1234', 'lichen1234', 'lichen', NULL, NULL, NULL, NULL, 'd63b1c5f-8e74-4f6c-a543-ca2df062935d', '运行控制中心_L2', NULL, '2020-10-23 16:22:02', '3020-10-23 16:22:02', '1', NULL, 'test_user_5', '2020-10-23 16:22:02');
-- INSERT INTO `uc_user_group_mapping` VALUES ('d63b1c5f-8e74-4f6c-a543-ca2df062935d:test_user_5', 'test_user_5', '测试用户5', NULL, NULL, NULL, NULL, 'd63b1c5f-8e74-4f6c-a543-ca2df062935d', '运行控制中心_L2', NULL, '2020-10-23 18:27:48', '3020-10-23 18:27:48', '1', NULL, 'admin', '2020-10-23 18:27:48');
-- INSERT INTO `uc_user_group_mapping` VALUES ('d63b1c5f-8e74-4f6c-a543-ca2df062935d:test_user_50', 'test_user_50', '测试用户50', NULL, NULL, NULL, NULL, 'd63b1c5f-8e74-4f6c-a543-ca2df062935d', '运行控制中心_L2', NULL, '2020-10-23 18:53:55', '3020-10-23 18:53:55', '1', NULL, 'admin', '2020-10-23 18:53:55');
-- INSERT INTO `uc_user_group_mapping` VALUES ('eb0742c2-8958-40e0-9531-36de667ee184:center_c_admin', 'center_c_admin', 'center_c_admin', NULL, NULL, NULL, NULL, 'eb0742c2-8958-40e0-9531-36de667ee184', '测试中心C', NULL, '2020-10-23 18:56:04', '3020-10-23 18:56:04', '1', NULL, 'admin', '2020-10-23 18:56:04');
-- INSERT INTO `uc_user_group_mapping` VALUES ('eb0742c2-8958-40e0-9531-36de667ee184:center_c_user1', 'center_c_user1', 'center_c_user1', NULL, NULL, NULL, NULL, 'eb0742c2-8958-40e0-9531-36de667ee184', '测试中心C', NULL, '2020-10-23 18:56:12', '3020-10-23 18:56:12', '1', NULL, 'admin', '2020-10-23 18:56:12');
-- INSERT INTO `uc_user_group_mapping` VALUES ('ebb167330e594d7693e70880498fb376:test_user_6', 'test_user_6', '测试用户6', NULL, NULL, NULL, NULL, 'ebb167330e594d7693e70880498fb376', '载人航天工程信息中心', NULL, '2020-10-23 18:32:15', '3020-10-23 18:32:15', '1', NULL, 'admin', '2020-10-23 18:32:15');
-- COMMIT;

-- ----------------------------
-- Table structure for uc_user_info
-- ----------------------------
DROP TABLE IF EXISTS `uc_user_info`;
CREATE TABLE `uc_user_info` (
  `id` varchar(40) NOT NULL COMMENT '用户编号',
  `user_app_name` varchar(255) DEFAULT NULL COMMENT '用户app登录名',
  `user_app_code` varchar(255) DEFAULT NULL COMMENT '用户app编号',
  `user_type_name` varchar(255) DEFAULT NULL COMMENT '用户类型名',
  `user_type` varchar(255) DEFAULT NULL COMMENT '用户类型',
  `user_cn_name` varchar(50) DEFAULT NULL COMMENT '用户中文名称',
  `user_en_name` varchar(50) DEFAULT NULL COMMENT '用户英文名称',
  `password` varchar(100) DEFAULT NULL COMMENT '登录密码',
  `password_question_one` varchar(200) DEFAULT NULL COMMENT '密码提示问题1',
  `password_answer_one` varchar(200) DEFAULT NULL COMMENT '密码提示问题1答案',
  `password_question_two` varchar(200) DEFAULT NULL COMMENT '密码提示问题2',
  `password_answer_two` varchar(200) DEFAULT NULL COMMENT '密码提示问题2答案',
  `user_phone` varchar(18) DEFAULT NULL COMMENT '用户电话号码',
  `user_mobile` varchar(18) DEFAULT NULL COMMENT '用户手机号码',
  `user_address` varchar(200) DEFAULT NULL COMMENT '用户联系地址',
  `user_email` varchar(60) DEFAULT NULL COMMENT '用户邮箱',
  `user_flag` varchar(20) DEFAULT NULL COMMENT '用户标志',
  `status` varchar(5) DEFAULT NULL COMMENT '用户状态',
  `salt` varchar(30) DEFAULT NULL COMMENT '加密添加salt散列值',
  `fail_count` decimal(65,30) DEFAULT NULL COMMENT '登录失败次数',
  `illegal_count` decimal(65,30) DEFAULT NULL COMMENT '非法操作次数',
  `fail_total_count` decimal(65,30) DEFAULT NULL COMMENT '总登录失败次数',
  `illegal_total_count` decimal(65,30) DEFAULT NULL COMMENT '总非法操作次数',
  `valid_flag` varchar(5) DEFAULT NULL COMMENT '效力标志',
  `invalid_department_id` varchar(50) DEFAULT NULL COMMENT '失效用户所属部门编号',
  `invalid_user_id` varchar(50) DEFAULT NULL COMMENT '失效用户编号',
  `invalid_datetime` datetime DEFAULT NULL COMMENT '失效时间',
  `create_department_id` varchar(50) DEFAULT NULL COMMENT '创建用户所属部门编号',
  `create_user_id` varchar(50) DEFAULT NULL COMMENT '创建用户编号',
  `create_datetime` datetime DEFAULT NULL COMMENT '创建时间',
  `update_department_id` varchar(50) DEFAULT NULL COMMENT '更新用户部门所属编号',
  `update_user_id` varchar(50) DEFAULT NULL COMMENT '更新用户编号',
  `update_datetime` datetime DEFAULT NULL COMMENT '更新时间',
  `user_gender` varchar(255) DEFAULT NULL COMMENT '性别',
  `login_name` varchar(255) DEFAULT NULL COMMENT '登录名',
  `data_center` varchar(255) DEFAULT NULL COMMENT '数据中心',
  `data_source` varchar(255) DEFAULT NULL COMMENT '数据来源',
  `center_id` varchar(155) DEFAULT NULL COMMENT '中心id',
  `center_name` varchar(155) DEFAULT NULL COMMENT '中心名称',
  `avatar` mediumtext,
  `top_group_center` varchar(256) DEFAULT NULL COMMENT '顶级用户组即机构',
  `support_id` varchar(255) DEFAULT NULL COMMENT '审批人id',
  `support_name` varchar(255) DEFAULT NULL COMMENT '审批人名称',
  `user_name` varchar(255) DEFAULT NULL COMMENT '用户名称',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='用户基础信息表';

-- ----------------------------
-- Records of uc_user_info
-- ----------------------------
BEGIN;
INSERT INTO `uc_user_info` VALUES ('admin', NULL, NULL, NULL, NULL, '云平台管理员', 'Administrator', '719f1e444dc99b28c2d7639af896361e01c0f532', NULL, NULL, NULL, NULL, '13800138000', NULL, '邓庄南路9号-工程信息中心', '123@mail.com', 'S', '1', '8a98aa46edfbb762', NULL, NULL, 5.000000000000000000000000000000, 5.000000000000000000000000000000, '1', 'DEP-00001', 'admin', NULL, 'TEST', 'admin', '2020-05-23 15:07:38', 'DEP-00001', 'admin', '2020-05-23 15:07:38', '女', 'admin', NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, '云平台管理员');
COMMIT;

-- ----------------------------
-- Table structure for uc_user_privilege_mapping
-- ----------------------------
DROP TABLE IF EXISTS `uc_user_privilege_mapping`;
CREATE TABLE `uc_user_privilege_mapping` (
  `id` varchar(150) NOT NULL COMMENT '用户权限映射编号',
  `user_id` varchar(50) DEFAULT NULL COMMENT '用户编号',
  `user_cn_name` varchar(50) DEFAULT NULL COMMENT '用户中文名称',
  `user_en_name` varchar(50) DEFAULT NULL COMMENT '用户英文名称',
  `department_id` varchar(50) DEFAULT NULL COMMENT '部门编号',
  `department_cn_name` varchar(200) DEFAULT NULL COMMENT '部门中文名称',
  `department_en_name` varchar(200) DEFAULT NULL COMMENT '部门英文名称',
  `privilege_id` varchar(50) DEFAULT NULL COMMENT '权限编号',
  `privilege_cn_name` varchar(200) DEFAULT NULL COMMENT '权限中文名称',
  `privilege_en_name` varchar(200) DEFAULT NULL COMMENT '权限英文名称',
  `action_flag` varchar(5) DEFAULT NULL COMMENT '权限映射方向：“+”正向，“-”反向',
  `effect_datetime` datetime DEFAULT NULL COMMENT '生效时间',
  `invalid_datetime` datetime DEFAULT NULL COMMENT '失效时间',
  `valid_flag` varchar(5) DEFAULT NULL COMMENT '效力标志',
  `create_department_id` varchar(50) DEFAULT NULL COMMENT '创建用户所属部门编号',
  `create_user_id` varchar(50) DEFAULT NULL COMMENT '创建用户编号',
  `create_datetime` datetime DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='用户权限映射表';

-- ----------------------------
-- Table structure for uc_user_role_mapping
-- ----------------------------
DROP TABLE IF EXISTS `uc_user_role_mapping`;
CREATE TABLE `uc_user_role_mapping` (
  `id` varchar(150) NOT NULL COMMENT '用户角色映射编号',
  `user_id` varchar(50) DEFAULT NULL COMMENT '用户编号',
  `user_cn_name` varchar(50) DEFAULT NULL COMMENT '用户中文名称',
  `user_en_name` varchar(50) DEFAULT NULL COMMENT '用户英文名称',
  `department_id` varchar(50) DEFAULT NULL COMMENT '部门编号',
  `department_cn_name` varchar(200) DEFAULT NULL COMMENT '部门中文名称',
  `department_en_name` varchar(200) DEFAULT NULL COMMENT '部门英文名称',
  `role_id` varchar(50) DEFAULT NULL COMMENT '角色编号',
  `role_cn_name` varchar(200) DEFAULT NULL COMMENT '角色中文名称',
  `role_en_name` varchar(200) DEFAULT NULL COMMENT '角色英文名称',
  `effect_datetime` datetime DEFAULT NULL COMMENT '生效时间',
  `invalid_datetime` datetime DEFAULT NULL COMMENT '失效时间',
  `valid_flag` varchar(5) DEFAULT NULL COMMENT '效力标志',
  `create_department_id` varchar(50) DEFAULT NULL COMMENT '创建用户所属部门编号',
  `create_user_id` varchar(50) DEFAULT NULL COMMENT '创建用户编号',
  `create_datetime` datetime DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='用户中心用户角色映射表';

-- -- ----------------------------
-- -- Records of uc_user_role_mapping
-- -- ----------------------------
-- BEGIN;
-- INSERT INTO `uc_user_role_mapping` VALUES ('ROLE-0000003:center_a_admin', 'center_a_admin', 'center_a_admin', '测试中心A管理员', NULL, NULL, NULL, 'ROLE-0000003', '普通用户', NULL, '2020-10-23 18:54:26', '3020-10-23 18:54:26', '1', NULL, 'admin', '2020-10-23 18:54:26');
-- INSERT INTO `uc_user_role_mapping` VALUES ('ROLE-0000003:center_a_demo_user', 'center_a_demo_user', 'center_a_demo_user', '测试中心A用户', NULL, NULL, NULL, 'ROLE-0000003', '普通用户', NULL, '2020-10-23 18:54:45', '3020-10-23 18:54:45', '1', NULL, 'admin', '2020-10-23 18:54:45');
-- INSERT INTO `uc_user_role_mapping` VALUES ('ROLE-0000003:center_b_admin', 'center_b_admin', 'center_b_admin', '测试中心B管理员', NULL, NULL, NULL, 'ROLE-0000003', '普通用户', NULL, '2020-10-23 18:55:17', '3020-10-23 18:55:17', '1', NULL, 'admin', '2020-10-23 18:55:17');
-- INSERT INTO `uc_user_role_mapping` VALUES ('ROLE-0000003:center_c_admin', 'center_c_admin', 'center_c_admin', NULL, NULL, NULL, NULL, 'ROLE-0000003', '普通用户', NULL, '2020-10-23 18:56:04', '3020-10-23 18:56:04', '1', NULL, 'admin', '2020-10-23 18:56:04');
-- INSERT INTO `uc_user_role_mapping` VALUES ('ROLE-0000003:center_c_user1', 'center_c_user1', 'center_c_user1', NULL, NULL, NULL, NULL, 'ROLE-0000003', '普通用户', NULL, '2020-10-23 18:56:12', '3020-10-23 18:56:12', '1', NULL, 'admin', '2020-10-23 18:56:12');
-- INSERT INTO `uc_user_role_mapping` VALUES ('ROLE-0000003:lichen1234', 'lichen1234', 'lichen', NULL, NULL, NULL, NULL, 'ROLE-0000003', '普通用户', NULL, '2020-10-23 16:22:02', '3020-10-23 16:22:02', '1', NULL, 'test_user_5', '2020-10-23 16:22:02');
-- INSERT INTO `uc_user_role_mapping` VALUES ('ROLE-0000003:pikachu', 'pikachu', '董晨蕊', NULL, NULL, NULL, NULL, 'ROLE-0000003', '普通用户', NULL, '2020-10-29 10:39:25', '3020-10-29 10:39:25', '1', NULL, 'admin', '2020-10-29 10:39:25');
-- INSERT INTO `uc_user_role_mapping` VALUES ('ROLE-0000003:test_reg_poac_1', 'test_reg_poac_1', '王宇航', NULL, NULL, NULL, NULL, 'ROLE-0000003', '普通用户', NULL, '2020-12-08 17:51:28', '3020-12-08 17:51:28', '1', NULL, 'test_user_1', '2020-12-08 17:51:28');
-- INSERT INTO `uc_user_role_mapping` VALUES ('ROLE-0000003:test_user_10', 'test_user_10', '测试用户10', NULL, NULL, NULL, NULL, 'ROLE-0000003', '普通用户', NULL, '2020-12-10 17:30:10', '3020-12-10 17:30:10', '1', NULL, 'admin', '2020-12-10 17:30:10');
-- INSERT INTO `uc_user_role_mapping` VALUES ('ROLE-0000003:test_user_11', 'test_user_11', '测试用户 11', NULL, NULL, NULL, NULL, 'ROLE-0000003', '普通用户', NULL, '2020-12-01 15:37:02', '3020-12-01 15:37:02', '1', NULL, 'test_user_1', '2020-12-01 15:37:02');
-- INSERT INTO `uc_user_role_mapping` VALUES ('ROLE-0000003:test_user_12', 'test_user_12', '测试注册用户', NULL, NULL, NULL, NULL, 'ROLE-0000003', '普通用户', NULL, '2020-12-01 16:03:58', '3020-12-01 16:03:58', '1', NULL, 'test_user_1', '2020-12-01 16:03:58');
-- INSERT INTO `uc_user_role_mapping` VALUES ('ROLE-0000003:test_user_20', 'test_user_20', '测试用户20', NULL, NULL, NULL, NULL, 'ROLE-0000003', '普通用户', NULL, '2020-12-10 17:30:30', '3020-12-10 17:30:30', '1', NULL, 'admin', '2020-12-10 17:30:30');
-- INSERT INTO `uc_user_role_mapping` VALUES ('ROLE-0000003:test_user_30', 'test_user_30', '测试用户30', NULL, NULL, NULL, NULL, 'ROLE-0000003', '普通用户', NULL, '2020-12-10 17:28:30', '3020-12-10 17:28:30', '1', NULL, 'admin', '2020-12-10 17:28:30');
-- INSERT INTO `uc_user_role_mapping` VALUES ('ROLE-0000003:test_user_50', 'test_user_50', '测试用户50', NULL, NULL, NULL, NULL, 'ROLE-0000003', '普通用户', NULL, '2020-10-23 18:53:55', '3020-10-23 18:53:55', '1', NULL, 'admin', '2020-10-23 18:53:55');
-- INSERT INTO `uc_user_role_mapping` VALUES ('ROLE-0000003:test_user_60', 'test_user_60', '测试用户60', NULL, NULL, NULL, NULL, 'ROLE-0000003', '普通用户', NULL, '2020-10-23 18:54:03', '3020-10-23 18:54:03', '1', NULL, 'admin', '2020-10-23 18:54:03');
-- INSERT INTO `uc_user_role_mapping` VALUES ('ROLE-0000003:wangbo_123', 'wangbo_123', 'lalal', NULL, NULL, NULL, NULL, 'ROLE-0000003', '普通用户', NULL, '2020-11-25 17:14:38', '3020-11-25 17:14:38', '1', NULL, 'admin', '2020-11-25 17:14:38');
-- INSERT INTO `uc_user_role_mapping` VALUES ('ROLE-0000003:wangbo_1233', 'wangbo_1233', '王博', NULL, NULL, NULL, NULL, 'ROLE-0000003', '普通用户', NULL, '2020-12-10 17:32:00', '3020-12-10 17:32:00', '1', NULL, 'admin', '2020-12-10 17:32:00');
-- INSERT INTO `uc_user_role_mapping` VALUES ('ROLE-0000003:zjf_test', 'zjf_test', 'zjfcool', NULL, NULL, NULL, NULL, 'ROLE-0000003', '普通用户', NULL, '2020-12-14 18:16:14', '3020-12-14 18:16:14', '1', NULL, 'admin', '2020-12-14 18:16:14');
-- INSERT INTO `uc_user_role_mapping` VALUES ('ROLE-0000002:test_user', 'test_user', '11', NULL, NULL, NULL, NULL, 'ROLE-0000002', '各支持中心管理员', NULL, '2020-10-22 15:54:35', '3020-10-22 15:54:35', '1', NULL, 'admin', '2020-10-22 15:54:35');
-- INSERT INTO `uc_user_role_mapping` VALUES ('ROLE-0000002:test_user_1', 'test_user_1', '测试用户1', NULL, NULL, NULL, NULL, 'ROLE-0000002', '各支持中心管理员', NULL, '2020-10-26 15:19:01', '3020-10-26 15:19:01', '1', NULL, 'admin', '2020-10-26 15:19:01');
-- INSERT INTO `uc_user_role_mapping` VALUES ('ROLE-0000002:test_user_2', 'test_user_2', '测试用户2', NULL, NULL, NULL, NULL, 'ROLE-0000002', '各支持中心管理员', NULL, '2020-11-24 10:04:46', '3020-11-24 10:04:46', '1', NULL, 'admin', '2020-11-24 10:04:46');
-- INSERT INTO `uc_user_role_mapping` VALUES ('ROLE-0000002:test_user_3', 'test_user_3', '测试用户3', NULL, NULL, NULL, NULL, 'ROLE-0000002', '各支持中心管理员', NULL, '2020-10-23 18:27:09', '3020-10-23 18:27:09', '1', NULL, 'admin', '2020-10-23 18:27:09');
-- INSERT INTO `uc_user_role_mapping` VALUES ('ROLE-0000002:test_user_4', 'test_user_4', '测试用户4', NULL, NULL, NULL, NULL, 'ROLE-0000002', '各支持中心管理员', NULL, '2020-12-10 19:10:59', '3020-12-10 19:10:59', '1', NULL, 'admin', '2020-12-10 19:10:59');
-- INSERT INTO `uc_user_role_mapping` VALUES ('ROLE-0000002:test_user_40', 'test_user_40', '测试用户40', NULL, NULL, NULL, NULL, 'ROLE-0000002', '各支持中心管理员', NULL, '2020-12-10 19:10:49', '3020-12-10 19:10:49', '1', NULL, 'admin', '2020-12-10 19:10:49');
-- INSERT INTO `uc_user_role_mapping` VALUES ('ROLE-0000002:test_user_5', 'test_user_5', '测试用户5', NULL, NULL, NULL, NULL, 'ROLE-0000002', '各支持中心管理员', NULL, '2020-10-23 18:27:48', '3020-10-23 18:27:48', '1', NULL, 'admin', '2020-10-23 18:27:48');
-- INSERT INTO `uc_user_role_mapping` VALUES ('ROLE-0000002:test_user_6', 'test_user_6', '测试用户6', NULL, NULL, NULL, NULL, 'ROLE-0000002', '各支持中心管理员', NULL, '2020-10-23 18:32:14', '3020-10-23 18:32:14', '1', NULL, 'admin', '2020-10-23 18:32:14');
-- INSERT INTO `uc_user_role_mapping` VALUES ('ROLE-0000001:admin', 'admin', '超级管理员', 'admin', 'GROUP-0000001', NULL, NULL, 'ROLE-0000001', '云平台管理员', NULL, '2019-05-30 20:54:52', '2999-05-26 18:55:44', '1', 'GROUP-0000001', 'system_admin', NULL);
-- COMMIT;

-- ----------------------------
-- Table structure for uc_user_strategy_mapping
-- ----------------------------
DROP TABLE IF EXISTS `uc_user_strategy_mapping`;
CREATE TABLE `uc_user_strategy_mapping` (
  `id` varchar(150) NOT NULL COMMENT '用户角色映射编号',
  `user_id` varchar(50) DEFAULT NULL COMMENT '用户编号',
  `user_cn_name` varchar(50) DEFAULT NULL COMMENT '用户中文名称',
  `user_en_name` varchar(50) DEFAULT NULL COMMENT '用户英文名称',
  `department_id` varchar(50) DEFAULT NULL COMMENT '部门编号',
  `department_cn_name` varchar(200) DEFAULT NULL COMMENT '部门中文名称',
  `department_en_name` varchar(200) DEFAULT NULL COMMENT '部门英文名称',
  `strategy_id` varchar(50) DEFAULT NULL COMMENT '策略编号',
  `strategy_cn_name` varchar(200) DEFAULT NULL COMMENT '策略中文名称',
  `strategy_en_name` varchar(200) DEFAULT NULL COMMENT '策略英文名称',
  `effect_datetime` datetime DEFAULT NULL COMMENT '生效时间',
  `invalid_datetime` datetime DEFAULT NULL COMMENT '失效时间',
  `valid_flag` varchar(5) DEFAULT NULL COMMENT '效力标志',
  `create_department_id` varchar(50) DEFAULT NULL COMMENT '创建用户所属部门编号',
  `create_user_id` varchar(50) DEFAULT NULL COMMENT '创建用户编号',
  `create_datetime` datetime DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='用户中心用户策略映射表';

-- ----------------------------
-- Table structure for user_mo_register
-- ----------------------------
DROP TABLE IF EXISTS `user_mo_register`;
CREATE TABLE `user_mo_register` (
  `id` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `approve_time` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '审批时间',
  `create_datetime` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '创建时间',
  `login_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '登录名',
  `support_id` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '审批人id',
  `support_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '审批人名称',
  `user_email` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT 'email',
  `user_gender` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '性别',
  `user_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '用户名',
  `user_phone` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '联系方式',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Table structure for user_register_info
-- ----------------------------
DROP TABLE IF EXISTS `user_register_info`;
CREATE TABLE `user_register_info` (
  `id` varchar(60) COLLATE utf8_unicode_ci NOT NULL,
  `login_name` varchar(120) COLLATE utf8_unicode_ci NOT NULL COMMENT '登录名',
  `user_app_name` varchar(120) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '用户app登录名',
  `user_name` varchar(120) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '用户中文名称',
  `user_en_name` varchar(120) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '用户英文名称',
  `user_gender` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '性别',
  `password` varchar(225) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '密码',
  `repassword` varchar(225) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '确认密码',
  `salt` varchar(225) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '加密字段',
  `user_phone` varchar(60) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '用户电话号码',
  `user_mobile` varchar(60) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '用户手机号码',
  `user_address` varchar(240) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '用户地址',
  `user_email` varchar(60) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '邮箱',
  `data_center` varchar(240) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '用户所属中心',
  `user_flag` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '用户标志',
  `register_status` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '0注册中，1注册完成',
  `is_registered` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '0注册成功，1注册失败',
  `register_datetime` datetime DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP COMMENT '注册时间',
  `user_register_dept_id` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '用户注册部门id',
  `password_question_one` varchar(240) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '密码提示问题1',
  `password_question_two` varchar(240) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '密码提示问题2',
  `password_answer_one` varchar(240) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '密码提示问题答案1',
  `password_answer_two` varchar(240) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '密码提示问题答案2',
  `channel` varchar(240) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '渠道',
  `verif_status` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '校验状态',
  `center_id` varchar(155) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '中心id',
  `center_name` varchar(155) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '中心名称',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci ROW_FORMAT=DYNAMIC COMMENT='用户注册信息表';

-- ----------------------------
-- Table structure for wf_approve_idea
-- ----------------------------
DROP TABLE IF EXISTS `wf_approve_idea`;
CREATE TABLE `wf_approve_idea` (
  `id` varchar(60) COLLATE utf8_unicode_ci NOT NULL COMMENT 'id',
  `idea` varchar(600) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '审批意见',
  `user_id` varchar(60) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '用户id',
  `user_name` varchar(120) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '用户名称',
  `user_dept_id` varchar(60) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '用户部门id',
  `user_comp_id` varchar(60) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '用户公司id',
  `user_group_id` varchar(60) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '用户组id',
  `user_dept_name` varchar(120) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '用户部门名称',
  `user_comp_name` varchar(120) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '用户公司名称',
  `user_group_name` varchar(120) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '用户组名称',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci ROW_FORMAT=DYNAMIC COMMENT='用户常用审批意见表';

-- ----------------------------
-- Table structure for wf_definition
-- ----------------------------
DROP TABLE IF EXISTS `wf_definition`;
CREATE TABLE `wf_definition` (
  `id` varchar(60) COLLATE utf8_unicode_ci NOT NULL COMMENT '流程id',
  `process_id` varchar(60) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '流程实例id',
  `name` varchar(240) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '流程名称',
  `node_id` varchar(60) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '节点id',
  `node_name` varchar(240) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '节点名称',
  `node_type` varchar(4) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '节点类型',
  `next_node_id` varchar(60) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '下一节点id',
  `next_node_name` varchar(120) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '下一节点名称',
  `create_time` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '创建时间',
  `create_user_id` varchar(60) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '创建人id',
  `create_user_name` varchar(120) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '创建人名称',
  `approve_id` varchar(60) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '审批人id',
  `approve_name` varchar(120) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '审批人名称',
  `approve_depart_id` varchar(60) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '审批人部门id',
  `approve_depart_name` varchar(120) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '审批人部门名称',
  `approve_comp_id` varchar(60) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '审批人公司id',
  `approve_comp_name` varchar(120) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '审批人公司名称',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci COMMENT='流程定义表';

-- ----------------------------
-- Records of wf_definition
-- ----------------------------
BEGIN;
INSERT INTO `wf_definition` VALUES ('P0001', 'test-01', '注册申请流程', 'S001', '开始节点', 'S', 'E0001', '结束', '2020-08-11 18:31:00', 'admin', 'admin', 'admin', 'admin', NULL, NULL, NULL, NULL);
INSERT INTO `wf_definition` VALUES ('P0002', 'test-01', '注册申请流程', 'E0001', '测试节点1', 'E', NULL, NULL, '2020-08-11 18:33:00', 'admin', 'admin', 'admin', 'admin', NULL, NULL, NULL, NULL);
INSERT INTO `wf_definition` VALUES ('P0003', 'cross_apply', '跨中心申请访问权限', 'S001', '开始节点', 'S', 'N0001', '中心管理员审核', '2020-10-21 17:10:00', 'admin', 'admin', 'admin', 'admin', NULL, NULL, NULL, NULL);
INSERT INTO `wf_definition` VALUES ('P0004', 'cross_apply', '中心管理员审核', 'N0001', '开始节点', 'N', 'E0001', '云平台管理员审核', '2020-10-21 17:10:00', 'admin', 'admin', 'admin', 'admin', NULL, NULL, NULL, NULL);
INSERT INTO `wf_definition` VALUES ('P0005', 'cross_apply', '云平台管理员审核', 'E0001', '开始节点', 'E', NULL, NULL, '2020-10-21 17:10:00', 'admin', 'admin', 'admin', 'admin', NULL, NULL, NULL, NULL);
INSERT INTO `wf_definition` VALUES ('P0006', 'quota_apply', '配额变更申请', 'S001', '开始节点', 'S', 'E0001', '结束', '2020-10-23 17:20:00', 'admin', 'admin', 'admin', 'admin', NULL, NULL, NULL, NULL);
INSERT INTO `wf_definition` VALUES ('P0007', 'quota_apply', '配额变更申请', 'E0001', '开始节点', 'E', '', '', '2020-10-23 17:20:00', 'admin', 'admin', 'admin', 'admin', NULL, NULL, NULL, NULL);
INSERT INTO `wf_definition` VALUES ('P0008', 'ts_apply', '云上测试流程', 'S001', '开始节点', 'S', 'E0001', '结束', '2020-08-11 18:31:00', 'admin', 'admin', 'TESTVDC_HTY_admin01', '测试管理员1', NULL, NULL, NULL, NULL);
INSERT INTO `wf_definition` VALUES ('P0009', 'ts_apply', '云上测试流程', 'E0001', '结束节点', 'E', '', '', '2020-08-11 18:33:00', 'admin', 'admin', 'TESTVDC_HTY_admin01', '测试管理员1', NULL, NULL, NULL, NULL);
COMMIT;

-- ----------------------------
-- Table structure for wf_process_log
-- ----------------------------
DROP TABLE IF EXISTS `wf_process_log`;
CREATE TABLE `wf_process_log` (
  `id` varchar(60) COLLATE utf8_unicode_ci NOT NULL COMMENT '日志id',
  `instance_id` varchar(60) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '实例id',
  `process_id` varchar(60) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '流程id',
  `process_name` varchar(120) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '流程名称',
  `cur_node_id` varchar(60) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '当前节点id',
  `cur_node_name` varchar(120) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '当前节点名称',
  `next_node_id` varchar(60) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '下一级节点id',
  `next_node_name` varchar(120) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '下一节点名称',
  `busi_id` varchar(60) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '业务id',
  `title` varchar(240) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '标题',
  `approve_end_time` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '审批结束时间',
  `approve_idea` varchar(600) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '审批意见',
  `approve_user_id` varchar(60) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '审批人id',
  `approve_user_name` varchar(120) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '审批人名称',
  `approve_dept_id` varchar(60) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '审批人部门id',
  `approve_dept_name` varchar(120) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '审批人部门名称',
  `approve_dept_comp_id` varchar(60) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '审批人公司id',
  `approve_group_id` varchar(60) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '审批人用户组id',
  `approve_gruop_name` varchar(120) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '审批人用户组名称',
  `approve_start_time` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '审批开始时间',
  `cur_user_id` varchar(256) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '当前节点处理人id',
  `cur_user_name` varchar(120) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '当前节点处理人姓名',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci ROW_FORMAT=DYNAMIC COMMENT='流程日志表';


-- ----------------------------
-- Table structure for wf_process_todo
-- ----------------------------
DROP TABLE IF EXISTS `wf_process_todo`;
CREATE TABLE `wf_process_todo` (
  `id` varchar(60) COLLATE utf8_unicode_ci NOT NULL COMMENT '实例id',
  `process_id` varchar(60) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '流程定义实例id',
  `busi_id` varchar(60) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '业务表id',
  `process_name` varchar(240) COLLATE utf8_unicode_ci NOT NULL COMMENT '流程名称',
  `cur_node_id` varchar(60) COLLATE utf8_unicode_ci NOT NULL COMMENT '当前节点id',
  `cur_node_name` varchar(120) COLLATE utf8_unicode_ci NOT NULL COMMENT '当前节点名称',
  `title` varchar(320) COLLATE utf8_unicode_ci NOT NULL COMMENT '标题',
  `next_node_id` varchar(60) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '下一节点id',
  `next_node_name` varchar(240) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '下一节点名称',
  `todo_user_id` varchar(256) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '待办人id',
  `todo_user_name` varchar(240) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '待办人名称',
  `todo_comp_id` varchar(60) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '代办人公司id',
  `todo_comp_name` varchar(240) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '代办人公司名称',
  `todo_dept_id` varchar(60) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '处理人部门',
  `todo_dept_name` varchar(240) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '代办人部门名称',
  `create_time` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '创建时间',
  `start_user_id` varchar(256) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '流程发起人d',
  `start_user_name` varchar(120) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '流程发起人姓名',
  `start_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `todo_deot_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci ROW_FORMAT=DYNAMIC COMMENT='流程待办表';

-- ----------------------------
-- View structure for ts_view_service
-- ----------------------------
DROP VIEW IF EXISTS `ts_view_service`;
CREATE ALGORITHM = UNDEFINED SQL SECURITY DEFINER VIEW `ts_view_service` AS select `apply`.`id` AS `app_id`,`apply`.`apply_time` AS `apply_time`,`apply`.`storage_disk_size` AS `storage_disk_size`,`apply`.`size` AS `size`,`apply`.`size_name` AS `size_name`,`apply`.`size_cpu` AS `size_cpu`,`apply`.`apply_user_id` AS `apply_user_id`,`apply`.`server_msg` AS `server_msg`,`apply`.`server_code` AS `server_code`,`apply`.`disk_type` AS `disk_type`,`apply`.`apply_env` AS `apply_env`,`apply`.`size_ram` AS `size_ram`,`apply`.`image` AS `image`,`apply`.`image_version` AS `image_version`,`apply`.`image_name` AS `image_name`,`apply`.`test_time_start` AS `test_time_start`,`apply`.`test_time_end` AS `test_time_end`,`apply`.`band_width` AS `band_width`,`apply`.`storage` AS `storage`,`apply`.`apply_center` AS `center_id`,`apply`.`apply_center_name` AS `center_name`,`result`.`id` AS `id`,`result`.`apply_id` AS `apply_id`,`result`.`job_id` AS `job_id`,`result`.`ip` AS `ip`,`result`.`create_time` AS `create_time`,`result`.`mac` AS `mac`,`result`.`data_status` AS `data_status`,`result`.`server_id` AS `server_id`,`result`.`default_name` AS `default_name`,`result`.`default_pwd` AS `default_pwd`,`result`.`server_name` AS `server_name`,`result`.`expired_time` AS `expired_time` from (`ts_apply_info` `apply` join `ts_apply_result` `result`) where (`apply`.`id` = `result`.`apply_id`);

SET FOREIGN_KEY_CHECKS = 1;
