//
//  ViewController.swift
//  TorchLight
//
//  Created by Arun Kudiyal on 06/09/23.
//

import UIKit

class ViewController: UIViewController {
    var lightOn:Bool = true
    
    @IBOutlet var lightButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    fileprivate func updateBgUI() {
        if lightOn {
            view.backgroundColor = .white
            lightButton.setTitle("Off", for: .normal)
        } else {
            view.backgroundColor = .black
            lightButton.setTitle("On", for: .normal)
        }
    }
    
    @IBAction func buttonPressed(_ sender: Any) {
        lightOn.toggle()
        updateBgUI()
    }
}
