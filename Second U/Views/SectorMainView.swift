//
//  SectorMainView.swift
//  Second U
//
//  Created by Lei on 12/9/19.
//  Copyright © 2019 Lei. All rights reserved.
//

import SwiftUI

struct SectorMainView: View {
    
    @ObservedObject var sectorManager = SectorManager()

    var body: some View {
        NavigationView {
            List(sectorManager.all_sectors) { sector in
                SectorEntranceRow(sector_name: sector.name, sector_description: sector.description)
            }.navigationBarTitle("Sector")
            }
        .onAppear {
            self.sectorManager.initAllSectors()
        }
    }
}

struct SectorMainView_Previews: PreviewProvider {
    static var previews: some View {
        SectorMainView()
    }
}
