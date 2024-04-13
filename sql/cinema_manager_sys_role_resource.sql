create table sys_role_resource
(
    role_id     bigint unsigned not null comment '角色编号',
    resource_id bigint unsigned not null comment '资源编号，只以3级权限作为权限判断的依据',
    primary key (role_id, resource_id)
)
    charset = utf8;

INSERT INTO cinema_manager.sys_role_resource (role_id, resource_id) VALUES (1, 111);
INSERT INTO cinema_manager.sys_role_resource (role_id, resource_id) VALUES (1, 112);
INSERT INTO cinema_manager.sys_role_resource (role_id, resource_id) VALUES (1, 211);
INSERT INTO cinema_manager.sys_role_resource (role_id, resource_id) VALUES (1, 212);
INSERT INTO cinema_manager.sys_role_resource (role_id, resource_id) VALUES (1, 221);
INSERT INTO cinema_manager.sys_role_resource (role_id, resource_id) VALUES (1, 222);
INSERT INTO cinema_manager.sys_role_resource (role_id, resource_id) VALUES (1, 311);
INSERT INTO cinema_manager.sys_role_resource (role_id, resource_id) VALUES (1, 312);
INSERT INTO cinema_manager.sys_role_resource (role_id, resource_id) VALUES (1, 321);
INSERT INTO cinema_manager.sys_role_resource (role_id, resource_id) VALUES (1, 322);
INSERT INTO cinema_manager.sys_role_resource (role_id, resource_id) VALUES (1, 411);
INSERT INTO cinema_manager.sys_role_resource (role_id, resource_id) VALUES (1, 412);
INSERT INTO cinema_manager.sys_role_resource (role_id, resource_id) VALUES (1, 511);
INSERT INTO cinema_manager.sys_role_resource (role_id, resource_id) VALUES (1, 512);
INSERT INTO cinema_manager.sys_role_resource (role_id, resource_id) VALUES (1, 611);
INSERT INTO cinema_manager.sys_role_resource (role_id, resource_id) VALUES (1, 612);
INSERT INTO cinema_manager.sys_role_resource (role_id, resource_id) VALUES (1, 621);
INSERT INTO cinema_manager.sys_role_resource (role_id, resource_id) VALUES (1, 622);
INSERT INTO cinema_manager.sys_role_resource (role_id, resource_id) VALUES (1, 623);
INSERT INTO cinema_manager.sys_role_resource (role_id, resource_id) VALUES (1, 624);
INSERT INTO cinema_manager.sys_role_resource (role_id, resource_id) VALUES (2, 211);
INSERT INTO cinema_manager.sys_role_resource (role_id, resource_id) VALUES (2, 221);
INSERT INTO cinema_manager.sys_role_resource (role_id, resource_id) VALUES (2, 231);
INSERT INTO cinema_manager.sys_role_resource (role_id, resource_id) VALUES (2, 241);
INSERT INTO cinema_manager.sys_role_resource (role_id, resource_id) VALUES (2, 251);
INSERT INTO cinema_manager.sys_role_resource (role_id, resource_id) VALUES (2, 261);
INSERT INTO cinema_manager.sys_role_resource (role_id, resource_id) VALUES (2, 311);
INSERT INTO cinema_manager.sys_role_resource (role_id, resource_id) VALUES (2, 312);
INSERT INTO cinema_manager.sys_role_resource (role_id, resource_id) VALUES (2, 321);
INSERT INTO cinema_manager.sys_role_resource (role_id, resource_id) VALUES (2, 411);
INSERT INTO cinema_manager.sys_role_resource (role_id, resource_id) VALUES (2, 412);
INSERT INTO cinema_manager.sys_role_resource (role_id, resource_id) VALUES (2, 511);
INSERT INTO cinema_manager.sys_role_resource (role_id, resource_id) VALUES (2, 621);
INSERT INTO cinema_manager.sys_role_resource (role_id, resource_id) VALUES (3, 321);
INSERT INTO cinema_manager.sys_role_resource (role_id, resource_id) VALUES (3, 322);
INSERT INTO cinema_manager.sys_role_resource (role_id, resource_id) VALUES (3, 411);
INSERT INTO cinema_manager.sys_role_resource (role_id, resource_id) VALUES (3, 412);
INSERT INTO cinema_manager.sys_role_resource (role_id, resource_id) VALUES (10, 621);
INSERT INTO cinema_manager.sys_role_resource (role_id, resource_id) VALUES (10, 622);
