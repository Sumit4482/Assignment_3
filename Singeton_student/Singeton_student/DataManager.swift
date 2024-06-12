//
//  DataManager.swift
//  Singeton_student
//
//  Created by E5000855 on 03/06/24.
//

import Foundation

class DataManager {
    // Static constant to hold the single instance of the class
    static let shared = DataManager()
    

    private var studentData: [String: Any] = [:]
    

    private init() {}
    
    
    func setStudentData(key: String, value: Any) {
        studentData[key] = value
    }
    

    func getStudentData(for key: String) -> Any? {
        return studentData[key]
    }
    
    func displayStudentData() {
        if studentData.isEmpty {
            print("Data Not Set.")
        } else {
            for (key, value) in studentData {
                print("\(key): \(value)")
            }
        }
    }
}
