import Foundation
//Add a character in a string at 5th position, Replace one character with other in a string, Remove white spaces from string,  Get number of words in a string

extension String {
    
    mutating func insert(string: String,ind: Int) {
        self.insert(contentsOf: string, at: self.index(self.startIndex, offsetBy: ind))
    }
    
    mutating func insert(oldChar: String, newChar: String) {
        self.insert(contentsOf: newChar, at: self.firstIndex(of: Character(oldChar))!)
    }
    
    var trimmedStr: String {
        self.trimmingCharacters(in: .whitespaces)
    }
    
    var wordsCount: Int {
        self.split(separator: " ").count
    }
    
}

var str = "Apara"
str.insert(string: "n", ind: 4)
print(str) // Expected Output : Aparna

var strOne = "aparba"
strOne.insert(oldChar: "b", newChar: "n") // Expected Output : aparna

print(" This is my string ".trimmedStr) //Expected Output :This is my string

print("This is swift programming language".wordsCount) //Expected Output: 5
