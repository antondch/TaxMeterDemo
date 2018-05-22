//
//  SignUpPhoneInteractor.swift
//  TaxMeterDemo
//
//  Created by dch on 21/05/2018.
//  Copyright © 2018 dch. All rights reserved.
//

import Foundation



class SignUpPhoneInteractor: SignUpPhoneInteractorInput {
    weak var output: SignUpPhoneInteractorOutput?
    
    let apiClient: APIClient!
//    convenience init(output:SignUpPhoneInteractorOutput, apiClient: APIClient){
//        
//    }
    
    init(with apiClient:APIClient){
        self.apiClient = apiClient
    }
    
    func checkPhone(number: Int) {
        let request = CheckPhone(phone: number)
        apiClient.send(request) { (result) in
            print(result)
            switch (result){
            case .success(let userData):
                print(userData)
                self.output?.phoneDidChecked(with: nil)
            case .failure(let error):
                print(error)
                self.output?.phoneDidChecked(with: error)
            }
        }
    }
}
