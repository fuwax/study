//
//  ViewController.swift
//  Logging
//
//  Created by 찬호백 on 2020/01/06.
//  Copyright © 2020 Chan-Ho Beak. All rights reserved.
//

import UIKit
import os.log

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        os_log("Log Test")
        os_log("Log Test")
        os_log("Log Test") 
    }


}

