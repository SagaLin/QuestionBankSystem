DROP TABLE IF EXISTS question_bank;
CREATE TABLE question_bank (
question_id int(11) NOT NULL AUTO_INCREMENT COMMENT '问题id',
sort int(11) NOT NULL COMMENT '序号',
level int(11) NOT NULL COMMENT '级别',
quetestion_type int(11) DEFAULT NULL COMMENT '题目类型：0 单选题，1 多选题 , 2 简答题',
content mediumtext COMMENT '问题内容',
pic VARCHAR(100) DEFAULT NULL COMMENT '问题图片',
stanard_answer mediumtext COMMENT '标准答案',
score int(11) COMMENT '分数',
category_code varchar(100) DEFAULT NULL COMMENT '分类',
create_time datetime DEFAULT NULL COMMENT '创建时间',
create_by datetime DEFAULT NULL COMMENT '创建人',
update_time datetime DEFAULT NULL COMMENT '修改时间',
update_by datetime DEFAULT NULL COMMENT '修改人',
del_flag int(1) DEFAULT NULL COMMENT '删除标志',
remark varchar(100) DEFAULT NULL COMMENT '备注',
PRIMARY KEY (question_id)
) ENGINE=InnoDB AUTO_INCREMENT=121 DEFAULT CHARSET=utf8 COMMENT='问题信息详情';

DROP TABLE IF EXISTS options;
CREATE TABLE options (
options_id int(11) NOT NULL AUTO_INCREMENT COMMENT '选项id',
sort int(11) NOT NULL COMMENT '序号',
question_id int(11) DEFAULT NULL COMMENT '问题id',
content mediumtext COMMENT '选项内容',
pic VARCHAR(100) DEFAULT NULL COMMENT '选项图片',
is_correct int(1) DEFAULT 0 COMMENT '是否是正确答案',
create_time datetime DEFAULT NULL COMMENT '创建时间',
create_by datetime DEFAULT NULL COMMENT '创建人',
update_time datetime DEFAULT NULL COMMENT '修改时间',
update_by datetime DEFAULT NULL COMMENT '修改人',
del_flag int(1) DEFAULT NULL COMMENT '删除标志',
remark varchar(100) DEFAULT NULL COMMENT '备注',
PRIMARY KEY (question_id)
) ENGINE=InnoDB AUTO_INCREMENT=121 DEFAULT CHARSET=utf8 COMMENT='选择题选项信息详情';
