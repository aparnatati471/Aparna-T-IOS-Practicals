//Inheritance Demo 1
class Parent {
    
    func parentDisp() {
        print("This is a Parent Class method")
    }
    
}

class Child: Parent {
    
    func childDisp() {
        print("This is a Child Class method")
    }
    
}

var childObj = Child()

childObj.parentDisp()
childObj.childDisp()

//Inheritance Demo 2
class FirstName {
    
    var firstName: String = " "
    var lastName: String = " "
    
}

class LastName: FirstName {
    
    func displayName() {
        print("\(firstName) \(lastName)")
    }
    
}

var nameObj = LastName()

nameObj.firstName = "Aparna"
nameObj.lastName = "Tati"
nameObj.displayName()

//Super Keyword : Aceess parent class constructor properties functions
class Animal {
    
    func eat() {
        print("I can eat")
    }
    
}

class Dog: Animal {
    
    override func eat() {
        super.eat()
        print("I eat Dog food")
    }
    
}

var dogObj = Dog()
dogObj.eat()
