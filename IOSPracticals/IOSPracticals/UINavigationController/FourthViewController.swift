import UIKit

// MARK: FourthViewController
class FourthViewController: UIViewController {

    // MARK: Outlet
    @IBOutlet weak var popOverButton: UIButton!
    
    // MARK: Overidden Method
    override func viewDidLoad() {
        super.viewDidLoad()
        self.navigationItem.leftBarButtonItem = UIBarButtonItem(title: "Back", style: .plain, target: self, action: #selector(onBackTapped))
    }

    // MARK: BackToNavigation
    @objc func onBackTapped() {
        self.navigationController?.popViewController(animated: true)
    }
    
    // MARK: NextToNavigation
    @IBAction func goToRootVC(_ sender: UIButton) {
        self.navigationController?.popToRootViewController(animated: true)
    }
    
}

// MARK: Extension of FourthVC
extension FourthViewController: UIPopoverPresentationControllerDelegate {
    
    @IBAction func popOverOfThirdVC(_sender: UIButton) {
        let storyBoard = UIStoryboard(name: "UINavigationController", bundle: Bundle.main)
        guard let thirdVC = storyBoard.instantiateViewController(withIdentifier: "ThirdVC") as? ThirdViewController else { return }
        thirdVC.modalPresentationStyle = .popover
        let popOverVc = thirdVC.popoverPresentationController
        popOverVc?.delegate = self
        popOverVc?.sourceView = self.popOverButton
        popOverVc?.sourceRect = CGRect(x: self.popOverButton.bounds.midX, y: self.popOverButton.bounds.midY, width: 0, height: 0)
        popOverVc?.permittedArrowDirections = UIPopoverArrowDirection.up
        thirdVC.preferredContentSize = CGSize(width: 500, height: 500)
        self.present(thirdVC, animated: true)
    }
    
}
