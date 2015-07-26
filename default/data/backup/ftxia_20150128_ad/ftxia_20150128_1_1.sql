-- TuanPhp SQL Dump Program
-- 
-- DATE : 2015-01-28 21:16:24
-- Vol : 1
DROP TABLE IF EXISTS `ftxia_ad`;
CREATE TABLE `ftxia_ad` (
  `id` int(5) NOT NULL AUTO_INCREMENT,
  `board_id` int(5) NOT NULL,
  `type` varchar(20) NOT NULL,
  `name` varchar(50) NOT NULL,
  `url` text NOT NULL,
  `content` text NOT NULL,
  `extimg` varchar(255) NOT NULL,
  `extval` varchar(200) NOT NULL,
  `desc` varchar(255) NOT NULL,
  `start_time` int(10) NOT NULL,
  `end_time` int(10) NOT NULL,
  `clicks` int(10) NOT NULL DEFAULT '0',
  `add_time` int(10) NOT NULL DEFAULT '0',
  `ordid` tinyint(3) unsigned NOT NULL DEFAULT '255',
  `status` tinyint(1) NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`)
) COLLATE='utf8_general_ci' ENGINE=MyISAM;
INSERT INTO ftxia_ad ( `id`, `board_id`, `type`, `name`, `url`, `content`, `extimg`, `extval`, `desc`, `start_time`, `end_time`, `clicks`, `add_time`, `ordid`, `status` ) VALUES  ('1','1','image','轮播一','#','1412/28/549f8ffabdbf6.jpg','','','','1419696000','1482854400','0','0','255','1');
INSERT INTO ftxia_ad ( `id`, `board_id`, `type`, `name`, `url`, `content`, `extimg`, `extval`, `desc`, `start_time`, `end_time`, `clicks`, `add_time`, `ordid`, `status` ) VALUES  ('2','1','image','轮播二','#','1412/28/549f9053e36f8.jpg','','','','1419696000','1514390400','0','0','255','1');
INSERT INTO ftxia_ad ( `id`, `board_id`, `type`, `name`, `url`, `content`, `extimg`, `extval`, `desc`, `start_time`, `end_time`, `clicks`, `add_time`, `ordid`, `status` ) VALUES  ('3','1','image','轮播三','#','1412/28/549f916f414e5.jpg','','','','1419696000','1424966400','0','0','255','1');
INSERT INTO ftxia_ad ( `id`, `board_id`, `type`, `name`, `url`, `content`, `extimg`, `extval`, `desc`, `start_time`, `end_time`, `clicks`, `add_time`, `ordid`, `status` ) VALUES  ('4','1','image','轮播四','#','1412/28/549f9185af80f.jpg','','','','1419696000','1482854400','0','0','255','1');
INSERT INTO ftxia_ad ( `id`, `board_id`, `type`, `name`, `url`, `content`, `extimg`, `extval`, `desc`, `start_time`, `end_time`, `clicks`, `add_time`, `ordid`, `status` ) VALUES  ('5','2','image','左9.9包邮','#','1501/28/54c8df45c6d38.png','','','','1419696000','1514390400','0','0','255','1');
INSERT INTO ftxia_ad ( `id`, `board_id`, `type`, `name`, `url`, `content`, `extimg`, `extval`, `desc`, `start_time`, `end_time`, `clicks`, `add_time`, `ordid`, `status` ) VALUES  ('7','3','image','右一','#','1412/28/549f927773c84.jpg','','','','1419696000','1514390400','0','0','255','1');
INSERT INTO ftxia_ad ( `id`, `board_id`, `type`, `name`, `url`, `content`, `extimg`, `extval`, `desc`, `start_time`, `end_time`, `clicks`, `add_time`, `ordid`, `status` ) VALUES  ('8','3','image','右二','#','1412/28/549f9289deb32.jpg','','','','1419696000','1514390400','0','0','255','1');
INSERT INTO ftxia_ad ( `id`, `board_id`, `type`, `name`, `url`, `content`, `extimg`, `extval`, `desc`, `start_time`, `end_time`, `clicks`, `add_time`, `ordid`, `status` ) VALUES  ('9','3','image','右三','#','1412/28/549f929a550f2.jpg','','','','1419696000','1514390400','0','0','255','1');
INSERT INTO ftxia_ad ( `id`, `board_id`, `type`, `name`, `url`, `content`, `extimg`, `extval`, `desc`, `start_time`, `end_time`, `clicks`, `add_time`, `ordid`, `status` ) VALUES  ('10','3','image','右四','#','1412/28/549f92b11aa33.jpg','','','','1419696000','1545926400','0','0','255','1');
INSERT INTO ftxia_ad ( `id`, `board_id`, `type`, `name`, `url`, `content`, `extimg`, `extval`, `desc`, `start_time`, `end_time`, `clicks`, `add_time`, `ordid`, `status` ) VALUES  ('11','4','image','登陆页广告图片','#','1412/29/54a155530607f.png','','','','1419782400','1514476800','0','0','255','1');
INSERT INTO ftxia_ad ( `id`, `board_id`, `type`, `name`, `url`, `content`, `extimg`, `extval`, `desc`, `start_time`, `end_time`, `clicks`, `add_time`, `ordid`, `status` ) VALUES  ('12','5','image','注册页广告','#','1412/29/54a15579ee88f.png','','','','1419782400','1514476800','0','0','255','1');
INSERT INTO ftxia_ad ( `id`, `board_id`, `type`, `name`, `url`, `content`, `extimg`, `extval`, `desc`, `start_time`, `end_time`, `clicks`, `add_time`, `ordid`, `status` ) VALUES  ('13','6','image','搭配频道左图','#','1412/30/54a18b7054891.png','','','','1419868800','1514563200','0','0','255','1');
INSERT INTO ftxia_ad ( `id`, `board_id`, `type`, `name`, `url`, `content`, `extimg`, `extval`, `desc`, `start_time`, `end_time`, `clicks`, `add_time`, `ordid`, `status` ) VALUES  ('14','7','image','搭配频道右图','','1412/30/54a18b86a7c78.png','','','','1419868800','1514476800','0','0','255','1');
INSERT INTO ftxia_ad ( `id`, `board_id`, `type`, `name`, `url`, `content`, `extimg`, `extval`, `desc`, `start_time`, `end_time`, `clicks`, `add_time`, `ordid`, `status` ) VALUES  ('15','1','image','轮播五','#','1501/28/54c8dcad4fc2d.jpg','','','','1422374400','1485532800','0','0','255','1');
INSERT INTO ftxia_ad ( `id`, `board_id`, `type`, `name`, `url`, `content`, `extimg`, `extval`, `desc`, `start_time`, `end_time`, `clicks`, `add_time`, `ordid`, `status` ) VALUES  ('16','1','image','轮播六','#','1501/28/54c8dcc5b0e09.png','','','','1422374400','1485532800','0','0','255','1');
INSERT INTO ftxia_ad ( `id`, `board_id`, `type`, `name`, `url`, `content`, `extimg`, `extval`, `desc`, `start_time`, `end_time`, `clicks`, `add_time`, `ordid`, `status` ) VALUES  ('17','1','image','轮播七','#','1501/28/54c8dcdad79b7.png','','','','1422374400','1485532800','0','0','255','1');
INSERT INTO ftxia_ad ( `id`, `board_id`, `type`, `name`, `url`, `content`, `extimg`, `extval`, `desc`, `start_time`, `end_time`, `clicks`, `add_time`, `ordid`, `status` ) VALUES  ('18','8','image','左品牌折扣','#','1501/28/54c8df1168121.png','','','','1422374400','1517068800','0','0','255','1');
DROP TABLE IF EXISTS `ftxia_adboard`;
CREATE TABLE `ftxia_adboard` (
  `id` smallint(5) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL,
  `tpl` varchar(20) NOT NULL,
  `width` smallint(5) NOT NULL,
  `height` smallint(5) NOT NULL,
  `description` varchar(255) NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) COLLATE='utf8_general_ci' ENGINE=MyISAM;
INSERT INTO ftxia_adboard ( `id`, `name`, `tpl`, `width`, `height`, `description`, `status` ) VALUES  ('1','首页中间大屏轮播','bigimg','300','300','','1');
INSERT INTO ftxia_adboard ( `id`, `name`, `tpl`, `width`, `height`, `description`, `status` ) VALUES  ('2','轮播左则9.9','left','300','300','','1');
INSERT INTO ftxia_adboard ( `id`, `name`, `tpl`, `width`, `height`, `description`, `status` ) VALUES  ('3','轮播右则','right','300','300','','1');
INSERT INTO ftxia_adboard ( `id`, `name`, `tpl`, `width`, `height`, `description`, `status` ) VALUES  ('4','登陆页广告位','login','350','250','','1');
INSERT INTO ftxia_adboard ( `id`, `name`, `tpl`, `width`, `height`, `description`, `status` ) VALUES  ('5','注册页广告位','zhuce','290','290','','1');
INSERT INTO ftxia_adboard ( `id`, `name`, `tpl`, `width`, `height`, `description`, `status` ) VALUES  ('6','搭配频道左图','dapei-left','840','260','','1');
INSERT INTO ftxia_adboard ( `id`, `name`, `tpl`, `width`, `height`, `description`, `status` ) VALUES  ('7','搭配频道右图','dapei-right','350','280','','1');
INSERT INTO ftxia_adboard ( `id`, `name`, `tpl`, `width`, `height`, `description`, `status` ) VALUES  ('8','轮播左则品牌折扣','left','300','300','','1');
