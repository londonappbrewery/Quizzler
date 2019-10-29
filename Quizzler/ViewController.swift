//
//  ViewController.swift
//  Quizzler
//
//  Created by Angela Yu on 25/08/2015.
//  Copyright (c) 2015 London App Brewery. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    //Place your instance variables here
    
    let allQuestions = QuestionBank()
    var pickedAnswer : Int = 0
    var questionNumber : Int = 0
    var answers = [Int]()
    
    @IBOutlet weak var questionLabel: UILabel!
    @IBOutlet weak var Option1: UIButton!
    @IBOutlet weak var Option2: UIButton!
    @IBOutlet weak var Option3: UIButton!
    @IBOutlet weak var Option4: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        nextQuestion()
    }

    @IBAction func answerButtonPressed(_ sender: UIButton) {
        answers.append(sender.tag)
        
        questionNumber += 1
        
        nextQuestion()
    }
    
    func updateUI() {
        Option1.setTitle(allQuestions.list[questionNumber].option1, for: .normal)
        Option2.setTitle(allQuestions.list[questionNumber].option2, for: .normal)
        Option3.setTitle(allQuestions.list[questionNumber].option3, for: .normal)
        Option4.setTitle(allQuestions.list[questionNumber].option4, for: .normal)
    }
    

    func nextQuestion() {
        
        if questionNumber <= 2 {
            questionLabel.text = allQuestions.list[questionNumber].questionText
            updateUI()
        } else {
            let alert = UIAlertController(title: "Awesome!", message: "You've finished the quiz!", preferredStyle: .alert)
            let restartAction = UIAlertAction(title: "Restart", style: .default, handler: {(UIAlertAction) in self.startOver()
            })
            
            alert.addAction(restartAction)
            
            present(alert, animated: true, completion: nil)
        }
    
    }
    
    
    func startOver() {
        questionNumber = 0
        nextQuestion()
        answers = [Int]()
    }
    

    
}
