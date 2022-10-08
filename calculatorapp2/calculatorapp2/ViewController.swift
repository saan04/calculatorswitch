//
//  ViewController.swift
//  calculatorapp2
//
//  Created by APPLE on 08/10/22.
//

import UIKit

class ViewController: UIViewController {
    
    var numberOnScreen: Double = 0
    var previousNumber: Double = 0
    var performMathOp = false
    var operation = 0
    
    @IBOutlet weak var calclabel: UILabel!
    
    
    @IBAction func operatorbtn(_ sender: UIButton) {
        if calclabel.text != ""{
            switch sender.tag{
                case 15:
                switch operation{
                    case 11: calclabel.text = String(previousNumber + numberOnScreen)
                    case 12: calclabel.text = String(previousNumber - numberOnScreen)
                    case 13: calclabel.text = String(previousNumber / numberOnScreen)
                    default: calclabel.text = String(previousNumber * numberOnScreen)
            }
            case 16:
                calclabel.text = ""
                previousNumber = 0
                numberOnScreen = 0
                operation = 0
            
            default:
                previousNumber = Double(calclabel.text!)!
                switch sender.tag{
                    case 11://addition
                        calclabel.text = "+"
                    case 12://subtraction
                        calclabel.text = "-"
                    case 13://division
                        calclabel.text = "/"
                    default://multiplication
                        calclabel.text = "*"
                }
                operation = sender.tag
                performMathOp = true
        
        
    }
        }
    }
    
      @IBAction func operandbtn(_ sender: UIButton) {
        switch performMathOp{
        case true:
            calclabel.text = String(sender.tag-1)
            numberOnScreen = Double(calclabel.text!)!
            performMathOp = false
        default:
            calclabel.text = calclabel.text! + String(sender.tag-1)
            numberOnScreen = Double(calclabel.text!)!
        }
        
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

}

