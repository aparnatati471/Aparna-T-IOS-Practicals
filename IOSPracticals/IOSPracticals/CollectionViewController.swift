import UIKit

let productNames: [String] = ["Grocery", "Mobiles", "Books", "Car", "Men's Fashion", "Women's Fashion", "Shoes"]
let productImages: [String] = ["grocery", "mobiles", "book", "car", "men", "women", "shoes"]

class CollectionViewController: UIViewController {

    // MARK: Outlets
    @IBOutlet weak var collectionView: UICollectionView!
    
    
    // MARK: Overridden method
    override func viewDidLoad() {
        super.viewDidLoad()
        collectionView.dataSource = self
        collectionView.delegate = self
    }

}

// MARK: CollectionView Delegate Method
extension CollectionViewController: UICollectionViewDelegate {
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return productNames.count
    }

}

// MARK: CollectionView Data Source Method
extension CollectionViewController: UICollectionViewDataSource {
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        return MyCollectionViewCell.customCell(collectionView: collectionView, indexpath: indexPath)
    }
    
}

// MARK: CollectionView Delegate FlowLayout Method
extension CollectionViewController: UICollectionViewDelegateFlowLayout {
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        let size = (view.frame.size.width - 20) / 2
        return CGSize(width: size, height: size)
    }
    
}


