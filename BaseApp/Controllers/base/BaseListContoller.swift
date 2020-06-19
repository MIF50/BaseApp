//
//  BaseListContoller.swift
//  BaseApp
//
//  Created by BeInMedia on 6/19/20.
//  Copyright © 2020 MIF50. All rights reserved.
//

import UIKit

class BaseListContoller: UICollectionViewController {
    
    init() {
        ///  required to create Controller From UICollectionViewController
        super.init(collectionViewLayout: UICollectionViewFlowLayout())
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
}
