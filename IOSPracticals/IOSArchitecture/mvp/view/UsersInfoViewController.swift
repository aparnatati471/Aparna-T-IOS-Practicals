import UIKit

// MARK: Protocol for View
protocol IView {
    
    func onSuccess(users: [Users])
    func onFailure(message: String)
    
}

class UsersInfoViewController: UIViewController {

    // Outlets and Variable Declaration And Instantiation
    @IBOutlet weak var myTableView: UITableView!
    var presenter = UserPresenter()
    var users = [Users]()
    
    // MARK: Overridden method
    override func viewDidLoad() {
        super.viewDidLoad()
        presenter.delegate = self
        presenter.presentUsers()
    }

}

// MARK: Extension of UsersInfoViewController conforms UITableViewDataSource
extension UsersInfoViewController: UITableViewDataSource {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return users.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        return UsersTableViewCell.CustomCell(tableview: tableView, indexPath: indexPath, users: users)
    }
    
}

// MARK: Extension of UsersInfoViewController conforms UITableViewDelegate
extension UsersInfoViewController: UITableViewDelegate {
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 150
    }
    
}

// MARK: Extension of UsersInfoViewController conforms IView
extension UsersInfoViewController: IView {
    
    func onSuccess(users: [Users]) {
        self.users = users
        print(users)
        DispatchQueue.main.async {
            self.myTableView.reloadData()
        }
    }
    
    func onFailure(message: String) {
        print("On Failure")
    }
    
}
