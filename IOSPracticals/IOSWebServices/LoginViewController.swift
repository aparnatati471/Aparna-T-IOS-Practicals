// MARK: Import Statements
import UIKit

class LoginViewController: UIViewController {
        
    // MARK: Overidden method
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    // MARK: IBAction
    @IBAction func login_clicked(_ sender: UIButton) {
        let user = UserLogin(email: "eve.holt@reqres.in", password: "cityslicka")
        login(user: user)
    }
    
    // MARK: Class Method
    func login(user: UserLogin) {
        if let url = URL(string: "https://reqres.in/api/login") {
            var urlRequest = URLRequest(url: url)
            urlRequest.httpMethod = "POST"
            urlRequest.addValue("application/json", forHTTPHeaderField: "Content-Type")

            do {
                urlRequest.httpBody = try JSONEncoder().encode(user)
            } catch let error {
                print("Error while JSON Encoding:\(error.localizedDescription)")
            }
            
            let dataTask = URLSession.shared.dataTask(with: urlRequest) { [weak self] (data, urlResponse, error) in
                if let error = error {
                    print("Error:\(error.localizedDescription)")
                }
                guard let responseData = data else { return }
                do {
                    let json = try JSONSerialization.jsonObject(with: responseData, options: [])
                    DispatchQueue.main.async {
                        self?.showAlert(title: "Login", message: "Logged in Successfully!! & Token is: \(json)")
                    }
                } catch let error {
                    print("Error: \(error.localizedDescription)")
                }
            }
            dataTask.resume()
        }
    }

    // ALertBox
    func showAlert(title: String, message: String) {
        let alert = UIAlertController(title: title, message: message, preferredStyle: .alert)
        alert.addAction(UIAlertAction(title: "Okay", style: UIAlertAction.Style.default, handler: nil))
        self.present(alert, animated: true, completion: nil)
    }
    
}
