//
//  QuizBrain.swift
//  Quizzler-iOS13
//
//  Created by Angela Yu on 08/08/2019.
//  Copyright © 2019 The App Brewery. All rights reserved.
//

import Foundation

struct QuizBrain {
    
    var questionNumber = 0
    var choiceNumber = 0
    var score = 0
    var choiceText: String = ""
        
    let quiz = [
        Question(q: "Which is the largest organ in the human body?", c: ["Heart", "Skin", "Large Intestine"], ca: "Skin"),
                Question(q: "Five dollars is worth how many nickels?", c: ["25", "50", "100"], ca: "100"),
                Question(q: "What do the letters in the GMT time zone stand for?", c: ["Global Meridian Time", "Greenwich Mean Time", "General Median Time"], ca: "Greenwich Mean Time"),
                Question(q: "What is the French word for 'hat'?", c: ["Chapeau", "Écharpe", "Bonnet"], ca: "Chapeau"),
                Question(q: "In past times, what would a gentleman keep in his fob pocket?", c: ["Notebook", "Handkerchief", "Watch"], ca: "Watch"),
                Question(q: "How would one say goodbye in Spanish?", c: ["Au Revoir", "Adiós", "Salir"], ca: "Adiós"),
                Question(q: "Which of these colours is NOT featured in the logo for Google?", c: ["Green", "Orange", "Blue"], ca: "Orange"),
                Question(q: "What alcoholic drink is made from molasses?", c: ["Rum", "Whisky", "Gin"], ca: "Rum"),
                Question(q: "What type of animal was Harambe?", c: ["Panda", "Gorilla", "Crocodile"], ca: "Gorilla"),
                Question(q: "Where is Tasmania located?", c: ["Indonesia", "Australia", "Scotland"], ca: "Australia")
    ]
    
    func getQuestionText() -> String {
        return quiz[questionNumber].text
    }
    
    
    func getChoice1Text() -> String {
        return quiz[questionNumber].choices[0]
    }

    func getChoice2Text() -> String {
        return quiz[questionNumber].choices[1]
    }
    func getChoice3Text() -> String {
        return quiz[questionNumber].choices[2]
    }

    
    func getProgress() -> Float {
        return Float(questionNumber) / Float(quiz.count)
    }
    
    mutating func checkAnswer(_ userAnswer: String) -> Bool {
        if userAnswer == quiz[questionNumber].correctAnswer {
            score += 1
            return true
        } else {
            return false
        }
    }
    
    mutating func getScore() -> Int {
        return score
    }
    
     mutating func nextQuestion() {
        if questionNumber + 1 < quiz.count {
            questionNumber += 1
        } else {
            questionNumber = 0
            score = 0
        }
    }
    
}
