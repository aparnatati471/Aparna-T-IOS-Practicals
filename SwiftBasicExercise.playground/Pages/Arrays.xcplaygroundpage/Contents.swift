//Array Exercise 1
print("1.To check whether the first element and the last element of a given array of integers are equal.")

var arr1 = [1, 2, 3, 1]
print("The First And Last Element is : ", arr1.isEmpty ? false : arr1.first == arr1.last)

//Array Exercise 2
print("\n2.To create a new array with double the lenght of a given array of integers and its last element is the same as the given array. By default, a new integer array contains all 0's.")

var arr2 = [1, 2, 3, 4]
let arr2len = arr2.count

if arr2len > 0 {
    var newArr2 = [Int](repeating: 0, count: arr2len * 2)
    let newArr2Len = newArr2.count
    newArr2[newArr2Len-1] = arr2[arr2len-1]
    print(newArr2)
}

//Array Exercise 3
print("\n3.To create a new array, taking first two elements from a given array of integers.")

var arr3 = [0, 1, 2, 3]
print(arr3[..<2])

//Array Exercise 4
print("\n4.To take one array and find out maximum number from that array.")

var arr4 = [0, 50, 100, 20, 80, 150]
print(arr4.max() ?? "max")

//Array Exercise 5
print("\n5.To take one array and sort it in descending order.")

var arr5 = [0, 5, 6, 2, 10]

arr5.sort {
    return $0 > $1
}
print(arr5)

//Array Exercise 6
print("\n6.Print all the numbers from listOfNumbers that are divisible by at least one number from divisors.")

var listOfNumbers = [1, 2, 3, 10, 100]
var divisors = [2, 5]
var ans = Set<Int>()

listOfNumbers.forEach { divider in
    if divider % divisors.index(after: 1) == 0 {
        ans.insert(divider)
    }
}
print(ans)

