//
//  ProfileViewController.swift
//  Fore Play
//
//  Created by Brett Percy on 4/2/20.
//  Copyright © 2020 Brett Percy. All rights reserved.
//

import UIKit
import CoreData

class ProfileViewController: UIViewController {

    var profile: [NSManagedObject] = []
    @IBOutlet weak var usernameLabel: UILabel!
    @IBOutlet weak var usernameTextField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        let logo = UIImage(named: "app-bar-icon.png")
        let imageView = UIImageView(image:logo)
        self.navigationItem.titleView = imageView
    }
    
    override func viewWillAppear(_ animated: Bool) {
      super.viewWillAppear(animated)

      guard let appDelegate = UIApplication.shared.delegate as? AppDelegate else {
        return
      }

      let managedContext = appDelegate.persistentContainer.viewContext
      let fetchRequest = NSFetchRequest<NSManagedObject>(entityName: "Profile")

      do {
        profile = try managedContext.fetch(fetchRequest)
//        usernameLabel.text = profile[1].value(forKey: "username") as? String
      } catch let error as NSError {
        print("Could not fetch. \(error), \(error.userInfo)")
      }
    }
    
    @IBAction func save(_ sender: Any) {
        let nameToSave = usernameTextField.text
        
        self.save(name: nameToSave!)
        
    }
    
    func save(name: String) {
      guard let appDelegate = UIApplication.shared.delegate as? AppDelegate else {
        return
      }

      let managedContext = appDelegate.persistentContainer.viewContext
      let entity = NSEntityDescription.entity(forEntityName: "Profile", in: managedContext)!
      let person = NSManagedObject(entity: entity, insertInto: managedContext)
      person.setValue(name, forKeyPath: "username")

      do {
        try managedContext.save()
        profile.append(person)
      } catch let error as NSError {
        print("Could not save. \(error), \(error.userInfo)")
      }
    }


}
