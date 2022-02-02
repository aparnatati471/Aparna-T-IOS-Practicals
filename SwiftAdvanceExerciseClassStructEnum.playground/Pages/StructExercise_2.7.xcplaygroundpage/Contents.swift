//Try to figure out basic difference between class and structures and give a demo for same.


struct Coordinates {
    
    var lat: Double
    var lng: Double
    
}

var point1 = Coordinates(lat: 5.519, lng: 5.7599)
// here, we are setting the values of point2 to be the value of point1
var point2 = point1

point2.lat = 6.45
point2.lng = 8.211

print(point2) // Expected output: Coordinates(lat: 6.45, lng: 8.211)
print(point1) // Expected output: Coordinates(lat: 5.519, lng: 5.7599)

class User {
    
    var firstName: String
    var lastName: String
    var gender: String
    var age: Int

    init(firstName: String, lastName: String, gender: String, age: Int) {
        self.firstName = firstName
        self.lastName = lastName
        self.gender = gender
        self.age = age
    }
    
}

var user1 = User(firstName: "Aparna", lastName: "Tati", gender: "female", age: 19)
// user2 now holds the same value as user1
var user2 = user1

user1.age = 20

print(user1.age) // Expected output: 30
print(user2.age) // Expected output: 30
