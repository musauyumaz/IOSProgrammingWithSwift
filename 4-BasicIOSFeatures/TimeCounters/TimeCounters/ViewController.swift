//
//  ViewController.swift
//  TimeCounters
//
//  Created by MUSA UYUMAZ on 7.01.2026.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var lblTime: UILabel!
    var timer = Timer()
    var remainingTime = 15
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        lblTime.text = "Zaman: \(remainingTime)"
        
    }

    @IBAction func btnStartClicked(_ sender: Any) {
        timer = Timer.scheduledTimer(timeInterval: 1, target: self, selector: #selector(timerFunction), userInfo: nil, repeats: true)
    }
    
    @objc func timerFunction() {
        lblTime.text = "Zaman: \(remainingTime)"
        if remainingTime == 0 {
            lblTime.text = "Süre Bitti"
            timer.invalidate()
            remainingTime = 15
        }
        remainingTime -= 1
    }
    
}

