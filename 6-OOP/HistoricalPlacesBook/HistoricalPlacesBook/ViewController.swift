//
//  ViewController.swift
//  HistoricalPlacesBook
//
//  Created by MUSA UYUMAZ on 9.01.2026.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    @IBOutlet weak var tableView: UITableView!
    var historicalPlaces : [HistoricalPlace] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        historicalPlaces.append(HistoricalPlace(name: "Taj Mahal", city: "Agra ,Hindistan", image: "tajMahal"))
        historicalPlaces.append(HistoricalPlace(name: "Water Castle", city: "Montpellier ,France", image: "waterCastle"))
        historicalPlaces.append(HistoricalPlace(name: "Jama Masjid", city: "Ahmedabad ,India", image: "jamaMasjit"))
        historicalPlaces.append(HistoricalPlace(name: "Topkapı Sarayı", city: "İstanbul ,Türkiye", image: "topkapi"))
        historicalPlaces.append(HistoricalPlace(name: "Ayasofya", city: "İstanbul ,Türkiye", image: "ayasofya"))
        historicalPlaces.append(HistoricalPlace(name: "Sultan Ahmet Camii", city: "İstanbul ,Türkiye", image: "sultanahmet"))
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        <#code#>
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        <#code#>
    }
    


}

