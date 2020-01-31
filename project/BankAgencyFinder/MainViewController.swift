//
//  ViewController.swift
//  BankAgencyFinder
//
//  Created by Thor on 31/01/20.
//  Copyright © 2020 Pedro Almeida. All rights reserved.
//

import UIKit

class MainViewController: UIViewController {
    
    fileprivate let kCellIdentifier = "DefaultCell"

    override func viewDidLoad() {
        super.viewDidLoad()
        
        setupView()
    }
    
    private func setupView() {
        
    }
}

extension MainViewController: UITableViewDataSource, UITableViewDelegate {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 5
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        var cell: UITableViewCell
        if let reusableCell = tableView.dequeueReusableCell(withIdentifier: kCellIdentifier) {
            cell = reusableCell
        } else {
            cell = UITableViewCell(style: .subtitle, reuseIdentifier: kCellIdentifier)
            cell.textLabel?.font = UIFont.systemFont(ofSize: 17.0, weight: .semibold)
            cell.detailTextLabel?.font = UIFont.systemFont(ofSize: 14.0)
        }
        
        cell.textLabel?.text = "Agência Itaú"
        cell.detailTextLabel?.text = "Distância: \(1) km"
        
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        tableView.deselectRow(at: indexPath, animated: true)
        
        let message = "\nAgência número: \("8659")\nHorário de funcionamento: \("10:00 às 15:00")"
        let alert = UIAlertController(title: "Nome da agência", message: message, preferredStyle: .alert)

        alert.addAction(UIAlertAction(title: "Ok", style: .default, handler: nil))

        self.present(alert, animated: true)
    }
    
    
}

