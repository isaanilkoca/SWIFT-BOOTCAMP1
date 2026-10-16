import SwiftUI

// Hepsini tek yerden denemek için menü. LifeCycleSWIFTApp içinde Anasayfa() yerine GecisMenu() yaz.
struct GecisMenu: View {
    var body: some View {
        NavigationStack {
            List {
                NavigationLink("1) Düz geçiş") { DuzGecis() }
                NavigationLink("2) Şartlı geçiş (sayaç 5)") { SartliGecis() }
                NavigationLink("3) Şartlı geçiş (şifre)") { SifreGecis() }
                NavigationLink("4) Sheet") { SheetGecis() }
                NavigationLink("5) Tam ekran") { TamEkranGecis() }
                NavigationLink("6) Veri taşıyarak") { VeriyleGecis() }
            }
            .navigationTitle("Geçişler")
        }
    }
}

#Preview {
    GecisMenu()
}
