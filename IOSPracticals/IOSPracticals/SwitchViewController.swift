import UIKit

class SwitchViewController: UIViewController {

    // MARK: UIOutlets
    @IBOutlet weak var imageView: UIImageView!
    @IBOutlet weak var switchView: UISwitch!
    @IBOutlet weak var switchLabel: UILabel!
    @IBOutlet weak var stepperLabel: UILabel!
    @IBOutlet weak var stepper: UIStepper!
    
    // MARK: Overridden Method
    override func viewDidLoad() {
        super.viewDidLoad()
    }

    // MARK: Action Method for UISwitch
    @IBAction func buttonClicked(_ sender: UISwitch) {
        switchLabel.text = sender.isOn ? "The Switch is ON" : "The Switch is OFF"
    }

    // MARK: Action Method for UIStepper
    @IBAction func stepperValueChanged(_ sender: UIStepper) {
        stepperLabel.text = String(sender.value)
    }
    
    // MARK: Action Method for UISegment
    @IBAction func stepperBackgroundColor(_ sender: UISegmentedControl) {
        let segmentPosition = sender.selectedSegmentIndex
        switch(segmentPosition) {
            case 0: imageView.image = UIImage(named: "whatsapp.png")
            case 1: imageView.image = UIImage(named: "face.png")
            case 2: imageView.image = UIImage(named: "insta.png")
            default: imageView.image = UIImage(named: "whatsapp.png")
            break
        }
    }
    
}
