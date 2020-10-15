//
//  TennisAppApp.swift
//  TennisApp
//
//  Created by Alena on 10/15/20.
//

import SwiftUI

@main
struct TennisAppApp: App {
    let persistenceController = PersistenceController.shared

    var body: some Scene {
        WindowGroup {
            HomeTabView()
        }
    }
}
