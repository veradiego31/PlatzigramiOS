//
//  WelcomeScreen.swift
//  HelloWord
//
//  Created by Diego on 10/8/17.
//  Copyright © 2017 Sirio. All rights reserved.
//

import Foundation
import UIKit

class WelcomeScreen: UIViewController {
    
    var etiquetaWelcome : UILabel?
    var signupButton : UIButton?
    var loginButton : UIButton?
    var imageWelcome : UIImageView?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        if etiquetaWelcome == nil{
            etiquetaWelcome = UILabel()
            etiquetaWelcome?.text = "Bienvenido a PlatziGram"
            etiquetaWelcome?.font = UIFont.systemFont(ofSize: 17)
            etiquetaWelcome?.textColor = UIColor.orange
            etiquetaWelcome?.sizeToFit()
            etiquetaWelcome?.frame = CGRect(x: 0, y: 20, width: etiquetaWelcome!.frame.size.width, height: etiquetaWelcome!.frame.size.height)
            etiquetaWelcome?.center = CGPoint(x: self.view.frame.size.width/2, y: self.etiquetaWelcome!.center.y)
            
            self.view.addSubview(etiquetaWelcome!)
        }
      
        if signupButton == nil{
            signupButton = UIButton(type : .custom)
            signupButton?.setTitle("Sign Up", for: .normal)
            signupButton?.setTitleColor(UIColor.red, for: .normal)
            signupButton?.sizeToFit()
            signupButton?.frame = CGRect(x: 20, y: self.view.frame.size.height - 15 - 20 , width: self.view.frame.size.width - 40, height: 20)
            
            signupButton?.addTarget(self, action: #selector(pressedButtonSignup(sender:)), for: .touchUpInside)
            self.view.addSubview(signupButton!)
        }
        
        if loginButton == nil{
            loginButton = UIButton(type : .custom)
            loginButton?.setTitle("Login", for: .normal)
            loginButton?.setTitleColor(UIColor.blue, for: .normal)
            loginButton?.sizeToFit()
            loginButton?.frame = CGRect(x: 20, y: self.view.frame.size.height - 15 - 60, width: self.view.frame.size.width - 40, height: 20)
            
            loginButton?.addTarget(self, action: #selector(pressedButtonSignup(sender:)), for: .touchUpInside)
            self.view.addSubview(loginButton!)
        }
        
        if imageWelcome == nil {
            imageWelcome =  UIImageView(image: UIImage(named: "Image"))
            imageWelcome?.frame = CGRect(x: 20, y: etiquetaWelcome!.frame.maxY + 40, width: self.view.frame.size.width - 40, height: 80)
            imageWelcome?.contentMode = .scaleAspectFit
            
            self.view.addSubview(imageWelcome!)
        }
        
    }
    @objc func pressedButtonSignup(sender : UIButton) {
        if sender.isEqual(signupButton){
            print("Ha presionado el Signup")
        }else {
            print("Ha presionado el otro boton")
        }
        
       /* let alerta = UIAlertController(title: "Sin Cuenta", message: "No tiene una cuenta", preferredStyle: .alert)
        
        let creaCuenta = UIAlertAction(title: "Crear Cuenta", style: .default, handler: {
            actionCreaCuenta in
            print("Presiona crear cuenta")
        })
        
        let cancelaCuenta = UIAlertAction(title: "Cancelar", style: .cancel, handler: {
            actionCancelar in
            print("Presiona cancelar")
        })
        
        alerta.addAction(cancelaCuenta)
        alerta.addAction(creaCuenta)
        
        self.present(alerta, animated: true, completion: nil)*/
        
        if sender.isEqual(signupButton!){
            self.performSegue(withIdentifier: "register", sender: nil)
        }
    }
}
