//
//  ViewController.swift
//  Fore Play
//
//  Created by Brett Percy on 3/28/20.
//  Copyright © 2020 Brett Percy. All rights reserved.
//

import UIKit
import WatchConnectivity

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        self.tabBarItem.title = "Home"
        //self.navigationItem.title = "ForePlay"
        let logo = UIImage(named: "app-bar-icon.png")
        let imageView = UIImageView(image:logo)
        self.navigationItem.titleView = imageView
        
    }


    

}

