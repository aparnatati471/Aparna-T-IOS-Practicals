//Protocols :  blueprint for Methods, properties and other requirements functionality.

//Protocol Demo 1 On properties With get
protocol FullName {
    var fullName: String { get }
}

struct Person: FullName {
    
    var fullName: String
    
}

let personObj = Person(fullName: "Aparna Tati")
print(personObj.fullName)

//Protocol Demo 2 On properties With get and set
protocol Num {
    var no: Int { get set }
}

struct DisplayNo: Num {
    
    var no: Int
    
}

var noObj = DisplayNo(no: 10)
print(noObj.no)
noObj.no = 12
print(noObj.no)

//Protocol Demo 3 With Methods
protocol Greet {
    var name : String { get }
    func message()
}

class Employee: Greet {
    
    var name = "ABC"
    func message() {
        print("Good Morning", name)
    }
    
}

var empObj = Employee()
empObj.message()

//Protocol Demo 4 With Multiple Protocols
protocol Sum {
    func addition()
}

protocol Multiplication {
    func product()
}

class Calculate: Sum, Multiplication {
    
    var num1 = 0
    var num2 = 0
    
    func addition() {
        print("Addition of \(num1) and \(num2) : \(num1 + num2)")
    }
    func product() {
        print("Multiplication of \(num1) and \(num2) : \(num1 * num2)")
    }
    
}

var calcObj = Calculate()

calcObj.num1 = 10
calcObj.num2 = 5

calcObj.addition()
calcObj.product()

//Protocol Demo 4 With Inheritance
protocol Parent {
    var parentProperty: String { get }
}

protocol Child: Parent {
    var childProperty: String { get }
}

class ParentChild: Child {
    
    var parentProperty = "This is a parent property"
    var childProperty = "This is a child property"
    
}

var obj = ParentChild()
print(obj.parentProperty)
print(obj.childProperty)

//Protocol Demo 5 With Extensions
extension Parent {
    func disp() {
        print(parentProperty)
    }
}

obj.disp()
