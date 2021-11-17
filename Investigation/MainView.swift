//
//  MainView.swift
//  Investigation
//
//  Created by Daniel Harlos on 16/11/2021.
//

import SwiftUI

struct MainView: View {
    
    @State private var isShowingCases = false
    
    var body: some View {
        NavigationView {
            VStack {
                Spacer()
                Text("Investigation")
                    .font(.title)
                    .fontWeight(.bold)
                    .padding()
                Text("A modern detective game where you solve cases using evidence, testimony and logic.")
                    .multilineTextAlignment(.center)
                    .padding()
                NavigationLink(destination: CasesView(), isActive: $isShowingCases) {EmptyView()}
                    Spacer()
                    Button(action: {
                        self.isShowingCases = true
                    }) {
                        Text("PLAY")
                            .font(.title)
                            .fontWeight(.bold)
                            .padding()
                            .foregroundColor(.white)
                            .background(.blue)
                            .cornerRadius(10)
                    }
                Spacer()
                }
            }
        }
    }

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        MainView()
    }
}
