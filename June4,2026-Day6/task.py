salaries = [45000, 55000, 65000, 75000, 85000]

print(salaries)

print(max(salaries))
print(min(salaries))

print(sum(salaries))

total_salary = sum(salaries)
average_salary = total_salary / len(salaries)
print(average_salary)

salaries.append(95000)
salaries.append(105000)
print(salaries)

salaries.remove(55000)
print(salaries)

salaries.sort()

salaries.sort(reverse=True)
print(salaries)

print(salaries[1])

for salary in salaries:
    if salary > 70000:
        print(salary)

employee = (
    101,
    "Rahul Sharma",
    "Data Engineering",
    75000
)

print(employee)
print(employee[1])
print(employee[2])

emp_id, emp_name, department, salary = employee

print(emp_name)
print(department)
print(emp_id)
print(salary)

print(len(employee))
print(employee[0])
print(employee[-1])

batch_a = {"Rahul", "Priya", "Amit", "Sneha", "Farhan"}
batch_b = {"Priya", "Sneha", "Neha", "Arjun", "Farhan"}

print(batch_a.intersection(batch_b))
print(batch_a.difference(batch_b))
print(batch_b.difference(batch_a))
print(batch_a.union(batch_b))
print(batch_a.symmetric_difference(batch_b))

employee_info = {
    "employee_id": 101,
    "name": "Rahul Sharma",
    "department": "Data Engineering",
    "salary": 75000,
    "city": "Hyderabad"
}

print(employee_info["name"])
print(employee_info["department"])
print(employee_info["city"])

employee_info["experience"] = 5
print(employee_info)

employee_info["salary"] = 85000
print(employee_info)

employee_info.pop("city")
print(employee_info)

print(employee_info.keys())
print(employee_info.values())
print(employee_info.items())

employees = [
    {"id": 101, "name": "Rahul", "department": "IT", "salary": 50000},
    {"id": 102, "name": "Priya", "department": "HR", "salary": 70000},
    {"id": 103, "name": "Amit", "department": "IT", "salary": 60000},
    {"id": 104, "name": "Sneha", "department": "Finance", "salary": 80000},
    {"id": 105, "name": "Farhan", "department": "IT", "salary": 90000}
]

for emp in employees:
    print(emp["name"])

for emp in employees:
    if emp["department"] == "IT":
        print(emp)

highest_salary = employees[0]

for emp in employees:
    if emp["salary"] > highest_salary["salary"]:
        highest_salary = emp

print(highest_salary)

lowest_salary = employees[0]

for emp in employees:
    if emp["salary"] < lowest_salary["salary"]:
        lowest_salary = emp

print(lowest_salary)

total = 0

for emp in employees:
    total += emp["salary"]

print(total)

average = total / len(employees)
print(average)

for emp in employees:
    if emp["salary"] > 70000:
        print(emp)

it_count = 0

for emp in employees:
    if emp["department"] == "IT":
        it_count += 1

print(it_count)

employees = sorted(employees, key=lambda x: x["salary"], reverse=True)

for emp in employees:
    print(emp["name"], emp["salary"])

print(employees[1])

departments = set()

for emp in employees:
    departments.add(emp["department"])

print(departments)