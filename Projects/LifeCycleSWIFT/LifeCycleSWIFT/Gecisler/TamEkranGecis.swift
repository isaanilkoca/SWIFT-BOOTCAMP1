import SwiftUI

// 5) FULLSCREEN COVER: sheet gibi ama tüm ekranı kaplar, aşağı çekerek kapanmaz.
// Kapatmanın tek yolu senin koyduğun buton -> oyun/sonuç ekranları için ideal.
// NEREDE KULLANILIR? Onboarding, tam ekran resim/video, kamera, oyun sonucu gibi kullanıcının dikkatini tamamen istediğin yerlerde.
struct TamEkranGecis: View {
    @State private var acik = false

    var body: some View {
        Button("Tam ekran aç") { acik = true }
            .fullScreenCover(isPresented: $acik) {
                TamEkranIcerik()
            }
    }
}

struct TamEkranIcerik: View {
    @Environment(\.dismiss) var dismiss

    var body: some View {
        VStack(spacing: 30) {
            Text("Tam ekran").font(.largeTitle)
            Button("Kapat") { dismiss() }
        }
    }
}

#Preview {
    TamEkranGecis()
}
