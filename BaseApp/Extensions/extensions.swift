//
//  extensions.swift
//  BaseApp
//
//  Created by BeInMedia on 6/12/20.
//  Copyright © 2020 MIF50. All rights reserved.
//

import Foundation

protocol NameDescribable {
    var typeName: String { get }
    static var typeName: String { get }
}

extension NameDescribable {
    var typeName: String {
        return String(describing: type(of: self))
    }

    static var typeName: String {
        return String(describing: self)
    }
}
