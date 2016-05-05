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
    var x = 1
    
    @IBAction func saveButton(sender: AnyObject) {
        answers.append(answerTextBox.text!)
        self.reloadInputViews()
        
        
        
        answerTextBox.text = ""
        
        if x == madLibInstance.madlib1.count{
            questionsLabel.text = "Once upon a time, in a place called \(madLibInstance.madlib1[0]), there was \(madLibInstance.madlib1[1]) princess named \(madLibInstance.madlib1[2]). Her kingdom was huge, but her \(madLibInstance.madlib1[3]) was bigger. She was beautiful from her \(madLibInstance.madlib1[4]) to her \(madLibInstance.madlib1[5]). One day she saw a \(madLibInstance.madlib1[6]) prince named \(madLibInstance.madlib1[7]). He had a \(madLibInstance.madlib1[8]) face. As soon as his \(madLibInstance.madlib1[9]) touched her \(madLibInstance.madlib1[10]) they fell in love. They got married at \(madLibInstance.madlib1[11]) the following day." + "Not long after, they had a baby. They decided to call him \(madLibInstance.madlib1[12]). He looked like a \(madLibInstance.madlib1[13]). He used to \(madLibInstance.madlib1[14]) \(madLibInstance.madlib1[15]) times a day so that his \(madLibInstance.madlib1[16]) would be \(madLibInstance.madlib1[17]) and \(madLibInstance.madlib1[18]). And they \(madLibInstance.madlib1[19]) happily ever after!"
            
            
            
            
            
            
            
        
            
            
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































