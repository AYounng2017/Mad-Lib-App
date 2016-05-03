//
//  ViewController.swift
//  MadLibGameThing
//
//  Created by Coder on 4/19/16.
//  Copyright © 2016 Alex. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITextFieldDelegate {

    @IBOutlet weak var questionsLabel: UILabel!
    
    
    @IBOutlet weak var answerTextBox: UITextField!
   
    
    
    @IBAction func cancelButton(sender: AnyObject) {
        
    answerTextBox.text = ""    
        
    }
    
    
    var madLibInstance = MadLibDictionary()
    var x = 0
    
    @IBAction func saveButton(sender: AnyObject) {
        answers.append(answerTextBox.text!)
        self.reloadInputViews()
        
        
    
        answerTextBox.text = ""
       
        if x == madLibInstance.madlib1.count{
            questionsLabel.text = "Mad Lib"
            
            
        } else {
            questionsLabel.text = madLibInstance.madlib1[x]
            
            
            x = x + 1
            
            
        }

       
    }
    
    
    
    
    
    
    
    // Text Field Delegate below. DO NOT EDIT. Closes keyboard after typing - Alex
    
    func textFieldShouldReturn(_textField: UITextField) -> Bool {
        answers.append(answerTextBox.text!)
        self.reloadInputViews()
        answerTextBox.text = ""
        answerTextBox.resignFirstResponder()
        
        return true
    }
    
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        // Do any additional setup after loading the view, typically from a nib.
    
    answerTextBox.delegate = self
    
    
    
    
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

  
    

}































