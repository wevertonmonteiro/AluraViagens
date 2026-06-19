//
//  ViagemViewModel.swift
//  AluraViagens
//
//  Created by Weverton Cosme de Castro Monteiro on 19/06/26.
//

import Foundation

enum ViagemViewModelType {
    case destaque
    case ofertas
    case internacionais
}

protocol ViagemViewModel {
    var tituloSessao: String { get }
    var tipo: ViagemViewModelType { get }
    var viagens: [Viagem] { get set }
    var numeroDeLinhas: Int { get }
}
