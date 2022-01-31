var people: [[String: Any]] = [
                                [
                                    "firstName": "Calvin",
                                    "lastName": "Newton",
                                    "score": 13
                                ],
                                [
                                    "firstName": "Garry",
                                    "lastName": "Mckenzie",
                                    "score": 12
                                ],
                                [
                                    "firstName": "Leah",
                                    "lastName": "Rivera",
                                    "score": 10
                                ],
                                [
                                    "firstName": "Sonja",
                                    "lastName": "Moreno",
                                    "score": 3
                                ],
                                [
                                    "firstName": "Noel",
                                    "lastName": "Bowen",
                                    "score": 16
                                ]
                              ]

//Dictionary Exercise 4
print("4.Find the person with the lowest score and print his full name.")

var min = people[0]["score"] as? Int
var fname = people[0]["firstName"]
var lname = people[0]["lastName"]

for person in people.indices {
    let score = people[person]["score"] as? Int
    if min ?? 1 > score ?? 0 {
        min = score
        fname = people[person]["firstName"] as? String
        lname = people[person]["lastName"] as? String
    }
}

if let fname = fname {
    if let lname = lname {
        print("\(fname) \(lname)")
    }
}

//Dictionary Exercise 5
print("\n5.Print the leaderboard in the following format: 1. full name - score")
for person in people.indices {
    if let fname = people[person]["firstName"] {
        if let score = people[person]["score"] {
            print("\(person) \(fname) - \(score)")
        }
    }
}

                        
