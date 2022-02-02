//Function with no parameter and return value
func greet() -> String {
    return "Welcome to Simform"
}

print(greet())

//Function with no parameter and no return value
func wish() {
    print("Good morning ! Have a nice day")
}
wish()

//function with parameters
func add(a: Int, b: Int) {
    print("Addition is \(a + b)")
}
add(a: 10, b: 20)

//Function with parameters and return value
func Mul(a: Int, b: Int) -> Int {
    return a * b
}
print(Mul(a: 10, b: 20))

//Veriadic parameters accepts zero or more values of a specified type
func vari<N>(para: N...) {
    for i in para {
        print(i)
    }
}
vari(para: 4, 1, 6)
vari(para: 4.1, 9.44)
vari(para: "Java", "Kotlin")

//Nested Function without return value
func greet1(user: String) {
    func greet2() {
        print("Good Morning ! \(user)")
    }
    greet2()
}
greet1(user: "ABC")

//InOut Demo
var x = 2
func sqaure(num: Int) -> Int {
    return num * num
}
sqaure(num: x)
print(x) //So here it does not print square of value

//Using inout
func makeDouble(num: inout Int) {
    num *= 2
}

makeDouble(num: &x)
print(x)

//Swap Example using InOut
func swap(a: inout Int, b: inout Int) {
    let temp = a
    a = b
    b = temp
}

var num1 = 10
var num2 = 20

print("Before Swap: \(num1) \(num2)")
swap(a: &num1, b: &num2)
print("After Swap: \(num1) \(num2)")




