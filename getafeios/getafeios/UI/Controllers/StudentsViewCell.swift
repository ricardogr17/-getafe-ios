//
//  StudentsViewCell.swift
//  getafeios
//
//  Created by Dev2 on 25/09/2019.
//  Copyright © 2019 Dev. All rights reserved.
//

import UIKit

class StudentsViewCell: UITableViewCell {
    @IBOutlet weak var viewCell: UIView!
     @IBOutlet weak var tableViewLabelName: UILabel!
    @IBOutlet weak var tableViewLabelEmail: UILabel!
    @IBOutlet weak var viewImage: UIImageView!
  
    override func prepareForReuse() {
        viewImage.image = nil
        tableViewLabelName.text = nil
        tableViewLabelEmail.text = nil
    }
    func configureCell(student: Student) {
        tableViewLabelName.text = student.name
        tableViewLabelEmail.text = student.email
    }
}

