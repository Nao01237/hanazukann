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
        // 今日の日付を変数に持つ
        let today = Date()
        
        // 日付から月を知る
        let nowDateComponents: DateComponents = Calendar.current.dateComponents([.year, .month, .day], from: today)
        let nowMonth = nowDateComponents.month!


        // 月に応じて表示するポップアップを変える
        var title: String = ""
        var image: UIImage!
        
        switch nowMonth {
        case 1:
            title = "シンビジウム"
            image = UIImage(named: "shimbijiumu.jpg")
        
        print(nowMonth)
        case 2:
            title = "フリージア"
            image = UIImage(named: "furijia.jpg")
            
         print(nowMonth)
            case 3:
                 title = "チューリップ"
                 image = UIImage(named: "churippu.jpg")
                 
             
                print(nowMonth)
            case 4:
                title = "桜（サクラ）"
                image = UIImage(named: "sakura.jpg")
                
              
                print(nowMonth)
            case 5:
                title = "すずらん（鈴蘭)"
                image = UIImage(named: "suzuran.jpg")
                
                
                print(nowMonth)
            case 6:
                title = "バラ"
                image = UIImage(named: "bara tuki.jpg")
                
                
                print(nowMonth)
            case 7:
                title = "百合"
                image = UIImage(named: "yuri.jpg")
                
                
                print(nowMonth)
            case 8:
                title = "ひまわり（向日葵）"
                image = UIImage(named: "himawari tuki.jpg")
                
                
                print(nowMonth)
            case 9:
                title = "ダリア"
                image = UIImage(named: "daria.jpg")
                
                
                print(nowMonth)
            case 10:
                title = "ガーベラ"
                image = UIImage(named: "gabera.jpgg")
                
                
                print(nowMonth)
            case 11:
                title = "シクラメン"
                image = UIImage(named: "shikuramen.jpg")
                
                
                print(nowMonth)
            case 12:
               title = "ポインセチア"
               image = UIImage(named: "poinsechia.jpg")
               
                print(nowMonth)
        
        default:
            break
        }
        
        let popup = PopupDialog(title: title, message: nil, image: image)
        self.present(popup, animated: true, completion: nil)
        
    
}
}
