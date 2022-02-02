// Create a password validation program. If length of password is less than 8 characters, it throws “Password too short” exception and if password is empty, throw “Empty password” exception.

enum CustomError: Error {
    
    case passwordLength
    case passwordEmpty
    
}

func passwordValidation(password: String) throws {
    if password.isEmpty {
        throw CustomError.passwordEmpty
    } else if password.count < 8 {
        throw CustomError.passwordLength
    } else {
        print("Valid Password \(password)")
    }
}

do {
    try passwordValidation(password: "aparna123")
} catch CustomError.passwordLength {
    print("Password too short")
} catch CustomError.passwordEmpty {
    print("Password is empty")
}

// Expected Output : if password is empty then it will display Password too Empty and if password length less than 8 then password too short and if any error is not thrown it will display valid password
