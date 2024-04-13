create table sys_movie_to_category
(
    movie_id          bigint unsigned not null comment '电影编号',
    movie_category_id bigint unsigned not null comment '电影类别编号',
    primary key (movie_id, movie_category_id),
    constraint sys_movie_to_category_ibfk_1
        foreign key (movie_category_id) references sys_movie_category (movie_category_id)
            on update cascade on delete cascade
)
    charset = utf8;

create index movie_category_id
    on sys_movie_to_category (movie_category_id);

INSERT INTO cinema_manager.sys_movie_to_category (movie_id, movie_category_id) VALUES (5, 1);
INSERT INTO cinema_manager.sys_movie_to_category (movie_id, movie_category_id) VALUES (20, 1);
INSERT INTO cinema_manager.sys_movie_to_category (movie_id, movie_category_id) VALUES (23, 1);
INSERT INTO cinema_manager.sys_movie_to_category (movie_id, movie_category_id) VALUES (31, 1);
INSERT INTO cinema_manager.sys_movie_to_category (movie_id, movie_category_id) VALUES (6, 2);
INSERT INTO cinema_manager.sys_movie_to_category (movie_id, movie_category_id) VALUES (10, 2);
INSERT INTO cinema_manager.sys_movie_to_category (movie_id, movie_category_id) VALUES (17, 2);
INSERT INTO cinema_manager.sys_movie_to_category (movie_id, movie_category_id) VALUES (18, 2);
INSERT INTO cinema_manager.sys_movie_to_category (movie_id, movie_category_id) VALUES (20, 2);
INSERT INTO cinema_manager.sys_movie_to_category (movie_id, movie_category_id) VALUES (31, 2);
INSERT INTO cinema_manager.sys_movie_to_category (movie_id, movie_category_id) VALUES (3, 3);
INSERT INTO cinema_manager.sys_movie_to_category (movie_id, movie_category_id) VALUES (7, 3);
INSERT INTO cinema_manager.sys_movie_to_category (movie_id, movie_category_id) VALUES (15, 3);
INSERT INTO cinema_manager.sys_movie_to_category (movie_id, movie_category_id) VALUES (20, 3);
INSERT INTO cinema_manager.sys_movie_to_category (movie_id, movie_category_id) VALUES (23, 3);
INSERT INTO cinema_manager.sys_movie_to_category (movie_id, movie_category_id) VALUES (31, 3);
INSERT INTO cinema_manager.sys_movie_to_category (movie_id, movie_category_id) VALUES (1, 4);
INSERT INTO cinema_manager.sys_movie_to_category (movie_id, movie_category_id) VALUES (3, 4);
INSERT INTO cinema_manager.sys_movie_to_category (movie_id, movie_category_id) VALUES (4, 4);
INSERT INTO cinema_manager.sys_movie_to_category (movie_id, movie_category_id) VALUES (5, 4);
INSERT INTO cinema_manager.sys_movie_to_category (movie_id, movie_category_id) VALUES (6, 4);
INSERT INTO cinema_manager.sys_movie_to_category (movie_id, movie_category_id) VALUES (9, 4);
INSERT INTO cinema_manager.sys_movie_to_category (movie_id, movie_category_id) VALUES (10, 4);
INSERT INTO cinema_manager.sys_movie_to_category (movie_id, movie_category_id) VALUES (12, 4);
INSERT INTO cinema_manager.sys_movie_to_category (movie_id, movie_category_id) VALUES (16, 4);
INSERT INTO cinema_manager.sys_movie_to_category (movie_id, movie_category_id) VALUES (17, 4);
INSERT INTO cinema_manager.sys_movie_to_category (movie_id, movie_category_id) VALUES (19, 4);
INSERT INTO cinema_manager.sys_movie_to_category (movie_id, movie_category_id) VALUES (2, 6);
INSERT INTO cinema_manager.sys_movie_to_category (movie_id, movie_category_id) VALUES (7, 6);
INSERT INTO cinema_manager.sys_movie_to_category (movie_id, movie_category_id) VALUES (8, 6);
INSERT INTO cinema_manager.sys_movie_to_category (movie_id, movie_category_id) VALUES (9, 6);
INSERT INTO cinema_manager.sys_movie_to_category (movie_id, movie_category_id) VALUES (11, 6);
INSERT INTO cinema_manager.sys_movie_to_category (movie_id, movie_category_id) VALUES (14, 6);
INSERT INTO cinema_manager.sys_movie_to_category (movie_id, movie_category_id) VALUES (15, 6);
INSERT INTO cinema_manager.sys_movie_to_category (movie_id, movie_category_id) VALUES (2, 7);
INSERT INTO cinema_manager.sys_movie_to_category (movie_id, movie_category_id) VALUES (9, 7);
INSERT INTO cinema_manager.sys_movie_to_category (movie_id, movie_category_id) VALUES (11, 7);
INSERT INTO cinema_manager.sys_movie_to_category (movie_id, movie_category_id) VALUES (1, 8);
INSERT INTO cinema_manager.sys_movie_to_category (movie_id, movie_category_id) VALUES (8, 8);
INSERT INTO cinema_manager.sys_movie_to_category (movie_id, movie_category_id) VALUES (17, 8);
INSERT INTO cinema_manager.sys_movie_to_category (movie_id, movie_category_id) VALUES (20, 8);
INSERT INTO cinema_manager.sys_movie_to_category (movie_id, movie_category_id) VALUES (20, 9);
INSERT INTO cinema_manager.sys_movie_to_category (movie_id, movie_category_id) VALUES (1, 10);
INSERT INTO cinema_manager.sys_movie_to_category (movie_id, movie_category_id) VALUES (4, 10);
INSERT INTO cinema_manager.sys_movie_to_category (movie_id, movie_category_id) VALUES (8, 10);
INSERT INTO cinema_manager.sys_movie_to_category (movie_id, movie_category_id) VALUES (14, 10);
INSERT INTO cinema_manager.sys_movie_to_category (movie_id, movie_category_id) VALUES (19, 10);
INSERT INTO cinema_manager.sys_movie_to_category (movie_id, movie_category_id) VALUES (20, 10);
INSERT INTO cinema_manager.sys_movie_to_category (movie_id, movie_category_id) VALUES (2, 11);
INSERT INTO cinema_manager.sys_movie_to_category (movie_id, movie_category_id) VALUES (7, 11);
INSERT INTO cinema_manager.sys_movie_to_category (movie_id, movie_category_id) VALUES (9, 11);
INSERT INTO cinema_manager.sys_movie_to_category (movie_id, movie_category_id) VALUES (14, 11);
INSERT INTO cinema_manager.sys_movie_to_category (movie_id, movie_category_id) VALUES (3, 13);
INSERT INTO cinema_manager.sys_movie_to_category (movie_id, movie_category_id) VALUES (18, 13);
INSERT INTO cinema_manager.sys_movie_to_category (movie_id, movie_category_id) VALUES (5, 15);
INSERT INTO cinema_manager.sys_movie_to_category (movie_id, movie_category_id) VALUES (10, 15);
INSERT INTO cinema_manager.sys_movie_to_category (movie_id, movie_category_id) VALUES (18, 15);
INSERT INTO cinema_manager.sys_movie_to_category (movie_id, movie_category_id) VALUES (13, 23);
INSERT INTO cinema_manager.sys_movie_to_category (movie_id, movie_category_id) VALUES (13, 24);
