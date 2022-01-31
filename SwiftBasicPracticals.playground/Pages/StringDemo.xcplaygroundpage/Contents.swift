//Creation of String

//1.using literal
var strA = "Hello Swift"

//2.using instance
var strB = String("Hello IOS")

print(strA)
print(strB)

//Multiline String
var strC = """
This is an
example of
Multiline String
"""
print(strC)

//Empty String creation
var strD = ""//using literal
var strE = String() //using instance

//isEmpty returns true if string is empty
print(strE)
if strD.isEmpty {
    print("strD is empty")
}

//Operations
var str1 = "Hello"
var str2 = "World"

print(str1 + str2)//concate two strigs
print(str1.count)//length of string
print(str1 == str2)//comparision of strings

//String Iteration
for chars in str2 {
    print(chars, terminator: " ")
}
print()

print(str2.hasPrefix("Wo"))
print(str2.hasSuffix("d"))
str1 += str2 //Append String
print(str1)
print(str1.uppercased())//convert to uppercase
print(str1.lowercased())//convert to lowercase
print(str2.removeLast())//remove last character
print(str2)
print(str2.removeFirst())//remove first character
print(str2)

//Insert character or more than one character in string
str1.insert("!", at: str1.endIndex)
print(str1)

str1.insert(contentsOf: " I am Swift", at: str1.index (before: str1.endIndex))
print(str1)

//Remove one character and more than one character in string
str2.remove(at: str2.index(before: str2.endIndex))
print(str2)

str2.remove(at: str2.index(after: str2.startIndex))
print(str2)

let range = str1.index(str1.endIndex,offsetBy: -11)..<str1.endIndex
str1.removeSubrange(range)
print(str1)

var fruits = ["apple", "banana", "cherry", "mango"]
 
if let i = fruits.firstIndex(of: "cherry") {
    fruits[i] = "guava"
}
 
print(fruits)

