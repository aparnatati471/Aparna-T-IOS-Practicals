import UIKit

class TableCollectionViewController: UIViewController {

    // MARK: Outlets
    @IBOutlet weak var tableCollectionSegment: UISegmentedControl!
    @IBOutlet weak var myTableView: UITableView!
    @IBOutlet weak var myCollectionView: UICollectionView!
    @IBOutlet weak var mySearchBar: UISearchBar!
    @IBOutlet weak var myTextField: UITextField!
    
    // MARK: Variable Declration and Initialization
    var data = ["Apple", "Pear", "Strawberry", "Avocado", "Banana", "Grape", "Melon", "Orange", "Peach", "Kiwi"]
    var count: Int!
    var searchItem = [String]()
    var searching = false
    
    // MARK: Overridden Method
    override func viewDidLoad() {
        super.viewDidLoad()
        myTableView.backgroundColor = UIColor.lightGray
        myCollectionView.backgroundColor = UIColor.lightGray
    }

    // MARK: Action Method for segment control
    @IBAction func switchTableAndCollectionView(_ sender: UISegmentedControl) {
        switch(sender.selectedSegmentIndex) {
            case 0:
                myTableView.isHidden = false
                myCollectionView.isHidden = true
                myTableView.reloadData()
            case 1:
                myTableView.isHidden = true
                myCollectionView.isHidden = false
                myCollectionView.reloadData()
            default:
                myTableView.isHidden = false
                myCollectionView.isHidden = true
                myTableView.reloadData()
        }
    }
    
    // MARK: Method for adding data
    @IBAction func addNewData(_ sender: UIButton) {
        guard let newData = myTextField.text else { return }
        data.append(newData)
        let alertBox = UIAlertController(title: "Savind Data", message: "Data has been added in tableview successfully", preferredStyle: .alert)
        let alertAction = UIAlertAction(title: "Ok", style: .default, handler: nil)
        alertBox.addAction(alertAction)
        present(alertBox, animated: true, completion: nil)
        myTableView.reloadData()
        myCollectionView.reloadData()
        myTextField.text = ""
    }
    
}

// MARK: TableView DataSource Methods
extension TableCollectionViewController: UITableViewDataSource {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return searching ? searchItem.count : data.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = myTableView.dequeueReusableCell(withIdentifier: "labelCell")
        cell?.textLabel?.textColor = UIColor.black
        cell?.textLabel?.backgroundColor = UIColor.white
        cell?.contentView.backgroundColor = UIColor.white
        cell?.textLabel?.text = searching ? searchItem[indexPath.row] : data[indexPath.row]
        return cell!
    }
    
    func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete {
            myTableView.beginUpdates()
            data.remove(at: indexPath.row)
            myTableView.deleteRows(at: [indexPath], with: .fade)
            myTableView.endUpdates()
            myTableView.reloadData()
        }
    }
    
}

// MARK: CollectionView DataSource Methods
extension TableCollectionViewController: UICollectionViewDataSource {
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return searching ? searchItem.count : data.count

    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "collectionCell", for: indexPath) as! CustomCollectionViewCell
        let text = searching ? searchItem[indexPath.row] : data[indexPath.row]
        cell.delegate = self
        cell.customCollectionViewCell(text: text)
        return cell
    }

}

// MARK: CustomCollectionView extension and methods
extension TableCollectionViewController: CustomCollectionView {
    
    func deleteCell(ind: Int) {
        data.remove(at: ind)
        myCollectionView.reloadData()
    }
    
}

// MARK: CollectionView Delegate Flow Layout Methods
extension TableCollectionViewController: UICollectionViewDelegateFlowLayout {
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        let size = (view.frame.size.width - 10) / 2
        return CGSize(width: size, height: size)
    }
    
}

// MARK: SearchBar Delegate
extension TableCollectionViewController: UISearchBarDelegate {
    
    func searchBar(_ searchBar: UISearchBar, textDidChange searchText: String) {
        searchItem = data.filter({$0.prefix(searchText.count) == searchText})
        searching = true
        myTableView.reloadData()
        myCollectionView.reloadData()
    }
    
}
