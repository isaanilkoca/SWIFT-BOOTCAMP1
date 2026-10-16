//
//  ContentView.swift
//  DesignWorks
//
//  Created by İsa Anıl Koca on 2.10.2026.
//

import SwiftUI

// BU DOSYA: Pizza ürün sayfası. Nerede kullanılır? Yemek/ürün detay sayfası, mağaza ürün kartı gibi "resim + başlık + açıklama + fiyat + buton" ekranlarında.
// Mantık: renk/yazı/dil Assets ve Localizable.strings'ten gelir, boyutlar GeometryReader ile ekrana oranlanır.
struct ContentView: View { // SAYFA BURASI
    
    init() { // initiliaze function sayfa acıldıgında calısacak fonklar
        // SwiftUI'da NavigationBar'ın rengi/fontu doğrudan değiştirilemediği için
        // UIKit'teki UINavigationBarAppearance ile ayarlıyoruz. Bu yüzden init içinde, sayfa çizilmeden önce yapılıyor.
        
        let appearence = UINavigationBarAppearance() // NavigationBar'ın görünüm ayarlarını tutan nesne
        appearence.backgroundColor = UIColor(named: "anaRenk") // asset dosyasında tanımladık
        
        
        //eğer sonunda s takısı varsa bir cok özellik ekleyebiliriz bir cok özelligi var demek arraydir yani
        
        // titleTextAttributes -> Başlık yazısının özellikleri (sözlük yapısı: [özellik : değer])
        // .foregroundColor -> yazı rengi (Assets'teki yaziRenk1)
        // .font -> Fonts klasörüne eklediğimiz ve Info.plist'e (UIAppFonts) kaydettiğimiz özel font
        // Sondaki ! -> renk/font kesin var diyoruz, bulunamazsa uygulama çöker (isimler doğru yazılmalı)
        appearence.titleTextAttributes = [.foregroundColor : UIColor(named: "yaziRenk1")!,.font: UIFont(name: "Isometra-Regular", size: 22)!]
        
        
        
        
        // farklı görünümlerdeki ekranlarda görünümlerinde belli bi standart yakalamak adına appearencelar olusturuyoruz
        UINavigationBar.appearance().standardAppearance = appearence   // normal durum
        UINavigationBar.appearance().compactAppearance = appearence    // yatay ekran / küçük bar
        UINavigationBar.appearance().scrollEdgeAppearance = appearence // içerik en üste kaydırıldığında

    }
    var body: some View {
        // leading sola yatırma , trailing saga yatırma
        //leading : left : start
        //trailing : right : end
//        VStack(alignment: .trailing){
//                
//            Rectangle().fill(.red).frame(width:100 ,height: 100)
//            Rectangle().fill(.blue).frame(width:80  ,height: 80)
//            Rectangle().fill(.green).frame(width:50 ,height: 50) }
        
        // GeometryReader -> Ekranın gerçek boyutlarını verir. Böylece boşluk ve yazı boyutlarını
        // sabit sayı yerine ekrana oranlayarak (ekranGenislik/14 gibi) her cihazda orantılı görünüm sağlarız.
        GeometryReader { geometry in
            let ekranGenislik = geometry.size.width
            let ekranYükseklik = geometry.size.height
    
            // NavigationStack -> Üstteki navigation bar'ı (başlık çubuğunu) sağlar. init'teki ayarlar burada görünür.
            NavigationStack{
                // Ana dikey dizilim: başlık, resim, malzemeler, açıklama, fiyat alt alta.
                // spacing ekran yüksekliğine oranlı -> küçük/büyük ekranda boşluklar orantılı kalır
                VStack(spacing: ekranYükseklik/14){
                    // Text'e verilen "pizzaBaslik" bir anahtar. Localizable.strings dosyasından
                    // cihaz diline göre (tr/en) karşılığı gösterilir -> dil desteği
                    Text("pizzaBaslik")
                        .foregroundStyle(Color("anaRenk")).bold().font(.system(size: ekranGenislik/14))
                    
                    Image("yemek_resim") // Assets'teki pizza resmi (@2x/@3x cihaz çözünürlüğüne göre seçilir)
                    
                    // Malzeme butonları yan yana (HStack)
                    HStack{
                        // Her buton: padding (iç boşluk) -> yazı rengi -> arka plan rengi -> köşe yuvarlama
                        // Sıra önemli: padding background'dan önce gelmeli ki arka plan boşluğu da kaplasın
                        Button("peynirYazi"){
                        }.padding(10).foregroundStyle(Color("yaziRenk1"))
                            .background(Color("anaRenk")).cornerRadius(15)
                        Button("sucukYazi"){
                        }.padding(10).foregroundStyle(Color("yaziRenk1"))
                            .background(Color("anaRenk")).cornerRadius(15)
                        Button("biberYazi"){
                        }.padding(10).foregroundStyle(Color("yaziRenk1"))
                            .background(Color("anaRenk")).cornerRadius(15)
                        
                        // özelleştirilmiş widget diye buna denir ,özelleştirilmis yapılarda dil destegi calısmıyor simdilik !!!
                        // Yukarıdaki 3 butonla aynı tasarım, ama Chip.swift sayesinde tek satırda
                       Chip(icerik: "Mantar") // örnek
                    }
                    VStack(spacing: 10){ // v stacke ne koyarsak hepsinin arasında 10 bosluk koyar
                        Text("teslimatSure")
                            .foregroundStyle(Color("anaRenk")).bold().font(.system(size: 23))
                        Text("teslimatBaslik")
                            .foregroundStyle(Color("yaziRenk2")).bold().font(.system(size: 22))
                        // Uzun açıklama: sağdan-soldan 20 boşluk + çok satırlı yazıyı ortala
                        Text("pizzaAciklama")
                        .foregroundStyle(Color("yaziRenk2")).font(.system(size: 22)).padding([.leading,.trailing],20)
                        .multilineTextAlignment(.center)
                    }
                    
                    HStack{ // arasını acmak icin yine spacing kullanılabilir
                        Text("fiyat")
                            .foregroundStyle(Color("anaRenk")).bold().font(.system(size: 35))
                        Spacer() // Kalan tüm boşluğu doldurur -> fiyat en sola, buton en sağa itilir
                        Button("buttonYazi"){
                        }.padding(10).foregroundStyle(Color("yaziRenk1"))
                            .background(Color("anaRenk")).cornerRadius(5)
                    }.padding() // HStack'in kenarlara yapışmaması için
                    
                    
                // navigationTitle -> bar'daki başlık, .inline -> başlık küçük ve ortada (init'teki font/renk ile)
                }.navigationTitle("Pizza").navigationBarTitleDisplayMode(.inline)
            }
            
        }
    }
}

