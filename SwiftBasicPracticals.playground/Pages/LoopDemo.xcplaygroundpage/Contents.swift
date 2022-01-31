//for loop example 1
let languages = ["Java", "Kotlin", "Swift"]
for language in languages {
    print(language)
}

//for loop example 2 with where clause
for language in languages where language != "Kotlin" {
    print(language)
}

//for loop example 3
for element in 1...5 {
    print(element)
}

//for loop example 4 with stride function
//if we want a loop increment by some fixed value in each iteration then stride(from : to : by) is used exlude the upper bound
for item in stride(from: 0, to: 10, by: 2) {
    print(item)
}

//it includes upper bound
for item1 in stride(from: 0, through: 10, by: 2) {
    print(item1)
}

//for loop example 5 with dictionaries
let ages = ["Sonu": 15, "Guddi": 18]
for (name, age) in ages {
    print("\(name) is \(age) years old")
}

//for loop example 6
for index in (0...5).reversed() {
    print(index)
}

//for each loop example 1
languages.forEach { language in
    print(language)
}

//for each loop example 2
ages.forEach { name, age in
    print("\(name) is \(age) years old")
}

//While loop
var i = 1, n = 5
while (i <= n) {
    print(i)
    i += 1
}

//repeat while loop
var j = 1, n1 = 5
repeat {
    print(j)
    j += 1
} while (j <= n1)
