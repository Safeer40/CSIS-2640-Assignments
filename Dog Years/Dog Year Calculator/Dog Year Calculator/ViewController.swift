//
//  ViewController.swift
//  Dog Year Calculator
//
//  Created by Ahmad Omer on 21/02/2017.
//  Copyright © 2017 Omar. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    
    @IBOutlet weak var DogLabel: UILabel!
    
    
    @IBOutlet weak var inputtext: UITextField!
    
    
    @IBOutlet weak var DogImage: UIImageView!
    
    
    @IBAction func FindAge(_ sender: Any) {
        
        
        let years = Int(inputtext.text!)
        let dogyears = years! * 5
        
        DogLabel.text = "Your dog is \(dogyears) dog years old!"
        
        if dogyears < 30 {
            
            DogImage.image = #imageLiteral(resourceName: "Young Dog.jpg")
            
        } else {
            
            DogImage.image = #imageLiteral(resourceName: "Old Dog.jpg")
            
        }
        
        
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

