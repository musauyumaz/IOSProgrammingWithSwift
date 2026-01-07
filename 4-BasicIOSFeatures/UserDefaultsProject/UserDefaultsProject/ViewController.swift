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
    
    var notesArray: [String] = []
    var timesArray: [String] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        loadData()
       
    }
    private func loadData(){
        
        notesArray = UserDefaults.standard.array(forKey: "notes") as? [String] ?? []
        timesArray = UserDefaults.standard.array(forKey: "times") as? [String] ?? []
        
        
        if notesArray.isEmpty{
            lblNote.text = "Work to be done"
        }
        else{
            lblNote.text = "Work to be done\n \(notesArray.map{ "\($0)"}.joined(separator: "\n"))"
        }
        
        if timesArray.isEmpty{
            lblTime.text = "Time to do it"
        }
        else{
            lblTime.text = "Time to do it\n \(timesArray.map{ "\($0)"}.joined(separator: "\n"))"
        }
    }

    @IBAction func btnSaveClicked(_ sender: Any) {
        notesArray.append("* \(txtNote.text ?? "")\n")
        timesArray.append("* \(txtTime.text ?? "")\n")
        
        UserDefaults.standard.set(notesArray, forKey: "notes")
        UserDefaults.standard.set(timesArray, forKey: "times")
        
        loadData()
        
        txtNote.text = ""
        txtTime.text = ""
        
    }
    @IBAction func btnDeleteClicked(_ sender: Any) {
        
        if ((UserDefaults.standard.array(forKey: "notes")?.isEmpty) == nil){
            UserDefaults.standard.removeObject(forKey: "notes")
        }
        
        if((UserDefaults.standard.array(forKey: "times")?.isEmpty) == nil){
            UserDefaults.standard.removeObject(forKey: "times")
        }
        loadData()
    }
}

