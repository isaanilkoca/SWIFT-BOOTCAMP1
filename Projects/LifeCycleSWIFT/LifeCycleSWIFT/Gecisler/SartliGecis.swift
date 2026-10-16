import SwiftUI

// 2) ŞARTLI GEÇİŞ: kod karar verir. Sayaç 5 olunca geçer.
// @State = değişince ekran yenilenir. isPresented bool'u true olunca sayfa açılır.
struct SartliGecis: View {
    @State private var sayac = 0
    @State private var gec = false

    var body: some View {
        NavigationStack {
            VStack(spacing: 30) {
                Text("Sayaç: \(sayac)").font(.largeTitle)

                Button("Artır") {
                    sayac += 1
                    if sayac == 5 {      // ŞART burada
                        gec = true       // true olunca aşağıdaki destination açılır
                    }
                }
            }
            .navigationTitle("Şartlı Geçiş")
            .navigationDestination(isPresented: $gec) {
                HedefSayfa(mesaj: "5'e ulaştın!")
            }
        }
    }
}

#Preview {
    SartliGecis()
}
