DELIMITER //

CREATE PROCEDURE GetDailyEnergyUsage()
BEGIN
    SELECT
        r.room_name,
        DATE(e.log_time) AS usage_date,
        SUM(e.energy_kwh) AS total_energy
    FROM energy_logs e
    JOIN devices d
        ON e.device_id=d.device_id
    JOIN rooms r
        ON d.room_id=r.room_id
    GROUP BY r.room_name,DATE(e.log_time);
END //

DELIMITER ;