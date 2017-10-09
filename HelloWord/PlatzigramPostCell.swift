//
//  PlatzigramPostCell.swift
//  HelloWord
//
//  Created by Diego on 10/9/17.
//  Copyright © 2017 Sirio. All rights reserved.
//

import Foundation
import UIKit

class PlatzigramPostCell: UITableViewCell {
    

    @IBOutlet weak var imageUserPost: UIImageView!
    @IBOutlet weak var titlePost: UILabel!
    @IBOutlet weak var usernamePost: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        usernamePost.text = ""
        titlePost.text = ""
        
    }
    
    public func setPostTitle(postTitle : String){
        self.titlePost.text = postTitle
    }
    public func setPostUserName(postUserName : String){
        self.usernamePost.text = postUserName
    }
}
