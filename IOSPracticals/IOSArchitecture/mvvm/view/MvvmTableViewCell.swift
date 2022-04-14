import UIKit

// MARK: Class MvvmTableViewCell implements UITableViewCell
class MvvmTableViewCell: UITableViewCell {

    // Outlets
    @IBOutlet weak var userImage: UIImageView!
    @IBOutlet weak var userEmail: UILabel!
    @IBOutlet weak var userName: UILabel!
    
    // CustomCell function
    func CustomCell(tableview: UITableView, indexPath: IndexPath, users: [Users]) -> UITableViewCell {
        let cell = tableview.dequeueReusableCell(withIdentifier: "cell") as! Self
        let url = URL(string: users[indexPath.row].avatar)
        let data = try? Data(contentsOf: url!)
        cell.userImage.image = UIImage(data: data!)
        cell.userEmail.text = users[indexPath.row].email
        cell.userName.text = users[indexPath.row].firstName + " " + users[indexPath.row].lastName
        return cell
    }
    
}
