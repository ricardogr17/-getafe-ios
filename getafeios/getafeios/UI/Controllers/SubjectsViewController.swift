//
//  SubjectsViewController.swift
//  getafeios
//
//  Created by Dev2 on 26/09/2019.
//  Copyright © 2019 Dev. All rights reserved.
//

import UIKit


class SubjectsViewController: UIViewController {
    
    @IBOutlet weak var tableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        configureTableView()
        
    }
}
extension SubjectsViewController: UITableViewDataSource, UITableViewDelegate {
    
    func configureTableView() {
        tableView.dataSource = self
        tableView.delegate = self
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return defaultSubjects.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "SubjectsViewCell",
                                                 for: indexPath) as! SubjectsViewCell
        
        if (indexPath.row < defaultSubjects.count) {
            let subject = defaultSubjects[indexPath.row]
            cell.configureCell(subject: subject)
        }
        
        return cell
    }
}

