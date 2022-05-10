import UIKit

let productData = ProductData(
                    productName:  ["Grocery", "Mobiles", "Books", "Car", "Men's Fashion", "Women's Fashion", "Shoes"],
                    productImages: ["grocery", "mobiles", "book", "car", "men", "women", "shoes"]
                    )

class HomeViewController: UITableViewController {

    // MARK: Outlets
    @IBOutlet weak var swithView: UISwitch!
    @IBOutlet weak var stackView: UIStackView!
    @IBOutlet weak var myTableView: UITableView!
    
    // MARK: Overridden Method
    override func viewDidLoad() {
        super.viewDidLoad()
        myTableView.delegate = self
        myTableView.dataSource = self
    }
    
    // MARK: Action Method for Switch
    @IBAction func switchStateChanged(_ sender: UISwitch) {
        stackView.axis = sender.isOn ? .horizontal : .vertical
    }
    
    // MARK: TableView Delegate Methods
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 2
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        if let cell = myTableView.dequeueReusableCell(withIdentifier: "tableViewCell", for: indexPath) as? MyTableViewCell {
            myTableView.rowHeight = cell.collectionView.collectionViewLayout.collectionViewContentSize.height + 20
            cell.collectionView.reloadData()
            return cell
        }
        return UITableViewCell()
    }
    
}


