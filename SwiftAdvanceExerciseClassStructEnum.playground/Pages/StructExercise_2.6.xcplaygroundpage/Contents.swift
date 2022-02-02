//Perform same example given in class question no 10 and check output using structure. Try to find difference between these two outputs and try to figure out the reason for that output.

struct StructureExerciseSix {
    
    var str: String

    init() {
        str = ""
    }
    
    init(str: String) {
        self.str = str
    }
    
}

var objStructExcerciseSix1 = StructureExerciseSix()
objStructExcerciseSix1.str = "Hello"

var objStructExcerciseSix2 = objStructExcerciseSix1
objStructExcerciseSix2.str = "Hii"

print(objStructExcerciseSix1.str)
print(objStructExcerciseSix2.str) // Expected Output : Hello Hii

//Reason is Structure is value type

