import UIKit

class ViewControllerForLogin: UIViewController {

    @IBOutlet weak var tfEmail: UITextField!
    @IBOutlet weak var tfPassword: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tfEmail.delegate = self
        tfPassword.delegate = self
        tfPassword.setRightIcon(UIImage(named: "icons")!)
        hideKeyboardWhenTappedAround()
    }
    
}

extension ViewControllerForLogin: UITextFieldDelegate {
    
    func switchBasedNextTextField(_ textField: UITextField) {
        switch textField {
            case tfEmail:
                tfPassword.becomeFirstResponder()
            default:
                tfPassword.resignFirstResponder()
        }
    }
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        switchBasedNextTextField(textField)
        return true
    }
    
}

