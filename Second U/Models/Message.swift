//
//  Message.swift
//  Second U
//
//  Created by Lei on 12/2/19.
//  Copyright © 2019 Lei. All rights reserved.
//

import Foundation

struct Results: Decodable {
    let messages: [Message]
}


struct Message: Decodable, Identifiable {
    let id: String
    let message: String
//    let location: Any
    let distance: Double
}
