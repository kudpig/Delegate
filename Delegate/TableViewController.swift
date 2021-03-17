//
//  TableViewController.swift
//  Delegate
//
//  Created by Shinichiro Kudo on 2021/03/16.
//

import UIKit


protocol ToPassDataProtocol: class {
    func didSelect(data: String)
}


class TableViewController: UIViewController {
    
    let dataString = ["First", "Second", "Third", "Another", "More"]

    @IBOutlet weak var tableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        tableView.register(UITableViewCell.self, forCellReuseIdentifier: "cell")
        tableView.delegate = self
        tableView.dataSource = self
    }
    
    var delegate: ToPassDataProtocol?
    
}


extension TableViewController: UITableViewDelegate, UITableViewDataSource{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return dataString.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)
        cell.textLabel?.text = dataString[indexPath.row]
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
        let data = dataString[indexPath.row]
        delegate?.didSelect(data: data)
        self.navigationController?.popViewController(animated: true)
    }
}
