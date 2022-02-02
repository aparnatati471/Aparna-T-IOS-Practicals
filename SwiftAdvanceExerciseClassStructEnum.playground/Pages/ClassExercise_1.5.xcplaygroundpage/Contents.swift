//Create a swift class example to show use of swift inheritance. Your base class has some property access this property. In two different child classes and show its usage using the instances of both child classes.

class Parent {
    
    var numberOne = 1
    var name = "Aparna"
    
}

class ChildOne: Parent {
    
    var numberTwo = 2
    
}

class ChildTwo: ChildOne {
    
    var numberThree = 3
    
}

var objChildOne = ChildOne()
var objChildTwo = ChildTwo()

//Access Property of Parent by object of ChildOne Class
print("Parent Class Property: \(objChildOne.numberOne) \(objChildOne.name)") // Expected Output : 1 Aparna

//Access Property of Parent and ChildOne Class by object of ChildTwo Class
print("Parent Class Property: \(objChildTwo.numberOne) \(objChildTwo.name)") // Expected Output : 1 Aparna

print("ChildOne Class Property: \(objChildTwo.numberOne)") // Expected Output : 1
print("ChildTwo Class Property: \(objChildTwo.numberThree)") // Expected Output : 3
