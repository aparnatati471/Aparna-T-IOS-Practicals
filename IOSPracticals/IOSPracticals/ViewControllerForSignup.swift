import UIKit

class ViewControllerForSignup: ViewController {

    @IBOutlet weak var txtPassword: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()
        txtPassword.setRightIcon(UIImage(named: "icons")!)
    }
    
}

