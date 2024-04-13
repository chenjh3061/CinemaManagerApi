create table sys_resource
(
    resource_id   bigint unsigned auto_increment comment '资源编号'
        primary key,
    resource_name varchar(255)               not null comment '菜单名称',
    path          varchar(255)    default '' not null comment '菜单路径，用于保存页面地址',
    level         int unsigned    default 1  not null comment '资源权限等级,1表示该资源为最高级权限',
    parent_id     bigint unsigned default 0  not null comment '当前菜单父菜单编号'
)
    charset = utf8;

INSERT INTO cinema_manager.sys_resource (resource_id, resource_name, path, level, parent_id) VALUES (1, '影院信息', 'cinema', 1, 0);
INSERT INTO cinema_manager.sys_resource (resource_id, resource_name, path, level, parent_id) VALUES (2, '影片管理', 'movie', 1, 0);
INSERT INTO cinema_manager.sys_resource (resource_id, resource_name, path, level, parent_id) VALUES (3, '影厅管理', 'room', 1, 0);
INSERT INTO cinema_manager.sys_resource (resource_id, resource_name, path, level, parent_id) VALUES (4, '订单管理', 'order', 1, 0);
INSERT INTO cinema_manager.sys_resource (resource_id, resource_name, path, level, parent_id) VALUES (5, '用户管理', 'user', 1, 0);
INSERT INTO cinema_manager.sys_resource (resource_id, resource_name, path, level, parent_id) VALUES (6, '角色管理', 'permission', 1, 0);
INSERT INTO cinema_manager.sys_resource (resource_id, resource_name, path, level, parent_id) VALUES (11, '影院信息管理', 'cinema', 2, 1);
INSERT INTO cinema_manager.sys_resource (resource_id, resource_name, path, level, parent_id) VALUES (21, '电影信息管理', 'movie', 2, 2);
INSERT INTO cinema_manager.sys_resource (resource_id, resource_name, path, level, parent_id) VALUES (22, '电影类别管理', 'movieCategory', 2, 2);
INSERT INTO cinema_manager.sys_resource (resource_id, resource_name, path, level, parent_id) VALUES (31, '影厅信息管理', 'hall', 2, 3);
INSERT INTO cinema_manager.sys_resource (resource_id, resource_name, path, level, parent_id) VALUES (32, '排片信息管理', 'session', 2, 3);
INSERT INTO cinema_manager.sys_resource (resource_id, resource_name, path, level, parent_id) VALUES (41, '订单信息管理', 'bill', 2, 4);
INSERT INTO cinema_manager.sys_resource (resource_id, resource_name, path, level, parent_id) VALUES (42, '优惠管理', 'billDiscount', 2, 4);
INSERT INTO cinema_manager.sys_resource (resource_id, resource_name, path, level, parent_id) VALUES (51, '用户信息管理', 'user', 2, 5);
INSERT INTO cinema_manager.sys_resource (resource_id, resource_name, path, level, parent_id) VALUES (61, '角色信息管理', 'role', 2, 6);
INSERT INTO cinema_manager.sys_resource (resource_id, resource_name, path, level, parent_id) VALUES (62, '权限信息管理', 'resource', 2, 6);
INSERT INTO cinema_manager.sys_resource (resource_id, resource_name, path, level, parent_id) VALUES (111, '查询影院信息权限', '', 3, 11);
INSERT INTO cinema_manager.sys_resource (resource_id, resource_name, path, level, parent_id) VALUES (112, '修改影院信息权限', '', 3, 11);
INSERT INTO cinema_manager.sys_resource (resource_id, resource_name, path, level, parent_id) VALUES (211, '查询电影信息权限', '', 3, 21);
INSERT INTO cinema_manager.sys_resource (resource_id, resource_name, path, level, parent_id) VALUES (212, '修改电影信息权限', '', 3, 21);
INSERT INTO cinema_manager.sys_resource (resource_id, resource_name, path, level, parent_id) VALUES (221, '查询电影类别权限', '', 3, 22);
INSERT INTO cinema_manager.sys_resource (resource_id, resource_name, path, level, parent_id) VALUES (222, '修改电影类别权限', '', 3, 22);
INSERT INTO cinema_manager.sys_resource (resource_id, resource_name, path, level, parent_id) VALUES (311, '查询影厅信息权限', '', 3, 31);
INSERT INTO cinema_manager.sys_resource (resource_id, resource_name, path, level, parent_id) VALUES (312, '修改影厅信息权限', '', 3, 31);
INSERT INTO cinema_manager.sys_resource (resource_id, resource_name, path, level, parent_id) VALUES (321, '查询场次信息权限', '', 3, 32);
INSERT INTO cinema_manager.sys_resource (resource_id, resource_name, path, level, parent_id) VALUES (322, '修改场次信息权限', '', 3, 32);
INSERT INTO cinema_manager.sys_resource (resource_id, resource_name, path, level, parent_id) VALUES (411, '查询订单信息权限', '', 3, 41);
INSERT INTO cinema_manager.sys_resource (resource_id, resource_name, path, level, parent_id) VALUES (412, '修改订单信息权限', '', 3, 41);
INSERT INTO cinema_manager.sys_resource (resource_id, resource_name, path, level, parent_id) VALUES (511, '查询用户信息权限', '', 3, 51);
INSERT INTO cinema_manager.sys_resource (resource_id, resource_name, path, level, parent_id) VALUES (512, '修改用户信息权限', '', 3, 51);
INSERT INTO cinema_manager.sys_resource (resource_id, resource_name, path, level, parent_id) VALUES (611, '查询角色信息权限', '', 3, 61);
INSERT INTO cinema_manager.sys_resource (resource_id, resource_name, path, level, parent_id) VALUES (612, '修改角色信息权限', '', 3, 61);
INSERT INTO cinema_manager.sys_resource (resource_id, resource_name, path, level, parent_id) VALUES (621, '查询资源信息权限', '', 3, 62);
INSERT INTO cinema_manager.sys_resource (resource_id, resource_name, path, level, parent_id) VALUES (622, '修改资源信息权限', '', 3, 62);
INSERT INTO cinema_manager.sys_resource (resource_id, resource_name, path, level, parent_id) VALUES (623, '查询优惠信息权限', '', 3, 42);
INSERT INTO cinema_manager.sys_resource (resource_id, resource_name, path, level, parent_id) VALUES (624, '修改优惠信息权限', '', 3, 42);
