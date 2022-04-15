import UIKit

protocol CustomCollectionView {
    func deleteCell(ind: Int)
}

class CustomCollectionViewCell: UICollectionViewCell {
        
    // MARK: Outlets
    @IBOutlet weak var collectionLabel: UILabel!
    @IBOutlet weak var deleteButton: UIButton!
    
    // MARK: Variable Delaration and Initializations
    var delegate: CustomCollectionView?
    var index: IndexPath?

    // MARK: Action Method for delete button
    @IBAction func deleteCells(_ sender: UIButton) {
        delegate?.deleteCell(ind: index?.row ?? 0)
    }
    
    func customCollectionViewCell(text: String) {
        backgroundColor = UIColor.darkGray
        collectionLabel.text = text
        collectionLabel.textColor = UIColor.black
        collectionLabel.backgroundColor = UIColor.white
        layer.cornerRadius = 2
        contentView.backgroundColor = UIColor.white
        layer.borderColor = UIColor.black.cgColor
        layer.borderWidth = 1
    }
    
}
