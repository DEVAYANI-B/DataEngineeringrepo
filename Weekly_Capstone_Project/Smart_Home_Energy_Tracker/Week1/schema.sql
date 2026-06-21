
CREATE DATABASE smart_home_energy;

USE smart_home_energy;

CREATE TABLE rooms (
    room_id INT PRIMARY KEY AUTO_INCREMENT,
    room_name VARCHAR(50)
);

CREATE TABLE devices (
    device_id INT PRIMARY KEY AUTO_INCREMENT,
    device_name VARCHAR(50),
    room_id INT,
    status VARCHAR(20),
    FOREIGN KEY (room_id) REFERENCES rooms(room_id)
);

CREATE TABLE energy_logs (
    log_id INT PRIMARY KEY AUTO_INCREMENT,
    device_id INT,
    energy_kwh DECIMAL(10,2),
    log_time DATETIME,
    FOREIGN KEY (device_id) REFERENCES devices(device_id)
);