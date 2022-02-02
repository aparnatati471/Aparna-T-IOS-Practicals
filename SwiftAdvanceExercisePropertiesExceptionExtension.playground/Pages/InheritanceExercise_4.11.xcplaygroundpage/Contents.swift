//Create one swift class to show usage of type methods.

struct Shape {
    
    static func type() {
        print("Static Type Method")
    }
    
}
Shape.type()

class Circle {
    
    class func circleTypeMethod() {
        print("Circle Type Method")
    }
    
}

class InheritedCircle: Circle {
    
    override class func circleTypeMethod() {
        print("Inherited Circle Type Method")
    }
    
}

InheritedCircle.circleTypeMethod()

//Expected Output : Static Type Method Inherited Circle Type Method

