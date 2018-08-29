//
//  ViewController.swift
//  ImageView
//
//  Created by Maestro on 28/08/18.
//  Copyright © 2018 Maestro. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var imgSecuencia: UIImageView!
    @IBOutlet weak var lblTexto: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        
        imgSecuencia.image = UIImage(named:"Carta2_00000")
        
        
        var imagenes : [UIImage] = []
        imagenes.append(UIImage(named: "Carta2_00000")!)
        imagenes.append(UIImage(named: "Carta2_00001")!)
        imagenes.append(UIImage(named: "Carta2_00002")!)
        imagenes.append(UIImage(named: "Carta2_00003")!)
        imagenes.append(UIImage(named: "Carta2_00004")!)
        imagenes.append(UIImage(named: "Carta2_00005")!)
        imagenes.append(UIImage(named: "Carta2_00006")!)
        imagenes.append(UIImage(named: "Carta2_00007")!)

        imgSecuencia.animationImages = imagenes
        imgSecuencia.animationDuration = 0.2
        
        imgSecuencia.startAnimating()
        
        let miGato = Gato()
        miGato.nombre = "Don Gato"
        miGato.vidas = 6
        
        if miGato.nombre != nil {
        let nombreGato : String = miGato.nombre!
        
        lblTexto.text = nombreGato
        }
        
    }
    @IBAction func doTapGatitu(_ sender: Any) {
        lblTexto.text = "Meow Pariente!"
        if imgSecuencia.isAnimating {
            imgSecuencia.stopAnimating()
        } else {
            lblTexto.text = "Continua!"
        }
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

