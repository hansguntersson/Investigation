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
            VStack (spacing: 10) {
                Spacer()
                Text("Investigation")
                    .font(.title)
                    .fontWeight(.bold)
                Text("A modern detective game where you solve cases using evidence, testimony and logic.")
                    .multilineTextAlignment(.center)
                    .padding(10)
                    .padding(.bottom, 20)
                NavigationLink(destination: CasesView(), isActive: $isShowingCases) {EmptyView()}
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
                Spacer()
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
