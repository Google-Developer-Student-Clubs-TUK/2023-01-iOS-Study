//
//  ObservableEnvironmentApp.swift
//  ObservableEnvironment
//
//  Created by 이정동 on 2023/05/01.
//

import SwiftUI

@main
struct ObservableEnvironmentApp: App {
    var body: some Scene {
        WindowGroup {
            ContentView(demoData: DemoData())
        }
    }
}
