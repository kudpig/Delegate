//
//  AppDelegate.swift
//  Delegate
//
//  Created by Shinichiro Kudo on 2021/03/16.
//

import UIKit

@main
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?

    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {

        let window = UIWindow(frame: UIScreen.main.bounds) // ウィンドウをインスタンス化する
        self.window = window
        Router.showRoot(window: window) // 初期Viewの取得はRouterクラスで行う

        return true
    }
}
