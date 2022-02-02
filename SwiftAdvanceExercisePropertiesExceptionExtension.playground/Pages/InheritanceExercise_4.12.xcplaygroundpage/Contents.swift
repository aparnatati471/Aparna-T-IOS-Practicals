//Create one swift class which is having class method and static method. Then in one child class try to override that methods and check the output/ error. (you will learn difference between class and static)

class Base {
    
    static func staticTypeMethod() {
        print("Static Type Method In Base Class")
    }
    
    class func classTypeMethod() {
        print("Class Type Method In Base Class")
    }
    
}

class Child: Base {
    //Can not override static method
    override static func staticTypeMethod() {
        print("Static Type Method In Child Class")
    }
    
    override class func classTypeMethod() {
        print("Class Type Method In Child Class")
    }
    
}

let objChild = Child()
objChild.staticTypeMethod()
objChild.classTypeMethod()

