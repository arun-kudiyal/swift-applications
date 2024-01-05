//
//  ViewController.swift
//  ProgrammaticSegue
//
//  Created by Arun Kudiyal on 14/09/23.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var greenOrYellowSwitch: UISwitch!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func yellowButtonTap(_ sender: Any) {
        if greenOrYellowSwitch.isOn {
            performSegue(withIdentifier: "yellow", sender: nil)
        }
    }
    
    @IBAction func greenButtonTap(_ sender: Any) {
        if !greenOrYellowSwitch.isOn {
            performSegue(withIdentifier: "green", sender: nil)
        }
    }
}

