//
//  AppDelegate.swift
//  AppAnatomy
//
//  Created by Arun Kudiyal on 27/09/23.
//

import UIKit

@main
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?
    
    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        // Override point for customization after application launch.
        print("Executing didFinishLaunchingWithOptions()")
        return true
    }

    func applicationDidBecomeActive(_ application: UIApplication) {
        // When app comes to the foreground
        // INACTIVE ---> ACTIVE
        print( "applicationDidBecomeActive()" )
    }
    
    func applicationWillResignActive(_ application: UIApplication) {
        // When the app is on the journey to be inactive
        // ACTIVE ---> INACTIVE
        print( "applicationWillResignActive()" )
    }
    
    func applicationDidEnterBackground(_ application: UIApplication) {
        // When the app is inactive
        print( "applicationDidEnterBackground()" )
    }
    
    func applicationWillEnterForeground(_ application: UIApplication) {
        // When the app is on the journey to be active
        print( "applicationWillEnterForeground()" )
    }
    
    func applicationWillTerminate(_ application: UIApplication) {
        print( "applicationWillTerminate()" )
    }

    func application(_ application: UIApplication,
       configurationForConnecting connectingSceneSession:
       UISceneSession, options: UIScene.ConnectionOptions) ->
       UISceneConfiguration {
        // Called when a new scene session is being created.
        // Use this method to select a configuration to create the new scene with.
        return UISceneConfiguration(name: "Default Configuration",
           sessionRole: connectingSceneSession.role)
    }
    
    func application(_ application: UIApplication,
       didDiscardSceneSessions sceneSessions: Set<UISceneSession>) {
        // Called when the user discards a scene session.
        // If any sessions were discarded while the application was not running, this will be called shortly after application:didFinishLaunchingWithOptions.
        // Use this method to release any resources that were specific to the discarded scenes, as they will not return.
    }
    
    
}

