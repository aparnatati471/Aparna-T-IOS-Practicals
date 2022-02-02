//Resolve retain cycle for closures

//MARK: 1.Closure with no retain Cycle
class Person {
    
    var name: String = "Aparna Tati"
    var personClosure: (() -> ())?
    
    init() {
        personClosure = {
            print("Closure Initialized")
        }
    }
    deinit {
        print("Person Class Deallocated")
    }
    
}

var objPerson: Person? = Person()
objPerson?.personClosure?()
objPerson = nil
print()

// MARK: 2.Closure with retain Cycle
class PersonTwo {
    
    var fname: String = "Aparna"
    var personTwoClosure: (() -> ())?
    
    init() {
        personTwoClosure = {
            print("\(self.fname) is initialized") //Created reference count from closure to property
        }
    }
    deinit {
        print("PersonTwo Class Deallocated")
    }
    
}

var objPersonTwo: PersonTwo? = PersonTwo()
objPersonTwo?.personTwoClosure?()
objPersonTwo = nil
print()

//MARK: 3. To prevent retain cycle we need to use weak self
class PersonThree {
    
    var lname: String = "Tati"
    var personThreeClosure: (() -> ())?
    
    init() {
        personThreeClosure = { [weak self] in
            if let lname = self?.lname { print("\(lname) is initialized") }
        }
    }
    deinit {
        print("PersonTwo Class Deallocated")
    }
    
}

var objPersonThree: PersonThree? = PersonThree()
objPersonThree?.personThreeClosure?()
objPersonThree = nil
print()

//MARK: 4.To prevent retain cycle we can also to use unowned self
class PersonFour {
    
    var address: String = "Ahmedabad"
    var personFourClosure: (() -> ())?
    
    init() {
        personFourClosure = { [unowned self] in
            print("\(self.address) is initialized") //Created reference count from closure to property
        }
    }
    deinit {
        print("PersonTwo Class Deallocated")
    }
    
}

var objPersonFour: PersonFour? = PersonFour()
objPersonFour?.personFourClosure?()
objPersonFour = nil


