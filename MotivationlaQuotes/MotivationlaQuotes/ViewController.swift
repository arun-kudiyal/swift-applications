//
//  ViewController.swift
//  MotivationlaQuotes
//
//  Created by Arun Kudiyal on 12/09/23.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var quoteLabel: UILabel!
    @IBOutlet weak var authorLabel: UILabel!
    @IBOutlet weak var imageView: UIImageView!
    
    struct QuoteInfo {
        var quote:String
        var author:String
        var image:String
        init(quote: String, author: String, image: String) {
            self.quote = quote
            self.author = author
            self.image = image
        }
    }
    
    var quoteOne = QuoteInfo(quote: "All the world’s a stage, and all the men and women merely players.", author: "William Shakespeare", image: "img_1")
    
    var quoteTwo = QuoteInfo(quote: "Ask not what your country can do for you; ask what you can do for your country.", author: "John Kennedy", image: "img_2")
    
    var quoteThree = QuoteInfo(quote: "Genius is one percent inspiration and ninety-nine percent perspiration.", author: "Thomas Edison", image: "img_3")
    
    var quotesArray:[QuoteInfo] = []
    
    var counter = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        quotesArray.append(quoteOne)
        quotesArray.append(quoteTwo)
        quotesArray.append(quoteThree)
        
        // Do any additional setup after loading the view.
        quoteLabel.text = quotesArray[0].quote
        // quoteLabel.alpha = 0.5
        authorLabel.text = quotesArray[0].author
        // authorLabel.alpha = 0.5
        imageView.image = UIImage(named: quotesArray[0].image)
        imageView.alpha = 0.5
        
        Timer.scheduledTimer(timeInterval: 2, target: self, selector: #selector(alterQuotes(_:)), userInfo: nil, repeats: true)
    }

    @objc
    @IBAction func alterQuotes(_ sender: UIButton) {
        if self.counter >= quotesArray.count {
            counter = 0
            return
        } else {
            quoteLabel.text = quotesArray[counter].quote
            // quoteLabel.alpha = 0.5
            authorLabel.text = quotesArray[counter].author
            // authorLabel.alpha = 0.5
            imageView.image = UIImage(named: quotesArray[counter].image)
            imageView.alpha = 0.5
            counter += 1
        }
    }
}
