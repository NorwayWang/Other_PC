CREATE DATABASE cims_sql  DEFAULT CHARACTER SET utf8;
use cims_sql;
-- ----------------------------
-- Table structure for tb_user
-- ----------------------------
DROP TABLE IF EXISTS `tb_user`;
CREATE TABLE `tb_user` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `userName` varchar(45) NOT NULL COMMENT '用户名',
  `password` varchar(45) NOT NULL COMMENT '密码',
  `realName` varchar(45) DEFAULT NULL COMMENT '真实姓名',
  `business` varchar(45) DEFAULT NULL COMMENT '职业',
  `email` varchar(45) DEFAULT NULL COMMENT '注册邮箱',
  `headPicture` varchar(45) DEFAULT NULL COMMENT '用户头像',
  `addDate` date DEFAULT NULL COMMENT '用户注册时间',
  `updateDate` date DEFAULT NULL COMMENT '用户信息更新时间',
  `state` int(11) DEFAULT '0' COMMENT '1：正常\n2：冻结\n3：删除',
  PRIMARY KEY (`id`),
  UNIQUE KEY `name_UNIQUE` (`userName`)
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=utf8 COMMENT='用户信息表';

-- ----------------------------
-- Records of tb_user
-- ----------------------------
INSERT INTO `tb_user` VALUES ('6', 'admin', 'admin', '小花', '运营岗', '1818181818', null, '2018-03-19', '2018-03-19', '1');
INSERT INTO `tb_user` VALUES ('7', 'jesper', 'jesper', '111111aaa', '111', '1773232392@qq.com', null, '2018-03-30', '2018-04-04', '1');
