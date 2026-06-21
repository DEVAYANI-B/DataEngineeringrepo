USE energy_tracker;

DROP PROCEDURE IF EXISTS daily_usage_by_room;

DELIMITER //

CREATE PROCEDURE daily_usage_by_room(
    IN p_log_date DATE
)
BEGIN
    SELECT
        r.room_name,
        SUM(e.energy_kwh) AS total_kwh
    FROM energy_logs e
    JOIN devices d ON e.device_id = d.device_id
    JOIN rooms r ON d.room_id = r.room_id
    WHERE e.log_date = p_log_date
    GROUP BY r.room_name
    ORDER BY total_kwh DESC;
END //

DELIMITER ;

