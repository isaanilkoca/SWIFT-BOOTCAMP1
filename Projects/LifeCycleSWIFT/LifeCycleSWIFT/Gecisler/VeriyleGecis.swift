import SwiftUI

// 6) VERİ TAŞIYARAK GEÇİŞ: hedef sayfanın init'ine değer verilir.
// NEREDE KULLANILIR? Listeden seçilen öğenin detay sayfası, formdan girilen bilginin sonraki sayfada gösterilmesi.
struct VeriyleGecis: View {
    @State private var isim = ""

    var body: some View {
        NavigationStack {
            VStack(spacing: 20) {
                TextField("İsmin", text: $isim)
                    .textFieldStyle(.roundedBorder)
                    .padding(.horizontal)

                // isim boşsa buton pasif -> bu da bir tür şartlı geçiş
                NavigationLink("Gönder") {
                    HedefSayfa(mesaj: "Merhaba \(isim)")
                }
                .disabled(isim.isEmpty)
            }
            .navigationTitle("Veri Aktar")
        }
    }
}

#Preview {
    VeriyleGecis()
}
