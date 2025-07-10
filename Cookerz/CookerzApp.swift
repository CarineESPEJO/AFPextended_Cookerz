//
//  CookerzApp.swift
//  Cookerz
//
//  Created by Carine ESPEJO on 05/03/2025.
//

import SwiftUI

@main
struct CookerzApp: App {
    @StateObject var baseViewModel = BaseViewModel()
    
    var body: some Scene {
        WindowGroup {
            // changed to link the opening of the app to TabBarView
            TabBarView()
                .environmentObject(baseViewModel)
        }
    }
}
