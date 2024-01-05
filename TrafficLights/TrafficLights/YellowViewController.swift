//
//  YellowViewController.swift
//  TrafficLights
//
//  Created by Arun Kudiyal on 14/09/23.
//

import UIKit

class YellowViewController: UIViewController {

    @IBOutlet weak var yellowLabel: UILabel!
    
    var userMessage:String?
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        if let userMessage = userMessage {
            yellowLabel.text = userMessage
        }
    }
    
    @IBAction func backToYellow(unwindSegue: UIStoryboardSegue) {
        print("Back to Yellow View Control")
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
    }
    /*
    // MARK: - Navigation
    */
    
}
