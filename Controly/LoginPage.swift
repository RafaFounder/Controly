//
//  LoginPage.swift
//  Controly
//
//  Created by Refael lachmish on 06/08/2017.
//  Copyright © 2017 SimpleAccess. All rights reserved.
//

import UIKit

class LoginPage: UIViewController, UITextFieldDelegate {

    
    @IBOutlet weak var EmailText: UITextField!
    
    @IBOutlet weak var LogoUpConstraint: NSLayoutConstraint!
    
    @IBOutlet weak var TextfieldBottomConstraint: NSLayoutConstraint!
    @IBOutlet weak var UpperLogo: UIImageView!
    
    @IBOutlet weak var LblTopConstraint: NSLayoutConstraint!
    
    
  
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        EmailText.delegate = self

        let mycolor = UIColor(red:0.32, green:0.69, blue:0.90, alpha:1.0)
        
        
        EmailText.layer.cornerRadius = 20
        EmailText.layer.masksToBounds = true
        EmailText.layer.borderColor = mycolor.cgColor
        EmailText.layer.borderWidth = 2.0

            
        
        
    }

    
    @IBAction func EditBegin(_ sender: Any) {
        
        
        UIView.animate(withDuration: 1.5, animations: {
            self.LogoUpConstraint.constant = 0
            self.TextfieldBottomConstraint.constant = 230
            self.LblTopConstraint.constant = -10
        
        })
        
        
        
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        
        UIView.animate(withDuration: 2.5, animations: {
            self.LogoUpConstraint.constant = 25
            self.TextfieldBottomConstraint.constant = 40
            self.LblTopConstraint.constant = 20
        })
        
        self.view.endEditing(true)
    }
   
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        EmailText.resignFirstResponder()
        
         UIView.animate(withDuration: 2.5, animations: {
        self.LogoUpConstraint.constant = 25
        self.TextfieldBottomConstraint.constant = 40
        self.LblTopConstraint.constant = 20
        })
        
        
        return true
    }
    
    
    
    

    

}
