//Create one structure which have initializer which takes array of int as input returns  two arrays one of all even numbers and another is all odd numbers.

struct StructureExerciseFour {
    
    var numbers = [1, 3, 5, 6, 8, 10, 9, 7, 8, 12]
    var odd: [Int] = []
    var even: [Int] = []
    
    mutating func oddEven() -> ([Int], [Int]) {
        numbers.forEach { num in
            if num % 2 == 0 {
                even.append(num)
            } else {
                odd.append(num)
            }
        }
        return (even, odd)
    }
    
}

var obj = StructureExerciseFour()
obj.oddEven() // Expected Output : ([6, 8, 10, 8, 12] , [1, 3, 5, 9, 7])
