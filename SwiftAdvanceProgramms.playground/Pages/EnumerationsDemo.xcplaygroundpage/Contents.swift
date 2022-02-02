//Enumeration : User Defined type
enum ContractStatus {
    
    case permanent, temp, apprentice
    
}

var empType = ContractStatus.permanent
print(empType)

empType = .temp
print(empType)

//Enumeration With Switch Cases
switch empType {
    case .permanent:
        print("You are a permanent type of employee")
    case .temp:
        print("You are a temporary type of employee")
    case .apprentice:
        print("You are a apprentice type of employee")
}

//Enumeration with raw value
enum Languages: String {
    
    case C = "Procedure Programming Language"
    case Java = "Object Oriented Programming Language"
    case PHP = "Scripting Language"
    
}

var lang = Languages.PHP

switch lang {
    case .C: print(lang.rawValue)
    case.Java: print(lang.rawValue)
    case .PHP: print(lang.rawValue)
}

//Enumeration with CaseIterable
enum Car: CaseIterable {
    
    case MarutiSuzuki, Tata, BMW, Mercedes
    
}

for car in Car.allCases {
    print(car)
}

print(Car.allCases.count)

//Enumeration with associated Values
enum Student {
    
    case Name(String)
    case Marks(Int, Int)
    
}

var stuDetails = Student.Name("ABC")
stuDetails = Student.Marks(50, 100)

switch stuDetails {
    case .Name(let name):
        print("Student Name : \(name)")
    case .Marks(let mark1, let mark2):
        print("Student Marks Are : \(mark1) \(mark2)")
}
