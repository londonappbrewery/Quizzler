//
//  Question.swift
//  Quizzler
//
//  Created by Omari Matthews on 1/29/19.
//  Copyright © 2019 London App Brewery. All rights reserved.
//

import Foundation

class Question {
    
    let questionText : String
    let answer : Bool
    
    init(text: String, correctAnswer: Bool) {
        questionText = text;
        answer = correctAnswer;
    }
    
}
