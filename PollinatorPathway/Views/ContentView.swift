//
//  ContentView.swift
//  PollinatorPathway
//
//  Created by Student Account on 4/25/22.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        TabView {
         New_User_Setup()
                .tabItem() {
                    Image(systemName: "qrcode.viewfinder")
                    Text("Get Started")
                }
         Existing_Login()
                .tabItem() {
                    Image(systemName: "person.fill")
                    Text("Login")
                }
         Live_Map()
                .tabItem() {
                    Image(systemName: "map.fill")
                    Text("Live Map")
                }
        }
         
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
