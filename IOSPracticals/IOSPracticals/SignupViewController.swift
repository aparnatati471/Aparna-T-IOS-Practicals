import UIKit

class SignupViewController: UIViewController, UITextViewDelegate {

    @IBOutlet weak var profileImage: UIImageView!
    @IBOutlet weak var txtbio: UITextView!
    @IBOutlet weak var radio2button: UIButton!
    @IBOutlet weak var radio1button: UIButton!
    @IBOutlet weak var txtEmail: UITextField!
    @IBOutlet weak var txtPassword: UITextField!
    @IBOutlet weak var btnSubmit: UIButton!
    @IBOutlet weak var passwordError: UILabel!
    @IBOutlet weak var emailError: UILabel!
    @IBOutlet weak var progressView: UIProgressView!
    let progress = Progress(totalUnitCount: 5)
    
    @IBAction func btnClick(_ sender: UIButton) {
        progressView.isHidden = false
        progressView.progress = 0
        Timer.scheduledTimer(withTimeInterval: 1, repeats: true) { (timer) in
            guard self.progress.isFinished == false else {
                timer.invalidate()
                print("Finished...")
                return
            }
            self.progress.completedUnitCount += 1
            let progressFloat = Float(self.progress.fractionCompleted)
            self.progressView.setProgress(progressFloat, animated: true)
        }
        resetForm()
    }
    
    func resetForm() {
        emailError.isHidden = false
        passwordError.isHidden = false
        
        emailError.text = "Required"
        passwordError.text = "Required"
        
        txtEmail.text = ""
        txtPassword.text = ""
    }
    
    func checkForValidForm() {
        if emailError.isHidden && passwordError.isHidden {
            btnSubmit.isEnabled = false
        } else {
            btnSubmit.isEnabled = true
        }
    }
    
    @IBAction func email(_ sender: UITextField) {
        if let email = txtEmail.text {
            if email.isEmpty {
                emailError.text = "Email could't be empty!"
                emailError.isHidden = false
            } else {
                emailError.isHidden = true
            }
        }
        checkForValidForm()
    }
    
    @IBAction func password(_ sender: UITextField) {
        if let password = txtPassword.text {
            if password.isEmpty {
                passwordError.text = "Password could't be empty"
                passwordError.isHidden = false
            } else if password.count < 8 {
                passwordError.text = "Password length must be greater than or equal to 8"
                passwordError.isHidden = false
            } else {
                passwordError.isHidden = true
            }
        }
        checkForValidForm()
    }
    
    @IBAction func radiobutton(_ sender: UIButton) {
        if sender.tag == 1 {
            radio1button.isSelected = true
            radio2button.isSelected = false
        } else if sender.tag == 2 {
            radio2button.isSelected = true
            radio1button.isSelected = false
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        progressView.isHidden = true
        profileImage.layer.masksToBounds = true
        profileImage.layer.cornerRadius = profileImage.bounds.width / 2
        let tapGesture = UITapGestureRecognizer(target: self, action: #selector(imageTapped(tapGestureRecognizer:)))
        profileImage.addGestureRecognizer(tapGesture)
        txtbio.text = "Bio"
        txtbio.textColor = UIColor.lightGray
        txtbio.font = UIFont(name: "verdana", size: 13.0)
        txtbio.layer.borderWidth = 1
        txtbio.layer.borderColor = UIColor.lightGray.cgColor
        txtbio.layer.cornerRadius = 10
        txtbio.returnKeyType = .done
        txtbio.delegate = self
    }
    
    @objc
    func imageTapped(tapGestureRecognizer: UITapGestureRecognizer) {
        openGallery()
    }
    
    func textViewDidBeginEditing(_ textView: UITextView) {
        if textView.text == "Bio" {
            textView.text = ""
            textView.textColor = UIColor.black
            textView.textAlignment = .justified
            textView.font = UIFont(name: "verdana", size: 17.0)
        }
    }
    
    func textView(_ textView: UITextView, shouldChangeTextIn range: NSRange, replacementText text: String) -> Bool {
        if text == "\n" {
            textView.resignFirstResponder()
        }
        return true
    }
    
    func textViewDidEndEditing(_ textView: UITextView) {
        if textView.text == "" {
            txtbio.text = "Bio"
            txtbio.textColor = UIColor.lightGray
            txtbio.font = UIFont(name: "verdana", size: 13.0)
        }
    }
    
}

extension SignupViewController: UINavigationControllerDelegate, UIImagePickerControllerDelegate {
    
    func openGallery() {
        if UIImagePickerController.isSourceTypeAvailable(.savedPhotosAlbum) {
            let picker = UIImagePickerController()
            picker.delegate = self
            picker.sourceType = .savedPhotosAlbum
            present(picker, animated: true)
        }
    }
    
    func imagePickerController(_ picker: UIImagePickerController, didFinishPickingMediaWithInfo info: [UIImagePickerController.InfoKey : Any]) {
        if let img = info[.originalImage] as? UIImage {
            
            profileImage.image = img
        }
        dismiss(animated: true)
    }
    
}
