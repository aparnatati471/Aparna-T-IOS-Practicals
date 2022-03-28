// MARK: Import Statements
import Foundation
import Alamofire

// MARK: Singleton Class
class GenericClass {
    
    // Shared Object
    static let shared = GenericClass()
    
    // Base Url
    let BASE_URL = "https://reqres.in/"
    
    // private initializer which prevents object creation
    private init(){}
    
    // MARK: Enum for APIs
    enum APIs {
        case login
        case listUsers
        case singleUser
        case createUser
        case updateUser
        case deleteUser
    }

    // MARK: Enum for URLEncoding
    enum UrlEncoding {
        
        // Static function for create urls
        static func createURL(url: APIs, endPoints: String = "") -> String {
            switch url {
                case .login:
                    return "\(shared.BASE_URL)api/login"
                case .listUsers:
                return "\(shared.BASE_URL)api/users?page=\(endPoints))"
                case .singleUser:
                    return "\(shared.BASE_URL)api/users/\(endPoints)"
                case .createUser:
                    return "\(shared.BASE_URL)api/users"
                case .updateUser, .deleteUser:
                    return "\(shared.BASE_URL)api/users/\(endPoints))"
            }
        }
        
        // Static function for url encoding
        static func urlEncoding(url: APIs) -> ParameterEncoding {
            switch url {
                case .login, .listUsers, .singleUser, .deleteUser, .createUser, .updateUser:
                return URLEncoding.default
            }
        }
        
        // Static function for url methods
        static func urlMethod(url: APIs) -> HTTPMethod {
            switch url {
            case .login, .updateUser:
                    return .put
                case .listUsers, .singleUser:
                    return .get
                case .createUser:
                    return .post
                case .deleteUser:
                    return .delete
            }
        }
        
    }

    // MARK: Generic class of Alamofire
    func request<T: Decodable>(typeT: T.Type, url: URL, apiUrl: APIs, parameters: [String: Any]?, completion: @escaping (T?, Int) -> Void) {
        AF.request(url, method: UrlEncoding.urlMethod(url: apiUrl), parameters: parameters, encoding: UrlEncoding.urlEncoding(url: apiUrl), headers: nil, interceptor: nil, requestModifier: nil).response { response in
            switch response.result {
                
                case .success(let data):
                    guard let responseData = data else {
                        completion(nil, response.response?.statusCode ?? 0)
                        return
                    }
                    do {
                        guard let jsonData = try JSONDecoder().decode(T?.self, from: responseData) else { return }
                        print("Response Code: \(String(describing: response.response?.statusCode))")
                        completion(jsonData, response.response?.statusCode ?? 0)
                    } catch let error {
                        print("Error \(error)")
                    }
                    break
                
                case .failure(let error):
                    print(error)
                    break
            }
        }
    }

}



