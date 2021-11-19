//
//  CasesView.swift
//  Investigation
//
//  Created by Daniel Harlos on 16/11/2021.
//

import SwiftUI


struct Case {
    var id: Int
    var code: String
    var title: String
    var description: String
    var status: String
}


struct CasesView: View {
    
    @State private var isShowingContents = false
    
    var body: some View {
        VStack (alignment: .leading, spacing: 5) {
            List(/*@START_MENU_TOKEN@*/0 ..< 5/*@END_MENU_TOKEN@*/) { Case in
                NavigationLink(destination: CaseMainView()) {
                    HStack {
                        Text("Case #4675: ")
                            .fontWeight(.bold)
                        Text("Moped Theft")
                    }.padding(7)
                }
            }
        }.navigationBarTitle("Cases", displayMode: .inline)
    }
}

struct CasesView_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            CasesView()
.previewInterfaceOrientation(.portrait)
        }
    }
}
