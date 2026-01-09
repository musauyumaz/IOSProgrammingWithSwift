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
    var selectedHistoricalPlace : HistoricalPlace?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        historicalPlaces.append(HistoricalPlace(name: "Taj Mahal", city: "Agra ,Hindistan", image: "tajmahal"))
        historicalPlaces.append(HistoricalPlace(name: "Water Castle", city: "Montpellier ,France", image: "watercastle"))
        historicalPlaces.append(HistoricalPlace(name: "Jama Masjid", city: "Ahmedabad ,India", image: "jama"))
        historicalPlaces.append(HistoricalPlace(name: "Topkapı Sarayı", city: "İstanbul ,Türkiye", image: "topkapi"))
        historicalPlaces.append(HistoricalPlace(name: "Ayasofya", city: "İstanbul ,Türkiye", image: "ayasofya"))
        historicalPlaces.append(HistoricalPlace(name: "Sultan Ahmet Camii", city: "İstanbul ,Türkiye", image: "sultanahmet"))
        
        tableView.dataSource = self
        tableView.delegate = self
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return historicalPlaces.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell : UITableViewCell = UITableViewCell()
        let historicalPlace : HistoricalPlace = historicalPlaces[indexPath.row]
        cell.textLabel?.text = historicalPlace.name
        cell.detailTextLabel?.text = historicalPlace.city
        
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        selectedHistoricalPlace = historicalPlaces[indexPath.row]
        performSegue(withIdentifier: "toDetailsVC", sender: nil)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "toDetailsVC" {
            let destinationVC = segue.destination as! DetailsViewController
            destinationVC.choosePlace = selectedHistoricalPlace
        }
    }
    
    


}

