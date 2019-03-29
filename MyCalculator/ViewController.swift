//
//  ViewController.swift
//  MyCalculator
//
//  Created by Your Host on 3/28/19.
//  Copyright © 2019 Mati Kos. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    var numberOnScreen: Double = 0;
    var previousNumber: Double = 0;
    var performingMath = false;
    var operation = 0;
    var outcome: Double = 0
    
    @IBOutlet weak var label: UILabel!
    @IBAction func numbers(_ sender: UIButton) {
        if performingMath == true {
            label.text = String(sender.tag - 1)
            numberOnScreen = Double(label.text!)!
            performingMath = false
        
        }
        else {
            label.text = label.text! + String(sender.tag - 1)
            numberOnScreen = Double(label.text!)!
        }
    }
    
    @IBAction func buttons(_ sender: UIButton) {
        
        if label.text != "" && sender.tag != 11 && sender.tag != 16 {
        
            previousNumber = Double(label.text!)!
            
            if sender.tag == 12 {
                //Divide
                label.text = "/"
            }
            else if sender.tag == 13 {
                //Multiply
                label.text = "x"
            }
            else if sender.tag == 14 {
                //Substract
                label.text = "-"
            }
            else if sender.tag == 15 {
                //Add
                label.text = "+"
            }
            operation = sender.tag
            performingMath = true
        }
        
        else if sender.tag == 16 {
                
            if operation == 12 {
                //Divide
                outcome = (previousNumber / numberOnScreen)
            }
            else if operation == 13 {
                //Multiply
                outcome = (previousNumber * numberOnScreen)
            }
            else if operation == 14 {
                //Substract
                outcome = (previousNumber - numberOnScreen)
            }
            else if operation == 15 {
                //Add
                outcome = (previousNumber + numberOnScreen)
            }
            
                label.text = String(outcome)
        }
        
        else if sender.tag == 11 {
            label.text = ""
            previousNumber = 0
            numberOnScreen = 0
            operation = 0
        }
    }
    
  
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


}


