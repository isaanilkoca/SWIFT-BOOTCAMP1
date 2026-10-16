//
//  TabSayfa.swift
//  LifeCycleSWIFT
//
//  Created by İsa Anıl Koca on 16.10.2026.
//

import SwiftUI

// TABBAR NEDİR? Ekranın altındaki sekme çubuğudur (Instagram'daki Ana Sayfa / Ara / Profil gibi).
// SwiftUI'da TabView ile yapılır; her sekme = bir sayfa (View) + .tabItem { Label(...) }.
// NEREDE KULLANILIR? Uygulamanın 2-5 tane eşit önemde ana bölümü varsa (ana sayfa, ayarlar, profil...).
// ÖNERİ: Sekmeler arası geçişte seçili sekmeyi tutmak istersen TabView(selection: $secili) + .tag(...) kullan.
struct TabSayfa: View {
    
    // init içinde UIKit'in UITabBarAppearance'ı ile tabbar'ın görünümünü (arka plan, ikon/yazı rengi) özelleştiriyoruz.
    // SwiftUI'da tabbar rengi için doğrudan modifier yetersiz kaldığı için UIKit'e inilir.
    init() {
        let appearence = UITabBarAppearance()
        // tabbar'ın arka plan rengi
        appearence.backgroundColor = UIColor.systemIndigo
        
        // iPhone dikey (stacked), yatay (inline) ve küçük yatay (compactInline) düzenlerin hepsine aynı renkleri uyguluyoruz
        renkDegistir(itemApearance: appearence.stackedLayoutAppearance)
        renkDegistir(itemApearance: appearence.inlineLayoutAppearance)
        renkDegistir(itemApearance: appearence.compactInlineLayoutAppearance)
        

        
        // standardAppearance: normal hal, scrollEdgeAppearance: içerik en üstteyken (kaydırılmamışken) kullanılan hal
        UITabBar.appearance().standardAppearance = appearence
        UITabBar.appearance().scrollEdgeAppearance = appearence

    }
    
    func renkDegistir(itemApearance : UITabBarItemAppearance){
        // secili
        itemApearance.selected.iconColor = UIColor.systemOrange
        itemApearance.selected.titleTextAttributes = [.foregroundColor : UIColor.systemOrange]
        // secili olmayan
        itemApearance.normal.iconColor = UIColor.white
        itemApearance.normal.titleTextAttributes = [.foregroundColor : UIColor.white]
    }
    
    
    
    var body: some View {
        // NavigationStack en dışta olduğu için navigationTitle tüm sekmelerde görünür.
        // ÖNERİ: Genelde her sekmenin kendi NavigationStack'i olur (sekme başına ayrı geri geçmişi için).
        NavigationStack{
            
            TabView{
                // tabItem = sekmenin altta görünen ikon + yazısı. systemImage = Apple'ın SF Symbols ikonları
                HomePage().tabItem{
                    Label("Anasayfa",systemImage: "homekit")
                }
                
                
                
                Settings().tabItem{
                    Label("Settings",systemImage: "gear")
                }
            }.navigationTitle("Tab View Kullanımı")
        }
    }
}

#Preview {
    TabSayfa()
}
