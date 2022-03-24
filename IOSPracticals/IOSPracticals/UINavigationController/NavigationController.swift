import UIKit

class NavigationController: UIViewController, CoordinatorBoard {

    // MARK: Outlets
    var mainCoordinator: MainCoordinator?
    
    // MARK: Overidden Method
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    // MARK: Action Method for login VC
    @IBAction func clicked(_ sender: UIButton) {
        mainCoordinator?.login()
    }
    
}
