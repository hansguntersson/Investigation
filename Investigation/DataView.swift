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
    var new: Bool
    var caseitemdetails: [CaseItemDetail]
}

struct CaseItemDetail: Hashable, Identifiable, Codable {
    let id: Int
    var code: String
    let title: String
    let description: String
    var visible: Bool
    var new: Bool
}


// RESOURCES

/*

struct Resource: Identifiable, Codable {
    let id: Int
    var code: String
    let title: String
    let description: String
    let subresources: [SubResource]
}

struct SubResource: Identifiable, Codable {
    let id: Int
    var code: String
    let title: String
    let description: String
}
 
 */

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
    visible: false,
    new: true,
    caseitemdetails: [caseitemdetail1, caseitemdetail2])
let caseitem2 = CaseItem(
    id: 2,
    code: "8875",
    title: "Rucksack",
    description: "A rucksack found near the theft site",
    itemtype: .Evidence,
    visible: false,
    new: true,
    caseitemdetails: [caseitemdetail7])
let caseitem3 = CaseItem(
    id: 3, code: "7765",
    title: "Barry Edmondson",
    description: "A witness to the theft",
    itemtype: .Person,
    visible: false,
    new: true,
    caseitemdetails: [caseitemdetail3, caseitemdetail4])
let caseitem4 = CaseItem(
    id: 4, code: "2245",
    title: "Hasaf Abwali",
    description: "A nearby shopkeeper",
    itemtype: .Person,
    visible: false,
    new: true,
    caseitemdetails: [caseitemdetail5, caseitemdetail6])


// CASE ITEM DETAILS
let caseitemdetail1 = CaseItemDetail(id: 1, code: "7789", title: "Skid marks", description: "Marks in  the road from tyres", visible: false, new: true)
let caseitemdetail2 = CaseItemDetail(id: 2, code: "5533", title: "Kerb damage", description: "Damage to the kerb from impact", visible: false, new: true)
let caseitemdetail3 = CaseItemDetail(id: 3, code: "6675", title: "Age", description: "42 years of age", visible: false, new: true)
let caseitemdetail4 = CaseItemDetail(id: 4, code: "8897", title: "Profession", description: "Investment banker", visible: false, new: true)
let caseitemdetail5 = CaseItemDetail(id: 5, code: "3377", title: "Age", description: "65 years of  age", visible: false, new: true)
let caseitemdetail6 = CaseItemDetail(id: 6, code: "7879", title: "Profession", description: "Local shopkeeper", visible: false, new: true)
let caseitemdetail7 = CaseItemDetail(id: 7, code: "8789", title: "Bag tag", description: "Tag with manufacturer ID", visible: false, new: true)
