//Create a structure example which demonstrates use of initializer in structures.

//Structure automatically creates memberwise initializer if we are not using init() inside structure
struct StructureExerciseTwo {
    
    var name: String
    var age: Int
    
    init(name: String, age: Int) {
        self.name = name
        self.age = age
    }
    
}

var objStructExerciseTwo = StructureExerciseTwo(name: "ABC", age: 20)

print("Name: \(objStructExerciseTwo.name) \nAge: \(objStructExerciseTwo.age)") // Expected Output : ABC 20

