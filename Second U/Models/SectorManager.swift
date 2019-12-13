//
//  SectorManager.swift
//  Second U
//
//  Created by Lei on 12/10/19.
//  Copyright © 2019 Lei. All rights reserved.
//

import Foundation

class SectorManager: ObservableObject {
    
    @Published var all_sectors = [Sector]()
    
    func initAllSectors() {
        
        let life_sector = Sector(name: "Life", description: "All about Life")
        let game_sector = Sector(name: "Game", description: "")
        let politics_sector = Sector(name: "Politics", description: "")
        let computer_sector = Sector(name: "Computer", description: "Geek area")
        
        all_sectors = [life_sector, game_sector, politics_sector, computer_sector]
        
    }
}
