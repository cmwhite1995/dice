//
//  ViewController.swift
//  dice
//
//  Created by christopher white on 9/10/19.
//  Copyright © 2019 christopher white. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    var blah: Int = 0
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        blah = Int.random(in: 0...5)
        print(blah)
    }
    
    


}

