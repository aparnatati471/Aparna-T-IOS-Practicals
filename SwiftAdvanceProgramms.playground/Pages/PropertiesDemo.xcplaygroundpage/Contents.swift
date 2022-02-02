//Properties : A constants and variables which are in class structure and enumerations

//1.Stored Property in Class
class Person {
    
    var name: String = "person1"
    var age: Int = 20
    
}

let personObj = Person()

personObj.name = "Person2"
personObj.age = 21

print("Name : \(personObj.name) \nAge : \(personObj.age)")

//2.Same thing is not true for structure
struct PersonDetails {
    
    var name: String = "person1"
    var age: Int = 20
    
}

let personObjStruct = PersonDetails()
print("Name : \(personObjStruct.name) \nAge : \(personObjStruct.age)")


//3.Computed Property : Does not store data but it provides getter and setter to reterieve and set other properties

//Computed Property Demo 1
class Student {
    
    var name: String
    var age: Int
    var department: String
    var intro: String {
        "Hello..Good Morning All of You.I am \(name) and I am \(age) years old.I am in \(department) Department"
    }
    
    init(name: String, age: Int, department: String) {
        self.name = name
        self.age = age
        self.department = department
    }
    
}

var studentObj = Student(name: "ABC", age: 21, department: "Computer")
print(studentObj.intro)

//Computed Property Demo 2
class AdditionWithGet {
    
    var num1: Int = 0
    var num2: Int = 0
    var sum: Int {
        num1 + num2
    }
    
}

var addObj = AdditionWithGet()
print(addObj.sum)

addObj.num1 = 20
print(addObj.sum)

addObj.num2 = 20
print(addObj.sum)

//Computed Property Demo 3
class AddWithGetterSetter {
    
    var num1: Int = 0
    var num2: Int = 0
    var sum: Int {
        get {
            num1 + num2
        }
        set(modifiedVal) {
            num1 = modifiedVal + 20
            num2 = modifiedVal + 10
        }
    }
    
}
var addWithGetSetObj = AddWithGetterSetter()

addWithGetSetObj.num1 = 20
addWithGetSetObj.num2 = 50

print("Get Value: ",addWithGetSetObj.sum)

addWithGetSetObj.sum = 5

print("Modified Num1 Value : \(addWithGetSetObj.num1)")
print("Modified Num2 Value : \(addWithGetSetObj.num2)")

//Property Observer : observe and respond to changes in a property’s value
//willSet is called just before the value is stored.
//didSet is called immediately after the new value is stored.

class PropertyObserver {
    
    var number: Int = 0 {
        willSet {
            print("Changed Number \(number) to \(newValue)")
        }
        didSet {
            print("Number \(number)")
        }
    }
    
}

let objPropertyObserver = PropertyObserver()

objPropertyObserver.number = 20

objPropertyObserver.number = 30

//Lazy Stored Property whose memory will be allocated only when the variable is actually used

//Without Lazy property
class Greet {
    
    init() {
        print("Greet Class Intialized")
    }
    
}

class Toperson {
    
    var greetObj = Greet()
    init() {
        print("Toperson Class Intialized")
    }
    
}

var toPersonObj = Toperson()

//With Lazy Property
class GreetWithLazy {
    
    init() {
        print("Greet Class Intialized")
    }
    
}

class TopersonWithLazy {
    
    lazy var greetObj = GreetWithLazy()
    
    init() {
        print("Toperson Class Intialized")
    }
    
}

var toPersonObjLazy = TopersonWithLazy()
toPersonObjLazy.greetObj
