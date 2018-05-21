//
//  UIStoryboardIdentificable.swift
//  TaxMeterDemo
//
//  Created by dch on 21/05/2018.
//  Copyright © 2018 dch. All rights reserved.
//

import UIKit

extension UIStoryboard {
    func instantiateViewController<T>() -> T where T: Identificable {
        let vc = instantiateViewController(withIdentifier: T.identifier) as! T
        return vc
    }
}

extension UIStoryboard {
    convenience init(storyboard: Storyboard, bundle: Bundle? = nil) {
        self.init(name: storyboard.filename, bundle: bundle)
    }
}

