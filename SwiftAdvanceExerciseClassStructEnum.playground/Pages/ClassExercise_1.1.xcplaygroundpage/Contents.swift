//Create a swift program to demonstrate swift class. Which has two variables inside class body. Access (Set its values and get its value.) these variables by creating one instance of class.

class ClassExerciseOne {
    
    var variableOne: Int
    var variableTwo: Int
    
    init(variableOne: Int, variableTwo: Int) {
        self.variableOne = variableOne
        self.variableTwo = variableTwo
    }
    
    func display() {
        print("First Variable Value : \(variableOne) \nSecond Variable Value: \(variableTwo)")
    }
    
}

var objClassExerciseOne = ClassExerciseOne(variableOne: 10, variableTwo: 20)

//Get Its Values
print("Before Setting Values:")
objClassExerciseOne.display()  // Expected Output : First = 10 Second = 20

//Set Its Values
objClassExerciseOne.variableOne = 20
objClassExerciseOne.variableTwo = 10

print("\nAfter Setting Values:")
objClassExerciseOne.display() // Expected Output : First = 20 Second = 10
