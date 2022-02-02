//Write a swift program using enumerations to demonstrate Int enums.

enum Planet: Int {
    
    case mercury = 1, venus, earth, mars, jupiter, saturn, uranus, neptune
    
}

let earthPlanetNo = Planet(rawValue: 2) // Expected Output : The planet is venus

if let no = earthPlanetNo {
    print("The planet is : \(no)")
} else {
    print("Please enter no between 1 to 8")
}

