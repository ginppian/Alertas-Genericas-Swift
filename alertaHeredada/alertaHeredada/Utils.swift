//
//  Utils.swift
//  alertaHeredada
//
//  Created by Gmo Ginppian on 09/01/18.
//  Copyright © 2018 BUAP. All rights reserved.
//

import UIKit

public class BaseViewController: UIViewController {
    func showAlert(_ viewController: UIViewController,
                   title: String?,
                   message: String?,
                   preferredStyle: UIAlertControllerStyle,
                   actions: UIAlertAction...
        ) {
        
        let alertController = UIAlertController(title: title,
                                                message: message, preferredStyle: preferredStyle)
        
        if actions.count == 0 {
            let noAction = UIAlertAction(title: "OK",
                                         style: .default,
                                         handler: nil)
            alertController.addAction(noAction)
        } else {
            for action in actions {
                alertController.addAction(action)
            }
        }
        viewController.present(alertController,
                               animated: true,
                               completion: nil)
    }
}

