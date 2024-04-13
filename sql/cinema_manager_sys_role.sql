create table sys_role
(
    role_id   bigint unsigned auto_increment comment '角色编号'
        primary key,
    role_name varchar(255) not null comment '角色名称',
    role_desc varchar(255) not null comment '角色描述'
)
    charset = utf8;

INSERT INTO cinema_manager.sys_role (role_id, role_name, role_desc) VALUES (1, '系统管理员', '管理整个影院在线售票系统');
INSERT INTO cinema_manager.sys_role (role_id, role_name, role_desc) VALUES (2, '用户', '用户，仅能使用前台浏览相关信息、下单、修改个人信息等功能');
INSERT INTO cinema_manager.sys_role (role_id, role_name, role_desc) VALUES (3, '售票员', '使用系统进行电影票销售、退票、改签等。');
