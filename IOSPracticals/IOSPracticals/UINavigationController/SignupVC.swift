import UIKit

// MARK: Signup View Controller
class SignupVC: UIViewController, CoordinatorBoard {
  
    // MARK: Outlets
    weak var signupChildCoordinator: SignupCoordinator?
    var username: String = String()
    @IBOutlet weak var greet: UILabel!
    @IBOutlet weak var txtUsername: UITextField!
    
    // MARK: Overidden Method
    override func viewDidLoad() {
        super.viewDidLoad()
        self.navigationItem.leftBarButtonItem = UIBarButtonItem(title: "Back", style: .plain, target: self, action: #selector(loginClicked))
        self.navigationItem.rightBarButtonItem = UIBarButtonItem(title: "Next", style: .plain, target: self, action: #selector(signUpClicked))
    }
  
    // MARK: Action Method for login
    @IBAction func loginClicked(_ sender: UIButton) {
        signupChildCoordinator?.navigateToLogin()
    }
    
    // MARK: Action Method for Signup
    @IBAction func signUpClicked(_ sender: UIButton) {
        signupChildCoordinator?.navigateToHome()
    }
  
}
