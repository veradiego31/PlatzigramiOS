//
//  PlatzigramFeedViewcontroller.swift
//  HelloWord
//
//  Created by Diego on 10/9/17.
//  Copyright © 2017 Sirio. All rights reserved.
//

import Foundation
import UIKit

class PlatzigramFeedViewController : UIViewController, UITableViewDelegate, UITableViewDataSource{
    
    @IBOutlet weak var tableView: UITableView!
    
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 5
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let newCell = tableView.dequeueReusableCell(withIdentifier: "newPost") as! PlatzigramPostCell
        newCell.setPostUserName(postUserName: "Usuario \(indexPath.row)")
        newCell.setPostTitle(postTitle: "Titulo \(indexPath.row)")
        
        return newCell
        
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        print("la celda seleccionada es \(indexPath.row)")
    }
    
    
}
