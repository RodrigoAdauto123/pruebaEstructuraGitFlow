//
//  SignInViewController.swift
//  ProyectoEjemplo
//
//  Created by Rodrigo Alexander Adauto Ortiz on 17/06/22.
//

import UIKit

class SignInViewController: UIViewController {

    var claveSecreta: String?
    
    
    @IBOutlet weak var contraseniaTextField: UITextField!
    @IBOutlet weak var correoTextField: UITextField!
    
    
    @IBOutlet weak var textoLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        print(claveSecreta!)
        textoLabel.text = claveSecreta

        // Do any additional setup after loading the view.
    }
    
    @IBAction func loginButton(_ sender: Any) {
        guard let correoTextField = correoTextField.text, !correoTextField.isEmpty else{return}
        guard let contraseniaTextField = contraseniaTextField.text else {return}
                
        print("El correo es: \(correoTextField) y la contraseña es: \(contraseniaTextField)")
        let alerta = UIAlertController(title: "Credenciales", message: "El correo es: \(correoTextField) y la contraseña es: \(contraseniaTextField)", preferredStyle: .alert)
        present(alerta, animated: true, completion: nil)
        let alert = UIAlertAction(title: "OK", style: .default, handler: nil)
        alerta.addAction(alert)
        let alert2 = UIAlertAction(title: "REGRESAR", style: .cancel) { _ in
            self.navigationController?.popViewController(animated: true)
        }
        alerta.addAction(alert2)
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
