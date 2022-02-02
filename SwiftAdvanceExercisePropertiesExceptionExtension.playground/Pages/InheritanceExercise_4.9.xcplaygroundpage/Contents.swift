//Create one structure to show usage of mutating function in swift.

struct Circle {
    
    var radius = 4.0
    let PI = 3.14
    
    func area() -> Double {
        return PI * radius * radius
    }
    
    mutating func scaleBy(newradius: Double) {
        radius *= newradius
    }
    
}

var circObjStruct = Circle()

circObjStruct.area()
circObjStruct.scaleBy(newradius: 3.0)
circObjStruct.area()

// Expected Output : 50.24  452.16
