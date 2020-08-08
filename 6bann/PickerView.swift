//
//  PickerView.swift
//  6bann
//
//  Created by 橋目　那桜 on 2020/08/08.
//  Copyright © 2020 橋目　那桜. All rights reserved.
//

import UIKit

class PickerView: UIViewController, UIPickerViewDelegate, UIPickerViewDataSource {
    @IBOutlet var label: UILabel!
    
        
        @IBOutlet var pickerView: UIPickerView!
        
        // たくさん卒業してしまった...
    let dataList = ["１月上旬","2月上旬","3月上旬","4月上旬","5月上旬","6月上旬","7月上旬","8月上旬","9月上旬","10月上旬","11月上旬","12月上旬","１月中旬","2月中旬","3月中旬","4月中旬","5月中旬","6月中旬","7月中旬","8月中旬","9月中旬","10月中旬","11月中旬","12月中旬","１月下旬","2月下旬","3月下旬","4月下旬","5月下旬","6月下旬","7月下旬","8月下旬","9月下旬","10月下旬","11月下旬","12月下旬"
        ]
        
        
        override func viewDidLoad() {
            super.viewDidLoad()
            
            // Delegate設定
            pickerView.delegate = self
            pickerView.dataSource = self
            
            label.text = "花を月で絞る"
            
        }
        
        // UIPickerViewの列の数
        func numberOfComponents(in pickerView: UIPickerView) -> Int {
            return 1
        }
        
        // UIPickerViewの行数、リストの数
        func pickerView(_ pickerView: UIPickerView,
                        numberOfRowsInComponent component: Int) -> Int {
            return dataList.count
        }
        
        // UIPickerViewの最初の表示
        func pickerView(_ pickerView: UIPickerView,
                        titleForRow row: Int,
                        forComponent component: Int) -> String? {
            
            return dataList[row]
        }
        
        // UIPickerViewのRowが選択された時の挙動
        func pickerView(_ pickerView: UIPickerView,
                        didSelectRow row: Int,
                        inComponent component: Int) {
            
            label.text = dataList[row]
            
        }
        
    }

    





