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
    var secondOperand: Double = 0
    var operationSighn = ""
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
        operationSighn = sender.currentTitle!
        firstOperand = currentInput
        stillTyping = false
    }
    
    
    func operateWithTwoOperands(operation: (Double,Double) -> Double) {
       currentInput = operation(firstOperand, secondOperand)
        stillTyping = false
    }
    @IBAction func equalitySighnPressed(_ sender: UIButton) {
        
        if stillTyping {
            secondOperand = currentInput
        }
        switch operationSighn {
        case "+":
            operateWithTwoOperands{$0 + $1}
        case "-":
            operateWithTwoOperands{$0 - $1}
        case "×":
            operateWithTwoOperands{$0 * $1}
        case "÷":
            operateWithTwoOperands{$0 / $1}
        default:
            break
        }
    }
    
    
    @IBAction func clearButtonPressed(_ sender: UIButton) {
        firstOperand = 0
        secondOperand = 0
        currentInput = 0
        displayResultLabel.text = "0"
        stillTyping = false
        operationSighn = ""
    }
    
    @IBAction func plusMinusButtonPressed(_ sender: UIButton) {
        currentInput = -currentInput
    }
    
    
    @IBAction func persantageButtonPressed(_ sender: UIButton) {
    }
    
    @IBAction func squareRootButtonPressed(_ sender: UIButton) {
        currentInput = sqrt(currentInput)
    }
    @IBAction func dotButtonPressed(_ sender: UIButton) {
    }
}
    
    
    
