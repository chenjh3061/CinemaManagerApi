create table discount
(
    dis_id    int                  not null
        primary key,
    dis_name  varchar(50)          null,
    dis_off   double               null,
    dis_state tinyint(1) default 0 not null,
    constraint discount_dis_id_uindex
        unique (dis_id)
);

INSERT INTO cinema_manager.discount (dis_id, dis_name, dis_off, dis_state) VALUES (1, '无优惠', 1, 1);
INSERT INTO cinema_manager.discount (dis_id, dis_name, dis_off, dis_state) VALUES (2, '学生优惠', 0.9, 1);
INSERT INTO cinema_manager.discount (dis_id, dis_name, dis_off, dis_state) VALUES (3, '长者优惠', 0.8, 1);
INSERT INTO cinema_manager.discount (dis_id, dis_name, dis_off, dis_state) VALUES (4, '午夜场优惠', 0.8, 1);
