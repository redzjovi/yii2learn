-- Adminer 4.5.0 MySQL dump

SET NAMES utf8;
SET time_zone = '+00:00';
SET foreign_key_checks = 0;
SET sql_mode = 'NO_AUTO_VALUE_ON_ZERO';

DROP TABLE IF EXISTS `auth_assignment`;
CREATE TABLE `auth_assignment` (
  `item_name` varchar(64) COLLATE utf8_unicode_ci NOT NULL,
  `user_id` varchar(64) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` int(11) DEFAULT NULL,
  PRIMARY KEY (`item_name`,`user_id`),
  KEY `auth_assignment_user_id_idx` (`user_id`),
  CONSTRAINT `auth_assignment_ibfk_1` FOREIGN KEY (`item_name`) REFERENCES `auth_item` (`name`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

INSERT INTO `auth_assignment` (`item_name`, `user_id`, `created_at`) VALUES
('admin',	'1',	1529815498);

DROP TABLE IF EXISTS `auth_item`;
CREATE TABLE `auth_item` (
  `name` varchar(64) COLLATE utf8_unicode_ci NOT NULL,
  `type` smallint(6) NOT NULL,
  `description` text COLLATE utf8_unicode_ci,
  `rule_name` varchar(64) COLLATE utf8_unicode_ci DEFAULT NULL,
  `data` blob,
  `created_at` int(11) DEFAULT NULL,
  `updated_at` int(11) DEFAULT NULL,
  PRIMARY KEY (`name`),
  KEY `rule_name` (`rule_name`),
  KEY `idx-auth_item-type` (`type`),
  CONSTRAINT `auth_item_ibfk_1` FOREIGN KEY (`rule_name`) REFERENCES `auth_rule` (`name`) ON DELETE SET NULL ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

INSERT INTO `auth_item` (`name`, `type`, `description`, `rule_name`, `data`, `created_at`, `updated_at`) VALUES
('/*',	2,	NULL,	NULL,	NULL,	1529815495,	1529815495),
('/admin/*',	2,	NULL,	NULL,	NULL,	1529815495,	1529815495),
('/admin/assignment/*',	2,	NULL,	NULL,	NULL,	1529815495,	1529815495),
('/admin/assignment/assign',	2,	NULL,	NULL,	NULL,	1529815495,	1529815495),
('/admin/assignment/index',	2,	NULL,	NULL,	NULL,	1529815495,	1529815495),
('/admin/assignment/revoke',	2,	NULL,	NULL,	NULL,	1529815495,	1529815495),
('/admin/assignment/view',	2,	NULL,	NULL,	NULL,	1529815495,	1529815495),
('/admin/default/*',	2,	NULL,	NULL,	NULL,	1529815495,	1529815495),
('/admin/default/index',	2,	NULL,	NULL,	NULL,	1529815495,	1529815495),
('/admin/menu/*',	2,	NULL,	NULL,	NULL,	1529815495,	1529815495),
('/admin/menu/create',	2,	NULL,	NULL,	NULL,	1529815495,	1529815495),
('/admin/menu/delete',	2,	NULL,	NULL,	NULL,	1529815495,	1529815495),
('/admin/menu/index',	2,	NULL,	NULL,	NULL,	1529815495,	1529815495),
('/admin/menu/update',	2,	NULL,	NULL,	NULL,	1529815495,	1529815495),
('/admin/menu/view',	2,	NULL,	NULL,	NULL,	1529815495,	1529815495),
('/admin/permission/*',	2,	NULL,	NULL,	NULL,	1529815495,	1529815495),
('/admin/permission/assign',	2,	NULL,	NULL,	NULL,	1529815495,	1529815495),
('/admin/permission/create',	2,	NULL,	NULL,	NULL,	1529815495,	1529815495),
('/admin/permission/delete',	2,	NULL,	NULL,	NULL,	1529815495,	1529815495),
('/admin/permission/index',	2,	NULL,	NULL,	NULL,	1529815495,	1529815495),
('/admin/permission/remove',	2,	NULL,	NULL,	NULL,	1529815495,	1529815495),
('/admin/permission/update',	2,	NULL,	NULL,	NULL,	1529815495,	1529815495),
('/admin/permission/view',	2,	NULL,	NULL,	NULL,	1529815495,	1529815495),
('/admin/role/*',	2,	NULL,	NULL,	NULL,	1529815495,	1529815495),
('/admin/role/assign',	2,	NULL,	NULL,	NULL,	1529815495,	1529815495),
('/admin/role/create',	2,	NULL,	NULL,	NULL,	1529815495,	1529815495),
('/admin/role/delete',	2,	NULL,	NULL,	NULL,	1529815495,	1529815495),
('/admin/role/index',	2,	NULL,	NULL,	NULL,	1529815495,	1529815495),
('/admin/role/remove',	2,	NULL,	NULL,	NULL,	1529815495,	1529815495),
('/admin/role/update',	2,	NULL,	NULL,	NULL,	1529815495,	1529815495),
('/admin/role/view',	2,	NULL,	NULL,	NULL,	1529815495,	1529815495),
('/admin/route/*',	2,	NULL,	NULL,	NULL,	1529815495,	1529815495),
('/admin/route/assign',	2,	NULL,	NULL,	NULL,	1529815495,	1529815495),
('/admin/route/create',	2,	NULL,	NULL,	NULL,	1529815495,	1529815495),
('/admin/route/index',	2,	NULL,	NULL,	NULL,	1529815495,	1529815495),
('/admin/route/refresh',	2,	NULL,	NULL,	NULL,	1529815495,	1529815495),
('/admin/route/remove',	2,	NULL,	NULL,	NULL,	1529815495,	1529815495),
('/admin/rule/*',	2,	NULL,	NULL,	NULL,	1529815495,	1529815495),
('/admin/rule/create',	2,	NULL,	NULL,	NULL,	1529815495,	1529815495),
('/admin/rule/delete',	2,	NULL,	NULL,	NULL,	1529815495,	1529815495),
('/admin/rule/index',	2,	NULL,	NULL,	NULL,	1529815495,	1529815495),
('/admin/rule/update',	2,	NULL,	NULL,	NULL,	1529815495,	1529815495),
('/admin/rule/view',	2,	NULL,	NULL,	NULL,	1529815495,	1529815495),
('/admin/user/*',	2,	NULL,	NULL,	NULL,	1529815495,	1529815495),
('/admin/user/activate',	2,	NULL,	NULL,	NULL,	1529815495,	1529815495),
('/admin/user/change-password',	2,	NULL,	NULL,	NULL,	1529815495,	1529815495),
('/admin/user/delete',	2,	NULL,	NULL,	NULL,	1529815495,	1529815495),
('/admin/user/index',	2,	NULL,	NULL,	NULL,	1529815495,	1529815495),
('/admin/user/login',	2,	NULL,	NULL,	NULL,	1529815495,	1529815495),
('/admin/user/logout',	2,	NULL,	NULL,	NULL,	1529815495,	1529815495),
('/admin/user/request-password-reset',	2,	NULL,	NULL,	NULL,	1529815495,	1529815495),
('/admin/user/reset-password',	2,	NULL,	NULL,	NULL,	1529815495,	1529815495),
('/admin/user/signup',	2,	NULL,	NULL,	NULL,	1529815495,	1529815495),
('/admin/user/view',	2,	NULL,	NULL,	NULL,	1529815495,	1529815495),
('/debug/*',	2,	NULL,	NULL,	NULL,	1529815495,	1529815495),
('/debug/default/*',	2,	NULL,	NULL,	NULL,	1529815495,	1529815495),
('/debug/default/db-explain',	2,	NULL,	NULL,	NULL,	1529815495,	1529815495),
('/debug/default/download-mail',	2,	NULL,	NULL,	NULL,	1529815495,	1529815495),
('/debug/default/index',	2,	NULL,	NULL,	NULL,	1529815495,	1529815495),
('/debug/default/toolbar',	2,	NULL,	NULL,	NULL,	1529815495,	1529815495),
('/debug/default/view',	2,	NULL,	NULL,	NULL,	1529815495,	1529815495),
('/debug/user/*',	2,	NULL,	NULL,	NULL,	1529815495,	1529815495),
('/debug/user/reset-identity',	2,	NULL,	NULL,	NULL,	1529815495,	1529815495),
('/debug/user/set-identity',	2,	NULL,	NULL,	NULL,	1529815495,	1529815495),
('/gii/*',	2,	NULL,	NULL,	NULL,	1529815495,	1529815495),
('/gii/default/*',	2,	NULL,	NULL,	NULL,	1529815495,	1529815495),
('/gii/default/action',	2,	NULL,	NULL,	NULL,	1529815495,	1529815495),
('/gii/default/diff',	2,	NULL,	NULL,	NULL,	1529815495,	1529815495),
('/gii/default/index',	2,	NULL,	NULL,	NULL,	1529815495,	1529815495),
('/gii/default/preview',	2,	NULL,	NULL,	NULL,	1529815495,	1529815495),
('/gii/default/view',	2,	NULL,	NULL,	NULL,	1529815495,	1529815495),
('/post/*',	2,	NULL,	NULL,	NULL,	1529815495,	1529815495),
('/post/backend/post/*',	2,	NULL,	NULL,	NULL,	1529815495,	1529815495),
('/post/backend/post/create',	2,	NULL,	NULL,	NULL,	1529815495,	1529815495),
('/post/backend/post/delete',	2,	NULL,	NULL,	NULL,	1529815495,	1529815495),
('/post/backend/post/index',	2,	NULL,	NULL,	NULL,	1529815495,	1529815495),
('/post/backend/post/update',	2,	NULL,	NULL,	NULL,	1529815495,	1529815495),
('/post/backend/post/view',	2,	NULL,	NULL,	NULL,	1529815495,	1529815495),
('/site/*',	2,	NULL,	NULL,	NULL,	1529815495,	1529815495),
('/site/about',	2,	NULL,	NULL,	NULL,	1529815495,	1529815495),
('/site/captcha',	2,	NULL,	NULL,	NULL,	1529815495,	1529815495),
('/site/contact',	2,	NULL,	NULL,	NULL,	1529815495,	1529815495),
('/site/error',	2,	NULL,	NULL,	NULL,	1529815495,	1529815495),
('/site/index',	2,	NULL,	NULL,	NULL,	1529815495,	1529815495),
('/site/login',	2,	NULL,	NULL,	NULL,	1529815495,	1529815495),
('/site/logout',	2,	NULL,	NULL,	NULL,	1529815495,	1529815495),
('admin',	1,	NULL,	NULL,	NULL,	1529815495,	1529815495);

DROP TABLE IF EXISTS `auth_item_child`;
CREATE TABLE `auth_item_child` (
  `parent` varchar(64) COLLATE utf8_unicode_ci NOT NULL,
  `child` varchar(64) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`parent`,`child`),
  KEY `child` (`child`),
  CONSTRAINT `auth_item_child_ibfk_1` FOREIGN KEY (`parent`) REFERENCES `auth_item` (`name`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `auth_item_child_ibfk_2` FOREIGN KEY (`child`) REFERENCES `auth_item` (`name`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

INSERT INTO `auth_item_child` (`parent`, `child`) VALUES
('admin',	'/*'),
('admin',	'/admin/*'),
('admin',	'/admin/assignment/*'),
('admin',	'/admin/assignment/assign'),
('admin',	'/admin/assignment/index'),
('admin',	'/admin/assignment/revoke'),
('admin',	'/admin/assignment/view'),
('admin',	'/admin/default/*'),
('admin',	'/admin/default/index'),
('admin',	'/admin/menu/*'),
('admin',	'/admin/menu/create'),
('admin',	'/admin/menu/delete'),
('admin',	'/admin/menu/index'),
('admin',	'/admin/menu/update'),
('admin',	'/admin/menu/view'),
('admin',	'/admin/permission/*'),
('admin',	'/admin/permission/assign'),
('admin',	'/admin/permission/create'),
('admin',	'/admin/permission/delete'),
('admin',	'/admin/permission/index'),
('admin',	'/admin/permission/remove'),
('admin',	'/admin/permission/update'),
('admin',	'/admin/permission/view'),
('admin',	'/admin/role/*'),
('admin',	'/admin/role/assign'),
('admin',	'/admin/role/create'),
('admin',	'/admin/role/delete'),
('admin',	'/admin/role/index'),
('admin',	'/admin/role/remove'),
('admin',	'/admin/role/update'),
('admin',	'/admin/role/view'),
('admin',	'/admin/route/*'),
('admin',	'/admin/route/assign'),
('admin',	'/admin/route/create'),
('admin',	'/admin/route/index'),
('admin',	'/admin/route/refresh'),
('admin',	'/admin/route/remove'),
('admin',	'/admin/rule/*'),
('admin',	'/admin/rule/create'),
('admin',	'/admin/rule/delete'),
('admin',	'/admin/rule/index'),
('admin',	'/admin/rule/update'),
('admin',	'/admin/rule/view'),
('admin',	'/admin/user/*'),
('admin',	'/admin/user/activate'),
('admin',	'/admin/user/change-password'),
('admin',	'/admin/user/delete'),
('admin',	'/admin/user/index'),
('admin',	'/admin/user/login'),
('admin',	'/admin/user/logout'),
('admin',	'/admin/user/request-password-reset'),
('admin',	'/admin/user/reset-password'),
('admin',	'/admin/user/signup'),
('admin',	'/admin/user/view'),
('admin',	'/debug/*'),
('admin',	'/debug/default/*'),
('admin',	'/debug/default/db-explain'),
('admin',	'/debug/default/download-mail'),
('admin',	'/debug/default/index'),
('admin',	'/debug/default/toolbar'),
('admin',	'/debug/default/view'),
('admin',	'/debug/user/*'),
('admin',	'/debug/user/reset-identity'),
('admin',	'/debug/user/set-identity'),
('admin',	'/gii/*'),
('admin',	'/gii/default/*'),
('admin',	'/gii/default/action'),
('admin',	'/gii/default/diff'),
('admin',	'/gii/default/index'),
('admin',	'/gii/default/preview'),
('admin',	'/gii/default/view'),
('admin',	'/post/*'),
('admin',	'/post/backend/post/*'),
('admin',	'/post/backend/post/create'),
('admin',	'/post/backend/post/delete'),
('admin',	'/post/backend/post/index'),
('admin',	'/post/backend/post/update'),
('admin',	'/post/backend/post/view'),
('admin',	'/site/*'),
('admin',	'/site/about'),
('admin',	'/site/captcha'),
('admin',	'/site/contact'),
('admin',	'/site/error'),
('admin',	'/site/index'),
('admin',	'/site/login'),
('admin',	'/site/logout');

DROP TABLE IF EXISTS `auth_rule`;
CREATE TABLE `auth_rule` (
  `name` varchar(64) COLLATE utf8_unicode_ci NOT NULL,
  `data` blob,
  `created_at` int(11) DEFAULT NULL,
  `updated_at` int(11) DEFAULT NULL,
  PRIMARY KEY (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;


DROP TABLE IF EXISTS `menu`;
CREATE TABLE `menu` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(128) NOT NULL,
  `parent` int(11) DEFAULT NULL,
  `route` varchar(255) DEFAULT NULL,
  `order` int(11) DEFAULT NULL,
  `data` blob,
  PRIMARY KEY (`id`),
  KEY `parent` (`parent`),
  CONSTRAINT `menu_ibfk_1` FOREIGN KEY (`parent`) REFERENCES `menu` (`id`) ON DELETE SET NULL ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

INSERT INTO `menu` (`id`, `name`, `parent`, `route`, `order`, `data`) VALUES
(1,	'Backend Menu',	NULL,	NULL,	NULL,	NULL),
(2,	'Backend',	1,	'/admin/default/index',	NULL,	NULL),
(3,	'Admin',	2,	'/admin/default/index',	1,	NULL),
(4,	'Route',	3,	'/admin/route/index',	1,	NULL),
(5,	'Permission',	3,	'/admin/permission/index',	2,	NULL),
(6,	'Menu',	3,	'/admin/menu/index',	3,	NULL),
(7,	'Role',	3,	'/admin/role/index',	4,	NULL),
(8,	'Assignment',	3,	'/admin/assignment/index',	5,	NULL),
(9,	'User',	3,	'/admin/user/index',	6,	NULL),
(10,	'Modules',	2,	NULL,	2,	NULL),
(11,	'Post',	10,	'/post/backend/post/index',	1,	NULL);

SET NAMES utf8mb4;

DROP TABLE IF EXISTS `migration`;
CREATE TABLE `migration` (
  `version` varchar(180) COLLATE utf8mb4_unicode_ci NOT NULL,
  `apply_time` int(11) DEFAULT NULL,
  PRIMARY KEY (`version`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

INSERT INTO `migration` (`version`, `apply_time`) VALUES
('m000000_000000_base',	1529815476),
('m140506_102106_rbac_init',	1529815485),
('m140602_111327_create_menu_table',	1529815478),
('m160312_050000_create_user',	1529815478),
('m170907_052038_rbac_add_index_on_auth_assignment_user_id',	1529815485),
('m180619_074157_RouteSeeder',	1529815495),
('m180619_084052_RoleSeeder',	1529815496),
('m180620_053128_UserSeeder',	1529815498),
('m180623_011837_MenuSeeder',	1529815498),
('m180623_110839_post',	1529815498);

DROP TABLE IF EXISTS `post`;
CREATE TABLE `post` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `title` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `excerpt` text COLLATE utf8mb4_unicode_ci,
  `content` text COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


DROP TABLE IF EXISTS `user`;
CREATE TABLE `user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(32) COLLATE utf8_unicode_ci NOT NULL,
  `auth_key` varchar(32) COLLATE utf8_unicode_ci NOT NULL,
  `password_hash` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `password_reset_token` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `status` smallint(6) NOT NULL DEFAULT '10',
  `created_at` int(11) NOT NULL,
  `updated_at` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

INSERT INTO `user` (`id`, `username`, `auth_key`, `password_hash`, `password_reset_token`, `email`, `status`, `created_at`, `updated_at`) VALUES
(1,	'admin',	'X3V6pvZl-6P7jfrXvOhG7s-hfxapuNmv',	'$2y$13$PEWUkEmtFrU906BtzIxH7uc8dO7fYv08v2pLErRS23GTJ4QpAo3Za',	NULL,	'admin@mailinator.com',	10,	1529815498,	1529815498);

-- 2018-06-24 04:45:05
