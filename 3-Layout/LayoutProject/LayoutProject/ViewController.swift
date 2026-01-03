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
        
        let width = view.frame.size.width
        let height = view.frame.size.height
        
        let myLabel = UILabel()
        myLabel.text = "Test Label"
        myLabel.textAlignment = .center
        myLabel.frame = CGRect.init(x: width * 0.5 - width * 0.8 / 2, y: height * 0.5 - 30, width: width * 0.8, height: 100)
        view.addSubview(myLabel)
    }


}

