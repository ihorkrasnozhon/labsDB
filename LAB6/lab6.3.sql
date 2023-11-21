SET NAMES utf8;
SET time_zone = '+00:00';
SET foreign_key_checks = 0;
SET sql_mode = 'NO_AUTO_VALUE_ON_ZERO';

DROP TABLE IF EXISTS stations;
DROP TABLE IF EXISTS metro_lines;

CREATE TABLE metro_lines (
    id INT PRIMARY KEY AUTO_INCREMENT,
    name VARCHAR(255) NOT NULL,
    color VARCHAR(20) NOT NULL
);

CREATE TABLE stations (
    id VARCHAR(10) PRIMARY KEY,
    name VARCHAR(255) NOT NULL,
    line_id INT NOT NULL,
    FOREIGN KEY (line_id) REFERENCES metro_lines(id),
    transfer_to_station_id INT DEFAULT NULL
);

INSERT INTO metro_lines(name, color) VALUES
('Холодногірсько-Заводська' , 'Червоний'),
('Салтівська' , 'Синій'),
('Олексіївська' , 'Зелений');

INSERT INTO stations(id, name, line_id, transfer_to_station_id)
VALUES
('1.01', 'Холодна гора' , 1, NULL),
('1.02', 'Південний вокзал' , 1, NULL),
('1.03', 'Центральний ринок' , 1, NULL),
('1.04', 'Майдан Конституції' , 1, 12),
('1.05', 'Проспект Гагаріна' , 1, NULL),
('1.06', 'Спортивна' , 1, 20),
('1.07', 'Турбоатом' , 1, NULL),
('1.08', 'Дворець спорта' , 1, NULL),
('1.09', 'Армійська' , 1, NULL),
('1.10', 'Тракторний завод' , 1, NULL),
('1.11', 'Індустріальна' , 1, NULL),
('2.01', 'Історичний музей' , 2, 4),
('2.02', 'Університет' , 2, 23),
('2.03', 'Пушкінська' , 2, NULL),
('2.04', 'Київська' , 2, NULL),
('2.05', 'Академіка Барабашова' , 2, NULL),
('2.06', 'Академіка Павлова' , 2, NULL),
('2.07', 'Студентська' , 2, NULL),
('2.08', 'Героїв Праці' , 2, NULL),
('3.01', 'Метробудівників' , 3, 6),
('3.02', 'Захисників України' , 3, NULL),
('3.03', 'Архітектора Бекетова' , 3, NULL),
('3.04', 'Держпром' , 3, 13),
('3.05', 'Наукова' , 3, NULL),
('3.06', 'Ботанічний сад' , 3, NULL),
('3.07', '23 Серпня' , 3, NULL),
('3.08', 'Олексіївська' , 3, NULL),
('3.09', 'Перемога' , 3, NULL);

