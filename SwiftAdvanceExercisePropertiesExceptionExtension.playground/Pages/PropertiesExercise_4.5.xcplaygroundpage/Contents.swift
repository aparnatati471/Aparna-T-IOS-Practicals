//Create one swift class which have two properties name and id, the class must have one initializer to set that properties. And create one array of that class types

class Person {
    
    var id: Int
    var name: String
    
    init(id: Int, name: String) {
        self.id = id
        self.name = name
    }
    
    func display() {
        print("Id: \(id)\nName: \(name)")
    }
    
}

var objPerson = [Person(id: 1, name: "Person1"), Person(id: 2,name: "Person2")]

objPerson[0].display() // Expected Output : 1 Person1
objPerson[1].display() // Expected Output : 2 Person2
