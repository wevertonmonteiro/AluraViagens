//
//  ViagemTableViewCell.swift
//  
//
//  Created by Weverton Cosme de Castro Monteiro on 19/06/26.
//

import UIKit

class ViagemTableViewCell: UITableViewCell {
    
    // MARK: - IBOUTLETS
    
    
    @IBOutlet weak var backgroundViewCell: UIView!
    @IBOutlet weak var viagemImage: UIImageView!
    @IBOutlet weak var tituloViagemLabel: UILabel!
    @IBOutlet weak var subtituloViagemLaabel: UILabel!
    @IBOutlet weak var diariaViagemLabel: UILabel!
    @IBOutlet weak var precoSemDescontoLabel: UILabel!
    @IBOutlet weak var precoViagemLabel: UILabel!
    @IBOutlet weak var statusCancelamentoViagemLabel: UILabel!
}
