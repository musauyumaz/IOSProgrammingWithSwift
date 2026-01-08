//
//  DetailViewController.swift
//  BeautifulPlaces
//
//  Created by MUSA UYUMAZ on 8.01.2026.
//

import UIKit

class DetailViewController: UIViewController {
    
    @IBOutlet weak var imageView: UIImageView!
    @IBOutlet weak var label: UILabel!
    var selectedLandscape: Landscape?
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
        
        if let landscape = selectedLandscape{
            imageView.image = UIImage(named: landscape.image)
            label.text = landscape.name
        }
    }
    

}
