//
//  NewOrder.swift
//  Landmarks
//
//  Created by Мартин Белов on 23.12.21.
//  Copyright © 2021 Apple. All rights reserved.
//

import Foundation
import SwiftUI
import CoreLocation

struct NewOrder: Hashable, Codable{
    
    var name: String
    var fromTo: String
    var whereTo: String
    var description: String
    
}
