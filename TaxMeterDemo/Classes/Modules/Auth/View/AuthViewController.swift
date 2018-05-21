//
//  AuthViewController.swift
//  TaxMeterDemo
//
//  Created by dch on 19/05/2018.
//  Copyright © 2018 dch. All rights reserved.
//

import Foundation
import UIKit

class AuthViewController: UIViewController, AuthViewInterface{
    static let storyboardName = Storyboard.auth.filename
    
    @IBOutlet weak var phoneTF: UITextField!
    @IBOutlet weak var okBTN: UIButton!
    
    
    func cleanUp() {
        
    }
    
    func showError() {
        
    }
}
