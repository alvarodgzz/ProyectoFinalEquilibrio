//
//  ViewControllerPractica.swift
//  ProyectoFinal
//
//  Created by user168624 on 4/22/20.
//  Copyright © 2020 user168624. All rights reserved.
//

import UIKit


class ViewControllerPractica: UIViewController {
    
    var lad5 : ladrillo!
    var lad10 : ladrillo!
    var lad15 : ladrillo!
    var lad20 : ladrillo!
    var lad25 : ladrillo!
    
    @IBOutlet weak var imgBrick5: UIImageView!
    @IBOutlet weak var imgBrick10: UIImageView!
    @IBOutlet weak var imgBrick15: UIImageView!
    @IBOutlet weak var imgBrick20: UIImageView!
    @IBOutlet weak var imgBrick25: UIImageView!
    
    
    @IBOutlet weak var suitch: UISwitch!
    @IBOutlet weak var botonPrint: UIButton!
    
    
    // arreglo de de pesos
    var pesos = [0,0,0,0,0,0,0,0,0,0]
    
    
//    view general de barra y ladrillos
    @IBOutlet weak var vistaBarra: UIView!
    @IBOutlet weak var imgRegla: UIImageView!
    @IBOutlet weak var imgViga: UIImageView!
    
    
    
    // ladrillos dummies 25
    var cont25 : Int!
    @IBOutlet weak var lad0_25: UIImageView!
    @IBOutlet weak var lad1_25: UIImageView!
    @IBOutlet weak var lad2_25: UIImageView!
    @IBOutlet weak var lad3_25: UIImageView!
    @IBOutlet weak var lad4_25: UIImageView!
    @IBOutlet weak var lad6_25: UIImageView!
    @IBOutlet weak var lad7_25: UIImageView!
    @IBOutlet weak var lad8_25: UIImageView!
    @IBOutlet weak var lad9_25: UIImageView!
    @IBOutlet weak var lad10_25: UIImageView!
    
    // ladrillos dummies 20
    var cont20 : Int!
    @IBOutlet weak var lad0_20: UIImageView!
    @IBOutlet weak var lad1_20: UIImageView!
    @IBOutlet weak var lad2_20: UIImageView!
    @IBOutlet weak var lad3_20: UIImageView!
    @IBOutlet weak var lad4_20: UIImageView!
    @IBOutlet weak var lad6_20: UIImageView!
    @IBOutlet weak var lad7_20: UIImageView!
    @IBOutlet weak var lad8_20: UIImageView!
    @IBOutlet weak var lad9_20: UIImageView!
    @IBOutlet weak var lad10_20: UIImageView!
    
    // ladrillos dummies 15
    var cont15 : Int!
    @IBOutlet weak var lad0_15: UIImageView!
    @IBOutlet weak var lad1_15: UIImageView!
    @IBOutlet weak var lad2_15: UIImageView!
    @IBOutlet weak var lad3_15: UIImageView!
    @IBOutlet weak var lad4_15: UIImageView!
    @IBOutlet weak var lad6_15: UIImageView!
    @IBOutlet weak var lad7_15: UIImageView!
    @IBOutlet weak var lad8_15: UIImageView!
    @IBOutlet weak var lad9_15: UIImageView!
    @IBOutlet weak var lad10_15: UIImageView!
    
    // ladrillos dummies 10
    var cont10 : Int!
    @IBOutlet weak var lad0_10: UIImageView!
    @IBOutlet weak var lad1_10: UIImageView!
    @IBOutlet weak var lad2_10: UIImageView!
    @IBOutlet weak var lad3_10: UIImageView!
    @IBOutlet weak var lad4_10: UIImageView!
    @IBOutlet weak var lad6_10: UIImageView!
    @IBOutlet weak var lad7_10: UIImageView!
    @IBOutlet weak var lad8_10: UIImageView!
    @IBOutlet weak var lad9_10: UIImageView!
    @IBOutlet weak var lad10_10: UIImageView!
    
