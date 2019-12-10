//
//  SettingsPropertyListReader.swift
//  Second U
//
//  Created by Lei on 12/9/19.
//  Copyright © 2019 Lei. All rights reserved.
//

import Foundation

class SettingsPropertyListReader {

    static let shared = SettingsPropertyListReader()
    
    private init() { }
    
    func getNickName() -> String? {
        if let path = Bundle.main.path(forResource: "Settings", ofType: "plist"),
            let xml = FileManager.default.contents(atPath: path),
            let settings = try? PropertyListDecoder().decode(Settings.self, from: xml) {
            return settings.name
        } else {
            return nil
        }
    }
    
}
