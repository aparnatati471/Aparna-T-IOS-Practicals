//Create a swift class without initializers and access (write, read) its properties using instance of class.

class ClassExerciseThree {
    
    var num1: Int = 10
    var num2: Int = 20
    var num3: Int?
    
}

let objClassExerciseThree = ClassExerciseThree()
print(objClassExerciseThree.num1) // Expected Output : 10
print(objClassExerciseThree.num2) // Expected Output : 20

objClassExerciseThree.num3 = 30
print(objClassExerciseThree.num3 ?? "Nil") // Expected Output : 30 or Nil
