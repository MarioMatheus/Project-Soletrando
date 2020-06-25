//
//  SceneDelegate.swift
//  Project Soletrando
//
//  Created by Mario Matheus on 12/06/19.
//  Copyright © 2019 Mario CodeHouse. All rights reserved.
//

import UIKit
import SwiftUI

class SceneDelegate: UIResponder, UIWindowSceneDelegate {

    var window: UIWindow?


    func scene(_ scene: UIScene, willConnectTo session: UISceneSession, options connectionOptions: UIScene.ConnectionOptions) {
        if let windowScene = scene as? UIWindowScene {
            let window = UIWindow(windowScene: windowScene)
            window.rootViewController = UIHostingController(rootView: HomeView())
            self.window = window
            window.makeKeyAndVisible()
        }
    }


}

