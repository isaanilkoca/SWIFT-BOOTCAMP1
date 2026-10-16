
//  ContentView.swift
//  LifeCycleSWIFT
//  Created by İsa Anıl Koca on 9.10.2026.

// BU DOSYA: Yaşam döngüsü (init / onAppear / onDisappear), NavigationStack, toolbar ve kod ile sayfa geçişini gösterir.
// init -> view oluşturulurken; onAppear -> ekrana gelince; onDisappear -> ekrandan çıkınca çalışır (konsolda print'leri izle).


import SwiftUI

struct Anasayfa: View { // view özelligini kalıtım olarak almış
    
    // true olunca aşağıdaki navigationDestination tetiklenir ve OyunEkrani açılır
    @State private var oyunEkranınaGecis = false

    init() {
        print("init metodu calıstı")
    }
    
    
//    // swiftui yapısı state yapısı altında calısan , sayfanın icerigini anlama kısmı , state managment ile calısır swift
//    
//    // Klasik UI kit yönteminde her değişimden sonra bunu aktar gibi belirtmemiz  gerekiyor SWIFTUI da öyle değil	
//    @State private var sayac = 0 // üzerinde değişim görmek istyiorsak state kullanmalıyız
    
    var body: some View { // tasarım yapacağımız alan onuda kalıtım olarak almış
        
        NavigationStack{ // navigation title vstacke baglanmalı
            // GERİ BUTONUNun saglanması navigation stack ile
            
            VStack(spacing: 100){
//                NavigationLink(destination: OyunEkrani()){ // bunun literatürdeki ismide show geçiş sadece butona basıp gecis yapacaksak tek görevi bu olacaksa olabilir ama durum üzerine geçiş varsa yine state kullanılmalı
//                        Text("DÜZ GEÇİŞ")
                
              
                Button("BASLA"){
                    oyunEkranınaGecis = true
                }
                
            }.navigationTitle("Anasayfa").navigationBarTitleDisplayMode(.inline)
            
                // TOOLBAR: navigation bar'ın sağına/soluna buton koyma alanı. ToolbarItemGroup = aynı yere birden fazla buton
                .toolbar { // bunun icerisinde olacak bir değisiklik
                    ToolbarItemGroup(placement: .navigationBarLeading){
                          Button("Ayarlar"){
                              print("ayarlar tiklandi")
                          }
                        Button{
                              print("ayarlar tiklandi")
                          }
                        label : {
                           Image(systemName: "plus")
                       }
                        
                     
                    }
                    ToolbarItem(placement: .navigationBarLeading){
                          Button("Geri"){
                              print("geri tiklandi")
                          }
                        
                    }
                }
                // Kod ile geçiş: oyunEkranınaGecis true olunca açılır. Kisiler nesnesini hedef sayfanın init'ine vererek VERİ TAŞIYORUZ
                // (not: iki buton da .navigationBarLeading'de ve aynı print'i yazıyor, "Geri" ile çakışabilir; birini .navigationBarTrailing yapabilirsin)
                .navigationDestination(isPresented:$oyunEkranınaGecis){
                let person = Kisiler(isim: "İsa", yas: 25, boy: 183, medeniDurum: false)
                OyunEkrani(kisi: person)
                }.onAppear{
                    print("onappear metodu calıstı")
                }.onDisappear{
                    print("ondisappear metodu calıstı")
                }
              
                
            
            }
        }
    }



#Preview { // önizleme kısmı hangi sayfanın ismini yazarsan o görünür
    Anasayfa()
}
