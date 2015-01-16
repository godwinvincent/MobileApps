//
//  ViewController.swift
//  SimpleCalculator
//
//  Created by Godwin on 1/14/15.
//  Copyright (c) 2015 GodwinVincent. All rights reserved.
//

import UIKit


extension String {
    var floatValue: Float {
        return (self as NSString).floatValue
    }
}


class ViewController: UIViewController {
    var oper:String!
    var num1:Float!
    var num2:Float!
    var answer:Float!

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    @IBOutlet var display: UILabel!
    @IBAction func ButtonClicked(sender: UIButton) {
        display.text = display.text! + sender.titleLabel!.text!
    }
    @IBAction func SubmitClicked(sender: UIButton) {
        num2 = display.text!.floatValue;
        
        display.text = "\(num1) \(oper) \(num2) = \(calc())"
    }
    
    @IBAction func OperatorClicked(sender: UIButton) {
        oper = sender.titleLabel!.text!
        num1 = display.text!.floatValue
        display.text = "";
    }
    
    @IBAction func clear(sender: UIButton) {
        oper = nil
        num1 = nil
        num2 = nil
        answer = nil
        display.text = ""
    }
    func calc() -> Float
    {
        switch oper{
        case "+":
            return num1 + num2
        case "-":
            return num1 - num2
        case "*":
            return num1*num2
        case "/":
            return num1/num2
        default:
            return 99999999999;
        }
        
    }
}

