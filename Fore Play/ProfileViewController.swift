//
//  ProfileViewController.swift
//  Fore Play
//
//  Created by Brett Percy on 4/2/20.
//  Copyright © 2020 Brett Percy. All rights reserved.
//

import UIKit

class ProfileViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        let logo = UIImage(named: "app-bar-icon.png")
        let imageView = UIImageView(image:logo)
        self.navigationItem.titleView = imageView

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
