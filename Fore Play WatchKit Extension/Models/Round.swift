//
//  Round.swift
//  Fore Play WatchKit Extension
//
//  Created by Brett Percy on 3/29/20.
//  Copyright © 2020 Brett Percy. All rights reserved.
//
import Foundation

struct Round {
    let course: Course
    var currentHole: Int
    var currentScore: Int
    var plusMinusPar: Int
    var holes: [Hole]
    var date: Date
    var time: Timer
    var beers: Int
    
}
