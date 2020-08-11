//
//  PickerView.swift
//  6bann
//
//  Created by 橋目　那桜 on 2020/08/08.
//  Copyright © 2020 橋目　那桜. All rights reserved.
//

import UIKit

class PickerView: UIViewController, UIPickerViewDelegate, UIPickerViewDataSource , UICollectionViewDataSource{
    @IBOutlet var label: UILabel!
    var month: String!
    var onej = ["シネラリア（紫）","シネラリア（青）","シネラリア（白）","シネラリア（ピンク）","シネラリア（黄）"]
    var imageNameonej = ["saineria.jpg","saineria１.jpeg","saineria２.jpg","saineria３.jpeg","saineria４.jpg",]
    var onec = ["シネラリア（紫）","シネラリア（青）","シネラリア（白）","シネラリア（ピンク）","シネラリア（黄）"]
    var imageNameonec = ["saineria.jpg","saineria１.jpeg","saineria２.jpg","saineria３.jpeg","saineria４.jpg",]
    var oneg = ["シネラリア（紫）","シネラリア（青）","シネラリア（白）","シネラリア（ピンク）","シネラリア（黄）"]
    var imageNameoneg = ["saineria.jpg","saineria１.jpeg","saineria２.jpg","saineria３.jpeg","saineria４.jpg",]
    var twoj = ["シネラリア（紫）","フクジュソウ","スノードロップ","シネラリア（青）","シネラリア（白）","シネラリア（ピンク）","シネラリア（黄）"]
    var imageNametwoj = ["saineria.jpg","fukujuso.jpeg","sunodoroppu.jpeg","saineria１.jpeg","saineria２.jpg","saineria３.jpeg","saineria４.jpg",]
    var twoc = ["シネラリア（紫）","フクジュソウ","スノードロップ","シネラリア（青）","シネラリア（白）","シネラリア（ピンク）","シネラリア（黄）"]
    var imageNametwoc = ["saineria.jpg","fukujuso.jpeg","sunodoroppu.jpeg","saineria１.jpeg","saineria２.jpg","saineria３.jpeg","saineria４.jpg",]
    var twog = ["シネラリア（紫）","スイートアリッサム","フクジュソウ","スノードロップ","シネラリア（青）","シネラリア（白）","シネラリア（ピンク）","シネラリア（黄）"]
    var imageNametwog = ["saineria.jpg","sweetaiyssum.jpg","fukujuso.jpeg","sunodoroppu.jpeg","saineria１.jpeg","saineria２.jpg","saineria３.jpeg","saineria４.jpg",]
    var threej = ["ムスカリ（青）","ムスカリ（紫）","ムスカリ（白）","シネラリア（紫）","スイートアリッサム","アルメリア","フクジュソウ","スノードロップ","シネラリア（青）","シネラリア（白）","シネラリア（ピンク）","シネラリア（黄）"]
    var imageNamethreej = ["musukari１.jpg","musukari.jpeg","musukari2.jpg","saineria.jpg","sweetaiyssum.jpg","arumeria.jpg","fukujuso.jpeg","sunodoroppu.jpeg","saineria１.jpeg","saineria２.jpg","saineria３.jpeg","saineria４.jpg",]
    var threec = ["ムスカリ（青）","ムスカリ（紫）","ムスカリ（白）","シネラリア（紫）","スイートアリッサム","アルメリア","フクジュソウ","スノードロップ","スノーフレーク","シネラリア（青）","シネラリア（白）","シネラリア（ピンク）","シネラリア（黄）"]
     var imageNamethreec = ["musukari１.jpg","musukari.jpeg","musukari2.jpg","saineria.jpg","sweetaiyssum.jpg","arumeria.jpg","fukujuso.jpeg","sunodoroppu.jpeg","sunofureku.jpg","saineria１.jpeg","saineria２.jpg","saineria３.jpeg","saineria４.jpg",]
    var threeg = ["ソメイヨシノ","シダレザクラ","ムスカリ（青）","ムスカリ（紫）","ムスカリ（白）","ネモフィラ","シネラリア（紫）","スイートアリッサム","アルメリア","フクジュソウ","スノードロップ","スノーフレーク","シネラリア（青）","シネラリア（白）","シネラリア（ピンク）","シネラリア（黄）"]
    var imageNamethreeg = ["someiyoshino.jpeg","shdarezakura.jpg","musukari１.jpg","musukari.jpeg","musukari2.jpg","nemofira.jpg","saineria.jpg","sweetaiyssum.jpg","arumeria.jpg","fukujuso.jpeg","sunodoroppu.jpeg","sunofureku.jpg","saineria１.jpeg","saineria２.jpg","saineria３.jpeg","saineria４.jpg",]
    var fourj = ["ソメイヨシノ","シダレザクラ","ムスカリ（青）","ムスカリ（紫）","ムスカリ（白）","ネモフィラ","ガザニア（黄）","ガザニア（白）","ガザニア（オレンジ）","ガザニア（ピンク）","ガザニア（赤）","シネラリア（紫）","スイートアリッサム","スミレ(菫)","ベルフラワー","アルメリア","ラベンダー","フクジュソウ","スノーフレーク","シネラリア（青）","シネラリア（白）","シネラリア（ピンク）","シネラリア（黄）"]
    var imageNamefourj = ["someiyoshino.jpeg","shdarezakura.jpg","musukari１.jpg","musukari.jpeg","musukari2.jpg","nemofira.jpg","gazania.jpg","gazania1.jpg","gazania2.jpg","gazania3.jpg","gazania4.jpeg","saineria.jpg","sweetaiyssum.jpg","sumire.jpeg","berufurawa.jpg","arumeria.jpg","rabenda.jpeg","fukujuso.jpeg","sunofureku.jpg","saineria１.jpeg","saineria２.jpg","saineria３.jpeg","saineria４.jpg",]
    var fourc = ["ソメイヨシノ","ヤエザクラ","シダレザクラ","ムスカリ（青）","ムスカリ（紫）","ムスカリ（白）","ネモフィラ","ガザニア（黄）","ガザニア（白）","ガザニア（オレンジ）","ガザニア（ピンク）","ガザニア（赤）","アブチロン（オレンジ）","アブチロン（ピンク）","アブチロン（赤）","シネラリア（紫）","スイートアリッサム","スミレ(菫)","ベルフラワー","アルメリア","ラベンダー","フクジュソウ","スノーフレーク","シネラリア（青）","シネラリア（白）","シネラリア（ピンク）","シネラリア（黄）"]
    var imageNamefourc = ["someiyoshino.jpeg","yaezakura.jpeg","shdarezakura.jpg","musukari１.jpg","musukari.jpeg","musukari2.jpg","nemofira.jpg","gazania.jpg","gazania1.jpg","gazania2.jpg","gazania3.jpg","gazania4.jpeg","abuchiron３.jpg","abuchiron2.jpg","abuchiron1.jpeg","saineria.jpg","sweetaiyssum.jpg","sumire.jpeg","berufurawa.jpg","arumeria.jpg","rabenda.jpeg","fukujuso.jpeg","sunofureku.jpg","saineria１.jpeg","saineria２.jpg","saineria３.jpeg","saineria４.jpg",]
    var fourg = ["ソメイヨシノ","ヤエザクラ","シダレザクラ","アマリリス（赤）","アマリリス（ピンク）","アマリリス（白）","ムスカリ（青）","ムスカリ（紫）","ムスカリ（白）","ネモフィラ","ガザニア（黄）","ガザニア（白）","ガザニア（オレンジ）","ガザニア（ピンク）","ガザニア（赤）","アブチロン（オレンジ）","アブチロン（ピンク）","アブチロン（赤）","シネラリア（紫）","スイートアリッサム","ブルーベル","スミレ(菫)","ベルフラワー","アルメリア","ラベンダー","フクジュソウ","シネラリア（青）","シネラリア（白）","シネラリア（ピンク）","シネラリア（黄）"]
    var imageNamefourg = ["someiyoshino.jpeg","yaezakura.jpeg","shdarezakura.jpg","amaririu.jpeg","amaririsu2.jpg","amaririsu１.jpg","amaririsu3.jpg","musukari１.jpg","musukari.jpeg","musukari2.jpg","nemofira.jpg","gazania.jpg","gazania1.jpg","gazania2.jpg","gazania3.jpg","gazania4.jpeg","abuchiron３.jpg","abuchiron2.jpg","abuchiron1.jpeg","saineria.jpg","sweetaiyssum.jpg","buruberu.jpg","sumire.jpeg","berufurawa.jpg","arumeria.jpg","rabenda.jpeg","fukujuso.jpeg","saineria１.jpeg","saineria２.jpg","saineria３.jpeg","saineria４.jpg",]
    var fivej = ["ソメイヨシノ","ヤエザクラ","アマリリス（赤）","アマリリス（ピンク）","アマリリス（白）","アマリリス（黄色）","ムスカリ（青）","ムスカリ（紫）","ムスカリ（白）","ブルースター","ネモフィラ","ガザニア（黄）","ガザニア（白）","ガザニア（オレンジ）","ガザニア（ピンク）","ガザニア（赤）","アブチロン（オレンジ）","アブチロン（ピンク）","アブチロン（赤）","アヤメ（紫）","アヤメ（白）","シネラリア（紫）","スイートアリッサム","チョコレートコスモス","ブルーベル","スミレ(菫)","ベルフラワー","エニシダ","アルメリア","ラベンダー","シネラリア（青）","シネラリア（白）","シネラリア（ピンク）","シネラリア（黄）"]
     var imageNamefivej = ["someiyoshino.jpeg","yaezakura.jpeg","amaririu.jpeg","amaririsu2.jpg","amaririsu１.jpg","amaririsu3.jpg","musukari１.jpg","musukari.jpeg","musukari2.jpg","bluestar.jpg","nemofira.jpg","gazania.jpg","gazania1.jpg","gazania2.jpg","gazania3.jpg","gazania4.jpeg","abuchiron３.jpg","abuchiron2.jpg","abuchiron1.jpeg","ayame.jpeg","ayame2.jpeg","saineria.jpg","sweetaiyssum.jpg","chocoiatecosmos.jpeg","buruberu.jpg","sumire.jpeg","berufurawa.jpg","enishida.jpeg","arumeria.jpg","rabenda.jpeg","saineria１.jpeg","saineria２.jpg","saineria３.jpeg","saineria４.jpg",]
    var fivec = ["赤バラ","白バラ","ピンクローズ","青バラ","黄バラ","オレンジローズ","黒バラ","アマリリス（赤）","アマリリス（ピンク）","アマリリス（白）","アマリリス（黄色）","ブルースター","ネモフィラ","ガザニア（黄）","ガザニア（白）","ガザニア（オレンジ）","ガザニア（ピンク）","ガザニア（赤）","アブチロン（オレンジ）","アブチロン（ピンク）","アブチロン（赤）","アヤメ（紫）","アヤメ（白）","シネラリア（紫）","スイートアリッサム","チョコレートコスモス","スミレ(菫)","ベルフラワー","グリーンローズ","パープルローズ","エニシダ","アルメリア","ラベンダー","シネラリア（青）","シネラリア（白）","シネラリア（ピンク）","シネラリア（黄）"]
    var imageNamefivec = ["akabara.jpg","shirobara.jpg","pinkbara.jpg","aobara.jpeg","kibara.jpeg","orangebara.jpg","kurobara.jpeg","amaririu.jpeg","amaririsu2.jpg","amaririsu１.jpg","amaririsu3.jpg","bluestar.jpg","nemofira.jpg","gazania.jpg","gazania1.jpg","gazania2.jpg","gazania3.jpg","gazania4.jpeg","abuchiron３.jpg","abuchiron2.jpg","abuchiron1.jpeg","ayame.jpeg","ayame2.jpeg","saineria.jpg","sweetaiyssum.jpg","chocoiatecosmos.jpeg","sumire.jpeg","berufurawa.jpg","midoribara.jpg","papururozu.jpeg","enishida.jpeg","arumeria.jpg","rabenda.jpeg","saineria１.jpeg","saineria２.jpg","saineria３.jpeg","saineria４.jpg",]
    var fiveg = ["赤バラ","白バラ","ピンクローズ","青バラ","黄バラ","オレンジローズ","黒バラ","アマリリス（赤）","アマリリス（ピンク）","アマリリス（白）","アマリリス（黄色）","ブルースター","ネモフィラ","ガザニア（黄）","ガザニア（白）","ガザニア（オレンジ）","ガザニア（ピンク）","ガザニア（赤）","アブチロン（オレンジ）","アブチロン（ピンク）","アブチロン（赤）","アヤメ（紫）","アヤメ（白）","シネラリア（紫）","スイートアリッサム","チョコレートコスモス","スミレ(菫)","百(ユリ)","ベルフラワー","グリーンローズ","パープルローズ","エニシダ","アルメリア","ラベンダー","シネラリア（青）","シネラリア（白）","シネラリア（ピンク）","シネラリア（黄）"]
    var imageNamefiveg = ["akabara.jpg","shirobara.jpg","pinkbara.jpg","aobara.jpeg","kibara.jpeg","orangebara.jpg","kurobara.jpeg","amaririu.jpeg","amaririsu2.jpg","amaririsu１.jpg","amaririsu3.jpg","bluestar.jpg","nemofira.jpg","gazania.jpg","gazania1.jpg","gazania2.jpg","gazania3.jpg","gazania4.jpeg","abuchiron３.jpg","abuchiron2.jpg","abuchiron1.jpeg","ayame.jpeg","ayame2.jpeg","saineria.jpg","sweetaiyssum.jpg","chocoiatecosmos.jpeg","sumire.jpeg"," jasumin.jpeg","berufurawa.jpg","midoribara.jpg","papururozu.jpeg","enishida.jpeg","arumeria.jpg","rabenda.jpeg","saineria１.jpeg","saineria２.jpg","saineria３.jpeg","saineria４.jpg",]
    var sixj = ["赤バラ","白バラ","ピンクローズ","青バラ","黄バラ","オレンジローズ","黒バラ","アマリリス（赤）","アマリリス（ピンク）","アマリリス（白）","アマリリス（黄色）","ブルースター","ガザニア（黄）","ガザニア（白）","ガザニア（オレンジ）","ガザニア（ピンク）","ガザニア（赤）","アブチロン（オレンジ）","アブチロン（ピンク）","アブチロン（赤）","スイートアリッサム","チョコレートコスモス","百合(ユリ)","グリーンローズ","パープルローズ","アンズ","エニシダ","ラベンダー","サンダーソニア"]
    var imageNamesixj = ["akabara.jpg","shirobara.jpg","pinkbara.jpg","aobara.jpeg","kibara.jpeg","orangebara.jpg","kurobara.jpeg","amaririu.jpeg","amaririsu2.jpg","amaririsu１.jpg","amaririsu3.jpg","bluestar.jpg","gazania.jpg","gazania1.jpg","gazania2.jpg","gazania3.jpg","gazania4.jpeg","abuchiron３.jpg","abuchiron2.jpg","abuchiron1.jpeg","sweetaiyssum.jpg","chocoiatecosmos.jpeg", "jasumin.jpeg","midoribara.jpg","papururozu.jpeg","anzu.jpg","enishida.jpeg","rabenda.jpeg","sandasonia.jpeg"]
    var sixc = ["赤バラ","白バラ","ピンクローズ","青バラ","黄バラ","オレンジローズ","黒バラ","アマリリス（赤）","アマリリス（ピンク）","アマリリス（白）","アマリリス（黄色）","ブルースター","ガザニア（黄）","ガザニア（白）","ガザニア（オレンジ）","ガザニア（ピンク）","ガザニア（赤）","アブチロン（オレンジ）","アブチロン（ピンク）","アブチロン（赤）","ヤマボウシ（緑）","ヤマボウシ（ピンク）","ヤマボウシ（白）","チョコレートコスモス","百合(ユリ)","グリーンローズ","パープルローズ","アンズ","エニシダ","ラベンダー","サンダーソニア"]
    var imageNamesixc = ["akabara.jpg","shirobara.jpg","pinkbara.jpg","aobara.jpeg","kibara.jpeg","orangebara.jpg","kurobara.jpeg","amaririu.jpeg","amaririsu2.jpg","amaririsu１.jpg","amaririsu3.jpg","bluestar.jpg","gazania.jpg","gazania1.jpg","gazania2.jpg","gazania3.jpg","gazania4.jpeg","abuchiron３.jpg","abuchiron2.jpg","abuchiron1.jpeg","yamaboshi1.jpg","yamaboshi2.jpg","yamaboushi.jpeg","chocoiatecosmos.jpeg","jasumin.jpeg","midoribara.jpg","papururozu.jpeg","anzu.jpg","enishida.jpeg","rabenda.jpeg","sandasonia.jpeg"]
    var sixg = ["アマリリス（赤）","アマリリス（ピンク）","アマリリス（白）","アマリリス（黄色）","ブルースター","ガザニア（黄）","ガザニア（白）","ガザニア（オレンジ）","ガザニア（ピンク）","ガザニア（赤）","アブチロン（オレンジ）","アブチロン（ピンク）","アブチロン（赤）","ヤマボウシ（緑）","ヤマボウシ（ピンク）","ヤマボウシ（白）","チョコレートコスモス","百合(ユリ)","アンズ","エニシダ","ラベンダー","サンダーソニア"]
     var imageNamesixg = ["amaririu.jpeg","amaririsu2.jpg","amaririsu１.jpg","amaririsu3.jpg","bluestar.jpg","gazania.jpg","gazania1.jpg","gazania2.jpg","gazania3.jpg","gazania4.jpeg","abuchiron３.jpg","abuchiron2.jpg","abuchiron1.jpeg","yamaboshi1.jpg","yamaboshi2.jpg","yamaboushi.jpeg","chocoiatecosmos.jpeg","jasumin.jpeg","anzu.jpg","enishida.jpeg","rabenda.jpeg","sandasonia.jpeg"]
    var sevenj = ["ブルースター","ガザニア（黄）","ガザニア（白）","ガザニア（オレンジ）","ガザニア（ピンク）","ガザニア（赤）","アブチロン（オレンジ）","アブチロン（ピンク）","アブチロン（赤）","ヤマボウシ（緑）","ヤマボウシ（ピンク）","ヤマボウシ（白）","チョコレートコスモス","ひまわり(向日葵)","百合(ユリ)","アンズ","ラベンダー","サンダーソニア"]
    var imageNamesevenj = ["bluestar.jpg","gazania.jpg","gazania1.jpg","gazania2.jpg","gazania3.jpg","gazania4.jpeg","abuchiron３.jpg","abuchiron2.jpg","abuchiron1.jpeg","yamaboshi1.jpg","yamaboshi2.jpg","yamaboushi.jpeg","chocoiatecosmos.jpeg","himawari.jpg","jasumin.jpeg","anzu.jpg","rabenda.jpeg","sandasonia.jpeg"]
    var sevenc = ["ブルースター","ガザニア（黄）","ガザニア（白）","ガザニア（オレンジ）","ガザニア（ピンク）","ガザニア（赤）","アブチロン（オレンジ）","アブチロン（ピンク）","アブチロン（赤）","ヤマボウシ（緑）","ヤマボウシ（ピンク）","ヤマボウシ（白）","チョコレートコスモス","ひまわり(向日葵)","百合(ユリ)","彼岸花","ラベンダー","サンダーソニア"]
    var imageNamesevenc = ["bluestar.jpg","gazania.jpg","gazania1.jpg","gazania2.jpg","gazania3.jpg","gazania4.jpeg","abuchiron３.jpg","abuchiron2.jpg","abuchiron1.jpeg","yamaboshi1.jpg","yamaboshi2.jpg","yamaboushi.jpeg","chocoiatecosmos.jpeg","himawari.jpg","jasumin.jpeg","higambana.jpg","rabenda.jpeg","sandasonia.jpeg"]
    var seveng = ["ブルースター","ガザニア（黄）","ガザニア（白）","ガザニア（オレンジ）","ガザニア（ピンク）","ガザニア（赤）","アブチロン（オレンジ）","アブチロン（ピンク）","アブチロン（赤）","チョコレートコスモス","ひまわり(向日葵)","百合(ユリ)","彼岸花","ラベンダー","サンダーソニア"]
    var imageNameseveng = ["bluestar.jpg","gazania.jpg","gazania1.jpg","gazania2.jpg","gazania3.jpg","gazania4.jpeg","abuchiron３.jpg","abuchiron2.jpg","abuchiron1.jpeg","chocoiatecosmos.jpeg","himawari.jpg","jasumin.jpeg","higambana.jpg","rabenda.jpeg","sandasonia.jpeg"]
    var eightj = ["ブルースター","ガザニア（黄）","ガザニア（白）","ガザニア（オレンジ）","ガザニア（ピンク）","ガザニア（赤）","アブチロン（オレンジ）","アブチロン（ピンク）","アブチロン（赤）","チョコレートコスモス","ひまわり(向日葵)","彼岸花"]
     var imageNameeightj = ["bluestar.jpg","gazania.jpg","gazania1.jpg","gazania2.jpg","gazania3.jpg","gazania4.jpeg","abuchiron３.jpg","abuchiron2.jpg","abuchiron1.jpeg","chocoiatecosmos.jpeg","himawari.jpg","higambana.jpg"]
    var eightc = ["ブルースター","ガザニア（黄）","ガザニア（白）","ガザニア（オレンジ）","ガザニア（ピンク）","ガザニア（赤）","アブチロン（オレンジ）","アブチロン（ピンク）","アブチロン（赤）","チョコレートコスモス","ひまわり(向日葵)","彼岸花"]
    var imageNameeightc = ["bluestar.jpg","gazania.jpg","gazania1.jpg","gazania2.jpg","gazania3.jpg","gazania4.jpeg","abuchiron３.jpg","abuchiron2.jpg","abuchiron1.jpeg","chocoiatecosmos.jpeg","himawari.jpg","higambana.jpg"]
    var eightg = ["ブルースター","ガザニア（黄）","ガザニア（白）","ガザニア（オレンジ）","ガザニア（ピンク）","ガザニア（赤）","アブチロン（オレンジ）","アブチロン（ピンク）","アブチロン（赤）","チョコレートコスモス","ひまわり(向日葵)","彼岸花"]
    var imageNameeightg = ["bluestar.jpg","gazania.jpg","gazania1.jpg","gazania2.jpg","gazania3.jpg","gazania4.jpeg","abuchiron３.jpg","abuchiron2.jpg","abuchiron1.jpeg","chocoiatecosmos.jpeg","himawari.jpg","higambana.jpg"]
    var ninej = ["ブルースター","ガザニア（黄）","ガザニア（白）","ガザニア（オレンジ）","ガザニア（ピンク）","ガザニア（赤）","アブチロン（オレンジ）","アブチロン（ピンク）","アブチロン（赤）","チョコレートコスモス","ひまわり(向日葵)","彼岸花"]
    var imageNameninej = ["bluestar.jpg","gazania.jpg","gazania1.jpg","gazania2.jpg","gazania3.jpg","gazania4.jpeg","abuchiron３.jpg","abuchiron2.jpg","abuchiron1.jpeg","chocoiatecosmos.jpeg","himawari.jpg","higambana.jpg"]
    var ninec = ["ブルースター","ガザニア（黄）","ガザニア（白）","ガザニア（オレンジ）","ガザニア（ピンク）","ガザニア（赤）","アブチロン（オレンジ）","アブチロン（ピンク）","アブチロン（赤）","チョコレートコスモス","ひまわり(向日葵)","彼岸花"]
    var imageNameninec = ["bluestar.jpg","gazania.jpg","gazania1.jpg","gazania2.jpg","gazania3.jpg","gazania4.jpeg","abuchiron３.jpg","abuchiron2.jpg","abuchiron1.jpeg","chocoiatecosmos.jpeg","himawari.jpg","higambana.jpg"]
    var nineg = ["ブルースター","ガザニア（黄）","ガザニア（白）","ガザニア（オレンジ）","ガザニア（ピンク）","ガザニア（赤）","アブチロン（オレンジ）","アブチロン（ピンク）","アブチロン（赤）","スイートアリッサム","チョコレートコスモス","ひまわり(向日葵)","彼岸花"]
    var imageNamenineg = ["bluestar.jpg","gazania.jpg","gazania1.jpg","gazania2.jpg","gazania3.jpg","gazania4.jpeg","abuchiron３.jpg","abuchiron2.jpg","abuchiron1.jpeg","sweetaiyssum.jpg","chocoiatecosmos.jpeg","himawari.jpg","higambana.jpg"]
    
    
    var tenj = ["アマリリス（赤）","アマリリス（ピンク）","アマリリス（白）","アマリリス（黄色）","ブルースター","ガザニア（黄）","ガザニア（白）","ガザニア（オレンジ）","ガザニア（ピンク）","ガザニア（赤）","アブチロン（オレンジ）","アブチロン（ピンク）","アブチロン（赤）","スイートアリッサム","チョコレートコスモス","彼岸花"]
    var imageNametenj = ["amaririu.jpeg","amaririsu2.jpg","amaririsu１.jpg","amaririsu3.jpg","bluestar.jpg","gazania.jpg","gazania1.jpg","gazania2.jpg","gazania3.jpg","gazania4.jpeg","abuchiron３.jpg","abuchiron2.jpg","abuchiron1.jpeg","sweetaiyssum.jpg","chocoiatecosmos.jpeg","himawari.jpg"]
    var tenc = ["赤バラ","白バラ","ピンクローズ","青バラ","黄バラ","オレンジローズ","黒バラ","アマリリス（赤）","アマリリス（ピンク）","アマリリス（白）","アマリリス（黄色）","アブチロン（オレンジ）","アブチロン（ピンク）","アブチロン（赤）","スイートアリッサム","チョコレートコスモス","グリーンローズ","パープルローズ","彼岸花"]
     var imageNametenc = ["akabara.jpg","shirobara.jpg","pinkbara.jpg","aobara.jpeg","kibara.jpeg","orangebara.jpg","kurobara.jpeg","amaririu.jpeg","amaririsu2.jpg","amaririsu１.jpg","amaririsu3.jpg","abuchiron３.jpg","abuchiron2.jpg","abuchiron1.jpeg","sweetaiyssum.jpg","chocoiatecosmos.jpeg","midoribara.jpg","papururozu.jpeg","higambana.jpg"]
    
