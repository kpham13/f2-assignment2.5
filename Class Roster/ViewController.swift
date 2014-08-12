//
//  ViewController.swift
//  Class Roster
//
//  Created by Kevin Pham on 8/11/14.
//  Copyright (c) 2014 Kevin Pham. All rights reserved.
//

import UIKit


class ViewController: UIViewController {
    
    var students = [Person]()
    var studentInfo = [["firstName" : "Jake", "lastName" : "Foster"]]
    var kevin = Person(firstName: "Kevin", lastName: "Pham")
    
    // Advanced Challenge (not mandatory): Using Apple's documentation as a guide, load in the array of Person objects from a .plist file in your bundle
    // func pathForResource() -> String {
    let path = NSBundle.mainBundle().pathForResource("StudentArray", ofType: "plist")    // Path of plist
    // let studentArray = NSArray(contentsOfFile: path)                                    // Initializing array from plist
    
    // println(studentArray)                                                               // Print contents of array
    // return studentArray
    // }

    func studentArray(studentArray: NSArray) {
        for student in studentArray {
            var newPerson = Person(firstName: student["firstName"] as String, lastName: student["lastName"] as String)
            students.append(newPerson)
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        studentArray(studentInfo)
        println(students[0].firstName)
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func testButton(sender: UIButton) {
        var studentCount = students.count
        if students.isEmpty {
            println(kevin.fullName() + ", there are no students in this class.")
            println("There are \(students.count) students.")
        } else if studentCount > 1 {
            println(kevin.fullName() + ", there are students in this class.")
            println("There are \(students.count) students.")
        } else {
            println(kevin.fullName() + ", there is a student in this class.")
            println("There is \(students.count) student.")
        }
    }
    
}