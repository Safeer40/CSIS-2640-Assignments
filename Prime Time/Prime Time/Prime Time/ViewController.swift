//
//  ViewController.swift
//  Prime Time
//
//  Created by Ahmad Omer on 22/02/2017.
//  Copyright © 2017 Omar. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    
    @IBOutlet weak var textf: UITextField!
    
    
    @IBOutlet weak var result: UILabel!
    
    
    
    @IBAction func calculate(_ sender: Any) {
        
        func primes(n: Int) -> [Int] {
            var numbers = [Int](2 ..< n)
            for i in 0..<n - 2 {
                let prime = numbers [i]
                guard prime > 0 else { continue }
                for multiple in stride(from: 2 * prime - 2, to: n - 2, by: prime){
                    numbers [multiple] = 0
                }
            }
            return numbers.filter{ $0 > 0 }
            
        }
        
        
        let myString = textf.text
        let myInt = Int(myString!)
        
        result.text = String(describing: primes(n: myInt!))
        
        
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

