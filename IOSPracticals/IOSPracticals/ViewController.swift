import UIKit

class ViewController: UIViewController, CoordinatorBoard {

    var mainCoordinator: MainCoordinator?

    // MARK: Overidden Method
    override func viewDidLoad() {
        super.viewDidLoad()
    }

    // MARK: Action Method for Navigation Controller VC
    @IBAction func click(_ sender: UIButton) {
        mainCoordinator?.configureLogin()
    }
}

