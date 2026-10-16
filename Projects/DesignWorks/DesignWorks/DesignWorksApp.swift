//
//  DesignWorksApp.swift
//  DesignWorks
//
//  Created by İsa Anıl Koca on 2.10.2026.
//

import SwiftUI

// @main -> Uygulamanın giriş noktası. Uygulama açılınca ilk burası çalışır.
@main
struct DesignWorksApp: App {
    var body: some Scene {
        // WindowGroup -> Uygulamanın penceresi. İçine koyduğumuz View ilk açılan ekran olur.
        WindowGroup {
            ContentView() // ContentView.swift'teki sayfamızı başlatıyoruz
        }
    }
}
