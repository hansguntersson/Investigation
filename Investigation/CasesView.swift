//
//  CasesView.swift
//  Investigation
//
//  Created by Daniel Harlos on 16/11/2021.
//

import SwiftUI

struct CasesView: View {
    var body: some View {
        NavigationView {
            Text("Case list etc")
                .navigationBarTitle("CASES", displayMode: .inline)
        }
    }
}

struct CasesView_Previews: PreviewProvider {
    static var previews: some View {
        CasesView()
    }
}
