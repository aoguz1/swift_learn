//
//  ViewController.swift
//  ObjectWithCode
//
//  Created by Abdullah Oğuz on 19.10.2020.
//

import UIKit

class ViewController: UIViewController {

    
    let myLabel = UILabel()
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        let width = view.frame.width
        let height = view.frame.height // ekran genislik ve yuksekligini aldik

        
    
        myLabel.text = "My Label"
        myLabel.textAlignment = .center
        myLabel.frame = CGRect.init(x: (width - width * 0.8) / 2  , y: height/2, width: width * 0.8, height: 50) // ekranin tam ortada durmasi icin ekran genisliginden yazi boyununu cikartip ortaladik.
        view.addSubview(myLabel)   // ekledigimiz elemani ekrana cizdirdik
        
        let myButton = UIButton()
        myButton.setTitle("Kaydet", for: UIControl.State.normal)
        myButton.setTitleColor(UIColor.blue, for: UIControl.State.normal) // butona tiklandiginda
        myButton.frame = CGRect.init(x: width * 0.5 - 100, y: height * 0.6, width: 200, height: 100) // butonun bulunacagi yeri sabitledik
        
        
        myButton.addTarget(self, action: #selector(ViewController.myAction), for: UIControl.Event.touchUpInside)
        view.addSubview(myButton)
        
        // target : islem yapacagimiz alani temsil ediyor
        // action butona tiklandiginda ne olacagini yaziyoruz
        // butona verilen aksiyonun cesidini belirliyoruz ornek : tek tiklama
    
    }
   @objc func myAction(){
    myLabel.text = "Tapped"
    
    }
}


