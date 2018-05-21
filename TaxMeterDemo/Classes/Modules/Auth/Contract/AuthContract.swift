//
//  AuthContract.swift
//  TaxMeterDemo
//
//  Created by dch on 21/05/2018.
//  Copyright © 2018 dch. All rights reserved.
//

import UIKit

protocol AuthWireFrame: class{
    weak var viewController: UIViewController? {get set}
    
    static func assembleModule() -> UIViewController
}

protocol AuthView{
    func cleanUp()
    func showError()
}
