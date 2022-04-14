import UIKit

// MARK: Protocol for UserPresenter
protocol UserPresenterDelegate: AnyObject {
    func presentUsers()
    var delegate: IView? { get set }
}

// MARK: Class UserPresenter implements UserPresenterDelegate Protocol
class UserPresenter: UserPresenterDelegate {
    
    var delegate: IView?
    
    // API Calling function for get data
    func presentUsers() {
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
                    self.delegate?.onSuccess(users: json.data)
                } catch let error {
                    print("JSON Parsing Error: \(error) ")
                }
            }
            dataTask.resume()
        }
    }
   
}


