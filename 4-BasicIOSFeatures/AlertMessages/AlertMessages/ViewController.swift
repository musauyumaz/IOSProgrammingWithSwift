//
//  ViewController.swift
//  AlertMessages
//
//  Created by MUSA UYUMAZ on 7.01.2026.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var txtEmail: UITextField!
    @IBOutlet weak var txtPassword: UITextField!
    @IBOutlet weak var txtPasswordAgain: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func btnSignUpClicked(_ sender: Any) {
        let alertMessage = UIAlertController(title: "Hata Mesajı!", message: "Email Yanlış verildi", preferredStyle: .alert)
        
        let okButton = UIAlertAction(title: "OK", style: UIAlertAction.Style.default) { UIAlertAction in
            print("OK button tıklandı")
        }
        
        alertMessage.addAction(okButton)
        
        self.present(alertMessage, animated: true, completion: nil)
    }
    
}

