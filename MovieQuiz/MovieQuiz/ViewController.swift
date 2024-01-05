//
//  ViewController.swift
//  MovieQuiz
//
//  Created by Arun Kudiyal on 06/09/23.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var movieName: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    @IBAction func guessMovie(_ sender: Any) {
        movieName.text = "THE BURNING TRAIN"
    }
}
