use("energy_tracker");

db.sensor_logs.drop();

db.sensor_logs.insertMany([
  { device_id: 1, timestamp: new Date("2026-01-01T14:00:00Z"), reading_kwh: 2.500, sensor_status: "ok" },
  { device_id: 1, timestamp: new Date("2026-01-01T20:00:00Z"), reading_kwh: 2.300, sensor_status: "ok" },
  { device_id: 2, timestamp: new Date("2026-01-01T00:00:00Z"), reading_kwh: 1.100, sensor_status: "ok" },
  { device_id: 2, timestamp: new Date("2026-01-01T12:00:00Z"), reading_kwh: 1.050, sensor_status: "ok" },
  { device_id: 3, timestamp: new Date("2026-01-01T09:00:00Z"), reading_kwh: 0.900, sensor_status: "ok" },
  { device_id: 4, timestamp: new Date("2026-01-01T19:00:00Z"), reading_kwh: 0.300, sensor_status: "ok" },
  { device_id: 5, timestamp: new Date("2026-01-01T07:00:00Z"), reading_kwh: 3.200, sensor_status: "ok" },
  { device_id: 1, timestamp: new Date("2026-01-02T15:00:00Z"), reading_kwh: 2.700, sensor_status: "ok" },
  { device_id: 2, timestamp: new Date("2026-01-02T01:00:00Z"), reading_kwh: 1.150, sensor_status: "ok" },
  { device_id: 3, timestamp: new Date("2026-01-02T10:00:00Z"), reading_kwh: 1.000, sensor_status: "ok" },
  { device_id: 4, timestamp: new Date("2026-01-02T21:00:00Z"), reading_kwh: 0.250, sensor_status: "low_battery" },
  { device_id: 5, timestamp: new Date("2026-01-02T08:00:00Z"), reading_kwh: 3.100, sensor_status: "ok" },
  { device_id: 1, timestamp: new Date("2026-01-03T13:00:00Z"), reading_kwh: 2.400, sensor_status: "ok" },
  { device_id: 2, timestamp: new Date("2026-01-03T11:00:00Z"), reading_kwh: 1.080, sensor_status: "ok" },
  { device_id: 4, timestamp: new Date("2026-01-03T22:00:00Z"), reading_kwh: 0.350, sensor_status: "ok" }
]);

db.sensor_logs.createIndex({ device_id: 1 });
db.sensor_logs.createIndex({ timestamp: -1 });

print("Sensor logs for device 1:");
db.sensor_logs.find({ device_id: 1 }).pretty();
