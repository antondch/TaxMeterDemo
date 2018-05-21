//
//  AuthViewController.swift
//  TaxMeterDemo
//
//  Created by dch on 19/05/2018.
//  Copyright © 2018 dch. All rights reserved.
//

import Foundation
import UIKit

class SignUpPhoneViewController: UIViewController, SignUpPhoneView{
    static let storyboardName = Storyboard.signUpPhone
    
    @IBOutlet weak var phoneTF: UITextField!
    @IBOutlet weak var okBTN: UIButton!
    
    func showError() {
        
    }
    
}
