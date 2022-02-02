//DeInitalizer : deallocate the memory space before a class instance deallocated

var i = 100

class Calculate {
    
    init() {
        i = i + 50
    }
    deinit {
        i = 0
    }
    
}

var obj: Calculate? = Calculate()
print("Counter Val: \(i)")
obj = nil
print("Counter Val: \(i)")

