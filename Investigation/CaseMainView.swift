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
                Text("Pick a location to investigate further")
                    .padding(.horizontal, 10)
                    .padding(.vertical, 5)
                    List(0 ..< 2) { Case in
                        NavigationLink(destination: TabDetailView()) {
                        HStack {
                            Text("ID 4876")
                                .fontWeight(.bold)
                            Text("Theft Site")
                        }
                    }
                }
                
            }.navigationBarTitle("#4675: Moped Theft", displayMode: .inline)
                .tabItem {
                    Image(systemName: "location")
                    Text("Locations")
                }.tag(1)
            
            // -------- EVIDENCE---------
            
            VStack (alignment: .leading, spacing: 10) {
                Text("Evidence")
                    .font(.headline)
                    .padding(10)
                Text("Pick a piece of evidence to inspect")
                    .padding(.horizontal, 10)
                    .padding(.vertical, 5)
                List(0 ..< 2) { Case in
                    HStack {
                        Text("ID 4876")
                            .fontWeight(.bold)
                        Text("Glass Fragments")
                    }
                }
                
            }.navigationBarTitle("#4675: Moped Theft", displayMode: .inline)
                .tabItem {
                    Image(systemName: "folder.fill")
                    Text("Evidence")
                }.tag(2)
            
            // -------- PEOPLE---------
            
            VStack (alignment: .leading, spacing: 10) {
                Text("People")
                    .font(.headline)
                    .padding(10)
                Text("Pick a Person to interview")
                    .padding(.horizontal, 10)
                    .padding(.vertical, 5)
                List(0 ..< 2) { Case in
                    HStack {
                        Text("ID 4256")
                            .fontWeight(.bold)
                        Text("Alan Parker")
                    }
                }
                
            }.navigationBarTitle("#4675: Moped Theft", displayMode: .inline)
                .tabItem {
                    Image(systemName: "person")
                    Text("People")
                }.tag(3)
            
            // -------- Resources---------
            
            VStack (alignment: .leading, spacing: 10) {
                HStack{
                    Text("Pinned items")
                        .font(.headline)
                        .padding(10)
                    Spacer()
                    Image(systemName: "line.3.horizontal.decrease.circle")
                        .padding(10)
                }
                
                
                List(0 ..< 3) { Case in
                    HStack {
                        Image(systemName: "person")
                        Text("ID 4256")
                            .fontWeight(.bold)
                        Text("Alan Parker")
                    }
                    HStack {
                        Image(systemName: "folder.fill")
                        Text("ID 4876")
                            .fontWeight(.bold)
                        Text("Plastic threads")
                    }
                    HStack {
                        Image(systemName: "location")
                        Text("ID 4876")
                            .fontWeight(.bold)
                        Text("Lock up Garage")
                    }
                    HStack {
                        Image(systemName: "location")
                        Text("ID 4876")
                            .fontWeight(.bold)
                        Text("Park bench")
                    }
                }
                
            }.navigationBarTitle("Case #4675: Moped Theft", displayMode: .inline)
                .tabItem {
                    Image(systemName: "pin.fill")
                    Text("Pinned")
                }.tag(3)
            
        }
    }
}

struct CaseMain_Previews: PreviewProvider {
    static var previews: some View {
        CaseMainView()
    }
}
