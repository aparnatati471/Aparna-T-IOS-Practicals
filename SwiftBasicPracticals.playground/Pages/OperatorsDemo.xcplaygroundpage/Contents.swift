//Arithmetic Operator
var a = 20; var b = 11
print(a + b)
print(a - b)
print(a * b)
print(a / b)
print(a % b)
print(-a % b)
print(a % -b)//sign for b is ignored it means a%b and a%-b will give same result
print("hello" + "World")//+ is also concate the strings

//Unary Minus And Plus Operator
//Minus Operator
var A = 20
var minusA = -A
print(minusA)
var plusA = -minusA //-minus A is equal to A
print(plusA)

//Plus Operator
var plusa = +plusA
print(plusa)//the returns the exactly same value it operates on, without any change

//Compound Assignment Operator
plusa += 20//same as plusa=plusa+20
print(plusa)

//Comparison Operators
var c = 20; var d = 10
print(c == d)//returns true if both are equal otherwise false
//print(c!=d)//returns true if both are not equal otherwise false
print(c > d)//returns true if c greater than d otherwise false
print(c < d)//returns true if c less than d otherwise false
print(c >= d)//returns true if c greater or equal to d otherwise false
print(c <= d)//returns true if c less or equal to d otherwise false

//Ternary operator
print(c > d ? c : d)//it is shorthand for if statement

//Range Operator
//1. Closed Range Operator
//0 and 10 both are inclusive
for i in 0...10 {
    print(i)
}

//2.Half open range operator
//0 is inclusive but 10 is not inclusive so loop can be run n-1 times
for i in 0..<10 {
    print(i)
}

//3.One sided range operator moves in only one direction
//Example 1
let arr = [10, 20, 30, 40]
let len = arr.count

//print values from 2th index to end of array
for i in arr[2...] {
    print(i)
}

//Example 2
//print values from 0th index to 2th index
for i in arr[...2] {
    print(i)
}

//Example 3
//print values 0th index to n-1 index
for i in arr[..<2] {
    print(i)
}





