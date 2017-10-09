//
//  PlatzigramCollectionCell.swift
//  HelloWord
//
//  Created by Diego on 10/9/17.
//  Copyright © 2017 Sirio. All rights reserved.
//

import Foundation
import UIKit

class PlatzigramCollectionCell: UICollectionViewCell {
    
    
    
    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var imageCell: UIImageView!
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        titleLabel.text = ""
    }
    
    func setTitle(title : String){
        titleLabel.text = title
    }
    
}
