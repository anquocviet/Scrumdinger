//
//  ScrumdingerApp.swift
//  Scrumdinger
//
//  Created by VIE on 11/07/2023.
//

import SwiftUI

@main
struct ScrumdingerApp: App {
    var body: some Scene {
        WindowGroup {
            ScrumsView(scrums: DailyScrum.sampleData )
        }
    }
}
