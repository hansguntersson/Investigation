//
//  CaseMainView.swift
//  Investigation
//
//  Created by Daniel Harlos on 17/11/2021.
//

import SwiftUI

struct TabConfig: Hashable {
    let id: Int
    let Title: String
    let Blurb: String
    let ItemList: [CaseItem]
    let Icon: Image
    
    func hash(into hasher: inout Hasher)
        {
            hasher.combine(id)
            hasher.combine(Title)
        }
}

struct CaseMainView: View {
    let Case: Case
    
    var body: some View {
        
        let CaseTitle = "# \(Case.code) \(Case.title)"
        
        let LocationList = Case.caseitems.filter { word in
            return word.itemtype == .Location
          }
        
        let EvidenceList = Case.caseitems.filter { word in
            return word.itemtype == .Evidence
          }
        
        let PersonList = Case.caseitems.filter { word in
            return word.itemtype == .Person
          }
        
        let TabList = [
            TabConfig(id: 1, Title: "Locations", Blurb: "Pick a location to investigate further", ItemList: LocationList, Icon: Image(systemName: "location")),
            TabConfig(id: 2, Title: "Evidence", Blurb: "Pick a piece of evidence to inspect", ItemList: EvidenceList, Icon: Image(systemName: "folder.fill")),
            TabConfig(id: 3, Title: "People", Blurb: "Pick a Person to interview", ItemList: PersonList, Icon: Image(systemName: "person")),
        ]
        
        TabView {
            ForEach(TabList, id: \.self) {  tab in
                VStack (alignment: .leading, spacing: 10) {
                    Text(tab.Title)
                        .font(.headline)
                        .padding(10)
                    Text(tab.Blurb)
                        .padding(.horizontal, 10)
                        .padding(.vertical, 5)
                    List(tab.ItemList) { caseitem in
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
                        tab.Icon
                        Text(tab.Title.uppercased())
                    }.tag(tab.id)
                }
        }
    }
}

struct CaseMain_Previews: PreviewProvider {
    static var previews: some View {
        CaseMainView(Case: Case(id: 1, code: "4675", title: "Moped Theft", description: "A pedestrian has been robbed by assailants on a moped", caseitems: []))
    }
}
