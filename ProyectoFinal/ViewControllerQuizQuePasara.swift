//
//  ViewControllerQuizQuePasara.swift
//  ProyectoFinal
//
//  Created by user168624 on 4/22/20.
//  Copyright © 2020 user168624. All rights reserved.
//

import UIKit

class preguntaQP: NSObject {
    var respuesta : Int
    var img : UIImage!
    var numero : Int
    
    init(respuesta: Int, img: UIImage, numero: Int){
        self.respuesta = respuesta
        self.img = img
        self.numero = numero
    }
}


class ViewControllerQuizQuePasara: UIViewController {
    
    @IBOutlet weak var imgRegla: UIImageView!
    @IBOutlet weak var suitch: UISwitch!
    @IBOutlet weak var resultado: UILabel!
    @IBOutlet weak var imgPregunta: UIImageView!
    @IBOutlet weak var lbErrores: UILabel!
    
    var preguntas = [preguntaQP]()
    var contador : Int = 0
    var errores : Int = 0
    
    @IBAction func btnA(_ sender: Any) {
        if contador < 5 {
            if 1 == preguntas[contador].respuesta && contador < 4 {
                  resultado.text = "Correcto"
                  contador = contador + 1
                  imgPregunta.image = preguntas[contador].img
            } else if 1 == preguntas[contador].respuesta && contador == 4 {
                resultado.text = "Correcto, haz completado el quiz!"
                lbErrores.text = "Errores: " + String(errores)
                contador = contador + 1
            }
            else {
                resultado.text = "Incorrecto"
                errores = errores + 1
            }
        }
    }
    @IBAction func btnB(_ sender: Any) {
        if contador < 5 {
            if 2 == preguntas[contador].respuesta && contador < 4 {
                  resultado.text = "Correcto"
                  contador = contador + 1
                  imgPregunta.image = preguntas[contador].img
            } else if 2 == preguntas[contador].respuesta && contador == 4 {
                resultado.text = "Correcto, haz completado el quiz!"
                lbErrores.text = "Errores: " + String(errores)
                contador = contador + 1
            }
            else {
                resultado.text = "Incorrecto"
                errores = errores + 1
            }
        }
    }
    @IBAction func btnC(_ sender: Any) {
        if contador < 5 {
            if 3 == preguntas[contador].respuesta && contador < 4 {
                  resultado.text = "Correcto"
                  contador = contador + 1
                  imgPregunta.image = preguntas[contador].img
            } else if 3 == preguntas[contador].respuesta && contador == 4 {
                resultado.text = "Correcto, haz completado el quiz!"
                lbErrores.text = "Errores: " + String(errores)
                contador = contador + 1
            }
            else {
                resultado.text = "Incorrecto"
                errores = errores + 1
            }
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let pregunta1 = preguntaQP(respuesta: 3, img: UIImage(named:"QP1")!, numero: 1)
        let pregunta2 = preguntaQP(respuesta: 1, img: UIImage(named:"QP2")!, numero: 2)
        let pregunta3 = preguntaQP(respuesta: 3, img: UIImage(named:"QP3")!, numero: 3)
        let pregunta4 = preguntaQP(respuesta: 2, img: UIImage(named:"QP4")!, numero: 4)
        let pregunta5 = preguntaQP(respuesta: 1, img: UIImage(named:"QP5")!, numero: 5)

        preguntas.append(pregunta1)
        preguntas.append(pregunta2)
        preguntas.append(pregunta3)
        preguntas.append(pregunta4)
        preguntas.append(pregunta5)
        
        preguntas = preguntas.shuffled()
        
        contador = 0
        errores = 0
        imgPregunta.image = preguntas[contador].img

        
        //imgRegla.isHidden = true
        //suitch.isOn = false
        
    }
    
    @IBAction func activaRegla(_ sender: UISwitch) {
        if suitch.isOn {
            imgRegla.isHidden = false
        }
        else {
            imgRegla.isHidden = true
        }
    }
    
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
