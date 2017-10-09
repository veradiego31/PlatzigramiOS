//
//  RegisterViewControler.swift
//  HelloWord
//
//  Created by Diego on 10/7/17.
//  Copyright © 2017 Sirio. All rights reserved.
//

import Foundation
import UIKit

class RegisterViewControler: UITableViewController {
    
    
    @IBOutlet weak var passTextField: UITextField!
    @IBOutlet weak var emailTextField: UITextField!
    @IBOutlet weak var nameTextField: UITextField!
    @IBOutlet weak var userTextField: UITextField!
    
    @IBOutlet weak var signupButton: UIButton!
    var user : String?
    var name : String?
    var email : String?
    var password : String?
    
    @IBAction func textChangeEvent(_ sender: UITextField) {
        if sender.isEqual(userTextField){
            user = userTextField.text
        }else if sender.isEqual(nameTextField){
            name = nameTextField.text
        }else if sender.isEqual(emailTextField){
            email = emailTextField.text
        }else {
            password = passTextField.text
        }
        
        if let userOpt = user, let nameOpt = name, let emailOpt = email, let passwordOpt = password, !userOpt.isEmpty && !nameOpt.isEmpty && !emailOpt.isEmpty && !passwordOpt.isEmpty {
            signupButton.isEnabled = true
        }else {
            signupButton.isEnabled = false
        }
    }
    
    @IBAction func signupButtonpressed(_ sender: UIButton) {
        UserDefaults.standard.setValue("1234343", forKey: "userToken")
        UserDefaults.standard.synchronize()
        self.presentingViewController?.presentingViewController?.dismiss(animated: true, completion: nil)
        
    }
}
