//
//  ViagemDao.swift
//  Decodable
//
//  Created by Andre de Oliveira Couto on 05/12/21.
//

import Foundation

public class ViagemDao{
    
    public func getViagens() -> [[String: Any]]?{
       
        if let caminho = Bundle.main.url(forResource: "viagens", withExtension: "json"){
            let data = try! Data(contentsOf: caminho)
            
            do{
                let listaViagens = try JSONSerialization.jsonObject(with: data, options: .allowFragments)
                let lista = listaViagens as? [[String: Any]]
                return lista
                
           
            }catch{
                return nil
            }
            
        }
        return nil
      
        
    }
}
