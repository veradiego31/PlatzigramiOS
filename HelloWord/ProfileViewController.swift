//
//  ProfileViewController.swift
//  HelloWord
//
//  Created by Diego on 10/9/17.
//  Copyright © 2017 Sirio. All rights reserved.
//

import Foundation
import UIKit

class ProfileViewController: UIViewController {
    
    @IBOutlet weak var scrollView: UIScrollView!
    
    override func viewDidLoad() {
        for i in 0...5{
            let newView = UIView()
            newView.frame = CGRect(x: CGFloat(i) * self.view.frame.size.width, y: 0, width: scrollView.frame.size.width, height: scrollView.frame.size.height)
            newView.backgroundColor = UIColor(red: CGFloat(arc4random_uniform(255))/255.0, green: CGFloat(arc4random_uniform(255))/255.0, blue: CGFloat(arc4random_uniform(255))/255.0, alpha: 1.0)
            scrollView.addSubview(newView)
        }
        
        scrollView.contentSize = CGSize(width: self.view.frame.width * 6, height: self.scrollView.frame.size.height)
        scrollView.showsHorizontalScrollIndicator = false
    }
    
    @IBAction func presentarNuevaVista(_ sender: UIButton) {
        
        self.performSegue(withIdentifier: "nuevaVista", sender: nil)
    }
    
    @IBAction func movimientoPresionado(_ sender: UIButton) {
        let currentX = scrollView.contentOffset.x
        let vistaActual = Int (currentX / scrollView.frame.size.width)
        var nuevaVista = 0
        if sender.title(for: .normal)! == "Atras"{
            nuevaVista = vistaActual - 1
        }else if sender.title(for: .normal)! == "Adelante"{
            nuevaVista = vistaActual + 1
        }
        
        if nuevaVista < 0 || nuevaVista > 5 {
            return
        }
        
        let newX = CGFloat(nuevaVista) * self.scrollView.frame.size.width
        scrollView.contentOffset = CGPoint(x:  newX,y: scrollView.contentOffset.y)
    }
    
}
