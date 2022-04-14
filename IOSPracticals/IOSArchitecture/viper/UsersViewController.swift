import UIKit

// MARK: Protocol for View
protocol AnyView {
    
    var presenter: AnyPresenter? { get set }
    func update(with users: [User])
    func update(with error: String)

}

// MARK: View class implements view protocol and coordinatorBoard protocol
class UsersViewController: UIViewController, AnyView, CoordinatorBoard {

    // Outlets and Variable declarations and instantiation
    @IBOutlet weak var tableView: UITableView!
    var presenter: AnyPresenter?
    var users: [User] = []
    var viperApiCalling: LoginCoordinator?
    var router = UserRouter()
    
    // MARK: Overridden Method
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.delegate = self
        tableView.dataSource = self
    }
    
    func update(with users: [User]) {
        print("Got Users Data")
        DispatchQueue.main.async {
            self.users = users
            self.tableView.reloadData()
        }
    }
    
    func update(with error: String) {
        print(error)
    }
    
}

// MARK: Extension of UsersViewController conforms UITableViewDelegate
extension UsersViewController: UITableViewDelegate {
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
}

// MARK: Extension of UsersViewController conforms UITableViewDataSource
extension UsersViewController: UITableViewDataSource {
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)
        cell.textLabel?.text = users[indexPath.row].name
        return cell
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return users.count
    }

}