#Preview {
    ContentView() // görüntüleyeceğimiz kısım
}

// ===================== PROJENİN ÖZETİ =====================
// 1) RENKLER: Assets.xcassets içinde Color Set olarak anaRenk, yaziRenk1, yaziRenk2 tanımlandı.
//    Kodda Color("anaRenk") / UIColor(named: "anaRenk") ile isimden çağrılıyor.
//    Renk değişirse tek yerden (Assets) değiştirmek yeterli.
// 2) RESİM: yemek_resim Assets'e @2x ve @3x olarak eklendi, Image("yemek_resim") ile kullanıldı.
// 3) FONT: Isometra-Regular.ttf Fonts klasörüne eklendi, Info.plist'te UIAppFonts altına yazıldı.
//    Sonra UIFont(name: "Isometra-Regular", size: 22) ile navigation bar başlığında kullanıldı.
// 4) DİL DESTEĞİ: tr.lproj ve en.lproj içinde Localizable.strings oluşturuldu.
//    "anahtar" = "karşılık"; şeklinde yazıldı. Text("pizzaBaslik") cihaz diline göre çeviriyi gösterir.
// 5) NAVIGATION BAR: init() içinde UINavigationBarAppearance ile arka plan rengi, yazı rengi ve font
//    ayarlandı; standard/compact/scrollEdge durumlarının hepsine verilerek her durumda aynı görünüm sağlandı.
// 6) YERLEŞİM: VStack (alt alta), HStack (yan yana), Spacer (boşluğu doldurup itme), spacing/padding (boşluk).
//    GeometryReader ile ekran ölçüleri alınıp boşluk ve yazı boyutları ekrana oranlandı.
// 7) BUTONLAR: Button + padding + foregroundStyle + background + cornerRadius ile tasarlandı.
// 8) TEKRAR KULLANIM: Aynı buton tasarımı Chip.swift'e taşındı -> Chip(icerik: "Mantar") ile tek satırda kullanılır.
// 9) BAŞLATMA: DesignWorksApp.swift (@main) uygulamayı açar ve ContentView'i ilk ekran olarak gösterir.
// ==========================================================
