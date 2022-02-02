//Create a swift program which has private properties which cannot directly be accessed. Means we cannot directly read or write it.

class PropertiesExerciseFour {
    
    private var name: String = "Swift"
    
    func getName() -> String { name }
    func setName(name: String) {
        self.name = name
    }
    
}

var objPropFour = PropertiesExerciseFour()
print(objPropFour.getName())
objPropFour.setName(name: "Swift Programming") // Expected Output : Swift   Swift Programming
print(objPropFour.getName())


