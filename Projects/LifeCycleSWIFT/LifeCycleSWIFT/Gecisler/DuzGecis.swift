import SwiftUI

// 1) DÜZ GEÇİŞ: şart yok, butona basınca direkt gider.
// NavigationLink = "show" geçişi. Geri butonunu NavigationStack otomatik verir.
// NEREDE KULLANILIR? Liste satırından detaya, ayarlar menüsünden alt sayfaya gibi koşulsuz geçişlerde.
struct DuzGecis: View {
    var body: some View {
        NavigationStack {
            VStack(spacing: 30) {
                NavigationLink("Hedefe git") {
                    HedefSayfa()
                }
            }
            .navigationTitle("Düz Geçiş")
        }
    }
}

#Preview {
    DuzGecis()
}
