-- TuanPhp SQL Dump Program
-- 
-- DATE : 2015-05-06 23:52:15
-- Vol : 1
DROP TABLE IF EXISTS `ftxia_robots`;
CREATE TABLE `ftxia_robots` (
  `id` int(11) NOT NULL auto_increment,
  `name` varchar(200) NOT NULL,
  `keyword` varchar(200) default NULL,
  `cid` int(11) NOT NULL default '16',
  `cate_id` int(11) default '0' COMMENT '所属分类',
  `shop_type` varchar(50) NOT NULL default 'all',
  `start_coupon_rate` int(11) NOT NULL default '100',
  `end_coupon_rate` int(11) NOT NULL default '10000',
  `start_commissionRate` int(11) NOT NULL default '1000',
  `end_commissionRate` int(11) NOT NULL default '9000',
  `start_credit` varchar(50) NOT NULL default '1heart',
  `end_credit` varchar(50) NOT NULL default '5goldencrown',
  `start_price` decimal(8,2) default '0.00',
  `end_price` decimal(8,2) default '999.00',
  `start_volume` int(11) NOT NULL default '0',
  `end_volume` int(11) NOT NULL default '999999',
  `ems` int(11) default '0' COMMENT '采集包邮',
  `recid` int(11) default '1' COMMENT '是否更新分类',
  `page` int(11) NOT NULL default '100' COMMENT '采集页数',
  `ordid` tinyint(3) unsigned NOT NULL default '255',
  `status` int(11) default '1',
  `sort` varchar(50) NOT NULL default 'volume|desc',
  `last_page` int(11) default '0' COMMENT '上次采集页数',
  `last_time` int(11) default NULL,
  `http_mode` int(11) default '0' COMMENT '采集模式',
  `tb_cid` int(11) default NULL COMMENT '淘宝网分类ID',
  PRIMARY KEY  (`id`)
) COLLATE='utf8_general_ci' ENGINE=MyISAM;
INSERT INTO ftxia_robots ( `id`, `name`, `keyword`, `cid`, `cate_id`, `shop_type`, `start_coupon_rate`, `end_coupon_rate`, `start_commissionRate`, `end_commissionRate`, `start_credit`, `end_credit`, `start_price`, `end_price`, `start_volume`, `end_volume`, `ems`, `recid`, `page`, `ordid`, `status`, `sort`, `last_page`, `last_time`, `http_mode`, `tb_cid` ) VALUES  ('1','女装','女装','0','1','all','100','10000','100','9900','1heart','5goldencrown','0.00','99999.00','0','999999','0','0','100','255','1','tk_rate','19','1430922767','0','');
