import UIKit

class LoginViewModel {
    
    var dynamic = Dynamics<[Users]?>(nil)

    // Validation Function for login
    func loginTapped(email: String, password: String) -> Validations {
        let user = user(email: email, password: password)
        if user.email.isEmpty {
            return Validations.emailEmpty("Email Could Not be Empty!!")
        } else if user.password.isEmpty {
            return Validations.passwordEmpty("Password Could Not be Empty!!")
        } else if password.count < 8 {
            return Validations.passwordValid("Password should be greater than 8 Characters")
        } else {
            return Validations.suceess("Login Successfull!!")
        }
    }
    
    // Get data from API function
    func getUsers() {
        if let url = URL(string: "https://reqres.in/api/users?page=2") {
            let urlRequest = URLRequest(url: url)
            let dataTask = URLSession.shared.dataTask(with: urlRequest) { (data, urlResponse, error) in
                     
                if let error = error {
                    print("Error:\(error.localizedDescription)")
                }
                      
                guard let responseData = data else { return }
                          
                guard urlResponse != nil else { return }
                          
                do {
                    let json = try JSONDecoder().decode(Response.self, from: responseData)
                    DispatchQueue.main.async {
                        self.dynamic.value = json.data
                    }
                } catch let error {
                    print("JSON Parsing Error: \(error) ")
                }
            }
            dataTask.resume()
        }
    }
    
}
