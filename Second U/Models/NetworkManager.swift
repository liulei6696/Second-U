//
//  NetworkManager.swift
//  Second U
//
//  Created by Lei on 12/2/19.
//  Copyright © 2019 Lei. All rights reserved.
//

import Foundation

class NetworkManager: ObservableObject {
    
    @Published var messages = [Message]()
    
    func fetchData() {
        if let url = URL(string: "http://localhost:3000") {
            let session = URLSession(configuration: .default)
            let task = session.dataTask(with: url) { (data, response, error) in
                if error == nil {
                    let decoder = JSONDecoder()
                    if let safeData = data {
                        do{
                            let results = try decoder.decode(Results.self, from: safeData)
                            DispatchQueue.main.async {
                                self.messages = results.messages
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
