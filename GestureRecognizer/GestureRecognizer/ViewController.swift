//
//  ViewController.swift
//  GestureRecognizer
//
//  Created by Abdullah Oğuz on 11.11.2020.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var imageView: UIImageView!
    @IBOutlet weak var textLabel: UILabel!
    
    var isFlutter = true
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        imageView.isUserInteractionEnabled = true // fotoğraf üzerindeki tıklanabilirliği alıyoruz
        
        let gestureRecognizer = UITapGestureRecognizer(target: self, action: #selector(changePic))  //UITapGestureRecognizer ile
        
        imageView.addGestureRecognizer(gestureRecognizer)
    }
    
    @objc func changePic()  {
        if isFlutter == true  {
            imageView.image = UIImage(named: "flutter")
            textLabel.text = "Flutter"
            isFlutter  = false
        }
        else{
            imageView.image = UIImage(named: "swift")
            textLabel.text = "Swift"
            isFlutter = true
        }
    }


}

