//
//  Warranty.swift
//  UnderWarranty2
//
//  Created by Jeff Chimney on 2019-06-08.
//  Copyright © 2019 Jeff Chimney. All rights reserved.
//

import Foundation
import SwiftUI

struct Warranty: Hashable, Codable, Identifiable {

    var id: Int
    var name: String
    var description: String
    var startDate: String
    var endDate: String
    var isLifetimeWarranty: Bool
    var reminderDaysBefore: Int
    fileprivate var imageName: String
    var dateCreated: String
    var lastUpdated: String
    var recentlyDeleted: Bool
    var expired: Bool
    
    func image(forSize size: Int) -> Image {
        ImageStore.shared.image(name: imageName, size: size)
    }
    
}
