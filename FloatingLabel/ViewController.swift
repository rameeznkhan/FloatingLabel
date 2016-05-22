//
//  ViewController.swift
//  FloatingLabel
//
//  Created by Rameez khan  on 21/05/16.
//  Copyright © 2016 Rameez khan . All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITextFieldDelegate {
    var floatingLabel: FloatingLabel = FloatingLabel()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        floatingLabel = NSBundle.mainBundle().loadNibNamed("FloatingLabel", owner: self, options: nil).last as! FloatingLabel
        floatingLabel.frame = CGRectMake(0, 30, self.view.bounds.size.width, 54)
        self.view.addSubview(floatingLabel)
        floatingLabel.floatingTextField.placeholder = "Description"
        floatingLabel.floatingTextField.delegate = self
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    //MARK: UITextFieldDelegate    
    func textField(textField: UITextField, shouldChangeCharactersInRange range: NSRange, replacementString string: String) -> Bool {
        if range.location <= 0 && range.length == 1 {
            floatingLabel.placeHolderLabel.text = ""
        } else {
            floatingLabel.placeHolderLabel.text = textField.placeholder
        }
        return true
        
    }
 
}