    var teng = ["赤バラ","白バラ","ピンクローズ","青バラ","黄バラ","オレンジローズ","黒バラ","アマリリス（赤）","アマリリス（ピンク）","アマリリス（白）","アマリリス（黄色）","アブチロン（オレンジ）","アブチロン（ピンク）","アブチロン（赤）","スイートアリッサム","チョコレートコスモス","グリーンローズ","パープルローズ"]
    var imageNameteng = ["akabara.jpg","shirobara.jpg","pinkbara.jpg","aobara.jpeg","kibara.jpeg","orangebara.jpg","kurobara.jpeg","amaririu.jpeg","amaririsu2.jpg","amaririsu１.jpg","amaririsu3.jpg","abuchiron３.jpg","abuchiron2.jpg","abuchiron1.jpeg","sweetaiyssum.jpg","chocoiatecosmos.jpeg","midoribara.jpg","papururozu.jpeg"]
    var eievenj = ["赤バラ","白バラ","ピンクローズ","青バラ","黄バラ","オレンジローズ","黒バラ","アブチロン（オレンジ）","アブチロン（ピンク）","アブチロン（赤）","シネラリア（紫）","スイートアリッサム","チョコレートコスモス","イチョウ","グリーンローズ","パープルローズ","シネラリア（青）","シネラリア（白）","シネラリア（ピンク）","シネラリア（黄）"]
    var imageNameeievenj = ["akabara.jpg","shirobara.jpg","pinkbara.jpg","aobara.jpeg","kibara.jpeg","orangebara.jpg","kurobara.jpeg","abuchiron３.jpg","abuchiron2.jpg","abuchiron1.jpeg","saineria.jpg","sweetaiyssum.jpg","chocoiatecosmos.jpeg","icho.jpg","midoribara.jpg","papururozu.jpeg","saineria１.jpeg","saineria２.jpg","saineria３.jpeg","saineria４.jpg",]
    var eievenc = ["赤バラ","白バラ","ピンクローズ","青バラ","黄バラ","オレンジローズ","黒バラ","シネラリア（紫）","スイートアリッサム","チョコレートコスモス","イチョウ","グリーンローズ","パープルローズ","シネラリア（青）","シネラリア（白）","シネラリア（ピンク）","シネラリア（黄）"]
    var imageNameeievenc = ["akabara.jpg","shirobara.jpg","pinkbara.jpg","aobara.jpeg","kibara.jpeg","orangebara.jpg","kurobara.jpeg","saineria.jpg","sweetaiyssum.jpg","chocoiatecosmos.jpeg","icho.jpg","midoribara.jpg","papururozu.jpeg","saineria１.jpeg","saineria２.jpg","saineria３.jpeg","saineria４.jpg"]
    var eieveng = ["赤バラ","白バラ","ピンクローズ","青バラ","黄バラ","オレンジローズ","黒バラ","シネラリア（紫）","スイートアリッサム","チョコレートコスモス","イチョウ","グリーンローズ","パープルローズ","シネラリア（青）","シネラリア（白）","シネラリア（ピンク）","シネラリア（黄）"]
     var imageNameeieveng = ["akabara.jpg","shirobara.jpg","pinkbara.jpg","aobara.jpeg","kibara.jpeg","orangebara.jpg","kurobara.jpeg","saineria.jpg","sweetaiyssum.jpg","chocoiatecosmos.jpeg","icho.jpg","midoribara.jpg","papururozu.jpeg","saineria１.jpeg","saineria２.jpg","saineria３.jpeg","saineria４.jpg",]
    var twelvej = ["シネラリア（紫）","スイートアリッサム","シネラリア（青）","シネラリア（白）","シネラリア（ピンク）","シネラリア（黄）"]
     var imageNametwelvej = ["saineria.jpg","sweetaiyssum.jpg","saineria１.jpeg","saineria２.jpg","saineria３.jpeg","saineria４.jpg",]
    var twelvec = ["シネラリア（紫）","シネラリア（青）","シネラリア（白）","シネラリア（ピンク）","シネラリア（黄）"]
    var imageNametwelvec = ["saineria.jpg","saineria１.jpeg","saineria２.jpg","saineria３.jpeg","saineria４.jpg",]
    var twelveg = ["シネラリア（紫）","シネラリア（青）","シネラリア（白）","シネラリア（ピンク）","シネラリア（黄）"]
    var imageNametwelveg = ["saineria.jpg","saineria１.jpeg","saineria２.jpg","saineria３.jpeg","saineria４.jpg",]
    var huteiki = ["ファレノプシス（胡蝶蘭）"]
    var imageNamehuteik = ["fuarenopushisu・afurodeite.jpg"]
    var itinenn = ["ハゲイトウ"]
    var imageNameitinenn = ["hageito.jpeg"]
  
    
    
    
    
    
        
