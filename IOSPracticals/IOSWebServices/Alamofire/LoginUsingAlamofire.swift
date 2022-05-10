// MARK: Import Statements
import UIKit

class LoginUsingAlamofire: UIViewController {

    // MARK: Overidden Method
    override func viewDidLoad() {
        super.viewDidLoad()
    }

    // MARK: IBAction
    @IBAction func loginClicked(_ sender: UIButton) {
        let user = UserLogin(email: "eve.holt@reqres.in", password: "cityslicka")
        loginUser(user: user)
    }
    
    // MARK: Class Method
    func loginUser(user: UserLogin) {
        guard let url = URL(string: GenericClass.UrlEncoding.createURL(url: .login)) else { return }
        let param = ["email" : user.email , "password": user.password]
        GenericClass.shared.request(typeT: UserLogin.self, url: url, apiUrl: .login, parameters: param, completion: { [weak self] response, code in
            guard response != nil else { return }
            self?.showAlert(title: "Login", message: "User logged in Sucessfully!! Status code: \(code)")
        })
    }
    
    // AlertBox
    func showAlert(title: String, message: String) {
        let alert = UIAlertController(title: title, message: message, preferredStyle: .alert)
        alert.addAction(UIAlertAction(title: "Okay", style: UIAlertAction.Style.default, handler: nil))
        self.present(alert, animated: true, completion: nil)
    }
    
}
