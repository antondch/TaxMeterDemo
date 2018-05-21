//
//  AuthWireFrame.swift
//  TaxMeterDemo
//
//  Created by dch on 19/05/2018.
//  Copyright © 2018 dch. All rights reserved.
//

import UIKit

class SignUpPhoneRouter: SignUpPhoneWireFrame{
    var viewController: UIViewController?
    
    static func assembleModule() -> UIViewController {
        let view = UIStoryboard(storyboard: SignUpPhoneViewController.storyboardName).instantiateViewController() as SignUpPhoneViewController
        
        let router = SignUpPhoneRouter()
        router.viewController = view
        
        let navController = UINavigationController(rootViewController: view)
        
        return navController
    }
}

