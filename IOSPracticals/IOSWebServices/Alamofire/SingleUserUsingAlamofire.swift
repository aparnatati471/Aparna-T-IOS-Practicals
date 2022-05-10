// MARK: Import Statements
import UIKit

class SingleUserUsingAlamofire: UIViewController {

    // Outlets
    @IBOutlet weak var personEmail: UILabel!
    @IBOutlet weak var personImage: UIImageView!
    @IBOutlet weak var personFirstName: UILabel!
    @IBOutlet weak var personLastName: UILabel!
    var id = 0
    
    // MARK: Overidden Method
    override func viewDidLoad() {
        super.viewDidLoad()
        getSingleUserAF()
    }
    
    // MARK: IBActions
    @IBAction func updateUsingPut(_ sender: UIButton) {
        let updateData = PutPatchUpdate(name: "morpheus", job: "zion resident")
        updateUser(data: updateData)
    }
    
    @IBAction func updateUsingPatch(_ sender: UIButton) {
        let updateData = PutPatchUpdate(name: "morpheus", job: "zion resident")
        updateUser(data: updateData)
    }
    
    @IBAction func createUser(_ sender: UIButton) {
        let newUserData = PutPatchUpdate(name: "morpheus", job: "leader")
        addUserData(data: newUserData)
    }
    
    @IBAction func deleteData(_ sender: UIButton) {
        deleteUserData()
    }
    
    
    // MARK: Class Methods
    
    // Function for get single user data
    func getSingleUserAF() {
        guard let url = URL(string: GenericClass.UrlEncoding.createURL(url: .singleUser, endPoints: String(id))) else {
            return
        }
        GenericClass.shared.request(typeT: SingleUser.self, url: url, apiUrl: .singleUser, parameters: nil, completion: { [weak self] responseData, code in
            if let userData = responseData?.data {
                guard let image = URL(string: userData.avatar) else { return }
                guard let data = try? Data(contentsOf: image) else { return }
                self?.personImage.image = UIImage(data: data)
                self?.personEmail.text = userData.email
                self?.personFirstName.text = userData.firstName
                self?.personLastName.text = userData.lastName
            }
        })
    }
    
    // Function for update user data using put and patch
    func updateUser(data: PutPatchUpdate) {
        guard let url = URL(string: GenericClass.UrlEncoding.createURL(url: .updateUser, endPoints: String(id))) else { return }
        let param = ["name" : data.name, "job": data.job]
        GenericClass.shared.request(typeT: PutPatchUpdate.self, url: url, apiUrl: .updateUser, parameters: param, completion: { [weak self] responseData, code in
            guard responseData != nil else { return }
            DispatchQueue.main.async {
                self?.showAlert(title: "Update User", message: "User Data Updated Sucessfully!! And Status code\(code)")
            }
        })
    }
    
    // Function for create user
    func addUserData(data: PutPatchUpdate) {
        guard let url = URL(string: GenericClass.UrlEncoding.createURL(url: .createUser, endPoints: String(id))) else { return }
        let param = ["name" : data.name, "job": data.job]
        GenericClass.shared.request(typeT: PutPatchUpdate.self, url: url, apiUrl: .createUser, parameters: param, completion: { [weak self] responseData, code in
            guard responseData != nil else { return }
            DispatchQueue.main.async {
                self?.showAlert(title: "Create User", message: "User Added Sucessfully!! And Status code\(code)")
            }
        })
    }
    
    // Function for delete user
    func deleteUserData() {
        guard let url = URL(string: GenericClass.UrlEncoding.createURL(url: .deleteUser, endPoints: String(id))) else { return }
        GenericClass.shared.request(typeT: Delete.self, url: url, apiUrl: .deleteUser, parameters: nil, completion: { [weak self] responseData, code in
            DispatchQueue.main.async {
                self?.showAlert(title: "Delete User", message: "User Deleted Sucessfully!! And Status code\(code)")
            }
            guard responseData != nil else { return }
        })
    }
    
    // AlertBox
    func showAlert(title: String, message: String) {
        let alert = UIAlertController(title: title, message: message, preferredStyle: .alert)
        alert.addAction(UIAlertAction(title: "Okay", style: UIAlertAction.Style.default, handler: nil))
        self.present(alert, animated: true, completion: nil)
    }

}
