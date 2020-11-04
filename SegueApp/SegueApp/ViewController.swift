//
//  ViewController.swift
//  SegueApp
//
//  Created by Abdullah Oğuz on 4.11.2020.
//

import UIKit

class ViewController: UIViewController {
    
    var userName = ""

    @IBOutlet weak var nameTextField: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func sendButton(_ sender: Any) {
        userName  = nameTextField.text!
        performSegue(withIdentifier: "secondVC", sender: nil)
    }
    //performsegue ekranlar arası navigasyon işlemi yapmamıza olanak sağlar
    // withIdentifier : hangi ekrana geçiş yapmak istediğimizi yazıyoruz.
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "secondVC"{
            let destination = segue.destination as! SecondViewController
          
            destination.myName = userName
    }
        
        //perpareforsegue : segue olmadan hemen önceki işlemleri prepareforsegue yapar burada ilgili kontollerimizi yazabiliriz
    }

}
