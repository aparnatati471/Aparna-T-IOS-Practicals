//Create a person swift class with person name initializer and create one function to greet that person.

class Person {
    
    var name: String
    
    init(name: String) {
        self.name = name
    }
    
    func greet() {
        print("Welcome \(name)")
    }
    
}

let objPerson = Person(name: "Aparna")
objPerson.greet() // Expected Output : Welcome Aparna
