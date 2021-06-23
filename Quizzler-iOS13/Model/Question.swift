//
//  Question.swift
//  Quizzler-iOS13
//
//  Created by Angela Yu on 07/08/2019.
//  Copyright © 2019 The App Brewery. All rights reserved.
//

import Foundation

struct Question {
    let text: String
    let choices: [String]
    let correctAnswer: String
    
    init(q: String, c: [String], ca: String) {
        text = q
        choices = c
        correctAnswer = ca
    }
}

    
