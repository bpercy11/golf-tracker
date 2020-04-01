//
//  InRoundOptionsInterfaceController.swift
//  Fore Play WatchKit Extension
//
//  Created by Brett Percy on 3/29/20.
//  Copyright © 2020 Brett Percy. All rights reserved.
//

import WatchKit
import Foundation


class InRoundOptionsInterfaceController: WKInterfaceController {

    @IBOutlet weak var courseName: WKInterfaceLabel!
    @IBOutlet weak var currentTotalScore: WKInterfaceLabel!
    var round: Round!
    
    override func awake(withContext context: Any?) {
        super.awake(withContext: context)
        
        if let round = context as? Round {
            courseName.setText("Course: \(round.course.name)")
            currentTotalScore.setText("Total: \(round.currentTotalScore)")
        }
    }
    
    override func willActivate() {
        // This method is called when watch view controller is about to be visible to user
        super.willActivate()
        
    }
    
    override func didDeactivate() {
        // This method is called when watch view controller is no longer visible
        super.didDeactivate()
    }


    
}
