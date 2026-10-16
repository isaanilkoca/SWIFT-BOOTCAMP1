//
//  oyunEkrani.swift
//  LifeCycleSWIFT
//
//  Created by İsa Anıl Koca on 9.10.2026.
//

import SwiftUI

// Anasayfa'dan gelen Kisiler nesnesini gösterir. Sheet (alttan açılan pencere) ile SonucEkrani'na geçer.
struct OyunEkrani: View {
    
    // Sayfayı kapatmak (geri dönmek) için. Yeni yöntem: @Environment(\.dismiss) var dismiss -> dismiss()
    @Environment(\.presentationMode) var pm
    
    @State private var sonucEkranınGecis = false

   // dışarıdan verilmezse boş Kisiler() kullanılır
   // ÖNERİ: aşağıda kisi.isim! gibi zorla açma (!) var; boş Kisiler ile preview'da CRASH eder. ?? "-" ile güvenli aç.
   var kisi = Kisiler()
    
    var body: some View {
        
         // navigation title vstacke baglanmalı
            
            VStack(spacing: 100){
                
                Text("\(kisi.isim!) -\(kisi.yas!) -\(kisi.boy!) -\(String(kisi.medeniDurum!))")
                   
                Button("BİTTİ"){
                    sonucEkranınGecis = true
        
                }
                    
                
                Button("Geri"){
                    pm.wrappedValue.dismiss()
        
                }
            }.navigationTitle("Oyun Ekranı")
            // sheet: true olunca alttan pencere olarak SonucEkrani açılır
            .sheet(isPresented:$sonucEkranınGecis){
                SonucEkrani()
            }

    }
}

#Preview {
    OyunEkrani()
}
