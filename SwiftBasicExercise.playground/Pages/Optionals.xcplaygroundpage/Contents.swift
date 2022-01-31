//Optional Exercise 1
print("1.Create an example of demonstrating How to declare optionals in swift")

var optionalVar1: Int?
var optionalVar2: String?

//This declaration is equivalent above intializing to nill which means no value
var optionalVar3: String? = nil

//print(optionalVar1)
//print(optionalVar2)
//print(optionalVar3)

print(optionalVar1 == nil ? true : false)

//Optional Exercise 2
print("\n2.force unwrapping in optionals")

var str: String?
str = "Hello"

print(str)//without forced unwrapping
print(str!)//with forced unwrapping it is used when you are 100% sure str has a value

//You can also unwrap value as below if else
if str != nil {
    print(str!)
} else {
    print("It is nil")
}

//Optional Exercise 3
//Optional Binding also called if let
print("\n3.Create one example of show usage of optional binding")

if let myStr = str {
    print("My String Has \(myStr)")
} else {
    print("It is nil")
}

//Optional Exercise 4
//Guard let it allows to take early exit from particular function
print("\n4.Create one example using guard-let")

func uppercase(str: String?){
    guard let string = str else {
        print("It is nill")
        return
    }
    print(string.uppercased())
}
uppercase(str: str)

//Optional Exercise 5
//nil colloison operator it gurantess that optional contains value
//If optional has a values ,then nil colloison unwrap the value it
//If optional has a nil value,then it will assign default vallue instead of nil
print("\n5.Create one example using nil colloison operator")

var str1: String?
print("String 1 has \(str1 ?? "default value")")


