//
//  ViewController.swift
//  AluraViagens
//
//  Created by Weverton Cosme de Castro Monteiro on 15/06/26.
//

import UIKit

class ViewController: UIViewController, UITableViewDataSource {

    @IBOutlet weak var viagensTableview: UITableView!
    override func viewDidLoad() {
        super.viewDidLoad()
        viagensTableview.dataSource = self
    }
}

extension ViewController: UITableViewDelegate {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 10
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = UITableViewCell(style: .default, reuseIdentifier: nil)
        
        cell.textLabel?.text = "viagem \(indexPath.row)"
        return cell
    }
}
