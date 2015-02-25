//
//  AppDelegate.swift
//  SimpleExample
//
//  Created by Baris Sencan on 24/02/15.
//  Copyright (c) 2015 Baris Sencan. All rights reserved.
//

import UIKit

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {
  var window: UIWindow?

  func application(application: UIApplication, didFinishLaunchingWithOptions launchOptions: [NSObject: AnyObject]?) -> Bool {
    let window = UIWindow(frame: UIScreen.mainScreen().bounds)
    window.backgroundColor = UIColor.whiteColor()
    window.rootViewController = ExampleViewController()
    window.makeKeyAndVisible()
    self.window = window
    return true
  }
}

