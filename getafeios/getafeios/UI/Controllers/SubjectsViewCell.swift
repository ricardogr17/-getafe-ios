//
//  SubjectsViewCell.swift
//  getafeios
//
//  Created by Dev2 on 26/09/2019.
//  Copyright © 2019 Dev. All rights reserved.
//

import UIKit

class SubjectsViewCell: UITableViewCell {
    @IBOutlet weak var viewCell: UIView!
     @IBOutlet weak var tableViewLabelTeacher: UILabel!
    @IBOutlet weak var tableViewLabelStudent: UILabel!
    @IBOutlet weak var viewImage: UIImageView!
    @IBOutlet weak var tableViewLabelName: UILabel!
    override func prepareForReuse() {
        viewImage.image = nil
        tableViewLabelName.text = nil
        tableViewLabelTeacher.text = nil
        tableViewLabelStudent.text = nil
    }
    func configureCell(subject: Subject) {
        tableViewLabelName.text = subject.name
    }
}
