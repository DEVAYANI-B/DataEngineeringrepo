use smart_home_energy
db.createCollection("sensor_logs")
db.sensor_logs.insertMany([
{
device_id:1,
timestamp:"2026-06-01 08:00:00",
energy_kwh:2.5,
temperature:28
},
{
device_id:2,
timestamp:"2026-06-01 09:00:00",
energy_kwh:1.8,
temperature:27
}
])

db.sensor_logs.createIndex({device_id:1})
db.sensor_logs.createIndex({timestamp:1})