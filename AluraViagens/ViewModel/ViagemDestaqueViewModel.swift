//
//  ViagemDestaqueViewModel.swift
//  AluraViagens
//
//  Created by Weverton Cosme de Castro Monteiro on 19/06/26.
//

import Foundation

class ViagemDestaqueViewModel: ViagemViewModel {
    
    var tituloSessao: String {
        return "Destaques"
    }
    
    var tipo: ViagemViewModelType {
        return .destaque
    }
    
    var viagens: [Viagem]
    
    var numeroDeLinhas: Int {
        return viagens.count
    }
    
    init(viagens: [Viagem]) {
        self.viagens = viagens
    }
    
}
