//
//  EnterPastRoundViewController.swift
//  Fore Play
//
//  Created by Brett Percy on 4/13/20.
//  Copyright © 2020 Brett Percy. All rights reserved.
//

import UIKit

class EnterPastRoundViewController: UIViewController {

    let courses = [
        Course(name: "Monona", numberOfHoles: 9, par: 36,
               holes: [
                Hole(number: 1, par: 5, score: 0, FIR: false, GIR: false),
                Hole(number: 1, par: 5, score: 0, FIR: false, GIR: false),
                Hole(number: 1, par: 5, score: 0, FIR: false, GIR: false)
                ]
        ),
        Course(name: "The Oaks", numberOfHoles: 18, par: 72,
               holes: [
                Hole(number: 1, par: 5, score: 0, FIR: false, GIR: false),
                Hole(number: 1, par: 5, score: 0, FIR: false, GIR: false),
                Hole(number: 1, par: 5, score: 0, FIR: false, GIR: false)
            ]
        ),
        Course(name: "Gross National", numberOfHoles: 18, par: 71,
               holes: [
                Hole(number: 1, par: 5, score: 0, FIR: false, GIR: false),
                Hole(number: 1, par: 5, score: 0, FIR: false, GIR: false),
                Hole(number: 1, par: 5, score: 0, FIR: false, GIR: false)
            ]
        ),
        Course(name: "Theodore Wirth", numberOfHoles: 18, par: 72,
               holes: [
                Hole(number: 1, par: 5, score: 0, FIR: false, GIR: false),
                Hole(number: 1, par: 5, score: 0, FIR: false, GIR: false),
                Hole(number: 1, par: 5, score: 0, FIR: false, GIR: false)
            ]
        ),
        Course(name: "Door Creek", numberOfHoles: 18, par: 71,
               holes: [
                Hole(number: 1, par: 5, score: 0, FIR: false, GIR: false),
                Hole(number: 1, par: 5, score: 0, FIR: false, GIR: false),
                Hole(number: 1, par: 5, score: 0, FIR: false, GIR: false)
            ]
        ),
        Course(name: "Edinbourough", numberOfHoles: 18, par: 70,
               holes: [
                Hole(number: 1, par: 5, score: 0, FIR: false, GIR: false),
                Hole(number: 1, par: 5, score: 0, FIR: false, GIR: false),
                Hole(number: 1, par: 5, score: 0, FIR: false, GIR: false)
            ]
        ),
        Course(name: "Brookigns", numberOfHoles: 9, par: 37,
               holes: [
                Hole(number: 1, par: 5, score: 0, FIR: false, GIR: false),
                Hole(number: 1, par: 5, score: 0, FIR: false, GIR: false),
                Hole(number: 1, par: 5, score: 0, FIR: false, GIR: false)
            ]
        ),
        Course(name: "Nine Springs", numberOfHoles: 9, par: 36,
               holes: [
                Hole(number: 1, par: 5, score: 0, FIR: false, GIR: false),
                Hole(number: 1, par: 5, score: 0, FIR: false, GIR: false),
                Hole(number: 1, par: 5, score: 0, FIR: false, GIR: false)
            ]
        ),
        Course(name: "Yahara West", numberOfHoles: 18, par: 71,
               holes: [
                Hole(number: 1, par: 5, score: 0, FIR: false, GIR: false),
                Hole(number: 1, par: 5, score: 0, FIR: false, GIR: false),
                Hole(number: 1, par: 5, score: 0, FIR: false, GIR: false)
            ]
        ),
        Course(name: "Yahara East", numberOfHoles: 18, par: 72,
               holes: [
                Hole(number: 1, par: 5, score: 0, FIR: false, GIR: false),
                Hole(number: 1, par: 5, score: 0, FIR: false, GIR: false),
                Hole(number: 1, par: 5, score: 0, FIR: false, GIR: false)
            ]
        ),
    ]
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return courses.count
    }
    
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "courseTableCell", for: indexPath) as! CourseTableViewCell
        
        cell.courseNameLabel?.text = courses[indexPath.row].name
        cell.parLabel?.text = "Par: \((String(courses[indexPath.row].par)))"
        cell.locationLabel?.text = "Madison, WI"
        //        cell.textLabel?.text = courses[indexPath.row].name
        
        return cell
    }
    
    @IBAction func backButton(_ sender: Any) {
        self.dismiss(animated: true, completion: nil)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
