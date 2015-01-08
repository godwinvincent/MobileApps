//
//  ViewController.swift
//  HelloSwift
//
//  Created by Godwin on 1/8/15.
//  Copyright (c) 2015 GodwinVincent. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        setupUI()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


    @IBOutlet var helloLabel: UILabel!
    @IBOutlet var nameTextField: UITextField!
    @IBOutlet var sayHelloButton: UIButton!
    @IBAction func sayHelloAction(sender: AnyObject) {
        let name = nameTextField.text
        
        if name.isEmpty {
            
            let alert = UIAlertController(title: "Error", message: "Please enter a name",
                preferredStyle: UIAlertControllerStyle.Alert)
            
            alert.addAction(UIAlertAction(title: "OK", style: UIAlertActionStyle.Default,
                handler: nil))
            
            self.presentViewController(alert, animated: true, completion: nil)
        } else {
            
            helloLabel.text = "Hello \(name)!"
        }
    }
    
    func setupUI(){
        helloLabel.text = "Hello Swift!"
        helloLabel.textColor = UIColor.redColor()
        helloLabel.textAlignment = NSTextAlignment.Center
        nameTextField.placeholder = "Enter your name"
        sayHelloButton.setTitle("Say Hello", forState: .Normal)
        
    }
}

