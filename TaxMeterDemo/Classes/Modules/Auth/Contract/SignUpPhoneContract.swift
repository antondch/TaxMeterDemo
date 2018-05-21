//
//  AuthContract.swift
//  TaxMeterDemo
//
//  Created by dch on 21/05/2018.
//  Copyright © 2018 dch. All rights reserved.
//

import UIKit

protocol SignUpPhoneWireFrame: class{
    weak var viewController: UIViewController? {get set}
    
    static func assembleModule() -> UIViewController
}

protocol SignUpPhoneView{
     func showError()
}

protocol SignUpPhoneInteractorInput: class{
    func checkPhone(number:Int)
}

protocol SignUpPhoneInteractorOutput: class{
    func phoneDidChecked(with error:Error?)
}
