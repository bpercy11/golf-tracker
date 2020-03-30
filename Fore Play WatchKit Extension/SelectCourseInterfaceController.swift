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
        Course(name: "Monona", holes: "9", par: "36"),
        Course(name: "The Oaks", holes: "18", par: "72"),
        Course(name: "Gross National", holes: "18", par: "71"),
        Course(name: "Theodore Wirth", holes: "18", par: "72"),
        Course(name: "Door Creek", holes: "18", par: "71")
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
