//
//  Round.swift
//  Fore Play
//
//  Created by Brett Percy on 4/9/20.
//  Copyright © 2020 Brett Percy. All rights reserved.
//

import Foundation

class Round {
    var course: Course
    var date: Date?
    var currentHole: Int
    var currentTotalScore: Int
    var plusMinusPar: Int
    var beerCount: Int
    
    init(_ course: Course) {
        self.course = course
        date = Date()
        currentHole = 0
        currentTotalScore = 0
        plusMinusPar = 0
        beerCount = 0
    }
}
