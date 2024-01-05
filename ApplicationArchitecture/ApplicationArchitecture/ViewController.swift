//
//  ViewController.swift
//  ApplicationArchitecture
//
//  Created by Arun Kudiyal on 27/09/23.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    @IBAction func showSecondView(_ sender: Any) {
        var svc = SecondViewController()
        present(svc, animated: true)
    }
}
