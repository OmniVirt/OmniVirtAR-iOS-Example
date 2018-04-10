//
//  AppDelegate.swift
//  OmniVirtAR Sample App
//
//  Copyright © 2018 OmniVirt. All rights reserved.
//

import UIKit
import OmniVirtAR

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?

    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplicationLaunchOptionsKey: Any]?) -> Bool {
        return true
    }

    func application(_ app: UIApplication, open url: URL, options: [UIApplicationOpenURLOptionsKey : Any] = [:]) -> Bool {
        return OVARLauncher.shared.openURL(url, options)
    }
}

