//
//  ViewController.swift
//  inout memory
//
//  Created by 찬호백 on 2020/01/05.
//  Copyright © 2020 Chan-Ho Beak. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var Number1 = 1
    var Number2 = 2
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        _ = Numbers(num1: Number1, num2: &Number2)
        print(Number2)
    }
     
    
    func Numbers(num1: Int, num2: inout Int) -> Int{
        num2 = 5
        return num1 * num2
    }

}

