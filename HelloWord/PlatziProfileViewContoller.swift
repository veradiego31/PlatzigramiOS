//
//  PlatziProfileViewContoller.swift
//  HelloWord
//
//  Created by Diego on 10/9/17.
//  Copyright © 2017 Sirio. All rights reserved.
//

import Foundation
import UIKit

class PlatzigramProfileViewController: UIViewController, UICollectionViewDataSource {
    
    override func viewDidLoad() {
        collectionView.register(UINib.init(nibName: "PlatzigramCollectionCell", bundle: nil), forCellWithReuseIdentifier: "platzigramCell")
    }
    
    @IBOutlet weak var collectionView: UICollectionView!
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 20
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let collectionViewCell = collectionView.dequeueReusableCell(withReuseIdentifier: "platzigramCell", for: indexPath) as! PlatzigramCollectionCell
        
        collectionViewCell.setTitle(title: "Titulo Cell \(indexPath.item)")
        
        return collectionViewCell
    }
}
