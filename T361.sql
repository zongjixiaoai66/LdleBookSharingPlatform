/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8mb3 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

DROP DATABASE IF EXISTS `t361`;
CREATE DATABASE IF NOT EXISTS `t361` /*!40100 DEFAULT CHARACTER SET utf8mb3 */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `t361`;

DROP TABLE IF EXISTS `address`;
CREATE TABLE IF NOT EXISTS `address` (
  `id` int NOT NULL AUTO_INCREMENT COMMENT '主键 ',
  `yonghu_id` int NOT NULL COMMENT '创建用户',
  `address_name` varchar(200) NOT NULL COMMENT '收货人 ',
  `address_phone` varchar(200) NOT NULL COMMENT '电话 ',
  `address_dizhi` varchar(200) NOT NULL COMMENT '地址 ',
  `isdefault_types` int NOT NULL COMMENT '是否默认地址 ',
  `insert_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '添加时间',
  `update_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '修改时间',
  `create_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间 show3',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8mb3 COMMENT='收货地址';

DELETE FROM `address`;
INSERT INTO `address` (`id`, `yonghu_id`, `address_name`, `address_phone`, `address_dizhi`, `isdefault_types`, `insert_time`, `update_time`, `create_time`) VALUES
	(1, 1, '收货人1', '17703786901', '地址1', 1, '2023-03-22 07:23:10', '2023-03-22 07:23:10', '2023-03-22 07:23:10'),
	(2, 3, '收货人2', '17703786902', '地址2', 1, '2023-03-22 07:23:10', '2023-03-22 07:23:10', '2023-03-22 07:23:10'),
	(3, 2, '收货人3', '17703786903', '地址3', 1, '2023-03-22 07:23:10', '2023-03-22 07:23:10', '2023-03-22 07:23:10'),
	(4, 1, '收货人4', '17703786904', '地址4', 1, '2023-03-22 07:23:10', '2023-03-22 07:23:10', '2023-03-22 07:23:10'),
	(5, 3, '收货人5', '17703786905', '地址5', 1, '2023-03-22 07:23:10', '2023-03-22 07:23:10', '2023-03-22 07:23:10'),
	(6, 2, '收货人6', '17703786906', '地址6', 1, '2023-03-22 07:23:10', '2023-03-22 07:23:10', '2023-03-22 07:23:10'),
	(7, 2, '收货人7', '17703786907', '地址7', 1, '2023-03-22 07:23:10', '2023-03-22 07:23:10', '2023-03-22 07:23:10'),
	(8, 1, '收货人8', '17703786908', '地址8', 1, '2023-03-22 07:23:10', '2023-03-22 07:23:10', '2023-03-22 07:23:10'),
	(9, 1, '收货人9', '17703786909', '地址9', 1, '2023-03-22 07:23:10', '2023-03-22 07:23:10', '2023-03-22 07:23:10'),
	(10, 3, '收货人10', '17703786910', '地址10', 1, '2023-03-22 07:23:10', '2023-03-22 07:23:10', '2023-03-22 07:23:10'),
	(11, 3, '收货人11', '17703786911', '地址11', 1, '2023-03-22 07:23:10', '2023-03-22 07:23:10', '2023-03-22 07:23:10'),
	(12, 3, '收货人12', '17703786912', '地址12', 1, '2023-03-22 07:23:10', '2023-03-22 07:23:10', '2023-03-22 07:23:10'),
	(13, 1, '收货人13', '17703786913', '地址13', 1, '2023-03-22 07:23:10', '2023-03-22 07:23:10', '2023-03-22 07:23:10'),
	(14, 3, '收货人14', '17703786914', '地址14', 1, '2023-03-22 07:23:10', '2023-03-22 07:23:10', '2023-03-22 07:23:10'),
	(15, 4, '张5', '17788889999', '地址111', 2, '2023-03-22 08:21:13', '2023-03-22 08:21:12', '2023-03-22 08:21:13');

DROP TABLE IF EXISTS `config`;
CREATE TABLE IF NOT EXISTS `config` (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
  `name` varchar(100) DEFAULT NULL COMMENT '配置参数名称',
  `value` varchar(100) DEFAULT NULL COMMENT '配置参数值',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb3 COMMENT='配置文件';

DELETE FROM `config`;
INSERT INTO `config` (`id`, `name`, `value`) VALUES
	(1, '轮播图11111', 'upload/config1.jpg'),
	(2, '轮播图2', 'upload/config2.jpg'),
	(3, '轮播图3', 'upload/config3.jpg');

DROP TABLE IF EXISTS `dictionary`;
CREATE TABLE IF NOT EXISTS `dictionary` (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
  `dic_code` varchar(200) DEFAULT NULL COMMENT '字段',
  `dic_name` varchar(200) DEFAULT NULL COMMENT '字段名',
  `code_index` int DEFAULT NULL COMMENT '编码',
  `index_name` varchar(200) DEFAULT NULL COMMENT '编码名字  Search111 ',
  `super_id` int DEFAULT NULL COMMENT '父字段id',
  `beizhu` varchar(200) DEFAULT NULL COMMENT '备注',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=26 DEFAULT CHARSET=utf8mb3 COMMENT='字典';

DELETE FROM `dictionary`;
INSERT INTO `dictionary` (`id`, `dic_code`, `dic_name`, `code_index`, `index_name`, `super_id`, `beizhu`, `create_time`) VALUES
	(1, 'sex_types', '性别类型', 1, '男', NULL, NULL, '2023-03-22 07:22:08'),
	(2, 'sex_types', '性别类型', 2, '女', NULL, NULL, '2023-03-22 07:22:08'),
	(3, 'gonggao_types', '公告类型', 1, '公告类型1', NULL, NULL, '2023-03-22 07:22:08'),
	(4, 'gonggao_types', '公告类型', 2, '公告类型2', NULL, NULL, '2023-03-22 07:22:08'),
	(5, 'tushu_zhuangtai_types', '图书状态', 1, '未被借阅', NULL, NULL, '2023-03-22 07:22:08'),
	(6, 'tushu_zhuangtai_types', '图书状态', 2, '已被借阅', NULL, NULL, '2023-03-22 07:22:08'),
	(7, 'tushu_types', '图书类型', 1, '图书类型1', NULL, NULL, '2023-03-22 07:22:08'),
	(8, 'tushu_types', '图书类型', 2, '图书类型2', NULL, NULL, '2023-03-22 07:22:08'),
	(9, 'tushu_types', '图书类型', 3, '图书类型3', NULL, NULL, '2023-03-22 07:22:08'),
	(10, 'tushu_types', '图书类型', 4, '图书类型4', NULL, NULL, '2023-03-22 07:22:08'),
	(11, 'tushu_collection_types', '收藏表类型', 1, '收藏', NULL, NULL, '2023-03-22 07:22:08'),
	(12, 'tushu_order_types', '订单类型', 101, '已申请借阅', NULL, NULL, '2023-03-22 07:22:08'),
	(13, 'tushu_order_types', '订单类型', 102, '已取消借阅', NULL, NULL, '2023-03-22 07:22:08'),
	(14, 'tushu_order_types', '订单类型', 103, '已借阅', NULL, NULL, '2023-03-22 07:22:08'),
	(15, 'tushu_order_types', '订单类型', 104, '已收货', NULL, NULL, '2023-03-22 07:22:08'),
	(16, 'tushu_order_types', '订单类型', 105, '已评价', NULL, NULL, '2023-03-22 07:22:08'),
	(17, 'tushu_order_types', '订单类型', 106, '拒绝借阅', NULL, NULL, '2023-03-22 07:22:08'),
	(18, 'tushu_order_types', '订单类型', 107, '已归还', NULL, NULL, '2023-03-22 07:22:08'),
	(19, 'tushu_order_yesno_types', '申请状态', 1, '待审核', NULL, NULL, '2023-03-22 07:22:08'),
	(20, 'tushu_order_yesno_types', '申请状态', 2, '同意', NULL, NULL, '2023-03-22 07:22:08'),
	(21, 'tushu_order_yesno_types', '申请状态', 3, '拒绝', NULL, NULL, '2023-03-22 07:22:08'),
	(22, 'isdefault_types', '是否默认地址', 1, '否', NULL, NULL, '2023-03-22 07:22:08'),
	(23, 'isdefault_types', '是否默认地址', 2, '是', NULL, NULL, '2023-03-22 07:22:08'),
	(24, 'tushu_collection_types', '收藏表类型', 2, '赞', NULL, '', '2023-03-22 07:22:08'),
	(25, 'tushu_collection_types', '收藏表类型', 1, '踩', NULL, '', '2023-03-22 07:22:08');

DROP TABLE IF EXISTS `gonggao`;
CREATE TABLE IF NOT EXISTS `gonggao` (
  `id` int NOT NULL AUTO_INCREMENT COMMENT '主键 ',
  `gonggao_name` varchar(200) DEFAULT NULL COMMENT '公告名称 Search111  ',
  `gonggao_photo` varchar(200) DEFAULT NULL COMMENT '公告图片 ',
  `gonggao_types` int NOT NULL COMMENT '公告类型 Search111 ',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '公告发布时间 ',
  `gonggao_content` longtext COMMENT '公告详情 ',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间 show1 show2 nameShow',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8mb3 COMMENT='公告';

DELETE FROM `gonggao`;
INSERT INTO `gonggao` (`id`, `gonggao_name`, `gonggao_photo`, `gonggao_types`, `insert_time`, `gonggao_content`, `create_time`) VALUES
	(1, '公告名称1', 'upload/gonggao1.jpg', 2, '2023-03-22 07:23:10', '公告详情1', '2023-03-22 07:23:10'),
	(2, '公告名称2', 'upload/gonggao2.jpg', 1, '2023-03-22 07:23:10', '公告详情2', '2023-03-22 07:23:10'),
	(3, '公告名称3', 'upload/gonggao3.jpg', 1, '2023-03-22 07:23:10', '公告详情3', '2023-03-22 07:23:10'),
	(4, '公告名称4', 'upload/gonggao4.jpg', 1, '2023-03-22 07:23:10', '公告详情4', '2023-03-22 07:23:10'),
	(5, '公告名称5', 'upload/gonggao5.jpg', 1, '2023-03-22 07:23:10', '公告详情5', '2023-03-22 07:23:10'),
	(6, '公告名称6', 'upload/gonggao6.jpg', 1, '2023-03-22 07:23:10', '公告详情6', '2023-03-22 07:23:10'),
	(7, '公告名称7', 'upload/gonggao7.jpg', 1, '2023-03-22 07:23:10', '公告详情7', '2023-03-22 07:23:10'),
	(8, '公告名称8', 'upload/gonggao8.jpg', 2, '2023-03-22 07:23:10', '公告详情8', '2023-03-22 07:23:10'),
	(9, '公告名称9', 'upload/gonggao9.jpg', 2, '2023-03-22 07:23:10', '公告详情9', '2023-03-22 07:23:10'),
	(10, '公告名称10', 'upload/gonggao10.jpg', 1, '2023-03-22 07:23:10', '公告详情10', '2023-03-22 07:23:10'),
	(11, '公告名称11', 'upload/gonggao11.jpg', 2, '2023-03-22 07:23:10', '公告详情11', '2023-03-22 07:23:10'),
	(12, '公告名称12', 'upload/gonggao12.jpg', 2, '2023-03-22 07:23:10', '公告详情12', '2023-03-22 07:23:10'),
	(13, '公告名称13', 'upload/gonggao13.jpg', 2, '2023-03-22 07:23:10', '公告详情13', '2023-03-22 07:23:10'),
	(14, '公告名称14', 'upload/gonggao14.jpg', 1, '2023-03-22 07:23:10', '公告详情14', '2023-03-22 07:23:10');

DROP TABLE IF EXISTS `liuyan`;
CREATE TABLE IF NOT EXISTS `liuyan` (
  `id` int NOT NULL AUTO_INCREMENT COMMENT '主键 ',
  `yonghu_id` int DEFAULT NULL COMMENT '用户',
  `liuyan_name` varchar(200) DEFAULT NULL COMMENT '留言标题  Search111 ',
  `liuyan_text` longtext COMMENT '留言内容',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '留言时间',
  `reply_text` longtext COMMENT '回复内容',
  `update_time` timestamp NULL DEFAULT NULL COMMENT '回复时间',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间 show2 nameShow',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8mb3 COMMENT='留言板';

DELETE FROM `liuyan`;
INSERT INTO `liuyan` (`id`, `yonghu_id`, `liuyan_name`, `liuyan_text`, `insert_time`, `reply_text`, `update_time`, `create_time`) VALUES
	(1, 3, '留言标题1', '留言内容1', '2023-03-22 07:23:10', '回复信息1', '2023-03-22 07:23:10', '2023-03-22 07:23:10'),
	(2, 1, '留言标题2', '留言内容2', '2023-03-22 07:23:10', '回复信息2', '2023-03-22 07:23:10', '2023-03-22 07:23:10'),
	(3, 3, '留言标题3', '留言内容3', '2023-03-22 07:23:10', '回复信息3', '2023-03-22 07:23:10', '2023-03-22 07:23:10'),
	(4, 3, '留言标题4', '留言内容4', '2023-03-22 07:23:10', '回复信息4', '2023-03-22 07:23:10', '2023-03-22 07:23:10'),
	(5, 2, '留言标题5', '留言内容5', '2023-03-22 07:23:10', '回复信息5', '2023-03-22 07:23:10', '2023-03-22 07:23:10'),
	(6, 3, '留言标题6', '留言内容6', '2023-03-22 07:23:10', '回复信息6', '2023-03-22 07:23:10', '2023-03-22 07:23:10'),
	(7, 3, '留言标题7', '留言内容7', '2023-03-22 07:23:10', '回复信息7', '2023-03-22 07:23:10', '2023-03-22 07:23:10'),
	(8, 2, '留言标题8', '留言内容8', '2023-03-22 07:23:10', '回复信息8', '2023-03-22 07:23:10', '2023-03-22 07:23:10'),
	(9, 2, '留言标题9', '留言内容9', '2023-03-22 07:23:10', '回复信息9', '2023-03-22 07:23:10', '2023-03-22 07:23:10'),
	(10, 1, '留言标题10', '留言内容10', '2023-03-22 07:23:10', '回复信息10', '2023-03-22 07:23:10', '2023-03-22 07:23:10'),
	(11, 3, '留言标题11', '留言内容11', '2023-03-22 07:23:10', '回复信息11', '2023-03-22 07:23:10', '2023-03-22 07:23:10'),
	(12, 3, '留言标题12', '留言内容12', '2023-03-22 07:23:10', '回复信息12', '2023-03-22 07:23:10', '2023-03-22 07:23:10'),
	(13, 3, '留言标题13', '留言内容13', '2023-03-22 07:23:10', '回复信息13', '2023-03-22 07:23:10', '2023-03-22 07:23:10'),
	(14, 3, '留言标题14', '留言内容14', '2023-03-22 07:23:10', '回复信息14', '2023-03-22 07:23:10', '2023-03-22 07:23:10'),
	(15, 4, '标题111', '4132153.1', '2023-03-22 08:16:23', '好几家', '2023-03-22 08:26:42', '2023-03-22 08:16:23'),
	(16, 1, '11', '44455', '2024-08-12 05:48:40', NULL, NULL, '2024-08-12 05:48:40');

DROP TABLE IF EXISTS `token`;
CREATE TABLE IF NOT EXISTS `token` (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
  `userid` bigint NOT NULL COMMENT '老师id',
  `username` varchar(100) NOT NULL COMMENT '老师名',
  `tablename` varchar(100) DEFAULT NULL COMMENT '表名',
  `role` varchar(100) DEFAULT NULL COMMENT '角色',
  `token` varchar(200) NOT NULL COMMENT '密码',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '新增时间',
  `expiratedtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '过期时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb3 COMMENT='token表';

DELETE FROM `token`;
INSERT INTO `token` (`id`, `userid`, `username`, `tablename`, `role`, `token`, `addtime`, `expiratedtime`) VALUES
	(1, 1, 'a1', 'yonghu', '用户', 'wvctcjeuvp72crrghe8q5tkujt5wcpyh', '2023-03-22 07:33:12', '2024-08-12 06:48:21'),
	(2, 2, 'a2', 'yonghu', '用户', 'lsp11i3yjxmufifabp2cymppfgm9t5hu', '2023-03-22 07:58:26', '2023-03-22 09:23:01'),
	(3, 4, 'a5', 'yonghu', '用户', '9ee8mo4g6ww2notjtextirpkjzn3dmvf', '2023-03-22 08:16:02', '2023-03-22 09:22:47'),
	(4, 1, 'admin', 'users', '管理员', 'iw3pwfh7mq0g3wftes69yxx4tdn95w93', '2023-03-22 08:24:34', '2024-08-12 06:47:19');

DROP TABLE IF EXISTS `tushu`;
CREATE TABLE IF NOT EXISTS `tushu` (
  `id` int NOT NULL AUTO_INCREMENT COMMENT '主键 ',
  `yonghu_id` int DEFAULT NULL COMMENT '用户',
  `tushu_name` varchar(200) DEFAULT NULL COMMENT '图书名称  Search111 ',
  `tushu_chubanshe` varchar(200) DEFAULT NULL COMMENT '出版社  Search111 ',
  `tushu_uuid_number` varchar(200) DEFAULT NULL COMMENT '图书编号',
  `tushu_photo` varchar(200) DEFAULT NULL COMMENT '图书照片',
  `tushu_address` varchar(200) DEFAULT NULL COMMENT '现在位置',
  `zan_number` int DEFAULT NULL COMMENT '赞',
  `cai_number` int DEFAULT NULL COMMENT '踩',
  `tushu_types` int DEFAULT NULL COMMENT '图书类型 Search111',
  `tushu_clicknum` int DEFAULT NULL COMMENT '图书热度',
  `tushu_content` longtext COMMENT '图书介绍 ',
  `tushu_zhuangtai_types` int DEFAULT NULL COMMENT '图书状态  Search111 ',
  `tushu_delete` int DEFAULT NULL COMMENT '逻辑删除',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '录入时间',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间  show1 show2 photoShow',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8mb3 COMMENT='图书';

DELETE FROM `tushu`;
INSERT INTO `tushu` (`id`, `yonghu_id`, `tushu_name`, `tushu_chubanshe`, `tushu_uuid_number`, `tushu_photo`, `tushu_address`, `zan_number`, `cai_number`, `tushu_types`, `tushu_clicknum`, `tushu_content`, `tushu_zhuangtai_types`, `tushu_delete`, `insert_time`, `create_time`) VALUES
	(1, 1, '图书名称1', '出版社1', '1679469790091', 'upload/tushu1.jpg', '现在位置1', 17, 227, 3, 229, '图书介绍1', 1, 1, '2023-03-22 07:23:10', '2023-03-22 07:23:10'),
	(2, 3, '图书名称2', '出版社2', '1679469790063', 'upload/tushu2.jpg', '现在位置2', 383, 336, 1, 217, '图书介绍2', 1, 1, '2023-03-22 07:23:10', '2023-03-22 07:23:10'),
	(3, 1, '图书名称3', '出版社3', '1679469790077', 'upload/tushu3.jpg', '现在位置3', 384, 283, 1, 85, '图书介绍3', 1, 1, '2023-03-22 07:23:10', '2023-03-22 07:23:10'),
	(4, 3, '图书名称4', '出版社4', '1679469790034', 'upload/tushu4.jpg', '现在位置4', 254, 338, 2, 297, '图书介绍4', 1, 1, '2023-03-22 07:23:10', '2023-03-22 07:23:10'),
	(5, 3, '图书名称5', '出版社5', '1679469790079', 'upload/tushu5.jpg', '现在位置5', 274, 392, 2, 248, '图书介绍5', 2, 1, '2023-03-22 07:23:10', '2023-03-22 07:23:10'),
	(6, 1, '图书名称6', '出版社6', '1679469790055', 'upload/tushu6.jpg', '现在位置6', 35, 424, 3, 88, '图书介绍6', 1, 1, '2023-03-22 07:23:10', '2023-03-22 07:23:10'),
	(7, 2, '图书名称7', '出版社7', '1679469790063', 'upload/tushu7.jpg', '现在位置7', 28, 366, 3, 396, '图书介绍7', 1, 1, '2023-03-22 07:23:10', '2023-03-22 07:23:10'),
	(8, 2, '图书名称8', '出版社8', '1679469790071', 'upload/tushu8.jpg', '现在位置8', 394, 183, 4, 321, '图书介绍8', 1, 1, '2023-03-22 07:23:10', '2023-03-22 07:23:10'),
	(9, 2, '图书名称9', '出版社9', '1679469790033', 'upload/tushu9.jpg', '现在位置9', 214, 200, 2, 319, '图书介绍9', 2, 1, '2023-03-22 07:23:10', '2023-03-22 07:23:10'),
	(10, 3, '图书名称10', '出版社10', '1679469790116', 'upload/tushu10.jpg', '现在位置10', 419, 370, 4, 266, '图书介绍10', 2, 1, '2023-03-22 07:23:10', '2023-03-22 07:23:10'),
	(11, 1, '图书名称11', '出版社11', '1679469790104', 'upload/tushu11.jpg', '现在位置11', 412, 192, 3, 451, '图书介绍11', 1, 1, '2023-03-22 07:23:10', '2023-03-22 07:23:10'),
	(12, 1, '图书名称12', '出版社12', '1679469790027', 'upload/tushu12.jpg', '现在位置12', 322, 427, 4, 101, '图书介绍12', 2, 1, '2023-03-22 07:23:10', '2023-03-22 07:23:10'),
	(13, 1, '图书名称13', '出版社13', '1679469790041', 'upload/tushu13.jpg', '现在位置13', 283, 58, 3, 277, '图书介绍13', 2, 1, '2023-03-22 07:23:10', '2023-03-22 07:23:10'),
	(14, 2, '图书名称14', '出版社14', '1679469790052', 'upload/tushu14.jpg', '现在位置14', 493, 159, 2, 274, '图书介绍14', 1, 1, '2023-03-22 07:23:10', '2023-03-22 07:23:10');

DROP TABLE IF EXISTS `tushu_collection`;
CREATE TABLE IF NOT EXISTS `tushu_collection` (
  `id` int NOT NULL AUTO_INCREMENT COMMENT '主键',
  `tushu_id` int DEFAULT NULL COMMENT '图书',
  `yonghu_id` int DEFAULT NULL COMMENT '用户',
  `tushu_collection_types` int DEFAULT NULL COMMENT '类型',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '收藏时间',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间 show3 photoShow',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8mb3 COMMENT='图书收藏';

DELETE FROM `tushu_collection`;
INSERT INTO `tushu_collection` (`id`, `tushu_id`, `yonghu_id`, `tushu_collection_types`, `insert_time`, `create_time`) VALUES
	(1, 1, 1, 1, '2023-03-22 07:23:10', '2023-03-22 07:23:10'),
	(2, 2, 3, 1, '2023-03-22 07:23:10', '2023-03-22 07:23:10'),
	(3, 3, 3, 1, '2023-03-22 07:23:10', '2023-03-22 07:23:10'),
	(4, 4, 1, 1, '2023-03-22 07:23:10', '2023-03-22 07:23:10'),
	(5, 5, 2, 1, '2023-03-22 07:23:10', '2023-03-22 07:23:10'),
	(6, 6, 3, 1, '2023-03-22 07:23:10', '2023-03-22 07:23:10'),
	(7, 7, 3, 1, '2023-03-22 07:23:10', '2023-03-22 07:23:10'),
	(8, 8, 3, 1, '2023-03-22 07:23:10', '2023-03-22 07:23:10'),
	(9, 9, 2, 1, '2023-03-22 07:23:10', '2023-03-22 07:23:10'),
	(10, 10, 1, 1, '2023-03-22 07:23:10', '2023-03-22 07:23:10'),
	(11, 11, 1, 1, '2023-03-22 07:23:10', '2023-03-22 07:23:10'),
	(12, 12, 2, 1, '2023-03-22 07:23:10', '2023-03-22 07:23:10'),
	(13, 13, 1, 1, '2023-03-22 07:23:10', '2023-03-22 07:23:10'),
	(14, 14, 2, 1, '2023-03-22 07:23:10', '2023-03-22 07:23:10');

DROP TABLE IF EXISTS `tushu_commentback`;
CREATE TABLE IF NOT EXISTS `tushu_commentback` (
  `id` int NOT NULL AUTO_INCREMENT COMMENT '主键',
  `tushu_id` int DEFAULT NULL COMMENT '图书',
  `yonghu_id` int DEFAULT NULL COMMENT '用户',
  `tushu_commentback_text` longtext COMMENT '评价内容',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '评价时间',
  `reply_text` longtext COMMENT '回复内容',
  `update_time` timestamp NULL DEFAULT NULL COMMENT '回复时间',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8mb3 COMMENT='图书评价';

DELETE FROM `tushu_commentback`;
INSERT INTO `tushu_commentback` (`id`, `tushu_id`, `yonghu_id`, `tushu_commentback_text`, `insert_time`, `reply_text`, `update_time`, `create_time`) VALUES
	(1, 1, 3, '评价内容1', '2023-03-22 07:23:10', '回复信息1', '2023-03-22 07:23:10', '2023-03-22 07:23:10'),
	(2, 2, 3, '评价内容2', '2023-03-22 07:23:10', '回复信息2', '2023-03-22 07:23:10', '2023-03-22 07:23:10'),
	(3, 3, 1, '评价内容3', '2023-03-22 07:23:10', '回复信息3', '2023-03-22 07:23:10', '2023-03-22 07:23:10'),
	(4, 4, 1, '评价内容4', '2023-03-22 07:23:10', '回复信息4', '2023-03-22 07:23:10', '2023-03-22 07:23:10'),
	(5, 5, 2, '评价内容5', '2023-03-22 07:23:10', '回复信息5', '2023-03-22 07:23:10', '2023-03-22 07:23:10'),
	(6, 6, 3, '评价内容6', '2023-03-22 07:23:10', '回复信息6', '2023-03-22 07:23:10', '2023-03-22 07:23:10'),
	(7, 7, 2, '评价内容7', '2023-03-22 07:23:10', '回复信息7', '2023-03-22 07:23:10', '2023-03-22 07:23:10'),
	(8, 8, 3, '评价内容8', '2023-03-22 07:23:10', '回复信息8', '2023-03-22 07:23:10', '2023-03-22 07:23:10'),
	(9, 9, 1, '评价内容9', '2023-03-22 07:23:10', '回复信息9', '2023-03-22 07:23:10', '2023-03-22 07:23:10'),
	(10, 10, 2, '评价内容10', '2023-03-22 07:23:10', '回复信息10', '2023-03-22 07:23:10', '2023-03-22 07:23:10'),
	(11, 11, 2, '评价内容11', '2023-03-22 07:23:10', '回复信息11', '2023-03-22 07:23:10', '2023-03-22 07:23:10'),
	(12, 12, 2, '评价内容12', '2023-03-22 07:23:10', '回复信息12', '2023-03-22 07:23:10', '2023-03-22 07:23:10'),
	(13, 13, 2, '评价内容13', '2023-03-22 07:23:10', '回复信息13', '2023-03-22 07:23:10', '2023-03-22 07:23:10'),
	(14, 14, 3, '评价内容14', '2023-03-22 07:23:10', '回复信息14', '2023-03-22 07:23:10', '2023-03-22 07:23:10'),
	(15, 7, 1, '很好的图书', '2023-03-22 08:07:30', NULL, NULL, '2023-03-22 08:07:30'),
	(16, 7, 4, '富士达广东省归属感是的', '2023-03-22 08:22:39', '加快看看扩扩扩', '2023-03-22 08:23:43', '2023-03-22 08:22:39');

DROP TABLE IF EXISTS `tushu_order`;
CREATE TABLE IF NOT EXISTS `tushu_order` (
  `id` int NOT NULL AUTO_INCREMENT COMMENT '主键',
  `tushu_order_uuid_number` varchar(200) DEFAULT NULL COMMENT '订单编号 Search111 ',
  `address_id` int DEFAULT NULL COMMENT '收货地址 ',
  `tushu_id` int DEFAULT NULL COMMENT '图书',
  `yonghu_id` int DEFAULT NULL COMMENT '用户',
  `tushu_order_time` timestamp NULL DEFAULT NULL COMMENT '预计归还时间',
  `tushu_order_courier_name` varchar(200) DEFAULT NULL COMMENT '快递公司',
  `tushu_order_courier_number` varchar(200) DEFAULT NULL COMMENT '快递单号',
  `tushu_order_types` int DEFAULT NULL COMMENT '订单类型 Search111 ',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '申请借阅时间',
  `tushu_order_yesno_types` int DEFAULT NULL COMMENT '审核状态 Search111',
  `tushu_order_yesno_text` longtext COMMENT '回复',
  `tushu_order_shenhe_time` timestamp NULL DEFAULT NULL COMMENT '审核时间',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间 show3 listShow',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb3 COMMENT='图书订单';

DELETE FROM `tushu_order`;
INSERT INTO `tushu_order` (`id`, `tushu_order_uuid_number`, `address_id`, `tushu_id`, `yonghu_id`, `tushu_order_time`, `tushu_order_courier_name`, `tushu_order_courier_number`, `tushu_order_types`, `insert_time`, `tushu_order_yesno_types`, `tushu_order_yesno_text`, `tushu_order_shenhe_time`, `create_time`) VALUES
	(1, '1679470834514', 1, 7, 1, '2023-03-23 07:40:27', '顺丰', '25341651541', 107, '2023-03-22 07:40:35', 2, '广东佛山', '2023-03-22 08:06:18', '2023-03-22 07:40:35'),
	(3, '1679473287784', 15, 7, 4, '2023-03-31 08:21:21', '顺丰', '1253415341', 107, '2023-03-22 08:21:28', 2, '可以', '2023-03-22 08:22:13', '2023-03-22 08:21:28'),
	(4, '1723441733765', 8, 7, 1, '2024-08-12 05:48:50', NULL, NULL, 101, '2024-08-12 05:48:54', 1, NULL, NULL, '2024-08-12 05:48:54');

DROP TABLE IF EXISTS `users`;
CREATE TABLE IF NOT EXISTS `users` (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
  `username` varchar(100) NOT NULL COMMENT '老师名',
  `password` varchar(100) NOT NULL COMMENT '密码',
  `role` varchar(100) DEFAULT '管理员' COMMENT '角色',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '新增时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb3 COMMENT='管理员';

DELETE FROM `users`;
INSERT INTO `users` (`id`, `username`, `password`, `role`, `addtime`) VALUES
	(1, 'admin', '123456', '管理员', '2023-03-22 07:22:08');

DROP TABLE IF EXISTS `yonghu`;
CREATE TABLE IF NOT EXISTS `yonghu` (
  `id` int NOT NULL AUTO_INCREMENT COMMENT '主键',
  `username` varchar(200) DEFAULT NULL COMMENT '账户',
  `password` varchar(200) DEFAULT NULL COMMENT '密码',
  `yonghu_name` varchar(200) DEFAULT NULL COMMENT '用户姓名 Search111 ',
  `yonghu_phone` varchar(200) DEFAULT NULL COMMENT '用户手机号',
  `yonghu_id_number` varchar(200) DEFAULT NULL COMMENT '用户身份证号',
  `yonghu_photo` varchar(200) DEFAULT NULL COMMENT '用户头像',
  `sex_types` int DEFAULT NULL COMMENT '性别',
  `yonghu_email` varchar(200) DEFAULT NULL COMMENT '用户邮箱',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb3 COMMENT='用户';

DELETE FROM `yonghu`;
INSERT INTO `yonghu` (`id`, `username`, `password`, `yonghu_name`, `yonghu_phone`, `yonghu_id_number`, `yonghu_photo`, `sex_types`, `yonghu_email`, `create_time`) VALUES
	(1, '用户1', '123456', '用户姓名1', '17703786901', '410224199010102001', 'upload/yonghu1.jpg', 2, '1@qq.com', '2023-03-22 07:23:10'),
	(2, '用户2', '123456', '用户姓名2', '17703786902', '410224199010102002', 'upload/yonghu2.jpg', 1, '2@qq.com', '2023-03-22 07:23:10'),
	(3, '用户3', '123456', '用户姓名3', '17703786903', '410224199010102003', 'upload/yonghu3.jpg', 1, '3@qq.com', '2023-03-22 07:23:10'),
	(4, '用户4', '123456', '张5', '17788899999', '444555444477778888', 'upload/1679473256787.jpg', 2, '5@qq.com', '2023-03-22 08:15:56');

/*!40103 SET TIME_ZONE=IFNULL(@OLD_TIME_ZONE, 'system') */;
/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IFNULL(@OLD_FOREIGN_KEY_CHECKS, 1) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40111 SET SQL_NOTES=IFNULL(@OLD_SQL_NOTES, 1) */;
