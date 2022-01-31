class LogicalQuestion {
    func breakFast(baconAge: Int, eggsAge: Int) {
        
        var isBaconCook : Bool { baconAge < 7 ? true : false }
        var isEggsCook : Bool { eggsAge < 21 ? true : false }
        
        if isBaconCook && isEggsCook {
            print("You can cook bacon and eggs")
        } else if !isBaconCook && !isEggsCook {
            print("Throw out both bacon and eggs")
        } else if !isBaconCook {
            print("Throw out bacon")
        } else {
            print("Throw out eggs")
        }
    }
    
    func leapYear(year: Int) {
        if year % 4 == 0 {
            if year % 100 == 0 && year % 400 == 0 {
                print("\(year) is a Leap Year!")
            } else {
                print("\(year) is not a Leap year!")
            }
        } else {
            print("\(year) is not a Leap Year!")
        }
    }
    
    func hitPoints(hp: Int) {
        var modifiedHp = hp
        if hp == 0 {
            print("he is dead")
        } else {
            if hp < 20 && hp > 0 {
                modifiedHp = 20
            } else if hp % 10 != 0 {
                modifiedHp = hp / 10
                modifiedHp = modifiedHp + 1
                modifiedHp = modifiedHp * 10
            }
        }
        print(modifiedHp)
    }
    
    func aboveAverage(grades: [Double], myGrade: Double) {
        let average = grades.reduce(0.0, +) / Double(grades.count)
        var aboveOrbelow: Bool { myGrade > average ? true : false }
        if aboveOrbelow { print("Above Average") } else { print("Below Average") }
    }
    
    func tipping(mealCost: Double, tip: Int) {
        print("Total Cost Of Meal : " , (mealCost * (Double(tip) / 100)) + mealCost)
    }
}

var obj = LogicalQuestion()

obj.breakFast(baconAge: 3, eggsAge: 2)
obj.leapYear(year: 2000)
obj.hitPoints(hp: 0)
let grades = [7.0, 9.0, 5.0, 8.0]
let myGrade = grades.last ?? 0
obj.aboveAverage(grades: grades, myGrade: myGrade)
obj.tipping(mealCost: 3.5, tip: 20)


