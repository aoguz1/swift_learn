//
//  ViewController.swift
//  alertApp
//
//  Created by Abdullah Oğuz on 6.11.2020.
//

import UIKit

class ViewController: UIViewController {

    
    @IBOutlet weak var userNameTextField: UITextField!
    @IBOutlet weak var passwordAgainTextField: UITextField!
    @IBOutlet weak var passwordTextField: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
       
    
        
        
    }

    @IBAction func saveButton(_ sender: Any) {
      
        let  alert = UIAlertController(title: "Error", message: "Hatalı tıklama yapıldı" , preferredStyle: UIAlertController.Style.alert)
        let okButton = UIAlertAction(title: "Ok", style: UIAlertAction.Style.default) { (UIAlertAction) in
            print("tappppedd")
        }
        self.present(alert, animated: true, completion: nil)
        
       
        alert.addAction(okButton)
        
       
        
        // UIAlertController(title: "Burada vereceğimiz mesajı belirtiyoruz", message: "Alert mesaj açıklamsı", preferredStyle: UIAlertController.Style.alert (vereceğimiz alert tipini belirliyoruz))
        // self.present(burada alert nesnesi bekliyor, animated:  //animasyon olup olamaycağını bool olarak belirtiyoruz, completion: işlem olduktan sonra herhangi bir işlem yapılıp yapılmayacağını söylüyoruz)
    }
    
}

