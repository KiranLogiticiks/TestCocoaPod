//
//  NavigationHelper.swift
//  App
//
//  Created by Logiticks LLP on 30/03/21.
//  Copyright © 2021 Logiticks LLP. All rights reserved.
//

import Foundation
import UIKit
class NavigationHelper{    
    func getCurrentTopViewController(base: UIViewController? = UIApplication.shared.keyWindow?.rootViewController) -> UIViewController? {
        if let nav = base as? UINavigationController {
            return getCurrentTopViewController(base: nav.visibleViewController)
        }
        if let tab = base as? UITabBarController {
            let moreNavigationController = tab.moreNavigationController
            
            if let top = moreNavigationController.topViewController, top.view.window != nil {
                return getCurrentTopViewController(base: top)
            } else if let selected = tab.selectedViewController {
                return getCurrentTopViewController(base: selected)
            }
        }
        if let presented = base?.presentedViewController {
            return getCurrentTopViewController(base: presented)
        }
        return base
    }
}
