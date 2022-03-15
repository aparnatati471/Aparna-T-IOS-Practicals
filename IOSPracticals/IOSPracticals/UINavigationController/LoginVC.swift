import UIKit

// MARK: DelegateOne Protocol
protocol DelegateOne: AnyObject {
    func sendDataToBack(data: String)
}

// MARK: Login View Controller
class LoginVC: UIViewController, CoordinatorBoard {
  
    // MARK: Outlets
    @IBOutlet weak var password: UITextField!
    @IBOutlet weak var username: UITextField!
    var user_name: String = String()
    @IBOutlet weak var lblData: UILabel!
    weak var loginChildCoordinator: MainCoordinator?

    // MARK: Overidden Method
    override func viewDidLoad() {
        super.viewDidLoad()
        self.navigationItem.rightBarButtonItem = UIBarButtonItem(title: "Next", style: .plain, target: self, action: #selector(signUpClicked))
    }
    
    // MARK: Action Method for Signup
    @IBAction func signUpClicked(_ sender: UIButton) {
        loginChildCoordinator?.navigateToSignup()
    }
    
    // MARK: Action Method for Login
    @IBAction func loginClicked(_ sender: UIButton) {
        loginChildCoordinator?.navigateToHome(userName: self.username.text ?? "Empty", homeDelegate: self)
    }
    
}

// MARK: Login View Controller Extension
extension LoginVC: DelegateOne {
    
    func sendDataToBack(data: String) {
        lblData.text = data
    }
 
}
