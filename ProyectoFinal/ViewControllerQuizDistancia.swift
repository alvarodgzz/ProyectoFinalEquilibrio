//
//  ViewControllerQuizDistancia.swift
//  ProyectoFinal
//
//  Created by user168624 on 4/22/20.
//  Copyright © 2020 user168624. All rights reserved.
//

import UIKit


class preguntaD: NSObject {
    var respuesta : Int
    var img : UIImage!
    
    init(respuesta: Int, img: UIImage){
        self.respuesta = respuesta
        self.img = img
    }
}


class ViewControllerQuizDistancia: UIViewController {
    
    @IBOutlet weak var imgRegla: UIImageView!
    @IBOutlet weak var suitch: UISwitch!
    @IBOutlet weak var imgPregunta: UIImageView!
    @IBOutlet weak var tfRespuesta: UITextField!
    @IBOutlet weak var lblResultado: UILabel!
    @IBOutlet weak var lblErrores: UILabel!
    
    @IBAction func quitarTeclado() {
        view.endEditing(true)
    }
    
    @IBAction func btnRevisar(_ sender: Any) {
        if contador < 5 {
            if tfRespuesta.text == String(preguntas[contador].respuesta) && contador < 4 {
                lblResultado.text = "Correcto"
                contador = contador + 1
                imgPregunta.image = preguntas[contador].img
            } else if tfRespuesta.text == String(preguntas[contador].respuesta) && contador == 4 {
                lblResultado.text = "Correcto, haz completado el quiz!"
                lblErrores.text = "Errores: " + String(errores)
                contador = contador + 1
            } else {
                lblResultado.text = "Incorrecto"
                errores = errores + 1
            }
            tfRespuesta.text = ""
        }
    }
    
    var preguntas = [preguntaD]()
    var contador : Int = 0
    var errores : Int = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()

        let pregunta1 = preguntaD(respuesta: 3, img: UIImage(named: "D1")!)
        let pregunta2 = preguntaD(respuesta: 2, img: UIImage(named: "D2")!)
        let pregunta3 = preguntaD(respuesta: 3, img: UIImage(named: "D3")!)
        let pregunta4 = preguntaD(respuesta: 2, img: UIImage(named: "D4")!)
        let pregunta5 = preguntaD(respuesta: 4, img: UIImage(named: "D5")!)
        
        
        preguntas.append(pregunta1)
        preguntas.append(pregunta2)
        preguntas.append(pregunta3)
        preguntas.append(pregunta4)
        preguntas.append(pregunta5)
        
        preguntas = preguntas.shuffled()
        
        
        contador = 0
        errores = 0
        
        imgPregunta.image = preguntas[contador].img
        
        // Do any additional setup after loading the view
        //imgRegla.isHidden = true
        // suitch.isOn = false
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
