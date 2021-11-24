//
//  CaseMainView.swift
//  Investigation
//
//  Created by Daniel Harlos on 17/11/2021.
//

import SwiftUI

struct CaseMainView: View {
    
    let Case: Case
    
    var body: some View {
        
        let CaseTitle = "# \(Case.code) \(Case.title)"
        let LocationItems = Case.caseitems
        let EvidenceItems = Case.caseitems
        let PeopleItems = Case.caseitems
        
        TabView {
            
            // -------- LOCATIONS---------
            
            VStack (alignment: .leading, spacing: 10) {
                Text("Locations")
                    .font(.headline)
                    .padding(10)
                Text("Pick a location to investigate further")
                    .padding(.horizontal, 10)
                    .padding(.vertical, 5)
                List(LocationItems) { caseitem in
                        NavigationLink(destination: TabDetailView(CaseItem: caseitem)) {
                        HStack {
                            Text(caseitem.code)
                                .fontWeight(.bold)
                            Text(caseitem.title)
                        }
                    }
                }
                Spacer()
                
            }.navigationBarTitle(CaseTitle, displayMode: .inline)
                .tabItem {
                    Image(systemName: "location")
                    Text("LOCATIONS")
                }.tag(1)
            
            // -------- EVIDENCE---------
            
            VStack (alignment: .leading, spacing: 10) {
                Text("Evidence")
                    .font(.headline)
                    .padding(10)
                Text("Pick a piece of evidence to inspect")
                    .padding(.horizontal, 10)
                    .padding(.vertical, 5)
                List(EvidenceItems) { caseitem in
                        NavigationLink(destination: TabDetailView(CaseItem: caseitem)) {
                        HStack {
                            Text(caseitem.code)
                                .fontWeight(.bold)
                            Text(caseitem.title)
                        }
                    }
                }
                Spacer()
                
            }.navigationBarTitle(CaseTitle, displayMode: .inline)
                .tabItem {
                    Image(systemName: "folder.fill")
                    Text("EVIDENCE")
                }.tag(2)
            
            // -------- PEOPLE---------
            
            VStack (alignment: .leading, spacing: 10) {
                Text("People")
                    .font(.headline)
                    .padding(10)
                Text("Pick a Person to interview")
                    .padding(.horizontal, 10)
                    .padding(.vertical, 5)
                List(PeopleItems) { caseitem in
                        NavigationLink(destination: TabDetailView(CaseItem: caseitem)) {
                        HStack {
                            Text(caseitem.code)
                                .fontWeight(.bold)
                            Text(caseitem.title)
                        }
                    }
                }
                Spacer()
                
            }.navigationBarTitle(CaseTitle, displayMode: .inline)
                .tabItem {
                    Image(systemName: "person")
                    Text("PEOPLE")
                }.tag(3)
        }
    }
}

struct CaseMain_Previews: PreviewProvider {
    static var previews: some View {
        CaseMainView(Case: Case(id: 1, code: "4675", title: "Moped Theft", description: "A pedestrian has been robbed by assailants on a moped", caseitems: []))
    }
}
