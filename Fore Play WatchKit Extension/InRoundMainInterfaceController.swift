//
//  InRoundMainInterfaceController.swift
//  Fore Play WatchKit Extension
//
//  Created by Brett Percy on 3/29/20.
//  Copyright © 2020 Brett Percy. All rights reserved.
//
import WatchKit
import Foundation


class InRoundMainInterfaceController: WKInterfaceController {

    // current hole label at top of screen
    @IBOutlet weak var currentHole: WKInterfaceLabel!
    

    var round: Round!
    
    override func awake(withContext context: Any?) {
        super.awake(withContext: context)
        becomeCurrentPage()
        
        if let round = context as? Round {
            currentHole.setText("Hole: \(String(round.currentHole))")
            self.round = round
        }
        // Configure interface objects here.
    }
    
    override func willActivate() {
        // This method is called when watch view controller is about to be visible to user
        super.willActivate()
        
    }
    
    override func didDeactivate() {
        // This method is called when watch view controller is no longer visible
        super.didDeactivate()
    }

//    override func contextForSegue(withIdentifier segueIdentifier: String) -> Any? {
//        return round
//    }
    

    @IBAction func previousHole() {
        if (round.currentHole > 1){
            round.currentHole = round.currentHole - 1
            currentHole.setText("Hole: \(String(round.currentHole))")
        }
    }
    
    
    @IBAction func nextHole() {
        round.currentHole = round.currentHole + 1
        currentHole.setText("Hole: \(String(round.currentHole))")
    }
    
    @IBAction func subtractStroke() {
    }
    
    @IBAction func addStroke() {
        round.currentTotalScore = round.currentTotalScore + 1
    }
    
    @IBAction func fairwayInRegulation() {
    }
    
    @IBAction func greenInRegulation() {
    }
    
}
