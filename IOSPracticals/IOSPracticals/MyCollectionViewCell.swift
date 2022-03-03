import UIKit

class MyCollectionViewCell: UICollectionViewCell {
    
    // MARK: Outlets
    @IBOutlet weak var label: UILabel!
    @IBOutlet weak var image: UIImageView!
    
    static func customCell(collectionView: UICollectionView,  indexpath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "collectionCell", for: indexpath) as! Self
        cell.image.image = UIImage(named: productData.productImages[indexpath.row])
        cell.label.text = productData.productName[indexpath.row]
        cell.layer.borderWidth = 1
        cell.layer.borderColor = UIColor.blue.cgColor
        return cell
    }
    
}
