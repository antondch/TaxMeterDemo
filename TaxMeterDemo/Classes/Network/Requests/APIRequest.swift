//
//  APIContract.swift
//  TaxMeterDemo
//
//  Created by dch on 21/05/2018.
//  Copyright © 2018 dch. All rights reserved.
//
protocol APIRequest: Encodable{
    associatedtype Response: Decodable
    
    var resourceName: String {get}
}



