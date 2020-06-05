//
//  File.swift
//  6bann
//
//  Created by 橋目　那桜 on 2019/07/05.
//  Copyright © 2019 橋目　那桜. All rights reserved.
//

import UIKit

class Mentor {
    
    var name: String!
    
    var course: String!
    
    var imageName: String!
    
    var s: String!
    
    var t: String!
    
    var mame: String!
    
    init(name: String, imageName: String, course: String, s:String,  t:String, mame:String) {
        self.name = name
        self.imageName = imageName
        self.course = course
        self.t = t
        self.s = s
        self.mame = mame
        
    }
    func getImage() -> UIImage{
        return UIImage(named: imageName)!
        
        
 
}
}
