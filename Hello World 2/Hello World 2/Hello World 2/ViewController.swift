//
//  ViewController.swift
//  Hello World 2
//
//  Created by Omar on 19/02/2017.
//  Copyright © 2017 Omar. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    
    
    @IBOutlet weak var textField: UITextField!
    
    
    @IBOutlet weak var textLabel: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func Click(_ sender: Any) {
        
        textLabel.text = textField.text
        
    }

}

