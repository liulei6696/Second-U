//
//  ContentView.swift
//  Second U
//
//  Created by Lei on 12/2/19.
//  Copyright © 2019 Lei. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    @State private var selection = 1
 
    var body: some View {
        TabView(selection: $selection){
            SectorMainView()
                .tabItem {
                    VStack {
                        Image(systemName: "map")
                            .font(.title)
                        Text("Sector")
                            .font(.body)
                    }
                }
                .tag(0)
            UserInfoView()
                .tabItem {
                    VStack {
                        Image(systemName: "person")
                            .font(.title)
                        Text("Me")
                            .font(.body)
                    }
                }
                .tag(1)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
