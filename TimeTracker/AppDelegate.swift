//
//  AppDelegate.swift
//  TimeTracker
//
//  Created by Gopal Sharma on 4/25/16.
//  Copyright © 2016 Surya Software Systems Pvt. Ltd. All rights reserved.
//

import SwiftUtils
import SwiftyBeaver
import UIKit

let LOG = SwiftyBeaver.self


@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?


    func application(application: UIApplication, didFinishLaunchingWithOptions launchOptions: [NSObject: AnyObject]?) -> Bool {
        setupLogging()

        setupRootViewController()

        return true
    }

    func applicationWillResignActive(application: UIApplication) {
        // Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
        // Use this method to pause ongoing tasks, disable timers, and throttle down OpenGL ES frame rates. Games should use this method to pause the game.
    }

    func applicationDidEnterBackground(application: UIApplication) {
        // Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later.
        // If your application supports background execution, this method is called instead of applicationWillTerminate: when the user quits.
    }

    func applicationWillEnterForeground(application: UIApplication) {
        // Called as part of the transition from the background to the inactive state; here you can undo many of the changes made on entering the background.
    }

    func applicationDidBecomeActive(application: UIApplication) {
        // Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
    }

    func applicationWillTerminate(application: UIApplication) {
        // Called when the application is about to terminate. Save data if appropriate. See also applicationDidEnterBackground:.
    }


    // MARK: View Controller Setup

    private func setupRootViewController() {
        let tabBarController = UITabBarController()
        tabBarController.viewControllers = [
            createViewController(TimersViewController.self, title: "Timers", tabBarIcon: R.image.timersTabBar()),
            createViewController(ClientsViewController.self, title: "Clients", tabBarIcon: R.image.clientsTabBar()),
            createViewController(RemindersViewController.self, title: "Reminders", tabBarIcon: R.image.remindersTabBar()),
            createViewController(TriggersViewController.self, title: "Triggers", tabBarIcon: R.image.triggersTabBar()),
            createViewController(SettingsViewController.self, title: "Settings", tabBarIcon: R.image.settingsTabBar()),
        ]

        let window = UIWindow.init(frame: UIScreen.mainScreen().bounds)
        self.window = window
        window.rootViewController = tabBarController
        window.makeKeyAndVisible()
    }

    private func createViewController<VC where VC : UIViewController>(viewControllerType: VC.Type, title: String, tabBarIcon: UIImage?) -> VC {
        let viewController = VC()
        let tabBarItem = UITabBarItem()
        tabBarItem.title = title.localized()
        tabBarItem.image = tabBarIcon
        viewController.tabBarItem = tabBarItem
        return viewController
    }


    // MARK: Logging

    private func setupLogging() {
        // See: http://docs.swiftybeaver.com/article/11-log-to-swiftybeaver-platform
        let platform = SBPlatformDestination(appID: "k6PPZo", appSecret: "accsyxfowjSlzkzbaqqwPb0oozhKrttK", encryptionKey: "3u3EgsTjqszbgTrpxyVlpqpKtoqaq5vx")
        platform.minLevel = .Info // Don't send too much junk to platform since that will eat up bandwidth
        #if DEBUG
            // If we're in debug mode:
            // - Log to console (so Xcode can pick it up)
            // - Log synchronously. Async logging can sometimes result in logs showing up later than we expect.
            //   While it makes sense to do it for performance reasons in release mode, best not to when debugging.
            // - Log to /tmp/ to make it easy to tail it while developing.
            let console = ConsoleDestination()
            console.asynchronously = false
            let file = FileDestination()
            file.asynchronously = false
            file.logFileURL = NSURL(string: "file:///tmp/TimeTracker.log")!
            LOG.addDestination(console)
            LOG.addDestination(file)
        #endif
        LOG.addDestination(platform)

        // TODO: Add platform.analyticsUserName or platform.analyticsUUID
    }

}
