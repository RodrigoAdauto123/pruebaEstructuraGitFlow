//
//  LoginViewController.swift
//  ProyectoEjemplo
//
//  Created by Rodrigo Alexander Adauto Ortiz on 17/06/22.
//

import UIKit

class LoginViewController: UIViewController {

    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    @IBAction func facebookButton(_ sender: Any) {
        print("Facebook")
    }
    
    @IBAction func appleButton(_ sender: Any) {
        print("Apple")
    }
    @IBAction func emailButton(_ sender: Any) {
        print("Email")
        performSegue(withIdentifier: "signInSegue", sender: nil)
        /*
        let storyboard = UIStoryboard(name: "BodyStory", bundle: nil)
        let viewControlletStory =  storyboard.instantiateInitialViewController()
        navigationController?.pushViewController(viewControlletStory!, animated: true)
        */
    }
    
    override func shouldPerformSegue(withIdentifier identifier: String, sender: Any?) -> Bool {
        print("No pueda pasar")
        return false
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        if let segueFilter = segue.identifier, segueFilter.elementsEqual("segueFacebook") {
            
        }else {
            var destino =  segue.destination as! SignInViewController
            destino.claveSecreta = "DON PEPE"
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
