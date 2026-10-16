import SwiftUI

// 4) SHEET: alttan açılan pencere (push değil, üstüne biner).
// Kapatmak için sayfa içinde @Environment(\.dismiss) kullanılır.
struct SheetGecis: View {
    @State private var sheetAcik = false

    var body: some View {
        Button("Sheet aç") { sheetAcik = true }
            .sheet(isPresented: $sheetAcik) {
                SheetIcerik()
            }
    }
}

struct SheetIcerik: View {
    @Environment(\.dismiss) var dismiss   // kapatma komutu

    var body: some View {
        VStack(spacing: 30) {
            Text("Ben bir sheet'im").font(.title)
            Button("Kapat") { dismiss() }
        }
    }
}

#Preview {
    SheetGecis()
}
