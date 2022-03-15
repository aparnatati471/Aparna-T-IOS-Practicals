import UIKit

// MARK: SignUpCoordinator Conforming CoodinatorProtocol
class SignupCoordinator: CoodinatorProtocol {
   
    var navigationController: UINavigationController?
    private var userName: String = ""
    var childCoordinator: [CoodinatorProtocol] = [CoodinatorProtocol]()

    // MARK: Initializer
    init(with _navigationController: UINavigationController) {
        self.navigationController = _navigationController
    }
    
    // MARK: Signup View Controller
    func configureRootViewController() {
        let signUp = SignupVC.instantiateFromStoryBoard(from: .coorinatorPattern)
        signUp.signupChildCoordinator = self
        navigationController?.pushViewController(signUp, animated: true)
    }
    
    // MARK: Navigation of Login VC
    func navigateToLogin() {
        let loginVC = LoginVC.instantiateFromStoryBoard(from: .coorinatorPattern)
        navigationController?.pushViewController(loginVC, animated: true)
    }

    // MARK: Navigation of Home VC
    func navigateToHome() {
        let homeVC = HomeVC.instantiateFromStoryBoard(from: .coorinatorPattern)
        navigationController?.pushViewController(homeVC, animated: true)
    }
    
}
