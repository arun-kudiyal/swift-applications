//
//  AppDelegate.swift
//  ApplicationArchitecture
//
//  Created by Arun Kudiyal on 26/09/23.
//

import UIKit

// AppDelegate is a sub-class of NSObject and conforms to UIApplicationDelegate
class AppDelegate: NSObject, UIApplicationDelegate {
    var window: UIWindow?
    
    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions:
       [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        print("Hey... I got called first | didFinishLaunchingWithOptions()")
        
        // window = UIWindow(frame: CGRect(x: 0, y: 0, width: 200, height: 200))
        //        window = UIWindow(frame: UIScreen.main.bounds)
        //        window?.backgroundColor = UIColor.red
        //       // window?.rootViewController = UIViewController()
        //
        //
        //        // Now we create the ref of the VC and add it as the rooot
        //        //        let vc = ViewController()
        //        //        window?.rootViewController = vc
        //
        //        // create a view and add to my window as a sub-view
        //        // window?.addSubview(createView())
        //        // window?.addSubview(createLabel())
        //        //        if let view = loadView(name: "View") {
        //        //            window?.addSubview(view)
        //        //        }
        //
        //        // Starting the app from ThirdViewController
        //        if let thirdVC = Bundle.main.loadNibNamed("ThirdViewController", owner: nil)?.first as? ThirdViewController {
        //            window?.rootViewController = thirdVC
        //        }
        //
        //        window?.makeKeyAndVisible()
        return true
    }
    
    func applicationDidEnterBackground(_ application: UIApplication) {
        print("Application went to Background!")
    }
    
    func createView() -> UIView {
        let view = UIView(frame: UIScreen.main.bounds)
        view.backgroundColor = UIColor.white
        return view
    }
    
    func createLabel() -> UILabel {
        let label = UILabel(frame: CGRect(x: 100, y: 100, width: 300, height: 75))
        label.backgroundColor = UIColor.gray
        label.text = "Hello, I am a Label"
        label.textAlignment = .center
        return label
    }
    
    func loadView(name: String) -> UIView? {
        if let objArray = Bundle.main.loadNibNamed(name, owner: nil) {
            if let view = objArray.first as? UIView {
                return view
            }
        }
        return nil
    }
}
