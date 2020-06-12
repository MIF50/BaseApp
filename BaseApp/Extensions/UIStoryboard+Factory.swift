//
//  UIStoryboard+Factory.swift
//  BaseApp
//
//  Created by BeInMedia on 6/12/20.
//  Copyright © 2020 MIF50. All rights reserved.
//

import UIKit

extension UIStoryboard {

    static var defaultStoryboard: UIStoryboard {
        return  UIStoryboard(name: "Main", bundle: nil)
    }

    func instantiateViewController<T>(ofType type: T.Type) -> T {
        guard let instance = instantiateViewController(withIdentifier: String(describing: type)) as? T else {
            fatalError("Oops!")
        }
        return instance
    }
}
