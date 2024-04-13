create table sys_user
(
    user_id       bigint unsigned auto_increment comment '用户编号'
        primary key,
    user_name     varchar(255)              not null comment '用户名称(用于登录，添加时验证唯一性)',
    password      varchar(255)              not null comment '用户密码(密文存储)',
    salt          varchar(255)              null comment '盐',
    email         varchar(255)              null comment '用户邮箱，记录个人信息和发送通知',
    phone_number  varchar(20)               null comment '用户电话号码，用于注册和发送通知',
    sex           tinyint unsigned          not null comment '用户性别，1为男性0为女性',
    user_picture  varchar(255)              null comment '用户头像',
    role_id       bigint unsigned default 3 not null comment '角色编号',
    birthday      date                      null comment '生日',
    autograph     varchar(1000)             null comment '个性签名',
    del_state     tinyint         default 0 not null comment '删除标记，0未删除，1删除，默认0',
    user_identity int                       null
)
    charset = utf8;

INSERT INTO cinema_manager.sys_user (user_id, user_name, password, salt, email, phone_number, sex, user_picture, role_id, birthday, autograph, del_state, user_identity) VALUES (1, 'admin', '2f6b5c3044b271f5c07545aa862cf35c', '0v#C4w&i', '17777744455@qq.com', '13111212312', 1, '["/images/user/2021/05/19/2b1e80fb2b4746aa8fd21feab6088679.png"]', 1, '1999-10-15', '爱拼才会赢', 0, null);
INSERT INTO cinema_manager.sys_user (user_id, user_name, password, salt, email, phone_number, sex, user_picture, role_id, birthday, autograph, del_state, user_identity) VALUES (2, 'user', 'de24bcd64d58e024b252268641a672de', 'DIm1GWgN', '123@qq.com', '13333333333', 1, '["/images/user/2023/07/08/b7d88e8b54d84818826f1c1f87de835e.jpg"]', 2, '2023-07-12', null, 0, null);
INSERT INTO cinema_manager.sys_user (user_id, user_name, password, salt, email, phone_number, sex, user_picture, role_id, birthday, autograph, del_state, user_identity) VALUES (3, 'chen', 'e7751418caf050b4c242598e07811b67', 'M7LZFk!q', '654321@qq.com', '15123546789', 1, '["/images/user/2024/03/30/6573ba88e0274ad48dc6493990b7f674.jpg"]', 2, '2002-01-01', null, 0, 1);
INSERT INTO cinema_manager.sys_user (user_id, user_name, password, salt, email, phone_number, sex, user_picture, role_id, birthday, autograph, del_state, user_identity) VALUES (4, 'seller', '2f6b5c3044b271f5c07545aa862cf35c', '0v#C4w&i', null, null, 2, null, 3, '2008-03-06', null, 0, null);
INSERT INTO cinema_manager.sys_user (user_id, user_name, password, salt, email, phone_number, sex, user_picture, role_id, birthday, autograph, del_state, user_identity) VALUES (5, 'aaa', 'd28861e3bac02ab9e5d2cbd52d68a565', 'lV)rT#qW', null, '15767456836', 1, '[]', 3, '2017-04-01', null, 0, 1);