    // ladrillos dummies 5
    var cont5 : Int!
    @IBOutlet weak var lad0_5: UIImageView!
    @IBOutlet weak var lad1_5: UIImageView!
    @IBOutlet weak var lad2_5: UIImageView!
    @IBOutlet weak var lad3_5: UIImageView!
    @IBOutlet weak var lad4_5: UIImageView!
    @IBOutlet weak var lad6_5: UIImageView!
    @IBOutlet weak var lad7_5: UIImageView!
    @IBOutlet weak var lad8_5: UIImageView!
    @IBOutlet weak var lad9_5: UIImageView!
    @IBOutlet weak var lad10_5: UIImageView!
    
    
//    @IBAction func panPerformed(_ sender: UIPanGestureRecognizer) {
//        if sender.state == .began || sender.state == .changed {
//            let translation = sender.translation(in: sender.view)
//            let changeX = (sender.view?.center.x)! + translation.x
//            let changeY = (sender.view?.center.y)! + translation.y
//
//            sender.view?.center = CGPoint(x: changeX, y: changeY)
//            sender.setTranslation(CGPoint.zero, in: sender.view)
//        }
//
//    }
    
    
    override func viewDidAppear(_ animated: Bool) {
        myAlert(title: "MODO PRACTICA", message: "En este modo cuentas con 5 ladrillos de diferentes pesos : 5, 10, 15, 20 y 25. Colócalos sobre la viga y realiza tus cálculos, de esta manera practicaras para los quizzes. NOTA: Los bloques son únicos y se pueden empalmar, lo que significa que los pesos se suman. ")
    }
    
    func myAlert(title: String, message: String) {
        
        let alert = UIAlertController(title: title, message: message, preferredStyle: .alert)
        
        alert.addAction(UIAlertAction(title: "Okay", style: .default, handler: { (action) in
            alert.dismiss(animated: true, completion: nil)
        }))
        
        self.present(alert, animated: true, completion: nil)
    }
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
//        self.alerta()
        
        lad5 = ladrillo(peso: 5, img: UIImage(named: "brick5")! )
        lad10 = ladrillo(peso: 10, img: UIImage(named: "brick10")! )
        lad15 = ladrillo(peso: 15, img: UIImage(named: "brick15")! )
        lad20 = ladrillo(peso: 20, img: UIImage(named: "brick20")! )
        lad25 = ladrillo(peso: 25, img: UIImage(named: "brick25")! )
        
        imgBrick5.image = lad5.img
        imgBrick10.image = lad10.img
        imgBrick15.image = lad15.img
        imgBrick20.image = lad20.img
        imgBrick25.image = lad25.img
        
//        imgBrick5.isUserInteractionEnabled = true
//        imgBrick10.isUserInteractionEnabled = true
//        imgBrick15.isUserInteractionEnabled = true
//        imgBrick20.isUserInteractionEnabled = true
//        imgBrick25.isUserInteractionEnabled = true
//
//        imgBrick5.addGestureRecognizer(UIPanGestureRecognizer(target: self, action: #selector(self.panPerformed(_:))))
//        imgBrick10.addGestureRecognizer(UIPanGestureRecognizer(target: self, action: #selector(self.panPerformed(_:))))
//        imgBrick15.addGestureRecognizer(UIPanGestureRecognizer(target: self, action: #selector(self.panPerformed(_:))))
//        imgBrick20.addGestureRecognizer(UIPanGestureRecognizer(target: self, action: #selector(self.panPerformed(_:))))
//        imgBrick25.addGestureRecognizer(UIPanGestureRecognizer(target: self, action: #selector(self.panPerformed(_:))))
        
        imgRegla.isHidden = true
        suitch.isOn = false
        botonPrint.isHidden = true
        
