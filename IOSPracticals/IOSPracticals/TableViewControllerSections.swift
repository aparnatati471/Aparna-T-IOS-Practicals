import UIKit

class TableViewControllerSections: UIViewController {

    @IBOutlet weak var tableView: UITableView!
    var mobileBrands: [MobileBrand] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        mobileBrands = mobileBrandsArray()
        tableView.delegate = self
        tableView.dataSource = self
    }
    
    func mobileBrandsArray() -> [MobileBrand] {
        var mobileBrandDetails: [MobileBrand] = []
        
        mobileBrandDetails.append(MobileBrand(brandName: "Apple", modelNames: ["iPhone SE", "iPhone 8", "iPhone 8 Plus", "iPhone 11","iPhone 11 Pro", "iPhone 13", "iPhone 13 Pro"]))
        mobileBrandDetails.append(MobileBrand(brandName: "Samsung", modelNames: ["Samsung Galaxy A8 Duos", "Samsung Galaxy J7", "Samsung Galaxy J5", "Samsung Galaxy A8", "Samsung Galaxy V Plus"]))
        mobileBrandDetails.append(MobileBrand(brandName: "MI", modelNames: ["Redmi 6", "Redmi 7", "Redmi 8", "Redmi 9", "Redmi 10"]))
        mobileBrandDetails.append(MobileBrand(brandName: "Realme", modelNames: ["Realme 8", "Realme 8i", "Realme 9", "Realme 9i", "Realme Q3i"]))
        
        return mobileBrandDetails
    }

}

extension TableViewControllerSections: UITableViewDelegate, UITableViewDataSource {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return mobileBrands[section].modelNames?.count ?? 0
    }
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return mobileBrands.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "Cell")!
        cell.textLabel?.text = mobileBrands[indexPath.section].modelNames?[indexPath.row]
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        print(indexPath.row)
    }
    
    func tableView(_ tableView: UITableView, viewForHeaderInSection section: Int) -> UIView? {
        let view = UIView(frame: CGRect(x: 0, y: 0, width: tableView.frame.width, height: 40))
        view.backgroundColor = .purple
        
        let label = UILabel(frame: CGRect(x: 15, y: 0, width: tableView.frame.width - 15, height: 30))
        label.text = mobileBrands[section].brandName
        label.textColor = .white
        view.addSubview(label)
        
        return view
    }
    
}
