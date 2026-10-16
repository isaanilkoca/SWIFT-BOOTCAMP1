# LifeCycleSWIFT

SwiftUI'da yaşam döngüsü, sayfa geçişleri ve TabBar çalışması. Kodların içinde satır içi Türkçe açıklamalar var; bu dosya hangi dosyaya neden bakacağını gösterir.

**Açmak için:** `LifeCycleSWIFT.xcodeproj` → Xcode → ▶︎

## Hangi sayfa açılışta görünsün?
`LifeCycleSWIFT/LifeCycleSWIFTApp.swift` içindeki `WindowGroup { ... }` bloğuna yazdığın sayfa açılır:

| Yaz | Ne görürsün |
|---|---|
| `TabSayfa()` (şu anki) | TabBar örneği |
| `Anasayfa()` | Yaşam döngüsü + toolbar + kod ile geçiş |
| `GecisMenu()` | Tüm geçiş türlerinin menüsü |

## Dosyalar

| Dosya | Ne öğretiyor |
|---|---|
| `TabSayfa.swift` | **TabBar**: `TabView` + `tabItem { Label }`, `UITabBarAppearance` ile arka plan/seçili/seçili olmayan renkler. 2-5 ana bölümlü uygulamalarda kullanılır |
| `HomePage.swift`, `Settings.swift` | TabBar'ın içindeki iki sekme (basit sayfalar) |
| `Anasayfa.swift` | `init` → `onAppear` → `onDisappear` sırası (konsolu izle), `NavigationStack`, `toolbar` butonları, `navigationDestination(isPresented:)` ile kod üzerinden geçiş |
| `OyunEkrani.swift` | Gelen `Kisiler` verisini gösterme, `sheet` ile alttan pencere, `presentationMode` ile geri dönme |
| `SonucEkrani.swift` | Sheet olarak açılan son ekran |
| `Kisiler.swift` | Sayfalar arası veri taşıyan model sınıfı |
| `Gecisler/DuzGecis.swift` | `NavigationLink` ile düz geçiş (show) |
| `Gecisler/SartliGecis.swift` | Sayaç 5 olunca geçiş (`@State` + `isPresented`) |
| `Gecisler/SifreGecis.swift` | Şifre doğruysa geç, yanlışsa hata yaz |
| `Gecisler/SheetGecis.swift` | `sheet`: alttan açılır, aşağı çekilince kapanır, `dismiss` ile kapatılır |
| `Gecisler/TamEkranGecis.swift` | `fullScreenCover`: tüm ekranı kaplar, sadece butonla kapanır |
| `Gecisler/VeriyleGecis.swift` | Hedef sayfaya parametre vererek geçiş, boşken buton `disabled` |
| `Gecisler/HedefSayfa.swift` | Tüm geçiş örneklerinin gittiği ortak sayfa |
| `geçişlertekrar.swift`, `sayfa2tekrar.swift` | Tekrar çalışması, tamamen yorum satırında (kapalı) |

## Küçük öneriler
- Yeni kodda `presentationMode` yerine `@Environment(\.dismiss)` kullan.
- `kisi.isim!` gibi zorla açma (`!`) yerine `?? "-"` kullan, yoksa boş veride uygulama çöker.
- `Kisiler` gibi basit veri modelleri için `struct` tercih edilir.
