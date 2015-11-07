//
//  ViewController.swift
//  triangulo
//
//  Created by Laura Siliprandi on 21/10/15.
//  Copyright © 2015 Laura Abitante. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var txtLado1: UITextField!
    @IBOutlet weak var txtLado2: UITextField!
    @IBOutlet weak var txtLado3: UITextField!

    override func viewDidLoad() {
        super.viewDidLoad()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }

    @IBAction func btnVerificar(sender: AnyObject) {
        
        var formaOuNao: String
        var tipo: String
        let lado1 = (txtLado1.text! as NSString).floatValue
        let lado2 = (txtLado2.text! as NSString).floatValue
        let lado3 = (txtLado3.text! as NSString).floatValue
        
        if(lado1 < lado2 + lado3 && lado2 < lado1 + lado3 && lado3 < lado1 + lado2){
            formaOuNao = "Forma um triângulo:"
            
            if(lado1 == lado2 && lado2 == lado3){
                tipo = "Equilátero\n"
            }
            else if(lado1 == lado2 || lado2 == lado3 || lado1 == lado3){
                tipo = "Isósceles\n"
            }
            else{
                tipo = "Escaleno\n"
            }
        }
        else{
            formaOuNao = "Não forma um triângulo!"
            tipo = "Tente novamente."
        }
        
        let alerta = UIAlertController(title: formaOuNao, message: tipo, preferredStyle: UIAlertControllerStyle.Alert)
        
        let btnOk = UIAlertAction(title: "Ok", style: UIAlertActionStyle.Default, handler: nil)
       
        alerta.addAction(btnOk)
        self.showDetailViewController(alerta, sender: nil)
        
        txtLado1.text = ""
        txtLado2.text = ""
        txtLado3.text = ""
        
    }
    

}

