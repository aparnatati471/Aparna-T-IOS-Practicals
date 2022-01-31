//tuple : group multiple values into one variable values of tuple can be any type or you add as many values you want

//Tuple Example 1
var nos = (10, 20, 30, 40)
print(nos)

//Tuple Example 2
print(nos.self)//self is like this in java and kotlin
print(nos.0)
print(nos.1)
print(nos.2)
print(nos.3)
//print(nos.4)

//Tuple Example 3
var num = (Ten: 10, Twenty: 20)
print(num.Ten)
print(num.Twenty)

//We can modify tuple value
nos.1 = 200
print(nos.1)
print(nos)

//Nested Tuple
var alphabets = ("A", "B", "C", ("a", "b", "c"))
print(alphabets.0)
print(alphabets.1)
print(alphabets.2)
print(alphabets.3)
print(alphabets.self)
print(alphabets.3.0)
print(alphabets.3.1)
print(alphabets.3.2)
print(alphabets.3.self)

