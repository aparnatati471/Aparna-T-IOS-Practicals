//MARK: ARC tracks how many properties, constants, and variables are currently referring to each class instance.
class Student {
    
    let name: String
    
    init(name: String) {
        self.name = name
        print("\(name) is initialized")
    }
    deinit {
        print("\(name) is deinitialized")
    }
    
}

var ref1: Student?
var ref2: Student?
var ref3: Student?

//We can say strong reference type from ref1 to Student class
ref1 = Student("ABC")
ref2 = ref1
ref3 = ref1

ref1 = nil
ref2 = nil

//MARK: Retain Cycles : if two class instances hold a strong reference to each other
class Pet {
    
    let name: String
    var owner: Owner?
    
    init(name: String) {
        self.name = name
    }
    deinit {
        print("Pet deallocated")
    }
    
}

class Owner {
    
    let name: String
    var pet: Pet?
    
    init(name: String) {
        self.name = name
    }
    deinit {
        print("Owner deallocated")
    }
    
}

var pet: Pet? = Pet(name: "Dog")
var owner: Owner? = Owner(name: "Alice")

pet!.owner = owner
owner!.pet = pet

pet = nil
owner = nil

//MARK: Two Ways to break retain cycle 1.Weak references 2.Unowned References
//MARK: Weak References
class Pet1 {
    
    let name: String
    weak var owner: Owner1?
    
    init(name: String) {
        self.name = name
    }
    deinit {
        print("Pet deallocated")
    }
    
}

class Owner1 {
    
    let name: String
    var pet: Pet1?
    
    init(name: String) {
        self.name = name
    }
    deinit {
        print("Owner deallocated")
    }
    
}

var pet1: Pet1? = Pet1(name: "Dog")
var owner1: Owner1? = Owner1(name: "Alice")

pet1!.owner = owner1
owner1!.pet = pet1

pet1 = nil
owner1 = nil

//MARK: Unowned References
class Customer {
    
    let name: String
    var myOrder: Order?
    
    init(name: String) {
        self.name = name
    }
    deinit {
        print("\(name) is deinitialized")
    }
    
}

class Order {
    
    let order: String
    unowned let orderPlacedBy: Customer
    
    init(order: String, orderPlacedBy: Customer) {
        self.order = order
        self.orderPlacedBy = orderPlacedBy
    }
    deinit {
        print("\(order) is deinitialized")
    }
    
}

//Here order can not be exist without customer
var customer: Customer?

customer = Customer(name: "Aparna")
customer!.myOrder = Order(order: "T-Shirts", orderPlacedBy: customer!)
    
customer = nil
