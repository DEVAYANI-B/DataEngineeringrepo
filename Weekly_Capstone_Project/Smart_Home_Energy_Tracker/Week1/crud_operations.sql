USE energy_tracker;
INSERT INTO devices (device_name, room_id, status)
VALUES ('Microwave', 2, 'off');
SELECT d.device_id, d.device_name, r.room_name, d.status
FROM devices d
JOIN rooms r ON d.room_id = r.room_id
ORDER BY r.room_name;
UPDATE devices
SET status = 'on'
WHERE device_id = 3;
DELETE FROM energy_logs
WHERE log_id = 16;

SELECT d.device_name, SUM(e.energy_kwh) AS total_kwh
FROM energy_logs e
JOIN devices d ON e.device_id = d.device_id
GROUP BY d.device_name
ORDER BY total_kwh DESC;
