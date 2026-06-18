//
//  HomeTableViewHeader.swift
//  AluraViagens
//
//  Created by Weverton Cosme de Castro Monteiro on 16/06/26.
//

import UIKit

class HomeTableViewHeader: UIView {

    // MARK: IBOutlets

    
    @IBOutlet weak var tituloLabel: UILabel!
    @IBOutlet weak var headerView: UIView!
    
    @IBOutlet weak var bannerImageView: UIImageView!
    
    @IBOutlet weak var bannerView: UIView!
    func configurarView() {
        headerView.backgroundColor = UIColor(red: 30.0/255, green: 59.0/255, blue: 119.0/255, alpha: 1)
        bannerView.layer.cornerRadius = 10
        bannerView.layer.masksToBounds = true
        
        headerView.layer.cornerRadius = 100
        headerView.layer.maskedCorners = [.layerMinXMaxYCorner, .layerMaxXMaxYCorner]
    }
}
