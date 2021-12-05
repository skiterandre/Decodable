//
//  ViewController.swift
//  Decodable
//
//  Created by Andre de Oliveira Couto on 05/12/21.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        guard let json = ViagemDao().getViagens() else {return}
        guard let jsonData = Viagem.converteListaParaData(json) else {return}
        let listaViagem = Viagem.decodificaViagem(jsonData)
        for viagem in listaViagem{
            print(viagem.nome)
        }
        
        
    }


}

