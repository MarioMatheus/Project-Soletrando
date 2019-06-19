//
//  AppKeyboard.swift
//  Project Soletrando
//
//  Created by Mario Matheus on 19/06/19.
//  Copyright © 2019 Mario CodeHouse. All rights reserved.
//

import UIKit

class AppKeyboard {
    
    var type: UIKeyboardType = .default
    var returnKeyType: UIReturnKeyType = .default
    
    init() {
        NotificationCenter.default.addObserver(self, selector: #selector(didBegin(notification:)), name: UITextField.textDidBeginEditingNotification, object: nil)
        NotificationCenter.default.addObserver(self, selector: #selector(didEnd(notification:)), name: UITextField.textDidEndEditingNotification, object: nil)
    }
    
    @objc func didBegin(notification: Notification) {
        if let textField = notification.object as? UITextField {
            textField.keyboardType = type
            textField.returnKeyType = returnKeyType
        }    }
    
    @objc func didEnd(notification: Notification) {
        if let textField = notification.object as? UITextField {
            textField.resignFirstResponder()
        }
    }
    
}
