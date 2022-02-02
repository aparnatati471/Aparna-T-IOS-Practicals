//Write swift program using enumerations to check week day from given number. Consider Monday as 1 and Sunday as 7. We can be able to get day name as string in short form (sun, mon,...) and same full name (Sunday, Monday...) by given number of the day.

enum DayOfWeek: Int {
    
    case Monday = 1, Tuesday, Wednesday, Thursday, Friday, Saturday, Sunday
    
}

let day = DayOfWeek(rawValue: 1) // Expected Output : mon or Monday

switch day {
    case .Monday:
        print("mon or Monday")
    case .Tuesday:
        print("tue or Tuesday")
    case .Wednesday:
        print("wed or Wednesday")
    case .Thursday:
        print("thur or Thursday")
    case .Friday:
        print("fri or Friday")
    case .Saturday:
        print("sat or Saturday")
    case .Sunday:
        print("sun or Sunday")
    default:
        print("No choice found")
}
