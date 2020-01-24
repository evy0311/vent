//
//  ViewController.swift
//  Vent
//
//  Created by Evan Horsley on 1/23/20.
//  Copyright © 2020 Evan Horsley. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITextViewDelegate {

    @IBOutlet weak var rantBox: UITextView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view.
        addToolBarForTextView()
    }
    
    private func addToolBarForTextView() {
        let textViewToolbar: UIToolbar = UIToolbar()
        textViewToolbar.barStyle = .default
        textViewToolbar.items = [
            UIBarButtonItem(title: "Cancel", style: .done,
                      target: self, action: #selector(cancelInput)),
            UIBarButtonItem(barButtonSystemItem: .flexibleSpace,
                      target: self, action: nil),
            UIBarButtonItem(title: "End Rant", style: .done,
                      target: self, action: #selector(doneInput))
        ]
        textViewToolbar.sizeToFit()
        rantBox.inputAccessoryView = textViewToolbar
    }

    @objc func cancelInput() {
        print("cancel")
        self.rantBox.resignFirstResponder()
        
    }
    @objc func doneInput() {
        print("done")
        self.rantBox.resignFirstResponder()
        self.rantBox.text = "Type rant here..."
    }
    
}

