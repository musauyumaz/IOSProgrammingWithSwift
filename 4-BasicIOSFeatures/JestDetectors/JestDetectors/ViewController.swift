//
//  ViewController.swift
//  JestDetectors
//
//  Created by MUSA UYUMAZ on 7.01.2026.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var label: UILabel!
    @IBOutlet weak var imageView: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        self.imageView.isUserInteractionEnabled = true

        let gestureRecognizer = UITapGestureRecognizer(target: self, action: #selector(changeImage))
        
        self.imageView.addGestureRecognizer(gestureRecognizer)
    }
    
    @objc func changeImage(){
        if self.imageView.image == UIImage(named: "1"){
            self.imageView.image = UIImage(named: "2")
            self.label.text = "XCode"
        }
        else {
            self.imageView.image = UIImage(named: "1")
            self.label.text = "Display"
        }
        return
    }


}

