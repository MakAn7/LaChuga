//
//  LaChugaApp.swift
//  LaChuga
//
//  Created by Антон Макаров on 25.07.2022.
//

import SwiftUI

let screen = UIScreen.main.bounds

@main
struct LaChugaApp: App {
    var body: some Scene {
        WindowGroup {
            ConverterList()
        }
    }
}
