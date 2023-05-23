INSERT INTO genre (name) VALUES ('RAP');
INSERT INTO genre (name) VALUES ('ПОПСА');
INSERT INTO genre (name) VALUES ('РОК');
INSERT INTO genre (name) VALUES ('ПАНК');
INSERT INTO genre (name) VALUES ('АЛЬТЕРНАТИВА');
INSERT INTO genre (name) VALUES ('HIP-HOP');

INSERT INTO musician (nickname) VALUES ('Ханна');
INSERT INTO musician (nickname) VALUES ('Баста');
INSERT INTO musician (nickname) VALUES ('СМОКИ МО');
INSERT INTO musician (nickname) VALUES ('Король и шут');
INSERT INTO musician (nickname) VALUES ('Green day');
INSERT INTO musician (nickname) VALUES ('30 Second To Mars');
INSERT INTO musician (nickname) VALUES ('Базар');
INSERT INTO musician (nickname) VALUES ('Мачете');
INSERT INTO musician (nickname) VALUES ('Многоточие');

INSERT INTO album (title, year) VALUES ('Мысли ч.1', 2018);
INSERT INTO album (title, year) VALUES ('Чуства', 2022);
INSERT INTO album (title, year) VALUES ('Баста/СМОКИ МО', 2015);
INSERT INTO album (title, year) VALUES ('Баста5 ч.2', 2016);
INSERT INTO album (title, year) VALUES ('Театр демона', 2010);
INSERT INTO album (title, year) VALUES ('Жаль, нет ружья', 2002);
INSERT INTO album (title, year) VALUES ('Father Of All Motherfucker', 2020);
INSERT INTO album (title, year) VALUES ('America', 2018);
INSERT INTO album (title, year) VALUES ('Бадду Альварез', 2021);
INSERT INTO album (title, year) VALUES ('IMPULS', 2019);
INSERT INTO album (title, year) VALUES ('Жизнь и свобода', 2001);

INSERT INTO collection (name, year) VALUES ('Любимое 2002', 2002);
INSERT INTO collection (name, year) VALUES ('Любимое 2010', 2010);
INSERT INTO collection (name, year) VALUES ('Любимое 2015', 2015);
INSERT INTO collection (name, year) VALUES ('Любимое 2016', 2016);
INSERT INTO collection (name, year) VALUES ('Любимое 2018', 2018);
INSERT INTO collection (name, year) VALUES ('Любимое 2019', 2019);
INSERT INTO collection (name, year) VALUES ('Любимое 2020', 2020);
INSERT INTO collection (name, year) VALUES ('Любимое 2021', 2021);
INSERT INTO collection (name, year) VALUES ('Любимое', 2022);


INSERT INTO track (t_name, duration, album_id) VALUES ('Потеряла голову', 220, 1);
INSERT INTO track (t_name, duration, album_id) VALUES ('Прощай', 150, 2);
INSERT INTO track (t_name, duration, album_id) VALUES ('Выпадай в осадок', 293, 3);
INSERT INTO track (t_name, duration, album_id) VALUES ('Выпускной', 335, 4);
INSERT INTO track (t_name, duration, album_id) VALUES ('Танец злобного гения', 235, 5);
INSERT INTO track (t_name, duration, album_id) VALUES ('Бунтарь', 253, 5);
INSERT INTO track (t_name, duration, album_id) VALUES ('Мертвый анархист', 247, 6);
INSERT INTO track (t_name, duration, album_id) VALUES ('Oh Yeah!', 168, 7);
INSERT INTO track (t_name, duration, album_id) VALUES ('Father Of All ...', 149, 7);
INSERT INTO track (t_name, duration, album_id) VALUES ('Dungerous Night', 200, 8);
INSERT INTO track (t_name, duration, album_id) VALUES ('Hail To The Victor', 202, 8);
INSERT INTO track (t_name, duration, album_id) VALUES ('Где', 201, 9);
INSERT INTO track (t_name, duration, album_id) VALUES ('Моно и стерио', 208, 9);
INSERT INTO track (t_name, duration, album_id) VALUES ('Молод', 220, 9);
INSERT INTO track (t_name, duration, album_id) VALUES ('Красиво танцуй', 247, 10);
INSERT INTO track (t_name, duration, album_id) VALUES ('Выхожу из системы', 260, 10);
INSERT INTO track (t_name, duration, album_id) VALUES ('Небо мой дом', 236, 10);
INSERT INTO track (t_name, duration, album_id) VALUES ('Жизнь и свобода', 250, 11);
INSERT INTO track (t_name, duration, album_id) VALUES ('Поднимись выше', 197, 11);
INSERT INTO track (t_name, duration, album_id) VALUES ('В жизни так бывает', 267, 11);


INSERT INTO musiciangenre VALUES (1, 2), (1, 9), (2, 1), (2, 3), (3, 4), (3, 8), (4, 5), (5, 6), (6, 7);

INSERT INTO musicianalbum VALUES (1, 1), (2, 1), (3, 2), (3, 3), (4, 2), (4, 3), (6, 4), (5, 4), (7, 5), (8, 6), (9, 7), (10, 8), (11, 9);

INSERT INTO trackcollection  VALUES (1, 5), (1, 9), (2, 9), (3, 3), (3, 9), (4, 4), (4, 9), (5, 2), (5, 9), (6, 2), (6, 9), 
                                    (7, 1), (7, 9), (8, 7), (8, 9), (9, 7), (9, 9), (10, 5), (10, 9), (11, 5), (11, 9), (12, 8), (12, 9), (13, 8), (13, 9), (14, 8), (14, 9), (15, 8), (16, 8), (17, 8);

