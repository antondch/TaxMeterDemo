//
//  Identificable.swift
//  TaxMeterDemo
//
//  Created by dch on 21/05/2018.
//  Copyright © 2018 dch. All rights reserved.
//

protocol Identificable: class{}

extension Identificable{
    static var identifier: String {
        return String(describing: self)
    }
}
