//
//  BaseTableViewController.swift
//  BaseApp
//
//  Created by BeInMedia on 6/12/20.
//  Copyright © 2020 MIF50. All rights reserved.
//

import UIKit


class BaseTableViewController<T: BaseTabelViewCell<U>,U>: UITableViewController {
    
    let CELL_ID: String = "\(T.typeName)"
    var items = [U]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        tableView.register(T.self, forCellReuseIdentifier: CELL_ID)
        tableView.tableFooterView = UIView()
        let rc = UIRefreshControl()
        rc.addTarget(self, action: #selector(handleRefresh), for: .valueChanged)
        tableView.refreshControl = rc
    }
    
    @objc func handleRefresh() {
        tableView.refreshControl?.endRefreshing()
    }
    
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return items.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: CELL_ID, for: indexPath) as! BaseTabelViewCell<U>
        cell.item = items[indexPath.row]
        return cell
    }
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let item = items[indexPath.row]
        onItemTapped(item: item)
    }
    
    func onItemTapped(item: U) {}

}
