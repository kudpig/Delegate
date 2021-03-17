//
//  FirstViewController.swift
//  Delegate
//
//  Created by Shinichiro Kudo on 2021/03/16.
//

import UIKit

class FirstViewController: UIViewController {
    
    var itemLabelPlaceholder: String = "選択されていません"

    @IBOutlet weak var firstLabel: UILabel! {
        didSet {
            firstLabel.text = itemLabelPlaceholder
        }
    }
    
    
    @IBAction func tapGoTable(_ sender: UIButton) {
        let tableStoryboard = UIStoryboard(name: "Table", bundle: nil)
        let tableVC = tableStoryboard.instantiateInitialViewController() as! TableViewController
        tableVC.delegate = self
        if let nav = self.navigationController {
            nav.pushViewController(tableVC, animated: true)
        }
    }
    

}

extension FirstViewController: ToPassDataProtocol {
    
    func didSelect(data: String) {
        print("didselectが実行されました")
        firstLabel.text = data
    }

}
