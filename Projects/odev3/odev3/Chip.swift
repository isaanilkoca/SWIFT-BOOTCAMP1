//
//  Chip.swift
//  odev3
//
//  Created by İsa Anıl Koca on 9.10.2026.
//

import SwiftUI

// Tekrar eden buton tasarımını tek yerde toplar -> ContentView'de sadece Chip(icerik: "organikYazi") yazmak yeterli.
struct Chip: View {
    // LocalizedStringKey: Text/Button'daki gibi Localizable.strings'ten çeviri çekilmesini sağlar.
    // (String olsaydı dil desteği çalışmazdı.) Düz yazı da verilebilir, anahtar bulunmazsa olduğu gibi gösterilir.
    var icerik: LocalizedStringKey = ""
    var body: some View {
        Button(icerik){
            // Tıklanınca yapılacak işlem (şimdilik boş)
        }.padding(10).foregroundStyle(Color("yaziRenk1"))   // iç boşluk + Assets'teki yazı rengi
            .background(Color("anaRenk")).cornerRadius(15)  // Assets'teki ana renk arka plan + köşe yuvarlama
    }
}

#Preview {
    Chip(icerik: "organikYazi")
}
