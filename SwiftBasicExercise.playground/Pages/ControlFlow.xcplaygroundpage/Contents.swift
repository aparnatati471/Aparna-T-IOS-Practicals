//Control Flow Exercise 1
import Foundation
print("1.Print the powers of 2 that are less than or equal to 100.")

let powerLimit = 100
var num = 2

while num <= powerLimit {
    print(num)
    num *= 2
}

//Control Flow Exercise 2
print("\n2.Given an integer N draw a square of N x N asterisks")

let asteriskN = 3
let oneLine = String(repeating: "*", count: asteriskN)
print(String(repeating: oneLine + "\n", count: asteriskN))


//Control Flow Exercise 3
print("\n3.Given an integer N draw a triangle of asterisks. The triangle should have N lines, the i-th line should have i asterisks on it.")

let triangleN = 4
(1...triangleN).forEach { i in
    print(String(repeating: "*", count: i))
}

//Control Flow Exercise 4
print("\n4.Given an integer N draw a pyramid of asterisks. The pyramid should have N lines. On the i-th line there should be N-i spaces followed by i*2-1 asterisks.")

(1...triangleN).forEach { i in
    let leftSpacing = String(repeating: " ", count: triangleN - i)
    print(leftSpacing + String(repeating: "*", count: i))
}

//Control Flow Exercise 4
print("\n5.You are given a number. Print prime if the number is a prime and not prime otherwise. A number is a prime if it has exactly 2 distinct divisors (1 and itself).")

var number = 5
var isPrime = true

if number == 2 || number == 3 {
    print("\(number) is prime")
} else {
    for i in 2..<number / 2 {
        if number % i == 0 {
            isPrime = false
            break
        }
    }
    print(isPrime == true ? "\(number) is Prime" : "\(number) is Not Prime")
}


