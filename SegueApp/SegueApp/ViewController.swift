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
    
    override func viewDidAppear(_ animated: Bool) {
        print("viewDidAppear called")
        //görünüm gözüktüğünde çalıştırılcak kod bloğu
    }
    
    override func viewWillAppear(_ animated: Bool) {
        print("viewWillAppear called")
        nameTextField.text = ""
        //görünüm gözükecekken çalıştırılcak kod bloğu
    }

    override func viewDidDisappear(_ animated: Bool) {
        print("viewDidDisappear called")
        //
    }
    override func viewWillDisappear(_ animated: Bool) {
        print("viewWillDisappear called")
        // görünümün görünürlüğü kaybolacakken çalıştırılcak kod bloğu
    }
    
    override func viewDidLoad() {
        print("viewDidLoad called")
        //görünüm yüklendiğinde çalıştırılcak kod bloğu
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
