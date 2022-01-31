//Operator exercise 1
print("1. Create example for String concate using operators")

var str1 = "Hello"
var str2 = "Swift"

print("Concatenation Of Strings \(str1) and \(str2) is : \(str1 + str2)")

//Operator exercise 2
print("\n2. Create one example for show usage of operator's addition, multiplication, division for integers and floats")

print("\nFor Integers:")
var num1 = 20
var num2 = 10

print("Addition of \(num1) and \(num2) is : \(num1 + num2)")
print("Subtraction of \(num1) and \(num2) is : \(num1 - num2)")
print("Multiplication of \(num1) and \(num2) is : \(num1 * num2)")
print("Division of \(num1) and \(num2) is : \(num1 / num2)")

print("\nFor Floats:")
var no1 = 5.5
var no2 = 10.0

print("Addition of \(no1) and \(no2) is : \(no1 + no2)")
print("Subtraction of \(no1) and \(no2) is : \(no1 - no2)")
print("Multiplication of \(no1) and \(no2) is : \(no1 * no2)")
print("Division of \(no1) and \(no2) is : \(no1 / no2)")

//Operator exercise 3
print("\n3. What is turnery operator and show example of usage?")

var number1 = 10
var number2 = 5
var number3 = 20
var number4 = 30

//for two numbers
var res = number1 > number2 ? number1 : number2
print("Grater Number is : \(res)")

//for three numbers
var res1 = number1 > number2 && number1 > number3 ? number1 : number2 > number3 ? number2 : number3
print("Greater Number is : \(res1)")

//for Four numbers
var res2 = number1 > number2 && number1 > number3 && number1 > number4 ? number1 : number2 > number3 && number2 > number4 ? number2 : number3 > number4 ? number3 : number4
print("Greater Number is : \(res2)")
