//
//  ViewController.swift
//  UserDefaultsProject
//
//  Created by MUSA UYUMAZ on 6.01.2026.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var txtNote: UITextField!
    @IBOutlet weak var txtTime: UITextField!
    @IBOutlet weak var lblNote: UILabel!
    @IBOutlet weak var lblTime: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


    @IBAction func btnSaveClicked(_ sender: Any) {
        
        lblNote.text?.append("* \(txtNote.text ?? "")\n")
        lblTime.text?.append("* \(txtTime.text ?? "")\n")
        
    }
    @IBAction func btnDeleteClicked(_ sender: Any) {
        lblNote.text = "Work to be done: "
        lblTime.text = "Time to do it: "
    }
}