    @IBOutlet var pickerView: UIPickerView!
    @IBOutlet var collectionView: UICollectionView!
        // たくさん卒業してしまった...
    let dataList = ["１月上旬","１月中旬","１月下旬","2月上旬","2月中旬","2月下旬","3月上旬","3月中旬","3月下旬","4月上旬","4月中旬","4月下旬","5月上旬","5月中旬","5月下旬","6月上旬","6月中旬","6月下旬","7月上旬","7月中旬","7月下旬","8月上旬","8月中旬","8月下旬","9月上旬","9月中旬","9月下旬","10月上旬","10月中旬","10月下旬",
        "11月上旬","11月中旬","11月下旬","12月上旬","12月中旬","12月下旬","不定期","一年草"]
        
    let monthArray = ["onej","onec","oneg","twoj","twoc","twog","threej","threec","threeg","fourj","fourc","fourg","fivej","fivec","fiveg","sixj","sixc","sixg","sevenj","sevenc","seveng","eightj","eightc","eightg","ninej","ninec","nineg","tenj","tenc","teng","eievenj","eievenc","eieveng","twelvej","twelvec","twelveg","huteiki","itinenn"]
        override func viewDidLoad() {
            super.viewDidLoad()
            
            colorNames = onej
            imageName = imageNameonej
            
            // Delegate設定
            pickerView.delegate = self
            pickerView.dataSource = self
            collectionView.delegate = self
            collectionView.dataSource = self
           // label.text = "花を月で絞る"
            
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
            
            month = monthArray[row]
            
            if month == "onej"{
                colorNames = onej
                imageName = imageNameonej
            }
            if month == "onec"{
                colorNames = onec
                 imageName = imageNameonec
            }
            if month == "oneg"{
                colorNames = oneg
                 imageName = imageNameoneg
            }
            if month == "twoj"{
                colorNames = twoj
                 imageName = imageNametwoj
            }
            if month == "twoc"{
                colorNames = twoc
                imageName = imageNametwoc
            }
            if month == "twog"{
                colorNames = twog
                imageName = imageNametwog
            }
            if month == "threej"{
                colorNames = threej
                imageName = imageNamethreej
            }
            if month == "threec"{
                colorNames = threec
                imageName = imageNamethreec
            }
            if month == "threeg"{
                colorNames = threeg
                imageName = imageNamethreeg
            }
            if month == "fourj"{
                colorNames = fourj
                imageName = imageNamefourj
            }
            if month == "fourc"{
                colorNames = fourc
                 imageName = imageNamefourc
            }
            if month == "fourg"{
                colorNames = fourg
                 imageName = imageNamefourg
            }
            if month == "fivej"{
                colorNames = fivej
                imageName = imageNamefivej
            }
            if month == "fivec"{
                colorNames = fivec
                imageName = imageNamefivec
            }
            if month == "fiveg"{
            colorNames = fiveg
                imageName = imageNamefiveg
            }
            if month == "sixj"{
            colorNames = sixj
                imageName = imageNamesixj
            }
            if month == "sixc"{
            colorNames = sixc
                 imageName = imageNamesixc
            }
            if month == "sixg"{
            colorNames = sixg
                 imageName = imageNamesixg
            }
            if month == "sevenj"{
            colorNames = sevenj
                 imageName = imageNamesevenj
            }
            if month == "sevenc"{
            colorNames = sevenc
                imageName = imageNamesevenc
            }
            if month == "seveng"{
            colorNames = seveng
                imageName = imageNameseveng
            }
            if month == "eightj"{
            colorNames = eightj
                imageName = imageNameeightj
            }
            if month == "eightc"{
            colorNames = eightc
                imageName = imageNameeightc
            }
            if month == "eightg"{
            colorNames = eightg
                imageName = imageNameeightg
            }
            if month == "ninej"{
            colorNames = ninej
                imageName = imageNameninej
            }
            if month == "ninec"{
            colorNames = ninec
                imageName = imageNameninec
            }
            if month == "nineg"{
            colorNames = nineg
                imageName = imageNamenineg
            }
            if month == "tenj"{
            colorNames = tenj
                imageName = imageNametenj
            }
            if month == "tenc"{
            colorNames = tenc
                 imageName = imageNametenc
            }
            if month == "teng"{
            colorNames = teng
                 imageName = imageNameteng
            }
            if month == "eievenj"{
            colorNames = eievenj
                 imageName = imageNameeievenj
            }
            if month == "eievenc"{
            colorNames = eievenc
                imageName = imageNameeievenc
            }
            if month == "eieveng"{
            colorNames = eieveng
                imageName = imageNameeieveng
            }
            if month == "twelvej"{
            colorNames = twelvej
                imageName = imageNametwelvej
            }
            if month == "twelvec"{
            colorNames = twelvec
                imageName = imageNametwelvec
            }
            if month == "twelveg"{
            colorNames = twelveg
                imageName = imageNametwelveg
            }
            if month == "huteiki"{
            colorNames = huteiki
                imageName = imageNamehuteik
            }
            if month == "itinenn"{
            colorNames = itinenn
                imageName = imageNameitinenn
            }
            
            collectionView.reloadData()
            
        }
    
