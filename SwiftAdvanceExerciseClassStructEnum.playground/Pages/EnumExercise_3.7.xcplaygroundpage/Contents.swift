// Write a swift program using enumerations for learn and demonsrate enum cases with parameters (Enum with associated values).

enum Activity {
    
    case bored
    case running(destination: String)
    case talking(topic: String)
    case singing(song: String)
    case coding(language: String)
    
}

let coding = Activity.coding(language: "Swift")
print(coding) // Expected Output : coding(language: "Swift")
