//
//  ViewController.swift
//  alertaHeredada
//
//  Created by Gmo Ginppian on 09/01/18.
//  Copyright © 2018 BUAP. All rights reserved.
//

import UIKit

class ViewController: BaseViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    
    // MARK: - Actions
    
    @IBAction func someAction(_ sender: UIButton) {
        
        let okAction = UIAlertAction(title: "OK",
                                     style: .default) { (action) in
            print("action: \(action)")
            
            for _ in 1...3 {
                print("Mexi puto 🇲🇽")
            }
        }
        let cancelAction = UIAlertAction(title: "Cancel",
                                         style: .cancel) { (action) in
            print("action: \(action)")
            print("Se cancela todo, respetemos el movimiento LGBT 🏳️‍🌈🏳️‍🌈🏳️‍🌈")
        }
        showAlert(self, title: "🚨 Peligro",
                  message: "¿Mexi es PUTO?",
                  preferredStyle: .alert,
                  actions: okAction, cancelAction)
        
    }
}

