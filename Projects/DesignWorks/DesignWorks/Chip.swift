//
//  Chip.swift
//  DesignWorks
//
//  Created by İsa Anıl Koca on 4.10.2026.
//

import SwiftUI
// tekrar düşen nesneeleri burada oturtabiiliriz.fonksiyonun kullanma amacı gibi düşünülebilir
// ContentView'deki peynir/sucuk/biber butonları aynı tasarımı tekrar tekrar yazıyordu.
// Chip bu tasarımı tek yerde toplar -> ContentView'de sadece Chip(icerik: "...") yazmak yeterli.
struct Chip: View {
    // Dışarıdan gönderilen buton yazısı. Varsayılan "" olduğu için Chip() şeklinde de çağrılabilir.
    // NOT: Tipi String olduğu için Localizable.strings'teki anahtarlara bakılmaz (dil desteği bu yüzden çalışmıyor).
    // LocalizedStringKey tipi kullanılırsa çeviri de çalışır hale gelir.
    var icerik = ""
    var body: some View {
        Button(icerik){
            // Tıklanınca yapılacak işlem buraya yazılır (şimdilik boş)
        }.padding(10).foregroundStyle(Color("yaziRenk1"))   // iç boşluk + Assets'teki yazı rengi
            .background(Color("anaRenk")).cornerRadius(15)  // Assets'teki ana renk arka plan + köşe yuvarlama
    }
}

#Preview {
    Chip() // Canvas'ta Chip'i tek başına görmek için
}
