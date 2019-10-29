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
    let option1 : String
    let option2 : String
    let option3 : String
    let option4 : String
    
    init(text: String, options: Array<String>) {
        questionText = text;
        self.option1 = options[0]
        self.option2 = options[1]
        self.option3 = options[2]
        self.option4 = options[3]
    }
    
}
