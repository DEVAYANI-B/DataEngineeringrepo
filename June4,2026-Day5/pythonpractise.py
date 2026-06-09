cities = ["Hyderabad", "Mumbai", "Delhi"]

print(cities[0])
print(cities[1])
print(cities[2])

print(cities[-1])
print(cities[-2])

cities[1] = "Bangalore"
print(cities)

cities.append("Chennai")
print(cities)

cities.insert(1, "Salem")
print(cities)

cities.extend(["Kochi", "Pondi"])
print(cities)

cities.remove("Chennai")
print(cities)

cities.pop(1)
print(cities)

del cities[4]
print(cities)

cities.clear()
print(cities)

print(len(cities))

cities = ["Hyderabad", "Mumbai", "Delhi"]

print("Delhi" in cities)
print("Chennai" in cities)

print(cities.index("Mumbai"))

sorted_cities = sorted(cities)
print(sorted_cities)

cities = ("Hyderabad", "Mumbai", "Delhi", "Chennai", "Pune")

print(cities)

print(cities[0])
print(cities[1])

print(cities[-1])
print(cities[-2])

print(len(cities))

print(cities[1:4])

employee = (101, "Rahul", "IT", 75000)

eid, name, dept, salary = employee

print(eid)
print(name)
print(salary)

def get_employee():
    return 102, "Rahul", "IT", 75000

print(get_employee())

cities = {"Hyderabad", "Mumbai", "Delhi", "Mumbai"}

print(cities)

cities.add("Chennai")
print(cities)

cities.update(["Delhi", "Pune"])
print(cities)

cities.remove("Mumbai")
print(cities)

cities.discard("Mumbai")
print(cities)

set1 = {"Python", "SQL"}
set2 = {"MongoDB", "Python"}

print(set1.union(set2))
print(set1.intersection(set2))
print(set1.difference(set2))
print(set1.symmetric_difference(set2))

customer = {
    "customer_id": 101,
    "name": "Rahul",
    "city": "Hyderabad"
}

print(customer)

print(customer["name"])
print(customer["city"])

print(customer.get("name"))
print(customer.get("salary"))

customer["salary"] = 75000
print(customer)

customer["name"] = "Rahul Sharma"
print(customer)

customer.pop("salary")
print(customer)

del customer["city"]

print(customer)