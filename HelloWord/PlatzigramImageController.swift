//
//  PlatzigramImageController.swift
//  HelloWord
//
//  Created by Diego on 10/9/17.
//  Copyright © 2017 Sirio. All rights reserved.
//

import Foundation
import UIKit

class PlatzigramImageController: UIViewController, UIImagePickerControllerDelegate, UINavigationControllerDelegate{
    
    @IBOutlet weak var imagePreview: UIImageView!
    
    @IBAction func abrirFotosPresionado(_ sender: UIButton) {
        
        let libraryPicker = UIImagePickerController()
        libraryPicker.sourceType = .photoLibrary
        libraryPicker.allowsEditing = true
        libraryPicker.delegate = self
        self.present(libraryPicker, animated: true, completion: nil)
    }
    
    @IBAction func abrirCamaraPresionado(_ sender: UIButton) {
        let camaraPicker = UIImagePickerController()
        camaraPicker.sourceType = .camera
        camaraPicker.allowsEditing = true
        camaraPicker.delegate = self
        self.present(camaraPicker, animated: true, completion: nil)
        
        
        
    }
    
    
    
    func imagePickerController(_ picker: UIImagePickerController, didFinishPickingMediaWithInfo info: [String : Any]) {
        imagePreview.image = info[UIImagePickerControllerEditedImage] as? UIImage
        picker.dismiss(animated: true, completion: nil)
    }
}
