//Create a swift class example to show use of swift base class which have some implementation inside any method. Now demonstrate usage of overriding that method implementation.

class Father {
    
    func home() {
        print("Father's Home")
    }
    func car() {
        print("Father's Car")
    }
    
}

class Daughter: Father {
    
    override func car() {
        print("Daughter's car")
    }
    
}

var objDaughter = Daughter()
objDaughter.car() // Expected Output : Daughter's car
