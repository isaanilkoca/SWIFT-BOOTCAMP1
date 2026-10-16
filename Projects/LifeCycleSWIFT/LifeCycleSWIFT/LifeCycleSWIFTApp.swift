//
//  LifeCycleSWIFTApp.swift
//  LifeCycleSWIFT
//
//  Created by İsa Anıl Koca on 9.10.2026.
//

import SwiftUI

// APP = uygulamanın giriş noktası. Açılışta hangi sayfa görünsün istiyorsan WindowGroup içine onu yaz.
// Denemek için: TabSayfa() (tabbar), Anasayfa() (yaşam döngüsü + geçiş), GecisMenu() (tüm geçiş türleri)
@main // main tagi var ana sayfamız oldugunu belirtiyor
struct LifeCycleSWIFTApp: App {
    var body: some Scene {
        WindowGroup { // hangi sayfayı yazarsak ana sayfa o olacak
            TabSayfa()
        }
    }
}
