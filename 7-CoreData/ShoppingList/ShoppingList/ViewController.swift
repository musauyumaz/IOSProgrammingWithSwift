//
//  ViewController.swift
//  ShoppingList
//
//  Created by MUSA UYUMAZ on 10.01.2026.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var tableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        navigationController?.navigationBar.topItem?.rightBarButtonItem = UIBarButtonItem(barButtonSystemItem: .add, target: self, action: #selector(addButtonTapped))
    }
    
    @objc func addButtonTapped() {
        performSegue(withIdentifier: "toDetailsVC", sender: nil)
    }


}

