//Intialization Demo 1
import CoreGraphics
struct rectangle {
    
    var length: Double
    var breadth: Double
    
    init() {
        length = 6
        breadth = 12
    }
    
    var area: Double {
        length * breadth
    }
    
}

var area = rectangle()
print("Area of Rectangle is \(area.area)")

//We can also do above demo
struct rectangleTwo {
    
    var length: Double = 6
    var breadth: Double = 12
    
}

var areaRectObj = rectangleTwo()
print("Area of Rectangle is \(areaRectObj.length * areaRectObj.breadth)")

//A class can have more than one init()
//swift compiler will decide which init method to call based on the argument label
class User {
    
    var userName: String
    var userType: String
    
    init(userName: String) {
        self.userName = userName
        self.userType = "Developer"
    }
    
    init(userName: String, userType: String) {
        self.userName = userName
        self.userType = userType
    }
    
}

let developer = User(userName: "ABC")
let tester = User(userName: "PQR", userType: "QA")

//If we dont want to use argument label for initializer parametr write underscore
class Tester {
    
    var username: String
    var usertype: String
    
    init(_ username: String, _ usertype: String) {
        self.username = username
        self.usertype = usertype
    }
    
}

let testerObj =  Tester("ABC", "QA")

//Optional Property Types And Constant Intialization
class QueAns {
    
    let ques: String
    var ans: String?
    
    init(ques: String) {
        self.ques = ques
    }
    
    func disp() {
        print(ques)
    }
    
}

let question = QueAns(ques: "Do you like to do programming?")
question.disp()
question.ans = "Yes, I like to do programming"
print(question.ans ?? "I don't know answer")

//Default Intializer
class Default {

    var name: String
    
    init(name: String = "Default") {
        self.name = name
    }
    
}

let defaultObj = Default()
defaultObj.name = "Aparna"
print(defaultObj.name)

//Memberwise Initializer
struct Memberwise {
    
    var fname = ""
    var lname = ""
    
}

let memberObj = Memberwise(fname: "Aba", lname: "BAB")
print("\(memberObj.fname + memberObj.lname)")

//Failable Initializer
struct Failable {
    
    let str : String
    init?(str: String) {
        if str.isEmpty { return nil }
        self.str = str
    }
    
}

let failObj: Failable? = Failable(str: "")
print(failObj?.str)

//Initializer Types
//1. Class Have Default initializer and called without creating objects
class Person {
    
    var name: String
    var age: Int?
    
    init() {
        name = "None"
    }
    
}

let a = Person()
print(a.name)

//2.Designated Intializers & Conveneince Intializers
class A {
    
    var a: Int
    
    init(a: Int) {
        self.a = a
    }
    
    convenience init() {
        self.init(a: 10)
    }
    
}

let objA = A()//Call the convenience init
let objA1 = A(a: 20)//Call the designated init

//3.Required Intializers
class ClassA {
    
    required init() {
        let a = 10
        print(a)
    }
    
}

class ClassB : ClassA {
    
    required init() {
        let b = 20
        print(b)
    }
    
}

class ClassC : ClassB {}

let classAObj = ClassA()
let classBObj = ClassB()
let classCObj = ClassC()


