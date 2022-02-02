class Employee {
    
    var emp_id = 0
    var emp_name = ""
    
    init(emp_id: Int, emp_name: String) {
        self.emp_id = emp_id
        self.emp_name = emp_name
    }
    
}

var employee1 = Employee(emp_id: 1, emp_name: "ABC")
print("Id : \(employee1.emp_id) \nName : \(employee1.emp_name)")

var employee2 = Employee(emp_id: 2, emp_name: "DEF")

var employee3 = employee1

print(employee1 === employee3)
print(employee1 === employee2)
print(employee1 !== employee3)
