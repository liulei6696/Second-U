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
    @State var remove = true
    
    var body: some View {
        
        VStack {
            HStack {
                Button(action: {
                    
                }) {
                    HStack {
                        Text("<")
                            .font(.body)
                        Image(systemName: "car.fill")
                            .font(.title)
                    }
                    .padding()
                }
                
                Spacer()
            }
            Spacer()
            
            ZStack {
                HStack {
                    VStack {
                        Spacer()
                        CornerMessageBulbView(content: msgDis.message_bulbs[1].content, sender: msgDis.message_bulbs[1].sender, image: "bubble.left", width: 140, height: 60)
                            .animation(.easeInOut)
                            .transition(.opacity)
                            .opacity(0.4)
                        //                            .transition(.asymmetric(insertion: .opacity, removal: .scale))
                        Spacer()
                        CornerMessageBulbView(content: msgDis.message_bulbs[2].content, sender: msgDis.message_bulbs[2].sender, image: "bubble.left", width: 100, height: 40)
                            .animation(.easeInOut)
                            .transition(.opacity)
                            .opacity(0.3)
                        //                                                    .transition(.asymmetric(insertion: .opacity, removal: .scale))
                        Spacer()
                        CornerMessageBulbView(content: msgDis.message_bulbs[3].content, sender: msgDis.message_bulbs[3].sender, image: "bubble.left", width: 220, height: 70)
                            //                            .animation(Animation.easeInOut(duration: 1.1))
                            .animation(.easeInOut)
                            .transition(.opacity)
                            .opacity(0.8)
                        //                                                    .transition(.asymmetric(insertion: .opacity, removal: .scale))
                        Spacer()
                    }
                    //                    .padding()
                    //                    Spacer()
                    VStack {
                        CornerMessageBulbView(content: msgDis.message_bulbs[4].content, sender: msgDis.message_bulbs[4].sender, image: "bubble.right", width: 100, height: 40)
                            .animation(.easeInOut)
                            .transition(.opacity)
                            .opacity(0.2)
                        Spacer()
                        CornerMessageBulbView(content: msgDis.message_bulbs[5].content, sender: msgDis.message_bulbs[5].sender, image: "bubble.right", width: 200, height: 80)
                            .animation(.easeInOut)
                            .transition(.opacity)
                            .opacity(0.7)
                        Spacer()
                        CornerMessageBulbView(content: msgDis.message_bulbs[6].content, sender: msgDis.message_bulbs[6].sender, image: "bubble.right", width: 100, height: 60)
                            .animation(.easeInOut)
                            .transition(.opacity)
                            .opacity(0.5)
                    }
                    //                    .padding()
                }
                VStack {
                    //                    Spacer()
                    CoreMessageBulbView(content: msgDis.message_bulbs[7].content, sender: msgDis.message_bulbs[7].sender, image: "bubble.left", width: 300, height: 130)
                        .animation(.easeInOut)
                        .transition(.opacity)
                        .opacity(0.9)
                    Spacer()
                    CoreMessageBulbView(content: msgDis.message_bulbs[8].content, sender: msgDis.message_bulbs[8].sender, image: "bubble.right", width: 300, height: 200)
                        .animation(.easeInOut)
                        .transition(.opacity)
                    //                    Spacer()
                    //                    CoreMessageBulbView(content: msgDis.message_bulbs[9].content, sender: msgDis.message_bulbs[9].sender, image: "bubble.left", width: 300, height: 50)
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
                    self.sendMessage()
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
            .frame(height: CGFloat(60))
        }
        .frame(minWidth: 0, maxWidth: .infinity, minHeight: 0, maxHeight: .infinity)
        .background(LinearGradient(gradient: Gradient(colors: [Color.white, Color(UIColor(red:0.96, green:0.96, blue:0.96, alpha:1.0))]), startPoint: .top, endPoint: .bottom))
        .onAppear(perform: {
            self.msgDis.fetchData()
        })
        
    }
    
    func sendMessage() {
        self.msgDis.message_bulbs[8] = Message(id: UUID().uuidString, sender: UserDefaults.standard.string(forKey: "nick_name")!, timestamp: 0, content: self.content, location: Location(sector: "life", x: UserDefaults.standard.integer(forKey: "x"), y: UserDefaults.standard.integer(forKey: "y"), z: UserDefaults.standard.integer(forKey: "z"))).toMessageBulb()
        self.content = ""
    }
}

struct MainChatView_Previews: PreviewProvider {
    static var previews: some View {
        MainChatView()
    }
}
