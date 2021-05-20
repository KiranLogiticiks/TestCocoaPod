//
//  AlertViewControllerHandler.swift
//  iOSTemplate
//
//  Created by Logiticks LLP on 05/05/21.
//

import UIKit

class AlertViewControllerHandler: NSObject {
    func showAlertWithMessage( _ message : String, title: String = "Alert")  {
        DispatchQueue.main.async {
            if let topViewController = NavigationHelper().getCurrentTopViewController(){
                let alert  =  UIAlertController(title: title, message:message, preferredStyle: UIAlertController.Style.alert)
                alert.addAction(UIAlertAction(title: "OK", style: UIAlertAction.Style.default, handler: nil))
                topViewController.present(alert, animated: true, completion: nil)
                topViewController.isEditing  =  true
                topViewController.view.isUserInteractionEnabled  =  true
            }
        }
    }
    
    func showAlertWithMessage( _ message : String, title: String = "Alert",actionTitle:String = "OK", completion: @escaping () -> ()){
        DispatchQueue.main.async {
            if let topViewController = NavigationHelper().getCurrentTopViewController(){
                let alert  =  UIAlertController(title: title, message:message, preferredStyle: UIAlertController.Style.alert)
                let alertAction = UIAlertAction(title: actionTitle, style: UIAlertAction.Style.default, handler:{ (alert: UIAlertAction!) in completion()})
                alert.addAction(alertAction)
                topViewController.present(alert, animated: true, completion: nil)
                topViewController.isEditing  =  true
                topViewController.view.isUserInteractionEnabled  =  true
            }
        }
        
    }
    func showAlertWithMessage( _ message : String, title: String = "Alert",actionTitle1:String, completion1: @escaping () -> (),actionTitle2:String, completion2: @escaping () -> ()){
        DispatchQueue.main.async {
            if let topViewController = NavigationHelper().getCurrentTopViewController(){
                let alert  =  UIAlertController(title: title, message:message, preferredStyle: UIAlertController.Style.alert)
                let alertAction1 = UIAlertAction(title: actionTitle1, style: UIAlertAction.Style.default, handler:{ (alert: UIAlertAction!) in completion1()})
                let alertAction2 = UIAlertAction(title: actionTitle2, style: UIAlertAction.Style.default, handler:{ (alert: UIAlertAction!) in completion2()})
                alert.addAction(alertAction1)
                alert.addAction(alertAction2)
                topViewController.present(alert, animated: true, completion: nil)
                topViewController.isEditing  =  true
                topViewController.view.isUserInteractionEnabled  =  true
            }
        }
        
    }
    
    func showAlertWithMessage( _ message : String, title: String = "Alert",actionTitle1:String, completion1: @escaping () -> (),actionTitle2:String, completion2: @escaping () -> (),actionTitle3:String, completion3: @escaping () -> ()){
        if let topViewController = NavigationHelper().getCurrentTopViewController(){
            let alert  =  UIAlertController(title: title, message:message, preferredStyle: UIAlertController.Style.alert)
            let alertAction1 = UIAlertAction(title: actionTitle1, style: UIAlertAction.Style.default, handler:{ (alert: UIAlertAction!) in completion1()})
            let alertAction2 = UIAlertAction(title: actionTitle2, style: UIAlertAction.Style.default, handler:{ (alert: UIAlertAction!) in completion2()})
            let alertAction3 = UIAlertAction(title: actionTitle3, style: UIAlertAction.Style.default, handler:{ (alert: UIAlertAction!) in completion3()})
            alert.addAction(alertAction1)
            alert.addAction(alertAction2)
            alert.addAction(alertAction3)
            topViewController.present(alert, animated: true, completion: nil)
            topViewController.isEditing  =  true
            topViewController.view.isUserInteractionEnabled  =  true
        }
    }
}
