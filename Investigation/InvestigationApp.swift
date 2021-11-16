//
//  InvestigationApp.swift
//  Investigation
//
//  Created by Daniel Harlos on 16/11/2021.
//

import SwiftUI

@main
struct InvestigationApp: App {
    let persistenceController = PersistenceController.shared

    var body: some Scene {
        WindowGroup {
            ContentView()
                .environment(\.managedObjectContext, persistenceController.container.viewContext)
        }
    }
}
