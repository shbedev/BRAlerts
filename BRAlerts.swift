//
//  BRAlerts.swift
//  CardScan
//
//  Created by Shemaryahu Berlinger on 14/11/2019.
//  Copyright © 2019 Shemaryahu Berlinger. All rights reserved.
//

import UIKit

enum BRAlertAction: String {
    
    case ok = "OK"
    case done = "Done"
    case close = "Close"
    case cancel = "Cancel"
    case openSettings = "Open Settings"
    
    var action: UIAlertAction {
        
        switch self {
        case .ok, .done:
            return UIAlertAction(title: self.rawValue, style: .default, handler: nil)
        case .close, .cancel:
            return UIAlertAction(title: self.rawValue, style: .cancel, handler: nil)
        case .openSettings:
            return UIAlertAction(title: self.rawValue, style: .default) { _ in
                
                // URL the app's settings
                if let url = URL(string: UIApplication.openSettingsURLString) {
                    
                    // Check if the app's URL is vaid
                    if UIApplication.shared.canOpenURL(url) {
                        
                        // Open the app's URL
                        UIApplication.shared.open(url, options: [:], completionHandler: nil)
                    }
                }
            }
        }
    }
}

class BRAlerts {
    
    static func show(
        on vc:             UIViewController,
        title:             String,
        message:           String,
        style:             UIAlertController.Style,
        delay:             Double = 0,
        actions:           [BRAlertAction] = [],
        customActions:     [UIAlertAction] = [])
    {
        // Create an instance of a UIAlertController
        let alertController = UIAlertController(title: title, message: message, preferredStyle: style)
        
        // Add the BRAlertAction actions that were passed as an argument to the alert controller
        actions.forEach { alertController.addAction($0.action) }
        
        // Add the custom actions that were passed as an argument to the alert controller
        customActions.forEach { alertController.addAction($0) }
        
        // Present the Alert Controller on the main thread with a given delay
        DispatchQueue.main.asyncAfter(deadline: .now() + delay) {
            vc.present(alertController, animated: true, completion: nil)
        }
    }
}
