//
//  ViewController.swift
//  CalculatorApp
//
//  Created by Geart on 25/09/2017.
//  Copyright © 2017 Geart. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var numberInLabel: Double = 0
    var previousNumber: Double = 0
    var preformMath = false
    var operation = 0
    var mathPreformed: Double = 0
    
    @IBOutlet weak var label: UILabel!
    
    @IBOutlet weak var label2: UILabel!
    
    @IBOutlet weak var label3: UILabel!
    @IBAction func numbers(_ sender: UIButton)
    {
        if preformMath == true
        {
            label.text = String(sender.tag-1)
            numberInLabel = Double(label.text!)!
            preformMath = false
        }
        else{
            label.text = label.text! + String(sender.tag-1)
            numberInLabel = Double(label.text!)!
        }

    }
    @IBAction func buttons(_ sender: UIButton)
    {
        
        if label.text != "" && sender.tag != 11 && sender.tag != 16
        {
            previousNumber = Double(label.text!)!
            label2.text = String(previousNumber)
            switch sender.tag
            {
            case 12:
                label3.text = "/"
                previousNumber = Double(label.text!)!
            case 13:
                label3.text = "X"
                previousNumber = Double(label.text!)!
            case 14:
                label3.text = "-"
                previousNumber = Double(label.text!)!
            case 15:
                label3.text = "+"
                previousNumber = Double(label.text!)!
            default:
                break;
                
            }
            operation = sender.tag
            preformMath = true;
        }
        else if sender.tag == 16
        {
            switch operation
            {
            case 12:
                label2.text = String(previousNumber / numberInLabel)
                label.text = ""
            case 13:
                label2.text = String(previousNumber * numberInLabel)
                label.text = ""
            case 14:
                label2.text = String(previousNumber - numberInLabel)
                label.text = ""
            case 15:
                label2.text = String(previousNumber + numberInLabel)
                label.text = ""
            default:
                break;
        }
        }
        else if sender.tag == 11
        {
            label.text = ""
            label2.text = ""
            label3.text = ""
            previousNumber = 0
            numberInLabel = 0
            operation = 0
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

