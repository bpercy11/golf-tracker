//
//  File.swift
//  Fore Play WatchKit Extension
//
//  Created by Brett Percy on 3/29/20.
//  Copyright © 2020 Brett Percy. All rights reserved.
//

import WatchKit
import Foundation


class SelectHoleCountInterfaceController: WKInterfaceController {

    @IBOutlet var courseName: WKInterfaceLabel!
    @IBOutlet weak var par: WKInterfaceLabel!
    @IBOutlet weak var holeCount: WKInterfaceLabel!
    @IBOutlet weak var eighteenButton: WKInterfaceButton!
    @IBOutlet weak var frontNineButton: WKInterfaceButton!
    @IBOutlet weak var backNineButton: WKInterfaceButton!
    
    var courseContext: Course!
    
    override func awake(withContext context: Any?) {
        super.awake(withContext: context)
        
        if let course = context as? Course {
            courseName.setText(course.name)
            par.setText("Par: \(course.par)")
            holeCount.setText("Holes: \(course.holes)")
            
            
            if course.holes == "9" {
                eighteenButton.setEnabled(false)
                backNineButton.setEnabled(false)
            }
            
            courseContext = course
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

    
    @IBAction func eighteenButtonPress() {
        courseContext.holes = "18"
        pushController(withName: "StartRoundInterfaceController", context: courseContext)
    }
    
    @IBAction func frontNineButtonPress() {
        courseContext.holes = "Front 9"
        pushController(withName: "StartRoundInterfaceController", context: courseContext)
    }
    
    @IBAction func backNineButtonPress() {
        courseContext.holes = "Back 9"
        pushController(withName: "StartRoundInterfaceController", context: courseContext)
    }
    
}
