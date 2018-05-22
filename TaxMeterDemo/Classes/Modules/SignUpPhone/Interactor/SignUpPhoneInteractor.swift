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
    
    let apiClient = TaxMeterAPIClient()
//    convenience init(output:SignUpPhoneInteractorOutput, apiClient: APIClient){
//        
//    }
    
    func checkPhone(number: Int) {
        let request = CheckPhone(phone: number)
        apiClient.send(request) { [weak self] (result) in
            guard let sSelf = self else{
                return
            }
            print(result)
            switch (result){
            case .success(let userData):
                print(userData)
                sSelf.output?.phoneDidChecked(with: nil)
            case .failure(let error):
                print(error)
                sSelf.output?.phoneDidChecked(with: error)
            }
        }
    }
}
