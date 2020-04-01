//
//  InRoundInterfaceController.swift
//  Fore Play WatchKit Extension
//
//  Created by Brett Percy on 3/29/20.
//  Copyright © 2020 Brett Percy. All rights reserved.
//

import WatchKit
import Foundation


class InRoundInterfaceController: WKInterfaceController {

    // round object that is manipulated throughout a round of golf
    var round: Round!
    
    override func awake(withContext context: Any?) {
        super.awake(withContext: context)

        if let course = context as? Course {
            round = Round(course)
        }
        
        // configures the paged app style of the in round experience
        WKInterfaceController.reloadRootControllers(withNamesAndContexts: [("InRoundOptionsController", round as AnyObject),
             ("InRoundMainController", round as AnyObject),
             ("InRoundMusicController", round as AnyObject)])

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
