//Create one class as Base type Person which has common properties like name, occupation, etc. Create two child classes from the person which are Student, Employee and this two-child classes must have base properties and some other properties also. Example, student have college, but Employee have company. And demonstrate the usage of inheritance.

class Person {
    
    var name: String
    var occupation: String
    
    init(name: String, occupation: String) {
        self.name = name
        self.occupation = occupation
    }
    
    func disp(){}
    
}

class Student: Person {
    
    var college: String
    
    init(college: String,name: String, occupation: String) {
        self.college = college
        super.init(name: name, occupation: occupation)
    }
    
    override func disp() {
        print("Name: \(name) \nOccupation: \(occupation) \nCollege: \(college)")
    }
    
}

class Employee: Person {
    
    var company: String
    
    init(company: String,name: String, occupation: String) {
        self.company = company
        super.init(name: name, occupation: occupation)
    }
    
    override func disp() {
        print("Name: \(name) \nOccupation: \(occupation) \nCompany: \(company)")
    }
    
}

var objStudent = Student(college: "Gujarat University", name: "Chandrika", occupation: "Student")
objStudent.disp()
print()

var objEmployee = Employee(company: "Piramal Pharama Limited", name: "Chandrika", occupation: "Employee")
objEmployee.disp()
