//
//  AuthWireFrame.swift
//  TaxMeterDemo
//
//  Created by dch on 19/05/2018.
//  Copyright © 2018 dch. All rights reserved.
//

import UIKit

class SignUpPhoneRouter: SignUpPhoneWireFrame{
    
    weak var viewController: UIViewController?
    
    static func assembleModule() -> UIViewController {
        let view = UIStoryboard(storyboard: SignUpPhoneViewController.storyboardName).instantiateViewController() as SignUpPhoneViewController
        let router = SignUpPhoneRouter()
        let presenter = SignUpPhonePresenter()
        let interactor = SignUpPhoneInteractor()
        
        let navController = UINavigationController(rootViewController: view)
        
        view.presenter = presenter
        
        presenter.view = view
        presenter.router = router
        presenter.interactor = interactor
        
        interactor.output = presenter
        
        router.viewController = view
        
        return navController
    }
    
    func presentSignInSMSCode(forPhone: Int) {
        //do nothing
    }
}

