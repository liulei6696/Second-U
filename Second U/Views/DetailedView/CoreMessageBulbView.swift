//
//  CoreMessageBulbView.swift
//  Second U
//
//  Created by Lei on 12/13/19.
//  Copyright © 2019 Lei. All rights reserved.
//

import SwiftUI

struct CoreMessageBulbView: View {
    
    let content: String
    let sender:String
    let image: String
    let width: CGFloat
    let height: CGFloat
    
    var body: some View {
        VStack(alignment: .leading, spacing: 0) {
            Image(systemName: image)
                .resizable()
                .frame(width: width, height: height)
                .foregroundColor(.blue)
                .overlay(
                    Text(content)
                        .frame(minWidth: 130, minHeight: 40)
                        .font(.system(size: height * 0.2))
                        .padding(.bottom)
                        .padding(.horizontal, 30)
//                        .background(LinearGradient(gradient: Gradient(colors: [Color.green, Color(UIColor(red:0.63, green:0.76, blue:0.20, alpha:1.0))]), startPoint: .top, endPoint: .bottom))
                        .foregroundColor(.black)
                        .opacity(0.8)
                        .cornerRadius(40)
                        .shadow(radius: 5.0)
                    //                .padding(.horizontal)
                    //                .padding(.top)
            )
//            Text("From: \(sender)")
//                .foregroundColor(sender == "Me" ? Color(UIColor(red:0.73, green:0.73, blue:0.73, alpha:1.0)) : .orange)
//                .font(.system(size: 12))
//                .padding(.leading)
            
        }
    }
}

struct CoreMessageBulbView_Previews: PreviewProvider {
    static var previews: some View {
        CoreMessageBulbView(content: "Hello Hello Hello Hello Hello Hello Hello", sender: "Me", image: "bubble.left", width: 300, height: 100)
            .previewLayout(.sizeThatFits)
    }
}
