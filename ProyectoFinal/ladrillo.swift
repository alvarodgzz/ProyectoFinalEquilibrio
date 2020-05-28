//
//  ladrillo.swift
//  ProyectoFinal
//
//  Created by user168624 on 5/10/20.
//  Copyright © 2020 user168624. All rights reserved.
//

import UIKit

class ladrillo: NSObject {
    var peso : Int
    var img : UIImage!
    
    init(peso: Int, img: UIImage){
        self.peso = peso
        self.img = img
    }
}
