//
//  Authorization.swift
//  Landmarks
//
//  Created by Мартин Белов on 24.12.21.
//  Copyright © 2021 Apple. All rights reserved.
//

import Foundation
import SwiftUI
import CoreLocation

struct Login: Hashable, Codable{
    
    var wrightMail1: String = "Admin"
    var wrightPass1: String = "Admin"
    var wrightMail2: String = "12345"
    var wrightPass2: String = "12345"
    var name: String
    var surname: String
    var phone: String
    
}
