import UIKit

// MARK: Class MvvmAPICallingVC implements CoordinatorBoard protocol
class MvvmAPICallingVC: UIViewController, CoordinatorBoard {
    
    // Outlets and Variable declaration and instantiation
    @IBOutlet weak var myTableView: UITableView!
    var viewModel = LoginViewModel()
    var usersData = [Users]()
    var mvvmApiCalling: LoginCoordinator?
    
    // MARK: Overridden Method
    override func viewDidLoad() {
        super.viewDidLoad()
        myTableView.rowHeight = view.frame.height * 0.20
        getDataFromDynamics()
        viewModel.getUsers()
    }

    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        navigationItem.hidesBackButton = true
    }
    
    // Function for get data using dynamics
    func getDataFromDynamics() {
        viewModel.dynamic.bind { data in
            guard let data = data else { return }
            self.usersData = data
            print(self.usersData)
            self.myTableView.reloadData()
        }
    }

}

// MARK: Extension of MvvmAPICallingVC conforms UITableViewDelegate
extension MvvmAPICallingVC: UITableViewDelegate {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return usersData.count
    }
    
}

// MARK: Extension of MvvmAPICallingVC conforms UITableViewDataSource
extension MvvmAPICallingVC: UITableViewDataSource {
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        return MvvmTableViewCell().CustomCell(tableview: tableView, indexPath: indexPath, users: usersData)
    }
    
}
