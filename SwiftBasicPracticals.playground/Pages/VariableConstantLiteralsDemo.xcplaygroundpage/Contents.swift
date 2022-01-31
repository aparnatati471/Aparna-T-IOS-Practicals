//variable demo

//Variable Example 1
//1st way creation of variable
var a = 10
print(a)

//Variable Example 2
//2nd way creation of variable
var b: String = "This is a string"
print(b)

//Variable Example 3
var str = "hello"
var ing = "World"
print("The Complete String \(str)\(ing)")

//Data Types
var varInt: Int = 10
var varFloat: Float = 3.1444
var varDouble: Double = 642.836582638
var varChar : Character = "A"
var varString : String = "Swift"

print(varInt, "\t", varFloat,"\t" ,varChar ,"\t" ,varDouble ,"\"" ,varString)

//Constants defined using let keyword value can not be changed
let const = 19
//const = 20//compiler gives error if we try to change
print(const)

//Type Alias creates new name for existing data type
typealias newInt = Int
var intVarTwo : newInt = 20
print(intVarTwo)

//Type Safety : It means if your var requires int then you can not store string value
//Swift performs type checking during compilation
var intVarNine = 30
//v9="Hello"//throws error
print(intVarNine)

//Type Inference
//when compiler compile the code so it automatically checks the type of value you gave
var intVarTen = 90.7247//compiler automatically choose the appropriate data type for it
print(intVarTen)

//Literals
//1.Numeric Literals
print(10)//decimal no with no prefix
print(0b1111)//binary no with 0b prefix
print(0o21)//octal no with 0o prefix
print(0x16)//Hexa decimal no with 0x prefix
print(0xB)

//2.Floating Point Literals
//can be decimal or hexadecimal
//for decimal exponent e is used and for hexadecimal we used exponent p is used
//Decimal Literals
print(1.26e2)//it means 1.25*10 rest to 2
print(1.26e-2)//it means 1.25*10 rest to -2

//Hexadecimal Literals
print(0xCp2)//it means 12*2 rest to 2
print(0xCp-2)//it means 12*2 rest to -2






