//
//  NetworkManager.swift
//  Second U
//
//  Created by Lei on 12/2/19.
//  Copyright © 2019 Lei. All rights reserved.
//

import Foundation

class NetworkManager: ObservableObject {
    
    private var messages = [Message]()
    
    @Published var message_bulbs = [MessageBulb](repeating: MessageBulb(position: 8, content: "Hello", sender: "me"), count: 10)
    
    func fetchData() {
        if let url = URL(string: "http://localhost:3000/message") {
            let session = URLSession(configuration: .default)
            let task = session.dataTask(with: url) { (data, response, error) in
                if error == nil {
                    let decoder = JSONDecoder()
                    if let safeData = data {
                        do{
                            let results = try decoder.decode(Results.self, from: safeData)
                            self.messages = results.messages
                            print("✅ got message")
                            for message in self.messages {
                                let msgb = message.toMessageBulb()
                                sleep(1)
                                print("✅ sleep in msg to msg_bulb")
                                DispatchQueue.main.async {
                                    self.message_bulbs[msgb.position] = msgb
                                }
                            }
                        } catch {
                            print(error)
                        }
                    }
                }
            }
            task.resume()
        }
    }
}
