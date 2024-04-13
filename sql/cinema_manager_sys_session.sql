create table sys_session
(
    session_id       bigint unsigned auto_increment comment '场次编号'
        primary key,
    hall_id          bigint unsigned             not null comment '影厅编号',
    language_version varchar(20)                 not null comment '语言版本',
    movie_id         bigint unsigned             not null comment '电影编号',
    play_time        varchar(20)                 not null comment '播放时间',
    end_time         varchar(20)                 not null comment '散场时间',
    deadline         varchar(20)                 not null comment '检测到的截止时间，没过这个时间不能删电影、影厅信息',
    session_date     date                        not null comment '场次日期',
    session_price    decimal(10, 2)              not null comment '票价',
    session_tips     varchar(255)                null comment '影厅提示(如是否需要戴口罩，有什么福利，显示在选座购票位置的影厅后边，格式类似：6号Barco厅-（戴口罩勿饮食）凭票领券免费停车3小时)',
    session_seats    varchar(1600)               not null comment '座位信息，采用{key: [], key: []}存储每一个座位的状态，其中key表示排，数组(下标+1)表示几号座，存储的值为0表示可选，1表示空(无座位)，值为2表示已选择，值为3表示已售出，',
    seat_nums        smallint unsigned default 0 null comment '总座位数',
    sall_nums        smallint          default 0 not null comment '售出座位数',
    del_state        tinyint           default 0 not null comment '删除标记，0未删除，1删除，默认0'
)
    charset = utf8;

