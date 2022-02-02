//Create a swift class which is having code to return square of given number and access this code using class instance.

class ClassExerciseFour {
    
    func squareOfNum(num: Int) -> String {
        return "The Square of \(num) is: \(num * num)"
    }
    
}

let objClassExerciseFour = ClassExerciseFour()
print(objClassExerciseFour.squareOfNum(num: 5)) // Expected Output : Square of num : 25
