//Create a structure program which can be initialized with parameters and it also should be able to initialized without parameters.

struct StructureEXerciseThree {
    
    var length: Int
    var breadth: Int
    
    init() {
        length = 10
        breadth = 20
    }
    
    init(length: Int, breadth: Int) {
        self.length = length
        self.breadth = breadth
    }
    
    var area: Int {
        return length * breadth
    }
    
}

let objOne = StructureEXerciseThree()
print(objOne.area) // Expected Output : 200

let objTwo = StructureEXerciseThree(length: 20, breadth: 30)
print(objTwo.area) // Expected Output : 600
