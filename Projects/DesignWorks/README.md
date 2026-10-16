# DesignWorks

Pizza ürün sayfası tasarımı. Renk, resim, özel font, çoklu dil, yerleşim ve yeniden kullanılabilir bileşen konularını çalışır.

**Açmak için:** `DesignWorks.xcodeproj` → Xcode → ▶︎

| Konu | Nerede |
|---|---|
| Renkler | `Assets.xcassets` içinde Color Set: `anaRenk`, `yaziRenk1`, `yaziRenk2`; kodda `Color("anaRenk")` |
| Resim | `yemek_resim` Assets'te @2x/@3x, `Image("yemek_resim")` |
| Özel font | `Fonts/` + `Info.plist` > `UIAppFonts` |
| Çoklu dil | `tr.lproj` / `en.lproj` içinde `Localizable.strings` ("anahtar" = "karşılık") |
| Navigation bar rengi/fontu | `ContentView.init()` içinde `UINavigationBarAppearance` |
| Yerleşim | `VStack`, `HStack`, `Spacer`, `padding`, `GeometryReader` (ekrana oranlı boyut) |
| Tekrar kullanım | `Chip.swift` → `Chip(icerik: "Mantar")` |

Bilinen kısıt: `Chip` içinde tip `String` olduğu için çeviri çalışmaz; `LocalizedStringKey` kullanılırsa çalışır (`odev3` bunu düzeltilmiş hâliyle içerir).

Ayrıntılı özet `ContentView.swift` dosyasının en altındaki yorum bloğunda.
