--创建预约表
--创建顾客表
--创建理发师表
--创建店家表
--创建服务表
CREATE TABLE 'service' (
	'service_id' bigint(20) NOT NULL AUTO_INCREMENT COMMENT '服务ID',
	'name' varchar(100) NOT NULL COMMENT '服务名称',
	'price' int(10) NOT NULL COMMENT '服务价格',
	'duration' int(10) NOT NULL COMMENT '服务时长',
	'baber_id' bigint(20) NOT NULL COMMENT '理发师ID',
	PRIMARY KEY ('service_id'),
	FOREIGN KEY ('baber_id') REFERENCES baber('baber_id')
) ENGINE=InnoDB AUTO_INCREMENT=1000 DEFAULT CHARSET=utf8 COMMENT='服务表';