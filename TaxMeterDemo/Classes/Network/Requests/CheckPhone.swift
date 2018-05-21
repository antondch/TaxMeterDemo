//
//  CheckPhone.swift
//  TaxMeterDemo
//
//  Created by dch on 21/05/2018.
//  Copyright © 2018 dch. All rights reserved.
//

struct CheckPhone: APIRequest {
    var resourceName: String{
        return "POST-api-Users"
    }
    
    typealias Response = UsersResponse
    
    let phone:Int
    
    init(phone:Int) {
        self.phone = phone
    }
}




