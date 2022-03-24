import UIKit

// MARK: Third VC Protocol
protocol ThirdVCDelegate {
    func sendData(data: String)
}

// MARK: ThirdViewController
class ThirdViewController: UIViewController {

    // MARK: Outlets
    @IBOutlet weak var lblShowData: UILabel!
    var text: String?
    @IBOutlet weak var txtBackData: UITextField!
    var delegate: ThirdVCDelegate?
    
    // MARK: Overidden Method
    override func viewDidLoad() {
        super.viewDidLoad()
        self.navigationItem.title = "Third View Controller"
        self.navigationItem.leftBarButtonItem = UIBarButtonItem(title: "Back", style: .plain, target: self, action: #selector(onBackTapped))
        self.navigationItem.rightBarButtonItem = UIBarButtonItem(title: "Next", style: .plain, target: self, action: #selector(onNextTapped))
        lblShowData.text = text
    }

    // MARK: BackToNavigation
    @objc func onBackTapped() {
        self.navigationController?.popViewController(animated: true)
    }
    
    // MARK: NextToNavigation
    @objc func onNextTapped() {
        let storyBoard = UIStoryboard(name: "UINavigationController", bundle: Bundle.main)
        guard let fourthVC = storyBoard.instantiateViewController(withIdentifier: "FourthVC") as? FourthViewController else {
            return
        }
        navigationController?.pushViewController(fourthVC, animated: true)
    }
    
    // MARK: BackWard Data Passing
    @IBAction func sendBackData(_ sender: AnyObject) {
        delegate?.sendData(data: txtBackData.text ?? "")
    }
    
}

