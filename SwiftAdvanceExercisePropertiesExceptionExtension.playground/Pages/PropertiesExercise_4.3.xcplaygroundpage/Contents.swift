//Create a swift program to show usage of stored properties.

class PropertiesExerciseThree {
    
    var empName: String
    var empAge: Int
    
    init(empName: String, empAge: Int) {
        self.empName = empName
        self.empAge = empAge
    }
    
}

var objPropThree = PropertiesExerciseThree(empName: "Abc", empAge: 22)
print("Employee Name : \(objPropThree.empName) \nEmployee Age : \(objPropThree.empAge)") // Expected Output: Abc 22

