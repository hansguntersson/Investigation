//
//  CaseMainView.swift
//  Investigation
//
//  Created by Daniel Harlos on 17/11/2021.
//

import SwiftUI

struct CaseMainView: View {
    var body: some View {
        
        VStack (alignment: .leading, spacing: 10) {
            Text("Locations")
                .font(.headline)
                .padding(10)
            
            List(/*@START_MENU_TOKEN@*/0 ..< 5/*@END_MENU_TOKEN@*/) { Case in
                HStack {
                    Text("ID 4876")
                        .fontWeight(.bold)
                    Text("Theft Site")
                }
            }
            
        }.navigationBarTitle("Case #4675: Moped Theft", displayMode: .inline)
        
        
        TabView {
            ItemListView()
                .tabItem {
                    Label("Locations", systemImage: "location")
                }
            ItemListView()
                .tabItem {
                    Label("Evidence", systemImage: "magnifyingglass")
                }
            ItemListView()
                .tabItem {
                    Label("People", systemImage: "person")
                }
            ItemListView()
                .tabItem {
                    Label("Resources", systemImage: "keyboard")
                }
        }.padding(10)
    }
}

struct CaseMain_Previews: PreviewProvider {
    static var previews: some View {
        CaseMainView()
    }
}
