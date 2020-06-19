//
//  Service.swift
//  BaseApp
//
//  Created by BeInMedia on 6/19/20.
//  Copyright © 2020 MIF50. All rights reserved.
//

import UIKit

class Service {
    
    static var share = Service() // singleton
    
    // generic is to declare the type later on ...
    fileprivate func fetchGenericJSONData<T: Decodable>(stringUrl: String, complition: @escaping (Result<T,Error>)->()){
        guard let url = URL(string: stringUrl) else { return }
        URLSession.shared.dataTask(with: url){ data, resp, err in
            // failure case
            if let err = err {
                complition(.failure(err))
            }
            // success case
            guard let data = data else { return }
            do {
                let resultData = try JSONDecoder().decode(T.self, from: data)
                complition(.success(resultData))
            } catch let errorJson {
                complition(.failure(errorJson))
            }
            
        }.resume()  // fires off the request ....
        
    }


}
