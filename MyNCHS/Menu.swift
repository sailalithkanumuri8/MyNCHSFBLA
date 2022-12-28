//
//  Menu.swift
//  GoogleSignInPage
//
//  Created by SaiLalith Kanumuri on 11/1/22.
//

import SwiftUI

struct Menu: View {
    @State var selection = 0
    
//    init() {
//       UITabBar.appearance().backgroundColor = UIColor.blue
//    }
    
    var body: some View {
        TabView(selection: $selection) {
            Home().navigationTitle("x")
                .tabItem {
                    if selection == 0 {
                        Image(systemName: "house.fill")
                    } else {
                        Image(systemName: "house")
                    }
                }.tag(0)
            
            News().navigationTitle("x")
                .tabItem {
                    if selection == 1 {
                        Image(systemName: "newspaper.fill")
                    } else {
                        Image(systemName: "newspaper")
                    }
                }.tag(1)
            
            Calender().navigationTitle("x")
                .tabItem {
                    if selection == 1 {
                        Image(systemName: "calendar")
                    } else {
                        Image(systemName: "calendar")
                    }
                }.tag(2)
            
            Messages().navigationTitle("x")
                .tabItem {
                    if selection == 3 {
                        Image(systemName: "message.fill")
                    } else {
                        Image(systemName: "message")
                    }
                }.tag(3)
            
            Info().navigationTitle("x")
                .tabItem {
                    if selection == 4 {
                        Image(systemName: "info.circle.fill")
                    } else {
                        Image(systemName: "info.circle")
                    }
                }.tag(4)
        }
        //.tabViewStyle(PageTabViewStyle())
    }
}

struct Menu_Previews: PreviewProvider {
    static var previews: some View {
        Menu()
    }
}
