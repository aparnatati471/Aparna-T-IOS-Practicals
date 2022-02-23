import UIKit

class ViewControllerForLogin: UIViewController {

    @IBOutlet weak var txtPassword: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        txtPassword.setRightIcon(UIImage(named: "icons")!)
    }
    
}

extension UITextField {
    func setRightIcon(_ image: UIImage) {
        let iconView = UIImageView(frame: CGRect(x: 5, y: 5, width: 20, height: 20))
        iconView.image = image
        let iconContainer: UIView = UIView(frame: CGRect(x: 25, y: 0, width: 30, height: 30))
        iconContainer.addSubview(iconView)
        rightView = iconContainer
        rightViewMode = .always
    }
}


