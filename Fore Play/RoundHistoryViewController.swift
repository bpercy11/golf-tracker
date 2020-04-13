//
//  RoundHistoryViewController.swift
//  Fore Play
//
//  Created by Brett Percy on 4/9/20.
//  Copyright © 2020 Brett Percy. All rights reserved.
//

import UIKit

class RoundHistoryViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {
    
    @IBOutlet weak var roundHistoryTableView: UITableView!
    
    var roundHistory = [
        PastRound(course: Course(name: "Monona", numberOfHoles: 18, par: 71,
                                 holes: [
                                    Hole(number: 1, par: 5, score: 0, FIR: false, GIR: false),
                                    Hole(number: 1, par: 5, score: 0, FIR: false, GIR: false),
                                    Hole(number: 1, par: 5, score: 0, FIR: false, GIR: false)
                                ]
                ), date: nil, score: 90, numberOfBeers: 10, FIRs: 12, GIRs: 6),
        PastRound(course: Course(name: "The Oaks", numberOfHoles: 18, par: 72,
                                 holes: [
                                    Hole(number: 1, par: 5, score: 0, FIR: false, GIR: false),
                                    Hole(number: 1, par: 5, score: 0, FIR: false, GIR: false),
                                    Hole(number: 1, par: 5, score: 0, FIR: false, GIR: false)
                                ]
                ), date: nil, score: 85, numberOfBeers: 10, FIRs: 12, GIRs: 6),
        PastRound(course: Course(name: "Gross National", numberOfHoles: 18, par: 72,
                                 holes: [
                                    Hole(number: 1, par: 5, score: 0, FIR: false, GIR: false),
                                    Hole(number: 1, par: 5, score: 0, FIR: false, GIR: false),
                                    Hole(number: 1, par: 5, score: 0, FIR: false, GIR: false)
                                ]
                ), date: nil, score: 86, numberOfBeers: 10, FIRs: 12, GIRs: 6),
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

        let cell = tableView.dequeueReusableCell(withIdentifier: "roundHistoryCell", for: indexPath)

        cell.textLabel?.text = roundHistory[indexPath.row].course.name

        return cell
    }

}
