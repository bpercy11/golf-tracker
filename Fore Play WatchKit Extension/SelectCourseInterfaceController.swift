//
//  NewRoundInterfaceController.swift
//  Fore Play WatchKit Extension
//
//  Created by Brett Percy on 3/28/20.
//  Copyright © 2020 Brett Percy. All rights reserved.
//
import WatchKit
import Foundation

class SelectCourseInterfaceController: WKInterfaceController {
    
    @IBOutlet var courseTableView: WKInterfaceTable!
    
    let courses = [
        Course(name: "Monona", numberOfHoles: 9, par: 36,
               holes: [
                    Hole(number: 1, par: 5, FIR: false, GIR: false),
                    Hole(number: 1, par: 5, FIR: false, GIR: false),
                    Hole(number: 1, par: 5, FIR: false, GIR: false)
                ]
        ),
        Course(name: "The Oaks", numberOfHoles: 18, par: 72,
               holes: [
                    Hole(number: 1, par: 5, FIR: false, GIR: false),
                    Hole(number: 1, par: 5, FIR: false, GIR: false),
                    Hole(number: 1, par: 5, FIR: false, GIR: false)
            ]
        ),
        Course(name: "Gross National", numberOfHoles: 18, par: 71,
               holes: [
                    Hole(number: 1, par: 5, FIR: false, GIR: false),
                    Hole(number: 1, par: 5, FIR: false, GIR: false),
                    Hole(number: 1, par: 5, FIR: false, GIR: false)
            ]
        ),
        Course(name: "Theodore Wirth", numberOfHoles: 18, par: 72,
               holes: [
                    Hole(number: 1, par: 5, FIR: false, GIR: false),
                    Hole(number: 1, par: 5, FIR: false, GIR: false),
                    Hole(number: 1, par: 5, FIR: false, GIR: false)
            ]
        ),
        Course(name: "Door Creek", numberOfHoles: 18, par: 71,
               holes: [
                    Hole(number: 1, par: 5, FIR: false, GIR: false),
                    Hole(number: 1, par: 5, FIR: false, GIR: false),
                    Hole(number: 1, par: 5, FIR: false, GIR: false)
            ]
        ),
        Course(name: "Edinbourough", numberOfHoles: 18, par: 70,
               holes: [
                    Hole(number: 1, par: 5, FIR: false, GIR: false),
                    Hole(number: 1, par: 5, FIR: false, GIR: false),
                    Hole(number: 1, par: 5, FIR: false, GIR: false)
            ]
        ),
        Course(name: "Brookigns", numberOfHoles: 9, par: 37,
               holes: [
                    Hole(number: 1, par: 5, FIR: false, GIR: false),
                    Hole(number: 1, par: 5, FIR: false, GIR: false),
                    Hole(number: 1, par: 5, FIR: false, GIR: false)
            ]
        ),
        Course(name: "Nine Springs", numberOfHoles: 9, par: 36,
               holes: [
                    Hole(number: 1, par: 5, FIR: false, GIR: false),
                    Hole(number: 1, par: 5, FIR: false, GIR: false),
                    Hole(number: 1, par: 5, FIR: false, GIR: false)
            ]
        ),
        Course(name: "Yahara West", numberOfHoles: 18, par: 71,
               holes: [
                    Hole(number: 1, par: 5, FIR: false, GIR: false),
                    Hole(number: 1, par: 5, FIR: false, GIR: false),
                    Hole(number: 1, par: 5, FIR: false, GIR: false)
            ]
        ),
        Course(name: "Yahara East", numberOfHoles: 18, par: 72,
               holes: [
                    Hole(number: 1, par: 5, FIR: false, GIR: false),
                    Hole(number: 1, par: 5, FIR: false, GIR: false),
                    Hole(number: 1, par: 5, FIR: false, GIR: false)
            ]
        ),
    ]

  
    //var courses = ["Monona", "The Oaks", "Gross National", "Theodore Wirth", "Door Creek"]
    
    override func awake(withContext context: Any?) {
        super.awake(withContext: context)
        loadTableData()
    }

    override func willActivate() {
        // This method is called when watch view controller is about to be visible to user
        super.willActivate()

    }

    override func didDeactivate() {
        // This method is called when watch view controller is no longer visible
        super.didDeactivate()
    }
    
    private func loadTableData() {
        courseTableView.setNumberOfRows(courses.count, withRowType: "RowController")

        for(index, rowModel) in courses.enumerated()   {
            if let row = courseTableView.rowController(at: index) as? RowController {
                row.courseName.setText(rowModel.name as? String)
            }
        }
    }
    
    override func table(_ table: WKInterfaceTable, didSelectRowAt rowIndex: Int) {
        pushController(withName: "SelectHoleCountInterfaceController", context: courses[rowIndex])
    }
}
