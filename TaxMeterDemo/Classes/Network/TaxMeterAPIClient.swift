//
//  TaxMeterAPIClient.swift
//  TaxMeterDemo
//
//  Created by dch on 21/05/2018.
//  Copyright © 2018 dch. All rights reserved.
//

import Foundation
class TaxMeterAPIClient: APIClient {
    private static let baseUrl = "https://apps.startcasco.ru/Help/Api/"
    
    func send<T:APIRequest>(_ request: T, completion: @escaping ResultCallback<T.Response>){
        
        guard let url = URL(string: "\(baseUrl)\(T.resourceName)") else{
            fatalError("cannot create url from string")
        }
        
        var urlRequest = URLRequest(url: url)
        urlRequest.setValue("application/x-www-form-urlencoded", forHTTPHeaderField: "Content-Type")
        urlRequest.httpMethod = "POST"
        guard let body = try? JSONEncoder().encode(request) else{
            return
        }
        urlRequest.httpBody = body
        
        let task = URLSession.shared.dataTask(with: urlRequest) { (data, response, error) in
            if let data = data{
                do{
                    let taxMeterResponse = try JSONDecoder().decode(T.Response.self, from: data)
                    
                    if 
                    
                    completion(.success(taxMeterResponse))
                    
                }catch{
                    completion(.failure(error))
                }
            }
        }
        
        task.resume()
    }
    
}
