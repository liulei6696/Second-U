//
//  MessageBulbView.swift
//  Second U
//
//  Created by Lei on 12/12/19.
//  Copyright © 2019 Lei. All rights reserved.
//

import SwiftUI

struct CornerMessageBulbView: View {
    
    let content: String
    let sender:String
    let image: String
    let width: CGFloat
    let height: CGFloat
    
    var body: some View {
        VStack(alignment: .leading, spacing: 0) {
            
            Image(systemName: image)
                .resizable()
//                .aspectRatio(contentMode: )
                .frame(width: width, height: height)
                .foregroundColor(.green)
//                .background(Color.red)
            .shadow(radius: 10)
                .overlay(
                    Text(content)
                        .frame(minWidth: 100, minHeight: 30)
                        .font(.system(size: height * 0.3))
                        .padding(.bottom)
                        //                .background(LinearGradient(gradient: Gradient(colors: [Color.green, Color(UIColor(red:0.63, green:0.76, blue:0.20, alpha:1.0))]), startPoint: .top, endPoint: .bottom))
                        .foregroundColor(.black)
                        .opacity(0.8)
                        .cornerRadius(40)
                        .shadow(radius: 5.0)
            )
//            Text("From: \(sender)")
//                .foregroundColor(sender == "Me" ? Color(UIColor(red:0.73, green:0.73, blue:0.73, alpha:1.0)) : .orange)
//                .font(.system(size: 12))
//                .padding(.leading)
            
        }
    }
}

struct CornerMessageBulbView_Previews: PreviewProvider {
    static var previews: some View {
        CornerMessageBulbView(content: "Hello", sender: "Me", image: "bubble.left", width: 200, height: 50)
            .previewLayout(.sizeThatFits)
    }
}
