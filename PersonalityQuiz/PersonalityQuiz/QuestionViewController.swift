//
//  QuestionViewController.swift
//  PersonalityQuiz
//
//  Created by Arun Kudiyal on 23/09/23.
//

import UIKit

class QuestionViewController: UIViewController {
    
    @IBOutlet weak var singleStackView: UIStackView!
    @IBOutlet weak var singleButton1: UIButton!
    @IBOutlet weak var singleButton2: UIButton!
    @IBOutlet weak var singleButton3: UIButton!
    @IBOutlet weak var singleButton4: UIButton!
    
    @IBOutlet weak var multipleStackView: UIStackView!
    @IBOutlet weak var multiLabel1: UILabel!
    @IBOutlet weak var multiLabel2: UILabel!
    @IBOutlet weak var multiLabel3: UILabel!
    @IBOutlet weak var multiLabel4: UILabel!
    
    @IBOutlet weak var multiSwitch1: UISwitch!
    @IBOutlet weak var multiSwitch2: UISwitch!
    @IBOutlet weak var multiSwitch3: UISwitch!
    @IBOutlet weak var multiSwitch4: UISwitch!
    
    @IBOutlet weak var rangedStackView: UIStackView!
    @IBOutlet weak var rangedLabel1: UILabel!
    @IBOutlet weak var rangedLabel2: UILabel!
    
    @IBOutlet weak var questionProgressView: UIProgressView!
    
    
    @IBOutlet weak var questionLabel: UILabel!
    @IBOutlet weak var rangedSlider: UISlider!
    
    var questionIndex: Int = 0
    
    var chosenAnswers: [Answer] = []
    
    var questions: [Question] = [
        Question(
            text: "Which food do you like the most?",
            type: .single,
            answers: [
                Answer(text: "Steak", type: .dog),
                Answer(text: "Fish", type: .cat),
                Answer(text: "Carrots", type: .rabbit),
                Answer(text: "Corn", type: .turtle)
            ]
        ),
        Question(
            text: "Which activities do you enjoy?",
            type: .multiple,
            answers: [
                Answer(text: "Eating", type: .dog),
                Answer(text: "Sleeping", type: .cat),
                Answer(text: "Cuddling", type: .rabbit),
                Answer(text: "Swimming", type: .turtle)
            ]
        ),
        Question(
            text: "How much do you enjoy car ride?",
            type: .ranged,
            answers: [
                Answer(text: "I love them", type: .dog),
                Answer(text: "I dislike them", type: .cat),
                Answer(text: "I get little mervous", type: .rabbit),
                Answer(text: "I barely notice them", type: .turtle)
            ]
        )
    ]
    
    public func updateUI() -> Void {
        // Initially all Stack View is hidden
        singleStackView.isHidden = true
        multipleStackView.isHidden = true
        rangedStackView.isHidden = true
        
        let currentQuestion: Question = questions[questionIndex]
        let currentAnswers: [Answer] = questions[questionIndex].answers
        let totalProgress: Float = Float(questionIndex+1) / Float(questions.count)
        navigationItem.title = "Question \(questionIndex+1)"
        questionLabel.text = currentQuestion.text
        questionProgressView.setProgress(totalProgress, animated: true)
        
        switch currentQuestion.type {
        case .single:
            updateSingleStack(using: currentAnswers)
        case .multiple:
            updateMultipleStack(using: currentAnswers)
        case .ranged:
            updateRangedStack(using: currentAnswers)
        }
    }
    
    func updateSingleStack(using answers: [Answer]) -> Void {
        singleStackView.isHidden = false
        singleButton1.setTitle(answers[0].text, for: .normal)
        singleButton2.setTitle(answers[1].text, for: .normal)
        singleButton3.setTitle(answers[2].text, for: .normal)
        singleButton4.setTitle(answers[3].text, for: .normal)
    }
    
    @IBAction func singleAnswerButtonClick(_ sender: UIButton) {
        let currentAnswers = questions[questionIndex].answers
        switch sender {
        case singleButton1:
            chosenAnswers.append(currentAnswers[0])
        case singleButton2:
            chosenAnswers.append(currentAnswers[1])
        case singleButton3:
            chosenAnswers.append(currentAnswers[2])
        case singleButton4:
            chosenAnswers.append(currentAnswers[3])
        default: break
        }
        // nextQuestion()
    }
    
    func updateMultipleStack(using answers: [Answer]) -> Void {
        multipleStackView.isHidden = false
        multiLabel1.text = answers[0].text
        multiLabel2.text = answers[1].text
        multiLabel3.text = answers[2].text
        multiLabel4.text = answers[3].text
    }
    
    func updateRangedStack(using answers: [Answer]) -> Void {
        rangedStackView.isHidden = false
        rangedLabel1.text = answers.first?.text
        rangedLabel2.text = answers.last?.text
    }
    
    @IBAction func rangeAnswerButtonClick(_ sender: Any) {
        let currentAnswers = questions[questionIndex].answers
        let index = Int(round(rangedSlider.value * Float(currentAnswers.count - 1)))
        chosenAnswers.append(currentAnswers[index])
        print(chosenAnswers)
        // nextQuestion()
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        updateUI()
    }
}
