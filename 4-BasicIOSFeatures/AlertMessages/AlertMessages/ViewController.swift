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
        
        if txtEmail.text?.isEmpty == true{
            alert(title: "Hata Mesajı", message: "Email boş bırakılamaz")
        }else if txtPassword.text?.isEmpty == true{
            alert(title: "Hata Mesajı", message: "Parola boş bırakılamaz")
        }else if txtPassword.text != txtPasswordAgain.text{
            alert(title: "Hata Mesajı", message: "Parolalar Uyuşmamaktadır")
        }
        
        alert(title: "Tebrikler!", message: "Kullanıcı Oluşturuldu.")
    }
    
    func alert(title: String, message: String){
        let alertMessage = UIAlertController(title: title, message: message, preferredStyle: .alert)
        
        let okButton = UIAlertAction(title: "OK", style: UIAlertAction.Style.default) { UIAlertAction in
            print("OK button tıklandı")
        }
        
        alertMessage.addAction(okButton)
        
        self.present(alertMessage, animated: true, completion: nil)
    }
    
}

