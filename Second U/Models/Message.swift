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
    let sender: String
    let timestamp: Int
    let content: String
//    let location: Any
    let location: Location
    
    func toMessageBulb() -> MessageBulb{
        let x = UserDefaults.standard.integer(forKey: "x")
        let y = UserDefaults.standard.integer(forKey: "y")
        let z = UserDefaults.standard.integer(forKey: "z")
        let distance = pow(Decimal(abs(x - location.x)), 2) + pow(Decimal(abs(y - location.y)), 2) + pow(Decimal(abs(z - location.z)), 2)
        if distance > 1200 {
            return MessageBulb(position: Int.random(in: 1...6), content: content, sender: sender)
        }else {
            return MessageBulb(position: Int.random(in: 7...9), content: content, sender: sender)
        }
    }
}

struct Location: Decodable {
    let sector: String
    let x: Int
    let y: Int
    let z: Int
}

struct MessageBulb {
    let position: Int
    let content: String
    let sender: String
}
