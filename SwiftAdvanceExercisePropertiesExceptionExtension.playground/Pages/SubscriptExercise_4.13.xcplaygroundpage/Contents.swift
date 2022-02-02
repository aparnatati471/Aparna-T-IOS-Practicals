//Create one example of subscript using array. Create one array of weekdays and one subscript func which takes int as argument and returns day of week.

class DaysOfWeek {
    
    var days = ["Sunday", "Monday", "Tuesday", "Wednesday", "Thursday", "Friday", "Saturday"]
    
    subscript(index: Int) -> String {
        days[index]
    }
    
}

var objWeek = DaysOfWeek()

print(objWeek[0]) // Expected Output : Sunday
