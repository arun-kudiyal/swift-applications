//
//  ResultsViewController.swift
//  PersonalityQuiz
//
//  Created by Arun Kudiyal on 23/09/23.
//

import UIKit

class ResultsViewController: UIViewController {

    @IBOutlet weak var resultLabelOne: UILabel!
    @IBOutlet weak var resultLabelTwo: UILabel!
    
    var responses: [Answer]
    var questionIndex = 0
    
    init?(coder: NSCoder, responses: [Answer]) {
        self.responses = responses
        super.init(coder: coder)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func updateUI() -> Void {
        
    }
    
    func nextQuestion() {
        questionIndex += 1
        if questionIndex <= questions.count {
             updateUI()
        } else {
            performSegue(withIdentifier: "Results", sender: nil)
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }

}
