// MARK: Import Statements
import UIKit

class MyListUsersTableViewCell: UITableViewCell {

    // Cell Outlets
    @IBOutlet weak var userImage: UIImageView!
    @IBOutlet weak var email: UILabel!
    @IBOutlet weak var fName: UILabel!
    @IBOutlet weak var lName: UILabel!
    
    // Cell Configuration
    static func cellTable(_ tableView: UITableView, _ indexPath: IndexPath, _ listUsers: [Users]) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell") as! Self
        _ = listUsers[indexPath.row].id
        if let image = try? Data(contentsOf: URL(string: listUsers[indexPath.row].avatar)!) {
            cell.userImage.image = UIImage(data: image)
        }
        cell.email.text = listUsers[indexPath.row].email
        cell.fName.text = listUsers[indexPath.row].firstName
        cell.lName.text = listUsers[indexPath.row].lastName
        return cell
    }
    
}
