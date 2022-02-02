//Create a swift class with an initializer in a manner that you can create this class using initializing value. And one function which takes int input and returns the power of class instance.
import Darwin
class ClassExerciseSeven {
    
    var num: Double
    var result: Double = 0
    
    init(num: Double) {
        self.num = num
    }
    
    func doPower(power: Double) {
        result = pow(self.num, power)
        print("The power \(power) of \(num) is : \(result)")
    }
    
}

var objPowerOfNum = ClassExerciseSeven(num: 5)
objPowerOfNum.doPower(power: 3) // Expected output : num ^ power


