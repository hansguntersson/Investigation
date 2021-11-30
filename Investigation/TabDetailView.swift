//
//  TabDetailView.swift
//  Investigation
//
//  Created by Daniel Harlos on 18/11/2021.
//

import SwiftUI


struct ResourceView: View {
    let ItemDetails: CaseItemDetail
    @Environment(\.dismiss) var dismiss
    
    var body: some View {
        NavigationView {
            VStack (alignment: .center, spacing: 10) {
                Divider()
                Text("Select a resource to apply to the item:")
                    .padding(.top,  20)
                
                
                
                
                Spacer()
            }
            .navigationBarTitle(Text(ItemDetails.title), displayMode: .inline)
                .navigationBarItems(trailing: Button(action: {
                    dismiss()
                }) {
                    Text("Done").bold()
                })
        }
    }
}

struct ItemRowView: View {
    let ItemSelected: CaseItemDetail
    @State var ShowDetail: Bool
    @State var showingSheet: Bool
    
    var body: some View {
        VStack (alignment: .center, spacing: 10) {
            HStack{
                Text(ItemSelected.title)
                    .fontWeight(.bold)
                    .padding(5)
            }.contentShape(Rectangle())
                .onTapGesture {
                    ShowDetail.toggle()
                    // TODO: Add animation
                }
            if ShowDetail {
                Text(ItemSelected.description)
                    .padding(.bottom, 10)
                HStack (alignment: .bottom, spacing: 20){
                    Text("Combine")
                            .font(.subheadline)
                            .fontWeight(.bold)
                            .padding(10)
                            .foregroundColor(.white)
                            .background(.blue)
                            .cornerRadius(5)
                            .onTapGesture {print("Combine tap")}
                    Text("Resources")
                            .font(.subheadline)
                            .fontWeight(.bold)
                            .padding(10)
                            .foregroundColor(.white)
                            .background(.blue)
                            .cornerRadius(5)
                            .onTapGesture {
                                showingSheet.toggle()
                            }.sheet(isPresented: $showingSheet) {
                                ResourceView(ItemDetails: ItemSelected)
                                //showingSheet.toggle()
                                //ResourceView(ItemDetails: ItemSelected)
                            }
                }
            }
            Divider()
        }
    }
}

struct ItemDetailListView: View  {
    let ItemsList: [CaseItemDetail]
    @State private var showingSheet = false
    
    var body: some View {
        VStack{
            Divider()
            ForEach(ItemsList) { row in
                HStack (alignment: .top, spacing: 10){
                    ItemRowView(ItemSelected: row, ShowDetail: false, showingSheet: false)
                }
            }
            Spacer()
        }
    }
}


struct TabDetailView: View {
    let CaseItem: CaseItem
    
    var body: some View {
        
        let items = CaseItem.caseitemdetails
        let ItemType = CaseItem.itemtype
        let ItemButtonString = "\(ItemType): \(CaseItem.title)"
        
        TabView {
            
            // LOCATIONS
            VStack (alignment: .leading, spacing: 10) {
                Text(ItemButtonString)
                    .font(.headline)
                    .padding(.horizontal, 10)
                    .padding(.top, 10)
                Text(CaseItem.description)
                    .padding(.horizontal, 10)
                    .padding(.vertical, 5)
                
                ItemDetailListView(ItemsList: items)
                
                HStack {
                    Spacer()
                    Text(ButtonTextSwitcher(ItemInput: ItemType))
                            .font(.subheadline)
                            .fontWeight(.bold)
                            .padding()
                            .foregroundColor(.white)
                            .background(.green)
                            .cornerRadius(5)
                            .onTapGesture {print("\(ItemType) tap")}
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
