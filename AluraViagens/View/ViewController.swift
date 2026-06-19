//
//  ViewController.swift
//  AluraViagens
//
//  Created by Weverton Cosme de Castro Monteiro on 15/06/26.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var viagensTableview: UITableView!
    override func viewDidLoad() {
        super.viewDidLoad()
        self.configuraTableView()
        view.backgroundColor = UIColor(red: 30/255, green: 59/255, blue: 119/255, alpha: 1)
    }
    
    private func configuraTableView() {
        viagensTableview.register(UINib(nibName: "ViagemTableViewCell", bundle: nil), forCellReuseIdentifier: "ViagemTableViewCell")
        viagensTableview.dataSource = self
        viagensTableview.delegate = self
    }
}

extension ViewController: UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 10
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let celulaViagem = tableView.dequeueReusableCell(withIdentifier: "ViagemTableViewCell") as? ViagemTableViewCell else {
            fatalError("Error to create ViagemTableViewCell")
        }
        return celulaViagem
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
//        return 400
        guard let celulaViagem = tableView.dequeueReusableCell(withIdentifier: "ViagemTableViewCell") as? ViagemTableViewCell else {
            fatalError("Error to create ViagemTableViewCell")
        }
        return celulaViagem.frame.height
    }
    
}

extension ViewController: UITableViewDelegate {
    func tableView(_ tableView: UITableView, viewForHeaderInSection section: Int) -> UIView? {
        let headerView = Bundle.main.loadNibNamed("HomeTableViewHeader", owner: self, options: nil)?.first as? HomeTableViewHeader
        headerView?.configurarView()
        return headerView
    }
    
    func tableView(_ tableView: UITableView, heightForHeaderInSection section: Int) -> CGFloat {
        return 300
    }
}
