import UIKit

// MARK: FirstViewController
class FirstViewController: UIViewController {

    // MARK: StoryBoard Instantiate
    let storyBoard = UIStoryboard(name: "UINavigationController", bundle: Bundle.main)

    // MARK: Overidden Method
    override func viewDidLoad() {
        super.viewDidLoad()
        self.navigationItem.title = "First View Controller"
        self.navigationItem.leftBarButtonItem = UIBarButtonItem(title: "Back", style: .plain, target: self, action: #selector(back))
        self.navigationItem.rightBarButtonItem = UIBarButtonItem(title: "Next", style: .plain, target: self, action: #selector(goToSecondVC))
    }
    
    // MARK: BackToNavigation
    @objc func back() {
        self.navigationController?.popViewController(animated: true)
    }
    
    // MARK: NextToNavigation
    @objc func goToSecondVC() {
        guard let secondVC = storyBoard.instantiateViewController(withIdentifier: "SecondVC") as? SecondViewController else {
            return
        }
        navigationController?.pushViewController(secondVC, animated: true)
    }
    
    // MARK: Navigate to Second VC with Present Modally
    @IBAction func goToSecondVCPresent(_ sender: UIButton) {
        guard let secondVC = storyBoard.instantiateViewController(withIdentifier: "SecondVC") as? SecondViewController else {
            return
        }
        secondVC.modalPresentationStyle = .automatic
        self.present(secondVC, animated: true, completion: nil)
    }
    
    // MARK: Navigate to Second VC with Push
    @IBAction func goToSecondVCPush(_ sender: UIButton) {
        guard let secondVC = storyBoard.instantiateViewController(withIdentifier: "SecondVC") as? SecondViewController else {
            return
        }
        navigationController?.pushViewController(secondVC, animated: true)
    }
    
}

