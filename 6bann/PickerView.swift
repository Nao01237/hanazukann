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
    var onej = ["","","","","",]
    var onec = ["","","","","",]
    var oneg = ["","","","","",]
    var twoj = ["","","","","",]
    var twoc = ["","","","","",]
    var twog = ["","","","","",]
    var threej = ["ムスカリ（青）","ムスカリ（紫）","ムスカリ（白）","","",]
    var threec = ["ムスカリ（青）","ムスカリ（紫）","ムスカリ（白）","","",]
    var threeg = ["ソメイヨシノ","シダレザクラ","ムスカリ（青）","ムスカリ（紫）","ムスカリ（白）","",]
    var fourj = ["ソメイヨシノ","シダレザクラ","ムスカリ（青）","ムスカリ（紫）","ムスカリ（白）","",]
    var fourc = ["ソメイヨシノ","ヤエザクラ","シダレザクラ","ムスカリ（青）","ムスカリ（紫）","ムスカリ（白）","",]
    var fourg = ["ソメイヨシノ","ヤエザクラ","シダレザクラ","アマリリス（赤）","アマリリス（ピンク）","アマリリス（白）","ムスカリ（青）","ムスカリ（紫）","ムスカリ（白）","","",]
    var fivej = ["ソメイヨシノ","ヤエザクラ","アマリリス（赤）","アマリリス（ピンク）","アマリリス（白）","アマリリス（黄色）","ムスカリ（青）","ムスカリ（紫）","ムスカリ（白）","",""]
    var fivec = ["赤バラ","白バラ","ピンクローズ","青バラ","黄バラ","オレンジローズ","黒バラ","アマリリス（赤）","アマリリス（ピンク）","アマリリス（白）","アマリリス（黄色）","","","",""]
    var fiveg = ["赤バラ","白バラ","ピンクローズ","青バラ","黄バラ","オレンジローズ","黒バラ","アマリリス（赤）","アマリリス（ピンク）","アマリリス（白）","アマリリス（黄色）","","","",""]
    var sixj = ["赤バラ","白バラ","ピンクローズ","青バラ","黄バラ","オレンジローズ","黒バラ","アマリリス（赤）","アマリリス（ピンク）","アマリリス（白）","アマリリス（黄色）","","","",""]
    var sixc = ["赤バラ","白バラ","ピンクローズ","青バラ","黄バラ","オレンジローズ","黒バラ","アマリリス（赤）","アマリリス（ピンク）","アマリリス（白）","アマリリス（黄色）","","","",""]
    var sixg = ["アマリリス（赤）","アマリリス（ピンク）","アマリリス（白）","アマリリス（黄色）","",]
    var sevenj = ["","","","","",]
    var sevenc = ["","","","","",]
    var seveng = ["","","","","",]
    var eightj = ["","","","","",]
    var eightc = ["","","","","",]
    var eightg = ["","","","","",]
    var ninej = ["","","","","",]
    var ninec = ["","","","","",]
    var nineg = ["","","","","",]
    var tenj = ["アマリリス（赤）","アマリリス（ピンク）","アマリリス（白）","アマリリス（黄色）","",]
    var tenc = ["赤バラ","白バラ","ピンクローズ","青バラ","黄バラ","オレンジローズ","黒バラ","アマリリス（赤）","アマリリス（ピンク）","アマリリス（白）","アマリリス（黄色）","","","",""]
    var teng = ["赤バラ","白バラ","ピンクローズ","青バラ","黄バラ","オレンジローズ","黒バラ","アマリリス（赤）","アマリリス（ピンク）","アマリリス（白）","アマリリス（黄色）","","","",""]
    var eievenj = ["赤バラ","白バラ","ピンクローズ","青バラ","黄バラ","オレンジローズ","黒バラ","","","",]
    var eievenc = ["赤バラ","白バラ","ピンクローズ","青バラ","黄バラ","オレンジローズ","黒バラ","","","",]
    var eieveng = ["赤バラ","白バラ","ピンクローズ","青バラ","黄バラ","オレンジローズ","黒バラ","","","",]
    var twelvej = ["","","","","",]
    var twelvec = ["","","","","",]
    var twelveg = ["","","","","",]
    
    
    
    
        
    @IBOutlet var pickerView: UIPickerView!
        
        // たくさん卒業してしまった...
    let dataList = ["１月上旬","１月中旬","１月下旬","2月上旬","2月中旬","2月下旬","3月上旬","3月中旬","3月下旬","4月上旬","4月中旬","4月下旬","5月上旬","5月中旬","5月下旬","6月上旬","6月中旬","6月下旬","7月上旬","7月中旬","7月下旬","8月上旬","8月中旬","8月下旬","9月上旬","9月中旬","9月下旬","10月上旬","10月中旬","10月下旬",
        "11月上旬","11月中旬","11月下旬","12月上旬","12月中旬","12月下旬"]
        
        
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

    





