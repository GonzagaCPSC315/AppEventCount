//
//  AppDelegate.swift
//  AppEventCount
//
//  Created by Gina Sprint on 10/29/20.
//  Copyright © 2020 Gina Sprint. All rights reserved.
//

import UIKit

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {
    // following this post to remove the SceneDelegate
    // https://stackoverflow.com/questions/58084127/ios-13-swift-set-application-root-view-controller-programmatically-does-not
    var window: UIWindow?
    var viewController: ViewController?


    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        // Override point for customization after application launch.
        viewController = window?.rootViewController as? ViewController
        viewController?.didLaunchCount += 1
        
        return true
    }
    
    func applicationWillResignActive(_ application: UIApplication) {
        viewController?.willResignActiveCount += 1
    }
    
    func applicationDidEnterBackground(_ application: UIApplication) {
        viewController?.didEnterBackgroundCount += 1
    }
    
    func applicationWillEnterForeground(_ application: UIApplication) {
        viewController?.willEnterForegroundCount += 1
    }
    
    func applicationDidBecomeActive(_ application: UIApplication) {
        viewController?.didBecomeActiveCount += 1
        viewController?.updateView()
    }

    func applicationWillTerminate(_ application: UIApplication) {
        viewController?.willTerminateCount += 1
    }
}

