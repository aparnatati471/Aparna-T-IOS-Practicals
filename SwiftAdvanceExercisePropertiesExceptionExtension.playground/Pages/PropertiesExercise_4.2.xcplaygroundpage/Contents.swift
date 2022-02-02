//Usage of Computed Properties with getter and setter

class Weight {
    
    var kilograms: Float = 0.0
    var pounds: Float {
        get {
            return kilograms * 2.205
        }
        set(newWeight) {
            kilograms = newWeight / 2.205
        }
    }
    
}

let weight = Weight()

weight.kilograms = 100
print(weight.pounds) // The getter method is invoked

weight.pounds = 315 // The setter method is invoked
print(weight.kilograms) // Expected Output : 220.5  142.85715
