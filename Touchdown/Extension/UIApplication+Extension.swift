//
//  UIApplication+Extension.swift
//  Touchdown
//
//  Created by Mary Moreira on 20/10/2022.
//

import UIKit

extension UIApplication {
    
    var window: UIWindow? {
        // Get connected scenes
        return UIApplication.shared.connectedScenes
            .filter({$0.activationState == .foregroundActive})

            .map({$0 as? UIWindowScene})

            .compactMap({$0})

            .first?.windows.first

    }
    
}
