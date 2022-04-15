import UIKit

class ToolBarViewController: UIViewController {
    
    // MARK: Outlets
    @IBOutlet weak var txtPickerData: UITextField!
    
    // MARK: Variable Declaration and Initialization
    var pickerView: UIPickerView!
    var pickerData = ["Java", "Kotlin", "Swift", "Android", "IOS"]

    override func viewDidLoad() {
        super.viewDidLoad()
        
        // PickerView
        pickerView = UIPickerView(frame:CGRect(x: 0, y: 0, width: self.view.frame.size.width, height: 216))
        pickerView.backgroundColor = UIColor.white
        pickerView.delegate = self
        pickerView.dataSource = self
        txtPickerData.inputView = pickerView
        
        // ToolBar
        let toolBar = UIToolbar()
        toolBar.barStyle = .default
        toolBar.isTranslucent = true
        toolBar.tintColor = UIColor(red: 92/255, green: 216/255, blue: 255/255, alpha: 1)
        toolBar.sizeToFit()

        // Adding Buttons to ToolBar
        let doneButton = UIBarButtonItem(title: "Done", style: .plain, target: self, action: #selector(ToolBarViewController.doneClick))
        let spaceButton = UIBarButtonItem(barButtonSystemItem: .flexibleSpace, target: nil, action: nil)
        let cancelButton = UIBarButtonItem(title: "Cancel", style: .plain, target: self, action: #selector(ToolBarViewController.cancelClick))
        toolBar.setItems([cancelButton, spaceButton, doneButton], animated: false)
        toolBar.isUserInteractionEnabled = true
        txtPickerData.inputAccessoryView = toolBar
    }

    @objc func doneClick() {
        txtPickerData.resignFirstResponder()
    }
    
    @objc func cancelClick() {
        txtPickerData.resignFirstResponder()
    }
    
}

// MARK: PickerView Data Source Methods
extension ToolBarViewController: UIPickerViewDataSource {
    
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
    }
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return pickerData.count
    }
    
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        return pickerData[row]
    }
    
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        self.txtPickerData.text = pickerData[row]
    }
    
}

// MARK: PickerView Delegate Methods
extension ToolBarViewController: UIPickerViewDelegate {
}

