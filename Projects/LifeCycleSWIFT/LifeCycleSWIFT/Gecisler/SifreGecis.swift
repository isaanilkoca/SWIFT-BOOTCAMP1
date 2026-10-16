import SwiftUI

// 3) Şartlı geçişe ikinci örnek: şifre doğruysa geç, yanlışsa hata yaz.
// NEREDE KULLANILIR? Giriş (login) ekranları, PIN/şifre doğrulama, doğrulama başarılıysa ana sayfaya geçiş.
struct SifreGecis: View {
    @State private var sifre = ""
    @State private var gec = false
    @State private var hata = false

    var body: some View {
        NavigationStack {
            VStack(spacing: 20) {
                SecureField("Şifre (1234)", text: $sifre)
                    .textFieldStyle(.roundedBorder)
                    .padding(.horizontal)

                Button("Giriş") {
                    if sifre == "1234" {
                        hata = false
                        gec = true
                    } else {
                        hata = true
                    }
                }

                if hata {
                    Text("Şifre yanlış").foregroundStyle(.red)
                }
            }
            .navigationTitle("Şifre Geçiş")
            .navigationDestination(isPresented: $gec) {
                HedefSayfa(mesaj: "Hoş geldin")
            }
        }
    }
}

#Preview {
    SifreGecis()
}
