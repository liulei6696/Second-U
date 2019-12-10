//
//  PlaceHolderView.swift
//  Second U
//
//  Created by Lei on 12/10/19.
//  Copyright © 2019 Lei. All rights reserved.
//

import SwiftUI

struct PlaceHolderView: View {
    
    var content: String
    
    var body: some View {
        VStack {
            Text("Function Still in Progress")
                .font(.system(.title))
            Text(content)
                .font(.system(.headline))
        }
        
    }
}

struct PlaceHolderView_Previews: PreviewProvider {
    static var previews: some View {
        PlaceHolderView(content: "placeholder")
    }
}
