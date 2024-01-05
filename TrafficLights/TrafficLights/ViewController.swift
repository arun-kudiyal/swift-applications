//
//  ViewController.swift
//  TrafficLights
//
//  Created by Arun Kudiyal on 14/09/23.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var userTextField: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func backToRed(unwindSegue: UIStoryboardSegue) {
        print("Back to Red View Control")
    }
    // overrriding the prepare method
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let text = userTextField.text, !text.isEmpty {
            let destinationVc = segue.destination
            if destinationVc is YellowViewController {
                if let ywc = destinationVc as? YellowViewController {
                    // This will throw an error as the yellowLabel view is never loaded.
                    // Object is created, but the view is not. So we can access the properties.
                    ywc.userMessage = text
                }
            }
        }
    }
}
