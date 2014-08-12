//
//  Person.swift
//  Class Roster
//
//  Created by Kevin Pham on 8/11/14.
//  Copyright (c) 2014 Kevin Pham. All rights reserved.
//

import Foundation
import UIKit

class Person {
    var firstName : String //= "Kevin"
    var lastName : String //= "Pham"
    var profileImage : UIImage?
    
    init (firstName : String, lastName: String) {
        self.firstName = firstName
        self.lastName = lastName
    }
    
    func fullName() -> String {
        return firstName + " " + lastName
    }
    
}