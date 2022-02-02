/*Closure : Some block of code that can directly assigned to some variable
Is like other type of functions which can be defined without func keyword and its name*/

import UIKit

//Closure Demo 1 without body
let closure1 = {}
closure1()

//Closure Demo 2 with body no parameter
let closure2 = {
    print("Hello Closure")
}
closure2()

//Closure Demo 3 with body and parameter no return value
let closure3: (String) -> () = { name in
    print(name.uppercased())
}
closure3("Hello Closure")

//Closure Demo 4 ShortHand Arguments
let closure: (String) -> () = {
    print("The First String is : \($0)")
}
closure("Swift Programming")

//Closure Demo 4 with body parameter and return value
let closure4: (String) -> (String) = { name in
    return name.lowercased()
}
let result = closure4("HELLO CLOSURE FOUR")
print(result)

//Closure Demo 5 With two parameters and return value
let closure5: (Int, Int) -> Int = { n1, n2 in
    return n1 + n2
}
print(closure5(10, 29))

//Closure Demo 6 ShortHand Argument Names
let closure6: (Int, Int) -> Int = {
    return $0 + $1
}
print(closure6(10, 29))

//The above Closure can be written as
let closure7: (Int, Int) -> Int = { $0 + $1 }
print(closure7(19, 20))

//Closure with two parameters and returns value
var greet: (String, String) -> String = { (time: String, language: String) -> String in
    return "Good \(time),\(language)"
}
print(greet("Morning", "Swift"))

//We can also write same closure like below also
var greeting: (String, String) -> String = { "Good \($0) , \($1)!" }
print(greeting("Evening", "SwiftUI"))

//Implicit Returns from closure : We can return the result of single expr without return statement
var square: (Int) -> Int = { $0 * $0 }
print(square(5))

//TypeAlias with Closure
typealias intParameter = (Int) -> Int

let squareOfNumber: intParameter = { $0 * $0 }
print(squareOfNumber(6))

//Closure as function parameter
func language(swift: () -> ()) {
    print("Let's learn the swift")
    swift()
}

language(swift: {
    print("Anyone can learn swift programming")
})

//Trailing Closure : Functions last argument is closure
//With No Parameter
func trailingClosure(demoClosure: () -> Void) {
    print("Will call Closure")
    demoClosure()
    print("Closure Called")
}

trailingClosure {
    print("Calling Closure")
}

//With Parameter
func trailingClosureWithParam(lang: String, demoClosureParam: (String) -> Void) {
    print("\(lang) will call closure")
    demoClosureParam(lang)
    print("\(lang) called closure")
}

trailingClosureWithParam(lang: "ABC") { lang in
    print(lang, "is Calling Closure")
}

//With parameter and return value
func trailingClosureWithParamReturn(lang: String, demoClosureParamReturn: (String) -> String) -> String {
    return demoClosureParamReturn(lang)
}

var whoIsCalling = trailingClosureWithParamReturn(lang: "Swift") { (lang) -> String in
    return lang
}

print(whoIsCalling)

//AutoClosure : It automatically creates a closure from an expression
func display(greet: @autoclosure () -> ()) {
    greet()
}

display(greet: print("Hello Swift"))

//Non Escaping Closure : Closure passed into function, the function executes the closure and the returns
func nonEscaping(closure: (String) -> Void) {
    print("Function Start")
    closure("Closure Called")
    print("Function End")
}

nonEscaping { (value) in
    print(value)
}

//Escaping Closure : Closure passed into function, it called after the function returns

//1. Async Calls
func escapingAsync(closure: @escaping (String) -> Void) {
    print("Function Start")
    DispatchQueue.main.asyncAfter(deadline: .now() + 2) {
        closure("Closure Called")
    }
    print("Function End")
}

escapingAsync{ (val) in
    print(val)
}

//2.Store the closures in global variables
var completionHandler: [() -> Void] = []
func escapingStore(closure: @escaping () -> Void) {
    print("Function Start")
    completionHandler.append(closure)
    print("Function End")
}

escapingStore {
    print("Hello Swift")
}

completionHandler[0]()
