# ************************************************************
# Sequel Pro SQL dump
# Version 4541
#
# http://www.sequelpro.com/
# https://github.com/sequelpro/sequelpro
#
# Host: 47.100.248.29 (MySQL 5.6.40-log)
# Database: springboot-simple
# Generation Time: 2018-07-20 00:58:49 +0000
# ************************************************************


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;


# Dump of table t_core_dept
# ------------------------------------------------------------

DROP TABLE IF EXISTS `t_core_dept`;

CREATE TABLE `t_core_dept` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT COMMENT '部门ID',
  `parent_id` bigint(20) unsigned NOT NULL DEFAULT '0' COMMENT '上级部门ID',
  `name` varchar(100) NOT NULL DEFAULT '' COMMENT '部门名称',
  `leader` varchar(64) DEFAULT '' COMMENT '领导姓名',
  `mobile` varchar(32) DEFAULT NULL COMMENT '手机号',
  `order_num` bigint(20) unsigned DEFAULT NULL COMMENT '排序',
  `create_time` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `update_time` datetime DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP COMMENT '更新时间',
  `is_deleted` tinyint(1) unsigned NOT NULL DEFAULT '0' COMMENT '删除状态（0 未删，1 已删）',
  PRIMARY KEY (`id`),
  KEY `parent_id` (`parent_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

LOCK TABLES `t_core_dept` WRITE;
/*!40000 ALTER TABLE `t_core_dept` DISABLE KEYS */;

INSERT INTO `t_core_dept` (`id`, `parent_id`, `name`, `leader`, `mobile`, `order_num`, `create_time`, `update_time`, `is_deleted`)
VALUES
	(1,0,'公司总部',NULL,NULL,NULL,'2017-07-04 07:28:07','2018-07-09 11:41:21',0),
	(290,1,'测试','','',NULL,'2018-07-15 12:56:45','2018-07-17 10:46:51',1),
	(291,0,'测试','','',NULL,'2018-07-17 09:32:14','2018-07-17 11:13:15',1),
	(292,0,'11','11','11',NULL,'2018-07-17 11:09:08','2018-07-17 11:13:12',1);

/*!40000 ALTER TABLE `t_core_dept` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table t_core_log
# ------------------------------------------------------------

DROP TABLE IF EXISTS `t_core_log`;

CREATE TABLE `t_core_log` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT COMMENT '日志ID',
  `type` tinyint(1) DEFAULT '0' COMMENT '日志类型（0 操作，1 登录）',
  `username` varchar(50) DEFAULT NULL COMMENT '操作用户',
  `operation` text COMMENT '操作内容',
  `time` decimal(11,0) DEFAULT NULL COMMENT '耗时',
  `uri` varchar(200) DEFAULT NULL COMMENT '请求地址',
  `method` text COMMENT '操作方法',
  `params` text COMMENT '方法参数',
  `ip` varchar(64) DEFAULT NULL COMMENT '操作者IP',
  `create_time` datetime DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

LOCK TABLES `t_core_log` WRITE;
/*!40000 ALTER TABLE `t_core_log` DISABLE KEYS */;

INSERT INTO `t_core_log` (`id`, `type`, `username`, `operation`, `time`, `uri`, `method`, `params`, `ip`, `create_time`)
VALUES
	(504,0,'admin','删除日志',73,'/log/delete','com.clouddoo.core.controller.LogController.delete()','ids: [Ljava.lang.Long;@36d8930f; ','0:0:0:0:0:0:0:1','2018-07-16 18:26:13'),
	(505,0,'admin','保存权限',30,'/menu/save','com.clouddoo.core.controller.MenuController.save()','menu: Menu(id=27, parentId=null, name=开发工具, url=, icon=layui-icon layui-icon-app, type=0, orderNum=null, createTime=null, updateTime=null, isDeleted=null, perms=); ','0:0:0:0:0:0:0:1','2018-07-16 18:30:48'),
	(506,0,'admin','保存权限',42,'/menu/save','com.clouddoo.core.controller.MenuController.save()','menu: Menu(id=28, parentId=27, name=json格式化, url=/tool/josn, icon=, type=0, orderNum=0, createTime=null, updateTime=null, isDeleted=null, perms=); ','0:0:0:0:0:0:0:1','2018-07-16 18:31:47'),
	(507,0,'admin','保存权限',38,'/menu/save','com.clouddoo.core.controller.MenuController.save()','menu: Menu(id=29, parentId=27, name=druid监控, url=/druid, icon=, type=0, orderNum=1, createTime=null, updateTime=null, isDeleted=null, perms=); ','0:0:0:0:0:0:0:1','2018-07-16 20:24:20'),
	(508,0,'admin','删除角色',740,'/role/save','com.clouddoo.core.controller.RoleController.save()','role: Role(id=1, name=管理员, remark=管理员, createTime=null, updateTime=null, isDeleted=null, menuId=null, menuIds=[1, 3, 4, 5, 6, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 26, 25, 28, 27, 29]); ','0:0:0:0:0:0:0:1','2018-07-16 20:24:28'),
	(509,0,'admin','删除权限',29,'/menu/delete','com.clouddoo.core.controller.MenuController.delete()','ids: [Ljava.lang.Long;@1c13b766; ','0:0:0:0:0:0:0:1','2018-07-16 20:27:00'),
	(510,0,'admin','保存权限',34,'/menu/save','com.clouddoo.core.controller.MenuController.save()','menu: Menu(id=26, parentId=27, name=swagger, url=/swagger-ui.html, icon=, type=0, orderNum=0, createTime=null, updateTime=null, isDeleted=null, perms=); ','0:0:0:0:0:0:0:1','2018-07-16 20:27:08'),
	(511,0,'admin','删除权限',29,'/menu/delete','com.clouddoo.core.controller.MenuController.delete()','ids: [Ljava.lang.Long;@7f98e; ','0:0:0:0:0:0:0:1','2018-07-16 20:27:13'),
	(512,0,'admin','保存权限',30,'/menu/save','com.clouddoo.core.controller.MenuController.save()','menu: Menu(id=27, parentId=null, name=系统监控, url=, icon=layui-icon layui-icon-app, type=0, orderNum=0, createTime=null, updateTime=null, isDeleted=null, perms=); ','0:0:0:0:0:0:0:1','2018-07-16 20:50:44'),
	(513,0,'admin','保存权限',35,'/menu/save','com.clouddoo.core.controller.MenuController.save()','menu: Menu(id=30, parentId=null, name=开发工具, url=, icon=layui-icon layui-icon-fonts-code, type=0, orderNum=null, createTime=null, updateTime=null, isDeleted=null, perms=); ','0:0:0:0:0:0:0:1','2018-07-16 20:58:22'),
	(514,0,'admin','保存权限',110,'/menu/save','com.clouddoo.core.controller.MenuController.save()','menu: Menu(id=31, parentId=30, name=文件上传, url=/upload/index, icon=, type=0, orderNum=0, createTime=null, updateTime=null, isDeleted=null, perms=); ','0:0:0:0:0:0:0:1','2018-07-16 20:59:10'),
	(515,0,'admin','删除角色',609,'/role/save','com.clouddoo.core.controller.RoleController.save()','role: Role(id=1, name=管理员, remark=管理员, createTime=null, updateTime=null, isDeleted=null, menuId=null, menuIds=[1, 3, 4, 5, 6, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 26, 27, 29, 31, 30]); ','0:0:0:0:0:0:0:1','2018-07-16 20:59:26'),
	(516,0,'admin','保存权限',38,'/menu/save','com.clouddoo.core.controller.MenuController.save()','menu: Menu(id=31, parentId=30, name=文件上传, url=/upload, icon=, type=0, orderNum=0, createTime=null, updateTime=null, isDeleted=null, perms=); ','0:0:0:0:0:0:0:1','2018-07-16 21:00:38'),
	(517,1,'admin','用户名或密码错误！',39,'/login','com.clouddoo.core.controller.LoginController.login','username: admin; password: b161a10456c519543ab29c36706ab26c;','0:0:0:0:0:0:0:1','2018-07-16 21:16:33'),
	(518,1,'admin','用户名或密码错误！',16,'/login','com.clouddoo.core.controller.LoginController.login','username: admin; password: b161a10456c519543ab29c36706ab26c;','0:0:0:0:0:0:0:1','2018-07-16 21:16:37'),
	(519,1,'admin','登陆成功！',85,'/login','com.clouddoo.core.controller.LoginController.login','username: admin; password: ac6d33b6c4554c732a3f6802f152fe93;','0:0:0:0:0:0:0:1','2018-07-16 21:16:41'),
	(520,0,'admin','保存权限',33,'/menu/save','com.clouddoo.core.controller.MenuController.save()','menu: Menu(id=32, parentId=30, name=云笔记, url=/note, icon=, type=0, orderNum=1, createTime=null, updateTime=null, isDeleted=null, perms=); ','0:0:0:0:0:0:0:1','2018-07-16 21:26:33'),
	(521,0,'admin','删除角色',803,'/role/save','com.clouddoo.core.controller.RoleController.save()','role: Role(id=1, name=管理员, remark=管理员, createTime=null, updateTime=null, isDeleted=null, menuId=null, menuIds=[1, 3, 4, 5, 6, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 26, 27, 29, 31, 30, 32]); ','0:0:0:0:0:0:0:1','2018-07-16 21:26:41'),
	(522,1,'admin','用户名或密码错误！',107,'/login','com.clouddoo.core.controller.LoginController.login','username: admin; password: b161a10456c519543ab29c36706ab26c;','0:0:0:0:0:0:0:1','2018-07-17 09:13:07'),
	(523,1,'admin','登陆成功！',99,'/login','com.clouddoo.core.controller.LoginController.login','username: admin; password: ac6d33b6c4554c732a3f6802f152fe93;','0:0:0:0:0:0:0:1','2018-07-17 09:13:11'),
	(524,1,'admin','登陆成功！',83,'/login','com.clouddoo.core.controller.LoginController.login','username: admin; password: ac6d33b6c4554c732a3f6802f152fe93;','0:0:0:0:0:0:0:1','2018-07-17 09:24:30'),
	(525,1,'admin','登陆成功！',48,'/login','com.clouddoo.core.controller.LoginController.login','username: admin; password: ac6d33b6c4554c732a3f6802f152fe93;','0:0:0:0:0:0:0:1','2018-07-17 09:26:52'),
	(526,1,'admin','登陆成功！',204,'/login','com.clouddoo.core.controller.LoginController.login','username: admin; password: ac6d33b6c4554c732a3f6802f152fe93;','0:0:0:0:0:0:0:1','2018-07-17 09:29:09'),
	(527,1,'admin','登陆成功！',49,'/login','com.clouddoo.core.controller.LoginController.login','username: admin; password: ac6d33b6c4554c732a3f6802f152fe93;','0:0:0:0:0:0:0:1','2018-07-17 09:30:40'),
	(528,0,'admin','保存部门',33,'/dept/save','com.clouddoo.core.controller.DeptController.save()','dept: Dept(id=291, parentId=null, name=测试, leader=, mobile=, orderNum=null, createTime=null, updateTime=null, isDeleted=null); ','0:0:0:0:0:0:0:1','2018-07-17 09:32:14'),
	(529,0,'admin','保存权限',38,'/menu/save','com.clouddoo.core.controller.MenuController.save()','menu: Menu(id=32, parentId=30, name=我的笔记, url=/note/page, icon=, type=0, orderNum=1, createTime=null, updateTime=null, isDeleted=null, perms=); ','0:0:0:0:0:0:0:1','2018-07-17 10:08:32'),
	(530,0,'admin','保存权限',28,'/menu/save','com.clouddoo.core.controller.MenuController.save()','menu: Menu(id=33, parentId=32, name=编辑, url=, icon=, type=1, orderNum=0, createTime=null, updateTime=null, isDeleted=null, perms=note:form); ','0:0:0:0:0:0:0:1','2018-07-17 10:09:08'),
	(531,0,'admin','保存权限',27,'/menu/save','com.clouddoo.core.controller.MenuController.save()','menu: Menu(id=34, parentId=32, name=保存, url=, icon=, type=1, orderNum=1, createTime=null, updateTime=null, isDeleted=null, perms=note:save); ','0:0:0:0:0:0:0:1','2018-07-17 10:09:22'),
	(532,0,'admin','保存权限',30,'/menu/save','com.clouddoo.core.controller.MenuController.save()','menu: Menu(id=35, parentId=32, name=删除, url=, icon=, type=1, orderNum=2, createTime=null, updateTime=null, isDeleted=null, perms=note:delete); ','0:0:0:0:0:0:0:1','2018-07-17 10:09:35'),
	(533,0,'admin','保存权限',28,'/menu/save','com.clouddoo.core.controller.MenuController.save()','menu: Menu(id=36, parentId=32, name=删除, url=, icon=, type=1, orderNum=2, createTime=null, updateTime=null, isDeleted=null, perms=note:delete); ','0:0:0:0:0:0:0:1','2018-07-17 10:09:35'),
	(534,0,'admin','删除权限',28,'/menu/delete','com.clouddoo.core.controller.MenuController.delete()','ids: [Ljava.lang.Long;@75adcd9f; ','0:0:0:0:0:0:0:1','2018-07-17 10:09:42'),
	(535,0,'admin','删除部门',94,'/dept/delete','com.clouddoo.core.controller.DeptController.delete()','ids: [Ljava.lang.Long;@2855b0fe; ','0:0:0:0:0:0:0:1','2018-07-17 10:46:51'),
	(536,0,'admin','保存部门',32,'/dept/save','com.clouddoo.core.controller.DeptController.save()','dept: Dept(id=292, parentId=null, name=11, leader=11, mobile=11, orderNum=null, createTime=null, updateTime=null, isDeleted=null); ','0:0:0:0:0:0:0:1','2018-07-17 11:09:08'),
	(537,0,'admin','删除部门',89,'/dept/delete','com.clouddoo.core.controller.DeptController.delete()','ids: [Ljava.lang.Long;@29702d15; ','0:0:0:0:0:0:0:1','2018-07-17 11:13:12'),
	(538,0,'admin','删除部门',77,'/dept/delete','com.clouddoo.core.controller.DeptController.delete()','ids: [Ljava.lang.Long;@404341fd; ','0:0:0:0:0:0:0:1','2018-07-17 11:13:15'),
	(539,0,'admin','保存用户',134,'/user/save','com.clouddoo.core.controller.UserController.save()','user: User(id=180, username=admin, password=null, deptId=1, email=1509353019@qq.com, mobile=13912265940, status=1, lastLoginTime=null, sex=0, description=null, createTime=null, updateTime=null, isDeleted=null, roleIds=[1], roleId=null); ','0:0:0:0:0:0:0:1','2018-07-17 11:13:22'),
	(540,0,'admin','保存用户',113,'/user/save','com.clouddoo.core.controller.UserController.save()','user: User(id=180, username=admin, password=null, deptId=1, email=1509353019@qq.com, mobile=13912265940, status=1, lastLoginTime=null, sex=1, description=null, createTime=null, updateTime=null, isDeleted=null, roleIds=[1], roleId=null); ','0:0:0:0:0:0:0:1','2018-07-17 11:13:26'),
	(541,0,'admin','保存用户',125,'/user/save','com.clouddoo.core.controller.UserController.save()','user: User(id=180, username=admin, password=null, deptId=1, email=1509353019@qq.com, mobile=13912265940, status=1, lastLoginTime=null, sex=0, description=null, createTime=null, updateTime=null, isDeleted=null, roleIds=[1], roleId=null); ','0:0:0:0:0:0:0:1','2018-07-17 11:18:20'),
	(542,0,'admin','保存用户',115,'/user/save','com.clouddoo.core.controller.UserController.save()','user: User(id=180, username=admin, password=null, deptId=1, email=1509353019@qq.com, mobile=13912265940, status=1, lastLoginTime=null, sex=1, description=null, createTime=null, updateTime=null, isDeleted=null, roleIds=[1], roleId=null); ','0:0:0:0:0:0:0:1','2018-07-17 11:18:24'),
	(543,1,'admin','登陆成功！',225,'/login','com.clouddoo.core.controller.LoginController.login','username: admin; password: ac6d33b6c4554c732a3f6802f152fe93;','0:0:0:0:0:0:0:1','2018-07-17 19:04:37'),
	(544,0,'admin','删除角色',813,'/role/save','com.clouddoo.core.controller.RoleController.save()','role: Role(id=1, name=管理员, remark=管理员, createTime=null, updateTime=null, isDeleted=null, menuId=null, menuIds=[1, 3, 4, 5, 6, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 26, 27, 29, 31, 30, 32, 33, 34, 35]); ','0:0:0:0:0:0:0:1','2018-07-17 19:06:05'),
	(545,1,'admin','登陆成功！',49,'/login','com.clouddoo.core.controller.LoginController.login','username: admin; password: ac6d33b6c4554c732a3f6802f152fe93;','0:0:0:0:0:0:0:1','2018-07-17 19:06:12'),
	(546,1,'admin','登陆成功！',43,'/login','com.clouddoo.core.controller.LoginController.login','username: admin; password: ac6d33b6c4554c732a3f6802f152fe93;','0:0:0:0:0:0:0:1','2018-07-17 19:17:51'),
	(547,0,'admin','保存笔记',44,'/note/save','com.clouddoo.tool.controller.NoteController.save()','note: Note(id=293, parentId=291, userId=180, type=1, name=阿里云地址, content=null, isLock=null, createTime=null, updateTime=null, isDeleted=null); ','0:0:0:0:0:0:0:1','2018-07-17 19:43:52'),
	(548,0,'admin','保存权限',39,'/menu/save','com.clouddoo.core.controller.MenuController.save()','menu: Menu(id=37, parentId=32, name=mark, url=, icon=, type=1, orderNum=4, createTime=null, updateTime=null, isDeleted=null, perms=note:mark); ','0:0:0:0:0:0:0:1','2018-07-17 21:37:37'),
	(549,0,'admin','保存权限',28,'/menu/save','com.clouddoo.core.controller.MenuController.save()','menu: Menu(id=38, parentId=32, name=预览, url=, icon=, type=1, orderNum=5, createTime=null, updateTime=null, isDeleted=null, perms=note:view); ','0:0:0:0:0:0:0:1','2018-07-17 21:37:52'),
	(550,1,'admin','登陆成功！',232,'/login','com.clouddoo.core.controller.LoginController.login','username: admin; password: ac6d33b6c4554c732a3f6802f152fe93;','0:0:0:0:0:0:0:1','2018-07-18 15:48:10'),
	(551,0,'admin','删除角色',889,'/role/save','com.clouddoo.core.controller.RoleController.save()','role: Role(id=1, name=管理员, remark=管理员, createTime=null, updateTime=null, isDeleted=null, menuId=null, menuIds=[1, 3, 4, 5, 6, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 26, 27, 29, 31, 30, 32, 33, 34, 35, 37, 38]); ','0:0:0:0:0:0:0:1','2018-07-18 15:49:24'),
	(552,1,'admin','登陆成功！',55,'/login','com.clouddoo.core.controller.LoginController.login','username: admin; password: ac6d33b6c4554c732a3f6802f152fe93;','0:0:0:0:0:0:0:1','2018-07-18 15:57:25'),
	(553,1,'admin','登陆成功！',50,'/login','com.clouddoo.core.controller.LoginController.login','username: admin; password: ac6d33b6c4554c732a3f6802f152fe93;','0:0:0:0:0:0:0:1','2018-07-18 16:21:02'),
	(554,0,'admin','编辑markdown',0,'/note/mark','com.clouddoo.tool.controller.NoteController.mark()','model: {id=293}; id: 293; ','0:0:0:0:0:0:0:1','2018-07-18 16:25:22'),
	(555,0,'admin','编辑markdown',0,'/note/mark','com.clouddoo.tool.controller.NoteController.mark()','model: {id=293}; id: 293; ','0:0:0:0:0:0:0:1','2018-07-18 16:25:57'),
	(556,0,'admin','编辑markdown',0,'/note/mark','com.clouddoo.tool.controller.NoteController.mark()','model: {id=293}; id: 293; ','0:0:0:0:0:0:0:1','2018-07-18 16:26:57'),
	(557,0,'admin','编辑markdown',0,'/note/mark','com.clouddoo.tool.controller.NoteController.mark()','model: {id=293}; id: 293; ','0:0:0:0:0:0:0:1','2018-07-18 16:29:47'),
	(558,0,'admin','编辑markdown',0,'/note/mark','com.clouddoo.tool.controller.NoteController.mark()','model: {id=293}; id: 293; ','0:0:0:0:0:0:0:1','2018-07-18 16:33:35'),
	(559,0,'admin','编辑markdown',0,'/note/mark','com.clouddoo.tool.controller.NoteController.mark()','model: {id=293}; id: 293; ','0:0:0:0:0:0:0:1','2018-07-18 16:41:23'),
	(560,0,'admin','编辑markdown',0,'/note/mark','com.clouddoo.tool.controller.NoteController.mark()','model: {id=293}; id: 293; ','0:0:0:0:0:0:0:1','2018-07-18 16:42:36'),
	(561,0,'admin','编辑markdown',0,'/note/mark','com.clouddoo.tool.controller.NoteController.mark()','model: {id=293}; id: 293; ','0:0:0:0:0:0:0:1','2018-07-18 16:43:38'),
	(562,0,'admin','编辑markdown',0,'/note/mark','com.clouddoo.tool.controller.NoteController.mark()','model: {id=293}; id: 293; ','0:0:0:0:0:0:0:1','2018-07-18 16:44:02'),
	(563,0,'admin','编辑markdown',0,'/note/mark','com.clouddoo.tool.controller.NoteController.mark()','model: {id=293}; id: 293; ','0:0:0:0:0:0:0:1','2018-07-18 16:44:21'),
	(564,0,'admin','编辑markdown',0,'/note/mark','com.clouddoo.tool.controller.NoteController.mark()','model: {id=293}; id: 293; ','0:0:0:0:0:0:0:1','2018-07-18 16:46:54'),
	(565,0,'admin','编辑markdown',0,'/note/mark','com.clouddoo.tool.controller.NoteController.mark()','model: {id=293}; id: 293; ','0:0:0:0:0:0:0:1','2018-07-18 16:53:38'),
	(566,0,'admin','编辑markdown',0,'/note/mark','com.clouddoo.tool.controller.NoteController.mark()','model: {id=293}; id: 293; ','0:0:0:0:0:0:0:1','2018-07-18 16:54:02'),
	(567,0,'admin','编辑markdown',0,'/note/mark','com.clouddoo.tool.controller.NoteController.mark()','model: {id=293}; id: 293; ','0:0:0:0:0:0:0:1','2018-07-18 16:58:49'),
	(568,0,'admin','保存笔记',0,'/note/save','com.clouddoo.tool.controller.NoteController.save()','note: Note(id=293, parentId=null, userId=null, type=null, name=null, content=null, isLock=null, createTime=null, updateTime=null, isDeleted=null); ','0:0:0:0:0:0:0:1','2018-07-18 16:59:11'),
	(569,0,'admin','编辑markdown',0,'/note/mark','com.clouddoo.tool.controller.NoteController.mark()','model: {id=293}; id: 293; ','0:0:0:0:0:0:0:1','2018-07-18 16:59:23'),
	(570,0,'admin','编辑markdown',0,'/note/mark','com.clouddoo.tool.controller.NoteController.mark()','model: {id=293}; id: 293; ','0:0:0:0:0:0:0:1','2018-07-18 17:00:07'),
	(571,0,'admin','保存笔记',5694,'/note/save','com.clouddoo.tool.controller.NoteController.save()','note: Note(id=293, parentId=null, userId=null, type=null, name=null, content=null, isLock=null, createTime=null, updateTime=null, isDeleted=null); ','0:0:0:0:0:0:0:1','2018-07-18 17:04:47'),
	(572,0,'admin','编辑markdown',0,'/note/mark','com.clouddoo.tool.controller.NoteController.mark()','model: {id=293}; id: 293; ','0:0:0:0:0:0:0:1','2018-07-18 17:09:12'),
	(573,0,'admin','编辑markdown',0,'/note/mark','com.clouddoo.tool.controller.NoteController.mark()','model: {id=293}; id: 293; ','0:0:0:0:0:0:0:1','2018-07-18 17:10:56'),
	(574,0,'admin','编辑markdown',0,'/note/mark','com.clouddoo.tool.controller.NoteController.mark()','model: {id=293}; id: 293; ','0:0:0:0:0:0:0:1','2018-07-18 17:13:31'),
	(575,0,'admin','保存笔记',101859,'/note/save','com.clouddoo.tool.controller.NoteController.save()','note: Note(id=293, parentId=null, userId=null, type=null, name=null, content=null, isLock=null, createTime=null, updateTime=null, isDeleted=null); ','0:0:0:0:0:0:0:1','2018-07-18 17:15:30'),
	(576,1,'admin','登陆成功！',96,'/login','com.clouddoo.core.controller.LoginController.login','username: admin; password: ac6d33b6c4554c732a3f6802f152fe93;','0:0:0:0:0:0:0:1','2018-07-18 17:15:43'),
	(577,0,'admin','编辑markdown',0,'/note/mark','com.clouddoo.tool.controller.NoteController.mark()','model: {id=293}; id: 293; ','0:0:0:0:0:0:0:1','2018-07-18 17:15:56'),
	(578,0,'admin','编辑markdown',0,'/note/mark','com.clouddoo.tool.controller.NoteController.mark()','model: {id=293}; id: 293; ','0:0:0:0:0:0:0:1','2018-07-18 17:16:17'),
	(579,0,'admin','编辑markdown',0,'/note/mark','com.clouddoo.tool.controller.NoteController.mark()','model: {id=293}; id: 293; ','0:0:0:0:0:0:0:1','2018-07-18 17:17:19'),
	(580,0,'admin','编辑markdown',0,'/note/mark','com.clouddoo.tool.controller.NoteController.mark()','model: {id=293}; id: 293; ','0:0:0:0:0:0:0:1','2018-07-18 17:17:38'),
	(581,0,'admin','编辑markdown',0,'/note/mark','com.clouddoo.tool.controller.NoteController.mark()','model: {id=293}; id: 293; ','0:0:0:0:0:0:0:1','2018-07-18 17:18:21'),
	(582,0,'admin','编辑markdown',0,'/note/mark','com.clouddoo.tool.controller.NoteController.mark()','model: {id=293}; id: 293; ','0:0:0:0:0:0:0:1','2018-07-18 17:19:09'),
	(583,0,'admin','编辑markdown',0,'/note/mark','com.clouddoo.tool.controller.NoteController.mark()','model: {id=293}; id: 293; ','0:0:0:0:0:0:0:1','2018-07-18 17:20:12'),
	(584,0,'admin','保存笔记',4674,'/note/save','com.clouddoo.tool.controller.NoteController.save()','note: Note(id=293, parentId=null, userId=null, type=null, name=null, content=null, isLock=null, createTime=null, updateTime=null, isDeleted=null); ','0:0:0:0:0:0:0:1','2018-07-18 17:20:19'),
	(585,0,'admin','编辑markdown',0,'/note/mark','com.clouddoo.tool.controller.NoteController.mark()','model: {id=293}; id: 293; ','0:0:0:0:0:0:0:1','2018-07-18 17:20:29'),
	(586,0,'admin','保存笔记',0,'/note/save','com.clouddoo.tool.controller.NoteController.save()','note: Note(id=293, parentId=null, userId=null, type=null, name=null, content=null, isLock=null, createTime=null, updateTime=null, isDeleted=null); ','0:0:0:0:0:0:0:1','2018-07-18 17:20:30'),
	(587,0,'admin','编辑markdown',0,'/note/mark','com.clouddoo.tool.controller.NoteController.mark()','model: {id=293}; id: 293; ','0:0:0:0:0:0:0:1','2018-07-18 17:21:33'),
	(588,0,'admin','保存笔记',0,'/note/save','com.clouddoo.tool.controller.NoteController.save()','note: Note(id=293, parentId=null, userId=null, type=null, name=null, content=null, isLock=null, createTime=null, updateTime=null, isDeleted=null); ','0:0:0:0:0:0:0:1','2018-07-18 17:21:34'),
	(589,0,'admin','编辑markdown',0,'/note/mark','com.clouddoo.tool.controller.NoteController.mark()','model: {id=293}; id: 293; ','0:0:0:0:0:0:0:1','2018-07-18 17:21:54'),
	(590,0,'admin','编辑markdown',0,'/note/mark','com.clouddoo.tool.controller.NoteController.mark()','model: {id=293}; id: 293; ','0:0:0:0:0:0:0:1','2018-07-18 17:22:17'),
	(591,0,'admin','保存笔记',0,'/note/save','com.clouddoo.tool.controller.NoteController.save()','note: Note(id=293, parentId=null, userId=null, type=null, name=null, content=null, isLock=null, createTime=null, updateTime=null, isDeleted=null); ','0:0:0:0:0:0:0:1','2018-07-18 17:22:19'),
	(592,0,'admin','编辑markdown',0,'/note/mark','com.clouddoo.tool.controller.NoteController.mark()','model: {id=293}; id: 293; ','0:0:0:0:0:0:0:1','2018-07-18 17:22:32'),
	(593,0,'admin','保存笔记',0,'/note/save','com.clouddoo.tool.controller.NoteController.save()','note: Note(id=293, parentId=null, userId=null, type=null, name=null, content=null, isLock=null, createTime=null, updateTime=null, isDeleted=null); ','0:0:0:0:0:0:0:1','2018-07-18 17:22:33'),
	(594,0,'admin','编辑markdown',0,'/note/mark','com.clouddoo.tool.controller.NoteController.mark()','model: {id=293}; id: 293; ','0:0:0:0:0:0:0:1','2018-07-18 17:25:29'),
	(595,0,'admin','编辑markdown',0,'/note/mark','com.clouddoo.tool.controller.NoteController.mark()','model: {id=293}; id: 293; ','0:0:0:0:0:0:0:1','2018-07-18 17:27:53'),
	(596,0,'admin','保存笔记',1,'/note/save','com.clouddoo.tool.controller.NoteController.save()','note: Note(id=293, parentId=null, userId=null, type=null, name=null, content=测试一下![](/md/2018/07/18/ed2e607f-cb95-4582-b445-6487df5a2550.png), isLock=null, createTime=null, updateTime=null, isDeleted=null); ','0:0:0:0:0:0:0:1','2018-07-18 17:28:11'),
	(597,0,'admin','编辑markdown',0,'/note/mark','com.clouddoo.tool.controller.NoteController.mark()','model: {id=293}; id: 293; ','0:0:0:0:0:0:0:1','2018-07-18 17:28:15'),
	(598,0,'admin','编辑markdown',0,'/note/mark','com.clouddoo.tool.controller.NoteController.mark()','model: {id=293}; id: 293; ','0:0:0:0:0:0:0:1','2018-07-18 17:28:30'),
	(599,0,'admin','保存笔记',37,'/note/save','com.clouddoo.tool.controller.NoteController.save()','note: Note(id=293, parentId=null, userId=null, type=null, name=null, content=啊啊啊![](/md/2018/07/18/9366229d-ef37-4021-aefd-aca59d1342cb.png), isLock=null, createTime=null, updateTime=null, isDeleted=null); ','0:0:0:0:0:0:0:1','2018-07-18 17:29:25'),
	(600,0,'admin','编辑markdown',0,'/note/mark','com.clouddoo.tool.controller.NoteController.mark()','model: {id=293}; id: 293; ','0:0:0:0:0:0:0:1','2018-07-18 17:29:30'),
	(601,0,'admin','编辑markdown',0,'/note/mark','com.clouddoo.tool.controller.NoteController.mark()','model: {id=293}; id: 293; ','0:0:0:0:0:0:0:1','2018-07-18 17:30:33'),
	(602,0,'admin','编辑markdown',0,'/note/mark','com.clouddoo.tool.controller.NoteController.mark()','model: {id=293}; id: 293; ','0:0:0:0:0:0:0:1','2018-07-18 17:30:47'),
	(603,0,'admin','编辑markdown',0,'/note/mark','com.clouddoo.tool.controller.NoteController.mark()','model: {id=293}; id: 293; ','0:0:0:0:0:0:0:1','2018-07-18 17:33:04'),
	(604,0,'admin','编辑markdown',0,'/note/mark','com.clouddoo.tool.controller.NoteController.mark()','model: {id=293}; id: 293; ','0:0:0:0:0:0:0:1','2018-07-18 17:33:10'),
	(605,0,'admin','编辑markdown',0,'/note/mark','com.clouddoo.tool.controller.NoteController.mark()','model: {id=293}; id: 293; ','0:0:0:0:0:0:0:1','2018-07-18 17:34:07'),
	(606,0,'admin','编辑markdown',0,'/note/mark','com.clouddoo.tool.controller.NoteController.mark()','model: {id=293}; id: 293; ','0:0:0:0:0:0:0:1','2018-07-18 17:34:18'),
	(607,0,'admin','编辑markdown',0,'/note/mark','com.clouddoo.tool.controller.NoteController.mark()','model: {id=293}; id: 293; ','0:0:0:0:0:0:0:1','2018-07-18 17:36:11'),
	(608,0,'admin','编辑markdown',0,'/note/mark','com.clouddoo.tool.controller.NoteController.mark()','model: {id=293}; id: 293; ','0:0:0:0:0:0:0:1','2018-07-18 17:36:39'),
	(609,0,'admin','保存笔记',31,'/note/save','com.clouddoo.tool.controller.NoteController.save()','note: Note(id=293, parentId=null, userId=null, type=null, name=null, content=啊啊啊![](/md/2018/07/18/9366229d-ef37-4021-aefd-aca59d1342cb.png), isLock=null, createTime=null, updateTime=null, isDeleted=null); ','0:0:0:0:0:0:0:1','2018-07-18 17:36:43'),
	(610,0,'admin','编辑markdown',0,'/note/mark','com.clouddoo.tool.controller.NoteController.mark()','model: {id=293}; id: 293; ','0:0:0:0:0:0:0:1','2018-07-18 17:39:03'),
	(611,0,'admin','编辑markdown',0,'/note/mark','com.clouddoo.tool.controller.NoteController.mark()','model: {id=293}; id: 293; ','0:0:0:0:0:0:0:1','2018-07-18 17:41:24'),
	(612,0,'admin','编辑markdown',0,'/note/mark','com.clouddoo.tool.controller.NoteController.mark()','model: {id=293}; id: 293; ','0:0:0:0:0:0:0:1','2018-07-18 17:45:18'),
	(613,0,'admin','编辑markdown',0,'/note/mark','com.clouddoo.tool.controller.NoteController.mark()','model: {id=293}; id: 293; ','0:0:0:0:0:0:0:1','2018-07-18 17:46:09'),
	(614,0,'admin','编辑markdown',0,'/note/mark','com.clouddoo.tool.controller.NoteController.mark()','model: {id=293}; id: 293; ','0:0:0:0:0:0:0:1','2018-07-18 18:09:13'),
	(615,0,'admin','保存笔记',37,'/note/save','com.clouddoo.tool.controller.NoteController.save()','note: Note(id=293, parentId=null, userId=null, type=null, name=null, content=啊啊啊![](/md/2018/07/18/9366229d-ef37-4021-aefd-aca59d1342cb.png)\r\n啊啊啊![](/md/2018/07/18/9366229d-ef37-4021-aefd-aca59d1342cb.png)\r\n啊啊啊![](/md/2018/07/18/9366229d-ef37-4021-aefd-aca59d1342cb.png)\r\n啊啊啊![](/md/2018/07/18/9366229d-ef37-4021-aefd-aca59d1342cb.png)\r\n啊啊啊![](/md/2018/07/18/9366229d-ef37-4021-aefd-aca59d1342cb.png), isLock=null, createTime=null, updateTime=null, isDeleted=null); ','0:0:0:0:0:0:0:1','2018-07-18 18:09:22'),
	(616,0,'admin','编辑markdown',0,'/note/mark','com.clouddoo.tool.controller.NoteController.mark()','model: {id=293}; id: 293; ','0:0:0:0:0:0:0:1','2018-07-18 18:11:27'),
	(617,0,'admin','编辑markdown',0,'/note/mark','com.clouddoo.tool.controller.NoteController.mark()','model: {id=293}; id: 293; ','0:0:0:0:0:0:0:1','2018-07-18 18:11:42'),
	(618,0,'admin','编辑markdown',0,'/note/mark','com.clouddoo.tool.controller.NoteController.mark()','model: {id=293}; id: 293; ','0:0:0:0:0:0:0:1','2018-07-18 18:13:40'),
	(619,0,'admin','编辑markdown',0,'/note/mark','com.clouddoo.tool.controller.NoteController.mark()','model: {id=293}; id: 293; ','0:0:0:0:0:0:0:1','2018-07-18 18:13:48'),
	(620,0,'admin','编辑markdown',0,'/note/mark','com.clouddoo.tool.controller.NoteController.mark()','model: {id=293}; id: 293; ','0:0:0:0:0:0:0:1','2018-07-18 18:14:00'),
	(621,0,'admin','编辑markdown',0,'/note/mark','com.clouddoo.tool.controller.NoteController.mark()','model: {id=293}; id: 293; ','0:0:0:0:0:0:0:1','2018-07-18 18:15:53'),
	(622,0,'admin','编辑markdown',0,'/note/mark','com.clouddoo.tool.controller.NoteController.mark()','model: {id=293}; id: 293; ','0:0:0:0:0:0:0:1','2018-07-18 18:16:00'),
	(623,0,'admin','编辑markdown',0,'/note/mark','com.clouddoo.tool.controller.NoteController.mark()','model: {id=293}; id: 293; ','0:0:0:0:0:0:0:1','2018-07-18 18:19:45'),
	(624,0,'admin','编辑markdown',0,'/note/mark','com.clouddoo.tool.controller.NoteController.mark()','model: {id=291}; id: 291; ','0:0:0:0:0:0:0:1','2018-07-18 18:19:50'),
	(625,0,'admin','编辑markdown',0,'/note/mark','com.clouddoo.tool.controller.NoteController.mark()','model: {id=293}; id: 293; ','0:0:0:0:0:0:0:1','2018-07-18 18:35:04'),
	(626,0,'admin','保存笔记',29,'/note/save','com.clouddoo.tool.controller.NoteController.save()','note: Note(id=293, parentId=291, userId=null, type=1, name=111, content=null, isLock=1, createTime=null, updateTime=null, isDeleted=null); ','0:0:0:0:0:0:0:1','2018-07-18 18:35:15'),
	(627,0,'admin','编辑markdown',0,'/note/mark','com.clouddoo.tool.controller.NoteController.mark()','model: {id=293}; id: 293; ','0:0:0:0:0:0:0:1','2018-07-18 18:35:51'),
	(628,1,'admin','登陆成功！',229,'/login','com.clouddoo.core.controller.LoginController.login','username: admin; password: ac6d33b6c4554c732a3f6802f152fe93;','0:0:0:0:0:0:0:1','2018-07-18 20:27:19'),
	(629,0,'admin','删除用户',4,'/user/checkPassword','com.clouddoo.core.controller.UserController.checkPassword()','password: admin; ','0:0:0:0:0:0:0:1','2018-07-18 20:48:25'),
	(630,0,'admin','编辑markdown',0,'/note/mark','com.clouddoo.tool.controller.NoteController.mark()','model: {id=293}; id: 293; ','0:0:0:0:0:0:0:1','2018-07-18 20:48:25'),
	(631,0,'admin','删除用户',0,'/user/checkPassword','com.clouddoo.core.controller.UserController.checkPassword()','password: admi1; ','0:0:0:0:0:0:0:1','2018-07-18 20:48:30'),
	(632,0,'admin','删除用户',0,'/user/checkPassword','com.clouddoo.core.controller.UserController.checkPassword()','password: admi1; ','0:0:0:0:0:0:0:1','2018-07-18 20:48:33'),
	(633,0,'admin','编辑markdown',0,'/note/mark','com.clouddoo.tool.controller.NoteController.mark()','model: {id=293}; id: 293; ','0:0:0:0:0:0:0:1','2018-07-18 20:49:29'),
	(634,0,'admin','删除用户',0,'/user/checkPassword','com.clouddoo.core.controller.UserController.checkPassword()','password: admin; ','0:0:0:0:0:0:0:1','2018-07-18 20:50:57'),
	(635,0,'admin','删除用户',0,'/user/checkPassword','com.clouddoo.core.controller.UserController.checkPassword()','password: admin; ','0:0:0:0:0:0:0:1','2018-07-18 20:51:24'),
	(636,0,'admin','删除用户',0,'/user/checkPassword','com.clouddoo.core.controller.UserController.checkPassword()','password: admin; ','0:0:0:0:0:0:0:1','2018-07-18 20:51:41'),
	(637,0,'admin','编辑markdown',0,'/note/mark','com.clouddoo.tool.controller.NoteController.mark()','model: {id=293}; id: 293; ','0:0:0:0:0:0:0:1','2018-07-18 20:51:41'),
	(638,0,'admin','删除用户',0,'/user/checkPassword','com.clouddoo.core.controller.UserController.checkPassword()','password: 11; ','0:0:0:0:0:0:0:1','2018-07-18 20:51:45'),
	(639,0,'admin','删除用户',0,'/user/checkPassword','com.clouddoo.core.controller.UserController.checkPassword()','password: 11; ','0:0:0:0:0:0:0:1','2018-07-18 20:51:48'),
	(640,0,'admin','删除用户',0,'/user/checkPassword','com.clouddoo.core.controller.UserController.checkPassword()','password: 111; ','0:0:0:0:0:0:0:1','2018-07-18 20:51:51'),
	(641,0,'admin','删除用户',0,'/user/checkPassword','com.clouddoo.core.controller.UserController.checkPassword()','password: 11; ','0:0:0:0:0:0:0:1','2018-07-18 20:51:54'),
	(642,0,'admin','删除用户',0,'/user/checkPassword','com.clouddoo.core.controller.UserController.checkPassword()','password: admin; ','0:0:0:0:0:0:0:1','2018-07-18 20:52:09'),
	(643,0,'admin','保存笔记',35,'/note/save','com.clouddoo.tool.controller.NoteController.save()','note: Note(id=293, parentId=291, userId=null, type=1, name=111, content=null, isLock=0, createTime=null, updateTime=null, isDeleted=null); ','0:0:0:0:0:0:0:1','2018-07-18 20:52:12'),
	(644,0,'admin','编辑markdown',0,'/note/mark','com.clouddoo.tool.controller.NoteController.mark()','model: {id=293}; id: 293; ','0:0:0:0:0:0:0:1','2018-07-18 20:52:16'),
	(645,1,'admin','登陆成功！',208,'/login','com.clouddoo.core.controller.LoginController.login','username: admin; password: ac6d33b6c4554c732a3f6802f152fe93;','0:0:0:0:0:0:0:1','2018-07-19 13:47:18'),
	(646,0,'admin','保存笔记',32,'/note/save','com.clouddoo.tool.controller.NoteController.save()','note: Note(id=293, parentId=291, userId=null, type=1, name=阿里云配置, content=null, isLock=1, createTime=null, updateTime=null, isDeleted=null); ','0:0:0:0:0:0:0:1','2018-07-19 13:47:46'),
	(647,0,'admin','删除用户',2,'/user/checkPassword','com.clouddoo.core.controller.UserController.checkPassword()','password: admin; ','0:0:0:0:0:0:0:1','2018-07-19 13:47:53'),
	(648,0,'admin','编辑markdown',0,'/note/mark','com.clouddoo.tool.controller.NoteController.mark()','model: {id=293}; id: 293; ','0:0:0:0:0:0:0:1','2018-07-19 13:47:53');

/*!40000 ALTER TABLE `t_core_log` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table t_core_menu
# ------------------------------------------------------------

DROP TABLE IF EXISTS `t_core_menu`;

CREATE TABLE `t_core_menu` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT COMMENT '菜单/按钮ID',
  `parent_id` bigint(20) unsigned NOT NULL DEFAULT '0' COMMENT '上级菜单ID',
  `name` varchar(50) NOT NULL DEFAULT '' COMMENT '菜单/按钮名称',
  `url` varchar(100) DEFAULT NULL COMMENT '菜单URL',
  `perms` text COMMENT '权限标识',
  `icon` varchar(50) DEFAULT NULL COMMENT '图标',
  `type` tinyint(1) NOT NULL COMMENT '类型 0菜单 1按钮',
  `order_num` bigint(20) unsigned DEFAULT '0' COMMENT '排序',
  `create_time` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `update_time` datetime DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP COMMENT '修改时间',
  `is_deleted` tinyint(1) unsigned NOT NULL DEFAULT '0' COMMENT '删除状态（0 未删，1 已删）',
  PRIMARY KEY (`id`),
  KEY `parent_id` (`parent_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

LOCK TABLES `t_core_menu` WRITE;
/*!40000 ALTER TABLE `t_core_menu` DISABLE KEYS */;

INSERT INTO `t_core_menu` (`id`, `parent_id`, `name`, `url`, `perms`, `icon`, `type`, `order_num`, `create_time`, `update_time`, `is_deleted`)
VALUES
	(1,0,'系统管理','','','layui-icon layui-icon-set',0,100,'2017-12-27 16:39:07','2018-07-15 11:44:46',0),
	(3,1,'用户管理','/user/page','','',0,3,'2017-12-27 16:47:13','2018-07-12 13:55:22',0),
	(4,1,'角色管理','/role/page','','',0,2,'2017-12-27 16:48:09','2018-07-14 15:54:19',0),
	(5,1,'权限管理','/menu/page','','',0,4,'2017-12-27 16:48:57','2018-07-15 10:37:53',0),
	(6,1,'部门管理','/dept/page','','',0,1,'2017-12-27 16:57:33','2018-07-15 11:32:42',0),
	(11,3,'编辑','','user:form','',1,0,'2017-12-27 17:02:58','2018-05-29 10:04:12',0),
	(12,3,'保存','','user:save','',1,0,'2017-12-27 17:04:07','2018-05-29 10:04:20',0),
	(13,3,'删除','','user:delete','',1,0,'2017-12-27 17:04:58','2018-05-25 10:14:05',0),
	(14,4,'编辑',NULL,'role:form',NULL,1,0,'2017-12-27 17:06:38','2018-05-29 16:56:59',0),
	(15,4,'保存',NULL,'role:save',NULL,1,0,'2017-12-27 17:06:38','2018-05-29 16:57:10',0),
	(16,4,'删除',NULL,'role:delete',NULL,1,0,'2017-12-27 17:06:38','2018-05-25 10:16:16',0),
	(17,5,'编辑',NULL,'menu:form',NULL,1,0,'2017-12-27 17:08:02','2018-05-29 16:57:21',0),
	(18,5,'保存',NULL,'menu:save',NULL,1,0,'2017-12-27 17:08:02','2018-05-29 16:57:29',0),
	(19,5,'删除',NULL,'menu:delete',NULL,1,0,'2017-12-27 17:08:02','2018-05-25 10:16:22',0),
	(20,6,'编辑',NULL,'dept:form',NULL,1,0,'2017-12-27 17:09:24','2018-05-29 16:57:41',0),
	(21,6,'保存',NULL,'dept:save',NULL,1,0,'2017-12-27 17:09:24','2018-05-29 16:57:51',0),
	(22,6,'删除',NULL,'dept:delete',NULL,1,0,'2017-12-27 17:09:24','2018-05-25 10:16:28',0),
	(23,1,'日志管理','/log/page','','',0,10,'2018-07-15 19:03:05',NULL,0),
	(24,23,'删除','','log:delete','',1,0,'2018-07-15 19:03:25','2018-07-15 21:47:10',0),
	(26,27,'swagger','/swagger-ui.html','','',0,0,'2018-07-16 08:59:22','2018-07-16 20:27:08',0),
	(27,0,'系统监控','','','layui-icon layui-icon-app',0,0,'2018-07-16 18:30:48','2018-07-16 20:50:44',0),
	(29,27,'druid监控','/druid','','',0,1,'2018-07-16 20:24:20',NULL,0),
	(30,0,'开发工具','','','layui-icon layui-icon-fonts-code',0,0,'2018-07-16 20:58:22',NULL,0),
	(31,30,'文件上传','/upload','','',0,0,'2018-07-16 20:59:10','2018-07-16 21:00:38',0),
	(32,30,'我的笔记','/note/page','','',0,1,'2018-07-16 21:26:33','2018-07-17 10:08:31',0),
	(33,32,'编辑','','note:form','',1,0,'2018-07-17 10:09:08',NULL,0),
	(34,32,'保存','','note:save','',1,1,'2018-07-17 10:09:22',NULL,0),
	(35,32,'删除','','note:delete','',1,2,'2018-07-17 10:09:35',NULL,0),
	(37,32,'mark','','note:mark','',1,4,'2018-07-17 21:37:37',NULL,0),
	(38,32,'预览','','note:view','',1,5,'2018-07-17 21:37:52',NULL,0);

/*!40000 ALTER TABLE `t_core_menu` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table t_core_role
# ------------------------------------------------------------

DROP TABLE IF EXISTS `t_core_role`;

CREATE TABLE `t_core_role` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT COMMENT '角色ID',
  `name` varchar(100) NOT NULL DEFAULT '' COMMENT '角色名称',
  `remark` varchar(100) DEFAULT NULL COMMENT '角色描述',
  `create_time` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `update_time` datetime DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP COMMENT '修改时间',
  `is_deleted` tinyint(1) unsigned NOT NULL DEFAULT '0' COMMENT '删除状态（0 未删，1 已删）',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

LOCK TABLES `t_core_role` WRITE;
/*!40000 ALTER TABLE `t_core_role` DISABLE KEYS */;

INSERT INTO `t_core_role` (`id`, `name`, `remark`, `create_time`, `update_time`, `is_deleted`)
VALUES
	(1,'管理员','管理员','2017-12-27 16:23:11','2018-05-16 15:57:11',0);

/*!40000 ALTER TABLE `t_core_role` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table t_core_role_menu
# ------------------------------------------------------------

DROP TABLE IF EXISTS `t_core_role_menu`;

CREATE TABLE `t_core_role_menu` (
  `role_id` bigint(20) unsigned NOT NULL COMMENT '角色ID',
  `menu_id` bigint(20) unsigned NOT NULL COMMENT '菜单/按钮ID'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

LOCK TABLES `t_core_role_menu` WRITE;
/*!40000 ALTER TABLE `t_core_role_menu` DISABLE KEYS */;

INSERT INTO `t_core_role_menu` (`role_id`, `menu_id`)
VALUES
	(1,1),
	(1,3),
	(1,4),
	(1,5),
	(1,6),
	(1,11),
	(1,12),
	(1,13),
	(1,14),
	(1,15),
	(1,16),
	(1,17),
	(1,18),
	(1,19),
	(1,20),
	(1,21),
	(1,22),
	(1,23),
	(1,24),
	(1,26),
	(1,27),
	(1,29),
	(1,31),
	(1,30),
	(1,32),
	(1,33),
	(1,34),
	(1,35),
	(1,37),
	(1,38);

/*!40000 ALTER TABLE `t_core_role_menu` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table t_core_user
# ------------------------------------------------------------

DROP TABLE IF EXISTS `t_core_user`;

CREATE TABLE `t_core_user` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT COMMENT '用户ID',
  `username` varchar(50) NOT NULL DEFAULT '' COMMENT '用户名',
  `password` varchar(128) NOT NULL DEFAULT '' COMMENT '密码',
  `dept_id` bigint(20) unsigned DEFAULT NULL COMMENT '部门ID',
  `email` varchar(128) DEFAULT NULL COMMENT '邮箱',
  `mobile` varchar(20) DEFAULT NULL COMMENT '联系电话',
  `status` tinyint(1) NOT NULL DEFAULT '1' COMMENT '状态 0锁定 1有效',
  `sex` tinyint(1) unsigned NOT NULL DEFAULT '0' COMMENT '性别 0男 1女',
  `description` varchar(100) DEFAULT NULL COMMENT '描述',
  `last_login_time` datetime DEFAULT NULL COMMENT '最近访问时间',
  `create_time` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `update_time` datetime DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP COMMENT '修改时间',
  `is_deleted` tinyint(1) unsigned NOT NULL DEFAULT '0' COMMENT '删除状态（0 未删，1 已删）',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

LOCK TABLES `t_core_user` WRITE;
/*!40000 ALTER TABLE `t_core_user` DISABLE KEYS */;

INSERT INTO `t_core_user` (`id`, `username`, `password`, `dept_id`, `email`, `mobile`, `status`, `sex`, `description`, `last_login_time`, `create_time`, `update_time`, `is_deleted`)
VALUES
	(180,'admin','ac6d33b6c4554c732a3f6802f152fe93',1,'1509353019@qq.com','13912265940',1,1,NULL,'2018-07-19 13:47:18','2018-07-13 23:21:39','2018-07-19 13:47:18',0);

/*!40000 ALTER TABLE `t_core_user` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table t_core_user_role
# ------------------------------------------------------------

DROP TABLE IF EXISTS `t_core_user_role`;

CREATE TABLE `t_core_user_role` (
  `user_id` bigint(20) unsigned NOT NULL COMMENT '用户ID',
  `role_id` bigint(20) unsigned NOT NULL COMMENT '角色ID'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

LOCK TABLES `t_core_user_role` WRITE;
/*!40000 ALTER TABLE `t_core_user_role` DISABLE KEYS */;

INSERT INTO `t_core_user_role` (`user_id`, `role_id`)
VALUES
	(180,1);

/*!40000 ALTER TABLE `t_core_user_role` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table t_tool_note
# ------------------------------------------------------------

DROP TABLE IF EXISTS `t_tool_note`;

CREATE TABLE `t_tool_note` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `parent_id` bigint(20) unsigned NOT NULL DEFAULT '0' COMMENT '上级栏目',
  `user_id` bigint(20) unsigned NOT NULL COMMENT '用户id',
  `type` tinyint(1) NOT NULL DEFAULT '0' COMMENT '类型（0夹文件，1 文件）',
  `name` varchar(100) NOT NULL DEFAULT '' COMMENT '名称',
  `content` text COMMENT '内容',
  `is_lock` tinyint(1) NOT NULL DEFAULT '0' COMMENT '是否上锁',
  `create_time` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `update_time` datetime DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP COMMENT '更新时间',
  `is_deleted` tinyint(1) unsigned NOT NULL DEFAULT '0' COMMENT '删除状态（0 未删，1 已删）',
  PRIMARY KEY (`id`),
  KEY `parent_id` (`parent_id`),
  KEY `user_id` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

LOCK TABLES `t_tool_note` WRITE;
/*!40000 ALTER TABLE `t_tool_note` DISABLE KEYS */;

INSERT INTO `t_tool_note` (`id`, `parent_id`, `user_id`, `type`, `name`, `content`, `is_lock`, `create_time`, `update_time`, `is_deleted`)
VALUES
	(291,0,180,0,'文档',NULL,0,'2018-07-17 19:32:08',NULL,0),
	(292,0,180,0,'接口',NULL,0,'2018-07-17 19:33:32',NULL,0),
	(293,291,180,1,'阿里云配置','啊啊啊![](/md/2018/07/18/9366229d-ef37-4021-aefd-aca59d1342cb.png)\r\n啊啊啊![](/md/2018/07/18/9366229d-ef37-4021-aefd-aca59d1342cb.png)\r\n啊啊啊![](/md/2018/07/18/9366229d-ef37-4021-aefd-aca59d1342cb.png)\r\n啊啊啊![](/md/2018/07/18/9366229d-ef37-4021-aefd-aca59d1342cb.png)\r\n啊啊啊![](/md/2018/07/18/9366229d-ef37-4021-aefd-aca59d1342cb.png)',1,'2018-07-17 19:43:52','2018-07-19 13:47:46',0);

/*!40000 ALTER TABLE `t_tool_note` ENABLE KEYS */;
UNLOCK TABLES;



/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
