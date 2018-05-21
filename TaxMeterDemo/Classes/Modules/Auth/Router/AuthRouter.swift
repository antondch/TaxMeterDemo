//
//  AuthWireFrame.swift
//  TaxMeterDemo
//
//  Created by dch on 19/05/2018.
//  Copyright © 2018 dch. All rights reserved.
//

import UIKit

class AuthRouter: AuthWireFrame{
    var viewController: UIViewController?
    
    static func assembleModule() -> UIViewController {
        let view = UIStoryboard(name: AuthViewController.storyboardName, bundle: nil).instantiateViewController() as AuthViewController
        
        let router = AuthRouter()
        router.viewController = view
        
        let navController = UINavigationController(rootViewController: view)
        
        return navController
    }
}

