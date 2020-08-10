//
//  CollectionViewCell.swift
//  6bann
//
//  Created by 橋目　那桜 on 2020/08/09.
//  Copyright © 2020 橋目　那桜. All rights reserved.
//

import UIKit

class CollectionViewCell: UICollectionViewCell {
    @IBOutlet weak var imageView: UIImageView!
    @IBOutlet weak var name: UILabel!
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)

        
            self.layer.borderWidth = 1.0
        
        self.layer.borderColor = UIColor.black.cgColor
        
            self.layer.cornerRadius = 30.0

        
    }
}


