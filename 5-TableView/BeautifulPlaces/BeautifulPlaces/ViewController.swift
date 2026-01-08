//
//  ViewController.swift
//  BeautifulPlaces
//
//  Created by MUSA UYUMAZ on 8.01.2026.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    var beautifulPlaces: Dictionary<String, String> = [:]
    @IBOutlet weak var tableView: UITableView!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        tableView.dataSource = self
        tableView.delegate = self
        
        self.beautifulPlaces["Eskişehir - Sazova Parkı"] = "sazova"
        self.beautifulPlaces["İstanbul - Galata Kulesi"] = "galata"
        self.beautifulPlaces["İstanbul - Kız Kulesi"] = "kizkulesi"
        self.beautifulPlaces["Denizli - Pamukkale Travertenleri"] = "pamukkale"
        self.beautifulPlaces["Trabzon - Uzungöl"] = "uzungol"
        
    }

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return self.beautifulPlaces.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = UITableViewCell()
        cell.textLabel?.text = beautifulPlaces.keys.sorted()[indexPath.row]
        return cell
    }
    
    func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete {
            beautifulPlaces.removeValue(forKey: Array(beautifulPlaces.keys)[indexPath.row])
            tableView.deleteRows(at: [indexPath], with: .fade)
        }
    }
}

