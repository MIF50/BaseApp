//
//  extensions.swift
//  BaseApp
//
//  Created by BeInMedia on 6/12/20.
//  Copyright © 2020 MIF50. All rights reserved.
//

import UIKit

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

// exts UILabel
extension UILabel {
    convenience init(text: String, font: UIFont, numberOfLine: Int = 1) {
        self.init(frame: .zero)
        self.text = text
        self.font = font
        self.numberOfLines = numberOfLine
    }
}

// exts UIImageView
extension UIImageView {
    convenience init(cornerRadius: CGFloat) {
        self.init(image: nil)
        self.layer.cornerRadius = cornerRadius
        self.clipsToBounds = true
        self.contentMode = .scaleAspectFill
    }
}

// exts UIButton
extension UIButton {
    convenience init(title: String){
        self.init(type: .system)
        self.setTitle(title,for: .normal)
        
    }
}

// exts StackView
extension UIStackView {
    convenience init(arrangeViews: [UIView], customSpacing: CGFloat = 0){
        self.init(arrangedSubviews: arrangeViews)
        self.spacing = customSpacing
    }
}


// exts to open view controller in full screen
extension UIViewController {
  func presentInFullScreen(_ viewController: UIViewController,
                           animated: Bool,
                           completion: (() -> Void)? = nil) {
    viewController.modalPresentationStyle = .fullScreen
    present(viewController, animated: animated, completion: completion)
  }
}

extension UICollectionViewCell {
    static var TAG: String {
       return "\(self)"
    }
}
