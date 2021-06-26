import UIKit

class SavedDataVC: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    var savedArray = [String]()
    var tableViewData = [String]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.delegate = self
        tableView.dataSource = self
        self.title = "Saved Horoscopes"
        navigationController?.navigationBar.prefersLargeTitles = true
        savedArray = UserDefaults.standard.stringArray(forKey: "savedData") ?? []
    }
    @IBOutlet weak var tableView: UITableView!
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return savedArray.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = UITableViewCell()
        cell.textLabel?.text = savedArray[indexPath.row]
        return cell
    }
   
}
