//Steps for Error Handling in swift
//1. Create a enum that represents the types of errors
enum DivisionError: Error {
    
    case divideByZero
    
}

//2.In order to throw errors, we need to create a throwing function using the throws keyword
func division(numerator: Int, denominator: Int) throws {
    if denominator == 0 {
        throw DivisionError.divideByZero
    } else {
        let res = numerator / denominator
        print(res)
    }
}

//3.Call the function using the try keyword.
do {
  try division(numerator: 10, denominator: 0)
  print("Division Operation Suceessfull")
} catch DivisionError.divideByZero {
  print("Error: Denominator cannot be 0")
}

//We can also disable error handling
try! division(numerator: 10,denominator: 5)

//Converting erroes to optional values
//use try? before function calling
//If error thrown then it returns nil otherwise returns value

let result = try? division(numerator: 10, denominator: 0)
print(result)

let res = try? division(numerator: 10, denominator: 5)
