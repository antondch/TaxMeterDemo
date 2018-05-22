//
//  AuthContract.swift
//  TaxMeterDemo
//
//  Created by dch on 21/05/2018.
//  Copyright © 2018 dch. All rights reserved.
//

import UIKit

protocol SignUpPhoneView: class{
     func showError()
}

protocol SignUpPhonePresentation {
    weak var view:SignUpPhoneView? {get set}
    var interactor: SignUpPhoneInteractorInput! {get set}
    var router: SignUpPhoneWireFrame! {get set}
    
    func viewDidLoad()
    func didTapNextBTN(withPhone phone:Int)
}

protocol SignUpPhoneInteractorInput: class{
    weak var output: SignUpPhoneInteractorOutput? {get set}
    func checkPhone(number:Int)
}

protocol SignUpPhoneInteractorOutput: class{
    func phoneDidChecked(with error:Error?)
}

protocol SignUpPhoneWireFrame: class{
    weak var viewController: UIViewController? {get set}
    
    func presentSignInSMSCode(forPhone:Int)
    
    static func assembleModule() -> UIViewController
}



