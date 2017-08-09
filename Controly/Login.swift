//
//  LoginView.swift
//  Controly
//
//  Created by Refael lachmish on 08/08/2017.
//  Copyright © 2017 SimpleAccess. All rights reserved.
//

import Foundation

class Login {
    
    fileprivate var _email: String!
    fileprivate var _password: String!
    
    var email: String {
        
        return _email
        
    }
    
    var password: String {
        
        return _password
    }
    
    init(email: String, password: String) {
        
        self._email = email
        self._password = password
        
    }
    
    
    
}
