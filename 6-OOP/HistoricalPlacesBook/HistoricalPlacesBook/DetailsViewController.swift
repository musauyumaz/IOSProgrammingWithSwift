//
//  DetailsViewController.swift
//  HistoricalPlacesBook
//
//  Created by MUSA UYUMAZ on 9.01.2026.
//

import UIKit

class DetailsViewController: UIViewController {

    @IBOutlet weak var imageView: UIImageView!
    @IBOutlet weak var lblHistoricalPlace: UILabel!
    @IBOutlet weak var lblCity: UILabel!
    
    var choosePlace : HistoricalPlace?
    
    override func viewDidLoad() {
        super.viewDidLoad()

        imageView.image = UIImage(named: choosePlace?.image ?? "ayasofya")
        lblHistoricalPlace.text = choosePlace?.name
        lblCity.text = choosePlace?.city
    }

}
