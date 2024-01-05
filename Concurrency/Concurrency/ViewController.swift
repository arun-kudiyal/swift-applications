//
//  ViewController.swift
//  Concurrency
//
//  Created by Arun Kudiyal on 03/01/24.
//

import UIKit

class ViewController: UIViewController {
    
    var concurrentQueue = DispatchQueue(label: "Concurrent Dispatch Queue", attributes: DispatchQueue.Attributes.concurrent)
    
    var serialIQ = DispatchQueue(label: "Serializable Dispatch Queue")
    
    @IBOutlet weak var imageView: UIImageView!
    override func viewDidLoad() {
        
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


    @IBAction func buttonTapped(_ sender: Any) {
        // var thread = Thread(target: self, selector: #selector(threadStart), object: nil)
        // thread.start()
        let mainQueue = DispatchQueue.main
        mainQueue.async {
            // you can block the thread execution too
            Thread.sleep(forTimeInterval: 20)
            print("Thread currently at - \(Thread.current.description)")
            print("Hello World!")
        }
    }
    
    //    @objc
    //    func threadStart() {
    //        print("Running the thread \(Thread.current.description)")
    //        print("Hello World!")
    //    }
    @IBAction func buttonTapped2(_ sender: Any) {
        concurrentQueue.async {
            Thread.sleep(forTimeInterval: 5)
            // execute as many process as possible...
            print("Task Completed!")
        }
    }
    
    // Downloading the data
    @IBAction func downloadImage(_ sender: Any) {
        let link = "https://freepngimg.com/thumb/iphone/68652-apple-wallpaper-desktop-iphone-logo-macbook.png"
        
        serialIQ.async {
            guard let url = URL(string: link) else { return }
            guard let data = try? Data(contentsOf: url) else { return }
            guard let image = UIImage(data: data) else { return }
            self.imageView.image = image
        }
        
        //        DispatchQueue.main.async {
        //
        //        }
    }
}

