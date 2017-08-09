//
//  LoginPage.swift
//  Controly
//
//  Created by Refael lachmish on 06/08/2017.
//  Copyright © 2017 SimpleAccess. All rights reserved.
//

import UIKit

class LoginPage: UIViewController {

    

    var login: Login!
    
    @IBOutlet weak var viewLoginView: LoginView!
    
    var email: String!
    var pass: String!
    
    @IBOutlet weak var NextButton: UIButton!
    @IBOutlet weak var LogoUpConstraint: NSLayoutConstraint!
    
    @IBOutlet weak var ViewBottomConstraint: NSLayoutConstraint!
    @IBOutlet weak var UpperLogo: UIImageView!
    
    @IBOutlet weak var LblTopConstraint: NSLayoutConstraint!
    
    @IBOutlet weak var InputField: UITextField!
    var loginView = LoginView()
    
  
    var launchBool: Bool = false {
        didSet {
            if launchBool == true {
                
                
                
                
                email = loginView.EnterEmail(InputField)
                loginView.emailVar = email
                
                
                InputField.text = ""
                InputField.placeholder = "Please enter Password"
                InputField.keyboardType = .default
                InputField.isSecureTextEntry = true
                
            
                
            } else {
                pass = loginView.EnterPass(InputField)
                loginView.passVar = pass
                InputField.endEditing(true)

                
                
            }
        
        
        }
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
      
        
        let mycolor = UIColor(red:0.32, green:0.69, blue:0.90, alpha:1.0)
        
        
        InputField.layer.cornerRadius = 20
        InputField.layer.masksToBounds = true
        InputField.layer.borderColor = mycolor.cgColor
        InputField.layer.borderWidth = 2.0
            
        
        
    }


    @IBAction func EditBegin(_ sender: Any) {
       
        
        UIView.animate(withDuration: 1.5, animations: {
            self.LogoUpConstraint.constant = 0
            self.ViewBottomConstraint.constant = 230
            self.LblTopConstraint.constant = -10
            
        })
    }
    
    
    @IBAction func EditEnded(_ sender: Any) {
        
        
          print("email: \(self.loginView.emailVar) Pass: \(self.loginView.passVar)")
        
        
    }
    


    
    @IBAction func ClickNexttoPass(_ sender: Any) {
        
        if InputField.text == ""
        {
            let empty = UIAlertController(title: "Alert", message: "Please fill all details!", preferredStyle: UIAlertControllerStyle.alert)
            empty.addAction(UIAlertAction(title: "OK", style: UIAlertActionStyle.default, handler: nil))
            self.present(empty, animated: true, completion: nil)
            
        } else {
        
            launchBool = !launchBool
            
        }
        
        
        
        
        
       
        
        UIView.animate(withDuration: 1.5, animations: {
            self.LogoUpConstraint.constant = 0
            self.ViewBottomConstraint.constant = 230
            self.LblTopConstraint.constant = -10
            
          
            
        })
        
       
    }


    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        
        UIView.animate(withDuration: 2.5, animations: {
            self.LogoUpConstraint.constant = 25
            self.ViewBottomConstraint.constant = 20
            self.LblTopConstraint.constant = 20
        })
        
        self.view.endEditing(true)
    }

    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        InputField.resignFirstResponder()
        
         UIView.animate(withDuration: 2.5, animations: {
        self.LogoUpConstraint.constant = 25
        self.ViewBottomConstraint.constant = 20
        self.LblTopConstraint.constant = 20
        })
        
        
        return true
    }
    
}
    
    




