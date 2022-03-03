import UIKit

class TableViewControllerXib: UIViewController {

    @IBOutlet weak var tableView: UITableView!
    let languages = ["Android", "Kotlin", "IOS", "Swift", "Java", "PHP", "React Native"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.tableView.register(UINib(nibName: "TableViewCell", bundle: nil), forCellReuseIdentifier: "cell")
        self.tableView.delegate = self
        self.tableView.dataSource = self
    }
    
}

extension TableViewControllerXib: UITableViewDelegate, UITableViewDataSource {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return self.languages.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        if let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath) as? TableViewCell {
            cell.textLanguage.text = self.languages[indexPath.row]
            return cell
        }
        return UITableViewCell()
    }
    
}
