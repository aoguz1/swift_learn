//
//  musician.swift
//  MusicianClass
//
//  Created by Abdullah Oğuz on 5.01.2021.
//

import Foundation

class Musician {
    
    enum MusicianType {
        case LeadGuitar
        case Vocalist
        case Bassist
        case Violenist
    }
    
    var name : String
    var age : Int
    var insturment : String
    var type : MusicianType
    
    
    
    
    init(nameInit: String , ageInit: Int , insturmentInit: String, typeInit: MusicianType) {
        // Constructor
        // İnit sınıfttan nesne üretildiğinde ilk çalışacak kod bloğu
        // Genel olarak class gibi yapılarda consructorlar çoğunlukla kullanılmakta
        name = nameInit
        age =  ageInit
        insturment  = insturmentInit
        type = typeInit
        
    }
    
    func sign() {
        print("sign func working")
    }
    
    
    
}