        let colors: [UIColor] = [UIColor.black, UIColor.blue, UIColor.brown, UIColor.cyan, UIColor.darkGray, UIColor.darkText, UIColor.gray, UIColor.green, UIColor.lightGray, UIColor.orange, UIColor.red]
           // cellの色の名前の配列
           var colorNames: [String] = ["black", "blue", "brown", "cyan", "darkGray", "darkText", "gray", "green", "lightGray", "orange", "red"]
    
    var imageName: [String] = [""]

          
           var giveColor: UIColor = UIColor.black
          
           var giveColorName: String = "black"
    
    func numberOfSections(in collectionView: UICollectionView) -> Int {
         return 1
     }

     func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return colorNames.count
     }

     func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
         let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "cell", for: indexPath) as! CollectionViewCell
            // cellのlabelに色付け
        cell.imageView.image = UIImage(named: imageName[indexPath.item])
            // cellのnameに色の名前を入れる
            cell.name.text = colorNames[indexPath.item]
         return cell
     }



    //
    //            override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
    //                if segue.identifier == "Segue" {
    //                    let vc = segue.destination as! ViewController
    //                    vc.receiveColor = giveColor
    //                    vc.receiveColorName = giveColorName
    //                }
    //            }
        }

    extension PickerView: UICollectionViewDelegateFlowLayout {

        func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
            // 例えば端末サイズの半分の width と height にして 2 列にする場合
            let width: CGFloat = UIScreen.main.bounds.width / 2 - 10
            let height = CGFloat(180.0)
            return CGSize(width: width, height: height)
        }
    }

        

    





