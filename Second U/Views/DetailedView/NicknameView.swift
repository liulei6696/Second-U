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
            NavigationView {
                VStack {
                    TextField("\(nick_name)", text: $nick_name)
                        .font(.system(size: 20))
                        .textFieldStyle(RoundedBorderTextFieldStyle())
                        .padding(.all)
                    Spacer()
                }
            }
//            .navigationBarItems(leading: Button(action: {
//                self.presentationMode.wrappedValue.dismiss()
//            }, label: {
//                Text("Close")
//            }))
            .navigationBarItems(trailing: Button(action: {
                UserDefaults.standard.set(self.nick_name, forKey: "nick_name")
                self.presentationMode.wrappedValue.dismiss()
            }, label: {
                Text("Done")
            }))
            .onAppear(perform: {
                self.nick_name = UserDefaults.standard.string(forKey: "nick_name") ?? "nothing?"
            })
        }
    }

    struct NicknameView_Previews: PreviewProvider {
        static var previews: some View {
            NicknameView()
                .previewLayout(.sizeThatFits)
        }
    }
