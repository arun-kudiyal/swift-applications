//
//  AddTaskViewController.swift
//  ToDoApplication
//
//  Created by Arun Kudiyal on 26/09/23.
//

import UIKit

protocol AddTaskDeligate {
    func addTask(title: String)
}

class AddTaskViewController: UIViewController {
    var deligate: AddTaskDeligate?
    
    @IBOutlet weak var taskToBeAdded: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "Done" {
            if let todoTitile = taskToBeAdded.text, !todoTitile.isEmpty {
                deligate?.addTask(title: todoTitile)
            }
        }
    }
}
