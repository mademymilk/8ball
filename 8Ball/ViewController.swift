//
//  ViewController.swift
//  8Ball
//
//  Created by Louise Bishop on 23/05/2017.
//  Copyright © 2017 Louise Bishop. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var answerLabel: UILabel!
    @IBOutlet weak var answerButton: UIButton!
    
    // Create objects from our classes
    let answerBookObject = AnswerBook()
    let colorBookObject = ColorBook()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // This function runs just before the view shows on screen, use it to customise the view.
        answerButton.layer.cornerRadius = 15
        showAnswer()
    }
    
    
    @IBAction func showAnswer() {
        // 1. Generate a random answer
        let randomAnswer = answerBookObject.randomAnswer()
        // 2. Set the label's text to the random answer
        answerLabel.text = randomAnswer
        
        // 3. Set the background color of the view to a random color
        view.backgroundColor = colorBookObject.randomColor()
    }
    

}

