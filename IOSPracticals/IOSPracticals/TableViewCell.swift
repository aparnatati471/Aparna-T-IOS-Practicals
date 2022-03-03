import UIKit

class TableViewCell: UITableViewCell {

    @IBOutlet weak var myCollectionView: UICollectionView!
    var count = 0
    
    override func awakeFromNib() {
        super.awakeFromNib()
        myCollectionView.dataSource = self
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
    }

    // MARK: Action Method for UIStepper
    @IBAction func stepperClicked(_ sender: UIStepper) {
        count = Int(sender.value)
        myCollectionView.reloadData()
    }
}

// MARK: CollectionView Data Source Methods
extension TableViewCell: UICollectionViewDataSource {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = myCollectionView.dequeueReusableCell(withReuseIdentifier: "collectionviewcell", for: indexPath)
        return cell
    }
    
}
