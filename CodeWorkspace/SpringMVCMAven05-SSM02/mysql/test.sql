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
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=utf8 COMMENT='用户信息表';

-- ----------------------------
-- Records of tb_user
-- ----------------------------
INSERT INTO `tb_user` VALUES ('1', 'admin', 'admin', '小花', '运营岗', 'wml55@qq.com', null, now(), now(), '1');
INSERT INTO `tb_user` VALUES ('2', 'jesper', 'jesper', '小飞', '建设岗', '17732392@qq.com', null, '2018-03-30', '2018-04-04', '1');
INSERT INTO `tb_user` VALUES ('3', 'super', 'super', '小王', '开发岗', '18181@qq.com', null, '2018-02-19', '2018-02-19', '1');
INSERT INTO `tb_user` VALUES ('4', 'tom', 'tom', '小二', '拆迁岗', '13232392@qq.com', null, '2018-02-16', '2018-03-01', '1');
INSERT INTO `tb_user` VALUES ('5', 'jack', 'jack', '小李', '运营岗', '1818818@139.com', null, '2018-05-19', '2018-05-19', '1');
INSERT INTO `tb_user` VALUES ('6', 'marry', 'marry', '小易', '赔偿岗', '177ww2@qq.com', null, '2018-06-30', '2018-06-04', '1');
INSERT INTO `tb_user` VALUES ('7', 'kong', 'kong', '小张', '工程岗', '181rr1818@qq.com', null, '2018-07-19', '2018-07-19', '1');
INSERT INTO `tb_user` VALUES ('8', 'jes5r', 'jes5r', '小朱', '老司机', '17ww2392@qq.com', null, '2018-03-25', '2018-04-25', '1');
INSERT INTO `tb_user` VALUES ('9', 'admin01', 'admin01', '小柳', '电焊工', '181818@163.com', null, '2018-03-10', '2018-03-12', '1');
INSERT INTO `tb_user` VALUES ('10', 'jesper01', 'jack01', '小小', '搬运工', '177ee392@qq.com', null, '2018-03-04', '2018-04-13', '1');
INSERT INTO `tb_user` VALUES ('11', 'huahua', 'huahua', '小刘', '自卫队', '1818yy@qq.com', null, '2018-03-19', '2018-08-19', '1');
INSERT INTO `tb_user` VALUES ('12', 'liuliu', 'liuliu', '小村', '建设岗', '17744492@qq.com', null, '2018-03-30', '2018-04-04', '1');
INSERT INTO `tb_user` VALUES ('13', 'gugu', 'gugu', '小郭', '运营岗', '18156818@qq.com', null, '2018-03-19', '2018-03-19', '1');
INSERT INTO `tb_user` VALUES ('14', 'yeye', 'yeye', '小叶', '财务岗', '17892392@qq.com', null, '2018-03-30', '2018-04-04', '1');
INSERT INTO `tb_user` VALUES ('15', 'tt02', 'tt02', '小田', '公关组', '18we818@139.com', null, '2018-03-19', '2018-03-19', '1');
INSERT INTO `tb_user` VALUES ('16', 'jesp23', 'jesp23', '小野', '保姆岗', '177334532@qq.com', null, '2018-03-05', '2018-04-04', '1');
INSERT INTO `tb_user` VALUES ('17', 'lulu', 'lulu', '小陆', '呼应刚', '18ydc8@169.com', null, '2018-03-19', '2018-03-19', '1');
INSERT INTO `tb_user` VALUES ('18', 'marry01', 'marry01', '花花', '逗比岗', '1773efx92@qq.com', null, '2018-03-23', '2018-04-04', '1');
