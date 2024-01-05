import UIKit

class FoodTableViewController: UITableViewController {

    var meals:[Meal] {
        var breakfast = Meal(name: "breakfast", food: [
            Food(name: "Bread", description: "Breakfast Item 1"),
            Food(name: "Butter", description: "Breakfast Item - 2"),
            Food(name: "Milk", description: "Breakfast Item - 3")
        ])
        var lunch = Meal(name: "lunch", food: [
            Food(name: "Cereal", description: "Lunch Item 1"),
            Food(name: "Milk", description: "Lunch Item - 2"),
            Food(name: "Chocolates", description: "Lunch Item - 3")
        ])
        var dinner = Meal(name: "dinner", food: [
            Food(name: "Vegetables", description: "Dinner Item 1"),
            Food(name: "Rice", description: "Dinner Item - 2"),
            Food(name: "Salad", description: "Dinner Item - 3")
        ])
        return [breakfast, lunch, dinner]
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }

    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return meals.count
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return meals[section].food.count
    }

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "Food", for: indexPath)
        let meal = meals[indexPath.section].food[indexPath.row]
        var content = cell.defaultContentConfiguration()
        content.text = meal.name
        content.secondaryText = meal.description
        cell.contentConfiguration = content

        return cell
    }

    override func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        "\(meals[section].name)"
    }

    /*
    // Override to support conditional editing of the table view.
    override func tableView(_ tableView: UITableView, canEditRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the specified item to be editable.
        return true
    }
    */

    /*
    // Override to support editing the table view.
    override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete {
            // Delete the row from the data source
            tableView.deleteRows(at: [indexPath], with: .fade)
        } else if editingStyle == .insert {
            // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
        }    
    }
    */

    /*
    // Override to support rearranging the table view.
    override func tableView(_ tableView: UITableView, moveRowAt fromIndexPath: IndexPath, to: IndexPath) {

    }
    */

    /*
    // Override to support conditional rearranging of the table view.
    override func tableView(_ tableView: UITableView, canMoveRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the item to be re-orderable.
        return true
    }
    */

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
