//
//  AppDelegate.swift
//  DC Test App
//
//  Created by Kunihiko Ohnaka on 2017/09/28.
//  Copyright © 2017年 Kunihiko Ohnaka. All rights reserved.
//

import UIKit
import DConnectSDK

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?

    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplicationLaunchOptionsKey: Any]?) -> Bool {
        DConnectManager.shared().start()
        
        return true
    }


}

