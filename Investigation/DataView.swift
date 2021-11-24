//
//  DataView.swift
//  Investigation
//
//  Created by Daniel Harlos on 24/11/2021.
//

import SwiftUI

// ------------------------------------ DEFINITIONS ------------------------------------ //

enum itemtypekey: String {
  case Location,
       Evidence,
       Person
}

struct Case: Hashable {
    var id: Int
    var code: String
    var title: String
    var description: String
    var caseitems: [CaseItem]
}

struct CaseItem: Hashable, Identifiable {
    var id: Int
    var code: String
    var title: String
    var description: String
    var itemtype: itemtypekey
}

struct CaseItemDetail: Identifiable {
    let id: Int
    let name: String
    let description: String
    var visible: Bool
}


// ------------------------------------ DATA ------------------------------------ //


// CASES
let case1 = Case(id: 1, code: "4675", title: "Moped Theft", description: "A pedestrian has been robbed by assailants on a moped", caseitems: [caseitem1, caseitem2, caseitem3, caseitem4])

let case2 = Case(id: 2, code: "3378", title: "Missing Teenager", description: "A teenager has gone missing from their home", caseitems: [])

let case3 = Case(id: 3, code: "5598", title: "Shallow grave", description: "Remains have been found in a shallow grave in the woods", caseitems: [])

// CASE ITEMS
let caseitem1 = CaseItem(id: 1, code: "4489", title: "Theft site", description: "The site of the theft", itemtype: .Location)
let caseitem2 = CaseItem(id: 2, code: "8875", title: "Rucksack", description: "A rucksack found near the theft site", itemtype: .Evidence)
let caseitem3 = CaseItem(id: 3, code: "7765", title: "Barry Edmondson", description: "A witness to the theft", itemtype: .Person)
let caseitem4 = CaseItem(id: 4, code: "2245", title: "Hasaf Abwali", description: "A witness to the theft", itemtype: .Person)




// ------------------------------------ VIEW ------------------------------------ //

struct DataView: View {
    var body: some View {
        Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
    }
}
