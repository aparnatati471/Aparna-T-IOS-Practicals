//Dictionary Exercise 6
print("6.You are given an array of integers. Find out the frequency of each one.The frequency of a number is the number of times it appears in the array.Print the numbers in ascending order followed by their frequency.")

var numbers = [1, 2, 3, 2, 3, 5, 2, 1, 3, 4, 2, 2, 2]
var count: [Int: Int] = [:]

for num in numbers {
    count[num] = (count[num] ?? 0) + 1
}

for (key, value) in count {
    print("\(key) occurs \(value) times")
}
