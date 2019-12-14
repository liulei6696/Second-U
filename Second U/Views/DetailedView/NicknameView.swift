//
//  NicknameView.swift
//  Second U
//
//  Created by Lei on 12/9/19.
//  Copyright © 2019 Lei. All rights reserved.
//

import SwiftUI

struct NicknameView: View {
    
    @State private var nick_name: String = "(default)"
    @Environment(\.presentationMode) var presentationMode
    
    var body: some View {
        
        ZStack {
            Color(UIColor(red:0.26, green:0.90, blue:0.64, alpha:1.0))
            VStack {
                Image("gregor")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width: 150.0, height: 150.0)
                    .clipShape(Circle())
                    .overlay(
                        Circle().stroke(Color.white, lineWidth: 5)
                )
                    .padding(.top, 100)
                TextField("\(nick_name)", text: $nick_name)
                    .font(Font.custom("Ubuntu-Regular", size: 40))
                    .multilineTextAlignment(.center)
                    //                    .frame(width: 100, height: 60, alignment: .center)
                    .textFieldStyle(RoundedBorderTextFieldStyle())
                    .padding(.horizontal, 100)
                Button(action: {
                    UserDefaults.standard.set(self.nick_name, forKey: "nick_name")
                    self.presentationMode.wrappedValue.dismiss()
                }, label: {
                    Text("confirm")
                        .fontWeight(.bold)
                        .font(.body)
                        .padding(.horizontal, 10)
                        .padding(.vertical, 5)
                        .background(Color.red)
                        .cornerRadius(30)
                        .foregroundColor(.white)
                        .padding(6)
                        .overlay(
                            RoundedRectangle(cornerRadius: 30)
                                .stroke(Color.red, lineWidth: 5))
                })
                    .padding()
                Spacer()
            }
                //                .background(Color(UIColor(red:0.26, green:0.90, blue:0.64, alpha:1.0)))
                
                //            .navigationBarItems(leading: Button(action: {
                //                self.presentationMode.wrappedValue.dismiss()
                //            }, label: {
                //                Text("Close")
                //            }))
                .onAppear(perform: {
                    self.nick_name = UserDefaults.standard.string(forKey: "nick_name") ?? ""
                })
        }
    }
}

struct NicknameView_Previews: PreviewProvider {
    static var previews: some View {
        NicknameView()
        //            .previewLayout(.sizeThatFits)
    }
}
