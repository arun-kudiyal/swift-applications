//
//  main.swift
//  ApplicationArchitecture
//
//  Created by Arun Kudiyal on 26/09/23.
//

import UIKit

// FLOW :- main.swift --> UIApplication --> App Deligate --> didFinishLaunchingWithOptions()

UIApplicationMain(CommandLine.argc,
                  CommandLine.unsafeArgv, nil,
                  NSStringFromClass(AppDelegate.self))
