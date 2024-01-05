//
//  ViewController.swift
//  TableViewExample
//
//  Created by Arun Kudiyal on 29/09/23.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    @IBOutlet weak var countryTable: UITableView!
    
    var countries = ["Canada", "Austrailia", "UK", "USA", "Italy", "UAE"]
    
    // for multiple sections :- Optional function
    //    func numberOfSections(in tableView: UITableView) -> Int { ... }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        countries.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        var cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)
        cell.textLabel?.text = countries[indexPath.row]
        return cell
    }
    

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        countryTable.dataSource = self
        countryTable.delegate = self
    }


}

