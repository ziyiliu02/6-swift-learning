//
//  __swift_learningApp.swift
//  Shared
//
//  Created by Liu Ziyi on 27/5/23.
//

import SwiftUI

@main
struct __swift_learningApp: App {
    var body: some Scene {
        WindowGroup {
            HomeView()
                .environmentObject(ContentModel())
        }
    }
}
