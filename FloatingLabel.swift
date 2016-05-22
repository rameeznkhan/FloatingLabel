//
//  FloatingLabel.swift
//  FloatingLabel
//
//  Created by Rameez khan  on 21/05/16.
//  Copyright © 2016 Rameez khan . All rights reserved.
//

import UIKit


class FloatingLabel: UIView {
    @IBOutlet weak var placeHolderLabel: UILabel!
    @IBOutlet weak var floatingTextField: UITextField!
    override init(frame: CGRect) {
       super.init(frame: frame)
        initialiseSubviews()
    }
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        initialiseSubviews()
    }
  
    func initialiseSubviews() {
        self.placeHolderLabel = UILabel()
        self.floatingTextField = UITextField()
    }
    
    func setPlaceHolderForLabel(text: String) {
        placeHolderLabel.text = text
    }
}


