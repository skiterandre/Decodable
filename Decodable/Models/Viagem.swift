//
//  Viagem.swift
//  Decodable
//
//  Created by Andre de Oliveira Couto on 05/12/21.
//

import Foundation

public class Viagem: NSObject, Decodable{
    
    enum CodingKeys: String, CodingKey{
        case id, nome, preco, dataLegal = "data_legal"
    }
    
    let id: Int
    let nome: String
    let preco: String
    let dataLegal:String
    
    init(_ id:Int,_ nome:String,_ preco:String,_ dataLegal:String){
        self.id = id
        self.nome = nome
        self.preco = preco
        self.dataLegal = dataLegal
    
    }
    
    class func converteListaParaData(_ json:[[String:Any]]) -> Data?{
        return try? JSONSerialization.data(withJSONObject: json, options: [])
     
    }
    
    class func decodificaViagem(_ jsonData:Data) -> [Viagem]{
        do{
            return try JSONDecoder().decode([Viagem].self,from:jsonData)
        }catch{
            print(error.localizedDescription)
        }
        return []
    }
    
    
}
