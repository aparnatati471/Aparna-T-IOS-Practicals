//Subscripts Demo 1 : created with subscript keyword
class DaysOfWeek {
   
    var days = ["Sun", "Mon", "Tue", "Wed", "Thur", "Fri", "Sat"]
    
    subscript(index: Int) -> String {
        days[index]
    }
    
}

var objWeek = DaysOfWeek()

print(objWeek[0])
print(objWeek.days)

//Subscripts Demo 2 With get and set
class Languages {
    
    var programming_lang = ["Java", "Kotlin", "IOS"]
    
    subscript(index: Int) -> String {
        get {
            return programming_lang[index]
        }
        set {
            programming_lang[index] = newValue
        }
    }
    
}

var objLanguage = Languages()

print(objLanguage[2])
objLanguage[2] = "Swift"
print(objLanguage[2])

//Subscript Demo 3 for Factorial Numbers
struct FactorialGenerator {
    
    subscript(num: Int) -> Int {
        var fact = 1
        if num > 0 {
            for val in 1...num {
                fact *= val
            }
        }
        return fact
    }
    
}

let factorial = FactorialGenerator()
print(factorial[5])

//Subscript Demo 4 Table of Any number
struct Table {
    
    let multiplier: Int
    
    subscript(number: Int) -> Int {
        return number * multiplier
    }
    
}

let eightTable = Table(multiplier: 8)

print("\(eightTable[2])")
print("\(eightTable[3])")
print("\(eightTable[4])")

//Subscript Demo 5 with Options
struct Grid {
    
    let grid = [
        [1, 1, 1, 1],
        [2, 2, 2, 2],
        [3, 3, 3, 3],
        [4, 4, 4, 4],
    ]
    
    subscript(row: Int, col: Int) -> Int? {
        let maxCol = grid.count - 1
        guard col <= maxCol, col >= 0 else {
            return nil
        }
        
        let rowNumber = grid[col]
        guard row >= 0, row <= (rowNumber.count - 1) else {
            return nil
        }
        
        let number = grid[row][col]
        return number
    }
    
}

let gridObj = Grid()
print("Grid Value : \(gridObj[3, 1] ?? -1)")
