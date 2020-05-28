//
//  ViewController.swift
//  ProyectoFinal
//
//  Created by user168624 on 4/22/20.
//  Copyright © 2020 user168624. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        // Inicia la aplicacion en modo horizontal. ARREGLAR
        let value = UIInterfaceOrientation.landscapeLeft.rawValue
        UIDevice.current.setValue(value, forKey: "orientation")
    }
    
    override var supportedInterfaceOrientations: UIInterfaceOrientationMask {
        return .landscapeRight
    }
    
    // Restringe la rotacion del dispositivo.
    override var shouldAutorotate: Bool {
        return true
    }

    @IBAction func unwindCreditos(unwindSegue: UIStoryboardSegue){
        
    }
    
}

