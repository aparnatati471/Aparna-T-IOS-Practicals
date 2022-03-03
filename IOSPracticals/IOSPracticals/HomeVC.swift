import UIKit

class HomeVC: UIViewController {

    // MARK: Outlets
    @IBOutlet weak var myTableView: UITableView!
    
    // MARK: Overridden Method
    override func viewDidLoad() {
        super.viewDidLoad()
        myTableView.dataSource = self
    }
    
}

// MARK: TableView Data Source Methods
extension HomeVC: UITableViewDataSource {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 2
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        if indexPath.row == 0 {
            let cell = myTableView.dequeueReusableCell(withIdentifier: "tableviewcell", for: indexPath)
            return cell
        } else if indexPath.row == 1{
            let cell = myTableView.dequeueReusableCell(withIdentifier: "switchCell", for: indexPath) as! SwitchTableViewCell
            return cell
        }
        return UITableViewCell()
    }
    
}
