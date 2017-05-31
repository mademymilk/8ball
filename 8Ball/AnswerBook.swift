//
//  AnswerBook.swift
//  8Ball
//
//  Created by Louise Bishop on 24/05/2017.
//  Copyright © 2017 Louise Bishop. All rights reserved.
//

import Foundation

class AnswerBook {

    // Create a constant that contains a list of answers
    let answers = [
        "It is certain",
        "Most likely",
        "Without a doubt",
        "Reply hazy.. try again",
        "Who knows...",
        "Don't count on it",
        "My sources say no",
        "Outlook not so good"
    ]
    
    // Create a random answer function that returns a random answer from the list

    func randomAnswer() -> String {
        // 1. Find the number of answers in our answer list
        let listCount = answers.count
        
        // 2. Generate a random number from our answer list count
        let unsignedRandomNumber = arc4random_uniform(UInt32(listCount))
        let randomNumber = Int(unsignedRandomNumber)
        
        // 3. Pull an answer from the answer list using the random number
        return answers[randomNumber]
    }


}
