//
//  KeyAccountsApp.swift
//  KeyAccounts
//
//  Created by Kristofer Younger on 10/7/23.
//

import SwiftUI

@main
struct KeyAccountsApp: App {
    let persistenceController = PersistenceController.shared

    var body: some Scene {
        WindowGroup {
            ContentView()
                .environment(\.managedObjectContext, persistenceController.container.viewContext)
        }
    }
}
