//
//  ViewController.swift
//  SlideShowApplication
//
//  Created by Arun Kudiyal on 12/09/23.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var myImageViewer: UIImageView!
    var imageSet = ["image_1", "image_2", "image_3"]
    var count = 0
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        myImageViewer.image = UIImage(named: imageSet[count])
        
    }

    @objc
    func changeImage() -> Void {
        count = (count + 1) % imageSet.count
//        UIView.transition(with: myImageViewer, duration: 0.5, animations:{ self.myImageViewer.image = UIImage(named: self.imageSet[count])} )
        UIView.transition(with: myImageViewer, duration: 0.5, animations: {self.myImageViewer.image = UIImage(named: self.imageSet[count])})
    }
}

