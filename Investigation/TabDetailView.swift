//
//  TabDetailView.swift
//  Investigation
//
//  Created by Daniel Harlos on 18/11/2021.
//

import SwiftUI

struct Bookmark: Identifiable, Hashable {
    let id = UUID()
    let name: String
    let icon: String
    var items: [Bookmark]?

    // some example websites
    static let apple = Bookmark(name: "Apple", icon: "1.circle")
    static let bbc = Bookmark(name: "BBC", icon: "square.and.pencil")
    static let swift = Bookmark(name: "Swift", icon: "bolt.fill")
    static let twitter = Bookmark(name: "Twitter", icon: "mic")

    // some example groups
    static let example1 = Bookmark(name: "Favorites", icon: "star", items: [Bookmark.apple, Bookmark.bbc])
    static let example2 = Bookmark(name: "Recent", icon: "timer", items: [Bookmark.apple, Bookmark.bbc, Bookmark.swift, Bookmark.twitter])
}

struct TabDetailView: View {
    
    let items: [Bookmark] = [.example1, .example2]
    
    var body: some View {
        VStack (alignment: .leading, spacing: 10) {
            Text("Location ID 4876: Theft Site")
                .font(.headline)
                .padding(10)
            Text("Select details about the location to investigate further")
                .padding(.horizontal, 10)
                .padding(.vertical, 5)
            List(items, children: \.items) { row in
                HStack {
                    Image(systemName: "folder.fill")
                    Text("ID #55889: ")
                        .fontWeight(.bold)
                    Text("Tyre Marks")
                }.padding(3)
            }
                

        }.navigationBarTitle("#4675: Moped Theft", displayMode: .inline)
        Text("SEARCH")
        .font(.subheadline)
        .fontWeight(.bold)
        .padding()
        .foregroundColor(.white)
        .background(.green)
        .cornerRadius(5)
        .onTapGesture {print("Selected id")}
    }
    
}

struct TabDetailView_Previews: PreviewProvider {
    static var previews: some View {
        TabDetailView()
    }
}
