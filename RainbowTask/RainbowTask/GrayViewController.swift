//
//  ViewController.swift
//  RainbowTask
//
//  Created by Arun Kudiyal on 14/09/23.
//

import UIKit

class GrayViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        tabBarItem.badgeValue = "!"
    }
    
    override func viewWillDisappear(_ animated: Bool) {
        tabBarItem.badgeValue = nil
    }

}

