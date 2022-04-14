// MARK: Enum for Validations
enum Validations {
    
    case emailEmpty(String)
    case passwordEmpty(String)
    case emailValid(String)
    case passwordValid(String)
    case suceess(String)
    
}

// MARK: Data Class for user
struct user {
    
    var email: String
    var password: String
    
}

