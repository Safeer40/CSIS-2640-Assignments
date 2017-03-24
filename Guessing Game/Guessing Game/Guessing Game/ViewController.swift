//
//  ViewController.swift
//  Guessing Game
//
//  Created by Ahmad Omer on 22/02/2017.
//  Copyright © 2017 Omar. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    
    
    @IBOutlet weak var textf: UITextField!
    
    
    @IBAction func guess(_ sender: Any) {
        
        
        let firstValue = Double(textf.text!)
        let ranNum = Double(arc4random() % 10)
        
        result.text = "The answer is \(ranNum), you guessed \(firstValue)."
        if firstValue == ranNum{
        
            result.text = "You Won!!!"
        
        } else{
            
            result.text = "Sorry, try again :("
            
        }
        
        
        
        
        
        
    }
    
    
    @IBOutlet weak var result: UILabel!
    
    
    
    
    
    
    
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

