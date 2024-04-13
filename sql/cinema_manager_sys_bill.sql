create table sys_bill
(
    bill_id      bigint unsigned auto_increment comment '订单编号'
        primary key,
    pay_state    tinyint default 0 not null comment '支付状态，0未支付，1已支付',
    cancel_state tinyint default 0 not null comment '取消状态，0未取消，1取消',
    user_id      bigint unsigned   not null comment '用户编号',
    session_id   bigint unsigned   not null comment '场次编号',
    seats        varchar(1600)     not null comment '购买的座位号，可能为多个，使用varchar(1600)传输',
    create_time  datetime          null comment '创建时间',
    deadline     datetime          null comment '失效时间',
    cancel_time  datetime          null comment '取消时间，标志用户取消订单，非系统超时取消',
    payment      varchar(50)       null,
    discount     varchar(50)       null,
    bill_repay   tinyint(1)        null,
    bill_money   double  default 0 null
)
    charset = utf8;

INSERT INTO cinema_manager.sys_bill (bill_id, pay_state, cancel_state, user_id, session_id, seats, create_time, deadline, cancel_time, payment, discount, bill_repay, bill_money) VALUES (39, 1, 0, 3, 2, '["4排7座"]', '2024-04-09 21:46:22', '2024-04-09 22:01:17', null, '支付宝支付', '无优惠', null, 40);
INSERT INTO cinema_manager.sys_bill (bill_id, pay_state, cancel_state, user_id, session_id, seats, create_time, deadline, cancel_time, payment, discount, bill_repay, bill_money) VALUES (40, 1, 0, 5, 14, '["2排5座"]', '2024-04-11 15:06:20', '2024-04-11 15:20:44', null, '微信支付', '学生优惠', null, 36);
