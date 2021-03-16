//
//  Router.swift
//  Delegate
//
//  Created by Shinichiro Kudo on 2021/03/16.
//

import Foundation
import UIKit

final class Router {
    
    static func showRoot(window: UIWindow?) {
        let firstStoryboard = UIStoryboard(name: "First", bundle: nil)
        let firstVC = firstStoryboard.instantiateInitialViewController() as! FirstViewController
        let nav = UINavigationController(rootViewController: firstVC) // ナビゲーションコントローラーを定義。引数で最下層となるViewを指定
        window?.rootViewController = nav
        window?.makeKeyAndVisible()
    }
    
    
    static func showTable(fromVC: UIViewController) {
        let tableStoryboard = UIStoryboard(name: "Table", bundle: nil)
        let tableVC = tableStoryboard.instantiateInitialViewController() as! TableViewController
        
        show(fromVC: fromVC, nextVC: tableVC)
    }
    
    private static func show(fromVC: UIViewController, nextVC: UIViewController) {
        if let nav = fromVC.navigationController {
            nav.pushViewController(nextVC, animated: true)
        } else {
            fromVC.present(nextVC, animated: true, completion: nil)
        }
    }
    
}
