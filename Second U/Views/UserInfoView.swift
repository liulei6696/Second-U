//
//  UserInfoView.swift
//  Second U
//
//  Created by Lei on 12/9/19.
//  Copyright © 2019 Lei. All rights reserved.
//

import SwiftUI

struct UserInfoView: View {
    
    //    var user_nickname = SettingsPropertyListReader.shared.getNickName() ?? "<error>"
    @State private var user_nickname = ""
    
    var body: some View {
        NavigationView {
            List {
                // -- MARK name and photo banner here
//                Section {
//                    Text("")
//                }
                Section {
                    NavigationLink(destination: NicknameView()) {
                        TableRowView(image: "person.crop.circle", text: "Account", image_color: Color.green)
                    }
                    NavigationLink(destination: PlaceHolderView(content: "Second U Desktop/Web")) {
                        TableRowView(image: "desktopcomputer", text: "Second U Desktop/Web", image_color: Color(UIColor(red:0.55, green:0.73, blue:0.73, alpha:1.0)))
                    }
                }
                Section {
                    NavigationLink(destination: PlaceHolderView(content: "Security")) {
                        TableRowView(image: "lock.rotation.open", text: "Security", image_color: Color(UIColor(red:0.27, green:0.71, blue:0.82, alpha:1.0)))
                    }
                    NavigationLink(destination: PlaceHolderView(content: "Notification")) {
                        TableRowView(image: "envelope.badge", text: "Notification", image_color: Color(UIColor(red:0.96, green:0.36, blue:0.47, alpha:1.0)))
                    }
                    NavigationLink(destination: PlaceHolderView(content: "Data & Storage Usage")) {
                        TableRowView(image: "cube.box", text: "Data & Storage Usage", image_color: Color(UIColor(red:0.76, green:0.96, blue:0.52, alpha:1.0)))
                    }
                    
                }
                Section {
                    NavigationLink(destination: PlaceHolderView(content: "Help")) {
                        TableRowView (image: "info", text: "Help", image_color: Color(UIColor(red:0.70, green:0.87, blue:0.98, alpha:1.0)))
                    }
                    NavigationLink(destination: PlaceHolderView(content: "Tell A Friend")) {
                        TableRowView (image: "suit.heart", text: "Tell A Friend", image_color: Color(UIColor(red:0.96, green:0.36, blue:0.47, alpha:1.0)))
                    }
                }
            }.listStyle(GroupedListStyle())
                .navigationBarTitle("Hello \(user_nickname)!")
                .onAppear() {
                    self.user_nickname = UserDefaults.standard.string(forKey: "nick_name") ?? ""
            }
        }
    }
}

struct UserInfoView_Previews: PreviewProvider {
    static var previews: some View {
        UserInfoView()
    }
}
