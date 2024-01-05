import UIKit

class ViewController: UIViewController, AddTaskDeligate, UITableViewDelegate, UITableViewDataSource {
    var todos = ["Get Milk", "Get Bread"]
    
    
    @IBOutlet weak var tableView: UITableView!
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        todos.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)
        cell.textLabel?.text = todos[indexPath.row]
        return cell
    }
    
    
   // var viewController: ViewController?
    
    func updateUI() {
        tableView.reloadData()
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.dataSource = self
        tableView.delegate = self
        updateUI()
    }

    @IBAction func unwindBackToScreen(unwindSegue: UIStoryboardSegue) {
        
    }
    
    func addTask(title: String) {
        todos.append(title)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let addVC = segue.destination as? AddTaskViewController {
            addVC.deligate = self
        }
    }
    
    override func viewWillAppear(_ animated: Bool) {
          updateUI()
        
        print(todos)
    }
}

