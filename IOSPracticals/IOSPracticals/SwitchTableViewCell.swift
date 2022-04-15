import UIKit

class SwitchTableViewCell: UITableViewCell {

    // MARK: Outlets
    @IBOutlet weak var mySwitch: UISwitch!
    @IBOutlet weak var myStack: UIStackView!
    
    override func awakeFromNib() {
        super.awakeFromNib()
    }

    // MARK: Action Method for UISwitch
    @IBAction func switchClicked(_ sender: Any) {
        myStack.axis = mySwitch.isOn ? .horizontal : .vertical
    }
    
    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
    }

}
