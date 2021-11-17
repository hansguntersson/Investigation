//
//  CaseMainView.swift
//  Investigation
//
//  Created by Daniel Harlos on 17/11/2021.
//

import SwiftUI

struct CaseMainView: View {
    var body: some View {
        
        TabView {
            
            // -------- LOCATIONS---------
            
            VStack (alignment: .leading, spacing: 10) {
                Text("Locations")
                    .font(.headline)
                    .padding(10)
                
                List(0 ..< 2) { Case in
                    HStack {
                        Text("ID 4876")
                            .fontWeight(.bold)
                        Text("Theft Site")
                    }
                }
                
            }.navigationBarTitle("Case #4675: Moped Theft", displayMode: .inline)
                .tabItem {
                    Image(systemName: "location")
                    Text("Locations")
                }.tag(1)
            
            // -------- EVIDENCE---------
            
            VStack (alignment: .leading, spacing: 10) {
                Text("Evidence")
                    .font(.headline)
                    .padding(10)
                
                List(0 ..< 2) { Case in
                    HStack {
                        Text("ID 4876")
                            .fontWeight(.bold)
                        Text("Glass Fragments")
                    }
                }
                
            }.navigationBarTitle("Case #4675: Moped Theft", displayMode: .inline)
                .tabItem {
                    Image(systemName: "magnifyingglass")
                    Text("Evidence")
                }.tag(2)
            
            // -------- PEOPLE---------
            
            VStack (alignment: .leading, spacing: 10) {
                Text("People")
                    .font(.headline)
                    .padding(10)
                
                List(0 ..< 2) { Case in
                    HStack {
                        Text("ID 4256")
                            .fontWeight(.bold)
                        Text("Alan Parker")
                    }
                }
                
            }.navigationBarTitle("Case #4675: Moped Theft", displayMode: .inline)
                .tabItem {
                    Image(systemName: "person")
                    Text("People")
                }.tag(3)
            
            // -------- Resources---------
            
            VStack (alignment: .leading, spacing: 10) {
                Text("Resources")
                    .font(.headline)
                    .padding(10)
                
                List(0 ..< 2) { Case in
                    HStack {
                        Text("ID 3355")
                            .fontWeight(.bold)
                        Text("Forensics")
                    }
                }
                
            }.navigationBarTitle("Case #4675: Moped Theft", displayMode: .inline)
                .tabItem {
                    Image(systemName: "keyboard")
                    Text("Resources")
                }.tag(3)
            
        }
    }
}

struct CaseMain_Previews: PreviewProvider {
    static var previews: some View {
        CaseMainView()
    }
}
