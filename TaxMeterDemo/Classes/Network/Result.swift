//
//  Result.swift
//  TaxMeterDemo
//
//  Created by dch on 21/05/2018.
//  Copyright © 2018 dch. All rights reserved.
//

enum Result<T>{
    case success(T)
    case failure(Error)
}
