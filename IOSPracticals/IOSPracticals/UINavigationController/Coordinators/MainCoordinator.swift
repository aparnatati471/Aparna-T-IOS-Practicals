import UIKit

// MARK: MainCoordinator
protocol CoodinatorProtocol {
    
    // MARK: Coodinator Protocol Methods & Properties
    var navigationController: UINavigationController? { get set }
    var childCoordinator: [CoodinatorProtocol] { get set }
    func configureRootViewController()
    
}

class MainCoordinator: CoodinatorProtocol {
    
    var navigationController: UINavigationController?
    var childCoordinator: [CoodinatorProtocol] = [CoodinatorProtocol]()
    
    // MARK: Initializer
    init(with _navigationController: UINavigationController) {
        self.navigationController = _navigationController
    }
    
    // MARK: Root View Controller
    func configureRootViewController() {
        let vc = ViewController.instantiateFromStoryBoard(from: .main)
        vc.mainCoordinator = self
        self.navigationController?.pushViewController(vc, animated: true)
    }
    
    // MARK: Navigate to NavigationController
    func configureLogin() {
        let loginChildCoordinator = NavigationController.instantiateFromStoryBoard(from: .uinavigation)
        loginChildCoordinator.mainCoordinator = self
        self.navigationController?.pushViewController(loginChildCoordinator, animated: true)
    }
    
    // MARK: Navigate to LoginVC
    func login() {
        let loginChildCoordinator = LoginVC.instantiateFromStoryBoard(from: .coorinatorPattern)
        loginChildCoordinator.loginChildCoordinator = self
        self.navigationController?.pushViewController(loginChildCoordinator, animated: true)
    }
    
    // MARK: Navigate to Signup
    func navigateToSignup() {
        let signupChildCoordinator = SignupCoordinator(with: navigationController!)
        childCoordinator.append(signupChildCoordinator)
        signupChildCoordinator.configureRootViewController()
    }
    
    // MARK: Navigation of Home VC
    func navigateToHome(userName: String, homeDelegate: DelegateOne) {
        let homeChildCoordinator = HomeCoordinator(with: navigationController!, userName: userName)
        childCoordinator.append(homeChildCoordinator)
        homeChildCoordinator.configureRootViewController1(homeDelegate: homeDelegate)
    }
    
}
