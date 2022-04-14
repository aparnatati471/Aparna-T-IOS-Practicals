import UIKit

// MARK: Class MvvmLoginViewController implements CoordinatorBoard Protocol
class MvvmLoginViewController: UIViewController, CoordinatorBoard {

    // Outlets and Variable Instantiation
    @IBOutlet weak var login: UIButton!
    @IBOutlet weak var password: UITextField!
    @IBOutlet weak var email: UITextField!
    private var loginViewModel = LoginViewModel()
    var loginCoordinator: LoginCoordinator?
    
    // MARK: Overridden Method
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    // Action Method for login
    @IBAction func loginClicked(_ sender: UIButton) {
        let res = loginViewModel.loginTapped(email: email.text ?? "", password: password.text ?? "")
        showAlert(String(describing: res))
    }
    
    // Alert box
    func showAlert(_ message: String) {
        let alert = UIAlertController(title: title, message: message, preferredStyle: UIAlertController.Style.alert)
        alert.addAction(UIAlertAction(title: "Ok", style: UIAlertAction.Style.default, handler: { (action) -> Void in
            self.loginCoordinator?.navigateToHome()
        }))
        alert.addAction(UIAlertAction(title: "Cancel", style: UIAlertAction.Style.default, handler: nil))
        self.present(alert, animated: true, completion: nil)
    }

}

