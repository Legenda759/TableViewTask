//
//  models.swift
//  TableViewTask
//
//  Created by Legenda_759 on 03/02/22.
//

import Foundation

class Above {
    var image1: String?
    var text1: String?
    
    var image2: String?
    var text2: String?
    
    var image3: String?
    var text3: String?
    
    init(text1: String, image1: String, image2: String, text2: String, image3: String,text3: String?){
        self.image1 = image1
        self.text1 = text1
        
        self.image2 = image2
        self.text2 = text2
        
        self.image3 = image3
        self.text3 = text3
    }
}

class Tables1 {
    var image: String?
    var text: String?
    
    init(text: String, image: String){
        self.image = image
        self.text = text
    }
}

class Tables2 {
    var image: String?
    var text: String?
    
    init(text: String, image: String){
        self.image = image
        self.text = text
    }
}


