//Create one enumeration program to return number of days in a month.

enum Month: Int {
    
    case January = 1, February, March, April, May, June, July, August, September, October, November, December
    
}

let month = Month(rawValue: 5) // Expected Output : 31 Days

switch month {
    case .January, .March, .May, .July, .August, .October, .December:
        print("31 Days")
    case .April, .June, .September, .November:
        print("30 Days")
    case .February:
        print("28 Days")
    default:
        print("No Valid Month")
}

