//Create a swift program to show usage of subscript in string. I pass int argument and it returns the character at given position.

extension String {
    subscript(offset: Int) -> Character {
        self[index(startIndex, offsetBy: offset)]
    }
}

let char = String("Swift Programming"[10])
print(char)
