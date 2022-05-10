// MARK: Import Statements
import UIKit

class ListUsersUsingAlamofire: UIViewController {

    // Outlets and Variable Initalizations
    @IBOutlet weak var myTableView: UITableView!
    @IBOutlet weak var activityIndicatorView: UIActivityIndicatorView!
    var listUsersData = [Users]()
    var userid: Int = 0
    
    // MARK: Overidden Method
    override func viewDidLoad() {
        super.viewDidLoad()
        activityIndicatorView.isHidden = false
        myTableView.rowHeight = view.frame.height * 0.20
        getListUsersUsingAF()
    }
    
    // Class Method for get list of users
    func getListUsersUsingAF() {
        guard let url = URL(string: GenericClass.UrlEncoding.createURL(url: .listUsers))  else  { return }
        GenericClass.shared.request(typeT: Response.self, url: url, apiUrl: .listUsers, parameters: nil, completion: { responseData, code in
            if let userData = responseData?.data {
                userData.forEach { [weak self] data in
                    self?.listUsersData.append(data)
                }
                DispatchQueue.main.async { [weak self] in
                    self?.myTableView.reloadData()
                    self?.activityIndicatorView.stopAnimating()
                }
            }
        })
    }

}

// MARK: ListUsersUsingAlamofire extension conforms to UITableViewDelegate
extension ListUsersUsingAlamofire: UITableViewDelegate {

    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        return MyListUsersTableViewCell.cellTable(tableView, indexPath, listUsersData)
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        userid = listUsersData[indexPath.row].id
        performSegue(withIdentifier: "showDetails", sender: self)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let destination = segue.destination as? SingleUserUsingAlamofire {
            destination.id = userid
        }
    }
    
}

// MARK: ListUsersUsingAlamofire extension conforms to UITableViewDataSource
extension ListUsersUsingAlamofire: UITableViewDataSource {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return listUsersData.count
    }
    
}
