//Create one swift subscript program which takes range as input and returns the string between the ranges.

extension String {
    subscript(startIndex: Int, endIndex: Int) -> String {
        let startIndex = self.index(self.startIndex, offsetBy: startIndex)
        let endIndex = self.index(self.startIndex, offsetBy: endIndex)
        return String(self[startIndex..<endIndex])
    }
}

let str = "Swift programming"
print(str[0, 10])
