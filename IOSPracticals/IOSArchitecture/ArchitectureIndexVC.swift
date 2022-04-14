import UIKit

class ArchitectureIndexVC: UIViewController {

    weak var mvvmLoginCoordinator: LoginCoordinator?

    // MARK: Overridden Method
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
}

// MARK: Extension of UsersViewController conforms UITableViewDataSource
extension ArchitectureIndexVC: CoordinatorBoard {

    // Action method for Mvvm
    @IBAction func mvvm(_ sender: UIButton) {
        let navigation = UINavigationController()
        let loginScreen = LoginCoordinator(with: navigationController ?? navigation)
        loginScreen.configureRootViewController()
    }
    
    // Action method for Viper
    @IBAction func viperClicked(_ sender: UIButton) {
        let navigation = UINavigationController()
        let loginScreen = LoginCoordinator(with: navigationController ?? navigation)
        loginScreen.navigateToViper()
    }
    
}
