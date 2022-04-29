import UIKit

class DatePickerViewController: UIViewController {

    // MARK: Outlets
    @IBOutlet weak var dateSegment: UISegmentedControl!
    @IBOutlet weak var dispDateLable: UILabel!
    @IBOutlet weak var datePick: UIDatePicker!
    var isPlaying = false
    
    override func viewDidLoad() {
        super.viewDidLoad()
        datePick.locale = .current
        datePick.date = Date()
        datePick.preferredDatePickerStyle = .wheels
        datePick.addTarget(self, action: #selector(dateSelected), for: .valueChanged)
    }

    // MARK: Action Method for segment control
    @IBAction func segmentSelceted(_ sender: UISegmentedControl) {
        let pos = sender.selectedSegmentIndex
        switch(pos) {
            case 0: datePick.preferredDatePickerStyle = .wheels
            case 1: datePick.preferredDatePickerStyle = .compact
            case 2: datePick.preferredDatePickerStyle = .inline
            default: break
        }
    }

    @objc func dateSelected() {
        let dateFormatter = DateFormatter()
        dateFormatter.dateStyle = .short
        dateFormatter.timeStyle = .short
        let date = dateFormatter.string(from: datePick.date)
        dispDateLable.text = date
    }
    
}
