//Dictionary of people
var people: [[String:String]] = [
                                    [
                                        "firstName": "Calvin",
                                        "lastName": "Newton"
                                    ],
                                    [
                                        "firstName": "Garry",
                                        "lastName": "Mckenzie"
                                    ],
                                    [
                                        "firstName": "Leah",
                                        "lastName": "Rivera"
                                    ],
                                    [
                                        "firstName": "Sonja",
                                        "lastName": "Moreno"
                                    ],
                                    [
                                        "firstName": "Noel",
                                        "lastName": "Bowen"
                                    ]
                                ]

//Dictionary Exercise 2
print("2.Create an array of strings called firstNames that contains only the values for “firstName” from each dictionary.")

var firstNames: [String] = []

for person in people {
    if let fname = person["firstName"] {
        firstNames.append(fname)
    }
}
print(firstNames)


//Dictionary Exercise 3
print("\n3.Create an array of strings called fullNames that contains the values for “firstName” and “lastName” from the dictionary separated by a space")

var fullNames: [String] = []

for person in people {
    if let fName = person["firstName"] {
        if let lName = person["lastName"] {
            let fullName = "\(fName) \(lName)"
            fullNames.append(fullName)
        }
    }
}
print(fullNames)
