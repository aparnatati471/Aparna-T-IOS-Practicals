//Create a swift class with some property. And then set its value using initializer of class, then perform below actions.

class ClassExerciseTen {
    
    var str: String

    init() {
        str = ""
    }
    
    init(str: String) {
        self.str = str
    }
    
}

let objClassExcerciseTen1 = ClassExerciseTen()
objClassExcerciseTen1.str = "Hello"

let objClassExcerciseTen2 = objClassExcerciseTen1
objClassExcerciseTen2.str = "Hii"

print(objClassExcerciseTen1.str) // Expected Output : Hii
print(objClassExcerciseTen2.str) // Expected Output : Hii


//The Reason is Class is reference type
