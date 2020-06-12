//
//  BaseTabelViewCell.swift
//  BaseApp
//
//  Created by BeInMedia on 6/12/20.
//  Copyright © 2020 MIF50. All rights reserved.
//

import UIKit

class BaseTabelViewCell<U>: UITableViewCell {
    var item: U!
    
    override func layoutSubviews() {
        super.layoutSubviews()
    }
}

extension BaseTabelViewCell: NameDescribable {}
