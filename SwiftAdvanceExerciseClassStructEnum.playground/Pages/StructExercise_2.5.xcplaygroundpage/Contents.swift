//Create one swift structure program for person that contains basic details like name, age, gender. Then create one array of person with all details. Print all details of that array.

struct Person {
    
    var name: String
    var age: Int
    var gender: String
    
    init(name: String, age: Int, gender: String) {
        self.name = name
        self.age = age
        self.gender = gender
    }
    
}

var persons: [Person] = []

var objPerson1: Person = Person(name: "Joe", age: 27, gender: "Male")
var objPerson2: Person = Person(name: "Harry", age: 21, gender: "Male")

persons.append(objPerson1)
persons.append(objPerson2)

for person in persons {
    print("Name: \(person.name), Age: \(person.age), Gender: \(person.gender)")
}

// Expected Output : Joe 27 Male & Harry 21 Male
