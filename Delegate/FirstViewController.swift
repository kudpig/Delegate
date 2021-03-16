//
//  FirstViewController.swift
//  Delegate
//
//  Created by Shinichiro Kudo on 2021/03/16.
//

import UIKit

class FirstViewController: UIViewController {

    @IBAction func tapGoTable(_ sender: UIButton) {
        Router.showTable(fromVC: self)
    }
    

}
