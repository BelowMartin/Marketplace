//
//  Profile.swift
//  Landmarks
//
//  Created by Мартин Белов on 16.12.21.
//  Copyright © 2021 Apple. All rights reserved.
//

import Foundation

struct Profile {
    var username: String
    var prefersNotifications = true
    var seasonalPhoto = "qwerty"
    var goalDate = Date()

    static let `default` = Profile(username: "belowmartyn@gmail.com")

    
}
