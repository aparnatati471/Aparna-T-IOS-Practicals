// MARK: Import Statements
import UIKit

class ListUsersViewController: UIViewController {
    
    // Outlets and Variable Initalizations
    @IBOutlet weak var myTableView: UITableView!
    @IBOutlet weak var activityIndicator: UIActivityIndicatorView!
    var userid: Int = 0
    var usersData = [Users]()

    // MARK: Overidden Method
    override func viewDidLoad() {
        super.viewDidLoad()
        myTableView.rowHeight = view.frame.height * 0.20
        activityIndicator.isHidden = false
        getListUsers()
    }

    // Function for get list of users
    func getListUsers() {
        if let url = URL(string: "https://reqres.in/api/users?delay=3") {
            let urlRequest = URLRequest(url: url)
            let dataTask = URLSession.shared.dataTask(with: urlRequest) { [weak self] (data, urlResponse, error) in
                if let error = error {
                    print("Error:\(error.localizedDescription)")
                }
                guard let responseData = data else { return }
                guard urlResponse != nil else { return }
                do {
                    let json = try JSONDecoder().decode(Response.self, from: responseData)
                    json.data.forEach { data in
                        self?.usersData.append(data)
                    }
                    DispatchQueue.main.async {
                        self?.myTableView.reloadData()
                        self?.activityIndicator.stopAnimating()
                    }
                } catch let error {
                    print("JSON Parsing Error: \(error) ")
                }
            }
            dataTask.resume()
        }
    }
    
}

// MARK: ListUsersViewController extension conforms to UITableViewDelegate
extension ListUsersViewController: UITableViewDelegate {

    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        return MyListUsersTableViewCell.cellTable(tableView, indexPath, usersData)
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        userid = usersData[indexPath.row].id
        performSegue(withIdentifier: "showDetails", sender: self)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let destination = segue.destination as? SingleUserViewController {
            destination.id = userid
        }
    }

}

// MARK: ListUsersViewController extension conforms to UITableViewDataSource
extension ListUsersViewController: UITableViewDataSource {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return usersData.count
    }
    
}


