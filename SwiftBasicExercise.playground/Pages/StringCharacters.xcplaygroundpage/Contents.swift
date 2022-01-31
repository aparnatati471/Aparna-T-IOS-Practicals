//String Exercise 1
print("1.Create a new string made of a copy of the first two characters of a given string.")

var str = "Simform"
print("The First Two Characters of String \(str) is : ", str.count < 2 ? str : str.prefix(2))

//String Exercise 2
print("\n2.Create a new string without the first and last character of a given string. ")

if str.count >= 2 {
    str.removeFirst()
    str.removeLast()
    print("The String Without first and last char is : \(str)")
} else {
    print("String Length at least 2")
}

//String Exercise 3
print("\n3.Accept two strings and return their concatenation, except the first char of each string.")

var str1 = "Swift", str2 = "Examples"

print("The Concated String Without first char is : \(String(str1.dropFirst()) + str2)")

//String Exercise 4
print("\n4.To move the first two characters of a given string to the end.")

var str4 = "Swift"
let char1 = str4.removeFirst(), char2 = str4.removeFirst()

str4.append(char1); str4.append(char2)

print("The First two characters at the end of the string is : \(str4)")

//String Exercise 5
print("\n5.To test if a given string starts with Sw.")

var str5 = "Swift"
print("The String \(str5) has a prefix Sw : ",str5.hasPrefix("Sw"))

//String Exercise 6
print("\n6.Create a new string made of the first and last n chars from a given string.")

var str6 = "Simform Solutions"
print("New String made of the first and last 3 chars : \(str6.prefix(3) + str6.suffix(3))")
