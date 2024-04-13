create table sys_movie_category
(
    movie_category_id   bigint unsigned auto_increment comment '电影类别编号'
        primary key,
    movie_category_name varchar(255) not null comment '电影类别名称'
)
    charset = utf8;

INSERT INTO cinema_manager.sys_movie_category (movie_category_id, movie_category_name) VALUES (1, '爱情');
INSERT INTO cinema_manager.sys_movie_category (movie_category_id, movie_category_name) VALUES (2, '喜剧');
INSERT INTO cinema_manager.sys_movie_category (movie_category_id, movie_category_name) VALUES (3, '动画');
INSERT INTO cinema_manager.sys_movie_category (movie_category_id, movie_category_name) VALUES (4, '剧情');
INSERT INTO cinema_manager.sys_movie_category (movie_category_id, movie_category_name) VALUES (5, '恐怖');
INSERT INTO cinema_manager.sys_movie_category (movie_category_id, movie_category_name) VALUES (6, '动作');
INSERT INTO cinema_manager.sys_movie_category (movie_category_id, movie_category_name) VALUES (7, '科幻');
INSERT INTO cinema_manager.sys_movie_category (movie_category_id, movie_category_name) VALUES (8, '悬疑');
INSERT INTO cinema_manager.sys_movie_category (movie_category_id, movie_category_name) VALUES (9, '惊悚');
INSERT INTO cinema_manager.sys_movie_category (movie_category_id, movie_category_name) VALUES (10, '犯罪');
INSERT INTO cinema_manager.sys_movie_category (movie_category_id, movie_category_name) VALUES (11, '冒险');
INSERT INTO cinema_manager.sys_movie_category (movie_category_id, movie_category_name) VALUES (12, '战争');
INSERT INTO cinema_manager.sys_movie_category (movie_category_id, movie_category_name) VALUES (13, '奇幻');
INSERT INTO cinema_manager.sys_movie_category (movie_category_id, movie_category_name) VALUES (14, '运动');
INSERT INTO cinema_manager.sys_movie_category (movie_category_id, movie_category_name) VALUES (15, '家庭');
INSERT INTO cinema_manager.sys_movie_category (movie_category_id, movie_category_name) VALUES (16, '古装');
INSERT INTO cinema_manager.sys_movie_category (movie_category_id, movie_category_name) VALUES (17, '武侠');
INSERT INTO cinema_manager.sys_movie_category (movie_category_id, movie_category_name) VALUES (18, '西部');
INSERT INTO cinema_manager.sys_movie_category (movie_category_id, movie_category_name) VALUES (19, '历史');
INSERT INTO cinema_manager.sys_movie_category (movie_category_id, movie_category_name) VALUES (20, '传记');
INSERT INTO cinema_manager.sys_movie_category (movie_category_id, movie_category_name) VALUES (21, '歌舞');
INSERT INTO cinema_manager.sys_movie_category (movie_category_id, movie_category_name) VALUES (22, '黑色电影');
INSERT INTO cinema_manager.sys_movie_category (movie_category_id, movie_category_name) VALUES (23, '短片');
INSERT INTO cinema_manager.sys_movie_category (movie_category_id, movie_category_name) VALUES (24, '纪录片');
INSERT INTO cinema_manager.sys_movie_category (movie_category_id, movie_category_name) VALUES (25, '其他');
INSERT INTO cinema_manager.sys_movie_category (movie_category_id, movie_category_name) VALUES (26, '历史');
