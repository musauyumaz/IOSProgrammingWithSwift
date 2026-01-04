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
        
        //Label
        let myLabel = UILabel()
        myLabel.text = "Test Label"
        myLabel.textAlignment = .center
        myLabel.frame = CGRect.init(x: width * 0.5 - width * 0.8 / 2, y: height * 0.5 - 30, width: width * 0.8, height: 100)
        view.addSubview(myLabel)
        
        //Button
        let myButton = UIButton()
        myButton.setTitle("Benim Button", for: UIControl.State.normal)
        myButton.setTitleColor(UIColor.blue, for: .normal)
        myButton.frame = CGRect(x: width * 0.5 - 100, y: height * 0.65, width: 200, height: 100)
        view.addSubview(myButton)
        
        myButton.addTarget(self, action: #selector(ViewController.myFunction), for: UIControl.Event.touchUpInside)
        
    }
    
    @objc func myFunction() {
        print("Kullanıcı button'a tıkladı")
    }


}

