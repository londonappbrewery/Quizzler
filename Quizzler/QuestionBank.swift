//
//  QuestionBank.swift
//  Quizzler
//
//  Created by Omari Matthews on 1/29/19.
//  Copyright © 2019 London App Brewery. All rights reserved.
//

import Foundation

class QuestionBank {
    
    var list = [Question]()
    
    init() {
        
        // skipping one step and just creating the quiz item inside the append function
        list.append(Question(text: "Where are you?",
                             options: ["Public Setting", "Living Room", "Car", "Bedroom"]))
        
        
        list.append(Question(text: "How many people are there?",
                             options: ["1", "2-4", "5-10", ">10"]))
        
    }
    
}
