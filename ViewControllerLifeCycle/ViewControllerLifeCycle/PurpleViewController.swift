//
//  ViewController.swift
//  ViewControllerLifeCycle
//
//  Created by Arun Kudiyal on 14/09/23.
//

import UIKit

class PurpleViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        print("Purple View Controlled :: viewDidLoad()")
    }

    override func viewWillAppear(_ animated: Bool) {
        print("Purple View Controlled :: viewWillAppear()")
    }
    
    override func viewDidAppear(_ animated: Bool) {
        print("Purple View Controlled :: viewDidAppear()")
    }
    
    override func viewWillDisappear(_ animated: Bool) {
        print("Purple View Controlled :: viewWillDisappear()")
    }
    
    override func viewDidDisappear(_ animated: Bool) {
        print("Purple View Controlled :: viewDidDisappear()")
    }
    
    @IBOutlet var purbleButtonTap: UIView!
}

