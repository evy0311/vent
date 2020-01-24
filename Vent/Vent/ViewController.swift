//
//  ViewController.swift
//  Vent
//
//  Created by Evan Horsley on 1/23/20.
//  Copyright © 2020 Evan Horsley. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var rantBox: UITextView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func buttonPressed(_ sender: UIButton) {
        rantBox.text = ""
    }
    
}

