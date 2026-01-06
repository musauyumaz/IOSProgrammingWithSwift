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
        print("viewDidLoad")
        txtPassword.text = ""
        // Do any additional setup after loading the view.
    }
    
    override func viewDidAppear(_ animated: Bool) {
        print("viewDidAppear")
    }

    override func viewDidDisappear(_ animated: Bool) {
        print("viewDidDisappear")
    }
    
    override func viewWillAppear(_ animated: Bool) {
        print("viewWillAppear")
    }
    
    override func viewWillDisappear(_ animated: Bool) {
        print("viewWillDisappear")
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

