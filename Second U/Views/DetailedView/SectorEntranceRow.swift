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
                        .font(Font.custom("Lobster-Regular", size: 40))
                        .tracking(7)
                        .foregroundColor(.white)
                    Spacer()
                }.padding(.horizontal, 40)
                    .padding(.bottom, 10)
                    .background(Color(UIColor(red:0.96, green:0.96, blue:0.96, alpha:0.2)))
                HStack {
                    Text(sector_description)
                        .font(.system(.body))
                        .foregroundColor(.white)
                        .padding(.horizontal, 40)
                        .padding(.bottom, 10)
                    Spacer()
                }
            })
        
    }
}

struct SectorEntranceRow_Previews: PreviewProvider {
    static var previews: some View {
        SectorEntranceRow(sector_name: "Life", sector_description: "All about life")
            .previewLayout(.sizeThatFits)
    }
}
