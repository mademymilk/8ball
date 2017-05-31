//
//  ColorBook.swift
//  8Ball
//
//  Created by Louise Bishop on 24/05/2017.
//  Copyright © 2017 Louise Bishop. All rights reserved.
//

import Foundation
import UIKit

class ColorBook {

    // Create a constant that holds a list of colors
    let colors = [
        UIColor(red:0.63, green:0.35, blue:0.77, alpha:1.0), //purple
        UIColor(red:0.09, green:0.78, blue:0.53, alpha:1.0), //turquoise
        UIColor(red:0.00, green:1.00, blue:0.58, alpha:1.0), //green
        UIColor(red:0.26, green:0.61, blue:0.23, alpha:1.0), //green
        UIColor(red:0.90, green:0.45, blue:0.19, alpha:1.0), //orange
        UIColor(red:0.80, green:0.04, blue:0.81, alpha:1.0), //purple
        UIColor(red:0.17, green:0.65, blue:0.86, alpha:1.0), //light blue
        UIColor(red:0.65, green:0.18, blue:0.56, alpha:1.0), //pink
        UIColor(red:0.07, green:0.70, blue:0.32, alpha:1.0), //light green
        
    ]

    func randomColor() -> UIColor {
        // 1. Find the number of colors in our color list
        let listCount = colors.count
        
        // 2. Generate a random number from our answer list count
        let unsignedRandomNumber = arc4random_uniform(UInt32(listCount))
        let randomNumber = Int(unsignedRandomNumber)
        
        // 3. Pull an answer from the answer list using the random number
        return colors[randomNumber]
    }
    
}