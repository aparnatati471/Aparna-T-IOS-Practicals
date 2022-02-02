//Nested Type Demo 1
//If struct type ,enum Type contains another struct or enum

struct Fruit {
    
    enum RedFruit: Character {
        
        case apple = "🍎"
        case strawberry = "🍓"
        case watermelon = "🍉"
        
        enum Size: Int {
            
            case small = 1, medium, big
            
        }
        
    }
    
    var myFruit: RedFruit?
    var myFruitSize: RedFruit.Size?
    
}

//Get RedFruit cases
print(Fruit.RedFruit.apple.rawValue)
print(Fruit.RedFruit.strawberry.rawValue)
print(Fruit.RedFruit.watermelon.rawValue)

//Get RedFruit Sizes
print(Fruit.RedFruit.Size.small.rawValue)
print(Fruit.RedFruit.Size.medium.rawValue)
print(Fruit.RedFruit.Size.big.rawValue)

//Object Creation
var fruitObj = Fruit()

fruitObj.myFruit = Fruit.RedFruit.watermelon
fruitObj.myFruitSize = Fruit.RedFruit.Size.big

if let fruitName = fruitObj.myFruit, let fruitSize = fruitObj.myFruitSize {
    print("FruitName : \(fruitName), FruitSize : \(fruitSize)")
}
