//
//  BaseTabBarController.swift
//  BaseApp
//
//  Created by BeInMedia on 6/19/20.
//  Copyright © 2020 MIF50. All rights reserved.
//

import UIKit

class BaseTabBarController: UITabBarController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        viewControllers = [
            createNavigationController(viewController: ViewController(), title: "Today", imageName: "ic_today"),
            createNavigationController(viewController: ViewController(), title: "Apps", imageName: "apps"),
            createNavigationController(viewController: ViewController(), title: "Search", imageName: "search"),
            createNavigationController(viewController: ViewController(), title: "Music", imageName: "music")
        ]
    }
    
    /// create NavBarController for UITabContrller
    /// - viewController:      for UINavigationController
    /// - title:     used to viewContrller Title and tabBarItem Title
    /// - imageName:     used to TabBarItem.image
    
    /// return UINavigation Controller
    fileprivate func createNavigationController(viewController: UIViewController, title: String, imageName: String)-> UIViewController {
        viewController.view.backgroundColor = .white
        viewController.navigationItem.title = title
        
        let navBarController = UINavigationController(rootViewController: viewController)
        navBarController.tabBarItem.title = title
        navBarController.tabBarItem.image = UIImage(named: imageName)
        navBarController.navigationBar.prefersLargeTitles = true
        
        return navBarController
    }
}