        // Do any additional setup after loading the view.
        
        
        // Set Up Brick 25
        cont25 = -1
        imgBrick25.isUserInteractionEnabled = true
        imgBrick25.addGestureRecognizer(UITapGestureRecognizer(target: self, action: #selector(tappedBrick25)))
        lad0_25.isHidden = true
        lad1_25.isHidden = true
        lad2_25.isHidden = true
        lad3_25.isHidden = true
        lad4_25.isHidden = true
        lad6_25.isHidden = true
        lad7_25.isHidden = true
        lad8_25.isHidden = true
        lad9_25.isHidden = true
        lad10_25.isHidden = true
        
        // Set Up Brick 20
        cont20 = -1
        imgBrick20.isUserInteractionEnabled = true
        imgBrick20.addGestureRecognizer(UITapGestureRecognizer(target: self, action: #selector(tappedBrick20)))
        lad0_20.isHidden = true
        lad1_20.isHidden = true
        lad2_20.isHidden = true
        lad3_20.isHidden = true
        lad4_20.isHidden = true
        lad6_20.isHidden = true
        lad7_20.isHidden = true
        lad8_20.isHidden = true
        lad9_20.isHidden = true
        lad10_20.isHidden = true
        
        // Set Up Brick 15
        cont15 = -1
        imgBrick15.isUserInteractionEnabled = true
        imgBrick15.addGestureRecognizer(UITapGestureRecognizer(target: self, action: #selector(tappedBrick15)))
        lad0_15.isHidden = true
        lad1_15.isHidden = true
        lad2_15.isHidden = true
        lad3_15.isHidden = true
        lad4_15.isHidden = true
        lad6_15.isHidden = true
        lad7_15.isHidden = true
        lad8_15.isHidden = true
        lad9_15.isHidden = true
        lad10_15.isHidden = true
        
        // Set Up Brick 10
        cont10 = -1
        imgBrick10.isUserInteractionEnabled = true
        imgBrick10.addGestureRecognizer(UITapGestureRecognizer(target: self, action: #selector(tappedBrick10)))
        lad0_10.isHidden = true
        lad1_10.isHidden = true
        lad2_10.isHidden = true
        lad3_10.isHidden = true
        lad4_10.isHidden = true
        lad6_10.isHidden = true
        lad7_10.isHidden = true
        lad8_10.isHidden = true
        lad9_10.isHidden = true
        lad10_10.isHidden = true
        
        // Set Up Brick 5
        cont5 = -1
        imgBrick5.isUserInteractionEnabled = true
        imgBrick5.addGestureRecognizer(UITapGestureRecognizer(target: self, action: #selector(tappedBrick5)))
        lad0_5.isHidden = true
        lad1_5.isHidden = true
        lad2_5.isHidden = true
        lad3_5.isHidden = true
        lad4_5.isHidden = true
        lad6_5.isHidden = true
        lad7_5.isHidden = true
        lad8_5.isHidden = true
        lad9_5.isHidden = true
        lad10_5.isHidden = true
    }
    
    @objc func tappedBrick25(gesture : UIGestureRecognizer) {
        self.cont25 = self.cont25 + 1
        switch self.cont25 {
        case 0:
            if self.cont25 == 0 {
                lad0_25.isHidden = false
                pesos[0] = pesos[0] + lad25.peso
            }
        case 1:
            lad0_25.isHidden = true
            if pesos[0] - lad25.peso > -1 {
                pesos[0] = pesos[0] - lad25.peso
            }
            if self.cont25 == 1 {
                lad1_25.isHidden = false
                pesos[1] = pesos[1] + lad25.peso
            }
        case 2:
            lad1_25.isHidden = true
            if pesos[1] - lad25.peso > -1 {
                pesos[1] = pesos[1] - lad25.peso
            }
            if self.cont25 == 2 {
                lad2_25.isHidden = false
                pesos[2] = pesos[2] + lad25.peso
            }
        case 3:
            lad2_25.isHidden = true
            if pesos[2] - lad25.peso > -1 {
                pesos[2] = pesos[2] - lad25.peso
            }
            if self.cont25 == 3 {
                lad3_25.isHidden = false
                pesos[3] = pesos[3] + lad25.peso
                return;
            }
        case 4:
            lad3_25.isHidden = true
            if pesos[3] - lad25.peso > -1 {
                pesos[3] = pesos[3] - lad25.peso
            }
            if self.cont25 == 4 {
                lad4_25.isHidden = false
                pesos[4] = pesos[4] + lad25.peso
                return;
            }
        case 5:
            lad4_25.isHidden = true
            if pesos[4] - lad25.peso > -1 {
                pesos[4] = pesos[4] - lad25.peso
            }
            if self.cont25 == 5 {
                lad6_25.isHidden = false
                pesos[5] = pesos[5] + lad25.peso
                return;
            }
        case 6:
            lad6_25.isHidden = true
            if pesos[5] - lad25.peso > -1 {
                pesos[5] = pesos[5] - lad25.peso
            }
            if self.cont25 == 6 {
                lad7_25.isHidden = false
                pesos[6] = pesos[6] + lad25.peso
                return;
            }
        case 7:
            lad7_25.isHidden = true
            if pesos[6] - lad25.peso > -1 {
                pesos[6] = pesos[6] - lad25.peso
            }
            if self.cont25 == 7 {
                lad8_25.isHidden = false
                pesos[7] = pesos[7] + lad25.peso
                return;
            }
        case 8:
            lad8_25.isHidden = true
            if pesos[7] - lad25.peso > -1 {
                pesos[7] = pesos[7] - lad25.peso
            }
            if self.cont25 == 8 {
                lad9_25.isHidden = false
                pesos[8] = pesos[8] + lad25.peso
                return;
            }
        case 9:
            lad9_25.isHidden = true
            if pesos[8] - lad25.peso > -1 {
                pesos[8] = pesos[8] - lad25.peso
            }
            if self.cont25 == 9 {
                lad10_25.isHidden = false
                pesos[9] = pesos[9] + lad25.peso
                return;
            }
        default:

            lad10_25.isHidden = true
            if pesos[9] - lad25.peso > -1 {
                pesos[9] = pesos[9] - lad25.peso
            }
            if self.cont25 == 10 {
                self.cont25 = -1
            }
        }
        
    }
    
    @objc func tappedBrick20(gesture : UIGestureRecognizer) {
        self.cont20 = self.cont20 + 1
        switch self.cont20 {
        case 0:
            if self.cont20 == 0 {
                lad0_20.isHidden = false
                pesos[0] = pesos[0] + lad20.peso
            }
        case 1:
            lad0_20.isHidden = true
            if pesos[0] - lad20.peso > -1 {
                pesos[0] = pesos[0] - lad20.peso
            }
            if self.cont20 == 1 {
                lad1_20.isHidden = false
                pesos[1] = pesos[1] + lad20.peso
            }
        case 2:
            lad1_20.isHidden = true
            if pesos[1] - lad20.peso > -1 {
                pesos[1] = pesos[1] - lad20.peso
            }
            if self.cont20 == 2 {
                lad2_20.isHidden = false
                pesos[2] = pesos[2] + lad20.peso
            }
        case 3:
            lad2_20.isHidden = true
            if pesos[2] - lad20.peso > -1 {
                pesos[2] = pesos[2] - lad20.peso
            }
            if self.cont20 == 3 {
                lad3_20.isHidden = false
                pesos[3] = pesos[3] + lad20.peso
                return;
            }
        case 4:
            lad3_20.isHidden = true
            if pesos[3] - lad20.peso > -1 {
                pesos[3] = pesos[3] - lad20.peso
            }
            if self.cont20 == 4 {
                lad4_20.isHidden = false
                pesos[4] = pesos[4] + lad20.peso
                return;
            }
        case 5:
            lad4_20.isHidden = true
            if pesos[4] - lad20.peso > -1 {
                pesos[4] = pesos[4] - lad20.peso
            }
            if self.cont20 == 5 {
                lad6_20.isHidden = false
                pesos[5] = pesos[5] + lad20.peso
                return;
            }
        case 6:
            lad6_20.isHidden = true
            if pesos[5] - lad20.peso > -1 {
                pesos[5] = pesos[5] - lad20.peso
            }
            if self.cont20 == 6 {
                lad7_20.isHidden = false
                pesos[6] = pesos[6] + lad20.peso
                return;
            }
        case 7:
            lad7_20.isHidden = true
            if pesos[6] - lad20.peso > -1 {
                pesos[6] = pesos[6] - lad20.peso
            }
            if self.cont20 == 7 {
                lad8_20.isHidden = false
                pesos[7] = pesos[7] + lad20.peso
                return;
            }
        case 8:
            lad8_20.isHidden = true
            if pesos[7] - lad20.peso > -1 {
                pesos[7] = pesos[7] - lad20.peso
            }
            if self.cont20 == 8 {
                lad9_20.isHidden = false
                pesos[8] = pesos[8] + lad20.peso
                return;
            }
        case 9:
            lad9_20.isHidden = true
            if pesos[8] - lad20.peso > -1 {
                pesos[8] = pesos[8] - lad20.peso
            }
            if self.cont20 == 9 {
                lad10_20.isHidden = false
                pesos[9] = pesos[9] + lad20.peso
                return;
            }
        default:

            lad10_20.isHidden = true
            if pesos[9] - lad20.peso > -1 {
                pesos[9] = pesos[9] - lad20.peso
            }
            if self.cont20 == 10 {
                self.cont20 = -1
            }
        }
        
    }
    
    @objc func tappedBrick15(gesture : UIGestureRecognizer) {
        self.cont15 = self.cont15 + 1
        switch self.cont15 {
        case 0:
            if self.cont15 == 0 {
                lad0_15.isHidden = false
                pesos[0] = pesos[0] + lad15.peso
            }
        case 1:
            lad0_15.isHidden = true
            if pesos[0] - lad15.peso > -1 {
                pesos[0] = pesos[0] - lad15.peso
            }
            if self.cont15 == 1 {
                lad1_15.isHidden = false
                pesos[1] = pesos[1] + lad15.peso
            }
        case 2:
            lad1_15.isHidden = true
            if pesos[1] - lad15.peso > -1 {
                pesos[1] = pesos[1] - lad15.peso
            }
            if self.cont15 == 2 {
                lad2_15.isHidden = false
                pesos[2] = pesos[2] + lad15.peso
            }
        case 3:
            lad2_15.isHidden = true
            if pesos[2] - lad15.peso > -1 {
                pesos[2] = pesos[2] - lad15.peso
            }
            if self.cont15 == 3 {
                lad3_15.isHidden = false
                pesos[3] = pesos[3] + lad15.peso
                return;
            }
        case 4:
            lad3_15.isHidden = true
            if pesos[3] - lad15.peso > -1 {
                pesos[3] = pesos[3] - lad15.peso
            }
            if self.cont15 == 4 {
                lad4_15.isHidden = false
                pesos[4] = pesos[4] + lad15.peso
                return;
            }
        case 5:
            lad4_15.isHidden = true
            if pesos[4] - lad15.peso > -1 {
                pesos[4] = pesos[4] - lad15.peso
            }
            if self.cont15 == 5 {
                lad6_15.isHidden = false
                pesos[5] = pesos[5] + lad15.peso
                return;
            }
        case 6:
            lad6_15.isHidden = true
            if pesos[5] - lad15.peso > -1 {
                pesos[5] = pesos[5] - lad15.peso
            }
            if self.cont15 == 6 {
                lad7_15.isHidden = false
                pesos[6] = pesos[6] + lad15.peso
                return;
            }
        case 7:
            lad7_15.isHidden = true
            if pesos[6] - lad15.peso > -1 {
                pesos[6] = pesos[6] - lad15.peso
            }
            if self.cont15 == 7 {
                lad8_15.isHidden = false
                pesos[7] = pesos[7] + lad15.peso
                return;
            }
        case 8:
            lad8_15.isHidden = true
            if pesos[7] - lad15.peso > -1 {
                pesos[7] = pesos[7] - lad15.peso
            }
            if self.cont15 == 8 {
                lad9_15.isHidden = false
                pesos[8] = pesos[8] + lad15.peso
                return;
            }
        case 9:
            lad9_15.isHidden = true
            if pesos[8] - lad15.peso > -1 {
                pesos[8] = pesos[8] - lad15.peso
            }
            if self.cont15 == 9 {
                lad10_15.isHidden = false
                pesos[9] = pesos[9] + lad15.peso
                return;
            }
        default:

            lad10_15.isHidden = true
            if pesos[9] - lad15.peso > -1 {
                pesos[9] = pesos[9] - lad15.peso
            }
            if self.cont15 == 10 {
                self.cont15 = -1
            }
        }
        
    }
    
    @objc func tappedBrick10(gesture : UIGestureRecognizer) {
        self.cont10 = self.cont10 + 1
        switch self.cont10 {
        case 0:
            if self.cont10 == 0 {
                lad0_10.isHidden = false
                pesos[0] = pesos[0] + lad10.peso
            }
        case 1:
            lad0_10.isHidden = true
            if pesos[0] - lad10.peso > -1 {
                pesos[0] = pesos[0] - lad10.peso
            }
            if self.cont10 == 1 {
                lad1_10.isHidden = false
                pesos[1] = pesos[1] + lad10.peso
            }
        case 2:
            lad1_10.isHidden = true
            if pesos[1] - lad10.peso > -1 {
                pesos[1] = pesos[1] - lad10.peso
            }
            if self.cont10 == 2 {
                lad2_10.isHidden = false
                pesos[2] = pesos[2] + lad10.peso
            }
        case 3:
            lad2_10.isHidden = true
            if pesos[2] - lad10.peso > -1 {
                pesos[2] = pesos[2] - lad10.peso
            }
            if self.cont10 == 3 {
                lad3_10.isHidden = false
                pesos[3] = pesos[3] + lad10.peso
                return;
            }
        case 4:
            lad3_10.isHidden = true
            if pesos[3] - lad10.peso > -1 {
                pesos[3] = pesos[3] - lad10.peso
            }
            if self.cont10 == 4 {
                lad4_10.isHidden = false
                pesos[4] = pesos[4] + lad10.peso
                return;
            }
        case 5:
            lad4_10.isHidden = true
            if pesos[4] - lad10.peso > -1 {
                pesos[4] = pesos[4] - lad10.peso
            }
            if self.cont10 == 5 {
                lad6_10.isHidden = false
                pesos[5] = pesos[5] + lad10.peso
                return;
            }
        case 6:
            lad6_10.isHidden = true
            if pesos[5] - lad10.peso > -1 {
                pesos[5] = pesos[5] - lad10.peso
            }
            if self.cont10 == 6 {
                lad7_10.isHidden = false
                pesos[6] = pesos[6] + lad10.peso
                return;
            }
        case 7:
            lad7_10.isHidden = true
            if pesos[6] - lad10.peso > -1 {
                pesos[6] = pesos[6] - lad10.peso
            }
            if self.cont10 == 7 {
                lad8_10.isHidden = false
                pesos[7] = pesos[7] + lad10.peso
                return;
            }
        case 8:
            lad8_10.isHidden = true
            if pesos[7] - lad10.peso > -1 {
                pesos[7] = pesos[7] - lad10.peso
            }
            if self.cont10 == 8 {
                lad9_10.isHidden = false
                pesos[8] = pesos[8] + lad10.peso
                return;
            }
        case 9:
            lad9_10.isHidden = true
            if pesos[8] - lad10.peso > -1 {
                pesos[8] = pesos[8] - lad10.peso
            }
            if self.cont10 == 9 {
                lad10_10.isHidden = false
                pesos[9] = pesos[9] + lad10.peso
                return;
            }
        default:

            lad10_10.isHidden = true
            if pesos[9] - lad10.peso > -1 {
                pesos[9] = pesos[9] - lad10.peso
            }
            if self.cont10 == 10 {
                self.cont10 = -1
            }
        }
        
    }
    
    @objc func tappedBrick5(gesture : UIGestureRecognizer) {
        self.cont5 = self.cont5 + 1
        switch self.cont5 {
        case 0:
            if self.cont5 == 0 {
                lad0_5.isHidden = false
                pesos[0] = pesos[0] + lad5.peso
            }
        case 1:
            lad0_5.isHidden = true
            if pesos[0] - lad5.peso > -1 {
                pesos[0] = pesos[0] - lad5.peso
            }
            if self.cont5 == 1 {
                lad1_5.isHidden = false
                pesos[1] = pesos[1] + lad5.peso
            }
        case 2:
            lad1_5.isHidden = true
            if pesos[1] - lad5.peso > -1 {
                pesos[1] = pesos[1] - lad5.peso
            }
            if self.cont5 == 2 {
                lad2_5.isHidden = false
                pesos[2] = pesos[2] + lad5.peso
            }
        case 3:
            lad2_5.isHidden = true
            if pesos[2] - lad5.peso > -1 {
                pesos[2] = pesos[2] - lad5.peso
            }
            if self.cont5 == 3 {
                lad3_5.isHidden = false
                pesos[3] = pesos[3] + lad5.peso
                return;
            }
        case 4:
            lad3_5.isHidden = true
            if pesos[3] - lad5.peso > -1 {
                pesos[3] = pesos[3] - lad5.peso
            }
            if self.cont5 == 4 {
                lad4_5.isHidden = false
                pesos[4] = pesos[4] + lad5.peso
                return;
            }
        case 5:
            lad4_5.isHidden = true
            if pesos[4] - lad5.peso > -1 {
                pesos[4] = pesos[4] - lad5.peso
            }
            if self.cont5 == 5 {
                lad6_5.isHidden = false
                pesos[5] = pesos[5] + lad5.peso
                return;
            }
        case 6:
            lad6_5.isHidden = true
            if pesos[5] - lad5.peso > -1 {
                pesos[5] = pesos[5] - lad5.peso
            }
            if self.cont5 == 6 {
                lad7_5.isHidden = false
                pesos[6] = pesos[6] + lad5.peso
                return;
            }
        case 7:
            lad7_5.isHidden = true
            if pesos[6] - lad5.peso > -1 {
                pesos[6] = pesos[6] - lad5.peso
            }
            if self.cont5 == 7 {
                lad8_5.isHidden = false
                pesos[7] = pesos[7] + lad5.peso
                return;
            }
        case 8:
            lad8_5.isHidden = true
            if pesos[7] - lad5.peso > -1 {
                pesos[7] = pesos[7] - lad5.peso
            }
            if self.cont5 == 8 {
                lad9_5.isHidden = false
                pesos[8] = pesos[8] + lad5.peso
                return;
            }
        case 9:
            lad9_5.isHidden = true
            if pesos[8] - lad5.peso > -1 {
                pesos[8] = pesos[8] - lad5.peso
            }
            if self.cont5 == 9 {
                lad10_5.isHidden = false
                pesos[9] = pesos[9] + lad5.peso
                return;
            }
        default:

            lad10_5.isHidden = true
            if pesos[9] - lad5.peso > -1 {
                pesos[9] = pesos[9] - lad5.peso
            }
            if self.cont5 == 10 {
                self.cont5 = -1
            }
        }
        
    }
    
    override var supportedInterfaceOrientations: UIInterfaceOrientationMask {
        return .landscapeRight
    }
    
    // Restringe la rotacion del dispositivo.
    override var shouldAutorotate: Bool {
        return true
    }

    @IBAction func unwindPractica(unwindSegue: UIStoryboardSegue){
        
    }
    
    @IBAction func activaRegla(_ sender: Any) {
        if suitch.isOn {
            imgRegla.isHidden = false
        }
        else {
            imgRegla.isHidden = true
        }
    }
    

    @IBAction func rotarViga(_ sender: AnyObject) {
        var pesoIzq = 0
        var pesoDer = 0
        
        var i = 5
        
        for n in 0...4 {
            pesoIzq = pesoIzq + (pesos[n] * i)
            i = i - 1
        }
        i = 1
        for n in 5...9 {
            pesoDer = pesoDer + (pesos[n] * i)
            i = i + 1
        }
        
        print(pesoIzq)
        print(pesoDer)
        
        
        
        if pesoDer > pesoIzq {
            UIView.animate(withDuration: 1.0, animations: ({
                self.vistaBarra.transform = CGAffineTransform(rotationAngle: -100)
            }))
        }
        else if pesoDer < pesoIzq {
            UIView.animate(withDuration: 1.0, animations: ({
                self.vistaBarra.transform = CGAffineTransform(rotationAngle: 100)
            }))
        }
        else if pesoDer == pesoIzq {
            UIView.animate(withDuration: 1.0, animations: ({
                self.vistaBarra.transform = CGAffineTransform(rotationAngle: 0)
            }))
        }
    }
    
    @IBAction func resetBarra(_ sender: Any) {
        UIView.animate(withDuration: 1.0, animations: ({
            self.vistaBarra.transform = CGAffineTransform(rotationAngle: 0)
        }))
        pesos = [0,0,0,0,0,0,0,0,0,0]
        // Set Up Brick 25
        cont25 = -1
        lad0_25.isHidden = true
        lad1_25.isHidden = true
        lad2_25.isHidden = true
        lad3_25.isHidden = true
        lad4_25.isHidden = true
        lad6_25.isHidden = true
        lad7_25.isHidden = true
        lad8_25.isHidden = true
        lad9_25.isHidden = true
        lad10_25.isHidden = true
        
        // Set Up Brick 20
        cont20 = -1
        lad0_20.isHidden = true
        lad1_20.isHidden = true
        lad2_20.isHidden = true
        lad3_20.isHidden = true
        lad4_20.isHidden = true
        lad6_20.isHidden = true
        lad7_20.isHidden = true
        lad8_20.isHidden = true
        lad9_20.isHidden = true
        lad10_20.isHidden = true
        
        // Set Up Brick 15
        cont15 = -1
        lad0_15.isHidden = true
        lad1_15.isHidden = true
        lad2_15.isHidden = true
        lad3_15.isHidden = true
        lad4_15.isHidden = true
        lad6_15.isHidden = true
        lad7_15.isHidden = true
        lad8_15.isHidden = true
        lad9_15.isHidden = true
        lad10_15.isHidden = true
        
        // Set Up Brick 10
        cont10 = -1
        lad0_10.isHidden = true
        lad1_10.isHidden = true
        lad2_10.isHidden = true
        lad3_10.isHidden = true
        lad4_10.isHidden = true
        lad6_10.isHidden = true
        lad7_10.isHidden = true
        lad8_10.isHidden = true
        lad9_10.isHidden = true
        lad10_10.isHidden = true
        
        // Set Up Brick 5
        cont5 = -1
        lad0_5.isHidden = true
        lad1_5.isHidden = true
        lad2_5.isHidden = true
        lad3_5.isHidden = true
        lad4_5.isHidden = true
        lad6_5.isHidden = true
        lad7_5.isHidden = true
        lad8_5.isHidden = true
        lad9_5.isHidden = true
        lad10_5.isHidden = true
    }
    
    
//    @IBAction func printArr(_ sender: Any) {
//        print(pesos)
//    }
    
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
