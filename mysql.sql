create database if not exists `ssmbuild`;
use `ssmbuild`;

drop table if exists `books`;
create table `books`(
	`bookID` int(10) not null auto_increment comment '书的id',
	`bookName` varchar(100) not null comment '书名',
    `author` varchar(100) not null comment '作者',
    `price` decimal(6,2) not null comment '价格',
    `bookCounts` int(11) not null comment '数量',
    `detail` varchar(200) not null comment '描述',
    primary key(`bookID`)
)engine = InnoDB default charset = utf8;

insert into `books`(`bookName`,`author`,`price`,`bookCounts`,`detail`) values
('五块钱如何花三天','lgq',20,200,'本书的主要内容是blablabla'),
('工作好难找','lgq',30,300,'放弃幻想，趁早改行'),
('我爱lgq','gj',520,1314,'白头偕老哈哈哈');