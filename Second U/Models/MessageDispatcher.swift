//
//  MessageDispatcher.swift
//  Second U
//
//  Created by Lei on 12/12/19.
//  Copyright © 2019 Lei. All rights reserved.
//

import Foundation

class MessageDispatcher: ObservableObject {
    
    private let networkManager = NetworkManager()
    
    @Published var message_bulbs = [MessageBulb](repeating: MessageBulb(position: 8, content: "", sender: "me"), count: 9)
    
    func dispatch() {
        
        while true {
        self.networkManager.fetchData()
        
//        for message in networkManager.messages {
//            let msgb = message.toMessageBulb()
//            sleep(10)
//            print("✅ sleep in msg dispatcher")
//            DispatchQueue.main.async {
//                self.message_bulbs[msgb.position] = msgb
//            }
//        }
        }
    }
    
}
