//
//  CasesView.swift
//  Investigation
//
//  Created by Daniel Harlos on 16/11/2021.
//

import SwiftUI




struct CasesView: View {
    
    let cases = [case1, case2, case3]
    
    var body: some View {
        VStack (alignment: .leading, spacing: 10) {
            Text("Select a case to work on:")
                .padding(10)
                .padding(.top, 50)
            Divider()
            ForEach(cases, id: \.self) { Case in
                NavigationLink(destination: CaseMainView(Case: Case)) {
                    HStack {
                        Text("Case # \(Case.code)")
                        Text(Case.title)
                    }}.padding(.horizontal)
                Text(Case.description)
                    .padding(.horizontal)
                    .padding(.bottom)
                Divider()
            }
        }.navigationBarTitle("Cases", displayMode: .inline)
        Spacer()
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
