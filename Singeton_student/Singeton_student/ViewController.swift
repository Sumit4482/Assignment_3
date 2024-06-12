//
//  ViewController.swift
//  Singeton_student
//
//  Created by E5000855 on 03/06/24.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        let studentInstance = DataManager.shared
        studentInstance.setStudentData(key: "Name", value: "Alice")
        studentInstance.setStudentData(key: "ID", value: "A123")
        studentInstance.setStudentData(key: "Age", value: 20)
        studentInstance.setStudentData(key: "GPA", value: 3.8)
        studentInstance.setStudentData(key: "EnrollmentDate", value: Date())
        studentInstance.displayStudentData()
        
        //accessing the same instance from another part of code
        let anotherStudentInstance = DataManager.shared
        anotherStudentInstance.displayStudentData()
        
        if let studentName = studentInstance.getStudentData(for: "Name"), case let name = studentName {
            print("Student Name: \(name)")
        }
    }
}
