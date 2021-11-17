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
            MainView()
                // .environment(\.managedObjectContext, persistenceController.container.viewContext)
        }
    }
}
