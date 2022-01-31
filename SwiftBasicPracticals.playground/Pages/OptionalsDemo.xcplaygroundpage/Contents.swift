//Optional contains nil or some value
//prevents crashes and make code crash free
//two way we can write optionals

//1st way
let opt_var_one: Int? = Optional.none
print(opt_var_one)

//2nd way
let opt_var_two: Optional<String> = String("hello")
print(opt_var_two)

print(opt_var_one == nil)
print(opt_var_two == nil)

//Forced Unwrapping : When you want to fetch value from optional you will need to unwrap it so forced unwrapping putting exclamation mark at end of the variable

//Before applying forced unwrapping
if opt_var_two != nil {
    print(opt_var_two)
} else {
    print("opt_var_two has nill value")
}

//After applying forced unwrapping
if opt_var_two != nil {
    print(opt_var_two!)
} else {
    print("opt_var_two has nill value")
}

//Automatic Unwrapping : declare optional variable using exclamation mark instead of question mark
//by this it automatically unwrapped the value again we don't need to put exclamation mark to variable

var str: String!
print(str ?? "empty")
if str != nil {
    print(str!)
} else {
    print("String has a nill value")
}

//Swift optional Binding make constant variable as temp var
if let newstr = str {
    print(newstr)
} else {
    print("String has a nill value")
}
