//Class Hierarchy for type casting
class Graduation {
    
    var degreeName: String
    
    init(degreeName: String) {
        self.degreeName = degreeName
    }
    
}

class Engineering: Graduation {
    
    var fieldName: String
    
    init(degreeName: String, fieldName: String) {
        self.fieldName = fieldName
        super.init(degreeName: degreeName)
    }
    
}

class Commerce: Graduation {
    
    var courseName: String
    
    init(degreeName: String, courseName: String) {
        self.courseName = courseName
        super.init(degreeName: degreeName)
    }
    
}

let courseNames = [
                    Engineering(degreeName: "BE", fieldName: "Computer"),
                    Commerce(degreeName: "BBA", courseName: "Finance"),
                    Engineering(degreeName: "ME", fieldName: "IT"),
                    Engineering(degreeName: "B.TECH", fieldName: "Electrical")
                  ]

var engineeringCount = 0
var commerceCount = 0

for item in courseNames {
    if item is Engineering {
        engineeringCount += 1
    } else if item is Commerce {
        commerceCount += 1
    }
}
print("Graduation Contains \(engineeringCount) fields and \(commerceCount) courses")

//Down Casting : type casting from parent class to sub class
for item1 in courseNames {
    if let engineering = item1 as? Engineering {
        print("Degree Name: \(engineering.degreeName), Field Name: \(engineering.fieldName)")
    } else if let commerce = item1 as? Commerce {
        print("Degree Name: \(commerce.degreeName), Field Name: \(commerce.courseName)")
    }
}

//Type Casting for Any and AnyObject
//Any : To represent instance of any type including functions
var items: [Any] = []

items.append(10)
items.append(8.390219)
items.append("Hello")
items.append(Engineering(degreeName: "BE", fieldName: "Computer"))
items.append({ (a: Int, b: Int) -> Int in a + b })

for anyItem in items {
    switch anyItem {
        case 10 as Int:
            print("Ten as Int")
        case let str as String:
            print("\(str)")
        case let floatNo as Float:
            print("\(floatNo)")
        case let course as Engineering:
            print("Engineering class Called \(course.degreeName), \(course.fieldName)")
        case let add as (Int, Int) -> Int:
            print(add(10, 5))
        default:
            print("No matches")
    }
}

