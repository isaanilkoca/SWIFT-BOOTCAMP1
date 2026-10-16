import SwiftUI

// Tüm örneklerde gidilecek ortak sayfa. İsim dışarıdan gelir (veri aktarımı örneği için).
struct HedefSayfa: View {
    var mesaj: String = "Hedef sayfaya geldin"

    var body: some View {
        Text(mesaj)
            .font(.title)
            .navigationTitle("Hedef")
    }
}

#Preview {
    HedefSayfa()
}
