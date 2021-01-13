//
//  super_musician.swift
//  MusicianClass
//
//  Created by Abdullah Oğuz on 9.01.2021.
//

import Foundation


class SuperMusician: Musician {

    // super musician sinifi ile musician sinifindaki ogeler ulasilabilir konumda olmustur
    
    
    func sing2() {
     print("sing 2 working")
    }
    
    
    
    // musician sinifinda bulunan 
    
    override func sign() {
        super.sign()
        
        print("sing override func working")
    }
    
}
