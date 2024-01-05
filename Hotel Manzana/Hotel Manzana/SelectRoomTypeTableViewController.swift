
import UIKit

protocol SelectRoomTypeTableViewControllerDelegate: AnyObject {
    func selectRoomTypeTableViewController(_ controller:
       SelectRoomTypeTableViewController, didSelect roomType:
       RoomType)
}

class SelectRoomTypeTableViewController: UITableViewController {
    var roomType: RoomType?
    
    weak var delegate: SelectRoomTypeTableViewControllerDelegate?
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }

    override func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return RoomType.all.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier:
           "RoomTypeCell", for: indexPath)
        let roomType = RoomType.all[indexPath.row]
        var content = cell.defaultContentConfiguration()
        content.text = roomType.name
        content.secondaryText = "$ \(roomType.price)"
        cell.contentConfiguration = content
        if roomType == self.roomType { cell.accessoryType = .checkmark }
        else { cell.accessoryType = .none }
        return cell
    }
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        tableView.deselectRow(at: indexPath, animated: true)
        roomType = RoomType.all[indexPath.row]
        delegate?.selectRoomTypeTableViewController(self, didSelect: roomType!)
        tableView.reloadData()
    }
    
    
}
