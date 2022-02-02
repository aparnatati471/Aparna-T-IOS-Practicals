//Create one structure of type Work, which have some properties like work location, work hours and one string array of project names. And create a function inside structure which returns all project names for the person.

struct Work {
    
    let location = "Simform Solutions, Ahmedabad"
    let workHours = 8
    let projectNames = ["Attendence Management", "Health Prediction Using IOT", "Parking Booking System"]
    
    func displayProjects() {
        projectNames.forEach { project in
            print(project)
        }
    }
    
}

let objWork = Work()
objWork.displayProjects() // Expected Output : Attendence Management Health Prediction Using IOT Parking Booking System
