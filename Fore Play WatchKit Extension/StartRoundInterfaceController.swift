//
//  StartRoundInterfaceController.swift
//  Fore Play WatchKit Extension
//
//  Created by Brett Percy on 3/29/20.
//  Copyright © 2020 Brett Percy. All rights reserved.
//

import WatchKit
import Foundation


class StartRoundInterfaceController: WKInterfaceController {

    @IBOutlet weak var courseName: WKInterfaceLabel!
    @IBOutlet weak var par: WKInterfaceLabel!
    @IBOutlet weak var holes: WKInterfaceLabel!
    
    var courseContext: Course!
    
    override func awake(withContext context: Any?) {
        super.awake(withContext: context)
        
        if let course = context as? Course {
            courseName.setText(course.name)
            par.setText("Par: \(course.par)")
            holes.setText("Holes: \(course.numberOfHoles)")
            
            courseContext = course
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


    @IBAction func teeOffButton() {
        pushController(withName: "InRoundInterfaceController", context: courseContext)
    }
    
}
