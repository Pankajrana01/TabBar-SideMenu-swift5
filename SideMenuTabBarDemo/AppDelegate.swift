//
//  AppDelegate.swift
//  SideMenuTabBarDemo
//
//  Created by iMarkPC on 23/07/19.
//  Copyright © 2019 iMark. All rights reserved.
//

import UIKit
import MMDrawerController
@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {
    var centerContainer =  MMDrawerController()
    var window: UIWindow?


    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        // Override point for customization after application launch.
        iniSideMenu()
        return true
    }
    func iniSideMenu(){
        let mainstoryBoard:UIStoryboard = UIStoryboard(name: "Main", bundle: nil)
        let  centerViewController = mainstoryBoard.instantiateViewController(withIdentifier: "LoginViewController") as! LoginViewController
        let  leftViewController = mainstoryBoard.instantiateViewController(withIdentifier: "SlideMenuVC") as! SlideMenuVC
        let leftsidenav = UINavigationController(rootViewController: leftViewController)
        let centnav = UINavigationController(rootViewController: centerViewController)
        centerContainer = MMDrawerController(center: centnav, leftDrawerViewController: leftsidenav)
        centerContainer.openDrawerGestureModeMask = MMOpenDrawerGestureMode.panningCenterView
        centerContainer.closeDrawerGestureModeMask = MMCloseDrawerGestureMode.panningCenterView
        window?.rootViewController = centerContainer
        window?.makeKeyAndVisible()
    }
    func applicationWillResignActive(_ application: UIApplication) {
        // Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
        // Use this method to pause ongoing tasks, disable timers, and invalidate graphics rendering callbacks. Games should use this method to pause the game.
    }

    func applicationDidEnterBackground(_ application: UIApplication) {
        // Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later.
        // If your application supports background execution, this method is called instead of applicationWillTerminate: when the user quits.
    }

    func applicationWillEnterForeground(_ application: UIApplication) {
        // Called as part of the transition from the background to the active state; here you can undo many of the changes made on entering the background.
    }

    func applicationDidBecomeActive(_ application: UIApplication) {
        // Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
    }

    func applicationWillTerminate(_ application: UIApplication) {
        // Called when the application is about to terminate. Save data if appropriate. See also applicationDidEnterBackground:.
    }


}

