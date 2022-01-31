//Variable exercise 1
print("1. Create variables of different types and print it")

var intNum: Int = 10
var floatNum: Float = 3.1233
var doubleNum: Double = 5.274681
var char: Character = "A"
var string: String = "Swift"
var boolean: Bool = true

print("Integer : \(intNum)")
print("Float : \(floatNum)")
print("Double : \(doubleNum)")
print("Character : \(char)")
print("String : \(string)")
print("Booleans : \(boolean)")

//Variable exercise 2
print("\n2. Create one integer and perform addition with 5 to that and print values")

var no1 = 10
print("Addition of \(no1) and 5 : \(no1 + 5)")

//Variable exercise 3
print("\n3. There is one constant with value of interest rate (15%) create one playground for calculate interest for given amount and duration ")

let interestRate = 15
var principle = 5000
var duration = 1
var simpleInterest = (principle * duration * interestRate) / 100

print("Interest Rate : ", interestRate,"\nPrinciple : ", principle,"\nDuration : ", duration,"\nSimple Interest : ", simpleInterest)
