//
//  ViewController.swift
//  birtdayApp
//
//  Created by Abdullah Oğuz on 6.11.2020.
//

import UIKit

class ViewController: UIViewController {

    
    
    @IBOutlet weak var nameTextField: UITextField!
    
    @IBOutlet weak var birthdayTextField: UITextField!
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var birtdayLabel: UILabel!
    
   
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        let storedName = UserDefaults.standard.object(forKey: "name")
        let storedBirthday = UserDefaults.standard.object(forKey: "birthday")
        
        if let newName = storedName as? String { //app ilk acildiginda ilgili verileri yazmasi lazim fakat eger veri yoksa yazamaz bu yuzden "?" ile optionals kullaniyoruz
            nameLabel.text = "Name : \(newName)"
            
        }

        if let newBirtday = storedBirthday as? String {
            birtdayLabel.text = "Birtday : \(newBirtday)"
        }
        
    }

    @IBAction func saveButton(_ sender: Any) {
        UserDefaults.standard.set(nameTextField.text, forKey: "name")
        UserDefaults.standard.set(birthdayTextField.text, forKey: "birthday")
        
        nameLabel.text = "Name : \(nameTextField.text!)"
        birtdayLabel.text = "Birtday : \(birthdayTextField.text!)"
    }
    
    
    @IBAction func deleteButton(_ sender: Any) {
        UserDefaults.standard.removeObject(forKey: "name")
        UserDefaults.standard.removeObject(forKey: "birthday")
        
        nameLabel.text = "Name :"
        birtdayLabel.text = "Birtday :"
        
    }
    
    
}

