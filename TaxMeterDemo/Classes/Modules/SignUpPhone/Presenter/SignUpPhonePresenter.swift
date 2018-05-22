//
//  SignUpPhonePresenter.swift
//  TaxMeterDemo
//
//  Created by dch on 22/05/2018.
//  Copyright © 2018 dch. All rights reserved.
//

class SignUpPhonePresenter: SignUpPhonePresentation {
    
    weak var view: SignUpPhoneView?
    
    var interactor: SignUpPhoneInteractorInput!
    
    var router: SignUpPhoneWireFrame!
    
    func viewDidLoad() {
        
    }
    
    func didTapNextBTN(withPhone phone: Int) {
        interactor.checkPhone(number: phone)
    }
}

extension SignUpPhonePresenter: SignUpPhoneInteractorOutput {
    func phoneDidChecked(with error: Error? = nil) {
        print(error)
    }
}
