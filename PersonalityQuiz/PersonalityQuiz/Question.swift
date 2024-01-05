//
//  Question.swift
//  PersonalityQuiz
//
//  Created by Arun Kudiyal on 23/09/23.
//

import Foundation

struct Question {
    var text: String
    var type: ResponseType
    var answers: [Answer]
}

enum ResponseType {
    case single, multiple, ranged
}

struct Answer {
    var text: String
    var type: AnimalType
}

enum AnimalType: Character {
    case dog = "🐶", cat = "🐱", rabbit = "🐰", turtle = "🐢"
    
    var defination: String {
        switch self {
        case .dog:
            return "You are incredibly outgoing. You surround yourself with the people you love and enjoy activities with your friends."
        case .cat:
            return "Mischievous, yet mild-tempered, you enjoy doing things on your own terms."
        case .rabbit:
            return "You love everything that’s soft. You are healthy and full of energy."
        case .turtle:
            return "You are wise beyond your years, and you focus on the details. Slow and steady wins the race."
        }
    }
}

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
