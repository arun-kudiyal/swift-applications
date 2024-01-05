//
//  ViewController.swift
//  Project_2
//
//  Created by Arun Kudiyal on 12/09/23.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var switchButton: UISwitch!
    @IBOutlet weak var mySlider: UISlider!
    @IBOutlet weak var displayButton: UIButton!
    override func viewDidLoad() {
        super.viewDidLoad()
        self.view.backgroundColor = UIColor(named: "backgroundColor")
        var button = createButton()
        self.view.addSubview(button)
    }

    @IBAction func buttonTouch(_ sender: UIButton) {
        print(mySlider.value)
        if(switchButton.isOn) {
            print("Switch is ON")
        } else {
            print("Switch is OFF")
        }
    }
    
    @IBAction func toggleSwitch(_ sender: UISwitch) {
        if sender.isOn {
            print("Switch is ON")
        } else {
            print("Switch is OFF")
        }
    }
    @IBAction func sliderControl(_ sender: UISlider) {
        if(sender.value >= 0.5) {
            view.backgroundColor = .black
            displayButton.setTitleColor(.white, for: .normal)
        } else {
            view.backgroundColor = .lightGray
        }
    }
    @IBAction func inputTextInField(_ sender: UITextField) {
        if let text = sender.text {
            print(text)
        }
    }
    @IBAction func inputTextOnType(_ sender: UITextField) {
        if let text = sender.text {
            print(text)
        }
    }
    @IBAction func tapGestureRecogniserInView(_ sender: UITapGestureRecognizer) {
        print(sender.location(in: view))
    }
    
    // We can also craete UIElements using code, without using @IBAction
    func createButton() -> UIButton {
        let buttonFrame = CGRect(x: 100, y: 100, width: 100, height: 100)
        let button = UIButton(type: .system)
        button.setTitle("Tap Me!", for: .normal)
        button.frame = buttonFrame
        
        button.addTarget(self, action: #selector(buttonTapped(_:)), for: .touchUpInside)
        return button
    }
    @objc
    func buttonTapped(_ sender:Any) {
        print("Button Tapped!")
    }
}
