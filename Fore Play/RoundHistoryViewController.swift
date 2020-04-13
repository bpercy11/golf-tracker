//
//  RoundHistoryViewController.swift
//  Fore Play
//
//  Created by Brett Percy on 4/9/20.
//  Copyright © 2020 Brett Percy. All rights reserved.
//

import UIKit

class RoundHistoryTableViewCell: UITableViewCell {
    
    @IBOutlet weak var courseNameLabel: UILabel!
    @IBOutlet weak var courseParLabel: UILabel!
    @IBOutlet weak var datePlayedLabel: UILabel!
    @IBOutlet weak var strokesLabel: UILabel!
}

class RoundHistoryViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {
    
    @IBOutlet weak var roundHistoryTableView: UITableView!

    
    
    var roundHistory = [
        PastRound(course: Course(name: "Monona", numberOfHoles: 18, par: 71,
                                 holes: [
                                    Hole(number: 1, par: 5, score: 5, FIR: false, GIR: false),
                                    Hole(number: 1, par: 5, score: 4, FIR: false, GIR: false),
                                    Hole(number: 1, par: 5, score: 6, FIR: false, GIR: false)
                                ]
                ), date: nil, score: 90, numberOfBeers: 10, FIRs: 12, GIRs: 6),
        PastRound(course: Course(name: "The Oaks", numberOfHoles: 18, par: 72,
                                 holes: [
                                    Hole(number: 1, par: 5, score: 6, FIR: false, GIR: false),
                                    Hole(number: 1, par: 5, score: 6, FIR: false, GIR: false),
                                    Hole(number: 1, par: 5, score: 4, FIR: false, GIR: false)
                                ]
                ), date: nil, score: 85, numberOfBeers: 10, FIRs: 12, GIRs: 6),
        PastRound(course: Course(name: "Gross National", numberOfHoles: 18, par: 72,
                                 holes: [
                                    Hole(number: 1, par: 5, score: 3, FIR: false, GIR: false),
                                    Hole(number: 1, par: 5, score: 7, FIR: false, GIR: false),
                                    Hole(number: 1, par: 5, score: 6, FIR: false, GIR: false)
                                ]
                ), date: nil, score: 86, numberOfBeers: 10, FIRs: 12, GIRs: 6),
        PastRound(course: Course(name: "Monona", numberOfHoles: 18, par: 71,
                                 holes: [
                                    Hole(number: 1, par: 5, score: 5, FIR: false, GIR: false),
                                    Hole(number: 1, par: 5, score: 4, FIR: false, GIR: false),
                                    Hole(number: 1, par: 5, score: 6, FIR: false, GIR: false)
                                ]
                ), date: nil, score: 78, numberOfBeers: 10, FIRs: 12, GIRs: 6),
        PastRound(course: Course(name: "Monona", numberOfHoles: 18, par: 71,
                                 holes: [
                                    Hole(number: 1, par: 5, score: 5, FIR: false, GIR: false),
                                    Hole(number: 1, par: 5, score: 4, FIR: false, GIR: false),
                                    Hole(number: 1, par: 5, score: 6, FIR: false, GIR: false)
                                ]
                ), date: nil, score: 81, numberOfBeers: 10, FIRs: 12, GIRs: 6),
        PastRound(course: Course(name: "Monona", numberOfHoles: 18, par: 71,
                                 holes: [
                                    Hole(number: 1, par: 5, score: 5, FIR: false, GIR: false),
                                    Hole(number: 1, par: 5, score: 4, FIR: false, GIR: false),
                                    Hole(number: 1, par: 5, score: 6, FIR: false, GIR: false)
                                ]
                ), date: nil, score: 84, numberOfBeers: 10, FIRs: 12, GIRs: 6),
        PastRound(course: Course(name: "Monona", numberOfHoles: 18, par: 71,
                                 holes: [
                                    Hole(number: 1, par: 5, score: 5, FIR: false, GIR: false),
                                    Hole(number: 1, par: 5, score: 4, FIR: false, GIR: false),
                                    Hole(number: 1, par: 5, score: 6, FIR: false, GIR: false)
                                ]
                ), date: nil, score: 71, numberOfBeers: 10, FIRs: 12, GIRs: 6),
    ]
    

    override func viewDidLoad() {
        super.viewDidLoad()
        //print(roundHistory.count)
        // Do any additional setup after loading the view.
    }
    
    
    @IBAction func backButton(_ sender: Any) {
        self.dismiss(animated: true, completion: nil)
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return roundHistory.count
    }

    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {

        let cell = tableView.dequeueReusableCell(withIdentifier: "roundHistoryCell", for: indexPath) as! RoundHistoryTableViewCell

        cell.courseNameLabel?.text = roundHistory[indexPath.row].course.name
        cell.courseParLabel?.text = "Par: \((String(roundHistory[indexPath.row].course.par)))"
        cell.strokesLabel?.text = (String(roundHistory[indexPath.row].score))

        return cell
    }
    


}
