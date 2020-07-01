//
//  SelectViewController.swift
//  6bann
//
//  Created by 橋目　那桜 on 2019/11/01.
//  Copyright © 2019 橋目　那桜. All rights reserved.
//

import UIKit

class SelectViewController: UIViewController {
    
    
    @IBOutlet var label: UIImageView!
    @IBOutlet var red: UIButton!
    @IBOutlet var  blue: UIButton!
    @IBOutlet var  yellow: UIButton!
    @IBOutlet var  pink: UIButton!
    @IBOutlet var  orange: UIButton!
    @IBOutlet var  green: UIButton!
    @IBOutlet var  purple: UIButton!
    @IBOutlet var  White: UIButton!
    @IBOutlet var  black: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        red.layer.masksToBounds = true
        red.layer.cornerRadius = 20
        blue.layer.masksToBounds = true
        blue.layer.cornerRadius = 20
        yellow.layer.masksToBounds = true
        yellow.layer.cornerRadius = 20
        pink.layer.masksToBounds = true
        pink.layer.cornerRadius = 20
        orange.layer.masksToBounds = true
        orange.layer.cornerRadius = 20
        green.layer.masksToBounds = true
        green.layer.cornerRadius = 20
        purple.layer.masksToBounds = true
        purple.layer.cornerRadius = 20
        White.layer.masksToBounds = true
        White.layer.cornerRadius = 20
        black.layer.masksToBounds = true
        black.layer.cornerRadius = 20        
    }
    
    
    @IBAction func redButton() {
        performSegue(withIdentifier: "f", sender: "red")
    }
    @IBAction func blueButton() {
        performSegue(withIdentifier: "f", sender: "blue")
    }
    @IBAction func yellowButton() {
        performSegue(withIdentifier: "f", sender: "yellow")
    }
    @IBAction func pinkButton() {
        performSegue(withIdentifier: "f", sender: "pink")
    }
    @IBAction func orangeButton() {
        performSegue(withIdentifier: "f", sender: "orange")
    }
    @IBAction func greenButton() {
        performSegue(withIdentifier: "f", sender: "green")
    }
    @IBAction func purpleButton() {
        performSegue(withIdentifier: "f", sender: "purple" )
    }
    @IBAction func WhiteButton() {
        performSegue(withIdentifier: "f", sender: "White")
    }
    @IBAction func blackButton() {
        performSegue(withIdentifier: "f", sender: "black")
    }
    
    
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let viewController = segue.destination as! ViewController
        viewController.flowerColor = (sender as! String)
    }
    
}





