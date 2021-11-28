//
//  DataView.swift
//  Investigation
//
//  Created by Daniel Harlos on 24/11/2021.
//

import SwiftUI

// ------------------------------------ DEFINITIONS ------------------------------------ //

enum itemtypekey: String, Codable {
  case Location,
       Evidence,
       Person
}

struct Case: Hashable, Codable {
    var id: Int
    var code: String
    var title: String
    var description: String
    var caseitems: [CaseItem]
}

struct CaseItem: Hashable, Identifiable, Codable {
    var id: Int
    var code: String
    var title: String
    var description: String
    var itemtype: itemtypekey
    var visible: Bool
}

struct CaseItemDetail: Hashable, Identifiable, Codable {
    let id: Int
    var code: String
    let title: String
    let description: String
    var visible: Bool
    var new: Bool
}


// ------------------------------------ DATA ------------------------------------ //


// MAIN OPTIONS
let cases = [case1, case2, case3]

// CASES
let case1 = Case(id: 1, code: "4675", title: "Moped Theft", description: "A pedestrian has been robbed by assailants on a moped", caseitems: [caseitem1, caseitem2, caseitem3, caseitem4])

let case2 = Case(id: 2, code: "3378", title: "Missing Teenager", description: "A teenager has gone missing from their home", caseitems: [])

let case3 = Case(id: 3, code: "5598", title: "Shallow grave", description: "Remains have been found in a shallow grave in the woods", caseitems: [])


// CASE ITEMS
let caseitem1 = CaseItem(
    id: 1,
    code: "4489",
    title: "Theft site",
    description: "The site of the theft",
    itemtype: .Location,
    visible: false)
let caseitem2 = CaseItem(
    id: 2,
    code: "8875",
    title: "Rucksack",
    description: "A rucksack found near the theft site",
    itemtype: .Evidence,
    visible: false)
let caseitem3 = CaseItem(
    id: 3, code: "7765",
    title: "Barry Edmondson",
    description: "A witness to the theft",
    itemtype: .Person,
    visible: false)
let caseitem4 = CaseItem(
    id: 4, code: "2245",
    title: "Hasaf Abwali",
    description: "A nearby shopkeeper",
    itemtype: .Person,
    visible: false)


// CASE ITEM DETAILS
let caseitemdetail1 = CaseItemDetail(id: 1, code: "7789", title: "Theft site", description: "The site of the theft", visible: false, new: true)
let caseitemdetail2 = CaseItemDetail(id: 2, code: "5533", title: "Theft site", description: "The site of the theft", visible: false, new: true)
let caseitemdetail3 = CaseItemDetail(id: 3, code: "6675", title: "Theft site", description: "The site of the theft", visible: false, new: true)
let caseitemdetail4 = CaseItemDetail(id: 4, code: "8897", title: "Theft site", description: "The site of the theft", visible: false, new: true)
let caseitemdetail5 = CaseItemDetail(id: 5, code: "3377", title: "Theft site", description: "The site of the theft", visible: false, new: true)
let caseitemdetail6 = CaseItemDetail(id: 6, code: "7879", title: "Theft site", description: "The site of the theft", visible: false, new: true)
let caseitemdetail7 = CaseItemDetail(id: 7, code: "8789", title: "Theft site", description: "The site of the theft", visible: false, new: true)



// ------------------------------------ VIEW ------------------------------------ //

struct DataView: View {
    var body: some View {
        Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
    }
}
