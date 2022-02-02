import Darwin

//Instance Methods : Those method which are in class
class IncrementDecrement {
    
    var count = 0
    
    //Instance Methods
    func increment() {
        count += 1
    }
    func increment(by amount: Int) {
        count += amount
    }
    func decrement() {
        count -= 1
    }
    func decrement(by amount: Int) {
        count -= amount
    }
    func reset() {
        count = 0
    }
    
}

var obj = IncrementDecrement()

obj.increment()
obj.increment(by: 5)
obj.decrement()
obj.decrement(by: 2)
obj.reset()
obj.increment(by: 5)

//Mutating Value Types from within instance methods
struct MutatingValues {
    
    var n1 = 0, n2 = 0
    
    mutating func mutateValue(n1 number1: Int, n2 number2: Int) {
        n1 += number1
        n2 += number2
    }
    
}

var mutateValObj = MutatingValues()

mutateValObj.n1 = 2
mutateValObj.n2 = 4
print("\(mutateValObj.n1) \(mutateValObj.n2)")

mutateValObj.mutateValue(n1: 6, n2: 8)
print("\(mutateValObj.n1) \(mutateValObj.n2)")

//Type Methods : Those methods are called without objects
class Math {
    
    class func abs(number: Int) -> Int {
        
        if number < 0 {
            return (-number)
        } else {
            return number
        }
        
    }
    
}

struct AbsNo {
    
    static func abs(number: Int) -> Int {
        if number < 0 {
            return (-number)
        } else {
            return number
        }
    }
    
}

let no = Math.abs(number: -76)
let num = AbsNo.abs(number: -7)

print(no)
print(num)
