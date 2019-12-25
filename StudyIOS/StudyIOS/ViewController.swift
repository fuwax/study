//
//  ViewController.swift
//  StudyIOS
//
//  Created by 찬호백 on 2019/12/25.
//  Copyright © 2019 Chan-Ho Beak. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet var lblTitle: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    @IBAction func btnPush(_ sender: UIButton) {
        lblTitle.text = "This is App"
    }
    

}

