//I have one key value pair array. Create one function using subscript which takes key as input and returns it’s value.

extension Dictionary {
    subscript(i: Int) -> (key: Key, value: Value) {
        get {
            return self[index(startIndex, offsetBy: i)];
        }
    }
}

let array = [1: "Hello", 2: "Hii"]
print(array[1] ?? "No Value Found")
