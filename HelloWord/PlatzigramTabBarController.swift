//
//  PlatzigramTabBarController.swift
//  HelloWord
//
//  Created by Diego on 10/8/17.
//  Copyright © 2017 Sirio. All rights reserved.
//

import Foundation
import UIKit

class PlatzigramTabBarController: UITabBarController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        print(self.viewControllers!.count)
    }
  
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        
      /*  let newController =  UIViewController()
        newController.view.backgroundColor = UIColor.green
        newController.title = "Verde"
        self.viewControllers!.append(newController) */
        
        self.viewControllers![2].title = "Hola Mundo"
        
        if UserDefaults.standard.value(forKey: "userToken") == nil {
            self.performSegue(withIdentifier: "signup", sender: nil)
        }
    }
}
