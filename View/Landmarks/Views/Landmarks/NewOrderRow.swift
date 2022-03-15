//
//  NewOrderRow.swift
//  Landmarks
//
//  Created by Мартин Белов on 23.12.21.
//  Copyright © 2021 Apple. All rights reserved.
//

import SwiftUI

struct NewOrderRow: View {
    var newOrder: NewOrder
    
    var body: some View {
        HStack {
            Image("1234")
                .resizable()
                .frame(width: 50, height: 50)
            Text(newOrder.name)

            Spacer()
            }
        }
    }
