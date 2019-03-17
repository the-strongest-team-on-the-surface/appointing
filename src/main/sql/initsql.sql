-- 创建顾客表
CREATE TABLE `consumer` (
	`consumer_id` int(11) NOT NULL AUTO_INCREMENT COMMENT '顾客ID',
	`name` varchar(100) NOT NULL COMMENT '顾客名称',
	`tel_num` varchar(100) NOT NULL COMMENT'电话',
	`sex` boolean NOT NULL COMMENT'性别',
	`password` varchar(100) NOT NULL COMMENT'密码',
	PRIMARY KEY (`consumer_id`)
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=utf8 COMMENT='顾客表';

-- 创建店家表
CREATE TABLE `store` (
	`store_id` int(11) NOT NULL AUTO_INCREMENT COMMENT '店家ID',
	`name` varchar(100) NOT NULL COMMENT '店家名称',
	`id` int(11) NOT NULL COMMENT '地址ID',
	`tel_num` varchar(100) NOT NULL COMMENT'电话',
	`password` varchar(100) NOT NULL COMMENT'密码',
	`detailed_address` varchar(100) NOT NULL COMMENT'详细地址',
	PRIMARY KEY (`store_id`),
	FOREIGN KEY (`id`) REFERENCES Address(`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=utf8 COMMENT='店家表';

-- 创建理发师表
CREATE TABLE `baber` (
	`baber_id` int(11) NOT NULL AUTO_INCREMENT COMMENT '理发师ID',
	`name` varchar(100) NOT NULL COMMENT '理发师名称',
	`tel_num` varchar(100) NOT NULL COMMENT'电话',
	`sex` boolean NOT NULL COMMENT'性别',
	`is_working` boolean NOT NULL COMMENT'是否正在工作',
	`store_id` int(11) NOT NULL COMMENT '店家ID',
	`password` varchar(100) NOT NULL COMMENT'密码',
	`default-working-time-period` varchar(100) NOT NULL COMMENT'默认工作时间段',
	`actual-working-time-period` varchar(100) NOT NULL COMMENT'实际工作时间段',
	PRIMARY KEY (`baber_id`),
	FOREIGN KEY (`store_id`) REFERENCES store(`store_id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=utf8 COMMENT='理发师表';

-- 创建服务表
CREATE TABLE `service` (
	`service_id` int(11) NOT NULL AUTO_INCREMENT COMMENT '服务ID',
	`name` varchar(100) NOT NULL COMMENT '服务名称',
	`price` int(11) NOT NULL COMMENT '服务价格',
	`duration` int(11) NOT NULL COMMENT '服务时长',
	`baber_id` int(11) NOT NULL COMMENT '理发师ID',
	PRIMARY KEY (`service_id`),
	FOREIGN KEY (`baber_id`) REFERENCES baber(`baber_id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=utf8 COMMENT='服务表';

-- 创建预约表
CREATE TABLE `appointing` (
	`appointing_id` int(11) NOT NULL AUTO_INCREMENT COMMENT '预约ID',
	`baber_id` int(11) NOT NULL COMMENT '理发师ID',
	`consumer_id` int(11) NOT NULL COMMENT '顾客ID',
	`service_id` int(11) NOT NULL COMMENT '服务ID',
	`appointed_time` varchar(100) NOT NULL COMMENT '预约时间',
	`status` varchar(100) NOT NULL COMMENT '预约状态',
	PRIMARY KEY (`appointing_id`),
	FOREIGN KEY (`baber_id`) REFERENCES baber(`baber_id`),
	FOREIGN KEY (`consumer_id`) REFERENCES consumer(`consumer_id`),
	FOREIGN KEY (`service_id`) REFERENCES service(`service_id`)
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=utf8 COMMENT='预约表';