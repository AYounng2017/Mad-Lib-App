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
   
    
    @IBOutlet weak var saveButtonColors: UIButton!
    
    @IBAction func cancelButton(sender: AnyObject) {
        
    answerTextBox.text = ""    
        
    }
    
    
    
    var madLibInstance = MadLibDictionary()
    var x = 1
    
    @IBAction func saveButton(sender: AnyObject) {
        let randomColor = Colors().getRandomColor()
        view.backgroundColor = randomColor
        saveButtonColors.tintColor = randomColor
       
        
    
        
        
    madLibInstance.answers.append(answerTextBox.text!)
        self.reloadInputViews()
        
        
        
        answerTextBox.text = ""
        
        if x == madLibInstance.madlib1.count{
            questionsLabel.text = "Once upon a time, in a place called \(madLibInstance.answers[0]), there was \(madLibInstance.answers[1]) princess named \(madLibInstance.answers[2]). Her kingdom was huge, but her \(madLibInstance.answers[3]) was bigger. She was beautiful from her \(madLibInstance.answers[4]) to her \(madLibInstance.answers[5]). One day she saw a \(madLibInstance.answers[6]) prince named \(madLibInstance.answers[7]). He had a \(madLibInstance.answers[8]) face. As soon as his \(madLibInstance.answers[9]) touched her \(madLibInstance.answers[10]) they fell in love. They got married at \(madLibInstance.answers[11]) the following day. \n\n\n\nNot long after, they had a baby. They decided to call him \(madLibInstance.answers[12]). He looked like a \(madLibInstance.answers[13]). He used to \(madLibInstance.answers[14]) \(madLibInstance.answers[15]) times a day so that his \(madLibInstance.answers[16]) would be \(madLibInstance.answers[17]) and \(madLibInstance.answers[18]). And they \(madLibInstance.answers[19]) happily ever after!"
            
            
            
            
            
            
            
        
            
            
        } else {
            questionsLabel.text = madLibInstance.madlib1[x]
            
            
            x = x + 1
            
            
        }

       
    }
    
    
    
    
    
    
    
    // Text Field Delegate below. DO NOT EDIT. Closes keyboard after typing - Alex
    
    func textFieldShouldReturn(_textField: UITextField) -> Bool {
        madLibInstance.answers.append(answerTextBox.text!)
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































