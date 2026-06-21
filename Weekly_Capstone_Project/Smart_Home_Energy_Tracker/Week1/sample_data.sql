USE energy_tracker;

INSERT INTO rooms (room_name) VALUES
('Living Room'),
('Kitchen'),
('Bedroom'),
('Garage');

INSERT INTO devices (device_name, room_id, status) VALUES
('Air Conditioner', 1, 'on'),
('Refrigerator', 2, 'on'),
('Washing Machine', 4, 'off'),
('Television', 1, 'on'),
('Water Heater', 3, 'off');

INSERT INTO energy_logs (device_id, energy_kwh, log_date, log_hour) VALUES
(1, 2.500, '2026-01-01', 14),
(1, 2.300, '2026-01-01', 20),
(2, 1.100, '2026-01-01', 0),
(2, 1.050, '2026-01-01', 12),
(3, 0.900, '2026-01-01', 9),
(4, 0.300, '2026-01-01', 19),
(5, 3.200, '2026-01-01', 7),
(1, 2.700, '2026-01-02', 15),
(2, 1.150, '2026-01-02', 1),
(3, 1.000, '2026-01-02', 10),
(4, 0.250, '2026-01-02', 21),
(5, 3.100, '2026-01-02', 8),
(1, 2.400, '2026-01-03', 13),
(2, 1.080, '2026-01-03', 11),
(4, 0.350, '2026-01-03', 22);
