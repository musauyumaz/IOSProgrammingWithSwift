//
//  ViewController.swift
//  LayoutProject
//
//  Created by MUSA UYUMAZ on 3.01.2026.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        let myLabel = UILabel()
        myLabel.text = "Test Label"
        myLabel.textAlignment = .center
        myLabel.frame = CGRect.init(x: 10, y: 300, width: 100, height: 100)
        view.addSubview(myLabel)
    }


}

