//Optional chaining Demo 1
class Student {
    
    var teach: Teacher?
    
}

class Teacher {
    
    var name = "ABC"
    var address: Address?
    
    func printTeacherName() {
        print("The teacher name is \(name)")
    }
    
}

class Address {
    
    var state: String?
    var city: String?
    var pincode: Int?
    
    func getAddressInfo() -> String? {
        if let city = city, let state = state, let pincode = pincode {
            return "\(state) \(city) \(pincode)"
        } else if city != nil {
            return city
        } else {
            return nil
        }
    }
    
}

var objStudent = Student()

//objStudent contains Student Class instance
if let teacherName = objStudent.teach?.name {
    print(teacherName)
} else {
    print("Unable to retreive teacher name")
}

//objStudent.tech contains teachers instance
objStudent.teach = Teacher()

func getTecherName() {
    if let name = objStudent.teach?.name {
        print(name)
    } else {
        print("Unable to retreive teacher name")
    }
}
getTecherName()

//Setting properties through optional chaining
var newTeacherName = "PQR"
objStudent.teach?.name = newTeacherName
getTecherName()

//Calling methods optional chaining
if objStudent.teach?.printTeacherName() != nil {
    print("Sucess")
} else {
    print("Fail")
}

//Setting properties of Address class
func createAddress() -> Address {
    print("Function was called")
    
    let address = Address()
    address.state = "Gujarat"
    address.city = "Ahmedabad"
    address.pincode = 380024

    return address
}

objStudent.teach?.address = createAddress()

if let state = objStudent.teach?.address?.state {
    print(state)
} else {
    print("nil")
}

//Chaining on methods
if let completeAddress = objStudent.teach?.address?.getAddressInfo() {
    print(completeAddress)
}

//Apple some readymade method on it
if (objStudent.teach?.address?.getAddressInfo()?.hasPrefix("Guj")) != nil {
    print("The Address starting with Guj Prefix")
} else {
    print("The Address does not starting with Guj Prefix")

}
