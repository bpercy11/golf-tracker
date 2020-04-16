//
//  NewCourseViewController.swift
//  Fore Play
//
//  Created by Brett Percy on 4/16/20.
//  Copyright © 2020 Brett Percy. All rights reserved.
//

import CoreData
import UIKit

class NewCourseViewController: UIViewController {
    
    var courses: [NSManagedObject] = []
    @IBOutlet weak var courseNameTextView: UITextField!
    @IBOutlet weak var courseHolesTextView: UITextField!
    @IBOutlet weak var courseParTextView: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    

    @IBAction func saveNewCourseButton(_ sender: Any) {
        guard let courseNameToSave = courseNameTextView.text else {
            courseNameTextView.tintColor = UIColor.red
            return
        }
        
        guard let courseHolesToSave: Int = Int(courseHolesTextView.text!) else {
            courseHolesTextView.tintColor = UIColor.red
            return
        }
        
        guard let courseParToSave: Int = Int(courseParTextView.text!) else {
            courseParTextView.tintColor = UIColor.red
            return
        }
        
        self.save(courseName: courseNameToSave, courseHoles: courseHolesToSave, coursePar: courseParToSave)
        
    }
    

    func save(courseName: String, courseHoles: Int, coursePar: Int) {
        guard let appDelegate = UIApplication.shared.delegate as? AppDelegate else {
            return
        }
        
        
        let managedContext = appDelegate.persistentContainer.viewContext
        let entity = NSEntityDescription.entity(forEntityName: "Courses", in: managedContext)!
        let course = NSManagedObject(entity: entity, insertInto: managedContext)
        course.setValue(courseName, forKeyPath: "name")
        course.setValue(courseHoles, forKeyPath: "numberOfHoles")
        course.setValue(coursePar, forKeyPath: "par")

        
        do {
            try managedContext.save()
            courses.append(course)
        } catch let error as NSError {
            print("Could not save. \(error), \(error.userInfo)")
        }
    }
}
