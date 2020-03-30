//
//  SecondInRoundInterfaceController.swift
//  Fore Play WatchKit Extension
//
//  Created by Brett Percy on 3/29/20.
//  Copyright © 2020 Brett Percy. All rights reserved.
//

import WatchKit
import Foundation


class SecondInRoundInterfaceController: WKInterfaceController {

    
    override func awake(withContext context: Any?) {
        super.awake(withContext: context)
                WKInterfaceController.reloadRootControllers(withNamesAndContexts: [("InRoundInterfaceController", context as AnyObject),("Two", context as AnyObject),("Three", context as AnyObject)])
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


    
}

