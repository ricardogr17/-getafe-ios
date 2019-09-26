//
//  TeachersViewController.swift
//  getafeios
//
//  Created by Dev2 on 26/09/2019.
//  Copyright © 2019 Dev. All rights reserved.
//

import UIKit


class TeachersViewController: UIViewController {
    
    @IBOutlet weak var tableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        configureTableView()
        
    }
}
extension TeachersViewController: UITableViewDataSource, UITableViewDelegate {
    
    func configureTableView() {
        tableView.dataSource = self
        tableView.delegate = self
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return defaultTeachers.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "TeachersViewCell",
                                                 for: indexPath) as! TeachersViewCell
        
        if (indexPath.row < defaultTeachers.count) {
            let teacher = defaultTeachers[indexPath.row]
            cell.configureCell(teacher: teacher)
        }
        
        return cell
    }
}
