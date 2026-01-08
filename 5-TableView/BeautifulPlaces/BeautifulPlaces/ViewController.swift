//
//  ViewController.swift
//  BeautifulPlaces
//
//  Created by MUSA UYUMAZ on 8.01.2026.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    var landscapes = [Landscape]()
    @IBOutlet weak var tableView: UITableView!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        tableView.dataSource = self
        tableView.delegate = self
        
        landscapes.append(Landscape(name: "Sazova Parkı", city: "Eskişehir", image: "sazova"))
        landscapes.append(Landscape(name: "Galata Kulesi", city: "İstanbul", image: "galata"))
        landscapes.append(Landscape(name: "Kız Kulesi", city: "İstanbul", image: "kizkulesi"))
        landscapes.append(Landscape(name: "Pamukkale Travertenleri", city: "Denizli", image: "pamukkale"))
        landscapes.append(Landscape(name: "Uzungöl", city: "Trabzon", image: "uzungol"))
    }

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return self.landscapes.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = UITableViewCell()
        let landscape = landscapes[indexPath.row]
        cell.textLabel?.text = "\(landscape.name), \(landscape.city)"
        return cell
    }
    
    func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete {
            landscapes.remove(at: indexPath.row)
            tableView.deleteRows(at: [indexPath], with: .fade)
        }
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
       performSegue(withIdentifier: "toDetailViewController", sender: nil)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "toDetailViewController" {
            let destinationVC = segue.destination as! DetailViewController
            destinationVC.selectedLandscape = landscapes[tableView.indexPathForSelectedRow!.row]
        }
    }
}

struct Landscape{
    let name: String
    let city: String
    let image: String
}

