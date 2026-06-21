INSERT INTO rooms(room_name)
VALUES ('Living Room');

INSERT INTO devices(device_name,room_id,status)
VALUES ('Air Conditioner',1,'Active');

INSERT INTO energy_logs(device_id,energy_kwh,log_time)
VALUES (1,4.50,NOW());

SELECT * FROM devices;

UPDATE devices
SET status='Inactive'
WHERE device_id=1;

DELETE FROM energy_logs
WHERE log_id=1;