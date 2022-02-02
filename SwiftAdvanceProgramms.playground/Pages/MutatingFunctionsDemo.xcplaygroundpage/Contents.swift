class Rectangle {
    
    var width = 2
    var height = 1
    
    func area() -> Int {
        return width * height
    }
    func scaleBy(value: Int) {
        width *= value
        height *= value
    }
    
}

let rectObjClass = Rectangle()
rectObjClass.area()
rectObjClass.scaleBy(value: 3)
rectObjClass.area()

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
