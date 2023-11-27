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
    previous_station varchar(255),
    next_station varchar(255),
    FOREIGN KEY (line_id) REFERENCES metro_lines(id),
    transfer_to_station_id INT DEFAULT NULL
);

CREATE TABLE connections (
  station_id_1 int(10) UNSIGNED NOT NULL,
  station_id_2 int(10) UNSIGNED NOT NULL,
  FOREIGN KEY (station_id_1) REFERENCES stations(id),
  FOREIGN KEY (station_id_2) REFERENCES stations(id)
);

