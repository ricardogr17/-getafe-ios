//
//  Subject.swift
//  getafeios
//
//  Created by Dev2 on 20/09/2019.
//  Copyright © 2019 Dev. All rights reserved.
//

import Foundation

class Subject: CustomStringConvertible {
    var avatar: String?
    var name: String?
    var teachers: [Teacher] = []
    var students: [Student] = []
    
    var description: String {
        return "Subject data: \(String(describing: name))"
        
    }

    var numTeachers: Int {
        return teachers.count
        
    }
    var numStudents: Int {
        return students.count
        
    }
    
    convenience init(name: String, teachers: [Teacher] = [], students: [Student] = [], avatar: String? = nil) {
        self.init()
        
        self.name = name
        self.teachers = teachers
        self.students = students
        
    }
    
}
