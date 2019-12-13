//
//  TableRowView.swift
//  Second U
//
//  Created by Lei on 12/9/19.
//  Copyright © 2019 Lei. All rights reserved.
//

import SwiftUI

struct TableRowView: View {
    
    let image: String
    let text: String
    let image_color: Color
    
    var body: some View {
        Rectangle()
            .fill(Color.clear)
            .frame(height: 10)
            .overlay(
                HStack {
                    RoundedRectangle(cornerRadius: 10)
                        .fill(image_color)
                        .frame(width: 30, height: 30)
                        .overlay(
                            Image(systemName: image)
                                .padding(5)
                                .foregroundColor(.white)
                    )
                    Text(text)
                        .foregroundColor(.black)
                    Spacer()
            })
            .padding(.all)
    }
}


struct TableRowView_Previews: PreviewProvider {
    static var previews: some View {
        TableRowView(image: "person.crop.circle", text: "Account", image_color: Color.green)
            .previewLayout(.sizeThatFits)
    }
}
