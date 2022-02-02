//Create a swift program to demonstrate usage of swift class for usage of multiple initializers. Create one initializer with two parameters your name and college and another initializer with your name and department. You can be able to access these properties using instance of class.

class ClassExerciseTwo {
    
    var name: String = ""
    var college: String = ""
    var department: String = ""
    
    init(name: String, college: String) {
        self.name = name
        self.college = college
    }
    
    init(name: String, department: String) {
        self.name = name
        self.department = department
    }
    
}

var objOne = ClassExerciseTwo(name: "Aparna", college: "VGEC")
var objTwo = ClassExerciseTwo(name: "Aparna", department: "Computer")
    
print("Name: \(objOne.name)\nDepartment: \(objTwo.department)\nCollege: \(objOne.college)")

// Expected Output : Aparna Computer VGEC
