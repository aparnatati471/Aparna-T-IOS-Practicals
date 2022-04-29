import UIKit

class ViewControllerForSignup: ViewController {

    @IBOutlet weak var tfEmail: UITextField!
    @IBOutlet weak var tfPassword: UITextField!
    @IBOutlet weak var tfFullName: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tfEmail.delegate = self
        tfPassword.delegate = self
        tfFullName.delegate = self
        tfPassword.setRightIcon(UIImage(named: "icons")!)
        hideKeyboardWhenTappedAround()
    }
    
}

extension ViewControllerForSignup: UITextFieldDelegate {
    
    func switchBasedNextTextField(_ textField: UITextField) {
        switch textField {
            case tfFullName:
                tfEmail.becomeFirstResponder()
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


