//
//  SecondViewController.swift
//  SegueApp
//
//  Created by Abdullah Oğuz on 4.11.2020.
//

import UIKit

class SecondViewController: UIViewController {
    var myName = ""
    @IBOutlet weak var nameLabel: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        nameLabel.text = "Name: \(myName)"
    }
}
