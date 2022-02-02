//Create one example of usage of willSet and didSet.

class PropertyObserver {
    
    var number: Int = 0 {
        willSet {
            print("Changed Number \(number) to \(newValue)")
        }
        didSet {
            print("Number \(number)")
        }
    }
    
}

let objPropertyObserver = PropertyObserver()

objPropertyObserver.number = 20  // Expected Output 20
objPropertyObserver.number = 30  // Expected Output 30

