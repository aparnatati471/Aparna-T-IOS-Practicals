//I have one integer array and create one function which takes range as input and returns all elements between the range.

extension Array {
    subscript (range r: Range<Int>) -> Array {
        return Array(self[r])
    }
}

print([10,20,30][0..<2])
print([10,20,30][0...2])
