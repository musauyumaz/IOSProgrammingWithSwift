//
//  SecondViewController.swift
//  ViewControllerProject
//
//  Created by MUSA UYUMAZ on 5.01.2026.
//

import UIKit

class SecondViewController: UIViewController {

    @IBOutlet weak var secondLabel: UILabel!
    @IBOutlet weak var lblFoundPassword: UILabel!
    
    var givenPassword = ""
    override func viewDidLoad() {
        super.viewDidLoad()

        lblFoundPassword.text = lblFoundPassword.text?.appending(givenPassword)
        // Do any additional setup after loading the view.
    }

}
