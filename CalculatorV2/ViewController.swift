//
//  ViewController.swift
//  CalculatorV2
//
//  Created by Владислав Сизонов on 13.09.2021.
//

import UIKit

class ViewController: UIViewController {

    var stillTyping = false
    var firstOperand: Double = 0
    var currentInput: Double {
        get {
            return Double(displayResultLabel.text!)!
        }
        set {
            displayResultLabel.text = "\(newValue)"
            stillTyping = false
        }
    }
    @IBOutlet var displayResultLabel: UILabel!
    
    
    @IBAction func numberButtonPressed(_ sender: UIButton) {
        
        let number = sender.currentTitle!
        
       if stillTyping {
                displayResultLabel.text = displayResultLabel.text! + number
          } else {
             displayResultLabel.text = number
              stillTyping = true
           }

        }
    
    
    @IBAction func operandSighnPressed(_ sender: UIButton) {
        firstOperand = currentInput
        stillTyping = false
    }
    
    
    }
    
    
    
    
    
    


/* let number = sender.currentTitle!
if stillTyping {
    if displayResultLabel.text!.count < 20 {
        displayResultLabel.text = displayResultLabel.text! + number
    } else {
        displayResultLabel.text = number
        stillTyping = true
    }

}
*/

