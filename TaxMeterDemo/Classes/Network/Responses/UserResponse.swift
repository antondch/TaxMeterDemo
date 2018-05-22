//
//  Response.swift
//  TaxMeterDemo
//
//  Created by dch on 21/05/2018.
//  Copyright © 2018 dch. All rights reserved.
//


struct AccessToken :Decodable{
    let access_token: String?
}

struct Info :Decodable{
    let Header: String?
    let Message: String?
}

struct UsersResponse: Decodable{
    let accesstoken:AccessToken?
    let info: Info?
}
