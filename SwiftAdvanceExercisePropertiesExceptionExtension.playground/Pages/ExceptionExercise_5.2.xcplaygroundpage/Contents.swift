// Create a program for shopping cart. If desired quantity for an item is not available, throw exception.

enum ShoppingCartError: Error {
    
    case quantityError
    
}

struct ShoppingCart {
    
    var availableQuantity = 5
    
    func checkQuantity(item: String, quantity: Int) throws {
        if quantity >= availableQuantity {
            throw ShoppingCartError.quantityError
        } else {
            print("Desired Quantity \(quantity) for Item \(item) is available")
        }
    }
    
}

var objShoppingCart = ShoppingCart()

do {
    try objShoppingCart.checkQuantity(item: "Bread", quantity: 2)
    try objShoppingCart.checkQuantity(item: "Haldiram's Biscuit", quantity: 7)
} catch ShoppingCartError.quantityError {
    print("OOPS ! Don't Have Desired Quantity!!")
}
