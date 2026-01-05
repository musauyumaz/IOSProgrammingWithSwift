//
//  ViewController.swift
//  ViewControllerProject
//
//  Created by MUSA UYUMAZ on 5.01.2026.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var txtPassword: UITextField!
    @IBOutlet weak var firstLabel: UILabel!
    @IBOutlet weak var btnCheckIt: UIButton!
    
    var receivedPassword = ""
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func btnCheckItClicked(_ sender: Any) {
        
        receivedPassword = txtPassword.text!
        
        if receivedPassword == "1234"{
            performSegue(withIdentifier: "toSecondViewController", sender: nil)
        }else{
            firstLabel.text = "Wrong Password"
        }
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        if segue.identifier == "toSecondViewController"{
            let destinationViewController = segue.destination as! SecondViewController
            destinationViewController.givenPassword = receivedPassword
        }
    }
    
}

