//Struct Definition
struct Person {
    
    var name = ""
    var age = 0
    
    func display() {
        print("This is a structure for person")
    }
    
}

//To use a struct we need to create instance of it
var person1 = Person()
var person10 = person1

//Access Properties and asssign values it
person1.name = "ABC"
person1.age = 19

print("Name : \(person1.name) \n Age : \(person1.age)")

//We can also create another instance of it
var person2 = Person()
person2.name = "PQR"
person2.age = 20

print("Name : \(person2.name) \n Age : \(person2.age)")

//Struct memberwise intializer
var person3 = Person(name: "CDE", age: 19)
print(person3)
person3.display()

