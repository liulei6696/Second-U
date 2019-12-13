//
//  MainChatView.swift
//  Second U
//
//  Created by Lei on 12/12/19.
//  Copyright © 2019 Lei. All rights reserved.
//

import SwiftUI

struct MainChatView: View {
    
    @ObservedObject var msgDis = NetworkManager()
    
    @State var content: String = ""
    
    var body: some View {
        
        VStack {
            HStack {
                Button(action: {
                    
                }) {
                    HStack {
                        Text("<")
                        Image(systemName: "car.fill")
                            .font(.body)
                            .font(.title)
                    }
                    .padding()
                }
                
                Spacer()
            }
            Spacer()
            HStack {
                VStack {
                    Spacer()
                    Text(msgDis.message_bulbs[1].content)
                        .cornerRadius(40)
                        .background(Color.green)
                        .foregroundColor(.white)
                    Spacer()
                    Text(msgDis.message_bulbs[2].content)
                    Spacer()
                    Text(msgDis.message_bulbs[3].content)
                    Spacer()
                }
                .padding()
                Spacer()
                VStack {
                    Spacer()
                    Text(msgDis.message_bulbs[7].content)
                    Spacer()
                    Text(msgDis.message_bulbs[8].content)
                    Spacer()
                    Text(msgDis.message_bulbs[9].content)
                    Spacer()
                }
                .padding()
                Spacer()
                VStack {
                    Spacer()
                    Text(msgDis.message_bulbs[4].content)
                    Spacer()
                    Text(msgDis.message_bulbs[5].content)
                    Spacer()
                    Text(msgDis.message_bulbs[6].content)
                    Spacer()
                }
                .padding()
            }
            
            Spacer()
            
            HStack(alignment: .center) {
                TextField("", text: $content)
                    .textFieldStyle(RoundedBorderTextFieldStyle())
                    .padding(.vertical)
                    .padding(.leading)
                Button(action: {
                    print("send button")
                }) {
                    HStack {
                        Image(systemName: "paperplane.fill")
                            .font(.body)
                        Text("send")
                    }
                    .frame(minWidth: 80, maxWidth: 100, minHeight: 30)
                }
                .background(LinearGradient(gradient: Gradient(colors: [Color.green, Color.blue]), startPoint: .leading, endPoint: .trailing))
                .foregroundColor(.white)
                .cornerRadius(10)
                .padding(.vertical)
                .padding(.trailing)
                
            }
            .frame(height: 60)
        }
        .frame(minWidth: 0, maxWidth: .infinity, minHeight: 0, maxHeight: .infinity)
        .background(LinearGradient(gradient: Gradient(colors: [Color.white, Color(UIColor(red:0.96, green:0.96, blue:0.96, alpha:1.0))]), startPoint: .top, endPoint: .bottom))
        .onAppear(perform: {
            self.msgDis.fetchData()
        })
    }
}

struct MainChatView_Previews: PreviewProvider {
    static var previews: some View {
        MainChatView()
    }
}
