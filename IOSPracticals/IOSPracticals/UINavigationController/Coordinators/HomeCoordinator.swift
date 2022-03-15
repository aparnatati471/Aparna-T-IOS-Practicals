import UIKit

// MARK: HomeCoordinator Conforming CoodinatorProtocol
class HomeCoordinator: CoodinatorProtocol {

    var navigationController: UINavigationController?
    private var homeUserName: String = ""
    var childCoordinator: [CoodinatorProtocol] = [CoodinatorProtocol]()

    // MARK: Initializer
    init(with _navigationController: UINavigationController, userName: String) {
        self.navigationController = _navigationController
        self.homeUserName = userName
    }
    
    // MARK: Home View Controller
    func configureRootViewController() {
        let homeVC = HomeVC.instantiateFromStoryBoard(from: .coorinatorPattern)
        homeVC.usrName = homeUserName
        navigationController?.pushViewController(homeVC, animated: true)
    }
    
    // MARK: Navigation of Home VC
    func configureRootViewController1(homeDelegate: DelegateOne) {
        let homeVC = HomeVC.instantiateFromStoryBoard(from: .coorinatorPattern)
        homeVC.usrName = homeUserName
        homeVC.homeD = homeDelegate
        homeVC.homeChildCoordinator = self
        navigationController?.pushViewController(homeVC, animated: true)
    }
    
    // MARK: Navigation of Login VC
    func backToVC() {
        navigationController?.popViewController(animated: true)
    }

}
