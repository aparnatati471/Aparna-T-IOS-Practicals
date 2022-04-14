import UIKit

// MARK: LoginCoordinator Conforming CoodinatorProtocol
class LoginCoordinator: CoodinatorProtocol {
    
    var navigationController: UINavigationController?
    var childCoordinator: [CoodinatorProtocol] = [CoodinatorProtocol]()

    // Initializer
    init(with _navigationController: UINavigationController) {
        self.navigationController = _navigationController
    }
    
    // Navigate to MVVMLoginViewController
    func configureRootViewController() {
        let login = MvvmLoginViewController.instantiateFromStoryBoard(from: .mvvm)
        login.loginCoordinator = self
        navigationController?.pushViewController(login, animated: true)
    }
    
    // Navigate to MVVMAPICallingVC
    func navigateToHome() {
        let home = MvvmAPICallingVC.instantiateFromStoryBoard(from: .mvvm)
        home.mvvmApiCalling = self
        navigationController?.pushViewController(home, animated: true)
    }
    
    // Navigate to ViperView
    func navigateToViper() {
        let router = UserRouter()
        router.start(navigationController: navigationController)
    }
    
}
