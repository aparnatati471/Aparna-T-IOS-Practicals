// MARK: Import Statements
import UIKit

class SingleUserViewController: UIViewController {

    // Outlets and Variable Initalizations
    @IBOutlet weak var personEmail: UILabel!
    @IBOutlet weak var personImage: UIImageView!
    @IBOutlet weak var personFirstName: UILabel!
    @IBOutlet weak var personLastName: UILabel!
    var id: Int = 0
    
    // MARK: Overidden Method
    override func viewDidLoad() {
        super.viewDidLoad()
        getSingleUser()
    }
    
    //MARK: IBActions
    @IBAction func putClicked(_ sender: UIButton) {
        let put = PutPatchUpdate(name: "morpheus", job: "leader")
        updateUser(data: put)
    }
    
    @IBAction func patchClicked(_ sender: UIButton) {
        let patch = PutPatchUpdate(name: "morpheus", job: "leader")
        updateUser(data: patch)
    }
    
    @IBAction func updateClicked(_ sender: UIButton) {
        let create = PutPatchUpdate(name: "morpheus", job: "leader")
        createUser(data: create)
    }
    
    @IBAction func deleteClicked(_ sender: UIButton) {
        deleteUser()
    }
    
    // MARK: Class Methods
    
    // Method fot get single user data
    func getSingleUser() {
        if let url = URL(string: "https://reqres.in/api/users/\(id)") {
            let urlRequest = URLRequest(url: url)
            let dataTask = URLSession.shared.dataTask(with: urlRequest) { [weak self] (data, urlResponse, error) in
                if let error = error {
                    self?.showAlert(title: "Error", message: error.localizedDescription)
                }
                guard let responseData = data else { return }
                guard urlResponse != nil else { return }
                do {
                    let json = try JSONDecoder().decode(SingleUser.self, from: responseData)
                    DispatchQueue.main.async {
                        guard let image = URL(string: json.data.avatar) else { return }
                        guard let data = try? Data(contentsOf: image) else { return }
                        self?.personImage.image = UIImage(data: data)
                        self?.personEmail.text = json.data.email
                        self?.personFirstName.text = json.data.firstName
                        self?.personLastName.text = json.data.lastName
                    }
                } catch let error {
                    print("JSON Parsing Error: \(error) ")
                }
            }
            dataTask.resume()
        }
    }
    
    // Method for update user
    func updateUser(data: PutPatchUpdate) {
        if let url = URL(string: "https://reqres.in/api/users/2") {
            var urlRequest = URLRequest(url: url)
            urlRequest.httpMethod = "PUT"
            let dataTask = URLSession.shared.dataTask(with: urlRequest) { [weak self] (data, urlResponse, error) in
                if let error = error {
                    self?.showAlert(title: "Error", message: error.localizedDescription)
                }
                guard data != nil else { return }
                if let urlResponse = urlResponse as? HTTPURLResponse {
                    DispatchQueue.main.async {
                        self?.showAlert(title: "Update User", message: "User Updated Successfully!! Status Code: \(urlResponse.statusCode)" )
                    }
                }
            }
            dataTask.resume()
        }
    }
    
    // Method for create user
    func createUser(data: PutPatchUpdate) {
        if let url = URL(string: "https://reqres.in/api/users") {
            var urlRequest = URLRequest(url: url)
            urlRequest.httpMethod = "POST"
            let dataTask = URLSession.shared.dataTask(with: urlRequest) { [weak self] (data, urlResponse, error) in
                if let error = error {
                    self?.showAlert(title: "Error", message: error.localizedDescription)
                }
                guard data != nil else { return }
                if let urlResponse = urlResponse as? HTTPURLResponse {
                    DispatchQueue.main.async {
                        self?.showAlert(title: "Create User", message: "User Created Successfully!! Status Code: \(urlResponse.statusCode)" )
                    }
                }
            }
            dataTask.resume()
        }
    }
        
    // Method for delete user
    func deleteUser() {
        if let url = URL(string: "https://reqres.in/api/users/2") {
            var urlRequest = URLRequest(url: url)
            urlRequest.httpMethod = "DELETE"
            let dataTask = URLSession.shared.dataTask(with: urlRequest) { [weak self] (data, urlResponse, error) in
                if let error = error {
                    self?.showAlert(title: "Error", message: error.localizedDescription)
                }
                guard data != nil else { return }
                if let urlResponse = urlResponse as? HTTPURLResponse {
                    DispatchQueue.main.async {
                        self?.showAlert(title: "Delete User", message: "User Updated Successfully!! Status Code: \(urlResponse.statusCode)" )
                    }
                }
            }
            dataTask.resume()
        }
    }
    
    // AlertBox
    func showAlert(title: String, message: String) {
        let alert = UIAlertController(title: title, message: message, preferredStyle: .alert)
        alert.addAction(UIAlertAction(title: "Okay", style: UIAlertAction.Style.default, handler: nil))
        self.present(alert, animated: true, completion: nil)
    }
    
}

