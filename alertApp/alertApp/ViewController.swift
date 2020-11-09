//
//  ViewController.swift
//  alertApp
//
//  Created by Abdullah Oğuz on 6.11.2020.

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
      
    
        
        
        if userNameTextField.text == "" {
            alert(titleInput: "Kullanıcı Adı Boş", messageInfo: "Lütfen kullanıcı adıızı giriniz")
        } else if passwordTextField.text == ""{
            alert(titleInput: "Şifre Alanı Boş", messageInfo: "Lütfen şifrenizi giriniz")
        } else if passwordTextField.text != passwordAgainTextField.text {
            alert(titleInput: "Şifreler Aynı Değil", messageInfo: "Lütfen girdiğiniz şifreleri kontrol ediniz")
        }else{
            alert(titleInput: "Başarlı", messageInfo: "Başarılı bir şekilde giriş yaptınız..")
        }
}

    func alert(titleInput : String,  messageInfo : String) {
        let alert = UIAlertController(title: titleInput, message: messageInfo, preferredStyle: UIAlertController.Style.alert)
        let okButton = UIAlertAction(title: "Ok", style: UIAlertAction.Style.default) { (UIAlertAction) in
            print("tapped")
        }
        self.present(alert, animated: true, completion: nil)
        alert.addAction(okButton)
        
        // UIAlertController(title: "Burada vereceğimiz mesajı belirtiyoruz", message: "Alert mesaj açıklamsı", preferredStyle: UIAlertController.Style.alert (vereceğimiz alert tipini belirliyoruz))
        // self.present(burada alert nesnesi bekliyor, animated:  //animasyon olup olamaycağını bool olarak belirtiyoruz, completion: işlem olduktan sonra herhangi bir işlem yapılıp yapılmayacağını söylüyoruz)
        
        
    }

}
