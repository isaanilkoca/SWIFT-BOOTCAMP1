//
//  ContentView.swift
//  odev3
//
//  Created by İsa Anıl Koca on 9.10.2026.
//

import SwiftUI

struct ContentView: View { // SAYFA BURASI

    init() { // sayfa açıldığında, çizilmeden önce çalışır
        // SwiftUI'da NavigationBar'ın rengi/fontu doğrudan değiştirilemediği için
        // UIKit'teki UINavigationBarAppearance ile ayarlıyoruz. (init struct'ın İÇİNDE olmalı)

        let appearence = UINavigationBarAppearance() // NavigationBar görünüm ayarlarını tutan nesne
        appearence.backgroundColor = UIColor(named: "anaRenk") // Assets'te tanımladık

        // .foregroundColor -> yazı rengi (Assets'teki yaziRenk1)
        // .font -> Fonts klasörüne eklediğimiz ve Info.plist'e (UIAppFonts) kaydettiğimiz özel font
        // Sondaki ! -> renk/font kesin var diyoruz, isimler yanlışsa uygulama çöker
        appearence.titleTextAttributes = [.foregroundColor : UIColor(named: "yaziRenk1")!,.font: UIFont(name: "Isometra-Regular", size: 22)!]

        UINavigationBar.appearance().standardAppearance = appearence   // normal durum
        UINavigationBar.appearance().compactAppearance = appearence    // yatay ekran / küçük bar
        UINavigationBar.appearance().scrollEdgeAppearance = appearence // içerik en üste kaydırıldığında
    }

    var body: some View {
        // GeometryReader -> ekranın gerçek boyutunu verir; boşluk ve yazıları ekrana oranlıyoruz
        GeometryReader { geometry in
            let ekranGenislik = geometry.size.width
            let ekranYukseklik = geometry.size.height

            NavigationStack{
                VStack(spacing: ekranYukseklik/20){
                    // "avokadoBaslik" bir anahtar -> Localizable.strings'ten cihaz diline göre karşılığı gelir
                    Text("avokadoBaslik")
                        .foregroundStyle(Color("anaRenk")).bold().font(.system(size: ekranGenislik/14))

                    // resizable + scaledToFit: resmi ekrana sığdırır (fixedSize ekrandan taşırabiliyordu)
                    Image("avacado")
                        .resizable().scaledToFit()
                        .frame(width: ekranGenislik*0.85)
                        .cornerRadius(20)

                    // Etiket butonları yan yana. Tasarım Chip.swift'te tek yerde duruyor.
                    HStack{
                        Chip(icerik: "organikYazi")
                        Chip(icerik: "tazeYazi")
                        Chip(icerik: "yerliYazi")
                        Chip(icerik: "veganYazi")
                    }

                    VStack(spacing: 10){
                        Text("teslimatSure")
                            .foregroundStyle(Color("anaRenk")).bold().font(.system(size: 23))
                        Text("teslimatBaslik")
                            .foregroundStyle(Color("yaziRenk2")).bold().font(.system(size: 22))
                        Text("avokadoAciklama")
                            .foregroundStyle(Color("yaziRenk2")).font(.system(size: 22)).padding([.leading,.trailing],20)
                            .multilineTextAlignment(.center)
                    }

                    HStack{
                        Text("fiyat")
                            .foregroundStyle(Color("anaRenk")).bold().font(.system(size: 35))
                        Spacer() // fiyat en sola, buton en sağa itilir
                        Button("buttonYazi"){
                        }.padding(10).foregroundStyle(Color("yaziRenk1"))
                            .background(Color("anaRenk")).cornerRadius(5)
                    }.padding()

                }.navigationTitle("Avocado").navigationBarTitleDisplayMode(.inline) // navigationTitle NavigationStack'in İÇİNDEKİ view'a verilir
            }
        }
    }
}

#Preview {
    ContentView()
}

// ===================== PROJENİN ÖZETİ (adım adım) =====================
// 1) PROJE: Xcode > Create New Project > iOS > App (SwiftUI) ile "odev3" açıldı.
//    odev3App.swift (@main) uygulamayı açar ve ContentView'i ilk ekran yapar.
// 2) RENKLER: Assets.xcassets'e Color Set eklendi: anaRenk (yeşil), yaziRenk1 (beyaz), yaziRenk2 (gri).
//    Her birinde Light ve Dark görünüm ayrı verildi. Kodda Color("anaRenk") / UIColor(named:) ile çağrılır.
//    Renk değişecekse sadece Assets'te değişir. (İsimlerde Türkçe karakter kullanılmadı: ı yerine i)
// 3) RESİM: avacado.jpg Assets'e imageset olarak sürüklendi (2x yuvasına). Image("avacado") ile kullanılır.
// 4) FONT: Isometra-Regular.ttf Fonts klasörüne eklendi, Info.plist'te UIAppFonts altına yazıldı,
//    sonra UIFont(name: "Isometra-Regular", size: 22) ile navigation bar başlığında kullanıldı.
// 5) NAVIGATION BAR: init() içinde UINavigationBarAppearance ile arka plan, yazı rengi ve font ayarlandı;
//    standard / compact / scrollEdge üçüne de verildi.
// 6) YERLEŞİM: VStack (alt alta), HStack (yan yana), Spacer (itme), padding/spacing (boşluk);
//    GeometryReader ile ölçüler ekrana oranlandı.
// 7) BUTONLAR: Button + padding + foregroundStyle + background + cornerRadius (sıra önemli).
// 8) TEKRAR KULLANIM: Aynı buton Chip.swift'e taşındı -> Chip(icerik: "organikYazi").
//    Chip'te tip LocalizedStringKey olduğu için çeviri de çalışır.
// 9) DİL DESTEĞİ: Project > Info > Localizations'a Turkish eklendi; en.lproj ve tr.lproj içinde
//    Localizable.strings: "anahtar" = "karşılık"; Text("anahtar") cihaz diline göre çeviriyi gösterir.
// ======================================================================
