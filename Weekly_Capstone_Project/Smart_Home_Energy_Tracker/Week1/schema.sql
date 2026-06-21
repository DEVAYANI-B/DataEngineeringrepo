CREATE DATABASE IF NOT EXISTS energy_tracker;
USE energy_tracker;

DROP TABLE IF EXISTS energy_logs;
DROP TABLE IF EXISTS devices;
DROP TABLE IF EXISTS rooms;

CREATE TABLE rooms (
    room_id     INT AUTO_INCREMENT PRIMARY KEY,
    room_name   VARCHAR(50) NOT NULL UNIQUE
);

CREATE TABLE devices (
    device_id    INT AUTO_INCREMENT PRIMARY KEY,
    device_name  VARCHAR(100) NOT NULL,
    room_id      INT NOT NULL,
    status       ENUM('on','off') DEFAULT 'off',
    CONSTRAINT fk_device_room FOREIGN KEY (room_id) REFERENCES rooms(room_id)
);

CREATE TABLE energy_logs (
    log_id       INT AUTO_INCREMENT PRIMARY KEY,
    device_id    INT NOT NULL,
    energy_kwh   DECIMAL(8,3) NOT NULL,
    log_date     DATE NOT NULL,
    log_hour     TINYINT NOT NULL,   
    CONSTRAINT fk_log_device FOREIGN KEY (device_id) REFERENCES devices(device_id)
);
