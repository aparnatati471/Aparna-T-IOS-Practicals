//Extensions : Extends Functionality of class,structure or enumerations

//Extensions Demo 1 with Computed Properties And Class
class Perimeter {
    
    var a: Int = 0
    var b: Int = 0
    var c: Int = 0
    var d: Int = 0
    var radius: Double = 0.0
    
}

extension Perimeter {
    var squarePerimeter: Int { return 4 * a }
    var rectPerimeter: Int { return 2 * (a + b) }
    var trianglePerimeter: Int { return a + b + c }
    var parallelogramPerimeter: Int { return 2 * (a + b) }
    var isoscelesTrapezoidPerimeter: Int { return a + b + c + d }
    var rhombusPerimeter: Int { return 4 * a }
    var circlePerimeter: Double { return 3.14 * radius * radius }
}

let obj = Perimeter()

obj.a = 10
obj.b = 5
obj.c = 30
obj.d = 55
obj.radius = 15

print("Perimeter of Square : ", obj.squarePerimeter)
print("Perimeter of Rectangle : ", obj.rectPerimeter)
print("Perimeter of Triangle : ", obj.trianglePerimeter)
print("Perimeter of Parallelogram : ", obj.parallelogramPerimeter)
print("Perimeter of Isoceles Trapezoid : ", obj.isoscelesTrapezoidPerimeter)
print("Perimeter of Rhombus : ", obj.rhombusPerimeter)
print("Perimeter of Circle : ", obj.circlePerimeter)

//Extension With Methods
extension Int {
    mutating func square() {
        self = self * self
    }
}

var a = [1, 2, 124, 5, 2]
a.sorted()
print(a)

var no = 5
no.square()
print(no)

//Extension with subscripts
extension Int {
    subscript(decimal: Int) -> String {
        return String(self + decimal, radix: 2)
    }
}

print(10[1])

//Class Extension
class A {
    
    func dispA() {
        print("This is function to display A")
    }
    
}

extension A {
    func dispB() {
        print("This is function to display B")
    }
}

let objOfA = A()
objOfA.dispA()
objOfA.dispB()


