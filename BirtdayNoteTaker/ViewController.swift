//
//  ViewController.swift
//  BirtdayNoteTaker
//
//  Created by Abdullah Oğuz on 8.10.2020.
//

import UIKit

class ViewController: UIViewController {

  
    @IBOutlet weak var nameTextField: UITextField!
    
    
    @IBOutlet weak var birdayLabel: UILabel!
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var birtdayTextField: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let storedName = UserDefaults.standard.object(forKey : "name")
        let storedBirtday = UserDefaults.standard.object(forKey: "birtday")
        

        if let newName = storedName as? String {
            nameLabel.text = newName
        }
        
        if let newBirtday = storedBirtday as? String {
            birdayLabel.text = newBirtday
        }
        
        
        
    }

    @IBAction func saveButton(_ sender: Any) {
        UserDefaults.standard.set(nameTextField.text, forKey: "name")
        UserDefaults.standard.set(birtdayTextField.text, forKey: "birtday")
        
        
        nameLabel.text = "Name : \(nameTextField.text!)"
        birdayLabel.text = "Birtday: \(birtdayTextField.text!)"
        
        
        
    }
    @IBAction func buttonClick(_ sender: Any) {
        
        
        
    }
    
}

