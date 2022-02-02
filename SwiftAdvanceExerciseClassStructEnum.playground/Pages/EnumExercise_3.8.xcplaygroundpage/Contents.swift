//Create an enum with its rawValues of type String and show usage of case to print value of case.

//Note : Here definition repeating so i implemented recursive enumerations instead of it

// recursive enumerations
indirect enum ArithmeticExpression {
    
    case number(Int)
    case addition(ArithmeticExpression, ArithmeticExpression)
    case multiplication(ArithmeticExpression, ArithmeticExpression)
    
}

let three = ArithmeticExpression.number(3)
let four = ArithmeticExpression.number(4)
let add = ArithmeticExpression.addition(three, four)
let result = ArithmeticExpression.multiplication(add, ArithmeticExpression.number(2))

func evaluate(_ expression: ArithmeticExpression) -> Int {
    switch expression {
        case let .number(value):
            return value
        case let .addition(left, right):
            return evaluate(left) + evaluate(right)
        case let .multiplication(left, right):
            return evaluate(left) * evaluate(right)
    }
}
  
print(evaluate(result)) // Expected Output : 14
