//Switch statement
let str = "Swift"
switch str {
    case "Java": print("Java Language")
    case "Swift": print("Swift Language")
    case "Kotlin": print("Kotlin Language")
    default: print("Enter proper language name")
}

//Switch Statement with fallthrough
//proceed the control to next case

switch str {
    case "Java":
        print("Java Language")
    case "Swift":
        print("Swift Language")
        fallthrough
    case "Kotlin":
        print("Kotlin Language")
    default:
        print("Enter proper language name")
}

//Switch statement for ranges
let season_no = 4
switch season_no {
    case 1...4: print("Winter Season")
    case 5...8: print("Summer Season")
    case 9...12: print("Rainy Season")
    default: print("Enter season no between 1 to 12")
}

//Switch statement for multiple cases
let character = "banana"
switch character {
    case "apple", "banana":
        print("This is banana and apple")
    default:
        print("Not banana")
}

//if statement
var no = 10
if no > 0 {
    print("\(no) is a positive number")
}
print("This will be executed after if block")

//if else statement
no = -10
if no > 0 {
    print("\(no) is a positive number")
} else {
    print("\(no) is not a positive number")
}

//if else if statement
if no > 0 {
    print("\(no) is a positive number")
} else if no < 0 {
    print("\(no) is a negative number")
} else {
    print("\(no) is a zero")
}

//Nested if else statement
var a = 10 , b = 30 , c = 30
if a >= b {
    if a >= c {
        print("The largest no is",a)
    } else {
        print("The largest no is",c)
    }
} else {
    if b >= c {
        print("The largest no is",b)
    } else {
        print("The largest no is",c)
    }
}

//Guard Statement Example 1
guard true else {
    print("The Guard Block Will Execute")
}
print("The Guard Block will not execute")

//Guard Statement Example 2
func GuardDemo() {
    guard false else {
        print("The Guard Block Will Execute")
        return
    }
    print("The Guard Block will not execute")
}
GuardDemo()

//Guard Statement Example 3
var i = 2

while (i <= 10) {
  // guard condition to check the even number
  guard i % 2 == 0 else {
     i = i + 1
     continue
  }
  print(i)
  i = i + 1
}

//Guard Statement Example 4 with Multiple Conditions
func checkJobEligibility() {
    let age = 32
    guard age >= 18, age <= 40 else {
        print("You are not eligible for job")
        return
    }
    print("You are eligible for job")
}
checkJobEligibility()


