//
//  MessageBulbView.swift
//  Second U
//
//  Created by Lei on 12/12/19.
//  Copyright © 2019 Lei. All rights reserved.
//

import SwiftUI

struct MessageBulbView: View {
    
    let content = "Hello"
    let sender = "me"
    
    var body: some View {
        VStack(alignment: .leading, spacing: 0) {
            Text(content)
                .frame(minWidth: 100, minHeight: 30)
                .font(.system(size: 20))
                .background(LinearGradient(gradient: Gradient(colors: [Color.green, Color(UIColor(red:0.63, green:0.76, blue:0.20, alpha:1.0))]), startPoint: .top, endPoint: .bottom))
                .foregroundColor(.white)
                .opacity(0.8)
                .cornerRadius(40)
                .shadow(radius: 5.0)
                .padding(.horizontal)
                .padding(.top)
            Text("From: \(sender)")
                    .foregroundColor(Color(UIColor(red:0.73, green:0.73, blue:0.73, alpha:1.0)))
                .font(.system(size: 12))
                .padding(.leading)
            
        }
    }
}

struct MessageBulbView_Previews: PreviewProvider {
    static var previews: some View {
        MessageBulbView()
            .previewLayout(.sizeThatFits)
    }
}
