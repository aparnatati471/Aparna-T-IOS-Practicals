import Foundation
print("Array")

//Array Declarations
//1.empty array
var arr = [Int]()
var arr1: [Int] = []

//2.Array with Values
var arr2 = [1, 2, 3]

//3.If we need array preinitialized with default values use below line
var arr3 = Array(repeating: 0, count: 5)
print(arr3)

//Accessing Array Elements
//1.for loop
for ele in arr2 {
    print(ele)
}

//2.forEach loop
arr2.forEach { ele in
    print(ele)
}

//isEmpty is used to check array empty or not
print(arr.isEmpty ? 1 : 0)

if let first = arr2.first , let last = arr2.last {
    print(first, last, separator: ",")
}

//We can access individual elements using subscript [index]
print(arr2[0], arr2[1], separator: ",")

//Add single element
arr2.append(4)

//Add Multiple Elements
arr2.append(contentsOf: [5, 6])

//We can insert one element at anywhere in array using insert method
arr2.insert(7, at: 2)

//We can insert multiple element at anywhere in array using insert method
arr2.insert(contentsOf: [8, 9], at: 3)

//Remove one element
arr2.remove(at: 3)

arr2.removeFirst()
arr2.removeLast()

//Remove from 0th index to 1st index
arr2.removeSubrange(0...1)

print(arr2)

arr2.append(9)
//we can replace existing element with new value
if let index = arr2.firstIndex(of: 9) {
    arr2[index] = 1
}
print(arr2)

print(arr2.count)

//Returms random element from array
print(arr2.randomElement() ?? "0")

//Rmove First two elements
arr2.removeFirst(2)

print(arr2)

//removes and returns last elemeny
arr2.popLast()

//returns true if 3 is in array
arr2.contains(3)

arr2.max() //finds max element
arr2.min() //finds min element

print(arr2.dropLast())  //exlude last element
print(arr2.dropFirst()) //exclude first element

//print the elements with index
for (i, ele) in arr2.enumerated() {
    print(i, ele, separator: "-")
}

print(arr2.sorted())//sort in ascending order
print(arr2.sorted(by: >))//sort in descending order

print(arr2.reversed())//Reverse the array list

arr2.swapAt(1, 3)   //swap values at 1 and 3 index

print(arr2)

print(arr2.startIndex)  //returns postion of first element
print(arr2.endIndex)    //returns position of last element

print(arr2.index(after: 1))//Returns position immediately after the given index
print(arr2.index(before: 2))//Returns position immediately before the given index

print("\n\nDictionary")

//Dictionary unordered,data in key value pair,duplicates allowed for values
//1.create an empty dictionary
var emptyDict: [Int: String] = [:]
print(emptyDict)

emptyDict[1] = "One"
print(emptyDict)

emptyDict = [:]
print(emptyDict)

print(emptyDict.isEmpty)

//2.create an dictionary with key and value
var dict1 = ["a": 10, "b": 20, "c": 30]
print(dict1)

//Returns first key and value
print(dict1.first ?? "First")

//Remove value for key
print(dict1.removeValue(forKey: "c") ?? "n")

print(dict1)

//printing all key values
for (key, value) in dict1 {
    print("Key : \(key) Value :\(value)")
}

for (i, e) in dict1.enumerated() {
    print("Key : \(i) Value : \(e)")
}

//count total key value pairs
print("Dictionary has \(dict1.count) items")

if let val = dict1["a"] {
    print("The value of a key is \(val)")
} else {
    print("The key is not in dictionary")
}

if let removeVal = dict1.removeValue(forKey: "a") {
    print("The Removed value is:\(removeVal)")
}

//Iterate a dictionary
for key in dict1.keys {
    print("Key : \(key)")
}
for value in dict1.values {
    print("Value : \(value)")
}

//Update value
if let oldVal = dict1.updateValue(40, forKey: "c") {
    print("The Old Value was \(oldVal)")
}
arr2.isEmpty
print(dict1)

print("\n\nSet")
//set : unordered,duplicates not allowed
let set1: Set = [1, 2, 3, 43, 8, 9, 10]
print(set1)

//if we provide duplicates then it automatically eliminate duplicates
var set2: Set = [1, 2, 3, 1, 2, 3, 4, 4, 5]
print(set2)

//Access set elements
print(set1)

set2.forEach { ele in
    print(ele)
}

set2.remove(4)//remove element 4
print(set2)

set2.insert(4)//add element 4
print(set2)

//set operations
//union : combines set 1 and set 2
print(set1.union(set2))

//intersection
print(set1.intersection(set2))

//subtracting
print(set1.subtracting(set2))

//Symmetric difference
print(set1.symmetricDifference(set2))




