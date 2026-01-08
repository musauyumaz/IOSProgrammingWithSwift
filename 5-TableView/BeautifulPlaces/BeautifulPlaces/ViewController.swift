//
//  ViewController.swift
//  BeautifulPlaces
//
//  Created by MUSA UYUMAZ on 8.01.2026.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    

    @IBOutlet weak var tableView: UITableView!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        tableView.dataSource = self
        tableView.delegate = self
        
        var beautifulPlaces: Dictionary<String, String> = [:]
        beautifulPlaces["Sazova Parki"] = "sazova"
        beautifulPlaces["Galata Kulesi"] = "galata"
        beautifulPlaces["Kiz Kulesi"] = "kizkulesi"
        beautifulPlaces["Pamukkale"] = "pamukkale"
        beautifulPlaces["Uzungol"] = "uzungol"
        
    }

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 10
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = UITableViewCell()
        cell.textLabel?.text = "Test"
        return cell
    }
    

}

