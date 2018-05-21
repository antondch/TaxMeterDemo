//
//  TaxMeterError.swift
//  TaxMeterDemo
//
//  Created by dch on 22/05/2018.
//  Copyright © 2018 dch. All rights reserved.
//

public enum TaxMeterAPIError: Error {
    case encoding
    case decoding
    case server(message: String)
}
