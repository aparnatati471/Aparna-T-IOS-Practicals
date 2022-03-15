import UIKit

// MARK: SecondViewController
class SecondViewController: UIViewController {

    // MARK: Outlets & storyboard instantiate
    @IBOutlet weak var txtData: UITextField!
    @IBOutlet weak var lblshow: UILabel!
    let storyBoard = UIStoryboard(name: "UINavigationController", bundle: Bundle.main)

    // MARK: Overidden Method
    override func viewDidLoad() {
        super.viewDidLoad()
        self.navigationItem.title = "Second View Controller"
        self.navigationItem.leftBarButtonItem = UIBarButtonItem(title: "Back", style: .plain, target: self, action: #selector(onBackTapped))
        self.navigationItem.rightBarButtonItem = UIBarButtonItem(title: "Next", style: .plain, target: self, action: #selector(onNextTapped))
    }
    
    // MARK: BackToNavigation
    @objc func onBackTapped() {
        self.navigationController?.popViewController(animated: true)
    }
    
    // MARK: NextToNavigation
    @objc func onNextTapped() {
        guard let thirdVC = storyBoard.instantiateViewController(withIdentifier: "ThirdVC") as? ThirdViewController else {
            return
        }
        navigationController?.pushViewController(thirdVC, animated: true)
    }
    
    // MARK: Dismiss Second VC
    @IBAction func dismissSecondVC(_ sender: UIButton) {
        self.dismiss(animated: true, completion: nil)
    }
    
    // MARK: Pop Second VC
    @IBAction func popSecondVC(_ sender: UIButton) {
        self.navigationController?.popViewController(animated: true)
    }
    
    // MARK: Push Fourth VC
    @IBAction func pushFourthVC(_ sender: UIButton) {
        guard let fouthVC = storyBoard.instantiateViewController(withIdentifier: "FourthVC") as? FourthViewController else {
            return
        }
        navigationController?.pushViewController(fouthVC, animated: true)
    }
    
    // MARK: Send Data To Third VC using instance property
    @IBAction func sentDataToThirdVC(_ sender: UIButton) {
        let viewController = storyBoard.instantiateViewController(withIdentifier: "ThirdVC") as? ThirdViewController
        viewController?.text = txtData.text
        viewController?.modalPresentationStyle = .fullScreen
        self.navigationController?.pushViewController(viewController ?? SecondViewController(), animated: true)
    }
    
    // MARK: Send Data To Third VC using Segue
    @IBAction func sendDataUsingSegue(_ sender: UIButton) {
        performSegue(withIdentifier: "passData", sender: nil)
    }
    
    // MARK: Overidden Method
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "passData", let thirdVc = segue.destination as? ThirdViewController {
            thirdVc.text = txtData.text
            thirdVc.delegate = self
        }
    }
    
}

// MARK: Extension of SecondVC
extension SecondViewController: ThirdVCDelegate {
    
    func sendData(data: String) {
        lblshow.text = data
        navigationController?.popViewController(animated: true)
    }
    
}
