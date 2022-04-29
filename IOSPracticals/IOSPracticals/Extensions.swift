import UIKit

extension UIViewController {
    
    func hideKeyboardWhenTappedAround() {
        let tap = UITapGestureRecognizer(target: self, action: #selector(UIViewController.dismissKeyboard))
        view.addGestureRecognizer(tap)
    }
    
    @objc func dismissKeyboard() {
        view.endEditing(true)
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
