//Create one array of type Person and create one subscript function which takes person name as input and returns person info like name, age, birthdate etc.

class Person {
    
    var persons = [
                    ["Aparna", "21", "20-Aug"],
                    ["Guddi", "21", "20-Aug"]
                  ]
    var personDetails = [String]()

    subscript(name: String) -> [String] {
        if name == persons[0][0] {
            personDetails.append(contentsOf: persons[0])
        } else {
            print("No Name Found")
        }
        return personDetails
    }
    
}

var objPerson = Person()
objPerson["Aparna"]
print(objPerson.personDetails)
