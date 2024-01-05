//
//  ViewController.swift
//  projectExtension
//
//  Created by Arun Kudiyal on 10/10/23.
//

import UIKit

class FirstViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


}



extension FirstViewController: UITableViewDelegate, UITableViewDataSource {
    
    var name:String = "prasad"
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return  1
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
    }
    
    
}

