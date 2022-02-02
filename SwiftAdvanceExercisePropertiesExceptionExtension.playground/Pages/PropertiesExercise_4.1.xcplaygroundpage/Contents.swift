//1) Create an example using swift to demonstrate use of get only properties. Create a class with a property which value cannot be set outside of class.

class Demo {
    
    private(set) var count: Int = 1
    
    func increaseCount() {
        count += 1
    }
    
}

let obj = Demo()
print(obj.count) // Expected Output : 1 2
obj.increaseCount()
print(obj.count)
