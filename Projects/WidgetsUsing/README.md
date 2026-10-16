# WidgetsUsing

Temel SwiftUI bileşenlerinin (widget'ların) tek sayfada denendiği çalışma. Kodun içinde her bileşenin yanında açıklama var.

**Açmak için:** `WidgetsUsing.xcodeproj` → Xcode → ▶︎  (tek sayfa: `WidgetsUsing/AnaSayfa.swift`)

**Ortak mantık:** Her bileşen bir `@State` değişkenine `$` ile bağlanır (binding). Kullanıcı değiştirince değişken değişir, ekran kendiliğinden yenilenir.

| Bileşen | Ne işe yarar | Nerede kullanılır |
|---|---|---|
| `Text` | Yazı gösterir | Her yerde |
| `TextField` | Kullanıcıdan yazı alır | Kayıt/giriş, arama |
| `Button` + `.buttonStyle(.borderedProminent)` | Tıklama aksiyonu | Her yerde |
| `Image` + `.resizable().frame` | Assets'ten resim gösterir; butonla resmi değiştirme örneği var | Profil, ürün resmi |
| `Toggle` | Aç/kapa anahtarı, `onChange` ile anında yakalanır | Ayarlar (bildirim, karanlık mod) |
| `Picker` + `.palette` | Segmented control (sekmeli seçim), her seçenek `tag` alır | Kategori/filtre seçimi |
| `Stepper` | +/- ile sayı değiştirir, `in: 0...10` sınır koyar | Ürün adedi |
| `Slider` | Kaydırarak değer seçer | Ses, parlaklık, fiyat aralığı |
| `onTapGesture` | Herhangi bir görünüme tıklama ekler; `count: 2` çift tıklama | Tıklanabilir kart/yazı |
| `DatePicker` | Saat veya tarih seçtirir (`displayedComponents`) | Randevu, hatırlatıcı |
| `Picker` + `ForEach` | Diziden açılır liste oluşturur | Ülke/şehir seçimi |
| `DateFormatter` | Date'i istenen yazı biçimine çevirir (`HH:mm`, `EEEE, MMM d, yyyy`) | Saat/tarih gösterme |

"Göster" butonuna basınca tüm değerler konsola yazılır.

## Küçük öneri
Ülke listesi sabit olduğu için `onAppear` içinde doldurmak yerine `@State` tanımında başlat; yoksa sayfa her göründüğünde liste tekrar eklenir.
