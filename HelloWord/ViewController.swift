//
//  ViewController.swift
//  HelloWord
//
//  Created by Diego on 10/7/17.
//  Copyright © 2017 Sirio. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var etiquetaHolaMundo: UILabel!
  
    
    @IBOutlet weak var redButton: UIButton!
    @IBOutlet weak var blueButton: UIButton!
    @IBOutlet weak var greenButton: UIButton!
    
    @IBOutlet weak var bigButton: UIButton!
    @IBOutlet weak var mediumSize: UIButton!
    @IBOutlet weak var pequeButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func preesButton(_ sender: UIButton) {
        if sender.isEqual(redButton){
            self.etiquetaHolaMundo.textColor = UIColor.red
        } else if sender.isEqual(greenButton){
            self.etiquetaHolaMundo.textColor = UIColor.green
        } else {
            self.etiquetaHolaMundo.textColor = UIColor.blue
        }
        
    }
    
    @IBAction func pressButtonSize(_ sender: UIButton) {
        if sender.isEqual(bigButton){
            self.etiquetaHolaMundo.font = UIFont.systemFont(ofSize: 20)
        } else if sender.isEqual(mediumSize){
            self.etiquetaHolaMundo.font = UIFont.systemFont(ofSize: 15)
        } else {
            self.etiquetaHolaMundo.font = UIFont.systemFont(ofSize: 10)
        }
    }
}

