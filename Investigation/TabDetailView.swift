//
//  TabDetailView.swift
//  Investigation
//
//  Created by Daniel Harlos on 18/11/2021.
//

import SwiftUI

struct TabDetailView: View {
    let CaseItem: CaseItem
    
    var body: some View {
        
        let items = CaseItem.caseitemdetails
        let ItemSelection = CaseItem.itemtype
        let ItemString = "\(ItemSelection): \(CaseItem.title)"
        
        TabView {
    
            // LOCATIONS
            VStack (alignment: .leading, spacing: 10) {
                Text(ItemString)
                    .font(.headline)
                    .padding(10)
                Text(CaseItem.description)
                    .padding(.horizontal, 10)
                    .padding(.vertical, 5)
                List(items) { row in
                    VStack {
                        Text(row.title)
                            .fontWeight(.bold)
                        Text(row.description)
                    }.padding(3)
                }
                
                HStack {
                    Spacer()
                    Text(ButtonTextSwitcher(ItemInput: ItemSelection))
                            .font(.subheadline)
                            .fontWeight(.bold)
                            .padding()
                            .foregroundColor(.white)
                            .background(.green)
                            .cornerRadius(5)
                            .onTapGesture {print("\(ItemSelection) tap")}
                    Spacer()
                }
            }
        }
    }
}

func ButtonTextSwitcher(ItemInput: itemtypekey) -> String {
    var itemprompt: String
    
    switch ItemInput {
        case .Location:
            itemprompt = "SEARCH LOCATION"
        case .Evidence:
            itemprompt = "EXAMINE EVIDENCE"
        case .Person:
            itemprompt = "INTERVIEW PERSON"
    }
    
    return itemprompt
}

struct TabDetailView_Previews: PreviewProvider {
    static var previews: some View {
        TabDetailView(CaseItem: CaseItem(id: 1, code: "4489", title: "Theft site", description: "The site of the theft", itemtype: .Location, visible: false, new: true, caseitemdetails: []))
    }
}
