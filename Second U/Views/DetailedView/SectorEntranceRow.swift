//
//  SectorEntranceRow.swift
//  Second U
//
//  Created by Lei on 12/9/19.
//  Copyright © 2019 Lei. All rights reserved.
//

import SwiftUI

struct SectorEntranceRow: View {
    
    var sector_name: String
    var sector_description: String
    
    private let overlay_padding: CGFloat = 30
    private let image_corner_radius: CGFloat = 30
    
    var body: some View {
        
        
        Image(sector_name)
            .resizable()
            .aspectRatio(contentMode: .fit)
            .cornerRadius(image_corner_radius)
            .padding(.horizontal)
            .overlay(VStack {
                Spacer()
                HStack {
                    Text(sector_name)
                        .font(.system(.title))
                    Spacer()
                    }.padding(.horizontal, overlay_padding)
                    .padding(.bottom, 10)
                HStack {
                    Text(sector_description)
                        .font(.system(.body))
                    Spacer()
                }.padding(.horizontal, 20)
                    .padding(.bottom, 30)
            })
        
    }
}

struct SectorEntranceRow_Previews: PreviewProvider {
    static var previews: some View {
        SectorEntranceRow(sector_name: "Life", sector_description: "All about life")
        //            .previewLayout(.sizeThatFits)
    }
}
