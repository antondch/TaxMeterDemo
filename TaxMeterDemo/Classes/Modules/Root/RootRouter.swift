//
//  RootWireFrame.swift
//  TaxMeterDemo
//
//  Created by dch on 19/05/2018.
//  Copyright © 2018 dch. All rights reserved.
//

import UIKit

class RootRouter: RootWireFrame{
    func presentSignUpPhoneScreen(in window: UIWindow) {
        window.makeKeyAndVisible()
        window.rootViewController = SignUpPhoneRouter.assembleModule()
    }
}
