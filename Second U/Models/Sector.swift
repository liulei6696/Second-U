//
//  Sector.swift
//  Second U
//
//  Created by Lei on 12/10/19.
//  Copyright © 2019 Lei. All rights reserved.
//

import Foundation

struct Sector: Identifiable {
    
    var id: String {
        return name
    }
    let name: String
    let description: String
    
}
