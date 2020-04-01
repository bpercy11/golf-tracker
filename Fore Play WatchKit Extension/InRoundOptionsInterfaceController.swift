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
    @IBOutlet weak var beerCount: WKInterfaceLabel!
    var round: Round!
    
    override func awake(withContext context: Any?) {
        super.awake(withContext: context)
        
        if let round = context as? Round {
            courseName.setText("Course: \(round.course.name)")
            currentTotalScore.setText("Total: \(round.currentTotalScore)")
            self.round = round
        }
    }
    
    override func willActivate() {
        // This method is called when watch view controller is about to be visible to user
        super.willActivate()

        currentTotalScore.setText("Total: \(round.currentTotalScore)")
        
        beerCount.setText("Beers: \(round.beerCount)")
        
    }
    
    override func didDeactivate() {
        // This method is called when watch view controller is no longer visible
        super.didDeactivate()
    }



    @IBAction func beerButtonLongPress(_ sender: Any) {
        round.beerCount -= 1
        beerCount.setText("Beers: \(round.beerCount)")
        
    }
    
    @IBAction func beerButton() {
        round.beerCount += 1
        beerCount.setText("Beers: \(round.beerCount)")
    }
    
}
