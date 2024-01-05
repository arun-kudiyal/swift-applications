//
//  RedViewController.swift
//  ViewControllerLifeCycle
//
//  Created by Arun Kudiyal on 14/09/23.
//

import UIKit

class RedViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        print("Red View Controlled :: viewDidLoad()")
    }
    
    override func viewWillAppear(_ animated: Bool) {
        print("Red View Controlled :: viewWillAppear()")
    }
    
    override func viewDidAppear(_ animated: Bool) {
        print("Red View Controlled :: viewDidAppear()")
    }
    
    override func viewWillDisappear(_ animated: Bool) {
        print("Red View Controlled :: viewWillDisappear()")
    }
    
    override func viewDidDisappear(_ animated: Bool) {
        print("Red View Controlled :: viewDidDisappear()")
    }
}
