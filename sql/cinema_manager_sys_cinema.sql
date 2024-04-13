create table sys_cinema
(
    cinema_id          bigint unsigned auto_increment comment '影院编号'
        primary key,
    cinema_name        varchar(255)  not null comment '影院名称',
    hall_category_list varchar(1600) null comment '拥有影厅类别',
    cinema_picture     varchar(1600) null comment '影院图片，varchar(1600)类型存储多张图片',
    cinema_phone       varchar(20)   not null comment '影院电话',
    cinema_address     varchar(255)  not null comment '影院地址',
    work_start_time    varchar(10)   null comment '开始营业时间',
    work_end_time      varchar(10)   null comment '结束营业时间'
)
    charset = utf8;

INSERT INTO cinema_manager.sys_cinema (cinema_id, cinema_name, hall_category_list, cinema_picture, cinema_phone, cinema_address, work_start_time, work_end_time) VALUES (1, '飞扬影业·南国影城', '["N号激光厅","IMAX巨幕厅"]', '["/images/cinema/2023/07/03/92084bfd162a4a4698b77332c83700a0.jpg"]', '1234675890', '广州市天河区', '00:00', '23:59');
