// Create one lazy stored property in a class and show usage of it.

class GreetWithLazy {
    
    init() {
        print("Greet Class Intialized")
    }
    
}

class TopersonWithLazy {
    
    lazy var greetObj = GreetWithLazy()
    
    init() {
        print("Toperson Class Intialized")
    }
    
}

var toPersonObjLazy = TopersonWithLazy()
toPersonObjLazy.greetObj

// Expected Output : Toperson Class Intialized Greet Class Intialized

