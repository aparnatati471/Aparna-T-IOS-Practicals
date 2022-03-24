import UIKit

// MARK: Home View Controller
class HomeVC: UIViewController, CoordinatorBoard {
      
    // MARK: Outlets
    weak var homeChildCoordinator: HomeCoordinator?
    @IBOutlet weak var greetings: UILabel!
    var usrName: String = String()
    var homeD: DelegateOne?
    
    // MARK: Overidden Method
    override func viewDidLoad() {
        super.viewDidLoad()
        self.navigationItem.leftBarButtonItem = UIBarButtonItem(title: "Back", style: .plain, target: self, action: #selector(backToSecondVC))
        greetings.text = "Welcome " + usrName
    }

    // MARK: Back To Navigation
    @objc func backToSecondVC() {
        self.homeD?.sendDataToBack(data: greetings.text ?? "Empty")
        navigationController?.popViewController(animated: true)
    }
        
}
