//
//  APIClient.swift
//  TaxMeterDemo
//
//  Created by dch on 21/05/2018.
//  Copyright © 2018 dch. All rights reserved.
//


typealias ResultCallback<Value> = (Result<Value>) -> Void

protocol APIClient {
    func send<T: APIRequest>( _ request: T, completion: @escaping ResultCallback<T.Response>)
}

