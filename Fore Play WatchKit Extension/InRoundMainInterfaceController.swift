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
    @IBOutlet weak var strokeCount: WKInterfaceLabel!
    @IBOutlet weak var firButton: WKInterfaceButton!
    @IBOutlet weak var girButton: WKInterfaceButton!
    
    let firString = "FIR"
    let girString = "GIR"
    
    let firGirSelectedAttributes: [NSAttributedString.Key: Any] = [
        .foregroundColor: UIColor.white,
        .font: UIFont.boldSystemFont(ofSize: 17)
    ]
    
    let firGirUnselectedAttributes: [NSAttributedString.Key: Any] = [
        .foregroundColor: UIColor.white,
        .font: UIFont.systemFont(ofSize: 17)
    ]
    
    var round: Round!
    
    override func awake(withContext context: Any?) {
        super.awake(withContext: context)
        becomeCurrentPage()
        
        strokeCount.setText(String(0))
        
        if let round = context as? Round {
            currentHole.setText("Hole: \(String(round.currentHole + 1))")
            self.round = round
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
    

    @IBAction func previousHole() {
        if round.currentHole > 0 {
            round.currentHole = round.currentHole - 1
            
            updateHoleAndStrokeLabels(round.currentHole + 1, round.course.holes[round.currentHole].score)

        }
    }
    
    
    @IBAction func nextHole() {
        if round.currentHole < round.course.holes.count - 1 {
            round.currentHole = round.currentHole + 1
            
            updateHoleAndStrokeLabels(round.currentHole + 1, round.course.holes[round.currentHole].score)
        }
    }
    
    @IBAction func subtractStroke() {
        if round.course.holes[round.currentHole].score > 0 {
            round.course.holes[round.currentHole].score -= 1
            round.currentTotalScore -= 1
            updateStrokeLabel(round.course.holes[round.currentHole].score)
        }
    }
    
    @IBAction func addStroke() {
        round.course.holes[round.currentHole].score += 1
        round.currentTotalScore += 1
        updateStrokeLabel(round.course.holes[round.currentHole].score)
        
    }
    
    @IBAction func fairwayInRegulation() {
        if !round.course.holes[round.currentHole].FIR {
            round.course.holes[round.currentHole].FIR = true
            let attributedString = NSAttributedString(string: firString, attributes: firGirSelectedAttributes)
            firButton.setAttributedTitle(attributedString)
        } else {
            round.course.holes[round.currentHole].FIR = false
            let attributedString = NSAttributedString(string: firString, attributes: firGirUnselectedAttributes)
            firButton.setAttributedTitle(attributedString)
        }
    }
    
    @IBAction func greenInRegulation() {
        if !round.course.holes[round.currentHole].GIR {
            round.course.holes[round.currentHole].GIR = true
            let attributedString = NSAttributedString(string: girString, attributes: firGirSelectedAttributes)
            girButton.setAttributedTitle(attributedString)
        } else {
            round.course.holes[round.currentHole].GIR = false
            let attributedString = NSAttributedString(string: girString, attributes: firGirUnselectedAttributes)
            girButton.setAttributedTitle(attributedString)
        }
    }
    
    private func updateHoleAndStrokeLabels(_ hole: Int, _ strokes: Int){
        updateHoleLabel(hole)
        updateStrokeLabel(strokes)
    }
    
    private func updateHoleLabel(_ hole: Int){
        currentHole.setText("Hole: \(String(hole))")
    }
    
    private func updateStrokeLabel(_ strokes: Int){
        strokeCount.setText(String(strokes))
    }
}
