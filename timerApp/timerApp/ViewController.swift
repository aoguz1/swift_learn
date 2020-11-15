//
//  ViewController.swift
//  timerApp
//
//  Created by Abdullah Oğuz on 14.11.2020.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var timeLabel: UILabel!
    
    var timer = Timer()
    var counter  = 0
    
    
    
    // ekranda bulunan labeli 10 dan geriye şekilde ve aynı zamanda button a basıldığında console de "tapped" şeklinde görünmesini sağlayan uygulama..
    
    // bu işlemlerin gerçekleşmesi için aynı therad üzerinde gerçekleştiği için aksamalara neden olacaktır. Bu yüzden bu işlem parçacığını farklı bir şekilde yapmamız gerekli ki ekranda herhangi bir hata ile karşılaşmayalım.
    
    // kullanıcıya ekran üzerinde sayıların azalması ve artması işlemi başka bir therad de olmalı ki sorunsuz bir biçimde çalışabilsin

    //
 
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        counter = 10
        timeLabel.text  = "Time :  \(counter)"
        timer  = Timer.scheduledTimer(timeInterval: 1, target: self, selector: #selector(timerFunc), userInfo: nil, repeats: true)
    }
    
    
    @objc func timerFunc(){
        timeLabel.text = "Time : \(counter)"
        counter -= 1
        
        if  counter == 0 {
            timer.invalidate()
            timeLabel.text =  "time is over !!"
        }
    }
    
    override func viewDidAppear(_ animated: Bool) {
//        counter = 10
//    for time in 1...10 { // birden 10 a  kadar sayar
//        counter = counter - 1
//        timeLabel.text = "Time : \(counter)"
//        Thread.sleep(forTimeInterval: 1)
//
//    }
    }

    @IBAction func tappedButton(_ sender: Any) {
        print("button clicked ")
    }
}

