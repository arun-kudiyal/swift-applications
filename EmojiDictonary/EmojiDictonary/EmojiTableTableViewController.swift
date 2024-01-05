//
//  EmojiTableTableViewController.swift
//  EmojiDictonary
//
//  Created by Arun Kudiyal on 29/09/23.
//

import UIKit

class EmojiTableTableViewController: UITableViewController {
    var emojis: [Emoji] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.emojis = Emoji.loadFromFile()
        if(self.emojis.count == 0) {
            self.emojis = Emoji.emojis
        }
        
        self.navigationItem.rightBarButtonItem = self.editButtonItem
        
        tableView.cellLayoutMarginsFollowReadableWidth = true
    }

    override func numberOfSections(in tableView: UITableView) -> Int {
        return 1;
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        self.emojis.count
    }

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "emoji_cell", for: indexPath) as! EmojiTableViewCell
        let emoji = emojis[indexPath.row]
        cell.update(emoji: emoji)
        
        // CONTENT CONFIGURATION -
        // var content = cell.defaultContentConfiguration()
        // content.text = "\(emoji.symbol) - \(emoji.name)"
        // content.secondaryText = "\(emoji.description)"

        // cell.contentConfiguration = content
        
        // Configure the cell
        // cell.showsReorderControl = true
        
        return cell
    }

    //    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
    //        let row = indexPath.row
    //        print("\(emojis[row].symbol) - \(emojis[row].name)")
    //    }
    
    //    override func tableView(_ tableView: UITableView, accessoryButtonTappedForRowWith indexPath: IndexPath) {
    //        print(emojis[indexPath.row].description)
    //    }

    // Override to support editing the table view.
    override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete {
            // Delete the row from the data source
            emojis.remove(at: indexPath.row)
            tableView.deleteRows(at: [indexPath], with: .fade)
            print(emojis)
        } else if editingStyle == .insert {
            // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
            let newObj = Emoji(symbol: "🥳", name: "Celebrate Emoji", description: "Sample Description", usage: "Sample Usage")
            emojis.insert(newObj, at: indexPath.row)
            // now we create a cell, insert at a particular index.
            tableView.insertRows(at: [IndexPath(row: 0, section: 0)], with: UITableView.RowAnimation.fade)
            // print(newObj)
        }
    }

    // Override to support rearranging the table view.
    override func tableView(_ tableView: UITableView, moveRowAt fromIndexPath: IndexPath, to: IndexPath) {
        let removedCell = emojis.remove(at: fromIndexPath.row)
        emojis.insert(removedCell, at: to.row)
    }

    override func tableView(_ tableView: UITableView, editingStyleForRowAt indexPath: IndexPath) -> UITableViewCell.EditingStyle {
        // .delete
         .insert
        // .none
    }
    
    @IBSegueAction func addEditSegue(_ coder: NSCoder, sender: Any?) -> AddEditEmojiTableViewController? {
        if let cell = sender as? UITableViewCell,
           let indexPath = tableView.indexPath(for: cell) {
            let emojiToEdit = emojis[indexPath.row]
            return AddEditEmojiTableViewController(emoji: emojiToEdit, coder: coder)
        } else {
            return AddEditEmojiTableViewController(emoji: nil, coder: coder)
        }
    }
    
    @IBAction func unwindToEmojiTableView(unwindSegue: UIStoryboardSegue) {
        guard unwindSegue.identifier == "save emoji", let sourceVC = unwindSegue.source as? AddEditEmojiTableViewController, let emoji = sourceVC.emoji else {
            return
        }
        if let selectedIndexPath = tableView.indexPathForSelectedRow {
            emojis[selectedIndexPath.row] = emoji
            Emoji.saveToFile(emojis: self.emojis)
            tableView.reloadRows(at: [selectedIndexPath], with: .automatic)
        } else {
            let newIndexPath = IndexPath(row: emojis.count, section: 0)
            emojis.append(emoji)
            Emoji.saveToFile(emojis: self.emojis)
            tableView.reloadRows(at: [newIndexPath], with: .automatic)
        }
    }
}
