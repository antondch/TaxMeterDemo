//
//  AppDelegate.swift
//  TaxMeterDemo
//
//  Created by dch on 18/05/2018.
//  Copyright © 2018 dch. All rights reserved.
//

import UIKit

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?

    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplicationLaunchOptionsKey: Any]?) -> Bool {
        window = UIWindow(frame: UIScreen.main.bounds)
        if let window = window{
            RootRouter().presentSignUpPhoneScreen(in: window)
        }
        return true
    }
}

