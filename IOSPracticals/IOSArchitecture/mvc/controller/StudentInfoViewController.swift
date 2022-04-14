import UIKit

class StudentInfoViewController: UIViewController {
    
    // Outlets and Variable Declaration And Instantiation
    var students: [Student] = []
    @IBOutlet weak var myTableView: UITableView!
    @IBOutlet weak var remove: UIBarButtonItem!
    
    // MARK: Overridden method
    override func viewDidLoad() {
        super.viewDidLoad()
    }

    // Action Method for add student
    @IBAction func addStudent(_ sender: UIBarButtonItem) {
        let student = Student(_name: "Student \(students.count + 1)", _address: "Address\(students.count + 1)")
        students.append(student)
        myTableView.reloadData()
    }
    
    // Action Method for delete student
    @IBAction func deleteStudent(_ sender: UIBarButtonItem) {
        if (students.count < 1) {
            print("You can't delete data !!")
        } else {
            students.remove(at: students.count - 1)
        }
        myTableView.reloadData()
    }
    
}

// MARK: Extension of StudentInfoViewController conforms UITableViewDataSource
extension StudentInfoViewController: UITableViewDataSource {

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return students.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = myTableView.dequeueReusableCell(withIdentifier: "cell")
        cell?.textLabel?.text = students[indexPath.row].name
        cell?.detailTextLabel?.text = students[indexPath.row].address
        return cell ?? UITableViewCell()
    }

}