INSERT INTO cinema_manager.sys_session (session_id, hall_id, language_version, movie_id, play_time, end_time, deadline, session_date, session_price, session_tips, session_seats, seat_nums, sall_nums, del_state) VALUES (1, 2, '中文', 1, '12:26', '14:05', '2024-04-04 14:25:00', '2024-04-04', 38.00, '独家首映', '{"1":[3,0,3,3,3,3,3,0,0,0],"2":[0,0,0,0,0,0,0,0,3,3],"3":[0,0,0,0,0,0,3,0,0,0],"4":[0,0,0,0,0,3,0,0,0,0],"5":[0,0,0,0,3,0,0,0,0,0],"6":[0,0,0,0,3,0,0,0,3,0],"7":[0,0,0,0,0,0,0,0,0,0],"8":[0,0,0,0,0,0,0,0,0,0],"9":[0,0,0,0,0,0,0,0,0,0],"10":[0,0,0,0,0,0,0,0,0,0]}', 100, 13, 0);
INSERT INTO cinema_manager.sys_session (session_id, hall_id, language_version, movie_id, play_time, end_time, deadline, session_date, session_price, session_tips, session_seats, seat_nums, sall_nums, del_state) VALUES (2, 3, '中文', 2, '12:32', '14:27', '2024-04-11 14:47:00', '2024-04-11', 40.00, null, '{"1":[0,0,0,0,0,0,0,0,0,0],"2":[0,0,0,0,0,0,0,0,0,0],"3":[0,0,0,0,3,0,0,0,0,0],"4":[0,0,0,0,0,3,3,0,0,0],"5":[0,0,0,0,0,0,0,0,0,0],"6":[0,0,0,0,0,0,0,0,0,0],"7":[0,0,0,0,0,0,0,0,3,0],"8":[0,0,0,0,0,0,0,0,0,0],"9":[0,0,0,0,0,0,0,0,0,0],"10":[0,0,0,0,0,0,0,0,0,0]}', 100, 4, 0);
INSERT INTO cinema_manager.sys_session (session_id, hall_id, language_version, movie_id, play_time, end_time, deadline, session_date, session_price, session_tips, session_seats, seat_nums, sall_nums, del_state) VALUES (3, 4, '中文', 7, '12:32', '14:06', '2024-04-10 14:26:00', '2024-04-10', 35.00, null, '{"1": [0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0], "2": [0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0], "3": [0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0], "4": [0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0], "5": [0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0], "6": [0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0], "7": [0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0], "8": [0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0], "9": [0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0], "10": [0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0], "11": [0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0], "12": [0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0], "13": [0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0], "14": [0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0], "15": [0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0], "16": [0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0], "17": [0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0], "18": [0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0], "19": [0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0], "20": [0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0]}', 400, 0, 0);
INSERT INTO cinema_manager.sys_session (session_id, hall_id, language_version, movie_id, play_time, end_time, deadline, session_date, session_price, session_tips, session_seats, seat_nums, sall_nums, del_state) VALUES (4, 5, '中文', 4, '12:32', '14:30', '2024-04-12 14:50:00', '2024-04-12', 50.00, null, '{"1":[0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0],"2":[0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0],"3":[0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0],"4":[0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0],"5":[0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0],"6":[0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0],"7":[0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0],"8":[0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0],"9":[0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0],"10":[0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0],"11":[0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0],"12":[0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0],"13":[0,0,0,0,0,0,0,0,3,0,0,0,0,0,0,0,0,0,0,0],"14":[0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0],"15":[0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0],"16":[0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0],"17":[0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0],"18":[0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0],"19":[0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0],"20":[0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0]}', 400, 1, 0);
INSERT INTO cinema_manager.sys_session (session_id, hall_id, language_version, movie_id, play_time, end_time, deadline, session_date, session_price, session_tips, session_seats, seat_nums, sall_nums, del_state) VALUES (5, 3, '中文', 6, '14:25', '16:25', '2023-07-07 16:45:00', '2023-07-07', 60.00, null, '{"1": [0, 0, 0, 0, 0, 0, 0, 0, 0, 0], "2": [0, 0, 0, 0, 0, 0, 0, 0, 0, 0], "3": [0, 0, 0, 0, 0, 0, 0, 0, 0, 0], "4": [0, 0, 0, 0, 0, 0, 0, 0, 0, 0], "5": [0, 0, 0, 0, 0, 0, 0, 0, 0, 0], "6": [0, 0, 0, 0, 0, 0, 0, 0, 0, 0], "7": [0, 0, 0, 0, 0, 0, 0, 0, 0, 0], "8": [0, 0, 0, 0, 0, 0, 0, 0, 0, 0], "9": [0, 0, 0, 0, 0, 0, 0, 0, 0, 0], "10": [0, 0, 0, 0, 0, 0, 0, 0, 0, 0]}', 100, 0, 1);
INSERT INTO cinema_manager.sys_session (session_id, hall_id, language_version, movie_id, play_time, end_time, deadline, session_date, session_price, session_tips, session_seats, seat_nums, sall_nums, del_state) VALUES (6, 3, '中文', 8, '14:25', '16:39', '2024-04-13 16:59:00', '2024-04-13', 70.00, null, '{"1":[0,0,0,0,0,0,0,0,0,0],"2":[0,0,0,0,0,0,0,0,0,0],"3":[0,0,0,0,3,3,0,0,0,0],"4":[0,0,0,0,0,0,0,0,0,0],"5":[0,0,0,0,0,0,0,3,0,0],"6":[0,0,0,0,0,0,0,0,0,0],"7":[0,0,0,0,0,0,0,0,0,0],"8":[0,0,0,0,0,0,0,0,0,0],"9":[0,0,0,0,0,0,0,0,0,0],"10":[0,0,0,0,0,0,0,0,0,0]}', null, 3, 0);
INSERT INTO cinema_manager.sys_session (session_id, hall_id, language_version, movie_id, play_time, end_time, deadline, session_date, session_price, session_tips, session_seats, seat_nums, sall_nums, del_state) VALUES (7, 2, '中文', 1, '14:25', '16:25', '2023-05-07 16:45:00', '2023-05-07', 60.00, null, '{"1": [0, 0, 0, 0, 0, 0, 0, 0, 0, 0], "2": [0, 0, 0, 0, 0, 0, 0, 0, 0, 0], "3": [0, 0, 0, 0, 0, 0, 0, 0, 0, 0], "4": [0, 0, 0, 0, 0, 0, 0, 0, 0, 0], "5": [0, 0, 0, 0, 0, 0, 0, 0, 0, 0], "6": [0, 0, 0, 0, 0, 0, 0, 0, 0, 0], "7": [0, 0, 0, 0, 0, 0, 0, 0, 0, 0], "8": [0, 0, 0, 0, 0, 0, 0, 0, 0, 0], "9": [0, 0, 0, 0, 0, 0, 0, 0, 0, 0], "10": [0, 0, 0, 0, 0, 0, 0, 0, 0, 0]}', 100, 0, 1);
INSERT INTO cinema_manager.sys_session (session_id, hall_id, language_version, movie_id, play_time, end_time, deadline, session_date, session_price, session_tips, session_seats, seat_nums, sall_nums, del_state) VALUES (8, 4, '中文', 2, '14:25', '16:20', '2024-04-16 16:40:00', '2024-04-16', 40.00, null, '{"1":[0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0],"2":[0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0],"3":[0,0,0,0,0,0,3,3,0,0,0,0,0,0,0,0,0,0,0,0],"4":[0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0],"5":[0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0],"6":[0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0],"7":[0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0],"8":[0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0],"9":[0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0],"10":[0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0],"11":[0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0],"12":[0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0],"13":[0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0],"14":[0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0],"15":[0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0],"16":[0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0],"17":[0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0],"18":[0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0],"19":[0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0],"20":[0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0]}', 400, 2, 0);
INSERT INTO cinema_manager.sys_session (session_id, hall_id, language_version, movie_id, play_time, end_time, deadline, session_date, session_price, session_tips, session_seats, seat_nums, sall_nums, del_state) VALUES (9, 3, '英语', 7, '16:02', '17:36', '2024-04-14 17:56:00', '2024-04-14', 80.00, null, '{"1": [0, 0, 0, 0, 0, 0, 0, 0, 0, 0], "2": [0, 0, 0, 0, 0, 0, 0, 0, 0, 0], "3": [0, 0, 0, 0, 0, 0, 0, 0, 0, 0], "4": [0, 0, 0, 0, 0, 0, 0, 0, 0, 0], "5": [0, 0, 0, 0, 0, 0, 0, 0, 0, 0], "6": [0, 0, 0, 0, 0, 0, 0, 0, 0, 0], "7": [0, 0, 0, 0, 0, 0, 0, 0, 0, 0], "8": [0, 0, 0, 0, 0, 0, 0, 0, 0, 0], "9": [0, 0, 0, 0, 0, 0, 0, 0, 0, 0], "10": [0, 0, 0, 0, 0, 0, 0, 0, 0, 0]}', 100, 0, 0);
INSERT INTO cinema_manager.sys_session (session_id, hall_id, language_version, movie_id, play_time, end_time, deadline, session_date, session_price, session_tips, session_seats, seat_nums, sall_nums, del_state) VALUES (10, 1, '中文', 1, '22:44', '00:23', '2024-04-18 00:43:00', '2024-04-17', 50.00, null, '{"1":[0,0,0,0,0,0,0,0,0,0],"2":[0,0,0,0,0,0,0,0,0,0],"3":[0,0,0,0,3,0,0,0,0,0],"4":[0,0,0,3,0,0,0,0,0,0],"5":[0,0,0,0,0,0,0,0,0,0],"6":[0,0,0,0,0,0,0,0,0,0],"7":[0,0,0,0,0,0,0,0,0,0],"8":[0,0,0,0,0,0,0,0,0,0],"9":[0,0,0,0,0,0,0,0,0,0],"10":[0,0,0,0,0,0,0,0,0,0]}', 100, 22, 0);
INSERT INTO cinema_manager.sys_session (session_id, hall_id, language_version, movie_id, play_time, end_time, deadline, session_date, session_price, session_tips, session_seats, seat_nums, sall_nums, del_state) VALUES (11, 2, '中文', 2, '12:36', '14:31', '2024-04-16 14:51:00', '2024-04-16', 50.00, null, '{"1":[0,0,0,0,0,0,0,0,0,0],"2":[0,0,0,0,0,0,0,0,0,0],"3":[0,0,0,0,0,0,0,0,0,0],"4":[0,0,0,0,0,0,0,0,0,0],"5":[0,0,0,0,0,3,0,0,0,0],"6":[0,0,0,0,3,3,3,0,0,0],"7":[0,0,0,0,0,0,0,0,0,0],"8":[0,0,0,0,0,0,0,0,0,0],"9":[0,0,0,0,0,0,0,0,0,0],"10":[0,0,0,0,0,0,0,0,0,0]}', 100, 4, 0);
INSERT INTO cinema_manager.sys_session (session_id, hall_id, language_version, movie_id, play_time, end_time, deadline, session_date, session_price, session_tips, session_seats, seat_nums, sall_nums, del_state) VALUES (12, 3, '中文', 4, '18:06', '20:04', '2024-04-25 20:24:00', '2024-04-25', 50.00, null, '{"1": [0, 0, 0, 0, 0, 0, 0, 0, 0, 0], "2": [0, 0, 0, 0, 0, 0, 0, 0, 0, 0], "3": [0, 0, 0, 0, 0, 0, 0, 0, 0, 0], "4": [0, 0, 0, 0, 0, 0, 0, 0, 0, 0], "5": [0, 0, 0, 0, 0, 0, 0, 0, 0, 0], "6": [0, 0, 0, 0, 0, 0, 0, 0, 0, 0], "7": [0, 0, 0, 0, 0, 0, 0, 0, 0, 0], "8": [0, 0, 0, 0, 0, 0, 0, 0, 0, 0], "9": [0, 0, 0, 0, 0, 0, 0, 0, 0, 0], "10": [0, 0, 0, 0, 0, 0, 0, 0, 0, 0]}', 100, 0, 0);
INSERT INTO cinema_manager.sys_session (session_id, hall_id, language_version, movie_id, play_time, end_time, deadline, session_date, session_price, session_tips, session_seats, seat_nums, sall_nums, del_state) VALUES (13, 5, '中文', 2, '16:14', '18:09', '2024-04-24 18:29:00', '2024-04-24', 60.00, null, '{"1":[0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0],"2":[0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0],"3":[0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0],"4":[0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0],"5":[0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0],"6":[0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0],"7":[0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0],"8":[0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0],"9":[0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0],"10":[0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0],"11":[0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0],"12":[0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0],"13":[0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0],"14":[0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0],"15":[0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0],"16":[0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0],"17":[0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0],"18":[0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0],"19":[0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0],"20":[0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0]}', 400, 0, 0);
INSERT INTO cinema_manager.sys_session (session_id, hall_id, language_version, movie_id, play_time, end_time, deadline, session_date, session_price, session_tips, session_seats, seat_nums, sall_nums, del_state) VALUES (14, 1, '日语', 3, '14:20', '16:24', '2024-04-26 16:44:00', '2024-04-26', 40.00, null, '{"1":[0,0,0,0,0,0,0,0,0,0],"2":[0,0,0,0,3,0,0,0,0,0],"3":[0,0,0,0,0,0,0,0,0,0],"4":[0,0,0,0,0,0,0,0,0,0],"5":[0,0,0,0,0,0,0,0,0,0],"6":[0,0,0,0,0,0,0,0,0,0],"7":[0,0,0,0,0,0,0,0,0,0],"8":[0,0,0,0,0,0,0,0,0,0],"9":[0,0,0,0,0,0,0,0,0,0],"10":[0,0,0,0,0,0,0,0,0,0]}', 100, 1, 0);
