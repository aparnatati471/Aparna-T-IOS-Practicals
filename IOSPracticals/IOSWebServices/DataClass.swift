// MARK: Data class for login
struct UserLogin: Codable {
    let email: String
    let password: String
}

// MARK: Data class for Response
struct Response: Codable {
    
    let page, perPage, total, totalPages: Int
    let data: [Users]
    let support: Support
    
    enum CodingKeys: String, CodingKey {
        case page
        case perPage = "per_page"
        case total
        case totalPages = "total_pages"
        case data
        case support
    }
    
}

// MARK: Data class for Users
struct Users: Codable {
    
    var id: Int
    let email, firstName, lastName, avatar: String
    
    enum CodingKeys: String, CodingKey {
        case id
        case email
        case firstName = "first_name"
        case lastName = "last_name"
        case avatar
    }
    
}

// MARK: Data class for Single user
struct SingleUser: Codable {
    let data: Users
    let support: Support
}

// MARK: Data class for Support
struct Support: Codable {
    let url: String
    let text: String
}

// MARK: Data class for PutPatchUpdate
struct PutPatchUpdate: Codable {
    let name: String
    let job: String
}

// MARK: Data class for Delete
struct Delete: Codable {}
