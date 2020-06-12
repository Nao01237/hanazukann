//
//  ViewController0.swift
//  6bann
//
//  Created by 橋目　那桜 on 2020/06/12.
//  Copyright © 2020 橋目　那桜. All rights reserved.
//

import UIKit
import PopupDialog

class ViewController0: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    @IBAction func tu() {
          let title = "THIS IS THE DIALOG TITLE"
          let image = UIImage(named: "yagurumagiku.jpeg")

          
          let popup = PopupDialog(title: title, message: nil, image: image)

        
          self.present(popup, animated: true, completion: nil)
          
      }
    
}
